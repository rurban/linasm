;                                                                 Statistics.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                      WIDELY USED STATISTICAL FUNCTIONS                      #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2014, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################

; Mapping functions
extrn	'_Map_flt32'			as	Map_flt32
extrn	'_Map_flt64'			as	Map_flt64

; Sum of elements
extrn	'Array_Sum_flt32'		as	Sum_flt32
extrn	'Array_Sum_flt64'		as	Sum_flt64

; Minimum value
extrn	'Array_Min_flt32'		as	Min_flt32
extrn	'Array_Min_flt64'		as	Min_flt64

; Maximum value
extrn	'Array_Max_flt32'		as	Max_flt32
extrn	'Array_Max_flt64'		as	Max_flt64

; Blend masks
extrn	'maskS1'				as	maskS1
extrn	'maskS2'				as	maskS2
extrn	'maskV1'				as	maskV1
extrn	'maskV2'				as	maskV2

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Measures of location                                                   ;
;******************************************************************************;

;==============================================================================;
;       Mean                                                                   ;
;==============================================================================;
public	Mean_flt32				as	'Statistics_Mean_flt32'
public	Mean_flt64				as	'Statistics_Mean_flt64'
public	Mean_flt32				as	'_ZN10Statistics4MeanEPKfm'
public	Mean_flt64				as	'_ZN10Statistics4MeanEPKdm'

;==============================================================================;
;       Median                                                                 ;
;==============================================================================;

; Unsigned integer types
public	Median_uint8			as	'Statistics_Median_uint8'
public	Median_uint16			as	'Statistics_Median_uint16'
public	Median_uint32			as	'Statistics_Median_uint32'
public	Median_uint64			as	'Statistics_Median_uint64'
public	Median_uint8			as	'_ZN10Statistics6MedianEPhm'
public	Median_uint16			as	'_ZN10Statistics6MedianEPtm'
public	Median_uint32			as	'_ZN10Statistics6MedianEPjm'
public	Median_uint64			as	'_ZN10Statistics6MedianEPym'

; Signed integer types
public	Median_sint8			as	'Statistics_Median_sint8'
public	Median_sint16			as	'Statistics_Median_sint16'
public	Median_sint32			as	'Statistics_Median_sint32'
public	Median_sint64			as	'Statistics_Median_sint64'
public	Median_sint8			as	'_ZN10Statistics6MedianEPam'
public	Median_sint16			as	'_ZN10Statistics6MedianEPsm'
public	Median_sint32			as	'_ZN10Statistics6MedianEPim'
public	Median_sint64			as	'_ZN10Statistics6MedianEPxm'

; Floating-point types
public	Median_flt32			as	'Statistics_Median_flt32'
public	Median_flt64			as	'Statistics_Median_flt64'
public	Median_flt32			as	'_ZN10Statistics6MedianEPfm'
public	Median_flt64			as	'_ZN10Statistics6MedianEPdm'

; Other types
public	Median_uint64			as	'Statistics_Median_size'
public	Median_uint64			as	'_ZN10Statistics6MedianEPmm'

;==============================================================================;
;       Lower quartile                                                         ;
;==============================================================================;

; Unsigned integer types
public	LowQuart_uint8			as	'Statistics_LowerQuartile_uint8'
public	LowQuart_uint16			as	'Statistics_LowerQuartile_uint16'
public	LowQuart_uint32			as	'Statistics_LowerQuartile_uint32'
public	LowQuart_uint64			as	'Statistics_LowerQuartile_uint64'
public	LowQuart_uint8			as	'_ZN10Statistics13LowerQuartileEPhm'
public	LowQuart_uint16			as	'_ZN10Statistics13LowerQuartileEPtm'
public	LowQuart_uint32			as	'_ZN10Statistics13LowerQuartileEPjm'
public	LowQuart_uint64			as	'_ZN10Statistics13LowerQuartileEPym'

; Signed integer types
public	LowQuart_sint8			as	'Statistics_LowerQuartile_sint8'
public	LowQuart_sint16			as	'Statistics_LowerQuartile_sint16'
public	LowQuart_sint32			as	'Statistics_LowerQuartile_sint32'
public	LowQuart_sint64			as	'Statistics_LowerQuartile_sint64'
public	LowQuart_sint8			as	'_ZN10Statistics13LowerQuartileEPam'
public	LowQuart_sint16			as	'_ZN10Statistics13LowerQuartileEPsm'
public	LowQuart_sint32			as	'_ZN10Statistics13LowerQuartileEPim'
public	LowQuart_sint64			as	'_ZN10Statistics13LowerQuartileEPxm'

; Floating-point types
public	LowQuart_flt32			as	'Statistics_LowerQuartile_flt32'
public	LowQuart_flt64			as	'Statistics_LowerQuartile_flt64'
public	LowQuart_flt32			as	'_ZN10Statistics13LowerQuartileEPfm'
public	LowQuart_flt64			as	'_ZN10Statistics13LowerQuartileEPdm'

; Other types
public	LowQuart_uint64			as	'Statistics_LowerQuartile_size'
public	LowQuart_uint64			as	'_ZN10Statistics13LowerQuartileEPmm'

;==============================================================================;
;       Upper quartile                                                         ;
;==============================================================================;

; Unsigned integer types
public	UpQuart_uint8			as	'Statistics_UpperQuartile_uint8'
public	UpQuart_uint16			as	'Statistics_UpperQuartile_uint16'
public	UpQuart_uint32			as	'Statistics_UpperQuartile_uint32'
public	UpQuart_uint64			as	'Statistics_UpperQuartile_uint64'
public	UpQuart_uint8			as	'_ZN10Statistics13UpperQuartileEPhm'
public	UpQuart_uint16			as	'_ZN10Statistics13UpperQuartileEPtm'
public	UpQuart_uint32			as	'_ZN10Statistics13UpperQuartileEPjm'
public	UpQuart_uint64			as	'_ZN10Statistics13UpperQuartileEPym'

; Signed integer types
public	UpQuart_sint8			as	'Statistics_UpperQuartile_sint8'
public	UpQuart_sint16			as	'Statistics_UpperQuartile_sint16'
public	UpQuart_sint32			as	'Statistics_UpperQuartile_sint32'
public	UpQuart_sint64			as	'Statistics_UpperQuartile_sint64'
public	UpQuart_sint8			as	'_ZN10Statistics13UpperQuartileEPam'
public	UpQuart_sint16			as	'_ZN10Statistics13UpperQuartileEPsm'
public	UpQuart_sint32			as	'_ZN10Statistics13UpperQuartileEPim'
public	UpQuart_sint64			as	'_ZN10Statistics13UpperQuartileEPxm'

; Floating-point types
public	UpQuart_flt32			as	'Statistics_UpperQuartile_flt32'
public	UpQuart_flt64			as	'Statistics_UpperQuartile_flt64'
public	UpQuart_flt32			as	'_ZN10Statistics13UpperQuartileEPfm'
public	UpQuart_flt64			as	'_ZN10Statistics13UpperQuartileEPdm'

; Other types
public	UpQuart_uint64			as	'Statistics_UpperQuartile_size'
public	UpQuart_uint64			as	'_ZN10Statistics13UpperQuartileEPmm'

;==============================================================================;
;       Mid-range                                                              ;
;==============================================================================;
public	Midrange_flt32			as	'Statistics_Midrange_flt32'
public	Midrange_flt64			as	'Statistics_Midrange_flt64'
public	Midrange_flt32			as	'_ZN10Statistics8MidrangeEPKfm'
public	Midrange_flt64			as	'_ZN10Statistics8MidrangeEPKdm'

;******************************************************************************;
;       Measures of variability                                                ;
;******************************************************************************;

;==============================================================================;
;       Variance                                                               ;
;==============================================================================;
public	Variance_flt32			as	'Statistics_Variance_flt32'
public	Variance_flt64			as	'Statistics_Variance_flt64'
public	Variance_flt32			as	'_ZN10Statistics8VarianceEPKfmf'
public	Variance_flt64			as	'_ZN10Statistics8VarianceEPKdmd'

;==============================================================================;
;       Standard deviation                                                     ;
;==============================================================================;
public	StdDeviation_flt32		as	'Statistics_StandardDeviation_flt32'
public	StdDeviation_flt64		as	'Statistics_StandardDeviation_flt64'
public	StdDeviation_flt32		as	'_ZN10Statistics17StandardDeviationEPKfmf'
public	StdDeviation_flt64		as	'_ZN10Statistics17StandardDeviationEPKdmd'

;==============================================================================;
;       Absolute deviation                                                     ;
;==============================================================================;
public	AbsDeviation_flt32		as	'Statistics_AbsoluteDeviation_flt32'
public	AbsDeviation_flt64		as	'Statistics_AbsoluteDeviation_flt64'
public	AbsDeviation_flt32		as	'_ZN10Statistics17AbsoluteDeviationEPKfmf'
public	AbsDeviation_flt64		as	'_ZN10Statistics17AbsoluteDeviationEPKdmd'

;==============================================================================;
;       Interquartile range                                                    ;
;==============================================================================;

; Unsigned integer types
public	QuartRange_uint8		as	'Statistics_InterquartileRange_uint8'
public	QuartRange_uint16		as	'Statistics_InterquartileRange_uint16'
public	QuartRange_uint32		as	'Statistics_InterquartileRange_uint32'
public	QuartRange_uint64		as	'Statistics_InterquartileRange_uint64'
public	QuartRange_uint8		as	'_ZN10Statistics18InterquartileRangeEPhm'
public	QuartRange_uint16		as	'_ZN10Statistics18InterquartileRangeEPtm'
public	QuartRange_uint32		as	'_ZN10Statistics18InterquartileRangeEPjm'
public	QuartRange_uint64		as	'_ZN10Statistics18InterquartileRangeEPym'

; Signed integer types
public	QuartRange_sint8		as	'Statistics_InterquartileRange_sint8'
public	QuartRange_sint16		as	'Statistics_InterquartileRange_sint16'
public	QuartRange_sint32		as	'Statistics_InterquartileRange_sint32'
public	QuartRange_sint64		as	'Statistics_InterquartileRange_sint64'
public	QuartRange_sint8		as	'_ZN10Statistics18InterquartileRangeEPam'
public	QuartRange_sint16		as	'_ZN10Statistics18InterquartileRangeEPsm'
public	QuartRange_sint32		as	'_ZN10Statistics18InterquartileRangeEPim'
public	QuartRange_sint64		as	'_ZN10Statistics18InterquartileRangeEPxm'

; Floating-point types
public	QuartRange_flt32		as	'Statistics_InterquartileRange_flt32'
public	QuartRange_flt64		as	'Statistics_InterquartileRange_flt64'
public	QuartRange_flt32		as	'_ZN10Statistics18InterquartileRangeEPfm'
public	QuartRange_flt64		as	'_ZN10Statistics18InterquartileRangeEPdm'

; Other types
public	QuartRange_uint64		as	'Statistics_InterquartileRange_size'
public	QuartRange_uint64		as	'_ZN10Statistics18InterquartileRangeEPmm'

;==============================================================================;
;       Range                                                                  ;
;==============================================================================;
public	Range_flt32				as	'Statistics_Range_flt32'
public	Range_flt64				as	'Statistics_Range_flt64'
public	Range_flt32				as	'_ZN10Statistics5RangeEPKfm'
public	Range_flt64				as	'_ZN10Statistics5RangeEPKdm'

;******************************************************************************;
;       Measures of shape                                                      ;
;******************************************************************************;

; Skewness
public	Skewness_flt32			as	'Statistics_Skewness_flt32'
public	Skewness_flt64			as	'Statistics_Skewness_flt64'
public	Skewness_flt32			as	'_ZN10Statistics8SkewnessEPKfmf'
public	Skewness_flt64			as	'_ZN10Statistics8SkewnessEPKdmd'

; Kurtosis
public	Kurtosis_flt32			as	'Statistics_Kurtosis_flt32'
public	Kurtosis_flt64			as	'Statistics_Kurtosis_flt64'
public	Kurtosis_flt32			as	'_ZN10Statistics8KurtosisEPKfmf'
public	Kurtosis_flt64			as	'_ZN10Statistics8KurtosisEPKdmd'

;******************************************************************************;
;       Other functions                                                        ;
;******************************************************************************;

; Covariance
public	Covariance_flt32		as	'Statistics_Covariance_flt32'
public	Covariance_flt64		as	'Statistics_Covariance_flt64'
public	Covariance_flt32		as	'_ZN10Statistics10CovarianceEPKffS1_fm'
public	Covariance_flt64		as	'_ZN10Statistics10CovarianceEPKddS1_dm'

; Correlation
public	Correlation_flt32		as	'Statistics_Correlation_flt32'
public	Correlation_flt64		as	'Statistics_Correlation_flt64'
public	Correlation_flt32		as	'_ZN10Statistics11CorrelationEPKffS1_fm'
public	Correlation_flt64		as	'_ZN10Statistics11CorrelationEPKddS1_dm'

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
result	equ		xmm0						; result register
asize	equ		xmm1						; array size
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
		call	Sum							; call Sum (array, size)
	cvtsi2s#x	asize, [s_size]				; get "size" variable from the stack
	divs#x		result, asize
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
l_ptr	equ		r8							; left pointer to split data array
r_ptr	equ		r9							; right pointer to split data array
bytes	= 1 shl scale						; size of type (bytes)
;---[Main loop]----------------------------
.loop:	mov		value, [ptr]				; value = ptr[0]
		mov		l_ptr, left					; l_ptr = left
		mov		r_ptr, right				; r_ptr = right
		jmp		.loop1						; skip swap section
;---[Swap loop]----------------------------
.swap:	mov		[l_ptr], swap2				; l_ptr[0] = swap2
		mov		[r_ptr], swap1				; r_ptr[0] = swap1
;---[Internal loop 1]----------------------
.loop1:	add		l_ptr, bytes				; l_ptr++
		mov		swap1, [l_ptr]				; swap1 = l_ptr[0]
		cmp		swap1, value
		cond1	.loop1						; do while (swap1 < value)
;---[Internal loop 2]----------------------
.loop2:	sub		r_ptr, bytes				; r_ptr--
		mov		swap2, [r_ptr]				; swap2 = r_ptr[0]
		cmp		swap2, value
		cond2	.loop2						; do while (swap2 > value)
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
;       Quartile                                                               ;
;==============================================================================;
macro	QUARTILE_CORE	Quant, quart, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
left	equ		array						; pointer to beginning of array
right	equ		size						; pointer to ending of array
index	equ		rax							; index of target element
ptr1	equ		rdx							; pointer to first target element
ptr2	equ		rcx							; pointer to second target element
ptr		equ		ptr1						; pointer parameter for Quantile function
result1	equ		rax							; first result register
result2	equ		rdx							; second result register
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
		mov		ptr, [s_ptr2]				;     Quantile (left, right, ptr2)
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
temp	equ		rax							; temporary register
ptr1	equ		rax							; pointer to first target element
ptr2	equ		rdx							; pointer to second target element
result	equ		xmm0						; result register
half	equ		xmm1						; 0.5
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_ptr1	equ		stack + 2 * 8				; stack position of "ptr1" variable
s_ptr2	equ		stack + 3 * 8				; stack position of "ptr2" variable
if x eq s
Map		= Map_flt32							; Mapping function
halfval	= PHALF_FLT32						; +0.5
nan		= DMASK_FLT32						; NaN
else if x eq d
Map		= Map_flt64							; Mapping function
halfval	= PHALF_FLT64						; +0.5
nan		= DMASK_FLT64						; NaN
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
		sub		stack, space				; reserving stack size for local vars
;---[Call convert function]----------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		call	Map							; Call Map (array, size)
;---[Call quartile function]---------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	Quart						; call Quartile (array, size)
		mov		[s_ptr1], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr2], ptr2				; save "ptr2" variable into the stack
;---[Call convert function]----------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	Map							; Call Map (array, size)
;---[Compute quartile]---------------------
		mov		ptr1, [s_ptr1]				; get "ptr1" variable from the stack
		mov		ptr2, [s_ptr2]				; get "ptr2" variable from the stack
		movs#x	result, [ptr1]
		adds#x	result, [ptr2]
		initreg	half, temp, halfval			; half = 0.5
		muls#x	result, half				; return 0.5 * (ptr1[0] + ptr2[0])
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	initreg	result, temp, nan			; return NaN
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
LowQuart_uint8:		QUARTILE_INT	Quartile1_uint8, al
LowQuart_uint16:	QUARTILE_INT	Quartile1_uint16, ax
LowQuart_uint32:	QUARTILE_INT	Quartile1_uint32, eax
LowQuart_uint64:	QUARTILE_INT	Quartile1_uint64, rax

; Signed integer types
LowQuart_sint8:		QUARTILE_INT	Quartile1_sint8, al
LowQuart_sint16:	QUARTILE_INT	Quartile1_sint16, ax
LowQuart_sint32:	QUARTILE_INT	Quartile1_sint32, eax
LowQuart_sint64:	QUARTILE_INT	Quartile1_sint64, rax

; Floating-point types
LowQuart_flt32:		QUARTILE_FLT	Quartile1_sint32, s
LowQuart_flt64:		QUARTILE_FLT	Quartile1_sint64, d

;==============================================================================;
;       Upper quartile                                                         ;
;==============================================================================;

; Unsigned integer types
UpQuart_uint8:		QUARTILE_INT	Quartile3_uint8, al
UpQuart_uint16:		QUARTILE_INT	Quartile3_uint16, ax
UpQuart_uint32:		QUARTILE_INT	Quartile3_uint32, eax
UpQuart_uint64:		QUARTILE_INT	Quartile3_uint64, rax

; Signed integer types
UpQuart_sint8:		QUARTILE_INT	Quartile3_sint8, al
UpQuart_sint16:		QUARTILE_INT	Quartile3_sint16, ax
UpQuart_sint32:		QUARTILE_INT	Quartile3_sint32, eax
UpQuart_sint64:		QUARTILE_INT	Quartile3_sint64, rax

; Floating-point types
UpQuart_flt32:		QUARTILE_FLT	Quartile3_sint32, s
UpQuart_flt64:		QUARTILE_FLT	Quartile3_sint64, d

;==============================================================================;
;       Mid-range                                                              ;
;==============================================================================;
macro	MIDRANGE	x
{
;---[Parameters]---------------------------
array	equ		rdi							; data array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
result	equ		xmm0						; result register
half	equ		xmm1						; 0.5
stack	equ		rsp							; stack pointer
s_array	equ		stack +  0 * 8				; stack position of "array" variable
s_size	equ		stack +  1 * 8				; stack position of "size" variable
s_res	equ		stack +  2 * 8				; stack position of "result" variable
if x eq s
Min		= Min_flt32							; Minimum function (flt32_t type)
Max		= Max_flt32							; Maximum function (flt32_t type)
halfval	= PHALF_FLT32						; +0.5
nan		= DMASK_FLT32						; NaN
else if x eq d
Min		= Min_flt64							; Minimum function (flt64_t type)
Max		= Max_flt64							; Maximum function (flt64_t type)
halfval	= PHALF_FLT64						; +0.5
nan		= DMASK_FLT64						; NaN
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
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
		initreg	half, temp, halfval			; half = 0.5
		adds#x	result, [s_res]				; result = max(array[]) + min(array[])
		muls#x	result, half				; result = 0.5 * max(array[]) + min(array[])
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	initreg	result, temp, nan			; return NaN
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
aindex	equ		rcx							; array offset from vector boundary
count	equ		r8							; normalized array size
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
result	equ		blend						; result register
temp	equ		xmm1						; temporary register
vector	equ		xmm2						; data mean value
mask	equ		xmm3						; data mask
sum0	equ		xmm4						; intermediate sum #1
sum1	equ		xmm5						; intermediate sum #2
sum2	equ		xmm6						; intermediate sum #3
sum3	equ		xmm7						; intermediate sum #4
sum4	equ		xmm8						; intermediate sum #5
zero	equ		xmm9						; 0
asize	equ		xmm10						; normalized array size
if x eq s
dmask	= DMASK_FLT32						; data mask
nan		= DMASK_FLT32						; NaN
scale	= 2									; scale value
else if x eq d
dmask	= DMASK_FLT64						; data mask
nan		= DMASK_FLT64						; NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		mov		count, size
		sub		count, 1					; if (size <= 1)
		jbe		.error						;     then go to error branch
		shl		size, scale					; convert size to bytes
	cvtsi2s#x	asize, count				; asize = size - 1
		movap#x	vector, mean				; vector = mean
if type = 2
		initreg	mask, index, dmask			; mask = dmask
end if
		xorp#x	result, result				; index = 0
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		shufp#x	vector, vector, 0x0			; duplicate value through the entire register
if type = 2
		shufp#x	mask, mask, 0x0				; duplicate value through the entire register
end if
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned sums]-----------------------
		add		size, aindex				; size += aindex
		shl		aindex, VSCALE				; compute shift in mask array
		movap#x	blend, dqword [maskS1 + aindex]
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
		movap#x	temp, [ptr + 1*VSIZE]		; temp = ptr[1]
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
		movap#x	temp, [ptr + 2*VSIZE]		; temp = ptr[2]
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
		movap#x	temp, [ptr + 3*VSIZE]		; temp = ptr[3]
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
		movap#x	temp, [ptr + 4*VSIZE]		; temp = ptr[4]
		subp#x	temp, vector				; temp -= vector
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum4, temp					; sum4 += temp
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		andnp#x	blend, dqword [maskS2 + size]
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
		divs#x	sum0, asize
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
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		divs#x	result, asize				; return result / (size - 1)
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nan			; return NaN
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
Var		= Variance_flt32					; Variance function
else if x eq d
Var		= Variance_flt64					; Variance function
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
		call	Quart3						; call Quartile2 (array, size)
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
temp	equ		rax							; temporary register
ptr1	equ		rax							; pointer to first target element
ptr2	equ		rdx							; pointer to second target element
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
Map		= Map_flt32							; Mapping function
halfval	= PHALF_FLT32						; +0.5
nan		= DMASK_FLT32						; NaN
else if x eq d
Map		= Map_flt64							; Mapping function
halfval	= PHALF_FLT64						; +0.5
nan		= DMASK_FLT64						; NaN
end if
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
		sub		stack, space				; reserving stack size for local vars
;---[Call convert function]----------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		call	Map							; Call Map (array, size)
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
		call	Map							; Call Map (array, size)
;---[Compute interquartile range]----------
		mov		ptr1, [s_ptr3]				; get "ptr3" variable from the stack
		mov		ptr2, [s_ptr4]				; get "ptr4" variable from the stack
		movs#x	result, [ptr1]
		adds#x	result, [ptr2]
		mov		ptr1, [s_ptr1]				; get "ptr1" variable from the stack
		mov		ptr2, [s_ptr2]				; get "ptr2" variable from the stack
		subs#x	result, [ptr1]
		subs#x	result, [ptr2]
		initreg	half, temp, halfval			; half = 0.5
		muls#x	result, half				; return 0.5 * (ptr3[0] + ptr4[0] - ptr1[0] - ptr2[0])
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	initreg	result, temp, nan			; return NaN
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
temp	equ		rax							; temporary register
result	equ		xmm0						; result register
stack	equ		rsp							; stack pointer
s_array	equ		stack +  0 * 8				; stack position of "array" variable
s_size	equ		stack +  1 * 8				; stack position of "size" variable
s_res	equ		s_array						; stack position of "result" variable
if x eq s
Min		= Min_flt32							; Minimum function (flt32_t type)
Max		= Max_flt32							; Maximum function (flt32_t type)
nan		= DMASK_FLT32						; NaN
else if x eq d
Min		= Min_flt64							; Minimum function (flt64_t type)
Max		= Max_flt64							; Maximum function (flt64_t type)
nan		= DMASK_FLT64						; NaN
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
;---[Call min function]--------------------
		mov		[s_array], array			; push array variable into the stack
		mov		[s_size], size				; push size variable into the stack
		call	Min							; call function Min (array[], size)
;---[Call max function]--------------------
		mov		array, [s_array]			; pop array variable from the stack
		mov		size, [s_size]				; pop size variable from the stack
		movs#x	[s_res], result				; push res variable into the stack
		call	Max							; call function Max (array[], size)
;---[Compute range]------------------------
		subs#x	result, [s_res]				; res = max(array[]) - min(array[])
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	initreg	result, temp, nan			; return NaN
		ret
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
aindex	equ		rcx							; array offset from vector boundary
count	equ		r8							; normalized array size
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
result	equ		blend						; result register
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #1
vector	equ		xmm3						; data mean value
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
zero	equ		xmm14						; 0
asize	equ		xmm15						; normalized array size
if x eq s
nan		= DMASK_FLT32						; NaN
scale	= 2									; scale value
else if x eq d
nan		= DMASK_FLT64						; NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		mov		count, size
		sub		count, 2					; if (size <= 2)
		jbe		.error						;     then go to error branch
		shl		size, scale					; convert size to bytes
	cvtsi2s#x	sum2, count					; sum2 = size - 2
		add		count, 1
	cvtsi2s#x	sum1, count					; sum1 = size - 1
		add		count, 1
	cvtsi2s#x	asize, count				; asize = size
		sqrts#x	sum1, sum1
		divs#x	asize, sum2
		muls#x	asize, sum1					; asize = size * sqrt (size - 1) / (size - 2)
		movap#x	vector, mean				; vector = mean
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		shufp#x	vector, vector, 0x0			; duplicate value through the entire register
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	sum5, sum5					; sum5 = 0
		xorp#x	sum6, sum6					; sum6 = 0
		xorp#x	sum7, sum7					; sum7 = 0
		xorp#x	sum8, sum8					; sum8 = 0
		xorp#x	sum9, sum9					; sum9 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned sums]-----------------------
		add		size, aindex				; size += aindex
		shl		aindex, VSCALE				; compute shift in mask array
		movap#x	blend, dqword [maskS1 + aindex]
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
		movap#x	temp0, [ptr + 1*VSIZE]		; temp0 = ptr[1]
		subp#x	temp0, vector				; temp0 -= vector
		movap#x	temp1, temp0				; temp1 = temp0
		mulp#x	temp0, temp0
		addp#x	sum2, temp0					; sum2 += (ptr[1] - mean)^2
		mulp#x	temp0, temp1
		addp#x	sum3, temp0					; sum3 += (ptr[1] - mean)^3
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp0, [ptr + 2*VSIZE]		; temp0 = ptr[2]
		subp#x	temp0, vector				; temp0 -= vector
		movap#x	temp1, temp0				; temp1 = temp0
		mulp#x	temp0, temp0
		addp#x	sum4, temp0					; sum4 += (ptr[2] - mean)^2
		mulp#x	temp0, temp1
		addp#x	sum5, temp0					; sum5 += (ptr[2] - mean)^3
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp0, [ptr + 3*VSIZE]		; temp0 = ptr[3]
		subp#x	temp0, vector				; temp0 -= vector
		movap#x	temp1, temp0				; temp1 = temp0
		mulp#x	temp0, temp0
		addp#x	sum6, temp0					; sum6 += (ptr[3] - mean)^2
		mulp#x	temp0, temp1
		addp#x	sum7, temp0					; sum7 += (ptr[3] - mean)^3
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp0, [ptr + 4*VSIZE]		; temp0 = ptr[4]
		subp#x	temp0, vector				; temp0 -= vector
		movap#x	temp1, temp0				; temp1 = temp0
		mulp#x	temp0, temp0
		addp#x	sum8, temp0					; sum8 += (ptr[4] - mean)^2
		mulp#x	temp0, temp1
		addp#x	sum9, temp0					; sum9 += (ptr[4] - mean)^3
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		andnp#x	blend, dqword [maskS2 + size]
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
		muls#x	sum1, asize
		movap#x	result, sum1				; return asize * sum1 / (sum0 * sqrt (sum0))
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [array]				; temp0 = array[0]
		subs#x	temp0, vector				; temp0 -= vector
		movs#x	temp1, temp0				; temp1 = temp0
		muls#x	temp0, temp0
		adds#x	sum0, temp0					; sum0 += (array[0] - mean)^2
		muls#x	temp0, temp1
		adds#x	sum1, temp0					; sum1 += (array[0] - mean)^3
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		sqrts#x	temp0, sum0
		muls#x	sum0, temp0
		divs#x	sum1, sum0
		muls#x	sum1, asize
		movs#x	result, sum1				; return asize * sum1 / (sum0 * sqrt (sum0))
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nan			; return NaN
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
aindex	equ		rcx							; array offset from vector boundary
count	equ		r8							; normalized array size
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
result	equ		blend						; result register
temp	equ		xmm1						; temporary register #1
vector	equ		xmm2						; data mean value
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
zero	equ		xmm13						; 0
asize 	equ		xmm14						; normalized array size
bias	equ		xmm15						; normal distribution bias
if x eq s
biasval	= 0x40400000						; bias const (3.0 for normal distribution)
nan		= DMASK_FLT32						; NaN
scale	= 2									; scale value
else if x eq d
biasval	= 0x4008000000000000				; bias const (3.0 for normal distribution)
nan		= DMASK_FLT64						; NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		mov		count, size
		sub		count, 3					; if (size <= 3)
		jbe		.error						;     then go to error branch
		shl		size, scale					; convert size to bytes
	cvtsi2s#x	sum3, count					; sum3 = size - 3
		add		count, 1
	cvtsi2s#x	sum2, count					; sum2 = size - 2
		add		count, 1
	cvtsi2s#x	sum1, count					; sum1 = size - 1
		add		count, 1
	cvtsi2s#x	asize, count				; asize = size
		add		count, 1
	cvtsi2s#x	sum0, count					; sum0 = size + 1
		initreg	bias, index, biasval		; bias = 3.0
		muls#x	sum2, sum3
		muls#x	bias, sum1
		muls#x	asize, sum0
		divs#x	sum1, sum2
		muls#x	bias, sum1					; bias = 3 * (size - 1)^2 / ((size - 2) * (size - 3))
		muls#x	asize, sum1					; asize = size * (size + 1) * (size - 1) / ((size - 2) * (size - 3))
		movap#x	vector, mean				; vector = mean
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		shufp#x	vector, vector, 0x0			; duplicate value through the entire register
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	sum5, sum5					; sum5 = 0
		xorp#x	sum6, sum6					; sum6 = 0
		xorp#x	sum7, sum7					; sum7 = 0
		xorp#x	sum8, sum8					; sum8 = 0
		xorp#x	sum9, sum9					; sum9 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned sums]-----------------------
		add		size, aindex				; size += aindex
		shl		aindex, VSCALE				; compute shift in mask array
		movap#x	blend, dqword [maskS1 + aindex]
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
		movap#x	temp, [ptr + 1*VSIZE]		; temp = ptr[1]
		subp#x	temp, vector				; temp -= vector
		mulp#x	temp, temp
		addp#x	sum2, temp					; sum2 += (ptr[1] - mean)^2
		mulp#x	temp, temp
		addp#x	sum3, temp					; sum3 += (ptr[1] - mean)^4
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 2*VSIZE]		; temp = ptr[2]
		subp#x	temp, vector				; temp -= vector
		mulp#x	temp, temp
		addp#x	sum4, temp					; sum4 += (ptr[2] - mean)^2
		mulp#x	temp, temp
		addp#x	sum5, temp					; sum5 += (ptr[2] - mean)^4
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 3*VSIZE]		; temp = ptr[3]
		subp#x	temp, vector				; temp -= vector
		mulp#x	temp, temp
		addp#x	sum6, temp					; sum6 += (ptr[3] - mean)^2
		mulp#x	temp, temp
		addp#x	sum7, temp					; sum7 += (ptr[3] - mean)^4
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 4*VSIZE]		; temp = ptr[4]
		subp#x	temp, vector				; temp -= vector
		mulp#x	temp, temp
		addp#x	sum8, temp					; sum8 += (ptr[4] - mean)^2
		mulp#x	temp, temp
		addp#x	sum9, temp					; sum9 += (ptr[4] - mean)^4
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		andnp#x	blend, dqword [maskS2 + size]
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
		muls#x	sum1, asize
		subs#x	sum1, bias
		movap#x	result, sum1				; return asize * sum1 / (sum0 * sum0) - bias
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		subs#x	temp, vector				; temp -= vector
		muls#x	temp, temp
		adds#x	sum0, temp					; sum0 += (array[0] - mean)^2
		muls#x	temp, temp
		adds#x	sum1, temp					; sum1 += (array[0] - mean)^4
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		muls#x	sum0, sum0
		divs#x	sum1, sum0
		muls#x	sum1, asize
		subs#x	sum1, bias
		movs#x	result, sum1				; return asize * sum1 / (sum0 * sum0) - bias
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nan			; return NaN
		ret
}
Kurtosis_flt32:	KURTOSIS	s
Kurtosis_flt64:	KURTOSIS	d

;******************************************************************************;
;       Other functions                                                        ;
;******************************************************************************;

;==============================================================================;
;       Covariance                                                             ;
;==============================================================================;
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
aindex	equ		rcx							; array offset from vector boundary
count	equ		r8							; normalized array size
ptr1	equ		r10							; temporary pointer to first array
ptr2	equ		r11							; temporary pointer to second array
blend	equ		xmm0						; blending mask
result	equ		blend						; result register
a1temp	equ		xmm1						; temporary register #1
a2temp	equ		xmm2						; temporary register #2
vector1	equ		xmm3						; data mean value #1
vector2	equ		xmm4						; data mean value #2
sum0	equ		xmm5						; intermediate sum #1
sum1	equ		xmm6						; intermediate sum #2
sum2	equ		xmm7						; intermediate sum #3
sum3	equ		xmm8						; intermediate sum #4
sum4	equ		xmm9						; intermediate sum #5
zero	equ		xmm10						; 0
asize	equ		xmm11						; normalized array size
if x eq s
nan		= DMASK_FLT32						; NaN
scale	= 2									; scale value
else if x eq d
nan		= DMASK_FLT64						; NaN
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
		shl		size, scale					; convert size to bytes
	cvtsi2s#x	asize, count				; asize = size - 1
		movap#x	vector1, mean1				; vector = mean1
		movap#x	vector2, mean2				; vector = mean2
		xorp#x	result, result				; index = 0
		test	array2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	array1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		ptr2, array2				; ptr2 = array2
		mov		ptr1, array1				; ptr1 = array1
		mov		aindex, array1
		and		aindex, VMASK				; get array offset from vector boundary
		sub		ptr2, aindex				; ptr2 = array2 - aindex
		sub		ptr1, aindex				; ptr1 = array1 - aindex
		xor		index, index				; index = 0
		shufp#x	vector1, vector1, 0x0		; duplicate value through the entire register
		shufp#x	vector2, vector2, 0x0		; duplicate value through the entire register
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned sum]------------------------
		add		size, aindex				; size += aindex
		sub		index, aindex				; index -= aindex
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		shl		aindex, VSCALE				; compute shift in mask array
		movap#x	blend, dqword [maskV1 + aindex]
		movup#x	a2temp, [array2]			; a2temp = array2[0]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movup#x	a1temp, [array1]			; a1temp = array1[0]
		subp#x	a1temp, vector1				; a1temp -= vector1
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
	blendvp#x	a1temp, zero				; blend a1temp with zero values
		addp#x	sum0, a1temp				; sum0 += a1temp
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 1*VSIZE]	; a2temp = ptr2[1]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movap#x	a1temp, [ptr1 + 1*VSIZE]	; a1temp = ptr1[1]
		subp#x	a1temp, vector1				; a1temp -= vector1
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
		addp#x	sum1, a1temp				; sum1 += a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 2*VSIZE]	; a2temp = ptr2[2]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movap#x	a1temp, [ptr1 + 2*VSIZE]	; a1temp = ptr1[2]
		subp#x	a1temp, vector1				; a1temp -= vector1
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
		addp#x	sum2, a1temp				; sum2 += a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 3*VSIZE]	; a2temp = ptr2[3]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movap#x	a1temp, [ptr1 + 3*VSIZE]	; a1temp = ptr1[3]
		subp#x	a1temp, vector1				; a1temp -= vector1
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
		addp#x	sum3, a1temp				; sum3 += a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 4*VSIZE]	; a2temp = ptr2[4]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movap#x	a1temp, [ptr1 + 4*VSIZE]	; a1temp = ptr1[4]
		subp#x	a1temp, vector1				; a1temp -= vector1
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
		addp#x	sum4, a1temp				; sum4 += a1temp
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of temp
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of temp
		add		ptr2, 4 * VSIZE				; ptr2 += 4 * VSIZE
		add		ptr1, 4 * VSIZE				; ptr1 += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		shl		size, VSCALE				; compute shift in mask array
		movap#x	blend, dqword [maskV2 + size]
		movup#x	a2temp, [array2 + index]	; a2temp = array2[index]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movup#x	a1temp, [array1 + index]	; a1temp = array1[index]
		subp#x	a1temp, vector1				; a1temp -= vector1
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
	blendvp#x	zero, a1temp				; blend a1temp with zero values
		addp#x	sum0, zero					; sum0 += a1temp
		addp#x	sum1, sum2
		addp#x	sum3, sum4
		addp#x	sum1, sum3
		addp#x	sum0, sum1					; sum0 = sum0 + sum1 + sum2 + sum3 + sum4
		summa	sum0, x						; get all parallel sums
		divs#x	sum0, asize
		movap#x	result, sum0				; return sum0 / (size - 1)
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	a2temp, [array2]			; a2temp = array2[0]
		subs#x	a2temp, vector2				; a2temp -= vector2
		movs#x	a1temp, [array1]			; a1temp = array1[0]
		subs#x	a1temp, vector1				; a1temp -= vector1
		muls#x	a1temp, a2temp				; a1temp *= a2temp
		adds#x	result, a1temp				; result += a1temp
		add		array2, bytes				; array2++
		add		array1, bytes				; array1++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		divs#x	result, asize				; return result / (size - 1)
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nan			; return NaN
		ret
}
Covariance_flt32:	COVARIANCE	s
Covariance_flt64:	COVARIANCE	d

;==============================================================================;
;       Correlation                                                            ;
;==============================================================================;
macro	CORRELATION		x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
mean1	equ		xmm0						; data mean of first array
mean2	equ		xmm1						; data mean of second array
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of arrays
aindex	equ		rcx							; array offset from vector boundary
ptr1	equ		r10							; temporary pointer to first array
ptr2	equ		r11							; temporary pointer to second array
blend	equ		xmm0						; blending mask
result	equ		blend						; result register
temp	equ		xmm1						; temporary register
a1temp	equ		xmm2						; temporary register #1
a2temp	equ		xmm3						; temporary register #2
vector1	equ		xmm4						; data mean value #1
vector2	equ		xmm5						; data mean value #2
sum0	equ		xmm6						; intermediate sum #1
sum1	equ		xmm7						; intermediate sum #2
sum2	equ		xmm8						; intermediate sum #3
zero1	equ		xmm9						; 0
zero2	equ		xmm10						; 0
if x eq s
nan		= DMASK_FLT32						; NaN
scale	= 2									; scale value
else if x eq d
nan		= DMASK_FLT64						; NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array2]					; prefetch data
	prefetchnta	[array1]					; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.error						; if (size == 0), then go to error branch
		movap#x	vector1, mean1				; vector = mean1
		movap#x	vector2, mean2				; vector = mean2
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
		test	array2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	array1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		ptr2, array2				; ptr2 = array2
		mov		ptr1, array1				; ptr1 = array1
		mov		aindex, array1
		and		aindex, VMASK				; get array offset from vector boundary
		sub		ptr2, aindex				; ptr2 = array2 - aindex
		sub		ptr1, aindex				; ptr1 = array1 - aindex
		xor		index, index				; index = 0
		shufp#x	vector1, vector1, 0x0		; duplicate value through the entire register
		shufp#x	vector2, vector2, 0x0		; duplicate value through the entire register
		xorp#x	zero1, zero1				; zero1 = 0
		xorp#x	zero2, zero2				; zero1 = 0
;---[Unaligned sum]------------------------
		add		size, aindex				; size += aindex
		sub		index, aindex				; index -= aindex
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		shl		aindex, VSCALE				; compute shift in mask array
		movap#x	blend, dqword [maskV1 + aindex]
		movup#x	a2temp, [array2]			; a2temp = array2[0]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movup#x	a1temp, [array1]			; a1temp = array1[0]
		subp#x	a1temp, vector1				; a1temp -= vector1
	blendvp#x	a2temp, zero2				; blend a2temp with zero values
	blendvp#x	a1temp, zero1				; blend a1temp with zero values
		movap#x	temp, a2temp
		mulp#x	temp, a1temp				; temp = a1temp * a2temp
		addp#x	sum0, temp					; sum0 += temp
		mulp#x	a2temp, a2temp				; a2temp *= a2temp
		addp#x	sum2, a2temp				; sum2 += a2temp
		mulp#x	a1temp, a1temp				; a1temp *= a1temp
		addp#x	sum1, a1temp				; sum1 += a1temp
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 1*VSIZE]	; a2temp = ptr2[1]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movap#x	a1temp, [ptr1 + 1*VSIZE]	; a1temp = ptr1[1]
		subp#x	a1temp, vector1				; a1temp -= vector1
		movap#x	temp, a2temp
		mulp#x	temp, a1temp				; temp = a1temp * a2temp
		addp#x	sum0, temp					; sum0 += temp
		mulp#x	a2temp, a2temp				; a2temp *= a2temp
		addp#x	sum2, a2temp				; sum2 += a2temp
		mulp#x	a1temp, a1temp				; a1temp *= a1temp
		addp#x	sum1, a1temp				; sum1 += a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 2*VSIZE]	; a2temp = ptr2[2]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movap#x	a1temp, [ptr1 + 2*VSIZE]	; a1temp = ptr1[2]
		subp#x	a1temp, vector1				; a1temp -= vector1
		movap#x	temp, a2temp
		mulp#x	temp, a1temp				; temp = a1temp * a2temp
		addp#x	sum0, temp					; sum0 += temp
		mulp#x	a2temp, a2temp				; a2temp *= a2temp
		addp#x	sum2, a2temp				; sum2 += a2temp
		mulp#x	a1temp, a1temp				; a1temp *= a1temp
		addp#x	sum1, a1temp				; sum1 += a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 3*VSIZE]	; a2temp = ptr2[3]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movap#x	a1temp, [ptr1 + 3*VSIZE]	; a1temp = ptr1[3]
		subp#x	a1temp, vector1				; a1temp -= vector1
		movap#x	temp, a2temp
		mulp#x	temp, a1temp				; temp = a1temp * a2temp
		addp#x	sum0, temp					; sum0 += temp
		mulp#x	a2temp, a2temp				; a2temp *= a2temp
		addp#x	sum2, a2temp				; sum2 += a2temp
		mulp#x	a1temp, a1temp				; a1temp *= a1temp
		addp#x	sum1, a1temp				; sum1 += a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 4*VSIZE]	; a2temp = ptr2[4]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movap#x	a1temp, [ptr1 + 4*VSIZE]	; a1temp = ptr1[4]
		subp#x	a1temp, vector1				; a1temp -= vector1
		movap#x	temp, a2temp
		mulp#x	temp, a1temp				; temp = a1temp * a2temp
		addp#x	sum0, temp					; sum0 += temp
		mulp#x	a2temp, a2temp				; a2temp *= a2temp
		addp#x	sum2, a2temp				; sum2 += a2temp
		mulp#x	a1temp, a1temp				; a1temp *= a1temp
		addp#x	sum1, a1temp				; sum1 += a1temp
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of temp
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of temp
		add		ptr2, 4 * VSIZE				; ptr2 += 4 * VSIZE
		add		ptr1, 4 * VSIZE				; ptr1 += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		shl		size, VSCALE				; compute shift in mask array
		movap#x	blend, dqword [maskV2 + size]
		movup#x	a2temp, [array2 + index]	; a2temp = array2[index]
		subp#x	a2temp, vector2				; a2temp -= vector2
		movup#x	a1temp, [array1 + index]	; a1temp = array1[index]
		subp#x	a1temp, vector1				; a1temp -= vector1
	blendvp#x	zero2, a2temp				; blend a2temp with zero values
	blendvp#x	zero1, a1temp				; blend a1temp with zero values
		movap#x	temp, zero2
		mulp#x	temp, zero1					; temp = a1temp * a2temp
		addp#x	sum0, temp					; sum0 += temp
		mulp#x	zero2, zero2				; a2temp *= a2temp
		addp#x	sum2, zero2					; sum2 += a2temp
		mulp#x	zero1, zero1				; a1temp *= a1temp
		addp#x	sum1, zero1					; sum1 += a1temp
		summa	sum0, x						; get all parallel sums
		summa	sum2, x						; get all parallel sums
		summa	sum1, x						; get all parallel sums
		muls#x	sum1, sum2
		sqrts#x	sum1, sum1
		divs#x	sum0, sum1
		movap#x	result, sum0				; return sum0 / sqrt (sum1 * sum2)
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	a2temp, [array2]			; a2temp = array2[0]
		subs#x	a2temp, vector2				; a2temp -= vector2
		movs#x	a1temp, [array1]			; a1temp = array1[0]
		subs#x	a1temp, vector1				; a1temp -= vector1
		movs#x	temp, a2temp
		muls#x	temp, a1temp				; temp = a1temp * a2temp
		adds#x	sum0, temp					; sum0 += temp
		muls#x	a2temp, a2temp				; a2temp *= a2temp
		adds#x	sum2, a2temp				; sum2 += a2temp
		muls#x	a1temp, a1temp				; a1temp *= a1temp
		adds#x	sum1, a1temp				; sum1 += a1temp
		add		array2, bytes				; array2++
		add		array1, bytes				; array1++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		muls#x	sum1, sum2
		sqrts#x	sum1, sum1
		divs#x	sum0, sum1
		movs#x	result, sum0				; return sum0 / sqrt (sum1 * sum2)
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nan			; return NaN
		ret
}
Correlation_flt32:	CORRELATION	s
Correlation_flt64:	CORRELATION	d

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
