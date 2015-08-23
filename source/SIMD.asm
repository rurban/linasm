;                                                                       SIMD.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                           SIMD CONTROL FUNCTIONS                            #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2015, Jack Black #
;###############################################################################
format	ELF64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       SIMD control functions                                                 ;
;******************************************************************************;

; Init SIMD
public	Init						as	'SIMD_Init'
public	Init						as	'_ZN4SIMD4InitEv'

; Set SIMD mode
public	SetMode						as	'SIMD_SetMode'
public	SetMode						as	'_ZN4SIMD7SetModeEi'

; Get SIMD mode
public	GetMode						as	'SIMD_GetMode'
public	GetMode						as	'_ZN4SIMD7GetModeEv'

;******************************************************************************;
;       SIMD status functions                                                  ;
;******************************************************************************;

; Clear SIMD exceptions
public	ClearExceptions				as	'SIMD_ClearExceptions'
public	ClearExceptions				as	'_ZN4SIMD15ClearExceptionsEv'

; Get SIMD status
public	GetStatus					as	'SIMD_GetStatus'
public	GetStatus					as	'_ZN4SIMD9GetStatusEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
DEFAULT		= 0x1F80						; Default SIMD mode
CMASK		= 0x03FF						; Mask to extract SIMD control word
SMASK		= 0x003F						; Mask to extract SIMD status word

;******************************************************************************;
;       SIMD control functions                                                 ;
;******************************************************************************;

;==============================================================================;
;       Init SIMD                                                              ;
;==============================================================================;
Init:
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
mxcsr	equ		stack - 1 * 8				; stack position to store MXCSR register
;------------------------------------------
		mov		dword [mxcsr], DEFAULT		; set default SIMD mode
		ldmxcsr	[mxcsr]						; load MXCSR register from the stack
		ret

;==============================================================================;
;       Set SIMD mode                                                          ;
;==============================================================================;
SetMode:
;---[Parameters]---------------------------
cword	equ		edi							; SIMD control word
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
mxcsr	equ		stack - 1 * 8				; stack position to store MXCSR register
;------------------------------------------
		stmxcsr	[mxcsr]						; store MXCSR register into the stack
		and		cword, CMASK				; clear unrequired bits into control word
		shl		cword, 6					; cword <<= 6
		and		dword [mxcsr], not (CMASK shl 6)
		or		[mxcsr], cword				; set new value of MXCSR register
		ldmxcsr	[mxcsr]						; load MXCSR register from the stack
		ret

;==============================================================================;
;       Get SIMD mode                                                          ;
;==============================================================================;
GetMode:
;---[Internal variables]-------------------
cword	equ		eax							; SIMD control word
stack	equ		rsp							; stack pointer
mxcsr	equ		stack - 1 * 8				; stack position to store MXCSR register
;------------------------------------------
		stmxcsr	[mxcsr]						; store MXCSR register into the stack
		mov		cword, [mxcsr]				; get value of MXCSR register
		shr		cword, 6					; cword >>= 6
		and		cword, CMASK				; clear unrequired bits into control word
		ret									; return SIMD control word

;******************************************************************************;
;       SIMD status functions                                                  ;
;******************************************************************************;

;==============================================================================;
;       Clear SIMD exceptions                                                  ;
;==============================================================================;
ClearExceptions:
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
mxcsr	equ		stack - 1 * 8				; stack position to store MXCSR register
;------------------------------------------
		stmxcsr	[mxcsr]						; store MXCSR register into the stack
		and		dword [mxcsr], not SMASK	; clear old value of status word
		ldmxcsr	[mxcsr]						; load MXCSR register from the stack
		ret

;==============================================================================;
;       Get SIMD status                                                        ;
;==============================================================================;
GetStatus:
;---[Internal variables]-------------------
sword	equ		eax							; SIMD status word
stack	equ		rsp							; stack pointer
mxcsr	equ		stack - 1 * 8				; stack position to store MXCSR register
;------------------------------------------
		stmxcsr	[mxcsr]						; store MXCSR register into the stack
		mov		sword, [mxcsr]				; get value of MXCSR register
		and		sword, SMASK				; clear unrequired bits into status word
		ret									; return SIMD status word

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
