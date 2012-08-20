;                                                                       Math.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                             FAST MATH FUNCTIONS                             #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2012, Jack Black #
;###############################################################################
format	ELF64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Byte swap                                                              ;
;******************************************************************************;

; Unsigned integer types
public	ByteSwap16		as	'_ZN4Math8ByteSwapEt'
public	ByteSwap32		as	'_ZN4Math8ByteSwapEj'
public	ByteSwap64		as	'_ZN4Math8ByteSwapEy'

; Signed integer types
public	ByteSwap16		as	'_ZN4Math8ByteSwapEs'
public	ByteSwap32		as	'_ZN4Math8ByteSwapEi'
public	ByteSwap64		as	'_ZN4Math8ByteSwapEx'

;******************************************************************************;
;       Absolute value                                                         ;
;******************************************************************************;

; Signed integer types
public	Abs_sint8		as	'_ZN4Math3AbsEa'
public	Abs_sint16		as	'_ZN4Math3AbsEs'
public	Abs_sint32		as	'_ZN4Math3AbsEi'
public	Abs_sint64		as	'_ZN4Math3AbsEx'

; Floating-point types
public	Abs_flt32		as	'_ZN4Math3AbsEf'
public	Abs_flt64		as	'_ZN4Math3AbsEd'

;******************************************************************************;
;       Negative absolute value                                                ;
;******************************************************************************;

; Signed integer types
public	NegAbs_sint8	as	'_ZN4Math6NegAbsEa'
public	NegAbs_sint16	as	'_ZN4Math6NegAbsEs'
public	NegAbs_sint32	as	'_ZN4Math6NegAbsEi'
public	NegAbs_sint64	as	'_ZN4Math6NegAbsEx'

; Floating-point types
public	NegAbs_flt32	as	'_ZN4Math6NegAbsEf'
public	NegAbs_flt64	as	'_ZN4Math6NegAbsEd'

;******************************************************************************;
;       Number sign                                                            ;
;******************************************************************************;

; Signed integer types
public	Sign_sint8		as	'_ZN4Math4SignEa'
public	Sign_sint16		as	'_ZN4Math4SignEs'
public	Sign_sint32		as	'_ZN4Math4SignEi'
public	Sign_sint64		as	'_ZN4Math4SignEx'

; Floating-point types
public	Sign_flt32		as	'_ZN4Math4SignEf'
public	Sign_flt64		as	'_ZN4Math4SignEd'

;******************************************************************************;
;       Square root                                                            ;
;******************************************************************************;

; Unsigned integer types
public	Sqrt_uint8		as	'_ZN4Math4SqrtEh'
public	Sqrt_uint16		as	'_ZN4Math4SqrtEt'
public	Sqrt_uint32		as	'_ZN4Math4SqrtEj'
public	Sqrt_uint64		as	'_ZN4Math4SqrtEy'

; Floating-point types
public	Sqrt_flt32		as	'_ZN4Math4SqrtEf'
public	Sqrt_flt64		as	'_ZN4Math4SqrtEd'

;******************************************************************************;
;       Hypotenuse                                                             ;
;******************************************************************************;
public	Hypot_flt32		as	'_ZN4Math5HypotEff'
public	Hypot_flt64		as	'_ZN4Math5HypotEdd'

;******************************************************************************;
;       Minimum value                                                          ;
;******************************************************************************;

; Unsigned integer types
public	Min_uint8		as	'_ZN4Math3MinEhh'
public	Min_uint16		as	'_ZN4Math3MinEtt'
public	Min_uint32		as	'_ZN4Math3MinEjj'
public	Min_uint64		as	'_ZN4Math3MinEyy'

; Signed integer types
public	Min_sint8		as	'_ZN4Math3MinEaa'
public	Min_sint16		as	'_ZN4Math3MinEss'
public	Min_sint32		as	'_ZN4Math3MinEii'
public	Min_sint64		as	'_ZN4Math3MinExx'

; Floating-point types
public	Min_flt32		as	'_ZN4Math3MinEff'
public	Min_flt64		as	'_ZN4Math3MinEdd'

; Other types
public	Min_uint64		as	'_ZN4Math3MinEmm'

;******************************************************************************;
;       Maximum value                                                          ;
;******************************************************************************;

; Unsigned integer types
public	Max_uint8		as	'_ZN4Math3MaxEhh'
public	Max_uint16		as	'_ZN4Math3MaxEtt'
public	Max_uint32		as	'_ZN4Math3MaxEjj'
public	Max_uint64		as	'_ZN4Math3MaxEyy'

; Signed integer types
public	Max_sint8		as	'_ZN4Math3MaxEaa'
public	Max_sint16		as	'_ZN4Math3MaxEss'
public	Max_sint32		as	'_ZN4Math3MaxEii'
public	Max_sint64		as	'_ZN4Math3MaxExx'

; Floating-point types
public	Max_flt32		as	'_ZN4Math3MaxEff'
public	Max_flt64		as	'_ZN4Math3MaxEdd'

; Other types
public	Max_uint64		as	'_ZN4Math3MaxEmm'

;******************************************************************************;
;       Exponentiation functions                                               ;
;******************************************************************************;

; Power of 2
public	Exp2_int		as	'_ZN4Math4Exp2Eh'
public	Exp2_flt32		as	'_ZN4Math4Exp2Ea'
public	Exp2_flt64		as	'_ZN4Math4Exp2Es'

; Power of 10
public	Exp10_int		as	'_ZN4Math5Exp10Eh'
public	Exp10_flt32		as	'_ZN4Math5Exp10Ea'
public	Exp10_flt64		as	'_ZN4Math5Exp10Es'

; Power of E
public	ExpE_flt32		as	'_ZN4Math3ExpEa'
public	ExpE_flt64		as	'_ZN4Math3ExpEs'

;******************************************************************************;
;       Scale functions                                                        ;
;******************************************************************************;

; Scale by power of 2
public	Scale2_flt32	as	'_ZN4Math6Scale2Efs'
public	Scale2_flt64	as	'_ZN4Math6Scale2Eds'

; Scale by power of 10
public	Scale10_flt32	as	'_ZN4Math7Scale10Efs'
public	Scale10_flt64	as	'_ZN4Math7Scale10Eds'

; Scale by power of E
public	ScaleE_flt32	as	'_ZN4Math5ScaleEfs'
public	ScaleE_flt64	as	'_ZN4Math5ScaleEds'

;******************************************************************************;
;       Power                                                                  ;
;******************************************************************************;

; Unsigned integer types
public	Power_uint8		as	'_ZN4Math5PowerEhh'
public	Power_uint16	as	'_ZN4Math5PowerEth'
public	Power_uint32	as	'_ZN4Math5PowerEjh'
public	Power_uint64	as	'_ZN4Math5PowerEyh'

; Signed integer types
public	Power_sint8		as	'_ZN4Math5PowerEah'
public	Power_sint16	as	'_ZN4Math5PowerEsh'
public	Power_sint32	as	'_ZN4Math5PowerEih'
public	Power_sint64	as	'_ZN4Math5PowerExh'

; Floating-point types
public	Power_flt32		as	'_ZN4Math5PowerEfa'
public	Power_flt64		as	'_ZN4Math5PowerEds'

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

; Check for normal value
public	IsNorm_flt32	as	'_ZN4Math8IsNormalEf'
public	IsNorm_flt64	as	'_ZN4Math8IsNormalEd'

; Check for subnormal value
public	IsSub_flt32		as	'_ZN4Math11IsSubnormalEf'
public	IsSub_flt64		as	'_ZN4Math11IsSubnormalEd'

; Check for finite value
public	IsFin_flt32		as	'_ZN4Math8IsFiniteEf'
public	IsFin_flt64		as	'_ZN4Math8IsFiniteEd'

; Check for infinite value
public	IsInf_flt32		as	'_ZN4Math10IsInfiniteEf'
public	IsInf_flt64		as	'_ZN4Math10IsInfiniteEd'

; Check for NaN value
public	IsNaN_flt32		as	'_ZN4Math5IsNaNEf'
public	IsNaN_flt64		as	'_ZN4Math5IsNaNEd'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Byte swap                                                              ;
;******************************************************************************;
macro	BYTE_SWAP	result, value, scale
{
		mov		result, value
if scale > 1
		bswap	result
else
		xchg	al, ah
end if
		ret
}
ByteSwap16:	BYTE_SWAP	ax, di, 1
ByteSwap32:	BYTE_SWAP	eax, edi, 2
ByteSwap64:	BYTE_SWAP	rax, rdi, 3

;******************************************************************************;
;       Absolute value                                                         ;
;******************************************************************************;
macro	ABS_INT	temp, value, scale, negative
{
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		mov		temp, value					; temp = value
		sar		value, bytes * 8 - 1		; value >>= 8 * sizeof(x) - 1
if negative
		xor		value, temp					; value ^= temp
else
		xor		temp, value					; temp ^= value
end if
		sub		temp, value					; return (temp -= value)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ABS_FLT	cmd, value
{
		cmd		xmm0, dqword [value]
		ret
}

; Signed integer types
Abs_sint8:		ABS_INT		al, dil, 0, 0
Abs_sint16:		ABS_INT		ax, di, 1, 0
Abs_sint32:		ABS_INT		eax, edi, 2, 0
Abs_sint64:		ABS_INT		rax, rdi, 3, 0

; Floating-point types
Abs_flt32:		ABS_FLT		andps, data_mask_flt32
Abs_flt64:		ABS_FLT		andpd, data_mask_flt64

;******************************************************************************;
;       Negative absolute value                                                ;
;******************************************************************************;

; Signed integer types
NegAbs_sint8:	ABS_INT		al, dil, 0, 1
NegAbs_sint16:	ABS_INT		ax, di, 1, 1
NegAbs_sint32:	ABS_INT		eax, edi, 2, 1
NegAbs_sint64:	ABS_INT		rax, rdi, 3, 1

; Floating-point types
NegAbs_flt32:	ABS_FLT		orps, sign_mask_flt32
NegAbs_flt64:	ABS_FLT		orpd, sign_mask_flt64

;******************************************************************************;
;       Number sign                                                            ;
;******************************************************************************;
macro	SIGN_INT	value, temp
{
;---[Internal variables]-------------------
flag1	equ		al							; flag1 (set if value > 0)
flag2	equ		dil							; flag2 (set if value < 0)
;------------------------------------------
		xor		temp, temp					; temp = 0
		cmp		value, temp					; compare value with 0
		setg	flag1						; set flag1 if value > 0
		setl	flag2						; set flag2 if value < 0
		sub		flag1, flag2				; return (flag1 - flag2)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SIGN_FLT	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
;---[Internal variables]-------------------
if x eq s
zero	= zero_flt32						; 0.0
one		= one_flt32							; 1.0
sign	= sign_mask_flt32					; sign mask
else
zero	= zero_flt64						; 0.0
one		= one_flt64							; 1.0
sign	= sign_mask_flt64					; sign mask
end if
;------------------------------------------
		comis#x	value, [zero]				; compare value with 0
		jp		@f							; if (value == NAN || value == 0)
		je		@f							; then return value
		andp#x	value, dqword [sign]		; else
		orp#x	value, dqword [one]			; return sign (value)
@@:		ret
}

; Signed integer types
Sign_sint8:		SIGN_INT	dil, al
Sign_sint16:	SIGN_INT	di, ax
Sign_sint32:	SIGN_INT	edi, eax
Sign_sint64:	SIGN_INT	rdi, rax

; Floating-point types
Sign_flt32:		SIGN_FLT	s
Sign_flt64:		SIGN_FLT	d

;******************************************************************************;
;       Square root                                                            ;
;******************************************************************************;
macro	SQRT_INT	root, value, mask, temp, size
{
		xor		root, root					; root = 0
		mov		mask, 1 shl (size * 8 - 2)	; mask = 1 << (sizeof(value) - 2)
;---[Loop]---------------------------------
.loop:	mov		temp, root					; temp = root + mask
		add		temp, mask
		shr		root, 1						; root >>= 1
		cmp		value, temp					; if (value >= temp), then
		jb		@f
		add		root, mask					;     root += mask
		sub		value, temp					;     value -= temp
@@:		shr		mask, 2						; mask >>= 2
		jnz		.loop						; while (mask != 0)
;---[End of loop]--------------------------
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SQRT_FLT	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
;------------------------------------------
		sqrts#x	value, value				; ret sqrt (value)
		ret
}

; Unsigned integer types
Sqrt_uint8:		SQRT_INT	al, dil, cl, dl, 1
Sqrt_uint16:	SQRT_INT	ax, di, cx, dx, 2
Sqrt_uint32:	SQRT_INT	eax, edi, ecx, edx, 4
Sqrt_uint64:	SQRT_INT	rax, rdi, rcx, rdx, 8

; Floating-point types
Sqrt_flt32:		SQRT_FLT	s
Sqrt_flt64:		SQRT_FLT	d

;******************************************************************************;
;       Hypotenuse                                                             ;
;******************************************************************************;
macro	HYPOT	x
{
;---[Parameters]---------------------------
val1	equ		xmm0						; first value (usually x)
val2	equ		xmm1						; second value (usually y)
;---[Internal variables]-------------------
if x eq s
one		= one_flt32							; 1.0
sqrt2	= sqrt2_flt32						; sqrt (2)
dmask	= data_mask_flt32					; data mask
else
one		= one_flt64							; 1.0
sqrt2	= sqrt2_flt64						; sqrt (2)
dmask	= data_mask_flt64					; data mask
end if
;------------------------------------------
		andp#x	val1, dqword [dmask]		; val1 = Abs (val1)
		andp#x	val2, dqword [dmask]		; val2 = Abs (val2)
		comis#x	val1, val2					; compare val1 and val2
		jp		.nan						; if (val1 == NaN || val2 == NAN), then return NaN
		jz		.equal						; if (val1 == val2), then go to equal branch
		jb		.less						; if (val1 < val2), then go to less branch
;---[More branch]--------------------------
		divs#x	val2, val1					; val2 /= val1
		muls#x	val2, val2					; val2 = (val2 / val1)^2
		adds#x	val2, [one]					; val2 = 1 + (val2 / val1)^2
		sqrts#x	val2, val2					; val2 = sqrt (1 + (val2 / val1)^2)
		muls#x	val1, val2					; return val1 * sqrt (1 + (val2 / val1)^2)
		ret
;---[Less branch]--------------------------
.less:	divs#x	val1, val2					; val1 /= val2
		muls#x	val1, val1					; val1 = (val1 / val2)^2
		adds#x	val1, [one]					; val1 = 1 + (val1 / val2)^2
		sqrts#x	val1, val1					; val1 = sqrt (1 + (val1 / val2)^2)
		muls#x	val1, val2					; return val2 * sqrt (1 + (val1 / val2)^2)
		ret
;---[Equal branch]-------------------------
.equal:	muls#x	val1, [sqrt2]				; return val1 * sqrt (2)
		ret
;---[NaN branch]---------------------------
.nan:	movs#x	val1, [dmask]				; return NaN
		ret
}
Hypot_flt32:	HYPOT	s
Hypot_flt64:	HYPOT	d

;******************************************************************************;
;       Minimum value                                                          ;
;******************************************************************************;
macro	MINMAX_INT	value1, value2, c
{
;---[Internal variables]-------------------
v1_reg	equ		rdi							; register that holds value1
v2_reg	equ		rsi							; register that holds value2
res		equ		rax							; regiser that holds min/max value
;------------------------------------------
		cmp		value1, value2				; if (value1 cond value2)
		cmov#c	res, v1_reg					;     then res = value1
		cmovn#c	res, v2_reg					;     else res = value2
		ret									; return res
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MINMAX_FLT	cmd, x
{
;---[Parameters]---------------------------
value1	equ		xmm0						; first value
value2	equ		xmm1						; second value
;------------------------------------------
		comis#x	value1, value1
		jp		@f
		cmd#x	value1, value2
@@:		ret
}

; Unsigned integer types
Min_uint8:		MINMAX_INT	dil, sil, b
Min_uint16:		MINMAX_INT	di, si, b
Min_uint32:		MINMAX_INT	edi, esi, b
Min_uint64:		MINMAX_INT	rdi, rsi, b

; Signed integer types
Min_sint8:		MINMAX_INT	dil, sil, l
Min_sint16:		MINMAX_INT	di, si, l
Min_sint32:		MINMAX_INT	edi, esi, l
Min_sint64:		MINMAX_INT	rdi, rsi, l

; Floating-point types
Min_flt32:		MINMAX_FLT	mins, s
Min_flt64:		MINMAX_FLT	mins, d

;******************************************************************************;
;       Maximum value                                                          ;
;******************************************************************************;

; Unsigned integer types
Max_uint8:		MINMAX_INT	dil, sil, a
Max_uint16:		MINMAX_INT	di, si, a
Max_uint32:		MINMAX_INT	edi, esi, a
Max_uint64:		MINMAX_INT	rdi, rsi, a

; Signed integer types
Max_sint8:		MINMAX_INT	dil, sil, g
Max_sint16:		MINMAX_INT	di, si, g
Max_sint32:		MINMAX_INT	edi, esi, g
Max_sint64:		MINMAX_INT	rdi, rsi, g

; Floating-point types
Max_flt32:		MINMAX_FLT	maxs, s
Max_flt64:		MINMAX_FLT	maxs, d

;******************************************************************************;
;       Exponentiation functions                                               ;
;******************************************************************************;
macro	EXP_FLT	exp, sign, temp, base, x
{
;---[Internal variables]-------------------
res		equ		xmm0						; result register
val		equ		xmm1						; base value
signq	equ		rsi							; quad word reg that holds exp sign
if x eq s
index	equ		signq * 4 + 4				; index of element in base array
one		= one_flt32							; 1.0
shft	= 31								; shift value
else
index	equ		signq * 8 + 8				; index of element in base array
one		= one_flt64							; 1.0
shft	= 63								; shift value
end if
;---[Get abs value of exp]-----------------
		mov		sign, exp					; next 4 lines are hacker trick
		sar		sign, shft					; to get absolute value of exp
		xor		exp, sign
		sub		exp, sign					; exp = Abs (exp)
;---[Initialization of internal variables]-
		movsx	signq, sign					; sign = (exp < 0) ? (-1) : (0)
		movs#x	val, [base + index]			; load correct base using sign of exp
		mov		temp, [base + index]
		shr		exp, 1						; if (exp & 0x1 == 0)
		cmovnc	temp, [one]					;     temp = 1
if x eq s
		movd	res, temp					; res = temp
else
		movq	res, temp					; res = temp
end if
		jz		.skip						; if ((exp >>= 1) == 0), then skip loop
;---[Exponentiation loop]------------------
.loop:	muls#x	val, val					; val *= val
		shr		exp, 1						; exp >>= 1
		ja		.loop						; if (exp & 0x1 == 0 && exp != 0), then continue
		muls#x	res, val					; res *= val
		jnz		.loop						; do while (exp != 0)
;---[End of loop]--------------------------
.skip:	ret
}

;==============================================================================;
;       Power of 2                                                             ;
;==============================================================================;
Exp2_int:
;---[Parameters]---------------------------
exp		equ		dil							; exponent value
shift	equ		cl							; binary shift value
;---[Internal variables]-------------------
res		equ		rax							; result register
max		= 64								; max exponent value
;------------------------------------------
		cmp		exp, max					; if (exp >= max)
		jae		.ovfl						;     then go to overflow branch
		mov		res, 1						; res = 1
		mov		shift, exp					; shift = exp
		shl		res, shift					; return 1 << shift
		ret
;---[Overflow branch]----------------------
.ovfl:	xor		res, res					; return 0 (means result overflow)
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Exp2_flt32:
;---[Parameters]---------------------------
exp		equ		dil							; exponent value
;---[Internal variables]-------------------
res		equ		xmm0						; result register
mant	equ		eax							; mantisa of floating-point value
shift	equ		cl							; binary shift value
bias	= 127								; exponent bias of floating-point value
digits	= 23								; binary digits in mantissa
;------------------------------------------
		add		exp, bias					; exp += bias
		jle		.den						; if (exp <= 0), then go to subnormal branch
		movzx	mant, exp					; create binary representation of normal
		shl		mant, digits				; floating-point value of 2^exp
		movd	res, mant					; return 2^exp (normal value)
		ret
;---[Subnormal number branch]--------------
.den:	neg		exp							; exp = -exp
		mov		mant, 1 shl (digits - 1)	; create binary representation of subnormal
		mov		shift, exp					; floating-point value of 2^exp
		shr		mant, shift
		movd	res, mant					; return 2^exp (subnormal value)
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Exp2_flt64:
;---[Parameters]---------------------------
exp		equ		di							; exponent value
;---[Internal variables]-------------------
res		equ		xmm0						; result register
mant	equ		rax							; mantisa of floating-point value
temp	equ		ax							; temporary register
shift	equ		cx							; binary shift value
shiftl	equ		cl							; low part of shift register
bias	= 1023								; exponent bias of floating-point value
digits	= 52								; binary digits in mantissa
;------------------------------------------
		mov		temp, bias + 1				; temp = bias + 1
		cmp		exp, bias + 1				; if (exp > bias + 1)
		cmovg	exp, temp					;     exp = bias + 1
		add		exp, bias					; exp += bias
		jle		.den						; if (exp <= 0), then go to subnormal branch
		movzx	mant, exp					; create binary representation of normal
		shl		mant, digits				; floating-point value of 2^exp
		movq	res, mant					; return 2^exp (normal value)
		ret
;---[Subnormal number branch]--------------
.den:	neg		exp							; exp = -exp
		mov		temp, digits				; temp = digits
		cmp		exp, digits					; if (exp > digits)
		cmovg	exp, temp					;     exp = digits
		mov		mant, 1 shl (digits - 1)	; create binary representation of subnormal
		mov		shift, exp					; floating-point value of 2^exp
		shr		mant, shiftl
		movq	res, mant					; return 2^exp (subnormal value)
		ret

;==============================================================================;
;       Power of 10                                                            ;
;==============================================================================;
Exp10_int:
;---[Parameters]---------------------------
exp		equ		dil							; exponent value
index	equ		rdi							; index of ten power array
;---[Internal variables]-------------------
res		equ		rax							; result register
max		= 20								; max exponent value
;------------------------------------------
		cmp		exp, max					; if (exp >= max)
		jae		.ovfl						;     then go to overflow branch
		movzx	index, exp					; index = exp
		mov		res, [ten_pow + index * 8]	; return ten_pow [index]
		ret
;---[Overflow branch]----------------------
.ovfl:	xor		res, res					; return 0 (means result overflow)
		ret
Exp10_flt32:	EXP_FLT	dil, sil, eax, ten_flt32, s
Exp10_flt64:	EXP_FLT	di, si, rax, ten_flt64, d

;==============================================================================;
;       Power of E                                                             ;
;==============================================================================;
ExpE_flt32:	EXP_FLT	dil, sil, eax, exp_flt32, s
ExpE_flt64:	EXP_FLT	di, si, rax, exp_flt64, d

;******************************************************************************;
;       Scale functions                                                        ;
;******************************************************************************;
macro	SCALE	exp, sign, base, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to scale
;---[Internal variables]-------------------
val		equ		xmm1						; base value
signq	equ		rsi							; quad word reg that holds exp sign
if x eq s
index	equ		signq * 4 + 4				; index of element in base array
shft	= 31								; shift value
else
index	equ		signq * 8 + 8				; index of element in base array
shft	= 63								; shift value
end if
;---[Get abs value of exp]-----------------
		mov		sign, exp					; next 4 lines are hacker trick
		sar		sign, shft					; to get absolute value of exp
		xor		exp, sign
		sub		exp, sign					; exp = Abs (exp)
;---[Initialization of internal variables]-
		movsx	signq, sign					; sign = (exp < 0) ? (-1) : (0)
		movs#x	val, [base + index]			; load correct base using sign of exp
		shr		exp, 1
		jnc		@f							; if (exp & 0x1 == 1)
		muls#x	value, val					;     value *= val
@@:		jz		.skip						; if ((exp >>= 1) == 0), then skip loop
;---[Exponentiation loop]------------------
.loop:	muls#x	val, val					; val *= val
		shr		exp, 1						; exp >>= 1
		ja		.loop						; if (exp & 0x1 == 0 && exp != 0), then continue
		muls#x	value, val					; value *= val
		jnz		.loop						; do while (exp != 0)
;---[End of loop]--------------------------
.skip:	ret
}

; Scale by power of 2
Scale2_flt32:	SCALE	dil, sil, two_flt32, s
Scale2_flt64:	SCALE	di, si, two_flt64, d

; Scale by power of 10
Scale10_flt32:	SCALE	dil, sil, ten_flt32, s
Scale10_flt64:	SCALE	di, si, ten_flt64, d

; Scale by power of E
ScaleE_flt32:	SCALE	dil, sil, exp_flt32, s
ScaleE_flt64:	SCALE	di, si, exp_flt64, d

;******************************************************************************;
;       Power                                                                  ;
;******************************************************************************;
macro	POWER_UINT	base, pow, temp, temph
{
;---[Parameters]---------------------------
exp		equ		sil							; exponent value
powq	equ		rcx							; quad word register that holds result
;------------------------------------------
		test	base, base					; if (base == 0)
		jz		.ovfl						;     then return 0
		mov		pow, base					; pow = base
		shr		exp, 1						; if (exp & 0x1 == 0), then
		cmovnc	powq, [one]					;     pow = 1
		jz		.skip						; if ((exp >>= 1) == 0), then skip loop
;---[Exponentiation loop]------------------
.loop:	mov		temp, base					; temp = base
		mul		temp						; temp = base * base
		test	temph, temph				; if overflow is detected, then
		jnz		.ovfl						;     go to overflow branch
		mov		base, temp					; base = base * base
		shr		exp, 1						; exp >>= 1
		ja		.loop						; if (exp & 0x1 == 0 && exp != 0), then continue
		mul		pow							; temp = pow * base
		test	temph, temph				; if overflow is detected, then
		jnz		.ovfl						;     go to overflow branch
		mov		pow, temp					; pow = pow * base
		test	exp, exp
		jnz		.loop						; do while (exp != 0)
;---[End of loop]--------------------------
.skip:	mov		temp, pow					; return pow
		ret
;---[Overflow branch]----------------------
.ovfl:	xor		temp, temp					; return 0 (means result overflow)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	POWER_SINT	base, sign, pow, max, temp, temph, scale
{
;---[Parameters]---------------------------
exp		equ		sil							; exponent value
powq	equ		rcx							; quad word register that holds result
signq	equ		r8							; quad word register that base sign
;---[Internal variables]-------------------
shft	= (1 shl scale) * 8 - 1				; shift value
;------------------------------------------
		test	base, base					; if (base == 0)
		jz		.ovfl						;     then return 0
		mov		sign, base					; sign = base
		mov		max, 1 shl shft				; max value that can be represented
		sar		sign, shft					; next 3 lines are hacker trick
		xor		base, sign					; to get absolute value of base
		sub		base, sign					; base = Abs (base)
		mov		pow, base					; pow = base
		shr		exp, 1						; if (exp & 0x1 == 0), then
		cmovnc	powq, [one]					;     pow = 1
		cmovnc	signq, [zero_int]			;     sign = 0
		jz		.skip						; if ((exp >>= 1) == 0), then skip loop
;---[Exponentiation loop]------------------
.loop:	mov		temp, base					; temp = base
		mul		temp						; temp = base * base
		test	temph, temph				; if overflow is detected, then
		jnz		.ovfl						;     go to overflow branch
		mov		base, temp					; base = base * base
		shr		exp, 1						; exp >>= 1
		ja		.loop						; if (exp & 0x1 == 0 && exp != 0), then continue
		mul		pow							; temp = pow * base
		test	temph, temph				; if overflow is detected, then
		jnz		.ovfl						;     go to overflow branch
		cmp		temp, max					; if (temp > max)
		ja		.ovfl						;     go to overflow branch
		mov		pow, temp					; pow = pow * base }
		test	exp, exp
		jnz		.loop						; do while (exp != 0)
;---[End of loop]--------------------------
.skip:	xor		pow, sign
		sub		pow, sign					; corect result sign
		mov		temp, pow					; return pow
		ret
;---[Overflow branch]----------------------
.ovfl:	xor		temp, temp					; return 0 (means result overflow)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	POWER_FLT	exp, x
{
;---[Parameters]---------------------------
base	equ		xmm0						; power base
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary variable
if x eq s
zero	= zero_flt32						; 0.0
one		= one_flt32							; 1.0
nan		= data_mask_flt32					; NaN
else
zero	= zero_flt64						; 0.0
one		= one_flt64							; 1.0
nan		= data_mask_flt64					; NaN
end if
;------------------------------------------
		comis#x	base, [zero]				; if (base == 0)
		je		.zero						;     then go to zero base branch
		movs#x	temp, base					; temp = base
		cmp		exp, 0						; if (exp < 0)
		jge		@f							; {
		movs#x	temp, [one]					;     temp = 1 / base
		neg		exp							;     exp = -exp
		divs#x	temp, base					; }
@@:		shr		exp, 1						; exp >>= 1
		movs#x	base, temp					; base = temp
		jc		@f							; if (exp & 0x1 == 0)
		movs#x	base, [one]					;     base = 1
@@:		jz		.skip						; if (exp == 0), then skip loop
;---[Exponentiation loop]------------------
.loop:	muls#x	temp, temp					; temp *= temp
		shr		exp, 1						; exp >>= 1
		ja		.loop						; if (exp & 0x1 == 0 && exp != 0), then continue
		muls#x	base, temp					; base *= temp
		jnz		.loop						; do while (exp != 0)
;---[End of loop]--------------------------
.skip:	ret
;---[Zero base branch]---------------------
.zero:	test	exp, exp					; if (exp != 0)
		jz		@f							; then
		ret									;     return 0
@@:		movs#x	base, [nan]					; else
		ret									;     return NaN
}

; Unsigned integer types
Power_uint8:	POWER_UINT	dil, cl, al, ah
Power_uint16:	POWER_UINT	di, cx, ax, dx
Power_uint32:	POWER_UINT	edi, ecx, eax, edx
Power_uint64:	POWER_UINT	rdi, rcx, rax, rdx

; Signed integer types
Power_sint8:	POWER_SINT	dil, r8b, cl, r9b, al, ah, 0
Power_sint16:	POWER_SINT	di, r8w, cx, r9w, ax, dx, 1
Power_sint32:	POWER_SINT	edi, r8d, ecx, r9d, eax, edx, 2
Power_sint64:	POWER_SINT	rdi, r8, rcx, r9, rax, rdx, 3

; Floating-point types
Power_flt32:	POWER_FLT	dil, s
Power_flt64:	POWER_FLT	di, d

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;
macro	ISNORM	temp, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
res		equ		al							; result register
if x eq d
dmask	= data_mask_flt32					; data mask
norm	= norm_flt32						; min normal value
inf		= inf_flt32							; inf
else
dmask	= data_mask_flt64					; data mask
norm	= norm_flt64						; min normal value
inf		= inf_flt64							; inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		and		temp, [dmask]				; temp = Abs (temp)
		sub		temp, [norm]				; temp -= norm
		cmp		temp, [inf]					; if (temp < inf)
		setb	res							;     then return true
		ret									;     else return false
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ISSUB	temp, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
res		equ		al							; result register
if x eq d
dmask	= data_mask_flt32					; data mask
norm	= norm_flt32						; min normal value
else
dmask	= data_mask_flt64					; data mask
norm	= norm_flt64						; min normal value
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		and		temp, [dmask]				; temp = Abs (temp)
		cmp		temp, [norm]				; if (temp < norm)
		setb	res							;     then return true
		ret									;     else return false
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ISFIN	temp, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
res		equ		al							; result register
if x eq d
dmask	= data_mask_flt32					; data mask
inf		= inf_flt32							; inf
else
dmask	= data_mask_flt64					; data mask
inf		= inf_flt64							; inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		and		temp, [dmask]				; temp = Abs (temp)
		cmp		temp, [inf]					; if (temp < inf)
		setb	res							;     then return true
		ret									;     else return false
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ISINF	temp, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
res		equ		al							; result register
if x eq d
dmask	= data_mask_flt32					; data mask
inf		= inf_flt32							; inf
else
dmask	= data_mask_flt64					; data mask
inf		= inf_flt64							; inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		and		temp, [dmask]				; temp = Abs (temp)
		cmp		temp, [inf]					; if (temp == inf)
		sete	res							;     then return true
		ret									;     else return false
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ISNAN	temp, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
res		equ		al							; result register
if x eq d
dmask	= data_mask_flt32					; data mask
inf		= inf_flt32							; inf
else
dmask	= data_mask_flt64					; data mask
inf		= inf_flt64							; inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		and		temp, [dmask]				; temp = Abs (temp)
		cmp		temp, [inf]					; if (temp > inf)
		seta	res							;     then return true
		ret									;     else return false
}

; Check for normal value
IsNorm_flt32:	ISNORM	eax, d
IsNorm_flt64:	ISNORM	rax, q

; Check for subnormal value
IsSub_flt32:	ISSUB	eax, d
IsSub_flt64:	ISSUB	rax, q

; Check for finite value
IsFin_flt32:	ISFIN	eax, d
IsFin_flt64:	ISFIN	rax, q

; Check for infinite value
IsInf_flt32:	ISINF	eax, d
IsInf_flt64:	ISINF	rax, q

; Check for NaN value
IsNaN_flt32:	ISNAN	eax, d
IsNaN_flt64:	ISNAN	rax, q

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

; integer
zero_int			dq	0							; 0
one_int				dq	1							; 1
ten_pow				dq	1							; 10^0
					dq	10							; 10^1
					dq	100							; 10^2
					dq	1000						; 10^3
					dq	10000						; 10^4
					dq	100000						; 10^5
					dq	1000000						; 10^6
					dq	10000000					; 10^7
					dq	100000000					; 10^8
					dq	1000000000					; 10^9
					dq	10000000000					; 10^10
					dq	100000000000				; 10^11
					dq	1000000000000				; 10^12
					dq	10000000000000				; 10^13
					dq	100000000000000				; 10^14
					dq	1000000000000000			; 10^15
					dq	10000000000000000			; 10^16
					dq	100000000000000000			; 10^17
					dq	1000000000000000000			; 10^18
					dq	10000000000000000000		; 10^19

; flt64_t
sign_mask_flt64		dq	2 dup (0x8000000000000000)	; sign mask
data_mask_flt64		dq	2 dup (0x7FFFFFFFFFFFFFFF)	; data mask
zero_flt64			dq	2 dup (0x0000000000000000)	; 0.0
norm_flt64			dq	2 dup (0x0010000000000000)	; 2^−1022 (min normal value)
one_flt64			dq	2 dup (0x3FF0000000000000)	; 1.0
sqrt2_flt64			dq	2 dup (0x3FF6A09E667F3BCD)	; sqrt (2)
inf_flt64			dq	2 dup (0x7FF0000000000000)	; infinity
two_flt64			dq	0x3FE0000000000000, 0x4000000000000000	; 0.5, 2
ten_flt64			dq	0x3FB999999999999A, 0x4024000000000000	; 0.1, 10
exp_flt64			dq	0x3FD78B56362CEF38, 0x4005BF0A8B145769	; 1/e, e

; flt32_t
sign_mask_flt32		dd	4 dup (0x80000000)			; sign mask
data_mask_flt32		dd	4 dup (0x7FFFFFFF)			; data mask
zero_flt32			dd	4 dup (0x00000000)			; 0.0
norm_flt32			dd	4 dup (0x00800000)			; 2^−126 (min normal value)
one_flt32			dd	4 dup (0x3F800000)			; 1.0
sqrt2_flt32			dd	4 dup (0x3FB504F3)			; sqrt (2)
inf_flt32			dd	4 dup (0x7F800000)			; infinity
two_flt32			dd	0x3F000000, 0x40000000		; 0.5, 2
ten_flt32			dd	0x3DCCCCCD, 0x41200000		; 0.1, 10
exp_flt32			dd	0x3EBC5AB2, 0x402DF854		; 1/e, e

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
