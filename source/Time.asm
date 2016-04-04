;                                                                       Time.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                               TIME FUNCTIONS                                #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64
include	'Syscall.inc'
include	'Errno.inc'

;###############################################################################
;#      Export section                                                         #
;###############################################################################

; Constructor
public	Constructor		as	'Time_InitTime'
public	Constructor		as	'_ZN4TimeC1Ev'

; Loading time zone data from tzfile
public	LoadTimeZone	as	'Time_LoadTimeZone'
public	LoadTimeZone	as	'_ZN4Time12LoadTimeZoneEPKc'

; Time conversion
public	ConvertTime		as	'Time_ConvertTime'
public	ConvertTime		as	'_ZN4Time11ConvertTimeEhhh'

; Date conversion
public	ConvertDate		as	'Time_ConvertDate'
public	ConvertDate		as	'_ZN4Time11ConvertDateEhhihhh'

; Time extraction
public	ExtractTime		as	'Time_ExtractTime'
public	ExtractTime		as	'_ZN4Time11ExtractTimeEx'

; Date extraction
public	ExtractDate		as	'Time_ExtractDate'
public	ExtractDate		as	'_ZN4Time11ExtractDateEx'

; Week day extraction
public	WeekDay			as	'Time_WeekDay'
public	WeekDay			as	'_ZN4Time7WeekDayEx'

; Current system time
public	SystemTime		as	'Time_SystemTime'
public	SystemTime		as	'_ZN4Time10SystemTimeEv'

; Local time
public	LocalTime		as	'Time_LocalTime'
public	LocalTime		as	'_ZNK4Time9LocalTimeEx'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
CHNG_SIZE	= 512							; Size of time changes array
ZONE_SIZE	= 256							; Size of time zone array
TIME_DAY	= 86400							; Seconds per day
TIME_ERROR	= 0x8000000000000000			; Wrong time value
BUF_SIZE	= 16384							; Buffer size

;******************************************************************************;
;       Multiply value by 25                                                   ;
;******************************************************************************;
macro	mul25	target, source
{
		lea		target, [source + source * 4]
		lea		target, [target + target * 4]
}

;******************************************************************************;
;       Multiply value by 24                                                   ;
;******************************************************************************;
macro	mul24		reg
{
		shl		reg, 3
		lea		reg, [reg + reg * 2]
}

;******************************************************************************;
;       Multiply value by 60                                                   ;
;******************************************************************************;
macro	mul60		reg
{
		shl		reg, 2
		lea		reg, [reg + reg * 2]
		lea		reg, [reg + reg * 4]
}

;******************************************************************************;
;       Multiply value by 366                                                  ;
;******************************************************************************;
macro	mul366		reg, temp
{
		lea		reg, [reg + reg * 2]
		shl		reg, 1
		lea		temp, [reg + reg * 2]
		shl		reg, 6
		sub		reg, temp
}

;******************************************************************************;
;       Multiply value by 36525                                                ;
;******************************************************************************;
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
s_fd	equ		stack + 1 * 8				; stack position of file descriptor
s_ptr	equ		stack + 2 * 8				; stack position of "ptr" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_errno	equ		stack + 4 * 8				; stack position of "errno" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_buff], buffer			; save buffer pointer into the stack
		mov		[s_ptr], buffer				; save ptr variable into the stack
;---[Opening tzfile for reading]-----------
		mov		sc_prm1, tzfile
		mov		sc_prm2, 0
		mov		sc_prm3, 0
		mov		sc_num, SYSCALL_OPEN
		syscall								; syscall open (tzfile, O_RDONLY, 0)
		test	result, result				; if (result < 0)
		js		.exit						;     then go to exit
		mov		[s_fd], result				; save opened file descriptor into the stack
		mov		qword [s_size], BUF_SIZE	; size = BUF_SIZE (max buffer size)
;---[Reading file content to the buffer]---
.loop:	mov		sc_prm1, [s_fd]
		mov		sc_prm2, [s_ptr]
		mov		sc_prm3, [s_size]
		mov		sc_num, SYSCALL_READ
		syscall								; syscall read (fd, ptr, size)
		cmp		result, -ERRNO_INTR			; if interrupted system call
		je		.loop						;     then repeat system call
		test	result, result				; is (result < 0)
		js		.error						;     then go to emergency closing branch
		jz		.close						; if (result = EOF), then break the loop
		add		[s_ptr], result				; ptr += result (bytes read)
		sub		[s_size], result			; size -= result (bytes read)
		jnz		.loop						; do while (size != 0)
;---[Emergency closing of the opened file]-
		mov		result, -ERRNO_NOBUFS		; if (size == 0), then errno = ERRNO_NOBUFS
.error:	mov		[s_errno], result			; save errno into the stack
		mov		sc_prm1, [s_fd]
		mov		sc_num, SYSCALL_CLOSE
		syscall								; syscall close (fd)
		mov		result, [s_errno]			; restore errno from the stack
		add		stack, space				; restoring back the stack pointer
		ret
;---[Closing of the opened file]-----------
.close:	mov		sc_prm1, [s_fd]
		mov		sc_num, SYSCALL_CLOSE
		syscall								; syscall close (fd)
		test	result, result				; is (result < 0)
		js		.exit						;     then go to exit
		mov		result, [s_ptr]
		sub		result, [s_buff]			; return ptr - buffer
;---[Exit branch]--------------------------
.exit:	add		stack, space				; restoring back the stack pointer
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
resultl	equ		eax							; low part result register
index	equ		al							; index value
shift	equ		rcx							; register to compute pointer shift
csize	equ		r8							; count of time change records
csizel	equ		r8d							; low part of csize
zsize	equ		r9							; count of time zone records
zsizel	equ		r9d							; low part of zsize
max		equ		r9b							; max index value
target	equ		r10							; pointer to target buffer
prev	equ		rcx							; previous value of time change
temp	equ		ecx							; temporary register
change_of	= 0								; offset of Time::change
index_of	= change_of + CHNG_SIZE * 8		; offset of Time::index
zone_of		= index_of + CHNG_SIZE			; offset of Time::zone
csize_of	= zone_of + ZONE_SIZE * 4		; offset of Time::change_size
zsize_of	= csize_of + 4					; offset of Time::zone_size
;---[Skipping 1 header and content]--------
		sub		size, 44					; if (size <= 44)
		jbe		.error						;     return ERRNO_NODATA
		mov		result, 'TZif2'				; result = file magic number
		cmp		result, qword [buffer]		; if file magic number is not equal to tzfile
		jne		.error						;     return ERRNO_NODATA
		add		buffer, 20					; buffer += 20
		mov		resultl, [buffer]			; result = buffer[0]
		bswap	resultl						; change byte order from standard to little endian
		mov		shift, result				; shift = result
		add		buffer, 4					; buffer += 4
		mov		resultl, [buffer]			; result = buffer[0]
		bswap	resultl						; change byte order from standard to little endian
		add		shift, result				; shift += result
		add		buffer, 4					; buffer += 4
		mov		resultl, [buffer]			; result = buffer[0]
		bswap	resultl						; change byte order from standard to little endian
		shl		result, 3					; result *= 8
		add		shift, result				; shift += result
		add		buffer, 4					; buffer += 4
		mov		resultl, [buffer]			; result = buffer[0]
		bswap	resultl						; change byte order from standard to little endian
		lea		result, [result + result*4]	; result *= 5
		add		shift, result				; shift += result
		add		buffer, 4					; buffer += 4
		mov		resultl, [buffer]			; result = buffer[0]
		bswap	resultl						; change byte order from standard to little endian
		lea		result, [result + result*2]
		shl		result, 1					; result *= 6
		add		shift, result				; shift += result
		add		buffer, 4					; buffer += 4
		mov		resultl, [buffer]			; result = buffer[0]
		bswap	resultl						; change byte order from standard to little endian
		add		shift, result				; shift += result
		add		buffer, 4					; buffer += 4
		add		buffer, shift				; buffer += shift
		add		shift, 44					; shift += 44
;---[Reading 2 header]---------------------
		sub		size, shift					; if (size <= shift)
		jbe		.error						;     return ERRNO_NODATA
		mov		result, 'TZif2'				; result = file magic number
		cmp		result, qword [buffer]		; if file magic number is not equal to tzfile
		jne		.error						;     return ERRNO_NODATA
		add		buffer, 32					; buffer += 32
		mov		resultl, [buffer]			; result = buffer[0]
		bswap	resultl						; change byte order from standard to little endian
		mov		csize, result				; csize = result
		lea		result, [result + result*8]	; result *= 9
		mov		shift, result				; shift = result
		add		buffer, 4					; buffer += 4
		mov		resultl, [buffer]			; result = buffer[0]
		bswap	resultl						; change byte order from standard to little endian
		mov		zsize, result				; zsize = result
		lea		result, [result + result*2]
		shl		result, 1					; result *= 6
		add		shift, result				; shift += result
		add		buffer, 8					; buffer += 8
;---[Reading content]----------------------
		sub		size, shift					; if (size < shift)
		jb		.error						;     return ERRNO_NODATA
		cmp		csize, CHNG_SIZE			; if (csize > CHNG_SIZE)
		ja		.error						;     return ERRNO_NODATA
		lea		result, [zsize - 1]
		cmp		result, ZONE_SIZE			; if ((zsize - 1) >= ZONE_SIZE)
		jae		.error						;     return ERRNO_NODATA
		mov		[this + csize_of], csizel	; this -> change_size = csize
		mov		[this + zsize_of], zsizel	; this -> zone_size = zsize
;---[Loading time changes and indexes]-----
		test	csize, csize				; if (csize == 0)
		jz		.skip						;     then skip this block
		lea		target, [this + change_of]	; target = this -> change
		mov		size, csize					; size = csize
		mov		prev, 1 shl 63				; prev = smallest time value
;---[Time changes loop]--------------------
@@:		mov		result, [buffer]			; result = buffer[0]
		bswap	result						; change byte order from standard to little endian
		cmp		result, prev				; if (result <= prev)
		jle		.error						;     return ERRNO_NODATA
		mov		[target], result			; target[0] = result
		mov		prev, result				; prev = result
		add		buffer, 8					; buffer++
		add		target, 8					; target++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		lea		target, [this + index_of]	; target = this -> index
		mov		size, csize					; size = csize
;---[Indexes loop]-------------------------
@@:		mov		index, [buffer]				; index = buffer[0]
		cmp		index, max					; if (index >= max)
		jae		.error						;     return ERRNO_NODATA
		mov		[target], index				; target[0] = index
		add		buffer, 1					; buffer++
		add		target, 1					; target++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
.skip:	lea		target, [this + zone_of]	; target = this -> zone
		mov		size, zsize					; size = zsize
;---[Time offsets loop]--------------------
@@:		mov		resultl, [buffer]			; result = buffer[0]
		bswap	resultl						; change byte order from standard to little endian
		lea		temp, [resultl+TIME_DAY/2]	; temp = result + TIME_DAY / 2
		cmp		temp, TIME_DAY				; if (temp > TIME_DAY)
		ja		.error						;     return ERRNO_NODATA
		mov		[target], resultl			; target[0] = result
		add		buffer, 6					; buffer++
		add		target, 4					; target++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;---[Normal exit]--------------------------
		xor		result, result				; return 0 (no errors)
		ret
;---[Error branch]-------------------------
.error:	mov		result, -ERRNO_NODATA		; return -ERRNO_NODATA
		ret

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
Constructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to time zone object
;---[Internal variables]-------------------
csize_of	= CHNG_SIZE * 9 + ZONE_SIZE * 4	; offset of change_size variable inside time_zone
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
this	equ		rdi							; pointer to time zone object
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
		test	result, result				; is (result < 0)
		js		.error						;     then go to error branch
;---[Normal exit]--------------------------
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		this, [s_this]				; restore "this" pointer from the stack
		neg		result						; correct sign of errno
		mov		dword [this + csize_of], 0	; this -> change_size = 0
		mov		dword [this + zsize_of], 0	; this -> zone_size = 0
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
		movzx	hour, hour_p				; converting hours to uint64_t
		movzx	min, min_p					; converting minutes to uint64_t
		movzx	sec, sec_p					; converting seconds to uint64_t
		cmp		hour, 24
		jae		.error
		cmp		min, 60
		jae		.error
		cmp		sec, 60
		jae		.error						; if (hour < 24 && min < 60 && sec < 60)
;---[Normal execution branch]--------------
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
result	equ		rax							; result register
day		equ		rdi							; day (uint64_t)
month	equ		rsi							; month (uint64_t)
year	equ		rdx							; year (uint64_t)
hour	equ		rcx							; hours (uint64_t)
min		equ		r8							; minutes (uint64_t)
sec		equ		r9							; seconds (uint64_t)
days	equ		r10							; days counter
leap	equ		r11							; leap year flag
dptr1	equ		r12							; days pointer #1
dptr2	equ		r13							; days pointer #2
mptr1	equ		r14							; max pointer #1
mptr2	equ		r15							; max pointer #2
max		equ		year						; max count of days in selected month
bias	equ		year						; time bias
stack	equ		rsp							; stack pointer
s_year	equ		stack + 0 * 8				; stack position of "year" variable
s_dptr1	equ		stack + 1 * 8				; stack position of "dptr1" variable
s_dptr2	equ		stack + 2 * 8				; stack position of "dptr2" variable
s_mptr1	equ		stack + 3 * 8				; stack position of "mptr1" variable
s_mptr2	equ		stack + 4 * 8				; stack position of "mptr2" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_dptr1], dptr1			; save old value of "dptr1" variable
		mov		[s_dptr2], dptr2			; save old value of "dptr2" variable
		mov		[s_mptr1], mptr1			; save old value of "mptr1" variable
		mov		[s_mptr2], mptr2			; save old value of "mptr2" variable
		movsxd	year, year_p				; converting year to uint64_t
		movzx	month, month_p				; converting month to uint64_t
		movzx	day, day_p					; converting day to uint64_t
		movzx	hour, hour_p				; converting hour to uint64_t
		movzx	min, min_p					; converting min to uint64_t
		movzx	sec, sec_p					; converting sec to uint64_t
		mov		result, 2147484000
		add		year, result				; year += 2147484000
		lea		days, [year + year * 4]
		lea		result, [days + days * 8]
		lea		days, [days + result * 8]	; days = year * 365
		mov		leap, 1						; leap = 1
		xor		result, result				; result = 0
		test	year, 0x3					; if (year & 0x3)
		cmovnz	leap, result				;     leap = result
		shr		year, 2						; year /= 4
		mov		result, 0x47AE147AE147AE15
		add		days, year					; days += year
		mov		[s_year], year				; save "year" variable into the stack
		mul		year
		mov		result, year
		mov		year, [s_year]				; restore "year" variable from the stack
		sub		year, result
		shr		year, 1
		add		year, result
		shr		year, 4						; year /= 25
		mul25	result, year
		neg		result
		sub		days, year					; days -= year
		add		result, [s_year]			; result = year % 25
		cmovnz	result, leap				; if (result != 0), then result = leap
		test	year, 0x3					; if (year & 0x3)
		cmovnz	leap, result				;     leap = result
		sub		month, 1					; month--
		sub		days, leap					; days -= leap
		shr		year, 2						; year /= 4
		sub		day, 1						; day--
		add		days, year					; days += year
		cmp		month, 12					; if (month >= 12)
		jae		.error						;     then go to error branch
;---[if (month < 12)]----------------------
		lea		dptr1, [days1]				; set pointer to days table #1
		lea		dptr2, [days2]				; set pointer to days table #2
		lea		mptr1, [max1]				; set pointer to max table #1
		lea		mptr2, [max2]				; set pointer to max table #2
		test	leap, leap					; if (leap)
		cmovnz	result, [dptr2 + month*8]	;       result = days2 [month];
		cmovnz	max, [mptr2 + month*8]		;       max = max2 [month]
		cmovz	result, [dptr1 + month*8]	; else: result = days1[month];
		cmovz	max, [mptr1 + month*8]		;       ptr = max1 [month]
		add		result, days				; result += days
		cmp		day, max
		jae		.error
		cmp		hour, 24
		jae		.error
		cmp		min, 60
		jae		.error
		cmp		sec, 60
		jae		.error						; if (day < max && hour < 24 && min < 60 && sec < 60)
;---[Normal execution branch]--------------
		mov		bias, 67768111675900800
		add		result, day					; result += day
		mul24	result						; result *= 24
		add		result, hour				; result += hour
		mul60	result						; result *= 60
		add		result, min					; result += min
		mul60	result						; result *= 60
		add		result, sec					; result += sec
		sub		result, bias				; result -= 67768111675900800
		mov		dptr1, [s_dptr1]			; restore old value of "dptr1" variable
		mov		dptr2, [s_dptr2]			; restore old value of "dptr2" variable
		mov		mptr1, [s_mptr1]			; restore old value of "mptr1" variable
		mov		mptr2, [s_mptr2]			; restore old value of "mptr2" variable
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		dptr1, [s_dptr1]			; restore old value of "dptr1" variable
		mov		dptr2, [s_dptr2]			; restore old value of "dptr2" variable
		mov		mptr1, [s_mptr1]			; restore old value of "mptr1" variable
		mov		mptr2, [s_mptr2]			; restore old value of "mptr2" variable
		mov		result, TIME_ERROR			; return TIME_ERROR
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Time extraction                                                        ;
;******************************************************************************;
ExtractTime:
;---[Parameters]---------------------------
time	equ		rdi							; time value
;---[Internal variables]-------------------
result	equ		rax							; result register
temp	equ		rdx							; temporary register
struct	equ		rcx							; time structure
const	equ		rsi							; temporary register to hold constants
;------------------------------------------
		mov		result, TIME_ERROR
		cmp		time, result				; if (time == TIME_ERROR)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		xor		struct, struct				; clear time structure
		mov		const, 0x8888888888888889
;---[Extracting seconds]-------------------
		mov		result, time				; result = time
		mul		const
		shr		temp, 5
		mov		result, temp				; result = time / 60
		mul60	temp
		sub		time, temp					; time = time % 60
		shl		time, 16
		or		struct, time				; store seconds to time structure
;---[Extracting minutes]-------------------
		mov		time, result				; time = result
		mul		const
		shr		temp, 5
		mov		result, temp				; result = time / 60
		mul60	temp
		sub		time, temp					; time = time % 60
		shl		time, 8
		or		struct, time				; store minutes to time structure
;---[Extracting hours]---------------------
		mov		const, 0xAAAAAAAAAAAAAAAB
		mov		time, result				; time = result
		mul		const
		shr		temp, 4
		mul24	temp
		sub		time, temp					; time = time % 24
		or		struct, time				; store hours to time structure
		mov		result, struct				; return time structure
		ret
;---[Error branch]-------------------------
.error:	mov		result, 0x000018			; return 24:00:00 (error value)
		ret

;******************************************************************************;
;       Date extraction                                                        ;
;******************************************************************************;
ExtractDate:
;---[Parameters]---------------------------
time	equ		rdi							; time value
;---[Internal variables]-------------------
result1	equ		rax							; result register #1
result2	equ		rdx							; result register #1
const	equ		rsi							; temporary register to hold constants
month	equ		rax							; month value
year	equ		rcx							; year value
year1	equ		r8							; year1 value (centure number)
year2	equ		r9							; year2 value (year number inside centure)
struct1	equ		r10							; date structure (1 part)
struct2	equ		r11							; date structure (2 part)
ptr		equ		year						; ptr to array of days gone from beginning of the year
stack	equ		rsp							; stack pointer
s_time	equ		stack - 8					; stack position of "time" variable
;------------------------------------------
		mov		result1, TIME_ERROR
		cmp		time, result1				; if (time == TIME_ERROR)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		result2, 9223372041369724800
		xor		struct2, struct2			; struct2 = 0
		mov		result1, 11676096000		; result1 = 11676096000
		xor		struct1, struct1			; struct1 = 0
		mov		const, -292277022800
		mov		year, 1600					; year = 1600
		test	time, time					; if (time < 0)
		cmovs	result1, result2			;     result1 = 9223372041369724800
		cmovs	year, const					;     year = -292277022800
		add		result1, time				; result1 += time
;---[Extracting time]----------------------
		mov		const, 0x8888888888888889
;---[Extracting seconds]-------------------
		mov		time, result1				; time = result1
		mul		const
		shr		result2, 5
		mov		result1, result2			; result1 = time / 60
		mul60	result2
		sub		time, result2				; time = time % 60
		shl		time, 8
		or		struct2, time				; store seconds to date structure
;---[Extracting minutes]-------------------
		mov		time, result1				; time = result1
		mul		const
		shr		result2, 5
		mov		result1, result2			; result1 = time / 60
		mul60	result2
		sub		time, result2				; time = time % 60
		or		struct2, time				; store minutes to date structure
;---[Extracting hours]---------------------
		mov		const, 0xAAAAAAAAAAAAAAAB
		mov		time, result1				; time = result1
		mul		const
		shr		result2, 4
		mov		result1, result2			; result1 = time / 24
		mul24	result2
		sub		time, result2				; time = time % 24
		shl		time, 56
		or		struct1, time				; store hours to date structure
;---[Extracting week day]------------------
		mov		[s_time], result1			; save "time" variable into the stack
		mov		const, 0x2492492492492493
		add		result1, 6					; result1 = time + 6
		mov		time, result1
		mul		const
		mov		result1, time
		sub		result1, result2
		shr		result1, 1
		add		result1, result2
		shr		result1, 2					; result1 = (time + 6) / 7
		add		time, result1
		shl		result1, 3
		sub		time, result1				; time = (time + 6) % 7
		shl		time, 48
		or		struct1, time				; store week day to date structure
		mov		time, [s_time]				; restore "time" variable from the stack
;---[Extracting year]----------------------
		mov		result1, time
		mov		const, 0x396B06BCC8F862ED
		shl		result1, 2
		mul		const
		shr		result2, 15
		mov		year1, result2				; year1 = time * 4 / 146097
		mul25	result1, result2
		shl		result1, 2
		add		year, result1				; year += year1 * 100
		lea		result1, [result2 + result2*2 + 3]
		shr		result1, 2
		add		time, result1				; time += (3 * year1 + 3) / 4
	mul36525	result2, result1
		sub		time, result2				; time -= year1 * 36525
		mov		result1, time
		mov		const, 0xB36D8397914268C9
		shl		result1, 2
		mul		const
		shr		result2, 10
		mov		year2, result2				; year2 = t * 4 / 1461
		add		year, result2				; year += year2
		lea		result1, [result2 + result2*2]
		shr		result1, 2
		add		time, result1				; time += (3 * year2) / 4
		mul366	result2, result1
		sub		time, result2				; time -= year2 * 366
		mov		const, 0xFFFFFFFF
		and		const, year					; clear non required year bits
		or		struct1, const				; store year to date structure
		mov		const, 4294967296
		sub		year, -2147483648
		cmp		year, const					; if year doesn't fit into sint32_t
		jae		.error						; then go to error branch
;---[Check for leap year]------------------
		mov		const, 1					; const = 1
		lea		result1, [days1 + 12 * 8]	; result1 = days1 + 12
		lea		result2, [days2 + 12 * 8]	; result2 = days2 + 12
		and		year1, 0x3					; year1 &= 0x3
		cmovnz	year1, const				; if (year1), then year1 = 1
		test	year2, 0x3					; if (year2 & 0x3)
		cmovnz	ptr, result1				;     then ptr = days1
		cmovz	ptr, result2				;     else ptr = days2
		xor		const, const				; const = 0
		cmp		year2, year1				; if (year2 >= year1)
		cmovae	year1, const				;     then year1 = 0
		cmovb	ptr, result1				;     else year1 = 1; ptr = days1
		sub		time, year1					; time -= year1
;---[Extracting month and day]-------------
		mov		month, 13					; month = 13
;---[Loop]---------------------------------
@@:		sub		ptr, 8						; ptr--
		sub		month, 1					; month--
		cmp		time, [ptr]
		jb		@b							; do while (time < ptr[0])
;---[End of loop]--------------------------
		sub		time, [ptr]					; time -= ptr[0]
		shl		month, 32
		or		struct1, month				; store month to date structure
		add		time, 1						; time++
		shl		time, 40
		or		struct1, time				; store day to date structure
		mov		result1, struct1
		mov		result2, struct2			; return date structure
		ret
;---[Error branch]-------------------------
.error:	xor		result1, result1
		xor		result2, result2			; return {0,0,0,0,0,0,0} (error value)
		ret

;******************************************************************************;
;       Week day extraction                                                    ;
;******************************************************************************;
WeekDay:
;---[Parameters]---------------------------
time	equ		rdi							; time value
;---[Internal variables]-------------------
result	equ		rax							; temporary variable #1
temp	equ		rdx							; temporary variable #2
const	equ		rsi							; temporary register to hold constants
;------------------------------------------
		mov		result, TIME_ERROR
		cmp		time, result				; if (time == TIME_ERROR)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		result, 345600				; result = 345600
		mov		temp, 9223372036854806400
		test	time, time					; if (time < 0)
		cmovs	result, temp				;     result = 9223372036854806400
		add		result, time				; result += time
		mov		temp, 0xC22E450672894AB7
		mul		temp
		shr		temp, 16
		mov		result, temp				; result /= 86400
		mov		time, temp					; time = result
		mov		temp, 0x2492492492492493
		mul		temp
		mov		result, time				; result = time
		sub		time, temp
		shr		time, 1
		add		time, temp
		shr		time, 2						; time = result / 7
		add		result, time
		shl		time, 3
		sub		result, time				; result = result % 7
		ret
;---[Error branch]-------------------------
.error:	mov		result, 7					; return 7 (error value)
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
this	equ		rdi							; pointer to time zone object
time	equ		rsi							; UTC time
;---[Internal variables]-------------------
result	equ		rax							; result register
temp	equ		rdx							; temporary register
csize	equ		r8							; count of time change records
csizel	equ		r8d							; low part of csize
zsize	equ		r9							; count of time zone records
zsizel	equ		r9d							; low part of zsize
left	equ		rcx							; pointer to start of the time changes array
right	equ		csize						; pointer to end of the time changes array
median	equ		result						; pointer to median element of the time changes array
index	equ		left						; index value
index_of	= CHNG_SIZE * 8					; offset of index array inside time_zone
zone_of		= index_of + CHNG_SIZE			; offset of zone array inside time_zone
csize_of	= zone_of + ZONE_SIZE * 4		; offset of change_size variable inside time_zone
zsize_of	= csize_of + 4					; offset of zone_size variable inside time_zone
;------------------------------------------
		mov		temp, TIME_ERROR
		cmp		time, temp					; if (time == TIME_ERROR)
		je		.error						;     then go to error branch
		mov		zsizel, [this + zsize_of]	; zsize = this -> zone_size
		mov		csizel, [this + csize_of]	; csize = this -> change_size
		test	zsize, zsize				; if (zsize = 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		test	csize, csize				; if (csize == 0)
		jz		.skip						;     then go to skip branch
		cmp		time, [this]				; if (time < (this -> change[0]))
		jl		.skip						;     then go to skip branch
		xor		left, left					; left = 0
		cmp		csize, 1					; if (csize == 1)
		je		@f							;     then skip binary search loop
;---[Binary search loop]-------------------
.loop:	lea		median, [left + right]
		shr		median, 1					; median = (left + right) / 2
		cmp		time, [this + median * 8]	; if (time >= (this -> change[median]))
		cmovge	left, median				;     then left = median
		cmovl	right, median				;     else right = median
		lea		temp, [left + 1]
		cmp		right, temp
		ja		.loop						; do while (right > left + 1)
;---[End of loop]--------------------------
@@:		movzx	index, byte [this + index_of + left]
		cmp		index, zsize				; if (index >= zsize)
		jae		.error						;     then go to error branch
		movsxd	result, dword [this + zone_of + index * 4]
		add		result, time				; return time + this -> zone[index];
		ret
;---[Skip branch]--------------------------
.skip:	movsxd	result, dword [this + zone_of]
		add		result, time				; return time + this -> zone[0];
		ret
;---[Error branch]-------------------------
.error:	mov		result, TIME_ERROR			; return TIME_ERROR
		ret

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

align 16
days1		dq	0,31,59,90,120,151,181,212,243,273,304,334	; regular year
days2		dq	0,31,60,91,121,152,182,213,244,274,305,335	; leap year

align 16
max1		dq	31,28,31,30,31,30,31,31,30,31,30,31			; regular year
max2		dq	31,29,31,30,31,30,31,31,30,31,30,31			; leap year

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
