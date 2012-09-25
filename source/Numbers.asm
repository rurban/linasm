;                                                                    Numbers.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                        NUMBERS CONVERSION FUNCTIONS                         #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2012, Jack Black #
;###############################################################################
format	ELF64

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
;       Consts                                                                 ;
;******************************************************************************;
NOT_FOUND	= -1							; Number is not found

;******************************************************************************;
;       Skip white symbols macro                                               ;
;******************************************************************************;
macro	SKIP_WHITE
{
local	.loop
		lea		ptr, [string - 1]			; ptr = string -1
;---[Skipping loop]------------------------
.loop:	add		ptr, 1						; ptr++
		mov		char, [ptr]					; char = ptr[0]
		cmp		char, ' '
		je		.loop
		sub		char, 0x9
		cmp		char, 0x4
		jbe		.loop						; do while (ptr[0] == ' ' || '\t' <= ptr[0] <= '\r')
;---[End of loop]--------------------------
		cmp		char, -9					; if (ptr[0] == 0)
		je		.nonum						; then go to not found branch
}

;******************************************************************************;
;       Skip prefix macro                                                      ;
;******************************************************************************;
macro	SKIP_PREFIX	value
{
		cmp		[ptr], byte '0'				; if (ptr[0] == '0')
		jne		@f							; {
		mov		char, [ptr + 1]				;     if (ToLowerCase (ptr[1]) == value)
		or		char, 0x20					;     {
		cmp		char, value					;         ptr += 2
		jne		@f							;     }
		add		ptr, 2						; }
@@:
}

;******************************************************************************;
;       Skip number sign macro                                                 ;
;******************************************************************************;
macro	SKIP_SIGN
{
		cmp		char, 0x22
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
		xor		sign, sign					; sign = 0
		cmp		char, const					; if (ptr[0] != '+')
		je		@f							; {
		cmp		char, const + 2				;     if (ptr[0] == '-')
		jne		.nosgn						;         sign = -1
		sub		sign, 1						; }
@@:		add		ptr, 1						; ptr+++
.nosgn:
}

;******************************************************************************;
;       Skip decimal point macro                                               ;
;******************************************************************************;
macro	SKIP_POINT	value
{
		add		exp, ptr					; exp = ptr - exp (count of read digits)
		cmp		char, value					; if (char != '.')
		jne		.cnvrt						; then go to convert section
		add		ptr, 1						; ptr++
}

;******************************************************************************;
;       Read decimal digits macro                                              ;
;******************************************************************************;
macro	READ_DEC_DIGITS
{
local	.loop, .start
		jmp		.start
;---[Parsing loop]-------------------------
.loop:	cmp		value, max					; if (value < max)
		jae		@f							; {
		lea		value, [value + value * 4]	;     value = temp + value * 10
		add		digits, 1					;     digits++
		lea		value, [temp + value * 2]	; }
@@:		add		ptr, 1						; ptr++
.start:	mov		char, [ptr]
		sub		char, '0'					; temp = ptr[0] - '0'
		cmp		char, 9
		jbe		.loop						; do while (temp <= 9)
;---[End of loop]--------------------------
}

;******************************************************************************;
;       Read hexadecimal digits macro                                          ;
;******************************************************************************;
macro	READ_HEX_DIGITS
{
local	.loop, .start, .shift
		jmp		.start
;---[Parsing loop]-------------------------
.shift:	add		char, 10					; char += 10
.loop:	cmp		value, max					; if (value < max)
		jae		@f							; {
		shl		value, 4					;     value = temp + value * 16
		add		digits, 1					;     digits++
		add		value, temp					; }
@@:		add		ptr, 1						; ptr++
.start:	mov		char, [ptr]					; char = ptr[0]
		or		char, 0x20					; convert char to lower case
		sub		char, '0'					; temp -= '0'
		cmp		char, 9
		jbe		.loop						; if (temp <= 9), then digits is found
		sub		char, 49					; temp -= 'a'
		cmp		char, 5
		jbe		.shift						; if (temp <= 'f'). then alfa is found
;---[End of loop]--------------------------
}

;******************************************************************************;
;       Read mantissa value macro                                              ;
;******************************************************************************;
macro	GET_MANTISSA	digit, point
{
		xor		temp, temp					; temp = 0
		mov		exp, ptr					; exp = ptr
		xor		value, value				; value = 0
		mov		max, 1 shl 53				; max = 1 << 53 (max value of mantissa)
		xor		digits, digits				; digits = 0
		neg		exp							; exp = -ptr
		digit								; Parse integer part of mantissa
	SKIP_POINT	point						; Skip decimal point symbol
		digit								; Parse fraction part of mantissa
.cnvrt:	test	digits, digits				; if no digits are found
		jz		.spcl						;     then check for special values
		add		value, sign
		sub		exp, digits					; exp -= digits (scale factor for mantissa)
		xor		value, sign					; apply sign to the number value (hacker's trick)
	cvtsi2sd	mant, value					; mantissa = value
}

;******************************************************************************;
;       Read exponent value macro                                              ;
;******************************************************************************;
macro	GET_EXP	symbol
{
local	.loop, .exit
;---[Skipping exponent prefix]-------------
		mov		char, [ptr]					; char = ptr[0]
		or		char, 0x20					; convert char to lower case
		cmp		char, symbol				; if exponent symbo is not found
		jne		.exit						;     then go to exit from the macro
		mov		[s_ptr], ptr				; copy ptr to stack
;---[Reading number sign]------------------
		add		ptr, 1						; ptr++
		mov		char, [ptr]					; char = ptr[0] (exponent sign)
	READ_SIGN	'+'
;---[Getting number digits]----------------
		xor		value, value				; value = 0
		mov		char, [ptr]
		sub		char, '0'					; char = ptr[0] - '0'
		cmp		char, 9						; if (char != [0..9])
		cmova	ptr, [s_ptr]				;     then restore ptr from stack
		ja		.exit						;     and exit from the macro
;---[Digits parsing loop]------------------
.loop:	shl		value, 1					; value *= 2
		add		ptr, 1						; ptr++
		lea		value, [value * 4 + value]	; value *= 5
		add		value, temp					; value += temp
		cmp		value, 1 shl 16				; if (value >= (1 << 16)), then exp overflow
		jae		.ovrfl						;     go to overflow branch
		mov		char, [ptr]
		sub		char, '0'					; char = ptr[0] - '0'
		cmp		char, 9
		jbe		.loop						; do while (char <= 9)
;---[Normal exit branch]-------------------
		add		value, sign					; apply sign to the number value
		xor		value, sign					; (hacker's trick)
		add		exp, value					; exp += value
.exit:
}

;******************************************************************************;
;       Scaling mantissa value macro                                           ;
;******************************************************************************;
macro	SCALE	func, x
{
;---[Internal variables]-------------------
power	equ		rdi							; scale power
stack	equ		rsp							; stack pointer
s_num	equ		stack +  0 * 8				; stack position of array variable
s_ptr	equ		stack +  1 * 8				; stack position of size variable
s_str	equ		stack +  2 * 8				; stack position of left variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_num], p_num				; save "p_num" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_str], string				; save "string" variable into the stack
		mov		power, exp
		call	func						; call Scale (mantis)
		mov		p_num, [s_num]				; get "p_num" variable from the stack
		mov		ptr, [s_ptr]				; get "p_num" variable from the stack
		mov		string, [s_str]				; get "p_num" variable from the stack
		add		stack, space				; restoring back the stack pointer
if x eq s
	cvtsd2ss	mant, mant					; convert double to float if required
end if
		movs#x	[p_num], mant				; p_num[0] = mantissa
		sub		ptr, string					; return ptr - string
		ret
}

;******************************************************************************;
;       Parsing special values macro                                           ;
;******************************************************************************;
macro	CHECK_SPECIAL	spec
{
.spcl:	xor		str, str					; Next lines read input text string
		mov		char, [ptr + 0]				; char by char in "str" array
		test	char, char					; and check "str" value for special
		jz		.nonum						; text values: NaN and INF
		shl		str, 8						; If special values are detected,
		mov		char, [ptr + 1]				; then set floating-point result
		test	char, char					; according to them
		jz		.nonum
		shl		str, 8
		mov		char, [ptr + 2]
		test	char, char
		jz		.nonum
		or		str, 0x00202020				; convert string to lower case
		cmp		str, 'nan'					; nan (Little endian string value)
		mov		spec, [nan + sign * bytes + bytes]
		je		@f
		cmp		str, 'fni'					; inf (Little endian string value)
		mov		spec, [inf + sign * bytes + bytes]
		jne		.nonum
@@:		add		ptr, 3
		mov		[p_num], spec				; p_num[0] = spec
		sub		ptr, string					; return ptr - string
		ret
}

;******************************************************************************;
;       Binary numbers conversion                                              ;
;******************************************************************************;
macro	BIN_TO_NUM	part, max_value
{
;---[Parameters]---------------------------
p_num	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
value	equ		rdx							; number value
temp	equ		rcx							; temporary register
char	equ		cl							; character
max		equ		r10							; max value
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Skip bin prefix if found]-------------
		SKIP_PREFIX	'b'
;---[Getting number digits]----------------
		mov		max, max_value				; max = max_value
		xor		temp, temp					; temp = 0
		xor		value, value				; value = 0
		mov		char, [ptr]
		sub		char, '0'					; char = ptr[0] - '0'
		cmp		char, 1						; if (char != [0..1])
		ja		.nonum						;     then go to no number branch
;---[Digits parsing loop]------------------
.loop:	cmp		value, max					; if (value >= max)
		jae		.ovrfl						;     then go to overflow branch
		add		ptr, 1						; ptr++
		lea		value, [temp + value * 2]	; value = temp + value * 2
		mov		char, [ptr]
		sub		char, '0'					; char = ptr[0] - '0'
		cmp		char, 1
		jbe		.loop						; do while (char <= 1)
;---[Normal exit branch]-------------------
		mov		[p_num], part				; p_num[0] = value
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
p_num	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
value	equ		rdx							; number value
temp	equ		rcx							; temporary register
char	equ		cl							; character
max		equ		r10							; max value
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Getting number digits]----------------
		mov		max, max_value				; max = max_value
		xor		temp, temp					; temp = 0
		xor		value, value				; value = 0
		mov		char, [ptr]
		sub		char, '0'					; char = ptr[0] - '0'
		cmp		char, 7						; if (char != [0..7])
		ja		.nonum						;     then go to no number branch
;---[Digits parsing loop]------------------
.loop:	cmp		value, max					; if (value >= max)
		jae		.ovrfl						;     then go to overflow branch
		add		ptr, 1						; ptr++
		lea		value, [temp + value * 8]	; value = temp + value * 8
		mov		char, [ptr]
		sub		char, '0'					; char = ptr[0] - '0'
		cmp		char, 7
		jbe		.loop						; do while (char <= 7)
;---[Normal exit branch]-------------------
		mov		[p_num], part				; p_num[0] = value
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
macro	HEX_TO_NUM	value, temp, max, max_value
{
;---[Parameters]---------------------------
p_num	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
char	equ		cl							; character
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Skip hex prefix if found]-------------
		SKIP_PREFIX	'x'
;---[Getting number digits]----------------
		mov		max, max_value				; max = max_value
		xor		temp, temp					; temp = 0
		xor		value, value				; value = 0
		mov		char, [ptr]					; char = ptr[0]
		or		char, 0x20					; convert char to lower case
		sub		char, '0'					; char -= '0'
		cmp		char, 9						; if (char == [0..9])
		jbe		.loop						;     then digit is found
		sub		char, 49					; char -= 'a'
		cmp		char, 5						; if (char != [a..f])
		ja		.nonum						;     then go to no number branch
;---[Digits parsing loop]------------------
.shift:	add		char, 10					; char += 10
.loop:	cmp		value, max					; if (value >= max)
		jae		.ovrfl						;     then go to overflow branch
		shl		value, 4					; value *= 16
		add		ptr, 1						; ptr++
		add		value, temp					; value += temp
		mov		char, [ptr]					; char = ptr[0]
		or		char, 0x20					; convert char to lower case
		sub		char, '0'					; char -= '0'
		cmp		char, 9						; if (char == [0..9])
		jbe		.loop						;     then digit is found
		sub		char, 49					; char -= 'a'
		cmp		char, 5						; if (char == [a..f])
		jbe		.shift						;     then alfa is found
;---[Normal exit branch]-------------------
		mov		[p_num], value				; p_num[0] = value
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
p_num	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
char	equ		cl							; character
str		equ		ecx
temp	equ		rcx							; temporary value
value	equ		rdx							; value of the number
digits	equ		r8							; count of digits that number has
sign	equ		r9							; number sign
max		equ		r10							; max value that mantissa can hold
exp		equ		r11							; number exponent
mant	equ		xmm0						; mantissa value
base	equ		xmm1						; base of numeral system
s_ptr	equ		rsp - 1 * 8					; stack position of ptr
if x eq s
inf		= inf_flt32
nan		= nan_flt32
bytes	= 4
else
inf		= inf_flt64
nan		= nan_flt64
bytes	= 8
end if
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Reading number sign]------------------
		READ_SIGN	0x22
;---[Reading number value]-----------------
if dec_variant
		GET_MANTISSA	READ_DEC_DIGITS, -2
		GET_EXP			'e'
		SCALE			Scale10, x
else
		SKIP_PREFIX		'x'
		GET_MANTISSA	READ_HEX_DIGITS, -51
		GET_EXP			'p'
		SCALE			Scale2, x
end if
;---[Special values branch]----------------
		CHECK_SPECIAL	spec
;---[Overflow exit branch]-----------------
.ovrfl:	xor		ptr, ptr					; return 0
		ret
;---[No number exit branch]----------------
.nonum:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
}

; Integer types
HexToNum_int8:	HEX_TO_NUM	dl, cl, r10b, 16
HexToNum_int16:	HEX_TO_NUM	dx, cx, r10w, 0x1000
HexToNum_int32:	HEX_TO_NUM	edx, ecx, r10d, 0x10000000
HexToNum_int64:	HEX_TO_NUM	rdx, rcx, r10, 0x1000000000000000

; Floating-point types
HexToNum_flt32:	FLOAT_TO_NUM	edx, s, 0
HexToNum_flt64:	FLOAT_TO_NUM	rdx, d, 0

;******************************************************************************;
;       Decimal numbers conversion                                             ;
;******************************************************************************;
macro	DEC_TO_NUM_UINT	value, temp, max, max_value
{
;---[Parameters]---------------------------
p_num	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
val		equ		rdx							; register that holds number value
char	equ		cl							; character
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Reading number sign]------------------
		SKIP_SIGN
;---[Getting number digits]----------------
		mov		max, max_value				; max = max_value
		xor		temp, temp					; temp = 0
		xor		val, val					; value = 0
		mov		char, [ptr]
		sub		char, '0'					; char = ptr[0] - '0'
		cmp		char, 9						; if (char != [0..9])
		ja		.nonum						;     then go to no number branch
;---[Digits parsing loop]------------------
.loop:	cmp		value, max					; if (value >= max)
		jae		.ovrfl						;     then go to overflow branch
		shl		value, 1					; value *= 2
		add		ptr, 1						; ptr++
		lea		val, [val * 4 + val]		; value *= 5
		add		value, temp					; value += temp
		jc		.ovrfl						; if overfrol, then go to overflow branch
		mov		char, [ptr]
		sub		char, '0'					; char = ptr[0] - '0'
		cmp		char, 9
		jbe		.loop						; do while (char <= 9)
;---[Normal exit branch]-------------------
		mov		[p_num], value				; p_num[0] = value
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
p_num	equ		rdi							; pointer to number
string	equ		rsi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
value	equ		rdx							; register that holds number value
temp	equ		rcx							; temporary register
char	equ		cl							; character
limit	equ		r8							; max number value
sign	equ		r9							; number sign
max		equ		r10							; max value
bytes	= 1 shl scale						; size of signed integer type
;---[Skipping white-symbols]---------------
		SKIP_WHITE
;---[Reading number sign]------------------
		READ_SIGN	0x22
;---[Getting number digits]----------------
		mov		limit, (1 shl (bytes * 8 - 1)) - 1
		mov		max, max_value				; max = max_value
		xor		temp, temp					; temp = 0
		xor		value, value				; value = 0
		sub		limit, sign					; correct limit according to sign
		mov		char, [ptr]
		sub		char, '0'					; char = ptr[0] - '0'
		cmp		char, 9						; if (char != [0..9])
		ja		.nonum						;     then go to no number branch
;---[Digits parsing loop]------------------
.loop:	cmp		value, max					; if (value >= max)
		jae		.ovrfl						;     then go to overflow branch
		lea		value, [value + value * 4]
		add		ptr, 1						; ptr++
		lea		value, [temp + value * 2]	; value = temp + value * 10
		cmp		value, limit				; if (value > limit)
		ja		.ovrfl						;     then go to overflow branch
		mov		char, [ptr]
		sub		char, '0'					; char = ptr[0] - '0'
		cmp		char, 9
		jbe		.loop						; do while (char <= 9)
;---[Normal exit branch]-------------------
		add		value, sign					; apply sign to the number value
		xor		value, sign					; (hacker's trick)
		mov		[p_num], part				; p_num[0] = value
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
DecToNum_uint8:		DEC_TO_NUM_UINT	dl, cl, r10b, 26
DecToNum_uint16:	DEC_TO_NUM_UINT	dx, cx, r10w, 6554
DecToNum_uint32:	DEC_TO_NUM_UINT	edx, ecx, r10d, 429496730
DecToNum_uint64:	DEC_TO_NUM_UINT	rdx, rcx, r10, 1844674407370955162

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
inf_flt32	dd	0xFF800000, 0x7F800000						; -inf, +inf
nan_flt32	dd	0xFFC00000, 0x7FC00000						; -nan, +nan

; flt64_t
inf_flt64	dq	0xFFF0000000000000, 0x7FF0000000000000		; -inf, +inf
nan_flt64	dq	0xFFF8000000000000, 0x7FF8000000000000		; -nan, +nan

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
