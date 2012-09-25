;                                                                 Statistics.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                      WIDELY USED STATISTICAL FUNCTIONS                      #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2012, Jack Black #
;###############################################################################
format	ELF64

;###############################################################################
;#      Import section                                                         #
;###############################################################################

; Mapping functions
extrn	'_Map_flt32'			as	Map_flt32
extrn	'_Map_flt64'			as	Map_flt64

; Minimum value
extrn	'_ZN5Array3MinEPKfm'	as	Min_flt32
extrn	'_ZN5Array3MinEPKdm'	as	Min_flt64

; Maximum value
extrn	'_ZN5Array3MaxEPKfm'	as	Max_flt32
extrn	'_ZN5Array3MaxEPKdm'	as	Max_flt64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Measures of location                                                   ;
;******************************************************************************;

;==============================================================================;
;       Mean                                                                   ;
;==============================================================================;
public	Mean_flt32					as	'Statistics_Mean_flt32'
public	Mean_flt64					as	'Statistics_Mean_flt64'
public	Mean_flt32					as	'_ZN10Statistics4MeanEPKfm'
public	Mean_flt64					as	'_ZN10Statistics4MeanEPKdm'

;==============================================================================;
;       Median                                                                 ;
;==============================================================================;

; Unsigned integer types
public	Median_uint8				as	'Statistics_Median_uint8'
public	Median_uint16				as	'Statistics_Median_uint16'
public	Median_uint32				as	'Statistics_Median_uint32'
public	Median_uint64				as	'Statistics_Median_uint64'
public	Median_uint8				as	'_ZN10Statistics6MedianEPhm'
public	Median_uint16				as	'_ZN10Statistics6MedianEPtm'
public	Median_uint32				as	'_ZN10Statistics6MedianEPjm'
public	Median_uint64				as	'_ZN10Statistics6MedianEPym'

; Signed integer types
public	Median_sint8				as	'Statistics_Median_sint8'
public	Median_sint16				as	'Statistics_Median_sint16'
public	Median_sint32				as	'Statistics_Median_sint32'
public	Median_sint64				as	'Statistics_Median_sint64'
public	Median_sint8				as	'_ZN10Statistics6MedianEPam'
public	Median_sint16				as	'_ZN10Statistics6MedianEPsm'
public	Median_sint32				as	'_ZN10Statistics6MedianEPim'
public	Median_sint64				as	'_ZN10Statistics6MedianEPxm'

; Floating-point types
public	Median_flt32				as	'Statistics_Median_flt32'
public	Median_flt64				as	'Statistics_Median_flt64'
public	Median_flt32				as	'_ZN10Statistics6MedianEPfm'
public	Median_flt64				as	'_ZN10Statistics6MedianEPdm'

; Other types
public	Median_uint64				as	'Statistics_Median_size'
public	Median_uint64				as	'_ZN10Statistics6MedianEPmm'

;==============================================================================;
;       Lower quartile                                                         ;
;==============================================================================;
public	LowerQuartile_flt32			as	'Statistics_LowerQuartile_flt32'
public	LowerQuartile_flt64			as	'Statistics_LowerQuartile_flt64'
public	LowerQuartile_flt32			as	'_ZN10Statistics13LowerQuartileEPfm'
public	LowerQuartile_flt64			as	'_ZN10Statistics13LowerQuartileEPdm'

;==============================================================================;
;       Upper quartile                                                         ;
;==============================================================================;
public	UpperQuartile_flt32			as	'Statistics_UpperQuartile_flt32'
public	UpperQuartile_flt64			as	'Statistics_UpperQuartile_flt64'
public	UpperQuartile_flt32			as	'_ZN10Statistics13UpperQuartileEPfm'
public	UpperQuartile_flt64			as	'_ZN10Statistics13UpperQuartileEPdm'

;==============================================================================;
;       Mid-range                                                              ;
;==============================================================================;
public	Midrange_flt32				as	'Statistics_Midrange_flt32'
public	Midrange_flt64				as	'Statistics_Midrange_flt64'
public	Midrange_flt32				as	'_ZN10Statistics8MidrangeEPKfm'
public	Midrange_flt64				as	'_ZN10Statistics8MidrangeEPKdm'

;******************************************************************************;
;       Measures of variability                                                ;
;******************************************************************************;

; Variance
public	Variance_flt32				as	'Statistics_Variance_flt32'
public	Variance_flt64				as	'Statistics_Variance_flt64'
public	Variance_flt32				as	'_ZN10Statistics8VarianceEPKfmf'
public	Variance_flt64				as	'_ZN10Statistics8VarianceEPKdmd'

; Standard deviation
public	StandardDeviation_flt32		as	'Statistics_StandardDeviation_flt32'
public	StandardDeviation_flt64		as	'Statistics_StandardDeviation_flt64'
public	StandardDeviation_flt32		as	'_ZN10Statistics17StandardDeviationEPKfmf'
public	StandardDeviation_flt64		as	'_ZN10Statistics17StandardDeviationEPKdmd'

; Absolute deviation
public	AbsoluteDeviation_flt32		as	'Statistics_AbsoluteDeviation_flt32'
public	AbsoluteDeviation_flt64		as	'Statistics_AbsoluteDeviation_flt64'
public	AbsoluteDeviation_flt32		as	'_ZN10Statistics17AbsoluteDeviationEPKfmf'
public	AbsoluteDeviation_flt64		as	'_ZN10Statistics17AbsoluteDeviationEPKdmd'

; Interquartile range
public	InterquartileRange_flt32	as	'Statistics_InterquartileRange_flt32'
public	InterquartileRange_flt64	as	'Statistics_InterquartileRange_flt64'
public	InterquartileRange_flt32	as	'_ZN10Statistics18InterquartileRangeEPfm'
public	InterquartileRange_flt64	as	'_ZN10Statistics18InterquartileRangeEPdm'

; Range
public	Range_flt32					as	'Statistics_Range_flt32'
public	Range_flt64					as	'Statistics_Range_flt64'
public	Range_flt32					as	'_ZN10Statistics5RangeEPKfm'
public	Range_flt64					as	'_ZN10Statistics5RangeEPKdm'

;******************************************************************************;
;       Measures of shape                                                      ;
;******************************************************************************;

; Skewness
public	Skewness_flt32				as	'Statistics_Skewness_flt32'
public	Skewness_flt64				as	'Statistics_Skewness_flt64'
public	Skewness_flt32				as	'_ZN10Statistics8SkewnessEPKfmf'
public	Skewness_flt64				as	'_ZN10Statistics8SkewnessEPKdmd'

; Kurtosis
public	Kurtosis_flt32				as	'Statistics_Kurtosis_flt32'
public	Kurtosis_flt64				as	'Statistics_Kurtosis_flt64'
public	Kurtosis_flt32				as	'_ZN10Statistics8KurtosisEPKfmf'
public	Kurtosis_flt64				as	'_ZN10Statistics8KurtosisEPKdmd'

;******************************************************************************;
;       Other functions                                                        ;
;******************************************************************************;

; Covariance
public	Covariance_flt32			as	'Statistics_Covariance_flt32'
public	Covariance_flt64			as	'Statistics_Covariance_flt64'
public	Covariance_flt32			as	'_ZN10Statistics10CovarianceEPKfS1_mff'
public	Covariance_flt64			as	'_ZN10Statistics10CovarianceEPKdS1_mdd'

; Correlation
public	Correlation_flt32			as	'Statistics_Correlation_flt32'
public	Correlation_flt64			as	'Statistics_Correlation_flt64'
public	Correlation_flt32			as	'_ZN10Statistics11CorrelationEPKfS1_mff'
public	Correlation_flt64			as	'_ZN10Statistics11CorrelationEPKdS1_mdd'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;

; flt32_t
DMASK_FLT32	= 0x7FFFFFFF					; data mask and NaN value
HALF_FLT32	= 0x3F000000					; 0.5
BIAS_FLT32	= 0x40400000					; 3.0

; flt64_t
DMASK_FLT64	= 0x7FFFFFFFFFFFFFFF			; data mask and NaN value
HALF_FLT64	= 0x3FE0000000000000			; 0.5
BIAS_FLT64	= 0x4008000000000000			; 3.0

;******************************************************************************;
;       Scalar sum of values inside the entire register                        ;
;******************************************************************************;
macro	summa	reg, x
{
if x eq s
		haddp#x	reg, reg
end if
		haddp#x	reg, reg
}

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
;       Measures of location                                                   ;
;******************************************************************************;

;==============================================================================;
;       Mean                                                                   ;
;==============================================================================;
macro	MEAN	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
sum		equ		xmm0						; value to process with
temp	equ		xmm1						; temp value
n		equ		xmm2						; count of elements
if x eq s
bytes	= 4									; element size (bytes)
else
bytes	= 8									; element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
	cvtsi2s#x	n, size						; n = size
		xorp#x	sum, sum					; sum = 0
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	movup#x	temp, [array]				; temp = array[0]
		addp#x	sum, temp					; sum += temp
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
		summa	sum, x						; get all parallel sums
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	adds#x	sum, [array]				; sum += array[0]
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	divs#x	sum, n						; sum = sum / size
		ret
}
Mean_flt32:	MEAN		s
Mean_flt64:	MEAN		d

;==============================================================================;
;       Quantile                                                               ;
;==============================================================================;
macro	QUANTILE	value, swap1, swap2, cond1, cond2, scale
{
;---[Parameters]---------------------------
left	equ		rdi							; pointer to start of the data array
right	equ		rsi							; pointer to end of the data array
ptr		equ		rdx							; pointer to target element
;---[Internal variables]-------------------
l_ptr	equ		r8							; left pointer to split data array
r_ptr	equ		r9							; right pointer to split data array
bytes	= 1 shl scale						; size of type (bytes)
;---[Main loop]----------------------------
.loop:	mov		value, [ptr]				; value = ptr[0]
		mov		l_ptr, left					; l_ptr = left
		mov		r_ptr, right				; r_ptr = right
		jmp		@f							; skip swap section
;---[Swap loop]----------------------------
.swap:	mov		[l_ptr], swap2				; l_ptr[0] = swap2
		mov		[r_ptr], swap1				; r_ptr[0] = swap1
;---[Internal loop 1]----------------------
@@:		add		l_ptr, bytes				; l_ptr++
		mov		swap1, [l_ptr]				; swap1 = l_ptr[0]
		cmp		swap1, value
		cond1	@b							; do while (swap1 < value)
;---[Internal loop 2]----------------------
@@:		sub		r_ptr, bytes				; r_ptr--
		mov		swap2, [r_ptr]				; swap2 = r_ptr[0]
		cmp		swap2, value
		cond2	@b							; do while (swap2 > value)
;------------------------------------------
		cmp		l_ptr, r_ptr
		jb		.swap						; do while (l_ptr < r_ptr)
;---[end of swap loop]---------------------
		cmp		r_ptr, ptr					; if (r_ptr < ptr)
		jae		@f							; {
		mov		left, r_ptr					;     left = r_ptr
		jmp		.loop						; }
;---[end of main loop]---------------------
@@:		cmp		l_ptr, ptr					; else if (l_ptr > ptr)
		jbe		@f							; {
		mov		right, l_ptr				;     right = l_ptr
		jmp		.loop						; }
;---[end of main loop]---------------------
@@:		ret									; else exit from the procedure
}

; Unsigned integer types
Quantile_uint8:		QUANTILE	al, r10b, r11b, jb, ja, 0
Quantile_uint16:	QUANTILE	ax, r10w, r11w, jb, ja, 1
Quantile_uint32:	QUANTILE	eax, r10d, r11d, jb, ja, 2
Quantile_uint64:	QUANTILE	rax, r10, r11, jb, ja, 3

; Signed integer types
Quantile_sint8:		QUANTILE	al, r10b, r11b, jl, jg, 0
Quantile_sint16:	QUANTILE	ax, r10w, r11w, jl, jg, 1
Quantile_sint32:	QUANTILE	eax, r10d, r11d, jl, jg, 2
Quantile_sint64:	QUANTILE	rax, r10, r11, jl, jg, 3

;==============================================================================;
;       Median                                                                 ;
;==============================================================================;
macro	MEDIAN_INT	result, cmd, Quant, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ		rdx							; pointer to target element
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of array variable
space	= 1 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of type (bytes)
;------------------------------------------
		test	size, size
		jz		.error						; if (size = 0), then error
;---[Normal execution branch]--------------
		mov		ptr, size
		shr		ptr, 1						; ptr = size / 2
		lea		size, [array + size * bytes]; right = array + size
		lea		ptr, [array + ptr * bytes]	; ptr = array + size / 2
		jc		@f							; if (size %2 == 1), go to odd section
;---[If size is even]----------------------
		sub		stack, space				; reserving stack size for local vars
		sub		array, bytes				; array--
;---[Call quantile function]---------------
		mov		[s_array], array			; save array variable into the stack
		call	Quant						; call Quantile (left, size, ptr)
;------------------------------------------
		mov		size, ptr					; size = ptr
		sub		ptr, bytes					; ptr--
;---[Call quantile function]---------------
		mov		array, [s_array]			; get array variable from the stack
		call	Quant						; call Quantile (left, ptr, ptr-1)
;------------------------------------------
		mov		result, [ptr]
		add		result, [ptr + bytes]
		cmd		result, 1					; return 0.5 * (ptr[0] + ptr[1])
		add		stack, space				; restoring back the stack pointer
		ret
;---[If size is odd]-----------------------
@@:		sub		array, bytes				; array--
		call	Quant						; call Quantile function
		mov		result, [ptr]				; return ptr[0]
		ret
;---[Error branch]-------------------------
.error:	xor		result, result
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	QUARTILE	treg, shift, flag, x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
left	equ		array						; pointer to start of the data array
right	equ		size						; pointer to end of the data array
ptr		equ		rdx							; pointer to target element
result	equ		xmm0						; result register
half	equ		xmm1						; 0.5
stack	equ		rsp							; stack pointer
s_array	equ		stack +  0 * 8				; stack position of array variable
s_size	equ		stack +  1 * 8				; stack position of size variable
s_left	equ		stack +  2 * 8				; stack position of left variable
s_ptr	equ		stack +  3 * 8				; stack position of ptr variable
space	= 5 * 8								; stack size required by the procedure
if x eq s
Map		= Map_flt32							; Mapping function
Quant	= Quantile_sint32					; Quantile function
halfval	= HALF_FLT32						; 0.5
nan		= DMASK_FLT32						; NaN
bytes	= 4									; element size (bytes)
else
Map		= Map_flt64							; Mapping function
Quant	= Quantile_sint64					; Quantile function
halfval	= HALF_FLT64						; 0.5
nan		= DMASK_FLT64						; NaN
bytes	= 8									; element size (bytes)
end if
rmask	= (1 shl shift) - 1					; bit mask for reciprocal of division
;------------------------------------------
		test	size, size
		jz		.error						; if (size = 0), then return error
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
;---[Call convert function]----------------
		mov		[s_array], array			; save array variable into the stack
		mov		[s_size], size				; save size variable into the stack
		call	Map							; Call Map (array, size)
;---[Computing left, right, ptr]-----------
		mov		left, [s_array]				; get array variable from the stack
		mov		ptr, [s_size]				; get size variable from the stack
		lea		right, [left + ptr * bytes]	; right = array + size
if flag
		lea		ptr, [ptr + ptr * 2]		; ptr = 3 * size
end if
		shr		ptr, shift
		lea		ptr, [left + ptr * bytes]	; ptr = array + ptr
		sub		left, bytes					; left = array - 1
		mov		[s_ptr], ptr				; save ptr variable into the stack
;---[Call quantile function]---------------
		mov		[s_left], left				; save left variable into the stack
		call	Quant						; call Quantile (left, right, ptr)
;------------------------------------------
		test	qword [s_size], rmask		; if (size & rmask == 0)
		jnz		@f							; {
		mov		right, ptr
		sub		ptr, bytes
;---[Call quantile function]---------------
		mov		left, [s_left]				; call Quantile (left, ptr, ptr-1)
		call	Quant						; }
;---[Call convert function]----------------
@@:		mov		array, [s_array]			; get array variable from the stack
		mov		size, [s_size]				; get size variable from the stack
		call	Map							; Call Map (array, size)
;---[Computing quartile]-------------------
		mov		ptr, [s_ptr]				; get ptr variable from the stack
		movs#x	result, [ptr]				; result = ptr[0]
		test	qword [s_size], rmask		; if (size & rmask == 0)
		jnz		@f							; {
		initreg	half, treg, halfval, x		;     half = 0.5
		adds#x	result, [ptr - bytes]		;     result = 0.5 * (ptr[0] + ptr[-1])
		muls#x	result, half				; }
@@:		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nan, x		; return NaN
		ret
}

; Unsigned integer types
Median_uint8:	MEDIAN_INT	al, shr, Quantile_uint8, 0
Median_uint16:	MEDIAN_INT	ax, shr, Quantile_uint16, 1
Median_uint32:	MEDIAN_INT	eax, shr, Quantile_uint32, 2
Median_uint64:	MEDIAN_INT	rax, shr, Quantile_uint64, 3

; Signed integer types
Median_sint8:	MEDIAN_INT	al, sar, Quantile_sint8, 0
Median_sint16:	MEDIAN_INT	ax, sar, Quantile_sint16, 1
Median_sint32:	MEDIAN_INT	eax, sar, Quantile_sint32, 2
Median_sint64:	MEDIAN_INT	rax, sar, Quantile_sint64, 3

; Floating-point types
Median_flt32:	QUARTILE	eax, 1, 0, s
Median_flt64:	QUARTILE	rax, 1, 0, d

;==============================================================================;
;       Lower quartile                                                         ;
;==============================================================================;
LowerQuartile_flt32:	QUARTILE	eax, 2, 0, s
LowerQuartile_flt64:	QUARTILE	rax, 2, 0, d

;==============================================================================;
;       Upper quartile                                                         ;
;==============================================================================;
UpperQuartile_flt32:	QUARTILE	eax, 2, 1, s
UpperQuartile_flt64:	QUARTILE	rax, 2, 1, d

;==============================================================================;
;       Mid-range                                                              ;
;==============================================================================;
macro	MIDRANGE	treg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
result	equ		xmm0						; result register
half	equ		xmm1						; 0.5
stack	equ		rsp							; stack pointer
s_array	equ		stack +  0 * 8				; stack position of array variable
s_size	equ		stack +  1 * 8				; stack position of size variable
s_res	equ		stack +  2 * 8				; stack position of result variable
space	= 3 * 8								; stack size required by the procedure
if x eq s
Min		= Min_flt32							; Minimum function (flt32_t type)
Max		= Max_flt32							; Maximum function (flt32_t type)
halfval	= HALF_FLT32						; 0.5
nan		= DMASK_FLT32						; NaN
else
Min		= Min_flt64							; Minimum function (flt64_t type)
Max		= Max_flt64							; Maximum function (flt64_t type)
halfval	= HALF_FLT64						; 0.5
nan		= DMASK_FLT64						; NaN
end if
;------------------------------------------
		test	size, size
		jz		.error						; if (size = 0), then return error
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
;---[Call min function]--------------------
		mov		[s_array], array			; save array variable into the stack
		mov		[s_size], size				; save size variable into the stack
		call	Min							; call function Min (array[], size)
;------------------------------------------
		movs#x	[s_res], result				; save min value into the stack
;---[Call max function]--------------------
		mov		array, [s_array]			; get array variable from the stack
		mov		size, [s_size]				; get size variable from the stack
		call	Max							; call function Max (array[], size)
;---[Computing midrange]-------------------
		initreg	half, treg, halfval, x		; half = 0.5
		adds#x	result, [s_res]				; result = max(array[]) + min(array[])
		muls#x	result, half				; result = 0.5 * max(array[]) + min(array[])
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nan, x		; return NaN
		ret
}
Midrange_flt32:	MIDRANGE	eax, s
Midrange_flt64:	MIDRANGE	rax, d

;******************************************************************************;
;       Measures of variability                                                ;
;******************************************************************************;

;==============================================================================;
;       Variance                                                               ;
;==============================================================================;
macro	VARIANCE	treg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
mean	equ		xmm0						; data array mean
;---[Internal variables]-------------------
result	equ		mean						; result register
n		equ		xmm1						; array size (floating-point)
sum		equ		xmm2						; absolute central moment
temp	equ		xmm3						; temporary floating-point variable
if x eq s
nan		= DMASK_FLT32						; NaN
bytes	= 4									; element size (bytes)
else
nan		= DMASK_FLT64						; NaN
bytes	= 8									; element size (bytes)
end if
;------------------------------------------
		sub		size, 1
		jbe		.error						; if (size <= 1), then return error
;---[Normal execution branch]--------------
	cvtsi2s#x	n, size						; n = size - 1
		xorp#x	sum, sum					; sum = 0
;---[Vector section]-----------------------
		sub		size, 16 / bytes - 1		; if (size < 16 / bytes - 1), then
		jb		.sclr						; skip vector code and do scalar only
		shufp#x	mean, mean, 0x0				; duplicate value through the entire register
;---[Vector loop]--------------------------
.vloop:	movup#x	temp, [array]
		subp#x	temp, mean
		mulp#x	temp, temp
		addp#x	sum, temp					; sum += (array[0] - mean)^2
		add		array, 16					; array++
		sub		size, 16 / bytes			; size -= 16 / bytes
		jae		.vloop						; do while (size >= 16 / bytes)
;---[end of vector loop]-------------------
		summa	sum, x						; get all sums into one scalar value
;---[Scalar section]-----------------------
.sclr:	add		size, 16 / bytes			; if (size = 0), then
		jz		.exit						; go to exit from the procedure
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]
		subs#x	temp, mean
		muls#x	temp, temp
		adds#x	sum, temp					; sum += (array[0] - mean)^2
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[end of scalar loop]-------------------
.exit:	divs#x	sum, n						; sum = sum / (size - 1)
		movs#x	result, sum					; result = sum
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nan, x		; return NaN
		ret
}
Variance_flt32:	VARIANCE	eax, s
Variance_flt64:	VARIANCE	rax, d

;==============================================================================;
;       Standard deviation                                                     ;
;==============================================================================;
macro	STANDARD_DEVIATION	x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
mean	equ		xmm0						; data array mean
;---[Internal variables]-------------------
result	equ		mean						; result register
if x eq s
Var		= Variance_flt32					; Variance function
else
Var		= Variance_flt64					; Variance function
end if
;------------------------------------------
		call	Var							; result = Variance (array, size, mean)
		sqrts#x	result, result				; result = sqrt (res)
		ret
}
StandardDeviation_flt32:	STANDARD_DEVIATION	s
StandardDeviation_flt64:	STANDARD_DEVIATION	d

;==============================================================================;
;       Absolute deviation                                                     ;
;==============================================================================;
macro	ABSOLUTE_DEVIATION	treg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
value	equ		xmm0						; data array mean or median
;---[Internal variables]-------------------
result	equ		value						; result register
n		equ		xmm1						; array size (floating-point)
sum		equ		xmm2						; absolute central moment
temp	equ		xmm3						; temporary floating-point variable
mask	equ		xmm4						; bit mask to get absolute value
if x eq s
dmask	= DMASK_FLT32						; bit mask for absolute value
nan		= DMASK_FLT32						; NaN
bytes	= 4									; element size (bytes)
else
dmask	= DMASK_FLT64						; bit mask for absolute value
nan		= DMASK_FLT64						; NaN
bytes	= 8									; element size (bytes)
end if
;------------------------------------------
		sub		size, 1
		jbe		.error						; if (size <= 1), then return error
;---[Normal execution branch]--------------
		initreg	mask, treg, dmask, x		; mask = dmask
	cvtsi2s#x	n, size						; n = size - 1
		xorp#x	sum, sum					; sum = 0
;---[Vector section]-----------------------
		sub		size, 16 / bytes - 1		; if (size < 16 / bytes - 1), then
		jb		.sclr						; skip vector code and do scalar only
		shufp#x	value, value, 0x0			; duplicate value through the entire register
;---[Vector loop]--------------------------
.vloop:	movup#x	temp, [array]
		subp#x	temp, value
		andp#x	temp, mask
		addp#x	sum, temp					; sum += abs (array[0] - value)
		add		array, 16					; array++
		sub		size, 16 / bytes			; size -= 16 / bytes
		jae		.vloop						; do while (size >= 16 / bytes)
;---[end of vector loop]-------------------
		summa	sum, x						; get all sums into one scalar value
;---[Scalar section]-----------------------
.sclr:	add		size, 16 / bytes			; if (size = 0), then
		jz		.exit						; go to exit from the procedure
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]
		subs#x	temp, value
		andp#x	temp, mask
		adds#x	sum, temp					; sum += abs (array[0] - value)
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[end of scalar loop]-------------------
.exit:	divs#x	sum, n						; sum = sum / (size - 1)
		movs#x	result, sum					; result = sum
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nan, x		; return NaN
		ret
}
AbsoluteDeviation_flt32:	ABSOLUTE_DEVIATION	eax, s
AbsoluteDeviation_flt64:	ABSOLUTE_DEVIATION	rax, d

;==============================================================================;
;       Interquartile range                                                    ;
;==============================================================================;
macro	INTERQUARTILE_RANGE	treg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
left	equ		array						; pointer to start of the data array
right	equ		size						; pointer to end of the data array
index	equ		rdx							; pointer to target element
result	equ		xmm0						; result register
temp	equ		xmm1						; temporary variable
half	equ		xmm2						; 0.5
stack	equ		rsp							; stack pointer
s_array	equ		stack +  0 * 8				; stack position of array variable
s_size	equ		stack +  1 * 8				; stack position of size variable
s_left	equ		stack +  2 * 8				; stack position of left variable
s_right	equ		stack +  3 * 8				; stack position of right variable
s_ind1	equ		stack +  4 * 8				; stack position of index1 variable
s_ind2	equ		stack +  5 * 8				; stack position of index2 variable
space	= 7 * 8								; stack size required by the procedure
if x eq s
Map		= Map_flt32							; Mapping function
Quant	= Quantile_sint32					; Quantile function
halfval	= HALF_FLT32						; 0.5
nan		= DMASK_FLT32						; NaN
bytes	= 4									; element size (bytes)
else
Map		= Map_flt64							; Mapping function
Quant	= Quantile_sint64					; Quantile function
halfval	= HALF_FLT64						; 0.5
nan		= DMASK_FLT64						; NaN
bytes	= 8									; element size (bytes)
end if
;------------------------------------------
		test	size, size
		jz		.error
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
;---[Mapping flt_t to sint_t]--------------
		mov		[s_array], array			; save array variable into the stack
		mov		[s_size], size				; save size variable into the stack
		call	Map							; Call Map (array, size)
;---[Finding 1 quartile]-------------------
		mov		left, [s_array]				; get array variable from the stack
		mov		index, [s_size]				; get size variable from the stack
		lea		right, [left+index*bytes]	; right = array + size
		shr		index, 2
		lea		index, [left+index*bytes]	; index = array + size / 4
		sub		left, bytes					; left = array - 1
		mov		[s_right], right			; save right variable into the stack
		mov		[s_ind1], index				; save index variable into the stack
		mov		[s_left], left				; save left variable into the stack
		call	Quant						; call Quantile (left, right, index)
		test	qword [s_size], 0x3			; if (size % 4 == 0)
		jnz		@f							; {
		mov		right, [s_ind1]
		mov		left, [s_left]
		lea		index, [right - bytes]		; call Quantile (left, index, index-1)
		call	Quant						; }
;---[Finding 3 quartile]-------------------
@@:		mov		index, [s_size]				; get size variable from the stack
		mov		left, [s_left]				; get left variable from the stack
		lea		index, [index + index * 2]	; index = 3 * index
		mov		right, [s_right]			; get right variable from the stack
		shr		index, 2
		lea		index, [left+index*bytes+bytes]
		mov		[s_ind2], index				; save index variable into the stack
		call	Quant						; call Quantile (left, right, index)
		test	qword [s_size], 0x3			; if (size % 4 == 0)
		jnz		@f							; {
		mov		right, [s_ind2]
		mov		left, [s_left]
		lea		index, [right - bytes]		; call Quantile (left, index, index-1)
		call	Quant						; }
;---[Mapping sint_t to flt_t]--------------
@@:		mov		array, [s_array]			; get array variable from the stack
		mov		size, [s_size]				; get size variable from the stack
		call	Map							; Call Map (array, size)
;---[Computing interquartile range]--------
		mov		left, [s_ind1]				; left = index1 (quartile 1)
		mov		right, [s_ind2]				; right = index2 (quartile 3)
		movs#x	temp, [left]				; temp = left[0]
		movs#x	result, [right]				; result = right[0]
		test	qword [s_size], 0x3			; if (size % 4 == 0)
		jnz		@f							; {
		initreg	half, treg, halfval, x		;     half = 0.5
		adds#x	temp, [left - bytes]		;     temp = 0.5 * (left[0] + left[-1])
		adds#x	result, [right - bytes]		;     result = 0.5 * (right[0] + right[-1])
		muls#x	temp, half
		muls#x	result, half				; }
@@:		subs#x	result, temp				; result = result - temp
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nan, x		; return NaN
		ret
}
InterquartileRange_flt32:	INTERQUARTILE_RANGE	eax, s
InterquartileRange_flt64:	INTERQUARTILE_RANGE	rax, d

;==============================================================================;
;       Range                                                                  ;
;==============================================================================;
macro	RANGE	treg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
result	equ		xmm0						; result register
stack	equ		rsp							; stack pointer
s_array	equ		stack +  0 * 8				; stack position of array variable
s_size	equ		stack +  1 * 8				; stack position of size variable
s_res	equ		s_array						; stack position of result variable
space	= 3 * 8								; stack size required by the procedure
if x eq s
Min		= Min_flt32							; Minimum function (flt32_t type)
Max		= Max_flt32							; Maximum function (flt32_t type)
nan		= DMASK_FLT32						; NaN
else
Min		= Min_flt64							; Minimum function (flt64_t type)
Max		= Max_flt64							; Maximum function (flt64_t type)
nan		= DMASK_FLT64						; NaN
end if
;------------------------------------------
		test	size, size
		jz		.error						; if (size = 0), then return error
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; push array variable into the stack
		mov		[s_size], size				; push size variable into the stack
		call	Min							; call function Min (array[], size)
		mov		array, [s_array]			; pop array variable from the stack
		mov		size, [s_size]				; pop size variable from the stack
		movs#x	[s_res], result				; push res variable into the stack
		call	Max							; call function Max (array[], size)
		subs#x	result, [s_res]				; res = max(array[]) - min(array[])
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nan, x		; return NaN
		ret
}
Range_flt32:	RANGE	eax, s
Range_flt64:	RANGE	rax, d

;******************************************************************************;
;       Measures of shape                                                      ;
;******************************************************************************;

;==============================================================================;
;       Skewness                                                               ;
;==============================================================================;
macro	SKEWNESS	treg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
mean	equ		xmm0						; data array mean
;---[Internal variables]-------------------
t1		equ		rax							; temporary integer variable #1
t2		equ		rdx							; temporary integer variable #2
result	equ		mean						; result register
n		equ		xmm1						; array size (floating-point)
sum1	equ		xmm2						; central moment #2
sum2	equ		xmm3						; central moment #3
temp1	equ		xmm4						; temporary floating-point variable #1
temp2	equ		xmm5						; temporary floating-point variable #2
if x eq s
nan		= DMASK_FLT32						; NaN
bytes	= 4									; element size (bytes)
else
nan		= DMASK_FLT64						; NaN
bytes	= 8									; element size (bytes)
end if
;------------------------------------------
		cmp		size, 2
		jbe		.error						; if (size <= 2), then return error
;---[Normal execution branch]--------------
		mov		t1, size
		mov		t2, size
		sub		t1, 1						; t1 = size - 1
		sub		t2, 2						; t2 = size - 2
	cvtsi2s#x	n, size						; n = size
	cvtsi2s#x	temp1, t1					; temp1 = n - 1
	cvtsi2s#x	temp2, t2					; temp2 = n - 2
		sqrts#x	temp1, temp1				; temp1 = sqrt (n - 1)
		divs#x	n, temp2					; n = n / (n - 2)
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
		muls#x	n, temp1					; n = n * sqrt (n - 1) / (n - 2)
;---[Vector section]-----------------------
		sub		size, 16 / bytes			; if (size < 16 / bytes), then
		jb		.sclr						; skip vector code and do scalar only
		shufp#x	mean, mean, 0x0				; duplicate value through the entire register
;---[Vector loop]--------------------------
.vloop:	movup#x	temp1, [array]
		subp#x	temp1, mean
		movap#x	temp2, temp1
		mulp#x	temp1, temp1
		addp#x	sum1, temp1					; sum1 += (array[0] - mean)^2
		mulp#x	temp2, temp1
		addp#x	sum2, temp2					; sum2 += (array[0] - mean)^3
		add		array, 16					; array++
		sub		size, 16 / bytes			; size -= 16 / bytes
		jae		.vloop						; do while (size >= 16 / bytes)
;---[end of vector loop]-------------------
		summa	sum1, x						; get all sums into one scalar value
		summa	sum2, x						; get all sums into one scalar value
;---[Scalar section]-----------------------
.sclr:	add		size, 16 / bytes			; if (size = 0), then
		jz		.exit						; go to exit from the procedure
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp1, [array]
		subs#x	temp1, mean
		movs#x	temp2, temp1
		muls#x	temp1, temp1
		adds#x	sum1, temp1					; sum1 += (array[0] - mean)^2
		muls#x	temp2, temp1
		adds#x	sum2, temp2					; sum2 += (array[0] - mean)^3
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[end of scalar loop]-------------------
.exit:	sqrts#x	temp1, sum1					; temp1 = sqrt (sum1)
		divs#x	sum2, sum1					; sum2 = sum2 / sum1
		divs#x	sum2, temp1					; sum2 = sum2 / (sum1 * sqrt (sum1))
		muls#x	sum2, n						; sum2 = n * sum2 / (sum1 * sqrt (sum1))
		movs#x	result, sum2				; result = sum2
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nan, x		; return NaN
		ret
}
Skewness_flt32:	SKEWNESS	eax, s
Skewness_flt64:	SKEWNESS	rax, d

;==============================================================================;
;       Kurtosis                                                               ;
;==============================================================================;
macro	KURTOSIS	treg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
mean	equ		xmm0						; data array mean
;---[Internal variables]-------------------
t1		equ		rax							; temporary integer variable #1
t2		equ		rdx							; temporary integer variable #2
t3		equ		r8							; temporary integer variable #3
t4		equ		r9							; temporary integer variable #4
result	equ		mean						; result register
n		equ		xmm1						; array size (floating-point)
bias	equ		xmm2						; bias for kurtosis (normal has 3)
sum1	equ		xmm3						; central moment #2
sum2	equ		xmm4						; central moment #4
temp1	equ		xmm5						; temporary floating-point variable #1
temp2	equ		xmm6						; temporary floating-point variable #2
temp3	equ		sum1						; temporary floating-point variable #3
temp4	equ		sum2						; temporary floating-point variable #4
if x eq s
nbias	= BIAS_FLT32						; bias const (3.0 for normal distribution)
nan		= DMASK_FLT32						; NaN
bytes	= 4									; element size (bytes)
else
nbias	= BIAS_FLT64						; bias const (3.0 for normal distribution)
nan		= DMASK_FLT64						; NaN
bytes	= 8									; element size (bytes)
end if
;------------------------------------------
		cmp		size, 3
		jbe		.error						; if (size <= 3), then return error
;---[Normal execution branch]--------------
		mov		t1, size
		mov		t2, size
		mov		t3, size
		mov		t4, size
		sub		t1, 1						; t1 = size - 1
		sub		t2, 2						; t2 = size - 2
		sub		t3, 3						; t3 = size - 3
		add		t4, 1						; t4 = size + 1
		initreg	bias, treg, nbias, x		; bias = 3.0
	cvtsi2s#x	n, size						; n = size
	cvtsi2s#x	temp1, t1					; temp1 = n - 1
	cvtsi2s#x	temp2, t2					; temp2 = n - 2
	cvtsi2s#x	temp3, t3					; temp3 = n - 3
	cvtsi2s#x	temp4, t4					; temp4 = n + 1
		muls#x	bias, temp1					; bias = 3.0 * (n - 1)
		muls#x	temp2, temp3				; temp2 = (n - 2) * (n - 3)
		muls#x	n, temp4					; n = n * (n + 1)
		divs#x	temp1, temp2				; temp1 = (n - 1) / ((n - 2) * (n - 3))
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
;---[Vector section]-----------------------
		sub		size, 16 / bytes			; if (size < 16 / bytes), then
		jb		.sclr						; skip vector code and do scalar only
		shufp#x	mean, mean, 0x0				; duplicate value through the entire register
;---[Vector loop]--------------------------
.vloop:	movup#x	temp2, [array]
		subp#x	temp2, mean
		mulp#x	temp2, temp2
		addp#x	sum1, temp2					; sum1 += (array[0] - mean)^2
		mulp#x	temp2, temp2
		addp#x	sum2, temp2					; sum2 += (array[0] - mean)^4
		add		array, 16					; array++
		sub		size, 16 / bytes			; size -= 16 / bytes
		jae		.vloop						; do while (size >= 16 / bytes)
;---[end of vector loop]-------------------
		summa	sum1, x						; get all sums into one scalar value
		summa	sum2, x						; get all sums into one scalar value
;---[Scalar section]-----------------------
.sclr:	add		size, 16 / bytes			; if (size = 0), then
		jz		.exit						; go to exit from the procedure
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp2, [array]
		subs#x	temp2, mean
		muls#x	temp2, temp2
		adds#x	sum1, temp2					; sum1 += (array[0] - mean)^2
		muls#x	temp2, temp2
		adds#x	sum2, temp2					; sum2 += (array[0] - mean)^4
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[end of scalar loop]-------------------
.exit:	divs#x	sum2, sum1
		divs#x	sum2, sum1					; sum2 = sum2 / sum1^2
		muls#x	sum2, n						; sum2 = n * sum2
		subs#x	sum2, bias					; sum2 = n * sum2 - bias
		muls#x	sum2, temp1					; sum2 = (n * sum2 - bias) * temp1
		movs#x	result, sum2				; result = sum2
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nan, x		; return NaN
		ret
}
Kurtosis_flt32:	KURTOSIS	ecx, s
Kurtosis_flt64:	KURTOSIS	rcx, d

;******************************************************************************;
;       Other functions                                                        ;
;******************************************************************************;

;==============================================================================;
;       Covariance                                                             ;
;==============================================================================;
macro	COVARIANCE	treg, x
{
;---[Parameters]---------------------------
array1	equ		rdi							; data array1
array2	equ		rsi							; data array2
size	equ		rdx							; array size (count of elements)
mean1	equ		xmm0						; data array1 mean
mean2	equ		xmm1						; data array2 mean
;---[Internal variables]-------------------
result	equ		mean						; result register
n		equ		xmm2						; array size (floating-point)
sum		equ		xmm3						; covarince
temp1	equ		xmm4						; temporary floating-point variable #1
temp2	equ		xmm5						; temporary floating-point variable #2
if x eq s
nan		= DMASK_FLT32						; NaN
bytes	= 4									; element size (bytes)
else
nan		= DMASK_FLT64						; NaN
bytes	= 8									; element size (bytes)
end if
;------------------------------------------
		sub		size, 1
		jbe		.error						; if (size <= 1), then return error
;---[Normal execution branch]--------------
	cvtsi2s#x	n, size						; n = size - 1
		xorp#x	sum, sum					; sum = 0
;---[Vector section]-----------------------
		sub		size, 16 / bytes - 1		; if (size < 16 / bytes - 1), then
		jb		.sclr						; skip vector code and do scalar only
		shufp#x	mean1, mean1, 0x0			; duplicate value through the entire register
		shufp#x	mean2, mean2, 0x0			; duplicate value through the entire register
;---[Vector loop]--------------------------
.vloop:	movup#x	temp1, [array1]
		movup#x	temp2, [array2]
		subp#x	temp1, mean1				; temp1 = array1[0] - mean1
		subp#x	temp2, mean2				; temp2 = array2[0] - mean2
		mulp#x	temp1, temp2
		addp#x	sum, temp1					; sum += temp1 * temp2
		add		array1, 16					; array1++
		add		array2, 16					; array2++
		sub		size, 16 / bytes			; size -= 16 / bytes
		jae		.vloop						; do while (size >= 16 / bytes)
;---[end of vector loop]-------------------
		summa	sum, x						; get all sums into one scalar value
;---[Scalar section]-----------------------
.sclr:	add		size, 16 / bytes			; if (size = 0), then
		jz		.exit						; go to exit from the procedure
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp1, [array1]
		movs#x	temp2, [array2]
		subs#x	temp1, mean1				; temp1 = array1[0] - mean1
		subs#x	temp2, mean2				; temp2 = array2[0] - mean2
		muls#x	temp1, temp2
		adds#x	sum, temp1					; sum += temp1 * temp2
		add		array1, bytes				; array1++
		add		array2, bytes				; array2++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[end of scalar loop]-------------------
.exit:	divs#x	sum, n						; sum = sum / (size - 1)
		movs#x	result, sum					; result = sum
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nan, x		; return NaN
		ret
}
Covariance_flt32:	COVARIANCE	eax, s
Covariance_flt64:	COVARIANCE	rax, d

;==============================================================================;
;       Correlation                                                            ;
;==============================================================================;
macro	CORRELATION	x
{
;---[Parameters]---------------------------
array1	equ		rdi							; data array1
array2	equ		rsi							; data array2
size	equ		rdx							; array size (count of elements)
mean1	equ		xmm0						; data array1 mean
mean2	equ		xmm1						; data array2 mean
;---[Internal variables]-------------------
result	equ		mean						; result register
sum		equ		xmm2						; covarince
sum1	equ		xmm3						; data array1 varince
sum2	equ		xmm4						; data array2 varince
temp	equ		xmm5						; temporary floating-point variable
temp1	equ		xmm6						; temporary floating-point variable #1
temp2	equ		xmm7						; temporary floating-point variable #2
if x eq s
bytes	= 4									; element size (bytes)
else
bytes	= 8									; element size (bytes)
end if
;------------------------------------------
		xorp#x	sum, sum					; sum = 0
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
;---[Vector section]-----------------------
		sub		size, 16 / bytes			; if (size < 16 / bytes), then
		jb		.sclr						; skip vector code and do scalar only
		shufp#x	mean1, mean1, 0x0			; duplicate value through the entire register
		shufp#x	mean2, mean2, 0x0			; duplicate value through the entire register
;---[Vector loop]--------------------------
.vloop:	movup#x	temp1, [array1]
		movup#x	temp2, [array2]
		subp#x	temp1, mean1				; temp1 = (array1[0] - mean1)
		subp#x	temp2, mean2				; temp2 = (array2[0] - mean2)
		movap#x	temp, temp1
		mulp#x	temp, temp2
		addp#x	sum, temp					; sum += temp1 * temp2
		mulp#x	temp1, temp1
		addp#x	sum1, temp1					; sum1 += (array1[0] - mean1)^2
		mulp#x	temp2, temp2
		addp#x	sum2, temp2					; sum2 += (array2[0] - mean2)^2
		add		array1, 16					; array1++
		add		array2, 16					; array2++
		sub		size, 16 / bytes			; size -= 16 / bytes
		jae		.vloop						; do while (size >= 16 / bytes)
;---[end of vector loop]-------------------
		summa	sum, x						; get all sums into one scalar value
		summa	sum1, x						; get all sums into one scalar value
		summa	sum2, x						; get all sums into one scalar value
;---[Scalar section]-----------------------
.sclr:	add		size, 16 / bytes			; if (size = 0), then
		jz		.exit						; go to exit from the procedure
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp1, [array1]
		movs#x	temp2, [array2]
		subs#x	temp1, mean1				; temp1 = (array1[0] - mean1)
		subs#x	temp2, mean2				; temp2 = (array2[0] - mean2)
		movs#x	temp, temp1
		muls#x	temp, temp2
		adds#x	sum, temp					; sum += temp1 * temp2
		muls#x	temp1, temp1
		adds#x	sum1, temp1					; sum1 += (array1[0] - mean1)^2
		muls#x	temp2, temp2
		adds#x	sum2, temp2					; sum2 += (array2[0] - mean2)^2
		add		array1, bytes				; array1++
		add		array2, bytes				; array1++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[end of scalar loop]-------------------
.exit:	sqrts#x	sum1, sum1
		sqrts#x	sum2, sum2
		muls#x	sum1, sum2
		divs#x	sum, sum1
		movs#x	result, sum					; return sum / (sqrt(sum1) * sqrt(sum2))
		ret
}
Correlation_flt32:	CORRELATION	s
Correlation_flt64:	CORRELATION	d

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
