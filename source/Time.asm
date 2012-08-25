;                                                                       Time.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                               TIME FUNCTIONS                                #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2012, Jack Black #
;###############################################################################
format	ELF64
include	'Syscall.inc'
include	'Errno.inc'

;###############################################################################
;#      Export section                                                         #
;###############################################################################
public	Time			as	'_ZN4TimeC1Ev'
public	LoadTimeZone	as	'_ZN4Time12LoadTimeZoneEPKc'
public	ConvertTime		as	'_ZN4Time11ConvertTimeEhhh'
public	ConvertDate		as	'_ZN4Time11ConvertDateEhhihhh'
public	ExtractTime		as	'_ZN4Time11ExtractTimeEx'
public	ExtractDate		as	'_ZN4Time11ExtractDateEx'
public	WeekDay			as	'_ZN4Time7WeekDayEx'
public	SystemTime		as	'_ZN4Time10SystemTimeEv'
public	LocalTime		as	'_ZN4Time9LocalTimeEx'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Macros                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Consts                                                                 ;
;==============================================================================;
CHNG_SIZE	= 512							; Size of time changes array
ZONE_SIZE	= 256							; Size of time zone array
TIME_DAY	= 86400							; Seconds per day
TIME_ERROR	= 0x8000000000000000			; Wrong time value
BUF_SIZE	= 16384							; Buffer size

;==============================================================================;
;       Multiply value by 25                                                   ;
;==============================================================================;
macro	mul25	target, source
{
		lea		target, [source + source * 4]
		lea		target, [target + target * 4]
}

;==============================================================================;
;       Multiply value by 24                                                   ;
;==============================================================================;
macro	mul24		reg
{
		shl		reg, 3
		lea		reg, [reg + reg * 2]
}

;==============================================================================;
;       Multiply value by 60                                                   ;
;==============================================================================;
macro	mul60		reg
{
		shl		reg, 2
		lea		reg, [reg + reg * 2]
		lea		reg, [reg + reg * 4]
}

;==============================================================================;
;       Multiply value by 366                                                  ;
;==============================================================================;
macro	mul366		reg, temp
{
		lea		reg, [reg + reg * 2]
		shl		reg, 1
		lea		temp, [reg + reg * 2]
		shl		reg, 6
		sub		reg, temp
}

;==============================================================================;
;       Multiply value by 36525                                                ;
;==============================================================================;
macro	mul36525	reg, temp
{
		lea		reg, [reg + reg * 2]
		lea		reg, [reg + reg * 4]
		lea		reg, [reg + reg * 4]
		lea		temp, [reg + reg * 4]
		shl		reg, 9
		lea		temp, [temp + temp * 4]
		sub		reg, temp
}

;******************************************************************************;
;       Read file content to buffer                                            ;
;******************************************************************************;
ReadFile:
;---[Parameters]---------------------------
buffer	equ		rdi							; buffer for file content
tzfile	equ		rsi							; time zone file name
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_buff	equ		stack + 0 * 8				; stack position of file buffer
s_free	equ		stack + 1 * 8				; stack position of free variable
s_fd	equ		stack + 2 * 8				; stack position of file descriptor
s_error	equ		stack + 3 * 8				; stack position of error variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_buff], buffer			; save buffer pointer into the stack
;---[Opening tzfile for reading]-----------
		mov		sc_prm1, tzfile
		mov		sc_prm2, O_RDONLY
		mov		sc_prm3, 0
		mov		sc_num, SYSCALL_OPEN
		syscall								; syscall open (tzfile, O_RDONLY, 0)
		test	result, result				; if (result < 0)
		js		.error						;     then go to error branch
		mov		[s_fd], result				; save opened file descriptor into the stack
		mov		qword [s_free], BUF_SIZE	; free = BUF_SIZE (max buffer size)
;---[Reading file content to the buffer]---
.loop:	mov		sc_prm1, [s_fd]
		mov		sc_prm2, [s_buff]
		mov		sc_prm3, [s_free]
		mov		sc_num, SYSCALL_READ
		syscall								; syscall read (fd, buffer, free)
		test	result, result				; is (result < 0)
		js		.close						;     then go to emergency closing branch
		jz		@f							; if (result == 0), then break the loop
		add		[s_buff], result			; buffer += result (bytes read)
		sub		[s_free], result			; free -= result (bytes read)
		jmp		.loop						; do while (result > 0)
;---[Closing of the opened file]-----------
@@:		mov		sc_prm1, [s_fd]
		mov		sc_num, SYSCALL_CLOSE
		syscall								; syscall close (fd)
		test	result, result				; is (result < 0)
		js		.error						;     then go to error branch
;---[Check for buffer overflow]------------
		mov		result, -ERRNO_NOBUFS
		cmp		qword [s_free], 0			; if (free == 0)
		je		.error						;     then return ERRNO_NOBUFS
		mov		result, BUF_SIZE			; else
		sub		result, [s_free]			;     return BUF_SIZE - free
		add		stack, space				; restoring back the stack pointer
		ret
;---[Emergency closing of the opened file]-
.close:	mov		[s_error], result			; save errno into the stack
		mov		sc_prm1, [s_fd]
		mov		sc_num, SYSCALL_CLOSE
		syscall								; syscall close (fd)
		mov		result, [s_error]			; restore errno from the stack
;---[Error exit branch]--------------------
.error:	add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Analyse tzfile content                                                 ;
;******************************************************************************;
AnalyseFile:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to time object
buffer	equ		rsi							; buffer which holds content of tzfile
size	equ		rdx							; buffer size
;---[Internal variables]-------------------
result	equ		rax							; result register
str		equ		result						; string value
time	equ		result						; change time value
value	equ		eax							; register to hold element value
index	equ		al							; index value
temp	equ		edx							; temporary register
shift	equ		rcx							; register to compute pointer shift
shiftl	equ		ecx							; low part of shift register
csize	equ		r8d							; count of time change records
count	equ		r8							; 64-bit value of csize
zsize	equ		r9d							; count of time zone records
max		equ		r9b							; max index value
ptr		equ		size						; temporary pointer
cptr	equ		r10							; pointer to Time::change
iptr	equ		r11							; pointer to Time::index
zptr	equ		cptr						; pointer to Time::zone
prev	equ		shift						; previous value of change time
change_of	= 0								; offset of Time::change
index_of	= change_of + CHNG_SIZE * 8		; offset of Time::index
zone_of		= index_of + CHNG_SIZE			; offset of Time::zone
csize_of 	= zone_of + ZONE_SIZE * 4		; offset of Time::change_size
zsize_of	= csize_of + 4					; offset of Time::zone_size
;---[Skipping 1 header and content]--------
		sub		size, 44					; if (size <= 44)
		jbe		.error						;     return ERRNO_NODATA
		mov		str, [buffer]				; str = file magic number
		cmp		str, qword [magic]			; if file magic number is not equal to tzfile
		jne		.error						;     return ERRNO_NODATA
		add		buffer, 20					; buffer += 20
		mov		value, [buffer]				; value = buffer[0]
		bswap	value						; change byte order from standard to little endian
		mov		shiftl, value				; shift = value
		add		buffer, 4					; buffer += 4
		mov		value, [buffer]				; value = buffer[0]
		bswap	value						; change byte order from standard to little endian
		add		shiftl, value				; shift += value
		add		buffer, 4					; buffer += 4
		mov		value, [buffer]				; value = buffer[0]
		bswap	value						; change byte order from standard to little endian
		shl		value, 3					; value *= 8
		add		shiftl, value				; shift += value
		add		buffer, 4					; buffer += 4
		mov		value, [buffer]				; value = buffer[0]
		bswap	value						; change byte order from standard to little endian
		lea		value, [value + value * 4]	; value *= 5
		add		shiftl, value				; shift += value
		add		buffer, 4					; buffer += 4
		mov		value, [buffer]				; value = buffer[0]
		bswap	value						; change byte order from standard to little endian
		lea		value, [value + value * 2]
		shl		value, 1					; value *= 6
		add		shiftl, value				; shift += value
		add		buffer, 4					; buffer += 4
		mov		value, [buffer]				; value = buffer[0]
		bswap	value						; change byte order from standard to little endian
		add		shiftl, value				; shift += value
		add		buffer, 4					; buffer += 4
		add		buffer, shift				; buffer += shift
		add		shiftl, 44					; shift += 44
;---[Reading 2 header]---------------------
		sub		size, shift					; if (size <= shift)
		jbe		.error						;     return ERRNO_NODATA
		mov		str, [buffer]				; str = file magic number
		cmp		str, qword [magic]			; if file magic number is not equal to tzfile
		jne		.error						;     return ERRNO_NODATA
		add		buffer, 32					; buffer += 32
		mov		value, [buffer]				; value = buffer[0]
		bswap	value						; change byte order from standard to little endian
		mov		csize, value				; csize = value
		lea		value, [value + value * 8]	; value *= 9
		mov		shiftl, value				; shift = value
		add		buffer, 4					; buffer += 4
		mov		value, [buffer]				; value = buffer[0]
		bswap	value						; change byte order from standard to little endian
		mov		zsize, value				; zsize = value
		lea		value, [value + value * 2]
		shl		value, 1					; value *= 6
		add		shiftl, value				; shift += value
		add		buffer, 8					; buffer += 8
;---[Reading content]----------------------
		sub		size, shift					; if (size < shift)
		jb		.error						;     return ERRNO_NODATA
		cmp		csize, CHNG_SIZE			; if (csize > CHNG_SIZE)
		ja		.error						;     return ERRNO_NODATA
		lea		value, [zsize - 1]
		cmp		value, ZONE_SIZE			; if ((zsize - 1) >= ZONE_SIZE)
		jae		.error						;     return ERRNO_NODATA
		mov		[this + csize_of], csize	; this -> change_size = csize
		mov		[this + zsize_of], zsize	; this -> zone_size = zsize
;---[Loading time changes and indexes]-----
		test	csize, csize				; if (csize == 0)
		jz		@f							; then skip this block
		lea		cptr, [this + change_of]	; cptr = this -> change
		mov		ptr, buffer					; ptr = buffer
		lea		iptr, [this + index_of]		; iptr = this -> index
		lea		buffer, [buffer + count * 8]; buffer += csize
		mov		prev, 1 shl 63				; prev = smallest time value
;---[Loop]---------------------------------
.loop1:	mov		time, [ptr]					; time = ptr[0]
		bswap	time						; change byte order from standard to little endian
		cmp		time, prev					; if (time <= prev)
		jle		.error						;     return ERRNO_NODATA
		mov		[cptr], time				; cptr[0] = time
		mov		prev, time					; prev = time
		mov		index, [buffer]				; index = buffer[0]
		cmp		index, max					; if (index >= max)
		jae		.error						;     return ERRNO_NODATA
		mov		[iptr], index				; iptr[0] = index
		add		ptr, 8						; ptr += 8
		add		buffer, 1					; buffer++
		add		cptr, 8						; cptr++
		add		iptr, 1						; iptr++
		sub		csize, 1					; csize--
		jnz		.loop1						; do while (csizet != 0)
;---[Loading UTC offsets for time zones]---
@@:		test	zsize, zsize				; if (zsize == 0)
		jz		.error						;     return ERRNO_NODATA
		lea		zptr, [this + zone_of]		; zptr = this -> zone
;---[Loop]---------------------------------
.loop2:	mov		value, [buffer]				; value = buffer[0]
		bswap	value						; change byte order from standard to little endian
		lea		temp, [value + TIME_DAY/2]	; temp = value + TIME_DAY / 2
		cmp		temp, TIME_DAY				; if (temp > TIME_DAY)
		ja		.error						;     return ERRNO_NODATA
		mov		[zptr], value				; zptr[0] = value
		add		buffer, 6					; buffer += 6
		add		zptr, 4						; zptr++
		sub		zsize, 1					; zsize--
		jnz		.loop2						; do while (zsize != 0)
;---[Normal exit]--------------------------
		xor		result, result				; result = 0 (no errors)
		ret
;---[Error branch]-------------------------
.error:	mov		result, ERRNO_NODATA		; return ERRNO_NODATA
		ret

;******************************************************************************;
;       Default constructor                                                    ;
;******************************************************************************;
Time:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to time object
;---[Internal variables]-------------------
csize_of 	= CHNG_SIZE * 9 + ZONE_SIZE * 4	; offset of change_size variable inside time_zone
zsize_of	= csize_of + 4					; offset of zone_size variable inside time_zone
;------------------------------------------
		mov		dword [this + csize_of], 0	; this -> change_size = 0
		mov		dword [this + zsize_of], 0	; this -> zone_size = 0
		ret

;******************************************************************************;
;       Loading time zone data from tzfile                                     ;
;******************************************************************************;
LoadTimeZone:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to time object
tzfile	equ		rsi							; time zone file name
;---[Internal variables]-------------------
result	equ		rax							; result register
prm1	equ		rdi							; 1-st function parameter
prm2	equ		rsi							; 2-rd function parameter
prm3	equ		rdx							; 3-rd function parameter
buffer	equ		rsp							; buffer which holds content of tzfile
stack	equ		rsp							; stack pointer
s_this	equ		stack + BUF_SIZE			; stack position of pointer to time object
space	= BUF_SIZE + 8						; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save this pointer into the stack
;---[Reading file content]-----------------
		mov		prm1, buffer
		call	ReadFile					; call Readfile (buffer, tzfile)
		test	result, result				; is (result < 0)
		js		.error						;     then go to error branch
;---[Analysing file content]---------------
		mov		prm1, [s_this]
		mov		prm2, buffer
		mov		prm3, result
		call	AnalyseFile					; call AnalyseFile (this, buffer, size)
;---[Normal exit]--------------------------
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	neg		result						; set correct sign of error code
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Time conversion                                                        ;
;******************************************************************************;
ConvertTime:
;---[Parameters]---------------------------
hour_p	equ		dil							; hours
min_p	equ		sil							; minutes
sec_p	equ		dl							; seconds
;---[Internal variables]-------------------
hour	equ		rax							; hours (uint64_t)
min		equ		rsi							; minutes (uint64_t)
sec		equ		rdx							; seconds (uint64_t)
;------------------------------------------
		cmp		hour_p, 24
		jae		.error
		cmp		min_p, 60
		jae		.error
		cmp		sec_p, 60
		jae		.error						; if (hour < 24 && min < 60 && sec < 60)
;---[Normal execution branch]--------------
		movzx	hour, hour_p				; converting hours to uint64_t
		movzx	min, min_p					; converting minutes to uint64_t
		movzx	sec, sec_p					; converting seconds to uint64_t
		mul60	hour						; hour *= 60
		add		hour, min					; hour += min
		mul60	hour						; hour *= 60
		add		hour, sec					; hour += sec
		ret									; return hour
;---[Error branch]-------------------------
.error:	mov		hour, TIME_ERROR			; return TIME_ERROR
		ret

;******************************************************************************;
;       Date conversion                                                        ;
;******************************************************************************;
ConvertDate:
;---[Parameters]---------------------------
day_p	equ		dil							; day
month_p	equ		sil							; month
year_p	equ		edx							; year
hour_p	equ		cl							; hours
min_p	equ		r8b							; minutes
sec_p	equ		r9b							; seconds
;---[Internal variables]-------------------
day		equ		rdi							; day (uint64_t)
month	equ		rsi							; month (uint64_t)
year	equ		rdx							; year (uint64_t)
hour	equ		rcx							; hours (uint64_t)
min		equ		r8							; minutes (uint64_t)
sec		equ		r9							; seconds (uint64_t)
days	equ		r10							; days counter
leap	equ		r11							; leap year flag
temp	equ		rax							; temporary variable
max		equ		year						; max count of days in selected month
bias	equ		year						; time bias
s_year	equ		rsp - 1 * 8					; stack position of year variable
;------------------------------------------
		movsxd	year, year_p				; converting year to uint64_t
		mov		temp, 2147484000
		add		year, temp					; year += 2147484000
		lea		days, [year + year * 4]
		lea		temp, [days + days * 8]
		lea		days, [days + temp * 8]		; days = year * 365
		mov		leap, 1						; leap = 1
		xor		temp, temp					; temp = 0
		test	year, 0x3					; if (year & 0x3)
		cmovnz	leap, temp					;     leap = temp
		shr		year, 2						; year /= 4
		mov		temp, 0x47AE147AE147AE15
		add		days, year					; days += year
		mov		[s_year], year				; save "year" variable into the stack
		mul		year
		mov		temp, year
		mov		year, [s_year]				; restore "year" variable from the stack
		sub		year, temp
		shr		year, 1
		add		year, temp
		shr		year, 4						; year /= 25
		mul25	temp, year
		neg		temp
		sub		days, year					; days -= year
		add		temp, [s_year]				; temp = year % 25
		cmovnz	temp, leap					; if (temp != 0), then temp = leap
		test	year, 0x3					; if (year & 0x3)
		cmovnz	leap, temp					;     leap = temp
		sub		month_p, 1					; month--
		sub		days, leap					; days -= leap
		shr		year, 2						; year /= 4
		sub		day_p, 1					; day--
		add		days, year					; days += year
		cmp		month_p, 12					; if (month >= 12)
		jae		.error						;     then go to error branch
;---[if (month < 12)]----------------------
		movzx	month, month_p				; converting month to uint64_t
		movzx	day, day_p					; converting day to uint64_t
		shl		month, 3
		test	leap, leap					; if (leap)
		cmovnz	temp, [array2 + month]		;       temp = array2 [month];
		cmovnz	max, [max2 + month]			;       max = max2 [month]
		cmovz	temp, [array1 + month]		; else: temp = array1[month];
		cmovz	max, [max1 + month]			;       ptr = max1 [month]
		add		temp, days					; temp += days
		cmp		day, max
		jae		.error
		cmp		hour_p, 24
		jae		.error
		cmp		min_p, 60
		jae		.error
		cmp		sec_p, 60
		jae		.error						; if (day < max && hour < 24 && min < 60 && sec < 60)
;---[Normal execution branch]--------------
		mov		bias, 67768111675900800
		movzx	hour, hour_p				; converting hour to uint64_t
		movzx	min, min_p					; converting min to uint64_t
		movzx	sec, sec_p					; converting sec to uint64_t
		add		temp, day					; temp += day
		mul24	temp						; temp *= 24
		add		temp, hour					; temp += hour
		mul60	temp						; temp *= 60
		add		temp, min					; temp += min
		mul60	temp						; temp *= 60
		add		temp, sec					; temp += sec
		sub		temp, bias					; temp -= 67768111675900800
		ret
;---[Error branch]-------------------------
.error:	mov		temp, TIME_ERROR			; return TIME_ERROR
		ret

;******************************************************************************;
;       Time extraction                                                        ;
;******************************************************************************;
ExtractTime:
;---[Parameters]---------------------------
time	equ		rdi							; time value
;---[Internal variables]-------------------
timel	equ		dil							; time value (low part)
struct	equ		rcx							; time structure
structl	equ		cl							; time structure (low part)
const	equ		rsi							; temporary register to hold constants
temp1	equ		rax							; temporary register #1
temp2	equ		rdx							; temporary register #2
;------------------------------------------
		cmp		time, [time_error]			; if (time == TIME_ERROR)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		xor		struct, struct				; clear time structure
		mov		const, 0x8888888888888889
;---[Extracting seconds]-------------------
		mov		temp1, time					; temp1 = time
		mul		const
		shr		temp2, 5
		mov		temp1, temp2				; temp1 = time / 60
		mul60	temp2
		sub		time, temp2					; time = time % 60
		mov		structl, timel				; store seconds to time structure
		shl		struct, 8
;---[Extracting minutes]-------------------
		mov		time, temp1					; time = temp1
		mul		const
		shr		temp2, 5
		mov		temp1, temp2				; temp1 = time / 60
		mul60	temp2
		sub		time, temp2					; time = time % 60
		mov		structl, timel				; store minutes to time structure
		shl		struct, 8
;---[Extracting hours]---------------------
		mov		const, 0xAAAAAAAAAAAAAAAB
		mov		time, temp1					; time = temp1
		mul		const
		shr		temp2, 4
		mul24	temp2
		sub		time, temp2					; time = time % 24
		mov		structl, timel				; store hours to time structure
		mov		temp1, struct				; return time structure
		ret
;---[Error branch]-------------------------
.error:	mov		temp1, 0x000018				; return 24:00:00 (error value)
		ret

;******************************************************************************;
;       Date extraction                                                        ;
;******************************************************************************;
ExtractDate:
;---[Parameters]---------------------------
time	equ		rdi							; time value
;---[Internal variables]-------------------
timel	equ		dil							; time value (low part)
year	equ		rcx							; year value
yearl	equ		ecx							; year value (low part)
year1	equ		r8							; year1 value (centure number)
year1l	equ		r8b							; year1 value (low part)
year2	equ		r9							; year2 value (year number inside centure)
year2l	equ		r9b							; year2 (low part)
const	equ		rsi							; temporary register to hold constants
temp1	equ		rax							; temporary register #1
temp2	equ		rdx							; temporary register #2
month	equ		al							; month value
struct1	equ		rax							; date structure (1 part)
struct2	equ		edx							; date structure (2 part)
ptr		equ		year						; ptr to array of days gone from beginning of the year
s_time	equ		rsp - 8						; stack position of time variable
s_year	equ		rsp - 18					; stack position of year variable
s_mon	equ		rsp - 14					; stack position of month variable
s_day	equ		rsp - 13					; stack position of day variable
s_wday	equ		rsp - 12					; stack position of wday variable
s_hour	equ		rsp - 11					; stack position of hour variable
s_min	equ		rsp - 10					; stack position of min variable
s_sec	equ		rsp - 9						; stack position of sec variable
;------------------------------------------
		cmp		time, [time_error]			; if (time == TIME_ERROR)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		temp2, 9223372041369724800
		mov		temp1, 11676096000			; temp1 = 11676096000
		mov		const, -292277022800
		mov		year, 1600					; year = 1600
		test	time, time					; if (time < 0)
		cmovs	temp1, temp2				;     temp1 = 9223372041369724800
		cmovs	year, const					;     year = -292277022800
		add		temp1, time					; temp1 += time
;---[Extracting time]----------------------
		mov		const, 0x8888888888888889
;---[Extracting seconds]-------------------
		mov		time, temp1					; time = temp1
		mul		const
		shr		temp2, 5
		mov		temp1, temp2				; temp1 = time / 60
		mul60	temp2
		sub		time, temp2					; time = time % 60
		mov		[s_sec], timel				; store seconds to date structure
;---[Extracting minutes]-------------------
		mov		time, temp1					; time = temp1
		mul		const
		shr		temp2, 5
		mov		temp1, temp2				; temp1 = time / 60
		mul60	temp2
		sub		time, temp2					; time = time % 60
		mov		[s_min], timel				; store minutes to date structure
;---[Extracting hours]---------------------
		mov		const, 0xAAAAAAAAAAAAAAAB
		mov		time, temp1					; time = temp1
		mul		const
		shr		temp2, 4
		mov		temp1, temp2				; temp1 = time / 24
		mul24	temp2
		sub		time, temp2					; time = time % 24
		mov		[s_hour], timel				; store hours to date structure
;---[Extracting week day]------------------
		mov		[s_time], temp1				; save "time" variable into the stack
		mov		const, 0x2492492492492493
		add		temp1, 6					; temp1 = time + 6
		mov		time, temp1
		mul		const
		mov		temp1, time
		sub		temp1, temp2
		shr		temp1, 1
		add		temp1, temp2
		shr		temp1, 2					; temp1 = (time + 6) / 7
		add		time, temp1
		shl		temp1, 3
		sub		time, temp1					; time = (time + 6) % 7
		mov		[s_wday], timel				; store week day to date structure
		mov		time, [s_time]				; restore "time" variable from the stack
;---[Extracting year]----------------------
		mov		temp1, time
		mov		const, 0x396B06BCC8F862ED
		shl		temp1, 2
		mul		const
		shr		temp2, 15
		mov		year1, temp2				; year1 = time * 4 / 146097
		mul25	temp1, temp2
		shl		temp1, 2
		add		year, temp1					; year += year1 * 100
		lea		temp1, [temp2 + temp2 * 2 + 3]
		shr		temp1, 2
		add		time, temp1					; time += (3 * year1 + 3) / 4
	mul36525	temp2, temp1
		sub		time, temp2					; time -= year1 * 36525
		mov		temp1, time
		mov		const, 0xB36D8397914268C9
		shl		temp1, 2
		mul		const
		shr		temp2, 10
		mov		year2, temp2				; year2 = t * 4 / 1461
		add		year, temp2					; year += year2
		lea		temp1, [temp2 + temp2 * 2]
		shr		temp1, 2
		add		time, temp1					; time += (3 * year2) / 4
		mul366	temp2, temp1
		sub		time, temp2					; time -= year2 * 366
		mov		[s_year], yearl				; store year to date structure
		mov		const, 4294967296
		sub		year, -2147483648
		cmp		year, const					; if year doesn't fit into sint32_t
		jae		.error						; then go to error branch
;---[Check for leap year]------------------
		mov		temp1, array1 + 12 * 8		; temp1 = array1 + 12
		mov		temp2, array2 + 12 * 8		; temp2 = array2 + 12
		and		year1, 0x3					; if (year1 & 0x3), then year1 = 1
		setnz	year1l						; else year1 = 0
		test	year2l, 0x3					; if (year2 & 0x3)
		cmovnz	ptr, temp1					;     then ptr = array1
		cmovz	ptr, temp2					;     else ptr = array2
		cmp		year2l, year1l				; if (year2 < year1)
		setb	year1l						;     then year1 = 1; ptr = array1
		cmovb	ptr, temp1					;     else year1 = 0
		sub		time, year1					; time -= year1
;---[Extracting month and day]-------------
		mov		month, 13					; month = 13
;---[Loop]---------------------------------
@@:		sub		ptr, 8						; ptr--
		sub		month, 1					; month--
		cmp		time, [ptr]
		jb		@b							; do while (time < ptr[0])
;---[end of loop]--------------------------
		sub		time, [ptr]					; time -= ptr[0]
		mov		[s_mon], month				; store month to date structure
		add		timel, 1					; time++
		mov		[s_day], timel				; store day to date structure
		mov		struct1, [s_year]
		mov		struct2, [s_min]			; return date structure
		ret
;---[Error branch]-------------------------
.error:	xor		struct1, struct1
		xor		struct2, struct2			; return {0,0,0,0,0,0,0} (error value)
		ret

;******************************************************************************;
;       Week day extraction                                                    ;
;******************************************************************************;
WeekDay:
;---[Parameters]---------------------------
time	equ		rdi							; time value
;---[Internal variables]-------------------
const	equ		rsi							; temporary register to hold constants
temp1	equ		rax							; temporary variable #1
temp2	equ		rdx							; temporary variable #2
;------------------------------------------
		cmp		time, [time_error]			; if (time == TIME_ERROR)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		temp1, 345600				; temp1 = 345600
		mov		temp2, 9223372036854806400
		test	time, time					; if (time < 0)
		cmovs	temp1, temp2				;     temp1 = 9223372036854806400
		add		temp1, time					; temp1 += time
		mov		temp2, 0xC22E450672894AB7
		mul		temp2
		shr		temp2, 16
		mov		temp1, temp2				; temp1 /= 86400
		mov		time, temp2					; time = temp1
		mov		temp2, 0x2492492492492493
		mul		temp2
		mov		temp1, time					; temp1 = time
		sub		time, temp2
		shr		time, 1
		add		time, temp2
		shr		time, 2						; time = temp1 / 7
		add		temp1, time
		shl		time, 3
		sub		temp1, time					; temp1 = temp1 % 7
		ret
;---[Error branch]-------------------------
.error:	mov		temp1, 7					; return 7 (error value)
		ret

;******************************************************************************;
;       Current system time                                                    ;
;******************************************************************************;
SystemTime:
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		xor		sc_prm1, sc_prm1
		mov		sc_num, SYSCALL_TIME
		syscall								; syscall time (NULL)
		test	result, result				; is (result < 0)
		js		.error						; then go to error branch
		ret
;---[Error branch]-------------------------
.error:	mov		result, TIME_ERROR			; return TIME_ERROR
		ret

;******************************************************************************;
;       Local time                                                             ;
;******************************************************************************;
LocalTime:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to time object
time	equ		rsi							; UTC time
;---[Internal variables]-------------------
result	equ		rax							; result register
size	equ		rdx							; size of time change array
csize	equ		edx							; count of time change records
zsize	equ		ecx							; count of time zone records
left	equ		r8							; pointer to start of the time changes array
right	equ		r9							; pointer to end of the time changes array
median	equ		rax							; pointer to median element of the time changes array
medianl	equ		al							; low part of median pointer
index_of	= CHNG_SIZE * 8					; offset of index array inside time_zone
zone_of		= index_of + CHNG_SIZE			; offset of zone array inside time_zone
csize_of 	= zone_of + ZONE_SIZE * 4		; offset of change_size variable inside time_zone
zsize_of	= csize_of + 4					; offset of zsizeize variable inside time_zone
;------------------------------------------
		cmp		time, [time_error]			; if (time == TIME_ERROR)
		je		.error						;     then go to error branch
		mov		zsize, [this + zsize_of]	; zsize = this -> zsizeize
		mov		csize, [this + csize_of]	; csize = this -> change_size
		test	zsize, zsize				; if (zsize = 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		test	csize, csize				; if (csize == 0)
		jz		.skip						;     then go to skip branch
		cmp		time, [this]				; if (time < (this -> time[0]))
		jl		.skip						;     then go to skip branch
		mov		left, this					; left = this -> time;
		lea		right, [this + size * 8]	; right = this -> time + this -> change_size
		mov		median, right
		sub		median, left
;---[Binary search loop]-------------------
@@:		shr		median, 1					; {
		and		medianl, -8
		add		median, left				; median = left + (right - left) / 2
		cmp		time, [median]				; if (time >= median[0])
		cmovge	left, median				; then left = median
		cmovl	right, median				; else right = median
		mov		median, right
		sub		median, left
		cmp		median, 8
		ja		@b							; } do while (right - left > 1)
;---[end of loop]--------------------------
		sub		left, this					; left = left - (this -> time)
		shr		left, 3						; now left is equal to index of time array element
		movzx	result, byte [this + left + index_of]
		movsxd	result, dword [this + result * 4 + zone_of]
		add		result, time				; return time + this -> zone[result];
		ret
;---[Skip branch]--------------------------
.skip:	movsxd	result, dword [this + zone_of]
		mov		result, time				; return time + this -> zone[0];
		ret
;---[Error branch]-------------------------
.error:	mov		result, TIME_ERROR			; return TIME_ERROR
		ret

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

array1		dq	0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334
array2		dq	0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335

max1		dq	31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
max2		dq	31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31

time_error	dq	TIME_ERROR					; Wrong time value
magic		db	'T','Z','i','f','2',0,0,0	; TZ file magic number

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
