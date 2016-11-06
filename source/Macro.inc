;                                                                      Macro.inc
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                      MACROS ARE USED BY LINASM MODULES                      #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
CLINE			= 64						; Size of cache line
PSTEP			= 512						; Prefetch step
VSCALE			= 4							; Vector scale factor
PSCALE			= 12						; Memory page scale factor
VSIZE			= 1 shl VSCALE				; Size of vector register (bytes)
PSIZE			= 1 shl PSCALE				; Size of memory page (bytes)
VMASK			= VSIZE - 1					; Vector boundary aligning mask
PMASK			= PSIZE - 1					; Memory page boundary aligning mask
VBITS			= 0xFFFF					; Vector bit mask
NOT_FOUND		= -1						; Pattern is not found
ERROR			= -1						; Error value

;==============================================================================;
;       ADT consts                                                             ;
;==============================================================================;
KSCALE			= 4							; Key scale factor
KSIZE			= 1 shl KSCALE				; Size of key (bytes)
CONTINUE		= 1 shl	63					; Continue flag for vectorized search
FLOCK			= 0x80000000				; Futex exclusive lock value
SPINS			= 1024						; Count of spinlock iterations

;==============================================================================;
;       flt32_t consts                                                         ;
;==============================================================================;

; Masks
DMASK_FLT32		= 0x7FFFFFFF				; Data mask
SMASK_FLT32		= 0x80000000				; Sign mask
MMASK_FLT32		= 0x007FFFFF				; Mantissa mask

; Not a number
PNAN_FLT32		= 0x7FC00000				; +NaN
MNAN_FLT32		= 0xFFC00000				; -NaN

; Infinity
PINF_FLT32		= 0x7F800000				; +Inf
MINF_FLT32		= 0xFF800000				; -Inf

; Two
PTWO_FLT32		= 0x40000000				; +2.0
MTWO_FLT32		= 0xC0000000				; -2.0

; One
PONE_FLT32		= 0x3F800000				; +1.0
MONE_FLT32		= 0xBF800000				; -1.0

; Half
PHALF_FLT32		= 0x3F000000				; +0.5
MHALF_FLT32		= 0xBF000000				; -0.5

; Zero
PZERO_FLT32		= 0x00000000				; +0.0
MZERO_FLT32		= 0x80000000				; -0.0

; Sqrt
SQRT2_FLT32		= 0x3FB504F3				; Sqrt (2)
SQRT2P1_FLT32	= 0x401A827A				; Sqrt (2) + 1
SQRT2M1_FLT32	= 0x3ED413CD				; Sqrt (2) - 1
SQRT12_FLT32	= 0x3F3504F3				; 1 / Sqrt (2)

; Pi
PPI_FLT32		= 0x40490FDB				; +Pi
MPI_FLT32		= 0xC0490FDB				; -Pi
PI2_FLT32		= 0x40C90FDB				; Pi * 2
PI_HALF_FLT32	= 0x3FC90FDB				; Pi / 2
PI_FOUR_FLT32	= 0x3F490FDB				; Pi / 4

; Misc
MIN_NORM_FLT32	= 0x00800000				; Min normal value
MAX_NORM_FLT32	= 0x7F7FFFFF				; Max normal value
MBITS_FLT32		= 23						; Count of bits into mantissa
EBIAS_FLT32		= 127						; Exponent bias

;==============================================================================;
;       flt64_t consts                                                         ;
;==============================================================================;

; Masks
DMASK_FLT64		= 0x7FFFFFFFFFFFFFFF		; Data mask
SMASK_FLT64		= 0x8000000000000000		; Sign mask
MMASK_FLT64		= 0x000FFFFFFFFFFFFF		; Mantissa mask

; Not a number
PNAN_FLT64		= 0x7FF8000000000000		; +NaN
MNAN_FLT64		= 0xFFF8000000000000		; -NaN

; Infinity
PINF_FLT64		= 0x7FF0000000000000		; +Inf
MINF_FLT64		= 0xFFF0000000000000		; -Inf

; Two
PTWO_FLT64		= 0x4000000000000000		; +2.0
MTWO_FLT64		= 0xC000000000000000		; -2.0

; One
PONE_FLT64		= 0x3FF0000000000000		; +1.0
MONE_FLT64		= 0xBFF0000000000000		; -1.0

; Half
PHALF_FLT64		= 0x3FE0000000000000		; +0.5
MHALF_FLT64		= 0xBFE0000000000000		; -0.5

; Zero
PZERO_FLT64		= 0x0000000000000000		; +0.0
MZERO_FLT64		= 0x8000000000000000		; -0.0

;Sqrt
SQRT2_FLT64		= 0x3FF6A09E667F3BCD		; Sqrt (2)
SQRT2P1_FLT64	= 0x4003504F333F9DE6		; Sqrt (2) + 1
SQRT2M1_FLT64	= 0x3FDA827999FCEF32		; Sqrt (2) - 1
SQRT12_FLT64	= 0x3FE6A09E667F3BCD		; 1 / Sqrt (2)

; Pi
PPI_FLT64		= 0x400921FB54442D18		; +Pi
MPI_FLT64		= 0xC00921FB54442D18		; -Pi
PI2_FLT64		= 0x401921FB54442D18		; Pi * 2
PI_HALF_FLT64	= 0x3FF921FB54442D18		; Pi / 2
PI_FOUR_FLT64	= 0x3FE921FB54442D18		; Pi / 4

; Misc
MIN_NORM_FLT64	= 0x0010000000000000		; Min normal value
MAX_NORM_FLT64	= 0x7FEFFFFFFFFFFFFF		; Max normal value
MBITS_FLT64		= 52						; Count of bits into mantissa
EBIAS_FLT64		= 1023						; Exponent bias

;******************************************************************************;
;       Function call parameters                                               ;
;******************************************************************************;
param1	equ		rdi							; register to pass 1 parameter
param2	equ		rsi							; register to pass 2 parameter
param3	equ		rdx							; register to pass 3 parameter
param4	equ		rcx							; register to pass 4 parameter
param5	equ		r8							; register to pass 5 parameter
param6	equ		r9							; register to pass 6 parameter
param7	equ		r10							; register to pass 7 parameter
param8	equ		r11							; register to pass 8 parameter
param9	equ		rax							; register to pass 9 parameter

;******************************************************************************;
;       Clone value through the entire register                                ;
;******************************************************************************;
macro	clone	reg, scale
{
if scale = 0								; Clone byte value
	punpcklbw	reg, reg
	punpcklbw	reg, reg
	punpcklbw	reg, reg
	punpcklbw	reg, reg
else if scale = 1							; Clone word value
	punpcklwd	reg, reg
	punpcklwd	reg, reg
	punpcklwd	reg, reg
else if scale = 2							; Clone double word value
	punpckldq	reg, reg
	punpckldq	reg, reg
else if scale = 3							; Clone quad word value
	punpcklqdq	reg, reg
end if
}

;******************************************************************************;
;       Init vector register with const                                        ;
;******************************************************************************;
macro	initreg	reg, treg, value
{
		mov		treg, value
		movq	reg, treg					; reg = value
}

;******************************************************************************;
;       Scalar sum of values inside the entire register                        ;
;******************************************************************************;
macro	summa	reg, x
{
if x eq s
		haddp#x	reg, reg
		haddp#x	reg, reg
else if x eq d
		haddp#x	reg, reg					; reg = summa (reg)
end if
}

;******************************************************************************;
;       Shift value left                                                       ;
;******************************************************************************;
macro	shftl	value, shift
{
if shift
		shl		value, shift				; value <<= shift
end if
}

;******************************************************************************;
;       Shift value right                                                      ;
;******************************************************************************;
macro	shftr	value, shift
{
if shift
		shr		value, shift				; value >>= shift
end if
}

;******************************************************************************;
;       Fast computation of polynomial value of degree 4                       ;
;******************************************************************************;
macro	POLYNOM4	array, orig, scale, value, t, p, x
{
		movap#x	scale, orig
		mul#p#x	scale, value				; scale = orig * value
;---[Stage 1]------------------------------
		mov#t#x	temp1, [array + 0 * VSIZE]
		mul#p#x	temp1, value
		add#p#x	temp1, [array + 1 * VSIZE] 	; temp1 = array[0] * value + array[1]
		mov#t#x	temp2, [array + 2 * VSIZE]
		mul#p#x	temp2, value
		add#p#x	temp2, [array + 3 * VSIZE] 	; temp2 = array[2] * value + array[3]
		mul#p#x	orig, [array + 4 * VSIZE]	; orig *= array[4]
;---[Stage 2]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp2			 	; temp1 = temp1 * value + temp2
;---[Final stage]--------------------------
		mul#p#x	scale, temp1
		add#p#x	orig, scale					; orig = scale * temp1 + orig
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	PAIR4	array1, array2, orig1, orig2, scale1, scale2, value, t, p, x
{
		movap#x	scale1, orig1
		mul#p#x	scale1, value				; scale1 = orig1 * value
		movap#x	scale2, orig2
		mul#p#x	scale2, value				; scale2 = orig2 * value
;---[Stage 1]------------------------------
		mov#t#x	temp1, [array1 + 0 * VSIZE]
		mul#p#x	temp1, value
		add#p#x	temp1, [array1 + 1 * VSIZE] ; temp1 = array1[0] * value + array1[1]
		mov#t#x	temp2, [array1 + 2 * VSIZE]
		mul#p#x	temp2, value
		add#p#x	temp2, [array1 + 3 * VSIZE] ; temp2 = array1[2] * value + array1[3]
		mul#p#x	orig1, [array1 + 4 * VSIZE]	; orig1 *= array1[4]
		mov#t#x	temp3, [array2 + 0 * VSIZE]
		mul#p#x	temp3, value
		add#p#x	temp3, [array2 + 1 * VSIZE] ; temp3 = array2[0] * value + array2[1]
		mov#t#x	temp4, [array2 + 2 * VSIZE]
		mul#p#x	temp4, value
		add#p#x	temp4, [array2 + 3 * VSIZE] ; temp4 = array2[2] * value + array2[3]
		mul#p#x	orig2, [array2 + 4 * VSIZE]	; orig2 *= array2[4]
;---[Stage 2]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp2			 	; temp1 = temp1 * value + temp2
		mul#p#x	temp3, value
		add#p#x	temp3, temp4			 	; temp3 = temp3 * value + temp4
;---[Final stage]--------------------------
		mul#p#x	scale1, temp1
		add#p#x	orig1, scale1				; orig1 = scale1 * temp1 + orig1
		mul#p#x	scale2, temp3
		add#p#x	orig2, scale2				; orig2 = scale2 * temp3 + orig2
}

;******************************************************************************;
;       Fast computation of polynomial value of degree 8                       ;
;******************************************************************************;
macro	POLYNOM8	array, orig, scale, value, t, p, x
{
		movap#x	scale, orig
		mul#p#x	scale, value				; scale = orig * value
;---[Stage 1]------------------------------
		mov#t#x	temp1, [array + 0 * VSIZE]
		mul#p#x	temp1, value
		add#p#x	temp1, [array + 1 * VSIZE] 	; temp1 = array[0] * value + array[1]
		mov#t#x	temp2, [array + 2 * VSIZE]
		mul#p#x	temp2, value
		add#p#x	temp2, [array + 3 * VSIZE] 	; temp2 = array[2] * value + array[3]
		mov#t#x	temp3, [array + 4 * VSIZE]
		mul#p#x	temp3, value
		add#p#x	temp3, [array + 5 * VSIZE] 	; temp3 = array[4] * value + array[5]
		mov#t#x	temp4, [array + 6 * VSIZE]
		mul#p#x	temp4, value
		add#p#x	temp4, [array + 7 * VSIZE] 	; temp4 = array[6] * value + array[7]
		mul#p#x	orig, [array + 8 * VSIZE]	; orig *= array[8]
;---[Stage 2]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp2			 	; temp1 = temp1 * value + temp2
		mul#p#x	temp3, value
		add#p#x	temp3, temp4			 	; temp3 = temp3 * value + temp4
;---[Stage 3]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp3			 	; temp1 = temp1 * value + temp3
;---[Final stage]--------------------------
		mul#p#x	scale, temp1
		add#p#x	orig, scale					; orig = scale * temp1 + orig
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	PAIR8	array1, array2, orig1, orig2, scale1, scale2, value, t, p, x
{
		movap#x	scale1, orig1
		mul#p#x	scale1, value				; scale1 = orig1 * value
		movap#x	scale2, orig2
		mul#p#x	scale2, value				; scale2 = orig2 * value
;---[Stage 1]------------------------------
		mov#t#x	temp1, [array1 + 0 * VSIZE]
		mul#p#x	temp1, value
		add#p#x	temp1, [array1 + 1 * VSIZE] ; temp1 = array1[0] * value + array1[1]
		mov#t#x	temp2, [array1 + 2 * VSIZE]
		mul#p#x	temp2, value
		add#p#x	temp2, [array1 + 3 * VSIZE] ; temp2 = array1[2] * value + array1[3]
		mov#t#x	temp3, [array1 + 4 * VSIZE]
		mul#p#x	temp3, value
		add#p#x	temp3, [array1 + 5 * VSIZE] ; temp3 = array1[4] * value + array1[5]
		mov#t#x	temp4, [array1 + 6 * VSIZE]
		mul#p#x	temp4, value
		add#p#x	temp4, [array1 + 7 * VSIZE] ; temp4 = array1[6] * value + array1[7]
		mul#p#x	orig1, [array1 + 8 * VSIZE]	; orig1 *= array1[8]
		mov#t#x	temp5, [array2 + 0 * VSIZE]
		mul#p#x	temp5, value
		add#p#x	temp5, [array2 + 1 * VSIZE] ; temp5 = array2[0] * value + array2[1]
		mov#t#x	temp6, [array2 + 2 * VSIZE]
		mul#p#x	temp6, value
		add#p#x	temp6, [array2 + 3 * VSIZE] ; temp6 = array2[2] * value + array2[3]
		mov#t#x	temp7, [array2 + 4 * VSIZE]
		mul#p#x	temp7, value
		add#p#x	temp7, [array2 + 5 * VSIZE] ; temp7 = array2[4] * value + array2[5]
		mov#t#x	temp8, [array2 + 6 * VSIZE]
		mul#p#x	temp8, value
		add#p#x	temp8, [array2 + 7 * VSIZE] ; temp8 = array2[6] * value + array2[7]
		mul#p#x	orig2, [array2 + 8 * VSIZE]	; orig2 *= array2[8]
;---[Stage 2]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp2			 	; temp1 = temp1 * value + temp2
		mul#p#x	temp3, value
		add#p#x	temp3, temp4			 	; temp3 = temp3 * value + temp4
		mul#p#x	temp5, value
		add#p#x	temp5, temp6			 	; temp5 = temp5 * value + temp6
		mul#p#x	temp7, value
		add#p#x	temp7, temp8			 	; temp7 = temp7 * value + temp8
;---[Stage 3]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp3			 	; temp1 = temp1 * value + temp3
		mul#p#x	temp5, value
		add#p#x	temp5, temp7			 	; temp5 = temp5 * value + temp7
;---[Final stage]--------------------------
		mul#p#x	scale1, temp1
		add#p#x	orig1, scale1				; orig1 = scale1 * temp1 + orig1
		mul#p#x	scale2, temp5
		add#p#x	orig2, scale2				; orig2 = scale2 * temp5 + orig2
}

;******************************************************************************;
;       Fast computation of polynomial value of degree 16                      ;
;******************************************************************************;
macro	POLYNOM16	array, orig, scale, value, t, p, x
{
		movap#x	scale, orig
		mul#p#x	scale, value				; scale = orig * value
;---[Stage 1]------------------------------
		mov#t#x	temp1, [array + 0 * VSIZE]
		mul#p#x	temp1, value
		add#p#x	temp1, [array + 1 * VSIZE] 	; temp1 = array[0] * value + array[1]
		mov#t#x	temp2, [array + 2 * VSIZE]
		mul#p#x	temp2, value
		add#p#x	temp2, [array + 3 * VSIZE] 	; temp2 = array[2] * value + array[3]
		mov#t#x	temp3, [array + 4 * VSIZE]
		mul#p#x	temp3, value
		add#p#x	temp3, [array + 5 * VSIZE] 	; temp3 = array[4] * value + array[5]
		mov#t#x	temp4, [array + 6 * VSIZE]
		mul#p#x	temp4, value
		add#p#x	temp4, [array + 7 * VSIZE] 	; temp4 = array[6] * value + array[7]
		mov#t#x	temp5, [array + 8 * VSIZE]
		mul#p#x	temp5, value
		add#p#x	temp5, [array + 9 * VSIZE] 	; temp5 = array[8] * value + array[9]
		mov#t#x	temp6, [array + 10 * VSIZE]
		mul#p#x	temp6, value
		add#p#x	temp6, [array + 11 * VSIZE] ; temp6 = array[10] * value + array[11]
		mov#t#x	temp7, [array + 12 * VSIZE]
		mul#p#x	temp7, value
		add#p#x	temp7, [array + 13 * VSIZE] ; temp7 = array[12] * value + array[13]
		mov#t#x	temp8, [array + 14 * VSIZE]
		mul#p#x	temp8, value
		add#p#x	temp8, [array + 15 * VSIZE] ; temp8 = array[14] * value + array[15]
		mul#p#x	orig, [array + 16 * VSIZE]	; orig *= array[16]
;---[Stage 2]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp2			 	; temp1 = temp1 * value + temp2
		mul#p#x	temp3, value
		add#p#x	temp3, temp4			 	; temp3 = temp3 * value + temp4
		mul#p#x	temp5, value
		add#p#x	temp5, temp6			 	; temp5 = temp5 * value + temp6
		mul#p#x	temp7, value
		add#p#x	temp7, temp8			 	; temp7 = temp7 * value + temp8
;---[Stage 3]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp3			 	; temp1 = temp1 * value + temp3
		mul#p#x	temp5, value
		add#p#x	temp5, temp7			 	; temp5 = temp5 * value + temp7
;---[Stage 4]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp5			 	; temp1 = temp1 * value + temp5
;---[Final stage]--------------------------
		mul#p#x	scale, temp1
		add#p#x	orig, scale					; orig = scale * temp1 + orig
}
;******************************************************************************;
;       Fast computation of polynomial value of degree 32                      ;
;******************************************************************************;
macro	POLYNOM32	array, orig, scale, value, t, p, x
{
		movap#x	scale, orig
		mul#p#x	scale, value				; scale = orig * value
;---[Stage 1]------------------------------
		mov#t#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		mul#p#x	temp1, value
		add#p#x	temp1, [array + 1 * VSIZE] 	; temp1 = temp1 * value + array[1]
		mul#p#x	temp1, value
		add#p#x	temp1, [array + 2 * VSIZE] 	; temp1 = temp1 * value + array[2]
		mul#p#x	temp1, value
		add#p#x	temp1, [array + 3 * VSIZE] 	; temp1 = temp1 * value + array[3]
		mov#t#x	temp2, [array + 4 * VSIZE]	; temp2 = array[4]
		mul#p#x	temp2, value
		add#p#x	temp2, [array + 5 * VSIZE] 	; temp2 = temp2 * value + array[5]
		mul#p#x	temp2, value
		add#p#x	temp2, [array + 6 * VSIZE] 	; temp2 = temp2 * value + array[6]
		mul#p#x	temp2, value
		add#p#x	temp2, [array + 7 * VSIZE] 	; temp2 = temp2 * value + array[7]
		mov#t#x	temp3, [array + 8 * VSIZE]	; temp3 = array[8]
		mul#p#x	temp3, value
		add#p#x	temp3, [array + 9 * VSIZE] 	; temp3 = temp3 * value + array[9]
		mul#p#x	temp3, value
		add#p#x	temp3, [array + 10 * VSIZE] ; temp3 = temp3 * value + array[10]
		mul#p#x	temp3, value
		add#p#x	temp3, [array + 11 * VSIZE] ; temp3 = temp3 * value + array[11]
		mov#t#x	temp4, [array + 12 * VSIZE]	; temp4 = array[12]
		mul#p#x	temp4, value
		add#p#x	temp4, [array + 13 * VSIZE] ; temp4 = temp4 * value + array[13]
		mul#p#x	temp4, value
		add#p#x	temp4, [array + 14 * VSIZE] ; temp4 = temp4 * value + array[14]
		mul#p#x	temp4, value
		add#p#x	temp4, [array + 15 * VSIZE] ; temp4 = temp4 * value + array[15]
		mov#t#x	temp5, [array + 16 * VSIZE]	; temp5 = array[16]
		mul#p#x	temp5, value
		add#p#x	temp5, [array + 17 * VSIZE] ; temp5 = temp5 * value + array[17]
		mul#p#x	temp5, value
		add#p#x	temp5, [array + 18 * VSIZE] ; temp5 = temp5 * value + array[18]
		mul#p#x	temp5, value
		add#p#x	temp5, [array + 19 * VSIZE] ; temp5 = temp5 * value + array[19]
		mov#t#x	temp6, [array + 20 * VSIZE]	; temp6 = array[20]
		mul#p#x	temp6, value
		add#p#x	temp6, [array + 21 * VSIZE] ; temp6 = temp6 * value + array[21]
		mul#p#x	temp6, value
		add#p#x	temp6, [array + 22 * VSIZE] ; temp6 = temp6 * value + array[22]
		mul#p#x	temp6, value
		add#p#x	temp6, [array + 23 * VSIZE] ; temp6 = temp6 * value + array[23]
		mov#t#x	temp7, [array + 24 * VSIZE]	; temp7 = array[24]
		mul#p#x	temp7, value
		add#p#x	temp7, [array + 25 * VSIZE] ; temp7 = temp7 * value + array[25]
		mul#p#x	temp7, value
		add#p#x	temp7, [array + 26 * VSIZE] ; temp7 = temp7 * value + array[26]
		mul#p#x	temp7, value
		add#p#x	temp7, [array + 27 * VSIZE] ; temp7 = temp7 * value + array[27]
		mov#t#x	temp8, [array + 28 * VSIZE]	; temp8 = array[28]
		mul#p#x	temp8, value
		add#p#x	temp8, [array + 29 * VSIZE] ; temp8 = temp8 * value + array[29]
		mul#p#x	temp8, value
		add#p#x	temp8, [array + 30 * VSIZE] ; temp8 = temp8 * value + array[30]
		mul#p#x	temp8, value
		add#p#x	temp8, [array + 31 * VSIZE] ; temp8 = temp8 * value + array[31]
		mul#p#x	orig, [array + 32 * VSIZE]	; orig *= array[32]
;---[Stage 2]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp2			 	; temp1 = temp1 * value + temp2
		mul#p#x	temp3, value
		add#p#x	temp3, temp4			 	; temp3 = temp3 * value + temp4
		mul#p#x	temp5, value
		add#p#x	temp5, temp6			 	; temp5 = temp5 * value + temp6
		mul#p#x	temp7, value
		add#p#x	temp7, temp8			 	; temp7 = temp7 * value + temp8
;---[Stage 3]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp3			 	; temp1 = temp1 * value + temp3
		mul#p#x	temp5, value
		add#p#x	temp5, temp7			 	; temp5 = temp5 * value + temp7
;---[Stage 4]------------------------------
		mul#p#x	value, value				; value *= value
		mul#p#x	temp1, value
		add#p#x	temp1, temp5			 	; temp1 = temp1 * value + temp5
;---[Final stage]--------------------------
		mul#p#x	scale, temp1
		add#p#x	orig, scale					; orig = scale * temp1 + orig
}

;******************************************************************************;
;       Compute object capacity (bytes)                                        ;
;******************************************************************************;
macro	Capacity	value, temp, min
{
;---[Internal variables]-------------------
shift	equ		rcx							; position of the most significant bit
shiftl	equ		cl							; low part of shift register
;------------------------------------------
		sub		value, 1
		bsr		shift, value				; shift = nearest upper power of 2
		mov		value, 1
		add		shift, 1
		shl		value, shiftl				; value = 1 << shift + 1
		mov		temp, min
		cmp		value, temp					; if (value < min)
		cmovb	value, temp					;     value = min
}

;******************************************************************************;
;       Lock operations                                                        ;
;******************************************************************************;

;==============================================================================;
;       Write lock                                                             ;
;==============================================================================;
macro	WRITE_LOCK
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to ADT object
wait	equ		sil							; wait flag
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		eax							; old futex state
lval	equ		edx							; futex locked state
count	equ		ecx							; spinlock iterations
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		count, SPINS				; count = SPINS
;---[Spinlock loop]------------------------
.sloop:	pause								; wait a little bit
		sub		count, 1					; if (--count == 0)
		jz		.wait						;     then go to wait branch
		mov		result, [this + FUTEX]		; result = this.futex
		test	result, result
		jnz		.sloop						; do while (this.futex != 0)
		xor		result, result				; result = 0
		mov		lval, FLOCK					; lval = FLOCK
lock	cmpxchg	[this + FUTEX], lval
		jnz		.sloop						; do while (this.futex != 0)
;---[End of spinlock loop]-----------------
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
.wait:	test	wait, wait					; if (wait != 0)
		jnz		.futex						;     then wait on futex
		xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
.futex:
lock	add		dword [this + FUTEX + 4], 1	; waiters++
;---[Futex lock up loop]-------------------
.floop:	mov		sc_prm4, 0
		movsxd	sc_prm3, result
		mov		sc_prm2, 0x80
		lea		sc_prm1, [this + FUTEX]
		mov		sc_num, SYSCALL_FUTEX
		syscall								; syscall futex (&this.futex, FUTEX_WAIT_PRIVATE, result, NULL)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		result, [this + FUTEX]		; result = this.futex
		test	result, result
		jnz		.floop						; do while (this.futex != 0)
		xor		result, result				; result = 0
		mov		lval, FLOCK					; lval = FLOCK
lock	cmpxchg	[this + FUTEX], lval
		jnz		.floop						; do while (this.futex != 0)
;---[End of futex lock up loop]------------
lock	sub		dword [this + FUTEX + 4], 1	; waiters--
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
}

;==============================================================================;
;       Read lock                                                              ;
;==============================================================================;
macro	READ_LOCK
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to ADT object
wait	equ		sil							; wait flag
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		eax							; old futex state
count	equ		ecx							; spinlock iterations
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		result, 1					; result = 1
lock	xadd	[this + FUTEX], result		; this.futex++
		jns		.exit						; if futex is free, then go to exit
		mov		count, SPINS				; count = SPINS
;---[Spinlock loop]------------------------
.sloop:	pause								; wait a little bit
		sub		count, 1					; if (--count == 0)
		jz		.wait						;     then go to wait branch
		mov		result, [this + FUTEX]		; result = this.futex
		cmp		result, FLOCK
		jae		.sloop						; do while (this.futex >= FLOCK)
;---[End of spinlock loop]-----------------
.exit:	mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
.wait:	test	wait, wait					; if (wait != 0)
		jnz		.futex						;     then wait on futex
lock	sub		dword [this + FUTEX], 1		; this.futex--
		xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
.futex:
lock	add		dword [this + FUTEX + 4], 1	; waiters++
;---[Futex lock up loop]-------------------
.floop:	mov		sc_prm4, 0
		movsxd	sc_prm3, result
		mov		sc_prm2, 0x80
		lea		sc_prm1, [this + FUTEX]
		mov		sc_num, SYSCALL_FUTEX
		syscall								; syscall futex (&this.futex, FUTEX_WAIT_PRIVATE, result, NULL)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		result, [this + FUTEX]		; result = this.futex
		cmp		result, FLOCK
		jae		.floop						; do while (this.futex >= FLOCK)
;---[End of futex lock up loop]------------
lock	sub		dword [this + FUTEX + 4], 1	; waiters--
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
}

;******************************************************************************;
;       Release operations                                                     ;
;******************************************************************************;

;==============================================================================;
;       Release write lock                                                     ;
;==============================================================================;
macro	WRITE_RELEASE
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to ADT object
;------------------------------------------
		test	dword [this + FUTEX], FLOCK	; if ((this.futex & FLOCK) == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
lock	and		dword [this + FUTEX], not FLOCK
		cmp		dword [this + FUTEX + 4], 0	; if (waiters == 0)
		jz		.exit						;     then go to exit
;---[Wake all waiters]---------------------
		mov		sc_prm3, 0x7FFFFFFF
		mov		sc_prm2, 0x81
		lea		sc_prm1, [this + FUTEX]
		mov		sc_num, SYSCALL_FUTEX
		syscall								; syscall futex (&this.futex, FUTEX_WAKE_PRIVATE, ALL)
.exit:	ret
}

;==============================================================================;
;       Release read lock                                                      ;
;==============================================================================;
macro	READ_RELEASE
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to ADT object
;------------------------------------------
		test	dword [this + FUTEX], FLOCK	; if ((this.futex & FLOCK) != 0)
		jnz		.exit						;     then go to exit
;---[Normal execution branch]--------------
lock	sub		dword [this + FUTEX], 1		; this.futex--
		jnz		.exit						; if futex is still in read lock, then go to exit
		cmp		dword [this + FUTEX + 4], 0	; if (waiters == 0)
		jz		.exit						;     then go to exit
;---[Wake all waiters]---------------------
		mov		sc_prm3, 1
		mov		sc_prm2, 0x81
		lea		sc_prm1, [this + FUTEX]
		mov		sc_num, SYSCALL_FUTEX
		syscall								; syscall futex (&this.futex, FUTEX_WAKE_PRIVATE, 1)
.exit:	ret
}

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
