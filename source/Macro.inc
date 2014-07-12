;                                                                      Macro.inc
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                      MACROS ARE USED BY LINASM MODULES                      #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2014, Jack Black #
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

; Half
PHALF_FLT32		= 0x3F000000				; +0.5
MHALF_FLT32		= 0xBF000000				; -0.5

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

; Half
PHALF_FLT64		= 0x3FE0000000000000		; +0.5
MHALF_FLT64		= 0xBFE0000000000000		; -0.5

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
if shift <> 0
		shl		value, shift				; value <<= shift
end if
}

;******************************************************************************;
;       Shift value right                                                      ;
;******************************************************************************;
macro	shftr	value, shift
{
if shift <> 0
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

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
