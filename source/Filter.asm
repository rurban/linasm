;                                                                     Filter.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                   FINITE IMPULSE RESPONSE DIGITAL FILTERS                   #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2014, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################

;******************************************************************************;
;       Trigonometric functions                                                ;
;******************************************************************************;

; Sine
extrn	'Math_Sin_flt32'			as	Sin_flt32
extrn	'Math_Sin_flt64'			as	Sin_flt64

; Cosine
extrn	'Math_Cos_flt32'			as	Cos_flt32
extrn	'Math_Cos_flt64'			as	Cos_flt64

; Sine and Cosine
extrn	'Math_SinCos_flt32'			as	SinCos_flt32
extrn	'Math_SinCos_flt64'			as	SinCos_flt64

;******************************************************************************;
;       Window functions                                                       ;
;******************************************************************************;

; Sine window
extrn	'Sine_flt32'				as	Sine_flt32
extrn	'Sine_flt64'				as	Sine_flt64

; Hamming window
extrn	'Hamming_flt32'				as	Hamming_flt32
extrn	'Hamming_flt64'				as	Hamming_flt64

; Blackman window
extrn	'Blackman_flt32'			as	Blackman_flt32
extrn	'Blackman_flt64'			as	Blackman_flt64

; Blackman-Nuttall window
extrn	'Blackman_Nuttall_flt32'	as	Blackman_Nuttall_flt32
extrn	'Blackman_Nuttall_flt64'	as	Blackman_Nuttall_flt64

;******************************************************************************;
;       Array functions                                                        ;
;******************************************************************************;

; Vector subtraction
extrn	'Array_SubVector_flt32'		as	Sub_flt32
extrn	'Array_SubVector_flt64'		as	Sub_flt64

; Scalar multiplication
extrn	'Array_MulVector_flt32'		as	Mul_flt32
extrn	'Array_MulVector_flt64'		as	Mul_flt64

; Sum of elements
extrn	'Array_Sum_flt32'			as	Sum_flt32
extrn	'Array_Sum_flt64'			as	Sum_flt64

; Sum of multiplied elements
extrn	'Array_SumMul_flt32'		as	SumMul_flt32
extrn	'Array_SumMul_flt64'		as	SumMul_flt64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

; Array reflection
public	PosReflect_flt32		as	'Reflect_flt32'
public	PosReflect_flt64		as	'Reflect_flt64'

; Band-pass filter
public	BandPass_flt32			as	'Filter_BandPass_flt32'
public	BandPass_flt64			as	'Filter_BandPass_flt64'
public	BandPass_flt32			as	'_ZN6Filter8BandPassEPfmff8window_t'
public	BandPass_flt64			as	'_ZN6Filter8BandPassEPdmdd8window_t'

; Band-stop filter
public	BandStop_flt32			as	'Filter_BandStop_flt32'
public	BandStop_flt64			as	'Filter_BandStop_flt64'
public	BandStop_flt32			as	'_ZN6Filter8BandStopEPfmff8window_t'
public	BandStop_flt64			as	'_ZN6Filter8BandStopEPdmdd8window_t'

; Hilbert filter
public	Hilbert_flt32			as	'Filter_Hilbert_flt32'
public	Hilbert_flt64			as	'Filter_Hilbert_flt64'
public	Hilbert_flt32			as	'_ZN6Filter7HilbertEPfmff8window_t'
public	Hilbert_flt64			as	'_ZN6Filter7HilbertEPdmdd8window_t'

; Differential filter
public	Diff_flt32				as	'Filter_Diff_flt32'
public	Diff_flt64				as	'Filter_Diff_flt64'
public	Diff_flt32				as	'_ZN6Filter4DiffEPfmff8window_t'
public	Diff_flt64				as	'_ZN6Filter4DiffEPdmdd8window_t'

; Filter response
public	Response_flt32			as	'Filter_Response_flt32'
public	Response_flt64			as	'Filter_Response_flt64'
public	Response_flt32			as	'_ZN6Filter8ResponseEPfPKfmS2_m'
public	Response_flt64			as	'_ZN6Filter8ResponseEPdPKdmS2_m'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
MAX_WIN	= 4									; Max window index

;******************************************************************************;
;       Load zero value to selected memory variable                            ;
;******************************************************************************;
macro	ldzero	addr, x
{
if x eq s
		mov		dword [addr], 0				; addr[0] = 0
else if x eq d
		mov		qword [addr], 0				; addr[0] = 0
end if
}

;******************************************************************************;
;       Load a value to selected memory variable                               ;
;******************************************************************************;
macro	ldvalue	addr, treg, value, x
{
		mov		treg, value
if x eq s
		mov		dword [addr], treg			; addr[0] = value
else if x eq d
		mov		qword [addr], treg			; addr[0] = value
end if
}

;******************************************************************************;
;       Reflection of left half of array                                       ;
;******************************************************************************;
macro	REFLECT		sign, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to last element of array
treg	equ		rdx							; temporary register
temp	equ		xmm0						; temporary register
mask	equ		xmm1						; sign mask for inverting sign
if x eq s
smask	= 0x80000000						; sign mask value
bytes	= 4									; array element size (bytes)
else if x eq d
smask	= 0x8000000000000000				; sign mask value
bytes	= 8									; array element size (bytes)
end if
;------------------------------------------
		test	size, size					; if (size == 0),
		jz		.exit						;     then go to exit
		lea		ptr, [array + size * bytes]	; ptr = array + size
if sign										; # if sign variant, then
		initreg	mask, treg, smask			;     mask = smask
end if										; # end
;---[Reflection loop]----------------------
.loop:	sub		ptr, bytes					; ptr--
		movs#x	temp, [array]				; temp = array[0]
if sign										; # if sign variant, then
		xorp#x	temp, mask					;     temp = - temp
end if										; # end
		movs#x	[ptr], temp					; ptr[0] = temp
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of loop]--------------------------
.exit:	ret
}

; Positive reflection
PosReflect_flt32:	REFLECT		0, s
PosReflect_flt64:	REFLECT		0, d

; Negative reflection
NegReflect_flt32:	REFLECT		1, s
NegReflect_flt64:	REFLECT		1, d

;******************************************************************************;
;       Sinc filter core                                                       ;
;******************************************************************************;
macro	SINC	treg, x
{
;---[Parameters]---------------------------
filter	equ		rdi							; pointer to filter impulse array
size	equ		rsi							; array size (count of elements)
freq	equ		xmm0						; filter cutoff frequency
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
value	equ		xmm0						; argument value
stack	equ		rsp							; stack pointer
s_filt	equ		stack + 0 * 8				; stack position of "filter" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_freq	equ		stack + 2 * 8				; stack position of "freq" variable
s_value	equ		stack + 3 * 8				; stack position of "value" variable
s_pi	equ		stack + 4 * 8				; stack position of "pi" variable
if x eq s
Sin		= Sin_flt32							; sine function
pival	= PPI_FLT32							; +Pi
bytes	= 4									; array element size (bytes)
else if x eq d
Sin		= Sin_flt64							; sine function
pival	= PPI_FLT64							; +Pi
bytes	= 8									; array element size (bytes)
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		lea		filter, [filter+size*bytes]	; filter += size
		adds#x	freq, freq					; freq *= 2
		movs#x	[filter], freq				; filter[0] = freq
		test	size, size
		jz		.exit
		ldzero	s_value, x					; value = 0
		ldvalue	s_pi, treg, pival, x		; pi = Pi
		movs#x	[s_freq], freq				; save "freq" variable into the stack
		mov		[s_filt], filter			; save "filter" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Window computing loop]----------------
.loop:	movs#x	value, [s_value]			; get "value" variable from the stack
		adds#x	value, [s_pi]					; value += Pi
		movs#x	[s_value], value			; save "value" variable into the stack
		muls#x	value, [s_freq]				; value *= freq
		mov		fptr, Sin
		call	fptr						; call Sin (value * freq)
		mov		filter, [s_filt]			; get "filter" variable from the stack
		sub		filter, bytes				; filter--
		divs#x	value, [s_value]			; value = sin (value * freq) / value
		movs#x	[filter], value				; filter[0] = value
		sub		qword [s_size], 1			; size--
		mov		[s_filt], filter			; save "filter" variable into the stack
		jnz		.loop						; do while (size != 0)
;---[End of loop]--------------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
SincCore_flt32:	SINC	eax, s
SincCore_flt64:	SINC	rax, d

;******************************************************************************;
;       Hilbert filter core                                                    ;
;******************************************************************************;
macro	HILBERT	treg, x
{
;---[Parameters]---------------------------
filter	equ		rdi							; pointer to filter impulse array
size	equ		rsi							; array size (count of elements)
lfreq	equ		xmm0						; filter low cutoff frequency
hfreq	equ		xmm1						; filter high cutoff frequency
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
value	equ		xmm0						; argument value
stack	equ		rsp							; stack pointer
s_filt	equ		stack + 0 * 8				; stack position of "filter" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_lfreq	equ		stack + 2 * 8				; stack position of "lfreq" variable
s_hfreq	equ		stack + 3 * 8				; stack position of "hfreq" variable
s_value	equ		stack + 4 * 8				; stack position of "value" variable
s_temp	equ		stack + 5 * 8				; stack position of "temp" variable
s_pi	equ		stack + 6 * 8				; stack position of "pi" variable
if x eq s
Cos		= Cos_flt32							; cosine function
pival	= PPI_FLT32							; +Pi
bytes	= 4									; array element size (bytes)
else if x eq d
Cos		= Cos_flt32							; cosine function
pival	= PPI_FLT64							; +Pi
bytes	= 8									; array element size (bytes)
end if
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		lea		filter, [filter+size*bytes]	; filter += size
		adds#x	lfreq, lfreq				; lfreq *= 2
		adds#x	hfreq, hfreq				; hfreq *= 2
		ldzero	filter, x					; filter[0] = 0
		test	size, size
		jz		.exit
		ldzero	s_value, x					; value = 0
		ldvalue	s_pi, treg, pival, x		; pi = Pi
		movs#x	[s_lfreq], lfreq			; save "lfreq" variable into the stack
		movs#x	[s_hfreq], hfreq			; save "lfreq" variable into the stack
		mov		[s_filt], filter			; save "filter" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Window computing loop]----------------
.loop:	movs#x	value, [s_value]			; get "value" variable from the stack
		adds#x	value, [s_pi]				; value += Pi
		movs#x	[s_value], value			; save "value" variable into the stack
		muls#x	value, [s_hfreq]			; value *= hfreq
		mov		fptr, Cos
		call	fptr						; call Cos (value * hfreq)
		movs#x	[s_temp], value				; save "temp" variable into the stack
		movs#x	value, [s_value]			; get "value" variable from the stack
		muls#x	value, [s_lfreq]			; value *= lfreq
		mov		fptr, Cos
		call	fptr						; call Cos (value * lfreq)
		mov		filter, [s_filt]			; get "filter" variable from the stack
		subs#x	value, [s_temp]				; value -= temp
		sub		filter, bytes				; filter--
		divs#x	value, [s_value]			; value = (cos (value * lfreq) - cos (value * hfreq)) / value
		movs#x	[filter], value				; filter[0] = value
		sub		qword [s_size], 1			; size--
		mov		[s_filt], filter			; save "filter" variable into the stack
		jnz		.loop						; do while (size != 0)
;---[End of loop]--------------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
HilbertCore_flt32:	HILBERT	eax, s
HilbertCore_flt64:	HILBERT	rax, d

;******************************************************************************;
;       Differential  filter core                                              ;
;******************************************************************************;
macro	DIFF	treg, x
{
;---[Parameters]---------------------------
filter	equ		rdi							; pointer to filter impulse array
size	equ		rsi							; array size (count of elements)
lfreq	equ		xmm0						; filter low cutoff frequency
hfreq	equ		xmm1						; filter high cutoff frequency
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
value	equ		xmm0						; argument value
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
if x eq s
SinCos	= SinCos_flt32						; cosine function
pival	= PPI_FLT32							; +Pi
oneval	= PONE_FLT32						; +1.0
bytes	= 4									; array element size (bytes)
else if x eq d
SinCos	= SinCos_flt32						; cosine function
pival	= PPI_FLT64							; +Pi
oneval	= PONE_FLT64						; +1.0
bytes	= 8									; array element size (bytes)
end if
s_filt	equ		stack + 0 * 8				; stack position of "filter" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_hfreq	equ		stack + 2 * 8				; stack position of "hfreq" variable
s_lfreq	equ		s_hfreq + bytes				; stack position of "lfreq" variable
s_hcos	equ		stack + 4 * 8				; stack position of cos (value * hfreq)
s_lcos	equ		s_hcos + bytes				; stack position of cos (value * lfreq)
s_hsin	equ		stack + 6 * 8				; stack position of sin (value * hfreq)
s_lsin	equ		s_hsin + bytes				; stack position of sin (value * lfreq)
s_arg	equ		stack + 8 * 8				; stack position of "arg" variable
s_value	equ		stack + 10 * 8				; stack position of "value" variable
s_temp	equ		stack + 11 * 8				; stack position of "temp" variable
s_pi	equ		stack + 12 * 8				; stack position of "pi" variable
s_one	equ		stack + 13 * 8				; stack position of "one" variable
space	= 15 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		lea		filter, [filter+size*bytes]	; filter += size
		adds#x	lfreq, lfreq				; lfreq *= 2
		adds#x	hfreq, hfreq				; hfreq *= 2
		ldzero	filter, x					; filter[0] = 0
		test	size, size
		jz		.exit
		ldzero	s_value, x					; value = 0
		ldzero	s_temp, x					; temp = 0
		ldvalue	s_pi, treg, pival, x		; pi = Pi
		ldvalue	s_one, treg, oneval, x		; one = 1.0
		movs#x	[s_lfreq], lfreq			; save "lfreq" variable into the stack
		movs#x	[s_hfreq], hfreq			; save "lfreq" variable into the stack
		mov		[s_filt], filter			; save "filter" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Window computing loop]----------------
.loop:	movs#x	value, [s_value]			; get "value" variable from the stack
		movs#x	temp, [s_temp]				; get "temp" variable from the stack
		adds#x	value, [s_pi]				; value += Pi
		adds#x	temp, [s_one]				; temp += 1.0
		movs#x	[s_value], value			; save "value" variable into the stack
		movs#x	[s_temp], temp				; save "temp" variable into the stack
	unpcklp#x	value, value				; clone value through the entire register
		mulp#x	value, [s_hfreq]			; {value * hfreq, value * lfreq}
		movap#x	[s_arg], value				; arg = {value * hfreq, value * lfreq}
		lea		param1, [s_hsin]
		lea		param2, [s_hcos]
		mov		fptr, SinCos
		call	fptr						; call SinCos (&hsin, &hcos, value * hfreq)
		movs#x	value, [s_arg + bytes]
		lea		param1, [s_lsin]
		lea		param2, [s_lcos]
		mov		fptr, SinCos
		call	fptr						; call SinCos (&lsin, &lcos, value * hfreq)
		movap#x	value, [s_hcos]				; value = {hcos, lcos}
		movs#x	temp, [s_temp]				; get "temp" variable from the stack
		mulp#x	value, [s_arg]				; value *= {value * hfreq, value * lfreq}
		muls#x	temp, [s_value]				; temp *= value
		subp#x	value, [s_hsin]				; value -= {hsin, lsin}
		mov		filter, [s_filt]			; get "filter" variable from the stack
		hsubp#x	value, value				; value = (hcos * value * hfreq - hsin) - (lcos * value * lfreq - lsin)
		sub		filter, bytes				; filter--
		divp#x	value, temp					; value /= temp
		movs#x	[filter], value				; filter[0] = value
		sub		qword [s_size], 1			; size--
		mov		[s_filt], filter			; save "filter" variable into the stack
		jnz		.loop						; do while (size != 0)
;---[End of loop]--------------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
DiffCore_flt32:	DIFF	eax, s
DiffCore_flt64:	DIFF	rax, d

;******************************************************************************;
;       Low-pass filter core                                                   ;
;******************************************************************************;
macro	LOWPASS	x
{
;---[Parameters]---------------------------
filter	equ		rdi							; pointer to filter impulse array
size	equ		rsi							; array size (count of elements)
window	equ		rdx							; window function
freq	equ		xmm0						; filter cutoff frequency
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
fptr	equ		rax							; pointer to call external function
table	equ		r8							; pointer to blending table
value	equ		xmm0						; argument value
one		equ		xmm1						; 1.0
zero	equ		xmm2						; 0.0
temp	equ		xmm3						; temporary register
stack	equ		rsp							; stack pointer
s_filt	equ		stack + 0 * 8				; stack position of "filter" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_win	equ		stack + 2 * 8				; stack position of "window" variable
if x eq s
Sinc	= SincCore_flt32					; sinc filter core
Sum		= Sum_flt32							; sum of elements
Norm	= Mul_flt32							; scalar multiplication of array
win		= win_flt32							; array of window functions
oneval	= PONE_FLT32						; +1.0
bytes	= 4									; array element size (bytes)
else if x eq d
Sinc	= SincCore_flt64					; sinc filter core
Sum		= Sum_flt64							; sum of elements
Norm	= Mul_flt64							; scalar multiplication of array
win		= win_flt64							; array of window functions
oneval	= PONE_FLT64						; +1.0
bytes	= 8									; array element size (bytes)
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Compute Sinc filter core]-------------
		mov		[s_filt], filter			; save "filter" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_win], window				; save "window" variable into the stack
		call	Sinc						; call Sinc (filter, size, freq)
;---[Apply window function]----------------
		mov		window, [s_win]				; get "window" variable from the stack
		test	window, window				; if (window != WIN_NONE)
		jz		@f							; {
		sub		window, 1					;     window--
		mov		filter, [s_filt]
		mov		size, [s_size]				;     call table[window] (filter, size)
		lea		table, [win]
		call	qword [table + window * 8]	; }
;---[Get sum of impulse response]----------
@@:		mov		filter, [s_filt]			; get "filter" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		fptr, Sum
		call	fptr						; call Sum (filter, size)
		mov		filter, [s_filt]			; get "filter" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		adds#x	value, value				; value *= 2
		movs#x	temp, [filter + size*bytes]	; temp = filter [size]
		adds#x	temp, value					; temp = 2 * Sum (filter, size) + filter [size]
;---[Normalize impulse response]-----------
		xorp#x	zero, zero					; zero = 0
		comis#x	temp, zero					; if (temp != 0)
		je		@f							; {
		initreg	one, treg, oneval			;     one = 1.0
		add		size, 1						;     size++
		movap#x	value, one					;     value = one / temp
		divs#x	value, temp					;     call Norm (filter, size, value)
		mov		fptr, Norm					; }
		call	fptr
;------------------------------------------
@@:		add		stack, space				; restoring back the stack pointer
		ret
}
LowPassCore_flt32:	LOWPASS	s
LowPassCore_flt64:	LOWPASS	d

;******************************************************************************;
;       Band-pass/stop filter                                                  ;
;******************************************************************************;
macro	BAND	stop, x
{
;---[Parameters]---------------------------
filter	equ		rdi							; pointer to filter impulse array
size	equ		rsi							; array size (count of elements)
window	equ		rdx							; window function
lfreq	equ		xmm0						; filter low cutoff frequency
hfreq	equ		xmm1						; filter high cutoff frequency
;---[Internal variables]-------------------
status	equ		al							; operation status
fptr	equ		rax							; pointer to call external function
treg	equ		rax							; temporary register
value	equ		xmm0						; argument value
one		equ		xmm1						; 1.0
zero	equ		xmm2						; 0.0
half	equ		xmm3						; 0.5
stack	equ		rsp							; stack pointer
s_filt	equ		stack + 0 * 8				; stack position of "filter" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_freq	equ		stack + 2 * 8				; stack position of "freq" variable
s_win	equ		stack + 3 * 8				; stack position of "window" variable
s_temp	equ		stack + 4 * 8				; stack position of "temp" variable
if x eq s
LowPass	= LowPassCore_flt32					; low-pass filter core
ArrSub	= Sub_flt32							; vector subtraction of arrays
PosRefl	= PosReflect_flt32					; positive reflection function
halfval	= PHALF_FLT32						; +0.5
oneval	= PONE_FLT32						; +1.0
bytes	= 4									; array element size (bytes)
else if x eq d
LowPass	= LowPassCore_flt64					; low-pass filter core
ArrSub	= Sub_flt64							; vector subtraction of arrays
PosRefl	= PosReflect_flt64					; positive reflection function
halfval	= PHALF_FLT64						; +0.5
oneval	= PONE_FLT64						; +1.0
bytes	= 8									; array element size (bytes)
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		xorp#x	zero, zero					; zero = 0
		initreg	half, treg, halfval			; half = 0.5
		comis#x	lfreq, zero					; if (0 <= lfreq
		jb		.error
		comis#x	hfreq, lfreq				;     && lfreq <= hfreq
		jb		.error
		comis#x	hfreq, half					;     && hfreq <= 0.5
		ja		.error
		cmp		window, MAX_WIN				;     && window <= WIN_MAX)
		ja		.error						; {
;---[Compute 1-st low-pass filter core]----
		mov		[s_filt], filter			; save "filter" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_win], window				; save "window" variable into the stack
if stop
		movs#x	[s_freq], hfreq				; save "hfreq" variable into the stack
else
		movs#x	[s_freq], lfreq				; save "lfreq" variable into the stack
		movap#x	value, hfreq				; value = hfreq
end if
		call	LowPass						; call LowPass (filter, size, hfreq, window)
;---[Compute 2-nd low-pass filter core]----
		mov		filter, [s_filt]			; get "filter" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		window, [s_win]				; get "window" variable from the stack
		movs#x	value, [filter + size*bytes]; temp = filter[size]
		movs#x	[s_temp], value				; save "temp" variable into the stack
		lea		filter, [filter + size*bytes]
		movs#x	value, [s_freq]				; get "lfreq" variable from the stack
		call	LowPass						; call LowPass (filter + size, size, lfreq, window)
;---[Substract filters]--------------------
		mov		param1, [s_filt]
		mov		param3, [s_size]
		lea		param2, [param1 + param3 * bytes]
		mov		fptr, ArrSub
		call	fptr						; call ArrSub (filter, filter + size, size)
;---[Reflect filter impulse response]------
		mov		size, [s_size]				; get "size" variable from the stack
		mov		filter, [s_filt]			; get "filter" variable from the stack
		movs#x	value, [s_temp]				; get "temp" variable from the stack
		shl		size, 1						; size *= 2
if stop
		initreg	one, treg, oneval			; one = 1.0
		adds#x	value, one					; temp += 1
end if
		subs#x	value, [filter + size*bytes]; filter[size] = temp - filter[2 * size]
		movs#x	[filter + size * bytes / 2], value
		add		size, 1
		call	PosRefl						; call PosRefl (filter, 2 * size + 1)
;------------------------------------------
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Band-pass filter
BandPass_flt32:	BAND	0, s
BandPass_flt64:	BAND	0, d

; Band-stop filter
BandStop_flt32:	BAND	1, s
BandStop_flt64:	BAND	1, d

;******************************************************************************;
;       Hilbert/Differential filter                                            ;
;******************************************************************************;
macro	FILTER Func, x
{
;---[Parameters]---------------------------
filter	equ		rdi							; pointer to filter impulse array
size	equ		rsi							; array size (count of elements)
window	equ		rdx							; window function
lfreq	equ		xmm0						; filter low cutoff frequency
hfreq	equ		xmm1						; filter high cutoff frequency
;---[Internal variables]-------------------
status	equ		al							; operation status
treg	equ		rax							; temporary register
table	equ		r8							; pointer to blending table
zero	equ		xmm2						; 0.0
half	equ		xmm3						; 0.5
stack	equ		rsp							; stack pointer
s_filt	equ		stack + 0 * 8				; stack position of "filter" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_win	equ		stack + 2 * 8				; stack position of "window" variable
if x eq s
NegRefl	= NegReflect_flt32					; negative reflection function
win		= win_flt32							; array of window functions
halfval	= PHALF_FLT32						; +0.5
bytes	= 4									; array element size (bytes)
else if x eq d
NegRefl	= NegReflect_flt64					; negative reflection function
win		= win_flt64							; array of window functions
halfval	= PHALF_FLT64						; +0.5
bytes	= 8									; array element size (bytes)
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		xorp#x	zero, zero					; zero = 0
		initreg	half, treg, halfval			; half = 0.5
		comis#x	lfreq, zero					; if (0 <= lfreq
		jb		.error
		comis#x	hfreq, lfreq				;     && lfreq <= hfreq
		jb		.error
		comis#x	hfreq, half					;     && hfreq <= 0.5
		ja		.error
		cmp		window, MAX_WIN				;     && window <= WIN_MAX)
		ja		.error						; {
;---[Compute Hilbert filter core]----------
		mov		[s_filt], filter			; save "filter" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_win], window				; save "window" variable into the stack
		call	Func						; call Func (filter, size, lfreq, hfreq)
;---[Apply window function]----------------
		mov		window, [s_win]				; get "window" variable from the stack
		test	window, window				; if (window != WIN_NONE)
		jz		@f							; {
		sub		window, 1					;     window--
		mov		filter, [s_filt]
		mov		size, [s_size]				;     call Win[window] (filter, size)
		lea		table, [win]
		call	qword [table + window * 8]	; }
;---[Reflect filter impulse response]------
@@:		mov		size, [s_size]				; get "size" variable from the stack
		mov		filter, [s_filt]			; get "filter" variable from the stack
		lea		size, [size * 2 + 1]
		call	NegRefl						; call NegRefl (filter, 2 * size + 1)
;------------------------------------------
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Hilbert filter
Hilbert_flt32:	FILTER	HilbertCore_flt32, s
Hilbert_flt64:	FILTER	HilbertCore_flt64, d

; Differential filter
Diff_flt32:		FILTER	DiffCore_flt32, s
Diff_flt64:		FILTER	DiffCore_flt64, d

;******************************************************************************;
;       Filter response                                                        ;
;******************************************************************************;
macro	RESPONSE		x
{
;---[Parameters]---------------------------
resp	equ		rdi							; pointer to filter response array
data	equ		rsi							; pointer to data array
dsize	equ		rdx							; size of data array
filt	equ		rcx							; pointer to filter array
fsize	equ		r8							; size of filter array
;---[Internal variables]-------------------
status	equ		al							; operation status
fptr	equ		rax							; pointer to call external function
value	equ		xmm0						; convolution value
stack	equ		rsp							; stack pointer
s_resp	equ		stack + 0 * 8				; stack position of "resp" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_dsize	equ		stack + 2 * 8				; stack position of "dsize" variable
s_filt	equ		stack + 3 * 8				; stack position of "filt" variable
s_fsize	equ		stack + 4 * 8				; stack position of "fsize" variable
if x eq s
Conv	= SumMul_flt32						; convolution function
bytes	= 4									; array element size (bytes)
else if x eq d
Conv	= SumMul_flt64						; convolution function
bytes	= 8									; array element size (bytes)
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		sub		dsize, fsize				; dsize -= fsize
		jb		.error						; if (dsize < fsize), go to error branch
		add		dsize, 1					; dsize++
		mov		[s_resp], resp				; save "resp" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_dsize], dsize			; save "dsize" variable into the stack
		mov		[s_filt], filt				; save "filt" variable into the stack
		mov		[s_fsize], fsize			; save "fsize" variable into the stack
;---[Convolution loop]---------------------
.loop:	mov		param1, [s_data]
		mov		param2, [s_filt]
		mov		param3, [s_fsize]
		mov		fptr, Conv
		call	fptr
		mov		resp, [s_resp]
		movs#x	[resp], value				; resp[0] = Conv (data, filt, fsize)
		add		qword [s_data], bytes		; data++
		add		qword [s_resp], bytes		; resp++
		sub		qword [s_dsize], 1			; dsize--
		jnz		.loop						; do while (dsize != 0)
;---[End of loop]--------------------------
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}
Response_flt32:	RESPONSE	s
Response_flt64:	RESPONSE	d

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

;******************************************************************************;
;       flt32_t consts                                                         ;
;******************************************************************************;
align 16
win_flt32		dq	Sine_flt32				; Sine window
				dq	Hamming_flt32			; Hamming window
				dq	Blackman_flt32			; Blackman window
				dq	Blackman_Nuttall_flt32	; Blackman-Nuttall window

;******************************************************************************;
;       flt64_t consts                                                         ;
;******************************************************************************;
align 16
win_flt64		dq	Sine_flt64				; Sine window
				dq	Hamming_flt64			; Hamming window
				dq	Blackman_flt64			; Blackman window
				dq	Blackman_Nuttall_flt64	; Blackman-Nuttall window

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
