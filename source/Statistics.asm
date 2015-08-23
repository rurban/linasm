;                                                                 Statistics.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                      WIDELY USED STATISTICAL FUNCTIONS                      #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2015, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################

; Mapping functions
extrn	'Map_flt32'						as	Map_flt32
extrn	'Map_flt64'						as	Map_flt64

; Sum of elements
extrn	'Array_Sum_flt32'				as	Sum_flt32
extrn	'Array_Sum_flt64'				as	Sum_flt64

; Sum of squared differences
extrn	'Array_SumSqrDiff_flt32'		as	SumSqrDiff_flt32
extrn	'Array_SumSqrDiff_flt64'		as	SumSqrDiff_flt64

; Radix sort
extrn	'Array_RadixSortKeyAsc_flt32'	as	RadixSort_flt32
extrn	'Array_RadixSortKeyAsc_flt64'	as	RadixSort_flt64

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

; Unsigned integer types
public	LowerQuart_uint8			as	'Statistics_LowerQuartile_uint8'
public	LowerQuart_uint16			as	'Statistics_LowerQuartile_uint16'
public	LowerQuart_uint32			as	'Statistics_LowerQuartile_uint32'
public	LowerQuart_uint64			as	'Statistics_LowerQuartile_uint64'
public	LowerQuart_uint8			as	'_ZN10Statistics13LowerQuartileEPhm'
public	LowerQuart_uint16			as	'_ZN10Statistics13LowerQuartileEPtm'
public	LowerQuart_uint32			as	'_ZN10Statistics13LowerQuartileEPjm'
public	LowerQuart_uint64			as	'_ZN10Statistics13LowerQuartileEPym'

; Signed integer types
public	LowerQuart_sint8			as	'Statistics_LowerQuartile_sint8'
public	LowerQuart_sint16			as	'Statistics_LowerQuartile_sint16'
public	LowerQuart_sint32			as	'Statistics_LowerQuartile_sint32'
public	LowerQuart_sint64			as	'Statistics_LowerQuartile_sint64'
public	LowerQuart_sint8			as	'_ZN10Statistics13LowerQuartileEPam'
public	LowerQuart_sint16			as	'_ZN10Statistics13LowerQuartileEPsm'
public	LowerQuart_sint32			as	'_ZN10Statistics13LowerQuartileEPim'
public	LowerQuart_sint64			as	'_ZN10Statistics13LowerQuartileEPxm'

; Floating-point types
public	LowerQuart_flt32			as	'Statistics_LowerQuartile_flt32'
public	LowerQuart_flt64			as	'Statistics_LowerQuartile_flt64'
public	LowerQuart_flt32			as	'_ZN10Statistics13LowerQuartileEPfm'
public	LowerQuart_flt64			as	'_ZN10Statistics13LowerQuartileEPdm'

; Other types
public	LowerQuart_uint64			as	'Statistics_LowerQuartile_size'
public	LowerQuart_uint64			as	'_ZN10Statistics13LowerQuartileEPmm'

;==============================================================================;
;       Upper quartile                                                         ;
;==============================================================================;

; Unsigned integer types
public	UpperQuart_uint8			as	'Statistics_UpperQuartile_uint8'
public	UpperQuart_uint16			as	'Statistics_UpperQuartile_uint16'
public	UpperQuart_uint32			as	'Statistics_UpperQuartile_uint32'
public	UpperQuart_uint64			as	'Statistics_UpperQuartile_uint64'
public	UpperQuart_uint8			as	'_ZN10Statistics13UpperQuartileEPhm'
public	UpperQuart_uint16			as	'_ZN10Statistics13UpperQuartileEPtm'
public	UpperQuart_uint32			as	'_ZN10Statistics13UpperQuartileEPjm'
public	UpperQuart_uint64			as	'_ZN10Statistics13UpperQuartileEPym'

; Signed integer types
public	UpperQuart_sint8			as	'Statistics_UpperQuartile_sint8'
public	UpperQuart_sint16			as	'Statistics_UpperQuartile_sint16'
public	UpperQuart_sint32			as	'Statistics_UpperQuartile_sint32'
public	UpperQuart_sint64			as	'Statistics_UpperQuartile_sint64'
public	UpperQuart_sint8			as	'_ZN10Statistics13UpperQuartileEPam'
public	UpperQuart_sint16			as	'_ZN10Statistics13UpperQuartileEPsm'
public	UpperQuart_sint32			as	'_ZN10Statistics13UpperQuartileEPim'
public	UpperQuart_sint64			as	'_ZN10Statistics13UpperQuartileEPxm'

; Floating-point types
public	UpperQuart_flt32			as	'Statistics_UpperQuartile_flt32'
public	UpperQuart_flt64			as	'Statistics_UpperQuartile_flt64'
public	UpperQuart_flt32			as	'_ZN10Statistics13UpperQuartileEPfm'
public	UpperQuart_flt64			as	'_ZN10Statistics13UpperQuartileEPdm'

; Other types
public	UpperQuart_uint64			as	'Statistics_UpperQuartile_size'
public	UpperQuart_uint64			as	'_ZN10Statistics13UpperQuartileEPmm'

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

;==============================================================================;
;       Variance                                                               ;
;==============================================================================;
public	Variance_flt32				as	'Statistics_Variance_flt32'
public	Variance_flt64				as	'Statistics_Variance_flt64'
public	Variance_flt32				as	'_ZN10Statistics8VarianceEPKfmf'
public	Variance_flt64				as	'_ZN10Statistics8VarianceEPKdmd'

;==============================================================================;
;       Standard deviation                                                     ;
;==============================================================================;
public	StdDeviation_flt32			as	'Statistics_StandardDeviation_flt32'
public	StdDeviation_flt64			as	'Statistics_StandardDeviation_flt64'
public	StdDeviation_flt32			as	'_ZN10Statistics17StandardDeviationEPKfmf'
public	StdDeviation_flt64			as	'_ZN10Statistics17StandardDeviationEPKdmd'

;==============================================================================;
;       Absolute deviation                                                     ;
;==============================================================================;
public	AbsDeviation_flt32			as	'Statistics_AbsoluteDeviation_flt32'
public	AbsDeviation_flt64			as	'Statistics_AbsoluteDeviation_flt64'
public	AbsDeviation_flt32			as	'_ZN10Statistics17AbsoluteDeviationEPKfmf'
public	AbsDeviation_flt64			as	'_ZN10Statistics17AbsoluteDeviationEPKdmd'

;==============================================================================;
;       Interquartile range                                                    ;
;==============================================================================;

; Unsigned integer types
public	QuartRange_uint8			as	'Statistics_InterquartileRange_uint8'
public	QuartRange_uint16			as	'Statistics_InterquartileRange_uint16'
public	QuartRange_uint32			as	'Statistics_InterquartileRange_uint32'
public	QuartRange_uint64			as	'Statistics_InterquartileRange_uint64'
public	QuartRange_uint8			as	'_ZN10Statistics18InterquartileRangeEPhm'
public	QuartRange_uint16			as	'_ZN10Statistics18InterquartileRangeEPtm'
public	QuartRange_uint32			as	'_ZN10Statistics18InterquartileRangeEPjm'
public	QuartRange_uint64			as	'_ZN10Statistics18InterquartileRangeEPym'

; Signed integer types
public	QuartRange_sint8			as	'Statistics_InterquartileRange_sint8'
public	QuartRange_sint16			as	'Statistics_InterquartileRange_sint16'
public	QuartRange_sint32			as	'Statistics_InterquartileRange_sint32'
public	QuartRange_sint64			as	'Statistics_InterquartileRange_sint64'
public	QuartRange_sint8			as	'_ZN10Statistics18InterquartileRangeEPam'
public	QuartRange_sint16			as	'_ZN10Statistics18InterquartileRangeEPsm'
public	QuartRange_sint32			as	'_ZN10Statistics18InterquartileRangeEPim'
public	QuartRange_sint64			as	'_ZN10Statistics18InterquartileRangeEPxm'

; Floating-point types
public	QuartRange_flt32			as	'Statistics_InterquartileRange_flt32'
public	QuartRange_flt64			as	'Statistics_InterquartileRange_flt64'
public	QuartRange_flt32			as	'_ZN10Statistics18InterquartileRangeEPfm'
public	QuartRange_flt64			as	'_ZN10Statistics18InterquartileRangeEPdm'

; Other types
public	QuartRange_uint64			as	'Statistics_InterquartileRange_size'
public	QuartRange_uint64			as	'_ZN10Statistics18InterquartileRangeEPmm'

;==============================================================================;
;       Range                                                                  ;
;==============================================================================;
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
;       Covariance                                                             ;
;******************************************************************************;
public	Covariance_flt32			as	'Statistics_Covariance_flt32'
public	Covariance_flt64			as	'Statistics_Covariance_flt64'
public	Covariance_flt32			as	'_ZN10Statistics10CovarianceEPKfS1_mff'
public	Covariance_flt64			as	'_ZN10Statistics10CovarianceEPKdS1_mdd'

;******************************************************************************;
;       Сorrelation                                                            ;
;******************************************************************************;

; Pearson correlation
public	PearsonCorrelation_flt32	as	'Statistics_PearsonCorrelation_flt32'
public	PearsonCorrelation_flt64	as	'Statistics_PearsonCorrelation_flt64'
public	PearsonCorrelation_flt32	as	'_ZN10Statistics18PearsonCorrelationEPKfS1_mff'
public	PearsonCorrelation_flt64	as	'_ZN10Statistics18PearsonCorrelationEPKdS1_mdd'

; Fechner correlation
public	FechnerCorrelation_flt32	as	'Statistics_FechnerCorrelation_flt32'
public	FechnerCorrelation_flt64	as	'Statistics_FechnerCorrelation_flt64'
public	FechnerCorrelation_flt32	as	'_ZN10Statistics18FechnerCorrelationEPKfS1_mff'
public	FechnerCorrelation_flt64	as	'_ZN10Statistics18FechnerCorrelationEPKdS1_mdd'

; Spearman correlation
public	SpearmanCorrelation_flt32	as	'Statistics_SpearmanCorrelation_flt32'
public	SpearmanCorrelation_flt64	as	'Statistics_SpearmanCorrelation_flt64'
public	SpearmanCorrelation_flt32	as	'_ZN10Statistics19SpearmanCorrelationEPfPmS0_S1_S0_S1_m'
public	SpearmanCorrelation_flt64	as	'_ZN10Statistics19SpearmanCorrelationEPdPmS0_S1_S0_S1_m'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

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
fptr	equ		rax							; pointer to call external function
result	equ		xmm0						; result register
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_size	equ		stack + 0 * 8				; stack position of "size" variable
if x eq s
Sum		= Sum_flt32							; Sum of elements
else if x eq d
Sum		= Sum_flt64							; Sum of elements
end if
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_size], size				; save "size" variable into the stack
;---[Call sum function]--------------------
		mov		fptr, Sum
		call	fptr						; call Sum (array, size)
;---[Compute mean value]-------------------
	cvtsi2s#x	temp, [s_size]				; get "size" variable from the stack
		divs#x	result, temp
		add		stack, space				; restoring back the stack pointer
;------------------------------------------
		ret									; return (sum / size)
}
Mean_flt32:	MEAN	s
Mean_flt64:	MEAN	d

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
lptr	equ		r8							; left pointer to split data array
rptr	equ		r9							; right pointer to split data array
bytes	= 1 shl scale						; size of type (bytes)
;---[Main loop]----------------------------
.loop:	mov		value, [ptr]				; value = ptr[0]
		mov		lptr, left					; lptr = left
		mov		rptr, right					; rptr = right
		jmp		.loop1						; skip swap section
;---[Swap loop]----------------------------
.swap:	mov		[lptr], swap2				; lptr[0] = swap2
		mov		[rptr], swap1				; rptr[0] = swap1
;---[Internal loop 1]----------------------
.loop1:	add		lptr, bytes					; lptr++
		mov		swap1, [lptr]				; swap1 = lptr[0]
		cmp		swap1, value
		cond1	.loop1						; do while (swap1 < value)
;---[Internal loop 2]----------------------
.loop2:	sub		rptr, bytes					; rptr--
		mov		swap2, [rptr]				; swap2 = rptr[0]
		cmp		swap2, value
		cond2	.loop2						; do while (swap2 > value)
;------------------------------------------
		cmp		lptr, rptr
		jb		.swap						; do while (lptr < rptr)
;---[End of swap loop]---------------------
		cmp		rptr, ptr					; if (rptr < ptr)
		jae		@f							; {
		mov		left, rptr					;     left = rptr
		jmp		.loop						; }
;---[End of main loop]---------------------
@@:		cmp		lptr, ptr					; else if (lptr > ptr)
		jbe		@f							; {
		mov		right, lptr					;     right = lptr
		jmp		.loop						; }
;---[End of main loop]---------------------
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
;       Quartile                                                               ;
;==============================================================================;
macro	QUARTILE_CORE	Quant, quart, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
result1	equ		rax							; first result register
result2	equ		rdx							; second result register
index	equ		rax							; index of target element
ptr1	equ		rdx							; pointer to first target element
ptr2	equ		rcx							; pointer to second target element
ptr		equ		ptr1						; pointer parameter for Quantile function
left	equ		array						; pointer to beginning of array
right	equ		size						; pointer to ending of array
stack	equ		rsp							; stack pointer
s_size	equ		stack + 0 * 8				; stack position of "size" variable
s_left	equ		stack + 1 * 8				; stack position of "left" variable
s_right	equ		stack + 2 * 8				; stack position of "right" variable
s_ptr1	equ		stack + 3 * 8				; stack position of "ptr1" variable
s_ptr2	equ		stack + 4 * 8				; stack position of "ptr2" variable
if quart = 2
shift	= 1									; index scale factor
mask	= 1									; reminder mask
else
shift	= 2									; index scale factor
mask	= 3									; reminder mask
end if
space	= 5 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_size], size				; save "size" variable into the stack
;---[Compute indexes]----------------------
		mov		index, size
if quart = 3
		lea		index, [index + index * 2]	; index = 3 * size
end if
		shr		index, shift
		lea		ptr1, [array + index*bytes]	; ptr1 = array + index
		mov		ptr2, ptr1					; ptr2 = ptr1
		lea		right, [array + size*bytes]	; right = array + size
		sub		left, bytes					; left = array - 1
;---[Call quantile function]---------------
		mov		[s_ptr1], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr2], ptr2				; save "ptr2" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		call	Quant						; call Quantile (left, right, ptr1)
;---[Call quantile function]---------------
		test	qword [s_size], mask		; if (size % mask == 0)
		jnz		@f							; {
		sub		qword [s_ptr2], bytes		;     ptr2--
		mov		left, [s_left]
		mov		right, [s_ptr1]
		mov		ptr, [s_ptr2]				;     call Quantile (left, right, ptr2)
		call	Quant						; }
;---[Compute quartile]---------------------
@@:		mov		result1, [s_ptr1]			; get "ptr1" variable from the stack
		mov		result2, [s_ptr2]			; get "ptr2" variable from the stack
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	QUARTILE_INT	Quart, result
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr1	equ		rax							; pointer to first target element
ptr2	equ		rdx							; pointer to second target element
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
		call	Quart						; call Quartile (array, size)
;---[Compute quartile]---------------------
		mov		result, [ptr1]
		add		result, [ptr2]
		rcr		result, 1					; return 0.5 * (ptr1[0] + ptr2[0])
		ret
;---[Error branch]-------------------------
.error:	xor		result, result				; return 0
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	QUARTILE_FLT	Quart, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr1	equ		rax							; pointer to first target element
ptr2	equ		rdx							; pointer to second target element
fptr	equ		rax							; pointer to call external function
result	equ		xmm0						; result register
half	equ		xmm1						; 0.5
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_ptr1	equ		stack + 2 * 8				; stack position of "ptr1" variable
s_ptr2	equ		stack + 3 * 8				; stack position of "ptr2" variable
if x eq s
Map		= Map_flt32							; map function
halfval	= PHALF_FLT32						; +0.5
nanval	= PNAN_FLT32						; +NaN
else if x eq d
Map		= Map_flt64							; map function
halfval	= PHALF_FLT64						; +0.5
nanval	= PNAN_FLT64						; +NaN
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
		sub		stack, space				; reserving stack size for local vars
;---[Call convert function]----------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		fptr, Map
		call	fptr						; Call Map (array, size)
;---[Call quartile function]---------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	Quart						; call Quartile (array, size)
		mov		[s_ptr1], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr2], ptr2				; save "ptr2" variable into the stack
;---[Call convert function]----------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		fptr, Map
		call	fptr						; Call Map (array, size)
;---[Compute quartile]---------------------
		mov		ptr1, [s_ptr1]				; get "ptr1" variable from the stack
		mov		ptr2, [s_ptr2]				; get "ptr2" variable from the stack
		initreg	half, size, halfval			; half = 0.5
		movs#x	result, [ptr1]
		adds#x	result, [ptr2]
		muls#x	result, half				; return 0.5 * (ptr1[0] + ptr2[0])
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	initreg	result, size, nanval		; return NaN
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       1-st quartile                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
Quartile1_uint8:	QUARTILE_CORE	Quantile_uint8, 1, 0
Quartile1_uint16:	QUARTILE_CORE	Quantile_uint16, 1, 1
Quartile1_uint32:	QUARTILE_CORE	Quantile_uint32, 1, 2
Quartile1_uint64:	QUARTILE_CORE	Quantile_uint64, 1, 3

; Signed integer types
Quartile1_sint8:	QUARTILE_CORE	Quantile_sint8, 1, 0
Quartile1_sint16:	QUARTILE_CORE	Quantile_sint16, 1, 1
Quartile1_sint32:	QUARTILE_CORE	Quantile_sint32, 1, 2
Quartile1_sint64:	QUARTILE_CORE	Quantile_sint64, 1, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       2-nd quartile                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
Quartile2_uint8:	QUARTILE_CORE	Quantile_uint8, 2, 0
Quartile2_uint16:	QUARTILE_CORE	Quantile_uint16, 2, 1
Quartile2_uint32:	QUARTILE_CORE	Quantile_uint32, 2, 2
Quartile2_uint64:	QUARTILE_CORE	Quantile_uint64, 2, 3

; Signed integer types
Quartile2_sint8:	QUARTILE_CORE	Quantile_sint8, 2, 0
Quartile2_sint16:	QUARTILE_CORE	Quantile_sint16, 2, 1
Quartile2_sint32:	QUARTILE_CORE	Quantile_sint32, 2, 2
Quartile2_sint64:	QUARTILE_CORE	Quantile_sint64, 2, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       3-rd quartile                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
Quartile3_uint8:	QUARTILE_CORE	Quantile_uint8, 3, 0
Quartile3_uint16:	QUARTILE_CORE	Quantile_uint16, 3, 1
Quartile3_uint32:	QUARTILE_CORE	Quantile_uint32, 3, 2
Quartile3_uint64:	QUARTILE_CORE	Quantile_uint64, 3, 3

; Signed integer types
Quartile3_sint8:	QUARTILE_CORE	Quantile_sint8, 3, 0
Quartile3_sint16:	QUARTILE_CORE	Quantile_sint16, 3, 1
Quartile3_sint32:	QUARTILE_CORE	Quantile_sint32, 3, 2
Quartile3_sint64:	QUARTILE_CORE	Quantile_sint64, 3, 3

;==============================================================================;
;       Median                                                                 ;
;==============================================================================;

; Unsigned integer types
Median_uint8:		QUARTILE_INT	Quartile2_uint8, al
Median_uint16:		QUARTILE_INT	Quartile2_uint16, ax
Median_uint32:		QUARTILE_INT	Quartile2_uint32, eax
Median_uint64:		QUARTILE_INT	Quartile2_uint64, rax

; Signed integer types
Median_sint8:		QUARTILE_INT	Quartile2_sint8, al
Median_sint16:		QUARTILE_INT	Quartile2_sint16, ax
Median_sint32:		QUARTILE_INT	Quartile2_sint32, eax
Median_sint64:		QUARTILE_INT	Quartile2_sint64, rax

; Floating-point types
Median_flt32:		QUARTILE_FLT	Quartile2_sint32, s
Median_flt64:		QUARTILE_FLT	Quartile2_sint64, d

;==============================================================================;
;       Lower quartile                                                         ;
;==============================================================================;

; Unsigned integer types
LowerQuart_uint8:	QUARTILE_INT	Quartile1_uint8, al
LowerQuart_uint16:	QUARTILE_INT	Quartile1_uint16, ax
LowerQuart_uint32:	QUARTILE_INT	Quartile1_uint32, eax
LowerQuart_uint64:	QUARTILE_INT	Quartile1_uint64, rax

; Signed integer types
LowerQuart_sint8:	QUARTILE_INT	Quartile1_sint8, al
LowerQuart_sint16:	QUARTILE_INT	Quartile1_sint16, ax
LowerQuart_sint32:	QUARTILE_INT	Quartile1_sint32, eax
LowerQuart_sint64:	QUARTILE_INT	Quartile1_sint64, rax

; Floating-point types
LowerQuart_flt32:	QUARTILE_FLT	Quartile1_sint32, s
LowerQuart_flt64:	QUARTILE_FLT	Quartile1_sint64, d

;==============================================================================;
;       Upper quartile                                                         ;
;==============================================================================;

; Unsigned integer types
UpperQuart_uint8:	QUARTILE_INT	Quartile3_uint8, al
UpperQuart_uint16:	QUARTILE_INT	Quartile3_uint16, ax
UpperQuart_uint32:	QUARTILE_INT	Quartile3_uint32, eax
UpperQuart_uint64:	QUARTILE_INT	Quartile3_uint64, rax

; Signed integer types
UpperQuart_sint8:	QUARTILE_INT	Quartile3_sint8, al
UpperQuart_sint16:	QUARTILE_INT	Quartile3_sint16, ax
UpperQuart_sint32:	QUARTILE_INT	Quartile3_sint32, eax
UpperQuart_sint64:	QUARTILE_INT	Quartile3_sint64, rax

; Floating-point types
UpperQuart_flt32:	QUARTILE_FLT	Quartile3_sint32, s
UpperQuart_flt64:	QUARTILE_FLT	Quartile3_sint64, d

;==============================================================================;
;       Mid-range                                                              ;
;==============================================================================;
macro	MAXMIN	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
fmask	equ		r9							; NaN check result
ptr		equ		r10							; temporary pointer to array
max		equ		xmm0						; max value
min		equ		xmm1						; min value
temp	equ		xmm2						; temporary register
max0	equ		xmm3						; intermediate max value #1
max1	equ		xmm4						; intermediate max value #2
max2	equ		xmm5						; intermediate max value #3
max3	equ		xmm6						; intermediate max value #4
max4	equ		xmm7						; intermediate max value #5
min0	equ		xmm8						; intermediate min value #1
min1	equ		xmm9						; intermediate min value #2
min2	equ		xmm10						; intermediate min value #3
min3	equ		xmm11						; intermediate min value #4
min4	equ		xmm12						; intermediate min value #5
maxinf	equ		xmm13						; max infinity value
mininf	equ		xmm14						; min infinity value
flags	equ		xmm15						; NaN matching flags
blend	equ		max							; blending mask
if x eq s
maxval	= MINF_FLT32						; -Inf
minval	= PINF_FLT32						; +Inf
nanval	= PNAN_FLT32						; +NaN
scale	= 2									; scale value
else if x eq d
maxval	= MINF_FLT64						; -Inf
minval	= PINF_FLT64						; +Inf
nanval	= PNAN_FLT64						; +NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
		initreg	max, index, maxval			; max = maxval
		initreg	min, index, minval			; min = minval
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		shufp#x	max, max, 0x0				; duplicate value through the entire register
		shufp#x	min, min, 0x0				; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		movap#x	max0, max					; max0 = maxvalue
		movap#x	min0, min					; min0 = minvalue
		movap#x	max1, max					; max1 = maxvalue
		movap#x	min1, min					; min1 = minvalue
		movap#x	max2, max					; max2 = maxvalue
		movap#x	min2, min					; min2 = minvalue
		movap#x	max3, max					; max3 = maxvalue
		movap#x	min3, min					; min3 = minvalue
		movap#x	max4, max					; max4 = maxvalue
		movap#x	min4, min					; min4 = minvalue
		movap#x	maxinf, max					; maxinf = maxvalue
		movap#x	mininf, min					; mininf = minvalue
		xorp#x	flags, flags				; flags = 0
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movap#x	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
	blendvp#x	temp, maxinf				; blend temp with max infinity values
		max#p#x	max0, temp					; find max value
		movap#x	temp, [array]				; temp = array[0]
	blendvp#x	temp, mininf				; blend temp with min infinity values
		min#p#x	min0, temp					; find min value
	cmpunordp#x	temp, temp					; check values for NANs
		orp#x	flags, temp					; accumulate NaN check results
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 1 * VSIZE]		; temp = ptr[1]
		max#p#x	max1, temp					; find max value
		min#p#x	min1, temp					; find min value
	cmpunordp#x	temp, temp					; check values for NANs
		orp#x	flags, temp					; accumulate NaN check results
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 2 * VSIZE]		; temp = ptr[2]
		max#p#x	max2, temp					; find max value
		min#p#x	min2, temp					; find min value
	cmpunordp#x	temp, temp					; check values for NANs
		orp#x	flags, temp					; accumulate NaN check results
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 3 * VSIZE]		; temp = ptr[3]
		max#p#x	max3, temp					; find max value
		min#p#x	min3, temp					; find min value
	cmpunordp#x	temp, temp					; check values for NANs
		orp#x	flags, temp					; accumulate NaN check results
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 4 * VSIZE]		; temp = ptr[4]
		max#p#x	max4, temp					; find max value
		min#p#x	min4, temp					; find min value
	cmpunordp#x	temp, temp					; check values for NANs
		orp#x	flags, temp					; accumulate NaN check results
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		andnp#x	blend, [table + size]
		movap#x	temp, [array + index]		; temp = array[index]
	blendvp#x	maxinf, temp				; blend temp with max infinity values
	blendvp#x	mininf, temp				; blend temp with min infinity values
		max#p#x	max0, maxinf				; find max value
		min#p#x	min0, mininf				; find min value
	cmpunordp#x	mininf, mininf				; check values for NANs
		orp#x	flags, mininf				; accumulate NaN check results
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if NAN is found,
		jnz		.error						;     then go to error branch
		max#p#x	max1, max2
		min#p#x	min1, min2
		max#p#x	max3, max4
		min#p#x	min3, min4
		max#p#x	max1, max3
		min#p#x	min1, min3
		max#p#x	max0, max1					; find max value from all accumulators
		min#p#x	min0, min1					; find min value from all accumulators
if x eq s
		movhlps	temp, max0					; temp = upper half of max0
		max#p#x	max0, temp					; find max value
		movhlps	temp, min0					; temp = upper half of min0
		min#p#x	min0, temp					; find min value
end if
		movap#x	temp, max0					; temp = max0
		shufp#x	temp, temp, 0x1				; shuffle values in temp register
		max#s#x	max0, temp					; find max value
		movap#x	temp, min0					; temp = min0
		shufp#x	temp, temp, 0x1				; shuffle values in temp register
		min#s#x	min0, temp					; find min value
		movap#x	max, max0					; return max0
		movap#x	min, min0					; return min0
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		max#s#x	max, temp					; find max value
		min#s#x	min, temp					; find min value
		comis#x	temp, temp					; if NAN is found,
		jp		.error						;     then go to error branch
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		ret
;---[Error branch]-------------------------
.error:	initreg	max, index, nanval
		initreg	min, index, nanval			; return {NaN, NaN}
		ret
}
MaxMin_flt32:	MAXMIN	s
MaxMin_flt64:	MAXMIN	d
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MIDRANGE	x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
max		equ		xmm0						; max value
min		equ		xmm1						; min value
half	equ		xmm2						; 0.5
if x eq s
MaxMin	= MaxMin_flt32						; MaxMin function
halfval	= PHALF_FLT32						; +0.5
else if x eq d
MaxMin	= MaxMin_flt64						; MaxMin function
halfval	= PHALF_FLT64						; +0.5
end if
;------------------------------------------
		call	MaxMin						; call MaxMin (array[], size)
		initreg	half, treg, halfval			; half = 0.5
		adds#x	max, min
		muls#x	max, half					; result = 0.5 * (max(array[]) + min(array[]))
		ret
}
Midrange_flt32:	MIDRANGE	s
Midrange_flt64:	MIDRANGE	d

;******************************************************************************;
;       Measures of variability                                                ;
;******************************************************************************;

;==============================================================================;
;       Variance                                                               ;
;==============================================================================;
macro	VAR		type, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
mean	equ		xmm0						; data mean
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
count	equ		r9							; normalized array size
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
vector	equ		xmm1						; data mean value
temp	equ		xmm2						; temporary register
mask	equ		xmm3						; data mask
sum0	equ		xmm4						; intermediate sum #1
sum1	equ		xmm5						; intermediate sum #2
sum2	equ		xmm6						; intermediate sum #3
sum3	equ		xmm7						; intermediate sum #4
sum4	equ		xmm8						; intermediate sum #5
zero	equ		xmm9						; 0.0
nsize	equ		xmm10						; normalized array size
result	equ		blend						; result register
if x eq s
dmask	= DMASK_FLT32						; data mask
nanval	= PNAN_FLT32						; +NaN
scale	= 2									; scale value
else if x eq d
dmask	= DMASK_FLT64						; data mask
nanval	= PNAN_FLT64						; +NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		mov		count, size
		sub		count, 1					; if (size <= 1)
		jbe		.error						;     then go to error branch
	cvtsi2s#x	nsize, count				; nsize = size - 1
		movap#x	vector, mean				; vector = mean
if type = 2
		initreg	mask, index, dmask			; mask = dmask
end if
		xorp#x	result, result				; index = 0
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		shufp#x	vector, vector, 0x0			; duplicate value through the entire register
if type = 2
		shufp#x	mask, mask, 0x0				; duplicate value through the entire register
end if
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movap#x	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
		subp#x	temp, vector				; temp -= vector
	blendvp#x	temp, zero					; blend temp with zero values
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum0, temp					; sum0 += temp
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 1 * VSIZE]		; temp = ptr[1]
		subp#x	temp, vector				; temp -= vector
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum1, temp					; sum1 += temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 2 * VSIZE]		; temp = ptr[2]
		subp#x	temp, vector				; temp -= vector
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum2, temp					; sum2 += temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 3 * VSIZE]		; temp = ptr[3]
		subp#x	temp, vector				; temp -= vector
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum3, temp					; sum3 += temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 4 * VSIZE]		; temp = ptr[4]
		subp#x	temp, vector				; temp -= vector
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum4, temp					; sum4 += temp
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		andnp#x	blend, [table + size]
		movap#x	temp, [array + index]		; temp = array[index]
		subp#x	temp, vector				; temp -= vector
	blendvp#x	zero, temp					; blend temp with zero values
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum0, zero					; sum0 += temp
		addp#x	sum1, sum2
		addp#x	sum3, sum4
		addp#x	sum1, sum3
		addp#x	sum0, sum1					; sum0 = sum0 + sum1 + sum2 + sum3 + sum4
		summa	sum0, x						; get all parallel sums
		divs#x	sum0, nsize
		movap#x	result, sum0				; return sum0 / (size - 1)
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		subs#x	temp, vector				; temp -= vector
if type = 1
		muls#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		adds#x	result, temp				; result += temp
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		divs#x	result, nsize				; return result / (size - 1)
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nanval		; return NaN
		ret
}
Variance_flt32:	VAR		1, s
Variance_flt64:	VAR		1, d

;==============================================================================;
;       Standard deviation                                                     ;
;==============================================================================;
macro	STD_DEV	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
mean	equ		xmm0						; data mean
;---[Internal variables]-------------------
result	equ		xmm0						; result register
if x eq s
Var		= Variance_flt32					; variance function
else if x eq d
Var		= Variance_flt64					; variance function
end if
;------------------------------------------
		call	Var							; result = Variance (array, size, mean)
		sqrts#x	result, result				; result = sqrt (res)
		ret
}
StdDeviation_flt32:	STD_DEV	s
StdDeviation_flt64:	STD_DEV	d

;==============================================================================;
;       Absolute deviation                                                     ;
;==============================================================================;
AbsDeviation_flt32:	VAR		2, s
AbsDeviation_flt64:	VAR		2, d

;==============================================================================;
;       Interquartile range                                                    ;
;==============================================================================;
macro	QUART_RANGE_INT	Quart1, Quart3, result
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr1	equ		rax							; pointer to first target element
ptr2	equ		rdx							; pointer to second target element
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_res	equ		stack + 2 * 8				; stack position of "result" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
		sub		stack, space				; reserving stack size for local vars
;---[Call quartile function]---------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		call	Quart1						; call Quartile1 (array, size)
;---[Compute 1-st quartile]----------------
		mov		result, [ptr1]
		add		result, [ptr2]
		rcr		result, 1					; result = 0.5 * (ptr1[0] + ptr2[0])
		mov		[s_res], result				; save "result" variable into the stack
;---[Call quartile function]---------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	Quart3						; call Quartile3 (array, size)
;---[Compute 3-st quartile]----------------
		mov		result, [ptr1]
		add		result, [ptr2]
		rcr		result, 1					; result = 0.5 * (ptr1[0] + ptr2[0])
;---[Compute interquartile range]----------
		sub		result, [s_res]				; return quart3 - quart1
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		result, result				; return 0
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	QUART_RANGE_FLT	Quart1, Quart3, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr1	equ		rax							; pointer to first target element
ptr2	equ		rdx							; pointer to second target element
fptr	equ		rax							; pointer to call external function
result	equ		xmm0						; result register
half	equ		xmm1						; 0.5
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_ptr1	equ		stack + 2 * 8				; stack position of "ptr1" variable
s_ptr2	equ		stack + 3 * 8				; stack position of "ptr2" variable
s_ptr3	equ		stack + 4 * 8				; stack position of "ptr3" variable
s_ptr4	equ		stack + 5 * 8				; stack position of "ptr4" variable
if x eq s
Map		= Map_flt32							; map function
halfval	= PHALF_FLT32						; +0.5
nanval	= PNAN_FLT32						; +NaN
else if x eq d
Map		= Map_flt64							; map function
halfval	= PHALF_FLT64						; +0.5
nanval	= PNAN_FLT64						; +NaN
end if
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
		sub		stack, space				; reserving stack size for local vars
;---[Call convert function]----------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		fptr, Map
		call	fptr						; Call Map (array, size)
;---[Call quartile function]---------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	Quart1						; call Quartile1 (array, size)
		mov		[s_ptr1], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr2], ptr2				; save "ptr2" variable into the stack
;---[Call quartile function]---------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	Quart3						; call Quartile3 (array, size)
		mov		[s_ptr3], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr4], ptr2				; save "ptr2" variable into the stack
;---[Call convert function]----------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		fptr, Map
		call	fptr						; Call Map (array, size)
;---[Compute interquartile range]----------
		mov		ptr1, [s_ptr3]				; get "ptr3" variable from the stack
		mov		ptr2, [s_ptr4]				; get "ptr4" variable from the stack
		movs#x	result, [ptr1]
		adds#x	result, [ptr2]
		mov		ptr1, [s_ptr1]				; get "ptr1" variable from the stack
		mov		ptr2, [s_ptr2]				; get "ptr2" variable from the stack
		initreg	half, size, halfval			; half = 0.5
		subs#x	result, [ptr1]
		subs#x	result, [ptr2]
		muls#x	result, half				; return 0.5 * (ptr3[0] + ptr4[0] - ptr1[0] - ptr2[0])
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	initreg	result, size, nanval		; return NaN
		ret
}

; Unsigned integer types
QuartRange_uint8:	QUART_RANGE_INT	Quartile1_uint8, Quartile3_uint8, al
QuartRange_uint16:	QUART_RANGE_INT	Quartile1_uint16, Quartile3_uint16, ax
QuartRange_uint32:	QUART_RANGE_INT	Quartile1_uint32, Quartile3_uint32, eax
QuartRange_uint64:	QUART_RANGE_INT	Quartile1_uint64, Quartile3_uint64, rax

; Signed integer types
QuartRange_sint8:	QUART_RANGE_INT	Quartile1_sint8, Quartile3_sint8, al
QuartRange_sint16:	QUART_RANGE_INT	Quartile1_sint16, Quartile3_sint16, ax
QuartRange_sint32:	QUART_RANGE_INT	Quartile1_sint32, Quartile3_sint32, eax
QuartRange_sint64:	QUART_RANGE_INT	Quartile1_sint64, Quartile3_sint64, rax

; Floating-point types
QuartRange_flt32:	QUART_RANGE_FLT	Quartile1_sint32, Quartile3_sint32, s
QuartRange_flt64:	QUART_RANGE_FLT	Quartile1_sint64, Quartile3_sint64, d

;==============================================================================;
;       Range                                                                  ;
;==============================================================================;
macro	RANGE	x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
max		equ		xmm0						; max value
min		equ		xmm1						; min value
if x eq s
MaxMin	= MaxMin_flt32						; MaxMin function
else if x eq d
MaxMin	= MaxMin_flt64						; MaxMin function
end if
;------------------------------------------
		call	MaxMin						; call MaxMin (array[], size)
		subs#x	max, min
		ret									; result = max(array[]) - min(array[])
}
Range_flt32:	RANGE	s
Range_flt64:	RANGE	d

;******************************************************************************;
;       Measures of shape                                                      ;
;******************************************************************************;

;==============================================================================;
;       Skewness                                                               ;
;==============================================================================;
macro	SKEWNESS	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
mean	equ		xmm0						; data mean
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
count	equ		r9							; normalized array size
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
vector	equ		xmm1						; data mean value
temp0	equ		xmm2						; temporary register #1
temp1	equ		xmm3						; temporary register #1
sum0	equ		xmm4						; intermediate sum #1
sum1	equ		xmm5						; intermediate sum #2
sum2	equ		xmm6						; intermediate sum #3
sum3	equ		xmm7						; intermediate sum #4
sum4	equ		xmm8						; intermediate sum #5
sum5	equ		xmm9						; intermediate sum #5
sum6	equ		xmm10						; intermediate sum #5
sum7	equ		xmm11						; intermediate sum #5
sum8	equ		xmm12						; intermediate sum #5
sum9	equ		xmm13						; intermediate sum #5
zero	equ		xmm14						; 0.0
nsize	equ		xmm15						; normalized array size
result	equ		blend						; result register
if x eq s
nanval	= PNAN_FLT32						; +NaN
scale	= 2									; scale value
else if x eq d
nanval	= PNAN_FLT64						; +NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		mov		count, size
		sub		count, 2					; if (size <= 2)
		jbe		.error						;     then go to error branch
	cvtsi2s#x	sum2, count					; sum2 = size - 2
		add		count, 1
	cvtsi2s#x	sum1, count					; sum1 = size - 1
		add		count, 1
	cvtsi2s#x	nsize, count				; nsize = size
		sqrts#x	sum1, sum1
		divs#x	nsize, sum2
		muls#x	nsize, sum1					; nsize = size * sqrt (size - 1) / (size - 2)
		movap#x	vector, mean				; vector = mean
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		shufp#x	vector, vector, 0x0			; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	sum5, sum5					; sum5 = 0
		xorp#x	sum6, sum6					; sum6 = 0
		xorp#x	sum7, sum7					; sum7 = 0
		xorp#x	sum8, sum8					; sum8 = 0
		xorp#x	sum9, sum9					; sum9 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movap#x	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp0, [array]				; temp0 = array[0]
		subp#x	temp0, vector				; temp0 -= vector
	blendvp#x	temp0, zero					; blend temp with zero values
		movap#x	temp1, temp0				; temp1 = temp0
		mulp#x	temp0, temp0
		addp#x	sum0, temp0					; sum0 += (array[0] - mean)^2
		mulp#x	temp0, temp1
		addp#x	sum1, temp0					; sum1 += (array[0] - mean)^3
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp0, [ptr + 1 * VSIZE]	; temp0 = ptr[1]
		subp#x	temp0, vector				; temp0 -= vector
		movap#x	temp1, temp0				; temp1 = temp0
		mulp#x	temp0, temp0
		addp#x	sum2, temp0					; sum2 += (ptr[1] - mean)^2
		mulp#x	temp0, temp1
		addp#x	sum3, temp0					; sum3 += (ptr[1] - mean)^3
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp0, [ptr + 2 * VSIZE]	; temp0 = ptr[2]
		subp#x	temp0, vector				; temp0 -= vector
		movap#x	temp1, temp0				; temp1 = temp0
		mulp#x	temp0, temp0
		addp#x	sum4, temp0					; sum4 += (ptr[2] - mean)^2
		mulp#x	temp0, temp1
		addp#x	sum5, temp0					; sum5 += (ptr[2] - mean)^3
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp0, [ptr + 3 * VSIZE]	; temp0 = ptr[3]
		subp#x	temp0, vector				; temp0 -= vector
		movap#x	temp1, temp0				; temp1 = temp0
		mulp#x	temp0, temp0
		addp#x	sum6, temp0					; sum6 += (ptr[3] - mean)^2
		mulp#x	temp0, temp1
		addp#x	sum7, temp0					; sum7 += (ptr[3] - mean)^3
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp0, [ptr + 4 * VSIZE]	; temp0 = ptr[4]
		subp#x	temp0, vector				; temp0 -= vector
		movap#x	temp1, temp0				; temp1 = temp0
		mulp#x	temp0, temp0
		addp#x	sum8, temp0					; sum8 += (ptr[4] - mean)^2
		mulp#x	temp0, temp1
		addp#x	sum9, temp0					; sum9 += (ptr[4] - mean)^3
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		andnp#x	blend, [table + size]
		movap#x	temp0, [array + index]		; temp = array[index]
		subp#x	temp0, vector				; temp -= vector
	blendvp#x	zero, temp0					; blend temp with zero values
		movap#x	temp1, zero					; temp1 = temp0
		mulp#x	zero, zero
		addp#x	sum0, zero					; sum0 += (array[index] - mean)^2
		mulp#x	zero, temp1
		addp#x	sum1, zero					; sum1 += (array[index] - mean)^3
		addp#x	sum2, sum4
		addp#x	sum3, sum5
		addp#x	sum6, sum8
		addp#x	sum7, sum9
		addp#x	sum2, sum6
		addp#x	sum3, sum7
		addp#x	sum0, sum2					; sum0 = sum0 + sum2 + sum4 + sum6 + sum8
		addp#x	sum1, sum3					; sum1 = sum1 + sum3 + sum5 + sum7 + sum9
		summa	sum0, x						; get all parallel sums
		summa	sum1, x						; get all parallel sums
		sqrts#x	temp0, sum0
		muls#x	sum0, temp0
		divs#x	sum1, sum0
		muls#x	sum1, nsize
		movap#x	result, sum1				; return nsize * sum1 / (sum0 * sqrt (sum0))
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [array]				; temp0 = array[0]
		subs#x	temp0, vector				; temp0 -= vector
		movap#x	temp1, temp0				; temp1 = temp0
		muls#x	temp0, temp0
		adds#x	sum0, temp0					; sum0 += (array[0] - mean)^2
		muls#x	temp0, temp1
		adds#x	sum1, temp0					; sum1 += (array[0] - mean)^3
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		sqrts#x	temp0, sum0
		muls#x	sum0, temp0
		divs#x	sum1, sum0
		muls#x	sum1, nsize
		movap#x	result, sum1				; return nsize * sum1 / (sum0 * sqrt (sum0))
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nanval		; return NaN
		ret
}
Skewness_flt32:	SKEWNESS	s
Skewness_flt64:	SKEWNESS	d

;==============================================================================;
;       Kurtosis                                                               ;
;==============================================================================;
macro	KURTOSIS	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
mean	equ		xmm0						; data mean
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
count	equ		r9							; normalized array size
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
vector	equ		xmm1						; data mean value
temp	equ		xmm2						; temporary register #1
sum0	equ		xmm3						; intermediate sum #1
sum1	equ		xmm4						; intermediate sum #2
sum2	equ		xmm5						; intermediate sum #3
sum3	equ		xmm6						; intermediate sum #4
sum4	equ		xmm7						; intermediate sum #5
sum5	equ		xmm8						; intermediate sum #5
sum6	equ		xmm9						; intermediate sum #5
sum7	equ		xmm10						; intermediate sum #5
sum8	equ		xmm11						; intermediate sum #5
sum9	equ		xmm12						; intermediate sum #5
zero	equ		xmm13						; 0.0
nsize	equ		xmm14						; normalized array size
const	equ		xmm15						; const value
result	equ		blend						; result register
if x eq s
nanval	= PNAN_FLT32						; +NaN
thrval	= 0x40400000						; +3.0
scale	= 2									; scale value
else if x eq d
nanval	= PNAN_FLT64						; +NaN
thrval	= 0x4008000000000000				; +3.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		mov		count, size
		sub		count, 3					; if (size <= 3)
		jbe		.error						;     then go to error branch
	cvtsi2s#x	sum3, count					; sum3 = size - 3
		add		count, 1
	cvtsi2s#x	sum2, count					; sum2 = size - 2
		add		count, 1
	cvtsi2s#x	sum1, count					; sum1 = size - 1
		add		count, 1
	cvtsi2s#x	nsize, count				; nsize = size
		add		count, 1
	cvtsi2s#x	sum0, count					; sum0 = size + 1
		initreg	const, index, thrval		; const = 3.0
		muls#x	sum2, sum3
		muls#x	const, sum1
		muls#x	nsize, sum0
		divs#x	sum1, sum2
		muls#x	const, sum1					; const = 3 * (size - 1)^2 / ((size - 2) * (size - 3))
		muls#x	nsize, sum1					; nsize = size * (size + 1) * (size - 1) / ((size - 2) * (size - 3))
		movap#x	vector, mean				; vector = mean
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		shufp#x	vector, vector, 0x0			; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	sum5, sum5					; sum5 = 0
		xorp#x	sum6, sum6					; sum6 = 0
		xorp#x	sum7, sum7					; sum7 = 0
		xorp#x	sum8, sum8					; sum8 = 0
		xorp#x	sum9, sum9					; sum9 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movap#x	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
		subp#x	temp, vector				; temp -= vector
	blendvp#x	temp, zero					; blend temp with zero values
		mulp#x	temp, temp
		addp#x	sum0, temp					; sum0 += (array[0] - mean)^2
		mulp#x	temp, temp
		addp#x	sum1, temp					; sum1 += (array[0] - mean)^4
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 1 * VSIZE]		; temp = ptr[1]
		subp#x	temp, vector				; temp -= vector
		mulp#x	temp, temp
		addp#x	sum2, temp					; sum2 += (ptr[1] - mean)^2
		mulp#x	temp, temp
		addp#x	sum3, temp					; sum3 += (ptr[1] - mean)^4
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 2 * VSIZE]		; temp = ptr[2]
		subp#x	temp, vector				; temp -= vector
		mulp#x	temp, temp
		addp#x	sum4, temp					; sum4 += (ptr[2] - mean)^2
		mulp#x	temp, temp
		addp#x	sum5, temp					; sum5 += (ptr[2] - mean)^4
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 3 * VSIZE]		; temp = ptr[3]
		subp#x	temp, vector				; temp -= vector
		mulp#x	temp, temp
		addp#x	sum6, temp					; sum6 += (ptr[3] - mean)^2
		mulp#x	temp, temp
		addp#x	sum7, temp					; sum7 += (ptr[3] - mean)^4
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 4 * VSIZE]		; temp = ptr[4]
		subp#x	temp, vector				; temp -= vector
		mulp#x	temp, temp
		addp#x	sum8, temp					; sum8 += (ptr[4] - mean)^2
		mulp#x	temp, temp
		addp#x	sum9, temp					; sum9 += (ptr[4] - mean)^4
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		andnp#x	blend, [table + size]
		movap#x	temp, [array + index]		; temp = array[index]
		subp#x	temp, vector				; temp -= vector
	blendvp#x	zero, temp					; blend temp with zero values
		mulp#x	zero, zero
		addp#x	sum0, zero					; sum0 += (array[index] - mean)^2
		mulp#x	zero, zero
		addp#x	sum1, zero					; sum1 += (array[index] - mean)^4
		addp#x	sum2, sum4
		addp#x	sum3, sum5
		addp#x	sum6, sum8
		addp#x	sum7, sum9
		addp#x	sum2, sum6
		addp#x	sum3, sum7
		addp#x	sum0, sum2					; sum0 = sum0 + sum2 + sum4 + sum6 + sum8
		addp#x	sum1, sum3					; sum1 = sum1 + sum3 + sum5 + sum7 + sum9
		summa	sum0, x						; get all parallel sums
		summa	sum1, x						; get all parallel sums
		muls#x	sum0, sum0
		divs#x	sum1, sum0
		muls#x	sum1, nsize
		subs#x	sum1, const
		movap#x	result, sum1				; return nsize * sum1 / (sum0 * sum0) - const
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		subs#x	temp, vector				; temp -= vector
		muls#x	temp, temp
		adds#x	sum0, temp					; sum0 += (array[0] - mean)^2
		muls#x	temp, temp
		adds#x	sum1, temp					; sum1 += (array[0] - mean)^4
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		muls#x	sum0, sum0
		divs#x	sum1, sum0
		muls#x	sum1, nsize
		subs#x	sum1, const
		movap#x	result, sum1				; return nsize * sum1 / (sum0 * sum0) - const
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nanval		; return NaN
		ret
}
Kurtosis_flt32:	KURTOSIS	s
Kurtosis_flt64:	KURTOSIS	d

;******************************************************************************;
;       Covariance                                                             ;
;******************************************************************************;
macro	COVARIANCE		x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
mean1	equ		xmm0						; data mean of first array
mean2	equ		xmm1						; data mean of second array
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of arrays
offst	equ		rcx							; offset in masks array
table	equ		r8							; pointer to blending table
count	equ		r9							; normalized array size
ptr1	equ		r10							; temporary pointer to first array
ptr2	equ		r11							; temporary pointer to second array
blend	equ		xmm0						; blending mask
vector1	equ		xmm1						; data mean value #1
vector2	equ		xmm2						; data mean value #2
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
sum0	equ		xmm5						; intermediate sum #1
sum1	equ		xmm6						; intermediate sum #2
sum2	equ		xmm7						; intermediate sum #3
sum3	equ		xmm8						; intermediate sum #4
sum4	equ		xmm9						; intermediate sum #5
zero	equ		xmm10						; 0.0
nsize	equ		xmm11						; normalized array size
result	equ		blend						; result register
if x eq s
nanval	= PNAN_FLT32						; +NaN
scale	= 2									; scale value
else if x eq d
nanval	= PNAN_FLT64						; +NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array2]					; prefetch data
	prefetchnta	[array1]					; prefetch data
		mov		count, size
		sub		count, 1					; if (size <= 1)
		jbe		.error						;     then go to error branch
	cvtsi2s#x	nsize, count				; nsize = size - 1
		movap#x	vector2, mean2				; vector = mean2
		movap#x	vector1, mean1				; vector = mean1
		xorp#x	result, result				; index = 0
		test	array2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	array1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE / bytes			; if (size < VSIZE / bytes)
		jb		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		shufp#x	vector2, vector2, 0x0		; duplicate value through the entire register
		shufp#x	vector1, vector1, 0x0		; duplicate value through the entire register
		mov		ptr2, array2				; ptr2 = array2
		mov		ptr1, array1				; ptr1 = array1
		mov		index, array1
		and		index, VMASK				; get array offset from vector boundary
		sub		ptr2, index					; ptr2 = array2 - index
		sub		ptr1, index					; ptr1 = array1 - index
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned operation]------------------
		add		size, index					; size += index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		mov		offst, index
		shl		offst, VSCALE				; compute offset in mask array
		neg		index						; index = -index
		lea		table, [maskV1]				; set pointer to blending table
		movap#x	blend, [table + offst]
		movup#x	temp2, [array2]				; temp2 = array2[0]
		subp#x	temp2, vector2				; temp2 -= vector2
		movup#x	temp1, [array1]				; temp1 = array1[0]
		subp#x	temp1, vector1				; temp1 -= vector1
		mulp#x	temp1, temp2				; temp1 *= temp2
	blendvp#x	temp1, zero					; blend temp1 with zero values
		addp#x	sum0, temp1					; sum0 += temp1
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	temp2, [ptr2 + 1 * VSIZE]	; temp2 = ptr2[1]
		subp#x	temp2, vector2				; temp2 -= vector2
		movap#x	temp1, [ptr1 + 1 * VSIZE]	; temp1 = ptr1[1]
		subp#x	temp1, vector1				; temp1 -= vector1
		mulp#x	temp1, temp2				; temp1 *= temp2
		addp#x	sum1, temp1					; sum1 += temp1
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	temp2, [ptr2 + 2 * VSIZE]	; temp2 = ptr2[2]
		subp#x	temp2, vector2				; temp2 -= vector2
		movap#x	temp1, [ptr1 + 2 * VSIZE]	; temp1 = ptr1[2]
		subp#x	temp1, vector1				; temp1 -= vector1
		mulp#x	temp1, temp2				; temp1 *= temp2
		addp#x	sum2, temp1					; sum2 += temp1
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	temp2, [ptr2 + 3 * VSIZE]	; temp2 = ptr2[3]
		subp#x	temp2, vector2				; temp2 -= vector2
		movap#x	temp1, [ptr1 + 3 * VSIZE]	; temp1 = ptr1[3]
		subp#x	temp1, vector1				; temp1 -= vector1
		mulp#x	temp1, temp2				; temp1 *= temp2
		addp#x	sum3, temp1					; sum3 += temp1
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	temp2, [ptr2 + 4 * VSIZE]	; temp2 = ptr2[4]
		subp#x	temp2, vector2				; temp2 -= vector2
		movap#x	temp1, [ptr1 + 4 * VSIZE]	; temp1 = ptr1[4]
		subp#x	temp1, vector1				; temp1 -= vector1
		mulp#x	temp1, temp2				; temp1 *= temp2
		addp#x	sum4, temp1					; sum4 += temp1
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
		add		ptr2, CLINE					; ptr2 += CLINE
		add		ptr1, CLINE					; ptr1 += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskV2]				; set pointer to blending table
		movap#x	blend, [table + size]
		movup#x	temp2, [array2 + index]		; temp2 = array2[index]
		subp#x	temp2, vector2				; temp2 -= vector2
		movup#x	temp1, [array1 + index]		; temp1 = array1[index]
		subp#x	temp1, vector1				; temp1 -= vector1
		mulp#x	temp1, temp2				; temp1 *= temp2
	blendvp#x	zero, temp1					; blend temp1 with zero values
		addp#x	sum0, zero					; sum0 += temp1
		addp#x	sum1, sum2
		addp#x	sum3, sum4
		addp#x	sum1, sum3
		addp#x	sum0, sum1					; sum0 = sum0 + sum1 + sum2 + sum3 + sum4
		summa	sum0, x						; get all parallel sums
		divs#x	sum0, nsize
		movap#x	result, sum0				; return sum0 / (size - 1)
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp2, [array2]				; temp2 = array2[0]
		subs#x	temp2, vector2				; temp2 -= vector2
		movs#x	temp1, [array1]				; temp1 = array1[0]
		subs#x	temp1, vector1				; temp1 -= vector1
		muls#x	temp1, temp2				; temp1 *= temp2
		adds#x	result, temp1				; result += temp1
		add		array2, bytes				; array2++
		add		array1, bytes				; array1++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		divs#x	result, nsize				; return result / (size - 1)
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nanval		; return NaN
		ret
}
Covariance_flt32:	COVARIANCE	s
Covariance_flt64:	COVARIANCE	d

;******************************************************************************;
;       Correlation                                                            ;
;******************************************************************************;

;==============================================================================;
;       Pearson correlation                                                    ;
;==============================================================================;
macro	PEARSON_CORRELATION		x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
mean1	equ		xmm0						; data mean of first array
mean2	equ		xmm1						; data mean of second array
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of arrays
offst	equ		rcx							; offset in masks array
table	equ		r8							; pointer to blending table
ptr1	equ		r10							; temporary pointer to first array
ptr2	equ		r11							; temporary pointer to second array
blend	equ		xmm0						; blending mask
vector1	equ		xmm1						; data mean value #1
vector2	equ		xmm2						; data mean value #2
temp0	equ		xmm3						; temporary register #1
temp1	equ		xmm4						; temporary register #2
temp2	equ		xmm5						; temporary register #3
sum0	equ		xmm6						; intermediate sum #1
sum1	equ		xmm7						; intermediate sum #2
sum2	equ		xmm8						; intermediate sum #3
zero1	equ		xmm9						; 0.0
zero2	equ		xmm10						; 0.0
result	equ		blend						; result register
if x eq s
nanval	= PNAN_FLT32						; +NaN
scale	= 2									; scale value
else if x eq d
nanval	= PNAN_FLT64						; +NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array2]					; prefetch data
	prefetchnta	[array1]					; prefetch data
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
		movap#x	vector2, mean2				; vector = mean2
		movap#x	vector1, mean1				; vector = mean1
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
		test	array2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	array1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE / bytes			; if (size < VSIZE / bytes)
		jb		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		shufp#x	vector2, vector2, 0x0		; duplicate value through the entire register
		shufp#x	vector1, vector1, 0x0		; duplicate value through the entire register
		mov		ptr2, array2				; ptr2 = array2
		mov		ptr1, array1				; ptr1 = array1
		mov		index, array1
		and		index, VMASK				; get array offset from vector boundary
		sub		ptr2, index					; ptr2 = array2 - index
		sub		ptr1, index					; ptr1 = array1 - index
		xorp#x	zero1, zero1				; zero1 = 0
		xorp#x	zero2, zero2				; zero2 = 0
;---[Unaligned operation]------------------
		add		size, index					; size += index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		mov		offst, index
		shl		offst, VSCALE				; compute offset in mask array
		neg		index						; index = -index
		lea		table, [maskV1]				; set pointer to blending table
		movap#x	blend, [table + offst]
		movup#x	temp2, [array2]				; temp2 = array2[0]
		subp#x	temp2, vector2				; temp2 -= vector2
		movup#x	temp1, [array1]				; temp1 = array1[0]
		subp#x	temp1, vector1				; temp1 -= vector1
	blendvp#x	temp2, zero2				; blend temp2 with zero values
	blendvp#x	temp1, zero1				; blend temp1 with zero values
		movap#x	temp0, temp2
		mulp#x	temp0, temp1				; temp0 = temp1 * temp2
		addp#x	sum0, temp0					; sum0 += temp0
		mulp#x	temp2, temp2				; temp2 *= temp2
		addp#x	sum2, temp2					; sum2 += temp2
		mulp#x	temp1, temp1				; temp1 *= temp1
		addp#x	sum1, temp1					; sum1 += temp1
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	temp2, [ptr2 + % * VSIZE]	; temp2 = ptr2[i]
		subp#x	temp2, vector2				; temp2 -= vector2
		movap#x	temp1, [ptr1 + % * VSIZE]	; temp1 = ptr1[i]
		subp#x	temp1, vector1				; temp1 -= vector1
		movap#x	temp0, temp2
		mulp#x	temp0, temp1				; temp0 = temp1 * temp2
		addp#x	sum0, temp0					; sum0 += temp0
		mulp#x	temp2, temp2				; temp2 *= temp2
		addp#x	sum2, temp2					; sum2 += temp2
		mulp#x	temp1, temp1				; temp1 *= temp1
		addp#x	sum1, temp1					; sum1 += temp1
end repeat
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
		add		ptr2, CLINE					; ptr2 += CLINE
		add		ptr1, CLINE					; ptr1 += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskV2]				; set pointer to blending table
		movap#x	blend, [table + size]
		movup#x	temp2, [array2 + index]		; temp2 = array2[index]
		subp#x	temp2, vector2				; temp2 -= vector2
		movup#x	temp1, [array1 + index]		; temp1 = array1[index]
		subp#x	temp1, vector1				; temp1 -= vector1
	blendvp#x	zero2, temp2				; blend temp2 with zero values
	blendvp#x	zero1, temp1				; blend temp1 with zero values
		movap#x	temp0, zero2
		mulp#x	temp0, zero1				; temp0 = temp1 * temp2
		addp#x	sum0, temp0					; sum0 += temp0
		mulp#x	zero2, zero2				; temp2 *= temp2
		addp#x	sum2, zero2					; sum2 += temp2
		mulp#x	zero1, zero1				; temp1 *= temp1
		addp#x	sum1, zero1					; sum1 += temp1
		summa	sum0, x						; get all parallel sums
		summa	sum2, x						; get all parallel sums
		summa	sum1, x						; get all parallel sums
		muls#x	sum1, sum2
		sqrts#x	sum1, sum1
		divs#x	sum0, sum1
		movap#x	result, sum0				; return sum0 / sqrt (sum1 * sum2)
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp2, [array2]				; temp2 = array2[0]
		subs#x	temp2, vector2				; temp2 -= vector2
		movs#x	temp1, [array1]				; temp1 = array1[0]
		subs#x	temp1, vector1				; temp1 -= vector1
		movap#x	temp0, temp2
		muls#x	temp0, temp1				; temp0 = temp1 * temp2
		adds#x	sum0, temp0					; sum0 += temp0
		muls#x	temp2, temp2				; temp2 *= temp2
		adds#x	sum2, temp2					; sum2 += temp2
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	sum1, temp1					; sum1 += temp1
		add		array2, bytes				; array2++
		add		array1, bytes				; array1++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		muls#x	sum1, sum2
		sqrts#x	sum1, sum1
		divs#x	sum0, sum1
		movap#x	result, sum0				; return sum0 / sqrt (sum1 * sum2)
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nanval		; return NaN
		ret
}
PearsonCorrelation_flt32:	PEARSON_CORRELATION	s
PearsonCorrelation_flt64:	PEARSON_CORRELATION	d

;==============================================================================;
;       Fechner correlation                                                    ;
;==============================================================================;
macro	FECHNER_CORRELATION		x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
mean1	equ		xmm0						; data mean of first array
mean2	equ		xmm1						; data mean of second array
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
offst	equ		rcx							; offset in masks array
table	equ		r8							; pointer to call external function
fmask	equ		r9							; NaN check result
ptr1	equ		r10							; temporary pointer to first array
ptr2	equ		r11							; temporary pointer to second array
blend	equ		xmm0						; blending mask
vector1	equ		xmm1						; data mean value #1
vector2	equ		xmm2						; data mean value #2
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
great1	equ		xmm5						; great condition #1
great2	equ		xmm6						; great condition #2
less1	equ		xmm7						; less condition #1
less2	equ		xmm8						; less condition #2
equal1	equ		xmm9						; equal condition #1
equal2	equ		xmm10						; equal condition #2
sum		equ		xmm11						; intermediate sum
zero	equ		xmm12						; 0.0
one		equ		xmm13						; 1.0
nsize	equ		xmm14						; normalized array size
flags	equ		xmm15						; NaN matching flags
result	equ		blend						; result register
if x eq s
oneval	= PONE_FLT32						; +1.0
nanval	= PNAN_FLT32						; +NaN
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; +1.0
nanval	= PNAN_FLT64						; +NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array2]					; prefetch data
	prefetchnta	[array1]					; prefetch data
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
	cvtsi2s#x	nsize, size					; nsize = size
		movap#x	vector2, mean2				; vector = mean2
		movap#x	vector1, mean1				; vector = mean1
		initreg	one, index, oneval			; one = +1
		xorp#x	result, result				; index = 0
		test	array2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	array1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE / bytes			; if (size < VSIZE / bytes)
		jb		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		shufp#x	vector2, vector2, 0x0		; duplicate value through the entire register
		shufp#x	vector1, vector1, 0x0		; duplicate value through the entire register
		shufp#x	one, one, 0x0				; duplicate value through the entire register
		mov		ptr2, array2				; ptr2 = array2
		mov		ptr1, array1				; ptr1 = array1
		mov		index, array1
		and		index, VMASK				; get array offset from vector boundary
		sub		ptr2, index					; ptr2 = array2 - index
		sub		ptr1, index					; ptr1 = array1 - index
		xorp#x	sum, sum					; sum = 0
		xorp#x	zero, zero					; zero = 0
		xorp#x	flags, flags				; flags = 0
;---[Unaligned operation]------------------
		add		size, index					; size += index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		mov		offst, index
		shl		offst, VSCALE				; compute offset in mask array
		neg		index						; index = -index
		lea		table, [maskV1]				; set pointer to blending table
		movap#x	blend, [table + offst]
		movup#x	temp2, [array2]				; temp2 = array2[0]
		movap#x	great2, vector2				; great2 = mean2
		movap#x	less2, temp2				; less2 = array2[0]
		movap#x	equal2, temp2				; equal2 = array2[0]
	cmpltp#x	great2, temp2				; great2 = (mean2 < array2[0])
	cmpltp#x	less2, vector2				; less2 = (array2[0] < mean2)
	cmpeqp#x	equal2, vector2				; equal2 = (array2[0] == mean2)
	cmpunordp#x	temp2, temp2				; temp2 = (temp2 == NaN)
		movup#x	temp1, [array1]				; temp1 = array1[0]
		movap#x	great1, vector1				; great1 = mean1
		movap#x	less1, temp1				; less1 = array1[0]
		movap#x	equal1, temp1				; equal1 = array1[0]
	cmpltp#x	great1, temp1				; great1 = (mean1 < array1[0])
	cmpltp#x	less1, vector1				; less1 = (array1[0] < mean1)
	cmpeqp#x	equal1, vector1				; equal1 = (array1[0] == mean1)
	cmpunordp#x	temp1, temp1				; temp1 = (temp1 == NaN)
		andp#x	great1, great2				; great1 &= great2
		andp#x	less1, less2				; less1 &= less2
		andp#x	equal1, equal2				; equal1 &= equal2
		orp#x	temp1, temp2				; temp1 |= temp2
	blendvp#x	temp1, zero					; blend temp1 with zero values
		orp#x	flags, temp1				; accumulate NaN check results
		orp#x	great1, less1				; great1 |= less1
		orp#x	great1, equal1				; great1 |= equal1
		andp#x	great1, one					; great1 &= one
	blendvp#x	great1, zero				; blend great1 with zero values
		addp#x	sum, great1					; sum += great1
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movup#x	temp2, [ptr2 + % * VSIZE]	; temp2 = ptr2[i]
		movap#x	great2, vector2				; great2 = mean2
		movap#x	less2, temp2				; less2 = ptr2[i]
		movap#x	equal2, temp2				; equal2 = ptr2[i]
	cmpltp#x	great2, temp2				; great2 = (mean2 < ptr2[i])
	cmpltp#x	less2, vector2				; less2 = (ptr2[i] < mean2)
	cmpeqp#x	equal2, vector2				; equal2 = (ptr2[i] == mean2)
	cmpunordp#x	temp2, temp2				; temp2 = (temp2 == NaN)
		movap#x	temp1, [ptr1 + % * VSIZE]	; temp1 = ptr1[i]
		movap#x	great1, vector1				; great1 = mean1
		movap#x	less1, temp1				; less1 = ptr1[i]
		movap#x	equal1, temp1				; equal1 = ptr1[i]
	cmpltp#x	great1, temp1				; great1 = (mean1 < ptr1[i])
	cmpltp#x	less1, vector1				; less1 = (ptr1[i] < mean1)
	cmpeqp#x	equal1, vector1				; equal1 = (ptr1[i] == mean1)
	cmpunordp#x	temp1, temp1				; temp1 = (temp1 == NaN)
		andp#x	great1, great2				; great1 &= great2
		andp#x	less1, less2				; less1 &= less2
		andp#x	equal1, equal2				; equal1 &= equal2
		orp#x	temp1, temp2				; temp1 |= temp2
		orp#x	flags, temp1				; accumulate NaN check results
		orp#x	great1, less1				; great1 |= less1
		orp#x	great1, equal1				; great1 |= equal1
		andp#x	great1, one					; great1 &= one
		addp#x	sum, great1					; sum += great1
end repeat
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
		add		ptr2, CLINE					; ptr2 += CLINE
		add		ptr1, CLINE					; ptr1 += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskV2]				; set pointer to blending table
		movap#x	blend, [table + size]
		movup#x	temp2, [array2 + index]		; temp2 = array2[index]
		movap#x	great2, vector2				; great2 = mean2
		movap#x	less2, temp2				; less2 = array2[index]
		movap#x	equal2, temp2				; equal2 = array2[index]
	cmpltp#x	great2, temp2				; great2 = (mean2 < array2[index])
	cmpltp#x	less2, vector2				; less2 = (array2[index] < mean2)
	cmpeqp#x	equal2, vector2				; equal2 = (array2[index] == mean2)
	cmpunordp#x	temp2, temp2				; temp2 = (temp2 == NaN)
		movup#x	temp1, [array1 + index]		; temp1 = array1[index]
		movap#x	great1, vector1				; great1 = mean1
		movap#x	less1, temp1				; less1 = array1[index]
		movap#x	equal1, temp1				; equal1 = array1[index]
	cmpltp#x	great1, temp1				; great1 = (mean1 < array1[index])
	cmpltp#x	less1, vector1				; less1 = (array1[index] < mean1)
	cmpeqp#x	equal1, vector1				; equal1 = (array1[index] == mean1)
	cmpunordp#x	temp1, temp1				; temp1 = (temp1 == NaN)
		andp#x	great1, great2				; great1 &= great2
		andp#x	less1, less2				; less1 &= less2
		andp#x	equal1, equal2				; equal1 &= equal2
		orp#x	temp1, temp2				; temp1 |= temp2
		xorp#x	zero, zero					; zero = 0
	blendvp#x	zero, temp1 				; blend temp1 with zero values
		orp#x	flags, zero					; accumulate NaN check results
		orp#x	great1, less1				; great1 |= less1
		orp#x	great1, equal1				; great1 |= equal1
		andp#x	great1, one					; great1 &= one
		xorp#x	zero, zero					; zero = 0
	blendvp#x	zero, great1 				; blend great1 with zero values
		addp#x	sum, zero					; sum += great1
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if NAN is found,
		jnz		.error						;     then go to error branch
		summa	sum, x						; get all parallel sums
		adds#x	sum, sum
		subs#x	sum, nsize
		divs#x	sum, nsize
		movap#x	result, sum					; return (2 * sum - size) / size
		ret
;---[Scalar branch]------------------------
.sloop:	movs#x	temp2, [array2]				; temp2 = array2[0]
		movap#x	great2, vector2				; great2 = mean2
		movap#x	less2, temp2				; less2 = array2[0]
		movap#x	equal2, temp2				; equal2 = array2[0]
	cmplts#x	great2, temp2				; great2 = (mean2 < array2[0])
	cmplts#x	less2, vector2				; less2 = (array2[0] < mean2)
	cmpeqs#x	equal2, vector2				; equal2 = (array2[0] == mean2)
		comis#x	temp2, temp2				; if NAN is found,
		jp		.error						;     then go to error branch
		movs#x	temp1, [array1]				; temp1 = array1[0]
		movap#x	great1, vector1				; great1 = mean1
		movap#x	less1, temp1				; less1 = array1[0]
		movap#x	equal1, temp1				; equal1 = array1[0]
	cmplts#x	great1, temp1				; great1 = (mean1 < array1[0])
	cmplts#x	less1, vector1				; less1 = (array1[0] < mean1)
	cmpeqs#x	equal1, vector1				; equal1 = (array1[0] == mean1)
		comis#x	temp1, temp1				; if NAN is found,
		jp		.error						;     then go to error branch
		andp#x	great1, great2				; great1 &= great2
		andp#x	less1, less2				; less1 &= less2
		andp#x	equal1, equal2				; equal1 &= equal2
		orp#x	great1, less1				; great1 |= less1
		orp#x	great1, equal1				; great1 |= equal1
		andp#x	great1, one					; great1 &= one
		adds#x	sum, great1					; sum += great1
		add		array2, bytes				; array2++
		add		array1, bytes				; array1++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		adds#x	sum, sum
		subs#x	sum, nsize
		divs#x	sum, nsize
		movap#x	result, sum					; return (2 * sum - size) / size
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nanval		; return NaN
		ret
}
FechnerCorrelation_flt32:	FECHNER_CORRELATION	s
FechnerCorrelation_flt64:	FECHNER_CORRELATION	d

;==============================================================================;
;       Spearman correlation                                                   ;
;==============================================================================;
InitRanks:
;---[Parameters]---------------------------
rank1	equ		rdi							; pointer to first rank array
rank2	equ		rsi							; pointer to second rank array
size	equ		rdx							; rank array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; index value
;------------------------------------------
		xor		index, index				; index = 0
;---[Init loop]----------------------------
.loop:	mov		[rank1], index				; rank1[0] = index
		mov		[rank2], index				; rank2[0] = index
		add		rank1, 8					; rank1++
		add		rank2, 8					; rank2++
		add		index, 1					; index++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of init loop]---------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SET_RANKS	x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first data array
array2	equ		rsi							; pointer to second data array
rank1	equ		rdx							; pointer to first rank array
rank2	equ		rcx							; pointer to second rank array
size	equ		r8							; array size (count of elements)
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
index1	equ		r9							; first index value
index2	equ		r10							; second index value
index	equ		xmm0						; index value
one		equ		xmm1						; 1.0
if x eq s
oneval	= PONE_FLT32						; +1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; +1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		initreg	one, treg, oneval			; one = 1.0
		xorp#x	index, index				; index = 0.0
;---[Rank setting loop]--------------------
.loop:	mov		index1, [rank1]				; index1 = rank1[0]
		mov		index2, [rank2]				; index2 = rank2[0]
		movs#x	[array1 + index1 * bytes], index
		movs#x	[array2 + index2 * bytes], index
		add		rank1, 8					; rank1++
		add		rank2, 8					; rank2++
		adds#x	index, one					; index++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of rank setting loop]-------------
		ret
}
SetRanks_flt32:	SET_RANKS	s
SetRanks_flt64:	SET_RANKS	d
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SPEARMAN_CORRELATION	x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first data array
rank1	equ		rsi							; pointer to first rank array
array2	equ		rdx							; pointer to second data array
rank2	equ		rcx							; pointer to second rank array
tarray	equ		r8							; pointer to temp data array
trank	equ		r9							; pointer to temp rank array
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
result	equ		xmm0						; result register
size	equ		xmm1						; array size
temp	equ		xmm2						; temporary register
const	equ		xmm3						; const value
stack	equ		rsp							; stack pointer
s_arr1	equ		stack + 0 * 8				; stack position of "array1" variable
s_rank1	equ		stack + 1 * 8				; stack position of "rank1" variable
s_arr2	equ		stack + 2 * 8				; stack position of "array2" variable
s_rank2	equ		stack + 3 * 8				; stack position of "rank2" variable
s_tarr	equ		stack + 4 * 8				; stack position of "tarray" variable
s_trank	equ		stack + 5 * 8				; stack position of "trank" variable
s_size	equ		stack + 8 * 8				; stack position of "size" variable
if x eq s
Sort	= RadixSort_flt32					; sort function
Rank	= SetRanks_flt32					; rank function
Diff	= SumSqrDiff_flt32					; rank difference function
nanval	= PNAN_FLT32						; +NaN
oneval	= PONE_FLT32						; +1.0
sixval	= 0x40C00000						; +6.0
else if x eq d
Sort	= RadixSort_flt64					; sort function
Rank	= SetRanks_flt64					; rank function
Diff	= SumSqrDiff_flt64					; rank difference function
nanval	= PNAN_FLT64						; +NaN
oneval	= PONE_FLT64						; +1.0
sixval	= 0x4018000000000000				; +6.0
end if
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_arr1], array1			; save "array1" variable into the stack
		mov		[s_rank1], rank1			; save "rank1" variable into the stack
		mov		[s_arr2], array2			; save "array2" variable into the stack
		mov		[s_rank2], rank2			; save "rank2" variable into the stack
		mov		[s_tarr], tarray			; save "tarray" variable into the stack
		mov		[s_trank], trank			; save "trank" variable into the stack
		cmp		qword [s_size], 0			; if (size == 0)
		jz		.error						;     then go to error branch
;---[Init ranks]---------------------------
		mov		param1, rank1
		mov		param2, rank2
		mov		param3, [s_size]
		call	InitRanks					; call InitRanks (rank1, rank2, size)
;---[Sort first array]---------------------
		mov		param5, [s_size]
		mov		param4, [s_trank]
		mov		param3, [s_rank1]
		mov		param2, [s_tarr]
		mov		param1, [s_arr1]
		mov		fptr, Sort
		call	fptr						; call Sort (array1, tarray, rank1, trank, size)
;---[Sort second array]--------------------
		mov		param5, [s_size]
		mov		param4, [s_trank]
		mov		param3, [s_rank2]
		mov		param2, [s_tarr]
		mov		param1, [s_arr2]
		mov		fptr, Sort
		call	fptr						; call Sort (array2, tarray, rank2, trank, size)
;---[Set ranks]----------------------------
		mov		param5, [s_size]
		mov		param4, [s_rank2]
		mov		param3, [s_rank1]
		mov		param2, [s_arr2]
		mov		param1, [s_arr1]
		call	Rank						; call Rank (array1, array2, rank1, rank2, size)
;---[Get ranks difference]-----------------
		mov		param3, [s_size]
		mov		param2, [s_arr2]
		mov		param1, [s_arr1]
		mov		fptr, Diff
		call	fptr						; result = Diff (array1, array2, size)
;---[Compute result]-----------------------
	cvtsi2s#x	size, [s_size]				; get "size" variable from the stack
		initreg	const, trank, oneval		; const = 1.0
		movap#x	temp, size
		muls#x	temp, temp
		subs#x	temp, const
		muls#x	size, temp					; size = size * (size * size - 1.0)
		initreg	const, trank, sixval		; const = 6.0
		divs#x	const, size
		muls#x	const, result				; const = result * 6.0 / (size * (size * size - 1.0))
		initreg	result, trank, oneval		; result = 1.0
		subs#x	result, const				; return 1.0 - result * 6.0 / (size * (size * size - 1.0))
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	initreg	result, trank, nanval		; return NaN
		add		stack, space				; restoring back the stack pointer
		ret
}
SpearmanCorrelation_flt32:	SPEARMAN_CORRELATION	s
SpearmanCorrelation_flt64:	SPEARMAN_CORRELATION	d

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

align 16
maskS1		dq	0x0000000000000000, 0x0000000000000000
			dq	0x00000000000000FF, 0x0000000000000000
			dq	0x000000000000FFFF, 0x0000000000000000
			dq	0x0000000000FFFFFF, 0x0000000000000000
			dq	0x00000000FFFFFFFF, 0x0000000000000000
			dq	0x000000FFFFFFFFFF, 0x0000000000000000
			dq	0x0000FFFFFFFFFFFF, 0x0000000000000000
			dq	0x00FFFFFFFFFFFFFF, 0x0000000000000000
			dq	0xFFFFFFFFFFFFFFFF, 0x0000000000000000
			dq	0xFFFFFFFFFFFFFFFF, 0x00000000000000FF
			dq	0xFFFFFFFFFFFFFFFF, 0x000000000000FFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x0000000000FFFFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x00000000FFFFFFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x000000FFFFFFFFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x0000FFFFFFFFFFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x00FFFFFFFFFFFFFF
maskS2		dq	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF

align 16
maskV1		dq	0x0000000000000000, 0x0000000000000000
			dq	0x0000000000000000, 0xFF00000000000000
			dq	0x0000000000000000, 0xFFFF000000000000
			dq	0x0000000000000000, 0xFFFFFF0000000000
			dq	0x0000000000000000, 0xFFFFFFFF00000000
			dq	0x0000000000000000, 0xFFFFFFFFFF000000
			dq	0x0000000000000000, 0xFFFFFFFFFFFF0000
			dq	0x0000000000000000, 0xFFFFFFFFFFFFFF00
			dq	0x0000000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFF00000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFF000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFF0000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFF00000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFF000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFFFF0000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFFFFFF00, 0xFFFFFFFFFFFFFFFF
maskV2		dq	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
