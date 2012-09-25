;                                                                     Window.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#               WINDOW FUNCTIONS FOR DIGITAL SIGNAL PROCESSING                #
;#                                                                             #
;# License: LGPLv3                               Copyleft (Ɔ) 2012, Jack Black #
;###############################################################################
format	ELF64

;###############################################################################
;#      Import section                                                         #
;###############################################################################

; Sine
extrn	'sinf'				as	Sin_flt32
extrn	'sin'				as	Sin_flt64

; Cosine
extrn	'cosf'				as	Cos_flt32
extrn	'cos'				as	Cos_flt64

; Array reflection
extrn	'_Reflect_flt32'	as	Reflect_flt32
extrn	'_Reflect_flt64'	as	Reflect_flt64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Applying window Functions to filters                                   ;
;******************************************************************************;

; Sine window
public	Sine_flt32					as	'_Sine_flt32'
public	Sine_flt64					as	'_Sine_flt64'

; Hamming window
public	Hamming_flt32				as	'_Hamming_flt32'
public	Hamming_flt64				as	'_Hamming_flt64'

; Blackman window
public	Blackman_flt32				as	'_Blackman_flt32'
public	Blackman_flt64				as	'_Blackman_flt64'

; Blackman–Nuttall window
public	Blackman_Nuttall_flt32		as	'_Blackman_Nuttall_flt32'
public	Blackman_Nuttall_flt64		as	'_Blackman_Nuttall_flt64'

;******************************************************************************;
;       Computing windows Functions                                            ;
;******************************************************************************;

; Sine window
public	SineWin_flt32				as	'Window_Sine_flt32'
public	SineWin_flt64				as	'Window_Sine_flt64'
public	SineWin_flt32				as	'_ZN6Window4SineEPfm'
public	SineWin_flt64				as	'_ZN6Window4SineEPdm'

; Hamming window
public	HammingWin_flt32			as	'Window_Hamming_flt32'
public	HammingWin_flt64			as	'Window_Hamming_flt64'
public	HammingWin_flt32			as	'_ZN6Window7HammingEPfm'
public	HammingWin_flt64			as	'_ZN6Window7HammingEPdm'

; Blackman window
public	BlackmanWin_flt32			as	'Window_Blackman_flt32'
public	BlackmanWin_flt64			as	'Window_Blackman_flt64'
public	BlackmanWin_flt32			as	'_ZN6Window8BlackmanEPfm'
public	BlackmanWin_flt64			as	'_ZN6Window8BlackmanEPdm'

; Blackman–Nuttall window
public	Blackman_NuttallWin_flt32	as	'Window_BlackmanNuttall_flt32'
public	Blackman_NuttallWin_flt64	as	'Window_BlackmanNuttall_flt64'
public	Blackman_NuttallWin_flt32	as	'_ZN6Window15BlackmanNuttallEPfm'
public	Blackman_NuttallWin_flt64	as	'_ZN6Window15BlackmanNuttallEPdm'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;

; flt32_t
PI_FLT32		= 0x40490FDB				; Pi
PI_TWO_FLT32	= 0x40C90FDB				; 2 * Pi
PI_HALF_FLT32	= 0x3FC90FDB				; Pi / 2

; flt64_t
PI_FLT64		= 0x400921FB54442D18		; Pi
PI_TWO_FLT64	= 0x401921FB54442D18		; 2 * Pi
PI_HALF_FLT64	= 0x3FF921FB54442D18		; Pi / 2

;******************************************************************************;
;       Init XMM register with const                                           ;
;******************************************************************************;
macro	initreg	reg, treg, value, x
{
		mov		treg, value
if x eq s
		movd	reg, treg
else
		movq	reg, treg
end if
}

;******************************************************************************;
;       Window Functions                                                       ;
;******************************************************************************;

;==============================================================================;
;       Sine window                                                            ;
;==============================================================================;
macro	SINE	x
{
											; No additional code
}

;==============================================================================;
;       Hamming window                                                         ;
;==============================================================================;
macro	HAMMING	x
{
		muls#x	value, [win + 1 * bytes]	; value *= k1
		adds#x	value, [win + 0 * bytes]	; value += k0
}

;==============================================================================;
;       Blackman window                                                        ;
;==============================================================================;
macro	BLACKMAN	x
{
		movs#x	temp, value					; temp = value
		muls#x	value, [win + 2 * bytes]	; value *= k2
		adds#x	value, [win + 1 * bytes]	; value += k1
		muls#x	value, temp					; value *= temp
		adds#x	value, [win + 0 * bytes]	; value += k0
}

;==============================================================================;
;       Blackman–Nuttall window                                                ;
;==============================================================================;
macro	BLACKMAN_NUTTALL	x
{
		movs#x	temp, value					; temp = value
		muls#x	value, [win + 3 * bytes]	; value *= k3
		adds#x	value, [win + 2 * bytes]	; value += k2
		muls#x	value, temp					; value *= temp
		adds#x	value, [win + 1 * bytes]	; value += k1
		muls#x	value, temp					; value *= temp
		adds#x	value, [win + 0 * bytes]	; value += k0
}

;******************************************************************************;
;       Applying window Functions to filters                                   ;
;******************************************************************************;
macro	APPLY_WINDOW	treg, window, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
value	equ		xmm0						; argument value
step	equ		xmm1						; argument step
temp	equ		xmm2						; temporary register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
s_step	equ		stack + 3 * 8				; stack position of "step" variable
space	= 5 * 8								; stack size required by the procedure
if x eq s
if window eq SINE
Func	= Sin_flt32							; Sine Function
angle	= PI_HALF_FLT32						; Pi / 2
else if window eq HAMMING
Func	= Cos_flt32							; Cosine Function
angle	= PI_FLT32							; Pi
win		= hamm_win_flt32					; Hamming window coefficients
else if window eq BLACKMAN
Func	= Cos_flt32							; Cosine Function
angle	= PI_FLT32							; Pi
win		= black_win_flt32					; Blackman window coefficients
else if window eq BLACKMAN_NUTTALL
Func	= Cos_flt32							; Cosine Function
angle	= PI_FLT32							; Pi
win		= black_nutt_win_flt32				; Blackman–Nuttall window coefficients
end if
bytes	= 4									; array element size (bytes)
else
if window eq SINE
Func	= Sin_flt64							; Sine Function
angle	= PI_HALF_FLT64						; Pi / 2
else if window eq HAMMING
Func	= Cos_flt64							; Cosine Function
angle	= PI_FLT64							; Pi
win		= hamm_win_flt64					; Hamming window coefficients
else if window eq BLACKMAN
Func	= Cos_flt64							; Cosine Function
angle	= PI_FLT64							; Pi
win		= black_win_flt64					; Blackman window coefficients
else if window eq BLACKMAN_NUTTALL
Func	= Cos_flt64							; Cosine Function
angle	= PI_FLT64							; Pi
win		= black_nutt_win_flt64				; Blackman–Nuttall window coefficients
end if
bytes	= 8									; array element size (bytes)
end if
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		add		size, 1						; size++
		initreg	step, treg, angle, x		; step = angle
	cvtsi2ss	value, size
		divs#x	step, value					; step = angle / size
		xorp#x	value, value				; value = 0
		movs#x	[s_step], step				; save "step" variable into the stack
		movs#x	[s_value], value			; save "value" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Window computing loop]----------------
.loop:	movs#x	value, [s_value]			; get "value" variable from the stack
		adds#x	value, [s_step]				; value += step
		movs#x	[s_value], value			; save "value" variable into the stack
		call	Func						; call Func (value)
		window	x
		mov		array, [s_array]			; get "array" variable from the stack
		muls#x	value, [array]
		movs#x	[array], value				; array[0] *= value
		add		array, bytes				; array++
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of loop]--------------------------
		add		stack, space				; restoring back the stack pointer
		ret
}

;==============================================================================;
;       High-resolution windows (low-dynamic-range)                            ;
;==============================================================================;

; Sine window
Sine_flt32:				APPLY_WINDOW	eax, SINE, s
Sine_flt64:				APPLY_WINDOW	rax, SINE, d

; Hamming window
Hamming_flt32:			APPLY_WINDOW	eax, HAMMING, s
Hamming_flt64:			APPLY_WINDOW	rax, HAMMING, d

; Blackman window
Blackman_flt32:			APPLY_WINDOW	eax, BLACKMAN, s
Blackman_flt64:			APPLY_WINDOW	rax, BLACKMAN, d

;==============================================================================;
;       Low-resolution windows (high-dynamic-range)                            ;
;==============================================================================;

; Blackman–Nuttall window
Blackman_Nuttall_flt32:	APPLY_WINDOW	eax, BLACKMAN_NUTTALL, s
Blackman_Nuttall_flt64:	APPLY_WINDOW	rax, BLACKMAN_NUTTALL, d

;******************************************************************************;
;       Computing windows Functions                                            ;
;******************************************************************************;
macro	COMPUTE_WINDOW	treg, window, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
value	equ		xmm0						; argument value
step	equ		xmm1						; argument step
temp	equ		xmm2						; temporary register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_ptr	equ		stack + 2 * 8				; stack position of "ptr" variable
s_i		equ		stack + 3 * 8				; stack position of "i" variable
s_value	equ		stack + 4 * 8				; stack position of "value" variable
s_step	equ		stack + 5 * 8				; stack position of "step" variable
space	= 7 * 8								; stack size required by the procedure
if x eq s
if window eq SINE
Func	= Sin_flt32							; Sine Function
angle	= PI_FLT32							; Pi
else if window eq HAMMING
Func	= Cos_flt32							; Cosine Function
angle	= PI_TWO_FLT32						; 2 * Pi
win		= hamm_win_flt32					; Hamming window coefficients
else if window eq BLACKMAN
Func	= Cos_flt32							; Cosine Function
angle	= PI_TWO_FLT32						; 2 * Pi
win		= black_win_flt32					; Blackman window coefficients
else if window eq BLACKMAN_NUTTALL
Func	= Cos_flt32							; Cosine Function
angle	= PI_TWO_FLT32						; 2 * Pi
win		= black_nutt_win_flt32				; Blackman–Nuttall window coefficients
end if
reflect	= Reflect_flt32						; Array reflection Function
bytes	= 4									; array element size (bytes)
else
if window eq SINE
Func	= Sin_flt64							; Sine Function
angle	= PI_FLT64							; Pi
else if window eq HAMMING
Func	= Cos_flt64							; Cosine Function
angle	= PI_TWO_FLT64						; 2 * Pi
win		= hamm_win_flt64					; Hamming window coefficients
else if window eq BLACKMAN
Func	= Cos_flt64							; Cosine Function
angle	= PI_TWO_FLT64						; 2 * Pi
win		= black_win_flt64					; Blackman window coefficients
else if window eq BLACKMAN_NUTTALL
Func	= Cos_flt64							; Cosine Function
angle	= PI_TWO_FLT64						; 2 * Pi
win		= black_nutt_win_flt64				; Blackman–Nuttall window coefficients
end if
reflect	= Reflect_flt64						; Array reflection Function
bytes	= 8									; array element size (bytes)
end if
;------------------------------------------
		test	size, size
		jz		.exit
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		add		size, 1						; size++
		initreg	step, treg, angle, x		; step = angle
	cvtsi2ss	value, size
		divs#x	step, value					; step = angle / size
		shr		size, 1						; size /= 2
		xorp#x	value, value				; value = 0
		movs#x	[s_step], step				; save "step" variable into the stack
		movs#x	[s_value], value			; save "value" variable into the stack
		mov		[s_ptr], array				; save "ptr" variable into the stack
		mov		[s_i], size					; save "i" variable into the stack
;---[Window computing loop]----------------
.loop:	movs#x	value, [s_value]			; get "value" variable from the stack
		adds#x	value, [s_step]				; value += step
		movs#x	[s_value], value			; save "value" variable into the stack
		call	Func						; call Func (value)
		window	x
		mov		array, [s_ptr]				; get "ptr" variable from the stack
		movs#x	[array], value				; array[0] = value
		add		array, bytes				; ptr++
		mov		[s_ptr], array				; save "ptr" variable into the stack
		sub		qword [s_i], 1				; i--
		jnz		.loop						; do while (size != 0)
;---[End of loop]--------------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	reflect						; call reflect (array, size)
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}

;==============================================================================;
;       High-resolution windows (low-dynamic-range)                            ;
;==============================================================================;

; Sine window
SineWin_flt32:				COMPUTE_WINDOW	eax, SINE, s
SineWin_flt64:				COMPUTE_WINDOW	rax, SINE, d

; Hamming window
HammingWin_flt32:			COMPUTE_WINDOW	eax, HAMMING, s
HammingWin_flt64:			COMPUTE_WINDOW	rax, HAMMING, d

; Blackman window
BlackmanWin_flt32:			COMPUTE_WINDOW	eax, BLACKMAN, s
BlackmanWin_flt64:			COMPUTE_WINDOW	rax, BLACKMAN, d

;==============================================================================;
;       Low-resolution windows (high-dynamic-range)                            ;
;==============================================================================;

; Blackman–Nuttall window
Blackman_NuttallWin_flt32:	COMPUTE_WINDOW	eax, BLACKMAN_NUTTALL, s
Blackman_NuttallWin_flt64:	COMPUTE_WINDOW	rax, BLACKMAN_NUTTALL, d

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

;******************************************************************************;
;       Hamming window coefficients                                            ;
;******************************************************************************;

; flt32_t
align 16
hamm_win_flt32			dd	0x3F0A3D71			; 0.54
						dd	0xBEEB851F			; -0.46

; flt64_t
align 16
hamm_win_flt64			dq	0x3FE147AE147AE148	; 0.54
						dq	0xBFDD70A3D70A3D71	; -0.46

;******************************************************************************;
;       Blackman window coefficients                                           ;
;******************************************************************************;

; flt32_t
align 16
black_win_flt32			dd	0x3EAE147B			; 0.34
						dd	0xBF000000			; -0.5
						dd	0x3E23D70A			; 0.16

; flt64_t
align 16
black_win_flt64			dq	0x3FD5C28F5C28F5C3	; 0.34
						dq	0xBFE0000000000000	; -0.5
						dq	0x3FC47AE147AE147B	; 0.16

;******************************************************************************;
;       Blackman–Nuttall window coefficients                                   ;
;******************************************************************************;

; flt32_t
align 16
black_nutt_win_flt32	dd	0x3E686E13			; 0.2269824
						dd	0xBEEA1D39			; -0.4572542
						dd	0x3E8BE0BD			; 0.2731990
						dd	0xBD2E5802			; -0.0425644

; flt64_t
align 16
black_nutt_win_flt64	dq	0x3FCD0DC260624067	; 0.2269824
						dq	0xBFDD43A71EBD5A69	; -0.4572542
						dq	0x3FD17C17A89331A1	; 0.2731990
						dq	0xBFA5CB0043F29E18	; -0.0425644

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
