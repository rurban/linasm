;                                                                        FPU.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                            FPU CONTROL FUNCTIONS                            #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       FPU control functions                                                  ;
;******************************************************************************;

; Init FPU
public	Init						as	'FPU_Init'
public	Init						as	'_ZN3FPU4InitEv'

; Set FPU mode
public	SetMode						as	'FPU_SetMode'
public	SetMode						as	'_ZN3FPU7SetModeEi'

; Get FPU mode
public	GetMode						as	'FPU_GetMode'
public	GetMode						as	'_ZN3FPU7GetModeEv'

;******************************************************************************;
;       FPU status functions                                                   ;
;******************************************************************************;

; Clear FPU exceptions
public	ClearExceptions				as	'FPU_ClearExceptions'
public	ClearExceptions				as	'_ZN3FPU15ClearExceptionsEv'

; Get FPU status
public	GetStatus					as	'FPU_GetStatus'
public	GetStatus					as	'_ZN3FPU9GetStatusEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       FPU control functions                                                  ;
;******************************************************************************;

;==============================================================================;
;       Init FPU                                                               ;
;==============================================================================;
Init:
;------------------------------------------
		finit								; set default FPU mode
		ret

;==============================================================================;
;       Set FPU mode                                                           ;
;==============================================================================;
SetMode:
;---[Parameters]---------------------------
cword	equ		edi							; FPU control word
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
fpucr	equ		stack - 1 * 8				; stack position to store FPUCR register
;------------------------------------------
		and		cword, 0xFFFF				; clear unrequired bits into control word
		mov		[fpucr], cword				; set new value of FPUCR register
		fldcw	[fpucr]						; load FPUCR register from the stack
		ret

;==============================================================================;
;       Get FPU mode                                                           ;
;==============================================================================;
GetMode:
;---[Internal variables]-------------------
cword	equ		eax							; FPU control word
stack	equ		rsp							; stack pointer
fpucr	equ		stack - 1 * 8				; stack position to store FPUCR register
;------------------------------------------
		fstcw	[fpucr]						; store FPUCR register into the stack
		mov		cword, [fpucr]				; get value of FPUCR register
		and		cword, 0xFFFF				; clear unrequired bits into control word
		ret

;******************************************************************************;
;       FPU status functions                                                   ;
;******************************************************************************;

;==============================================================================;
;       Clear FPU exceptions                                                   ;
;==============================================================================;
ClearExceptions:
;------------------------------------------
		fclex								; clear all FPU exceptions
		ret

;==============================================================================;
;       Get FPU status                                                         ;
;==============================================================================;
GetStatus:
;---[Internal variables]-------------------
sword	equ		eax							; FPU status word
stack	equ		rsp							; stack pointer
fpusr	equ		stack - 1 * 8				; stack position to store FPUSR register
;------------------------------------------
		fstsw	[fpusr]						; store FPUSR register into the stack
		mov		sword, [fpusr]				; get value of FPUSR register
		and		sword, 0xFFFF				; clear unrequired bits into status word
		ret									; return FPU status word

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
