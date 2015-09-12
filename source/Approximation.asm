;                                                              Approximation.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                 APPROXIMATION ALGORITHMS FOR EMPIRICAL DATA                 #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2015, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################

; Square root
extrn	'Math_Sqrt_flt32'			as	Sqrt_flt32
extrn	'Math_Sqrt_flt64'			as	Sqrt_flt64

; Square value
extrn	'Math_Sqr_flt32'			as	Sqr_flt32
extrn	'Math_Sqr_flt64'			as	Sqr_flt64

; Cube value
extrn	'Math_Cube_flt32'			as	Cube_flt32
extrn	'Math_Cube_flt64'			as	Cube_flt64

; Inverse value
extrn	'Math_InverseValue_flt32'	as	InverseValue_flt32
extrn	'Math_InverseValue_flt64'	as	InverseValue_flt64

; Inverse square value
extrn	'Math_InverseSquare_flt32'	as	InverseSquare_flt32
extrn	'Math_InverseSquare_flt64'	as	InverseSquare_flt64

; Inverse cube value
extrn	'Math_InverseCube_flt32'	as	InverseCube_flt32
extrn	'Math_InverseCube_flt64'	as	InverseCube_flt64

; Exponentiation by base E (natural logarithm)
extrn	'Math_Exp_flt32'			as	Exp_flt32
extrn	'Math_Exp_flt64'			as	Exp_flt64

; Logarithm to base E (natural logarithm)
extrn	'Math_Log_flt32'			as	Log_flt32
extrn	'Math_Log_flt64'			as	Log_flt64

; Hyperbolic sine
extrn	'Math_SinH_flt32'			as	SinH_flt32
extrn	'Math_SinH_flt64'			as	SinH_flt64

; Hyperbolic cosine
extrn	'Math_CosH_flt32'			as	CosH_flt32
extrn	'Math_CosH_flt64'			as	CosH_flt64

; Inverse hyperbolic
extrn	'Math_ArcSinH_flt32'		as	ArcSinH_flt32
extrn	'Math_ArcSinH_flt64'		as	ArcSinH_flt64

; Inverse hyperbolic
extrn	'Math_ArcCosH_flt32'		as	ArcCosH_flt32
extrn	'Math_ArcCosH_flt64'		as	ArcCosH_flt64

; Copying of vector
extrn	'Array_Copy_flt32'			as	Copy_flt32
extrn	'Array_Copy_flt64'			as	Copy_flt64

; Moving of vector
extrn	'Array_Move_flt32'			as	Move_flt32
extrn	'Array_Move_flt64'			as	Move_flt64

; Multiplication of vector
extrn	'Array_MulVector_flt32'		as	Mul_flt32
extrn	'Array_MulVector_flt64'		as	Mul_flt64

; Sum of elements
extrn	'Array_Sum_flt32'			as	Sum_flt32
extrn	'Array_Sum_flt64'			as	Sum_flt64

; Sum of multiplied elements
extrn	'Array_SumMul_flt32'		as	SumMul_flt32
extrn	'Array_SumMul_flt64'		as	SumMul_flt64

; Cholesky decomposition to lower triangular matrix
extrn	'Matrix_CholeskyLow_flt32'	as	Cholesky_flt32
extrn	'Matrix_CholeskyLow_flt64'	as	Cholesky_flt64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Approximation by power function                                        ;
;******************************************************************************;
public	ApproximationPower_flt32			as	'Approximation_Power_flt32'
public	ApproximationPower_flt64			as	'Approximation_Power_flt64'
public	ApproximationPower_flt32			as	'_ZN13Approximation5PowerEPfS0_S0_S0_S0_m'
public	ApproximationPower_flt64			as	'_ZN13Approximation5PowerEPdS0_S0_S0_S0_m'

;******************************************************************************;
;       Approximation by elementary functions                                  ;
;******************************************************************************;

; Linear approximation
public	ApproximationLinear_flt32			as	'Approximation_Linear_flt32'
public	ApproximationLinear_flt64			as	'Approximation_Linear_flt64'
public	ApproximationLinear_flt32			as	'_ZN13Approximation6LinearEPfS0_S0_S0_S0_m'
public	ApproximationLinear_flt64			as	'_ZN13Approximation6LinearEPdS0_S0_S0_S0_m'

; Square law approximation
public	ApproximationSquare_flt32			as	'Approximation_Square_flt32'
public	ApproximationSquare_flt64			as	'Approximation_Square_flt64'
public	ApproximationSquare_flt32			as	'_ZN13Approximation6SquareEPfS0_S0_S0_S0_m'
public	ApproximationSquare_flt64			as	'_ZN13Approximation6SquareEPdS0_S0_S0_S0_m'

; Cube law approximation
public	ApproximationCube_flt32				as	'Approximation_Cube_flt32'
public	ApproximationCube_flt64				as	'Approximation_Cube_flt64'
public	ApproximationCube_flt32				as	'_ZN13Approximation4CubeEPfS0_S0_S0_S0_m'
public	ApproximationCube_flt64				as	'_ZN13Approximation4CubeEPdS0_S0_S0_S0_m'

; Hyperbolic approximation
public	ApproximationHyperbolic_flt32		as	'Approximation_Hyperbolic_flt32'
public	ApproximationHyperbolic_flt64		as	'Approximation_Hyperbolic_flt64'
public	ApproximationHyperbolic_flt32		as	'_ZN13Approximation10HyperbolicEPfS0_S0_S0_S0_m'
public	ApproximationHyperbolic_flt64		as	'_ZN13Approximation10HyperbolicEPdS0_S0_S0_S0_m'

; Inverse square law approximation
public	ApproximationInverseSquare_flt32	as	'Approximation_InverseSquare_flt32'
public	ApproximationInverseSquare_flt64	as	'Approximation_InverseSquare_flt64'
public	ApproximationInverseSquare_flt32	as	'_ZN13Approximation13InverseSquareEPfS0_S0_S0_S0_m'
public	ApproximationInverseSquare_flt64	as	'_ZN13Approximation13InverseSquareEPdS0_S0_S0_S0_m'

; Inverse cube law approximation
public	ApproximationInverseCube_flt32		as	'Approximation_InverseCube_flt32'
public	ApproximationInverseCube_flt64		as	'Approximation_InverseCube_flt64'
public	ApproximationInverseCube_flt32		as	'_ZN13Approximation11InverseCubeEPfS0_S0_S0_S0_m'
public	ApproximationInverseCube_flt64		as	'_ZN13Approximation11InverseCubeEPdS0_S0_S0_S0_m'

; Square root approximation
public	ApproximationSqrt_flt32				as	'Approximation_Sqrt_flt32'
public	ApproximationSqrt_flt64				as	'Approximation_Sqrt_flt64'
public	ApproximationSqrt_flt32				as	'_ZN13Approximation4SqrtEPfS0_S0_S0_S0_m'
public	ApproximationSqrt_flt64				as	'_ZN13Approximation4SqrtEPdS0_S0_S0_S0_m'

; Exponential approximation
public	ApproximationExp_flt32				as	'Approximation_Exp_flt32'
public	ApproximationExp_flt64				as	'Approximation_Exp_flt64'
public	ApproximationExp_flt32				as	'_ZN13Approximation3ExpEPfS0_S0_S0_S0_m'
public	ApproximationExp_flt64				as	'_ZN13Approximation3ExpEPdS0_S0_S0_S0_m'

; Logarithmic approximation
public	ApproximationLog_flt32				as	'Approximation_Log_flt32'
public	ApproximationLog_flt64				as	'Approximation_Log_flt64'
public	ApproximationLog_flt32				as	'_ZN13Approximation3LogEPfS0_S0_S0_S0_m'
public	ApproximationLog_flt64				as	'_ZN13Approximation3LogEPdS0_S0_S0_S0_m'

; Hyperbolic sine approximation
public	ApproximationSinH_flt32				as	'Approximation_SinH_flt32'
public	ApproximationSinH_flt64				as	'Approximation_SinH_flt64'
public	ApproximationSinH_flt32				as	'_ZN13Approximation4SinHEPfS0_S0_S0_S0_m'
public	ApproximationSinH_flt64				as	'_ZN13Approximation4SinHEPdS0_S0_S0_S0_m'

; Hyperbolic cosine approximation
public	ApproximationCosH_flt32				as	'Approximation_CosH_flt32'
public	ApproximationCosH_flt64				as	'Approximation_CosH_flt64'
public	ApproximationCosH_flt32				as	'_ZN13Approximation4CosHEPfS0_S0_S0_S0_m'
public	ApproximationCosH_flt64				as	'_ZN13Approximation4CosHEPdS0_S0_S0_S0_m'

; Inverse hyperbolic sine approximation
public	ApproximationArcSinH_flt32			as	'Approximation_ArcSinH_flt32'
public	ApproximationArcSinH_flt64			as	'Approximation_ArcSinH_flt64'
public	ApproximationArcSinH_flt32			as	'_ZN13Approximation7ArcSinHEPfS0_S0_S0_S0_m'
public	ApproximationArcSinH_flt64			as	'_ZN13Approximation7ArcSinHEPdS0_S0_S0_S0_m'

; Inverse hyperbolic cosine approximation
public	ApproximationArcCosH_flt32			as	'Approximation_ArcCosH_flt32'
public	ApproximationArcCosH_flt64			as	'Approximation_ArcCosH_flt64'
public	ApproximationArcCosH_flt32			as	'_ZN13Approximation7ArcCosHEPfS0_S0_S0_S0_m'
public	ApproximationArcCosH_flt64			as	'_ZN13Approximation7ArcCosHEPdS0_S0_S0_S0_m'

;******************************************************************************;
;       Approximation by polynomial functions                                  ;
;******************************************************************************;

; Polynomial approximation
public	ApproximationPolynomial_flt32		as	'Approximation_Polynomial_flt32'
public	ApproximationPolynomial_flt64		as	'Approximation_Polynomial_flt64'
public	ApproximationPolynomial_flt32		as	'_ZN13Approximation10PolynomialEPfS0_mS0_S0_S0_m'
public	ApproximationPolynomial_flt64		as	'_ZN13Approximation10PolynomialEPdS0_mS0_S0_S0_m'

; Square root approximation
public	ApproximationPolySqrt_flt32			as	'Approximation_PolySqrt_flt32'
public	ApproximationPolySqrt_flt64			as	'Approximation_PolySqrt_flt64'
public	ApproximationPolySqrt_flt32			as	'_ZN13Approximation8PolySqrtEPfS0_mS0_S0_S0_m'
public	ApproximationPolySqrt_flt64			as	'_ZN13Approximation8PolySqrtEPdS0_mS0_S0_S0_m'

; Exponential approximation
public	ApproximationPolyExp_flt32			as	'Approximation_PolyExp_flt32'
public	ApproximationPolyExp_flt64			as	'Approximation_PolyExp_flt64'
public	ApproximationPolyExp_flt32			as	'_ZN13Approximation7PolyExpEPfS0_mS0_S0_S0_m'
public	ApproximationPolyExp_flt64			as	'_ZN13Approximation7PolyExpEPdS0_mS0_S0_S0_m'

; Logarithmic approximation
public	ApproximationPolyLog_flt32			as	'Approximation_PolyLog_flt32'
public	ApproximationPolyLog_flt64			as	'Approximation_PolyLog_flt64'
public	ApproximationPolyLog_flt32			as	'_ZN13Approximation7PolyLogEPfS0_mS0_S0_S0_m'
public	ApproximationPolyLog_flt64			as	'_ZN13Approximation7PolyLogEPdS0_mS0_S0_S0_m'

; Hyperbolic sine approximation
public	ApproximationPolySinH_flt32			as	'Approximation_PolySinH_flt32'
public	ApproximationPolySinH_flt64			as	'Approximation_PolySinH_flt64'
public	ApproximationPolySinH_flt32			as	'_ZN13Approximation8PolySinHEPfS0_mS0_S0_S0_m'
public	ApproximationPolySinH_flt64			as	'_ZN13Approximation8PolySinHEPdS0_mS0_S0_S0_m'

; Hyperbolic cosine approximation
public	ApproximationPolyCosH_flt32			as	'Approximation_PolyCosH_flt32'
public	ApproximationPolyCosH_flt64			as	'Approximation_PolyCosH_flt64'
public	ApproximationPolyCosH_flt32			as	'_ZN13Approximation8PolyCosHEPfS0_mS0_S0_S0_m'
public	ApproximationPolyCosH_flt64			as	'_ZN13Approximation8PolyCosHEPdS0_mS0_S0_S0_m'

; Inverse hyperbolic sine approximation
public	ApproximationPolyArcSinH_flt32		as	'Approximation_PolyArcSinH_flt32'
public	ApproximationPolyArcSinH_flt64		as	'Approximation_PolyArcSinH_flt64'
public	ApproximationPolyArcSinH_flt32		as	'_ZN13Approximation11PolyArcSinHEPfS0_mS0_S0_S0_m'
public	ApproximationPolyArcSinH_flt64		as	'_ZN13Approximation11PolyArcSinHEPdS0_mS0_S0_S0_m'

; Inverse hyperbolic cosine approximation
public	ApproximationPolyArcCosH_flt32		as	'Approximation_PolyArcCosH_flt32'
public	ApproximationPolyArcCosH_flt64		as	'Approximation_PolyArcCosH_flt64'
public	ApproximationPolyArcCosH_flt32		as	'_ZN13Approximation11PolyArcCosHEPfS0_mS0_S0_S0_m'
public	ApproximationPolyArcCosH_flt64		as	'_ZN13Approximation11PolyArcCosHEPdS0_mS0_S0_S0_m'

;******************************************************************************;
;       Approximation by rational functions                                    ;
;******************************************************************************;

; Rational function approximation
public	ApproximationRational_flt32			as	'Approximation_Rational_flt32'
public	ApproximationRational_flt64			as	'Approximation_Rational_flt64'
public	ApproximationRational_flt32			as	'_ZN13Approximation8RationalEPfS0_mS0_S0_S0_m'
public	ApproximationRational_flt64			as	'_ZN13Approximation8RationalEPdS0_mS0_S0_S0_m'

; Subrational function approximation
public	ApproximationSubrational_flt32		as	'Approximation_Subrational_flt32'
public	ApproximationSubrational_flt64		as	'Approximation_Subrational_flt64'
public	ApproximationSubrational_flt32		as	'_ZN13Approximation11SubrationalEPfS0_mS0_S0_S0_m'
public	ApproximationSubrational_flt64		as	'_ZN13Approximation11SubrationalEPdS0_mS0_S0_S0_m'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Approximation matrix                                                   ;
;******************************************************************************;
macro	MATRIX	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients buffer
matrix	equ		rsi							; pointer to matrix buffer
degree	equ		rdx							; polynomial degree
args	equ		rcx							; pointer to data arguments
vals	equ		r8							; pointer to data values
temp	equ		r9							; temporary buffer for calculations
size	equ		r10							; size of data arrays
;---[Internal variables]-------------------
status	equ		rax							; operation status
ptr		equ		r11							; temporary pointer
value	equ		xmm0						; value to process
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_deg	equ		stack + 2 * 8				; stack position of "degree" variable
s_args	equ		stack + 3 * 8				; stack position of "args" variable
s_vals	equ		stack + 4 * 8				; stack position of "vals" variable
s_temp	equ		stack + 5 * 8				; stack position of "temp" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
s_uptr	equ		stack + 7 * 8				; stack position of "ptr" variable
s_pptr	equ		stack + 8 * 8				; stack position of "ptr" variable
s_count	equ		stack + 9 * 8				; stack position of "count" variable
s_step	equ		stack + 10 * 8				; stack position of "step" variable
if x eq s
Copy	= Copy_flt32						; Copy function
Move	= Move_flt32						; Move function
MulVect	= Mul_flt32							; Vector multiply function
Sum		= Sum_flt32							; Sum of array elements
SumMul	= SumMul_flt32						; Sum of multiplied array elements
scale	= 2									; scale value
else if x eq d
Copy	= Copy_flt64						; Copy function
Move	= Move_flt64						; Move function
MulVect	= Mul_flt64							; Vector multiply function
Sum		= Sum_flt64							; Sum of array elements
SumMul	= SumMul_flt64						; Sum of multiplied array elements
scale	= 3									; scale value
end if
space	= 11 * 8							; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_deg], degree				; save "degree" variable into the stack
		mov		[s_args], args				; save "args" variable into the stack
		mov		[s_vals], vals				; save "vals" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Init pointers]------------------------
		mov		status, degree
		imul	status, degree				; status = degree * degree
		lea		ptr, [matrix + status * bytes]
		mov		[s_uptr], ptr				; save "ptr" variable into the stack
;---[Fill matrix and coefficients]---------
	cvtsi2s#x	value, size					; value = size
		movs#x	[ptr], value				; ptr[0] = value
		add		ptr, bytes					; ptr++
		mov		[s_pptr], ptr				; save "ptr" variable into the stack
		mov		param1, [s_vals]
		mov		param2, [s_size]
		mov		status, Sum
		call	status						; value = Sum (vals, size)
		mov		coeff, [s_coeff]			; get "coeff" variable from the stack
		movs#x	[coeff], value				; coeff[0] = value
		add		coeff, bytes				; coeff++
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
;---[Check polynomial degree]--------------
		cmp		qword [s_deg], 0			; if (degree == 0)
		jz		.exit						;     then go to exit
;---[Copy data into buffer]----------------
		mov		param1, [s_temp]
		mov		param2, [s_args]
		mov		param3, [s_size]
		mov		status, Copy
		call	status						; call Copy (temp, args, size)
;---[Fill matrix and coefficients]---------
		mov		param1, [s_temp]
		mov		param2, [s_size]
		mov		status, Sum
		call	status						; value = Sum (temp, size)
		mov		ptr, [s_pptr]				; get "ptr" variable from the stack
		movs#x	[ptr], value				; ptr[0] = value
		add		ptr, bytes					; ptr++
		mov		[s_pptr], ptr				; save "ptr" variable into the stack
		mov		param1, [s_temp]
		mov		param2, [s_vals]
		mov		param3, [s_size]
		mov		status, SumMul
		call	status						; value = SumMul (temp, vals, size)
		mov		coeff, [s_coeff]			; get "coeff" variable from the stack
		movs#x	[coeff], value				; coeff[0] = value
		add		coeff, bytes				; coeff++
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
;---[Check polynomial degree]--------------
		mov		degree, [s_deg]				; get "degree" variable from the stack
		sub		degree, 1					; degree = degree - 1
		jz		.skip						; if (degree == 0), then skip following code
		mov		[s_count], degree			; count = degree
;---[Matrix packing loop #1]---------------
.loop1:	mov		param1, [s_temp]
		mov		param2, [s_args]
		mov		param3, [s_size]
		mov		status, MulVect
		call	status						; call MulVect (temp, args, size)
		mov		param1, [s_temp]
		mov		param2, [s_size]
		mov		status, Sum
		call	status						; value = Sum (temp, size)
		mov		ptr, [s_pptr]				; get "ptr" variable from the stack
		movs#x	[ptr], value				; ptr[0] = value
		add		ptr, bytes					; ptr++
		mov		[s_pptr], ptr				; save "ptr" variable into the stack
		mov		param1, [s_temp]
		mov		param2, [s_vals]
		mov		param3, [s_size]
		mov		status, SumMul
		call	status						; value = SumMul (temp, vals, size)
		mov		coeff, [s_coeff]			; get "coeff" variable from the stack
		movs#x	[coeff], value				; coeff[0] = value
		add		coeff, bytes				; coeff++
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		sub		qword [s_count], 1			; count--
		jnz		.loop1						; do while (count != 0)
;---[End of matrix packing loop #1]--------
.skip:	mov		degree, [s_deg]				; get "degree" variable from the stack
		mov		[s_count], degree			; count = degree
;---[Matrix packing loop #2]---------------
.loop2:	mov		param1, [s_temp]
		mov		param2, [s_args]
		mov		param3, [s_size]
		mov		status, MulVect
		call	status						; call MulVect (temp, args, size)
		mov		param1, [s_temp]
		mov		param2, [s_size]
		mov		status, Sum
		call	status						; value = Sum (temp, size)
		mov		ptr, [s_pptr]				; get "ptr" variable from the stack
		movs#x	[ptr], value				; ptr[0] = value
		add		ptr, bytes					; ptr++
		mov		[s_pptr], ptr				; save "ptr" variable into the stack
		sub		qword [s_count], 1			; count--
		jnz		.loop2						; do while (count != 0)
;---[End of matrix packing loop #2]--------
		mov		degree, [s_deg]				; get "degree" variable from the stack
		mov		[s_count], degree			; count = degree
		add		degree, 1					; degree++
		mov		[s_deg], degree				; save "degree" variable into the stack
		shl		degree, scale				; degree <<= scale
		mov		[s_step], degree			; save "step" variable into the stack
;---[Matrix unpacking loop]----------------
.loop3:	mov		param1, [s_mtrx]
		mov		param2, [s_uptr]
		mov		param3, [s_deg]
		mov		status, Move
		call	status						; call Move (matrix, ptr, degree)
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		add		matrix, [s_step]			; matrix += step
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		add		qword [s_uptr], bytes		; ptr++
		sub		qword [s_count], 1			; count--
		jnz		.loop3						; do while (count != 0)
;---[End of matrix unpacking loop]---------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
Matrix_flt32:	MATRIX	s
Matrix_flt64:	MATRIX	d

;******************************************************************************;
;       Simple approximation function                                          ;
;******************************************************************************;
macro	APPROXIMATION1	Func1, Func2, Func3, x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients buffer
matrix	equ		rsi							; pointer to matrix buffer
args	equ		rdx							; pointer to data arguments
vals	equ		rcx							; pointer to data values
temp	equ		r8							; temporary buffer for calculations
size	equ		r9							; size of data arrays
;---[Internal variables]-------------------
status	equ		rax							; operation status
ptr		equ		r11							; temporary pointer
value	equ		xmm0						; value to process
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_args	equ		stack + 2 * 8				; stack position of "args" variable
s_vals	equ		stack + 3 * 8				; stack position of "vals" variable
s_temp	equ		stack + 4 * 8				; stack position of "temp" variable
s_size	equ		stack + 5 * 8				; stack position of "size" variable
s_ptr	equ		stack + 6 * 8				; stack position of "ptr" variable
s_count	equ		stack + 7 * 8				; stack position of "count" variable
s_stat	equ		stack + 8 * 8				; stack position of "status" variable
if x eq s
Matrix	= Matrix_flt32						; Approximation matrix function
Solve	= Cholesky_flt32					; Cholesky decomposition function
scale	= 2									; scale value
else if x eq d
Matrix	= Matrix_flt64						; Approximation matrix function
Solve	= Cholesky_flt64					; Cholesky decomposition function
scale	= 3									; scale value
end if
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_args], args				; save "args" variable into the stack
		mov		[s_vals], vals				; save "vals" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Check data size]----------------------
		test	size, size					; if (size == 0)
		jz		.error						;     then return false
;---[Convert data arguments]---------------
if Func1 eqtype 0
		mov		size, [s_size]				; get "size" variable from the stack
		mov		ptr, [s_args]				; ptr = args
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_count], size				; save "count" variable into the stack
.xloop:	movs#x	value, [ptr]				; value = ptr[0]
		mov		status, Func1
		call	status						; value = Func1 (ptr[0])
		mov		ptr, [s_ptr]				; get "size" variable from the stack
		movs#x	[ptr], value				; ptr[0] = value
		add		ptr, bytes					; ptr++
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		sub		qword [s_count], 1			; size--
		jnz		.xloop						; do while (size != 0)
end if
;---[Convert data values]------------------
if Func2 eqtype 0
		mov		size, [s_size]				; get "size" variable from the stack
		mov		ptr, [s_vals]				; ptr = vals
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_count], size				; save "count" variable into the stack
.yloop:	movs#x	value, [ptr]				; value = ptr[0]
		mov		status, Func2
		call	status						; value = Func2 (ptr[0])
		mov		ptr, [s_ptr]				; get "size" variable from the stack
		movs#x	[ptr], value				; ptr[0] = value
		add		ptr, bytes					; ptr++
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		sub		qword [s_count], 1			; size--
		jnz		.yloop						; do while (size != 0)
end if
;---[Create approximation matrix]----------
		mov		param1, [s_coeff]
		mov		param2, [s_mtrx]
		mov		param3, 1
		mov		param4, [s_args]
		mov		param5, [s_vals]
		mov		param6, [s_temp]
		mov		param7, [s_size]
		call	Matrix						; call Matrix (coeff, matrix, 1, args, vals, temp, size)
;---[Solve linear system]------------------
		mov		param1, [s_coeff]
		mov		param2, [s_mtrx]
		mov		param3, 2
		mov		status, Solve
		call	status						; status = Solve (coeff, matrix, 2)
;---[Correct result]-----------------------
if Func3 eqtype 0
		mov		[s_stat], status			; save "status" variable into the stack
		mov		coeff, [s_coeff]			; get "coeff" variable from the stack
		movs#x	value, [coeff]
		mov		status, Func3
		call	status						; value = Func3 (coeff[0])
		mov		coeff, [s_coeff]			; get "coeff" variable from the stack
		movs#x	[coeff], value				; coeff[0] = value
		mov		status, [s_stat]			; get "status" variable from the stack
end if
		add		stack, space				; restoring back the stack pointer
		ret									; return status
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
		xor		status, status				; return false
		ret
}

;******************************************************************************;
;       Polynomial approximation function                                      ;
;******************************************************************************;
macro	APPROXIMATION2	Func1, Func2, x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients buffer
matrix	equ		rsi							; pointer to matrix buffer
degree	equ		rdx							; polynomial degree
args	equ		rcx							; pointer to data arguments
vals	equ		r8							; pointer to data values
temp	equ		r9							; temporary buffer for calculations
;---[Internal variables]-------------------
status	equ		rax							; operation status
size	equ		r10							; size of data arrays
ptr		equ		r11							; temporary pointer
value	equ		xmm0						; value to process
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_deg	equ		stack + 2 * 8				; stack position of "degree" variable
s_args	equ		stack + 3 * 8				; stack position of "args" variable
s_vals	equ		stack + 4 * 8				; stack position of "vals" variable
s_temp	equ		stack + 5 * 8				; stack position of "temp" variable
s_ptr	equ		stack + 6 * 8				; stack position of "ptr" variable
s_count	equ		stack + 7 * 8				; stack position of "count" variable
s_size	equ		stack + 10 * 8				; stack position of "size" variable
if x eq s
Matrix	= Matrix_flt32						; Approximation matrix function
Solve	= Cholesky_flt32					; Cholesky decomposition function
scale	= 2									; scale value
else if x eq d
Matrix	= Matrix_flt64						; Approximation matrix function
Solve	= Cholesky_flt64					; Cholesky decomposition function
scale	= 3									; scale value
end if
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_deg], degree				; save "degree" variable into the stack
		mov		[s_args], args				; save "args" variable into the stack
		mov		[s_vals], vals				; save "vals" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		size, [s_size]				; get "size" variable from the stack
;---[Check data size]----------------------
		test	size, size					; if (size == 0)
		jz		.error						;     then return false
;---[Convert data arguments]---------------
if Func1 eqtype 0
		mov		ptr, [s_args]				; ptr = args
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_count], size				; save "count" variable into the stack
.xloop:	movs#x	value, [ptr]				; value = ptr[0]
		mov		status, Func1
		call	status						; value = Func1 (ptr[0])
		mov		ptr, [s_ptr]				; get "size" variable from the stack
		movs#x	[ptr], value				; ptr[0] = value
		add		ptr, bytes					; ptr++
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		sub		qword [s_count], 1			; size--
		jnz		.xloop						; do while (size != 0)
		mov		size, [s_size]				; get "size" variable from the stack
end if
;---[Convert data values]------------------
if Func2 eqtype 0
		mov		ptr, [s_vals]				; ptr = vals
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_count], size				; save "count" variable into the stack
.yloop:	movs#x	value, [ptr]				; value = ptr[0]
		mov		status, Func2
		call	status						; value = Func2 (ptr[0])
		mov		ptr, [s_ptr]				; get "size" variable from the stack
		movs#x	[ptr], value				; ptr[0] = value
		add		ptr, bytes					; ptr++
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		sub		qword [s_count], 1			; size--
		jnz		.yloop						; do while (size != 0)
end if
;---[Create approximation matrix]----------
		mov		param1, [s_coeff]
		mov		param2, [s_mtrx]
		mov		param3, [s_deg]
		mov		param4, [s_args]
		mov		param5, [s_vals]
		mov		param6, [s_temp]
		mov		param7, [s_size]
		call	Matrix						; call Matrix (coeff, matrix, degree, args, vals, temp, size)
;---[Solve linear system]------------------
		mov		param1, [s_coeff]
		mov		param2, [s_mtrx]
		mov		param3, [s_deg]
		add		param3, 1
		mov		status, Solve
		add		stack, space				; restoring back the stack pointer
		jmp		status						; return Solve (coeff, matrix, degree + 1)
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
		xor		status, status				; return false
		ret
}

;******************************************************************************;
;       Approximation by power function                                        ;
;******************************************************************************;
ApproximationPower_flt32:			APPROXIMATION1	Log_flt32, Log_flt32, Exp_flt32, s
ApproximationPower_flt64:			APPROXIMATION1	Log_flt64, Log_flt64, Exp_flt64, d

;******************************************************************************;
;       Approximation by elementary functions                                  ;
;******************************************************************************;

; Linear approximation
ApproximationLinear_flt32:			APPROXIMATION1	'', '', '', s
ApproximationLinear_flt64:			APPROXIMATION1	'', '', '', d

; Square law approximation
ApproximationSquare_flt32:			APPROXIMATION1	Sqr_flt32, '', '', s
ApproximationSquare_flt64:			APPROXIMATION1	Sqr_flt64, '', '', d

; Cube law approximation
ApproximationCube_flt32:			APPROXIMATION1	Cube_flt32, '', '', s
ApproximationCube_flt64:			APPROXIMATION1	Cube_flt64, '', '', d

; Hyperbolic approximation
ApproximationHyperbolic_flt32:		APPROXIMATION1	InverseValue_flt32, '', '', s
ApproximationHyperbolic_flt64:		APPROXIMATION1	InverseValue_flt64, '', '', d

; Inverse square law approximation
ApproximationInverseSquare_flt32:	APPROXIMATION1	InverseSquare_flt32, '', '', s
ApproximationInverseSquare_flt64:	APPROXIMATION1	InverseSquare_flt64, '', '', d

; Inverse cube law approximation
ApproximationInverseCube_flt32:		APPROXIMATION1	InverseCube_flt32, '', '', s
ApproximationInverseCube_flt64:		APPROXIMATION1	InverseCube_flt64, '', '', d

; Square root approximation
ApproximationSqrt_flt32:			APPROXIMATION1	Sqrt_flt32, '', '', s
ApproximationSqrt_flt64:			APPROXIMATION1	Sqrt_flt64, '', '', d

; Exponential approximation
ApproximationExp_flt32:				APPROXIMATION1	Exp_flt32, '', '', s
ApproximationExp_flt64:				APPROXIMATION1	Exp_flt64, '', '', d

; Logarithmic approximation
ApproximationLog_flt32:				APPROXIMATION1	Log_flt32, '', '', s
ApproximationLog_flt64:				APPROXIMATION1	Log_flt64, '', '', d

; Hyperbolic sine approximation
ApproximationSinH_flt32:			APPROXIMATION1	SinH_flt32, '', '', s
ApproximationSinH_flt64:			APPROXIMATION1	SinH_flt64, '', '', d

; Hyperbolic cosine approximation
ApproximationCosH_flt32:			APPROXIMATION1	CosH_flt32, '', '', s
ApproximationCosH_flt64:			APPROXIMATION1	CosH_flt64, '', '', d

; Inverse hyperbolic sine approximation
ApproximationArcSinH_flt32:			APPROXIMATION1	ArcSinH_flt32, '', '', s
ApproximationArcSinH_flt64:			APPROXIMATION1	ArcSinH_flt64, '', '', d

; Inverse hyperbolic cosine approximation
ApproximationArcCosH_flt32:			APPROXIMATION1	ArcCosH_flt32, '', '', s
ApproximationArcCosH_flt64:			APPROXIMATION1	ArcCosH_flt64, '', '', d

;******************************************************************************;
;       Approximation by polynomial functions                                  ;
;******************************************************************************;

; Polynomial approximation
ApproximationPolynomial_flt32:		APPROXIMATION2	'', '', s
ApproximationPolynomial_flt64:		APPROXIMATION2	'', '', d

; Square root approximation
ApproximationPolySqrt_flt32:		APPROXIMATION2	'', Sqr_flt32, s
ApproximationPolySqrt_flt64:		APPROXIMATION2	'', Sqr_flt64, d

; Exponential approximation
ApproximationPolyExp_flt32:			APPROXIMATION2	'', Log_flt32, s
ApproximationPolyExp_flt64:			APPROXIMATION2	'', Log_flt64, d

; Logarithmic approximation
ApproximationPolyLog_flt32:			APPROXIMATION2	'', Exp_flt32, s
ApproximationPolyLog_flt64:			APPROXIMATION2	'', Exp_flt64, d

; Hyperbolic sine approximation
ApproximationPolySinH_flt32:		APPROXIMATION2	'', ArcSinH_flt32, s
ApproximationPolySinH_flt64:		APPROXIMATION2	'', ArcSinH_flt64, d

; Hyperbolic cosine approximation
ApproximationPolyCosH_flt32:		APPROXIMATION2	'', ArcCosH_flt32, s
ApproximationPolyCosH_flt64:		APPROXIMATION2	'', ArcCosH_flt64, d

; Inverse hyperbolic sine approximation
ApproximationPolyArcSinH_flt32:		APPROXIMATION2	'', SinH_flt32, s
ApproximationPolyArcSinH_flt64:		APPROXIMATION2	'', SinH_flt64, d

; Inverse hyperbolic cosine approximation
ApproximationPolyArcCosH_flt32:		APPROXIMATION2	'', CosH_flt32, s
ApproximationPolyArcCosH_flt64:		APPROXIMATION2	'', CosH_flt64, d

;******************************************************************************;
;       Approximation by rational functions                                    ;
;******************************************************************************;

; Rational function approximation
ApproximationRational_flt32:		APPROXIMATION2	'', InverseValue_flt32, s
ApproximationRational_flt64:		APPROXIMATION2	'', InverseValue_flt64, d

; Subrational function approximation
ApproximationSubrational_flt32:		APPROXIMATION2	InverseValue_flt32, '', s
ApproximationSubrational_flt64:		APPROXIMATION2	InverseValue_flt64, '', d

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
