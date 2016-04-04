;                                                                       Heap.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                            BINARY HEAP DATA TYPE                            #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
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
public	Constructor			as	'_ZN7MinHeapC1EmPFx5adt_tS0_EPFvPK6data_tmE'
public	Constructor			as	'_ZN7MaxHeapC1EmPFx5adt_tS0_EPFvPK6data_tmE'

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
public	PushMin				as	'MinHeap_Push'
public	PushMax				as	'MaxHeap_Push'
public	PushMin				as	'_ZN7MinHeap4PushEPK6data_t'
public	PushMax				as	'_ZN7MaxHeap4PushEPK6data_t'

;******************************************************************************;
;       Extraction of element                                                  ;
;******************************************************************************;
public	PopMin				as	'MinHeap_Pop'
public	PopMax				as	'MaxHeap_Pop'
public	PopMin				as	'_ZN7MinHeap3PopEP6data_t'
public	PopMax				as	'_ZN7MaxHeap3PopEP6data_t'

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;
public	ExtractMin			as	'MinHeap_Extract'
public	ExtractMax			as	'MaxHeap_Extract'
public	ExtractMin			as	'_ZN7MinHeap7ExtractEP6data_tm'
public	ExtractMax			as	'_ZN7MaxHeap7ExtractEP6data_tm'

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

; Heap index call back function
public	GetIndexFunction	as	'MinHeap_IndexFunction'
public	GetIndexFunction	as	'MaxHeap_IndexFunction'
public	GetIndexFunction	as	'_ZNK7MinHeap13IndexFunctionEv'
public	GetIndexFunction	as	'_ZNK7MaxHeap13IndexFunctionEv'

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

; Check if heap is initialized
public	IsInit				as	'MinHeap_IsInit'
public	IsInit				as	'MaxHeap_IsInit'
public	IsInit				as	'_ZNK7MinHeap6IsInitEv'
public	IsInit				as	'_ZNK7MaxHeap6IsInitEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
KSCALE		= 4								; Key scale factor
NSCALE		= 2								; Node scale factor
KSIZE		= 1 shl KSCALE					; Size of key (bytes)
NSIZE		= 1 shl NSCALE					; Size of node (elements)
MINCAP		= 1 shl	PSCALE					; Min capacity of heap object

;==============================================================================;
;       Offsets inside heap object                                             ;
;==============================================================================;
ARRAY		= 0 * 8							; Offset of array pointer
CAPACITY	= 1 * 8							; Offset of object capacity field
SIZE		= 2 * 8							; Offset of object size field
KFUNC		= 3 * 8							; Offset of pointer to key compare function
IFUNC		= 4 * 8							; Offset of pointer to index call back function

;******************************************************************************;
;       Sift the heap up                                                       ;
;******************************************************************************;
macro	SIFT_UP		cond
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
size	equ		rsi							; heap size
kfunc	equ		rdx							; key compare function
ifunc	equ		rcx							; index call back function
data	equ		xmm0						; data to sift up
;---[Internal variables]-------------------
result	equ		rax							; result register
root	equ		r9							; current root node
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_kfunc	equ		stack + 2 * 8				; stack position of "kfunc" variable
s_ifunc	equ		stack + 3 * 8				; stack position of "ifunc" variable
s_data	equ		stack + 4 * 8				; stack position of "data" variable
s_root	equ		stack + 6 * 8				; stack position of "root" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_ifunc], ifunc			; save "ifunc" variable into the stack
		movdqa	[s_data], data				; save "data" variable into the stack
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Sifting loop]-------------------------
.loop:	lea		root, [size - KSIZE]
		shr		root, NSCALE
		and		root, -KSIZE				; root = (size - 1) / NSIZE
		mov		[s_root], root				; save "root" variable into the stack
		mov		param2, [array + root]
		mov		param1, [s_data]
		call	qword [s_kfunc]				; result = Compare (data.key, array[root].key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		root, [s_root]				; get "root" variable from the stack
		cmp		result, 0					; if (result cond 0)
		j#cond	.break						;     then break the loop
		mov		ifunc, [s_ifunc]			; get "ifunc" variable from the stack
		movdqa	data, [array + root]
		movdqa	[array + size], data		; array[size] = array[root]
		test	ifunc, ifunc				; if (ifunc != NULL)
		jnz		.corr1						;     then call index call back function
.back1:	mov		size, root					; size = root
		mov		[s_size], root				; save "size" variable into the stack
		test	root, root
		ja		.loop						; do while (size != 0)
;---[End of sifting loop]------------------
.break:	mov		ifunc, [s_ifunc]			; get "ifunc" variable from the stack
		movdqa	data, [s_data]				; get "data" variable from the stack
.exit:	movdqa	[array + size], data		; array[size] = data
		test	ifunc, ifunc				; if (ifunc != NULL)
		jnz		.corr2						;     then call index call back function
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Invoke call back function branch]-----
.corr1:	lea		param1, [array + size]
		mov		param2, size
		shr		param2, KSCALE
		call	ifunc						; call ifunc (array + size, size)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		root, [s_root]				; get "root" variable from the stack
		jmp		.back1						; go back
;---[Invoke call back function branch]-----
.corr2:	lea		param1, [array + size]
		mov		param2, size
		shr		param2, KSCALE
		call	ifunc						; call ifunc (array + size, size)
		jmp		.back2						; go back
}
SiftMinUp:	SIFT_UP	ge
SiftMaxUp:	SIFT_UP	le

;******************************************************************************;
;       Sift the heap down                                                     ;
;******************************************************************************;
macro	SIFT_DOWN	cond
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
size	equ		rsi							; heap size
root	equ		rdx							; starting position
kfunc	equ		rcx							; key compare function
ifunc	equ		r8							; index call back function
data	equ		xmm0						; data to sift down
;---[Internal variables]-------------------
result	equ		rax							; result register
leaf	equ		r12							; current leaf node
value	equ		r13							; min or max max value
ptr		equ		r14							; temporary pointer
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_root	equ		stack + 2 * 8				; stack position of "root" variable
s_kfunc	equ		stack + 3 * 8				; stack position of "kfunc" variable
s_ifunc	equ		stack + 4 * 8				; stack position of "ifunc" variable
s_leaf	equ		stack + 5 * 8				; stack position of "leaf" variable
s_value	equ		stack + 6 * 8				; stack position of "value" variable
s_ptr	equ		stack + 7 * 8				; stack position of "ptr" variable
s_data	equ		stack + 8 * 8				; stack position of "data" variable
s_count	equ		stack + 10 * 8				; stack position of "ifunc" variable
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_leaf], leaf				; save old value of "leaf" variable
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_ptr], ptr				; save old value of "ptr" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_root], root				; save "root" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_ifunc], ifunc			; save "ifunc" variable into the stack
		movdqa	[s_data], data				; save "data" variable into the stack
		lea		leaf, [root * NSIZE + KSIZE]; leaf = root * NSIZE + 1
		sub		size, leaf					; if (size <= leaf)
		jbe		.exit						;     then go to exit
;---[Sifting loop]-------------------------
.loop:	mov		value, [array + leaf]		; value = array[leaf].key
		lea		ptr, [leaf + KSIZE]			; ptr = leaf + KSIZE
		mov		result, (NSIZE - 1) * KSIZE	; result = (NSIZE - 1) * KSIZE
		sub		size, KSIZE					; if (size == 1)
		je		.skip						;     then skip following code
		cmp		size, result				; if (count > result)
		cmova	size, result				;     count = result
		mov		[s_count], size				; save "count" variable into the stack
;---[Interanal loop]-----------------------
.iloop:	mov		param2, [array + ptr]
		mov		param1, value
		call	qword [s_kfunc]				; result = Compare (value.key, array[ptr].key)
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		result, 0					; if (result !cond 0)
		j#cond	@f							; {
		mov		value, [array + ptr]		;     value = array[ptr]
		mov		leaf, ptr					;     leaf = ptr }
@@:		add		ptr, KSIZE					; ptr++
		sub		qword [s_count], KSIZE		; count--
		jnz		.iloop						; do while (count != 0)
;---[End of interanal loop]----------------
.skip:	mov		param2, value
		mov		param1, [s_data]
		call	qword [s_kfunc]				; result = Compare (data.key, value.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		root, [s_root]				; get "root" variable from the stack
		cmp		result, 0					; if (result cond 0)
		j#cond	.break						;     then break the loop
		mov		ifunc, [s_ifunc]			; get "ifunc" variable from the stack
		movdqa	data, [array + leaf]
		movdqa	[array + root], data		; array[root] = array[leaf]
		test	ifunc, ifunc				; if (ifunc != NULL)
		jnz		.corr1						;     then call index call back function
.back1:	mov		root, leaf					; root = leaf
		mov		[s_root], leaf				; save "root" variable into the stack
		lea		leaf, [leaf * NSIZE + KSIZE]; leaf = root * NSIZE + 1
		sub		size, leaf
		ja		.loop						; do while (size > leaf)
;---[End of sifting loop]------------------
.break:	mov		ifunc, [s_ifunc]			; get "ifunc" variable from the stack
		movdqa	data, [s_data]				; get "data" variable from the stack
.exit:	movdqa	[array + root], data		; array[root] = data
		test	ifunc, ifunc				; if (ifunc != NULL)
		jnz		.corr2						;     then call index call back function
.back2:	mov		leaf, [s_leaf]				; restore old value of "leaf" variable
		mov		value, [s_value]			; restore old value of "value" variable
		mov		ptr, [s_ptr]				; restore old value of "ptr" variable
		mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Invoke call back function branch]-----
.corr1:	lea		param1, [array + root]
		mov		param2, root
		shr		param2, KSCALE
		call	ifunc						; call ifunc (array + root, root)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		jmp		.back1						; go back
;---[Invoke call back function branch]-----
.corr2:	lea		param1, [array + root]
		mov		param2, root
		shr		param2, KSCALE
		call	ifunc						; call ifunc (array + root, root)
		jmp		.back2						; go back
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
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
Constructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
cap		equ		rsi							; object capacity
kfunc	equ		rdx							; compare function
ifunc	equ		rcx							; index call back function
;---[Internal variables]-------------------
array	equ		rax							; pointer to array of nodes
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_cap	equ		stack + 1 * 8				; stack position of "cap" variable
s_kfunc	equ		stack + 2 * 8				; stack position of "kfunc" variable
s_ifunc	equ		stack + 3 * 8				; stack position of "ifunc" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_ifunc], ifunc			; save "ifunc" variable into the stack
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
		mov		kfunc, [s_kfunc]			; get "kfunc" variable from the stack
		mov		ifunc, [s_ifunc]			; get "kfunc" variable from the stack
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], cap		; this.capacity = cap
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		[this + KFUNC], kfunc		; this.kfunc = kfunc
		mov		[this + IFUNC], ifunc		; this.ifunc = ifunc
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + KFUNC], kfunc	; this.kfunc = kfunc
		mov		qword [this + IFUNC], ifunc	; this.ifunc = ifunc
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
fptr	equ		rax							; pointer to call external function
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
		mov		temp, [source + KFUNC]
		mov		[this + KFUNC], temp		; this.kfunc = source.kfunc
		mov		temp, [source + IFUNC]
		mov		[this + IFUNC], temp		; this.ifunc = source.ifunc
;---[Copy content of nodes]----------------
		mov		param3, [source + SIZE]
		mov		param2, [source + ARRAY]
		mov		param1, array
		mov		fptr, Copy
		add		stack, space				; restoring back the stack pointer
		jmp		fptr						; return Array::Copy (this.array, source.array, source.size)
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		temp, [source + KFUNC]
		mov		[this + KFUNC], temp		; this.kfunc = source.kfunc
		mov		temp, [source + IFUNC]
		mov		[this + IFUNC], temp		; this.ifunc = source.ifunc
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
		mov		qword [this + KFUNC], 0		; this.kfunc = NULL
		mov		qword [this + IFUNC], 0		; this.ifunc = NULL
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Addition of element                                                    ;
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
s_size	equ		stack + 2 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		mov		size, [this + SIZE]			; get object size
		cmp		size, [this + CAPACITY]		; if (size == cap)
		je		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	add		size, KSIZE					; size++
		movdqu	temp, [data]
		mov		[this + SIZE], size			; update object size
		mov		param4, [this + IFUNC]
		mov		param3, [this + KFUNC]
		lea		param2, [size - KSIZE]
		mov		param1, [this + ARRAY]
		jmp		SiftUp						; return SiftUp (array, size, kfunc, ifunc, temp)
;---[Extend object capacity]---------------
.ext:	sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		param2, [this + CAPACITY]
		shl		param2, 1
		cmp		param2, [this + CAPACITY]	; if (newcapacity <= capacity)
		setnbe	status						;     then return false
		jbe		.exit
		call	Extend						; status = this.Extend (cap * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
.exit:	add		stack, space				; restoring back the stack pointer
		test	status, status
		jnz		.back						; if (status), then go back
		ret									;              else return false
}
PushMin:	PUSH_DATA	SiftMinUp
PushMax:	PUSH_DATA	SiftMaxUp

;******************************************************************************;
;       Removal of element                                                     ;
;******************************************************************************;
macro	POP_DATA	SiftDown
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r9							; pointer to array of nodes
size	equ		r10							; object size
temp	equ		xmm0						; temporary register
;------------------------------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		sub		size, KSIZE					; size--
		movdqa	temp, [array]
		movdqu	[data], temp				; data[0] = array[0]
		mov		[this + SIZE], size			; update object size
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		movdqa	temp, [array + size]		; temp = array[size]
		mov		param5, [this + IFUNC]
		mov		param4, [this + KFUNC]
		xor		param3, param3
		mov		param2, size
		mov		param1, array
		jmp		SiftDown					; return SiftDown (array, size, 0, kfunc, ifunc, temp)
.exit:	mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
PopMin:	POP_DATA	SiftMinDown
PopMax:	POP_DATA	SiftMaxDown

;******************************************************************************;
;       Extraction of element                                                  ;
;******************************************************************************;
macro	EXTRACT	SiftUp, SiftDown, cond
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to extract
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r9							; pointer to array of nodes
size	equ		r10							; object size
func	equ		r11							; pointer to function
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_pos	equ		stack + 1 * 8				; stack position of "pos" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
		mov		func, [this + KFUNC]		; get pointer to key compare function
		sub		size, KSIZE					; size--
		cmp		size, pos					; if (size < pos)
		jl		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
		mov		[s_array], array			; save "array" variable into the stac
		mov		[s_size], size				; save "size" variable into the stack
		movdqa	temp, [array + pos]
		movdqu	[data], temp				; odata[0] = array[pos].data
		mov		[this + SIZE], size			; update object size
;---[Compare keys]-------------------------
		mov		param1, [array + size]
		mov		param2, [array + pos]
		call	func						; result = Compare (array[size].key, array[pos].key)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		movdqa	temp, [array + size]		; temp = array[size]
		cmp		result, 0					; if (result == 0)
		je		.skip						;     then go to skip branch
		j#cond	.else						;     else sift the element
;---[if result cond 0]---------------------
		mov		param5, [this + IFUNC]
		mov		param4, [this + KFUNC]
		mov		param3, pos
		mov		param2, size
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		SiftDown					; return SiftDown (array, size, pos, kfunc, ifunc, temp)
;---[else]---------------------------------
.else:	mov		param2, pos
		mov		param4, [this + IFUNC]
		mov		param3, [this + KFUNC]
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		SiftUp						; return SiftUp (array, pos, kfunc, ifunc, temp)
;---[Skip branch]--------------------------
.skip:	mov		func, [this + IFUNC]
		movdqa	[array + pos], temp			; array[pos].data = data[0]
		lea		param1, [array + pos]
		mov		param2, pos
		shr		param2, KSCALE
		call	func						; call ifunc (array + pos, pos)
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}
ExtractMin:	EXTRACT	SiftMinUp, SiftMinDown, l
ExtractMax:	EXTRACT	SiftMaxUp, SiftMaxDown, g

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
macro	SET		SiftUp, SiftDown, cond
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to set
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r9							; pointer to array of nodes
size	equ		r10							; object size
func	equ		r11							; pointer to function
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
		mov		func, [this + KFUNC]		; get pointer to key compare function
		cmp		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
		mov		[s_array], array			; save "array" variable into the stac
		mov		[s_size], size				; save "size" variable into the stack
;---[Compare keys]-------------------------
		mov		param1, [data]
		mov		param2, [array + pos]
		call	func						; result = Compare (data[0].key, array[pos].key)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		movdqu	temp, [data]				; temp = data[0]
		cmp		result, 0					; if (result == 0)
		je		.skip						;     then go to skip branch
		j#cond	.else						;     else sift the element
;---[if result cond 0]---------------------
		mov		param5, [this + IFUNC]
		mov		param4, [this + KFUNC]
		mov		param3, pos
		mov		param2, size
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		SiftDown					; return SiftDown (array, size, pos, kfunc, ifunc, temp)
;---[else]---------------------------------
.else:	mov		param2, pos
		mov		param4, [this + IFUNC]
		mov		param3, [this + KFUNC]
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		SiftUp						; return SiftUp (array, pos, kfunc, ifunc, temp)
;---[Skip branch]--------------------------
.skip:	mov		func, [this + IFUNC]
		movdqa	[array + pos], temp			; array[pos].data = data[0]
		lea		param1, [array + pos]
		mov		param2, pos
		shr		param2, KSCALE
		call	func						; call ifunc (array + pos, pos)
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}
SetMin:	SET	SiftMinUp, SiftMinDown, l
SetMax:	SET	SiftMaxUp, SiftMaxDown, g

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
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		cmp		[this + SIZE], pos			; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
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
macro	REPLACE		SiftUp, SiftDown, cond
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
odata	equ		rsi							; pointer to old data structure
ndata	equ		rdx							; pointer to new data structure
pos		equ		rcx							; position of element to replace
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r9							; pointer to array of nodes
size	equ		r10							; object size
func	equ		r11							; pointer to function
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_ndata	equ		stack + 1 * 8				; stack position of "ndata" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
		mov		func, [this + KFUNC]		; get pointer to key compare function
		cmp		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_ndata], ndata			; save "ndata" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		movdqa	temp, [array + pos]
		movdqu	[odata], temp				; odata[0] = array[pos].data
;---[Compare keys]-------------------------
		mov		param1, [ndata]
		mov		param2, [array + pos]
		call	func						; result = Compare (ndata[0].key, array[pos].key)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		movdqu	temp, [ndata]				; temp = ndata[0]
		cmp		result, 0					; if (result == 0)
		je		.skip						;     then go to skip branch
		j#cond	.else						;     else sift the element
;---[if result cond 0]---------------------
		mov		param5, [this + IFUNC]
		mov		param4, [this + KFUNC]
		mov		param3, pos
		mov		param2, size
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		SiftDown					; return SiftDown (array, size, pos, kfunc, ifunc, temp)
;---[else]---------------------------------
.else:	mov		param2, pos
		mov		param4, [this + IFUNC]
		mov		param3, [this + KFUNC]
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		SiftUp						; return SiftUp (array, pos, kfunc, ifunc, temp)
;---[Skip branch]--------------------------
.skip:	mov		func, [this + IFUNC]
		movdqa	[array + pos], temp			; array[pos].data = ndata[0]
		lea		param1, [array + pos]
		mov		param2, pos
		shr		param2, KSCALE
		call	func						; call ifunc (array + pos, pos)
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}
ReplaceMin:	REPLACE	SiftMinUp, SiftMinDown, l
ReplaceMax:	REPLACE	SiftMaxUp, SiftMaxDown, g

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
array	equ		r11							; pointer to array of nodes
size	equ		result						; object size
func	equ		result						; compare function
stack	equ		rsp							; stack pointer
s_base	equ		stack + 0 * 8				; stack position of "base" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_data	equ		stack + 2 * 8				; stack position of "data" variable
s_key	equ		stack + 3 * 8				; stack position of "key" variable
s_count	equ		stack + 4 * 8				; stack position of "count" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
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
		mov		func, [this + KFUNC]		; get pointer to key compare function
		mov		[s_base], array				; save "base" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[0].key)
		mov		array, [s_array]			; get "array" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		add		array, KSIZE				; array++
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [array]
		movdqu	[data], temp				; data[0] = array[0]
		sub		array, [s_base]				; array = array - base
		mov		result, array				; result = array
		shr		result, KSCALE				; return result
		add		stack, space				; restoring back the stack pointer
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
fptr	equ		rax							; pointer to call external function
base	equ		r10							; base for pointer arithmetic
array	equ		r11							; pointer to array of nodes
size	equ		result						; object size
func	equ		result						; compare function
stack	equ		rsp							; stack pointer
s_base	equ		stack + 0 * 8				; stack position of "base" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
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
		mov		array, [this + ARRAY]		; get pointer to array of nodes
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
		mov		func, [this + KFUNC]		; get pointer to key compare function
		mov		[s_base], array				; save "base" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param4, [s_func]
		mov		param3, [array]
		mov		param2, [s_ksize]
		mov		param1, [s_keys]
		mov		fptr, FindSet
		call	fptr						; result = FindSet (keys, ksize, array[0].key, kfunc)
		mov		array, [s_array]			; get "array" variable from the stack
		test	result, result				; if (result)
		jnz		.found						;     then go to found branch
		add		array, KSIZE				; array++
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [array]
		movdqu	[data], temp				; data[0] = array[0]
		sub		array, [s_base]				; array = array - base
		mov		result, array				; result = array
		shr		result, KSCALE				; return result
		add		stack, space				; restoring back the stack pointer
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
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
size	equ		result						; object size
func	equ		result						; compare function
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
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
		mov		array, [this + ARRAY]		; get pointer to array of nodes
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
		mov		func, [this + KFUNC]		; get pointer to key compare function
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[0].key)
		mov		array, [s_array]			; get "array" variable from the stack
		test	result, result				; if (result == 0)
		setz	status						; {
		movzx	result, status
		add		[s_total], result			;     then total++ }
		add		array, KSIZE				; array++
		mov		[s_array], array			; save "array" variable into the stack
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
fptr	equ		rax							; pointer to call external function
array	equ		r11							; pointer to array of nodes
size	equ		result						; object size
func	equ		result						; compare function
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
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
		mov		array, [this + ARRAY]		; get pointer to array of nodes
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
		mov		func, [this + KFUNC]		; get pointer to key compare function
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param4, [s_func]
		mov		param3, [array]
		mov		param2, [s_ksize]
		mov		param1, [s_keys]
		mov		fptr, FindSet
		call	fptr						; result = FindSet (keys, ksize, array[0].key, kfunc)
		mov		array, [s_array]			; get "array" variable from the stack
		add		[s_total], result			; if (result), then total++
		add		array, KSIZE				; array++
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total

;******************************************************************************;
;       Merging of heaps                                                       ;
;******************************************************************************;
macro	MAKE_HEAP	cond
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
size	equ		rsi							; heap size
kfunc	equ		rdx							; key compare function
ifunc	equ		rcx							; index call back function
;---[Internal variables]-------------------
result	equ		rax							; result register
root	equ		r8							; current root node
leaf	equ		r12							; current leaf node
value	equ		r13							; min or max max value
ptr		equ		r14							; temporary pointer
data	equ		xmm0						; data to sift down
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_kfunc	equ		stack + 2 * 8				; stack position of "kfunc" variable
s_ifunc	equ		stack + 3 * 8				; stack position of "ifunc" variable
s_leaf	equ		stack + 4 * 8				; stack position of "leaf" variable
s_value	equ		stack + 5 * 8				; stack position of "value" variable
s_ptr	equ		stack + 6 * 8				; stack position of "ptr" variable
s_root	equ		stack + 7 * 8				; stack position of "root" variable
s_pos	equ		stack + 8 * 8				; stack position of "pos" variable
s_count	equ		stack + 9 * 8				; stack position of "count" variable
s_data	equ		stack + 10 * 8				; stack position of "data" variable
space	= 13 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		root, size					; root = size
		sub		root, 2 * KSIZE				; if (size < 2)
		jb		.exit						;     then go to exit
		shr		root, NSCALE
		and		root, -KSIZE				; root = (size - 2) / NSIZE
		mov		[s_leaf], leaf				; save old value of "leaf" variable
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_ptr], ptr				; save old value of "ptr" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_ifunc], ifunc			; save "ifunc" variable into the stack
		mov		[s_root], root				; save "root" variable into the stack
		mov		[s_pos], root				; save "pos" variable into the stack
		lea		ptr, [root + KSIZE]			; ptr = root + 1
		test	ifunc, ifunc				; if (ifunc == NULL)
		jz		.hloop						;     then skip following code
;---[Index call back loop]-----------------
.cloop:	lea		param1, [array + ptr]
		mov		param2, ptr
		shr		param2, KSCALE
		call	qword [s_ifunc]				; call ifunc (array + ptr, ptr)
		mov		array, [s_array]			; get "array" variable from the stack
		add		ptr, KSIZE					; ptr++
		cmp		ptr, [s_size]				;
		jb		.cloop						; do while (ptr < size)
;---[End of index call back loop]----------
		mov		size, [s_size]				; get "size" variable from the stack
		mov		root, [s_pos]				; get "root" variable from the stack
;---[Heapify loop]-------------------------
.hloop:	movdqa	data, [array + root]		; data = array[root]
		movdqa	[s_data], data				; save "data" variable into the stack
		lea		leaf, [root * NSIZE + KSIZE]; leaf = root * NSIZE + 1
		sub		size, leaf					; size -= leaf
;---[Sifting loop]-------------------------
.loop:	mov		value, [array + leaf]		; value = array[leaf].key
		lea		ptr, [leaf + KSIZE]			; ptr = leaf + KSIZE
		mov		result, (NSIZE - 1) * KSIZE	; result = (NSIZE - 1) * KSIZE
		sub		size, KSIZE					; if (size == 1)
		je		.skip						;     then skip following code
		cmp		size, result				; if (count > result)
		cmova	size, result				;     count = result
		mov		[s_count], size				; save "count" variable into the stack
;---[Interanal loop]-----------------------
.iloop:	mov		param2, [array + ptr]
		mov		param1, value
		call	qword [s_kfunc]				; result = Compare (value.key, array[ptr].key)
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		result, 0					; if (result !cond 0)
		j#cond	@f							; {
		mov		value, [array + ptr]		;     value = array[ptr]
		mov		leaf, ptr					;     leaf = ptr }
@@:		add		ptr, KSIZE					; ptr++
		sub		qword [s_count], KSIZE		; count--
		jnz		.iloop						; do while (count != 0)
;---[End of interanal loop]----------------
.skip:	mov		param2, value
		mov		param1, [s_data]
		call	qword [s_kfunc]				; result = Compare (data.key, value.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		root, [s_root]				; get "root" variable from the stack
		cmp		result, 0					; if (result cond 0)
		j#cond	.break						;     then break the loop
		mov		ifunc, [s_ifunc]			; get "ifunc" variable from the stack
		movdqa	data, [array + leaf]
		movdqa	[array + root], data		; array[root] = array[leaf]
		test	ifunc, ifunc				; if (ifunc != NULL)
		jnz		.corr1						;     then call index call back function
.back1:	mov		root, leaf					; root = leaf
		mov		[s_root], leaf				; save "root" variable into the stack
		lea		leaf, [leaf * NSIZE + KSIZE]; leaf = root * NSIZE + 1
		sub		size, leaf
		ja		.loop						; do while (size > leaf)
;---[End of sifting loop]------------------
.break:	mov		ifunc, [s_ifunc]			; get "ifunc" variable from the stack
		movdqa	data, [s_data]				; get "data" variable from the stack
		movdqa	[array + root], data		; array[root] = data
		test	ifunc, ifunc				; if (ifunc != NULL)
		jnz		.corr2						;     then call index call back function
.back2:	mov		root, [s_pos]				; get "pos" variable from the stack
		sub		root, KSIZE					; root--
		mov		[s_root], root				; save "root" variable into the stack
		mov		[s_pos], root				; save "pos" variable into the stack
		jns		.hloop						; do while (root >= 0)
;---[End of heapify loop]------------------
		mov		leaf, [s_leaf]				; restore old value of "leaf" variable
		mov		value, [s_value]			; restore old value of "value" variable
		mov		ptr, [s_ptr]				; restore old value of "ptr" variable
.exit:	add		stack, space				; restoring back the stack pointer
		ret
;---[Invoke call back function branch]-----
.corr1:	lea		param1, [array + root]
		mov		param2, root
		shr		param2, KSCALE
		call	ifunc						; call ifunc (array + root, root)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		jmp		.back1						; go back
;---[Invoke call back function branch]-----
.corr2:	lea		param1, [array + root]
		mov		param2, root
		shr		param2, KSCALE
		call	ifunc						; call ifunc (array + root, root)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		jmp		.back2						; go back
}
MakeHeapMin:	MAKE_HEAP	le
MakeHeapMax:	MAKE_HEAP	ge
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MERGE	HeapFunc
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target heap object
source	equ		rsi							; pointer to source heap object
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
ptr		equ		rcx							; temporary pointer
fptr	equ		rax							; pointer to call external function
size	equ		result						; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.error						;     then go to error branch
;---[Check source object size]-------------
		mov		size, [source + SIZE]		; get source object size
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		test	size, size					; if (source.size == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		add		size, [this + SIZE]			; size = this.size + source.size
	Capacity	size, ptr, MINCAP			; compute new capacity of target object
		cmp		size, [this + CAPACITY]		; if (size > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Copy nodes content]-------------------
.back:	mov		ptr, [this + ARRAY]
		add		ptr, [this + SIZE]			; ptr = array + size
		mov		param3, [source + SIZE]
		mov		param2, [source + ARRAY]
		mov		param1, ptr
		mov		fptr, Copy
		call	fptr						; call Copy (this.array + size, source.array, source.size)
;---[Convert array to a heap]--------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		add		[this + SIZE], size			; this.size += source.size
		mov		param4, [this + IFUNC]
		mov		param3, [this + KFUNC]
		mov		param2, [this + SIZE]
		mov		param1, [this + ARRAY]
		call	HeapFunc					; call HeapFunc (array, size, kfunc, ifunc)
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_size]			; get "size" variable from the stack
		shr		result, KSCALE				; return result
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, size
		call	Extend						; status = this.Extend (count)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret
}
MergeMin:	MERGE	MakeHeapMin
MergeMax:	MERGE	MakeHeapMax

;******************************************************************************;
;       Heap  properties                                                       ;
;******************************************************************************;
GetCompareFunction:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + KFUNC]		; get pointer to key compare function
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetIndexFunction:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + IFUNC]		; get pointer to index call back function
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
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IsInit:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to heap object
;---[Internal variables]-------------------
status	equ		al							; operation status
cap		equ		rdx							; object capacity
;------------------------------------------
		mov		cap, [this + CAPACITY]		; get object capacity
		test	cap, cap					; if (capacity == 0)
		setnz	status						;     return true
		ret

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
