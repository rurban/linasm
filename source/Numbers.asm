;                                                                    Numbers.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                        NUMBERS CONVERSION FUNCTIONS                         #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################
extrn	'Math_Scale2_flt64'		as	Scale2
extrn	'Math_Scale10_flt64'	as	Scale10

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Binary numbers conversion                                              ;
;******************************************************************************;

; Unsigned integer types
public	BinToNum_int8		as	'Numbers_BinToNum_uint8'
public	BinToNum_int16		as	'Numbers_BinToNum_uint16'
public	BinToNum_int32		as	'Numbers_BinToNum_uint32'
public	BinToNum_int64		as	'Numbers_BinToNum_uint64'
public	BinToNum_int8		as	'_ZN7Numbers8BinToNumEPhPKc'
public	BinToNum_int16		as	'_ZN7Numbers8BinToNumEPtPKc'
public	BinToNum_int32		as	'_ZN7Numbers8BinToNumEPjPKc'
public	BinToNum_int64		as	'_ZN7Numbers8BinToNumEPyPKc'

; Signed integer types
public	BinToNum_int8		as	'Numbers_BinToNum_sint8'
public	BinToNum_int16		as	'Numbers_BinToNum_sint16'
public	BinToNum_int32		as	'Numbers_BinToNum_sint32'
public	BinToNum_int64		as	'Numbers_BinToNum_sint64'
public	BinToNum_int8		as	'_ZN7Numbers8BinToNumEPaPKc'
public	BinToNum_int16		as	'_ZN7Numbers8BinToNumEPsPKc'
public	BinToNum_int32		as	'_ZN7Numbers8BinToNumEPiPKc'
public	BinToNum_int64		as	'_ZN7Numbers8BinToNumEPxPKc'

; Other types
public	BinToNum_int64		as	'Numbers_BinToNum_size'
public	BinToNum_int64		as	'_ZN7Numbers8BinToNumEPmPKc'

;******************************************************************************;
;       Octal numbers conversion                                               ;
;******************************************************************************;

; Unsigned integer types
public	OctToNum_int8		as	'Numbers_OctToNum_uint8'
public	OctToNum_int16		as	'Numbers_OctToNum_uint16'
public	OctToNum_int32		as	'Numbers_OctToNum_uint32'
public	OctToNum_int64		as	'Numbers_OctToNum_uint64'
public	OctToNum_int8		as	'_ZN7Numbers8OctToNumEPhPKc'
public	OctToNum_int16		as	'_ZN7Numbers8OctToNumEPtPKc'
public	OctToNum_int32		as	'_ZN7Numbers8OctToNumEPjPKc'
public	OctToNum_int64		as	'_ZN7Numbers8OctToNumEPyPKc'

; Signed integer types
public	OctToNum_int8		as	'Numbers_OctToNum_sint8'
public	OctToNum_int16		as	'Numbers_OctToNum_sint16'
public	OctToNum_int32		as	'Numbers_OctToNum_sint32'
public	OctToNum_int64		as	'Numbers_OctToNum_sint64'
public	OctToNum_int8		as	'_ZN7Numbers8OctToNumEPaPKc'
public	OctToNum_int16		as	'_ZN7Numbers8OctToNumEPsPKc'
public	OctToNum_int32		as	'_ZN7Numbers8OctToNumEPiPKc'
public	OctToNum_int64		as	'_ZN7Numbers8OctToNumEPxPKc'

; Other types
public	OctToNum_int64		as	'Numbers_OctToNum_size'
public	OctToNum_int64		as	'_ZN7Numbers8OctToNumEPmPKc'

;******************************************************************************;
;       Hexadecimal numbers conversion                                         ;
;******************************************************************************;

; Unsigned integer types
public	HexToNum_int8		as	'Numbers_HexToNum_uint8'
public	HexToNum_int16		as	'Numbers_HexToNum_uint16'
public	HexToNum_int32		as	'Numbers_HexToNum_uint32'
public	HexToNum_int64		as	'Numbers_HexToNum_uint64'
public	HexToNum_int8		as	'_ZN7Numbers8HexToNumEPhPKc'
public	HexToNum_int16		as	'_ZN7Numbers8HexToNumEPtPKc'
public	HexToNum_int32		as	'_ZN7Numbers8HexToNumEPjPKc'
public	HexToNum_int64		as	'_ZN7Numbers8HexToNumEPyPKc'

; Signed integer types
public	HexToNum_int8		as	'Numbers_HexToNum_sint8'
public	HexToNum_int16		as	'Numbers_HexToNum_sint16'
public	HexToNum_int32		as	'Numbers_HexToNum_sint32'
public	HexToNum_int64		as	'Numbers_HexToNum_sint64'
public	HexToNum_int8		as	'_ZN7Numbers8HexToNumEPaPKc'
public	HexToNum_int16		as	'_ZN7Numbers8HexToNumEPsPKc'
public	HexToNum_int32		as	'_ZN7Numbers8HexToNumEPiPKc'
public	HexToNum_int64		as	'_ZN7Numbers8HexToNumEPxPKc'

; Floating-point types
public	HexToNum_flt32		as	'Numbers_HexToNum_flt32'
public	HexToNum_flt64		as	'Numbers_HexToNum_flt64'
public	HexToNum_flt32		as	'_ZN7Numbers8HexToNumEPfPKc'
public	HexToNum_flt64		as	'_ZN7Numbers8HexToNumEPdPKc'

; Other types
public	HexToNum_int64		as	'Numbers_HexToNum_size'
public	HexToNum_int64		as	'_ZN7Numbers8HexToNumEPmPKc'

;******************************************************************************;
;       Decimal numbers conversion                                             ;
;******************************************************************************;

; Unsigned integer types
public	DecToNum_uint8		as	'Numbers_DecToNum_uint8'
public	DecToNum_uint16		as	'Numbers_DecToNum_uint16'
public	DecToNum_uint32		as	'Numbers_DecToNum_uint32'
public	DecToNum_uint64		as	'Numbers_DecToNum_uint64'
public	DecToNum_uint8		as	'_ZN7Numbers8DecToNumEPhPKc'
public	DecToNum_uint16		as	'_ZN7Numbers8DecToNumEPtPKc'
public	DecToNum_uint32		as	'_ZN7Numbers8DecToNumEPjPKc'
public	DecToNum_uint64		as	'_ZN7Numbers8DecToNumEPyPKc'

; Signed integer types
public	DecToNum_sint8		as	'Numbers_DecToNum_sint8'
public	DecToNum_sint16		as	'Numbers_DecToNum_sint16'
public	DecToNum_sint32		as	'Numbers_DecToNum_sint32'
public	DecToNum_sint64		as	'Numbers_DecToNum_sint64'
public	DecToNum_sint8		as	'_ZN7Numbers8DecToNumEPaPKc'
public	DecToNum_sint16		as	'_ZN7Numbers8DecToNumEPsPKc'
public	DecToNum_sint32		as	'_ZN7Numbers8DecToNumEPiPKc'
public	DecToNum_sint64		as	'_ZN7Numbers8DecToNumEPxPKc'

; Floating-point types
public	DecToNum_flt32		as	'Numbers_DecToNum_flt32'
public	DecToNum_flt64		as	'Numbers_DecToNum_flt64'
public	DecToNum_flt32		as	'_ZN7Numbers8DecToNumEPfPKc'
public	DecToNum_flt64		as	'_ZN7Numbers8DecToNumEPdPKc'

; Other types
public	DecToNum_uint64		as	'Numbers_DecToNum_size'
public	DecToNum_uint64		as	'_ZN7Numbers8DecToNumEPmPKc'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Skip white symbols macro                                               ;
;******************************************************************************;
macro	SKIP_WHITE
{
local	.loop
		lea		ptr, [string - 1]			; ptr = string - 1
;---[Skipping loop]------------------------
.loop:	add		ptr, 1						; ptr++
		movzx	temp, byte [ptr]			; temp = ptr[0]
		cmp		temp, ' '
		je		.loop
		sub		temp, 0x9
		cmp		temp, 0x4
		jbe		.loop						; do while (ptr[0] == ' ' || '\t' <= ptr[0] <= '\r')
;---[End of loop]--------------------------
		cmp		temp, -9					; if (ptr[0] == 0)
		je		.nonum						; then go to not found branch
}

;******************************************************************************;
;       Skip prefix macro                                                      ;
;******************************************************************************;
macro	SKIP_PREFIX	value
{
		cmp		[ptr], byte '0'				; if (ptr[0] == '0')
		jne		@f							; {
		movzx	temp, byte [ptr + 1]		;     if (ToLowerCase (ptr[1]) == value)
		or		temp, 0x20					;     {
		cmp		temp, value					;         ptr += 2
		jne		@f							;     }
		add		ptr, 2						; }
@@:
}

;******************************************************************************;
;       Skip number sign macro                                                 ;
;******************************************************************************;
macro	SKIP_SIGN
{
		cmp		temp, 0x22
		jne		@f							; if (ptr[0] == '+')
		add		ptr, 1						;     ptr++
@@:
}

;******************************************************************************;
;       Read number sign macro                                                 ;
;******************************************************************************;
macro	READ_SIGN	const
{
local	.nosgn
;------------------------------------------
		xor		sign, sign					; sign = 0
		cmp		temp, const					; if (ptr[0] != '+')
		je		@f							; {
		cmp		temp, const + 2				;     if (ptr[0] == '-')
		jne		.nosgn						;         sign = -1
		sub		sign, 1						; }
@@:		add		ptr, 1						; ptr+++
.nosgn:
}

;******************************************************************************;
;       Skip decimal point macro                                               ;
;******************************************************************************;
macro	SKIP_POINT
{
		add		exp, ptr					; exp = ptr - exp (count of read digits)
		cmp		byte [ptr], '.'				; if (ptr[0] != '.')
		jne		.cnvrt						;     then go to convert section
		add		ptr, 1						; ptr++
}

;******************************************************************************;
;       Read decimal digits macro                                              ;
;******************************************************************************;
macro	READ_DEC_DIGITS
{
local	.loop, .start
;------------------------------------------
		jmp		.start
;---[Parsing loop]-------------------------
.loop:	cmp		value, max					; if (value < max)
		jae		@f							; {
		add		digits, 1					;     digits++
		lea		value, [value + value * 4]	;     value = temp + value * 10
		lea		value, [temp + value * 2]	; }
@@:		add		ptr, 1						; ptr++
.start:	movzx	temp, byte [ptr]
		sub		temp, '0'					; temp = ptr[0] - '0'
		cmp		temp, 9
		jbe		.loop						; do while (temp <= 9)
;---[End of loop]--------------------------
}

;******************************************************************************;
;       Read hexadecimal digits macro                                          ;
;******************************************************************************;
macro	READ_HEX_DIGITS
{
local	.loop, .start, .shift
;------------------------------------------
		jmp		.start
;---[Parsing loop]-------------------------
.loop:	add		temp, shift					; temp += shift
		cmp		value, max					; if (value < max)
		jae		@f							; {
		add		digits, 1					;     digits++
		shl		value, 4					;     value = temp + value * 16
		add		value, temp					; }
@@:		add		ptr, 1						; ptr++
.start:	movzx	temp, byte [ptr]			; temp = ptr[0]
		or		temp, 0x20					; convert temp to lower case
		mov		symbol, '0'					; symbol = '0'
		mov		range, 9					; range = 9
		xor		shift, shift				; shift = 0
		cmp		temp, 'a'					; if (temp >= 'a')
		cmovae	symbol, [h_symb]			;     symbol = hex_symbol
		cmovae	range, [h_range]			;     range = hex_range
		cmovae	shift, [h_shift]			;     shift = hex_shift
		sub		temp, symbol				; temp -= symbol
		cmp		temp, range
		jbe		.loop						; do while (temp <= range)
;---[End of loop]--------------------------
}

;******************************************************************************;
;       Read mantissa value macro                                              ;
;******************************************************************************;
macro	GET_MANTISSA	digit, hex
{
		mov		exp, ptr					; exp = ptr
		xor		value, value				; value = 0
		mov		max, 1 shl 53				; max = 1 << 53 (max value of mantissa)
		xor		digits, digits				; digits = 0
		neg		exp							; exp = -ptr
		digit								; parse integer part of mantissa
		SKIP_POINT							; skip decimal point symbol
		digit								; parse fraction part of mantissa
.cnvrt:	test	digits, digits				; if no digits are found
		jz		.spcl						;     then check for special values
		add		value, sign
		sub		exp, digits					; exp -= digits (scale factor for mantissa)
		xor		value, sign					; apply sign to the number value (hacker's trick)
	cvtsi2sd	mant, value					; mantissa = value
if hex
		shl		exp, 2						; correct exponent value
end if
}

;******************************************************************************;
;       Read exponent value macro                                              ;
;******************************************************************************;
macro	GET_EXP	char
{
local	.loop, .exit
;---[Skipping exponent prefix]-------------
		movzx	temp, byte [ptr]			; temp = ptr[0]
		or		temp, 0x20					; convert char to lower case
		cmp		temp, char					; if exponent symbol is not found
		jne		.exit						;     then go to exit from the macro
		mov		[s_ptr], ptr				; copy ptr to stack
;---[Reading number sign]------------------
		add		ptr, 1						; ptr++
		movzx	temp, byte [ptr]			; temp = ptr[0] (exponent sign)
	READ_SIGN	'+'
;---[Getting number digits]----------------
		xor		value, value				; value = 0
		movzx	temp, byte [ptr]
		sub		temp, '0'					; temp = ptr[0] - '0'
		cmp		temp, 9						; if (temp != [0..9])
		cmova	ptr, [s_ptr]				;     then restore ptr from stack
		ja		.exit						;     and exit from the macro
;---[Digits parsing loop]------------------
.loop:	add		ptr, 1						; ptr++
		lea		value, [value + value * 4]	; value *= 5
		lea		value, [temp + value * 2]	; value = temp + value * 10
		cmp		value, 1 shl 16				; if (value >= (1 << 16)), then exp overflow
		jae		.ovrfl						;     go to overflow branch
		movzx	temp, byte [ptr]
		sub		temp, '0'					; temp = ptr[0] - '0'
		cmp		temp, 9
		jbe		.loop						; do while (temp <= 9)
;---[Normal exit branch]-------------------
		add		value, sign					; apply sign to the number value
		xor		value, sign					; (hacker's trick)
		add		exp, value					; exp += value
.exit:
}

;******************************************************************************;
;       Scaling mantissa value macro                                           ;
;******************************************************************************;
macro	SCALE	Func, x
{
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		param1, exp
		mov		fptr, Func
		call	fptr						; call Func (mantis)
if x eq s
	cvtsd2ss	mant, mant					; convert double to float if required
end if
		mov		pnum, [s_num]				; get "pnum" variable from the stack
		mov		string, [s_str]				; get "string" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		movs#x	[pnum], mant				; pnum[0] = mantissa
		sub		ptr, string					; ptr -= string
}

;******************************************************************************;
;       Parsing special values macro                                           ;
;******************************************************************************;
macro	CHECK_SPECIAL	spec
{
.spcl:	cmp		byte [ptr + 0], 0			; check the buffer for end of string
		je		.nonum
		cmp		byte [ptr + 1], 0
		je		.nonum
		cmp		byte [ptr + 2], 0
		je		.nonum
		mov		str, [ptr]					; read buffer content to string
		and		str, 0x00FFFFFF				; remove unrequired char that was read
		or		str, 0x00202020				; convert string to lower case
		lea		tptr, [nanval]				; set pointer to nan array
		mov		spec, [tptr + sign * bytes + bytes]
		cmp		str, 'nan'					; if (str == 'nan')
		je		@f							;     then skip following code
		lea		tptr, [infval]				; set pointer to inf array
		mov		spec, [tptr + sign * bytes + bytes]
		cmp		str, 'inf'					; if (str != 'inf')
		jne		.nonum						;     then go to exit
@@:		add		ptr, 3						; ptr += 3
		mov		[pnum], spec				; pnum[0] = spec
		sub		ptr, string					; ptr -= string
}

;******************************************************************************;
;       Binary numbers conversion                                              ;
;******************************************************************************;
macro	BIN_TO_NUM	part, max_value
{
;---[Parameters]---------------------------
pnum	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
value	equ		rdx							; number value
temp	equ		rcx							; temporary register
max		equ		r11							; max value
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Skip bin prefix if found]-------------
		SKIP_PREFIX	'b'
;---[Getting number digits]----------------
		mov		max, max_value				; max = max_value
		xor		value, value				; value = 0
		movzx	temp, byte [ptr]
		sub		temp, '0'					; temp = ptr[0] - '0'
		cmp		temp, 1						; if (temp != [0..1])
		ja		.nonum						;     then go to no number branch
;---[Digits parsing loop]------------------
.loop:	cmp		value, max					; if (value >= max)
		jae		.ovrfl						;     then go to overflow branch
		add		ptr, 1						; ptr++
		lea		value, [temp + value * 2]	; value = temp + value * 2
		movzx	temp, byte [ptr]
		sub		temp, '0'					; temp = ptr[0] - '0'
		cmp		temp, 1
		jbe		.loop						; do while (temp <= 1)
;---[Normal exit branch]-------------------
		mov		[pnum], part				; pnum[0] = value
		sub		ptr, string					; return ptr - string
		ret
;---[Overflow exit branch]-----------------
.ovrfl:	xor		ptr, ptr					; return 0
		ret
;---[No number exit branch]----------------
.nonum:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
}

; Integer types
BinToNum_int8:	BIN_TO_NUM	dl, 0x80
BinToNum_int16:	BIN_TO_NUM	dx, 0x8000
BinToNum_int32:	BIN_TO_NUM	edx, 0x80000000
BinToNum_int64:	BIN_TO_NUM	rdx, 0x8000000000000000

;******************************************************************************;
;       Octal numbers conversion                                               ;
;******************************************************************************;
macro	OCT_TO_NUM	part, max_value
{
;---[Parameters]---------------------------
pnum	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
value	equ		rdx							; number value
temp	equ		rcx							; temporary register
max		equ		r11							; max value
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Getting number digits]----------------
		mov		max, max_value				; max = max_value
		xor		value, value				; value = 0
		movzx	temp, byte [ptr]
		sub		temp, '0'					; temp = ptr[0] - '0'
		cmp		temp, 7						; if (temp != [0..7])
		ja		.nonum						;     then go to no number branch
;---[Digits parsing loop]------------------
.loop:	cmp		value, max					; if (value >= max)
		jae		.ovrfl						;     then go to overflow branch
		add		ptr, 1						; ptr++
		lea		value, [temp + value * 8]	; value = temp + value * 8
		movzx	temp, byte [ptr]
		sub		temp, '0'					; temp = ptr[0] - '0'
		cmp		temp, 7
		jbe		.loop						; do while (temp <= 7)
;---[Normal exit branch]-------------------
		mov		[pnum], part				; pnum[0] = value
		sub		ptr, string					; return ptr - string
		ret
;---[Overflow exit branch]-----------------
.ovrfl:	xor		ptr, ptr					; return 0
		ret
;---[No number exit branch]----------------
.nonum:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
}

; Integer types
OctToNum_int8:	OCT_TO_NUM	dl, 0x20
OctToNum_int16:	OCT_TO_NUM	dx, 0x2000
OctToNum_int32:	OCT_TO_NUM	edx, 0x20000000
OctToNum_int64:	OCT_TO_NUM	rdx, 0x2000000000000000

;******************************************************************************;
;       Hexadecimal numbers conversion                                         ;
;******************************************************************************;
macro	HEX_TO_NUM	part, max_value
{
;---[Parameters]---------------------------
pnum	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
value	equ		rdx							; number value
temp	equ		rcx							; temporary register
symbol	equ		r8							; first symbol
range	equ		r9							; range of digits
shift	equ		r10							; shift value
max		equ		r11							; max value
stack	equ		rsp							; stack pointer
h_symb	equ		stack - 3 * 8				; stack position of "hex_symbol" variable
h_range	equ		stack - 2 * 8				; stack position of "hex_range" variable
h_shift	equ		stack - 1 * 8				; stack position of "hex_shift" variable
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Skip hex prefix if found]-------------
		SKIP_PREFIX	'x'
;---[Getting number digits]----------------
		mov		qword [h_symb], 'a'			; load hex symbol value
		mov		qword [h_range], 5			; load hex range value
		mov		qword [h_shift], 10			; load hex shift value
		mov		max, max_value				; max = max_value
		xor		value, value				; value = 0
		movzx	temp, byte [ptr]			; temp = ptr[0]
		or		temp, 0x20					; convert char to lower case
		mov		symbol, '0'					; symbol = '0'
		mov		range, 9					; range = 9
		xor		shift, shift				; shift = 0
		cmp		temp, 'a'					; if (temp >= 'a')
		cmovae	symbol, [h_symb]			;     symbol = hex_symbol
		cmovae	range, [h_range]			;     range = hex_range
		cmovae	shift, [h_shift]			;     shift = hex_shift
		sub		temp, symbol				; temp -= symbol
		cmp		temp, range					; if (temp > range)
		ja		.nonum						;     then go to no number branch
;---[Digits parsing loop]------------------
.loop:	add		temp, shift					; temp += shift
		cmp		value, max					; if (value >= max)
		jae		.ovrfl						;     then go to overflow branch
		add		ptr, 1						; ptr++
		shl		value, 4
		add		value, temp					; value = temp + value * 16
		movzx	temp, byte [ptr]			; temp = ptr[0]
		or		temp, 0x20					; convert temp to lower case
		mov		symbol, '0'					; symbol = '0'
		mov		range, 9					; range = 9
		xor		shift, shift				; shift = 0
		cmp		temp, 'a'					; if (temp >= 'a')
		cmovae	symbol, [h_symb]			;     symbol = hex_symbol
		cmovae	range, [h_range]			;     range = hex_range
		cmovae	shift, [h_shift]			;     shift = hex_shift
		sub		temp, symbol				; temp -= symbol
		cmp		temp, range
		jbe		.loop						; do while (temp <= range)
;---[Normal exit branch]-------------------
		mov		[pnum], part				; pnum[0] = value
		sub		ptr, string					; return ptr - string
		ret
;---[Overflow exit branch]-----------------
.ovrfl:	xor		ptr, ptr					; return 0
		ret
;---[No number exit branch]----------------
.nonum:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FLOAT_TO_NUM	spec, x, dec_variant
{
;---[Parameters]---------------------------
pnum	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
ptr		equ		rax							; temporary pointer to string
str		equ		ecx
temp	equ		rcx							; temporary value
value	equ		rdx							; value of the number
digits	equ		r8							; count of digits that number has
sign	equ		r9							; number sign
exp		equ		r10							; number exponent
max		equ		r11							; max value that mantissa can hold
symbol	equ		r12							; first symbol
range	equ		r13							; range of digits
shift	equ		r14							; shift value
tptr	equ		digits						; temporary pointer
mant	equ		xmm0						; mantissa value
base	equ		xmm1						; base of numeral system
stack	equ		rsp							; stack pointer
s_symb	equ		stack + 0 * 8				; stack position of "symbol" variable
s_range	equ		stack + 1 * 8				; stack position of "range" variable
s_shift	equ		stack + 2 * 8				; stack position of "shift" variable
s_num	equ		stack + 3 * 8				; stack position of "pnum" variable
s_str	equ		stack + 4 * 8				; stack position of "string" variable
s_ptr	equ		stack + 5 * 8				; stack position of "ptr" variable
h_symb	equ		stack + 6 * 8				; stack position of "hex_symbol" variable
h_range	equ		stack + 7 * 8				; stack position of "hex_range" variable
h_shift	equ		stack + 8 * 8				; stack position of "hex_shift" variable
if x eq s
infval	= inf_flt32							; inf values array
nanval	= nan_flt32							; nan values array
bytes	= 4
else if x eq d
infval	= inf_flt64							; inf values array
nanval	= nan_flt64							; nan values array
bytes	= 8
end if
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_symb], symbol			; save old value of "symbol" into the stack
		mov		[s_range], range			; save old value of "range" into the stack
		mov		[s_shift], shift			; save old value of "shift" into the stack
		mov		[s_num], pnum				; save "pnum" variable into the stack
		mov		[s_str], string				; save "string" variable into the stack
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Reading number sign]------------------
		READ_SIGN	0x22
;---[Reading number value]-----------------
		mov		qword [h_symb], 'a'			; load hex symbol value
		mov		qword [h_range], 5			; load hex range value
		mov		qword [h_shift], 10			; load hex shift value
if dec_variant
		GET_MANTISSA	READ_DEC_DIGITS, 0
		GET_EXP			'e'
		SCALE			Scale10, x
else
		SKIP_PREFIX		'x'
		GET_MANTISSA	READ_HEX_DIGITS, 1
		GET_EXP			'p'
		SCALE			Scale2, x
end if
		mov		symbol, [s_symb]			; get old value of "symbol" from the stack
		mov		range, [s_range]			; get old value of "range" from the stack
		mov		shift, [s_shift]			; get old value of "shift" from the stack
		add		stack, space				; restoring back the stack pointer
		ret
;---[Special values branch]----------------
		CHECK_SPECIAL	spec
		mov		symbol, [s_symb]			; get old value of "symbol" from the stack
		mov		range, [s_range]			; get old value of "range" from the stack
		mov		shift, [s_shift]			; get old value of "shift" from the stack
		add		stack, space				; restoring back the stack pointer
		ret
;---[Overflow exit branch]-----------------
.ovrfl:	xor		ptr, ptr					; return 0
		mov		symbol, [s_symb]			; get old value of "symbol" from the stack
		mov		range, [s_range]			; get old value of "range" from the stack
		mov		shift, [s_shift]			; get old value of "shift" from the stack
		add		stack, space				; restoring back the stack pointer
		ret
;---[No number exit branch]----------------
.nonum:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		mov		symbol, [s_symb]			; get old value of "symbol" from the stack
		mov		range, [s_range]			; get old value of "range" from the stack
		mov		shift, [s_shift]			; get old value of "shift" from the stack
		add		stack, space				; restoring back the stack pointer
		ret
}

; Integer types
HexToNum_int8:	HEX_TO_NUM	dl, 0x10
HexToNum_int16:	HEX_TO_NUM	dx, 0x1000
HexToNum_int32:	HEX_TO_NUM	edx, 0x10000000
HexToNum_int64:	HEX_TO_NUM	rdx, 0x1000000000000000

; Floating-point types
HexToNum_flt32:	FLOAT_TO_NUM	edx, s, 0
HexToNum_flt64:	FLOAT_TO_NUM	rdx, d, 0

;******************************************************************************;
;       Decimal numbers conversion                                             ;
;******************************************************************************;
macro	DEC_TO_NUM_UINT	part, max_value, scale
{
;---[Parameters]---------------------------
pnum	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
value	equ		rdx							; register which holds number value
temp	equ		rcx							; temporary register
limit	equ		r8							; max number value
max		equ		r11							; max value
bytes	= 1 shl scale						; size of signed integer type
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Reading number sign]------------------
		SKIP_SIGN
;---[Getting number digits]----------------
		mov		max, max_value				; max = max_value
		xor		value, value				; value = 0
		movzx	temp, byte [ptr]
		sub		temp, '0'					; temp = ptr[0] - '0'
		cmp		temp, 9						; if (temp != [0..9])
		ja		.nonum						;     then go to no number branch
;---[Digits parsing loop]------------------
.loop:	cmp		value, max					; if (value >= max)
		jae		.ovrfl						;     then go to overflow branch
		add		ptr, 1						; ptr++
		lea		value, [value + value * 4]	; value *= 5
		shl		value, 1					; value *= 2
		add		value, temp					; value += temp
		jc		.ovrfl						; if overflow, then go to overflow branch
		movzx	temp, byte [ptr]
		sub		temp, '0'					; temp = ptr[0] - '0'
		cmp		temp, 9
		jbe		.loop						; do while (temp <= 9)
;---[Normal exit branch]-------------------
if scale <> 3
		mov		limit, 1 shl (bytes * 8)
		cmp		value, limit				; if (value > limit)
		jae		.ovrfl						;     then go to overflow branch
end if
		mov		[pnum], part				; pnum[0] = value
		sub		ptr, string					; return ptr - string
		ret
;---[Overflow exit branch]-----------------
.ovrfl:	xor		ptr, ptr					; return 0
		ret
;---[No number exit branch]----------------
.nonum:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	DEC_TO_NUM_SINT	part, max_value, scale
{
;---[Parameters]---------------------------
pnum	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
value	equ		rdx							; register which holds number value
temp	equ		rcx							; temporary register
limit	equ		r8							; max number value
sign	equ		r9							; number sign
max		equ		r11							; max value
bytes	= 1 shl scale						; size of signed integer type
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Reading number sign]------------------
		READ_SIGN	0x22
;---[Getting number digits]----------------
		mov		limit, (1 shl (bytes * 8 - 1)) - 1
		mov		max, max_value				; max = max_value
		xor		value, value				; value = 0
		sub		limit, sign					; correct limit according to sign
		movzx	temp, byte [ptr]
		sub		temp, '0'					; temp = ptr[0] - '0'
		cmp		temp, 9						; if (temp != [0..9])
		ja		.nonum						;     then go to no number branch
;---[Digits parsing loop]------------------
.loop:	cmp		value, max					; if (value >= max)
		jae		.ovrfl						;     then go to overflow branch
		add		ptr, 1						; ptr++
		lea		value, [value + value * 4]
		lea		value, [temp + value * 2]	; value = temp + value * 10
		cmp		value, limit				; if (value > limit)
		ja		.ovrfl						;     then go to overflow branch
		movzx	temp, byte [ptr]
		sub		temp, '0'					; temp = ptr[0] - '0'
		cmp		temp, 9
		jbe		.loop						; do while (temp <= 9)
;---[Normal exit branch]-------------------
		add		value, sign					; apply sign to the number value
		xor		value, sign					; (hacker's trick)
		mov		[pnum], part				; pnum[0] = value
		sub		ptr, string					; return ptr - string
		ret
;---[Overflow exit branch]-----------------
.ovrfl:	xor		ptr, ptr					; return 0
		ret
;---[No number exit branch]----------------
.nonum:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
}

; Unsigned integer types
DecToNum_uint8:		DEC_TO_NUM_UINT	dl, 26, 0
DecToNum_uint16:	DEC_TO_NUM_UINT	dx, 6554, 1
DecToNum_uint32:	DEC_TO_NUM_UINT	edx, 429496730, 2
DecToNum_uint64:	DEC_TO_NUM_UINT	rdx, 1844674407370955162, 3

; Signed integer types
DecToNum_sint8:		DEC_TO_NUM_SINT	dl, 13, 0
DecToNum_sint16:	DEC_TO_NUM_SINT	dx, 3277, 1
DecToNum_sint32:	DEC_TO_NUM_SINT	edx, 214748365, 2
DecToNum_sint64:	DEC_TO_NUM_SINT	rdx, 922337203685477581, 3

; Floating-point types
DecToNum_flt32:		FLOAT_TO_NUM	edx, s, 1
DecToNum_flt64:		FLOAT_TO_NUM	rdx, d, 1

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

; flt32_t
inf_flt32	dd	MINF_FLT32, PINF_FLT32						; -Inf, +Inf
nan_flt32	dd	MNAN_FLT32, PNAN_FLT32						; -NaN, +NaN

; flt64_t
inf_flt64	dq	MINF_FLT64, PINF_FLT64						; -Inf, +Inf
nan_flt64	dq	MNAN_FLT64, PNAN_FLT64						; -NaN, +NaN

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
