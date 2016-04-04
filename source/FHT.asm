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

; Hypotenuse
extrn	'Math_Hypot2D_flt32'	as	Hypot_flt32
extrn	'Math_Hypot2D_flt64'	as	Hypot_flt64

; Sine and cosine
extrn	'Math_SinCos_flt32'		as	SinCos_flt32
extrn	'Math_SinCos_flt64'		as	SinCos_flt64

; Inverse tangent function
extrn	'Math_ArcTan2_flt32'	as	Atan_flt32
extrn	'Math_ArcTan2_flt64'	as	Atan_flt64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Hartley transformation                                                 ;
;******************************************************************************;

; Time domain to frequency domain
public	Spectrum_flt32			as	'FHT_Spectrum_flt32'
public	Spectrum_flt64			as	'FHT_Spectrum_flt64'
public	Spectrum_flt32			as	'_ZN3FHT8SpectrumEPfh'
public	Spectrum_flt64			as	'_ZN3FHT8SpectrumEPdh'

; Frequency domain to time domain
public	Impulse_flt32			as	'FHT_Impulse_flt32'
public	Impulse_flt64			as	'FHT_Impulse_flt64'
public	Impulse_flt32			as	'_ZN3FHT7ImpulseEPfh'
public	Impulse_flt64			as	'_ZN3FHT7ImpulseEPdh'

;******************************************************************************;
;       Spectrum                                                               ;
;******************************************************************************;

; Real spectrum
public	RealSpectrum_flt32		as	'FHT_RealSpectrum_flt32'
public	RealSpectrum_flt64		as	'FHT_RealSpectrum_flt64'
public	RealSpectrum_flt32		as	'_ZN3FHT12RealSpectrumEPfS0_PKfh'
public	RealSpectrum_flt64		as	'_ZN3FHT12RealSpectrumEPdS0_PKdh'

; Hartley spectrum
public	HartleySpectrum_flt32	as	'FHT_HartleySpectrum_flt32'
public	HartleySpectrum_flt64	as	'FHT_HartleySpectrum_flt64'
public	HartleySpectrum_flt32	as	'_ZN3FHT15HartleySpectrumEPfPKfS2_h'
public	HartleySpectrum_flt64	as	'_ZN3FHT15HartleySpectrumEPdPKdS2_h'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       CAS function                                                           ;
;******************************************************************************;
macro	CAS	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; angle value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
scale1	equ		xmm5						; scale value #1
scale2	equ		xmm6						; scale value #2
base1	equ		xmm7						; base value #1
base2	equ		xmm8						; base value #2
one		equ		xmm9						; 1.0
half	equ		xmm10						; 0.5
table	equ		treg						; pointer to array of coefficients
if x eq s
oneval	= PONE_FLT32						; +1.0
halfval	= MHALF_FLT32						; -0.5
sincost	= sincos_flt32						; pointer to array of sine and cosine coefficients
else if x eq d
oneval	= PONE_FLT64						; +1.0
halfval	= MHALF_FLT64						; -0.5
sincost	= sincos_flt64						; pointer to array of sine and cosine coefficients
end if
;------------------------------------------
		initreg	one, treg, oneval			; one = +1.0
		initreg	half, treg, halfval			; half = -0.5
;---[Computing sin and cos value]----------
		movap#x	base1, value				; base1 = value
		movap#x	base2, half					; base2 = -0.5
		muls#x	value, value				; value *= value
		movap#x	scale1, value
		muls#x	scale1, base1				; scale1 = value * base1
		movap#x	scale2, value
		muls#x	scale2, scale2				; scale2 = value * value
		muls#x	base2, value				; base2 *= value
		lea		table, [sincost]			; set pointer to array of coefficients
if x eq s
		PAIR4	table, value, x				; compute single polynomial value
else if x eq d
		PAIR8	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale1
		adds#x	temp1, base1				; temp1 = base1 + scale1 * temp1
		muls#x	temp2, scale2
		adds#x	temp2, base2				; temp2 = base2 + scale2 * temp2
		adds#x	temp2, one					; temp2 += 1.0
		ret
}
Cas_flt32:	CAS	s
Cas_flt64:	CAS	d

;******************************************************************************;
;       Hartley transformation                                                 ;
;******************************************************************************;

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
temp2	equ		xmm2						; temporary register #3
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Load elements]------------------------
		movs#x	temp0, [array + 0 * bytes]	; temp0 = array[0]
		movs#x	temp1, [array + 1 * bytes]	; temp1 = array[1]
;---[Merge 1 element arrays]---------------
		movap#x	temp2, temp0
		adds#x	temp0, temp1				; temp0 = temp0 + temp1
		subs#x	temp2, temp1				; temp2 = temp0 - temp1
;---[Store elements]-----------------------
		movs#x	[array + 0 * bytes], temp0	; array[0] = temp0
		movs#x	[array + 1 * bytes], temp2	; array[1] = temp2
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
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Load elements]------------------------
		movs#x	temp0, [array + 0 * bytes]	; temp0 = array[0]
		movs#x	temp1, [array + 1 * bytes]	; temp1 = array[1]
		movs#x	temp2, [array + 2 * bytes]	; temp2 = array[2]
		movs#x	temp3, [array + 3 * bytes]	; temp3 = array[3]
;---[Merge 1 element arrays]---------------
		movap#x	temp4, temp0
		adds#x	temp0, temp2				; temp0 = temp0 + temp2
		subs#x	temp4, temp2				; temp4 = temp0 - temp2
		movap#x	temp5, temp1
		adds#x	temp1, temp3				; temp0 = temp1 + temp3
		subs#x	temp5, temp3				; temp5 = temp1 - temp3
;---[Merge 2 element arrays]---------------
		movap#x	temp2, temp0
		adds#x	temp0, temp1				; temp0 = temp0 + temp1
		subs#x	temp2, temp1				; temp2 = temp0 - temp1
		movap#x	temp3, temp4
		adds#x	temp4, temp5				; temp4 = temp4 + temp5
		subs#x	temp3, temp5				; temp3 = temp4 - temp5
;---[Store elements]-----------------------
		movs#x	[array + 0 * bytes], temp0	; array[0] = temp0
		movs#x	[array + 1 * bytes], temp4	; array[1] = temp4
		movs#x	[array + 2 * bytes], temp2	; array[2] = temp2
		movs#x	[array + 3 * bytes], temp3	; array[3] = temp3
		ret
}
FHT4_flt32:	FHT4	s
FHT4_flt64:	FHT4	d

;==============================================================================;
;       Hartley transformation for 8 elements vector                           ;
;==============================================================================;
macro	FHT8	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
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
if x eq s
sqrtval	= SQRT12_FLT32						; 1 / Sqrt (2)
scale	= 2									; scale value
else if x eq d
sqrtval	= SQRT12_FLT64						; 1 / Sqrt (2)
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Load elements]------------------------
		movs#x	temp0, [array + 0 * bytes]	; temp0 = array[0]
		movs#x	temp1, [array + 1 * bytes]	; temp1 = array[1]
		movs#x	temp2, [array + 2 * bytes]	; temp2 = array[2]
		movs#x	temp3, [array + 3 * bytes]	; temp3 = array[3]
		movs#x	temp4, [array + 4 * bytes]	; temp4 = array[4]
		movs#x	temp5, [array + 5 * bytes]	; temp5 = array[5]
		movs#x	temp6, [array + 6 * bytes]	; temp6 = array[6]
		movs#x	temp7, [array + 7 * bytes]	; temp7 = array[7]
;---[Merge 1 element arrays]---------------
		movap#x	temp8, temp0
		adds#x	temp0, temp4				; temp0 = temp0 + temp4
		subs#x	temp8, temp4				; temp8 = temp0 - temp4
		movap#x	temp9, temp1
		adds#x	temp1, temp5				; temp1 = temp1 + temp5
		subs#x	temp9, temp5				; temp9 = temp1 - temp5
		movap#x	temp10, temp2
		adds#x	temp2, temp6				; temp2 = temp2 + temp6
		subs#x	temp10, temp6				; temp10 = temp2 - temp6
		movap#x	temp11, temp3
		adds#x	temp3, temp7				; temp3 = temp3 + temp7
		subs#x	temp11, temp7				; temp11 = temp3 - temp7
;---[Merge 2 element arrays]---------------
		movap#x	temp4, temp0
		adds#x	temp0, temp2				; temp0 = temp0 + temp2
		subs#x	temp4, temp2				; temp4 = temp0 - temp2
		movap#x	temp5, temp8
		adds#x	temp8, temp10				; temp8 = temp8 + temp10
		subs#x	temp5, temp10				; temp5 = temp8 - temp10
		movap#x	temp6, temp1
		adds#x	temp1, temp3				; temp1 = temp1 + temp3
		subs#x	temp6, temp3				; temp6 = temp1 - temp3
		movap#x	temp7, temp9
		adds#x	temp9, temp11				; temp7 = temp9 + temp11
		subs#x	temp7, temp11				; temp9 = temp9 - temp11
;---[Merge 4 element arrays]---------------
		initreg	temp2, treg, sqrtval		; temp2 = 1 / Sqrt (2)
		movap#x	temp3, temp9
		adds#x	temp9, temp7				; temp9 = temp9 + temp7
		muls#x	temp9, temp2				; temp9 *= 1 / Sqrt (2)
		subs#x	temp3, temp7				; temp3 = temp9 - temp7
		muls#x	temp3, temp2				; temp3 *= 1 / Sqrt (2)
		movap#x	temp2, temp0
		adds#x	temp0, temp1				; temp0 = temp0 + temp1
		subs#x	temp2, temp1				; temp2 = temp0 - temp1
		movap#x	temp7, temp4
		adds#x	temp4, temp6				; temp4 = temp4 + temp6
		subs#x	temp7, temp6				; temp7 = temp4 - temp6
		movap#x	temp10, temp8
		adds#x	temp8, temp9				; temp8 = temp8 + temp9
		subs#x	temp10, temp9				; temp10 = temp8 - temp9
		movap#x	temp11, temp5
		adds#x	temp5, temp3				; temp5 = temp5 + temp3
		subs#x	temp11, temp3				; temp11 = temp5 - temp3
;---[Store elements]-----------------------
		movs#x	[array + 0 * bytes], temp0	; array[0] = temp0
		movs#x	[array + 1 * bytes], temp8	; array[1] = temp8
		movs#x	[array + 2 * bytes], temp4	; array[2] = temp4
		movs#x	[array + 3 * bytes], temp5	; array[3] = temp5
		movs#x	[array + 4 * bytes], temp2	; array[4] = temp2
		movs#x	[array + 5 * bytes], temp10	; array[5] = temp10
		movs#x	[array + 6 * bytes], temp7	; array[6] = temp7
		movs#x	[array + 7 * bytes], temp11	; array[7] = temp11
		ret
}
FHT8_flt32:	FHT8	s
FHT8_flt64:	FHT8	d

;==============================================================================;
;       Leaf function for fast Hartley transformation                          ;
;==============================================================================;
macro	LEAF	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
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
if x eq s
sqrtval	= SQRT12_FLT32						; 1 / Sqrt (2)
scale	= 2									; scale value
else if x eq d
sqrtval	= SQRT12_FLT64						; 1 / Sqrt (2)
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Load elements]------------------------
		movs#x	temp0, [array + 0 * bytes]	; temp0 = array[0]
		movs#x	temp1, [array + 1 * bytes]	; temp1 = array[1]
		movs#x	temp2, [array + 2 * bytes]	; temp2 = array[2]
		movs#x	temp3, [array + 3 * bytes]	; temp3 = array[3]
		movs#x	temp4, [array + 4 * bytes]	; temp4 = array[4]
		movs#x	temp5, [array + 5 * bytes]	; temp5 = array[5]
		movs#x	temp6, [array + 6 * bytes]	; temp6 = array[6]
		movs#x	temp7, [array + 7 * bytes]	; temp7 = array[7]
;---[Merge 1 element arrays]---------------
		movap#x	temp8, temp0
		adds#x	temp0, temp1				; temp0 = temp0 + temp1
		subs#x	temp8, temp1				; temp8 = temp0 - temp1
		movap#x	temp9, temp2
		adds#x	temp2, temp3				; temp2 = temp2 + temp3
		subs#x	temp9, temp3				; temp9 = temp2 - temp3
		movap#x	temp10, temp4
		adds#x	temp4, temp5				; temp4 = temp4 + temp5
		subs#x	temp10, temp5				; temp10 = temp4 - temp5
		movap#x	temp11, temp6
		adds#x	temp6, temp7				; temp6 = temp6 + temp7
		subs#x	temp11, temp7				; temp11 = temp6 - temp7
;---[Merge 2 element arrays]---------------
		movap#x	temp1, temp0
		adds#x	temp0, temp2				; temp0 = temp0 + temp2
		subs#x	temp1, temp2				; temp1 = temp0 - temp2
		movap#x	temp3, temp8
		adds#x	temp8, temp9				; temp8 = temp8 + temp9
		subs#x	temp3, temp9				; temp3 = temp8 - temp9
		movap#x	temp5, temp4
		adds#x	temp4, temp6				; temp4 = temp4 + temp6
		subs#x	temp5, temp6				; temp5 = temp4 - temp6
		movap#x	temp7, temp10
		adds#x	temp10, temp11				; temp10 = temp10 + temp11
		subs#x	temp7, temp11				; temp7 = temp10 - temp11
;---[Merge 4 element arrays]---------------
		initreg	temp2, treg, sqrtval		; temp2 = 1 / Sqrt (2)
		movap#x	temp6, temp10
		adds#x	temp10, temp7				; temp10 = temp10 + temp7
		muls#x	temp10, temp2				; temp10 *= 1 / Sqrt (2)
		subs#x	temp6, temp7				; temp6 = temp10 - temp7
		muls#x	temp6, temp2				; temp6 *= 1 / Sqrt (2)
		movap#x	temp2, temp0
		adds#x	temp0, temp4				; temp0 = temp0 + temp4
		subs#x	temp2, temp4				; temp2 = temp0 - temp4
		movap#x	temp7, temp1
		adds#x	temp1, temp5				; temp1 = temp1 + temp5
		subs#x	temp7, temp5				; temp7 = temp1 - temp5
		movap#x	temp9, temp8
		adds#x	temp8, temp10				; temp8 = temp8 + temp10
		subs#x	temp9, temp10				; temp9 = temp8 - temp10
		movap#x	temp11, temp3
		adds#x	temp3, temp6				; temp3 = temp3 + temp6
		subs#x	temp11, temp6				; temp11 = temp3 - temp6
;---[Store elements]-----------------------
		movs#x	[array + 0 * bytes], temp0	; array[0] = temp0
		movs#x	[array + 1 * bytes], temp8	; array[1] = temp8
		movs#x	[array + 2 * bytes], temp1	; array[2] = temp1
		movs#x	[array + 3 * bytes], temp3	; array[3] = temp3
		movs#x	[array + 4 * bytes], temp2	; array[4] = temp2
		movs#x	[array + 5 * bytes], temp9	; array[5] = temp9
		movs#x	[array + 6 * bytes], temp7	; array[6] = temp7
		movs#x	[array + 7 * bytes], temp11	; array[7] = temp11
		ret
}
Leaf_flt32:	LEAF	s
Leaf_flt64:	LEAF	d

;==============================================================================;
;       Root function for fast Hartley transformation                          ;
;==============================================================================;
macro	ROOT	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
ptr0	equ		r12							; temporary pointer #1
ptr1	equ		r13							; temporary pointer #2
ptr2	equ		r14							; temporary pointer #3
ptr3	equ		r15							; temporary pointer #4
angle	equ		xmm0						; angle value
sin		equ		xmm1						; sine value
cos		equ		xmm2						; cosine value
temp0	equ		xmm3						; temporary register #1
temp1	equ		xmm4						; temporary register #2
temp2	equ		xmm5						; temporary register #3
temp3	equ		xmm6						; temporary register #4
temp4	equ		xmm7						; temporary register #5
temp5	equ		xmm8						; temporary register #6
temp6	equ		xmm9						; temporary register #7
temp7	equ		xmm10						; temporary register #8
temp8	equ		xmm11						; temporary register #9
step	equ		xmm12						; step value
stack	equ		rsp							; stack pointer
s_ptr0	equ		stack + 0 * 8				; stack position of "ptr0" variable
s_ptr1	equ		stack + 1 * 8				; stack position of "ptr1" variable
s_ptr2	equ		stack + 2 * 8				; stack position of "ptr2" variable
s_ptr3	equ		stack + 3 * 8				; stack position of "ptr3" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
s_step	equ		stack + 5 * 8				; stack position of "step" variable
s_angle	equ		stack + 6 * 8				; stack position of "angle" variable
if x eq s
Cas		= Cas_flt32							; cas function
sqrtval	= SQRT12_FLT32						; 1 / Sqrt (2)
pival	= PPI_FLT32							; +Pi
scale	= 2									; scale value
else if x eq d
Cas		= Cas_flt64							; cas function
sqrtval	= SQRT12_FLT64						; 1 / Sqrt (2)
pival	= PPI_FLT64							; +Pi
scale	= 3									; scale value
end if
space	= 7 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_ptr0], ptr0				; save old value of "ptr0" variable
		mov		[s_ptr1], ptr1				; save old value of "ptr1" variable
		mov		[s_ptr2], ptr2				; save old value of "ptr2" variable
		mov		[s_ptr3], ptr3				; save old value of "ptr3" variable
		mov		ptr0, array
		lea		ptr1, [array + size * bytes / 2]
		lea		ptr2, [array + size * bytes / 2]
		lea		ptr3, [array + size * bytes]
		initreg	step, treg, pival
	cvtsi2s#x	angle, size
		divs#x	step, angle					; step = Pi / size
		xorp#x	angle, angle				; angle = 0
		shr		size, 2
		sub		size, 1						; size = size / 4 - 1
		movs#x	[s_step], step				; save "step" variable into the stack
		mov		[s_size], size				; save "size" variable into the stacks
;---[Transformation loop]------------------
.loop:	adds#x	angle, [s_step]				; angle += step
		movs#x	[s_angle], angle			; save "angle" variable into the stack
		call	Cas							; call Cas (angle)
		add		ptr0, bytes					; ptr0 += bytes
		sub		ptr1, bytes					; ptr1 -= bytes
		add		ptr2, bytes					; ptr2 += bytes
		sub		ptr3, bytes					; ptr3 -= bytes
		movs#x	temp0, [ptr0]				; temp0 = ptr0[0]
		movs#x	temp1, [ptr1]				; temp1 = ptr1[0]
		movs#x	temp2, [ptr2]				; temp2 = ptr2[0]
		movs#x	temp3, [ptr3]				; temp3 = ptr3[0]
		movap#x	temp4, temp0				; temp4 = ptr0[0]
		movap#x	temp5, temp1				; temp5 = ptr1[0]
		movap#x	temp6, temp2				; temp6 = ptr2[0]
		movap#x	temp7, temp3				; temp7 = ptr3[0]
		muls#x	temp0, cos					; temp0 *= cos
		muls#x	temp1, sin					; temp1 *= sin
		muls#x	temp2, cos					; temp2 *= cos
		muls#x	temp3, sin					; temp3 *= sin
		adds#x	temp0, temp3				; temp0 += temp3
		adds#x	temp1, temp2				; temp1 += temp2
		muls#x	temp4, sin					; temp4 *= sin
		muls#x	temp5, cos					; temp5 *= cos
		muls#x	temp6, sin					; temp6 *= sin
		muls#x	temp7, cos					; temp7 *= cos
		subs#x	temp4, temp7				; temp4 -= temp7
		subs#x	temp5, temp6				; temp5 -= temp6
		movs#x	[ptr0], temp0				; ptr0[0] = temp0
		movs#x	[ptr1], temp1				; ptr1[0] = temp1
		movs#x	[ptr2], temp5				; ptr2[0] = temp5
		movs#x	[ptr3], temp4				; ptr3[0] = temp4
		movs#x	angle, [s_angle]			; get "angle" variable from the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of transformation loop]-----------
		add		ptr0, bytes					; ptr0 += bytes
		add		ptr2, bytes					; ptr2 += bytes
		movs#x	temp0, [ptr0]				; temp0 = ptr0[0]
		movs#x	temp2, [ptr2]				; temp2 = ptr2[0]
		initreg	temp1, treg, sqrtval		; temp1 = 1 / Sqrt (2)
		movap#x	temp3, temp0
		adds#x	temp0, temp2				; temp0 = temp0 + temp2
		muls#x	temp0, temp1				; temp0 *= 1 / Sqrt (2)
		subs#x	temp3, temp2				; temp3 = temp0 - temp2
		muls#x	temp3, temp1				; temp3 *= 1 / Sqrt (2)
		movs#x	[ptr0], temp0				; ptr0[0] = temp0
		movs#x	[ptr2], temp3				; ptr2[0] = temp3
		mov		ptr0, [s_ptr0]				; restore old value of "ptr0" variable
		mov		ptr1, [s_ptr1]				; restore old value of "ptr1" variable
		mov		ptr2, [s_ptr2]				; restore old value of "ptr2" variable
		mov		ptr3, [s_ptr3]				; restore old value of "ptr3" variable
		add		stack, space				; restoring back the stack pointer
		ret
}
Root_flt32:	ROOT	s
Root_flt64:	ROOT	d

;==============================================================================;
;       Merge 2 arrays into one                                                ;
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
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
;------------------------------------------
		shl		size, scale
		lea		ptr, [array + size]			; ptr = array + size
	prefetchnta	[array]						; prefetch data
	prefetchnta	[ptr]						; prefetch data
;---[Merge loop]---------------------------
.loop:	movap#x	temp0, [array + 0 * VSIZE]	; temp0 = array[0]
		movap#x	temp1, [array + 1 * VSIZE]	; temp1 = array[1]
		movap#x	temp2, [ptr + 0 * VSIZE]	; temp2 = ptr[0]
		movap#x	temp3, [ptr + 1 * VSIZE]	; temp3 = ptr[1]
		movap#x	temp4, temp0
		addp#x	temp0, temp2				; temp0 = temp0 + temp2
		subp#x	temp4, temp2				; temp4 = temp0 - temp2
		movap#x	temp5, temp1
		addp#x	temp1, temp3				; temp1 = temp1 + temp3
		subp#x	temp5, temp3				; temp5 = temp1 - temp3
		movap#x	[array + 0 * VSIZE], temp0	; array[0] = temp0
		movap#x	[array + 1 * VSIZE], temp1	; array[0] = temp1
		movap#x	[ptr + 0 * VSIZE], temp4	; ptr[0] = temp4
		movap#x	[ptr + 1 * VSIZE], temp5	; ptr[1] = temp5
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		array, 2 * VSIZE			; array += 2
		add		ptr, 2 * VSIZE				; ptr += 2
		sub		size, 2 * VSIZE				; size -= 2
		jnz		.loop						; do while (size != 0)
;---[End of merge loop]--------------------
		ret
}
Merge_flt32:	MERGE	s
Merge_flt64:	MERGE	d

;==============================================================================;
;       Fast Hartley transformation core                                       ;
;==============================================================================;
macro	CORE	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
if x eq s
Leaf	= Leaf_flt32						; leaf function
Root	= Root_flt32						; root function
Merge	= Merge_flt32						; merge function
scale	= 2									; scale value
else if x eq d
Leaf	= Leaf_flt64						; leaf function
Root	= Root_flt64						; root function
Merge	= Merge_flt64						; merge function
scale	= 3									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
minsize	= 16								; min array size for recursive call
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
.start:	cmp		size, minsize				; if (size < minsize)
		jb		Leaf						;     call Leaf (array)
		sub		stack, space				; reserving stack size for local vars
		shr		size, 1						; size /= 2
;---[Transform first array]----------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		call	.start						; call Core (array, size)
;---[Transform second array]---------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		lea		array, [array + size * bytes]
		call	.start						; call Core (array + size, size)
;---[Call root function]-------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		lea		array, [array + size * bytes]
		call	Root						; call Root (array + size, size)
;---[Merge arrays]-------------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		add		stack, space				; restoring back the stack pointer
		jmp		Merge						; call Merge (array + size, size)
}
Core_flt32:	CORE	s
Core_flt64:	CORE	d

;==============================================================================;
;       Reordering data for fast Hartley transformation                        ;
;==============================================================================;
macro	REORDER	val1, val2, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
exp		equ		cl							; power of 2
;---[Internal variables]-------------------
tindex	equ		rax							; target index
sindex	equ		rdx							; source index
temp1	equ		r8							; temporary register #1
temp2	equ		r9							; temporary register #2
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		neg		exp
		add		exp, 64						; exp = 64 - exp
		xor		sindex, sindex				; sindex = 0
;---[Reordering loop]----------------------
.loop:	mov		tindex, sindex				; tindex = sindex
		mov		temp1, 0x5555555555555555	; temp1 = 0x5555555555555555
		mov		temp2, 0xAAAAAAAAAAAAAAAA	; temp2 = 0xAAAAAAAAAAAAAAAA
		and		temp1, tindex
		and		temp2, tindex
		shl		temp1, 1					; temp1 = (tindex & temp1) << 1
		shr		temp2, 1					; temp2 = (tindex & temp2) >> 1
		mov		tindex, temp1
		or		tindex, temp2				; tindex = temp1 | temp2
		mov		temp1, 0x3333333333333333	; temp1 = 0x3333333333333333
		mov		temp2, 0xCCCCCCCCCCCCCCCC	; temp2 = 0xCCCCCCCCCCCCCCCC
		and		temp1, tindex
		and		temp2, tindex
		shl		temp1, 2					; temp1 = (tindex & temp1) << 2
		shr		temp2, 2					; temp2 = (tindex & temp2) >> 2
		mov		tindex, temp1
		or		tindex, temp2				; tindex = temp1 | temp2
		mov		temp1, 0x0F0F0F0F0F0F0F0F	; temp1 = 0x0F0F0F0F0F0F0F0F
		mov		temp2, 0xF0F0F0F0F0F0F0F0	; temp2 = 0xF0F0F0F0F0F0F0F0
		and		temp1, tindex
		and		temp2, tindex
		shl		temp1, 4					; temp1 = (tindex & temp1) << 4
		shr		temp2, 4					; temp2 = (tindex & temp2) >> 4
		mov		tindex, temp1
		or		tindex, temp2				; tindex = temp1 | temp2
		bswap	tindex						; reverse bit order
		shr		tindex, exp					; tindex >> exp
		cmp		sindex, tindex				; if (sindex < tindex)
		jae		.skip						;     then swap elements
		mov		val1, [array + sindex * bytes]
		mov		val2, [array + tindex * bytes]
		xchg	val1, val2
		mov		[array + sindex * bytes], val1
		mov		[array + tindex * bytes], val2
.skip:	add		sindex, 1					; sindex++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of reordering loop]---------------
		ret
}
Reorder_flt32:	REORDER	r10d, r11d, s
Reorder_flt64:	REORDER	r10, r11, d

;==============================================================================;
;       Fast Hartley transformation                                            ;
;==============================================================================;
macro	FHT	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
exp		equ		cl							; power of 2
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
if x eq s
Fht2	= FHT2_flt32						; FHT for 2 elements vector
Fht4	= FHT4_flt32						; FHT for 4 elements vector
Fht8	= FHT8_flt32						; FHT for 8 elements vector
Reorder	= Reorder_flt32						; reorder function
Core	= Core_flt32						; FHT core function
else if x eq d
Fht2	= FHT2_flt64						; FHT for 2 elements vector
Fht4	= FHT4_flt64						; FHT for 4 elements vector
Fht8	= FHT8_flt64						; FHT for 8 elements vector
Reorder	= Reorder_flt64						; reorder function
Core	= Core_flt64						; FHT core function
end if
space	= 3 * 8								; stack size required by the procedure
;---[FHT for 2 elements vector]------------
		cmp		size, 2						; if (size == 2)
		je		Fht2						;     then call FHT2 (array)
;---[FHT for 4 elements vector]------------
		cmp		size, 4						; if (size == 4)
		je		Fht4						;     then call FHT4 (array)
;---[FHT for 8 elements vector]------------
		cmp		size, 8						; if (size == 8)
		je		Fht8						;     then call FHT8 (array)
;---[Common FHT routine]-------------------
		sub		stack, space				; reserving stack size for local vars
;---[Reorder array]------------------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		call	Reorder						; call Reorder (array, size, exp)
;---[FHT core function]--------------------
		mov		param1, [s_array]
		mov		param2, [s_size]
		add		stack, space				; restoring back the stack pointer
		jmp		Core						; call Core (array, size)
}
FHT_flt32:	FHT	s
FHT_flt64:	FHT	d

;==============================================================================;
;       Spectrum normalization                                                 ;
;==============================================================================;
macro	NORM	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		xmm0						; value to process with
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		cmp		size, VSIZE / bytes			; if (size < VSIZE / bytes)
		jb		.sloop						;     then skip vector code
		shftl	size, scale					; convert size to bytes
		shufp#x	value, value, 0x0			; duplicate value through the entire register
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movap#x	temp, [array + (%-1)*VSIZE]	; temp = array[i-i]
		mulp#x	temp, value					; do operation to temp value
		movap#x	[array + (%-1)*VSIZE], temp	; array[i-i] = temp
		sub		size, VSIZE					; size--
		jz		.exit						; if (size == 0), then go to exit
end repeat
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, CLINE				; array += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.exit:	ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		muls#x	temp, value					; do operation to temp value
		movs#x	[array], temp				; array[0] = temp
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		ret
}
Norm_flt32:	NORM	s
Norm_flt64:	NORM	d

;==============================================================================;
;       Time domain to frequency domain                                        ;
;==============================================================================;
macro	SPECTRUM	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
exp		equ		sil							; power of 2
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
size	equ		rsi							; array size (count of elements)
shift	equ		cl							; shift value
value	equ		xmm0						; normalization value
nsize	equ		xmm1						; normalized array size
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
if x eq s
Fht		= FHT_flt32							; fast Hartley transformation
Norm	= Norm_flt32						; normalization function
oneval	= PONE_FLT32						; +1.0
else if x eq d
Fht		= FHT_flt64							; fast Hartley transformation
Norm	= Norm_flt64						; normalization function
oneval	= PONE_FLT64						; +1.0
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		test	exp, exp					; if (exp == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
		mov		shift, exp
		mov		size, 1
		shl		size, shift					; size = 1 << exp
;---[Fast Hartley transformation]----------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		call	Fht							; call FHT (array, size, exp)
;---[Normalization function]---------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		initreg	value, treg, oneval
	cvtsi2s#x	nsize, size
		divs#x	value, nsize				; value = 1.0 / size
		add		stack, space				; restoring back the stack pointer
		jmp		Norm						; call Norm (array, size, 1.0 / size)
;---[Normal exit]--------------------------
.exit:	ret
}
Spectrum_flt32:	SPECTRUM s
Spectrum_flt64:	SPECTRUM d

;==============================================================================;
;       Frequency domain to time domain                                        ;
;==============================================================================;
macro	IMPULSE		x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
exp		equ		sil							; power of 2
;---[Internal variables]-------------------
size	equ		rsi							; array size (count of elements)
shift	equ		cl							; shift value
if x eq s
Fht		= FHT_flt32							; fast Hartley transformation
else if x eq d
Fht		= FHT_flt64							; fast Hartley transformation
end if
;------------------------------------------
		test	exp, exp					; if (exp == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		shift, exp
		mov		size, 1
		shl		size, shift					; size = 1 << exp
		jmp		Fht							; call FHT (array, size, exp)
;---[Normal exit]--------------------------
.exit:	ret
}
Impulse_flt32:	IMPULSE s
Impulse_flt64:	IMPULSE d

;******************************************************************************;
;       Spectrum                                                               ;
;******************************************************************************;

;==============================================================================;
;       Real spectrum                                                          ;
;==============================================================================;
macro	REAL	temp, val1, val2, x
{
;---[Parameters]---------------------------
mag		equ		rdi							; signal magnitude
phase	equ		rsi							; signal phase
spec	equ		rdx							; hartley spectrum
exp		equ		cl							; power of 2
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
ptr		equ		r8							; temporary pointer
size	equ		r9							; vector size
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
zero	equ		xmm3						; 0.0
stack	equ		rsp							; stack pointer
s_mag	equ		stack + 0 * 8				; stack position of "mag" variable
s_phase	equ		stack + 1 * 8				; stack position of "phase" variable
s_spec	equ		stack + 2 * 8				; stack position of "spec" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
s_mask	equ		stack + 4 * 8				; stack position of "mask" variable
s_sqrt	equ		stack + 5 * 8				; stack position of "sqrt" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
if x eq s
Hypot	= Hypot_flt32						; hypotenuse function
Atan	= Atan_flt32						; inverse tangent function
dmask	= DMASK_FLT32						; data mask
sqrtval	= SQRT2_FLT32						; Sqrt (2)
pival	= MPI_FLT32							; -Pi
scale	= 2									; scale value
else if x eq d
Hypot	= Hypot_flt64						; hypotenuse function
Atan	= Atan_flt64						; inverse tangent function
dmask	= DMASK_FLT64						; data mask
sqrtval	= SQRT2_FLT64						; Sqrt (2)
pival	= MPI_FLT64							; -Pi
scale	= 3									; scale value
end if
space	= 7 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		temp, dmask					; temp = dmask
		mov		[s_mask], temp				; save "mask" variable into the stack
		mov		temp, sqrtval				; temp = Sqrt (2)
		mov		[s_sqrt], temp				; save "sqrt" variable into the stack
		mov		size, 1
		shl		size, exp					; size = 1 << exp
		lea		ptr, [spec + size * bytes]	; ptr = spec + size
		shr		size, 1
		sub		size, 1						; size = size / 2 - 1
		movs#x	temp0, [spec]				; temp0 = spec[0]
		andp#x	temp0, [s_mask]				; temp0 = Abs (temp0)
		movs#x	[mag], temp0				; mag[0] = temp0
		xorp#x	zero, zero					; zero = 0
		xor		val1, val1					; val1 = 0
		mov		val2, pival					; val2 = -Pi
		comis#x	temp0, zero
		cmovae	temp, val1					; if (spec[0] >= 0.0), then temp = val1
		cmovb	temp, val2					; if (spec[0] < 0.0), then temp = val2
		mov		[phase], temp				; phase[0] = temp
		test	exp, exp					; if (exp == 0)
		jz		.exit						;     then go to exit
		test	size, size					; if (size == 0)
		jz		.skip						;     then skip following code
		mov		[s_size], size				; save "size" variable into the stack
;---[Computation loop]---------------------
.loop:	add		mag, bytes					; mag++
		add		phase, bytes				; phase++
		add		spec, bytes					; spec++
		sub		ptr, bytes					; prt--
		mov		[s_mag], mag				; save "mag" variable into the stack
		mov		[s_phase], phase			; save "phase" variable into the stack
		mov		[s_spec], spec				; save "spec" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		movs#x	temp0, [spec]				; temp0 = spec[0]
		movs#x	temp1, [ptr]				; temp1 = ptr[0]
		mov		fptr, Hypot
		call	fptr						; temp0 = Hypot (spec[0], ptr[0])
		mov		mag, [s_mag]				; get "mag" variable from the stack
		mov		phase, [s_phase]			; get "phase" variable from the stack
		mov		spec, [s_spec]				; get "spec" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		muls#x	temp0, [s_sqrt]				; temp0 = Sqrt (2) * Hypot (spec[0], ptr[0])
		movs#x	[mag], temp0				; mag[0] = temp0
		movs#x	temp0, [ptr]				; temp0 = ptr[0]
		movs#x	temp2, [spec]				; temp2 = spec[0]
		movap#x	temp1, temp0
		subs#x	temp0, temp2				; temp0 = ptr[0] - spec[0]
		adds#x	temp1, temp2				; temp1 = ptr[0] + spec[0]
		mov		fptr, Atan
		call	fptr						; temp0 = Atan (ptr[0] - spec[0], ptr[0] + spec[0])
		mov		mag, [s_mag]				; get "mag" variable from the stack
		mov		phase, [s_phase]			; get "phase" variable from the stack
		mov		spec, [s_spec]				; get "spec" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		movs#x	[phase], temp0				; phase[0] = tqmp0
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of computation loop]--------------
.skip:	add		mag, bytes					; mag++
		add		phase, bytes				; phase++
		add		spec, bytes					; spec++
		movs#x	temp0, [spec]				; temp0 = spec[0]
		andp#x	temp0, [s_mask]				; temp0 = Abs (temp0)
		movs#x	[mag], temp0				; mag[0] = temp0
		xorp#x	zero, zero					; zero = 0
		xor		val1, val1					; val1 = 0
		mov		val2, pival					; val2 = -Pi
		comis#x	temp0, zero
		cmovae	temp, val1					; if (spec[0] >= 0.0), then temp = val1
		cmovb	temp, val2					; if (spec[0] < 0.0), then temp = val2
		mov		[phase], temp				; phase[0] = temp
;---[Normal exit]--------------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
RealSpectrum_flt32:	REAL eax, r10d, r11d, s
RealSpectrum_flt64:	REAL rax, r10, r11, d

;==============================================================================;
;       Hartley spectrum                                                        ;
;==============================================================================;
macro	HARTLEY	temp, val1, val2, x
{
;---[Parameters]---------------------------
spec	equ		rdi							; hartley spectrum
mag		equ		rsi							; signal magnitude
phase	equ		rdx							; signal phase
exp		equ		cl							; power of 2
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
ptr		equ		r8							; temporary pointer
size	equ		r9							; vector size
andge	equ		xmm0						; angle value
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
zero	equ		xmm4						; 0.0
stack	equ		rsp							; stack pointer
s_spec	equ		stack + 0 * 8				; stack position of "spec" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
s_mag	equ		stack + 2 * 8				; stack position of "mag" variable
s_phase	equ		stack + 3 * 8				; stack position of "phase" variable
s_mask	equ		stack + 4 * 8				; stack position of "mask" variable
s_half	equ		stack + 5 * 8				; stack position of "half" variable
s_sin	equ		stack + 6 * 8				; stack position of "sin" variable
s_cos	equ		stack + 7 * 8				; stack position of "cos" variable
s_size	equ		stack + 8 * 8				; stack position of "size" variable
if x eq s
SinCos	= SinCos_flt32						; sine and cosine function
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
halfval	= PHALF_FLT32						; +0.5
scale	= 2									; scale value
else if x eq d
SinCos	= SinCos_flt64						; sine and cosine function
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
halfval	= PHALF_FLT64						; +0.5
scale	= 3									; scale value
end if
space	= 9 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		temp, dmask					; temp = dmask
		mov		[s_mask], temp				; save "mask" variable into the stack
		mov		temp, halfval				; temp = 0.5
		mov		[s_half], temp				; save "half" variable into the stack
		mov		size, 1
		shl		size, exp					; size = 1 << exp
		lea		ptr, [spec + size * bytes]	; ptr = spec + size
		shr		size, 1
		sub		size, 1						; size = size / 2 - 1
		movs#x	angle, [phase]				; angle = phase[0]
		mov		temp, [mag]					; temp = mag[0]
		xorp#x	zero, zero					; zero = 0
		mov		val1, dmask					; val1 = dmask
		mov		val2, smask					; val2 = smask
		and		val1, temp					; val1 = +Abs (mag[0])
		or		val2, temp					; val2 = -Abs (mag[0])
		comis#x	angle, zero
		cmovae	temp, val1					; if (angle >= 0.0), then temp = val1
		cmovb	temp, val2					; if (angle < 0.0), then temp = val2
		mov		[spec], temp				; spec[0] = temp
		test	exp, exp					; if (exp == 0)
		jz		.exit						;     then go to exit
		test	size, size					; if (size == 0)
		jz		.skip						;     then skip following code
		mov		[s_size], size				; save "size" variable into the stack
;---[Computation loop]---------------------
.loop:	add		spec, bytes					; spec++
		sub		ptr, bytes					; prt--
		add		mag, bytes					; mag++
		add		phase, bytes				; phase++
		mov		[s_spec], spec				; save "spec" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_mag], mag				; save "mag" variable into the stack
		mov		[s_phase], phase			; save "phase" variable into the stack
		lea		param1, [s_sin]
		lea		param2, [s_cos]
		movs#x	angle, [phase]
		mov		fptr, SinCos
		call	fptr						; call SinCos (&sin, &cos, phase[0])
		mov		spec, [s_spec]				; get "spec" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		mag, [s_mag]				; get "mag" variable from the stack
		mov		phase, [s_phase]			; get "phase" variable from the stack
		movs#x	angle, [mag]				; angle = mag[0]
		andp#x	angle, [s_mask]				; angle = Abs (angle)
		muls#x	angle, [s_half]				; angle = 0.5 * Abs (angle)
		movs#x	temp1, [s_cos]				; temp1 = cos
		movs#x	temp2, [s_sin]				; temp2 = sin
		movap#x	temp3, temp1
		subs#x	temp1, temp2				; temp1 = cos - sin
		muls#x	temp1, angle				; temp1 *= 0.5 * Abs (angle)
		adds#x	temp3, temp2				; temp3 = cos + sin
		muls#x	temp3, angle				; temp3 *= 0.5 * Abs (angle)
		movs#x	[spec], temp1				; spec[0] = temp1
		movs#x	[ptr], temp3				; ptr[0] = temp3
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of computation loop]--------------
.skip:	add		spec, bytes					; spec++
		add		mag, bytes					; mag++
		add		phase, bytes				; phase++
		movs#x	angle, [phase]				; angle = phase[0]
		mov		temp, [mag]					; temp = mag[0]
		xorp#x	zero, zero					; zero = 0
		mov		val1, dmask					; val1 = dmask
		mov		val2, smask					; val2 = smask
		and		val1, temp					; val1 = +Abs (mag[0])
		or		val2, temp					; val2 = -Abs (mag[0])
		comis#x	angle, zero
		cmovae	temp, val1					; if (angle >= 0.0), then temp = val1
		cmovb	temp, val2					; if (angle < 0.0), then temp = val2
		mov		[spec], temp				; spec[0] = temp
;---[Normal exit]--------------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
HartleySpectrum_flt32:	HARTLEY	eax, r10d, r11d, s
HartleySpectrum_flt64:	HARTLEY	rax, r10, r11, d

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

;==============================================================================;
;       Coefficients to compute sincos(x) for flt32_t type                     ;
;==============================================================================;
align 16
sincos_flt32	dd	0x3638EF1D				; +1 / 09!
				dd	0x3C088889				; +1 / 05!
				dd	0xB9500D01				; -1 / 07!
				dd	0xBE2AAAAB				; -1 / 03!
				dd	0xB493F27E				; -1 / 10!
				dd	0xBAB60B61				; -1 / 06!
				dd	0x37D00D01				; +1 / 08!
				dd	0x3D2AAAAB				; +1 / 04!

;==============================================================================;
;       Coefficients to compute sincos(x) for flt64_t type                     ;
;==============================================================================;
align 16
sincos_flt64	dq	0x3CE952C77030AD4A		; +1 / 17!
				dq	0x3EC71DE3A556C734		; +1 / 09!
				dq	0x3DE6124613A86D09		; +1 / 13!
				dq	0x3F81111111111111		; +1 / 05!
				dq	0xBD6AE7F3E733B81F		; -1 / 15!
				dq	0xBF2A01A01A01A01A		; -1 / 07!
				dq	0xBE5AE64567F544E4		; -1 / 11!
				dq	0xBFC5555555555555		; -1 / 03!
				dq	0xBCA6827863B97D97		; -1 / 18!
				dq	0xBE927E4FB7789F5C		; -1 / 10!
				dq	0xBDA93974A8C07C9D		; -1 / 14!
				dq	0xBF56C16C16C16C17		; -1 / 06!
				dq	0x3D2AE7F3E733B81F		; +1 / 16!
				dq	0x3EFA01A01A01A01A		; +1 / 08!
				dq	0x3E21EED8EFF8D898		; +1 / 12!
				dq	0x3FA5555555555555		; +1 / 04!

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
