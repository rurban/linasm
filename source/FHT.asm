;                                                                        FHT.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                         FAST HARTLEY TRANSFORMATION                         #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################

; Sine coefficients
extrn	'sin_flt32'					as	sin_flt32
extrn	'sin_flt64'					as	sin_flt64

; Coine coefficients
extrn	'cos_flt32'					as	cos_flt32
extrn	'cos_flt64'					as	cos_flt64

; Bit reverse function
extrn	'Math_BitReverse_uint64v2'	as	BitReverse

; Sine and cosine function
extrn	'Math_SinCos_flt32'			as	SinCos_flt32
extrn	'Math_SinCos_flt64'			as	SinCos_flt64
extrn	'Math_SinCos_flt32v4'		as	SinCos_flt32v4
extrn	'Math_SinCos_flt64v2'		as	SinCos_flt64v2

; Inverse tangent function
extrn	'Math_ArcTan2_flt32'		as	Atan2_flt32
extrn	'Math_ArcTan2_flt64'		as	Atan2_flt64
extrn	'Math_ArcTan2_flt32v4'		as	Atan2_flt32v4
extrn	'Math_ArcTan2_flt64v2'		as	Atan2_flt64v2

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Sine and cosine table                                                  ;
;******************************************************************************;
public	SinCosTable_flt32			as	'FHT_SinCosTable_flt32'
public	SinCosTable_flt64			as	'FHT_SinCosTable_flt64'
public	SinCosTable_flt32			as	'_ZN3FHT11SinCosTableEPfh'
public	SinCosTable_flt64			as	'_ZN3FHT11SinCosTableEPdh'

;******************************************************************************;
;       Hartley transformation                                                 ;
;******************************************************************************;

; Time domain to frequency domain
public	Spectrum_flt32				as	'FHT_Spectrum_flt32'
public	Spectrum_flt64				as	'FHT_Spectrum_flt64'
public	Spectrum_flt32				as	'_ZN3FHT8SpectrumEPfPKfh'
public	Spectrum_flt64				as	'_ZN3FHT8SpectrumEPdPKdh'

; Frequency domain to time domain
public	FHT_flt32					as	'FHT_Impulse_flt32'
public	FHT_flt64					as	'FHT_Impulse_flt64'
public	FHT_flt32					as	'_ZN3FHT7ImpulseEPfPKfh'
public	FHT_flt64					as	'_ZN3FHT7ImpulseEPdPKdh'

;******************************************************************************;
;       Spectrum                                                               ;
;******************************************************************************;

; Energy spectrum
public	EnergySpectrum_flt32		as	'FHT_EnergySpectrum_flt32'
public	EnergySpectrum_flt64		as	'FHT_EnergySpectrum_flt64'
public	EnergySpectrum_flt32		as	'_ZN3FHT14EnergySpectrumEPfPKfh'
public	EnergySpectrum_flt64		as	'_ZN3FHT14EnergySpectrumEPdPKdh'

; Magnitude spectrum
public	MagnitudeSpectrum_flt32		as	'FHT_MagnitudeSpectrum_flt32'
public	MagnitudeSpectrum_flt64		as	'FHT_MagnitudeSpectrum_flt64'
public	MagnitudeSpectrum_flt32		as	'_ZN3FHT17MagnitudeSpectrumEPfPKfh'
public	MagnitudeSpectrum_flt64		as	'_ZN3FHT17MagnitudeSpectrumEPdPKdh'

; Real spectrum
public	RealSpectrum_flt32			as	'FHT_RealSpectrum_flt32'
public	RealSpectrum_flt64			as	'FHT_RealSpectrum_flt64'
public	RealSpectrum_flt32			as	'_ZN3FHT12RealSpectrumEPfS0_PKfh'
public	RealSpectrum_flt64			as	'_ZN3FHT12RealSpectrumEPdS0_PKdh'

;******************************************************************************;
;       Signal manipulations                                                   ;
;******************************************************************************;

; Signal reflection
public	Reflection_flt32			as	'FHT_Reflect_flt32'
public	Reflection_flt64			as	'FHT_Reflect_flt64'
public	Reflection_flt32			as	'_ZN3FHT7ReflectEPfh'
public	Reflection_flt64			as	'_ZN3FHT7ReflectEPdh'

; Signal derivative
public	Derivative_flt32			as	'FHT_Derivative_flt32'
public	Derivative_flt64			as	'FHT_Derivative_flt64'
public	Derivative_flt32			as	'_ZN3FHT10DerivativeEPfh'
public	Derivative_flt64			as	'_ZN3FHT10DerivativeEPdh'

; Signal antiderivative
public	AntiDerivative_flt32		as	'FHT_AntiDerivative_flt32'
public	AntiDerivative_flt64		as	'FHT_AntiDerivative_flt64'
public	AntiDerivative_flt32		as	'_ZN3FHT14AntiDerivativeEPffh'
public	AntiDerivative_flt64		as	'_ZN3FHT14AntiDerivativeEPddh'

; Signal time and frequency shift
public	Shift_flt32					as	'FHT_Shift_flt32'
public	Shift_flt64					as	'FHT_Shift_flt64'
public	Shift_flt32					as	'_ZN3FHT5ShiftEPffh'
public	Shift_flt64					as	'_ZN3FHT5ShiftEPddh'

; Magnitude scaling
public	Scale_flt32					as	'FHT_Scale_flt32'
public	Scale_flt64					as	'FHT_Scale_flt64'
public	Scale_flt32					as	'_ZN3FHT5ScaleEPffh'
public	Scale_flt64					as	'_ZN3FHT5ScaleEPddh'

; Autocorrelation of signal
public	AutoCorrelation_flt32		as	'FHT_AutoCorrelation_flt32'
public	AutoCorrelation_flt64		as	'FHT_AutoCorrelation_flt64'
public	AutoCorrelation_flt32		as	'_ZN3FHT15AutoCorrelationEPffh'
public	AutoCorrelation_flt64		as	'_ZN3FHT15AutoCorrelationEPddh'

; Cross-correlation of signals
public	CrossCorrelation_flt32		as	'FHT_CrossCorrelation_flt32'
public	CrossCorrelation_flt64		as	'FHT_CrossCorrelation_flt64'
public	CrossCorrelation_flt32		as	'_ZN3FHT16CrossCorrelationEPfPKffh'
public	CrossCorrelation_flt64		as	'_ZN3FHT16CrossCorrelationEPdPKddh'

; Convolution of signals
public	Convolution_flt32			as	'FHT_Convolution_flt32'
public	Convolution_flt64			as	'FHT_Convolution_flt64'
public	Convolution_flt32			as	'_ZN3FHT11ConvolutionEPfPKffh'
public	Convolution_flt64			as	'_ZN3FHT11ConvolutionEPdPKddh'

; Mixing signals
public	Mix_flt32					as	'FHT_Mix_flt32'
public	Mix_flt64					as	'FHT_Mix_flt64'
public	Mix_flt32					as	'_ZN3FHT3MixEPfPKfffh'
public	Mix_flt64					as	'_ZN3FHT3MixEPdPKdddh'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Sine and cosine table                                                  ;
;******************************************************************************;

;==============================================================================;
;       Sine and cosine values                                                 ;
;==============================================================================;
macro	SINCOS	x
{
;---[Parameters]---------------------------
cos		equ		rdi							; pointer to array of cosine values
sin		equ		rsi							; pointer to array of sine values
size	equ		rdx							; array size (count of elements)
ascale	equ		xmm0						; scale value
;---[Internal variables]-------------------
table1	equ		rax							; pointer to array of coefficients
table2	equ		rcx							; pointer to array of coefficients
cosv	equ		xmm1						; cosine value
sinv	equ		xmm2						; sine value
svalue1	equ		xmm3						; scale value #1
svalue2	equ		xmm4						; scale value #2
value	equ		xmm5						; value to process
temp1	equ		xmm6						; temporary register #1
temp2	equ		xmm7						; temporary register #2
temp3	equ		xmm8						; temporary register #3
temp4	equ		xmm9						; temporary register #4
temp5	equ		xmm10						; temporary register #5
temp6	equ		xmm11						; temporary register #6
temp7	equ		xmm12						; temporary register #7
temp8	equ		xmm13						; temporary register #8
stack	equ		rsp							; stack pointer
s_angle	equ		stack - 3 * 8				; stack position of "angle" variable
if x eq s
oneval	= pone_flt32						; +1.0
angle	= angle_flt32						; pointer to initial angle vector
step	= step_flt32						; pointer to step vector
cost	= cos_flt32							; pointer to array of cosine coefficients
sint	= sin_flt32							; pointer to array of sine coefficients
else if x eq d
oneval	= pone_flt64						; +1.0
angle	= angle_flt64						; pointer to initial angle vector
step	= step_flt64						; pointer to step vector
cost	= cos_flt64							; pointer to array of cosine coefficients
sint	= sin_flt64							; pointer to array of sine coefficients
end if
;------------------------------------------
		movap#x	value, [angle]				; value = angle[0]
		movap#x	[s_angle], value			; init angle vector
		mov		table1, cost				; set pointer to array of coefficients
		mov		table2, sint				; set pointer to array of coefficients
;---[Computation loop]---------------------
.loop:	movap#x	value, [s_angle]			; value = angle[0]
		movap#x	temp1, [step]				; temp1 = step
		addp#x	temp1, value				; temp1 = angle[0] + step
		movap#x	[s_angle], temp1			; angle[0] = temp1
;---[Compute sine and cosine values]-------
		mulp#x	value, ascale				; value = angle[0] * ascale
		movap#x	cosv, [oneval]				; cosv = 1.0
		movap#x	sinv, value					; sinv = value
		mulp#x	value, value				; value *= value
if x eq s
		PAIR4	table1, table2, cosv, sinv, svalue1, svalue2, value, ap, p, x
else if x eq d
		PAIR8	table1, table2, cosv, sinv, svalue1, svalue2, value, ap, p, x
end if
;---[Save sine and cosine values]----------
		movap#x	[cos], cosv					; cos[0] = cosv
		movap#x	[sin], sinv					; sin[0] = sinv
		add		cos, VSIZE					; cos++
		add		sin, VSIZE					; sin++
		sub		size, VSIZE					; size--
		jnz		.loop						; do while (size != 0)
;---[End of computation loop]--------------
		ret
}
SinCosCore_flt32:	SINCOS	s
SinCosCore_flt64:	SINCOS	d

;==============================================================================;
;       Generation of sine and cosine table                                    ;
;==============================================================================;
macro	SINCOS_TABLE	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
exp		equ		sil							; power of 2
;---[Internal variables]-------------------
shift	equ		cl							; shift value
size	equ		rax							; array size (count of elements)
treg	equ		rdx							; temporary register
ptr		equ		r8							; temporary pointer
ascale	equ		xmm0						; scale value
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
s_ascl	equ		stack + 2 * 8				; stack position of "ascale" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
if x eq s
SinCos	= SinCosCore_flt32					; Sine and Cosine function
oneval	= pone_flt32						; +1.0
minexp	= 6									; min power value
scale	= 2									; scale value
else if x eq d
SinCos	= SinCosCore_flt64					; Sine and Cosine function
oneval	= pone_flt64						; +1.0
minexp	= 5									; min power value
scale	= 3									; scale value
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		exp, minexp					; if (exp < minexp)
		jb		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, scale - 2			; shift = exp + scale - 2
		shl		size, shift					; size = 1 << shift
		mov		treg, size
		shr		treg, scale - 2
		movs#x	ascale, [oneval]			; ascale = 1.0
	cvtsi2s#x	temp, treg
		divs#x	ascale, temp				; ascale = 1.0 / size
		shufp#x	ascale, ascale, 0x0			; duplicate value through the entire register
		lea		ptr, [array + size]			; ptr = array + size
		shr		size, 1						; size >>= 1
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		movap#x	[s_ascl], ascale			; save "ascale" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Sine and cosine loop]-----------------
.loop:	mov		param3, size
		mov		param2, [s_ptr]
		mov		param1, [s_array]
		call	SinCos						; call SinCos (array, ptr, size, scale)
		movap#x	ascale, [s_ascl]			; get "ascale" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		add		[s_array], size				; array += size
		add		[s_ptr], size				; ptr += size
		addp#x	ascale, ascale				; ascale *= 2.0
		shr		size, 1						; size >>= 1
		movap#x	[s_ascl], ascale			; save "ascale" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		cmp		size, VSIZE
		jae		.loop						; do while (size >= 1)
;---[Normal exit]--------------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
SinCosTable_flt32:	SINCOS_TABLE	s
SinCosTable_flt64:	SINCOS_TABLE	d

;******************************************************************************;
;       Hartley transformation                                                 ;
;******************************************************************************;
macro	PAIR32	target, source, mask
{
		movaps	source, dqword [mask]
		xorps	source, target				; source = target ^ mask
		haddps	target, source				; target = FHT (target, source)
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	PAIR64	target1, target2, source1, source2
{
		movapd	target2, target1			; target2 = target1
		movapd	source2, source1			; source2 = source1
		haddpd	target1, source1			; target1 = FHT (target1, source1)
		hsubpd	target2, source2			; target2 = FHT (target2, source2)
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	REORDER4	array, reg1, reg2, reg3, reg4, x
{
;---[Internal variables]-------------------
if x eq s
bytes	= 4									; size of array element (bytes)
else if x eq d
bytes	= 8									; size of array element (bytes)
end if
;------------------------------------------
		movs#x	reg1, [array + 1 * bytes]
		movs#x	reg2, [array + 3 * bytes]
		movs#x	reg3, [array + 4 * bytes]
		movs#x	reg4, [array + 6 * bytes]
		movs#x	[array + 1 * bytes], reg3
		movs#x	[array + 3 * bytes], reg4
		movs#x	[array + 4 * bytes], reg1
		movs#x	[array + 6 * bytes], reg2
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	REORDER8	array, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, x
{
;---[Internal variables]-------------------
if x eq s
bytes	= 4									; size of array element (bytes)
else if x eq d
bytes	= 8									; size of array element (bytes)
end if
;------------------------------------------
		movs#x	reg1, [array + 2 * bytes]
		movs#x	reg2, [array + 4 * bytes]
		movs#x	reg3, [array + 11 * bytes]
		movs#x	reg4, [array + 13 * bytes]
		movs#x	[array + 2 * bytes], reg2
		movs#x	[array + 4 * bytes], reg1
		movs#x	[array + 11 * bytes], reg4
		movs#x	[array + 13 * bytes], reg3
		movs#x	reg1, [array + 1 * bytes]
		movs#x	reg2, [array + 3 * bytes]
		movs#x	reg3, [array + 5 * bytes]
		movs#x	reg4, [array + 7 * bytes]
		movs#x	reg5, [array + 8 * bytes]
		movs#x	reg6, [array + 10 * bytes]
		movs#x	reg7, [array + 12 * bytes]
		movs#x	reg8, [array + 14 * bytes]
		movs#x	[array + 1 * bytes], reg5
		movs#x	[array + 3 * bytes], reg7
		movs#x	[array + 5 * bytes], reg6
		movs#x	[array + 7 * bytes], reg8
		movs#x	[array + 8 * bytes], reg1
		movs#x	[array + 10 * bytes], reg3
		movs#x	[array + 12 * bytes], reg2
		movs#x	[array + 14 * bytes], reg4
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SCALAR	array, reg1, reg2, shift1, shift2, sqrt, x
{
;---[Internal variables]-------------------
if x eq s
bytes	= 4									; size of array element (bytes)
else if x eq d
bytes	= 8									; size of array element (bytes)
end if
;------------------------------------------
		movs#x	reg1, [array + shift1 * bytes]
		adds#x	reg1, [array + shift2 * bytes]
		muls#x	reg1, [sqrt]
		movs#x	reg2, [array + shift1 * bytes]
		subs#x	reg2, [array + shift2 * bytes]
		muls#x	reg2, [sqrt]
		movs#x	[array + shift1 * bytes], reg1
		movs#x	[array + shift2 * bytes], reg2
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	VECTOR	array, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, shift1, shift2, shift3, shift4, cosv, sinv, shmask, p, x
{
;---[Internal variables]-------------------
if x eq s
bytes	= 4									; size of array element (bytes)
else if x eq d
bytes	= 8									; size of array element (bytes)
end if
;------------------------------------------
		mov#p#x	reg1, [array + shift1 * bytes]
		movap#x	reg2, reg1
		mov#p#x	reg3, [array + shift2 * bytes]
		shufp#x	reg3, reg3, shmask
		movap#x	reg4, reg3
		mov#p#x	reg5, [array + shift3 * bytes]
		movap#x	reg6, reg5
		mov#p#x	reg7, [array + shift4 * bytes]
		shufp#x	reg7, reg7, shmask
		movap#x	reg8, reg7
		mulp#x	reg1, [cosv]
		mulp#x	reg7, [sinv]
		addp#x	reg1, reg7
		mulp#x	reg3, [sinv]
		mulp#x	reg5, [cosv]
		addp#x	reg3, reg5
		mulp#x	reg4, [cosv]
		mulp#x	reg6, [sinv]
		subp#x	reg4, reg6
		mulp#x	reg2, [sinv]
		mulp#x	reg8, [cosv]
		subp#x	reg2, reg8
		mov#p#x	[array + shift1 * bytes], reg1
		shufp#x	reg3, reg3, shmask
		mov#p#x	[array + shift2 * bytes], reg3
		mov#p#x	[array + shift3 * bytes], reg4
		shufp#x	reg2, reg2, shmask
		mov#p#x	[array + shift4 * bytes], reg2
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MERGE	array, reg1, reg2, shift1, shift2, x
{
		movap#x	reg1, [array + shift1 * VSIZE]
		movap#x	reg2, [array + shift1 * VSIZE]
		addp#x	reg1, [array + shift2 * VSIZE]
		subp#x	reg2, [array + shift2 * VSIZE]
		movap#x	[array + shift1 * VSIZE], reg1
		movap#x	[array + shift2 * VSIZE], reg2
}

;==============================================================================;
;       Hartley transformation for 2 elements vector                           ;
;==============================================================================;
macro	FHT2	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
if x eq s
bytes	= 4									; size of array element (bytes)
else if x eq d
bytes	= 8									; size of array element (bytes)
end if
;---[Merge 1 element arrays]---------------
		movs#x	temp0, [array + 0 * bytes]	; temp0 = array[0]
		movs#x	temp1, [array + 0 * bytes]	; temp1 = array[0]
		adds#x	temp0, [array + 1 * bytes]	; temp0 = array[0] + array[1]
		subs#x	temp1, [array + 1 * bytes]	; temp1 = array[0] - array[1]
;---[Store elements]-----------------------
		movs#x	[array + 0 * bytes], temp0	; array[0] = temp0
		movs#x	[array + 1 * bytes], temp1	; array[1] = temp1
		ret
}
FHT2_flt32:	FHT2	s
FHT2_flt64:	FHT2	d

;==============================================================================;
;       Hartley transformation for 4 elements vector                           ;
;==============================================================================;
macro	FHT4	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
if x eq s
bytes	= 4									; size of array element (bytes)
else if x eq d
bytes	= 8									; size of array element (bytes)
end if
;---[Merge 1 element arrays]---------------
		movs#x	temp0, [array + 0 * bytes]	; temp0 = array[0]
		movs#x	temp1, [array + 0 * bytes]	; temp1 = array[0]
		movs#x	temp4, [array + 1 * bytes]	; temp4 = array[1]
		movs#x	temp5, [array + 1 * bytes]	; temp5 = array[1]
		adds#x	temp0, [array + 2 * bytes]	; temp0 = array[0] + array[2]
		subs#x	temp1, [array + 2 * bytes]	; temp1 = array[0] - array[2]
		adds#x	temp4, [array + 3 * bytes]	; temp4 = array[1] + array[3]
		subs#x	temp5, [array + 3 * bytes]	; temp5 = array[1] - array[3]
;---[Merge 2 element arrays]---------------
		movap#x	temp2, temp0				; temp2 = temp0
		adds#x	temp0, temp4				; temp0 += temp4
		subs#x	temp2, temp4				; temp2 -= temp4
		movap#x	temp3, temp1				; temp3 = temp1
		adds#x	temp1, temp5				; temp1 += temp5
		subs#x	temp3, temp5				; temp3 -= temp5
;---[Store elements]-----------------------
		movs#x	[array + 0 * bytes], temp0	; array[0] = temp0
		movs#x	[array + 1 * bytes], temp1	; array[1] = temp1
		movs#x	[array + 2 * bytes], temp2	; array[2] = temp2
		movs#x	[array + 3 * bytes], temp3	; array[3] = temp3
		ret
}
FHT4_flt32:	FHT4	s
FHT4_flt64:	FHT4	d

;==============================================================================;
;       Hartley transformation for 8 elements vector                           ;
;==============================================================================;
FHT8_flt32:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
mask	= mask_flt32						; sign mask
sqrt	= sqrt_flt32						; 1 / Sqrt (2)
;---[Correct elements order]---------------
	REORDER4	array, temp0, temp1, temp2, temp3, s
;---[Merge 1 element arrays]---------------
		movaps	temp0, [array + 0 * VSIZE]
		movaps	temp1, [array + 1 * VSIZE]
		PAIR32	temp0, temp2, mask
		PAIR32	temp1, temp3, mask
;---[Merge 2 element arrays]---------------
		PAIR32	temp0, temp2, mask
		PAIR32	temp1, temp3, mask
		movaps	[array + 0 * VSIZE], temp0
		movaps	[array + 1 * VSIZE], temp1
;---[Merge 4 element arrays]---------------
		SCALAR	array, temp0, temp1, 5, 7, sqrt, s
		MERGE	array, temp0, temp1, 0, 1, s
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
FHT8_flt64:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
sqrt	= sqrt_flt64						; 1 / Sqrt (2)
;---[Correct elements order]---------------
	REORDER4	array, temp0, temp1, temp2, temp3, d
;---[Merge 1 element arrays]---------------
		movapd	temp0, [array + 0 * VSIZE]
		movapd	temp1, [array + 1 * VSIZE]
		movapd	temp2, [array + 2 * VSIZE]
		movapd	temp3, [array + 3 * VSIZE]
		PAIR64	temp0, temp4, temp1, temp5
		PAIR64	temp2, temp6, temp3, temp7
;---[Merge 2 element arrays]---------------
		movapd	temp1, temp4
		movapd	temp3, temp6
		PAIR64	temp0, temp4, temp1, temp5
		PAIR64	temp2, temp6, temp3, temp7
		movapd	[array + 0 * VSIZE], temp0
		movapd	[array + 1 * VSIZE], temp4
		movapd	[array + 2 * VSIZE], temp2
		movapd	[array + 3 * VSIZE], temp6
;---[Merge 4 element arrays]---------------
		SCALAR	array, temp0, temp1, 5, 7, sqrt, d
		MERGE	array, temp0, temp1, 0, 2, d
		MERGE	array, temp2, temp3, 1, 3, d
;------------------------------------------
		ret

;==============================================================================;
;       Hartley transformation for 16 elements vector                          ;
;==============================================================================;
FHT16_flt32:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
mask	= mask_flt32						; sign mask
sqrt	= sqrt_flt32						; 1 / Sqrt (2)
cos16v	= cos16_flt32						; pointer to array of cosine values
sin16v	= sin16_flt32						; pointer to array of sine values
;---[Correct elements order]---------------
	REORDER8	array, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, s
;---[Merge 1 element arrays]---------------
		movaps	temp0, [array + 0 * VSIZE]
		movaps	temp1, [array + 1 * VSIZE]
		movaps	temp2, [array + 2 * VSIZE]
		movaps	temp3, [array + 3 * VSIZE]
		PAIR32	temp0, temp4, mask
		PAIR32	temp1, temp5, mask
		PAIR32	temp2, temp6, mask
		PAIR32	temp3, temp7, mask
;---[Merge 2 element arrays]---------------
		PAIR32	temp0, temp4, mask
		PAIR32	temp1, temp5, mask
		PAIR32	temp2, temp6, mask
		PAIR32	temp3, temp7, mask
		movaps	[array + 0 * VSIZE], temp0
		movaps	[array + 1 * VSIZE], temp1
		movaps	[array + 2 * VSIZE], temp2
		movaps	[array + 3 * VSIZE], temp3
;---[Merge 4 element arrays]---------------
		SCALAR	array, temp0, temp1, 5, 7, sqrt, s
		SCALAR	array, temp2, temp3, 13, 15, sqrt, s
		MERGE	array, temp0, temp1, 0, 1, s
		MERGE	array, temp2, temp3, 2, 3, s
;---[Merge 8 element arrays]---------------
		VECTOR	array, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, 9, 10, 13, 14, cos16v, sin16v, 0x11, lp, s
		MERGE	array, temp0, temp1, 0, 2, s
		MERGE	array, temp2, temp3, 1, 3, s
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
FHT16_flt64:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
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
temp9	equ		xmm9						; temporary register #10
temp10	equ		xmm10						; temporary register #11
temp11	equ		xmm11						; temporary register #12
temp12	equ		xmm12						; temporary register #13
temp13	equ		xmm13						; temporary register #14
temp14	equ		xmm14						; temporary register #15
temp15	equ		xmm15						; temporary register #16
sqrt	= sqrt_flt64						; 1 / Sqrt (2)
cos16v	= cos16_flt64						; pointer to array of cosine values
sin16v	= sin16_flt64						; pointer to array of sine values
;---[Merge 1 element arrays]---------------
		movapd	temp0, [array + 0 * VSIZE]
		movapd	temp1, [array + 1 * VSIZE]
		movapd	temp2, [array + 2 * VSIZE]
		movapd	temp3, [array + 3 * VSIZE]
		movapd	temp4, [array + 4 * VSIZE]
		movapd	temp5, [array + 5 * VSIZE]
		movapd	temp6, [array + 6 * VSIZE]
		movapd	temp7, [array + 7 * VSIZE]
		PAIR64	temp0, temp8, temp1, temp9
		PAIR64	temp2, temp10, temp3, temp11
		PAIR64	temp4, temp12, temp5, temp13
		PAIR64	temp6, temp14, temp7, temp15
;---[Merge 2 element arrays]---------------
		movapd	temp1, temp8
		movapd	temp3, temp10
		movapd	temp5, temp12
		movapd	temp7, temp14
		PAIR64	temp0, temp8, temp1, temp9
		PAIR64	temp2, temp10, temp3, temp11
		PAIR64	temp4, temp12, temp5, temp13
		PAIR64	temp6, temp14, temp7, temp15
		movapd	[array + 0 * VSIZE], temp0
		movapd	[array + 1 * VSIZE], temp8
		movapd	[array + 2 * VSIZE], temp2
		movapd	[array + 3 * VSIZE], temp10
		movapd	[array + 4 * VSIZE], temp4
		movapd	[array + 5 * VSIZE], temp12
		movapd	[array + 6 * VSIZE], temp6
		movapd	[array + 7 * VSIZE], temp14
;---[Merge 4 element arrays]---------------
		SCALAR	array, temp0, temp1, 5, 7, sqrt, d
		SCALAR	array, temp2, temp3, 13, 15, sqrt, d
		MERGE	array, temp0, temp1, 0, 2, d
		MERGE	array, temp2, temp3, 1, 3, d
		MERGE	array, temp4, temp5, 4, 6, d
		MERGE	array, temp6, temp7, 5, 7, d
;---[Merge 8 element arrays]---------------
		VECTOR	array, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, 9, 10, 13, 14, cos16v, sin16v, 0x01, up, d
		MERGE	array, temp0, temp1, 0, 4, d
		MERGE	array, temp2, temp3, 1, 5, d
		MERGE	array, temp4, temp5, 2, 6, d
		MERGE	array, temp6, temp7, 3, 7, d
;------------------------------------------
		ret

;==============================================================================;
;       Hartley transformation for 32 elements vector                          ;
;==============================================================================;
FHT32_flt32:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
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
temp9	equ		xmm9						; temporary register #10
temp10	equ		xmm10						; temporary register #11
temp11	equ		xmm11						; temporary register #12
temp12	equ		xmm12						; temporary register #13
temp13	equ		xmm13						; temporary register #14
temp14	equ		xmm14						; temporary register #15
temp15	equ		xmm15						; temporary register #16
mask	= mask_flt32						; sign mask
sqrt	= sqrt_flt32						; 1 / Sqrt (2)
cos16v	= cos16_flt32						; pointer to array of cosine values
sin16v	= sin16_flt32						; pointer to array of sine values
cos32v	= cos32_flt32						; pointer to array of cosine values
sin32v	= sin32_flt32						; pointer to array of sine values
;---[Merge 1 element arrays]---------------
		movaps	temp0, [array + 0 * VSIZE]
		movaps	temp1, [array + 1 * VSIZE]
		movaps	temp2, [array + 2 * VSIZE]
		movaps	temp3, [array + 3 * VSIZE]
		movaps	temp4, [array + 4 * VSIZE]
		movaps	temp5, [array + 5 * VSIZE]
		movaps	temp6, [array + 6 * VSIZE]
		movaps	temp7, [array + 7 * VSIZE]
		PAIR32	temp0, temp8, mask
		PAIR32	temp1, temp9, mask
		PAIR32	temp2, temp10, mask
		PAIR32	temp3, temp11, mask
		PAIR32	temp4, temp12, mask
		PAIR32	temp5, temp13, mask
		PAIR32	temp6, temp14, mask
		PAIR32	temp7, temp15, mask
;---[Merge 2 element arrays]---------------
		PAIR32	temp0, temp8, mask
		PAIR32	temp1, temp9, mask
		PAIR32	temp2, temp10, mask
		PAIR32	temp3, temp11, mask
		PAIR32	temp4, temp12, mask
		PAIR32	temp5, temp13, mask
		PAIR32	temp6, temp14, mask
		PAIR32	temp7, temp15, mask
		movaps	[array + 0 * VSIZE], temp0
		movaps	[array + 1 * VSIZE], temp1
		movaps	[array + 2 * VSIZE], temp2
		movaps	[array + 3 * VSIZE], temp3
		movaps	[array + 4 * VSIZE], temp4
		movaps	[array + 5 * VSIZE], temp5
		movaps	[array + 6 * VSIZE], temp6
		movaps	[array + 7 * VSIZE], temp7
;---[Merge 4 element arrays]---------------
		SCALAR	array, temp0, temp1, 5, 7, sqrt, s
		SCALAR	array, temp2, temp3, 13, 15, sqrt, s
		SCALAR	array, temp4, temp5, 21, 23, sqrt, s
		SCALAR	array, temp6, temp7, 29, 31, sqrt, s
		MERGE	array, temp0, temp1, 0, 1, s
		MERGE	array, temp2, temp3, 2, 3, s
		MERGE	array, temp4, temp5, 4, 5, s
		MERGE	array, temp6, temp7, 6, 7, s
;---[Merge 8 element arrays]---------------
		VECTOR	array, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, 9, 10, 13, 14, cos16v, sin16v, 0x11, lp, s
		VECTOR	array, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, 25, 26, 29, 30, cos16v, sin16v, 0x11, lp, s
		MERGE	array, temp0, temp1, 0, 2, s
		MERGE	array, temp2, temp3, 1, 3, s
		MERGE	array, temp4, temp5, 4, 6, s
		MERGE	array, temp6, temp7, 5, 7, s
;---[Merge 16 element arrays]--------------
		VECTOR	array, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, 17, 20, 25, 28, cos32v, sin32v, 0x1B, up, s
		MERGE	array, temp0, temp1, 0, 4, s
		MERGE	array, temp2, temp3, 1, 5, s
		MERGE	array, temp4, temp5, 2, 6, s
		MERGE	array, temp6, temp7, 3, 7, s
;------------------------------------------
		ret

;==============================================================================;
;       Fast Hartley transformation core                                       ;
;==============================================================================;
macro	CORE	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
cos		equ		rsi							; pointer to array of cosine values
sin		equ		rdx							; pointer to array of sine values
size	equ		rcx							; array size (count of elements)
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_cos	equ		stack + 1 * 8				; stack position of "cos" variable
s_sin	equ		stack + 2 * 8				; stack position of "sin" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
if x eq s
Leaf	= FHT32_flt32						; Leaf function
Prepare	= Prepare_flt32						; Prepare function
Merge	= Merge_flt32						; Merge function
else if x eq d
Leaf	= FHT16_flt64						; Leaf function
Prepare	= Prepare_flt64						; Prepare function
Merge	= Merge_flt64						; Merge function
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
.start:	sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_cos], cos				; save "cos" variable into the stack
		mov		[s_sin], sin				; save "sin" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		cmp		size, 16 * VSIZE			; if (size = 16)
		je		.leaf						;     then go to leaf branch
;---[Process first half of data]-----------
		shr		size, 3
		add		cos, size
		add		sin, size
		shl		size, 2
		call	.start						; call Root (array, cos + size / 8, sin + size / 8, size / 2)
;---[Process second half of data]----------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		cos, [s_cos]				; get "cos" variable from the stack
		mov		sin, [s_sin]				; get "sin" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 3
		add		cos, size
		add		sin, size
		shl		size, 2
		add		array, size
		call	.start						; call Root (array + size / 2, cos + size / 8, sin + size / 8, size / 2)
;---[Prepare arrays for merging]-----------
.back:	mov		array, [s_array]
		mov		cos, [s_cos]
		mov		sin, [s_sin]
		mov		size, [s_size]
		call	Prepare						; call Prepare (array, cos, sin, size)
;---[Merge two arrays into one]------------
		mov		param1, [s_array]
		mov		param2, [s_size]
		add		stack, space				; restoring back the stack pointer
		jmp		Merge						; return Merge (array, size)
;---[Call leaf functions for short data]---
.leaf:	mov		param1, [s_array]
		call	Leaf						; call Leaf (array)
		mov		param1, [s_array]
		add		param1, 8 * VSIZE
		call	Leaf						; call Leaf (array + 8)
		jmp		.back						; go back
}
Core_flt32:	CORE	s
Core_flt64:	CORE	d

;==============================================================================;
;       Prepare arrays for merging                                             ;
;==============================================================================;
macro	PREPARE		x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
cos		equ		rsi							; pointer to array of cosine values
sin		equ		rdx							; pointer to array of sine values
size	equ		rcx							; array size (count of elements)
;---[Internal variables]-------------------
ptr1	equ		r8							; pointer #1
ptr2	equ		r9							; pointer #2
ptr3	equ		r10							; pointer #3
ptr4	equ		r11							; pointer #4
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
temp8	equ		xmm8						; temporary register #9
temp9	equ		xmm9						; temporary register #10
temp10	equ		xmm10						; temporary register #11
temp11	equ		xmm11						; temporary register #12
temp12	equ		xmm12						; temporary register #13
temp13	equ		xmm13						; temporary register #14
temp14	equ		xmm14						; temporary register #15
temp15	equ		xmm15						; temporary register #16
if x eq s
shmask	= 0x1B								; shuffle mask
scale	= 2									; scale value
else if x eq d
shmask	= 0x1								; shuffle mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		ptr1, size
		shr		ptr1, 1
		lea		ptr1, [ptr1 + array + bytes]
		mov		ptr3, size
		shr		ptr3, 2
		lea		ptr3, [ptr3 + ptr1]
		lea		ptr2, [ptr3 - bytes - 2 * VSIZE]
		lea		ptr4, [array + size - 2 * VSIZE]
	prefetchnta	[ptr1]						; prefetch data
	prefetchnta	[ptr2]						; prefetch data
	prefetchnta	[ptr3]						; prefetch data
	prefetchnta	[ptr4]						; prefetch data
	prefetchnta	[cos]						; prefetch data
	prefetchnta	[sin]						; prefetch data
;---[Prepare loop]-------------------------
.loop:	movup#x	temp0, [ptr1 + 0 * VSIZE]	; temp0 = ptr1[0]
		movup#x	temp1, [ptr1 + 1 * VSIZE]	; temp1 = ptr1[1]
		movap#x	temp2, temp0				; temp2 = temp0
		movap#x	temp3, temp1				; temp3 = temp1
		movap#x	temp4, [ptr2 + 0 * VSIZE]	; temp4 = ptr2[0]
		movap#x	temp5, [ptr2 + 1 * VSIZE]	; temp5 = ptr2[1]
		shufp#x	temp4, temp4, shmask		; reverse elements order
		shufp#x	temp5, temp5, shmask		; reverse elements order
		movap#x	temp6, temp4				; temp6 = temp4
		movap#x	temp7, temp5				; temp7 = temp5
		movup#x	temp8, [ptr3 + 0 * VSIZE]	; temp8 = ptr3[0]
		movup#x	temp9, [ptr3 + 1 * VSIZE]	; temp9 = ptr3[1]
		movap#x	temp10, temp8				; temp10 = temp8
		movap#x	temp11, temp9				; temp11 = temp9
		movap#x	temp12, [ptr4 + 0 * VSIZE]	; temp12 = ptr4[0]
		movap#x	temp13, [ptr4 + 1 * VSIZE]	; temp13 = ptr4[1]
		shufp#x	temp12, temp12, shmask		; reverse elements order
		shufp#x	temp13, temp13, shmask		; reverse elements order
		movap#x	temp14, temp12				; temp14 = temp12
		movap#x	temp15, temp13				; temp15 = temp13
		mulp#x	temp0, [cos + 0 * VSIZE]	; temp0 *= cos[0]
		mulp#x	temp13, [sin + 0 * VSIZE]	; temp13 *= sin[0]
		addp#x	temp0, temp13				; temp0 += temp13
		mulp#x	temp1, [cos + 1 * VSIZE]	; temp1 *= cos[1]
		mulp#x	temp12, [sin + 1 * VSIZE]	; temp12 *= sin[1]
		addp#x	temp1, temp12				; temp1 += temp12
		mulp#x	temp5, [sin + 0 * VSIZE]	; temp5 *= sin[0]
		mulp#x	temp8, [cos + 0 * VSIZE]	; temp8 *= cos[0]
		addp#x	temp5, temp8				; temp5 += temp8
		mulp#x	temp4, [sin + 1 * VSIZE]	; temp4 *= sin[1]
		mulp#x	temp9, [cos + 1 * VSIZE]	; temp11 *= cos[1]
		addp#x	temp4, temp9				; temp4 += temp9
		mulp#x	temp7, [cos + 0 * VSIZE]	; temp7 *= cos[0]
		mulp#x	temp10, [sin + 0 * VSIZE]	; temp10 *= sin[0]
		subp#x	temp7, temp10				; temp7 -= temp10
		mulp#x	temp6, [cos + 1 * VSIZE]	; temp6 *= cos[1]
		mulp#x	temp11, [sin + 1 * VSIZE]	; temp11 *= sin[1]
		subp#x	temp6, temp11				; temp6 -= temp11
		mulp#x	temp2, [sin + 0 * VSIZE]	; temp2 *= sin[0]
		mulp#x	temp15, [cos + 0 * VSIZE]	; temp15 *= cos[0]
		subp#x	temp2, temp15				; temp2 -= temp15
		mulp#x	temp3, [sin + 1 * VSIZE]	; temp3 *= sin[1]
		mulp#x	temp14, [cos + 1 * VSIZE]	; temp14 *= cos[1]
		subp#x	temp3, temp14				; temp3 -= temp14
		movup#x	[ptr1 + 0 * VSIZE], temp0	; ptr1[0] = temp0
		movup#x	[ptr1 + 1 * VSIZE], temp1	; ptr1[1] = temp1
		shufp#x	temp4, temp4, shmask		; reverse elements order
		shufp#x	temp5, temp5, shmask		; reverse elements order
		movap#x	[ptr2 + 0 * VSIZE], temp4	; ptr2[0] = temp4
		movap#x	[ptr2 + 1 * VSIZE], temp5	; ptr2[1] = temp5
		movup#x	[ptr3 + 0 * VSIZE], temp7	; ptr3[0] = temp7
		movup#x	[ptr3 + 1 * VSIZE], temp6	; ptr3[1] = temp6
		shufp#x	temp3, temp3, shmask		; reverse elements order
		shufp#x	temp2, temp2, shmask		; reverse elements order
		movap#x	[ptr4 + 0 * VSIZE], temp3	; ptr4[0] = temp3
		movap#x	[ptr4 + 1 * VSIZE], temp2	; ptr4[1] = temp2
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr2 - PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr3 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr4 - PSTEP]				; prefetch next portion of data
	prefetchnta	[cos + PSTEP]				; prefetch next portion of data
	prefetchnta	[sin + PSTEP]				; prefetch next portion of data
		add		ptr1, 2 * VSIZE				; ptr1 += 2
		sub		ptr2, 2 * VSIZE				; ptr2 -= 2
		add		ptr3, 2 * VSIZE				; ptr3 += 2
		sub		ptr4, 2 * VSIZE				; ptr4 -= 2
		add		cos, 2 * VSIZE				; cos += 2
		add		sin, 2 * VSIZE				; sin += 2
		sub		size, 16 * VSIZE			; size -= 16
		jnz		.loop						; do while (size != 0)
;---[End of prepare loop]------------------
		ret
}
Prepare_flt32:	PREPARE	s
Prepare_flt64:	PREPARE	d

;==============================================================================;
;       Merge two arrays into one                                              ;
;==============================================================================;
macro	MERGE	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
temp8	equ		xmm8						; temporary register #9
temp9	equ		xmm9						; temporary register #10
temp10	equ		xmm10						; temporary register #11
temp11	equ		xmm11						; temporary register #12
temp12	equ		xmm12						; temporary register #13
temp13	equ		xmm13						; temporary register #14
temp14	equ		xmm14						; temporary register #15
temp15	equ		xmm15						; temporary register #16
;------------------------------------------
		shr		size, 1						; size >>= 1
		lea		ptr, [array + size]			; ptr = array + size
	prefetchnta	[array]						; prefetch data
	prefetchnta	[ptr]						; prefetch data
;---[Merge loop]---------------------------
.loop:	movap#x	temp0, [array + 0 * VSIZE]	; temp0 = array[0]
		movap#x	temp8, temp0				; temp8 = temp0
		movap#x	temp1, [array + 1 * VSIZE]	; temp1 = array[1]
		movap#x	temp9, temp1				; temp9 = temp1
		movap#x	temp2, [array + 2 * VSIZE]	; temp2 = array[2]
		movap#x	temp10, temp2				; temp10 = temp2
		movap#x	temp3, [array + 3 * VSIZE]	; temp3 = array[3]
		movap#x	temp11, temp3				; temp11 = temp3
		movap#x	temp4, [array + 4 * VSIZE]	; temp4 = array[4]
		movap#x	temp12, temp4				; temp12 = temp4
		movap#x	temp5, [array + 5 * VSIZE]	; temp5 = array[5]
		movap#x	temp13, temp5				; temp13 = temp5
		movap#x	temp6, [array + 6 * VSIZE]	; temp6 = array[6]
		movap#x	temp14, temp6				; temp14 = temp6
		movap#x	temp7, [array + 7 * VSIZE]	; temp7 = array[7]
		movap#x	temp15, temp7				; temp15 = temp7
		addp#x	temp0, [ptr + 0 * VSIZE]	; temp0 += ptr[0]
		subp#x	temp8, [ptr + 0 * VSIZE]	; temp8 -= ptr[0]
		addp#x	temp1, [ptr + 1 * VSIZE]	; temp1 += ptr[1]
		subp#x	temp9, [ptr + 1 * VSIZE]	; temp9 -= ptr[1]
		addp#x	temp2, [ptr + 2 * VSIZE]	; temp2 += ptr[2]
		subp#x	temp10, [ptr + 2 * VSIZE]	; temp10 -= ptr[2]
		addp#x	temp3, [ptr + 3 * VSIZE]	; temp3 += ptr[3]
		subp#x	temp11, [ptr + 3 * VSIZE]	; temp11 -= ptr[3]
		addp#x	temp4, [ptr + 4 * VSIZE]	; temp4 += ptr[4]
		subp#x	temp12, [ptr + 4 * VSIZE]	; temp12 -= ptr[4]
		addp#x	temp5, [ptr + 5 * VSIZE]	; temp5 += ptr[5]
		subp#x	temp13, [ptr + 5 * VSIZE]	; temp13 -= ptr[5]
		addp#x	temp6, [ptr + 6 * VSIZE]	; temp6 += ptr[6]
		subp#x	temp14, [ptr + 6 * VSIZE]	; temp14 -= ptr[6]
		addp#x	temp7, [ptr + 7 * VSIZE]	; temp7 += ptr[7]
		subp#x	temp15, [ptr + 7 * VSIZE]	; temp15 -= ptr[7]
		movap#x	[array + 0 * VSIZE], temp0	; array[0] = temp0
		movap#x	[array + 1 * VSIZE], temp1	; array[1] = temp1
		movap#x	[array + 2 * VSIZE], temp2	; array[2] = temp2
		movap#x	[array + 3 * VSIZE], temp3	; array[3] = temp3
		movap#x	[array + 4 * VSIZE], temp4	; array[4] = temp4
		movap#x	[array + 5 * VSIZE], temp5	; array[5] = temp5
		movap#x	[array + 6 * VSIZE], temp6	; array[6] = temp6
		movap#x	[array + 7 * VSIZE], temp7	; array[7] = temp7
		movap#x	[ptr + 0 * VSIZE], temp8	; ptr[0] = temp8
		movap#x	[ptr + 1 * VSIZE], temp9	; ptr[1] = temp9
		movap#x	[ptr + 2 * VSIZE], temp10	; ptr[2] = temp10
		movap#x	[ptr + 3 * VSIZE], temp11	; ptr[3] = temp11
		movap#x	[ptr + 4 * VSIZE], temp12	; ptr[4] = temp12
		movap#x	[ptr + 5 * VSIZE], temp13	; ptr[5] = temp13
		movap#x	[ptr + 6 * VSIZE], temp14	; ptr[6] = temp14
		movap#x	[ptr + 7 * VSIZE], temp15	; ptr[7] = temp15
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		array, 8 * VSIZE			; array += 8
		add		ptr, 8 * VSIZE				; ptr += 8
		sub		size, 8 * VSIZE				; size -= 8
		jnz		.loop						; do while (size != 0)
;---[End of merge loop]--------------------
		ret
}
Merge_flt32:	MERGE	s
Merge_flt64:	MERGE	d

;==============================================================================;
;       Reorder data for fast Hartley transformation                           ;
;==============================================================================;
macro	REORDER		val1, val2, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
exp		equ		sil							; power of 2
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
tindex	equ		rax							; target index
sindex	equ		rdx							; source index
shift	equ		cl							; shift value
size	equ		tindex						; array size (bytes)
temp	equ		sindex						; temporary register
value	equ		xmm0						; value to process
stack	equ		rsp							; stack pointer
s_shift	equ		stack + 0 * 8				; stack position of "shift" variable
s_sind	equ		stack + 2 * 8				; stack position of "sindex" variable
s_tind	equ		stack + 4 * 8				; stack position of "tindex" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
space	= 7 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, 3					; shift = exp + 3
		shl		size, shift					; size = 1 << shift
		mov		[s_size], size				; save "size" variable into the stack
		neg		exp
		add		exp, 64						; exp = 64 - exp
		movzx	temp, exp
		movq	value, temp					; value = exp
		pshufd	value, value, 0x44			; duplicate value through the entire register
		movdqa	[s_shift], value			; init shift vector
		movdqa	value, dqword [index]		; value = index[0]
		movdqa	[s_sind], value				; save "sindex" variable into the stack
;---[Reordering loop]----------------------
.loop:	mov		fptr, BitReverse
		call	fptr						; tindex = BitReverse (sindex)
		psrlq	value, [s_shift]			; tindex >>= shift
		movdqa	[s_tind], value				; save "tindex" variable into the stack
;---[Check first index]--------------------
		mov		tindex, [s_tind + 0 * 8]
		mov		sindex, [s_sind + 0 * 8]
		cmp		tindex, sindex 				; if (tindex[0] <= sindex[0])
		jbe		@f							;     then do not swap elements
		mov		val1, [array + sindex * bytes]
		mov		val2, [array + tindex * bytes]
		mov		[array + sindex * bytes], val2
		mov		[array + tindex * bytes], val1
;---[Check second index]--------------------
@@:		mov		tindex, [s_tind + 1 * 8]
		mov		sindex, [s_sind + 1 * 8]
		cmp		tindex, sindex 				; if (tindex[1] <= sindex[1])
		jbe		@f							;     then do not swap elements
		mov		val1, [array + sindex * bytes]
		mov		val2, [array + tindex * bytes]
		mov		[array + sindex * bytes], val2
		mov		[array + tindex * bytes], val1
;---[Increment index value]----------------
@@:		movdqa	value, [s_sind]				; get "sindex" variable from the stack
		paddq	value, dqword [istep]		; sindex += istep
		movdqa	[s_sind], value				; save "sindex" variable into the stack
		sub		qword [s_size], VSIZE		; size--
		jnz		.loop						; do while (size != 0)
;---[End of reordering loop]---------------
		add		stack, space				; restoring back the stack pointer
		ret
}
Reorder_flt32:	REORDER	r8d, r9d, s
Reorder_flt64:	REORDER	r8, r9, d

;==============================================================================;
;       Fast Hartley transformation                                            ;
;==============================================================================;
FHT_flt32:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
table	equ		rsi							; pointer to sincos table
exp		equ		dl							; power of 2
;---[Internal variables]-------------------
expl	equ		rdx							; power of 2
size	equ		rax							; array size (count of elements)
shift	equ		cl							; shift value
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_table	equ		stack + 1 * 8				; stack position of "table" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
Fht2	= FHT2_flt32						; FHT for 2 elements vector
Fht4	= FHT4_flt32						; FHT for 4 elements vector
Fht8	= FHT8_flt32						; FHT for 8 elements vector
Fht16	= FHT16_flt32						; FHT for 16 elements vector
Fht32	= FHT32_flt32						; FHT for 32 elements vector
Reorder	= Reorder_flt32						; reorder function
Core	= Core_flt32						; FHT core function
space	= 3 * 8								; stack size required by the procedure
bytes	= 4									; size of array element (bytes)
;------------------------------------------
		test	exp, exp					; if (exp == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, 2					; shift = exp + 2
		shl		size, shift					; size = 1 << shift
;---[FHT for 2 elements vector]------------
		cmp		size, 2 * bytes				; if (size == 2)
		je		Fht2						;     then call FHT2 (array)
;---[FHT for 4 elements vector]------------
		cmp		size, 4 * bytes				; if (size == 4)
		je		Fht4						;     then call FHT4 (array)
;---[FHT for 8 elements vector]------------
		cmp		size, 8 * bytes				; if (size == 8)
		je		Fht8						;     then call FHT8 (array)
;---[FHT for 16 elements vector]-----------
		cmp		size, 16 * bytes			; if (size == 16)
		je		Fht16						;     then call FHT16 (array)
;---[Reorder array]------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], table			; save "table" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		param2, expl
		call	Reorder						; call Reorder (array, exp)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		table, [s_table]			; get "table" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		add		stack, space				; restoring back the stack pointer
;---[FHT for 32 elements vector]-----------
		cmp		size, 32 * bytes			; if (size == 32)
		je		Fht32						;     then call FHT32 (array)
;---[FHT core function]--------------------
		mov		param4, size
		shr		size, 2
		lea		param3, [table + size]
		mov		param2, table
		mov		param1, array
		jmp		Core						; return Core (array, table, table + size / 4, size)
;---[Normal exit]--------------------------
.exit:	ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
FHT_flt64:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
table	equ		rsi							; pointer to sincos table
exp		equ		dl							; power of 2
;---[Internal variables]-------------------
expl	equ		rdx							; power of 2
size	equ		rax							; array size (count of elements)
shift	equ		cl							; shift value
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_table	equ		stack + 1 * 8				; stack position of "table" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
Fht2	= FHT2_flt64						; FHT for 2 elements vector
Fht4	= FHT4_flt64						; FHT for 4 elements vector
Fht8	= FHT8_flt64						; FHT for 8 elements vector
Fht16	= FHT16_flt64						; FHT for 16 elements vector
Reorder	= Reorder_flt64						; reorder function
Core	= Core_flt64						; FHT core function
space	= 3 * 8								; stack size required by the procedure
bytes	= 8									; size of array element (bytes)
;------------------------------------------
		test	exp, exp					; if (exp == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, 3					; shift = exp + 3
		shl		size, shift					; size = 1 << shift
;---[FHT for 2 elements vector]------------
		cmp		size, 2 * bytes				; if (size == 2)
		je		Fht2						;     then call FHT2 (array)
;---[FHT for 4 elements vector]------------
		cmp		size, 4 * bytes				; if (size == 4)
		je		Fht4						;     then call FHT4 (array)
;---[FHT for 8 elements vector]------------
		cmp		size, 8 * bytes				; if (size == 8)
		je		Fht8						;     then call FHT8 (array)
;---[Reorder array]------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], table			; save "table" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		param2, expl
		call	Reorder						; call Reorder (array, exp)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		table, [s_table]			; get "table" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		add		stack, space				; restoring back the stack pointer
;---[FHT for 16 elements vector]-----------
		cmp		size, 16 * bytes			; if (size == 16)
		je		Fht16						;     then call FHT16 (array)
;---[FHT core function]--------------------
		mov		param4, size
		shr		size, 2
		lea		param3, [table + size]
		mov		param2, table
		mov		param1, array
		jmp		Core						; return Core (array, table, table + size / 4, size)
;---[Normal exit]--------------------------
.exit:	ret

;==============================================================================;
;       Time domain to frequency domain                                        ;
;==============================================================================;
macro	SPECTRUM	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
table	equ		rsi							; pointer to sincos table
exp		equ		dl							; power of 2
;---[Internal variables]-------------------
shift	equ		cl							; shift value
size	equ		rax							; array size (count of elements)
vscale	equ		xmm0						; scale value
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_exp	equ		stack + 1 * 8				; stack position of "exp" variable
if x eq s
Fht		= FHT_flt32							; Fast Hartley transformation
Scale	= Scale_flt32						; Scale function
oneval	= pone_flt32						; +1.0
else if x eq d
Fht		= FHT_flt64							; Fast Hartley transformation
Scale	= Scale_flt64						; Scale function
oneval	= pone_flt64						; +1.0
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		test	exp, exp					; if (exp == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_exp], exp				; save "size" variable into the stack
;---[Fast Hartley transformation]----------
		call	Fht							; call FHT (array, table, exp)
;---[Spectrum normalization]---------------
		mov		size, 1						; size = 1
		mov		shift, [s_exp]				; shift = exp
		shl		size, shift					; size = 1 << shift
		movs#x	vscale, [oneval]
	cvtsi2s#x	temp, size
		divs#x	vscale, temp				; vscale = 1.0 / size
		movzx	param2, byte [s_exp]
		mov		param1, [s_array]
		add		stack, space				; restoring back the stack pointer
		jmp		Scale						; return Scale (array, exp, 1.0 / size)
;---[Normal exit]--------------------------
.exit:	ret
}
Spectrum_flt32:	SPECTRUM s
Spectrum_flt64:	SPECTRUM d

;******************************************************************************;
;       Spectrum                                                               ;
;******************************************************************************;

;==============================================================================;
;       Energy spectrum                                                        ;
;==============================================================================;
macro	ENERGY_SPECTRUM	x
{
;---[Parameters]---------------------------
energy	equ		rdi							; pointer to energy spectrum
spec	equ		rsi							; hartley spectrum
exp		equ		dl							; power of 2
;---[Internal variables]-------------------
shift	equ		cl							; shift value
size	equ		rax							; array size (count of elements)
ptr1	equ		r8							; temporary pointer #1
ptr2	equ		r9							; temporary pointer #2
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
if x eq s
shmask	= 0x1B								; shuffle mask
scale	= 2									; scale value
else if x eq d
shmask	= 0x1								; shuffle mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, scale				; shift = exp + scale
		shl		size, shift					; size = 1 << shift
		lea		ptr1, [spec + bytes]		; ptr1 = spec + 1
		lea		ptr2, [spec + size]			; ptr2 = spec + size
		shr		size, 1						; size >>= 1
	prefetchnta	[ptr1]						; prefetch data
	prefetchnta	[ptr2]						; prefetch data
	prefetchnta	[energy]					; prefetch data
		movs#x	temp0, [spec]				; temp0 = spec[0]
		muls#x	temp0, temp0				; temp0 *= temp0
		movs#x	[energy], temp0				; energy[0] = temp0
		add		energy, bytes				; energy++
		cmp		size, bytes					; if (size == 0)
		jb		.exit						;     then go to exit
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sclr						;     then skip vector code
;---[Vector loop]--------------------------
.vloop:	movup#x	temp0, [ptr1 + 0 * VSIZE]	; temp0 = ptr1[+0]
		mulp#x	temp0, temp0				; temp0 *= temp0
		addp#x	temp0, temp0				; temp0 *= 2.0
		movap#x	temp1, [ptr2 - 1 * VSIZE]	; temp1 = ptr2[-1]
		mulp#x	temp1, temp1				; temp1 *= temp1
		addp#x	temp1, temp1				; temp1 *= 2.0
		shufp#x	temp1, temp1, shmask		; reverse elements order
		addp#x	temp0, temp1				; temp0 = temp0 + temp1
		movup#x	[energy], temp0				; energy[0] = temp0
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr2 - PSTEP]				; prefetch next portion of data
	prefetchnta	[energy + PSTEP]			; prefetch next portion of data
		add		ptr1, VSIZE					; ptr1++
		sub		ptr2, VSIZE					; ptr2--
		add		energy, VSIZE				; energy++
		sub		size, VSIZE					; size--
		jnz		.vloop						; do while (size != 0)
;---[End of vector loop]-------------------
		movs#x	temp0, [ptr1 - bytes]		; temp0 = ptr1[-1]
		muls#x	temp0, temp0				; temp0 *= temp0
		movs#x	[energy - bytes], temp0		; energy[-1] = temp0
		ret
.sclr:	sub		size, bytes					; if (--size == 0)
		jz		.skip						;     then skip following code
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [ptr1 + 0 * bytes]	; temp0 = ptr1[+0]
		muls#x	temp0, temp0				; temp0 *= temp0
		adds#x	temp0, temp0				; temp0 *= 2.0
		movs#x	temp1, [ptr2 - 1 * bytes]	; temp1 = ptr2[-1]
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp1, temp1				; temp1 *= 2.0
		adds#x	temp0, temp1				; temp0 = temp0 + temp1
		movs#x	[energy], temp0				; energy[0] = temp0
		add		ptr1, bytes					; ptr1++
		sub		ptr2, bytes					; ptr2--
		add		energy, bytes				; energy++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.skip:	movs#x	temp0, [ptr1]				; temp0 = ptr1[0]
		muls#x	temp0, temp0				; temp0 *= temp0
		movs#x	[energy], temp0				; energy[0] = temp0
.exit:	ret
}
EnergySpectrum_flt32:	ENERGY_SPECTRUM	s
EnergySpectrum_flt64:	ENERGY_SPECTRUM	d

;==============================================================================;
;       Magnitude spectrum                                                     ;
;==============================================================================;
macro	MAGNITUDE_SPECTRUM	x
{
;---[Parameters]---------------------------
mag		equ		rdi							; pointer to magnitude spectrum
spec	equ		rsi							; hartley spectrum
exp		equ		dl							; power of 2
;---[Internal variables]-------------------
shift	equ		cl							; shift value
size	equ		rax							; array size (count of elements)
ptr1	equ		r8							; temporary pointer #1
ptr2	equ		r9							; temporary pointer #2
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
if x eq s
dmask	= dmask_flt32						; data mask
shmask	= 0x1B								; shuffle mask
scale	= 2									; scale value
else if x eq d
dmask	= dmask_flt64						; data mask
shmask	= 0x1								; shuffle mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, scale				; shift = exp + scale
		shl		size, shift					; size = 1 << shift
		lea		ptr1, [spec + bytes]		; ptr1 = spec + 1
		lea		ptr2, [spec + size]			; ptr2 = spec + size
		shr		size, 1						; size >>= 1
	prefetchnta	[ptr1]						; prefetch data
	prefetchnta	[ptr2]						; prefetch data
	prefetchnta	[mag]						; prefetch data
		movs#x	temp0, [spec]				; temp0 = spec[0]
		andp#x	temp0, [dmask]				; temp0 = Abs (temp0)
		movs#x	[mag], temp0				; mag[0] = temp0
		add		mag, bytes					; mag++
		cmp		size, bytes					; if (size == 0)
		jb		.exit						;     then go to exit
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sclr						;     then skip vector code
;---[Vector loop]--------------------------
.vloop:	movup#x	temp0, [ptr1 + 0 * VSIZE]	; temp0 = ptr1[+0]
		mulp#x	temp0, temp0				; temp0 *= temp0
		addp#x	temp0, temp0				; temp0 *= 2.0
		movap#x	temp1, [ptr2 - 1 * VSIZE]	; temp1 = ptr2[-1]
		mulp#x	temp1, temp1				; temp1 *= temp1
		addp#x	temp1, temp1				; temp1 *= 2.0
		shufp#x	temp1, temp1, shmask		; reverse elements order
		addp#x	temp0, temp1				; temp0 = temp0 + temp1
		sqrtp#x	temp0, temp0				; temp0 = Sqrt (temp0)
		movup#x	[mag], temp0				; mag[0] = temp0
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr2 - PSTEP]				; prefetch next portion of data
	prefetchnta	[mag + PSTEP]				; prefetch next portion of data
		add		ptr1, VSIZE					; ptr1++
		sub		ptr2, VSIZE					; ptr2--
		add		mag, VSIZE					; mag++
		sub		size, VSIZE					; size--
		jnz		.vloop						; do while (size != 0)
;---[End of vector loop]-------------------
		movs#x	temp0, [ptr1 - bytes]		; temp0 = ptr1[-1]
		andp#x	temp0, [dmask]				; temp0 = Abs (temp0)
		movs#x	[mag - bytes], temp0		; mag[-1] = temp0
		ret
.sclr:	sub		size, bytes					; if (--size == 0)
		jz		.skip						;     then skip following code
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [ptr1 + 0 * bytes]	; temp0 = ptr1[+0]
		muls#x	temp0, temp0				; temp0 *= temp0
		adds#x	temp0, temp0				; temp0 *= 2.0
		movs#x	temp1, [ptr2 - 1 * bytes]	; temp1 = ptr2[-1]
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp1, temp1				; temp1 *= 2.0
		adds#x	temp0, temp1				; temp0 = temp0 + temp1
		sqrts#x	temp0, temp0				; temp0 = Sqrt (temp0)
		movs#x	[mag], temp0				; mag[0] = temp0
		add		ptr1, bytes					; ptr1++
		sub		ptr2, bytes					; ptr2--
		add		mag, bytes					; mag++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.skip:	movs#x	temp0, [ptr1]				; temp0 = ptr1[0]
		andp#x	temp0, [dmask]				; temp0 = Abs (temp0)
		movs#x	[mag], temp0				; mag[0] = temp0
.exit:	ret
}
MagnitudeSpectrum_flt32:	MAGNITUDE_SPECTRUM	s
MagnitudeSpectrum_flt64:	MAGNITUDE_SPECTRUM	d

;==============================================================================;
;       Real spectrum                                                          ;
;==============================================================================;
macro	REAL_SPECTRUM	angle, treg, x
{
;---[Parameters]---------------------------
mag		equ		rdi							; pointer to magnitude spectrum
phase	equ		rsi							; pointer to phase spectrum
spec	equ		rdx							; hartley spectrum
exp		equ		cl							; power of 2
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
size	equ		rax							; array size (count of elements)
ptr1	equ		r8							; temporary pointer #1
ptr2	equ		r9							; temporary pointer #2
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
zero	equ		xmm2						; 0.0
stack	equ		rsp							; stack pointer
s_mag	equ		stack + 0 * 8				; stack position of "mag" variable
s_phase	equ		stack + 1 * 8				; stack position of "phase" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_ptr1	equ		stack + 3 * 8				; stack position of "ptr1" variable
s_ptr2	equ		stack + 4 * 8				; stack position of "ptr2" variable
if x eq s
AtanS	= Atan2_flt32						; Inverse tangent function
AtanV	= Atan2_flt32v4						; Inverse tangent function
dmask	= dmask_flt32						; data mask
shmask	= 0x1B								; shuffle mask
pival	= PPI_FLT32							; Pi
scale	= 2									; scale value
else if x eq d
AtanS	= Atan2_flt64						; Inverse tangent function
AtanV	= Atan2_flt64v2						; Inverse tangent function
dmask	= dmask_flt64						; data mask
shmask	= 0x1								; shuffle mask
pival	= PPI_FLT64							; Pi
scale	= 3									; scale value
end if
space	= 5 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		size, 1						; size = 1
		add		exp, scale					; exp = exp + scale
		shl		size, exp					; size = 1 << exp
		lea		ptr1, [spec + bytes]		; ptr1 = spec + 1
		lea		ptr2, [spec + size]			; ptr2 = spec + size
		shr		size, 1						; size >>= 1
	prefetchnta	[ptr1]						; prefetch data
	prefetchnta	[ptr2]						; prefetch data
	prefetchnta	[mag]						; prefetch data
	prefetchnta	[phase]						; prefetch data
		xorp#x	zero, zero					; zero = 0
		mov		treg, pival					; treg = Pi
		xor		angle, angle				; angle = 0
		movs#x	temp0, [spec]				; temp0 = spec[0]
		comis#x	temp0, zero					; if (temp0 < 0)
		cmovb	angle, treg					;     angle = Pi
		andp#x	temp0, [dmask]				; temp0 = Abs (temp0)
		movs#x	[mag], temp0				; mag[0] = temp0
		mov		[phase], angle				; phase[0] = angle
		add		mag, bytes					; mag++
		add		phase, bytes				; phase++
		cmp		size, bytes					; if (size == 0)
		jb		.exit						;     then go to exit
		mov		[s_mag], mag				; save "mag" variable into the stack
		mov		[s_phase], phase			; save "phase" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_ptr1], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr2], ptr2				; save "ptr2" variable into the stack
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sclr						;     then skip vector code
;---[Vector loop]--------------------------
.vloop:	movup#x	temp0, [ptr1 + 0 * VSIZE]	; temp0 = ptr1[+0]
		mulp#x	temp0, temp0				; temp0 *= temp0
		addp#x	temp0, temp0				; temp0 *= 2.0
		movap#x	temp1, [ptr2 - 1 * VSIZE]	; temp1 = ptr2[-1]
		mulp#x	temp1, temp1				; temp1 *= temp1
		addp#x	temp1, temp1				; temp1 *= 2.0
		shufp#x	temp1, temp1, shmask		; reverse elements order
		addp#x	temp0, temp1				; temp0 = temp0 + temp1
		sqrtp#x	temp0, temp0				; temp0 = Sqrt (temp0)
		movup#x	[mag], temp0				; mag[0] = temp0
		movap#x	temp0, [ptr2 - 1 * VSIZE]
		shufp#x	temp0, temp0, shmask		; reverse elements order
		movap#x	temp1, temp0
		movup#x	zero, [ptr1 + 0 * VSIZE]
		subp#x	temp0, zero					; temp0 = ptr2[-1] - ptr1[+0]
		addp#x	temp1, zero					; temp1 = ptr2[-1] + ptr1[+0]
		mov		fptr, AtanV
		call	fptr						; temp0 = AtanV (temp0, temp1)
		mov		mag, [s_mag]				; get "mag" variable from the stack
		mov		phase, [s_phase]			; get "phase" variable from the stack
		mov		ptr1, [s_ptr1]				; get "ptr1" variable from the stack
		mov		ptr2, [s_ptr2]				; get "ptr2" variable from the stack
		movup#x	[phase], temp0				; phase[0] = temp0
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr2 - PSTEP]				; prefetch next portion of data
	prefetchnta	[mag + PSTEP]				; prefetch next portion of data
	prefetchnta	[phase + PSTEP]				; prefetch next portion of data
		add		ptr1, VSIZE					; ptr1++
		sub		ptr2, VSIZE					; ptr2--
		add		mag, VSIZE					; mag++
		add		phase, VSIZE				; phase++
		mov		[s_mag], mag				; save "mag" variable into the stack
		mov		[s_phase], phase			; save "phase" variable into the stack
		mov		[s_ptr1], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr2], ptr2				; save "ptr2" variable into the stack
		sub		qword [s_size], VSIZE		; size--
		jnz		.vloop						; do while (size != 0)
;---[End of vector loop]-------------------
		xorp#x	zero, zero					; zero = 0
		mov		treg, pival					; treg = Pi
		xor		angle, angle				; angle = 0
		movs#x	temp0, [ptr1 - bytes]		; temp0 = ptr1[-1]
		comis#x	temp0, zero					; if (temp0 < 0)
		cmovb	angle, treg					;     angle = Pi
		andp#x	temp0, [dmask]				; temp0 = Abs (temp0)
		movs#x	[mag - bytes], temp0		; mag[-1] = temp0
		mov		[phase - bytes], angle		; phase[-1] = angle
		add		stack, space				; restoring back the stack pointer
		ret
.sclr:	sub		qword [s_size], bytes		; if (--size == 0)
		jz		.skip						;     then skip following code
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [ptr1 + 0 * bytes]	; temp0 = ptr1[+0]
		muls#x	temp0, temp0				; temp0 *= temp0
		adds#x	temp0, temp0				; temp0 *= 2.0
		movs#x	temp1, [ptr2 - 1 * bytes]	; temp1 = ptr2[-1]
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp1, temp1				; temp1 *= 2.0
		adds#x	temp0, temp1				; temp0 = temp0 + temp1
		sqrts#x	temp0, temp0				; temp0 = Sqrt (temp0)
		movs#x	[mag], temp0				; mag[0] = temp0
		movs#x	temp0, [ptr2 - 1 * bytes]
		movs#x	temp1, temp0
		movs#x	zero, [ptr1 + 0 * bytes]
		subs#x	temp0, zero					; temp0 = ptr2[-1] - ptr1[+0]
		adds#x	temp1, zero					; temp1 = ptr2[-1] + ptr1[+0]
		mov		fptr, AtanS
		call	fptr						; temp0 = AtanS (temp0, temp1)
		mov		mag, [s_mag]				; get "mag" variable from the stack
		mov		phase, [s_phase]			; get "phase" variable from the stack
		mov		ptr1, [s_ptr1]				; get "ptr1" variable from the stack
		mov		ptr2, [s_ptr2]				; get "ptr2" variable from the stack
		movs#x	[phase], temp0				; phase[0] = temp0
		add		ptr1, bytes					; ptr1++
		sub		ptr2, bytes					; ptr2--
		add		mag, bytes					; mag++
		add		phase, bytes				; phase++
		mov		[s_mag], mag				; save "mag" variable into the stack
		mov		[s_phase], phase			; save "phase" variable into the stack
		mov		[s_ptr1], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr2], ptr2				; save "ptr2" variable into the stack
		sub		qword [s_size], bytes		; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.skip:	xorp#x	zero, zero					; zero = 0
		mov		treg, pival					; treg = Pi
		xor		angle, angle				; angle = 0
		movs#x	temp0, [ptr1]				; temp0 = ptr1[0]
		comis#x	temp0, zero					; if (temp0 < 0)
		cmovb	angle, treg					;     angle = Pi
		andp#x	temp0, [dmask]				; temp0 = Abs (temp0)
		movs#x	[mag], temp0				; mag[0] = temp0
		mov		[phase], angle				; phase[0] = angle
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
RealSpectrum_flt32:	REAL_SPECTRUM	r10d, r11d, s
RealSpectrum_flt64:	REAL_SPECTRUM	r10, r11, d

;******************************************************************************;
;       Signal manipulations                                                   ;
;******************************************************************************;

;==============================================================================;
;       Signal reflection                                                      ;
;==============================================================================;
macro	REFLECTION	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
exp		equ		sil							; power of 2
;---[Internal variables]-------------------
shift	equ		cl							; shift value
size	equ		rax							; array size (count of elements)
ptr1	equ		r8							; temporary pointer #1
ptr2	equ		r9							; temporary pointer #2
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
if x eq s
shmask	= 0x1B								; shuffle mask
scale	= 2									; scale value
else if x eq d
shmask	= 0x1								; shuffle mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, scale				; shift = exp + scale
		shl		size, shift					; size = 1 << shift
		lea		ptr1, [array + bytes]		; ptr1 = array + 1
		lea		ptr2, [array + size]		; ptr2 = array + size
		shr		size, 1						; size >>= 1
	prefetchnta	[ptr1]						; prefetch data
	prefetchnta	[ptr2]						; prefetch data
		cmp		size, bytes					; if (size == 0)
		jb		.exit						;     then go to exit
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sclr						;     then skip vector code
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movup#x	temp1, [ptr1 + (%-1)*VSIZE]	; temp1 = ptr1[i]
		shufp#x	temp1, temp1, shmask		; reverse elements order
		movap#x	temp0, [ptr2 - (%-0)*VSIZE]	; temp0 = ptr2[i]
		shufp#x	temp0, temp0, shmask		; reverse elements order
		movup#x	[ptr1 + (%-1)*VSIZE], temp0	; ptr1[i] = temp0
		movap#x	[ptr2 - (%-0)*VSIZE], temp1	; ptr2[i] = temp1
		sub		size, VSIZE					; size--
		jz		.brk						; if (size == 0), then break the loop
end repeat
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr2 - PSTEP]				; prefetch next portion of data
		add		ptr1, CLINE					; ptr1 += CLINE
		sub		ptr2, CLINE					; ptr2 -= CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	ret
.sclr:	sub		size, bytes					; if (--size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp1, [ptr1 + 0 * bytes]	; temp1 = ptr1[+0]
		movs#x	temp0, [ptr2 - 1 * bytes]	; temp0 = ptr2[-1]
		movs#x	[ptr1 + 0 * bytes], temp0	; ptr1[+0] = temp0
		movs#x	[ptr2 - 1 * bytes], temp1	; ptr2[-1] = temp1
		add		ptr1, bytes					; ptr1++
		sub		ptr2, bytes					; ptr2--
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.exit:	ret
}
Reflection_flt32:	REFLECTION	s
Reflection_flt64:	REFLECTION	d

;==============================================================================;
;       Signal derivative                                                      ;
;==============================================================================;
macro	DERIVATIVE	anti, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
exp		equ		sil							; power of 2
svalue	equ		xmm0						; shift value
;---[Internal variables]-------------------
shift	equ		cl							; shift value
size	equ		rax							; array size (count of elements)
treg	equ		rsi							; temporary register
ptr1	equ		r8							; temporary pointer #1
ptr2	equ		r9							; temporary pointer #2
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
value1	equ		xmm4						; angle value #1
value2	equ		xmm5						; angle value #2
ascale	equ		xmm6						; scale value
stack	equ		rsp							; stack pointer
s_angle	equ		stack - 3 * 8				; stack position of "angle" variable
if x eq s
shmask	= 0x1B								; shuffle mask
smask	= smask_flt32						; sign mask
oneval	= pone_flt32						; +1.0
pival	= mpi_flt32							; -Pi
angle	= angle_flt32						; pointer to initial angle vector
step	= step_flt32						; pointer to step vector
scale	= 2									; scale value
else if x eq d
shmask	= 0x1								; shuffle mask
smask	= smask_flt64						; sign mask
oneval	= pone_flt64						; +1.0
pival	= mpi_flt64							; -Pi
angle	= angle_flt64						; pointer to initial angle vector
step	= step_flt64						; pointer to step vector
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, scale				; shift = exp + scale
		shl		size, shift					; size = 1 << shift
		lea		ptr1, [array + bytes]		; ptr1 = array + 1
		lea		ptr2, [array + size]		; ptr2 = array + size
		shr		size, 1						; size >>= 1
	prefetchnta	[ptr1]						; prefetch data
	prefetchnta	[ptr2]						; prefetch data
		movap#x	ascale, [angle]				; ascale = angle[0]
		movap#x	[s_angle], ascale			; init angle vector
		mov		treg, size
		shr		treg, scale - 1
		movap#x	ascale, [oneval]			; ascale = 1.0
	cvtsi2s#x	temp0, treg
		divs#x	ascale, temp0				; ascale = 1.0 / size
		shufp#x	ascale, ascale, 0x0			; duplicate value through the entire register
if ~anti
		xorp#x	svalue, svalue				; svalue = 0.0
end if
		movs#x	[array], svalue				; array[0] = svalue
		cmp		size, bytes					; if (size == 0)
		jb		.exit						;     then go to exit
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sclr						;     then skip vector code
		add		array, size					; array += size
		movs#x	temp2, [array]				; temp2 = array[0]
if anti
		divs#x	temp2, [pival]				; temp2 /= -Pi
else
		muls#x	temp2, [pival]				; temp2 *= -Pi
end if
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movap#x	value1, [s_angle]			; value1 = angle[0]
		movap#x	value2, [smask]				; value2 = smask
		movap#x	temp1, [step]				; temp1 = step
		addp#x	temp1, value1				; temp1 = angle[0] + step
		movap#x	[s_angle], temp1			; angle[0] = temp1
		mulp#x	value1, ascale				; value1 = +angle[0] * ascale
		orp#x	value2, value1				; value2 = -angle[0] * ascale
if anti
		movup#x	temp1, [ptr1 + (%-1)*VSIZE]	; temp1 = ptr1[i]
		divp#x	temp1, value2				; temp1 /= value2
		movap#x	temp0, [ptr2 - (%-0)*VSIZE]	; temp0 = ptr2[i]
		shufp#x	temp0, temp0, shmask		; reverse elements order
		divp#x	temp0, value1				; temp0 /= value1
else
		movup#x	temp1, [ptr1 + (%-1)*VSIZE]	; temp1 = ptr1[i]
		mulp#x	temp1, value1				; temp1 *= value1
		movap#x	temp0, [ptr2 - (%-0)*VSIZE]	; temp0 = ptr2[i]
		shufp#x	temp0, temp0, shmask		; reverse elements order
		mulp#x	temp0, value2				; temp0 *= value2
end if
		movup#x	[ptr1 + (%-1)*VSIZE], temp0	; ptr1[i] = temp0
		shufp#x	temp1, temp1, shmask		; reverse elements order
		movap#x	[ptr2 - (%-0)*VSIZE], temp1	; ptr2[i] = temp1
		sub		size, VSIZE					; size--
		jz		.brk						; if (size == 0), then break the loop
end repeat
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr2 - PSTEP]				; prefetch next portion of data
		add		ptr1, CLINE					; ptr1 += CLINE
		sub		ptr2, CLINE					; ptr2 -= CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	movs#x	[array], temp2				; array[0] = temp2
		ret
.sclr:	sub		size, bytes					; if (--size == 0)
		jz		.skip						;     then skip following code
;---[Scalar loop]--------------------------
.sloop:	movs#x	value1, [s_angle]			; value1 = angle[0]
		movs#x	value2, [smask]				; value2 = smask
		movs#x	temp1, [angle]				; temp1 = step
		adds#x	temp1, value1				; temp1 = angle[0] + step
		movs#x	[s_angle], temp1			; angle[0] = temp1
		muls#x	value1, ascale				; value1 = +angle[0] * ascale
		orp#x	value2, value1				; value2 = -angle[0] * ascale
if anti
		movs#x	temp1, [ptr1 + 0 * bytes]	; temp1 = ptr1[+0]
		divs#x	temp1, value2				; temp1 /= value2
		movs#x	temp0, [ptr2 - 1 * bytes]	; temp0 = ptr2[-1]
		divs#x	temp0, value1				; temp0 /= value1
else
		movs#x	temp1, [ptr1 + 0 * bytes]	; temp1 = ptr1[+0]
		muls#x	temp1, value1				; temp1 *= value1
		movs#x	temp0, [ptr2 - 1 * bytes]	; temp0 = ptr2[-1]
		muls#x	temp0, value2				; temp0 *= value2
end if
		movs#x	[ptr1 + 0 * bytes], temp0	; ptr1[+0] = temp0
		movs#x	[ptr2 - 1 * bytes], temp1	; ptr2[-1] = temp1
		add		ptr1, bytes					; ptr1++
		sub		ptr2, bytes					; ptr2--
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.skip:	movs#x	temp0, [ptr1]				; temp0 = ptr1[0]
if anti
		divs#x	temp0, [pival]				; temp0 /= -Pi
else
		muls#x	temp0, [pival]				; temp0 *= -Pi
end if
		movs#x	[ptr1], temp0				; ptr1[0] = temp0
.exit:	ret
}
Derivative_flt32:		DERIVATIVE	0, s
Derivative_flt64:		DERIVATIVE	0, d

;==============================================================================;
;       Signal antiderivative                                                  ;
;==============================================================================;
AntiDerivative_flt32:	DERIVATIVE	1, s
AntiDerivative_flt64:	DERIVATIVE	1, d

;==============================================================================;
;       Signal time and frequency shift                                        ;
;==============================================================================;
macro	SHIFT	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
exp		equ		sil							; power of 2
svalue	equ		xmm0						; shift value
;---[Internal variables]-------------------
shift	equ		cl							; shift value
size	equ		rax							; array size (count of elements)
fptr	equ		rax							; pointer to call external function
treg	equ		rsi							; temporary register
ptr1	equ		r8							; temporary pointer #1
ptr2	equ		r9							; temporary pointer #2
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
temp3	equ		xmm4						; temporary register #4
ascale	equ		xmm5						; scale value
stack	equ		rsp							; stack pointer
s_angle	equ		stack + 0 * 8				; stack position of "angle" variable
s_scale	equ		stack + 2 * 8				; stack position of "ascale" variable
s_cos	equ		stack + 4 * 8				; stack position of "cos" variable
s_sin	equ		stack + 6 * 8				; stack position of "sin" variable
s_sval	equ		stack + 8 * 8				; stack position of "svalue" variable
s_size	equ		stack + 9 * 8				; stack position of "size" variable
s_ptr1	equ		stack + 10 * 8				; stack position of "ptr1" variable
s_ptr2	equ		stack + 11 * 8				; stack position of "ptr2" variable
s_array	equ		stack + 12 * 8				; stack position of "array" variable
s_res	equ		stack + 13 * 8				; stack position of "result" variable
if x eq s
SinCosS	= SinCos_flt32						; Sine and cosine function
SinCosV	= SinCos_flt32v4					; Sine and cosine function
shmask	= 0x1B								; shuffle mask
pival	= ppi_flt32							; +Pi
angle	= angle_flt32						; pointer to initial angle vector
step	= step_flt32						; pointer to step vector
scale	= 2									; scale value
else if x eq d
SinCosS	= SinCos_flt64						; Sine and cosine function
SinCosV	= SinCos_flt64v2					; Sine and cosine function
shmask	= 0x1								; shuffle mask
pival	= ppi_flt64							; +Pi
angle	= angle_flt64						; pointer to initial angle vector
step	= step_flt64						; pointer to step vector
scale	= 3									; scale value
end if
space	= 15 * 8							; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, scale				; shift = exp + scale
		shl		size, shift					; size = 1 << shift
		lea		ptr1, [array + bytes]		; ptr1 = array + 1
		lea		ptr2, [array + size]		; ptr2 = array + size
		shr		size, 1						; size >>= 1
	prefetchnta	[ptr1]						; prefetch data
	prefetchnta	[ptr2]						; prefetch data
		movap#x	ascale, [angle]				; ascale = angle[0]
		movap#x	[s_angle], ascale			; init angle vector
		mov		treg, size
		shr		treg, scale - 1
		movap#x	ascale, svalue				; ascale = svalue
	cvtsi2s#x	temp0, treg
		divs#x	ascale, temp0				; ascale = svalue / size
		shufp#x	ascale, ascale, 0x0			; duplicate value through the entire register
		cmp		size, bytes					; if (size == 0)
		jb		.exit						;     then go to exit
		movap#x	[s_scale], ascale			; save "ascale" variable into the stack
		movs#x	[s_sval], svalue			; save "svalue" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_ptr1], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr2], ptr2				; save "ptr2" variable into the stack
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sclr						;     then skip vector code
		add		array, size					; array += size
		mov		[s_array], array			; save "array" variable into the stack
		muls#x	svalue, [pival]				; svalue *= Pi
		lea		param1, [s_sin]
		lea		param2, [s_cos]
		mov		fptr, SinCosS
		call	fptr						; call SinCosS (&sin, &cos, svalue)
		mov		array, [s_array]			; get "array" variable from the stack
		movs#x	temp0, [array]				; temp0 = array[0]
		movs#x	svalue, [s_cos]
		adds#x	svalue, [s_sin]				; svalue = cos + sin
		muls#x	temp0, svalue				; temp0 *= cos + sin
		movs#x	[s_res], temp0				; save "result" variable into the stack
;---[Vector loop]--------------------------
.vloop:	movap#x	svalue, [s_angle]			; svalue = angle[0]
		movap#x	temp1, [step]				; temp1 = step
		addp#x	temp1, svalue				; temp1 = angle[0] + step
		movap#x	[s_angle], temp1			; angle[0] = temp1
		mulp#x	svalue, [s_scale]			; svalue = angle[0] * ascale
		lea		param1, [s_sin]
		lea		param2, [s_cos]
		mov		fptr, SinCosV
		call	fptr						; call SinCosV (&sin, &cos, svalue)
		mov		ptr1, [s_ptr1]				; get "ptr1" variable from the stack
		mov		ptr2, [s_ptr2]				; get "ptr2" variable from the stack
		movup#x	temp0, [ptr1 + 0 * VSIZE]	; temp0 = ptr1[0]
		movap#x	temp2, temp0				; temp2 = temp0
		movap#x	temp1, [ptr2 - 1 * VSIZE]	; temp1 = ptr2[-1]
		shufp#x	temp1, temp1, shmask		; reverse elements order
		movap#x	temp3, temp1				; temp3 = temp1
		mulp#x	temp0, [s_cos]				; temp0 *= cos
		mulp#x	temp3, [s_sin]				; temp3 *= sin
		addp#x	temp0, temp3				; temp0 += temp3
		mulp#x	temp1, [s_cos]				; temp1 *= cos
		mulp#x	temp2, [s_sin]				; temp2 *= sin
		subp#x	temp1, temp2				; temp1 -= temp2
		movup#x	[ptr1 + 0 * VSIZE], temp0	; ptr1[0] = temp0
		shufp#x	temp1, temp1, shmask		; reverse elements order
		movap#x	[ptr2 - 1 * VSIZE], temp1	; ptr2[-1] = temp1
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr2 - PSTEP]				; prefetch next portion of data
		add		ptr1, VSIZE					; ptr1 += VSIZE
		sub		ptr2, VSIZE					; ptr2 -= VSIZE
		mov		[s_ptr1], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr2], ptr2				; save "ptr2" variable into the stack
		sub		qword [s_size], VSIZE		; size--
		jnz		.vloop						; do while (size != 0)
;---[End of vector loop]-------------------
		mov		array, [s_array]			; get "array" variable from the stack
		movs#x	svalue, [s_res]				; get "result" variable from the stack
		movs#x	[array], svalue				; array[0] = svalue
		add		stack, space				; restoring back the stack pointer
		ret
.sclr:	sub		qword [s_size], bytes		; if (--size == 0)
		jz		.skip						;     then skip following code
;---[Scalar loop]--------------------------
.sloop:	movs#x	svalue, [s_angle]			; svalue = angle[0]
		movs#x	temp1, [angle]				; temp1 = step
		adds#x	temp1, svalue				; temp1 = angle[0] + step
		movs#x	[s_angle], temp1			; angle[0] = temp1
		muls#x	svalue, [s_scale]			; svalue = angle[0] * ascale
		lea		param1, [s_sin]
		lea		param2, [s_cos]
		mov		fptr, SinCosS
		call	fptr						; call SinCosS (&sin, &cos, svalue)
		mov		ptr1, [s_ptr1]				; get "ptr1" variable from the stack
		mov		ptr2, [s_ptr2]				; get "ptr2" variable from the stack
		movs#x	temp0, [ptr1 + 0 * bytes]	; temp0 = ptr1[+0]
		movs#x	temp2, temp0				; temp2 = temp0
		movs#x	temp1, [ptr2 - 1 * bytes]	; temp1 = ptr2[-1]
		movs#x	temp3, temp1				; temp3 = temp1
		muls#x	temp0, [s_cos]				; temp0 *= cos
		muls#x	temp3, [s_sin]				; temp3 *= sin
		adds#x	temp0, temp3				; temp0 += temp3
		muls#x	temp1, [s_cos]				; temp1 *= cos
		muls#x	temp2, [s_sin]				; temp2 *= sin
		subs#x	temp1, temp2				; temp1 -= temp2
		movs#x	[ptr1 + 0 * bytes], temp0	; ptr1[+0] = temp0
		movs#x	[ptr2 - 1 * bytes], temp1	; ptr2[-1] = temp1
		add		ptr1, bytes					; ptr1++
		sub		ptr2, bytes					; ptr2--
		mov		[s_ptr1], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr2], ptr2				; save "ptr2" variable into the stack
		sub		qword [s_size], bytes		; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.skip:	movs#x	svalue, [s_sval]			; get "svalue" variable from the stack
		muls#x	svalue, [pival]				; svalue *= Pi
		lea		param1, [s_sin]
		lea		param2, [s_cos]
		mov		fptr, SinCosS
		call	fptr						; call SinCosS (&sin, &cos, svalue)
		mov		ptr1, [s_ptr1]				; get "ptr1" variable from the stack
		movs#x	temp0, [ptr1]				; temp0 = ptr1[0]
		movs#x	svalue, [s_cos]
		adds#x	svalue, [s_sin]				; svalue = cos + sin
		muls#x	temp0, svalue				; temp0 *= cos + sin
		movs#x	[ptr1], temp0				; ptr1[0] = temp0
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
Shift_flt32:	SHIFT	s
Shift_flt64:	SHIFT	d

;==============================================================================;
;       Magnitude scaling                                                      ;
;==============================================================================;
macro	SCALE	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
exp		equ		sil							; power of 2
value	equ		xmm0						; scale value
;---[Internal variables]-------------------
shift	equ		cl							; shift value
size	equ		rax							; array size (count of elements)
temp	equ		xmm1						; temporary register
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, scale				; shift = exp + scale
		shl		size, shift					; size = 1 << shift
	prefetchnta	[array]						; prefetch data
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sloop						;     then skip vector code
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movap#x	temp, [array + (%-1)*VSIZE]	; temp = array[i]
		mulp#x	temp, value					; do operation to temp value
		movap#x	[array + (%-1)*VSIZE], temp	; array[i] = temp
		sub		size, VSIZE					; size--
		jz		.exit						; if (size == 0), then go to exit
end repeat
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, CLINE				; array += CLINE
		jmp		.vloop						; do while (true)
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		muls#x	temp, value					; do operation to temp value
		movs#x	[array], temp				; array[0] = temp
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.exit:	ret
}
Scale_flt32:	SCALE	s
Scale_flt64:	SCALE	d

;==============================================================================;
;       Autocorrelation of signal                                              ;
;==============================================================================;
macro	AUTOCORRELATION	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
exp		equ		sil							; power of 2
value	equ		xmm0						; scale value
;---[Internal variables]-------------------
shift	equ		cl							; shift value
size	equ		rax							; array size (count of elements)
treg	equ		rsi							; temporary register
ptr1	equ		r8							; temporary pointer #1
ptr2	equ		r9							; temporary pointer #2
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
half	equ		xmm4						; 0.5
if x eq s
shmask	= 0x1B								; shuffle mask
halfval	= phalf_flt32						; +0.5
scale	= 2									; scale value
else if x eq d
shmask	= 0x1								; shuffle mask
halfval	= phalf_flt64						; +0.5
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, scale				; shift = exp + scale
		shl		size, shift					; size = 1 << shift
		lea		ptr1, [array + bytes]		; ptr1 = array + 1
		lea		ptr2, [array + size]		; ptr2 = array + size
		shr		size, 1						; size >>= 1
	prefetchnta	[ptr1]						; prefetch data
	prefetchnta	[ptr2]						; prefetch data
		mov		treg, size
		shr		treg, scale - 1
		movap#x	half, [halfval]				; half = 0.5
	cvtsi2s#x	temp0, treg
		muls#x	value, temp0				; value *= size
		muls#x	half, value					; half = 0.5 * value
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		shufp#x	half, half, 0x0				; duplicate value through the entire register
		movs#x	temp0, [array]				; temp0 = array[0]
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp0, value				; temp0 *= value
		movs#x	[array], temp0				; array[0] = temp0
		cmp		size, bytes					; if (size == 0)
		jb		.exit						;     then go to exit
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sclr						;     then skip vector code
		add		array, size					; array += size
		movs#x	temp2, [array]				; temp2 = array[0]
		muls#x	temp2, temp2				; temp2 *= temp2
		muls#x	temp2, value				; temp2 *= value
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movup#x	temp0, [ptr1 + (%-1)*VSIZE]	; temp0 = ptr1[i]
		mulp#x	temp0, temp0				; temp0 *= temp0
		movap#x	temp1, [ptr2 - (%-0)*VSIZE]	; temp1 = ptr2[i]
		mulp#x	temp1, temp1				; temp1 *= temp1
		shufp#x	temp1, temp1, shmask		; reverse elements order
		addp#x	temp0, temp1				; temp0 = temp0 + temp1
		mulp#x	temp0, half					; temp0 *= half
		movup#x	[ptr1 + (%-1)*VSIZE], temp0	; ptr1[i] = temp0
		shufp#x	temp0, temp0, shmask		; reverse elements order
		movap#x	[ptr2 - (%-0)*VSIZE], temp0	; ptr2[i] = temp0
		sub		size, VSIZE					; size--
		jz		.brk						; if (size == 0), then break the loop
end repeat
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr2 - PSTEP]				; prefetch next portion of data
		add		ptr1, CLINE					; ptr1 += CLINE
		sub		ptr2, CLINE					; ptr2 -= CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	movs#x	[array], temp2				; array[0] = temp2
		ret
.sclr:	sub		size, bytes					; if (--size == 0)
		jz		.skip						;     then skip following code
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [ptr1 + 0 * bytes]	; temp0 = ptr1[+0]
		muls#x	temp0, temp0				; temp0 *= temp0
		movs#x	temp1, [ptr2 - 1 * bytes]	; temp1 = ptr2[-1]
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 = temp0 + temp1
		muls#x	temp0, half					; temp0 *= half
		movs#x	[ptr1 + 0 * bytes], temp0	; ptr1[+0] = temp0
		movs#x	[ptr2 - 1 * bytes], temp0	; ptr2[-1] = temp0
		add		ptr1, bytes					; ptr1++
		sub		ptr2, bytes					; ptr2--
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.skip:	movs#x	temp0, [ptr1]				; temp0 = ptr1[0]
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp0, value				; temp0 *= value
		movs#x	[ptr1], temp0				; ptr1[0] = temp0
.exit:	ret
}
AutoCorrelation_flt32:	AUTOCORRELATION	s
AutoCorrelation_flt64:	AUTOCORRELATION	d

;==============================================================================;
;       Cross-correlation of signals                                           ;
;==============================================================================;
macro	CROSSCORRELATION	conv, x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
exp		equ		dl							; power of 2
value	equ		xmm0						; scale value
;---[Internal variables]-------------------
shift	equ		cl							; shift value
size	equ		rax							; array size (count of elements)
treg	equ		rdx							; temporary register
ptr1	equ		r8							; temporary pointer #1
ptr2	equ		r9							; temporary pointer #2
ptr3	equ		r10							; temporary pointer #3
ptr4	equ		r11							; temporary pointer #4
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
temp3	equ		xmm4						; temporary register #4
temp4	equ		xmm5						; temporary register #5
re		equ		xmm6						; real part
im		equ		xmm7						; imaginary part
half	equ		xmm8						; 0.5
if x eq s
shmask	= 0x1B								; shuffle mask
halfval	= phalf_flt32						; +0.5
scale	= 2									; scale value
else if x eq d
shmask	= 0x1								; shuffle mask
halfval	= phalf_flt64						; +0.5
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, scale				; shift = exp + scale
		shl		size, shift					; size = 1 << shift
		lea		ptr1, [target + bytes]		; ptr1 = target + 1
		lea		ptr2, [target + size]		; ptr2 = target + size
		lea		ptr3, [source + bytes]		; ptr3 = source + 1
		lea		ptr4, [source + size]		; ptr4 = source + size
		shr		size, 1						; size >>= 1
	prefetchnta	[ptr1]						; prefetch data
	prefetchnta	[ptr2]						; prefetch data
	prefetchnta	[ptr3]						; prefetch data
	prefetchnta	[ptr4]						; prefetch data
		mov		treg, size
		shr		treg, scale - 1
		movap#x	half, [halfval]				; half = 0.5
	cvtsi2s#x	temp0, treg
		muls#x	value, temp0				; value *= size
		muls#x	half, value					; half = 0.5 * value
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		shufp#x	half, half, 0x0				; duplicate value through the entire register
		movs#x	temp0, [target]				; temp0 = target[0]
		muls#x	temp0, [source]				; temp0 *= source[0]
		muls#x	temp0, value				; temp0 *= value
		movs#x	[target], temp0				; target[0] = temp0
		cmp		size, bytes					; if (size == 0)
		jb		.exit						;     then go to exit
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sclr						;     then skip vector code
		add		target, size				; target += size
		movs#x	temp4, [target]				; temp4 = target[0]
		muls#x	temp4, [source + size]		; temp4 *= source[size]
		muls#x	temp4, value				; temp4 *= value
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movup#x	re, [ptr3 + (%-1)*VSIZE]	; re = ptr3[i]
		movap#x	im, re						; im = re
		movap#x	temp2, [ptr4 - (%-0)*VSIZE]	; temp2 = ptr4[i]
		shufp#x	temp2, temp2, shmask		; reverse elements order
		addp#x	re, temp2					; re += temp2
		mulp#x	re, half					; re *= half
		subp#x	im, temp2					; im -= temp2
		mulp#x	im, half					; im *= half
if conv
		movup#x	temp0, [ptr1 + (%-1)*VSIZE]	; temp0 = ptr1[i]
		movap#x	temp2, temp0				; temp2 = temp0
		movap#x	temp1, [ptr2 - (%-0)*VSIZE]	; temp1 = ptr2[i]
		shufp#x	temp1, temp1, shmask		; reverse elements order
		movap#x	temp3, temp1				; temp3 = temp1
else
		movap#x	temp0, [ptr2 - (%-0)*VSIZE]	; temp0 = ptr2[i]
		shufp#x	temp0, temp0, shmask		; reverse elements order
		movap#x	temp2, temp0				; temp2 = temp0
		movup#x	temp1, [ptr1 + (%-1)*VSIZE]	; temp1 = ptr1[i]
		movap#x	temp3, temp1				; temp3 = temp1
end if
		mulp#x	temp0, re					; temp0 *= re
		mulp#x	temp3, im					; temp3 *= im
		addp#x	temp0, temp3				; temp0 += temp3
		mulp#x	temp1, re					; temp1 *= re
		mulp#x	temp2, im					; temp2 *= im
		subp#x	temp1, temp2				; temp1 -= temp2
		movup#x	[ptr1 + (%-1)*VSIZE], temp0	; ptr1[i] = temp0
		shufp#x	temp1, temp1, shmask		; reverse elements order
		movap#x	[ptr2 - (%-0)*VSIZE], temp1	; ptr2[i] = temp1
		sub		size, VSIZE					; size--
		jz		.brk						; if (size == 0), then break the loop
end repeat
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr2 - PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr3 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr4 - PSTEP]				; prefetch next portion of data
		add		ptr1, CLINE					; ptr1 += CLINE
		sub		ptr2, CLINE					; ptr2 -= CLINE
		add		ptr3, CLINE					; ptr3 += CLINE
		sub		ptr4, CLINE					; ptr4 -= CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	movs#x	[target], temp4				; target[0] = temp4
		ret
.sclr:	sub		size, bytes					; if (--size == 0)
		jz		.skip						;     then skip following code
;---[Scalar loop]--------------------------
.sloop:	movs#x	re, [ptr3 + 0 * bytes]		; re = ptr3[+0]
		movs#x	im, re						; im = re
		movs#x	temp2, [ptr4 - 1 * bytes]	; temp2 = ptr4[-1]
		adds#x	re, temp2					; re += temp2
		muls#x	re, half					; re *= half
		subs#x	im, temp2					; im -= temp2
		muls#x	im, half					; im *= half
if conv
		movs#x	temp0, [ptr1 + 0 * bytes]	; temp0 = ptr1[+0]
		movs#x	temp2, temp0				; temp2 = temp0
		movs#x	temp1, [ptr2 - 1 * bytes]	; temp1 = ptr2[-1]
		movs#x	temp3, temp1				; temp3 = temp1
else
		movs#x	temp0, [ptr2 - 1 * bytes]	; temp0 = ptr2[-1]
		movs#x	temp2, temp0				; temp2 = temp0
		movs#x	temp1, [ptr1 + 0 * bytes]	; temp1 = ptr1[+0]
		movs#x	temp3, temp1				; temp3 = temp1
end if
		muls#x	temp0, re					; temp0 *= re
		muls#x	temp3, im					; temp3 *= im
		adds#x	temp0, temp3				; temp0 += temp3
		muls#x	temp1, re					; temp1 *= re
		muls#x	temp2, im					; temp2 *= im
		subs#x	temp1, temp2				; temp1 -= temp2
		movs#x	[ptr1 + 0 * bytes], temp0	; ptr1[+0] = temp0
		movs#x	[ptr2 - 1 * bytes], temp1	; ptr2[-1] = temp1
		add		ptr1, bytes					; ptr1++
		sub		ptr2, bytes					; ptr2--
		add		ptr3, bytes					; ptr3++
		sub		ptr4, bytes					; ptr4--
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.skip:	movs#x	temp0, [ptr1]				; temp0 = ptr1[0]
		muls#x	temp0, [ptr3]				; temp0 *= ptr3[0]
		muls#x	temp0, value				; temp0 *= value
		movs#x	[ptr1], temp0				; ptr1[0] = temp0
.exit:	ret
}
CrossCorrelation_flt32:	CROSSCORRELATION	0, s
CrossCorrelation_flt64:	CROSSCORRELATION	0, d

;==============================================================================;
;       Convolution of signals                                                 ;
;==============================================================================;
Convolution_flt32:		CROSSCORRELATION	1, s
Convolution_flt64:		CROSSCORRELATION	1, d

;==============================================================================;
;       Mixing signals                                                         ;
;==============================================================================;
macro	MIX	x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
exp		equ		dl							; power of 2
tvalue	equ		xmm0						; scale value for target array
svalue	equ		xmm1						; scale value for source array
;---[Internal variables]-------------------
shift	equ		cl							; shift value
size	equ		rax							; array size (count of elements)
temp0	equ		xmm2						; temporary register #1
temp1	equ		xmm3						; temporary register #2
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		size, 1						; size = 1
		mov		shift, exp
		add		shift, scale				; shift = exp + scale
		shl		size, shift					; size = 1 << shift
	prefetchnta	[target]					; prefetch data
	prefetchnta	[source]					; prefetch data
		shufp#x	tvalue, tvalue, 0x0			; duplicate value through the entire register
		shufp#x	svalue, svalue, 0x0			; duplicate value through the entire register
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sloop						;     then skip vector code
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movap#x	temp0, [target+(%-1)*VSIZE]	; temp0 = target[i]
		mulp#x	temp0, tvalue				; temp0 *= tvalue
		movap#x	temp1, [source+(%-1)*VSIZE]	; temp1 = source[i]
		mulp#x	temp1, svalue				; temp1 *= svalue
		addp#x	temp0, temp1				; temp0 += temp1
		movap#x	[target+(%-1)*VSIZE], temp0	; target[i] = temp0
		sub		size, VSIZE					; size--
		jz		.exit						; if (size == 0), then go to exit
end repeat
	prefetchnta	[target + PSTEP]			; prefetch next portion of data
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		add		target, CLINE				; target += CLINE
		add		source, CLINE				; source += CLINE
		jmp		.vloop						; do while (true)
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [target]				; temp0 = target[0]
		muls#x	temp0, tvalue				; temp0 *= tvalue
		movs#x	temp1, [source]				; temp1 = source[0]
		muls#x	temp1, svalue				; temp1 *= svalue
		adds#x	temp0, temp1				; temp0 += temp1
		movs#x	[target], temp0				; target[0] = temp0
		add		target, bytes				; target++
		add		source, bytes				; source++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.exit:	ret
}
Mix_flt32:	MIX	s
Mix_flt64:	MIX	d

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

;******************************************************************************;
;       Initial index vector for elements reordering                           ;
;******************************************************************************;
index			dq	0, 1						; Initial index vector
istep			dq	2, 2						; Step for index increment

;******************************************************************************;
;       Sign mask to process neighbor elements                                 ;
;******************************************************************************;
mask_flt32		dd	0x00000000					; sign bit = 0
				dd	0x80000000					; sign bit = 1
				dd	0x00000000					; sign bit = 0
				dd	0x80000000					; sign bit = 1

;******************************************************************************;
;       flt32_t consts                                                         ;
;******************************************************************************;
align 16
dmask_flt32		dd	4 dup (DMASK_FLT32)			; Data mask
smask_flt32		dd	4 dup (SMASK_FLT32)			; Sign mask
pone_flt32		dd	4 dup (PONE_FLT32)			; +1.0
phalf_flt32		dd	4 dup (PHALF_FLT32)			; +0.5
ppi_flt32		dd	4 dup (PPI_FLT32)			; +Pi
mpi_flt32		dd	4 dup (MPI_FLT32)			; -Pi
sqrt_flt32		dd	4 dup (SQRT12_FLT32)		; 1 / Sqrt (2)
step_flt32		dd	4 dup (0x41C90FDB)			; 8 * Pi

;******************************************************************************;
;       flt64_t consts                                                         ;
;******************************************************************************;
align 16
dmask_flt64		dq	2 dup (DMASK_FLT64)			; Data mask
smask_flt64		dq	2 dup (SMASK_FLT64)			; Sign mask
pone_flt64		dq	2 dup (PONE_FLT64)			; +1.0
phalf_flt64		dq	2 dup (PHALF_FLT64)			; +0.5
ppi_flt64		dq	2 dup (PPI_FLT64)			; +Pi
mpi_flt64		dq	2 dup (MPI_FLT64)			; -Pi
sqrt_flt64		dq	2 dup (SQRT12_FLT64)		; 1 / Sqrt (2)
step_flt64		dq	2 dup (0x402921FB54442D18)	; 4 * Pi

;******************************************************************************;
;       Initial angle values for sine and cosine function                      ;
;******************************************************************************;
align 16
angle_flt32		dd	0x40C90FDB					; 2 * Pi
				dd	0x41490FDB					; 4 * Pi
				dd	0x4196CBE4					; 6 * Pi
				dd	0x41C90FDB					; 8 * Pi

;******************************************************************************;
;       Sine values for flt32_t type                                           ;
;******************************************************************************;
align 16
sin16_flt32		dd	0x3EC3EF15					; Sin (2 * Pi / 16)
				dd	0x3F3504F3					; Sin (4 * Pi / 16)

align 16
sin32_flt32		dd	0x3E47C5C2					; Sin (2 * Pi / 32)
				dd	0x3EC3EF15					; Sin (4 * Pi / 32)
				dd	0x3F0E39DA					; Sin (6 * Pi / 32)
				dd	0x3F3504F3					; Sin (8 * Pi / 32)

;******************************************************************************;
;       Cosine values for flt32_t type                                         ;
;******************************************************************************;
align 16
cos16_flt32		dd	0x3F6C835E					; Cos (2 * Pi / 16)
				dd	0x3F3504F3					; Cos (4 * Pi / 16)

align 16
cos32_flt32		dd	0x3F7B14BE					; Cos (2 * Pi / 32)
				dd	0x3F6C835E					; Cos (4 * Pi / 32)
				dd	0x3F54DB31					; Cos (6 * Pi / 32)
				dd	0x3F3504F3					; Cos (8 * Pi / 32)

;******************************************************************************;
;       Initial angle values for sine and cosine function                      ;
;******************************************************************************;
align 16
angle_flt64		dq	0x401921FB54442D18			; 2 * Pi
				dq	0x402921FB54442D18			; 4 * Pi

;******************************************************************************;
;       Sine values for flt64_t type                                           ;
;******************************************************************************;
align 16
sin16_flt64		dq	0x3FD87DE2A6AEA963			; Sin (2 * Pi / 16)
				dq	0x3FE6A09E667F3BCD			; Sin (4 * Pi / 16)

;******************************************************************************;
;       Cosine values for flt64_t type                                         ;
;******************************************************************************;
align 16
cos16_flt64		dq	0x3FED906BCF328D46			; Cos (2 * Pi / 16)
				dq	0x3FE6A09E667F3BCD			; Cos (4 * Pi / 16)

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
