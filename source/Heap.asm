;                                                                       Heap.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                            BINARY HEAP DATA TYPE                            #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2013, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'
include	'Syscall.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################
extrn	'Array_Copy'		as	Copy
extrn	'FindSet'			as	FindSet

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
public	Constructor			as	'MinHeap_InitMinHeap'
public	Constructor			as	'MaxHeap_InitMaxHeap'
public	Constructor			as	'_ZN7MinHeapC1EmPFx5adt_tS0_E'
public	Constructor			as	'_ZN7MaxHeapC1EmPFx5adt_tS0_E'

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
public	CopyConstructor		as	'MinHeap_CopyMinHeap'
public	CopyConstructor		as	'MaxHeap_CopyMaxHeap'
public	CopyConstructor		as	'_ZN7MinHeapC1ERKS_'
public	CopyConstructor		as	'_ZN7MaxHeapC1ERKS_'

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
public	Destructor			as	'MinHeap_FreeMinHeap'
public	Destructor			as	'MaxHeap_FreeMaxHeap'
public	Destructor			as	'_ZN7MinHeapD1Ev'
public	Destructor			as	'_ZN7MaxHeapD1Ev'

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
public	PushDataMin			as	'MinHeap_Push'
public	PushDataMax			as	'MaxHeap_Push'
public	PushDataMin			as	'_ZN7MinHeap4PushEPK6data_t'
public	PushDataMax			as	'_ZN7MaxHeap4PushEPK6data_t'

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;
public	PopDataMin			as	'MinHeap_Pop'
public	PopDataMax			as	'MaxHeap_Pop'
public	PopDataMin			as	'_ZN7MinHeap3PopEP6data_t'
public	PopDataMax			as	'_ZN7MaxHeap3PopEP6data_t'

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
public	SetMin				as	'MinHeap_Set'
public	SetMax				as	'MaxHeap_Set'
public	SetMin				as	'_ZN7MinHeap3SetEPK6data_tm'
public	SetMax				as	'_ZN7MaxHeap3SetEPK6data_tm'

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;
public	Get					as	'MinHeap_Get'
public	Get					as	'MaxHeap_Get'
public	Get					as	'_ZNK7MinHeap3GetEP6data_tm'
public	Get					as	'_ZNK7MaxHeap3GetEP6data_tm'

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;
public	ReplaceMin			as	'MinHeap_Replace'
public	ReplaceMax			as	'MaxHeap_Replace'
public	ReplaceMin			as	'_ZN7MinHeap7ReplaceEP6data_tPKS0_m'
public	ReplaceMax			as	'_ZN7MaxHeap7ReplaceEP6data_tPKS0_m'

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

; Single key searching
public	FindKey				as	'MinHeap_FindKey'
public	FindKey				as	'MaxHeap_FindKey'
public	FindKey				as	'_ZNK7MinHeap7FindKeyEP6data_t5adt_tmm'
public	FindKey				as	'_ZNK7MaxHeap7FindKeyEP6data_t5adt_tmm'

; Keys set searching
public	FindKeys			as	'MinHeap_FindKeys'
public	FindKeys			as	'MaxHeap_FindKeys'
public	FindKeys			as	'_ZNK7MinHeap8FindKeysEP6data_tPK5adt_tmmm'
public	FindKeys			as	'_ZNK7MaxHeap8FindKeysEP6data_tPK5adt_tmmm'

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

; Single key counting
public	CountKey			as	'MinHeap_CountKey'
public	CountKey			as	'MaxHeap_CountKey'
public	CountKey			as	'_ZNK7MinHeap8CountKeyE5adt_tmm'
public	CountKey			as	'_ZNK7MaxHeap8CountKeyE5adt_tmm'

; Keys set counting
public	CountKeys			as	'MinHeap_CountKeys'
public	CountKeys			as	'MaxHeap_CountKeys'
public	CountKeys			as	'_ZNK7MinHeap9CountKeysEPK5adt_tmmm'
public	CountKeys			as	'_ZNK7MaxHeap9CountKeysEPK5adt_tmmm'

;******************************************************************************;
;       Merging of heaps                                                       ;
;******************************************************************************;
public	MergeMin			as	'MinHeap_Merge'
public	MergeMax			as	'MaxHeap_Merge'
public	MergeMin			as	'_ZN7MinHeap5MergeEPKS_'
public	MergeMax			as	'_ZN7MaxHeap5MergeEPKS_'

;******************************************************************************;
;       Heap properties                                                        ;
;******************************************************************************;

; Heap key compare function
public	GetCompareFunction	as	'MinHeap_CompareFunction'
public	GetCompareFunction	as	'MaxHeap_CompareFunction'
public	GetCompareFunction	as	'_ZNK7MinHeap15CompareFunctionEv'
public	GetCompareFunction	as	'_ZNK7MaxHeap15CompareFunctionEv'

; Heap capacity
public	GetCapacity			as	'MinHeap_Capacity'
public	GetCapacity			as	'MaxHeap_Capacity'
public	GetCapacity			as	'_ZNK7MinHeap8CapacityEv'
public	GetCapacity			as	'_ZNK7MaxHeap8CapacityEv'

; Heap size
public	GetSize				as	'MinHeap_Size'
public	GetSize				as	'MaxHeap_Size'
public	GetSize				as	'_ZNK7MinHeap4SizeEv'
public	GetSize				as	'_ZNK7MaxHeap4SizeEv'

; Check if heap is empty
public	IsEmpty				as	'MinHeap_IsEmpty'
public	IsEmpty				as	'MaxHeap_IsEmpty'
public	IsEmpty				as	'_ZNK7MinHeap7IsEmptyEv'
public	IsEmpty				as	'_ZNK7MaxHeap7IsEmptyEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
KSCALE		= 4								; Key scale factor
KSIZE		= 1 shl KSCALE					; Size of key (bytes)
MINCAP		= 1 shl	PSCALE					; Min capacity of heap object

;==============================================================================;
;       Offsets inside heap object                                             ;
;==============================================================================;
ARRAY		= 0 * 8							; Offset of array pointer
CAPACITY	= 1 * 8							; Offset of object capacity field
SIZE		= 2 * 8							; Offset of object size field
FUNC		= 3 * 8							; Offset of pointer to key ordering function

;******************************************************************************;
;       Sift the heap up                                                       ;
;******************************************************************************;
macro	SIFT_UP		c
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
size	equ		rsi							; heap size
func	equ		rdx							; compare function
data	equ		xmm0						; data to sift up
;---[Internal variables]-------------------
result	equ		rax							; result register
root	equ		rcx							; current root node
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_root	equ		stack + 2 * 8				; stack position of "root" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_data	equ		stack + 4 * 8				; stack position of "data" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		movdqa	[s_data], data				; save "data" variable into the stack
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Sifting loop]-------------------------
.loop:	lea		root, [size - KSIZE]
		shr		root, 1
		and		root, -KSIZE				; root = (size - 1) / 2
		mov		[s_root], root				; save "root" variable into the stack
		mov		param2, [array + root]
		mov		param1, [s_data]
		call	qword [s_func]				; result = Compare (data.key, array[root].key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		root, [s_root]				; get "root" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		cmp		result, 0					; if (result cond 0)
		j#c		.break						;     then break the loop
		movdqa	data, [array + root]
		movdqa	[array + size], data		; array[size] = array[root]
		mov		size, root					; size = root
		mov		[s_size], root				; save "size" variable into the stack
		test	root, root
		ja		.loop						; do while (size != 0)
;---[End of sifting loop]------------------
.break:	movdqa	data, [s_data]				; get "data" variable from the stack
.exit:	movdqa	[array + size], data			; array[size] = data
		add		stack, space				; restoring back the stack pointer
		mov		result, 1					; return true
		ret
}
SiftMinUp:	SIFT_UP	ge
SiftMaxUp:	SIFT_UP	le

;******************************************************************************;
;       Sift the heap down                                                     ;
;******************************************************************************;
macro	SIFT_DOWN	c
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
size	equ		rsi							; heap size
root	equ		rdx							; starting position
func	equ		rcx							; compare function
data	equ		xmm0						; data to sift down
;---[Internal variables]-------------------
result	equ		rax							; result register
leaf	equ		r12							; current leaf node
value	equ		r13							; min or max max value
vptr	equ		r14							; position of min or max value
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_root	equ		stack + 2 * 8				; stack position of "root" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_data	equ		stack + 4 * 8				; stack position of "data" variable
s_leaf	equ		stack + 6 * 8				; stack position of "leaf" variable
s_value	equ		stack + 7 * 8				; stack position of "value" variable
s_vptr	equ		stack + 8 * 8				; stack position of "vptr" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_leaf], leaf				; save old value of "leaf" variable
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_vptr], vptr				; save old value of "vptr" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_root], root				; save "root" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		movdqa	[s_data], data				; save "data" variable into the stack
		lea		leaf, [root * 2 + KSIZE]	; leaf = root * 2 + 1
		sub		size, leaf					; if (size <= leaf)
		jbe		.exit						;     then go to exit
;---[Sifting loop]-------------------------
.loop:	mov		value, [array + leaf]		; value = array[leaf].key
		mov		vptr, leaf					; vptr = leaf
		cmp		size, KSIZE					; if (size == 1)
		je		@f							;     then skip following code
		mov		param2, [array + leaf + KSIZE]
		mov		param1, [array + leaf]
		add		leaf, KSIZE					; leaf++
		call	qword [s_func]				; result = Compare (array[leaf].key, array[leaf + 1].key)
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		result, 0					; if (result !cond 0)
		cmovn#c	value, [array + leaf]		;     value = array[leaf].key
		cmovn#c	vptr, leaf					;     vptr = leaf
@@:		mov		param2, value
		mov		param1, [s_data]
		call	qword [s_func]				; result = Compare (data.key, value.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		root, [s_root]				; get "root" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		cmp		result, 0					; if (result cond 0)
		j#c		.break						;     then break the loop
		movdqa	data, [array + vptr]
		movdqa	[array + root], data		; array[root] = array[vptr]
		mov		root, vptr					; root = vptr
		mov		[s_root], vptr				; save "root" variable into the stack
		lea		leaf, [vptr * 2 + KSIZE]	; leaf = root * 2 + 1
		sub		size, leaf
		ja		.loop						; do while (size > leaf)
;---[End of sifting loop]------------------
.break:	movdqa	data, [s_data]				; get "data" variable from the stack
.exit:	movdqa	[array + root], data		; array[root] = data
		mov		leaf, [s_leaf]				; restore old value of "leaf" variable
		mov		value, [s_value]			; restore old value of "value" variable
		mov		vptr, [s_vptr]				; restore old value of "vptr" variable
		add		stack, space				; restoring back the stack pointer
		mov		result, 1					; return true
		ret
}
SiftMinDown:	SIFT_DOWN	le
SiftMaxDown:	SIFT_DOWN	ge

;******************************************************************************;
;       Extending heap capacity                                                ;
;******************************************************************************;
Extend:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
newcap	equ		rsi							; new object capacity
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		rax							; pointer to array of nodes
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_ncap	equ		stack + 1 * 8				; stack position of "newcap" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_ncap], newcap			; save "newcap" variable into the stack
;---[Reallocate memory for the object]-----
		mov		sc_prm4, 1
		mov		sc_prm3, newcap
		mov		sc_prm2, [this + CAPACITY]
		mov		sc_prm1, [this + ARRAY]
		mov		sc_num, SYSCALL_MREMAP
		syscall								; array = mremap (array, cap, newcap, MREMAP_MAYMOVE)
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Update object properties]-------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		newcap, [s_ncap]			; get "newcap" variable from the stack
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], newcap	; this.capacity = newcap
		add		stack, space				; restoring back the stack pointer
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
		xor		status, status				; return false
		ret

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
Constructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
cap		equ		rsi							; object capacity
func	equ		rdx							; compare function
;---[Internal variables]-------------------
array	equ		rax							; pointer to array of nodes
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_cap	equ		stack + 1 * 8				; stack position of "cap" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		shl		cap, KSCALE
	Capacity	cap, array, MINCAP			; compute capacity of the object
		mov		[s_cap], cap				; save "cap" variable into the stack
;---[Allocate memory for the object]-------
		mov		sc_prm6, 0
		mov		sc_prm5, -1
		mov		sc_prm4, 0x22
		mov		sc_prm3, 0x3
		mov		sc_prm1, 0
		mov		sc_num, SYSCALL_MMAP
		syscall								; array = mmap (NULL, cap, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], cap		; this.capacity = cap
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		[this + FUNC], func			; this.func = func
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + FUNC], func	; this.func = func
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
CopyConstructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target heap object
source	equ		rsi							; pointer to source heap object
;---[Internal variables]-------------------
array	equ		rax							; pointer to array of nodes
temp	equ		rcx							; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.exit						;     then go to exit
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
;---[Allocate memory for the object]-------
		mov		sc_prm6, 0
		mov		sc_prm5, -1
		mov		sc_prm4, 0x22
		mov		sc_prm3, 0x3
		mov		sc_prm2, [source + CAPACITY]
		mov		sc_prm1, 0
		mov		sc_num, SYSCALL_MMAP
		syscall								; array = mmap (NULL, source.capacity, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[this + ARRAY], array		; this.array = array
		mov		temp, [source + CAPACITY]
		mov		[this + CAPACITY], temp		; this.capacity = source.capacity
		mov		temp, [source + SIZE]
		mov		[this + SIZE], temp			; this.size = source.size
		mov		temp, [source + FUNC]
		mov		[this + FUNC], temp			; this.func = source.func
;---[Copy content of nodes]----------------
		mov		param3, [source + SIZE]
		mov		param2, [source + ARRAY]
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		Copy						; return Array::Copy (this.array, source.array, source.size)
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		temp, [source + FUNC]
		mov		[this + FUNC], temp			; this.func = source.func
.exit:	add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
Destructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		sc_prm2, [this + CAPACITY]
		mov		sc_prm1, [this + ARRAY]
		mov		sc_num, SYSCALL_MUNMAP
		syscall								; munmap (array, capacity)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + FUNC], 0		; this.func = NULL
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
macro	PUSH_DATA	SiftUp
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
size	equ		r9							; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		mov		size, [this + SIZE]			; get object size
		cmp		size, [this + CAPACITY]		; if (size == cap)
		je		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	add		size, KSIZE					; size++
		mov		[this + SIZE], size			; update object size
		movdqu	temp, [data]
		mov		param3, [this + FUNC]
		lea		param2, [size - KSIZE]
		mov		param1, [this + ARRAY]
		jmp		SiftUp						; return SiftUp (array, size, func, temp)
;---[Extend object capacity]---------------
.ext:	sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		param2, [this + CAPACITY]
		shl		param2, 1
	Capacity	param2, size, MINCAP		; compute new capacity of target object
		cmp		param2, [this + CAPACITY]	; if (newcapacity <= capacity)
		jbe		.error						;     then go to error branch
		call	Extend						; status = this.Extend (cap * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		size, [this + SIZE]			; get object size
		add		stack, space				; restoring back the stack pointer
		test	status, status
		jnz		.back						; if (status), then go back
		ret									;              else return false
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
		xor		status, status				; return false
		ret
}
PushDataMin:	PUSH_DATA	SiftMinUp
PushDataMax:	PUSH_DATA	SiftMaxUp

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;
macro	POP_DATA	SiftDown
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
size	equ		r9							; object size
temp	equ		xmm0						; temporary register
;------------------------------------------
		mov		size, [this + SIZE]			; get object size
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		sub		size, KSIZE					; size--
		mov		[this + SIZE], size			; update object size
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		movdqa	temp, [array]
		movdqu	[data], temp				; data[0] = array[0]
		movdqa	temp, [array + size]		; temp = array[size]
		mov		param4, [this + FUNC]
		xor		param3, param3
		mov		param2, size
		mov		param1, array
		jmp		SiftDown					; return SiftDown (array, size, 0, func, temp)
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
PopDataMin:	POP_DATA	SiftMinDown
PopDataMax:	POP_DATA	SiftMaxDown

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
macro	SET		SiftUp, SiftDown, c
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to set
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
func	equ		r8							; compare function
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		cmp		[this + SIZE], pos			; if (size <= pos)
		setnbe	status						;     return false
		jbe		.exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		func, [this + FUNC]			; get pointer to compare function
		mov		[s_pos], pos				; save "pos" variable into the stack
		add		pos, [this + ARRAY]			; pos += array
		mov		[s_ptr], pos				; save "ptr" variable into the stack
;---[Compare keys]-------------------------
		mov		param1, [data]
		mov		param2, [pos]
		call	func						; result = Compare (data.key, array[pos].key)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		movdqu	temp, [data]				; temp = data[0]
		cmp		result, 0					; if (result == 0)
		je		.skip						;     then go to skip branch
		j#c		.else						;     else sift the element
;---[if result cond 0]---------------------
		mov		param3, [this + FUNC]
		mov		param2, [s_pos]
		mov		param1, [this + ARRAY]
		add		stack, space				; restoring back the stack pointer
		jmp		SiftUp						; return SiftUp (array, pos, func, temp)
;---[else]---------------------------------
.else:	mov		param4, [this + FUNC]
		mov		param3, [s_pos]
		mov		param2, [this + SIZE]
		mov		param1, [this + ARRAY]
		add		stack, space				; restoring back the stack pointer
		jmp		SiftDown					; return SiftDown (array, size, pos, func, temp)
;---[Skip branch]--------------------------
.skip:	mov		pos, [s_ptr]				; get "ptr" variable from the stack
		movdqa	[pos], temp					; array[pos].data = data[0]
		mov		status, 1					; return true
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
SetMin:	SET		SiftMinUp, SiftMinDown, g
SetMax:	SET		SiftMaxUp, SiftMaxDown, l

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;
Get:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to get
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		rax							; pointer to array of nodes
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		cmp		[this + SIZE], pos			; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		movdqa	temp, [array + pos]
		movdqu	[data], temp				; data[0] = array[pos]
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;
macro	REPLACE		SiftUp, SiftDown, c
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
odata	equ		rsi							; pointer to old data structure
ndata	equ		rdx							; pointer to new data structure
pos		equ		rcx							; position of element to replace
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
func	equ		r8							; compare function
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_ndata	equ		stack + 1 * 8				; stack position of "ndata" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		cmp		[this + SIZE], pos			; if (size <= pos)
		setnbe	status						;     return false
		jbe		.exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_ndata], ndata			; save "ndata" variable into the stack
		mov		func, [this + FUNC]			; get pointer to compare function
		mov		[s_pos], pos				; save "pos" variable into the stack
		add		pos, [this + ARRAY]			; pos += array
		mov		[s_ptr], pos				; save "ptr" variable into the stack
		movdqa	temp, [pos]
		movdqu	[odata], temp				; odata[0] = array[pos].data
;---[Compare keys]-------------------------
		mov		param1, [ndata]
		mov		param2, [pos]
		call	func						; result = Compare (ndata[0].key, array[pos].key)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		movdqu	temp, [ndata]				; temp = ndata[0]
		cmp		result, 0					; if (result == 0)
		je		.skip						;     then go to skip branch
		j#c		.else						;     else sift the element
;---[if result cond 0]---------------------
		mov		param3, [this + FUNC]
		mov		param2, [s_pos]
		mov		param1, [this + ARRAY]
		add		stack, space				; restoring back the stack pointer
		jmp		SiftUp						; return SiftUp (array, pos, func, temp)
;---[else]---------------------------------
.else:	mov		param4, [this + FUNC]
		mov		param3, [s_pos]
		mov		param2, [this + SIZE]
		mov		param1, [this + ARRAY]
		add		stack, space				; restoring back the stack pointer
		jmp		SiftDown					; return SiftDown (array, size, pos, func, temp)
;---[Skip branch]--------------------------
.skip:	mov		pos, [s_ptr]				; get "ptr" variable from the stack
		movdqa	[pos], temp					; array[pos].data = ndata[0]
		mov		status, 1					; return true
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
ReplaceMin:		REPLACE		SiftMinUp, SiftMinDown, g
ReplaceMax:		REPLACE		SiftMaxUp, SiftMaxDown, l

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

;==============================================================================;
;       Single key searching                                                   ;
;==============================================================================;
FindKey:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
pos		equ		rcx							; beginning position
count	equ		r8							; count of nodes to check
;---[Internal variables]-------------------
result	equ		rax							; result register
base	equ		r10							; base for pointer arithmetic
iter	equ		r11							; iterator value
size	equ		result						; object size
func	equ		result						; compare function
stack	equ		rsp							; stack pointer
s_base	equ		stack + 0 * 8				; stack position of "base" variable
s_iter	equ		stack + 1 * 8				; stack position of "iter" variable
s_data	equ		stack + 2 * 8				; stack position of "data" variable
s_key	equ		stack + 3 * 8				; stack position of "key" variable
s_count	equ		stack + 4 * 8				; stack position of "count" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [this + SIZE]			; get object size
		sub		size, pos					; if (size <= pos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		mov		iter, [this + ARRAY]		; get pointer to array of nodes
		mov		func, [this + FUNC]			; get pointer to key ordering function
		mov		[s_base], iter				; save "base" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [iter]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, iter[0].key)
		mov		iter, [s_iter]				; get "iter" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		add		iter, KSIZE					; iter++
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Not found branch]---------------------
.ntfnd:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [iter]
		movdqu	[data], temp				; data[0] = array[iter]
		mov		result, iter
		sub		result, [s_base]			; result = iter - (array + 1)
		add		stack, space				; restoring back the stack pointer
		shr		result, KSCALE				; return result
		ret

;==============================================================================;
;       Keys set searching                                                     ;
;==============================================================================;
FindKeys:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
data	equ		rsi							; pointer to data structure
keys	equ		rdx							; pointer to array of keys
ksize	equ		rcx							; size of array of keys
pos		equ		r8							; beginning position
count	equ		r9							; count of nodes to check
;---[Internal variables]-------------------
result	equ		rax							; result register
base	equ		r10							; base for pointer arithmetic
iter	equ		r11							; iterator value
size	equ		result						; object size
func	equ		result						; compare function
stack	equ		rsp							; stack pointer
s_base	equ		stack + 0 * 8				; stack position of "base" variable
s_iter	equ		stack + 1 * 8				; stack position of "iter" variable
s_data	equ		stack + 2 * 8				; stack position of "data" variable
s_keys	equ		stack + 3 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 4 * 8				; stack position of "ksize" variable
s_count	equ		stack + 5 * 8				; stack position of "count" variable
s_func	equ		stack + 6 * 8				; stack position of "func" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [this + SIZE]			; get object size
		sub		size, pos					; if (size <= pos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Check ksize]--------------------------
		test	ksize, ksize				; if (ksize == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		mov		iter, [this + ARRAY]		; get pointer to array of nodes
		mov		func, [this + FUNC]			; get pointer to key ordering function
		mov		[s_base], iter				; save "base" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param4, [s_func]
		mov		param3, [iter]
		mov		param2, [s_ksize]
		mov		param1, [s_keys]
		call	FindSet						; result = FindSet (keys, ksize, iter[0].key, func)
		mov		iter, [s_iter]				; get "iter" variable from the stack
		test	result, result				; if (result)
		jnz		.found						;     then go to found branch
		add		iter, KSIZE					; iter++
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Not found branch]---------------------
.ntfnd:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [iter]
		movdqu	[data], temp				; data[0] = array[iter]
		mov		result, iter
		sub		result, [s_base]			; result = iter - (array + 1)
		add		stack, space				; restoring back the stack pointer
		shr		result, KSCALE				; return result
		ret

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

;==============================================================================;
;       Single key counting                                                    ;
;==============================================================================;
CountKey:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
key		equ		rsi							; key to find
pos		equ		rdx							; beginning position
count	equ		rcx							; count of nodes to check
;---[Internal variables]-------------------
result	equ		rax							; result register
iter	equ		r9							; iterator value
size	equ		result						; object size
func	equ		r10							; compare function
stack	equ		rsp							; stack pointer
s_iter	equ		stack + 0 * 8				; stack position of "iter" variable
s_key	equ		stack + 1 * 8				; stack position of "key" variable
s_count	equ		stack + 2 * 8				; stack position of "count" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_total	equ		stack + 4 * 8				; stack position of "total" variable
space	= 5 * 8
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [this + SIZE]			; get object size
		sub		size, pos					; if (size <= pos)
		jbe		.exit						;     then go to exit
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		iter, [this + ARRAY]		; get pointer to array of nodes
		mov		func, [this + FUNC]			; get pointer to key ordering function
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [iter]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, iter[0].key)
		mov		iter, [s_iter]				; get "iter" variable from the stack
		not		result
		and		result, 0x1					; if (result)
		add		[s_total], result			;     then total++
		add		iter, KSIZE					; iter++
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total

;==============================================================================;
;       Keys set counting                                                      ;
;==============================================================================;
CountKeys:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
keys	equ		rsi							; pointer to array of keys
ksize	equ		rdx							; size of array of keys
pos		equ		rcx							; beginning position
count	equ		r8							; count of nodes to check
;---[Internal variables]-------------------
result	equ		rax							; result register
iter	equ		r9							; iterator value
size	equ		result						; object size
func	equ		r10							; compare function
stack	equ		rsp							; stack pointer
s_iter	equ		stack + 0 * 8				; stack position of "iter" variable
s_keys	equ		stack + 1 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 2 * 8				; stack position of "ksize" variable
s_count	equ		stack + 3 * 8				; stack position of "count" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_total	equ		stack + 5 * 8				; stack position of "total" variable
space	= 7 * 8
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [this + SIZE]			; get object size
		sub		size, pos					; if (size <= pos)
		jbe		.exit						;     then go to exit
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Check ksize]--------------------------
		test	ksize, ksize				; if (ksize == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		iter, [this + ARRAY]		; get pointer to array of nodes
		mov		func, [this + FUNC]			; get pointer to key ordering function
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param4, [s_func]
		mov		param3, [iter]
		mov		param2, [s_ksize]
		mov		param1, [s_keys]
		call	FindSet						; result = FindSet (keys, ksize, iter[0].key, func)
		mov		iter, [s_iter]				; get "iter" variable from the stack
		add		[s_total], result			; if (result) then total++
		add		iter, KSIZE					; iter++
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total

;******************************************************************************;
;       Merging of heaps                                                       ;
;******************************************************************************;
macro	MAKE_HEAP	c
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
size	equ		rsi							; heap size
func	equ		rdx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
root	equ		r8							; current root node
leaf	equ		r12							; current leaf node
value	equ		r13							; min or max max value
vptr	equ		r14							; position of min or max value
data	equ		xmm0						; data to sift down
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_root	equ		stack + 3 * 8				; stack position of "root" variable
s_data	equ		stack + 4 * 8				; stack position of "data" variable
s_pos	equ		stack + 6 * 8				; stack position of "pos" variable
s_leaf	equ		stack + 7 * 8				; stack position of "leaf" variable
s_value	equ		stack + 8 * 8				; stack position of "value" variable
s_vptr	equ		stack + 9 * 8				; stack position of "vptr" variable
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_leaf], leaf				; save old value of "leaf" variable
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_vptr], vptr				; save old value of "vptr" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		root, size					; root = size
		sub		root, 2 * KSIZE				; if (size < 2)
		jb		.exit						;     then go to exit
		shr		root, 1
		and		root, -KSIZE				; root = (size - 2) / 2
;---[Heapify loop]-------------------------
.hloop:	movdqa	data, [array + root]		; data = array[root]
		mov		[s_root], root				; save "root" variable into the stack
		movdqa	[s_data], data				; save "data" variable into the stack
		mov		[s_pos], root				; save "pos" variable into the stack
		lea		leaf, [root * 2 + KSIZE]	; leaf = root * 2 + 1
		sub		size, leaf					; size -= leaf
;---[Sifting loop]-------------------------
.loop:	mov		value, [array + leaf]		; value = array[leaf].key
		mov		vptr, leaf					; vptr = leaf
		cmp		size, KSIZE					; if (size == 1)
		je		@f							;     then skip following code
		mov		param2, [array + leaf + KSIZE]
		mov		param1, [array + leaf]
		add		leaf, KSIZE					; leaf++
		call	qword [s_func]				; result = Compare (array[leaf].key, array[leaf + 1].key)
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		result, 0					; if (result !cond 0)
		cmovn#c	value, [array + leaf]		;     value = array[leaf].key
		cmovn#c	vptr, leaf					;     vptr = leaf
@@:		mov		param2, value
		mov		param1, [s_data]
		call	qword [s_func]				; result = Compare (data.key, value.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		root, [s_pos]				; get "root" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		cmp		result, 0					; if (result cond 0)
		j#c		.break						;     then break the loop
		movdqa	data, [array + vptr]
		movdqa	[array + root], data		; array[root] = array[vptr]
		mov		root, vptr					; root = vptr
		mov		[s_pos], vptr				; save "pos" variable into the stack
		lea		leaf, [vptr * 2 + KSIZE]	; leaf = root * 2 + 1
		sub		size, leaf
		ja		.loop						; do while (size > leaf)
;---[End of sifting loop]------------------
.break:	movdqa	data, [s_data]				; get "data" variable from the stack
		movdqa	[array + root], data		; array[root] = data
		mov		root, [s_root]				; get "root" variable from the stack
		sub		root, KSIZE					; root--
		jns		.hloop						; do while (root >= 0)
;---[End of heapify loop]------------------
.exit:	mov		leaf, [s_leaf]				; restore old value of "leaf" variable
		mov		value, [s_value]			; restore old value of "value" variable
		mov		vptr, [s_vptr]				; restore old value of "vptr" variable
		add		stack, space				; restoring back the stack pointer
		ret
}
MakeMinHeap:	MAKE_HEAP	le
MakeMaxHeap:	MAKE_HEAP	ge
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MERGE	heapfunc
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target heap object
source	equ		rsi							; pointer to source heap object
;---[Internal variables]-------------------
result	equ		rax							; result register
status	equ		al							; operation status
ptr		equ		rcx							; temporary pointer
size	equ		result						; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_total	equ		stack + 3 * 8				; stack position of "total" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		size, [source + SIZE]		; get source object size
		mov		[s_total], size				; total = source.size
		test	size, size					; if (source.size == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		add		size, [this + SIZE]			; size = this.size + source.size
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
	Capacity	size, ptr, MINCAP			; compute new capacity of target object
		cmp		size, [this + CAPACITY]		; if (size > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Copy nodes content]-------------------
.back:	mov		ptr, [this + ARRAY]
		add		ptr, [this + SIZE]			; ptr = array + size
		mov		size, [s_size]
		mov		[this + SIZE], size			; update object size
		mov		param3, [source + SIZE]
		mov		param2, [source + ARRAY]
		mov		param1, ptr
		call	Copy						; call Copy (this.array + size, source.array, source.size)
;---[Convert array to a heap]--------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		param3, [this + FUNC]
		mov		param2, [this + SIZE]
		mov		param1, [this + ARRAY]
		call	heapfunc					; call heapfunc (array, size, func)
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_total]			; get "total" variable from the stack
		add		stack, space				; restoring back the stack pointer
		shr		result, KSCALE				; return result
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, size
		call	Extend						; status = this.Extend (count)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		test	status, status				; if (status)
		jnz		.back						;     then go back
		add		stack, space				; restoring back the stack pointer
		mov		result, ERROR				; return ERROR
		ret
}
MergeMin:	MERGE	MakeMinHeap
MergeMax:	MERGE	MakeMaxHeap

;******************************************************************************;
;       Heap  properties                                                       ;
;******************************************************************************;
GetCompareFunction:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + FUNC]		; get pointer to compare function
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetCapacity:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + CAPACITY]	; get object capacity
		shr		result, KSCALE
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetSize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + SIZE]		; get object size
		shr		result, KSCALE
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IsEmpty:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
;---[Internal variables]-------------------
status	equ		al							; operation status
size	equ		rdx							; object size
;------------------------------------------
		mov		size, [this + SIZE]			; get object size
		test	size, size					; if (size == 0)
		setz	status						;     return true
		ret

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
