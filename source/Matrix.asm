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

; Initialization of vector
extrn	'Array_Init_flt32'			as	Init_flt32
extrn	'Array_Init_flt64'			as	Init_flt64

; Copying of vector
extrn	'Array_Copy_flt32'			as	Copy_flt32
extrn	'Array_Copy_flt64'			as	Copy_flt64

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
public	InitRectangle_flt32			as	'Matrix_InitRectangle_flt32'
public	InitRectangle_flt64			as	'Matrix_InitRectangle_flt64'
public	InitRectangle_flt32			as	'_ZN6Matrix13InitRectangleEPfmmf'
public	InitRectangle_flt64			as	'_ZN6Matrix13InitRectangleEPdmmd'

; Initialization of diagonal matrix
public	InitDiagonal_flt32			as	'Matrix_InitDiagonal_flt32'
public	InitDiagonal_flt64			as	'Matrix_InitDiagonal_flt64'
public	InitDiagonal_flt32			as	'_ZN6Matrix12InitDiagonalEPfmf'
public	InitDiagonal_flt64			as	'_ZN6Matrix12InitDiagonalEPdmd'

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;
public	CopyMatrix_flt32			as	'Matrix_Copy_flt32'
public	CopyMatrix_flt64			as	'Matrix_Copy_flt64'
public	CopyMatrix_flt32			as	'_ZN6Matrix4CopyEPfPKfmm'
public	CopyMatrix_flt64			as	'_ZN6Matrix4CopyEPdPKdmm'

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unary operations                                                       ;
;==============================================================================;

; Negative matrix
public	NegMatrix_flt32				as	'Matrix_Neg_flt32'
public	NegMatrix_flt64				as	'Matrix_Neg_flt64'
public	NegMatrix_flt32				as	'_ZN6Matrix3NegEPfmm'
public	NegMatrix_flt64				as	'_ZN6Matrix3NegEPdmm'

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;

; Addition
public	AddMatrix_flt32				as	'Matrix_Add_flt32'
public	AddMatrix_flt64				as	'Matrix_Add_flt64'
public	AddMatrix_flt32				as	'_ZN6Matrix3AddEPfPKfmm'
public	AddMatrix_flt64				as	'_ZN6Matrix3AddEPdPKdmm'

; Subtraction
public	SubMatrix_flt32				as	'Matrix_Sub_flt32'
public	SubMatrix_flt64				as	'Matrix_Sub_flt64'
public	SubMatrix_flt32				as	'_ZN6Matrix3SubEPfPKfmm'
public	SubMatrix_flt64				as	'_ZN6Matrix3SubEPdPKdmm'

; Multiplication by scalar value
public	MulValue_flt32				as	'Matrix_Mul_flt32'
public	MulValue_flt64				as	'Matrix_Mul_flt64'
public	MulValue_flt32				as	'_ZN6Matrix3MulEPfmmf'
public	MulValue_flt64				as	'_ZN6Matrix3MulEPdmmd'

; Division by scalar value
public	DivValue_flt32				as	'Matrix_Div_flt32'
public	DivValue_flt64				as	'Matrix_Div_flt64'
public	DivValue_flt32				as	'_ZN6Matrix3DivEPfmmf'
public	DivValue_flt64				as	'_ZN6Matrix3DivEPdmmd'

; Multiplication by matrix
public	MulMatrix_flt32				as	'Matrix_MulMatrix_flt32'
public	MulMatrix_flt64				as	'Matrix_MulMatrix_flt64'
public	MulMatrix_flt32				as	'_ZN6Matrix9MulMatrixEPfPKfS2_mmm'
public	MulMatrix_flt64				as	'_ZN6Matrix9MulMatrixEPdPKdS2_mmm'

;******************************************************************************;
;       Transposition                                                          ;
;******************************************************************************;
public	Transpose_flt32				as	'Matrix_Transpose_flt32'
public	Transpose_flt64				as	'Matrix_Transpose_flt64'
public	Transpose_flt32				as	'_ZN6Matrix9TransposeEPfPKfmm'
public	Transpose_flt64				as	'_ZN6Matrix9TransposeEPdPKdmm'

;******************************************************************************;
;       Inverse matrix                                                         ;
;******************************************************************************;

; Inverse matrix through upper triangular matrix
public	InverseUp_flt32				as	'Matrix_InverseUp_flt32'
public	InverseUp_flt64				as	'Matrix_InverseUp_flt64'
public	InverseUp_flt32				as	'_ZN6Matrix9InverseUpEPfS0_m'
public	InverseUp_flt64				as	'_ZN6Matrix9InverseUpEPdS0_m'

; Inverse matrix through lower triangular matrix
public	InverseLow_flt32			as	'Matrix_InverseLow_flt32'
public	InverseLow_flt64			as	'Matrix_InverseLow_flt64'
public	InverseLow_flt32			as	'_ZN6Matrix10InverseLowEPfS0_m'
public	InverseLow_flt64			as	'_ZN6Matrix10InverseLowEPdS0_m'

;******************************************************************************;
;       Determinant                                                            ;
;******************************************************************************;

;==============================================================================;
;       Determinant of diagonal matrix                                         ;
;==============================================================================;
public	DeterminantDiagonal_flt32	as	'Matrix_DeterminantDiagonal_flt32'
public	DeterminantDiagonal_flt64	as	'Matrix_DeterminantDiagonal_flt64'
public	DeterminantDiagonal_flt32	as	'_ZN6Matrix19DeterminantDiagonalEPKfm'
public	DeterminantDiagonal_flt64	as	'_ZN6Matrix19DeterminantDiagonalEPKdm'

;==============================================================================;
;       Determinant of triangular matrix                                       ;
;==============================================================================;
public	DeterminantDiagonal_flt32	as	'Matrix_DeterminantTriangular_flt32'
public	DeterminantDiagonal_flt64	as	'Matrix_DeterminantTriangular_flt64'
public	DeterminantDiagonal_flt32	as	'_ZN6Matrix21DeterminantTriangularEPKfm'
public	DeterminantDiagonal_flt64	as	'_ZN6Matrix21DeterminantTriangularEPKdm'

;==============================================================================;
;       Determinant of square matrix                                           ;
;==============================================================================;

; Determinant of square matrix through upper triangular matrix
public	DeterminantSquareUp_flt32	as	'Matrix_DeterminantSquareUp_flt32'
public	DeterminantSquareUp_flt64	as	'Matrix_DeterminantSquareUp_flt64'
public	DeterminantSquareUp_flt32	as	'_ZN6Matrix19DeterminantSquareUpEPfm'
public	DeterminantSquareUp_flt64	as	'_ZN6Matrix19DeterminantSquareUpEPdm'

; Determinant of square matrix through lower triangular matrix
public	DeterminantSquareLow_flt32	as	'Matrix_DeterminantSquareLow_flt32'
public	DeterminantSquareLow_flt64	as	'Matrix_DeterminantSquareLow_flt64'
public	DeterminantSquareLow_flt32	as	'_ZN6Matrix20DeterminantSquareLowEPfm'
public	DeterminantSquareLow_flt64	as	'_ZN6Matrix20DeterminantSquareLowEPdm'

;******************************************************************************;
;       Solving of linear system                                               ;
;******************************************************************************;

;==============================================================================;
;       Gauss elimination                                                      ;
;==============================================================================;

; Gauss elimination to upper triangular matrix
public	GaussUp_flt32				as	'Matrix_GaussUp_flt32'
public	GaussUp_flt64				as	'Matrix_GaussUp_flt64'
public	GaussUp_flt32				as	'_ZN6Matrix7GaussUpEPfS0_m'
public	GaussUp_flt64				as	'_ZN6Matrix7GaussUpEPdS0_m'

; Gauss elimination to lower triangular matrix
public	GaussLow_flt32				as	'Matrix_GaussLow_flt32'
public	GaussLow_flt64				as	'Matrix_GaussLow_flt64'
public	GaussLow_flt32				as	'_ZN6Matrix8GaussLowEPfS0_m'
public	GaussLow_flt64				as	'_ZN6Matrix8GaussLowEPdS0_m'

;==============================================================================;
;       Cholesky decomposition                                                 ;
;==============================================================================;

; Cholesky decomposition to upper triangular matrix
public	CholeskyUp_flt32			as	'Matrix_CholeskyUp_flt32'
public	CholeskyUp_flt64			as	'Matrix_CholeskyUp_flt64'
public	CholeskyUp_flt32			as	'_ZN6Matrix10CholeskyUpEPfS0_m'
public	CholeskyUp_flt64			as	'_ZN6Matrix10CholeskyUpEPdS0_m'

; Cholesky decomposition to lower triangular matrix
public	CholeskyLow_flt32			as	'Matrix_CholeskyLow_flt32'
public	CholeskyLow_flt64			as	'Matrix_CholeskyLow_flt64'
public	CholeskyLow_flt32			as	'_ZN6Matrix11CholeskyLowEPfS0_m'
public	CholeskyLow_flt64			as	'_ZN6Matrix11CholeskyLowEPdS0_m'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Multiply matrix rows                                                   ;
;******************************************************************************;
macro	MUL_ROWS	x
{
;---[Parameters]---------------------------
row1	equ		rdi							; first row
row2	equ		rsi							; second row
size	equ		rdx							; row size (count of elements)
step	equ		rcx							; step size
;---[Internal variables]-------------------
result	equ		xmm0						; result register
temp	equ		xmm1						; temporary register
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		xorp#x	result, result				; result = 0.0
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Multiplication loop]------------------
.loop:	movs#x	temp, [row1]
		muls#x	temp, [row2]
		adds#x	result, temp				; result += row1[0] * row2[0]
		add		row1, step					; row1 += step
		add		row2, step					; row1 += step
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End multiplication loop]--------------
.exit:	ret									; return result
}
MulRows_flt32:	MUL_ROWS	s
MulRows_flt64:	MUL_ROWS	d

;******************************************************************************;
;       Swap matrix rows                                                       ;
;******************************************************************************;
macro	SWAP_ROWS	reg1, reg2
{
;---[Parameters]---------------------------
row1	equ		rdi							; first row
row2	equ		rsi							; second row
size	equ		rdx							; row size (count of elements)
step	equ		rcx							; step size
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Swap loop]----------------------------
.loop:	mov		reg1, [row1]				; reg1 = row1[0]
		mov		reg2, [row2]				; reg2 = row2[0]
		xchg	reg1, reg2					; exchange temp1 and temp2
		mov		[row1], reg1				; row1[0] = reg1
		mov		[row2], reg2				; row2[0] = reg2
		add		row1, step					; row1 += step
		add		row2, step					; row1 += step
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of swap loop]---------------------
.exit:	ret
}
SwapRows_flt32:	SWAP_ROWS	r8d, r9d
SwapRows_flt64:	SWAP_ROWS	r8, r9

;******************************************************************************;
;       Subtract matrix row                                                    ;
;******************************************************************************;
macro	SUB_ROW		x
{
;---[Parameters]---------------------------
row1	equ		rdi							; first row
row2	equ		rsi							; second row
size	equ		rdx							; row size (count of elements)
step	equ		rcx							; step size
value	equ		xmm0						; scale value
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scale loop]---------------------------
.loop:	movs#x	temp1, [row1]
		movs#x	temp2, [row2]
		muls#x	temp2, value
		subs#x	temp1, temp2
		movs#x	[row1], temp1				; row1[0] -= row2[0] * value
		add		row1, step					; row1 += step
		add		row2, step					; row2 += step
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of scale loop]--------------------
.exit:	ret
}
SubRow_flt32:	SUB_ROW	s
SubRow_flt64:	SUB_ROW	d

;******************************************************************************;
;       Initialization                                                         ;
;******************************************************************************;

;==============================================================================;
;       Initialization of rectangle matrix                                     ;
;==============================================================================;
macro	INIT_RECTANGLE	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
rows	equ		rsi							; rows count
cols	equ		rdx							; columns count
value	equ		xmm0						; value to process with
;---[Internal variables]-------------------
result	equ		rax							; result register
if x eq s
Init	= Init_flt32						; Init function
else if x eq d
Init	= Init_flt64						; Init function
end if
;---[Check rows count]---------------------
		test	rows, rows					; if (rows == 0)
		jz		.exit						;     then go to exit
;---[Check columns count]------------------
		test	cols, cols					; if (cols == 0)
		jz		.exit						;     then go to exit
;---[Call vector init functon]-------------
		mov		result, rows
		imul	result, cols				; result = rows * cols
		mov		rows, result
		mov		result, Init
		jmp		result						; call Init (matrix, rows * cols, value)
.exit:	ret
}
InitRectangle_flt32:	INIT_RECTANGLE	s
InitRectangle_flt64:	INIT_RECTANGLE	d

;==============================================================================;
;       Initialization of diagonal matrix                                      ;
;==============================================================================;
macro	INIT_DIAGONAL	reg, x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
value	equ		xmm0						; value to process with
;---[Internal variables]-------------------
result	equ		rax							; result register
step	equ		rdx							; step size
stack	equ		rsp							; stack pointer
s_mtrx	equ		stack + 0 * 8				; stack position of "matrix" variable
s_order	equ		stack + 1 * 8				; stack position of "order" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
if x eq s
Init	= Init_flt32						; Init function
scale	= 2									; scale value
else if x eq d
Init	= Init_flt64						; Init function
scale	= 3									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		movs#x	[s_value], value			; save "value" variable into the stack
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.exit						;     then go to exit
;---[Call vector init functon]-------------
		mov		result, order
		imul	result, order				; result = order * order
		mov		order, result
		xorp#x	value, value				; value = 0.0
		mov		result, Init
		call	result						; call Init (matrix, order * order, 0)
;---[Set diagonal elements]----------------
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		order, [s_order]			; get "order" variable from the stack
		mov		reg, [s_value]				; get "value" variable from the stack
		lea		step, [order * bytes + bytes]
;---[Diagonal elemens loop]----------------
.loop:	mov		[matrix], reg				; matrix[0] = value
		add		matrix, step				; matrix += step
		sub		order, 1					; order--
		jnz		.loop						; do while (order != 0)
;---[End of diagonal elemens loop]---------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
InitDiagonal_flt32:	INIT_DIAGONAL	eax, s
InitDiagonal_flt64:	INIT_DIAGONAL	rax, d

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;
macro	COPY	x
{
;---[Parameters]---------------------------
target	equ		rdi							; target matrix
source	equ		rsi							; source matrix
rows	equ		rdx							; rows count
cols	equ		rcx							; columns count
;---[Internal variables]-------------------
result	equ		rax							; result register
if x eq s
Copy	= Copy_flt32						; Copy function
else if x eq d
Copy	= Copy_flt64						; Copy function
end if
;------------------------------------------
		mov		result, rows
		imul	result, cols				; result = rows * cols
		mov		rows, result
		mov		result, Copy
		jmp		result						; call Copy (target, source, rows * cols)
}
CopyMatrix_flt32:	COPY	s
CopyMatrix_flt64:	COPY	d

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unary operations                                                       ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Negative matrix                                                        ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	NEGATIVE	x
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
		mov		rows, result
		mov		result, Invert
		jmp		result						; call Invert (matrix, rows * cols)
}
NegMatrix_flt32:	NEGATIVE	s
NegMatrix_flt64:	NEGATIVE	d

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
;------------------------------------------
		mov		result, rows
		imul	result, cols				; result = rows * cols
		mov		rows, result
		mov		result, Func
		jmp		result						; call Func (matrix, rows * cols, value)
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	VECTOR	Func
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
		mov		rows, result
		mov		result, Func
		jmp		result						; call Func (target, source, rows * cols)
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Addition                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
AddMatrix_flt32:	VECTOR	Add_flt32
AddMatrix_flt64:	VECTOR	Add_flt64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Subtraction                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
SubMatrix_flt32:	VECTOR	Sub_flt32
SubMatrix_flt64:	VECTOR	Sub_flt64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication by scalar value                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
MulValue_flt32:		SCALAR	Mul_flt32
MulValue_flt64:		SCALAR	Mul_flt64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division by scalar value                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
DivValue_flt32:		SCALAR	Div_flt32
DivValue_flt64:		SCALAR	Div_flt64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication by matrix                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	MUL_MATRIX	x
{
;---[Parameters]---------------------------
target	equ		rdi							; target matrix
source1	equ		rsi							; first source matrix
source2	equ		rdx							; second source matrix
rows	equ		rcx							; rows count of first matrix
cols	equ		r8							; columns count of second matrix
rowcols	equ		r9							; columns count of first matrix
;---[Internal variables]-------------------
sptr	equ		rax							; temporary pointer to source matrix
ptr1	equ		r10							; temporary pointer #1
ptr2	equ		r11							; temporary pointer #2
size1	equ		r12							; temporary size variable #1
size2	equ		r13							; temporary size variable #2
sum		equ		xmm0						; sum of product
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_size1	equ		stack + 0 * 8				; stack position of "size1" variable
s_size2	equ		stack + 1 * 8				; stack position of "size2" variable
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_size1], size1			; save old value of "size1" variable
		mov		[s_size2], size2			; save old value of "size2" variable
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
.loop:	mov		sptr, source2				; sptr = source2
		mov		size1, cols					; size1 = cols
;---[Columns parsing loop]-----------------
.cloop:	xorp#x	sum, sum					; sum = 0
		mov		ptr1, source1				; ptr1 = source1
		mov		ptr2, sptr					; ptr2 = sptr
		mov		size2, rowcols				; size2 = rowcols
;---[Internal loop]------------------------
.iloop:	movs#x	temp, [ptr1]
		muls#x	temp, [ptr2]				; temp = ptr1[0] * ptr2[0]
		adds#x	sum, temp					; sum += temp
		add		ptr1, bytes					; ptr1 += 1
		lea		ptr2, [ptr2 + cols * bytes]	; ptr2 += cols
		sub		size2, 1					; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		movs#x	[target], sum				; target[0] = sum
		add		sptr, bytes					; sptr++
		add		target, bytes				; target++
		sub		size1, 1					; size1--
		jnz		.cloop						; do while (size1 != 0)
;---[End of columns parsing loop]----------
		lea		source1, [source1 + rowcols * bytes]
		sub		rows, 1						; rows--
		jnz		.loop						; do while (rows != 0)
;---[End of multiplication loop]-----------
.exit:	mov		size1, [s_size1]			; restore old value of "size1" variable
		mov		size2, [s_size2]			; restore old value of "size2" variable
		add		stack, space				; restoring back the stack pointer
		ret
}
MulMatrix_flt32:	MUL_MATRIX	s
MulMatrix_flt64:	MUL_MATRIX	d

;******************************************************************************;
;       Transposition                                                          ;
;******************************************************************************;

;==============================================================================;
;       Transposition of 1 order matrix                                        ;
;==============================================================================;
macro	TRANSPOSE1	x
{
;---[Parameters]---------------------------
target	equ		rdi							; target matrix
source	equ		rsi							; source matrix
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		movs#x	temp0, [source + 0 * bytes]	; temp0 = source[0]
		movs#x	[target + 0 * bytes], temp0	; target[0] = temp0;
		ret
}
Transpose1_flt32:	TRANSPOSE1	s
Transpose1_flt64:	TRANSPOSE1	d

;==============================================================================;
;       Transposition of 2 order matrix                                        ;
;==============================================================================;
macro	TRANSPOSE2	x
{
;---[Parameters]---------------------------
target	equ		rdi							; target matrix
source	equ		rsi							; source matrix
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		movs#x	temp0, [source + 0 * bytes]	; temp0 = source[0]
		movs#x	temp1, [source + 1 * bytes]	; temp1 = source[1]
		movs#x	temp2, [source + 2 * bytes]	; temp2 = source[2]
		movs#x	temp3, [source + 3 * bytes]	; temp3 = source[3]
		movs#x	[target + 0 * bytes], temp0	; target[0] = temp0;
		movs#x	[target + 1 * bytes], temp2	; target[1] = temp2;
		movs#x	[target + 2 * bytes], temp1	; target[2] = temp1;
		movs#x	[target + 3 * bytes], temp3	; target[3] = temp3;
		ret
}
Transpose2_flt32:	TRANSPOSE2	s
Transpose2_flt64:	TRANSPOSE2	d

;==============================================================================;
;       Transposition of 3 order matrix                                        ;
;==============================================================================;
macro	TRANSPOSE3	x
{
;---[Parameters]---------------------------
target	equ		rdi							; target matrix
source	equ		rsi							; source matrix
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
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		movs#x	temp0, [source + 0 * bytes]	; temp0 = source[0]
		movs#x	temp1, [source + 1 * bytes]	; temp1 = source[1]
		movs#x	temp2, [source + 2 * bytes]	; temp2 = source[2]
		movs#x	temp3, [source + 3 * bytes]	; temp3 = source[3]
		movs#x	temp4, [source + 4 * bytes]	; temp4 = source[4]
		movs#x	temp5, [source + 5 * bytes]	; temp5 = source[5]
		movs#x	temp6, [source + 6 * bytes]	; temp6 = source[6]
		movs#x	temp7, [source + 7 * bytes]	; temp7 = source[7]
		movs#x	temp8, [source + 8 * bytes]	; temp8 = source[8]
		movs#x	[target + 0 * bytes], temp0	; target[0] = temp0;
		movs#x	[target + 1 * bytes], temp3	; target[1] = temp3;
		movs#x	[target + 2 * bytes], temp6	; target[2] = temp6;
		movs#x	[target + 3 * bytes], temp1	; target[3] = temp1;
		movs#x	[target + 4 * bytes], temp4	; target[4] = temp4;
		movs#x	[target + 5 * bytes], temp7	; target[5] = temp7;
		movs#x	[target + 6 * bytes], temp2	; target[6] = temp2;
		movs#x	[target + 7 * bytes], temp5	; target[7] = temp5;
		movs#x	[target + 8 * bytes], temp8	; target[8] = temp8;
		ret
}
Transpose3_flt32:	TRANSPOSE3	s
Transpose3_flt64:	TRANSPOSE3	d

;==============================================================================;
;       Transposition of rectangle matrix                                      ;
;==============================================================================;
macro	TRANSPOSE	reg, x
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
if x eq s
Func1	= Transpose1_flt32					; Transposition of 1 order matrix
Func2	= Transpose2_flt32					; Transposition of 2 order matrix
Func3	= Transpose3_flt32					; Transposition of 3 order matrix
scale	= 2									; scale value
else if x eq d
Func1	= Transpose1_flt64					; Transposition of 1 order matrix
Func2	= Transpose2_flt64					; Transposition of 2 order matrix
Func3	= Transpose3_flt64					; Transposition of 3 order matrix
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
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
		je		Func1						;     then call Func1 (target, source, rows)
		cmp		rows, 2						; if (rows == 2)
		je		Func2						;     then call Func2 (target, source, rows)
		cmp		rows, 3						; if (rows == 3)
		je		Func3						;     then call Func3 (target, source, rows)
.skip:	mov		size1, rows					; size1 = rows
;---[Transposition loop]-------------------
.loop:	mov		ptr, target					; ptr = target
		mov		size2, cols					; size2 = cols
;---[Internal loop]------------------------
.iloop:	mov		reg, [source]
		mov		[ptr], reg					; ptr[0] = source[0]
		add		source, bytes				; source += 1
		lea		ptr, [ptr + rows * bytes]	; ptr += rows
		sub		size2, 1					; size2--
		jnz		.iloop						; do while (size2 != 0)
;---[End of internal loop]-----------------
		add		target, bytes				; target += 1
		sub		size1, 1					; size1--
		jnz		.loop						; do while (size1 != 0)
;---[End of transposition loop]------------
.exit:	ret
}
Transpose_flt32:	TRANSPOSE	eax, s
Transpose_flt64:	TRANSPOSE	rax, d

;******************************************************************************;
;       Inverse matrix                                                         ;
;******************************************************************************;

;==============================================================================;
;       Inversion of 1 order matrix                                            ;
;==============================================================================;
macro	INVERSE1	x
{
;---[Parameters]---------------------------
inverse	equ		rdi							; inverse matrix
matrix	equ		rsi							; original matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
temp0	equ		xmm0						; temporary register #1
zero	equ		xmm1						; 0.0
one		equ		xmm2						; +1.0
if x eq s
oneval	= PONE_FLT32						; +1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; +1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Compute matrix determinant]-----------
		movs#x	temp0, [matrix + 0 * bytes]	; temp0 = matrix[0]
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0
		comis#x	temp0, zero					; if (temp0 == 0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (matrix)
;---[Fill inverse matrix]------------------
		movs#x	[inverse + 0 * bytes], one	; inverse[0] = 1.0 / det (matrix)
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
Inverse1_flt32:	INVERSE1	s
Inverse1_flt64:	INVERSE1	d

;==============================================================================;
;       Inversion of 2 order matrix                                            ;
;==============================================================================;
macro	INVERSE2	x
{
;---[Parameters]---------------------------
inverse	equ		rdi							; inverse matrix
matrix	equ		rsi							; original matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
zero	equ		xmm2						; 0.0
one		equ		xmm3						; +1.0
mask	equ		xmm4						; sign mask
if x eq s
smask	= SMASK_FLT32						; sign mask
oneval	= PONE_FLT32						; +1.0
scale	= 2									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
oneval	= PONE_FLT64						; +1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Compute matrix determinant]-----------
		movs#x	temp0, [matrix + 0 * bytes]
		muls#x	temp0, [matrix + 3 * bytes]	; temp0 = matrix[0] * matrix[3]
		movs#x	temp1, [matrix + 2 * bytes]
		muls#x	temp1, [matrix + 1 * bytes]	; temp1 = matrix[2] * matrix[1]
		subs#x	temp0, temp1				; temp0 -= temp1
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0
		comis#x	temp0, zero					; if (temp0 == 0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	mask, status, smask			; mask = smask
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (matrix)
;---[Fill inverse matrix]------------------
		movs#x	temp0, [matrix + 3 * bytes]	; temp0 = matrix[3]
		muls#x	temp0, one					; temp0 *= 1.0 / det (matrix)
		movs#x	[inverse + 0 * bytes], temp0; inverse[0] = temp0
		movs#x	temp0, [matrix + 1 * bytes]	; temp0 = matrix[1]
		muls#x	temp0, one					; temp0 *= 1.0 / det (matrix)
		xorp#x	temp0, mask					; temp0 = -temp0
		movs#x	[inverse + 1 * bytes], temp0; inverse[1] = temp0
		movs#x	temp0, [matrix + 2 * bytes]	; temp0 = matrix[2]
		muls#x	temp0, one					; temp0 *= 1.0 / det (matrix)
		xorp#x	temp0, mask					; temp0 = -temp0
		movs#x	[inverse + 2 * bytes], temp0; inverse[2] = temp0
		movs#x	temp0, [matrix + 0 * bytes]	; temp0 = matrix[0]
		muls#x	temp0, one					; temp0 *= 1.0 / det (matrix)
		movs#x	[inverse + 3 * bytes], temp0; inverse[3] = temp0
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
Inverse2_flt32:	INVERSE2	s
Inverse2_flt64:	INVERSE2	d

;==============================================================================;
;       Inversion of 3 order matrix                                            ;
;==============================================================================;
macro	INVERSE3	x
{
;---[Parameters]---------------------------
inverse	equ		rdi							; inverse matrix
matrix	equ		rsi							; original matrix
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
one		equ		xmm10						; +1.0
if x eq s
oneval	= PONE_FLT32						; +1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; +1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Compute matrix determinant]-----------
		movs#x	temp0, [matrix + 0 * bytes]	; temp0 = matrix[0]
		movs#x	temp1, [matrix + 3 * bytes]	; temp1 = matrix[3]
		movs#x	temp2, [matrix + 6 * bytes]	; temp2 = matrix[6]
		movs#x	temp3, [matrix + 1 * bytes]
		muls#x	temp3, [matrix + 5 * bytes]	; temp3 = matrix[1] * matrix[5]
		movs#x	temp4, [matrix + 4 * bytes]
		muls#x	temp4, [matrix + 8 * bytes]	; temp4 = matrix[4] * matrix[8]
		movs#x	temp5, [matrix + 7 * bytes]
		muls#x	temp5, [matrix + 2 * bytes]	; temp5 = matrix[7] * matrix[2]
		movs#x	temp6, [matrix + 2 * bytes]
		muls#x	temp6, [matrix + 4 * bytes]	; temp6 = matrix[2] * matrix[4]
		movs#x	temp7, [matrix + 5 * bytes]
		muls#x	temp7, [matrix + 7 * bytes]	; temp7 = matrix[5] * matrix[7]
		movs#x	temp8, [matrix + 8 * bytes]
		muls#x	temp8, [matrix + 1 * bytes]	; temp8 = matrix[8] * matrix[1]
		subs#x	temp4, temp7				; temp4 -= temp7
		muls#x	temp0, temp4				; temp0 *= temp4
		subs#x	temp5, temp8				; temp5 -= temp8
		muls#x	temp1, temp5				; temp1 *= temp5
		subs#x	temp3, temp6				; temp3 -= temp6
		muls#x	temp2, temp3				; temp2 *= temp3
		adds#x	temp0, temp1				; temp0 += temp1
		adds#x	temp0, temp2				; temp0 += temp2
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0
		comis#x	temp0, zero					; if (temp0 == 0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (matrix)
;---[Fill inverse matrix]------------------
		muls#x	temp4, one					; temp4 *= 1.0 / det (matrix)
		movs#x	[inverse + 0 * bytes], temp4; inverse[0] = temp4
		muls#x	temp5, one					; temp5 *= 1.0 / det (matrix)
		movs#x	[inverse + 1 * bytes], temp5; inverse[1] = temp5
		muls#x	temp3, one					; temp3 *= 1.0 / det (matrix)
		movs#x	[inverse + 2 * bytes], temp3; inverse[2] = temp3
		movs#x	temp0, [matrix + 5 * bytes]
		muls#x	temp0, [matrix + 6 * bytes]	; temp0 = matrix[5] * matrix[6]
		movs#x	temp1, [matrix + 3 * bytes]
		muls#x	temp1, [matrix + 8 * bytes]	; temp1 = matrix[3] * matrix[8]
		subs#x	temp0, temp1				; temp0 -= temp1
		muls#x	temp0, one					; temp0 *= 1.0 / det (matrix)
		movs#x	[inverse + 3 * bytes], temp0; inverse[3] = temp0
		movs#x	temp0, [matrix + 0 * bytes]
		muls#x	temp0, [matrix + 8 * bytes]	; temp0 = matrix[0] * matrix[8]
		movs#x	temp1, [matrix + 2 * bytes]
		muls#x	temp1, [matrix + 6 * bytes]	; temp1 = matrix[2] * matrix[6]
		subs#x	temp0, temp1				; temp0 -= temp1
		muls#x	temp0, one					; temp0 *= 1.0 / det (matrix)
		movs#x	[inverse + 4 * bytes], temp0; inverse[4] = temp0
		movs#x	temp0, [matrix + 2 * bytes]
		muls#x	temp0, [matrix + 3 * bytes]	; temp0 = matrix[2] * matrix[3]
		movs#x	temp1, [matrix + 0 * bytes]
		muls#x	temp1, [matrix + 5 * bytes]	; temp1 = matrix[0] * matrix[5]
		subs#x	temp0, temp1				; temp0 -= temp1
		muls#x	temp0, one					; temp0 *= 1.0 / det (matrix)
		movs#x	[inverse + 5 * bytes], temp0; inverse[5] = temp0
		movs#x	temp0, [matrix + 3 * bytes]
		muls#x	temp0, [matrix + 7 * bytes]	; temp0 = matrix[3] * matrix[7]
		movs#x	temp1, [matrix + 4 * bytes]
		muls#x	temp1, [matrix + 6 * bytes]	; temp1 = matrix[4] * matrix[6]
		subs#x	temp0, temp1				; temp0 -= temp1
		muls#x	temp0, one					; temp0 *= 1.0 / det (matrix)
		movs#x	[inverse + 6 * bytes], temp0; inverse[6] = temp0
		movs#x	temp0, [matrix + 1 * bytes]
		muls#x	temp0, [matrix + 6 * bytes]	; temp0 = matrix[1] * matrix[6]
		movs#x	temp1, [matrix + 0 * bytes]
		muls#x	temp1, [matrix + 7 * bytes]	; temp1 = matrix[0] * matrix[7]
		subs#x	temp0, temp1				; temp0 -= temp1
		muls#x	temp0, one					; temp0 *= 1.0 / det (matrix)
		movs#x	[inverse + 7 * bytes], temp0; inverse[7] = temp0
		movs#x	temp0, [matrix + 0 * bytes]
		muls#x	temp0, [matrix + 4 * bytes]	; temp0 = matrix[0] * matrix[4]
		movs#x	temp1, [matrix + 1 * bytes]
		muls#x	temp1, [matrix + 3 * bytes]	; temp1 = matrix[1] * matrix[3]
		subs#x	temp0, temp1				; temp0 -= temp1
		muls#x	temp0, one					; temp0 *= 1.0 / det (matrix)
		movs#x	[inverse + 8 * bytes], temp0; inverse[8] = temp0
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
Inverse3_flt32:	INVERSE3	s
Inverse3_flt64:	INVERSE3	d

;==============================================================================;
;       Inversion of custom order matrix                                       ;
;==============================================================================;
macro	INVERSE_CORE	x
{
;---[Parameters]---------------------------
inverse	equ		rdi							; inverse matrix
matrix	equ		rsi							; pointer to matrix
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
s_value	equ		stack + 10 * 8				; stack position of "value" variable
s_temp	equ		stack + 11 * 8				; stack position of "temp" variable
s_one	equ		stack + 12 * 8				; stack position of "one" variable
if x eq s
Swap	= SwapRows_flt32					; Swap matrix rows function
SubRow	= SubRow_flt32						; Subtract matrix row function
oneval	= PONE_FLT32						; +1.0
else if x eq d
Swap	= SwapRows_flt64					; Swap matrix rows function
SubRow	= SubRow_flt64						; Subtract matrix row function
oneval	= PONE_FLT64						; +1.0
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
		mov		param1, [s_iptr]
		mov		param2, [s_inv]
		mov		param3, [s_order]
		mov		param4, [s_step2]
		movs#x	value, [s_value]
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
.exit:	add		stack, space				; restoring back the stack pointer
		mov		status, 1					; return true
		ret
;---[Seeking loop]-------------------------
.sloop:	movs#x	value, [mptr]				; value = mptr[0]
		xorp#x	zero, zero					; zero = 0.0
		comis#x	value, zero					; if (value == 0.0)
		jne		.swap						;     then go to swap branch
		add		mptr, [s_step1]				; mptr += step1
		add		iptr, [s_step1]				; iptr += step1
		sub		qword [s_size2], 1			; size2--
		jnz		.sloop						; do while (size2 != 0)
;---[End of seeking loop]------------------
		add		stack, space				; restoring back the stack pointer
		xor		status, status				; return false
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
InverseCore_flt32:	INVERSE_CORE	s
InverseCore_flt64:	INVERSE_CORE	d

;==============================================================================;
;       Scale inverse matrix                                                   ;
;==============================================================================;
macro	SCALE_MATRIX	x
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
one		equ		xmm2						; +1.0
if x eq s
oneval	= PONE_FLT32						; +1.0
else if x eq d
oneval	= PONE_FLT64						; +1.0
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
ScaleMatrix_flt32:	SCALE_MATRIX	s
ScaleMatrix_flt64:	SCALE_MATRIX	d

;==============================================================================;
;       Inverse matrix                                                         ;
;==============================================================================;
macro	INVERSE		low, x
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
one		equ		xmm0						; 1.0
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
oneval	= PONE_FLT32						; +1.0
scale	= 2									; scale value
else if x eq d
Func1	= Inverse1_flt64					; Inversion of 1 order matrix
Func2	= Inverse2_flt64					; Inversion of 2 order matrix
Func3	= Inverse3_flt64					; Inversion of 3 order matrix
Init	= InitDiagonal_flt64				; Init diagonal matrix function
Core	= InverseCore_flt64					; Inversion core function
Scale	= ScaleMatrix_flt64					; Scale inverse matrix function
oneval	= PONE_FLT64						; +1.0
scale	= 3									; scale value
end if
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
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
		lea		step0, [order * bytes + bytes]
		lea		step1, [order * bytes]
		mov		step2, bytes
		mov		status, order
		imul	status, order
		lea		status, [status * bytes - bytes]
		lea		mptr, [matrix + status]		; mptr = matrix + order * order - 1
		lea		iptr, [inverse + status]	; iptr = inverse + order * order - 1
		mov		[s_inv], inverse			; save "inverse" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_iptr], iptr				; save "iptr" variable into the stack
;---[Init inverse matrix]------------------
		initreg	one, status, oneval			; one = 1.0
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

; Inverse matrix through upper triangular matrix
InverseUp_flt32:	INVERSE		0, s
InverseUp_flt64:	INVERSE		0, d

; Inverse matrix through lower triangular matrix
InverseLow_flt32:	INVERSE		1, s
InverseLow_flt64:	INVERSE		1, d

;******************************************************************************;
;       Determinant                                                            ;
;******************************************************************************;

;==============================================================================;
;       Determinant of 1 order matrix                                          ;
;==============================================================================;
macro	DETERMINANT1	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		movs#x	temp0, [matrix + 0 * bytes]	; temp0 = matrix[0]
		ret									; return temp0
}
Determinant1_flt32:	DETERMINANT1	s
Determinant1_flt64:	DETERMINANT1	d

;==============================================================================;
;       Determinant of 2 order matrix                                          ;
;==============================================================================;
macro	DETERMINANT2	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		movs#x	temp0, [matrix + 0 * bytes]
		muls#x	temp0, [matrix + 3 * bytes]	; temp0 = matrix[0] * matrix[3]
		movs#x	temp1, [matrix + 2 * bytes]
		muls#x	temp1, [matrix + 1 * bytes]	; temp1 = matrix[2] * matrix[1]
		subs#x	temp0, temp1				; temp0 -= temp1
		ret									; return temp0
}
Determinant2_flt32:	DETERMINANT2	s
Determinant2_flt64:	DETERMINANT2	d

;==============================================================================;
;       Determinant of 3 order matrix                                          ;
;==============================================================================;
macro	DETERMINANT3	x
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
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		movs#x	temp0, [matrix + 0 * bytes]	; temp0 = matrix[0]
		movs#x	temp1, [matrix + 3 * bytes]	; temp1 = matrix[3]
		movs#x	temp2, [matrix + 6 * bytes]	; temp2 = matrix[6]
		movs#x	temp3, [matrix + 1 * bytes]
		muls#x	temp3, [matrix + 5 * bytes]	; temp3 = matrix[1] * matrix[5]
		movs#x	temp4, [matrix + 4 * bytes]
		muls#x	temp4, [matrix + 8 * bytes]	; temp4 = matrix[4] * matrix[8]
		movs#x	temp5, [matrix + 7 * bytes]
		muls#x	temp5, [matrix + 2 * bytes]	; temp5 = matrix[7] * matrix[2]
		movs#x	temp6, [matrix + 2 * bytes]
		muls#x	temp6, [matrix + 4 * bytes]	; temp6 = matrix[2] * matrix[4]
		movs#x	temp7, [matrix + 5 * bytes]
		muls#x	temp7, [matrix + 7 * bytes]	; temp7 = matrix[5] * matrix[7]
		movs#x	temp8, [matrix + 8 * bytes]
		muls#x	temp8, [matrix + 1 * bytes]	; temp8 = matrix[8] * matrix[1]
		subs#x	temp4, temp7				; temp4 -= temp7
		muls#x	temp0, temp4				; temp0 *= temp4
		subs#x	temp5, temp8				; temp5 -= temp8
		muls#x	temp1, temp5				; temp1 *= temp5
		subs#x	temp3, temp6				; temp3 -= temp6
		muls#x	temp2, temp3				; temp2 *= temp3
		adds#x	temp0, temp1				; temp0 += temp1
		adds#x	temp0, temp2				; temp0 += temp2
		ret									; return temp0
}
Determinant3_flt32:	DETERMINANT3	s
Determinant3_flt64:	DETERMINANT3	d

;==============================================================================;
;       Determinant of custom order matrix                                     ;
;==============================================================================;
macro	DETERMINANT_CORE	x
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
		movap#x	value, one					; value = +1.0
		lea		status, [order - 1]			; size1 = order - 1
		test	status, status				; if (size1 == 0)
		jz		.exit						;     then go to exit
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_size1], status			; save "size1" variable into the stack
		movs#x	[s_det], one				; det = +1.0
		movs#x	[s_pone], one				; pone = +1.0
		movs#x	[s_mone], temp				; mone = -1.0
;---[Inversion loop]-----------------------
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
;---[End of inversion loop]----------------
		movs#x	value, [s_det]				; get "det" variable from the stack
.exit:	add		stack, space				; restoring back the stack pointer
		muls#x	value, [matrix]				; return det * matrix[0]
		ret
;---[Seeking loop]-------------------------
.sloop:	movs#x	value, [mptr]				; value = mptr[0]
		xorp#x	zero, zero					; zero = 0.0
		comis#x	value, zero					; if (value == 0.0)
		jne		.swap						;     then go to swap branch
		add		mptr, [s_step1]				; mptr += step1
		sub		qword [s_size2], 1			; size2--
		jnz		.sloop						; do while (size2 != 0)
;---[End of seeking loop]------------------
		add		stack, space				; restoring back the stack pointer
		initreg	value, status, nanval		; return NaN
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
DeterminantCore_flt32:	DETERMINANT_CORE	s
DeterminantCore_flt64:	DETERMINANT_CORE	d

;==============================================================================;
;       Determinant of diagonal matrix                                         ;
;==============================================================================;
macro	DETERMINANT_DIAGONAL	x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
;---[Internal variables]-------------------
result	equ		xmm0						; result register
step	equ		rcx							; step size
if x eq s
oneval	= PONE_FLT32						; +1.0
nanval	= PNAN_FLT32						; +NaN
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; +1.0
nanval	= PNAN_FLT64						; +NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Check matrix order]-------------------
		test	order, order				; if (order == 0)
		jz		.error						;     then go to error branch
;---[Check columns count]------------------
		initreg	result, step, oneval		; result = +1.0
		lea		step, [order * bytes + bytes]
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
DeterminantDiagonal_flt32:	DETERMINANT_DIAGONAL	s
DeterminantDiagonal_flt64:	DETERMINANT_DIAGONAL	d

;==============================================================================;
;       Determinant of square matrix                                           ;
;==============================================================================;
macro	DETERMINANT_SQUARE	low, x
{
;---[Parameters]---------------------------
matrix	equ		rdi							; pointer to matrix
order	equ		rsi							; matrix order
;---[Internal variables]-------------------
status	equ		rax							; operation status
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
bytes	= 1 shl scale						; size of array element (bytes)
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
		lea		status, [status * bytes - bytes]
		add		matrix, status				; matrix = matrix + order * order - 1
		lea		param3, [order * bytes + bytes]
		neg		param3
		lea		param4, [order * bytes]
		neg		param4
		mov		param5, bytes
		neg		param5
		jmp		Core						; call Core (matrix + order * order - 1, order, -(order + 1) * bytes, -order * bytes, -bytes)
else
		lea		param3, [order * bytes + bytes]
		lea		param4, [order * bytes]
		mov		param5, bytes
		jmp		Core						; call Core (matrix, order, (order + 1) * bytes, order * bytes, bytes)
end if
;---[Error branch]-------------------------
.error:	initreg	value, status, nanval		; return NaN
		ret
}

; Determinant of square matrix through upper triangular matrix
DeterminantSquareUp_flt32:	DETERMINANT_SQUARE	0, s
DeterminantSquareUp_flt64:	DETERMINANT_SQUARE	0, d

; Determinant of square matrix through lower triangular matrix
DeterminantSquareLow_flt32:	DETERMINANT_SQUARE	1, s
DeterminantSquareLow_flt64:	DETERMINANT_SQUARE	1, d

;******************************************************************************;
;       Solving of linear system                                               ;
;******************************************************************************;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Solving of 1 order matrix                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SOLVE1	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
matrix	equ		rsi							; pointer to matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
temp0	equ		xmm0						; temporary register #1
zero	equ		xmm1						; 0.0
one		equ		xmm2						; +1.0
if x eq s
oneval	= PONE_FLT32						; +1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; +1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Compute matrix determinant]-----------
		movs#x	temp0, [matrix + 0 * bytes]
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0
		comis#x	temp0, zero					; if (temp0 == 0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (matrix)
;---[Compute 1 value]----------------------
		movs#x	temp0, [coeff + 0 * bytes]	; temp0 = coeff[0]
		muls#x	temp0, one					; temp0 /= det (matrix)
;---[Store computed value]-----------------
		movs#x	[coeff + 0 * bytes], temp0	; coeff[0] = temp0
;---[Normal exit]--------------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
Solve1_flt32:	SOLVE1	s
Solve1_flt64:	SOLVE1	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Solving of 2 order matrix                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SOLVE2	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
matrix	equ		rsi							; pointer to matrix
;---[Internal variables]-------------------
status	equ		rax							; operation status
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
res0	equ		xmm2						; result register #1
res1	equ		xmm3						; result register #2
zero	equ		xmm4						; 0.0
one		equ		xmm5						; +1.0
if x eq s
oneval	= PONE_FLT32						; +1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; +1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Compute matrix determinant]-----------
		movs#x	temp0, [matrix + 0 * bytes]
		muls#x	temp0, [matrix + 3 * bytes]	; temp0 = matrix[0] * matrix[3]
		movs#x	temp1, [matrix + 2 * bytes]
		muls#x	temp1, [matrix + 1 * bytes]	; temp1 = matrix[2] * matrix[1]
		subs#x	temp0, temp1				; temp0 -= temp1
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0
		comis#x	temp0, zero					; if (temp0 == 0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (matrix)
;---[Compute 1 value]----------------------
		movs#x	temp0, [coeff + 0 * bytes]
		muls#x	temp0, [matrix + 3 * bytes]	; temp0 = coeff[0] * matrix[3]
		movs#x	temp1, [coeff + 1 * bytes]
		muls#x	temp1, [matrix + 1 * bytes]	; temp1 = coeff[1] * matrix[1]
		subs#x	temp0, temp1				; temp0 -= temp1
		muls#x	temp0, one					; temp0 /= det (matrix)
		movap#x	res0, temp0					; res0 = temp0
;---[Compute 2 value]----------------------
		movs#x	temp0, [coeff + 0 * bytes]
		muls#x	temp0, [matrix + 2 * bytes]	; temp0 = coeff[0] * matrix[2]
		movs#x	temp1, [coeff + 1 * bytes]
		muls#x	temp1, [matrix + 0 * bytes]	; temp1 = coeff[1] * matrix[0]
		subs#x	temp1, temp0				; temp1 -= temp0
		muls#x	temp1, one					; temp1 /= det (matrix)
		movap#x	res1, temp1					; res1 = temp1
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
Solve2_flt32:	SOLVE2	s
Solve2_flt64:	SOLVE2	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Solving of 3 order matrix                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SOLVE3	x
{
;---[Parameters]---------------------------
coeff	equ		rdi							; pointer to coefficients
matrix	equ		rsi							; pointer to matrix
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
one		equ		xmm13						; +1.0
if x eq s
oneval	= PONE_FLT32						; +1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; +1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Compute matrix determinant]-----------
		movs#x	temp0, [matrix + 0 * bytes]	; temp0 = matrix[0]
		movs#x	temp1, [matrix + 3 * bytes]	; temp1 = matrix[3]
		movs#x	temp2, [matrix + 6 * bytes]	; temp2 = matrix[6]
		movs#x	temp3, [matrix + 1 * bytes]
		muls#x	temp3, [matrix + 5 * bytes]	; temp3 = matrix[1] * matrix[5]
		movs#x	temp4, [matrix + 4 * bytes]
		muls#x	temp4, [matrix + 8 * bytes]	; temp4 = matrix[4] * matrix[8]
		movs#x	temp5, [matrix + 7 * bytes]
		muls#x	temp5, [matrix + 2 * bytes]	; temp5 = matrix[7] * matrix[2]
		movs#x	temp6, [matrix + 2 * bytes]
		muls#x	temp6, [matrix + 4 * bytes]	; temp6 = matrix[2] * matrix[4]
		movs#x	temp7, [matrix + 5 * bytes]
		muls#x	temp7, [matrix + 7 * bytes]	; temp7 = matrix[5] * matrix[7]
		movs#x	temp8, [matrix + 8 * bytes]
		muls#x	temp8, [matrix + 1 * bytes]	; temp8 = matrix[8] * matrix[1]
		subs#x	temp4, temp7				; temp4 -= temp7
		muls#x	temp0, temp4				; temp0 *= temp4
		subs#x	temp5, temp8				; temp5 -= temp8
		muls#x	temp1, temp5				; temp1 *= temp5
		subs#x	temp3, temp6				; temp3 -= temp6
		muls#x	temp2, temp3				; temp2 *= temp3
		adds#x	temp0, temp1				; temp0 += temp1
		adds#x	temp0, temp2				; temp0 += temp2
;---[Check matrix determinant]-------------
		xorp#x	zero, zero					; zero = 0
		comis#x	temp0, zero					; if (temp0 == 0)
		je		.error						;     then go to error branch
;---[Compute inverse determinant]----------
		initreg	one, status, oneval			; one = 1.0
		divs#x	one, temp0					; one = 1.0 / det (matrix)
;---[Compute 1 value]----------------------
		movs#x	temp0, [coeff + 0 * bytes]	; temp0 = coeff[0]
		movs#x	temp1, [coeff + 1 * bytes]	; temp1 = coeff[1]
		movs#x	temp2, [coeff + 2 * bytes]	; temp2 = coeff[2]
		muls#x	temp0, temp4				; temp0 *= temp4
		muls#x	temp1, temp5				; temp1 *= temp5
		muls#x	temp2, temp3				; temp2 *= temp3
		adds#x	temp0, temp1				; temp0 += temp1
		adds#x	temp0, temp2				; temp0 += temp2
		muls#x	temp0, one					; temp0 /= det (matrix)
		movap#x	res0, temp0					; res0 = temp0
;---[Compute 2 value]----------------------
		movs#x	temp0, [coeff + 0 * bytes]	; temp0 = coeff[0]
		movs#x	temp1, [coeff + 1 * bytes]	; temp1 = coeff[1]
		movs#x	temp2, [coeff + 2 * bytes]	; temp2 = coeff[2]
		movs#x	temp3, [matrix + 0 * bytes]
		muls#x	temp3, [matrix + 5 * bytes]	; temp3 = matrix[0] * matrix[5]
		movs#x	temp4, [matrix + 3 * bytes]
		muls#x	temp4, [matrix + 8 * bytes]	; temp4 = matrix[3] * matrix[8]
		movs#x	temp5, [matrix + 6 * bytes]
		muls#x	temp5, [matrix + 2 * bytes]	; temp5 = matrix[6] * matrix[2]
		movs#x	temp6, [matrix + 2 * bytes]
		muls#x	temp6, [matrix + 3 * bytes]	; temp6 = matrix[2] * matrix[3]
		movs#x	temp7, [matrix + 5 * bytes]
		muls#x	temp7, [matrix + 6 * bytes]	; temp7 = matrix[5] * matrix[6]
		movs#x	temp8, [matrix + 8 * bytes]
		muls#x	temp8, [matrix + 0 * bytes]	; temp8 = matrix[8] * matrix[0]
		subs#x	temp7, temp4				; temp7 -= temp4
		muls#x	temp0, temp7				; temp0 *= temp7
		subs#x	temp8, temp5				; temp8 -= temp5
		muls#x	temp1, temp8				; temp1 *= temp8
		subs#x	temp6, temp3				; temp6 -= temp3
		muls#x	temp2, temp6				; temp2 *= temp6
		adds#x	temp0, temp1				; temp0 += temp1
		adds#x	temp0, temp2				; temp0 += temp2
		muls#x	temp0, one					; temp0 /= det (matrix)
		movap#x	res1, temp0					; res1 = temp0
;---[Compute 3 value]----------------------
		movs#x	temp0, [coeff + 0 * bytes]	; temp0 = coeff[0]
		movs#x	temp1, [coeff + 1 * bytes]	; temp1 = coeff[1]
		movs#x	temp2, [coeff + 2 * bytes]	; temp2 = coeff[2]
		movs#x	temp3, [matrix + 0 * bytes]
		muls#x	temp3, [matrix + 4 * bytes]	; temp3 = matrix[0] * matrix[4]
		movs#x	temp4, [matrix + 3 * bytes]
		muls#x	temp4, [matrix + 7 * bytes]	; temp4 = matrix[3] * matrix[7]
		movs#x	temp5, [matrix + 6 * bytes]
		muls#x	temp5, [matrix + 1 * bytes]	; temp5 = matrix[6] * matrix[1]
		movs#x	temp6, [matrix + 1 * bytes]
		muls#x	temp6, [matrix + 3 * bytes]	; temp6 = matrix[1] * matrix[3]
		movs#x	temp7, [matrix + 4 * bytes]
		muls#x	temp7, [matrix + 6 * bytes]	; temp7 = matrix[4] * matrix[6]
		movs#x	temp8, [matrix + 7 * bytes]
		muls#x	temp8, [matrix + 0 * bytes]	; temp8 = matrix[7] * matrix[0]
		subs#x	temp4, temp7				; temp4 -= temp7
		muls#x	temp0, temp4				; temp0 *= temp4
		subs#x	temp5, temp8				; temp5 -= temp8
		muls#x	temp1, temp5				; temp1 *= temp5
		subs#x	temp3, temp6				; temp3 -= temp6
		muls#x	temp2, temp3				; temp2 *= temp3
		adds#x	temp0, temp1				; temp0 += temp1
		adds#x	temp0, temp2				; temp0 += temp2
		muls#x	temp0, one					; temp0 /= det (matrix)
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
Solve3_flt32:	SOLVE3	s
Solve3_flt64:	SOLVE3	d

;==============================================================================;
;       Gauss elimination                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Gauss elimination core function                                        ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	GAUSS_CORE	reg1, reg2, x
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
oneval	= PONE_FLT32						; +1.0
else if x eq d
Swap	= SwapRows_flt64					; Swap matrix rows function
SubRow	= SubRow_flt64						; Subtract matrix row function
oneval	= PONE_FLT64						; +1.0
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
		movs#x	temp, [cptr]
		muls#x	zero, value
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
.exit:	add		stack, space				; restoring back the stack pointer
		mov		status, 1					; return true
		ret
;---[Seeking loop]-------------------------
.sloop:	movs#x	value, [mptr]				; value = mptr[0]
		xorp#x	zero, zero					; zero = 0.0
		comis#x	value, zero					; if (value == 0.0)
		jne		.swap						;     then go to swap branch
		add		mptr, [s_step1]				; mptr += step1
		add		cptr, [s_step2]				; cptr += step2
		sub		qword [s_size2], 1			; size2--
		jnz		.sloop						; do while (size2 != 0)
;---[End of seeking loop]------------------
		add		stack, space				; restoring back the stack pointer
		xor		status, status				; return false
		ret
;---[Swap branch]--------------------------
.swap:	mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		movs#x	temp, [s_one]
		divs#x	temp, value					; temp = 1.0 / mptr[0]
		movs#x	[s_temp], temp				; save "temp" variable into the stack
		mov		reg1, [cptr]				; reg1 = cptr[0]
		mov		reg2, [coeff]				; reg2 = coeff[0]
		xchg	reg1, reg2					; exchange reg1 and reg2
		mov		[cptr], reg1				; cptr[0] = reg1
		mov		[coeff], reg2				; coeff[0] = reg2
		mov		param1, [s_mptr]
		mov		param2, [s_mtrx]
		mov		param3, [s_size1]
		add		param3, 1
		mov		param4, [s_step2]
		call	Swap						; call Swap (mptr, matrix, size1 + 1, step2)
		jmp		.back						; go back
}
GaussCore_flt32:	GAUSS_CORE	r8d, r9d, s
GaussCore_flt64:	GAUSS_CORE	r8, r9, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Solving triangular matrix                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SOLVE_TRIANGULAR	x
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
stack	equ		rsp							; stack pointer
s_coeff	equ		stack + 0 * 8				; stack position of "coeff" variable
s_mtrx	equ		stack + 1 * 8				; stack position of "matrix" variable
s_order	equ		stack + 2 * 8				; stack position of "order" variable
s_step0	equ		stack + 3 * 8				; stack position of "step0" variable
s_step1	equ		stack + 4 * 8				; stack position of "step1" variable
s_step2	equ		stack + 5 * 8				; stack position of "step2" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
s_mptr	equ		stack + 7 * 8				; stack position of "mptr" variable
s_cptr	equ		stack + 8 * 8				; stack position of "cptr" variable
if x eq s
MulRows	= MulRows_flt32						; Multiply matrix rows function
else if x eq d
MulRows	= MulRows_flt64						; Multiply matrix rows function
end if
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		movs#x	value, [coeff]
		divs#x	value, [matrix]				; value = coeff[0] / matrix[0]
		movs#x	[coeff], value				; coeff[0] = value
		lea		status, [order - 1]			; size = order - 1
		test	status, status				; if (size == 0)
		jz		.exit						;     then go to exit
		lea		mptr, [matrix + step1]		; mptr = matrix + step1
		lea		cptr, [coeff + step2]		; cptr = coeff + step2
		mov		[s_coeff], coeff			; save "coeff" variable into the stack
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_order], order			; save "order" variable into the stack
		mov		[s_step0], step0			; save "step0" variable into the stack
		mov		[s_step1], step1			; save "step1" variable into the stack
		mov		[s_step2], step2			; save "step2" variable into the stack
		mov		[s_size], status			; save "size" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
;---[Solving loop]-------------------------
.loop:	mov		param1, [s_mptr]
		mov		param2, [s_coeff]
		mov		param3, [s_order]
		sub		param3, [s_size]
		mov		param4, [s_step2]
		call	MulRows						; call MulRows (mptr, coeff, order - size, step2)
		mov		matrix, [s_mtrx]			; get "matrix" variable from the stack
		mov		mptr, [s_mptr]				; get "mptr" variable from the stack
		mov		cptr, [s_cptr]				; get "cptr" variable from the stack
		add		matrix, [s_step0]			; matrix += step0
		movs#x	temp, [cptr]
		subs#x	temp, value
		divs#x	temp, [matrix]				; temp = (cptr[0] - value) / matrix[0]
		movs#x	[cptr], temp				; cptr[0] = temp
		add		mptr, [s_step1]				; mptr += step1
		add		cptr, [s_step2]				; cptr += step2
		mov		[s_mtrx], matrix			; save "matrix" variable into the stack
		mov		[s_mptr], mptr				; save "mptr" variable into the stack
		mov		[s_cptr], cptr				; save "cptr" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of solving loop]------------------
.exit:	add		stack, space				; restoring back the stack pointer
		mov		status, 1					; return true
		ret
}
SolveTriangular_flt32:	SOLVE_TRIANGULAR	s
SolveTriangular_flt64:	SOLVE_TRIANGULAR	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Solving function for Gauss elimination                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	GAUSS	low, x
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
bytes	= 1 shl scale						; size of array element (bytes)
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
		lea		step0, [order * bytes + bytes]
		lea		step1, [order * bytes]
		mov		step2, bytes
		mov		status, order
		imul	status, order
		lea		status, [status * bytes - bytes]
		lea		mptr, [matrix + status]		; mptr = matrix + order * order - 1
		lea		status, [order * bytes - bytes]
		lea		cptr, [coeff + status]		; cptr = coeff + order - 1
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

; Gauss elimination to upper triangular matrix
GaussUp_flt32:	GAUSS	0, s
GaussUp_flt64:	GAUSS	0, d

; Gauss elimination to lower triangular matrix
GaussLow_flt32:	GAUSS	1, s
GaussLow_flt64:	GAUSS	1, d

;==============================================================================;
;       Cholesky decomposition                                                 ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Cholesky decomposition core function                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CHOLESKY_CORE	x
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
oneval	= PONE_FLT32						; +1.0
else if x eq d
MulRows	= MulRows_flt64						; Multiply matrix rows function
oneval	= PONE_FLT64						; +1.0
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
		call	MulRows						; call MulRows (mptr - step2, matrix - step2, order - size1 - 1, -step2)
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
		call	MulRows						; call MulRows (matrix + step0 - step2, matrix + step0 - step2, order - size1, -step2)
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
.exit:	add		stack, space				; restoring back the stack pointer
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
		xor		status, status				; return false
		ret
}
CholeskyCore_flt32:	CHOLESKY_CORE	s
CholeskyCore_flt64:	CHOLESKY_CORE	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Mirroring matrix elements                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	MIRROR_MATRIX	reg
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
MirrorMatrix_flt32:	MIRROR_MATRIX	eax
MirrorMatrix_flt64:	MIRROR_MATRIX	rax

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Solving function for Cholesky decomposition                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CHOLESKY	low, x
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
bytes	= 1 shl scale						; size of array element (bytes)
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
		lea		step0, [order * bytes + bytes]
		lea		step1, [order * bytes]
		mov		step2, bytes
		mov		status, order
		imul	status, order
		lea		status, [status * bytes - bytes]
		lea		mptr, [matrix + status]		; mptr = matrix + order * order - 1
		lea		status, [order * bytes - bytes]
		lea		cptr, [coeff + status]		; cptr = coeff + order - 1
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

; Cholesky decomposition to upper triangular matrix
CholeskyUp_flt32:	CHOLESKY	0, s
CholeskyUp_flt64:	CHOLESKY	0, d

; Cholesky decomposition to lower triangular matrix
CholeskyLow_flt32:	CHOLESKY	1, s
CholeskyLow_flt64:	CHOLESKY	1, d

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
