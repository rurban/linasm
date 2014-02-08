;                                                                      Stack.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                               STACK DATA TYPE                               #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2014, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'
include	'Syscall.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################
extrn	'Array_Copy'		as	Copy

;###############################################################################
;#      Export section                                                         #
;###############################################################################
public	FindSet				as	'FindSet'

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
public	Constructor			as	'Stack_InitStack'
public	Constructor			as	'_ZN5StackC1Em'

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
public	CopyConstructor		as	'Stack_CopyStack'
public	CopyConstructor		as	'_ZN5StackC1ERKS_'

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
public	Destructor			as	'Stack_FreeStack'
public	Destructor			as	'_ZN5StackD1Ev'

;******************************************************************************;
;       Copying elements                                                       ;
;******************************************************************************;
public	CopyData			as	'Stack_Copy'
public	CopyData			as	'_ZN5Stack4CopyEPKS_mm'

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;
public	MoveData			as	'Stack_Move'
public	MoveData			as	'_ZN5Stack4MoveEPS_mm'

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
public	PushData			as	'Stack_Push'
public	PushData			as	'_ZN5Stack4PushEPK6data_t'

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;
public	PopData				as	'Stack_Pop'
public	PopData				as	'_ZN5Stack3PopEP6data_t'

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
public	Set					as	'Stack_Set'
public	Set					as	'_ZN5Stack3SetEPK6data_tm'

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;
public	Get					as	'Stack_Get'
public	Get					as	'_ZNK5Stack3GetEP6data_tm'

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;
public	Replace				as	'Stack_Replace'
public	Replace				as	'_ZN5Stack7ReplaceEP6data_tPKS0_m'

;******************************************************************************;
;       Changing elements order                                                ;
;******************************************************************************;

; Reversing elements order
public	Reverse				as	'Stack_Reverse'
public	Reverse				as	'_ZN5Stack7ReverseEmm'

; Swapping element
public	Swap				as	'Stack_Swap'
public	Swap				as	'_ZN5Stack4SwapEm'

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;

; Minimum value
public	Min					as	'Stack_Min'
public	Min					as	'_ZNK5Stack3MinEP6data_tmmPFx5adt_tS2_E'

; Maximum value
public	Max					as	'Stack_Max'
public	Max					as	'_ZNK5Stack3MaxEP6data_tmmPFx5adt_tS2_E'

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Key searching                                                          ;
;==============================================================================;

; Single key searching
public	FindKey				as	'Stack_FindKey'
public	FindKey				as	'_ZNK5Stack7FindKeyEP6data_t5adt_tmmPFxS2_S2_E'

; Keys set searching
public	FindKeys			as	'Stack_FindKeys'
public	FindKeys			as	'_ZNK5Stack8FindKeysEP6data_tPK5adt_tmmmPFxS2_S2_E'

;==============================================================================;
;       Searching for differences                                              ;
;==============================================================================;
public	FindDiff			as	'Stack_FindDiff'
public	FindDiff			as	'_ZNK5Stack8FindDiffEP6data_tPKS_mmPFx5adt_tS4_E'

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

; Single key counting
public	CountKey			as	'Stack_CountKey'
public	CountKey			as	'_ZNK5Stack8CountKeyE5adt_tmmPFxS0_S0_E'

; Keys set counting
public	CountKeys			as	'Stack_CountKeys'
public	CountKeys			as	'_ZNK5Stack9CountKeysEPK5adt_tmmmPFxS0_S0_E'

;******************************************************************************;
;       Comparison of stacks                                                   ;
;******************************************************************************;
public	Compare				as	'Stack_Compare'
public	Compare				as	'_ZNK5Stack7CompareEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       Check for equality                                                     ;
;******************************************************************************;
public	IsEqual				as	'Stack_IsEqual'
public	IsEqual				as	'_ZNK5Stack7IsEqualEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       Stack properties                                                       ;
;******************************************************************************;

; Stack capacity
public	GetCapacity			as	'Stack_Capacity'
public	GetCapacity			as	'_ZNK5Stack8CapacityEv'

; Stack size
public	GetSize				as	'Stack_Size'
public	GetSize				as	'_ZNK5Stack4SizeEv'

; Check if stack is empty
public	IsEmpty				as	'Stack_IsEmpty'
public	IsEmpty				as	'_ZNK5Stack7IsEmptyEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
KSCALE		= 4								; Key scale factor
KSIZE		= 1 shl KSCALE					; Size of key (bytes)
MINCAP		= 1 shl	PSCALE					; Min capacity of stack object

;==============================================================================;
;       Offsets inside stack object                                            ;
;==============================================================================;
ARRAY		= 0 * 8							; Offset of array pointer
CAPACITY	= 1 * 8							; Offset of object capacity field
SIZE		= 2 * 8							; Offset of object size field

;******************************************************************************;
;       Find key in array of keys                                              ;
;******************************************************************************;
FindSet:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of keys
size	equ		rsi							; size of array of keys
key		equ		rdx							; key to find
func	equ		rcx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_key	equ		stack + 2 * 8				; stack position of "key" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
space	= 5 * 8								; stack size required by the procedure
bytes	= 8									; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [s_key]
		mov		param1, [array]
		call	qword [s_func]				; result = Compare (array[0], key)
		mov		array, [s_array]			; get "array" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		add		array, bytes				; array++
		mov		[s_array], array			; save "array" variable into the stack
		dec		qword [s_size]				; size--
		jnz		.loop
;---[Not found branch]---------------------
.ntfnd:	add		stack, space				; restoring back the stack pointer
		xor		result, result				; return false
		ret
;---[Found branch]-------------------------
.found:	add		stack, space				; restoring back the stack pointer
		mov		result, 1					; return true
		ret

;******************************************************************************;
;       Extending stack capacity                                               ;
;******************************************************************************;
Extend:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
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
this	equ		rdi							; pointer to stack object
cap		equ		rsi							; object capacity
;---[Internal variables]-------------------
array	equ		rax							; pointer to array of nodes
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_cap	equ		stack + 1 * 8				; stack position of "cap" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
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
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], cap		; this.capacity = cap
		mov		qword [this + SIZE], 0		; this.size = 0
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
CopyConstructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target stack object
source	equ		rsi							; pointer to source stack object
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
.exit:	add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
Destructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
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
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Copying elements                                                       ;
;******************************************************************************;
macro	COPY_MOVE	move
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target stack object
source	equ		rsi							; pointer to source stack object
pos		equ		rdx							; beginning position
count	equ		rcx							; count of nodes to copy
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
tptr	equ		r8							; target pointer
sptr	equ		r9							; source pointer
size	equ		result						; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
s_count	equ		stack + 3 * 8				; stack position of "count" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.error						;     then go to error branch
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [source + SIZE]		; get source object size
		sub		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		add		count, [this + SIZE]		; count += size
	Capacity	count, size, MINCAP			; compute new capacity of target object
		cmp		count, [this + CAPACITY]	; if (count > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Insert elements into target stack]----
.back:	mov		result, [s_count]			; get "count" variable from the stack
		mov		tptr, [this + ARRAY]
		add		tptr, [this + SIZE]
		mov		sptr, [source + ARRAY]
		add		sptr, [source + SIZE]
		add		pos, result
		sub		sptr, pos
		mov		[s_ptr], sptr				; save "ptr" variable into the stack
		add		[this + SIZE], result		; this.size += result
@@:		movdqa	temp, [sptr]
		movdqa	[tptr], temp				; tptr[0] = sptr[0]
		add		sptr, KSIZE					; sptr++
		add		tptr, KSIZE					; tptr++
		sub		size, KSIZE					; size--
		jnz		@b							; do while (size != 0)
;---[Remove elements from source stack]----
if move
		mov		result, [s_count]			; get "count" variable from the stack
		sub		[source + SIZE], result		; source.size -= count
		mov		size, [s_pos]				; get "pos" variable from the stack
		mov		tptr, [s_ptr]				; get "ptr" variable from the stack
		test	size, size					; if (size == 0)
		jz		.exit						;     then skip following code
@@:		movdqa	temp, [sptr]
		movdqa	[tptr], temp				; tptr[0] = sptr[0]
		add		sptr, KSIZE					; sptr++
		add		tptr, KSIZE					; tptr++
		sub		size, KSIZE					; size--
		jnz		@b							; do while (size != 0)
end if
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_count]			; get "count" variable from the stack
		add		stack, space				; restoring back the stack pointer
		shr		result, KSCALE				; return count
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, count
		call	Extend						; status = this.Extend (size)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
		mov		result, ERROR				; return ERROR
		ret
}
CopyData:	COPY_MOVE	0

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;
MoveData:	COPY_MOVE	1

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
PushData:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rcx							; iterator value
size	equ		rdx							; object size
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
.back:	mov		iter, [this + ARRAY]		; get iterator value
		add		iter, size					; iter = array + size
		movdqu	temp, [data]
		movdqa	[iter], temp				; iter[0] = data[0]
		add		size, KSIZE					; size++
		mov		[this + SIZE], size			; update object size
		mov		status, 1					; return true
		ret
;---[Extend object capacity]---------------
.ext:	sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		param2, [this + CAPACITY]
		shl		param2, 1
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

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;
PopData:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rcx							; iterator value
size	equ		rdx							; object size
temp	equ		xmm0						; temporary register
;------------------------------------------
		mov		size, [this + SIZE]			; get object size
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		sub		size, KSIZE					; size--
		mov		iter, [this + ARRAY]		; get iterator value
		add		iter, size					; iter = array + size
		movdqa	temp, [iter]
		movdqu	[data], temp				; data[0] = iter[0]
		mov		[this + SIZE], size			; update object size
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
Set:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to set
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rcx							; iterator value
size	equ		rax							; object size
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [this + SIZE]			; get object size
		sub		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		iter, [this + ARRAY]		; get iterator value
		lea		iter, [iter + size - KSIZE]	; iter = array - 1 + size - pos
		movdqu	temp, [data]
		movdqa	[iter], temp				; iter[0] = data[0]
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;
Get:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to get
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rcx							; iterator value
size	equ		rax							; object size
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [this + SIZE]			; get object size
		sub		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		iter, [this + ARRAY]		; get iterator value
		lea		iter, [iter + size - KSIZE]	; iter = array - 1 + size - pos
		movdqa	temp, [iter]
		movdqu	[data], temp				; data[0] = iter[0]
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;
Replace:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
odata	equ		rsi							; pointer to old data structure
ndata	equ		rdx							; pointer to new data structure
pos		equ		rcx							; position of element to replace
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rcx							; iterator value
size	equ		rax							; object size
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [this + SIZE]			; get object size
		sub		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		iter, [this + ARRAY]		; get iterator value
		lea		iter, [iter + size - KSIZE]	; iter = array - 1 + size - pos
		movdqa	temp, [iter]
		movdqu	[odata], temp				; odata[0] = iter[0]
		movdqu	temp, [ndata]
		movdqa	[iter], temp				; iter[0] = ndata[0]
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret

;******************************************************************************;
;       Changing elements order                                                ;
;******************************************************************************;

;==============================================================================;
;       Reversing elements order                                               ;
;==============================================================================;
Reverse:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
pos		equ		rsi							; beginning position
count	equ		rdx							; count of nodes to reverse
;---[Internal variables]-------------------
result	equ		rax							; result register
iter1	equ		r8							; first iterator value
iter2	equ		r9							; second iterator value
size	equ		rcx							; object size
temp1	equ		xmm0						; temporary register #1
temp2	equ		xmm1						; temporary register #2
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [this + SIZE]			; get object size
		sub		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
		mov		result, count				; result = count
;---[Check count]--------------------------
		cmp		count, KSIZE				; if (count <= KSIZE)
		jbe		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		iter2, [this + ARRAY]		; get iterator value
		add		iter2, size					; iter2 = array + size - pos
		mov		iter1, iter2
		sub		iter1, count				; iter1 = array + size - pos - count
		shr		count, KSCALE + 1			; count >>= 1
;---[Order reversing loop]-----------------
.loop:	sub		iter2, KSIZE				; iter2--
		movdqa	temp1, [iter1]				; temp1 = array[iter1]
		movdqa	temp2, [iter2]				; temp2 = array[iter2]
		movdqa	[iter1], temp2				; array[iter1] = temp2
		movdqa	[iter2], temp1				; array[iter2] = temp1
		add		iter1, KSIZE				; iter1++
		sub		count, 1					; count--
		jnz		.loop						; do while (count != 0)
;---[Normal exit branch]-------------------
.exit:	shr		result, KSCALE				; return result
		ret
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		ret

;==============================================================================;
;       Swapping element                                                       ;
;==============================================================================;
Swap:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
pos		equ		rsi							; position of element to swap
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		rax							; pointer to array of nodes
base	equ		rdx							; base for pointer arithmetic
iter1	equ		r8							; first iterator value
iter2	equ		r9							; second iterator value
size	equ		rcx							; object size
temp1	equ		xmm0						; temporary register #1
temp2	equ		xmm1						; temporary register #2
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [this + SIZE]			; get object size
		mov		base, size					; base = size
		sub		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		lea		iter1, [array + base - KSIZE]
		lea		iter2, [array + size - KSIZE]
		movdqa	temp1, [iter1]				; temp1 = array[iter1]
		movdqa	temp2, [iter2]				; temp2 = array[iter2]
		movdqa	[iter1], temp2				; array[iter1] = temp2
		movdqa	[iter2], temp1				; array[iter2] = temp1
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;
macro	MINMAX	c
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; beginning position
count	equ		rcx							; count of nodes to check
func	equ		r8							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
base	equ		r10							; base for pointer arithmetic
iter	equ		r11							; iterator value
size	equ		result						; object size
value	equ		r12							; min or max max value
vptr	equ		r13							; position of min or max value
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
s_vptr	equ		stack + 1 * 8				; stack position of "vptr" variable
s_base	equ		stack + 2 * 8				; stack position of "base" variable
s_iter	equ		stack + 3 * 8				; stack position of "iter" variable
s_data	equ		stack + 4 * 8				; stack position of "data" variable
s_count	equ		stack + 5 * 8				; stack position of "count" variable
s_func	equ		stack + 6 * 8				; stack position of "func" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [this + SIZE]			; get object size
		mov		base, size					; base = size
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
		sub		iter, KSIZE					; iter = array - 1
		add		base, iter					; base = array - 1 + size
		add		iter, size					; iter = array - 1 + size - pos
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_vptr], vptr				; save old value of "vptr" variable
		mov		[s_base], base				; save "base" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		value, [iter]				; value = iter[0].key
		mov		vptr, iter					; vptr = iter
		jmp		.skip
;---[Search loop]--------------------------
.loop:	mov		param2, [iter]
		mov		param1, value
		call	qword [s_func]				; result = Compare (value, iter[0].key)
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0					; if (result cond 0)
		cmov#c	value, [iter]				;     value = iter[0].key
		cmov#c	vptr, iter					;     vptr = iter
.skip:	sub		iter, KSIZE					; iter--
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Normal exit branch]-------------------
		mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [vptr]
		movdqu	[data], temp				; data[0] = array[vptr]
		mov		result, [s_base]
		sub		result, vptr				; result = base - vptr
		mov		value, [s_value]			; restore old value of "value" variable
		mov		vptr, [s_vptr]				; restore old value of "vptr" variable
		add		stack, space				; restoring back the stack pointer
		shr		result, KSCALE				; return result
		ret
;---[Not found branch]---------------------
.ntfnd:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
}
Min:	MINMAX	g
Max:	MINMAX	l

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Key searching                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Single key searching                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
FindKey:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
pos		equ		rcx							; beginning position
count	equ		r8							; count of nodes to check
func	equ		r9							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
base	equ		r10							; base for pointer arithmetic
iter	equ		r11							; iterator value
size	equ		result						; object size
temp	equ		xmm0						; temporary register
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
		mov		base, size					; base = size
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
		sub		iter, KSIZE					; iter = array - 1
		add		base, iter					; base = array - 1 + size
		add		iter, size					; iter = array - 1 + size - pos
		mov		[s_base], base				; save "base" variable into the stack
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
		sub		iter, KSIZE					; iter--
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
		mov		result, [s_base]
		sub		result, iter				; result = base - iter
		add		stack, space				; restoring back the stack pointer
		shr		result, KSCALE				; return result
		ret

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Keys set searching                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
FindKeys:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
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
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_base	equ		stack + 0 * 8				; stack position of "base" variable
s_iter	equ		stack + 1 * 8				; stack position of "iter" variable
s_data	equ		stack + 2 * 8				; stack position of "data" variable
s_keys	equ		stack + 3 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 4 * 8				; stack position of "ksize" variable
s_count	equ		stack + 5 * 8				; stack position of "count" variable
s_func	equ		stack + 8 * 8				; stack position of "func" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [this + SIZE]			; get object size
		mov		base, size					; base = size
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
		sub		iter, KSIZE					; iter = array - 1
		add		base, iter					; base = array - 1 + size
		add		iter, size					; iter = array - 1 + size - pos
		mov		[s_base], base				; save "base" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param4, [s_func]
		mov		param3, [iter]
		mov		param2, [s_ksize]
		mov		param1, [s_keys]
		call	FindSet						; result = FindSet (keys, ksize, iter[0].key, func)
		mov		iter, [s_iter]				; get "iter" variable from the stack
		test	result, result				; if (result)
		jnz		.found						;     then go to found branch
		sub		iter, KSIZE					; iter--
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
		mov		result, [s_base]
		sub		result, iter				; result = base - iter
		add		stack, space				; restoring back the stack pointer
		shr		result, KSCALE				; return result
		ret

;==============================================================================;
;       Searching for differences                                              ;
;==============================================================================;
Diff:
;---[Parameters]---------------------------
tarray	equ		rdi							; pointer to target array of nodes
sarray	equ		rsi							; pointer to source array of nodes
size	equ		rdx							; count of elements to compare
func	equ		rcx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
status	equ		rdx							; compare status
stack	equ		rsp							; stack pointer
s_tarr	equ		stack + 0 * 8				; stack position of "tarray" variable
s_sarr	equ		stack + 1 * 8				; stack position of "sarray" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_tarr], tarray			; save "tarray" variable into the stack
		mov		[s_sarr], sarray			; save "sarray" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Check loop]---------------------------
.loop:	mov		param2, [sarray]
		mov		param1, [tarray]
		call	qword [s_func]				; result = Compare (tarray[0].key, sarray[0].key)
		test	result, result				; if (result != 0)
		jnz		.found						;     then go to found branch
		mov		sarray, [s_sarr]			; get "sarray" variable from the stack
		mov		tarray, [s_tarr]			; get "tarray" variable from the stack
		sub		sarray, KSIZE				; sarray--
		sub		tarray, KSIZE				; tarray--
		mov		[s_sarr], sarray			; save "sarray" variable into the stack
		mov		[s_tarr], tarray			; save "tarray" variable into the stack
		sub		qword [s_size], KSIZE		; size--
		jnz		.loop						; do while (size != 0)
;---[End of check loop]--------------------
		xor		status, status
		mov		result, NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret									; return {NOT_FOUND, 0}
;---[Found branch]-------------------------
.found:	mov		status, result
		mov		result, [s_tarr]
		add		stack, space				; restoring back the stack pointer
		ret									; return {tarray, status}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
FindDiff:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target stack object
data	equ		rsi							; pointer to data structure
source	equ		rdx							; pointer to source stack object
pos		equ		rcx							; beginning position
count	equ		r8							; count of nodes to check
func	equ		r9							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
base	equ		r10							; base for pointer arithmetic
iter	equ		r11							; iterator value
size	equ		result						; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_data	equ		stack + 0 * 8				; stack position of "data" variable
s_base	equ		stack + 1 * 8				; stack position of "base" variable
space	= 2 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [source + SIZE]		; get source object size
		sub		size, pos					; if (size <= pos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
		cmp		count, [this + SIZE]		; if (count > size)
		cmova	count, [this + SIZE]		;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		mov		base, [this + ARRAY]		; get pointer to target array of nodes
		mov		iter, [source + ARRAY]		; get pointer to source array of nodes
		add		base, [this + SIZE]
		add		iter, size
		sub		base, KSIZE					; base = this.array + this.size - 1
		sub		iter, KSIZE					; iter = source.array + source.size - 1 - pos
;---[Call check function]------------------
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_base], base				; save "base" variable into the stack
		mov		param4, func
		mov		param3, count
		mov		param2, iter
		mov		param1, base
		call	Diff						; result = Diff (this.array + this.size - 1, source.array + source.size - 1 - pos, count, func)
		mov		iter, result				; iter = result
		cmp		result, NOT_FOUND			; if (result != NOT_FOUND)
		jne		.found						;     then go to found branch
;---[Not found branch]---------------------
.ntfnd:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [iter]
		movdqu	[data], temp				; data[0] = array[iter]
		mov		result, [s_base]
		sub		result, iter				; result = base - iter
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
this	equ		rdi							; pointer to stack object
key		equ		rsi							; key to find
pos		equ		rdx							; beginning position
count	equ		rcx							; count of nodes to check
func	equ		r8							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
iter	equ		r11							; iterator value
size	equ		result						; object size
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
		sub		iter, KSIZE					; iter = array - 1
		add		iter, size					; iter = array - 1 + size - pos
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
		sub		iter, KSIZE					; iter--
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
this	equ		rdi							; pointer to stack object
keys	equ		rsi							; pointer to array of keys
ksize	equ		rdx							; size of array of keys
pos		equ		rcx							; beginning position
count	equ		r8							; count of nodes to check
func	equ		r9							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
iter	equ		r11							; iterator value
size	equ		result						; object size
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
		sub		iter, KSIZE					; iter = array - 1
		add		iter, size					; iter = array - 1 + size - pos
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
		sub		iter, KSIZE					; iter--
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total

;******************************************************************************;
;       Comparison of stacks                                                   ;
;******************************************************************************;
Compare:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target stack object
source	equ		rsi							; pointer to source stack object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
status	equ		rdx							; compare status
size	equ		rcx							; object size
tarray	equ		r8							; pointer to target array of nodes
sarray	equ		r9							; pointer to source array of nodes
great	equ		r10							; +1
less	equ		r11							; -1
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.equal						;     return 0
		cmp		qword [this + SIZE], 0		; if (this.size == 0)
		jz		.size						;     then go to size compare branch
		cmp		qword [source + SIZE], 0	; if (source.size == 0)
		jz		.size						;     then go to size compare branch
;---[Call check function]------------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		tarray, [this + ARRAY]
		add		tarray, [this + SIZE]
		sub		tarray, KSIZE				; tarray = this.array + this.size - 1
		mov		sarray, [source + ARRAY]
		add		sarray, [source + SIZE]
		sub		sarray, KSIZE				; sarray = source.array + source.size - 1
		mov		param4, func
		mov		param3, [this + SIZE]
		mov		param2, sarray
		mov		param1, tarray
		call	Diff						; result = Diff (this.array + this.size - 1, source.array + source.size - 1, this.size, func)
		cmp		result, NOT_FOUND			; if (result != NOT_FOUND)
		jne		.exit						;     return status
;---[Compare object size]------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
.size:	add		stack, space				; restoring back the stack pointer
		mov		size, [this + SIZE]
		xor		result, result				; result = 0
		mov		great, +1					; great = +1
		mov		less, -1					; less = -1
		cmp		size, [source + SIZE]
		cmovg	result, great				; if (this.size > source.size), return great
		cmovl	result, less				; if (this.size < source.size), return less
		ret									; if (this.size == source.size), return equal
;---[Normal exit branch]-------------------
.exit:	add		stack, space				; restoring back the stack pointer
		mov		result, status				; return status
		ret
;---[Equal b-trees branch]-----------------
.equal:	add		stack, space				; restoring back the stack pointer
		xor		result, result				; return 0
		ret

;******************************************************************************;
;       Check for equality                                                     ;
;******************************************************************************;
IsEqual:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target stack object
source	equ		rsi							; pointer to source stack object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		rax							; object size
tarray	equ		r8							; pointer to target array of nodes
sarray	equ		r9							; pointer to source array of nodes
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.exit						;     return true
		mov		size, [this + SIZE]
		cmp		size, [source + SIZE]		; if (this.size != source.size)
		jne		.exit						;     return false
		test	size, size					; if (size == 0)
		jz		.exit						;     return true
;---[Call check function]------------------
		mov		tarray, [this + ARRAY]
		add		tarray, [this + SIZE]
		sub		tarray, KSIZE				; tarray = this.array + this.size - 1
		mov		sarray, [source + ARRAY]
		add		sarray, [source + SIZE]
		sub		sarray, KSIZE				; sarray = source.array + source.size - 1
		mov		param4, func
		mov		param3, [this + SIZE]
		mov		param2, sarray
		mov		param1, tarray
		call	Diff						; result = Diff (this.array + this.size - 1, source.array + source.size - 1, this.size, func)
		cmp		result, NOT_FOUND			; if (result == NOT_FOUND)
.exit:	sete	status
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Stack properties                                                       ;
;******************************************************************************;
GetCapacity:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + CAPACITY]	; get object capacity
		shr		result, KSCALE
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetSize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + SIZE]		; get object size
		shr		result, KSCALE
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IsEmpty:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to stack object
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
