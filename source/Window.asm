;                                                                     Window.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#               WINDOW FUNCTIONS FOR DIGITAL SIGNAL PROCESSING                #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################

; Sine
extrn	'Math_Sin_flt32'			as	Sin_flt32
extrn	'Math_Sin_flt64'			as	Sin_flt64

; Cosine
extrn	'Math_Cos_flt32'			as	Cos_flt32
extrn	'Math_Cos_flt64'			as	Cos_flt64

; Array reflection
extrn	'Reflect_flt32'				as	Reflect_flt32
extrn	'Reflect_flt64'				as	Reflect_flt64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Applying window functions to filters                                   ;
;******************************************************************************;

; Sine window
public	Sine_flt32					as	'Sine_flt32'
public	Sine_flt64					as	'Sine_flt64'

; Hamming window
public	Hamming_flt32				as	'Hamming_flt32'
public	Hamming_flt64				as	'Hamming_flt64'

; Blackman window
public	Blackman_flt32				as	'Blackman_flt32'
public	Blackman_flt64				as	'Blackman_flt64'

; Blackman-Nuttall window
public	Blackman_Nuttall_flt32		as	'Blackman_Nuttall_flt32'
public	Blackman_Nuttall_flt64		as	'Blackman_Nuttall_flt64'

;******************************************************************************;
;       Computing windows functions                                            ;
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

; Blackman-Nuttall window
public	Blackman_NuttallWin_flt32	as	'Window_BlackmanNuttall_flt32'
public	Blackman_NuttallWin_flt64	as	'Window_BlackmanNuttall_flt64'
public	Blackman_NuttallWin_flt32	as	'_ZN6Window15BlackmanNuttallEPfm'
public	Blackman_NuttallWin_flt64	as	'_ZN6Window15BlackmanNuttallEPdm'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Window functions                                                       ;
;******************************************************************************;

;==============================================================================;
;       Sine window                                                            ;
;==============================================================================;
macro	SINE				array, x
{
											; No additional code
}

;==============================================================================;
;       Hamming window                                                         ;
;==============================================================================;
macro	HAMMING				array, x
{
		muls#x	value, [array + 0 * bytes]	; value *= k0
		adds#x	value, [array + 1 * bytes]	; value += k1
}

;==============================================================================;
;       Blackman window                                                        ;
;==============================================================================;
macro	BLACKMAN			array, x
{
		movap#x	temp, value					; temp = value
		muls#x	value, [array + 0 * bytes]	; value *= k0
		adds#x	value, [array + 1 * bytes]	; value += k1
		muls#x	value, temp					; value *= temp
		adds#x	value, [array + 2 * bytes]	; value += k2
}

;==============================================================================;
;       Blackman-Nuttall window                                                ;
;==============================================================================;
macro	BLACKMAN_NUTTALL	array, x
{
		movap#x	temp, value					; temp = value
		muls#x	value, [array + 0 * bytes]	; value *= k0
		adds#x	value, [array + 1 * bytes]	; value += k1
		muls#x	value, temp					; value *= temp
		adds#x	value, [array + 2 * bytes]	; value += k2
		muls#x	value, temp					; value *= temp
		adds#x	value, [array + 3 * bytes]	; value += k3
}

;******************************************************************************;
;       Applying window functions to filters                                   ;
;******************************************************************************;
macro	APPLY_WINDOW	window, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
table	equ		r8							; pointer to blending table
value	equ		xmm0						; argument value
step	equ		xmm1						; argument step
temp	equ		xmm2						; temporary register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
s_step	equ		stack + 3 * 8				; stack position of "step" variable
if x eq s
if window eq SINE
Func	= Sin_flt32							; sine function
angle	= pi_half_flt32						; +Pi/2
win		= sine_flt32						; Sine window coefficients
else if window eq HAMMING
Func	= Cos_flt32							; cosine function
angle	= ppi_flt32							; +Pi
win		= hamm_flt32						; Hamming window coefficients
else if window eq BLACKMAN
Func	= Cos_flt32							; cosine function
angle	= ppi_flt32							; +Pi
win		= black_flt32						; Blackman window coefficients
else if window eq BLACKMAN_NUTTALL
Func	= Cos_flt32							; cosine function
angle	= ppi_flt32							; +Pi
win		= black_nutt_flt32					; Blackman-Nuttall window coefficients
end if
bytes	= 4									; array element size (bytes)
else if x eq d
if window eq SINE
Func	= Sin_flt64							; sine function
angle	= pi_half_flt64						; +Pi/2
win		= sine_flt64						; Sine window coefficients
else if window eq HAMMING
Func	= Cos_flt64							; cosine function
angle	= ppi_flt64							; +Pi
win		= hamm_flt64						; Hamming window coefficients
else if window eq BLACKMAN
Func	= Cos_flt64							; cosine function
angle	= ppi_flt64							; +Pi
win		= black_flt64						; Blackman window coefficients
else if window eq BLACKMAN_NUTTALL
Func	= Cos_flt64							; cosine function
angle	= ppi_flt64							; +Pi
win		= black_nutt_flt64					; Blackman-Nuttall window coefficients
end if
bytes	= 8									; array element size (bytes)
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		add		size, 1						; size++
		movs#x	step, [angle]				; step = angle
	cvtsi2s#x	value, size
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
		mov		fptr, Func
		call	fptr						; call Func (value)
		mov		array, [s_array]			; get "array" variable from the stack
		lea		table, [win]				; set pointer to coefficients table
		window	table, x
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
;       High-resolution windows (low dynamic range)                            ;
;==============================================================================;

; Sine window
Sine_flt32:				APPLY_WINDOW	SINE, s
Sine_flt64:				APPLY_WINDOW	SINE, d

; Hamming window
Hamming_flt32:			APPLY_WINDOW	HAMMING, s
Hamming_flt64:			APPLY_WINDOW	HAMMING, d

; Blackman window
Blackman_flt32:			APPLY_WINDOW	BLACKMAN, s
Blackman_flt64:			APPLY_WINDOW	BLACKMAN, d

;==============================================================================;
;       Low-resolution windows (high dynamic range)                            ;
;==============================================================================;

; Blackman-Nuttall window
Blackman_Nuttall_flt32:	APPLY_WINDOW	BLACKMAN_NUTTALL, s
Blackman_Nuttall_flt64:	APPLY_WINDOW	BLACKMAN_NUTTALL, d

;******************************************************************************;
;       Computing windows functions                                            ;
;******************************************************************************;
macro	COMPUTE_WINDOW	window, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
table	equ		r8							; pointer to blending table
value	equ		xmm0						; argument value
step	equ		xmm1						; argument step
temp	equ		xmm2						; temporary register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_ptr	equ		stack + 2 * 8				; stack position of "ptr" variable
s_count	equ		stack + 3 * 8				; stack position of "count" variable
s_value	equ		stack + 4 * 8				; stack position of "value" variable
s_step	equ		stack + 5 * 8				; stack position of "step" variable
if x eq s
if window eq SINE
Func	= Sin_flt32							; sine function
angle	= ppi_flt32							; 1 * Pi
win		= sine_flt32						; Sine window coefficients
else if window eq HAMMING
Func	= Cos_flt32							; cosine function
angle	= ppi2_flt32						; 2 * Pi
win		= hamm_flt32						; Hamming window coefficients
else if window eq BLACKMAN
Func	= Cos_flt32							; cosine function
angle	= ppi2_flt32						; 2 * Pi
win		= black_flt32						; Blackman window coefficients
else if window eq BLACKMAN_NUTTALL
Func	= Cos_flt32							; cosine function
angle	= ppi2_flt32						; 2 * Pi
win		= black_nutt_flt32					; Blackman-Nuttall window coefficients
end if
Reflect	= Reflect_flt32						; array reflection function
bytes	= 4									; array element size (bytes)
else if x eq d
if window eq SINE
Func	= Sin_flt64							; sine function
angle	= ppi_flt64							; 1 * Pi
win		= sine_flt64						; Sine window coefficients
else if window eq HAMMING
Func	= Cos_flt64							; cosine function
angle	= ppi2_flt64						; 2 * Pi
win		= hamm_flt64						; Hamming window coefficients
else if window eq BLACKMAN
Func	= Cos_flt64							; cosine function
angle	= ppi2_flt64						; 2 * Pi
win		= black_flt64						; Blackman window coefficients
else if window eq BLACKMAN_NUTTALL
Func	= Cos_flt64							; cosine function
angle	= ppi2_flt64						; 2 * Pi
win		= black_nutt_flt64					; Blackman-Nuttall window coefficients
end if
Reflect	= Reflect_flt64						; array reflection function
bytes	= 8									; array element size (bytes)
end if
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		add		size, 1						; size++
		movs#x	step, [angle]				; step = angle
	cvtsi2s#x	value, size
		divs#x	step, value					; step = angle / size
		shr		size, 1						; size /= 2
		xorp#x	value, value				; value = 0
		movs#x	[s_step], step				; save "step" variable into the stack
		movs#x	[s_value], value			; save "value" variable into the stack
		mov		[s_ptr], array				; save "ptr" variable into the stack
		mov		[s_count], size				; save "count" variable into the stack
;---[Window computing loop]----------------
.loop:	movs#x	value, [s_value]			; get "value" variable from the stack
		adds#x	value, [s_step]				; value += step
		movs#x	[s_value], value			; save "value" variable into the stack
		mov		fptr, Func
		call	fptr						; call Func (value)
		mov		array, [s_ptr]				; get "ptr" variable from the stack
		lea		table, [win]				; set pointer to coefficients table
		window	table, x
		movs#x	[array], value				; array[0] = value
		add		array, bytes				; ptr++
		mov		[s_ptr], array				; save "ptr" variable into the stack
		sub		qword [s_count], 1			; count--
		jnz		.loop						; do while (count != 0)
;---[End of loop]--------------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		fptr, Reflect
		call	fptr						; call Reflect (array, size)
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}

;==============================================================================;
;       High-resolution windows (low dynamic range)                            ;
;==============================================================================;

; Sine window
SineWin_flt32:				COMPUTE_WINDOW	SINE, s
SineWin_flt64:				COMPUTE_WINDOW	SINE, d

; Hamming window
HammingWin_flt32:			COMPUTE_WINDOW	HAMMING, s
HammingWin_flt64:			COMPUTE_WINDOW	HAMMING, d

; Blackman window
BlackmanWin_flt32:			COMPUTE_WINDOW	BLACKMAN, s
BlackmanWin_flt64:			COMPUTE_WINDOW	BLACKMAN, d

;==============================================================================;
;       Low-resolution windows (high dynamic range)                            ;
;==============================================================================;

; Blackman-Nuttall window
Blackman_NuttallWin_flt32:	COMPUTE_WINDOW	BLACKMAN_NUTTALL, s
Blackman_NuttallWin_flt64:	COMPUTE_WINDOW	BLACKMAN_NUTTALL, d

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

;******************************************************************************;
;       flt32_t consts                                                         ;
;******************************************************************************;
ppi_flt32			dd	PPI_FLT32				; 1 * Pi
ppi2_flt32			dd	PI2_FLT32				; 2 * Pi
pi_half_flt32		dd	PI_HALF_FLT32			; Pi / 2

;==============================================================================;
;       Sine window coefficients                                               ;
;==============================================================================;
align 16
sine_flt32			dd	0x3F800000				; +1.0

;==============================================================================;
;       Hamming window coefficients                                            ;
;==============================================================================;
align 16
hamm_flt32			dd	0xBEEB851F				; -0.46
					dd	0x3F0A3D71				; +0.54

;==============================================================================;
;       Blackman window coefficients                                           ;
;==============================================================================;
align 16
black_flt32			dd	0x3E23D70A				; +0.16
					dd	0xBF000000				; -0.5
					dd	0x3EAE147B				; +0.34

;==============================================================================;
;       Blackman-Nuttall window coefficients                                   ;
;==============================================================================;
align 16
black_nutt_flt32	dd	0xBD2E5802				; -0.0425644
					dd	0x3E8BE0BD				; +0.2731990
					dd	0xBEEA1D39				; -0.4572542
					dd	0x3E686E13				; +0.2269824

;******************************************************************************;
;       flt64_t consts                                                         ;
;******************************************************************************;
ppi_flt64			dq	PPI_FLT64				; 1 * Pi
ppi2_flt64			dq	PI2_FLT64				; 2 * Pi
pi_half_flt64		dq	PI_HALF_FLT64			; Pi / 2

;==============================================================================;
;       Sine window coefficients                                               ;
;==============================================================================;
align 16
sine_flt64			dq	0x3FF0000000000000		; +1.0

;==============================================================================;
;       Hamming window coefficients                                            ;
;==============================================================================;
align 16
hamm_flt64			dq	0xBFDD70A3D70A3D71		; -0.46
					dq	0x3FE147AE147AE148		; +0.54

;==============================================================================;
;       Blackman window coefficients                                           ;
;==============================================================================;
align 16
black_flt64			dq	0x3FC47AE147AE147B		; +0.16
					dq	0xBFE0000000000000		; -0.5
					dq	0x3FD5C28F5C28F5C3		; +0.34

;==============================================================================;
;       Blackman-Nuttall window coefficients                                   ;
;==============================================================================;
align 16
black_nutt_flt64	dq	0xBFA5CB0043F29E18		; -0.0425644
					dq	0x3FD17C17A89331A1		; +0.2731990
					dq	0xBFDD43A71EBD5A69		; -0.4572542
					dq	0x3FCD0DC260624067		; +0.2269824

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
