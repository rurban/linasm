;                                                                      Macro.inc
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                      MACROS ARE USED BY LINASM MODULES                      #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2013, Jack Black #
;###############################################################################

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
CLINE		= 64							; Size of cache line
PSTEP		= 512							; Prefetch step
VSCALE		= 4								; Vector scale factor
PSCALE		= 12							; Memory page scale factor
VSIZE		= 1 shl VSCALE					; Size of vector register (bytes)
PSIZE		= 1 shl PSCALE					; Size of memory page (bytes)
VMASK		= VSIZE - 1						; Vector boundary aligning mask
PMASK		= PSIZE - 1						; Memory page boundary aligning mask
VBITS		= 0xFFFF						; Vector bit mask
NOT_FOUND	= -1							; Pattern is not found

;==============================================================================;
;       flt32_t consts                                                         ;
;==============================================================================;

; Data and sign mask
DMASK_FLT32	= 0x7FFFFFFF					; data mask and NaN value
SMASK_FLT32	= 0x80000000					; sign mask

; Infinity
PINF_FLT32	= 0x7F800000					; +inf
MINF_FLT32	= 0xFF800000					; -inf

; One
PONE_FLT32	= 0x3F800000					; +1.0
MONE_FLT32	= 0xBF800000					; -1.0

; Half
PHALF_FLT32	= 0x3F000000					; +0.5
MHALF_FLT32	= 0xBF000000					; -0.5

;==============================================================================;
;       flt64_t consts                                                         ;
;==============================================================================;

; Data and sign mask
DMASK_FLT64	= 0x7FFFFFFFFFFFFFFF			; data mask and NaN value
SMASK_FLT64	= 0x8000000000000000			; sign mask

; Infinity
PINF_FLT64	= 0x7FF0000000000000			; +inf
MINF_FLT64	= 0xFFF0000000000000			; -inf

; One
PONE_FLT64	= 0x3FF0000000000000			; +1.0
MONE_FLT64	= 0xBFF0000000000000			; -1.0

; Half
PHALF_FLT64	= 0x3FE0000000000000			; +0.5
MHALF_FLT64	= 0xBFE0000000000000			; -0.5

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
		movq	reg, treg
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
		haddp#x	reg, reg
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

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
