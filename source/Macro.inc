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
KSCALE		= 4								; Key scale factor
KSIZE		= 1 shl KSCALE					; Size of key (bytes)

;==============================================================================;
;       flt32_t consts                                                         ;
;==============================================================================;

; Masks
DMASK_FLT32		= 0x7FFFFFFF				; Data mask
SMASK_FLT32		= 0x80000000				; Sign mask
EMASK_FLT32		= 0x7F800000				; Exponent mask
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

; Zero
PZERO_FLT32		= 0x00000000				; +0.0
MZERO_FLT32		= 0x80000000				; -0.0

; Half
PHALF_FLT32		= 0x3F000000				; +0.5
MHALF_FLT32		= 0xBF000000				; -0.5

; Sqrt
SQRT2_FLT32		= 0x3FB504F3				; Sqrt (2)
SQRT12_FLT32	= 0x3F3504F3				; 1 / Sqrt (2)

; Pi
PPI_FLT32		= 0x40490FDB				; +Pi
MPI_FLT32		= 0xC0490FDB				; -Pi
PI_TWO_FLT32	= 0x40C90FDB				; 2 * Pi
PI_HALF_FLT32	= 0x3FC90FDB				; Pi / 2
PI_FOUR_FLT32	= 0x3F490FDB				; Pi / 4

; Misc
NORM_FLT32		= 0x00800000				; Min normal value
MBITS_FLT32		= 23						; Count of bits into mantissa
EBIAS_FLT32		= 127						; Exponent bias

;==============================================================================;
;       flt64_t consts                                                         ;
;==============================================================================;

; Masks
DMASK_FLT64		= 0x7FFFFFFFFFFFFFFF		; Data mask
SMASK_FLT64		= 0x8000000000000000		; Sign mask
EMASK_FLT64		= 0x7FF0000000000000		; Exponent mask
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

; Zero
PZERO_FLT64		= 0x0000000000000000		; +0.0
MZERO_FLT64		= 0x8000000000000000		; -0.0

; Half
PHALF_FLT64		= 0x3FE0000000000000		; +0.5
MHALF_FLT64		= 0xBFE0000000000000		; -0.5

;Sqrt
SQRT2_FLT64		= 0x3FF6A09E667F3BCD		; Sqrt (2)
SQRT12_FLT64	= 0x3FE6A09E667F3BCD		; 1 / Sqrt (2)

; Pi
PPI_FLT64		= 0x400921FB54442D18		; +Pi
MPI_FLT64		= 0xC00921FB54442D18		; -Pi
PI_TWO_FLT64	= 0x401921FB54442D18		; 2 * Pi
PI_HALF_FLT64	= 0x3FF921FB54442D18		; Pi / 2
PI_FOUR_FLT64	= 0x3FE921FB54442D18		; Pi / 4

; Misc
NORM_FLT64		= 0x0010000000000000		; Min normal value
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
;       Compute object capacity (bytes)                                        ;
;******************************************************************************;
macro	Capacity	value, temp, min
{
;---[Internal variables]-------------------
shift	equ		rcx							; position of the most significant bit
shiftl	equ		cl							; low part of shift register
;------------------------------------------
		sub		value, 1
		bsr		shift, value
		mov		value, 1
		add		shift, 1					; shift = nearest upper power of 2
		shl		value, shiftl				; value = 1 << shift + 1
		mov		temp, min
		cmp		value, temp					; if (value < min)
		cmovb	value, temp					;     value = min
}

;******************************************************************************;
;       Fast computation of polynomial value of degree 3                       ;
;******************************************************************************;
macro	SINGLE4	array, value, x
{
if x eq s
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
;---[Stage 1]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0xE			; extract high result from temp1
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp2				; temp1 = temp2 + temp1 * value
else if x eq d
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 1 * VSIZE]	; temp1 = array[1] + array[0] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp2				; temp1 = temp2 + temp1 * value
end if
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	PAIR4	array, value, x
{
if x eq s
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp2, [array + 1 * VSIZE]	; temp2 = array[1]
;---[Stage 1]------------------------------
		movap#x	temp3, temp1
		shufp#x	temp3, temp3, 0xE			; extract high result from temp1
		mulp#x	temp1, value
		addp#x	temp1, temp3				; temp1 = temp1 + temp3 * value
		movap#x	temp4, temp2
		shufp#x	temp4, temp4, 0xE			; extract high result from temp2
		mulp#x	temp2, value
		addp#x	temp2, temp4				; temp2 = temp2 + temp4 * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		movap#x	temp3, temp1
		shufp#x	temp3, temp3, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp3				; temp1 = temp3 + temp1 * value
		movap#x	temp4, temp2
		shufp#x	temp4, temp4, 0x1			; extract high result from temp2
		muls#x	temp2, value
		adds#x	temp2, temp4				; temp2 = temp4 + temp2 * value
else if x eq d
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp2, [array + 2 * VSIZE]	; temp2 = array[2]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 1 * VSIZE]	; temp1 = array[1] + array[0] * value
		mulp#x	temp2, value
		addp#x	temp2, [array + 3 * VSIZE]	; temp2 = array[3] + array[2] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		movap#x	temp3, temp1
		shufp#x	temp3, temp3, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp3				; temp1 = temp3 + temp1 * value
		movap#x	temp4, temp2
		shufp#x	temp4, temp4, 0x1			; extract high result from temp2
		muls#x	temp2, value
		adds#x	temp2, temp4				; temp2 = temp4 + temp2 * value
end if
}

;******************************************************************************;
;       Fast computation of polynomial value of degree 7                       ;
;******************************************************************************;
macro	SINGLE8	array, value, x
{
if x eq s
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 1 * VSIZE]	; temp1 = array[1] + array[0] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0xE			; extract high result from temp1
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 3]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp2				; temp1 = temp2 + temp1 * value
else if x eq d
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp2, [array + 1 * VSIZE]	; temp2 = array[1]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 2 * VSIZE]	; temp1 = array[2] + array[0] * value
		mulp#x	temp2, value
		addp#x	temp2, [array + 3 * VSIZE]	; temp2 = array[3] + array[1] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 3]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp2				; temp1 = temp2 + temp1 * value
end if
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	PAIR8	array, value, x
{
if x eq s
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp2, [array + 2 * VSIZE]	; temp2 = array[2]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 1 * VSIZE]	; temp1 = array[1] + array[0] * value
		mulp#x	temp2, value
		addp#x	temp2, [array + 3 * VSIZE]	; temp2 = array[3] + array[2] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		movap#x	temp3, temp1
		shufp#x	temp3, temp3, 0xE			; extract high result from temp1
		mulp#x	temp1, value
		addp#x	temp1, temp3				; temp1 = temp1 + temp3 * value
		movap#x	temp4, temp2
		shufp#x	temp4, temp4, 0xE			; extract high result from temp2
		mulp#x	temp2, value
		addp#x	temp2, temp4				; temp2 = temp2 + temp4 * value
		mulp#x	value, value				; value *= value
;---[Stage 3]------------------------------
		movap#x	temp3, temp1
		shufp#x	temp3, temp3, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp3				; temp1 = temp3 + temp1 * value
		movap#x	temp4, temp2
		shufp#x	temp4, temp4, 0x1			; extract high result from temp2
		muls#x	temp2, value
		adds#x	temp2, temp4				; temp2 = temp4 + temp2 * value
else if x eq d
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp3, [array + 1 * VSIZE]	; temp3 = array[1]
		movap#x	temp2, [array + 4 * VSIZE]	; temp2 = array[4]
		movap#x	temp4, [array + 5 * VSIZE]	; temp4 = array[5]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 2 * VSIZE]	; temp1 = array[2] + array[0] * value
		mulp#x	temp3, value
		addp#x	temp3, [array + 3 * VSIZE]	; temp3 = array[3] + array[1] * value
		mulp#x	temp2, value
		addp#x	temp2, [array + 6 * VSIZE]	; temp2 = array[6] + array[4] * value
		mulp#x	temp4, value
		addp#x	temp4, [array + 7 * VSIZE]	; temp4 = array[7] + array[5] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp3				; temp1 = temp1 + temp3 * value
		mulp#x	temp2, value
		addp#x	temp2, temp4				; temp2 = temp2 + temp4 * value
		mulp#x	value, value				; value *= value
;---[Stage 3]------------------------------
		movap#x	temp3, temp1
		shufp#x	temp3, temp3, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp3				; temp1 = temp3 + temp1 * value
		movap#x	temp4, temp2
		shufp#x	temp4, temp4, 0x1			; extract high result from temp2
		muls#x	temp2, value
		adds#x	temp2, temp4				; temp2 = temp4 + temp2 * value
end if
}

;******************************************************************************;
;       Fast computation of polynomial value of degree 15                      ;
;******************************************************************************;
macro	SINGLE16	array, value, x
{
if x eq s
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp2, [array + 1 * VSIZE]	; temp2 = array[1]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 2 * VSIZE]	; temp1 = array[2] + array[0] * value
		mulp#x	temp2, value
		addp#x	temp2, [array + 3 * VSIZE]	; temp2 = array[3] + array[1] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 3]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0xE			; extract high result from temp1
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 4]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp2				; temp1 = temp2 + temp1 * value
else if x eq d
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp2, [array + 1 * VSIZE]	; temp2 = array[1]
		movap#x	temp3, [array + 2 * VSIZE]	; temp3 = array[2]
		movap#x	temp4, [array + 3 * VSIZE]	; temp4 = array[3]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 4 * VSIZE]	; temp1 = array[4] + array[0] * value
		mulp#x	temp2, value
		addp#x	temp2, [array + 5 * VSIZE]	; temp2 = array[5] + array[1] * value
		mulp#x	temp3, value
		addp#x	temp3, [array + 6 * VSIZE]	; temp3 = array[6] + array[2] * value
		mulp#x	temp4, value
		addp#x	temp4, [array + 7 * VSIZE]	; temp4 = array[7] + array[3] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp3				; temp1 = temp1 + temp3 * value
		mulp#x	temp2, value
		addp#x	temp2, temp4				; temp2 = temp2 + temp4 * value
		mulp#x	value, value				; value *= value
;---[Stage 3]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 4]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp2				; temp1 = temp2 + temp1 * value
end if
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	PAIR16	array, value, x
{
if x eq s
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp3, [array + 1 * VSIZE]	; temp3 = array[1]
		movap#x	temp2, [array + 4 * VSIZE]	; temp2 = array[4]
		movap#x	temp4, [array + 5 * VSIZE]	; temp4 = array[5]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 2 * VSIZE]	; temp1 = array[2] + array[0] * value
		mulp#x	temp3, value
		addp#x	temp3, [array + 3 * VSIZE]	; temp3 = array[3] + array[1] * value
		mulp#x	temp2, value
		addp#x	temp2, [array + 6 * VSIZE]	; temp2 = array[6] + array[4] * value
		mulp#x	temp4, value
		addp#x	temp4, [array + 7 * VSIZE]	; temp4 = array[7] + array[5] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp3				; temp1 = temp1 + temp3 * value
		mulp#x	temp2, value
		addp#x	temp2, temp4				; temp2 = temp2 + temp4 * value
		mulp#x	value, value				; value *= value
;---[Stage 3]------------------------------
		movap#x	temp3, temp1
		shufp#x	temp3, temp3, 0xE			; extract high result from temp1
		mulp#x	temp1, value
		addp#x	temp1, temp3				; temp1 = temp1 + temp3 * value
		movap#x	temp4, temp2
		shufp#x	temp4, temp4, 0xE			; extract high result from temp2
		mulp#x	temp2, value
		addp#x	temp2, temp4				; temp2 = temp2 + temp4 * value
		mulp#x	value, value				; value *= value
;---[Stage 4]------------------------------
		movap#x	temp3, temp1
		shufp#x	temp3, temp3, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp3				; temp1 = temp3 + temp1 * value
		movap#x	temp4, temp2
		shufp#x	temp4, temp4, 0x1			; extract high result from temp2
		muls#x	temp2, value
		adds#x	temp2, temp4				; temp2 = temp4 + temp2 * value
else if x eq d
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp3, [array + 1 * VSIZE]	; temp3 = array[1]
		movap#x	temp5, [array + 2 * VSIZE]	; temp5 = array[2]
		movap#x	temp7, [array + 3 * VSIZE]	; temp7 = array[3]
		movap#x	temp2, [array + 8 * VSIZE]	; temp2 = array[8]
		movap#x	temp4, [array + 9 * VSIZE]	; temp4 = array[9]
		movap#x	temp6, [array + 10 * VSIZE]	; temp6 = array[10]
		movap#x	temp8, [array + 11 * VSIZE]	; temp8 = array[11]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 4 * VSIZE]	; temp1 = array[4] + array[0] * value
		mulp#x	temp3, value
		addp#x	temp3, [array + 5 * VSIZE]	; temp3 = array[5] + array[1] * value
		mulp#x	temp5, value
		addp#x	temp5, [array + 6 * VSIZE]	; temp5 = array[6] + array[2] * value
		mulp#x	temp7, value
		addp#x	temp7, [array + 7 * VSIZE]	; temp7 = array[7] + array[3] * value
		mulp#x	temp2, value
		addp#x	temp2, [array + 12 * VSIZE]	; temp2 = array[12] + array[8] * value
		mulp#x	temp4, value
		addp#x	temp4, [array + 13 * VSIZE]	; temp4 = array[13] + array[9] * value
		mulp#x	temp6, value
		addp#x	temp6, [array + 14 * VSIZE]	; temp6 = array[14] + array[10] * value
		mulp#x	temp8, value
		addp#x	temp8, [array + 15 * VSIZE]	; temp8 = array[15] + array[11] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp5				; temp1 = temp1 + temp5 * value
		mulp#x	temp3, value
		addp#x	temp3, temp7				; temp3 = temp3 + temp7 * value
		mulp#x	temp2, value
		addp#x	temp2, temp6				; temp2 = temp2 + temp6 * value
		mulp#x	temp4, value
		addp#x	temp4, temp8				; temp4 = temp4 + temp8 * value
		mulp#x	value, value				; value *= value
;---[Stage 3]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp3				; temp1 = temp1 + temp3 * value
		mulp#x	temp2, value
		addp#x	temp2, temp4				; temp2 = temp2 + temp4 * value
		mulp#x	value, value				; value *= value
;---[Stage 4]------------------------------
		movap#x	temp3, temp1
		shufp#x	temp3, temp3, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp3				; temp1 = temp3 + temp1 * value
		movap#x	temp4, temp2
		shufp#x	temp4, temp4, 0x1			; extract high result from temp2
		muls#x	temp2, value
		adds#x	temp2, temp4				; temp2 = temp4 + temp2 * value
end if
}

;******************************************************************************;
;       Fast computation of polynomial value of degree 31                      ;
;******************************************************************************;
macro	SINGLE32	array, value, x
{
if x eq s
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp2, [array + 1 * VSIZE]	; temp2 = array[1]
		movap#x	temp3, [array + 2 * VSIZE]	; temp3 = array[2]
		movap#x	temp4, [array + 3 * VSIZE]	; temp4 = array[3]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 4 * VSIZE]	; temp1 = array[4] + array[0] * value
		mulp#x	temp2, value
		addp#x	temp2, [array + 5 * VSIZE]	; temp2 = array[5] + array[1] * value
		mulp#x	temp3, value
		addp#x	temp3, [array + 6 * VSIZE]	; temp3 = array[6] + array[2] * value
		mulp#x	temp4, value
		addp#x	temp4, [array + 7 * VSIZE]	; temp4 = array[7] + array[3] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp3				; temp1 = temp1 + temp3 * value
		mulp#x	temp2, value
		addp#x	temp2, temp4				; temp2 = temp2 + temp4 * value
		mulp#x	value, value				; value *= value
;---[Stage 3]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 4]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0xE			; extract high result from temp1
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 5]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp2				; temp1 = temp2 + temp1 * value
else if x eq d
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp2, [array + 1 * VSIZE]	; temp2 = array[1]
		movap#x	temp3, [array + 2 * VSIZE]	; temp3 = array[2]
		movap#x	temp4, [array + 3 * VSIZE]	; temp4 = array[3]
		movap#x	temp5, [array + 4 * VSIZE]	; temp5 = array[4]
		movap#x	temp6, [array + 5 * VSIZE]	; temp6 = array[5]
		movap#x	temp7, [array + 6 * VSIZE]	; temp7 = array[6]
		movap#x	temp8, [array + 7 * VSIZE]	; temp8 = array[7]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 8 * VSIZE]	; temp1 = array[8] + array[0] * value
		mulp#x	temp2, value
		addp#x	temp2, [array + 9 * VSIZE]	; temp2 = array[9] + array[1] * value
		mulp#x	temp3, value
		addp#x	temp3, [array + 10 * VSIZE]	; temp3 = array[10] + array[2] * value
		mulp#x	temp4, value
		addp#x	temp4, [array + 11 * VSIZE]	; temp4 = array[11] + array[3] * value
		mulp#x	temp5, value
		addp#x	temp5, [array + 12 * VSIZE]	; temp5 = array[12] + array[4] * value
		mulp#x	temp6, value
		addp#x	temp6, [array + 13 * VSIZE]	; temp6 = array[13] + array[5] * value
		mulp#x	temp7, value
		addp#x	temp7, [array + 14 * VSIZE]	; temp7 = array[14] + array[6] * value
		mulp#x	temp8, value
		addp#x	temp8, [array + 15 * VSIZE]	; temp8 = array[15] + array[7] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp5				; temp1 = temp1 + temp5 * value
		mulp#x	temp2, value
		addp#x	temp2, temp6				; temp2 = temp2 + temp6 * value
		mulp#x	temp3, value
		addp#x	temp3, temp7				; temp3 = temp3 + temp7 * value
		mulp#x	temp4, value
		addp#x	temp4, temp8				; temp4 = temp4 + temp8 * value
		mulp#x	value, value				; value *= value
;---[Stage 3]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp3				; temp1 = temp1 + temp3 * value
		mulp#x	temp2, value
		addp#x	temp2, temp4				; temp2 = temp2 + temp4 * value
		mulp#x	value, value				; value *= value
;---[Stage 4]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 5]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp2				; temp1 = temp2 + temp1 * value
end if
}

;******************************************************************************;
;       Fast computation of polynomial value of degree 63                      ;
;******************************************************************************;
macro	SINGLE64	array, value, x
{
if x eq s
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp2, [array + 1 * VSIZE]	; temp2 = array[1]
		movap#x	temp3, [array + 2 * VSIZE]	; temp3 = array[2]
		movap#x	temp4, [array + 3 * VSIZE]	; temp4 = array[3]
		movap#x	temp5, [array + 4 * VSIZE]	; temp5 = array[4]
		movap#x	temp6, [array + 5 * VSIZE]	; temp6 = array[5]
		movap#x	temp7, [array + 6 * VSIZE]	; temp7 = array[6]
		movap#x	temp8, [array + 7 * VSIZE]	; temp8 = array[7]
;---[Stage 1]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [array + 8 * VSIZE]	; temp1 = array[8] + array[0] * value
		mulp#x	temp2, value
		addp#x	temp2, [array + 9 * VSIZE]	; temp2 = array[9] + array[1] * value
		mulp#x	temp3, value
		addp#x	temp3, [array + 10 * VSIZE]	; temp3 = array[10] + array[2] * value
		mulp#x	temp4, value
		addp#x	temp4, [array + 11 * VSIZE]	; temp4 = array[11] + array[3] * value
		mulp#x	temp5, value
		addp#x	temp5, [array + 12 * VSIZE]	; temp5 = array[12] + array[4] * value
		mulp#x	temp6, value
		addp#x	temp6, [array + 13 * VSIZE]	; temp6 = array[13] + array[5] * value
		mulp#x	temp7, value
		addp#x	temp7, [array + 14 * VSIZE]	; temp7 = array[14] + array[6] * value
		mulp#x	temp8, value
		addp#x	temp8, [array + 15 * VSIZE]	; temp8 = array[15] + array[7] * value
		mulp#x	value, value				; value *= value
;---[Stage 2]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp5				; temp1 = temp1 + temp5 * value
		mulp#x	temp2, value
		addp#x	temp2, temp6				; temp2 = temp2 + temp6 * value
		mulp#x	temp3, value
		addp#x	temp3, temp7				; temp3 = temp3 + temp7 * value
		mulp#x	temp4, value
		addp#x	temp4, temp8				; temp4 = temp4 + temp8 * value
		mulp#x	value, value				; value *= value
;---[Stage 3]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp3				; temp1 = temp1 + temp3 * value
		mulp#x	temp2, value
		addp#x	temp2, temp4				; temp2 = temp2 + temp4 * value
		mulp#x	value, value				; value *= value
;---[Stage 4]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 5]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0xE			; extract high result from temp1
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 6]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp2				; temp1 = temp2 + temp1 * value
else if x eq d
stack	equ		rsp							; stack pointer
		sub		stack, 264					; reserving stack size for local vars
		shufp#x	value, value, 0x0			; duplicate value through the entire register
;---[Stage 1]------------------------------
		movap#x	temp1, [array + 0 * VSIZE]	; temp1 = array[0]
		movap#x	temp2, [array + 1 * VSIZE]	; temp2 = array[1]
		movap#x	temp3, [array + 2 * VSIZE]	; temp3 = array[2]
		movap#x	temp4, [array + 3 * VSIZE]	; temp4 = array[3]
		movap#x	temp5, [array + 4 * VSIZE]	; temp5 = array[4]
		movap#x	temp6, [array + 5 * VSIZE]	; temp6 = array[5]
		movap#x	temp7, [array + 6 * VSIZE]	; temp7 = array[6]
		movap#x	temp8, [array + 7 * VSIZE]	; temp8 = array[7]
		mulp#x	temp1, value
		addp#x	temp1, [array + 16 * VSIZE]	; temp1 = array[16] + array[0] * value
		movap#x	[stack + 0 * VSIZE], temp1	; stack[0] = temp1
		mulp#x	temp2, value
		addp#x	temp2, [array + 17 * VSIZE]	; temp2 = array[17] + array[1] * value
		movap#x	[stack + 1 * VSIZE], temp2	; stack[1] = temp2
		mulp#x	temp3, value
		addp#x	temp3, [array + 18 * VSIZE]	; temp3 = array[18] + array[2] * value
		movap#x	[stack + 2 * VSIZE], temp3	; stack[2] = temp3
		mulp#x	temp4, value
		addp#x	temp4, [array + 19 * VSIZE]	; temp4 = array[19] + array[3] * value
		movap#x	[stack + 3 * VSIZE], temp4	; stack[3] = temp4
		mulp#x	temp5, value
		addp#x	temp5, [array + 20 * VSIZE]	; temp5 = array[20] + array[4] * value
		movap#x	[stack + 4 * VSIZE], temp5	; stack[4] = temp5
		mulp#x	temp6, value
		addp#x	temp6, [array + 21 * VSIZE]	; temp6 = array[21] + array[5] * value
		movap#x	[stack + 5 * VSIZE], temp6	; stack[5] = temp6
		mulp#x	temp7, value
		addp#x	temp7, [array + 22 * VSIZE]	; temp7 = array[22] + array[6] * value
		movap#x	[stack + 6 * VSIZE], temp7	; stack[6] = temp7
		mulp#x	temp8, value
		addp#x	temp8, [array + 23 * VSIZE]	; temp8 = array[23] + array[7] * value
		movap#x	[stack + 7 * VSIZE], temp8	; stack[7] = temp8
		movap#x	temp1, [array + 8 * VSIZE]	; temp1 = array[8]
		movap#x	temp2, [array + 9 * VSIZE]	; temp2 = array[9]
		movap#x	temp3, [array + 10 * VSIZE]	; temp3 = array[10]
		movap#x	temp4, [array + 11 * VSIZE]	; temp4 = array[11]
		movap#x	temp5, [array + 12 * VSIZE]	; temp5 = array[12]
		movap#x	temp6, [array + 13 * VSIZE]	; temp6 = array[13]
		movap#x	temp7, [array + 14 * VSIZE]	; temp7 = array[14]
		movap#x	temp8, [array + 15 * VSIZE]	; temp8 = array[15]
		mulp#x	temp1, value
		addp#x	temp1, [array + 24 * VSIZE]	; temp1 = array[24] + array[8] * value
		movap#x	[stack + 8 * VSIZE], temp1	; stack[8] = temp1
		mulp#x	temp2, value
		addp#x	temp2, [array + 25 * VSIZE]	; temp2 = array[25] + array[9] * value
		movap#x	[stack + 9 * VSIZE], temp2	; stack[9] = temp2
		mulp#x	temp3, value
		addp#x	temp3, [array + 26 * VSIZE]	; temp3 = array[26] + array[10] * value
		movap#x	[stack + 10 * VSIZE], temp3	; stack[10] = temp3
		mulp#x	temp4, value
		addp#x	temp4, [array + 27 * VSIZE]	; temp4 = array[27] + array[11] * value
		movap#x	[stack + 11 * VSIZE], temp4	; stack[11] = temp4
		mulp#x	temp5, value
		addp#x	temp5, [array + 28 * VSIZE]	; temp5 = array[28] + array[12] * value
		movap#x	[stack + 12 * VSIZE], temp5	; stack[12] = temp5
		mulp#x	temp6, value
		addp#x	temp6, [array + 29 * VSIZE]	; temp6 = array[29] + array[13] * value
		movap#x	[stack + 13 * VSIZE], temp6	; stack[13] = temp6
		mulp#x	temp7, value
		addp#x	temp7, [array + 30 * VSIZE]	; temp7 = array[30] + array[14] * value
		movap#x	[stack + 14 * VSIZE], temp7	; stack[14] = temp7
		mulp#x	temp8, value
		addp#x	temp8, [array + 31 * VSIZE]	; temp8 = array[31] + array[15] * value
		movap#x	[stack + 15 * VSIZE], temp8	; stack[15] = temp8
		mulp#x	value, value				; value *= value
		movap#x	temp1, [stack + 0 * VSIZE]	; temp1 = stack[0]
		movap#x	temp2, [stack + 1 * VSIZE]	; temp2 = stack[1]
		movap#x	temp3, [stack + 2 * VSIZE]	; temp3 = stack[2]
		movap#x	temp4, [stack + 3 * VSIZE]	; temp4 = stack[3]
		movap#x	temp5, [stack + 4 * VSIZE]	; temp5 = stack[4]
		movap#x	temp6, [stack + 5 * VSIZE]	; temp6 = stack[5]
		movap#x	temp7, [stack + 6 * VSIZE]	; temp7 = stack[6]
		movap#x	temp8, [stack + 7 * VSIZE]	; temp8 = stack[7]
;---[Stage 2]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, [stack + 8 * VSIZE]	; temp1 = stack[8] + stack[0] * value
		mulp#x	temp2, value
		addp#x	temp2, [stack + 9 * VSIZE]	; temp2 = stack[9] + stack[1] * value
		mulp#x	temp3, value
		addp#x	temp3, [stack + 10 * VSIZE]	; temp3 = stack[10] + stack[2] * value
		mulp#x	temp4, value
		addp#x	temp4, [stack + 11 * VSIZE]	; temp4 = stack[11] + stack[3] * value
		mulp#x	temp5, value
		addp#x	temp5, [stack + 12 * VSIZE]	; temp5 = stack[12] + stack[4] * value
		mulp#x	temp6, value
		addp#x	temp6, [stack + 13 * VSIZE]	; temp6 = stack[13] + stack[5] * value
		mulp#x	temp7, value
		addp#x	temp7, [stack + 14 * VSIZE]	; temp7 = stack[14] + stack[6] * value
		mulp#x	temp8, value
		addp#x	temp8, [stack + 15 * VSIZE]	; temp8 = stack[15] + stack[7] * value
		mulp#x	value, value				; value *= value
		add		stack, 264					; restoring back the stack pointer
;---[Stage 3]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp5				; temp1 = temp1 + temp5 * value
		mulp#x	temp2, value
		addp#x	temp2, temp6				; temp2 = temp2 + temp6 * value
		mulp#x	temp3, value
		addp#x	temp3, temp7				; temp3 = temp3 + temp7 * value
		mulp#x	temp4, value
		addp#x	temp4, temp8				; temp4 = temp4 + temp8 * value
		mulp#x	value, value				; value *= value
;---[Stage 4]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp3				; temp1 = temp1 + temp3 * value
		mulp#x	temp2, value
		addp#x	temp2, temp4				; temp2 = temp2 + temp4 * value
		mulp#x	value, value				; value *= value
;---[Stage 5]------------------------------
		mulp#x	temp1, value
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulp#x	value, value				; value *= value
;---[Stage 6]------------------------------
		movap#x	temp2, temp1
		shufp#x	temp2, temp2, 0x1			; extract high result from temp1
		muls#x	temp1, value
		adds#x	temp1, temp2				; temp1 = temp2 + temp1 * value
end if
}

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
