;                                                                     Filter.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                   FINITE IMPULSE RESPONSE DIGITAL FILTERS                   #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
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
extrn	'Array_MulScalar_flt32'		as	Mul_flt32
extrn	'Array_MulScalar_flt64'		as	Mul_flt64

; Sum of elements
extrn	'Array_Sum_flt32'			as	Sum_flt32
extrn	'Array_Sum_flt64'			as	Sum_flt64

; Sum of multiplied elements
extrn	'Array_SumMul_flt32'		as	SumMul_flt32
extrn	'Array_SumMul_flt64'		as	SumMul_flt64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Array reflection                                                       ;
;******************************************************************************;
public	PosReflect_flt32		as	'Reflect_flt32'
public	PosReflect_flt64		as	'Reflect_flt64'

;******************************************************************************;
;       Linear filters                                                         ;
;******************************************************************************;

;==============================================================================;
;       Band-pass filter                                                       ;
;==============================================================================;
public	BandPass_flt32			as	'Filter_BandPass_flt32'
public	BandPass_flt64			as	'Filter_BandPass_flt64'
public	BandPass_flt32			as	'_ZN6Filter8BandPassEPfmff8window_t'
public	BandPass_flt64			as	'_ZN6Filter8BandPassEPdmdd8window_t'

;==============================================================================;
;       Band-stop filter                                                       ;
;==============================================================================;
public	BandStop_flt32			as	'Filter_BandStop_flt32'
public	BandStop_flt64			as	'Filter_BandStop_flt64'
public	BandStop_flt32			as	'_ZN6Filter8BandStopEPfmff8window_t'
public	BandStop_flt64			as	'_ZN6Filter8BandStopEPdmdd8window_t'

;==============================================================================;
;       Hilbert filter                                                         ;
;==============================================================================;
public	Hilbert_flt32			as	'Filter_Hilbert_flt32'
public	Hilbert_flt64			as	'Filter_Hilbert_flt64'
public	Hilbert_flt32			as	'_ZN6Filter7HilbertEPfmff8window_t'
public	Hilbert_flt64			as	'_ZN6Filter7HilbertEPdmdd8window_t'

;==============================================================================;
;       Differential filter                                                    ;
;==============================================================================;
public	Diff_flt32				as	'Filter_Diff_flt32'
public	Diff_flt64				as	'Filter_Diff_flt64'
public	Diff_flt32				as	'_ZN6Filter4DiffEPfmff8window_t'
public	Diff_flt64				as	'_ZN6Filter4DiffEPdmdd8window_t'

;==============================================================================;
;       Filter response                                                        ;
;==============================================================================;
public	Response_flt32			as	'Filter_Response_flt32'
public	Response_flt64			as	'Filter_Response_flt64'
public	Response_flt32			as	'_ZN6Filter8ResponseEPfPKfmS2_m'
public	Response_flt64			as	'_ZN6Filter8ResponseEPdPKdmS2_m'

;==============================================================================;
;       Moving average filter                                                  ;
;==============================================================================;
public	Average_flt32			as	'Filter_Average_flt32'
public	Average_flt64			as	'Filter_Average_flt64'
public	Average_flt32			as	'_ZN6Filter7AverageEPfPKfmm'
public	Average_flt64			as	'_ZN6Filter7AverageEPdPKdmm'

;******************************************************************************;
;       Nonlinear filters                                                      ;
;******************************************************************************;

;==============================================================================;
;       Median filter                                                          ;
;==============================================================================;

; Unsigned integer types
public	Median_uint8			as	'Filter_Median_uint8'
public	Median_uint16			as	'Filter_Median_uint16'
public	Median_uint32			as	'Filter_Median_uint32'
public	Median_uint64			as	'Filter_Median_uint64'
public	Median_uint8			as	'_ZN6Filter6MedianEPhPKhPmmm'
public	Median_uint16			as	'_ZN6Filter6MedianEPtPKtPmmm'
public	Median_uint32			as	'_ZN6Filter6MedianEPjPKjPmmm'
public	Median_uint64			as	'_ZN6Filter6MedianEPyPKyPmmm'

; Signed integer types
public	Median_sint8			as	'Filter_Median_sint8'
public	Median_sint16			as	'Filter_Median_sint16'
public	Median_sint32			as	'Filter_Median_sint32'
public	Median_sint64			as	'Filter_Median_sint64'
public	Median_sint8			as	'_ZN6Filter6MedianEPaPKaPmmm'
public	Median_sint16			as	'_ZN6Filter6MedianEPsPKsPmmm'
public	Median_sint32			as	'_ZN6Filter6MedianEPiPKiPmmm'
public	Median_sint64			as	'_ZN6Filter6MedianEPxPKxPmmm'

; Floating-point types
public	Median_flt32			as	'Filter_Median_flt32'
public	Median_flt64			as	'Filter_Median_flt64'
public	Median_flt32			as	'_ZN6Filter6MedianEPfPKfPmmm'
public	Median_flt64			as	'_ZN6Filter6MedianEPdPKdPmmm'

;==============================================================================;
;       Min filter                                                             ;
;==============================================================================;

; Unsigned integer types
public	Min_uint8				as	'Filter_Min_uint8'
public	Min_uint16				as	'Filter_Min_uint16'
public	Min_uint32				as	'Filter_Min_uint32'
public	Min_uint64				as	'Filter_Min_uint64'
public	Min_uint8				as	'_ZN6Filter3MinEPhPKhPmmm'
public	Min_uint16				as	'_ZN6Filter3MinEPtPKtPmmm'
public	Min_uint32				as	'_ZN6Filter3MinEPjPKjPmmm'
public	Min_uint64				as	'_ZN6Filter3MinEPyPKyPmmm'

; Signed integer types
public	Min_sint8				as	'Filter_Min_sint8'
public	Min_sint16				as	'Filter_Min_sint16'
public	Min_sint32				as	'Filter_Min_sint32'
public	Min_sint64				as	'Filter_Min_sint64'
public	Min_sint8				as	'_ZN6Filter3MinEPaPKaPmmm'
public	Min_sint16				as	'_ZN6Filter3MinEPsPKsPmmm'
public	Min_sint32				as	'_ZN6Filter3MinEPiPKiPmmm'
public	Min_sint64				as	'_ZN6Filter3MinEPxPKxPmmm'

; Floating-point types
public	Min_flt32				as	'Filter_Min_flt32'
public	Min_flt64				as	'Filter_Min_flt64'
public	Min_flt32				as	'_ZN6Filter3MinEPfPKfPmmm'
public	Min_flt64				as	'_ZN6Filter3MinEPdPKdPmmm'

;==============================================================================;
;       Max filter                                                             ;
;==============================================================================;

; Unsigned integer types
public	Max_uint8				as	'Filter_Max_uint8'
public	Max_uint16				as	'Filter_Max_uint16'
public	Max_uint32				as	'Filter_Max_uint32'
public	Max_uint64				as	'Filter_Max_uint64'
public	Max_uint8				as	'_ZN6Filter3MaxEPhPKhPmmm'
public	Max_uint16				as	'_ZN6Filter3MaxEPtPKtPmmm'
public	Max_uint32				as	'_ZN6Filter3MaxEPjPKjPmmm'
public	Max_uint64				as	'_ZN6Filter3MaxEPyPKyPmmm'

; Signed integer types
public	Max_sint8				as	'Filter_Max_sint8'
public	Max_sint16				as	'Filter_Max_sint16'
public	Max_sint32				as	'Filter_Max_sint32'
public	Max_sint64				as	'Filter_Max_sint64'
public	Max_sint8				as	'_ZN6Filter3MaxEPaPKaPmmm'
public	Max_sint16				as	'_ZN6Filter3MaxEPsPKsPmmm'
public	Max_sint32				as	'_ZN6Filter3MaxEPiPKiPmmm'
public	Max_sint64				as	'_ZN6Filter3MaxEPxPKxPmmm'

; Floating-point types
public	Max_flt32				as	'Filter_Max_flt32'
public	Max_flt64				as	'Filter_Max_flt64'
public	Max_flt32				as	'_ZN6Filter3MaxEPfPKfPmmm'
public	Max_flt64				as	'_ZN6Filter3MaxEPdPKdPmmm'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
NSCALE		= 1								; Node scale factor
NSIZE		= 1 shl NSCALE					; Size of node (count of elements)
IMASK		= 1 shl 62 - 1					; Mask to extract element index
MAX_WIN		= 4								; Max window index

;==============================================================================;
;       Heap markers                                                           ;
;==============================================================================;
NONE		= 0								; Element is not stored into heap
MAXH		= 1 shl 62						; Element is stored into max heap
MINH		= 1 shl 63						; Element is stored into min heap

;==============================================================================;
;       Offsets inside data structure                                          ;
;==============================================================================;
DKEY		= 0 * 8							; Offset of key value
DPTR		= 1 * 8							; Offset of pointer value

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
;       Map floating-point value to signed integer value                       ;
;******************************************************************************;
macro	MAP		value, mask, shift
{
		mov		mask, value					; mask = value
		sar		mask, shift					; do signed shift of the value
		shr		mask, 1						; do unsigned shift of the value
		xor		value, mask					; change original value with mask
}

;******************************************************************************;
;       Set heap element by its position                                       ;
;******************************************************************************;
macro	SET		SiftUp, SiftDown, value, ptr, heap, pos, svalue, sheap, shsize, cond, marker
{
local	.down, .exit
		cmp		value, [heap + pos + DKEY]	; if (value cond heap[pos].key)
		j#cond	.down						;     then sift element down into the heap
;---[Sift heap up branch]------------------
		mov		param1, [sheap]
		mov		param2, pos
		mov		param3, marker
		mov		param4, [svalue]
		mov		param5, ptr
		call	SiftUp						; call SiftUp (heap, pos, marker, value, ptr)
		jmp		.exit						; go to exit from the macro
;---[Sift heap down branch]----------------
.down:	mov		param1, [sheap]
		mov		param2, [shsize]
		mov		param3, marker
		mov		param4, [svalue]
		mov		param5, ptr
		mov		param6, pos
		call	SiftDown					; call SiftDown (heap, hsize, marker, value, ptr, pos)
.exit:
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
;       Sifting the heap up                                                    ;
;******************************************************************************;
macro	SIFT_UP		key, cond
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
size	equ		rsi							; heap size
marker	equ		rdx							; heap marker
ptr		equ		r8							; pointer value
;---[Internal variables]-------------------
root	equ		r9							; current root node
tptr	equ		r10							; temporary pointer
index	equ		r11							; element index
data	equ		xmm0						; data to sift up
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Sifting loop]-------------------------
.loop:	lea		root, [size - KSIZE]
		shr		root, NSCALE
		and		root, -KSIZE				; root = (size - 1) / NSIZE
		cmp		key, [array + root + DKEY]	; if (key cond array[root].key)
		j#cond	.exit						;     then go to exit
		mov		tptr, [array + root + DPTR]
		lea		index, [size + marker]		; index = size + marker
		mov		[tptr], index				; update element position
		movdqu	data, [array + root]
		movdqu	[array + size], data		; array[size] = array[root]
		mov		size, root					; size = root
		test	size, size
		jnz		.loop						; do while (size != 0)
;---[End of sifting loop]------------------
.exit:	mov		[array + size + DKEY], key	; save key value
		mov		[array + size + DPTR], ptr	; save ptr value
		lea		index, [size + marker]		; index = size + marker
		mov		[ptr], index				; update element position
		ret
}

;==============================================================================;
;       Min heap                                                               ;
;==============================================================================;

; Unsigned integer types
SiftMinUp_uint8:	SIFT_UP		cl, ae
SiftMinUp_uint16:	SIFT_UP		cx, ae
SiftMinUp_uint32:	SIFT_UP		ecx, ae
SiftMinUp_uint64:	SIFT_UP		rcx, ae

; Signed integer types
SiftMinUp_sint8:	SIFT_UP		cl, ge
SiftMinUp_sint16:	SIFT_UP		cx, ge
SiftMinUp_sint32:	SIFT_UP		ecx, ge
SiftMinUp_sint64:	SIFT_UP		rcx, ge

;==============================================================================;
;       Max heap                                                               ;
;==============================================================================;

; Unsigned integer types
SiftMaxUp_uint8:	SIFT_UP		cl, be
SiftMaxUp_uint16:	SIFT_UP		cx, be
SiftMaxUp_uint32:	SIFT_UP		ecx, be
SiftMaxUp_uint64:	SIFT_UP		rcx, be

; Signed integer types
SiftMaxUp_sint8:	SIFT_UP		cl, le
SiftMaxUp_sint16:	SIFT_UP		cx, le
SiftMaxUp_sint32:	SIFT_UP		ecx, le
SiftMaxUp_sint64:	SIFT_UP		rcx, le

;******************************************************************************;
;       Sifting the heap down                                                  ;
;******************************************************************************;
macro	SIFT_DOWN	key, value, cond
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
size	equ		rsi							; heap size
marker	equ		rdx							; heap marker
ptr		equ		r8							; pointer value
root	equ		r9							; starting position
;---[Internal variables]-------------------
leaf	equ		r10							; current leaf node
tptr	equ		r11							; temporary pointer
index	equ		r12							; element index
stack	equ		rsp							; stack pointer
s_index	equ		stack + 0 * 8				; stack position of "index" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_count	equ		stack + 2 * 8				; stack position of "ifunc" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_index], index			; save old value of "index" variable
		mov		[s_size], size				; save "size" variable into the stack
		lea		leaf, [root * NSIZE + KSIZE]; leaf = root * NSIZE + 1
		sub		size, leaf					; if (size <= leaf)
		jbe		.exit						;     then go to exit
;---[Sifting loop]-------------------------
.loop:	mov		value, [array + leaf + DKEY]; value = array[leaf].key
		lea		tptr, [leaf + KSIZE]		; tptr = leaf + KSIZE
		sub		size, KSIZE					; if (size == 1)
		je		.skip						;     then skip following code
		mov		index, (NSIZE - 1) * KSIZE	; index = (NSIZE - 1) * KSIZE
		cmp		size, index					; if (count > index)
		cmova	size, index					;     count = index
		mov		[s_count], size				; save "count" variable into the stack
;---[Internal loop]------------------------
.iloop:	cmp		value, [array + tptr + DKEY]; if (value cond array[tptr].key)
		j#cond	@f							; {
		mov		value, [array + tptr + DKEY];     value = array[tptr].key
		mov		leaf, tptr					;     leaf = tptr }
@@:		add		tptr, KSIZE					; tptr++
		sub		qword [s_count], KSIZE		; count--
		jnz		.iloop						; do while (count != 0)
;---[End of internal loop]-----------------
.skip:	cmp		key, value					; if (key cond value)
		j#cond	.exit						;     then go to exit
		mov		tptr, [array + leaf + DPTR]
		lea		index, [root + marker]		; index = root + marker
		mov		[tptr], index				; update element position
		movdqu	data, [array + leaf]
		movdqu	[array + root], data		; array[root] = array[leaf]
		mov		root, leaf					; root = leaf
		lea		leaf, [leaf * NSIZE + KSIZE]; leaf = root * NSIZE + 1
		mov		size, [s_size]				; get "size" variable from the stack
		sub		size, leaf
		ja		.loop						; do while (size > leaf)
;---[End of sifting loop]------------------
.exit:	mov		[array + root + DKEY], key	; save key value
		mov		[array + root + DPTR], ptr	; save ptr value
		lea		index, [root + marker]		; index = root + marker
		mov		[ptr], index				; update element position
		mov		index, [s_index]			; restore old value of "index" variable
		add		stack, space				; restoring back the stack pointer
		ret
}

;==============================================================================;
;       Min heap                                                               ;
;==============================================================================;

; Unsigned integer types
SiftMinDown_uint8:	SIFT_DOWN	cl, al, be
SiftMinDown_uint16:	SIFT_DOWN	cx, ax, be
SiftMinDown_uint32:	SIFT_DOWN	ecx, eax, be
SiftMinDown_uint64:	SIFT_DOWN	rcx, rax, be

; Signed integer types
SiftMinDown_sint8:	SIFT_DOWN	cl, al, le
SiftMinDown_sint16:	SIFT_DOWN	cx, ax, le
SiftMinDown_sint32:	SIFT_DOWN	ecx, eax, le
SiftMinDown_sint64:	SIFT_DOWN	rcx, rax, le

;==============================================================================;
;       Max heap                                                               ;
;==============================================================================;

; Unsigned integer types
SiftMaxDown_uint8:	SIFT_DOWN	cl, al, ae
SiftMaxDown_uint16:	SIFT_DOWN	cx, ax, ae
SiftMaxDown_uint32:	SIFT_DOWN	ecx, eax, ae
SiftMaxDown_uint64:	SIFT_DOWN	rcx, rax, ae

; Signed integer types
SiftMaxDown_sint8:	SIFT_DOWN	cl, al, ge
SiftMaxDown_sint16:	SIFT_DOWN	cx, ax, ge
SiftMaxDown_sint32:	SIFT_DOWN	ecx, eax, ge
SiftMaxDown_sint64:	SIFT_DOWN	rcx, rax, ge

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
		adds#x	value, [s_pi]				; value += Pi
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
zero	equ		xmm1						; 0.0
temp	equ		xmm2						; temporary register
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
		add		size, 1						;     size++
		initreg	value, treg, oneval			;     value = 1.0 / temp
		divs#x	value, temp					;     call Norm (filter, size, value)
		mov		fptr, Norm					; }
		call	fptr
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
macro	FILTER	FilterCore, x
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
		call	FilterCore					; call FilterCore (filter, size, lfreq, hfreq)
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
macro	RESPONSE	x
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
;---[Check filter size]--------------------
		test	fsize, fsize				; if (fsize == 0)
		jz		.error						;     then return false
;---[Check size of data array]-------------
		sub		dsize, fsize				; dsize -= fsize
		jb		.error						; if (dsize < fsize), then return false
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

;******************************************************************************;
;       Moving average filter                                                  ;
;******************************************************************************;
macro	AVERAGE	x
{
;---[Parameters]---------------------------
resp	equ		rdi							; pointer to filter response array
data	equ		rsi							; pointer to data array
size	equ		rdx							; size of data array
order	equ		rcx							; filter order
;---[Internal variables]-------------------
status	equ		al							; operation status
count	equ		rax							; count of elements to filter
head	equ		r8							; queue head
tail	equ		r9							; queue tail
border	equ		r10							; data border
sum		equ		xmm0						; intermediate sum
average	equ		xmm1						; average value
inverse	equ		xmm2						; inverse value
ovalue	equ		xmm3						; old value
nvalue	equ		xmm4						; new value
if x eq s
oneval	= PONE_FLT32						; 1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; 1.0
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;---[Check filter order]-------------------
		test	order, order				; if (order == 0)
		jz		.error						;     then return false
;---[Check size of data array]-------------
		lea		count, [order * 2 + 1]		; count = order * 2 + 1
		cmp		size, count					; if (size < count)
		jb		.error						;     then return false
;---[Compute data border]------------------
		lea		border, [data + size*bytes]	; border = data + size
		mov		head, count
		neg		head
		lea		head, [data + head*bytes]	; head = data - count
		mov		tail, data					; tail = data
;---[Init sum and inverse value]-----------
	cvtsi2s#x	sum, count
		initreg	inverse, count, oneval
		divs#x	inverse, sum				; inverse = 1.0 / count
		movs#x	ovalue, [data]				; ovalue = data[0]
		lea		count, [order + 1]
	cvtsi2s#x	sum, count
		muls#x	sum, ovalue					; sum = ovalue * (order + 1)
;---[Init loop]----------------------------
.iloop:	adds#x	sum, [tail]					; sum += tail[0]
		add		head, bytes					; head++
		add		tail, bytes					; tail++
		sub		order, 1					; order--
		jnz		.iloop						; do while (order != 0)
;---[Filter loop]--------------------------
.floop:	cmp		head, data					; if (head >= data)
		jnae	.skip1						; {
		movs#x	ovalue, [head]				;     ovalue = head[0] }
.skip1:	cmp		tail, border				; if (tail < border)
		jnb		.skip2						; {
		movs#x	nvalue, [tail]				;     nvalue = tail[0] }
.skip2:	subs#x	sum, ovalue					; sum -= ovalue
		adds#x	sum, nvalue					; sum += nvalue
		movap#x	average, sum
		muls#x	average, inverse			; average = sum / count
		movs#x	[resp], average				; resp[0] = value
		add		head, bytes					; head++
		add		tail, bytes					; tail++
		add		resp, bytes					; resp++
		sub		size, 1						; size--
		jnz		.floop						; do while (size != 0)
;---[End of filter loop]-------------------
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
Average_flt32:	AVERAGE	s
Average_flt64:	AVERAGE	d

;******************************************************************************;
;       Median filter                                                          ;
;******************************************************************************;
macro	MEDIAN	SiftMaxUp, SiftMaxDown, SiftMinUp, SiftMinDown, value, treg, maxc, minc, scale, flt
{
;---[Parameters]---------------------------
resp	equ		rdi							; pointer to filter response array
data	equ		rsi							; pointer to data array
temp	equ		rdx							; pointer to temporary buffer
size	equ		rcx							; size of data array
order	equ		r8							; filter order
;---[Internal variables]-------------------
status	equ		al							; operation status
shiftl	equ		cl							; low part of shift register
shift	equ		rcx							; position of the most significant bit
count	equ		rax							; count of elements to filter
heap	equ		r9							; pointer to heap array
head	equ		r10							; queue head
tail	equ		r11							; queue tail
mask	equ		resp						; mask to extract queue index
pos		equ		count						; element position into heap
stack	equ		rsp							; stack pointer
s_resp	equ		stack + 0 * 8				; stack position of "resp" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_temp	equ		stack + 2 * 8				; stack position of "temp" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_size1	equ		stack + 4 * 8				; stack position of "size1" variable
s_size2	equ		stack + 5 * 8				; stack position of "size2" variable
s_brdr	equ		stack + 6 * 8				; stack position of "border" variable
s_maxh	equ		stack + 7 * 8				; stack position of "max_heap" variable
s_minh	equ		stack + 8 * 8				; stack position of "min_heap" variable
s_maxs	equ		stack + 9 * 8				; stack position of "max_size" variable
s_mins	equ		stack + 10 * 8				; stack position of "min_size" variable
s_mask	equ		stack + 11 * 8				; stack position of "mask" variable
s_head	equ		stack + 12 * 8				; stack position of "head" variable
s_tail	equ		stack + 13 * 8				; stack position of "tail" variable
s_value	equ		stack + 14 * 8				; stack position of "value" variable
s_med	equ		stack + 15 * 8				; stack position of "median" variable
s_mptr	equ		stack + 16 * 8				; stack position of "median" variable
if scale = 2
sval	= 30								; shift value
else if scale = 3
sval	= 62								; shift value
end if
space	= 17 * 8							; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check filter order]-------------------
		test	order, order				; if (order == 0)
		jz		.error						;     then return false
;---[Check size of data array]-------------
		lea		count, [order * 2 + 1]		; count = order * 2 + 1
		cmp		size, count					; if (size < count)
		jb		.error						;     then return false
		mov		[s_resp], resp				; save "resp" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_size2], order			; save "size2" variable into the stack
		mov		[s_size1], order			; save "size1" variable into the stack
;---[Compute data border]------------------
		lea		size, [data + size * bytes]	; border = data + size
		mov		[s_brdr], size				; save "border" variable into the stack
;---[Compute queue size]-------------------
		bsr		shift, order				; shift = nearest upper power of 2
		mov		mask, 1
		add		shift, 5
		shl		mask, shiftl				; mask = 1 << shift + 5
;---[Allocate buffers for heaps]-----------
		lea		heap, [temp + mask]			; heap = temp + mask
		mov		[s_maxh], heap				; save "max_heap" variable into the stack
		shl		order, KSCALE
		add		heap, order					; heap += order
		mov		[s_minh], heap				; save "min_heap" variable into the stack
;---[Init queue and heaps]-----------------
		sub		mask, 1						; mask--
		mov		head, 0						; head = 0
		mov		tail, 8						; tail = 1
		mov		qword [s_maxs], 0			; save "max_size" variable into the stack
		mov		qword [s_mins], 0			; save "min_size" variable into the stack
		mov		[s_mask], mask				; save "mask" variable into the stack
		mov		[s_head], head				; save "head" variable into the stack
		mov		[s_tail], tail				; save "tail" variable into the stack
		mov		[s_mptr], temp				; save "mptr" variable into the stack
		mov		qword [temp], NONE			; mptr[0] = NONE
		mov		value, [data]				; value = data[0]
if flt
		MAP		value, treg, sval			; map value if necessary
end if
		mov		[s_med], value				; save "median" variable into the stack
;---[Heap init loop #1]--------------------
.loop1:	and		tail, [s_mask]
		add		tail, [s_temp]				; tail = temp + (tail & mask)
		mov		param1, [s_maxh]
		mov		param2, [s_maxs]
		mov		param3, MAXH
		mov		param4, [s_med]
		mov		param5, tail
		call	SiftMaxUp					; call SiftMaxUp (max_heap, max_size, MAXH, median, tail)
		add		qword [s_maxs], KSIZE		; max_size++
		mov		tail, [s_tail]				; get "tail" variable from the stack
		add		tail, 8						; tail++
		mov		[s_tail], tail				; save "tail" variable into the stack
		sub		qword [s_size1], 1			; size1--
		jnz		.loop1						; do while (size1 != 0)
;---[End of heap init loop #1]-------------
		mov		data, [s_data]				; get "data" variable from the stack
		mov		heap, [s_maxh]				; get "max_heap" variable from the stack
;---[Heap init loop #2]--------------------
.loop2:	mov		value, [data]				; value = data[0]
if flt
		MAP		value, treg, sval			; map value if necessary
end if
		mov		[s_value], value			; save "value" variable into the stack
		cmp		value, [s_med]				; if (value maxc median)
		j#maxc	.else1						;     then go to else branch
		and		tail, [s_mask]
		add		tail, [s_temp]				; tail = temp + (tail & mask)
		mov		param1, [s_minh]
		mov		param2, [s_mins]
		mov		param3, MINH
		mov		param4, [s_value]
		mov		param5, tail
		call	SiftMinUp					; call SiftMinUp (min_heap, min_size, MINH, value, tail)
		add		qword [s_mins], KSIZE		; min_size++
		jmp		.cont1						; continue loop execution
.else1:	mov		tail, [heap + DPTR]			; tail = max_heap[0].ptr
		mov		param1, [s_minh]
		mov		param2, [s_mins]
		mov		param3, MINH
		mov		param4, [s_med]
		mov		param5, tail
		call	SiftMinUp					; call SiftMinUp (min_heap, min_size, MINH, median, tail)
		add		qword [s_mins], KSIZE		; min_size++
		mov		heap, [s_maxh]				; get "max_heap" variable from the stack
		mov		tail, [s_tail]				; get "tail" variable from the stack
		mov		value, [s_value]			; get "value" variable from the stack
		and		tail, [s_mask]
		add		tail, [s_temp]				; tail = temp + (tail & mask)
		SET		SiftMaxUp, SiftMaxDown, value, tail, heap, 0, s_value, s_maxh, s_maxs, maxc, MAXH
.cont1:	mov		heap, [s_maxh]				; get "max_heap" variable from the stack
		mov		tail, [s_tail]				; get "tail" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		add		tail, 8						; tail++
		add		data, bytes					; data++
		mov		[s_tail], tail				; save "tail" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		sub		qword [s_size2], 1			; size2--
		jnz		.loop2						; do while (size2 != 0)
;---[End of heap init loop #2]-------------
		mov		head, [s_head]				; get "head" variable from the stack
;---[Filter loop]--------------------------
.floop:	mov		value, [s_value]			; get "value" variable from the stack
		cmp		data, [s_brdr]				; if (data < border)
		jnb		.skip						;     value = data[0]
		mov		value, [data]
if flt
		MAP		value, treg, sval			; map value if necessary
end if
		mov		[s_value], value			; save "value" variable into the stack
.skip:	and		head, [s_mask]
		add		head, [s_temp]				; head = temp + (head & mask)
		and		tail, [s_mask]
		add		tail, [s_temp]				; tail = temp + (tail & mask)
		mov		pos, [head]					; pos = temp [(head & mask)]
		cmp		value, [s_med]				; if (value maxc median)
		j#maxc	.else2						;     then go to else branch
;---[if (value >= median)]-----------------
		mov		mask, MINH
		and		mask, pos					; if (pos & MINH == 0)
		jz		@f							;     then skip following code
;---[if (pos & MINH) != 0]-----------------
		mov		heap, [s_minh]				; get "min_heap" variable from the stack
		mov		mask, IMASK
		and		pos, mask					; pos &= IMASK
		SET		SiftMinUp, SiftMinDown, value, tail, heap, pos, s_value, s_minh, s_mins, minc, MINH
		jmp		.cont2						; continue loop execution
@@:		mov		mask, MAXH
		and		mask, pos					; if (pos & MAXH == 0)
		jz		@f							;     then skip following code
;---[if (pos & MAXH) != 0]-----------------
		mov		heap, [s_maxh]				; get "max_heap" variable from the stack
		mov		value, [s_med]				; get "median" variable from the stack
		mov		tail, [s_mptr]				; get "mptr" variable from the stack
		mov		mask, IMASK
		and		pos, mask					; pos &= IMASK
		SET		SiftMaxUp, SiftMaxDown, value, tail, heap, pos, s_med, s_maxh, s_maxs, maxc, MAXH
		mov		value, [s_value]			; get "value" variable from the stack
		mov		tail, [s_tail]				; get "tail" variable from the stack
		and		tail, [s_mask]
		add		tail, [s_temp]				; tail = temp + (tail & mask)
@@:		mov		heap, [s_minh]				; get "min_heap" variable from the stack
		cmp		value, [heap + DKEY]		; if (value > min_heap[0].key)
		j#minc	@f							;     then replace median by heap top
;---[if (value <= min_heap[0].key)]--------
		mov		qword [tail], NONE			; mptr[0] = NONE
		mov		[s_med], value				; save "median" variable into the stack
		mov		[s_mptr], tail				; save "mptr" variable into the stack
		jmp		.cont2						; continue loop execution
;---[if (value > min_heap[0].key)]---------
@@:		mov		treg, [heap + DKEY]			; median = min_heap[0].key
		mov		head, [heap + DPTR]			; mptr = min_heap[0].ptr
		mov		qword [head], NONE			; mptr[0] = NONE
		mov		[s_med], treg				; save "median" variable into the stack
		mov		[s_mptr], head				; save "mptr" variable into the stack
		SET		SiftMinUp, SiftMinDown, value, tail, heap, 0, s_value, s_minh, s_mins, minc, MINH
		jmp		.cont2						; continue loop execution
;---[if (value < median)]-----------------
.else2:	mov		mask, MAXH
		and		mask, pos					; if (pos & MAXH == 0)
		jz		@f							;     then skip following code
;---[if (pos & MINH) != 0]-----------------
		mov		heap, [s_maxh]				; get "max_heap" variable from the stack
		mov		mask, IMASK
		and		pos, mask					; pos &= IMASK
		SET		SiftMaxUp, SiftMaxDown, value, tail, heap, pos, s_value, s_maxh, s_maxs, maxc, MAXH
		jmp		.cont2						; continue loop execution
@@:		mov		mask, MINH
		and		mask, pos					; if (pos & MINH == 0)
		jz		@f							;     then skip following code
;---[if (pos & MINH) != 0]-----------------
		mov		heap, [s_minh]				; get "min_heap" variable from the stack
		mov		value, [s_med]				; get "median" variable from the stack
		mov		tail, [s_mptr]				; get "mptr" variable from the stack
		mov		mask, IMASK
		and		pos, mask					; pos &= IMASK
		SET		SiftMinUp, SiftMinDown, value, tail, heap, pos, s_med, s_minh, s_mins, minc, MINH
		mov		value, [s_value]			; get "value" variable from the stack
		mov		tail, [s_tail]				; get "tail" variable from the stack
		and		tail, [s_mask]
		add		tail, [s_temp]				; tail = temp + (tail & mask)
@@:		mov		heap, [s_maxh]				; get "max_heap" variable from the stack
		cmp		value, [heap + DKEY]		; if (value < max_heap[0].key)
		j#maxc	@f							;     then replace median by heap top
;---[if (value >= min_heap[0].key)]--------
		mov		qword [tail], NONE			; mptr[0] = NONE
		mov		[s_med], value				; save "median" variable into the stack
		mov		[s_mptr], tail				; save "mptr" variable into the stack
		jmp		.cont2						; continue loop execution
;---[if (value < min_heap[0].key)]---------
@@:		mov		treg, [heap + DKEY]			; median = max_heap[0].key
		mov		head, [heap + DPTR]			; mptr = max_heap[0].ptr
		mov		qword [head], NONE			; mptr[0] = NONE
		mov		[s_med], treg				; save "median" variable into the stack
		mov		[s_mptr], head				; save "mptr" variable into the stack
		SET		SiftMaxUp, SiftMaxDown, value, tail, heap, 0, s_value, s_maxh, s_maxs, maxc, MAXH
.cont2:	mov		head, [s_head]				; get "head" variable from the stack
		mov		tail, [s_tail]				; get "tail" variable from the stack
		mov		resp, [s_resp]				; get "resp" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		value, [s_med]				; value = median
if flt
		MAP		value, treg, sval			; map value if necessary
end if
		mov		[resp], value				; resp[0] = value
		add		head, 8						; head++
		add		tail, 8						; tail++
		add		resp, bytes					; resp++
		add		data, bytes					; data++
		mov		[s_head], head				; save "head" variable into the stack
		mov		[s_tail], tail				; save "tail" variable into the stack
		mov		[s_resp], resp				; save "resp" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.floop						; do while (size != 0)
;---[End of filter loop]-------------------
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Unsigned integer types
Median_uint8:	MEDIAN	SiftMaxUp_uint8, SiftMaxDown_uint8, SiftMinUp_uint8, SiftMinDown_uint8, cl, dl, b, a, 0, 0
Median_uint16:	MEDIAN	SiftMaxUp_uint16, SiftMaxDown_uint16, SiftMinUp_uint16, SiftMinDown_uint16, cx, dx, b, a, 1, 0
Median_uint32:	MEDIAN	SiftMaxUp_uint32, SiftMaxDown_uint32, SiftMinUp_uint32, SiftMinDown_uint32, ecx, edx, b, a, 2, 0
Median_uint64:	MEDIAN	SiftMaxUp_uint64, SiftMaxDown_uint64, SiftMinUp_uint64, SiftMinDown_uint64, rcx, rdx, b, a, 3, 0

; Signed integer types
Median_sint8:	MEDIAN	SiftMaxUp_sint8, SiftMaxDown_sint8, SiftMinUp_sint8, SiftMinDown_sint8, cl, dl, l, g, 0, 0
Median_sint16:	MEDIAN	SiftMaxUp_sint16, SiftMaxDown_sint16, SiftMinUp_sint16, SiftMinDown_sint16, cx, dx, l, g, 1, 0
Median_sint32:	MEDIAN	SiftMaxUp_sint32, SiftMaxDown_sint32, SiftMinUp_sint32, SiftMinDown_sint32, ecx, edx, l, g, 2, 0
Median_sint64:	MEDIAN	SiftMaxUp_sint64, SiftMaxDown_sint64, SiftMinUp_sint64, SiftMinDown_sint64, rcx, rdx, l, g, 3, 0

; Floating-point types
Median_flt32:	MEDIAN	SiftMaxUp_sint32, SiftMaxDown_sint32, SiftMinUp_sint32, SiftMinDown_sint32, ecx, edx, l, g, 2, 1
Median_flt64:	MEDIAN	SiftMaxUp_sint64, SiftMaxDown_sint64, SiftMinUp_sint64, SiftMinDown_sint64, rcx, rdx, l, g, 3, 1

;******************************************************************************;
;       Min filter                                                             ;
;******************************************************************************;
macro	MINMAX	SiftUp, SiftDown, value, treg, cond, scale, flt
{
;---[Parameters]---------------------------
resp	equ		rdi							; pointer to filter response array
data	equ		rsi							; pointer to data array
temp	equ		rdx							; pointer to temporary buffer
size	equ		rcx							; size of data array
order	equ		r8							; filter order
;---[Internal variables]-------------------
status	equ		al							; operation status
shiftl	equ		cl							; low part of shift register
shift	equ		rcx							; position of the most significant bit
count	equ		rax							; count of elements to filter
heap	equ		r9							; pointer to heap array
head	equ		r10							; queue head
tail	equ		r11							; queue tail
mask	equ		resp						; mask to extract queue index
pos		equ		count						; element position into heap
stack	equ		rsp							; stack pointer
s_resp	equ		stack + 0 * 8				; stack position of "resp" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_temp	equ		stack + 2 * 8				; stack position of "temp" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_size1	equ		stack + 4 * 8				; stack position of "size1" variable
s_size2	equ		stack + 5 * 8				; stack position of "size2" variable
s_brdr	equ		stack + 6 * 8				; stack position of "border" variable
s_heap	equ		stack + 7 * 8				; stack position of "heap" variable
s_hsize	equ		stack + 8 * 8				; stack position of "hsize" variable
s_mask	equ		stack + 9 * 8				; stack position of "mask" variable
s_head	equ		stack + 10 * 8				; stack position of "head" variable
s_tail	equ		stack + 11 * 8				; stack position of "tail" variable
s_value	equ		stack + 12 * 8				; stack position of "value" variable
if scale = 2
sval	= 30								; shift value
else if scale = 3
sval	= 62								; shift value
end if
space	= 13 * 8							; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check filter order]-------------------
		test	order, order				; if (order == 0)
		jz		.error						;     then return false
;---[Check size of data array]-------------
		lea		count, [order * 2 + 1]		; count = order * 2 + 1
		cmp		size, count					; if (size < count)
		jb		.error						;     then return false
		mov		[s_resp], resp				; save "resp" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_size2], order			; save "size2" variable into the stack
		add		order, 1					; order++
		mov		[s_size1], order			; save "size1" variable into the stack
;---[Compute data border]------------------
		lea		size, [data + size * bytes]	; border = data + size
		mov		[s_brdr], size				; save "border" variable into the stack
;---[Compute queue size]-------------------
		bsr		shift, order				; shift = nearest upper power of 2
		mov		mask, 1
		add		shift, 5
		shl		mask, shiftl				; mask = 1 << shift + 5
;---[Allocate buffer for heap]-------------
		lea		heap, [temp + mask]			; heap = temp + mask
		mov		[s_heap], heap				; save "heap" variable into the stack
;---[Init queue and heap]------------------
		sub		mask, 1						; mask--
		mov		head, 0						; head = 0
		mov		tail, 0						; tail = 0
		mov		qword [s_hsize], 0			; save "hsize" variable into the stack
		mov		[s_mask], mask				; save "mask" variable into the stack
		mov		[s_head], head				; save "head" variable into the stack
		mov		[s_tail], tail				; save "tail" variable into the stack
		mov		value, [data]				; value = data[0]
if flt
		MAP		value, treg, sval			; map value if necessary
end if
		mov		[s_value], value			; save "value" variable into the stack
;---[Heap init loop #1]--------------------
.loop1:	and		tail, [s_mask]
		add		tail, [s_temp]				; tail = temp + (tail & mask)
		mov		param1, [s_heap]
		mov		param2, [s_hsize]
		mov		param3, NONE
		mov		param4, [s_value]
		mov		param5, tail
		call	SiftUp						; call SiftUp (heap, hsize, NONE, value, tail)
		add		qword [s_hsize], KSIZE		; hsize++
		mov		tail, [s_tail]				; get "tail" variable from the stack
		add		tail, 8						; tail++
		mov		[s_tail], tail				; save "tail" variable into the stack
		sub		qword [s_size1], 1			; size1--
		jnz		.loop1						; do while (size1 != 0)
;---[End of heap init loop #1]-------------
		mov		data, [s_data]				; get "data" variable from the stack
;---[Heap init loop #2]--------------------
.loop2:	mov		value, [data]				; value = data[0]
if flt
		MAP		value, treg, sval			; map value if necessary
end if
		mov		[s_value], value			; save "value" variable into the stack
		and		tail, [s_mask]
		add		tail, [s_temp]				; tail = temp + (tail & mask)
		mov		param1, [s_heap]
		mov		param2, [s_hsize]
		mov		param3, NONE
		mov		param4, [s_value]
		mov		param5, tail
		call	SiftUp						; call SiftUp (heap, hsize, NONE, value, tail)
		add		qword [s_hsize], KSIZE		; hsize++
		mov		tail, [s_tail]				; get "tail" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		add		tail, 8						; tail++
		add		data, bytes					; data++
		mov		[s_tail], tail				; save "tail" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		sub		qword [s_size2], 1			; size2--
		jnz		.loop2						; do while (size2 != 0)
;---[End of heap init loop #2]-------------
		mov		heap, [s_heap]				; get "heap" variable from the stack
		mov		head, [s_head]				; get "head" variable from the stack
;---[Filter loop]--------------------------
.floop:	mov		value, [s_value]			; get "value" variable from the stack
		cmp		data, [s_brdr]				; if (data < border)
		jnb		.skip						;     value = data[0]
		mov		value, [data]
if flt
		MAP		value, treg, sval			; map value if necessary
end if
		mov		[s_value], value			; save "value" variable into the stack
.skip:	and		head, [s_mask]
		add		head, [s_temp]				; head = temp + (head & mask)
		and		tail, [s_mask]
		add		tail, [s_temp]				; tail = temp + (tail & mask)
		mov		pos, [head]					; pos = temp [(head & mask)]
		SET		SiftUp, SiftDown, value, tail, heap, pos, s_value, s_heap, s_hsize, cond, NONE
		mov		heap, [s_heap]				; get "heap" variable from the stack
		mov		head, [s_head]				; get "head" variable from the stack
		mov		tail, [s_tail]				; get "tail" variable from the stack
		mov		resp, [s_resp]				; get "resp" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		value, [heap + DKEY]		; value = heap[0].key
if flt
		MAP		value, treg, sval			; map value if necessary
end if
		mov		[resp], value				; resp[0] = value
		add		head, 8						; head++
		add		tail, 8						; tail++
		add		resp, bytes					; resp++
		add		data, bytes					; data++
		mov		[s_head], head				; save "head" variable into the stack
		mov		[s_tail], tail				; save "tail" variable into the stack
		mov		[s_resp], resp				; save "resp" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.floop						; do while (size != 0)
;---[End of filter loop]-------------------
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Unsigned integer types
Min_uint8:	MINMAX	SiftMinUp_uint8, SiftMinDown_uint8, cl, dl, a, 0, 0
Min_uint16:	MINMAX	SiftMinUp_uint16, SiftMinDown_uint16, cx, dx, a, 1, 0
Min_uint32:	MINMAX	SiftMinUp_uint32, SiftMinDown_uint32, ecx, edx, a, 2, 0
Min_uint64:	MINMAX	SiftMinUp_uint64, SiftMinDown_uint64, rcx, rdx, a, 3, 0

; Signed integer types
Min_sint8:	MINMAX	SiftMinUp_sint8, SiftMinDown_sint8, cl, dl, g, 0, 0
Min_sint16:	MINMAX	SiftMinUp_sint16, SiftMinDown_sint16, cx, dx, g, 1, 0
Min_sint32:	MINMAX	SiftMinUp_sint32, SiftMinDown_sint32, ecx, edx, g, 2, 0
Min_sint64:	MINMAX	SiftMinUp_sint64, SiftMinDown_sint64, rcx, rdx, g, 3, 0

; Floating-point types
Min_flt32:	MINMAX	SiftMinUp_sint32, SiftMinDown_sint32, ecx, edx, g, 2, 1
Min_flt64:	MINMAX	SiftMinUp_sint64, SiftMinDown_sint64, rcx, rdx, g, 3, 1

;******************************************************************************;
;       Max filter                                                             ;
;******************************************************************************;

; Unsigned integer types
Max_uint8:	MINMAX	SiftMaxUp_uint8, SiftMaxDown_uint8, cl, dl, b, 0, 0
Max_uint16:	MINMAX	SiftMaxUp_uint16, SiftMaxDown_uint16, cx, dx, b, 1, 0
Max_uint32:	MINMAX	SiftMaxUp_uint32, SiftMaxDown_uint32, ecx, edx, b, 2, 0
Max_uint64:	MINMAX	SiftMaxUp_uint64, SiftMaxDown_uint64, rcx, rdx, b, 3, 0

; Signed integer types
Max_sint8:	MINMAX	SiftMaxUp_sint8, SiftMaxDown_sint8, cl, dl, l, 0, 0
Max_sint16:	MINMAX	SiftMaxUp_sint16, SiftMaxDown_sint16, cx, dx, l, 1, 0
Max_sint32:	MINMAX	SiftMaxUp_sint32, SiftMaxDown_sint32, ecx, edx, l, 2, 0
Max_sint64:	MINMAX	SiftMaxUp_sint64, SiftMaxDown_sint64, rcx, rdx, l, 3, 0

; Floating-point types
Max_flt32:	MINMAX	SiftMaxUp_sint32, SiftMaxDown_sint32, ecx, edx, l, 2, 1
Max_flt64:	MINMAX	SiftMaxUp_sint64, SiftMaxDown_sint64, rcx, rdx, l, 3, 1

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
