;                                                                     Matrix.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                              MATRIX OPERATIONS                              #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2015, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################

; Copying of vector
extrn	'Array_Copy'				as	Copy

; Initialization of vector
extrn	'Array_Init_flt32'			as	Init_flt32
extrn	'Array_Init_flt64'			as	Init_flt64

; Inversion of vector
extrn	'Array_Neg_flt32'			as	Neg_flt32
extrn	'Array_Neg_flt64'			as	Neg_flt64

; Addition of vectors
extrn	'Array_AddVector_flt32'		as	Add_flt32
extrn	'Array_AddVector_flt64'		as	Add_flt64

; Subtraction of vectors
extrn	'Array_SubVector_flt32'		as	Sub_flt32
extrn	'Array_SubVector_flt64'		as	Sub_flt64

; Multiplication of vector
extrn	'Array_MulScalar_flt32'		as	Mul_flt32
extrn	'Array_MulScalar_flt64'		as	Mul_flt64

; Division of vector
extrn	'Array_DivScalar_flt32'		as	Div_flt32
extrn	'Array_DivScalar_flt64'		as	Div_flt64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Initialization                                                         ;
;******************************************************************************;

; Initialization of rectangle matrix
public	InitRectangle_flt32				as	'Matrix_InitRectangle_flt32'
public	InitRectangle_flt64				as	'Matrix_InitRectangle_flt64'
public	InitRectangle_cmplx32			as	'Matrix_InitRectangle_cmplx32'
public	InitRectangle_cmplx64			as	'Matrix_InitRectangle_cmplx64'
public	InitRectangle_flt32				as	'_ZN6Matrix13InitRectangleEPfmmf'
public	InitRectangle_flt64				as	'_ZN6Matrix13InitRectangleEPdmmd'
public	InitRectangle_cmplx32			as	'_ZN6Matrix13InitRectangleEP9cmplx32_tmmS0_'
public	InitRectangle_cmplx64			as	'_ZN6Matrix13InitRectangleEP9cmplx64_tmmS0_'

; Initialization of diagonal matrix
public	InitDiagonal_flt32				as	'Matrix_InitDiagonal_flt32'
public	InitDiagonal_flt64				as	'Matrix_InitDiagonal_flt64'
public	InitDiagonal_cmplx32			as	'Matrix_InitDiagonal_cmplx32'
public	InitDiagonal_cmplx64			as	'Matrix_InitDiagonal_cmplx64'
public	InitDiagonal_flt32				as	'_ZN6Matrix12InitDiagonalEPfmf'
public	InitDiagonal_flt64				as	'_ZN6Matrix12InitDiagonalEPdmd'
public	InitDiagonal_cmplx32			as	'_ZN6Matrix12InitDiagonalEP9cmplx32_tmS0_'
public	InitDiagonal_cmplx64			as	'_ZN6Matrix12InitDiagonalEP9cmplx64_tmS0_'

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;
public	CopyMatrix_flt32				as	'Matrix_Copy_flt32'
public	CopyMatrix_flt64				as	'Matrix_Copy_flt64'
public	CopyMatrix_cmplx32				as	'Matrix_Copy_cmplx32'
public	CopyMatrix_cmplx64				as	'Matrix_Copy_cmplx64'
public	CopyMatrix_flt32				as	'_ZN6Matrix4CopyEPfPKfmm'
public	CopyMatrix_flt64				as	'_ZN6Matrix4CopyEPdPKdmm'
public	CopyMatrix_cmplx32				as	'_ZN6Matrix4CopyEP9cmplx32_tPKS0_mm'
public	CopyMatrix_cmplx64				as	'_ZN6Matrix4CopyEP9cmplx64_tPKS0_mm'

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unary operations                                                       ;
;==============================================================================;

; Negative matrix
public	NegMatrix_flt32					as	'Matrix_Neg_flt32'
public	NegMatrix_flt64					as	'Matrix_Neg_flt64'
public	NegMatrix_cmplx32				as	'Matrix_Neg_cmplx32'
public	NegMatrix_cmplx64				as	'Matrix_Neg_cmplx64'
public	NegMatrix_flt32					as	'_ZN6Matrix3NegEPfmm'
public	NegMatrix_flt64					as	'_ZN6Matrix3NegEPdmm'
public	NegMatrix_cmplx32				as	'_ZN6Matrix3NegEP9cmplx32_tmm'
public	NegMatrix_cmplx64				as	'_ZN6Matrix3NegEP9cmplx64_tmm'

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;

; Addition
public	AddMatrix_flt32					as	'Matrix_Add_flt32'
public	AddMatrix_flt64					as	'Matrix_Add_flt64'
public	AddMatrix_cmplx32				as	'Matrix_Add_cmplx32'
public	AddMatrix_cmplx64				as	'Matrix_Add_cmplx64'
public	AddMatrix_flt32					as	'_ZN6Matrix3AddEPfPKfmm'
public	AddMatrix_flt64					as	'_ZN6Matrix3AddEPdPKdmm'
public	AddMatrix_cmplx32				as	'_ZN6Matrix3AddEP9cmplx32_tPKS0_mm'
public	AddMatrix_cmplx64				as	'_ZN6Matrix3AddEP9cmplx64_tPKS0_mm'

; Subtraction
public	SubMatrix_flt32					as	'Matrix_Sub_flt32'
public	SubMatrix_flt64					as	'Matrix_Sub_flt64'
public	SubMatrix_cmplx32				as	'Matrix_Sub_cmplx32'
public	SubMatrix_cmplx64				as	'Matrix_Sub_cmplx64'
public	SubMatrix_flt32					as	'_ZN6Matrix3SubEPfPKfmm'
public	SubMatrix_flt64					as	'_ZN6Matrix3SubEPdPKdmm'
public	SubMatrix_cmplx32				as	'_ZN6Matrix3SubEP9cmplx32_tPKS0_mm'
public	SubMatrix_cmplx64				as	'_ZN6Matrix3SubEP9cmplx64_tPKS0_mm'

; Multiplication by scalar value
public	MulValue_flt32					as	'Matrix_Mul_flt32'
public	MulValue_flt64					as	'Matrix_Mul_flt64'
public	MulValue_cmplx32				as	'Matrix_Mul_cmplx32'
public	MulValue_cmplx64				as	'Matrix_Mul_cmplx64'
public	MulValue_flt32					as	'_ZN6Matrix3MulEPfmmf'
public	MulValue_flt64					as	'_ZN6Matrix3MulEPdmmd'
public	MulValue_cmplx32				as	'_ZN6Matrix3MulEP9cmplx32_tmmS0_'
public	MulValue_cmplx64				as	'_ZN6Matrix3MulEP9cmplx64_tmmS0_'

; Division by scalar value
public	DivValue_flt32					as	'Matrix_Div_flt32'
public	DivValue_flt64					as	'Matrix_Div_flt64'
public	DivValue_cmplx32				as	'Matrix_Div_cmplx32'
public	DivValue_cmplx64				as	'Matrix_Div_cmplx64'
public	DivValue_flt32					as	'_ZN6Matrix3DivEPfmmf'
public	DivValue_flt64					as	'_ZN6Matrix3DivEPdmmd'
public	DivValue_cmplx32				as	'_ZN6Matrix3DivEP9cmplx32_tmmS0_'
public	DivValue_cmplx64				as	'_ZN6Matrix3DivEP9cmplx64_tmmS0_'

; Multiplication by matrix
public	MulMatrix_flt32					as	'Matrix_MulMatrix_flt32'
public	MulMatrix_flt64					as	'Matrix_MulMatrix_flt64'
public	MulMatrix_cmplx32				as	'Matrix_MulMatrix_cmplx32'
public	MulMatrix_cmplx64				as	'Matrix_MulMatrix_cmplx64'
public	MulMatrix_flt32					as	'_ZN6Matrix9MulMatrixEPfPKfS2_mmm'
public	MulMatrix_flt64					as	'_ZN6Matrix9MulMatrixEPdPKdS2_mmm'
public	MulMatrix_cmplx32				as	'_ZN6Matrix9MulMatrixEP9cmplx32_tPKS0_S3_mmm'
public	MulMatrix_cmplx64				as	'_ZN6Matrix9MulMatrixEP9cmplx64_tPKS0_S3_mmm'

;******************************************************************************;
;       Transposition                                                          ;
;******************************************************************************;
public	Transpose_flt32					as	'Matrix_Transpose_flt32'
public	Transpose_flt64					as	'Matrix_Transpose_flt64'
public	Transpose_cmplx32				as	'Matrix_Transpose_cmplx32'
public	Transpose_cmplx64				as	'Matrix_Transpose_cmplx64'
public	Transpose_flt32					as	'_ZN6Matrix9TransposeEPfPKfmm'
public	Transpose_flt64					as	'_ZN6Matrix9TransposeEPdPKdmm'
public	Transpose_cmplx32				as	'_ZN6Matrix9TransposeEP9cmplx32_tPKS0_mm'
public	Transpose_cmplx64				as	'_ZN6Matrix9TransposeEP9cmplx64_tPKS0_mm'

;******************************************************************************;
;       Inverse matrix                                                         ;
;******************************************************************************;

; Inverse matrix through upper triangular matrix
public	InverseUp_flt32					as	'Matrix_InverseUp_flt32'
public	InverseUp_flt64					as	'Matrix_InverseUp_flt64'
public	InverseUp_cmplx32				as	'Matrix_InverseUp_cmplx32'
public	InverseUp_cmplx64				as	'Matrix_InverseUp_cmplx64'
public	InverseUp_flt32					as	'_ZN6Matrix9InverseUpEPfS0_m'
public	InverseUp_flt64					as	'_ZN6Matrix9InverseUpEPdS0_m'
public	InverseUp_cmplx32				as	'_ZN6Matrix9InverseUpEP9cmplx32_tS1_m'
public	InverseUp_cmplx64				as	'_ZN6Matrix9InverseUpEP9cmplx64_tS1_m'

; Inverse matrix through lower triangular matrix
public	InverseLow_flt32				as	'Matrix_InverseLow_flt32'
public	InverseLow_flt64				as	'Matrix_InverseLow_flt64'
public	InverseLow_cmplx32				as	'Matrix_InverseLow_cmplx32'
public	InverseLow_cmplx64				as	'Matrix_InverseLow_cmplx64'
public	InverseLow_flt32				as	'_ZN6Matrix10InverseLowEPfS0_m'
public	InverseLow_flt64				as	'_ZN6Matrix10InverseLowEPdS0_m'
public	InverseLow_cmplx32				as	'_ZN6Matrix10InverseLowEP9cmplx32_tS1_m'
public	InverseLow_cmplx64				as	'_ZN6Matrix10InverseLowEP9cmplx64_tS1_m'

;******************************************************************************;
;       Determinant                                                            ;
;******************************************************************************;

;==============================================================================;
;       Determinant of diagonal matrix                                         ;
;==============================================================================;
public	DeterminantDiagonal_flt32		as	'Matrix_DeterminantDiagonal_flt32'
public	DeterminantDiagonal_flt64		as	'Matrix_DeterminantDiagonal_flt64'
public	DeterminantDiagonal_cmplx32		as	'Matrix_DeterminantDiagonal_cmplx32'
public	DeterminantDiagonal_cmplx64		as	'Matrix_DeterminantDiagonal_cmplx64'
public	DeterminantDiagonal_flt32		as	'_ZN6Matrix19DeterminantDiagonalEPKfm'
public	DeterminantDiagonal_flt64		as	'_ZN6Matrix19DeterminantDiagonalEPKdm'
public	DeterminantDiagonal_cmplx32		as	'_ZN6Matrix19DeterminantDiagonalEPK9cmplx32_tm'
public	DeterminantDiagonal_cmplx64		as	'_ZN6Matrix19DeterminantDiagonalEPK9cmplx64_tm'

;==============================================================================;
;       Determinant of triangular matrix                                       ;
;==============================================================================;
public	DeterminantDiagonal_flt32		as	'Matrix_DeterminantTriangular_flt32'
public	DeterminantDiagonal_flt64		as	'Matrix_DeterminantTriangular_flt64'
public	DeterminantDiagonal_cmplx32		as	'Matrix_DeterminantTriangular_cmplx32'
public	DeterminantDiagonal_cmplx64		as	'Matrix_DeterminantTriangular_cmplx64'
public	DeterminantDiagonal_flt32		as	'_ZN6Matrix21DeterminantTriangularEPKfm'
public	DeterminantDiagonal_flt64		as	'_ZN6Matrix21DeterminantTriangularEPKdm'
public	DeterminantDiagonal_cmplx32		as	'_ZN6Matrix21DeterminantTriangularEPK9cmplx32_tm'
public	DeterminantDiagonal_cmplx64		as	'_ZN6Matrix21DeterminantTriangularEPK9cmplx64_tm'

;==============================================================================;
;       Determinant of square matrix                                           ;
;==============================================================================;

; Determinant of square matrix through upper triangular matrix
public	DeterminantSquareUp_flt32		as	'Matrix_DeterminantSquareUp_flt32'
public	DeterminantSquareUp_flt64		as	'Matrix_DeterminantSquareUp_flt64'
public	DeterminantSquareUp_cmplx32		as	'Matrix_DeterminantSquareUp_cmplx32'
public	DeterminantSquareUp_cmplx64		as	'Matrix_DeterminantSquareUp_cmplx64'
public	DeterminantSquareUp_flt32		as	'_ZN6Matrix19DeterminantSquareUpEPfm'
public	DeterminantSquareUp_flt64		as	'_ZN6Matrix19DeterminantSquareUpEPdm'
public	DeterminantSquareUp_cmplx32		as	'_ZN6Matrix19DeterminantSquareUpEP9cmplx32_tm'
public	DeterminantSquareUp_cmplx64		as	'_ZN6Matrix19DeterminantSquareUpEP9cmplx64_tm'

; Determinant of square matrix through lower triangular matrix
public	DeterminantSquareLow_flt32		as	'Matrix_DeterminantSquareLow_flt32'
public	DeterminantSquareLow_flt64		as	'Matrix_DeterminantSquareLow_flt64'
public	DeterminantSquareLow_cmplx32	as	'Matrix_DeterminantSquareLow_cmplx32'
public	DeterminantSquareLow_cmplx64	as	'Matrix_DeterminantSquareLow_cmplx64'
public	DeterminantSquareLow_flt32		as	'_ZN6Matrix20DeterminantSquareLowEPfm'
public	DeterminantSquareLow_flt64		as	'_ZN6Matrix20DeterminantSquareLowEPdm'
public	DeterminantSquareLow_cmplx32	as	'_ZN6Matrix20DeterminantSquareLowEP9cmplx32_tm'
public	DeterminantSquareLow_cmplx64	as	'_ZN6Matrix20DeterminantSquareLowEP9cmplx64_tm'

;******************************************************************************;
;       Solving of linear system                                               ;
;******************************************************************************;

;==============================================================================;
;       Gauss elimination                                                      ;
;==============================================================================;

; Gauss elimination to upper triangular matrix
public	GaussUp_flt32					as	'Matrix_GaussUp_flt32'
public	GaussUp_flt64					as	'Matrix_GaussUp_flt64'
public	GaussUp_cmplx32					as	'Matrix_GaussUp_cmplx32'
public	GaussUp_cmplx64					as	'Matrix_GaussUp_cmplx64'
public	GaussUp_flt32					as	'_ZN6Matrix7GaussUpEPfS0_m'
public	GaussUp_flt64					as	'_ZN6Matrix7GaussUpEPdS0_m'
public	GaussUp_cmplx32					as	'_ZN6Matrix7GaussUpEP9cmplx32_tS1_m'
public	GaussUp_cmplx64					as	'_ZN6Matrix7GaussUpEP9cmplx64_tS1_m'

; Gauss elimination to lower triangular matrix
public	GaussLow_flt32					as	'Matrix_GaussLow_flt32'
public	GaussLow_flt64					as	'Matrix_GaussLow_flt64'
public	GaussLow_cmplx32				as	'Matrix_GaussLow_cmplx32'
public	GaussLow_cmplx64				as	'Matrix_GaussLow_cmplx64'
public	GaussLow_flt32					as	'_ZN6Matrix8GaussLowEPfS0_m'
public	GaussLow_flt64					as	'_ZN6Matrix8GaussLowEPdS0_m'
public	GaussLow_cmplx32				as	'_ZN6Matrix8GaussLowEP9cmplx32_tS1_m'
public	GaussLow_cmplx64				as	'_ZN6Matrix8GaussLowEP9cmplx64_tS1_m'

;==============================================================================;
;       Cholesky decomposition                                                 ;
;==============================================================================;

; Cholesky decomposition to upper triangular matrix
public	CholeskyUp_flt32				as	'Matrix_CholeskyUp_flt32'
public	CholeskyUp_flt64				as	'Matrix_CholeskyUp_flt64'
public	CholeskyUp_flt32				as	'_ZN6Matrix10CholeskyUpEPfS0_m'
public	CholeskyUp_flt64				as	'_ZN6Matrix10CholeskyUpEPdS0_m'

; Cholesky decomposition to lower triangular matrix
public	CholeskyLow_flt32				as	'Matrix_CholeskyLow_flt32'
public	CholeskyLow_flt64				as	'Matrix_CholeskyLow_flt64'
public	CholeskyLow_flt32				as	'_ZN6Matrix11CholeskyLowEPfS0_m'
public	CholeskyLow_flt64				as	'_ZN6Matrix11CholeskyLowEPdS0_m'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Offsets inside complex number structure                                ;
;******************************************************************************;
RE	= 0										; Real part of complex number
IM	= 1										; Imaginary part of complex number

;******************************************************************************;
;       Modified complex number magnitude                                      ;
;******************************************************************************;
macro	CMAG	real, imag, re, im, mask, treg, x
{
if x eq s
dmask	= DMASK_FLT32						; data mask
else if x eq d
dmask	= DMASK_FLT64						; data mask
end if
		initreg	mask, treg, dmask			; load data mask
		movap#x	real, re					; real = re
		andp#x	real, mask					; real = Abs (real)
		movap#x	imag, im					; imag = im
		andp#x	imag, mask					; imag = Abs (imag)
		adds#x	real, imag					; real += imag
}

;******************************************************************************;
;       Multiplication of complex numbers                                      ;
;******************************************************************************;
macro	CMUL	tre, tim, sre, sim, temp0, temp1, x
{
		movap#x	temp0, tre					; temp0 = tre
		movap#x	temp1, tim					; temp1 = tim
		muls#x	tre, sre					; tre *= sre
		muls#x	temp1, sim					; temp1 *= sim
		subs#x	tre, temp1					; tre -= temp1
		muls#x	tim, sre					; tim *= sre
		muls#x	temp0, sim					; temp0 *= sim
		adds#x	tim, temp0					; tim += temp0
}

;******************************************************************************;
;       Determinant of 1 order matrix                                          ;
;******************************************************************************;
macro	DET1_FLT	mtrx, temp0, x
{
;---[Internal variables]-------------------
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		movs#x	temp0, [mtrx + 0 * bytes]	; temp0 = mtrx[0]
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	DET1_CMPLX	mtrx, rtemp0, itemp0, x
{
;---[Internal variables]-------------------
rtemp0	equ		xmm0						; temporary register #1
itemp0	equ		xmm1						; temporary register #2
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		movs#x	rtemp0, [mtrx+(0+RE)*bytes]
		movs#x	itemp0, [mtrx+(0+IM)*bytes]	; temp0 = mtrx[0]
}

;******************************************************************************;
;       Determinant of 2 order matrix                                          ;
;******************************************************************************;
macro	DET2_FLT	mtrx, temp0, temp1, x
{
;---[Internal variables]-------------------
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		movs#x	temp0, [mtrx + 0 * bytes]
		muls#x	temp0, [mtrx + 3 * bytes]	; temp0 = mtrx[0] * mtrx[3]
		movs#x	temp1, [mtrx + 2 * bytes]
		muls#x	temp1, [mtrx + 1 * bytes]	; temp1 = mtrx[2] * mtrx[1]
		subs#x	temp0, temp1				; temp0 -= temp1
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	DET2_CMPLX	mtrx, rtemp0, itemp0, real, imag, re, im, x
{
;---[Internal variables]-------------------
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		movs#x	rtemp0, [mtrx+(0+RE)*bytes]
		movs#x	itemp0, [mtrx+(0+IM)*bytes]	; temp0 = mtrx[0] * mtrx[3]
		CMUL	rtemp0, itemp0, [mtrx+(6+RE)*bytes], [mtrx+(6+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(4+RE)*bytes]
		movs#x	imag, [mtrx+(4+IM)*bytes]	; number = mtrx[2] * mtrx[1]
		CMUL	real, imag, [mtrx+(2+RE)*bytes], [mtrx+(2+IM)*bytes], re, im, x
		subs#x	rtemp0, real
		subs#x	itemp0, imag				; temp0 -= number
}

;******************************************************************************;
;       Determinant of 3 order matrix                                          ;
;******************************************************************************;
macro	DET3_FLT	mtrx, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, x
{
;---[Internal variables]-------------------
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		movs#x	temp0, [mtrx + 0 * bytes]	; temp0 = mtrx[0]
		movs#x	temp1, [mtrx + 3 * bytes]	; temp1 = mtrx[3]
		movs#x	temp2, [mtrx + 6 * bytes]	; temp2 = mtrx[6]
;---[Compute intermediate value #1]--------
		movs#x	temp3, [mtrx + 4 * bytes]
		muls#x	temp3, [mtrx + 8 * bytes]	; temp3 = mtrx[4] * mtrx[8]
		movs#x	temp6, [mtrx + 5 * bytes]
		muls#x	temp6, [mtrx + 7 * bytes]	; temp6 = mtrx[5] * mtrx[7]
		subs#x	temp3, temp6				; temp3 -= temp6
;---[Compute intermediate value #2]--------
		movs#x	temp4, [mtrx + 7 * bytes]
		muls#x	temp4, [mtrx + 2 * bytes]	; temp4 = mtrx[7] * mtrx[2]
		movs#x	temp7, [mtrx + 8 * bytes]
		muls#x	temp7, [mtrx + 1 * bytes]	; temp7 = mtrx[8] * mtrx[1]
		subs#x	temp4, temp7				; temp4 -= temp7
;---[Compute intermediate value #3]--------
		movs#x	temp5, [mtrx + 1 * bytes]
		muls#x	temp5, [mtrx + 5 * bytes]	; temp5 = mtrx[1] * mtrx[5]
		movs#x	temp8, [mtrx + 2 * bytes]
		muls#x	temp8, [mtrx + 4 * bytes]	; temp8 = mtrx[2] * mtrx[4]
		subs#x	temp5, temp8				; temp5 -= temp8
;---[Multiply intermediate values]---------
		muls#x	temp0, temp3				; temp0 *= temp3
		muls#x	temp1, temp4				; temp1 *= temp4
		muls#x	temp2, temp5				; temp2 *= temp5
;---[Compute sum of values]----------------
		adds#x	temp0, temp1				; temp0 += temp1
		adds#x	temp0, temp2				; temp0 += temp2
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	DET3_CMPLX	mtrx, rtemp0, itemp0, rtemp1, itemp1, rtemp2, itemp2, rtemp3, itemp3, rtemp4, itemp4, rtemp5, itemp5, real, imag, re, im, x
{
;---[Internal variables]-------------------
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		movs#x	rtemp0, [mtrx+(0+RE)*bytes]	; rtemp0 = mtrx[0].re
		movs#x	itemp0, [mtrx+(0+IM)*bytes]	; itemp0 = mtrx[0].im
		movs#x	rtemp1, [mtrx+(6+RE)*bytes]	; rtemp1 = mtrx[3].re
		movs#x	itemp1, [mtrx+(6+IM)*bytes]	; itemp1 = mtrx[3].im
		movs#x	rtemp2, [mtrx+(12+RE)*bytes]; rtemp2 = mtrx[6].re
		movs#x	itemp2, [mtrx+(12+IM)*bytes]; itemp2 = mtrx[6].im
;---[Compute intermediate value #1]--------
		movs#x	rtemp3, [mtrx+(8+RE)*bytes]
		movs#x	itemp3, [mtrx+(8+IM)*bytes]	; temp3 = mtrx[4] * mtrx[8]
		CMUL	rtemp3, itemp3, [mtrx+(16+RE)*bytes], [mtrx+(16+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(10+RE)*bytes]
		movs#x	imag, [mtrx+(10+IM)*bytes]	; number = mtrx[5] * mtrx[7]
		CMUL	real, imag, [mtrx+(14+RE)*bytes], [mtrx+(14+IM)*bytes], re, im, x
		subs#x	rtemp3, real
		subs#x	itemp3, imag				; temp3 -= number
;---[Compute intermediate value #2]--------
		movs#x	rtemp4, [mtrx+(14+RE)*bytes]
		movs#x	itemp4, [mtrx+(14+IM)*bytes]; temp4 = mtrx[7] * mtrx[2]
		CMUL	rtemp4, itemp4, [mtrx+(4+RE)*bytes], [mtrx+(4+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(16+RE)*bytes]
		movs#x	imag, [mtrx+(16+IM)*bytes]	; number = mtrx[8] * mtrx[1]
		CMUL	real, imag, [mtrx+(2+RE)*bytes], [mtrx+(2+IM)*bytes], re, im, x
		subs#x	rtemp4, real
		subs#x	itemp4, imag				; temp4 -= number
;---[Compute intermediate value #3]--------
		movs#x	rtemp5, [mtrx+(2+RE)*bytes]
		movs#x	itemp5, [mtrx+(2+IM)*bytes]	; temp5 = mtrx[1] * mtrx[5]
		CMUL	rtemp5, itemp5, [mtrx+(10+RE)*bytes], [mtrx+(10+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(4+RE)*bytes]
		movs#x	imag, [mtrx+(4+IM)*bytes]	; number = mtrx[2] * mtrx[4]
		CMUL	real, imag, [mtrx+(8+RE)*bytes], [mtrx+(8+IM)*bytes], re, im, x
		subs#x	rtemp5, real
		subs#x	itemp5, imag				; temp5 -= number
;---[Multiply intermediate values]---------
		CMUL	rtemp0, itemp0, rtemp3, itemp3, re, im, x
		CMUL	rtemp1, itemp1, rtemp4, itemp4, re, im, x
		CMUL	rtemp2, itemp2, rtemp5, itemp5, re, im, x
;---[Compute sum of values]----------------
		adds#x	rtemp0, rtemp1
		adds#x	itemp0, itemp1				; temp0 += temp1
		adds#x	rtemp0, rtemp2
		adds#x	itemp0, itemp2				; temp0 += temp2
}

;******************************************************************************;
;       Inverse complex number                                                 ;
;******************************************************************************;
macro	COMPLEX_INV	x
{
;---[Parameters]---------------------------
real	equ		xmm0						; real part of complex number
imag	equ		xmm1						; imaginary part of complex number
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp0	equ		xmm2						; temporary register #1
temp1	equ		xmm3						; temporary register #2
mask	equ		xmm4						; data mask to get absolute value
max		equ		xmm5						; max value
barier1	equ		xmm12						; first barier
barier2	equ		xmm13						; second barier
cscale	equ		xmm14						; complex number scale factor
inv		equ		xmm15						; inverse value
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
oneval	= PONE_FLT32						; 1.0
const1	= 0x5F800000						; 2^+64
const2	= 0x20000000						; 2^-63
sclval1	= 0x1F800000						; 2^-64
sclval2	= 0x6A800000						; 2^+86
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
oneval	= PONE_FLT64						; 1.0
const1	= 0x5FF0000000000000				; 2^+512
const2	= 0x2000000000000000				; 2^-511
sclval1	= 0x1FF0000000000000				; 2^-512
sclval2	= 0x6330000000000000				; 2^+564
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	barier1, treg, const1		; barier1 = const1
		initreg	barier2, treg, const2		; barier2 = const2
		movap#x	temp0, real
		andp#x	temp0, mask					; temp0 = Abs (real)
		movap#x	temp1, imag
		andp#x	temp1, mask					; temp1 = Abs (imag)
		movap#x	max, temp0
		maxs#x	max, temp1					; max = Max (temp0, temp1)
		comis#x	max, barier1				; if (max >= barier1)
		jae		.over						;     then go to overflow prevention branch
		comis#x	max, barier2				; if (max < barier2)
		jb		.under						;     then go to underflow prevention branch
;---[Normal execution branch]--------------
		initreg	mask, treg, smask			; mask = smask
		xorp#x	imag, mask					; imag = -imag
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, real					; temp0 = real
		movap#x	temp1, imag					; temp1 = imag
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		muls#x	real, inv					; real *= inv
		muls#x	imag, inv					; imag *= inv
		ret
;---[Overflow prevention branch]-----------
.over:	initreg	cscale, treg, sclval1		; cscale = sclval1
		muls#x	real, cscale				; real *= cscale
		muls#x	imag, cscale				; imag *= cscale
		initreg	mask, treg, smask			; mask = smask
		xorp#x	imag, mask					; imag = -imag
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, real					; temp0 = real
		movap#x	temp1, imag					; temp1 = imag
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		muls#x	real, inv					; real *= inv
		muls#x	imag, inv					; imag *= inv
		muls#x	real, cscale				; real *= cscale
		muls#x	imag, cscale				; imag *= cscale
		ret
;---[Underflow prevention branch]----------
.under:	initreg	cscale, treg, sclval2		; cscale = sclval2
		muls#x	real, cscale				; real *= cscale
		muls#x	imag, cscale				; imag *= cscale
		initreg	mask, treg, smask			; mask = smask
		xorp#x	imag, mask					; imag = -imag
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, real					; temp0 = real
		movap#x	temp1, imag					; temp1 = imag
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		muls#x	real, inv					; real *= inv
		muls#x	imag, inv					; imag *= inv
		muls#x	real, cscale				; real *= cscale
		muls#x	imag, cscale				; imag *= cscale
		ret
}
InvNum_flt32:	COMPLEX_INV	s
InvNum_flt64:	COMPLEX_INV	d

;******************************************************************************;
;       Division of complex numbers                                            ;
;******************************************************************************;
macro	COMPLEX_DIV	x
{
;---[Parameters]---------------------------
treal	equ		xmm0						; real part of target complex number
timag	equ		xmm1						; imaginary part of target complex number
sreal	equ		xmm2						; real part of source complex number
simag	equ		xmm3						; imaginary part of source complex number
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp0	equ		xmm4						; temporary register #1
temp1	equ		xmm5						; temporary register #2
mask	equ		xmm6						; data mask to get absolute value
max		equ		xmm7						; max value
barier1	equ		xmm12						; first barier
barier2	equ		xmm13						; second barier
cscale	equ		xmm14						; complex number scale factor
inv		equ		xmm15						; inverse value
if x eq s
dmask	= DMASK_FLT32						; data mask
oneval	= PONE_FLT32						; 1.0
const1	= 0x5F800000						; 2^+64
const2	= 0x20000000						; 2^-63
sclval1	= 0x1F800000						; 2^-64
sclval2	= 0x6A800000						; 2^+86
else if x eq d
dmask	= DMASK_FLT64						; data mask
oneval	= PONE_FLT64						; 1.0
const1	= 0x5FF0000000000000				; 2^+512
const2	= 0x2000000000000000				; 2^-511
sclval1	= 0x1FF0000000000000				; 2^-512
sclval2	= 0x6330000000000000				; 2^+564
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	barier1, treg, const1		; barier1 = const1
		initreg	barier2, treg, const2		; barier2 = const2
		movap#x	temp0, sreal
		andp#x	temp0, mask					; temp0 = Abs (sreal)
		movap#x	temp1, simag
		andp#x	temp1, mask					; temp1 = Abs (simag)
		movap#x	max, temp0
		maxs#x	max, temp1					; max = Max (temp0, temp1)
		comis#x	max, barier1				; if (max >= barier1)
		jae		.over						;     then go to overflow prevention branch
		comis#x	max, barier2				; if (max < barier2)
		jb		.under						;     then go to underflow prevention branch
;---[Normal execution branch]--------------
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, sreal				; temp0 = sreal
		movap#x	temp1, simag				; temp1 = simag
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		movap#x	temp0, treal				; temp0 = treal
		movap#x	temp1, timag				; temp1 = timag
		muls#x	treal, sreal				; treal *= sreal
		muls#x	temp1, simag				; temp1 *= simag
		adds#x	treal, temp1				; treal += temp1
		muls#x	timag, sreal				; timag *= sreal
		muls#x	temp0, simag				; temp0 *= simag
		subs#x	timag, temp0				; timag -= temp0
		muls#x	treal, inv					; treal *= inv
		muls#x	timag, inv					; timag *= inv
		ret
;---[Overflow prevention branch]-----------
.over:	initreg	cscale, treg, sclval1		; cscale = sclval1
		muls#x	sreal, cscale				; sreal *= cscale
		muls#x	simag, cscale				; simag *= cscale
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, sreal				; temp0 = sreal
		movap#x	temp1, simag				; temp1 = simag
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		movap#x	temp0, treal				; temp0 = treal
		movap#x	temp1, timag				; temp1 = timag
		muls#x	treal, sreal				; treal *= sreal
		muls#x	temp1, simag				; temp1 *= simag
		adds#x	treal, temp1				; treal += temp1
		muls#x	timag, sreal				; timag *= sreal
		muls#x	temp0, simag				; temp0 *= simag
		subs#x	timag, temp0				; timag -= temp0
		muls#x	treal, inv					; treal *= inv
		muls#x	timag, inv					; timag *= inv
		muls#x	treal, cscale				; treal *= cscale
		muls#x	timag, cscale				; timag *= cscale
		ret
;---[Underflow prevention branch]----------
.under:	initreg	cscale, treg, sclval2		; cscale = sclval2
		muls#x	sreal, cscale				; sreal *= cscale
		muls#x	simag, cscale				; simag *= cscale
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, sreal				; temp0 = sreal
		movap#x	temp1, simag				; temp1 = simag
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		movap#x	temp0, treal				; temp0 = treal
		movap#x	temp1, timag				; temp1 = timag
		muls#x	treal, sreal				; treal *= sreal
		muls#x	temp1, simag				; temp1 *= simag
		adds#x	treal, temp1				; treal += temp1
		muls#x	timag, sreal				; timag *= sreal
		muls#x	temp0, simag				; temp0 *= simag
		subs#x	timag, temp0				; timag -= temp0
		muls#x	treal, inv					; treal *= inv
		muls#x	timag, inv					; timag *= inv
		muls#x	treal, cscale				; treal *= cscale
		muls#x	timag, cscale				; timag *= cscale
		ret
}
DivNum_flt32:	COMPLEX_DIV	s
DivNum_flt64:	COMPLEX_DIV	d

;******************************************************************************;
;       Swap matrix rows                                                       ;
;******************************************************************************;
macro	SWAP_ROWS	cmd
{
;---[Parameters]---------------------------
row1	equ		rdi							; first row
row2	equ		rsi							; second row
size	equ		rdx							; row size (count of elements)
step	equ		rcx							; step size
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Swap loop]----------------------------
.loop:	cmd		temp0, [row1]				; temp0 = row1[0]
		cmd		temp1, [row2]				; temp1 = row2[0]
		cmd		[row1], temp1				; row1[0] = temp1
		cmd		[row2], temp0				; row2[0] = temp0
		add		row1, step					; row1 += step
		add		row2, step					; row1 += step
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of swap loop]---------------------
.exit:	ret
}

; Real number matrix
SwapRows_flt32:		SWAP_ROWS	movss
SwapRows_flt64:		SWAP_ROWS	movsd

; Complex number matrix
SwapRows_cmplx32:	SWAP_ROWS	movlps
SwapRows_cmplx64:	SWAP_ROWS	movupd

;******************************************************************************;
;       Multiply matrix rows                                                   ;
;******************************************************************************;
macro	MUL_ROWS_FLT	x
{
;---[Parameters]---------------------------
row1	equ		rdi							; pointer to first row
row2	equ		rsi							; pointer to second row
size	equ		rdx							; row size (count of elements)
step1	equ		rcx							; step size for first row
step2	equ		r8							; step size for second row
;---[Internal variables]-------------------
result	equ		xmm0						; result register
temp	equ		xmm1						; temporary register
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		xorp#x	result, result				; result = 0.0
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Multiplication loop]------------------
.loop:	movs#x	temp, [row1]
		muls#x	temp, [row2]
		adds#x	result, temp				; result += row1[0] * row2[0]
		add		row1, step1					; row1 += step1
		add		row2, step2					; row2 += step2
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End multiplication loop]--------------
.exit:	ret									; return result
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MUL_ROWS_CMPLX	x
{
;---[Parameters]---------------------------
row1	equ		rdi							; pointer to first row
row2	equ		rsi							; pointer to second row
size	equ		rdx							; row size (count of elements)
step1	equ		rcx							; step size for first row
step2	equ		r8							; step size for second row
;---[Internal variables]-------------------
real	equ		xmm0						; real part of result
imag	equ		xmm1						; imaginary part of result
real1	equ		xmm2						; real part of source complex number #1
imag1	equ		xmm3						; imaginary part of source complex number #1
real2	equ		xmm4						; real part of source complex number #2
imag2	equ		xmm5						; imaginary part of source complex number #2
temp0	equ		xmm6						; temporary register #1
temp1	equ		xmm7						; temporary register #2
if x eq s
scale	= 3									; scale value
else if x eq d
scale	= 4									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		xorp#x	real, real					; real = 0.0
		xorp#x	imag, imag					; imag = 0.0
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Multiplication loop]------------------
.loop:	movs#x	real1, [row1 + RE*bytes/2]	; real1 = row1[0].re
		movs#x	imag1, [row1 + IM*bytes/2]	; imag1 = row1[0].im
		movs#x	real2, [row2 + RE*bytes/2]	; real2 = row2[0].re
		movs#x	imag2, [row2 + IM*bytes/2]	; imag2 = row2[0].im
		movap#x	temp0, real1				; temp0 = real1
		movap#x	temp1, imag1				; temp1 = imag1
		muls#x	real1, real2				; real1 *= real2
		muls#x	temp1, imag2				; temp1 *= imag2
		subs#x	real1, temp1				; real1 -= temp1
		adds#x	real, real1					; real += real1
		muls#x	imag1, real2				; imag1 *= real2
		muls#x	temp0, imag2				; temp0 *= imag2
		adds#x	imag1, temp0				; imag1 += temp0
		adds#x	imag, imag1					; imag += imag1
		add		row1, step1					; row1 += step1
		add		row2, step2					; row2 += step2
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End multiplication loop]--------------
.exit:	ret									; return result
}

; Real number matrix
MulRows_flt32:		MUL_ROWS_FLT	s
MulRows_flt64:		MUL_ROWS_FLT	d

; Complex number matrix
MulRows_cmplx32:	MUL_ROWS_CMPLX	s
MulRows_cmplx64:	MUL_ROWS_CMPLX	d

;******************************************************************************;
;       Subtract matrix row                                                    ;
;******************************************************************************;
macro	SUB_ROW_FLT		x
{
;---[Parameters]---------------------------
row1	equ		rdi							; first row
row2	equ		rsi							; second row
size	equ		rdx							; row size (count of elements)
step	equ		rcx							; step size
value	equ		xmm0						; scale value
;---[Internal variables]-------------------
temp0	equ		xmm6						; temporary register #1
temp1	equ		xmm7						; temporary register #2
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scale loop]---------------------------
.loop:	movs#x	temp0, [row1]
		movs#x	temp1, [row2]
		muls#x	temp1, value
		subs#x	temp0, temp1
		movs#x	[row1], temp0				; row1[0] -= row2[0] * value
		add		row1, step					; row1 += step
		add		row2, step					; row2 += step
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of scale loop]--------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SUB_ROW_CMPLX	x
{
;---[Parameters]---------------------------
row1	equ		rdi							; first row
row2	equ		rsi							; second row
size	equ		rdx							; row size (count of elements)
step	equ		rcx							; step size
real	equ		xmm0						; real part of complex number
imag	equ		xmm1						; imaginary part of complex number
;---[Internal variables]-------------------
real1	equ		xmm2						; real part of target complex number
imag1	equ		xmm3						; imaginary part of target complex number
real2	equ		xmm4						; real part of source complex number
imag2	equ		xmm5						; imaginary part of source complex number
temp0	equ		xmm6						; temporary register #1
temp1	equ		xmm7						; temporary register #2
if x eq s
scale	= 3									; scale value
else if x eq d
scale	= 4									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scale loop]---------------------------
.loop:	movs#x	real1, [row1 + RE*bytes/2]	; real1 = row1[0].re
		movs#x	imag1, [row1 + IM*bytes/2]	; imag1 = row1[0].im
		movs#x	real2, [row2 + RE*bytes/2]	; real2 = row2[0].re
		movs#x	imag2, [row2 + IM*bytes/2]	; imag2 = row2[0].im
		movap#x	temp0, real2				; temp0 = real2
		movap#x	temp1, imag2				; temp1 = imag2
		muls#x	real2, real					; real2 *= real
		muls#x	temp1, imag					; temp1 *= imag
		subs#x	real2, temp1				; real2 -= temp1
		subs#x	real1, real2				; real1 -= real2
		muls#x	imag2, real					; imag2 *= real
		muls#x	temp0, imag					; temp0 *= imag
		adds#x	imag2, temp0				; imag2 += temp0
		subs#x	imag1, imag2				; imag1 -= imag2
		movs#x	[row1 + RE*bytes/2], real1	; row1[0].re = real1
		movs#x	[row1 + IM*bytes/2], imag1	; row1[0].im = imag1
		add		row1, step					; row1 += step
		add		row2, step					; row2 += step
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of scale loop]--------------------
.exit:	ret
}

; Real number matrix
SubRow_flt32:	SUB_ROW_FLT		s
SubRow_flt64:	SUB_ROW_FLT		d

; Complex number matrix
SubRow_cmplx32:	SUB_ROW_CMPLX	s
SubRow_cmplx64:	SUB_ROW_CMPLX	d

;******************************************************************************;
;       Initialization                                                         ;
;******************************************************************************;

;==============================================================================;
;       Initialization of rectangle matrix                                     ;
;==============================================================================;
macro	INIT_RECTANGLE_FLT	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
rows	equ		rsi							; rows count
cols	equ		rdx							; columns count
value	equ		xmm0						; value to process with
;---[Internal variables]-------------------
size	equ		rax							; matrix size
if x eq s
Init	= Init_flt32						; Init function
else if x eq d
Init	= Init_flt64						; Init function
end if
;---[Check elements count]-----------------
		mov		size, rows
		imul	size, cols					; size = rows * cols
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Call init functon]--------------------
		mov		rows, size
		mov		size, Init
		jmp		size						; call Init (matrix, rows * cols, value)
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INIT_RECTANGLE_CMPLX	cmd, x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
rows	equ		rsi							; rows count
cols	equ		rdx							; columns count
real	equ		xmm0						; real part of value to process with
imag	equ		xmm1						; imaginary part of value to process with
;---[Internal variables]-------------------
size	equ		rax							; matrix size
if x eq s
scale	= 3									; scale value
else if x eq d
scale	= 4									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
if x eq d
	unpcklp#x	real, imag					; pack complex number
end if
;---[Check elements count]-----------------
		mov		size, rows
		imul	size, cols					; size = rows * cols
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Initialization loop]------------------
.loop:	cmd		[matrix], real				; matrix[0] = real
		add		matrix, bytes				; matrix++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

; Real number matrix
InitRectangle_flt32:	INIT_RECTANGLE_FLT		s
InitRectangle_flt64:	INIT_RECTANGLE_FLT		d

; Complex number matrix
InitRectangle_cmplx32:	INIT_RECTANGLE_CMPLX	movlps, s
InitRectangle_cmplx64:	INIT_RECTANGLE_CMPLX	movupd, d

;==============================================================================;
;       Initialization of diagonal matrix                                      ;
;==============================================================================;
macro	INIT_DIAGONAL_FLT	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
value	equ		xmm0						; value to process with
;---[Internal variables]-------------------
step	equ		rdx							; step size
stack	equ		rsp							; stack pointer
s_mtrx	equ		stack + 0 * 8				; stack position of "matrix" variable
s_order	equ		stack + 1 * 8				; stack position of "order" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
if x eq s
Init	= InitRectangle_flt32				; Matrix initialization function
scale	= 2									; scale value
else if x eq d
Init	= InitRectangle_flt64				; Matrix initialization function
scale	= 3									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		movs#x	[s_value], value			; save "value" variable into the stack
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.exit						;     then go to exit
;---[Call matrix init functon]-------------
		xorp#x	value, value				; value = 0
		mov		param3, order
		call	Init						; call Init (matrix, order, order, value)
;---[Set diagonal elements]----------------
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		order, [s_order]			; get "order" variable from the stack
		movs#x	value, [s_value]			; get "value" variable from the stack
		mov		step, order
		shl		step, scale
		add		step, bytes					; step = order << scale + bytes
;---[Diagonal elemens loop]----------------
.loop:	movs#x	[matrix], value				; matrix[0] = value
		add		matrix, step				; matrix += step
		sub		order, 1					; order--
		jnz		.loop						; do while (order != 0)
;---[End of diagonal elemens loop]---------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INIT_DIAGONAL_CMPLX	cmd, x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
real	equ		xmm0						; real part of value to process with
imag	equ		xmm1						; imaginary part of value to process with
;---[Internal variables]-------------------
step	equ		rcx							; step size
stack	equ		rsp							; stack pointer
s_mtrx	equ		stack + 0 * 8				; stack position of "matrix" variable
s_order	equ		stack + 1 * 8				; stack position of "order" variable
s_val	equ		stack + 2 * 8				; stack position of "value" variable
if x eq s
Init	= InitRectangle_cmplx32				; Matrix initialization function
scale	= 3									; scale value
else if x eq d
Init	= InitRectangle_cmplx64				; Matrix initialization function
scale	= 4									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
if x eq d
	unpcklp#x	real, imag					; pack complex number
end if
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		cmd		[s_val], real				; save "value" variable into the stack
;---[Check elements count]-----------------
		test	order, order				; if (order == 0)
		jz		.exit						;     then go to exit
;---[Call matrix init functon]-------------
		xorp#x	real, real					; real = 0
		mov		param3, order
		call	Init						; call Init (matrix, order, order, value)
;---[Set diagonal elements]----------------
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		order, [s_order]			; get "order" variable from the stack
		cmd		real, [s_val]				; get "value" variable from the stack
		mov		step, order
		shl		step, scale
		add		step, bytes					; step = order << scale + bytes
;---[Initialization loop]------------------
.loop:	cmd		[matrix], real				; matrix[0] = real
		add		matrix, step				; matrix += step
		sub		order, 1					; order--
		jnz		.loop						; do while (order != 0)
;---[Normal exit]--------------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}

; Real number matrix
InitDiagonal_flt32:		INIT_DIAGONAL_FLT	s
InitDiagonal_flt64:		INIT_DIAGONAL_FLT	d

; Complex number matrix
InitDiagonal_cmplx32:	INIT_DIAGONAL_CMPLX	movlps, s
InitDiagonal_cmplx64:	INIT_DIAGONAL_CMPLX	movupd, d

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;
macro	COPY	cmplx, x
{
;---[Parameters]---------------------------
target	equ		rdi							; target matrix
source	equ		rsi							; source matrix
rows	equ		rdx							; rows count
cols	equ		rcx							; columns count
;---[Internal variables]-------------------
result	equ		rax							; result register
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
;------------------------------------------
		mov		result, rows
		imul	result, cols				; result = rows * cols
if cmplx
		add		result, result				; result *= 2
end if
		shl		result, scale
		mov		rows, result
		mov		result, Copy
		jmp		result						; call Copy (target, source, rows * cols)
}

; Real number matrix
CopyMatrix_flt32:	COPY	0, s
CopyMatrix_flt64:	COPY	0, d

; Complex number matrix
CopyMatrix_cmplx32:	COPY	1, s
CopyMatrix_cmplx64:	COPY	1, d

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unary operations                                                       ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Negative matrix                                                        ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	NEGATIVE	cmplx, x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
rows	equ		rsi							; rows count
cols	equ		rdx							; columns count
;---[Internal variables]-------------------
result	equ		rax							; result register
if x eq s
Invert	= Neg_flt32							; Inversion function
else if x eq d
Invert	= Neg_flt64							; Inversion function
end if
;------------------------------------------
		mov		result, rows
		imul	result, cols				; result = rows * cols
if cmplx
		add		result, result				; result *= 2
end if
		mov		rows, result
		mov		result, Invert
		jmp		result						; call Invert (matrix, rows * cols)
}

; Real number matrix
NegMatrix_flt32:	NEGATIVE	0, s
NegMatrix_flt64:	NEGATIVE	0, d

; Complex number matrix
NegMatrix_cmplx32:	NEGATIVE	1, s
NegMatrix_cmplx64:	NEGATIVE	1, d

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;
macro	SCALAR	Func
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
rows	equ		rsi							; rows count
cols	equ		rdx							; columns count
value	equ		xmm0						; value to process with
;---[Internal variables]-------------------
result	equ		rax							; result register
temp	equ		xmm1						; temporary register
;------------------------------------------
		mov		result, rows
		imul	result, cols				; result = rows * cols
		mov		rows, result
		mov		result, Func
		jmp		result						; call Func (matrix, rows * cols, value)
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	VECTOR	Func, cmplx
{
;---[Parameters]---------------------------
target	equ		rdi							; target matrix
source	equ		rsi							; source matrix
rows	equ		rdx							; rows count
cols	equ		rcx							; columns count
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, rows
		imul	result, cols				; result = rows * cols
if cmplx
		add		result, result				; result *= 2
end if
		mov		rows, result
		mov		result, Func
		jmp		result						; call Func (target, source, rows * cols)
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Addition                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Real number matrix
AddMatrix_flt32:	VECTOR	Add_flt32, 0
AddMatrix_flt64:	VECTOR	Add_flt64, 0

; Complex number matrix
AddMatrix_cmplx32:	VECTOR	Add_flt32, 1
AddMatrix_cmplx64:	VECTOR	Add_flt64, 1

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Subtraction                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Real number matrix
SubMatrix_flt32:	VECTOR	Sub_flt32, 0
SubMatrix_flt64:	VECTOR	Sub_flt64, 0

; Complex number matrix
SubMatrix_cmplx32:	VECTOR	Sub_flt32, 1
SubMatrix_cmplx64:	VECTOR	Sub_flt64, 1

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication by scalar value                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SCALAR_MUL	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
rows	equ		rsi							; rows count
cols	equ		rdx							; columns count
real	equ		xmm0						; real part of value to process with
imag	equ		xmm1						; imaginary part of value to process with
;---[Internal variables]-------------------
result	equ		rax							; result register
temp0	equ		xmm2						; temporary register #1
temp1	equ		xmm3						; temporary register #2
stack	equ		rsp							; stack pointer
s_real	equ		stack + 0 * 8				; stack position of "real" variable
s_imag	equ		stack + 1 * 8				; stack position of "imag" variable
if x eq s
scale	= 3									; scale value
else if x eq d
scale	= 4									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
if x eq s
		movap#x	imag, real
		shufp#x	imag, imag, 0x1				; unpack complex number
end if
		movs#x	[s_real], real				; save "real" variable into the stack
		movs#x	[s_imag], imag				; save "imag" variable into the stack
;---[Check elements count]-----------------
		mov		result, rows
		imul	result, cols				; result = rows * cols
		test	result, result				; if (result == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.loop:	movs#x	real, [matrix + RE*bytes/2]	; real = matrix[0].re
		movs#x	imag, [matrix + IM*bytes/2]	; imag = matrix[0].im
		CMUL	real, imag, [s_real], [s_imag], temp0, temp1, x
		movs#x	[matrix + RE*bytes/2], real	; matrix[0].re = real
		movs#x	[matrix + IM*bytes/2], imag	; matrix[0].im = imag
		add		matrix, bytes				; matrix++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}

; Real number matrix
MulValue_flt32:		SCALAR	Mul_flt32
MulValue_flt64:		SCALAR	Mul_flt64

; Complex number matrix
MulValue_cmplx32:	SCALAR_MUL	s
MulValue_cmplx64:	SCALAR_MUL	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division by scalar value                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SCALAR_DIV	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
rows	equ		rsi							; rows count
cols	equ		rdx							; columns count
real	equ		xmm0						; real part of value to process with
imag	equ		xmm1						; imaginary part of value to process with
;---[Internal variables]-------------------
result	equ		rax							; result register
re		equ		xmm2						; real part of source complex number
im		equ		xmm3						; imaginary part of source complex number
stack	equ		rsp							; stack pointer
s_real	equ		stack + 0 * 8				; stack position of "real" variable
s_imag	equ		stack + 1 * 8				; stack position of "imag" variable
if x eq s
DivFunc	= DivNum_flt32						; Division of complex numbers
scale	= 3									; scale value
else if x eq d
DivFunc	= DivNum_flt64						; Division of complex numbers
scale	= 4									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
if x eq s
		movap#x	imag, real
		shufp#x	imag, imag, 0x1				; unpack complex number
end if
		movs#x	[s_real], real				; save "real" variable into the stack
		movs#x	[s_imag], imag				; save "imag" variable into the stack
;---[Check elements count]-----------------
		mov		result, rows
		imul	result, cols				; result = rows * cols
		test	result, result				; if (result == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.loop:	movs#x	real, [matrix + RE*bytes/2]	; real = matrix[0].re
		movs#x	imag, [matrix + IM*bytes/2]	; imag = matrix[0].im
		movs#x	re, [s_real]				; re = value.re
		movs#x	im, [s_imag]				; im = value.im
		call	DivFunc
		movs#x	[matrix + RE*bytes/2], real	; matrix[0].re = real
		movs#x	[matrix + IM*bytes/2], imag	; matrix[0].im = imag
		add		matrix, bytes				; matrix++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}

; Real number matrix
DivValue_flt32:		SCALAR	Div_flt32
DivValue_flt64:		SCALAR	Div_flt64

; Complex number matrix
DivValue_cmplx32:	SCALAR_DIV	s
DivValue_cmplx64:	SCALAR_DIV	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication by matrix                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	MUL_MATRIX	MulRows, cmplx, scale, x
{
;---[Parameters]---------------------------
target	equ		rdi							; target matrix
source1	equ		rsi							; first source matrix
source2	equ		rdx							; second source matrix
rows	equ		rcx							; rows count of first matrix
cols	equ		r8							; columns count of second matrix
rowcols	equ		r9							; columns count of first matrix
;---[Internal variables]-------------------
sum0	equ		xmm0						; real part of sum of products
sum1	equ		xmm1						; imaginary part of sum of products
stack	equ		rsp							; stack pointer
s_tgt	equ		stack + 0 * 8				; stack position of "target" variable
s_src1	equ		stack + 1 * 8				; stack position of "source1" variable
s_src2	equ		stack + 2 * 8				; stack position of "source2" variable
s_rows	equ		stack + 3 * 8				; stack position of "rows" variable
s_cols	equ		stack + 4 * 8				; stack position of "cols" variable
s_rcols	equ		stack + 5 * 8				; stack position of "rcols" variable
s_ptr	equ		stack + 6 * 8				; stack position of "ptr" variable
s_size	equ		stack + 7 * 8				; stack position of "size" variable
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_tgt], target				; save "target" variable into the stack
		mov		[s_src1], source1			; save "source1" variable into the stack
		mov		[s_src2], source2			; save "source2" variable into the stack
		mov		[s_rows], rows				; save "rows" variable into the stack
		mov		[s_cols], cols				; save "cols" variable into the stack
		mov		[s_rcols], rowcols			; save "rowcols" variable into the stack
;---[Check rows count]---------------------
		test	rows, rows					; if (rows == 0)
		jz		.exit						;     then go to exit
;---[Check columns count]------------------
		test	cols, cols					; if (cols == 0)
		jz		.exit						;     then go to exit
;---[Check k count]------------------------
		test	rowcols, rows				; if (rowcols == 0)
		jz		.exit						;     then go to exit
;---[Multiplication loop]------------------
.loop:	mov		source2, [s_src2]			; get "source2" variable from the stack
		mov		cols, [s_cols]				; get "cols" variable from the stack
		mov		[s_ptr], source2			; ptr = source2
		mov		[s_size], cols				; size = cols
;---[Columns parsing loop]-----------------
.cloop:	mov		param1, [s_src1]
		mov		param2, [s_ptr]
		mov		param3, [s_rcols]
		mov		param4, bytes
		mov		param5, [s_cols]
		shl		param5, scale
		call	MulRows						; call MullRows (source1, ptr, rowcols, bytes, cols * bytes)
		mov		target, [s_tgt]				; get "target" variable from the stack
if cmplx
		movs#x	[target + RE*bytes/2], sum0	; target[0].re = sum0
		movs#x	[target + IM*bytes/2], sum1	; target[0].im = sum1
else
		movs#x	[target], sum0				; target[0] = sum0
end if
		add		target, bytes				; target++
		mov		[s_tgt], target				; save "target" variable into the stack
		add		qword [s_ptr], bytes		; ptr++
		sub		qword [s_size], 1			; size--
		jnz		.cloop						; do while (size != 0)
;---[End of columns parsing loop]----------
		mov		rowcols, [s_rcols]			; get "rowcols" variable from the stack
		shl		rowcols, scale				; rowcols <<= scale
		add		qword [s_src1], rowcols		; source1 += rowcols
		sub		qword [s_rows], 1			; rows--
		jnz		.loop						; do while (rows != 0)
;---[End of multiplication loop]-----------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}

; Real number matrix
MulMatrix_flt32:	MUL_MATRIX	MulRows_flt32, 0, 2, s
MulMatrix_flt64:	MUL_MATRIX	MulRows_flt64, 0, 3, d

; Complex number matrix
MulMatrix_cmplx32:	MUL_MATRIX	MulRows_cmplx32, 1, 3, s
MulMatrix_cmplx64:	MUL_MATRIX	MulRows_cmplx64, 1, 4, d

;******************************************************************************;
;       Transposition                                                          ;
;******************************************************************************;
macro	TRANSPOSE	cmd, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; target matrix
source	equ		rsi							; source matrix
rows	equ		rdx							; rows count
cols	equ		rcx							; columns count
;---[Internal variables]-------------------
ptr		equ		r8							; temporary pointer to target matrix
size1	equ		r9							; rows count
size2	equ		r10							; columns count
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
temp8	equ		xmm8						; temporary register #9
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Check rows count]---------------------
		test	rows, rows					; if (rows == 0)
		jz		.exit						;     then go to exit
;---[Check columns count]------------------
		test	cols, cols					; if (cols == 0)
		jz		.exit						;     then go to exit
;---[Check matrix type]--------------------
		cmp		rows, cols					; if (rows != cols)
		jne		.skip						;     then skip following code
		cmp		rows, 1						; if (rows == 1)
		je		.trns1						;     then go to transposition 1 branch
		cmp		rows, 2						; if (rows == 2)
		je		.trns2						;     then go to transposition 2 branch
		cmp		rows, 3						; if (rows == 3)
		je		.trns3						;     then go to transposition 3 branch
.skip:	mov		size1, rows					; size1 = rows
		shl		rows, scale					; rows <<= scale
;---[Transposition loop]-------------------
.loop:	mov		ptr, target					; ptr = target
		mov		size2, cols					; size2 = cols
;---[Internal loop]------------------------
.iloop:	cmd		temp0, [source]
		cmd		[ptr], temp0				; ptr[0] = source[0]
		add		source, bytes				; source++
		add		ptr, rows					; ptr += rows
		sub		size2, 1					; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		add		target, bytes				; target++
		sub		size1, 1					; size1--
		jnz		.loop						; do while (size1 != 0)
;---[End of transposition loop]------------
.exit:	ret
;---[Transposition of 1 order matrix]------
.trns1:	cmd		temp0, [source + 0 * bytes]	; temp0 = source[0]
		cmd		[target + 0 * bytes], temp0	; target[0] = temp0
		ret
;---[Transposition of 2 order matrix]------
.trns2:	cmd		temp0, [source + 0 * bytes]	; temp0 = source[0]
		cmd		temp1, [source + 1 * bytes]	; temp1 = source[1]
		cmd		temp2, [source + 2 * bytes]	; temp2 = source[2]
		cmd		temp3, [source + 3 * bytes]	; temp3 = source[3]
		cmd		[target + 0 * bytes], temp0	; target[0] = temp0
		cmd		[target + 1 * bytes], temp2	; target[1] = temp2
		cmd		[target + 2 * bytes], temp1	; target[2] = temp1
		cmd		[target + 3 * bytes], temp3	; target[3] = temp3
		ret
;---[Transposition of 3 order matrix]------
.trns3:	cmd		temp0, [source + 0 * bytes]	; temp0 = source[0]
		cmd		temp1, [source + 1 * bytes]	; temp1 = source[1]
		cmd		temp2, [source + 2 * bytes]	; temp2 = source[2]
		cmd		temp3, [source + 3 * bytes]	; temp3 = source[3]
		cmd		temp4, [source + 4 * bytes]	; temp4 = source[4]
		cmd		temp5, [source + 5 * bytes]	; temp5 = source[5]
		cmd		temp6, [source + 6 * bytes]	; temp6 = source[6]
		cmd		temp7, [source + 7 * bytes]	; temp7 = source[7]
		cmd		temp8, [source + 8 * bytes]	; temp8 = source[8]
		cmd		[target + 0 * bytes], temp0	; target[0] = temp0
		cmd		[target + 1 * bytes], temp3	; target[1] = temp3
		cmd		[target + 2 * bytes], temp6	; target[2] = temp6
		cmd		[target + 3 * bytes], temp1	; target[3] = temp1
		cmd		[target + 4 * bytes], temp4	; target[4] = temp4
		cmd		[target + 5 * bytes], temp7	; target[5] = temp7
		cmd		[target + 6 * bytes], temp2	; target[6] = temp2
		cmd		[target + 7 * bytes], temp5	; target[7] = temp5
		cmd		[target + 8 * bytes], temp8	; target[8] = temp8
		ret
}

; Real number matrix
Transpose_flt32:	TRANSPOSE	movss, 2
Transpose_flt64:	TRANSPOSE	movsd, 3

; Complex number matrix
Transpose_cmplx32:	TRANSPOSE	movlps, 3
Transpose_cmplx64:	TRANSPOSE	movupd, 4

;******************************************************************************;
;       Inverse matrix                                                         ;
;******************************************************************************;

;==============================================================================;
;       Inversion of 1 order matrix                                            ;
;==============================================================================;
macro	INVERSE1_FLT	x
{
;---[Parameters]---------------------------
inv		equ		rdi							; inverse matrix
mtrx	equ		rsi							; original matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
temp0	equ		xmm0						; temporary register #1
zero	equ		xmm1						; 0.0
one		equ		xmm2						; 1.0
if x eq s
oneval	= PONE_FLT32						; 1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; 1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
	DET1_FLT	mtrx, temp0, x
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0.0
		comis#x	temp0, zero					; if (temp0 == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (mtrx)
;---[Fill inverse matrix]------------------
		movs#x	[inv + 0 * bytes], one		; inv[0] = 1.0 / det (mtrx)
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INVERSE1_CMPLX	x
{
;---[Parameters]---------------------------
inv		equ		rdi							; inverse matrix
mtrx	equ		rsi							; original matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
rtemp0	equ		xmm0						; temporary register #1
itemp0	equ		xmm1						; temporary register #2
re		equ		xmm2						; real part of source complex number
im		equ		xmm3						; imaginary part of source complex number
zero	equ		xmm4						; 0.0
mask	equ		xmm6						; data mask
if x eq s
Inverse	= InvNum_flt32						; Inverse complex number function
scale	= 2									; scale value
else if x eq d
Inverse	= InvNum_flt64						; Inverse complex number function
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
	DET1_CMPLX	mtrx, rtemp0, itemp0, x
;---[Check matrix determinant]-------------
		CMAG	re, im, rtemp0, itemp0, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		call	Inverse						; call Inverse (det)
;---[Fill inverse matrix]------------------
		movs#x	[inv+(0+RE)*bytes], rtemp0
		movs#x	[inv+(0+IM)*bytes], itemp0	; inv[0] = temp0
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}

; Real number matrix
Inverse1_flt32:		INVERSE1_FLT	s
Inverse1_flt64:		INVERSE1_FLT	d

; Complex number matrix
Inverse1_cmplx32:	INVERSE1_CMPLX	s
Inverse1_cmplx64:	INVERSE1_CMPLX	d

;==============================================================================;
;       Inversion of 2 order matrix                                            ;
;==============================================================================;
macro	INVERSE2_FLT	x
{
;---[Parameters]---------------------------
inv		equ		rdi							; inverse matrix
mtrx	equ		rsi							; original matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
zero	equ		xmm2						; 0.0
one		equ		xmm3						; 1.0
mask	equ		xmm4						; sign mask
if x eq s
smask	= SMASK_FLT32						; sign mask
oneval	= PONE_FLT32						; 1.0
scale	= 2									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
oneval	= PONE_FLT64						; 1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
	DET2_FLT	mtrx, temp0, temp1, x
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0.0
		comis#x	temp0, zero					; if (temp0 == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (mtrx)
;---[Fill inverse matrix]------------------
		initreg	mask, status, smask			; mask = smask
		movs#x	temp0, [mtrx + 3 * bytes]	; temp0 = mtrx[3]
		muls#x	temp0, one					; temp0 /= det (mtrx)
		movs#x	[inv + 0 * bytes], temp0	; inv[0] = temp0
		movs#x	temp0, [mtrx + 1 * bytes]	; temp0 = mtrx[1]
		muls#x	temp0, one					; temp0 /= det (mtrx)
		xorp#x	temp0, mask					; temp0 = -temp0
		movs#x	[inv + 1 * bytes], temp0	; inv[1] = temp0
		movs#x	temp0, [mtrx + 2 * bytes]	; temp0 = mtrx[2]
		muls#x	temp0, one					; temp0 /= det (mtrx)
		xorp#x	temp0, mask					; temp0 = -temp0
		movs#x	[inv + 2 * bytes], temp0	; inv[2] = temp0
		movs#x	temp0, [mtrx + 0 * bytes]	; temp0 = mtrx[0]
		muls#x	temp0, one					; temp0 /= det (mtrx)
		movs#x	[inv + 3 * bytes], temp0	; inv[3] = temp0
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INVERSE2_CMPLX	x
{
;---[Parameters]---------------------------
inv		equ		rdi							; inverse matrix
mtrx	equ		rsi							; original matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
rtemp0	equ		xmm0						; temporary register #1
itemp0	equ		xmm1						; temporary register #2
real	equ		xmm2						; real part of result
imag	equ		xmm3						; imaginary part of result
re		equ		xmm4						; real part of source complex number
im		equ		xmm5						; imaginary part of source complex number
zero	equ		real						; 0.0
mask	equ		imag						; data mask
stack	equ		rsp							; stack pointer
s_rdet	equ		stack + 0 * 8				; stack position of "rdet" variable
s_idet	equ		stack + 1 * 8				; stack position of "idet" variable
if x eq s
smask	= SMASK_FLT32						; sign mask
Inverse	= InvNum_flt32						; Inverse complex number function
scale	= 2									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
Inverse	= InvNum_flt64						; Inverse complex number function
scale	= 3									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
		sub		stack, space				; reserving stack size for local vars
	DET2_CMPLX	mtrx, rtemp0, itemp0, real, imag, re, im, x
;---[Check matrix determinant]-------------
		CMAG	re, im, rtemp0, itemp0, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		call	Inverse						; call Inverse (det)
		movs#x	[s_rdet], rtemp0			; rdet = rtemp0
		movs#x	[s_idet], itemp0			; idet = itemp0
;---[Fill inverse matrix]------------------
		initreg	mask, status, smask			; mask = smask
		movs#x	rtemp0, [mtrx+(6+RE)*bytes]
		movs#x	itemp0, [mtrx+(6+IM)*bytes]	; temp0 = mtrx[3]
		CMUL	rtemp0, itemp0, [s_rdet], [s_idet], re, im, x
		movs#x	[inv+(0+RE)*bytes], rtemp0
		movs#x	[inv+(0+IM)*bytes], itemp0	; inv[0] = temp0
		movs#x	rtemp0, [mtrx+(2+RE)*bytes]
		movs#x	itemp0, [mtrx+(2+IM)*bytes]	; temp0 = mtrx[1]
		CMUL	rtemp0, itemp0, [s_rdet], [s_idet], re, im, x
		xorp#x	rtemp0, mask				; rtemp0 = -rtemp0
		xorp#x	itemp0, mask				; itemp0 = -itemp0
		movs#x	[inv+(2+RE)*bytes], rtemp0
		movs#x	[inv+(2+IM)*bytes], itemp0	; inv[1] = temp0
		movs#x	rtemp0, [mtrx+(4+RE)*bytes]
		movs#x	itemp0, [mtrx+(4+IM)*bytes]	; temp0 = mtrx[2]
		CMUL	rtemp0, itemp0, [s_rdet], [s_idet], re, im, x
		xorp#x	rtemp0, mask				; rtemp0 = -rtemp0
		xorp#x	itemp0, mask				; itemp0 = -itemp0
		movs#x	[inv+(4+RE)*bytes], rtemp0
		movs#x	[inv+(4+IM)*bytes], itemp0	; inv[2] = temp0
		movs#x	rtemp0, [mtrx+(0+RE)*bytes]
		movs#x	itemp0, [mtrx+(0+IM)*bytes]	; temp0 = mtrx[0]
		CMUL	rtemp0, itemp0, [s_rdet], [s_idet], re, im, x
		movs#x	[inv+(6+RE)*bytes], rtemp0
		movs#x	[inv+(6+IM)*bytes], itemp0	; inv[3] = temp0
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Real number matrix
Inverse2_flt32:		INVERSE2_FLT	s
Inverse2_flt64:		INVERSE2_FLT	d

; Complex number matrix
Inverse2_cmplx32:	INVERSE2_CMPLX	s
Inverse2_cmplx64:	INVERSE2_CMPLX	d

;==============================================================================;
;       Inversion of 3 order matrix                                            ;
;==============================================================================;
macro	INVERSE3_FLT	x
{
;---[Parameters]---------------------------
inv		equ		rdi							; inverse matrix
mtrx	equ		rsi							; original matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
temp8	equ		xmm8						; temporary register #9
zero	equ		xmm9						; 0.0
one		equ		xmm10						; 1.0
if x eq s
oneval	= PONE_FLT32						; 1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; 1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
	DET3_FLT	mtrx, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, x
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0.0
		comis#x	temp0, zero					; if (temp0 == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (mtrx)
;---[Fill inverse matrix]------------------
		muls#x	temp3, one					; temp3 /= det (mtrx)
		movs#x	[inv + 0 * bytes], temp3	; inv[0] = temp3
		muls#x	temp4, one					; temp4 /= det (mtrx)
		movs#x	[inv + 1 * bytes], temp4	; inv[1] = temp4
		muls#x	temp5, one					; temp5 /= det (mtrx)
		movs#x	[inv + 2 * bytes], temp5	; inv[2] = temp5
		movs#x	temp3, [mtrx + 5 * bytes]
		muls#x	temp3, [mtrx + 6 * bytes]	; temp3 = mtrx[5] * mtrx[6]
		movs#x	temp6, [mtrx + 3 * bytes]
		muls#x	temp6, [mtrx + 8 * bytes]	; temp6 = mtrx[3] * mtrx[8]
		subs#x	temp3, temp6				; temp3 -= temp6
		movs#x	temp4, [mtrx + 0 * bytes]
		muls#x	temp4, [mtrx + 8 * bytes]	; temp4 = mtrx[0] * mtrx[8]
		movs#x	temp7, [mtrx + 2 * bytes]
		muls#x	temp7, [mtrx + 6 * bytes]	; temp7 = mtrx[2] * mtrx[6]
		subs#x	temp4, temp7				; temp4 -= temp7
		movs#x	temp5, [mtrx + 2 * bytes]
		muls#x	temp5, [mtrx + 3 * bytes]	; temp5 = mtrx[2] * mtrx[3]
		movs#x	temp8, [mtrx + 0 * bytes]
		muls#x	temp8, [mtrx + 5 * bytes]	; temp8 = mtrx[0] * mtrx[5]
		subs#x	temp5, temp8				; temp5 -= temp8
		muls#x	temp3, one					; temp3 /= det (mtrx)
		movs#x	[inv + 3 * bytes], temp3	; inv[3] = temp3
		muls#x	temp4, one					; temp4 /= det (mtrx)
		movs#x	[inv + 4 * bytes], temp4	; inv[4] = temp4
		muls#x	temp5, one					; temp5 /= det (mtrx)
		movs#x	[inv + 5 * bytes], temp5	; inv[5] = temp5
		movs#x	temp3, [mtrx + 3 * bytes]
		muls#x	temp3, [mtrx + 7 * bytes]	; temp3 = mtrx[3] * mtrx[7]
		movs#x	temp6, [mtrx + 4 * bytes]
		muls#x	temp6, [mtrx + 6 * bytes]	; temp6 = mtrx[4] * mtrx[6]
		subs#x	temp3, temp6				; temp3 -= temp6
		movs#x	temp4, [mtrx + 1 * bytes]
		muls#x	temp4, [mtrx + 6 * bytes]	; temp4 = mtrx[1] * mtrx[6]
		movs#x	temp7, [mtrx + 0 * bytes]
		muls#x	temp7, [mtrx + 7 * bytes]	; temp7 = mtrx[0] * mtrx[7]
		subs#x	temp4, temp7				; temp4 -= temp7
		movs#x	temp5, [mtrx + 0 * bytes]
		muls#x	temp5, [mtrx + 4 * bytes]	; temp5 = mtrx[0] * mtrx[4]
		movs#x	temp8, [mtrx + 1 * bytes]
		muls#x	temp8, [mtrx + 3 * bytes]	; temp8 = mtrx[1] * mtrx[3]
		subs#x	temp5, temp8				; temp5 -= temp8
		muls#x	temp3, one					; temp3 /= det (mtrx)
		movs#x	[inv + 6 * bytes], temp3	; inv[6] = temp3
		muls#x	temp4, one					; temp4 /= det (mtrx)
		movs#x	[inv + 7 * bytes], temp4	; inv[7] = temp4
		muls#x	temp5, one					; temp5 /= det (mtrx)
		movs#x	[inv + 8 * bytes], temp5	; inv[8] = temp5
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INVERSE3_CMPLX	x
{
;---[Parameters]---------------------------
inv		equ		rdi							; inverse matrix
mtrx	equ		rsi							; original matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
rtemp0	equ		xmm0						; temporary register #1
itemp0	equ		xmm1						; temporary register #2
rtemp1	equ		xmm2						; temporary register #3
itemp1	equ		xmm3						; temporary register #4
rtemp2	equ		xmm4						; temporary register #5
itemp2	equ		xmm5						; temporary register #6
rtemp3	equ		xmm6						; temporary register #7
itemp3	equ		xmm7						; temporary register #8
rtemp4	equ		xmm8						; temporary register #9
itemp4	equ		xmm9						; temporary register #10
rtemp5	equ		xmm10						; temporary register #11
itemp5	equ		xmm11						; temporary register #12
real	equ		xmm12						; real part of result
imag	equ		xmm13						; imaginary part of result
re		equ		xmm14						; real part of source complex number
im		equ		xmm15						; imaginary part of source complex number
zero	equ		real						; 0.0
mask	equ		imag						; data mask
stack	equ		rsp							; stack pointer
s_rdet	equ		stack + 0 * 8				; stack position of "rdet" variable
s_idet	equ		stack + 1 * 8				; stack position of "idet" variable
if x eq s
Inverse	= InvNum_flt32						; Inverse complex number function
scale	= 2									; scale value
else if x eq d
Inverse	= InvNum_flt64						; Inverse complex number function
scale	= 3									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
		sub		stack, space				; reserving stack size for local vars
	DET3_CMPLX	mtrx, rtemp0, itemp0, rtemp1, itemp1, rtemp2, itemp2, rtemp3, itemp3, rtemp4, itemp4, rtemp5, itemp5, real, imag, re, im, x
;---[Check matrix determinant]-------------
		CMAG	re, im, rtemp0, itemp0, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		call	Inverse						; call Inverse (det)
		movs#x	[s_rdet], rtemp0			; rdet = rtemp0
		movs#x	[s_idet], itemp0			; idet = itemp0
;---[Fill inverse matrix]------------------
		CMUL	rtemp3, itemp3, [s_rdet], [s_idet], re, im, x
		movs#x	[inv+(0+RE)*bytes], rtemp3
		movs#x	[inv+(0+IM)*bytes], itemp3	; inv[0] = temp3
		CMUL	rtemp4, itemp4, [s_rdet], [s_idet], re, im, x
		movs#x	[inv+(2+RE)*bytes], rtemp4
		movs#x	[inv+(2+IM)*bytes], itemp4	; inv[1] = temp4
		CMUL	rtemp5, itemp5, [s_rdet], [s_idet], re, im, x
		movs#x	[inv+(4+RE)*bytes], rtemp5
		movs#x	[inv+(4+IM)*bytes], itemp5	; inv[2] = temp5
		movs#x	rtemp3, [mtrx+(10+RE)*bytes]
		movs#x	itemp3, [mtrx+(10+IM)*bytes]; temp3 = mtrx[5] * mtrx[6]
		CMUL	rtemp3, itemp3, [mtrx+(12+RE)*bytes], [mtrx+(12+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(6+RE)*bytes]
		movs#x	imag, [mtrx+(6+IM)*bytes]	; number = mtrx[3] * mtrx[8]
		CMUL	real, imag, [mtrx+(16+RE)*bytes], [mtrx+(16+IM)*bytes], re, im, x
		subs#x	rtemp3, real
		subs#x	itemp3, imag				; temp3 -= number
		movs#x	rtemp4, [mtrx+(0+RE)*bytes]
		movs#x	itemp4, [mtrx+(0+IM)*bytes]	; temp4 = mtrx[0] * mtrx[8]
		CMUL	rtemp4, itemp4, [mtrx+(16+RE)*bytes], [mtrx+(16+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(4+RE)*bytes]
		movs#x	imag, [mtrx+(4+IM)*bytes]	; number = mtrx[2] * mtrx[6]
		CMUL	real, imag, [mtrx+(12+RE)*bytes], [mtrx+(12+IM)*bytes], re, im, x
		subs#x	rtemp4, real
		subs#x	itemp4, imag				; temp4 -= number
		movs#x	rtemp5, [mtrx+(4+RE)*bytes]
		movs#x	itemp5, [mtrx+(4+IM)*bytes]	; temp5 = mtrx[2] * mtrx[3]
		CMUL	rtemp5, itemp5, [mtrx+(6+RE)*bytes], [mtrx+(6+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(0+RE)*bytes]
		movs#x	imag, [mtrx+(0+IM)*bytes]	; number = mtrx[0] * mtrx[5]
		CMUL	real, imag, [mtrx+(10+RE)*bytes], [mtrx+(10+IM)*bytes], re, im, x
		subs#x	rtemp5, real
		subs#x	itemp5, imag				; temp5 -= number
		CMUL	rtemp3, itemp3, [s_rdet], [s_idet], re, im, x
		movs#x	[inv+(6+RE)*bytes], rtemp3
		movs#x	[inv+(6+IM)*bytes], itemp3	; inv[3] = temp3
		CMUL	rtemp4, itemp4, [s_rdet], [s_idet], re, im, x
		movs#x	[inv+(8+RE)*bytes], rtemp4
		movs#x	[inv+(8+IM)*bytes], itemp4	; inv[4] = temp4
		CMUL	rtemp5, itemp5, [s_rdet], [s_idet], re, im, x
		movs#x	[inv+(10+RE)*bytes], rtemp5
		movs#x	[inv+(10+IM)*bytes], itemp5	; inv[5] = temp5
		movs#x	rtemp3, [mtrx+(6+RE)*bytes]
		movs#x	itemp3, [mtrx+(6+IM)*bytes]	; temp3 = mtrx[3] * mtrx[7]
		CMUL	rtemp3, itemp3, [mtrx+(14+RE)*bytes], [mtrx+(14+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(8+RE)*bytes]
		movs#x	imag, [mtrx+(8+IM)*bytes]	; number = mtrx[4] * mtrx[6]
		CMUL	real, imag, [mtrx+(12+RE)*bytes], [mtrx+(12+IM)*bytes], re, im, x
		subs#x	rtemp3, real
		subs#x	itemp3, imag				; temp3 -= number
		movs#x	rtemp4, [mtrx+(2+RE)*bytes]
		movs#x	itemp4, [mtrx+(2+IM)*bytes]	; temp4 = mtrx[1] * mtrx[6]
		CMUL	rtemp4, itemp4, [mtrx+(12+RE)*bytes], [mtrx+(12+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(0+RE)*bytes]
		movs#x	imag, [mtrx+(0+IM)*bytes]	; number = mtrx[0] * mtrx[7]
		CMUL	real, imag, [mtrx+(14+RE)*bytes], [mtrx+(14+IM)*bytes], re, im, x
		subs#x	rtemp4, real
		subs#x	itemp4, imag				; temp4 -= number
		movs#x	rtemp5, [mtrx+(0+RE)*bytes]
		movs#x	itemp5, [mtrx+(0+IM)*bytes]	; temp5 = mtrx[0] * mtrx[4]
		CMUL	rtemp5, itemp5, [mtrx+(8+RE)*bytes], [mtrx+(8+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(2+RE)*bytes]
		movs#x	imag, [mtrx+(2+IM)*bytes]	; number = mtrx[1] * mtrx[3]
		CMUL	real, imag, [mtrx+(6+RE)*bytes], [mtrx+(6+IM)*bytes], re, im, x
		subs#x	rtemp5, real
		subs#x	itemp5, imag				; temp5 -= number
		CMUL	rtemp3, itemp3, [s_rdet], [s_idet], re, im, x
		movs#x	[inv+(12+RE)*bytes], rtemp3
		movs#x	[inv+(12+IM)*bytes], itemp3	; inv[6] = temp3
		CMUL	rtemp4, itemp4, [s_rdet], [s_idet], re, im, x
		movs#x	[inv+(14+RE)*bytes], rtemp4
		movs#x	[inv+(14+IM)*bytes], itemp4	; inv[7] = temp4
		CMUL	rtemp5, itemp5, [s_rdet], [s_idet], re, im, x
		movs#x	[inv+(16+RE)*bytes], rtemp5
		movs#x	[inv+(16+IM)*bytes], itemp5	; inv[8] = temp5
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Real number matrix
Inverse3_flt32:		INVERSE3_FLT	s
Inverse3_flt64:		INVERSE3_FLT	d

; Complex number matrix
Inverse3_cmplx32:	INVERSE3_CMPLX	s
Inverse3_cmplx64:	INVERSE3_CMPLX	d

;==============================================================================;
;       Inversion of custom order matrix                                       ;
;==============================================================================;
macro	INVERSE_CORE_FLT	x
{
;---[Parameters]---------------------------
inverse	equ		rdi							; inverse matrix
matrix	equ		rsi							; original matrix
order	equ		rdx							; matrix order
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
;---[Internal variables]-------------------
status	equ		rax							; operation status
mptr	equ		r10							; pointer to source matrix
iptr	equ		r11							; pointer to inverse matrix
value	equ		xmm0						; scale coefficient
temp	equ		xmm1						; temporary register
zero	equ		xmm2						; 0.0
one		equ		xmm3						; 1.0
stack	equ		rsp							; stack pointer
s_inv	equ		stack + 0 * 8				; stack position of "inverse" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_order	equ		stack + 2 * 8				; stack position of "order" variable
s_step0	equ		stack + 3 * 8				; stack position of "step0" variable
s_step1	equ		stack + 4 * 8				; stack position of "step1" variable
s_step2	equ		stack + 5 * 8				; stack position of "step2" variable
s_size1	equ		stack + 6 * 8				; stack position of "size1" variable
s_size2	equ		stack + 7 * 8				; stack position of "size2" variable
s_mptr	equ		stack + 8 * 8				; stack position of "mptr" variable
s_iptr	equ		stack + 9 * 8				; stack position of "iptr" variable
s_temp	equ		stack + 10 * 8				; stack position of "temp" variable
s_value	equ		stack + 11 * 8				; stack position of "value" variable
s_one	equ		stack + 12 * 8				; stack position of "one" variable
if x eq s
Swap	= SwapRows_flt32					; Swap matrix rows function
SubRow	= SubRow_flt32						; Subtract matrix row function
oneval	= PONE_FLT32						; 1.0
else if x eq d
Swap	= SwapRows_flt64					; Swap matrix rows function
SubRow	= SubRow_flt64						; Subtract matrix row function
oneval	= PONE_FLT64						; 1.0
end if
space	= 13 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		initreg	one, status, oneval			; one = 1.0
		lea		status, [order - 1]			; size1 = order - 1
		test	status, status				; if (size1 == 0)
		jz		.exit						;     then go to exit
		mov		[s_inv], inverse			; save "inverse" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_size1], status			; save "size1" variable into the stack
		movs#x	[s_one], one				; one = 1.0
;---[Inversion loop]-----------------------
.loop:	lea		mptr, [matrix + step1]		; mptr = matrix + step1
		lea		iptr, [inverse + step1]		; iptr = inverse + step1
		mov		status, [s_size1]			; size2 = size1
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_iptr], iptr				; save "iptr" variable into the stack
		mov		[s_size2], status			; save "size2" variable into the stack
		movs#x	value, [matrix]				; value = matrix[0]
		xorp#x	zero, zero					; zero = 0.0
		comis#x	value, zero					; if (value == 0.0)
		je		.sloop						;     then go to seeking loop
		movs#x	temp, [s_one]
		divs#x	temp, value					; temp = 1.0 / matrix[0]
		movs#x	[s_temp], temp				; save "temp" variable into the stack
;---[Internal loop]------------------------
.iloop:	movs#x	value, [mptr]
		muls#x	value, [s_temp]				; value = mptr[0] / matrix[0]
		movs#x	[s_value], value			; save "value" variable into the stack
		xorp#x	zero, zero
		movs#x	[mptr], zero				; mptr[0] = 0.0
		mov		param1, [s_mptr]
		add		param1, [s_step2]
		mov		param2, [s_mtrx]
		add		param2, [s_step2]
		mov		param3, [s_size1]
		mov		param4, [s_step2]
		call	SubRow						; call SubRow (mptr + step2, matrix + step2, size1, step2, value)
		movs#x	value, [s_value]
		mov		param1, [s_iptr]
		mov		param2, [s_inv]
		mov		param3, [s_order]
		mov		param4, [s_step2]
		call	SubRow						; call SubRow (iptr, inverse, order, step2, value)
.back:	mov		mptr, [s_mptr]				; get "mptr" variable from the stack
		mov		iptr, [s_iptr]				; get "iptr" variable from the stack
		add		mptr, [s_step1]				; mptr += step1
		add		iptr, [s_step1]				; iptr += step1
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_iptr], iptr				; save "iptr" variable into the stack
		sub		qword [s_size2], 1			; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		inverse, [s_inv]			; get "inverse" variable from the stack
		mov		step1, [s_step1]			; get "step1" variable from the stack
		add		matrix, [s_step0]			; matrix += step0
		add		inverse, [s_step1]			; inverse += step1
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_inv], inverse			; save "inverse" variable into the stack
		sub		qword [s_size1], 1			; size1--
		jnz		.loop						; do while (size1 != 0)
;---[End of inversion loop]----------------
.exit:	mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Seeking loop]-------------------------
.sloop:	movs#x	value, [mptr]				; value = mptr[0]
		xorp#x	zero, zero					; zero = 0.0
		comis#x	value, zero					; if (value != 0.0)
		jne		.swap						;     then go to swap branch
		add		mptr, [s_step1]				; mptr += step1
		add		iptr, [s_step1]				; iptr += step1
		sub		qword [s_size2], 1			; size2--
		jnz		.sloop						; do while (size2 != 0)
;---[End of seeking loop]------------------
		xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Swap branch]--------------------------
.swap:	mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_iptr], iptr				; save "iptr" variable into the stack
		movs#x	temp, [s_one]
		divs#x	temp, value					; temp = 1.0 / mptr[0]
		movs#x	[s_temp], temp				; save "temp" variable into the stack
		mov		param1, [s_mptr]
		mov		param2, [s_mtrx]
		mov		param3, [s_size1]
		add		param3, 1
		mov		param4, [s_step2]
		call	Swap						; call Swap (mptr, matrix, size1 + 1, step2)
		mov		param1, [s_iptr]
		mov		param2, [s_inv]
		mov		param3, [s_order]
		mov		param4, [s_step2]
		call	Swap						; call Swap (iptr, inverse, order, step2)
		jmp		.back						; go back
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INVERSE_CORE_CMPLX	x
{
;---[Parameters]---------------------------
inverse	equ		rdi							; inverse matrix
matrix	equ		rsi							; original matrix
order	equ		rdx							; matrix order
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
;---[Internal variables]-------------------
status	equ		rax							; operation status
mptr	equ		r10							; pointer to source matrix
iptr	equ		r11							; pointer to inverse matrix
real	equ		xmm0						; real part of result
imag	equ		xmm1						; imaginary part of result
re		equ		xmm2						; real part of source complex number
im		equ		xmm3						; imaginary part of source complex number
temp0	equ		xmm4						; temporary register #1
temp1	equ		xmm5						; temporary register #2
zero	equ		xmm6						; 0.0
mask	equ		xmm7						; data mask
stack	equ		rsp							; stack pointer
s_inv	equ		stack + 0 * 8				; stack position of "inverse" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_order	equ		stack + 2 * 8				; stack position of "order" variable
s_step0	equ		stack + 3 * 8				; stack position of "step0" variable
s_step1	equ		stack + 4 * 8				; stack position of "step1" variable
s_step2	equ		stack + 5 * 8				; stack position of "step2" variable
s_size1	equ		stack + 6 * 8				; stack position of "size1" variable
s_size2	equ		stack + 7 * 8				; stack position of "size2" variable
s_mptr	equ		stack + 8 * 8				; stack position of "mptr" variable
s_iptr	equ		stack + 9 * 8				; stack position of "iptr" variable
s_rtemp	equ		stack + 10 * 8				; stack position of "rtemp" variable
s_itemp	equ		stack + 11 * 8				; stack position of "itemp" variable
s_reval	equ		stack + 12 * 8				; stack position of "real" variable
s_imval	equ		stack + 13 * 8				; stack position of "imag" variable
if x eq s
Inverse	= InvNum_flt32						; Inverse complex number function
Swap	= SwapRows_cmplx32					; Swap matrix rows function
SubRow	= SubRow_cmplx32					; Subtract matrix row function
scale	= 3									; scale value
else if x eq d
Inverse	= InvNum_flt64						; Inverse complex number function
Swap	= SwapRows_cmplx64					; Swap matrix rows function
SubRow	= SubRow_cmplx64					; Subtract matrix row function
scale	= 4									; scale value
end if
space	= 15 * 8							; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		lea		status, [order - 1]			; size1 = order - 1
		test	status, status				; if (size1 == 0)
		jz		.exit						;     then go to exit
		mov		[s_inv], inverse			; save "inverse" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_size1], status			; save "size1" variable into the stack
;---[Inversion loop]-----------------------
.loop:	lea		mptr, [matrix + step1]		; mptr = matrix + step1
		lea		iptr, [inverse + step1]		; iptr = inverse + step1
		mov		status, [s_size1]			; size2 = size1
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_iptr], iptr				; save "iptr" variable into the stack
		mov		[s_size2], status			; save "size2" variable into the stack
		movs#x	real, [matrix + RE*bytes/2]	; real = matrix[0].re
		movs#x	imag, [matrix + IM*bytes/2]	; imag = matrix[0].im
		CMAG	re, im, real, imag, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re == 0.0)
		je		.sloop						;     then go to seeking loop
		call	Inverse						; call Inverse (matrix[0])
		movs#x	[s_rtemp], real				; rtemp = real
		movs#x	[s_itemp], imag				; itemp = imag
;---[Internal loop]------------------------
.iloop:	movs#x	real, [mptr + RE*bytes/2]	; real = mptr[0].re
		movs#x	imag, [mptr + IM*bytes/2]	; imag = mptr[0].im
		movs#x	re, [s_rtemp]				; get "rtemp" variable from the stack
		movs#x	im, [s_itemp]				; get "itemp" variable from the stack
		CMUL	real, imag, re, im, temp0, temp1, x
		movs#x	[s_reval], real				; save "real" variable into the stack
		movs#x	[s_imval], imag				; save "imag" variable into the stack
		xorp#x	zero, zero
		movs#x	[mptr + RE*bytes/2], zero	; mptr[0].re = 0.0
		movs#x	[mptr + IM*bytes/2], zero	; mptr[0].im = 0.0
		mov		param1, [s_mptr]
		add		param1, [s_step2]
		mov		param2, [s_mtrx]
		add		param2, [s_step2]
		mov		param3, [s_size1]
		mov		param4, [s_step2]
		call	SubRow						; call SubRow (mptr + step2, matrix + step2, size1, step2, real, imag)
		movs#x	real, [s_reval]
		movs#x	imag, [s_imval]
		mov		param1, [s_iptr]
		mov		param2, [s_inv]
		mov		param3, [s_order]
		mov		param4, [s_step2]
		call	SubRow						; call SubRow (iptr, inverse, order, step2, real, imag)
.back:	mov		mptr, [s_mptr]				; get "mptr" variable from the stack
		mov		iptr, [s_iptr]				; get "iptr" variable from the stack
		add		mptr, [s_step1]				; mptr += step1
		add		iptr, [s_step1]				; iptr += step1
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_iptr], iptr				; save "iptr" variable into the stack
		sub		qword [s_size2], 1			; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		inverse, [s_inv]			; get "inverse" variable from the stack
		mov		step1, [s_step1]			; get "step1" variable from the stack
		add		matrix, [s_step0]			; matrix += step0
		add		inverse, [s_step1]			; inverse += step1
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_inv], inverse			; save "inverse" variable into the stack
		sub		qword [s_size1], 1			; size1--
		jnz		.loop						; do while (size1 != 0)
;---[End of inversion loop]----------------
.exit:	mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Seeking loop]-------------------------
.sloop:	movs#x	real, [mptr + RE*bytes/2]	; real = mptr[0].re
		movs#x	imag, [mptr + IM*bytes/2]	; imag = mptr[0].im
		CMAG	re, im, real, imag, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re != 0.0)
		jne		.swap						;     then go to swap branch
		add		mptr, [s_step1]				; mptr += step1
		add		iptr, [s_step1]				; iptr += step1
		sub		qword [s_size2], 1			; size2--
		jnz		.sloop						; do while (size2 != 0)
;---[End of seeking loop]------------------
		xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Swap branch]--------------------------
.swap:	mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_iptr], iptr				; save "iptr" variable into the stack
		call	Inverse						; call Inverse (mptr[0])
		movs#x	[s_rtemp], real				; rtemp = real
		movs#x	[s_itemp], imag				; itemp = imag
		mov		param1, [s_mptr]
		mov		param2, [s_mtrx]
		mov		param3, [s_size1]
		add		param3, 1
		mov		param4, [s_step2]
		call	Swap						; call Swap (mptr, matrix, size1 + 1, step2)
		mov		param1, [s_iptr]
		mov		param2, [s_inv]
		mov		param3, [s_order]
		mov		param4, [s_step2]
		call	Swap						; call Swap (iptr, inverse, order, step2)
		jmp		.back						; go back
}

; Real number matrix
InverseCore_flt32:		INVERSE_CORE_FLT	s
InverseCore_flt64:		INVERSE_CORE_FLT	d

; Complex number matrix
InverseCore_cmplx32:	INVERSE_CORE_CMPLX	s
InverseCore_cmplx64:	INVERSE_CORE_CMPLX	d

;==============================================================================;
;       Scale inverse matrix                                                   ;
;==============================================================================;
macro	SCALE_MATRIX_FLT	x
{
;---[Parameters]---------------------------
inverse	equ		rdi							; inverse matrix
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to target matrix
size1	equ		r10							; rows count
size2	equ		r11							; columns count
value	equ		xmm0						; scale coefficient
temp	equ		xmm1						; temporary register
one		equ		xmm2						; 1.0
if x eq s
oneval	= PONE_FLT32						; 1.0
else if x eq d
oneval	= PONE_FLT64						; 1.0
end if
;------------------------------------------
		initreg	one, ptr, oneval			; one = 1.0
		mov		size1, order				; size1 = order
;---[Scale loop]---------------------------
.loop:	movap#x	value, one
		divs#x	value, [matrix]				; value = 1.0 / matrix[0]
		movs#x	[matrix], one				; matrix[0] = 1.0
		mov		ptr, inverse				; ptr = inverse
		mov		size2, order				; size2 = order
;---[Internal loop]------------------------
.iloop:	movs#x	temp, [ptr]
		muls#x	temp, value
		movs#x	[ptr], temp					; ptr[0] *= value
		add		ptr, step2					; ptr += step2
		sub		size2, 1					; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		add		matrix, step0				; matrix += step0
		add		inverse, step1				; inverse += step1
		sub		size1, 1					; size1--
		jnz		.loop						; do while (size1 != 0)
;---[End of scale loop]--------------------
		mov		ptr, 1						; return true
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SCALE_MATRIX_CMPLX	x
{
;---[Parameters]---------------------------
inverse	equ		rdi							; inverse matrix
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to target matrix
size1	equ		r10							; rows count
size2	equ		r11							; columns count
real	equ		xmm0						; real part of result
imag	equ		xmm1						; imaginary part of result
re		equ		xmm2						; real part of source complex number
im		equ		xmm3						; imaginary part of source complex number
temp0	equ		xmm4						; temporary register #1
temp1	equ		xmm5						; temporary register #2
one		equ		xmm6						; 1.0
zero	equ		xmm7						; 0.0
if x eq s
Inverse	= InvNum_flt32						; Inverse complex number function
oneval	= PONE_FLT32						; 1.0
scale	= 3									; scale value
else if x eq d
Inverse	= InvNum_flt64						; Inverse complex number function
oneval	= PONE_FLT64						; 1.0
scale	= 4									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		mov		size1, order				; size1 = order
;---[Scale loop]---------------------------
.loop:	movs#x	real, [matrix + RE*bytes/2]	; real = matrix[0].re
		movs#x	imag, [matrix + IM*bytes/2]	; imag = matrix[0].im
		call	Inverse						; call Inverse (matrix[0])
		initreg	one, ptr, oneval			; one = 1.0
		xorp#x	zero, zero					; zero = 0.0
		movs#x	[matrix + RE*bytes/2], one	; matrix[0].re = 1.0
		movs#x	[matrix + IM*bytes/2], zero	; matrix[0].im = 0.0
		mov		ptr, inverse				; ptr = inverse
		mov		size2, order				; size2 = order
;---[Internal loop]------------------------
.iloop:	movs#x	re, [ptr + RE*bytes/2]		; re = ptr[0].re
		movs#x	im, [ptr + IM*bytes/2]		; im = ptr[0].im
		CMUL	re, im, real, imag, temp0, temp1, x
		movs#x	[ptr + RE*bytes/2], re		; re = ptr[0].re
		movs#x	[ptr + IM*bytes/2], im		; im = ptr[0].im
		add		ptr, step2					; ptr += step2
		sub		size2, 1					; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		add		matrix, step0				; matrix += step0
		add		inverse, step1				; inverse += step1
		sub		size1, 1					; size1--
		jnz		.loop						; do while (size1 != 0)
;---[End of scale loop]--------------------
		mov		ptr, 1						; return true
		ret
}

; Real number matrix
ScaleMatrix_flt32:		SCALE_MATRIX_FLT	s
ScaleMatrix_flt64:		SCALE_MATRIX_FLT	d

; Complex number matrix
ScaleMatrix_cmplx32:	SCALE_MATRIX_CMPLX	s
ScaleMatrix_cmplx64:	SCALE_MATRIX_CMPLX	d

;==============================================================================;
;       Inverse matrix                                                         ;
;==============================================================================;
macro	INVERSE_FLT	low, x
{
;---[Parameters]---------------------------
inverse	equ		rdi							; pointer to inverse matrix
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
;---[Internal variables]-------------------
status	equ		rax							; operation status
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
mptr	equ		r10							; pointer to source matrix
iptr	equ		r11							; pointer to inverse matrix
value	equ		xmm0						; 1.0
stack	equ		rsp							; stack pointer
s_inv	equ		stack + 0 * 8				; stack position of "inverse" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_order	equ		stack + 2 * 8				; stack position of "order" variable
s_step0	equ		stack + 3 * 8				; stack position of "step0" variable
s_step1	equ		stack + 4 * 8				; stack position of "step1" variable
s_step2	equ		stack + 5 * 8				; stack position of "step2" variable
s_mptr	equ		stack + 6 * 8				; stack position of "mptr" variable
s_iptr	equ		stack + 7 * 8				; stack position of "iptr" variable
if x eq s
Func1	= Inverse1_flt32					; Inversion of 1 order matrix
Func2	= Inverse2_flt32					; Inversion of 2 order matrix
Func3	= Inverse3_flt32					; Inversion of 3 order matrix
Init	= InitDiagonal_flt32				; Init diagonal matrix function
Core	= InverseCore_flt32					; Inversion core function
Scale	= ScaleMatrix_flt32					; Scale inverse matrix function
oneval	= PONE_FLT32						; 1.0
scale	= 2									; scale value
else if x eq d
Func1	= Inverse1_flt64					; Inversion of 1 order matrix
Func2	= Inverse2_flt64					; Inversion of 2 order matrix
Func3	= Inverse3_flt64					; Inversion of 3 order matrix
Init	= InitDiagonal_flt64				; Init diagonal matrix function
Core	= InverseCore_flt64					; Inversion core function
Scale	= ScaleMatrix_flt64					; Scale inverse matrix function
oneval	= PONE_FLT64						; 1.0
scale	= 3									; scale value
end if
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.exit						;     then return false
		cmp		order, 1					; if (order == 1)
		je		Func1						;     then call Func1 (inverse, matrix)
		cmp		order, 2					; if (order == 2)
		je		Func2						;     then call Func2 (inverse, matrix)
		cmp		order, 3					; if (order == 3)
		je		Func3						;     then call Func3 (inverse, matrix)
;---[Compute step values]------------------
		sub		stack, space				; reserving stack size for local vars
		mov		step0, order
		shl		step0, scale
		add		step0, bytes
		mov		step1, order
		shl		step1, scale
		mov		step2, bytes
		mov		status, order
		imul	status, order
		shl		status, scale
		sub		status, bytes
		mov		mptr, matrix
		add		mptr, status
		mov		iptr, inverse
		add		iptr, status
		mov		[s_inv], inverse			; save "inverse" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_iptr], iptr				; save "iptr" variable into the stack
;---[Init inverse matrix]------------------
		initreg	value, status, oneval		; value = 1.0
		mov		param1, inverse
		mov		param2, order
		call	Init						; call Init (inverse, order, 1.0)
;---[Make triangular matrix]---------------
if low
		mov		param1, [s_iptr]
		mov		param2, [s_mptr]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		neg		param4
		mov		param5, [s_step1]
		neg		param5
		mov		param6, [s_step2]
		neg		param6
		call	Core						; call Core (iptr, mptr, order, -step0, -step1, -step2)
else
		mov		param1, [s_inv]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		call	Core						; call Core (inverse, matrix, order, step0, step1, step2)
end if
		test	status, status				; if (status == 0)
		jz		.error						;     then return false
;---[Make diagonal matrix]-----------------
if low
		mov		param1, [s_inv]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		call	Core						; call Core (inverse, matrix, order, step0, step1, step2)
else
		mov		param1, [s_iptr]
		mov		param2, [s_mptr]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		neg		param4
		mov		param5, [s_step1]
		neg		param5
		mov		param6, [s_step2]
		neg		param6
		call	Core						; call Core (iptr, mptr, order, -step0, -step1, -step2)
end if
		test	status, status				; if (status == 0)
		jz		.error						;     then return false
;---[Scale inverse matrix]-----------------
		mov		param1, [s_inv]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		add		stack, space				; restoring back the stack pointer
		jmp		Scale						; Scale (inverse, matrix, order, step0, step1, step2)
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
.exit:	xor		status, status				; return false
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INVERSE_CMPLX	low, x
{
;---[Parameters]---------------------------
inverse	equ		rdi							; pointer to inverse matrix
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
;---[Internal variables]-------------------
status	equ		rax							; operation status
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
mptr	equ		r10							; pointer to source matrix
iptr	equ		r11							; pointer to inverse matrix
real	equ		xmm0						; real part of complex number
imag	equ		xmm1						; imaginary part of complex number
stack	equ		rsp							; stack pointer
s_inv	equ		stack + 0 * 8				; stack position of "inverse" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_order	equ		stack + 2 * 8				; stack position of "order" variable
s_step0	equ		stack + 3 * 8				; stack position of "step0" variable
s_step1	equ		stack + 4 * 8				; stack position of "step1" variable
s_step2	equ		stack + 5 * 8				; stack position of "step2" variable
s_mptr	equ		stack + 6 * 8				; stack position of "mptr" variable
s_iptr	equ		stack + 7 * 8				; stack position of "iptr" variable
if x eq s
Func1	= Inverse1_cmplx32					; Inversion of 1 order matrix
Func2	= Inverse2_cmplx32					; Inversion of 2 order matrix
Func3	= Inverse3_cmplx32					; Inversion of 3 order matrix
Init	= InitDiagonal_cmplx32				; Init diagonal matrix function
Core	= InverseCore_cmplx32				; Inversion core function
Scale	= ScaleMatrix_cmplx32				; Scale inverse matrix function
oneval	= PONE_FLT32						; 1.0
scale	= 3									; scale value
else if x eq d
Func1	= Inverse1_cmplx64					; Inversion of 1 order matrix
Func2	= Inverse2_cmplx64					; Inversion of 2 order matrix
Func3	= Inverse3_cmplx64					; Inversion of 3 order matrix
Init	= InitDiagonal_cmplx64				; Init diagonal matrix function
Core	= InverseCore_cmplx64				; Inversion core function
Scale	= ScaleMatrix_cmplx64				; Scale inverse matrix function
oneval	= PONE_FLT64						; 1.0
scale	= 4									; scale value
end if
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.exit						;     then return false
		cmp		order, 1					; if (order == 1)
		je		Func1						;     then call Func1 (inverse, matrix)
		cmp		order, 2					; if (order == 2)
		je		Func2						;     then call Func2 (inverse, matrix)
		cmp		order, 3					; if (order == 3)
		je		Func3						;     then call Func3 (inverse, matrix)
;---[Compute step values]------------------
		sub		stack, space				; reserving stack size for local vars
		mov		step0, order
		shl		step0, scale
		add		step0, bytes
		mov		step1, order
		shl		step1, scale
		mov		step2, bytes
		mov		status, order
		imul	status, order
		shl		status, scale
		sub		status, bytes
		mov		mptr, matrix
		add		mptr, status
		mov		iptr, inverse
		add		iptr, status
		mov		[s_inv], inverse			; save "inverse" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_iptr], iptr				; save "iptr" variable into the stack
;---[Init inverse matrix]------------------
		initreg	real, status, oneval		; real = 1.0
		xorp#x	imag, imag					; imag = 0.0
if x eq s
	unpcklp#x	real, imag					; pack complex number
end if
		mov		param1, inverse
		mov		param2, order
		call	Init						; call Init (inverse, order, 1.0)
;---[Make triangular matrix]---------------
if low
		mov		param1, [s_iptr]
		mov		param2, [s_mptr]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		neg		param4
		mov		param5, [s_step1]
		neg		param5
		mov		param6, [s_step2]
		neg		param6
		call	Core						; call Core (iptr, mptr, order, -step0, -step1, -step2)
else
		mov		param1, [s_inv]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		call	Core						; call Core (inverse, matrix, order, step0, step1, step2)
end if
		test	status, status				; if (status == 0)
		jz		.error						;     then return false
;---[Make diagonal matrix]-----------------
if low
		mov		param1, [s_inv]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		call	Core						; call Core (inverse, matrix, order, step0, step1, step2)
else
		mov		param1, [s_iptr]
		mov		param2, [s_mptr]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		neg		param4
		mov		param5, [s_step1]
		neg		param5
		mov		param6, [s_step2]
		neg		param6
		call	Core						; call Core (iptr, mptr, order, -step0, -step1, -step2)
end if
		test	status, status				; if (status == 0)
		jz		.error						;     then return false
;---[Scale inverse matrix]-----------------
		mov		param1, [s_inv]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		add		stack, space				; restoring back the stack pointer
		jmp		Scale						; Scale (inverse, matrix, order, step0, step1, step2)
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
.exit:	xor		status, status				; return false
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Inverse matrix through upper triangular matrix                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Real number matrix
InverseUp_flt32:	INVERSE_FLT		0, s
InverseUp_flt64:	INVERSE_FLT		0, d

; Complex number matrix
InverseUp_cmplx32:	INVERSE_CMPLX	0, s
InverseUp_cmplx64:	INVERSE_CMPLX	0, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Inverse matrix through lower triangular matrix                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Real number matrix
InverseLow_flt32:	INVERSE_FLT		1, s
InverseLow_flt64:	INVERSE_FLT		1, d

; Complex number matrix
InverseLow_cmplx32:	INVERSE_CMPLX	1, s
InverseLow_cmplx64:	INVERSE_CMPLX	1, d

;******************************************************************************;
;       Determinant                                                            ;
;******************************************************************************;

;==============================================================================;
;       Determinant of 1 order matrix                                          ;
;==============================================================================;
macro	DETERMINANT1_FLT	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
;------------------------------------------
	DET1_FLT	matrix, temp0, x
		ret									; return result
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	DETERMINANT1_CMPLX	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
;---[Internal variables]-------------------
rtemp0	equ		xmm0						; temporary register #1
itemp0	equ		xmm1						; temporary register #2
;------------------------------------------
	DET1_CMPLX	matrix, rtemp0, itemp0, x
if x eq s
	unpcklp#x	rtemp0, itemp0				; pack the result
end if
		ret									; return result
}

; Real number matrix
Determinant1_flt32:		DETERMINANT1_FLT	s
Determinant1_flt64:		DETERMINANT1_FLT	d

; Complex number matrix
Determinant1_cmplx32:	DETERMINANT1_CMPLX	s
Determinant1_cmplx64:	DETERMINANT1_CMPLX	d

;==============================================================================;
;       Determinant of 2 order matrix                                          ;
;==============================================================================;
macro	DETERMINANT2_FLT	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
;------------------------------------------
	DET2_FLT	matrix, temp0, temp1, x
		ret									; return result
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	DETERMINANT2_CMPLX	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
;---[Internal variables]-------------------
rtemp0	equ		xmm0						; temporary register #1
itemp0	equ		xmm1						; temporary register #2
real	equ		xmm2						; real part of result
imag	equ		xmm3						; imaginary part of result
re		equ		xmm4						; real part of source complex number
im		equ		xmm5						; imaginary part of source complex number
;------------------------------------------
	DET2_CMPLX	matrix, rtemp0, itemp0, real, imag, re, im, x
if x eq s
	unpcklp#x	rtemp0, itemp0				; pack the result
end if
		ret									; return result
}

; Real number matrix
Determinant2_flt32:		DETERMINANT2_FLT	s
Determinant2_flt64:		DETERMINANT2_FLT	d

; Complex number matrix
Determinant2_cmplx32:	DETERMINANT2_CMPLX	s
Determinant2_cmplx64:	DETERMINANT2_CMPLX	d

;==============================================================================;
;       Determinant of 3 order matrix                                          ;
;==============================================================================;
macro	DETERMINANT3_FLT	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
temp8	equ		xmm8						; temporary register #9
;------------------------------------------
	DET3_FLT	matrix, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, x
		ret									; return result
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	DETERMINANT3_CMPLX	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
;---[Internal variables]-------------------
rtemp0	equ		xmm0						; temporary register #1
itemp0	equ		xmm1						; temporary register #2
rtemp1	equ		xmm2						; temporary register #3
itemp1	equ		xmm3						; temporary register #4
rtemp2	equ		xmm4						; temporary register #5
itemp2	equ		xmm5						; temporary register #6
rtemp3	equ		xmm6						; temporary register #7
itemp3	equ		xmm7						; temporary register #8
rtemp4	equ		xmm8						; temporary register #9
itemp4	equ		xmm9						; temporary register #10
rtemp5	equ		xmm10						; temporary register #11
itemp5	equ		xmm11						; temporary register #12
real	equ		xmm12						; real part of result
imag	equ		xmm13						; imaginary part of result
re		equ		xmm14						; real part of source complex number
im		equ		xmm15						; imaginary part of source complex number
;------------------------------------------
	DET3_CMPLX	matrix, rtemp0, itemp0, rtemp1, itemp1, rtemp2, itemp2, rtemp3, itemp3, rtemp4, itemp4, rtemp5, itemp5, real, imag, re, im, x
if x eq s
	unpcklp#x	rtemp0, itemp0				; pack the result
end if
		ret									; return result
}

; Real number matrix
Determinant3_flt32:		DETERMINANT3_FLT	s
Determinant3_flt64:		DETERMINANT3_FLT	d

; Complex number matrix
Determinant3_cmplx32:	DETERMINANT3_CMPLX	s
Determinant3_cmplx64:	DETERMINANT3_CMPLX	d

;==============================================================================;
;       Determinant of custom order matrix                                     ;
;==============================================================================;
macro	DETERMINANT_CORE_FLT	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
step0	equ		rdx							; first step size
step1	equ		rcx							; second step size
step2	equ		r8							; third step size
;---[Internal variables]-------------------
status	equ		rax							; operation status
mptr	equ		r10							; pointer to source matrix
value	equ		xmm0						; scale coefficient
temp	equ		xmm1						; temporary register
zero	equ		xmm2						; 0.0
one		equ		xmm3						; 1.0
stack	equ		rsp							; stack pointer
s_mtrx	equ		stack + 0 * 8				; stack position of "matrix" variable
s_step0	equ		stack + 1 * 8				; stack position of "step0" variable
s_step1	equ		stack + 2 * 8				; stack position of "step1" variable
s_step2	equ		stack + 3 * 8				; stack position of "step2" variable
s_size1	equ		stack + 4 * 8				; stack position of "size1" variable
s_size2	equ		stack + 5 * 8				; stack position of "size2" variable
s_mptr	equ		stack + 6 * 8				; stack position of "mptr" variable
s_temp	equ		stack + 7 * 8				; stack position of "temp" variable
s_det	equ		stack + 8 * 8				; stack position of "det" variable
s_pone	equ		stack + 9 * 8				; stack position of "pone" variable
s_mone	equ		stack + 10 * 8				; stack position of "mone" variable
if x eq s
Swap	= SwapRows_flt32					; Swap matrix rows function
SubRow	= SubRow_flt32						; Subtract matrix row function
poneval	= PONE_FLT32						; +1.0
moneval	= MONE_FLT32						; -1.0
nanval	= PNAN_FLT32						; +NaN
else if x eq d
Swap	= SwapRows_flt64					; Swap matrix rows function
SubRow	= SubRow_flt64						; Subtract matrix row function
poneval	= PONE_FLT64						; +1.0
moneval	= MONE_FLT64						; -1.0
nanval	= PNAN_FLT64						; +NaN
end if
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		initreg	one, status, poneval		; one = +1.0
		initreg	temp, status, moneval		; temp = -1.0
		movap#x	value, one					; value = 1.0
		lea		status, [order - 1]			; size1 = order - 1
		test	status, status				; if (size1 == 0)
		jz		.exit						;     then go to exit
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_size1], status			; save "size1" variable into the stack
		movs#x	[s_det], value				; det = 1.0
		movs#x	[s_pone], one				; pone = +1.0
		movs#x	[s_mone], temp				; mone = -1.0
;---[Determinant loop]---------------------
.loop:	lea		mptr, [matrix + step1]		; mptr = matrix + step1
		mov		status, [s_size1]			; size2 = size1
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_size2], status			; save "size2" variable into the stack
		movs#x	value, [matrix]				; value = matrix[0]
		xorp#x	zero, zero					; zero = 0.0
		comis#x	value, zero					; if (value == 0.0)
		je		.sloop						;     then go to seeking loop
		movs#x	temp, [s_pone]
		divs#x	temp, value					; temp = 1.0 / matrix[0]
		movs#x	[s_temp], temp				; save "temp" variable into the stack
		muls#x	value, [s_det]				; det *= matrix[0]
		movs#x	[s_det], value				; save "det" variable into the stack
;---[Internal loop]------------------------
.iloop:	movs#x	value, [mptr]
		muls#x	value, [s_temp]				; value = mptr[0] / matrix[0]
		xorp#x	zero, zero
		movs#x	[mptr], zero				; mptr[0] = 0.0
		mov		param1, [s_mptr]
		add		param1, [s_step2]
		mov		param2, [s_mtrx]
		add		param2, [s_step2]
		mov		param3, [s_size1]
		mov		param4, [s_step2]
		call	SubRow						; call SubRow (mptr + step2, matrix + step2, size1, step2, value)
.back:	mov		mptr, [s_mptr]				; get "mptr" variable from the stack
		add		mptr, [s_step1]				; mptr += step1
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		sub		qword [s_size2], 1			; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		step1, [s_step1]			; get "step1" variable from the stack
		add		matrix, [s_step0]			; matrix += step0
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		sub		qword [s_size1], 1			; size1--
		jnz		.loop						; do while (size1 != 0)
;---[End of determinant loop]--------------
		movs#x	value, [s_det]				; get "det" variable from the stack
.exit:	muls#x	value, [matrix]				; return det * matrix[0]
		add		stack, space				; restoring back the stack pointer
		ret
;---[Seeking loop]-------------------------
.sloop:	movs#x	value, [mptr]				; value = mptr[0]
		xorp#x	zero, zero					; zero = 0.0
		comis#x	value, zero					; if (value != 0.0)
		jne		.swap						;     then go to swap branch
		add		mptr, [s_step1]				; mptr += step1
		sub		qword [s_size2], 1			; size2--
		jnz		.sloop						; do while (size2 != 0)
;---[End of seeking loop]------------------
		initreg	value, status, nanval		; return NaN
		add		stack, space				; restoring back the stack pointer
		ret
;---[Swap branch]--------------------------
.swap:	mov		[s_mptr], mptr				; save "mptr" variable into the stack
		movs#x	temp, [s_pone]
		divs#x	temp, value					; temp = 1.0 / mptr[0]
		movs#x	[s_temp], temp				; save "temp" variable into the stack
		muls#x	value, [s_mone]
		muls#x	value, [s_det]				; det *= -mptr[0]
		movs#x	[s_det], value				; save "det" variable into the stack
		mov		param1, [s_mptr]
		mov		param2, [s_mtrx]
		mov		param3, [s_size1]
		add		param3, 1
		mov		param4, [s_step2]
		call	Swap						; call Swap (mptr, matrix, size1 + 1, step2)
		jmp		.back						; go back
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	DETERMINANT_CORE_CMPLX	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
step0	equ		rdx							; first step size
step1	equ		rcx							; second step size
step2	equ		r8							; third step size
;---[Internal variables]-------------------
status	equ		rax							; operation status
mptr	equ		r10							; pointer to source matrix
real	equ		xmm0						; real part of result
imag	equ		xmm1						; imaginary part of result
re		equ		xmm2						; real part of source complex number
im		equ		xmm3						; imaginary part of source complex number
temp0	equ		xmm4						; temporary register #1
temp1	equ		xmm5						; temporary register #2
zero	equ		xmm6						; 0.0
one		equ		xmm7						; 1.0
mask	equ		xmm8						; data mask
stack	equ		rsp							; stack pointer
s_mtrx	equ		stack + 0 * 8				; stack position of "matrix" variable
s_step0	equ		stack + 1 * 8				; stack position of "step0" variable
s_step1	equ		stack + 2 * 8				; stack position of "step1" variable
s_step2	equ		stack + 3 * 8				; stack position of "step2" variable
s_size1	equ		stack + 4 * 8				; stack position of "size1" variable
s_size2	equ		stack + 5 * 8				; stack position of "size2" variable
s_mptr	equ		stack + 6 * 8				; stack position of "mptr" variable
s_rtemp	equ		stack + 7 * 8				; stack position of "rtemp" variable
s_itemp	equ		stack + 8 * 8				; stack position of "itemp" variable
s_rdet	equ		stack + 9 * 8				; stack position of "rdet" variable
s_idet	equ		stack + 10 * 8				; stack position of "idet" variable
if x eq s
smask	= SMASK_FLT32						; sign mask
Inverse	= InvNum_flt32						; Inverse complex number function
Swap	= SwapRows_cmplx32					; Swap matrix rows function
SubRow	= SubRow_cmplx32					; Subtract matrix row function
oneval	= PONE_FLT32						; 1.0
nanval	= PNAN_FLT32						; NaN
scale	= 3									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
Inverse	= InvNum_flt64						; Inverse complex number function
Swap	= SwapRows_cmplx64					; Swap matrix rows function
SubRow	= SubRow_cmplx64					; Subtract matrix row function
oneval	= PONE_FLT64						; 1.0
nanval	= PNAN_FLT64						; NaN
scale	= 4									; scale value
end if
space	= 11 * 8							; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		initreg	one, status, oneval			; one = 1.0
		movap#x	real, one					; real = 1.0
		xorp#x	imag, imag					; imag = 0.0
		lea		status, [order - 1]			; size1 = order - 1
		test	status, status				; if (size1 == 0)
		jz		.exit						;     then go to exit
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_size1], status			; save "size1" variable into the stack
		movs#x	[s_rdet], real				; rdet = 1.0
		movs#x	[s_idet], imag				; idet = 0.0
;---[Determinant loop]---------------------
.loop:	lea		mptr, [matrix + step1]		; mptr = matrix + step1
		mov		status, [s_size1]			; size2 = size1
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_size2], status			; save "size2" variable into the stack
		movs#x	real, [matrix + RE*bytes/2]	; real = matrix[0].re
		movs#x	imag, [matrix + IM*bytes/2]	; imag = matrix[0].im
		CMAG	re, im, real, imag, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re == 0.0)
		je		.sloop						;     then go to seeking loop
		movs#x	re, [s_rdet]				; get "rdet" variable from the stack
		movs#x	im, [s_idet]				; get "idet" variable from the stack
		CMUL	re, im, real, imag, temp0, temp1, x
		movs#x	[s_rdet], re				; save "rdet" variable into the stack
		movs#x	[s_idet], im				; save "idet" variable into the stack
		call	Inverse						; call Inverse (matrix[0])
		movs#x	[s_rtemp], real				; rtemp = real
		movs#x	[s_itemp], imag				; itemp = imag
;---[Internal loop]------------------------
.iloop:	movs#x	real, [mptr + RE*bytes/2]	; real = mptr[0].re
		movs#x	imag, [mptr + IM*bytes/2]	; imag = mptr[0].im
		movs#x	re, [s_rtemp]				; get "rtemp" variable from the stack
		movs#x	im, [s_itemp]				; get "itemp" variable from the stack
		CMUL	real, imag, re, im, temp0, temp1, x
		xorp#x	zero, zero
		movs#x	[mptr + RE*bytes/2], zero	; mptr[0].re = 0.0
		movs#x	[mptr + IM*bytes/2], zero	; mptr[0].im = 0.0
		mov		param1, [s_mptr]
		add		param1, [s_step2]
		mov		param2, [s_mtrx]
		add		param2, [s_step2]
		mov		param3, [s_size1]
		mov		param4, [s_step2]
		call	SubRow						; call SubRow (mptr + step2, matrix + step2, size1, step2, real, imag)
.back:	mov		mptr, [s_mptr]				; get "mptr" variable from the stack
		add		mptr, [s_step1]				; mptr += step1
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		sub		qword [s_size2], 1			; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		step1, [s_step1]			; get "step1" variable from the stack
		add		matrix, [s_step0]			; matrix += step0
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		sub		qword [s_size1], 1			; size1--
		jnz		.loop						; do while (size1 != 0)
;---[End of determinant loop]--------------
		movs#x	real, [s_rdet]				; get "rdet" variable from the stack
		movs#x	imag, [s_idet]				; get "idet" variable from the stack
.exit:	movs#x	re, [matrix + RE*bytes/2]	; re = matrix[0].re
		movs#x	im, [matrix + IM*bytes/2]	; im = matrix[0].im
		CMUL	real, imag, re, im, temp0, temp1, x
if x eq s
	unpcklp#x	real, imag					; pack the result
end if
		add		stack, space				; restoring back the stack pointer
		ret									; return result
;---[Seeking loop]-------------------------
.sloop:	movs#x	real, [mptr + RE*bytes/2]	; real = mptr[0].re
		movs#x	imag, [mptr + IM*bytes/2]	; imag = mptr[0].im
		CMAG	re, im, real, imag, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re != 0.0)
		jne		.swap						;     then go to swap branch
		add		mptr, [s_step1]				; mptr += step1
		sub		qword [s_size2], 1			; size2--
		jnz		.sloop						; do while (size2 != 0)
;---[End of seeking loop]------------------
		initreg	real, status, nanval		; real = NaN
		movap#x	imag, real					; imag = NaN
if x eq s
	unpcklp#x	real, imag					; pack the result
end if
		add		stack, space				; restoring back the stack pointer
		ret
;---[Swap branch]--------------------------
.swap:	mov		[s_mptr], mptr				; save "mptr" variable into the stack
		initreg	mask, status, smask			; load sign mask
		movs#x	re, [s_rdet]				; get "rdet" variable from the stack
		movs#x	im, [s_idet]				; get "idet" variable from the stack
		xorp#x	re, mask					; re = -re
		xorp#x	im, mask					; im = -im
		CMUL	re, im, real, imag, temp0, temp1, x
		movs#x	[s_rdet], re				; save "rdet" variable into the stack
		movs#x	[s_idet], im				; save "idet" variable into the stack
		call	Inverse						; call Inverse (mptr[0])
		movs#x	[s_rtemp], real				; rtemp = real
		movs#x	[s_itemp], imag				; itemp = imag
		mov		param1, [s_mptr]
		mov		param2, [s_mtrx]
		mov		param3, [s_size1]
		add		param3, 1
		mov		param4, [s_step2]
		call	Swap						; call Swap (mptr, matrix, size1 + 1, step2)
		jmp		.back						; go back
}

; Real number matrix
DeterminantCore_flt32:		DETERMINANT_CORE_FLT	s
DeterminantCore_flt64:		DETERMINANT_CORE_FLT	d

; Complex number matrix
DeterminantCore_cmplx32:	DETERMINANT_CORE_CMPLX	s
DeterminantCore_cmplx64:	DETERMINANT_CORE_CMPLX	d

;==============================================================================;
;       Determinant of diagonal matrix                                         ;
;==============================================================================;
macro	DETERMINANT_DIAGONAL_FLT	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
;---[Internal variables]-------------------
result	equ		xmm0						; result register
step	equ		rcx							; step size
if x eq s
oneval	= PONE_FLT32						; 1.0
nanval	= PNAN_FLT32						; NaN
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; 1.0
nanval	= PNAN_FLT64						; NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.error						;     then go to error branch
		initreg	result, step, oneval		; result = 1.0
		mov		step, order
		shl		step, scale
		add		step, bytes					; step = order << scale + bytes
;---[Determinant computation loop]---------
.loop:	muls#x	result, [matrix]			; result *= matrix[0]
		add		matrix, step				; matrix += step
		sub		order, 1					; order--
		jnz		.loop						; do while (order != 0)
;---[End of determinant computation loop]--
		ret									; return result
;---[Error branch]-------------------------
.error:	initreg	result, step, nanval		; return NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	DETERMINANT_DIAGONAL_CMPLX	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
;---[Internal variables]-------------------
real	equ		xmm0						; real part of result
imag	equ		xmm1						; imaginary part of result
re		equ		xmm2						; real part of source complex number
im		equ		xmm3						; imaginary part of source complex number
temp0	equ		xmm4						; temporary register #1
temp1	equ		xmm5						; temporary register #2
step	equ		rcx							; step size
if x eq s
oneval	= PONE_FLT32						; 1.0
nanval	= PNAN_FLT32						; NaN
scale	= 3									; scale value
else if x eq d
oneval	= PONE_FLT64						; 1.0
nanval	= PNAN_FLT64						; NaN
scale	= 4									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.error						;     then go to error branch
		initreg	real, step, oneval			; real = 1.0
		xorp#x	imag, imag					; imag = 0.0
		mov		step, order
		shl		step, scale
		add		step, bytes					; step = order << scale + bytes
;---[Determinant computation loop]---------
.loop:	movs#x	re, [matrix + RE*bytes/2]	; re = matrix[0].re
		movs#x	im, [matrix + IM*bytes/2]	; im = matrix[0].im
		CMUL	real, imag, re, im, temp0, temp1, x
		add		matrix, step				; matrix += step
		sub		order, 1					; order--
		jnz		.loop						; do while (order != 0)
;---[End of determinant computation loop]--
if x eq s
	unpcklp#x	real, imag					; pack the result
end if
		ret									; return result
;---[Error branch]-------------------------
.error:	initreg	real, step, nanval			; real = NaN
		movap#x	imag, real					; imag = NaN
if x eq s
	unpcklp#x	real, imag					; pack the result
end if
		ret
}

; Real number matrix
DeterminantDiagonal_flt32:		DETERMINANT_DIAGONAL_FLT	s
DeterminantDiagonal_flt64:		DETERMINANT_DIAGONAL_FLT	d

; Complex number matrix
DeterminantDiagonal_cmplx32:	DETERMINANT_DIAGONAL_CMPLX	s
DeterminantDiagonal_cmplx64:	DETERMINANT_DIAGONAL_CMPLX	d

;==============================================================================;
;       Determinant of square matrix                                           ;
;==============================================================================;
macro	DETERMINANT_SQUARE_FLT	low, x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
;---[Internal variables]-------------------
status	equ		rax							; operation status
result	equ		xmm0						; result register
if x eq s
Func1	= Determinant1_flt32				; Determinant of 1 order matrix
Func2	= Determinant2_flt32				; Determinant of 2 order matrix
Func3	= Determinant3_flt32				; Determinant of 3 order matrix
Core	= DeterminantCore_flt32				; Determinant of custom order matrix
nanval	= PNAN_FLT32						; NaN
scale	= 2									; scale value
else if x eq d
Func1	= Determinant1_flt64				; Determinant of 1 order matrix
Func2	= Determinant2_flt64				; Determinant of 2 order matrix
Func3	= Determinant3_flt64				; Determinant of 3 order matrix
Core	= DeterminantCore_flt64				; Determinant of custom order matrix
nanval	= PNAN_FLT64						; NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.error						;     then return NaN
		cmp		order, 1					; if (order == 1)
		je		Func1						;     then call Func1 (matrix)
		cmp		order, 2					; if (order == 2)
		je		Func2						;     then call Func2 (matrix)
		cmp		order, 3					; if (order == 3)
		je		Func3						;     then call Func3 (matrix)
;---[Compute determinant]------------------
if low
		mov		status, order
		imul	status, order
		shl		status, scale
		sub		status, bytes
		add		matrix, status
		mov		param3, order
		shl		param3, scale
		add		param3, bytes
		neg		param3
		mov		param4, order
		shl		param4, scale
		neg		param4
		mov		param5, bytes
		neg		param5
		jmp		Core						; call Core (matrix + order * order - 1, order, -(order + 1) * bytes, -order * bytes, -bytes)
else
		mov		param3, order
		shl		param3, scale
		add		param3, bytes
		mov		param4, order
		shl		param4, scale
		mov		param5, bytes
		jmp		Core						; call Core (matrix, order, (order + 1) * bytes, order * bytes, bytes)
end if
;---[Error branch]-------------------------
.error:	initreg	result, status, nanval		; return NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	DETERMINANT_SQUARE_CMPLX	low, x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
;---[Internal variables]-------------------
status	equ		rax							; operation status
real	equ		xmm0						; real part of result
imag	equ		xmm1						; imaginary part of result
if x eq s
Func1	= Determinant1_cmplx32				; Determinant of 1 order matrix
Func2	= Determinant2_cmplx32				; Determinant of 2 order matrix
Func3	= Determinant3_cmplx32				; Determinant of 3 order matrix
Core	= DeterminantCore_cmplx32			; Determinant of custom order matrix
nanval	= PNAN_FLT32						; NaN
scale	= 3									; scale value
else if x eq d
Func1	= Determinant1_cmplx64				; Determinant of 1 order matrix
Func2	= Determinant2_cmplx64				; Determinant of 2 order matrix
Func3	= Determinant3_cmplx64				; Determinant of 3 order matrix
Core	= DeterminantCore_cmplx64			; Determinant of custom order matrix
nanval	= PNAN_FLT64						; NaN
scale	= 4									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.error						;     then return NaN
		cmp		order, 1					; if (order == 1)
		je		Func1						;     then call Func1 (matrix)
		cmp		order, 2					; if (order == 2)
		je		Func2						;     then call Func2 (matrix)
		cmp		order, 3					; if (order == 3)
		je		Func3						;     then call Func3 (matrix)
;---[Compute determinant]------------------
if low
		mov		status, order
		imul	status, order
		shl		status, scale
		sub		status, bytes
		add		matrix, status
		mov		param3, order
		shl		param3, scale
		add		param3, bytes
		neg		param3
		mov		param4, order
		shl		param4, scale
		neg		param4
		mov		param5, bytes
		neg		param5
		jmp		Core						; call Core (matrix + order * order - 1, order, -(order + 1) * bytes, -order * bytes, -bytes)
else
		mov		param3, order
		shl		param3, scale
		add		param3, bytes
		mov		param4, order
		shl		param4, scale
		mov		param5, bytes
		jmp		Core						; call Core (matrix, order, (order + 1) * bytes, order * bytes, bytes)
end if
;---[Error branch]-------------------------
.error:	initreg	real, status, nanval		; real = NaN
		movap#x	imag, real					; imag = NaN
if x eq s
	unpcklp#x	real, imag					; pack the result
end if
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Determinant of square matrix through upper triangular matrix           ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Real number matrix
DeterminantSquareUp_flt32:		DETERMINANT_SQUARE_FLT		0, s
DeterminantSquareUp_flt64:		DETERMINANT_SQUARE_FLT		0, d

; Complex number matrix
DeterminantSquareUp_cmplx32:	DETERMINANT_SQUARE_CMPLX	0, s
DeterminantSquareUp_cmplx64:	DETERMINANT_SQUARE_CMPLX	0, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Determinant of square matrix through lower triangular matrix           ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Real number matrix
DeterminantSquareLow_flt32:		DETERMINANT_SQUARE_FLT		1, s
DeterminantSquareLow_flt64:		DETERMINANT_SQUARE_FLT		1, d

; Complex number matrix
DeterminantSquareLow_cmplx32:	DETERMINANT_SQUARE_CMPLX	1, s
DeterminantSquareLow_cmplx64:	DETERMINANT_SQUARE_CMPLX	1, d

;******************************************************************************;
;       Solving of linear system                                               ;
;******************************************************************************;

;==============================================================================;
;       Solving of 1 order matrix                                              ;
;==============================================================================;
macro	SOLVE1_FLT	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
mtrx	equ		rsi							; pointer to matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
temp0	equ		xmm0						; temporary register #1
zero	equ		xmm1						; 0.0
one		equ		xmm2						; 1.0
if x eq s
oneval	= PONE_FLT32						; 1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; 1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
	DET1_FLT	mtrx, temp0, x
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0.0
		comis#x	temp0, zero					; if (temp0 == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (mtrx)
;---[Compute value]------------------------
		muls#x	one, [coeff + 0 * bytes]	; one = coeff[0] / det (mtrx)
;---[Store computed value]-----------------
		movs#x	[coeff + 0 * bytes], one	; coeff[0] = one
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SOLVE1_CMPLX	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
mtrx	equ		rsi							; pointer to matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
rtemp0	equ		xmm0						; temporary register #1
itemp0	equ		xmm1						; temporary register #2
re		equ		xmm2						; real part of source complex number
im		equ		xmm3						; imaginary part of source complex number
zero	equ		xmm4						; 0.0
mask	equ		xmm6						; data mask
if x eq s
Inverse	= InvNum_flt32						; Inverse complex number function
scale	= 2									; scale value
else if x eq d
Inverse	= InvNum_flt64						; Inverse complex number function
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
	DET1_CMPLX	mtrx, rtemp0, itemp0, x
;---[Check matrix determinant]-------------
		CMAG	re, im, rtemp0, itemp0, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		call	Inverse						; call Inverse (det)
;---[Compute value]------------------------
		CMUL	rtemp0, itemp0, [coeff+(0+RE)*bytes], [coeff+(0+IM)*bytes], re, im, x
;---[Store computed value]-----------------
		movs#x	[coeff+(0+RE)*bytes], rtemp0; coeff[0].re = rtemp0
		movs#x	[coeff+(0+IM)*bytes], itemp0; coeff[0].im = itemp0
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}

; Real number matrix
Solve1_flt32:	SOLVE1_FLT		s
Solve1_flt64:	SOLVE1_FLT		d

; Complex number matrix
Solve1_cmplx32:	SOLVE1_CMPLX	s
Solve1_cmplx64:	SOLVE1_CMPLX	d

;==============================================================================;
;       Solving of 2 order matrix                                              ;
;==============================================================================;
macro	SOLVE2_FLT	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
mtrx	equ		rsi							; pointer to matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
res0	equ		xmm2						; result register #1
res1	equ		xmm3						; result register #2
zero	equ		xmm4						; 0.0
one		equ		xmm5						; 1.0
if x eq s
oneval	= PONE_FLT32						; 1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; 1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
	DET2_FLT	mtrx, temp0, temp1, x
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0.0
		comis#x	temp0, zero					; if (temp0 == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (mtrx)
;---[Compute 1 value]----------------------
		movs#x	temp0, [coeff + 0 * bytes]
		muls#x	temp0, [mtrx + 3 * bytes]	; temp0 = coeff[0] * mtrx[3]
		movs#x	temp1, [coeff + 1 * bytes]
		muls#x	temp1, [mtrx + 1 * bytes]	; temp1 = coeff[1] * mtrx[1]
		subs#x	temp0, temp1				; temp0 -= temp1
		muls#x	temp0, one					; temp0 /= det (mtrx)
		movap#x	res0, temp0					; res0 = temp0
;---[Compute 2 value]----------------------
		movs#x	temp0, [coeff + 1 * bytes]
		muls#x	temp0, [mtrx + 0 * bytes]	; temp0 = coeff[1] * mtrx[0]
		movs#x	temp1, [coeff + 0 * bytes]
		muls#x	temp1, [mtrx + 2 * bytes]	; temp1 = coeff[0] * mtrx[2]
		subs#x	temp0, temp1				; temp0 -= temp1
		muls#x	temp0, one					; temp0 /= det (mtrx)
		movap#x	res1, temp0					; res1 = temp0
;---[Store computed values]----------------
		movs#x	[coeff + 0 * bytes], res0	; coeff[0] = res0
		movs#x	[coeff + 1 * bytes], res1	; coeff[1] = res1
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SOLVE2_CMPLX	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
mtrx	equ		rsi							; pointer to matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
rtemp0	equ		xmm0						; temporary register #1
itemp0	equ		xmm1						; temporary register #2
real	equ		xmm2						; real part of result
imag	equ		xmm3						; imaginary part of result
re		equ		xmm4						; real part of source complex number
im		equ		xmm5						; imaginary part of source complex number
zero	equ		real						; 0.0
mask	equ		imag						; data mask
stack	equ		rsp							; stack pointer
s_rdet	equ		stack + 0 * 8				; stack position of "rdet" variable
s_idet	equ		stack + 1 * 8				; stack position of "idet" variable
s_rres0	equ		stack + 2 * 8				; stack position of "rres0" variable
s_ires0	equ		stack + 3 * 8				; stack position of "ires0" variable
s_rres1	equ		stack + 4 * 8				; stack position of "rres1" variable
s_ires1	equ		stack + 5 * 8				; stack position of "ires1" variable
if x eq s
Inverse	= InvNum_flt32						; Inverse complex number function
scale	= 2									; scale value
else if x eq d
Inverse	= InvNum_flt64						; Inverse complex number function
scale	= 3									; scale value
end if
space	= 7 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
		sub		stack, space				; reserving stack size for local vars
	DET2_CMPLX	mtrx, rtemp0, itemp0, real, imag, re, im, x
;---[Check matrix determinant]-------------
		CMAG	re, im, rtemp0, itemp0, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		call	Inverse						; call Inverse (det)
		movs#x	[s_rdet], rtemp0			; rdet = rtemp0
		movs#x	[s_idet], itemp0			; idet = itemp0
;---[Compute 1 value]----------------------
		movs#x	rtemp0, [coeff+(0+RE)*bytes]
		movs#x	itemp0, [coeff+(0+IM)*bytes]; temp0 = coeff[0] * mtrx[3]
		CMUL	rtemp0, itemp0, [mtrx+(6+RE)*bytes], [mtrx+(6+IM)*bytes], re, im, x
		movs#x	real, [coeff+(2+RE)*bytes]
		movs#x	imag, [coeff+(2+IM)*bytes]	; number = coeff[1] * mtrx[1]
		CMUL	real, imag, [mtrx+(2+RE)*bytes], [mtrx+(2+IM)*bytes], re, im, x
		subs#x	rtemp0, real
		subs#x	itemp0, imag				; temp0 -= number
		CMUL	rtemp0, itemp0, [s_rdet], [s_idet], re, im, x
		movs#x	[s_rres0], rtemp0			; save real part of result
		movs#x	[s_ires0], itemp0			; save imaginary part of result
;---[Compute 2 value]----------------------
		movs#x	rtemp0, [coeff+(2+RE)*bytes]
		movs#x	itemp0, [coeff+(2+IM)*bytes]; temp0 = coeff[1] * mtrx[0]
		CMUL	rtemp0, itemp0, [mtrx+(0+RE)*bytes], [mtrx+(0+IM)*bytes], re, im, x
		movs#x	real, [coeff+(0+RE)*bytes]
		movs#x	imag, [coeff+(0+IM)*bytes]	; number = coeff[0] * mtrx[2]
		CMUL	real, imag, [mtrx+(4+RE)*bytes], [mtrx+(4+IM)*bytes], re, im, x
		subs#x	rtemp0, real
		subs#x	itemp0, imag				; temp0 -= number
		CMUL	rtemp0, itemp0, [s_rdet], [s_idet], re, im, x
		movs#x	[s_rres1], rtemp0			; save real part of result
		movs#x	[s_ires1], itemp0			; save imaginary part of result
;---[Store computed values]----------------
		movs#x	rtemp0, [s_rres0]
		movs#x	itemp0, [s_ires0]
		movs#x	rtemp1, [s_rres1]
		movs#x	itemp1, [s_ires1]
		movs#x	[coeff+(0+RE)*bytes], rtemp0; coeff[0].re = rres0
		movs#x	[coeff+(0+IM)*bytes], itemp0; coeff[0].im = ires0
		movs#x	[coeff+(2+RE)*bytes], rtemp1; coeff[1].re = rres1
		movs#x	[coeff+(2+IM)*bytes], itemp1; coeff[1].im = ires1
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Real number matrix
Solve2_flt32:	SOLVE2_FLT		s
Solve2_flt64:	SOLVE2_FLT		d

; Complex number matrix
Solve2_cmplx32:	SOLVE2_CMPLX	s
Solve2_cmplx64:	SOLVE2_CMPLX	d

;==============================================================================;
;       Solving of 3 order matrix                                              ;
;==============================================================================;
macro	SOLVE3_FLT	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
mtrx	equ		rsi							; pointer to matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
temp8	equ		xmm8						; temporary register #9
res0	equ		xmm9						; result register #1
res1	equ		xmm10						; result register #2
res2	equ		xmm11						; result register #3
zero	equ		xmm12						; 0.0
one		equ		xmm13						; 1.0
if x eq s
oneval	= PONE_FLT32						; 1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; 1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
	DET3_FLT	mtrx, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, x
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0.0
		comis#x	temp0, zero					; if (temp0 == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (mtrx)
;---[Compute 1 value]----------------------
		movs#x	temp0, [coeff + 0 * bytes]	; temp0 = coeff[0]
		movs#x	temp1, [coeff + 1 * bytes]	; temp1 = coeff[1]
		movs#x	temp2, [coeff + 2 * bytes]	; temp2 = coeff[2]
		muls#x	temp0, temp3				; temp0 *= temp3
		muls#x	temp1, temp4				; temp1 *= temp4
		muls#x	temp2, temp5				; temp2 *= temp5
		adds#x	temp0, temp1				; temp0 += temp1
		adds#x	temp0, temp2				; temp0 += temp2
		muls#x	temp0, one					; temp0 /= det (mtrx)
		movap#x	res0, temp0					; res0 = temp0
;---[Compute 2 value]----------------------
		movs#x	temp0, [coeff + 0 * bytes]	; temp0 = coeff[0]
		movs#x	temp1, [coeff + 1 * bytes]	; temp1 = coeff[1]
		movs#x	temp2, [coeff + 2 * bytes]	; temp2 = coeff[2]
		movs#x	temp3, [mtrx + 5 * bytes]
		muls#x	temp3, [mtrx + 6 * bytes]	; temp3 = mtrx[5] * mtrx[6]
		movs#x	temp6, [mtrx + 3 * bytes]
		muls#x	temp6, [mtrx + 8 * bytes]	; temp6 = mtrx[3] * mtrx[8]
		subs#x	temp3, temp6				; temp3 -= temp6
		movs#x	temp4, [mtrx + 8 * bytes]
		muls#x	temp4, [mtrx + 0 * bytes]	; temp4 = mtrx[8] * mtrx[0]
		movs#x	temp7, [mtrx + 6 * bytes]
		muls#x	temp7, [mtrx + 2 * bytes]	; temp7 = mtrx[6] * mtrx[2]
		subs#x	temp4, temp7				; temp4 -= temp7
		movs#x	temp5, [mtrx + 2 * bytes]
		muls#x	temp5, [mtrx + 3 * bytes]	; temp5 = mtrx[2] * mtrx[3]
		movs#x	temp8, [mtrx + 0 * bytes]
		muls#x	temp8, [mtrx + 5 * bytes]	; temp8 = mtrx[0] * mtrx[5]
		subs#x	temp5, temp8				; temp5 -= temp8
		muls#x	temp0, temp3				; temp0 *= temp3
		muls#x	temp1, temp4				; temp1 *= temp4
		muls#x	temp2, temp5				; temp2 *= temp5
		adds#x	temp0, temp1				; temp0 += temp1
		adds#x	temp0, temp2				; temp0 += temp2
		muls#x	temp0, one					; temp0 /= det (mtrx)
		movap#x	res1, temp0					; res1 = temp0
;---[Compute 3 value]----------------------
		movs#x	temp0, [coeff + 0 * bytes]	; temp0 = coeff[0]
		movs#x	temp1, [coeff + 1 * bytes]	; temp1 = coeff[1]
		movs#x	temp2, [coeff + 2 * bytes]	; temp2 = coeff[2]
		movs#x	temp3, [mtrx + 3 * bytes]
		muls#x	temp3, [mtrx + 7 * bytes]	; temp3 = mtrx[3] * mtrx[7]
		movs#x	temp6, [mtrx + 4 * bytes]
		muls#x	temp6, [mtrx + 6 * bytes]	; temp6 = mtrx[4] * mtrx[6]
		subs#x	temp3, temp6				; temp3 -= temp6
		movs#x	temp4, [mtrx + 6 * bytes]
		muls#x	temp4, [mtrx + 1 * bytes]	; temp4 = mtrx[6] * mtrx[1]
		movs#x	temp7, [mtrx + 7 * bytes]
		muls#x	temp7, [mtrx + 0 * bytes]	; temp7 = mtrx[7] * mtrx[0]
		subs#x	temp4, temp7				; temp4 -= temp7
		movs#x	temp5, [mtrx + 0 * bytes]
		muls#x	temp5, [mtrx + 4 * bytes]	; temp5 = mtrx[0] * mtrx[4]
		movs#x	temp8, [mtrx + 1 * bytes]
		muls#x	temp8, [mtrx + 3 * bytes]	; temp8 = mtrx[1] * mtrx[3]
		subs#x	temp5, temp8				; temp5 -= temp8
		muls#x	temp0, temp3				; temp0 *= temp3
		muls#x	temp1, temp4				; temp1 *= temp4
		muls#x	temp2, temp5				; temp2 *= temp5
		adds#x	temp0, temp1				; temp0 += temp1
		adds#x	temp0, temp2				; temp0 += temp2
		muls#x	temp0, one					; temp0 /= det (mtrx)
		movap#x	res2, temp0					; res2 = temp0
;---[Store computed values]----------------
		movs#x	[coeff + 0 * bytes], res0	; coeff[0] = res0
		movs#x	[coeff + 1 * bytes], res1	; coeff[1] = res1
		movs#x	[coeff + 2 * bytes], res2	; coeff[2] = res2
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SOLVE3_CMPLX	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
mtrx	equ		rsi							; pointer to matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
rtemp0	equ		xmm0						; temporary register #1
itemp0	equ		xmm1						; temporary register #2
rtemp1	equ		xmm2						; temporary register #3
itemp1	equ		xmm3						; temporary register #4
rtemp2	equ		xmm4						; temporary register #5
itemp2	equ		xmm5						; temporary register #6
rtemp3	equ		xmm6						; temporary register #7
itemp3	equ		xmm7						; temporary register #8
rtemp4	equ		xmm8						; temporary register #9
itemp4	equ		xmm9						; temporary register #10
rtemp5	equ		xmm10						; temporary register #11
itemp5	equ		xmm11						; temporary register #12
real	equ		xmm12						; real part of result
imag	equ		xmm13						; imaginary part of result
re		equ		xmm14						; real part of source complex number
im		equ		xmm15						; imaginary part of source complex number
zero	equ		real						; 0.0
mask	equ		imag						; data mask
stack	equ		rsp							; stack pointer
s_rdet	equ		stack + 0 * 8				; stack position of "rdet" variable
s_idet	equ		stack + 1 * 8				; stack position of "idet" variable
s_rres0	equ		stack + 2 * 8				; stack position of "rres0" variable
s_ires0	equ		stack + 3 * 8				; stack position of "ires0" variable
s_rres1	equ		stack + 4 * 8				; stack position of "rres1" variable
s_ires1	equ		stack + 5 * 8				; stack position of "ires1" variable
s_rres2	equ		stack + 6 * 8				; stack position of "rres2" variable
s_ires2	equ		stack + 7 * 8				; stack position of "ires2" variable
if x eq s
Inverse	= InvNum_flt32						; Inverse complex number function
scale	= 2									; scale value
else if x eq d
Inverse	= InvNum_flt64						; Inverse complex number function
scale	= 3									; scale value
end if
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Compute matrix determinant]-----------
		sub		stack, space				; reserving stack size for local vars
	DET3_CMPLX	mtrx, rtemp0, itemp0, rtemp1, itemp1, rtemp2, itemp2, rtemp3, itemp3, rtemp4, itemp4, rtemp5, itemp5, real, imag, re, im, x
;---[Check matrix determinant]-------------
		CMAG	re, im, rtemp0, itemp0, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re == 0.0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		call	Inverse						; call Inverse (det)
		movs#x	[s_rdet], rtemp0			; rdet = rtemp0
		movs#x	[s_idet], itemp0			; idet = itemp0
;---[Compute 1 value]----------------------
		movs#x	rtemp0, [coeff+(0+RE)*bytes]; rtemp0 = coeff[0].re
		movs#x	itemp0, [coeff+(0+IM)*bytes]; itemp0 = coeff[0].im
		movs#x	rtemp1, [coeff+(2+RE)*bytes]; rtemp1 = coeff[1].re
		movs#x	itemp1, [coeff+(2+IM)*bytes]; itemp1 = coeff[1].im
		movs#x	rtemp2, [coeff+(4+RE)*bytes]; rtemp2 = coeff[2].re
		movs#x	itemp2, [coeff+(4+IM)*bytes]; itemp2 = coeff[2].im
		CMUL	rtemp0, itemp0, rtemp3, itemp3, re, im, x
		CMUL	rtemp1, itemp1, rtemp4, itemp4, re, im, x
		CMUL	rtemp2, itemp2, rtemp5, itemp5, re, im, x
		adds#x	rtemp0, rtemp1
		adds#x	itemp0, itemp1				; temp0 += temp1
		adds#x	rtemp0, rtemp2
		adds#x	itemp0, itemp2				; temp0 += temp2
		CMUL	rtemp0, itemp0, [s_rdet], [s_idet], re, im, x
		movs#x	[s_rres0], rtemp0			; save real part of result
		movs#x	[s_ires0], itemp0			; save imaginary part of result
;---[Compute 2 value]----------------------
		movs#x	rtemp0, [coeff+(0+RE)*bytes]; rtemp0 = coeff[0].re
		movs#x	itemp0, [coeff+(0+IM)*bytes]; itemp0 = coeff[0].im
		movs#x	rtemp1, [coeff+(2+RE)*bytes]; rtemp1 = coeff[1].re
		movs#x	itemp1, [coeff+(2+IM)*bytes]; itemp1 = coeff[1].im
		movs#x	rtemp2, [coeff+(4+RE)*bytes]; rtemp2 = coeff[2].re
		movs#x	itemp2, [coeff+(4+IM)*bytes]; itemp2 = coeff[2].im
		movs#x	rtemp3, [mtrx+(10+RE)*bytes]
		movs#x	itemp3, [mtrx+(10+IM)*bytes]; temp3 = mtrx[5] * mtrx[6]
		CMUL	rtemp3, itemp3, [mtrx+(12+RE)*bytes], [mtrx+(12+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(6+RE)*bytes]
		movs#x	imag, [mtrx+(6+IM)*bytes]	; number = mtrx[3] * mtrx[8]
		CMUL	real, imag, [mtrx+(16+RE)*bytes], [mtrx+(16+IM)*bytes], re, im, x
		subs#x	rtemp3, real
		subs#x	itemp3, imag				; temp3 -= number
		movs#x	rtemp4, [mtrx+(16+RE)*bytes]
		movs#x	itemp4, [mtrx+(16+IM)*bytes]; temp4 = mtrx[8] * mtrx[0]
		CMUL	rtemp4, itemp4, [mtrx+(0+RE)*bytes], [mtrx+(0+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(12+RE)*bytes]
		movs#x	imag, [mtrx+(12+IM)*bytes]	; number = mtrx[6] * mtrx[2]
		CMUL	real, imag, [mtrx+(4+RE)*bytes], [mtrx+(4+IM)*bytes], re, im, x
		subs#x	rtemp4, real
		subs#x	itemp4, imag				; temp4 -= number
		movs#x	rtemp5, [mtrx+(4+RE)*bytes]
		movs#x	itemp5, [mtrx+(4+IM)*bytes]	; temp5 = mtrx[2] * mtrx[3]
		CMUL	rtemp5, itemp5, [mtrx+(6+RE)*bytes], [mtrx+(6+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(0+RE)*bytes]
		movs#x	imag, [mtrx+(0+IM)*bytes]	; number = mtrx[0] * mtrx[5]
		CMUL	real, imag, [mtrx+(10+RE)*bytes], [mtrx+(10+IM)*bytes], re, im, x
		subs#x	rtemp5, real
		subs#x	itemp5, imag				; temp5 -= number
		CMUL	rtemp0, itemp0, rtemp3, itemp3, re, im, x
		CMUL	rtemp1, itemp1, rtemp4, itemp4, re, im, x
		CMUL	rtemp2, itemp2, rtemp5, itemp5, re, im, x
		adds#x	rtemp0, rtemp1
		adds#x	itemp0, itemp1				; temp0 += temp1
		adds#x	rtemp0, rtemp2
		adds#x	itemp0, itemp2				; temp0 += temp2
		CMUL	rtemp0, itemp0, [s_rdet], [s_idet], re, im, x
		movs#x	[s_rres1], rtemp0			; save real part of result
		movs#x	[s_ires1], itemp0			; save imaginary part of result
;---[Compute 3 value]----------------------
		movs#x	rtemp0, [coeff+(0+RE)*bytes]; rtemp0 = coeff[0].re
		movs#x	itemp0, [coeff+(0+IM)*bytes]; itemp0 = coeff[0].im
		movs#x	rtemp1, [coeff+(2+RE)*bytes]; rtemp1 = coeff[1].re
		movs#x	itemp1, [coeff+(2+IM)*bytes]; itemp1 = coeff[1].im
		movs#x	rtemp2, [coeff+(4+RE)*bytes]; rtemp2 = coeff[2].re
		movs#x	itemp2, [coeff+(4+IM)*bytes]; itemp2 = coeff[2].im
		movs#x	rtemp3, [mtrx+(6+RE)*bytes]
		movs#x	itemp3, [mtrx+(6+IM)*bytes]	; temp3 = mtrx[3] * mtrx[7]
		CMUL	rtemp3, itemp3, [mtrx+(14+RE)*bytes], [mtrx+(14+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(8+RE)*bytes]
		movs#x	imag, [mtrx+(8+IM)*bytes]	; number = mtrx[4] * mtrx[6]
		CMUL	real, imag, [mtrx+(12+RE)*bytes], [mtrx+(12+IM)*bytes], re, im, x
		subs#x	rtemp3, real
		subs#x	itemp3, imag				; temp3 -= number
		movs#x	rtemp4, [mtrx+(12+RE)*bytes]
		movs#x	itemp4, [mtrx+(12+IM)*bytes]; temp4 = mtrx[6] * mtrx[1]
		CMUL	rtemp4, itemp4, [mtrx+(2+RE)*bytes], [mtrx+(2+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(14+RE)*bytes]
		movs#x	imag, [mtrx+(14+IM)*bytes]	; number = mtrx[7] * mtrx[0]
		CMUL	real, imag, [mtrx+(0+RE)*bytes], [mtrx+(0+IM)*bytes], re, im, x
		subs#x	rtemp4, real
		subs#x	itemp4, imag				; temp4 -= number
		movs#x	rtemp5, [mtrx+(0+RE)*bytes]
		movs#x	itemp5, [mtrx+(0+IM)*bytes]	; temp5 = mtrx[0] * mtrx[4]
		CMUL	rtemp5, itemp5, [mtrx+(8+RE)*bytes], [mtrx+(8+IM)*bytes], re, im, x
		movs#x	real, [mtrx+(2+RE)*bytes]
		movs#x	imag, [mtrx+(2+IM)*bytes]	; number = mtrx[1] * mtrx[3]
		CMUL	real, imag, [mtrx+(6+RE)*bytes], [mtrx+(6+IM)*bytes], re, im, x
		subs#x	rtemp5, real
		subs#x	itemp5, imag				; temp5 -= number
		CMUL	rtemp0, itemp0, rtemp3, itemp3, re, im, x
		CMUL	rtemp1, itemp1, rtemp4, itemp4, re, im, x
		CMUL	rtemp2, itemp2, rtemp5, itemp5, re, im, x
		adds#x	rtemp0, rtemp1
		adds#x	itemp0, itemp1				; temp0 += temp1
		adds#x	rtemp0, rtemp2
		adds#x	itemp0, itemp2				; temp0 += temp2
		CMUL	rtemp0, itemp0, [s_rdet], [s_idet], re, im, x
		movs#x	[s_rres2], rtemp0			; save real part of result
		movs#x	[s_ires2], itemp0			; save imaginary part of result
;---[Store computed values]----------------
		movs#x	rtemp0, [s_rres0]
		movs#x	itemp0, [s_ires0]
		movs#x	rtemp1, [s_rres1]
		movs#x	itemp1, [s_ires1]
		movs#x	rtemp2, [s_rres2]
		movs#x	itemp2, [s_ires2]
		movs#x	[coeff+(0+RE)*bytes], rtemp0; coeff[0].re = rres0
		movs#x	[coeff+(0+IM)*bytes], itemp0; coeff[0].im = ires0
		movs#x	[coeff+(2+RE)*bytes], rtemp1; coeff[1].re = rres1
		movs#x	[coeff+(2+IM)*bytes], itemp1; coeff[1].im = ires1
		movs#x	[coeff+(4+RE)*bytes], rtemp2; coeff[2].re = rres2
		movs#x	[coeff+(4+IM)*bytes], itemp2; coeff[2].im = ires2
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Real number matrix
Solve3_flt32:	SOLVE3_FLT		s
Solve3_flt64:	SOLVE3_FLT		d

; Complex number matrix
Solve3_cmplx32:	SOLVE3_CMPLX	s
Solve3_cmplx64:	SOLVE3_CMPLX	d

;==============================================================================;
;       Gauss elimination                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Gauss elimination core function                                        ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	GAUSS_CORE_FLT	cmd, x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
;---[Internal variables]-------------------
status	equ		rax							; operation status
mptr	equ		r10							; pointer to source matrix
cptr	equ		r11							; pointer to coefficients matrix
value	equ		xmm0						; scale coefficient
temp	equ		xmm1						; temporary register
zero	equ		xmm2						; 0.0
one		equ		xmm3						; 1.0
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_step0	equ		stack + 2 * 8				; stack position of "step0" variable
s_step1	equ		stack + 3 * 8				; stack position of "step1" variable
s_step2	equ		stack + 4 * 8				; stack position of "step2" variable
s_size1	equ		stack + 5 * 8				; stack position of "size1" variable
s_size2	equ		stack + 6 * 8				; stack position of "size2" variable
s_mptr	equ		stack + 7 * 8				; stack position of "mptr" variable
s_cptr	equ		stack + 8 * 8				; stack position of "cptr" variable
s_temp	equ		stack + 9 * 8				; stack position of "temp" variable
s_one	equ		stack + 10 * 8				; stack position of "one" variable
if x eq s
Swap	= SwapRows_flt32					; Swap matrix rows function
SubRow	= SubRow_flt32						; Subtract matrix row function
oneval	= PONE_FLT32						; 1.0
else if x eq d
Swap	= SwapRows_flt64					; Swap matrix rows function
SubRow	= SubRow_flt64						; Subtract matrix row function
oneval	= PONE_FLT64						; 1.0
end if
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		initreg	one, status, oneval			; one = 1.0
		lea		status, [order - 1]			; size1 = order - 1
		test	status, status				; if (size1 == 0)
		jz		.exit						;     then go to exit
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_size1], status			; save "size1" variable into the stack
		movs#x	[s_one], one				; one = 1.0
;---[Elimination loop]---------------------
.loop:	lea		mptr, [matrix + step1]		; mptr = matrix + step1
		lea		cptr, [coeff + step2]		; cptr = coeff + step2
		mov		status, [s_size1]			; size2 = size1
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		mov		[s_size2], status			; save "size2" variable into the stack
		movs#x	value, [matrix]				; value = matrix[0]
		xorp#x	zero, zero					; zero = 0.0
		comis#x	value, zero					; if (value == 0.0)
		je		.sloop						;     then go to seeking loop
		movs#x	temp, [s_one]
		divs#x	temp, value					; temp = 1.0 / matrix[0]
		movs#x	[s_temp], temp				; save "temp" variable into the stack
;---[Internal loop]------------------------
.iloop:	movs#x	value, [mptr]
		muls#x	value, [s_temp]				; value = mptr[0] / matrix[0]
		xorp#x	zero, zero
		movs#x	[mptr], zero				; mptr[0] = 0.0
		movs#x	zero, [coeff]
		muls#x	zero, value
		movs#x	temp, [cptr]
		subs#x	temp, zero					; temp = cptr[0] - coeff[0] * value
		movs#x	[cptr], temp				; cptr[0] = temp
		mov		param1, [s_mptr]
		add		param1, [s_step2]
		mov		param2, [s_mtrx]
		add		param2, [s_step2]
		mov		param3, [s_size1]
		mov		param4, [s_step2]
		call	SubRow						; call SubRow (mptr + step2, matrix + step2, size1, step2, value)
.back:	mov		coeff, [s_coeff]			; get "coeff" variable from the stack
		mov		mptr, [s_mptr]				; get "mptr" variable from the stack
		mov		cptr, [s_cptr]				; get "cptr" variable from the stack
		add		mptr, [s_step1]				; mptr += step1
		add		cptr, [s_step2]				; cptr += step2
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		sub		qword [s_size2], 1			; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		coeff, [s_coeff]			; get "coeff" variable from the stack
		mov		step1, [s_step1]			; get "step1" variable from the stack
		mov		step2, [s_step2]			; get "step2" variable from the stack
		add		matrix, [s_step0]			; matrix += step0
		add		coeff, [s_step2]			; coeff += step2
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		sub		qword [s_size1], 1			; size1--
		jnz		.loop						; do while (size1 != 0)
;---[End of elimination loop]--------------
.exit:	mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Seeking loop]-------------------------
.sloop:	movs#x	value, [mptr]				; value = mptr[0]
		xorp#x	zero, zero					; zero = 0.0
		comis#x	value, zero					; if (value != 0.0)
		jne		.swap						;     then go to swap branch
		add		mptr, [s_step1]				; mptr += step1
		add		cptr, [s_step2]				; cptr += step2
		sub		qword [s_size2], 1			; size2--
		jnz		.sloop						; do while (size2 != 0)
;---[End of seeking loop]------------------
		xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Swap branch]--------------------------
.swap:	mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		movs#x	temp, [s_one]
		divs#x	temp, value					; temp = 1.0 / mptr[0]
		movs#x	[s_temp], temp				; save "temp" variable into the stack
		cmd		value, [cptr]				; value = cptr[0]
		cmd		temp, [coeff]				; temp = coeff[0]
		cmd		[cptr], temp				; cptr[0] = temp
		cmd		[coeff], value				; coeff[0] = value
		mov		param1, [s_mptr]
		mov		param2, [s_mtrx]
		mov		param3, [s_size1]
		add		param3, 1
		mov		param4, [s_step2]
		call	Swap						; call Swap (mptr, matrix, size1 + 1, step2)
		jmp		.back						; go back
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	GAUSS_CORE_CMPLX	cmd, x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
;---[Internal variables]-------------------
status	equ		rax							; operation status
mptr	equ		r10							; pointer to source matrix
cptr	equ		r11							; pointer to coefficients matrix
real	equ		xmm0						; real part of result
imag	equ		xmm1						; imaginary part of result
re		equ		xmm2						; real part of source complex number
im		equ		xmm3						; imaginary part of source complex number
temp0	equ		xmm4						; temporary register #1
temp1	equ		xmm5						; temporary register #2
zero	equ		xmm6						; 0.0
mask	equ		xmm7						; data mask
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_step0	equ		stack + 2 * 8				; stack position of "step0" variable
s_step1	equ		stack + 3 * 8				; stack position of "step1" variable
s_step2	equ		stack + 4 * 8				; stack position of "step2" variable
s_size1	equ		stack + 5 * 8				; stack position of "size1" variable
s_size2	equ		stack + 6 * 8				; stack position of "size2" variable
s_mptr	equ		stack + 7 * 8				; stack position of "mptr" variable
s_cptr	equ		stack + 8 * 8				; stack position of "cptr" variable
s_rtemp	equ		stack + 9 * 8				; stack position of "rtemp" variable
s_itemp	equ		stack + 10 * 8				; stack position of "itemp" variable
if x eq s
Inverse	= InvNum_flt32						; Inverse complex number function
Swap	= SwapRows_flt32					; Swap matrix rows function
SubRow	= SubRow_flt32						; Subtract matrix row function
scale	= 3									; scale value
else if x eq d
Inverse	= InvNum_flt64						; Inverse complex number function
Swap	= SwapRows_flt64					; Swap matrix rows function
SubRow	= SubRow_flt64						; Subtract matrix row function
scale	= 4									; scale value
end if
space	= 11 * 8							; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		lea		status, [order - 1]			; size1 = order - 1
		test	status, status				; if (size1 == 0)
		jz		.exit						;     then go to exit
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_size1], status			; save "size1" variable into the stack
;---[Elimination loop]---------------------
.loop:	lea		mptr, [matrix + step1]		; mptr = matrix + step1
		lea		cptr, [coeff + step2]		; cptr = coeff + step2
		mov		status, [s_size1]			; size2 = size1
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		mov		[s_size2], status			; save "size2" variable into the stack
		movs#x	real, [matrix + RE*bytes/2]	; real = matrix[0].re
		movs#x	imag, [matrix + IM*bytes/2]	; imag = matrix[0].im
		CMAG	re, im, real, imag, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re == 0.0)
		je		.sloop						;     then go to seeking loop
		call	Inverse						; call Inverse (matrix[0])
		movs#x	[s_rtemp], real				; rtemp = real
		movs#x	[s_itemp], imag				; itemp = imag
;---[Internal loop]------------------------
.iloop:	movs#x	real, [mptr + RE*bytes/2]	; real = mptr[0].re
		movs#x	imag, [mptr + IM*bytes/2]	; imag = mptr[0].im
		movs#x	re, [s_rtemp]				; get "rtemp" variable from the stack
		movs#x	im, [s_itemp]				; get "itemp" variable from the stack
		CMUL	real, imag, re, im, temp0, temp1, x
		xorp#x	zero, zero
		movs#x	[mptr + RE*bytes/2], zero	; mptr[0].re = 0.0
		movs#x	[mptr + IM*bytes/2], zero	; mptr[0].im = 0.0
		movs#x	re, [coeff + RE*bytes/2]	; re = coeff[0].re
		movs#x	im, [coeff + IM*bytes/2]	; im = coeff[0].im
		CMUL	re, im, real, imag, temp0, temp1, x
		movs#x	temp0, [cptr + RE*bytes/2]	; temp0 = cptr[0].re
		movs#x	temp1, [cptr + IM*bytes/2]	; temp1 = cptr[0].im
		subs#x	temp0, re					; temp0 -= re
		subs#x	temp1, im					; temp1 -= im
		movs#x	[cptr + RE*bytes/2], temp0	; cptr[0].re = temp0
		movs#x	[cptr + IM*bytes/2], temp1	; cptr[0].im = temp1
		mov		param1, [s_mptr]
		add		param1, [s_step2]
		mov		param2, [s_mtrx]
		add		param2, [s_step2]
		mov		param3, [s_size1]
		mov		param4, [s_step2]
		call	SubRow						; call SubRow (mptr + step2, matrix + step2, size1, step2, value)
.back:	mov		coeff, [s_coeff]			; get "coeff" variable from the stack
		mov		mptr, [s_mptr]				; get "mptr" variable from the stack
		mov		cptr, [s_cptr]				; get "cptr" variable from the stack
		add		mptr, [s_step1]				; mptr += step1
		add		cptr, [s_step2]				; cptr += step2
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		sub		qword [s_size2], 1			; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		coeff, [s_coeff]			; get "coeff" variable from the stack
		mov		step1, [s_step1]			; get "step1" variable from the stack
		mov		step2, [s_step2]			; get "step2" variable from the stack
		add		matrix, [s_step0]			; matrix += step0
		add		coeff, [s_step2]			; coeff += step2
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		sub		qword [s_size1], 1			; size1--
		jnz		.loop						; do while (size1 != 0)
;---[End of elimination loop]--------------
.exit:	mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Seeking loop]-------------------------
.sloop:	movs#x	real, [mptr + RE*bytes/2]	; real = mptr[0].re
		movs#x	imag, [mptr + IM*bytes/2]	; imag = mptr[0].im
		CMAG	re, im, real, imag, mask, status, x
		xorp#x	zero, zero					; zero = 0.0
		comis#x	re, zero					; if (re != 0.0)
		jne		.swap						;     then go to swap branch
		add		mptr, [s_step1]				; mptr += step1
		add		cptr, [s_step2]				; cptr += step2
		sub		qword [s_size2], 1			; size2--
		jnz		.sloop						; do while (size2 != 0)
;---[End of seeking loop]------------------
		xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Swap branch]--------------------------
.swap:	mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		call	Inverse						; call Inverse (mptr[0])
		movs#x	[s_rtemp], real				; rtemp = real
		movs#x	[s_itemp], imag				; itemp = imag
		cmd		temp0, [cptr]				; temp0 = cptr[0]
		cmd		temp1, [coeff]				; temp1 = coeff[0]
		cmd		[cptr], temp1				; cptr[0] = temp1
		cmd		[coeff], temp0				; coeff[0] = temp0
		mov		param1, [s_mptr]
		mov		param2, [s_mtrx]
		mov		param3, [s_size1]
		add		param3, 1
		mov		param4, [s_step2]
		call	Swap						; call Swap (mptr, matrix, size1 + 1, step2)
		jmp		.back						; go back
}

; Real number matrix
GaussCore_flt32:	GAUSS_CORE_FLT		movss, s
GaussCore_flt64:	GAUSS_CORE_FLT		movsd, d

; Complex number matrix
GaussCore_cmplx32:	GAUSS_CORE_CMPLX	movlps, s
GaussCore_cmplx64:	GAUSS_CORE_CMPLX	movupd, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Solving triangular matrix                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SOLVE_TRIANGULAR_FLT	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
;---[Internal variables]-------------------
status	equ		rax							; operation status
cptr	equ		r10							; pointer to coefficients matrix
mptr	equ		r11							; pointer to source matrix
value	equ		xmm0						; scale coefficient
mask	equ		xmm1						; sign mask
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_order	equ		stack + 2 * 8				; stack position of "order" variable
s_step0	equ		stack + 3 * 8				; stack position of "step0" variable
s_step1	equ		stack + 4 * 8				; stack position of "step1" variable
s_step2	equ		stack + 5 * 8				; stack position of "step2" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
s_cptr	equ		stack + 7 * 8				; stack position of "cptr" variable
s_mptr	equ		stack + 8 * 8				; stack position of "mptr" variable
if x eq s
smask	= SMASK_FLT32						; sign mask
MulRows	= MulRows_flt32						; Multiply matrix rows function
else if x eq d
smask	= SMASK_FLT64						; sign mask
MulRows	= MulRows_flt64						; Multiply matrix rows function
end if
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		lea		status, [order - 1]			; size = order - 1
		lea		cptr, [coeff + step2]		; cptr = coeff + step2
		lea		mptr, [matrix + step1]		; mptr = matrix + step1
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_size], status			; save "size" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		movs#x	value, [coeff]
		divs#x	value, [matrix]
		movs#x	[coeff], value				; coeff[0] = coeff[0] / matrix[0]
		cmp		qword [s_size], 0			; if (size == 0)
		jz		.exit						;     then go to exit
;---[Solving loop]-------------------------
.loop:	mov		param1, [s_mptr]
		mov		param2, [s_coeff]
		mov		param3, [s_order]
		sub		param3, [s_size]
		mov		param4, [s_step2]
		mov		param5, param4
		call	MulRows						; call MulRows (mptr, coeff, order - size, step2, step2)
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		cptr, [s_cptr]				; get "cptr" variable from the stack
		mov		mptr, [s_mptr]				; get "mptr" variable from the stack
		add		matrix, [s_step0]			; matrix += step0
		initreg	mask, status, smask			; mask = smask
		xorp#x	value, mask					; value = -value
		adds#x	value, [cptr]				; value += cptr[0]
		divs#x	value, [matrix]
		movs#x	[cptr], value				; cptr[0] = (cptr[0] - value) / matrix[0]
		add		cptr, [s_step2]				; cptr += step2
		add		mptr, [s_step1]				; mptr += step1
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of solving loop]------------------
.exit:	mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SOLVE_TRIANGULAR_CMPLX	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
;---[Internal variables]-------------------
status	equ		rax							; operation status
cptr	equ		r10							; pointer to coefficients matrix
mptr	equ		r11							; pointer to source matrix
treal	equ		xmm0						; real part of target complex number
timag	equ		xmm1						; imaginary part of target complex number
sreal	equ		xmm2						; real part of source complex number
simag	equ		xmm3						; imaginary part of source complex number
mask	equ		xmm4						; sign mask
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_order	equ		stack + 2 * 8				; stack position of "order" variable
s_step0	equ		stack + 3 * 8				; stack position of "step0" variable
s_step1	equ		stack + 4 * 8				; stack position of "step1" variable
s_step2	equ		stack + 5 * 8				; stack position of "step2" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
s_cptr	equ		stack + 7 * 8				; stack position of "cptr" variable
s_mptr	equ		stack + 8 * 8				; stack position of "mptr" variable
if x eq s
smask	= SMASK_FLT32						; sign mask
DivFunc	= DivNum_flt32						; Division of complex numbers
MulRows	= MulRows_cmplx32					; Multiply matrix rows function
scale	= 3									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
DivFunc	= DivNum_flt64						; Division of complex numbers
MulRows	= MulRows_cmplx64					; Multiply matrix rows function
scale	= 4									; scale value
end if
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		lea		status, [order - 1]			; size = order - 1
		lea		cptr, [coeff + step2]		; cptr = coeff + step2
		lea		mptr, [matrix + step1]		; mptr = matrix + step1
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_size], status			; save "size" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		movs#x	treal, [coeff + RE*bytes/2]	; treal = coeff[0].re
		movs#x	timag, [coeff + IM*bytes/2]	; timag = coeff[0].im
		movs#x	sreal, [matrix + RE*bytes/2]; sreal = matrix[0].re
		movs#x	simag, [matrix + IM*bytes/2]; simag = matrix[0].im
		call	DivFunc						; call DivFunc (coeff[0], matrix[0])
		movs#x	[coeff + RE*bytes/2], treal	; coeff[0].re = treal
		movs#x	[coeff + IM*bytes/2], timag	; coeff[0].im = timag
		cmp		qword [s_size], 0			; if (size == 0)
		jz		.exit						;     then go to exit
;---[Solving loop]-------------------------
.loop:	mov		param1, [s_mptr]
		mov		param2, [s_coeff]
		mov		param3, [s_order]
		sub		param3, [s_size]
		mov		param4, [s_step2]
		mov		param5, param4
		call	MulRows						; call MulRows (mptr, coeff, order - size, step2, step2)
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		cptr, [s_cptr]				; get "cptr" variable from the stack
		mov		mptr, [s_mptr]				; get "mptr" variable from the stack
		add		matrix, [s_step0]			; matrix += step0
		initreg	mask, status, smask			; mask = smask
		xorp#x	treal, mask					; treal = -treal
		xorp#x	timag, mask					; timag = -timag
		adds#x	treal, [cptr + RE*bytes/2]	; treal += cptr[0].re
		adds#x	timag, [cptr + IM*bytes/2]	; timag += cptr[0].im
		movs#x	sreal, [matrix + RE*bytes/2]; sreal = matrix[0].re
		movs#x	simag, [matrix + IM*bytes/2]; simag = matrix[0].im
		call	DivFunc						; call DivFunc (coeff[0], matrix[0])
		movs#x	[cptr + RE*bytes/2], treal	; cptr[0].re = treal
		movs#x	[cptr + IM*bytes/2], timag	; cptr[0].im = timag
		add		cptr, [s_step2]				; cptr += step2
		add		mptr, [s_step1]				; mptr += step1
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of solving loop]------------------
.exit:	mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
}

; Real number matrix
SolveTriangular_flt32:		SOLVE_TRIANGULAR_FLT	s
SolveTriangular_flt64:		SOLVE_TRIANGULAR_FLT	d

; Complex number matrix
SolveTriangular_cmplx32:	SOLVE_TRIANGULAR_CMPLX	s
SolveTriangular_cmplx64:	SOLVE_TRIANGULAR_CMPLX	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Solving function for Gauss elimination                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	GAUSS_FLT	low, x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
;---[Internal variables]-------------------
status	equ		rax							; operation status
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
mptr	equ		r10							; pointer to source matrix
cptr	equ		r11							; pointer to coefficients matrix
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_order	equ		stack + 2 * 8				; stack position of "order" variable
s_step0	equ		stack + 3 * 8				; stack position of "step0" variable
s_step1	equ		stack + 4 * 8				; stack position of "step1" variable
s_step2	equ		stack + 5 * 8				; stack position of "step2" variable
s_mptr	equ		stack + 6 * 8				; stack position of "mptr" variable
s_cptr	equ		stack + 7 * 8				; stack position of "cptr" variable
if x eq s
Func1	= Solve1_flt32						; Solving of 1 order matrix
Func2	= Solve2_flt32						; Solving of 2 order matrix
Func3	= Solve3_flt32						; Solving of 3 order matrix
Core	= GaussCore_flt32					; Gauss elimination core function
Solve	= SolveTriangular_flt32				; Solve triangular matrix function
scale	= 2									; scale value
else if x eq d
Func1	= Solve1_flt64						; Solving of 1 order matrix
Func2	= Solve2_flt64						; Solving of 2 order matrix
Func3	= Solve3_flt64						; Solving of 3 order matrix
Core	= GaussCore_flt64					; Gauss elimination core function
Solve	= SolveTriangular_flt64				; Solve triangular matrix function
scale	= 3									; scale value
end if
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.exit						;     then return false
		cmp		order, 1					; if (order == 1)
		je		Func1						;     then call Func1 (coeff, matrix)
		cmp		order, 2					; if (order == 2)
		je		Func2						;     then call Func2 (coeff, matrix)
		cmp		order, 3					; if (order == 3)
		je		Func3						;     then call Func3 (coeff, matrix)
;---[Compute step values]------------------
		sub		stack, space				; reserving stack size for local vars
		mov		step0, order
		shl		step0, scale
		add		step0, bytes
		mov		step1, order
		shl		step1, scale
		mov		step2, bytes
		mov		status, order
		imul	status, order
		shl		status, scale
		sub		status, bytes
		lea		mptr, [matrix + status]
		mov		status, order
		shl		status, scale
		sub		status, bytes
		lea		cptr, [coeff + status]
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
;---[Gauss elimination]--------------------
if low
		mov		param1, [s_cptr]
		mov		param2, [s_mptr]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		neg		param4
		mov		param5, [s_step1]
		neg		param5
		mov		param6, [s_step2]
		neg		param6
		call	Core						; call Core (cptr, mptr, order, -step0, -step1, -step2)
else
		mov		param1, [s_coeff]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		call	Core						; call Core (coeff, matrix, order, step0, step1, step2)
end if
		test	status, status				; if (status == 0)
		jz		.error						;     then return false
;---[Solve triangular matrix]--------------
if low
		mov		param1, [s_coeff]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		add		stack, space				; restoring back the stack pointer
		jmp		Solve						; Solve (coeff, matrix, order, step0, step1, step2)
else
		mov		param1, [s_cptr]
		mov		param2, [s_mptr]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		neg		param4
		mov		param5, [s_step1]
		neg		param5
		mov		param6, [s_step2]
		neg		param6
		add		stack, space				; restoring back the stack pointer
		jmp		Solve						; Solve (cptr, mptr, order, -step0, -step1, -step2)
end if
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
.exit:	xor		status, status				; return false
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	GAUSS_CMPLX	low, x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
;---[Internal variables]-------------------
status	equ		rax							; operation status
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
mptr	equ		r10							; pointer to source matrix
cptr	equ		r11							; pointer to coefficients matrix
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_order	equ		stack + 2 * 8				; stack position of "order" variable
s_step0	equ		stack + 3 * 8				; stack position of "step0" variable
s_step1	equ		stack + 4 * 8				; stack position of "step1" variable
s_step2	equ		stack + 5 * 8				; stack position of "step2" variable
s_mptr	equ		stack + 6 * 8				; stack position of "mptr" variable
s_cptr	equ		stack + 7 * 8				; stack position of "cptr" variable
if x eq s
Func1	= Solve1_cmplx32					; Solving of 1 order matrix
Func2	= Solve2_cmplx32					; Solving of 2 order matrix
Func3	= Solve3_cmplx32					; Solving of 3 order matrix
Core	= GaussCore_cmplx32					; Gauss elimination core function
Solve	= SolveTriangular_cmplx32			; Solve triangular matrix function
scale	= 3									; scale value
else if x eq d
Func1	= Solve1_cmplx64					; Solving of 1 order matrix
Func2	= Solve2_cmplx64					; Solving of 2 order matrix
Func3	= Solve3_cmplx64					; Solving of 3 order matrix
Core	= GaussCore_cmplx64					; Gauss elimination core function
Solve	= SolveTriangular_cmplx64			; Solve triangular matrix function
scale	= 4									; scale value
end if
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.exit						;     then return false
		cmp		order, 1					; if (order == 1)
		je		Func1						;     then call Func1 (coeff, matrix)
		cmp		order, 2					; if (order == 2)
		je		Func2						;     then call Func2 (coeff, matrix)
		cmp		order, 3					; if (order == 3)
		je		Func3						;     then call Func3 (coeff, matrix)
;---[Compute step values]------------------
		sub		stack, space				; reserving stack size for local vars
		mov		step0, order
		shl		step0, scale
		add		step0, bytes
		mov		step1, order
		shl		step1, scale
		mov		step2, bytes
		mov		status, order
		imul	status, order
		shl		status, scale
		sub		status, bytes
		lea		mptr, [matrix + status]
		mov		status, order
		shl		status, scale
		sub		status, bytes
		lea		cptr, [coeff + status]
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
;---[Gauss elimination]--------------------
if low
		mov		param1, [s_cptr]
		mov		param2, [s_mptr]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		neg		param4
		mov		param5, [s_step1]
		neg		param5
		mov		param6, [s_step2]
		neg		param6
		call	Core						; call Core (cptr, mptr, order, -step0, -step1, -step2)
else
		mov		param1, [s_coeff]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		call	Core						; call Core (coeff, matrix, order, step0, step1, step2)
end if
		test	status, status				; if (status == 0)
		jz		.error						;     then return false
;---[Solve triangular matrix]--------------
if low
		mov		param1, [s_coeff]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		add		stack, space				; restoring back the stack pointer
		jmp		Solve						; Solve (coeff, matrix, order, step0, step1, step2)
else
		mov		param1, [s_cptr]
		mov		param2, [s_mptr]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		neg		param4
		mov		param5, [s_step1]
		neg		param5
		mov		param6, [s_step2]
		neg		param6
		add		stack, space				; restoring back the stack pointer
		jmp		Solve						; Solve (cptr, mptr, order, -step0, -step1, -step2)
end if
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
.exit:	xor		status, status				; return false
		ret
}

;------------------------------------------------------------------------------;
;       Gauss elimination to upper triangular matrix                           ;
;------------------------------------------------------------------------------;

; Real number matrix
GaussUp_flt32:		GAUSS_FLT	0, s
GaussUp_flt64:		GAUSS_FLT	0, d

; Complex number matrix
GaussUp_cmplx32:	GAUSS_CMPLX	0, s
GaussUp_cmplx64:	GAUSS_CMPLX	0, d

;------------------------------------------------------------------------------;
;       Gauss elimination to lower triangular matrix                           ;
;------------------------------------------------------------------------------;

; Real number matrix
GaussLow_flt32:		GAUSS_FLT	1, s
GaussLow_flt64:		GAUSS_FLT	1, d

; Complex number matrix
GaussLow_cmplx32:	GAUSS_CMPLX	1, s
GaussLow_cmplx64:	GAUSS_CMPLX	1, d

;==============================================================================;
;       Cholesky decomposition                                                 ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Cholesky decomposition core function                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CHOLESKY_CORE_FLT	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
;---[Internal variables]-------------------
status	equ		rax							; operation status
mptr	equ		r10							; pointer to source matrix
cptr	equ		r11							; pointer to coefficients matrix
value	equ		xmm0						; scale coefficient
temp	equ		xmm1						; temporary register
zero	equ		xmm2						; 0.0
one		equ		xmm3						; 1.0
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_order	equ		stack + 2 * 8				; stack position of "order" variable
s_step0	equ		stack + 3 * 8				; stack position of "step0" variable
s_step1	equ		stack + 4 * 8				; stack position of "step1" variable
s_step2	equ		stack + 5 * 8				; stack position of "step2" variable
s_size1	equ		stack + 6 * 8				; stack position of "size1" variable
s_size2	equ		stack + 7 * 8				; stack position of "size2" variable
s_mptr	equ		stack + 8 * 8				; stack position of "mptr" variable
s_cptr	equ		stack + 9 * 8				; stack position of "cptr" variable
s_temp	equ		stack + 10 * 8				; stack position of "temp" variable
s_one	equ		stack + 11 * 8				; stack position of "one" variable
if x eq s
MulRows	= MulRows_flt32						; Multiply matrix rows function
oneval	= PONE_FLT32						; 1.0
else if x eq d
MulRows	= MulRows_flt64						; Multiply matrix rows function
oneval	= PONE_FLT64						; 1.0
end if
space	= 13 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		initreg	one, status, oneval			; one = 1.0
		movs#x	value, [matrix]				; value = matrix[0]
		xorp#x	zero, zero					; zero = 0.0
		comis#x	value, zero					; if (value < 0.0)
		jb		.error						;     then go to error branch
		sqrts#x	value, value				; value = Sqrt (value)
		movs#x	[matrix], value				; matrix[0] = value
		movap#x	temp, one
		divs#x	temp, value					; temp = 1.0 / matrix[0]
		movs#x	[s_temp], temp				; save "temp" variable into the stack
		movs#x	value, [coeff]
		muls#x	value, temp					; value = coeff[0] * temp
		movs#x	[coeff], value				; coeff[0] = value
		lea		status, [order - 1]			; size1 = order - 1
		test	status, status				; if (size1 == 0)
		jz		.exit						;     then go to exit
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_size1], status			; save "size1" variable into the stack
		movs#x	[s_one], one				; one = 1.0
;---[Decomposition loop]-------------------
.loop:	lea		mptr, [matrix + step1]		; mptr = matrix + step1
		lea		cptr, [coeff + step2]		; cptr = coeff + step2
		mov		status, [s_size1]			; size2 = size1
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		mov		[s_size2], status			; save "size2" variable into the stack
;---[Internal loop]------------------------
.iloop:	mov		param1, [s_mptr]
		sub		param1, [s_step2]
		mov		param2, [s_mtrx]
		sub		param2, [s_step2]
		mov		param3, [s_order]
		sub		param3, [s_size1]
		sub		param3, 1
		mov		param4, [s_step2]
		neg		param4
		mov		param5, param4
		call	MulRows						; call MulRows (mptr - step2, matrix - step2, order - size1 - 1, -step2, -step2)
		mov		coeff, [s_coeff]			; get "coeff" variable from the stack
		mov		mptr, [s_mptr]				; get "mptr" variable from the stack
		mov		cptr, [s_cptr]				; get "cptr" variable from the stack
		movs#x	temp, [mptr]
		subs#x	temp, value
		muls#x	temp, [s_temp]				; temp = (mptr[0] - value) / matrix[0]
		movs#x	[mptr], temp				; mptr[0] = temp
		movs#x	zero, [coeff]
		movs#x	value, [cptr]
		muls#x	zero, temp
		subs#x	value, zero					; value = cptr[0] - coeff[0] * temp
		movs#x	[cptr], value				; cptr[0] = value
		add		mptr, [s_step1]				; mptr += step1
		add		cptr, [s_step2]				; cptr += step2
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		sub		qword [s_size2], 1			; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		mov		param1, [s_mtrx]
		add		param1, [s_step0]
		sub		param1, [s_step2]
		mov		param2, param1
		mov		param3, [s_order]
		sub		param3, [s_size1]
		mov		param4, [s_step2]
		neg		param4
		mov		param5, param4
		call	MulRows						; call MulRows (matrix + step0 - step2, matrix + step0 - step2, order - size1, -step2, -step2)
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		coeff, [s_coeff]			; get "coeff" variable from the stack
		mov		step1, [s_step1]			; get "step1" variable from the stack
		mov		step2, [s_step2]			; get "step2" variable from the stack
		add		matrix, [s_step0]			; matrix += step0
		add		coeff, [s_step2]			; coeff += step2
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		movs#x	temp, [matrix]
		subs#x	temp, value					; temp = matrix[0] - value
		xorp#x	zero, zero					; zero = 0.0
		comis#x	temp, zero					; if (temp < 0.0)
		jb		.error						;     then go to error branch
		sqrts#x	value, temp					; value = Sqrt (temp)
		movs#x	[matrix], value				; matrix[0] = value
		movs#x	temp, [s_one]
		divs#x	temp, value					; temp = 1.0 / matrix[0]
		movs#x	[s_temp], temp				; save "temp" variable into the stack
		movs#x	value, [coeff]
		muls#x	value, temp					; value = coeff[0] * temp
		movs#x	[coeff], value				; coeff[0] = value
		sub		qword [s_size1], 1			; size1--
		jnz		.loop						; do while (size1 != 0)
;---[End of decomposition loop]------------
.exit:	mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}
CholeskyCore_flt32:	CHOLESKY_CORE_FLT	s
CholeskyCore_flt64:	CHOLESKY_CORE_FLT	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Mirroring matrix elements                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	MIRROR_MATRIX_FLT	reg
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
step0	equ		rdx							; first step size
step1	equ		rcx							; second step size
step2	equ		r8							; third step size
;---[Internal variables]-------------------
target	equ		r9							; pointer to target place
source	equ		r10							; pointer to source place
size	equ		r11							; count of element to mirror
;------------------------------------------
		sub		order, 1					; size--
;---[Mirroring loop]-----------------------
.loop:	lea		source, [matrix + step1]	; source = matrix + step1
		lea		target, [matrix + step2]	; target = matrix + step2
		mov		size, order					; size = order
;---[Internal loop]------------------------
.iloop:	mov		reg, [source]
		mov		[target], reg				; target[0] = source[0]
		add		source, step1				; source += step1
		add		target, step2				; target += step2
		sub		size, 1						; size--
		jnz		.iloop						; do while (size != 0)
;---[End of internal loop]-----------------
		add		matrix, step0				; matrix += step0
		sub		order, 1					; order--
		jnz		.loop						; do while (order != 0)
;---[End of mirroring loop]----------------
		ret
}
MirrorMatrix_flt32:	MIRROR_MATRIX_FLT	eax
MirrorMatrix_flt64:	MIRROR_MATRIX_FLT	rax

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Solving function for Cholesky decomposition                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CHOLESKY_FLT	low, x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
matrix	equ		rsi							; pointer to matrix
order	equ		rdx							; matrix order
;---[Internal variables]-------------------
status	equ		rax							; operation status
step0	equ		rcx							; first step size
step1	equ		r8							; second step size
step2	equ		r9							; third step size
mptr	equ		r10							; pointer to source matrix
cptr	equ		r11							; pointer to coefficients matrix
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_order	equ		stack + 2 * 8				; stack position of "order" variable
s_step0	equ		stack + 3 * 8				; stack position of "step0" variable
s_step1	equ		stack + 4 * 8				; stack position of "step1" variable
s_step2	equ		stack + 5 * 8				; stack position of "step2" variable
s_mptr	equ		stack + 6 * 8				; stack position of "mptr" variable
s_cptr	equ		stack + 7 * 8				; stack position of "cptr" variable
if x eq s
Func1	= Solve1_flt32						; Solving of 1 order matrix
Func2	= Solve2_flt32						; Solving of 2 order matrix
Func3	= Solve3_flt32						; Solving of 3 order matrix
Core	= CholeskyCore_flt32				; Cholesky decomposition core function
Mirror	= MirrorMatrix_flt32				; Mirror matrix elements function
Solve	= SolveTriangular_flt32				; Solve triangular matrix function
scale	= 2									; scale value
else if x eq d
Func1	= Solve1_flt64						; Solving of 1 order matrix
Func2	= Solve2_flt64						; Solving of 2 order matrix
Func3	= Solve3_flt64						; Solving of 3 order matrix
Core	= CholeskyCore_flt64				; Cholesky decomposition core function
Mirror	= MirrorMatrix_flt64				; Mirror matrix elements function
Solve	= SolveTriangular_flt64				; Solve triangular matrix function
scale	= 3									; scale value
end if
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of matrix element (bytes)
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.exit						;     then return false
		cmp		order, 1					; if (order == 1)
		je		Func1						;     then call Func1 (coeff, matrix)
		cmp		order, 2					; if (order == 2)
		je		Func2						;     then call Func2 (coeff, matrix)
		cmp		order, 3					; if (order == 3)
		je		Func3						;     then call Func3 (coeff, matrix)
;---[Compute step values]------------------
		sub		stack, space				; reserving stack size for local vars
		mov		step0, order
		shl		step0, scale
		add		step0, bytes
		mov		step1, order
		shl		step1, scale
		mov		step2, bytes
		mov		status, order
		imul	status, order
		shl		status, scale
		sub		status, bytes
		lea		mptr, [matrix + status]
		mov		status, order
		shl		status, scale
		sub		status, bytes
		lea		cptr, [coeff + status]
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
;---[Cholesky decomposition]---------------
if low
		mov		param1, [s_cptr]
		mov		param2, [s_mptr]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		neg		param4
		mov		param5, [s_step1]
		neg		param5
		mov		param6, [s_step2]
		neg		param6
		call	Core						; call Core (cptr, mptr, order, -step0, -step1, -step2)
else
		mov		param1, [s_coeff]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		call	Core						; call Core (coeff, matrix, order, step0, step1, step2)
end if
		test	status, status				; if (status == 0)
		jz		.error						;     then return false
;---[Mirror matrix]------------------------
if low
		mov		param1, [s_mptr]
		mov		param2, [s_order]
		mov		param3, [s_step0]
		neg		param3
		mov		param4, [s_step1]
		neg		param4
		mov		param5, [s_step2]
		neg		param5
		call	Mirror						; call Mirror (mptr, order, -step0, -step1, -step2)
else
		mov		param1, [s_mtrx]
		mov		param2, [s_order]
		mov		param3, [s_step0]
		mov		param4, [s_step1]
		mov		param5, [s_step2]
		call	Mirror						; call Mirror (matrix, order, step0, step1, step2)
end if
;---[Solve triangular matrix]--------------
if low
		mov		param1, [s_coeff]
		mov		param2, [s_mtrx]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		mov		param5, [s_step1]
		mov		param6, [s_step2]
		add		stack, space				; restoring back the stack pointer
		jmp		Solve						; Solve (coeff, matrix, order, step0, step1, step2)
else
		mov		param1, [s_cptr]
		mov		param2, [s_mptr]
		mov		param3, [s_order]
		mov		param4, [s_step0]
		neg		param4
		mov		param5, [s_step1]
		neg		param5
		mov		param6, [s_step2]
		neg		param6
		add		stack, space				; restoring back the stack pointer
		jmp		Solve						; Solve (cptr, mptr, order, -step0, -step1, -step2)
end if
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
.exit:	xor		status, status				; return false
		ret
}

;------------------------------------------------------------------------------;
;       Cholesky decomposition to upper triangular matrix                      ;
;------------------------------------------------------------------------------;
CholeskyUp_flt32:	CHOLESKY_FLT	0, s
CholeskyUp_flt64:	CHOLESKY_FLT	0, d

;------------------------------------------------------------------------------;
;       Cholesky decomposition to lower triangular matrix                      ;
;------------------------------------------------------------------------------;
CholeskyLow_flt32:	CHOLESKY_FLT	1, s
CholeskyLow_flt64:	CHOLESKY_FLT	1, d

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
