;                                                                      Deque.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                        DOUBLE-ENDED QUEUE DATA TYPE                         #
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
public	Constructor			as	'Deque_InitDeque'
public	Constructor			as	'_ZN5DequeC1Em'

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
public	CopyConstructor		as	'Deque_CopyDeque'
public	CopyConstructor		as	'_ZN5DequeC1ERKS_'

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
public	Destructor			as	'Deque_FreeDeque'
public	Destructor			as	'_ZN5DequeD1Ev'

;******************************************************************************;
;       Copying elements                                                       ;
;******************************************************************************;

; Into deque head
public	CopyHead			as	'Deque_CopyHead'
public	CopyHead			as	'_ZN5Deque8CopyHeadEmPKS_mm'

; Into deque tail
public	CopyTail			as	'Deque_CopyTail'
public	CopyTail			as	'_ZN5Deque8CopyTailEmPKS_mm'

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;

; Into deque head
public	MoveHead			as	'Deque_MoveHead'
public	MoveHead			as	'_ZN5Deque8MoveHeadEmPS_mm'

; Into deque tail
public	MoveTail			as	'Deque_MoveTail'
public	MoveTail			as	'_ZN5Deque8MoveTailEmPS_mm'

;******************************************************************************;
;       Addition of element                                                    ;
;******************************************************************************;

; Into deque head
public	PushIntoHead		as	'Deque_PushIntoHead'
public	PushIntoHead		as	'_ZN5Deque12PushIntoHeadEPK6data_t'

; Into deque tail
public	PushIntoTail		as	'Deque_PushIntoTail'
public	PushIntoTail		as	'_ZN5Deque12PushIntoTailEPK6data_t'

;******************************************************************************;
;       Removal of element                                                  ;
;******************************************************************************;

; From deque head
public	PopFromHead			as	'Deque_PopFromHead'
public	PopFromHead			as	'_ZN5Deque11PopFromHeadEP6data_t'

; From deque tail
public	PopFromTail			as	'Deque_PopFromTail'
public	PopFromTail			as	'_ZN5Deque11PopFromTailEP6data_t'

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;

; Into deque head
public	InsertHead			as	'Deque_InsertHead'
public	InsertHead			as	'_ZN5Deque10InsertHeadEPK6data_tm'

; Into deque tail
public	InsertTail			as	'Deque_InsertTail'
public	InsertTail			as	'_ZN5Deque10InsertTailEPK6data_tm'

;******************************************************************************;
;       Extraction of element                                                  ;
;******************************************************************************;

; From deque head
public	ExtractHead			as	'Deque_ExtractHead'
public	ExtractHead			as	'_ZN5Deque11ExtractHeadEP6data_tm'

; From deque tail
public	ExtractTail			as	'Deque_ExtractTail'
public	ExtractTail			as	'_ZN5Deque11ExtractTailEP6data_tm'

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;

; Set head element
public	SetHead				as	'Deque_SetHead'
public	SetHead				as	'_ZN5Deque7SetHeadEPK6data_tm'

; Set tail element
public	SetTail				as	'Deque_SetTail'
public	SetTail				as	'_ZN5Deque7SetTailEPK6data_tm'

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;

; Get head element
public	GetHead				as	'Deque_GetHead'
public	GetHead				as	'_ZNK5Deque7GetHeadEP6data_tm'

; Get tail element
public	GetTail				as	'Deque_GetTail'
public	GetTail				as	'_ZNK5Deque7GetTailEP6data_tm'

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;

; Replace head element
public	ReplaceHead			as	'Deque_ReplaceHead'
public	ReplaceHead			as	'_ZN5Deque11ReplaceHeadEP6data_tPKS0_m'

; Replace tail element
public	ReplaceTail			as	'Deque_ReplaceTail'
public	ReplaceTail			as	'_ZN5Deque11ReplaceTailEP6data_tPKS0_m'

;******************************************************************************;
;       Changing elements order                                                ;
;******************************************************************************;

; Reversing elements order
public	ReverseHead			as	'Deque_ReverseHead'
public	ReverseTail			as	'Deque_ReverseTail'
public	ReverseHead			as	'_ZN5Deque11ReverseHeadEmm'
public	ReverseTail			as	'_ZN5Deque11ReverseTailEmm'

; Swapping elements
public	SwapHead			as	'Deque_SwapHead'
public	SwapTail			as	'Deque_SwapTail'
public	SwapHead			as	'_ZN5Deque8SwapHeadEm'
public	SwapTail			as	'_ZN5Deque8SwapTailEm'

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;

; Minimum value
public	MinHead				as	'Deque_MinHead'
public	MinTail				as	'Deque_MinTail'
public	MinHead				as	'_ZNK5Deque7MinHeadEP6data_tmmPFx5adt_tS2_E'
public	MinTail				as	'_ZNK5Deque7MinTailEP6data_tmmPFx5adt_tS2_E'

; Maximum value
public	MaxHead				as	'Deque_MaxHead'
public	MaxTail				as	'Deque_MaxTail'
public	MaxHead				as	'_ZNK5Deque7MaxHeadEP6data_tmmPFx5adt_tS2_E'
public	MaxTail				as	'_ZNK5Deque7MaxTailEP6data_tmmPFx5adt_tS2_E'

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

; Single key searching
public	FindKeyHead			as	'Deque_FindKeyHead'
public	FindKeyTail			as	'Deque_FindKeyTail'
public	FindKeyHead			as	'_ZNK5Deque11FindKeyHeadEP6data_t5adt_tmmPFxS2_S2_E'
public	FindKeyTail			as	'_ZNK5Deque11FindKeyTailEP6data_t5adt_tmmPFxS2_S2_E'

; Keys set searching
public	FindKeysHead		as	'Deque_FindKeysHead'
public	FindKeysTail		as	'Deque_FindKeysTail'
public	FindKeysHead		as	'_ZNK5Deque12FindKeysHeadEP6data_tPK5adt_tmmmPFxS2_S2_E'
public	FindKeysTail		as	'_ZNK5Deque12FindKeysTailEP6data_tPK5adt_tmmmPFxS2_S2_E'

;******************************************************************************;
;       Searching for differences                                              ;
;******************************************************************************;
public	FindDiffHead		as	'Deque_FindDiffHead'
public	FindDiffTail		as	'Deque_FindDiffTail'
public	FindDiffHead		as	'_ZNK5Deque12FindDiffHeadEP6data_tmPKS_mmPFx5adt_tS4_E'
public	FindDiffTail		as	'_ZNK5Deque12FindDiffTailEP6data_tmPKS_mmPFx5adt_tS4_E'

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

; Single key counting
public	CountKeyHead		as	'Deque_CountKeyHead'
public	CountKeyTail		as	'Deque_CountKeyTail'
public	CountKeyHead		as	'_ZNK5Deque12CountKeyHeadE5adt_tmmPFxS0_S0_E'
public	CountKeyTail		as	'_ZNK5Deque12CountKeyTailE5adt_tmmPFxS0_S0_E'

; Keys set counting
public	CountKeysHead		as	'Deque_CountKeysHead'
public	CountKeysTail		as	'Deque_CountKeysTail'
public	CountKeysHead		as	'_ZNK5Deque13CountKeysHeadEPK5adt_tmmmPFxS0_S0_E'
public	CountKeysTail		as	'_ZNK5Deque13CountKeysTailEPK5adt_tmmmPFxS0_S0_E'

;******************************************************************************;
;       Comparison of deques                                                   ;
;******************************************************************************;
public	Compare				as	'Deque_Compare'
public	Compare				as	'_ZNK5Deque7CompareEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       Check for equality                                                     ;
;******************************************************************************;
public	IsEqual				as	'Deque_IsEqual'
public	IsEqual				as	'_ZNK5Deque7IsEqualEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       Deque properties                                                       ;
;******************************************************************************;

; Deque capacity
public	GetCapacity			as	'Deque_Capacity'
public	GetCapacity			as	'_ZNK5Deque8CapacityEv'

; Deque size
public	GetSize				as	'Deque_Size'
public	GetSize				as	'_ZNK5Deque4SizeEv'

; Check if deque is empty
public	IsEmpty				as	'Deque_IsEmpty'
public	IsEmpty				as	'_ZNK5Deque7IsEmptyEv'

; Check if deque is initialized
public	IsInit				as	'Deque_IsInit'
public	IsInit				as	'_ZNK5Deque6IsInitEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
KSCALE		= 4								; Key scale factor
KSIZE		= 1 shl KSCALE					; Size of key (bytes)
MINCAP		= 1 shl	PSCALE					; Min capacity of deque object

;==============================================================================;
;       Offsets inside deque object                                            ;
;==============================================================================;
ARRAY		= 0 * 8							; Offset of array pointer
CAPACITY	= 1 * 8							; Offset of object capacity field
SIZE		= 2 * 8							; Offset of object size field
HEAD		= 3 * 8							; Offset of head pointer field
TAIL		= 4 * 8							; Offset of tail pointer field

;******************************************************************************;
;       Extending deque capacity                                               ;
;******************************************************************************;
Extend:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
newcap	equ		rsi							; new object capacity
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		rax							; pointer to array of nodes
fptr	equ		rax							; pointer to call external function
head	equ		r8							; pointer to deque head
tail	equ		r9							; pointer to deque tail
size1	equ		r10							; size of first sequence
size2	equ		r11							; size of second sequence
oldcap	equ		rcx							; old object capacity
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
		mov		oldcap, [this + CAPACITY]	; get old capacity of the deque
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], newcap	; this.capacity = newcap
		cmp		qword [this + SIZE], 0		; if (size == 0)
		je		.empty						;     then set empty values
		mov		head, [this + HEAD]			; get pointer to deque head
		mov		tail, [this + TAIL]			; get pointer to deque head
		cmp		head, tail					; if (head <= tail)
		jbe		.exit						;     then go to exit
;---[Move deque content]-------------------
		mov		size1, tail
		mov		size2, oldcap
		add		size1, KSIZE				; size1 = tail + 1
		sub		size2, head					; size2 = oldcap - head
		cmp		size1, size2				; if (size1 > size2)
		ja		.else						;     then go to else branch
;---[if size1 <= size2]--------------------
		add		[this + TAIL], oldcap		; this.tail += oldcap
		mov		param3, size1
		mov		param2, array
		lea		param1, [array + oldcap]
		mov		fptr, Copy
		call	fptr						; call Copy (array + oldcap, array, size1)
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[else]---------------------------------
.else:	sub		newcap, oldcap				; newcap -= oldcap
		add		array, head					; array += head
		add		[this + HEAD], newcap		; this.head += newcap
		mov		param3, size2
		mov		param2, array
		lea		param1, [array + newcap]
		mov		fptr, Copy
		call	fptr						; call Copy (array + newcap, array, size2)
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Clear the deque if empty]-------------
.empty:	sub		newcap, KSIZE
		mov		[this + TAIL], newcap		; tail = newcap - 1
.exit:	mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Move elements                                                          ;
;******************************************************************************;
macro	MOVE	cmd
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
target	equ		rsi							; target iterator
source	equ		rdx							; source iterator
mask	equ		rcx							; mask is applied to iterators
size	equ		r8							; count of elements to move
;---[Internal variables]-------------------
temp	equ		xmm0						; temporary register
;---[Moving loop]--------------------------
.loop:	movdqa	temp, [array + source]
		movdqa	[array + target], temp		; array[target] = array[source]
		cmd		source, KSIZE				; change source iterator
		cmd		target, KSIZE				; change target iterator
		and		source, mask				; source &= mask
		and		target, mask				; target &= mask
		sub		size, KSIZE					; size -= KSIZE
		jnz		.loop						; do while (size != 0)
;---[End of moving loop]-------------------
		ret
}
MoveFwd:	MOVE	add
MoveBwd:	MOVE	sub

;******************************************************************************;
;       Copy elements                                                          ;
;******************************************************************************;
macro	COPY	cmd
{
;---[Parameters]---------------------------
tarray	equ		rdi							; pointer to target array of nodes
sarray	equ		rsi							; pointer to source array of nodes
target	equ		rdx							; target iterator
source	equ		rcx							; source iterator
tmask	equ		r8							; mask is applied to target iterator
smask	equ		r9							; mask is applied to source iterator
size	equ		r10							; count of elements to copy
;---[Internal variables]-------------------
temp	equ		xmm0						; temporary register
;---[Moving loop]--------------------------
.loop:	movdqa	temp, [sarray + source]
		movdqa	[tarray + target], temp		; tarray[target] = sarray[source]
		cmd		source, KSIZE				; change source iterator
		cmd		target, KSIZE				; change target iterator
		and		source, tmask				; source &= tmask
		and		target, smask				; target &= smask
		sub		size, KSIZE					; size -= KSIZE
		jnz		.loop						; do while (size != 0)
;---[End of moving loop]-------------------
		ret
}
CopyFwd:	COPY	add
CopyBwd:	COPY	sub

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
Constructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
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
		sub		cap, KSIZE
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + HEAD], 0		; this.head = 0
		mov		qword [this + TAIL], cap	; this.tail = cap - KSIZE
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + HEAD], 0		; this.head = 0
		mov		qword [this + TAIL], -KSIZE	; this.tail = -KSIZE
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
CopyConstructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target deque object
source	equ		rsi							; pointer to source deque object
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
		mov		temp, [source + HEAD]
		mov		[this + HEAD], temp			; this.head = source.head
		mov		temp, [source + TAIL]
		mov		[this + TAIL], temp			; this.tail = source.tail
;---[Copy content of nodes]----------------
		mov		param3, [source + CAPACITY]
		mov		param2, [source + ARRAY]
		mov		param1, array
		mov		fptr, Copy
		add		stack, space				; restoring back the stack pointer
		jmp		fptr						; return Array::Copy (this.array, source.array, source.capacity)
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + HEAD], 0		; this.head = 0
		mov		qword [this + TAIL], -KSIZE	; this.tail = -1
.exit:	add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
Destructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
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
		mov		qword [this + HEAD], 0		; this.head = 0
		mov		qword [this + TAIL], -KSIZE	; this.tail = -1
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Copying elements                                                       ;
;******************************************************************************;
macro	COPY_MOVE	cmd1, cmd2, MoveFunc1, MoveFunc2, CopyFunc, offst1, offst2, move
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target deque object
tpos	equ		rsi							; position into target deque
source	equ		rdx							; pointer to source deque object
spos	equ		rcx							; position into source deque
count	equ		r8							; count of nodes to copy
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
ptr		equ		rax							; temporary pointer
size	equ		r9							; object size
iter	equ		r10							; iterator value
cap		equ		r11							; object capacity
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_tpos	equ		stack + 1 * 8				; stack position of "tpos" variable
s_src	equ		stack + 2 * 8				; stack position of "source" variable
s_spos	equ		stack + 3 * 8				; stack position of "spos" variable
s_count	equ		stack + 4 * 8				; stack position of "count" variable
s_tsize	equ		stack + 5 * 8				; stack position of "tsize" variable
s_ssize	equ		stack + 6 * 8				; stack position of "ssize" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.error						;     then go to error branch
;---[Check target position]----------------
		shl		tpos, KSCALE
		mov		size, [this + SIZE]			; get target object size
		sub		size, tpos					; if (size < tpos)
		jb		.error						;     then go to error branch
		mov		[s_tsize], size				; tsize = size - tpos
;---[Check source position]----------------
		shl		spos, KSCALE
		mov		size, [source + SIZE]		; get source object size
		sub		size, spos					; if (size <= spos)
		jbe		.error						;     then go to error branch
		mov		[s_ssize], size				; ssize = size - spos
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_tpos], tpos				; save "tpos" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_spos], spos				; save "spos" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		add		count, [this + SIZE]		; count += size
	Capacity	count, size, MINCAP			; compute new capacity of target object
		cmp		count, [this + CAPACITY]	; if (count > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Move elements in target deque]--------
.back:	mov		this, [s_this]				; get "this" variable from the stack
		mov		tpos, [s_tpos]				; get "tpos" variable from the stack
		mov		count, [s_count]			; get "count" variable from the stack
		mov		size, [s_tsize]				; get "tsize" variable from the stack
		mov		cap, [this + CAPACITY]
		sub		cap, 1						; cap = this.capacity - 1
		cmp		size, tpos					; if (size < tpos)
		jb		.else1						;     then go to else branch
;---[if size >= tpos]----------------------
		mov		iter, [this + offst1]		; get iterator value
		mov		ptr, iter					; ptr = iter
		cmd1	iter, count
		and		iter, cap					; iter = (iter cmd1 count) & cap
		mov		[this + offst1], iter		; update iterator value
		add		[this + SIZE], count		; this.size += count
		test	tpos, tpos					; if (tpos == 0)
		jz		.copy						;     then skip following code
		mov		param5, tpos
		mov		param4, cap
		mov		param3, ptr
		mov		param2, iter
		mov		param1, [this + ARRAY]
		call	MoveFunc1					; call MoveFunc1 (array, iter cmd1 count, iter, cap, tpos)
		jmp		.copy
;---[else]---------------------------------
.else1:	mov		iter, [this + offst2]		; get iterator value
		mov		ptr, iter					; ptr = iter
		cmd2	iter, count
		and		iter, cap					; iter = (iter cmd2 count) & cap
		mov		[this + offst2], iter		; update iterator value
		add		[this + SIZE], count		; this.size += count
		test	size, size					; if (size == 0)
		jz		.copy						;     then skip following code
		mov		param5, size
		mov		param4, cap
		mov		param3, ptr
		mov		param2, iter
		mov		param1, [this + ARRAY]
		call	MoveFunc2					; call MoveFunc2 (array, iter cmd2 count, iter, cap, size)
;---[Insert elements into target deque]----
.copy:	mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		mov		param6, [source + CAPACITY]
		sub		param6, 1
		mov		param4, [source + offst1]
		cmd2	param4, [s_spos]
		and		param4, param6
		mov		param2, [source + ARRAY]
		mov		param5, [this + CAPACITY]
		sub		param5, 1
		mov		param3, [this + offst1]
		cmd2	param3, [s_tpos]
		and		param3, param5
		mov		param1, [this + ARRAY]
		mov		param7, [s_count]
		call	CopyFunc					; call CopyFunc (this.array, source.array, this.iter cmd2 tpos, source.iter cmd2 spos, this.capacity - 1, source.capacity - 1, count)
;---[Remove elements from source deque]----
if move
		mov		source, [s_src]				; get "source" variable from the stack
		mov		spos, [s_spos]				; get "spos" variable from the stack
		mov		count, [s_count]			; get "count" variable from the stack
		mov		size, [s_ssize]				; get "ssize" variable from the stack
		mov		cap, [source + CAPACITY]
		sub		cap, 1						; cap = source.capacity - 1
		sub		size, count					; size -= count
		sub		[source + SIZE], count		; source.size -= count
		jz		.empty						; if (source.size == 0), then go to empty branch
		mov		iter, [source + offst1]
		cmd2	iter, spos					; iter = (iter cmd2 spos)
		cmp		size, spos					; if (size < spos)
		jb		.else2						;     then go to else branch
;---[if size >= spos]----------------------
		cmd1	iter, KSIZE
		and		iter, cap					; iter = (iter cmd1 KSIZE) & cap
		mov		ptr, [source + offst1]
		cmd2	ptr, count
		and		ptr, cap					; ptr = (ptr cmd2 count) & cap
		mov		[source + offst1], ptr		; update iterator value
		test	spos, spos					; if (spos == 0)
		jz		.exit						;     then skip following code
		mov		param5, spos
		mov		param4, cap
		mov		param3, iter
		mov		param2, iter
		cmd2	param2, count
		and		param2, cap
		mov		param1, [source + ARRAY]
		call	MoveFunc2					; MoveFunc2 (source.array, iter cmd2 count, iter, cap, spos)
		jmp		.exit
;---[else]---------------------------------
.else2:	and		iter, cap					; iter = iter & cap
		mov		ptr, [source + offst2]
		cmd1	ptr, count
		and		ptr, cap					; ptr = (ptr cmd1 count) & cap
		mov		[source + offst2], ptr		; update iterator value
		test	size, size					; if (size == 0)
		jz		.exit						;     then skip following code
		mov		param5, size
		mov		param4, cap
		mov		param3, iter
		cmd2	param3, count
		and		param3, cap
		mov		param2, iter
		mov		param1, [source + ARRAY]
		call	MoveFunc1					; MoveFunc1 (source.array, iter, iter cmd2 count, cap, size)
end if
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_count]			; get "count" variable from the stack
		shr		result, KSCALE				; return count
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, count
		call	Extend						; status = this.Extend (size)
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret
;---[Clear the deque if empty]-------------
.empty:	sub		cap, KSIZE - 1
		mov		qword [source + HEAD], 0	; source.head = 0
		mov		qword [source + TAIL], cap	; source.tail = cap - KSIZE
		mov		result, [s_count]			; get "count" variable from the stack
		shr		result, KSCALE				; return count
		add		stack, space				; restoring back the stack pointer
		ret
}
CopyHead:	COPY_MOVE	sub, add, MoveFwd, MoveBwd, CopyFwd, HEAD, TAIL, 0
CopyTail:	COPY_MOVE	add, sub, MoveBwd, MoveFwd, CopyBwd, TAIL, HEAD, 0

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;
MoveHead:	COPY_MOVE	sub, add, MoveFwd, MoveBwd, CopyFwd, HEAD, TAIL, 1
MoveTail:	COPY_MOVE	add, sub, MoveBwd, MoveFwd, CopyBwd, TAIL, HEAD, 1

;******************************************************************************;
;       Addition of element                                                    ;
;******************************************************************************;
macro	PUSH_DATA	cmd, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		rdx							; pointer to array of nodes
iter	equ		rcx							; iterator value
cap		equ		rax							; object capacity
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		cap, [this + CAPACITY]		; get object capacity
;---[Check capacity]-----------------------
		cmp		[this + SIZE], cap			; if (size == cap)
		je		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	sub		cap, 1						; cap -= 1
		mov		iter, [this + offst]		; get iterator value
		cmd		iter, KSIZE					; change iterator value
		and		iter, cap					; iter &= cap
		movdqu	temp, [data]
		movdqa	[array + iter], temp		; array[iter] = data[0]
		add		qword [this + SIZE], KSIZE	; size++
		mov		[this + offst], iter		; update iterator value
		mov		status, 1					; return true
		ret
;---[Extend object capacity]---------------
.ext:	sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		param2, cap
		shl		param2, 1
		cmp		param2, cap					; if (newcapacity <= capacity)
		setnbe	status						;     then return false
		jbe		.exit
		call	Extend						; status = this.Extend (cap * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		cap, [this + CAPACITY]		; get object capacity
.exit:	add		stack, space				; restoring back the stack pointer
		test	status, status
		jnz		.back						; if (status), then go back
		ret									;              else return false
}
PushIntoHead:	PUSH_DATA	sub, HEAD
PushIntoTail:	PUSH_DATA	add, TAIL

;******************************************************************************;
;       Removal of element                                                     ;
;******************************************************************************;
macro	POP_DATA	cmd, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		rdx							; pointer to array of nodes
iter	equ		rcx							; iterator value
cap		equ		rax							; object capacity
temp	equ		xmm0						; temporary register
;------------------------------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		cap, [this + CAPACITY]		; get object capacity
		mov		iter, [this + offst]		; get iterator value
		sub		cap, 1						; cap -= 1
		movdqa	temp, [array + iter]
		movdqu	[data], temp				; data[0] = array[iter]
		sub		qword [this + SIZE], KSIZE	; if (size == 0)
		jz		.empty						;     then set empty values
		cmd		iter, KSIZE					; change iterator value
		and		iter, cap					; iter &= cap
		mov		[this + offst], iter		; update iterator value
		mov		status, 1					; return true
		ret
;---[Clear the deque if empty]-------------
.empty:	sub		cap, KSIZE - 1
		mov		qword [this + HEAD], 0		; this.head = 0
		mov		qword [this + TAIL], cap	; this.tail = cap - KSIZE
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
PopFromHead:	POP_DATA	add, HEAD
PopFromTail:	POP_DATA	sub, TAIL

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
macro	INSERT	cmd1, cmd2, MoveFunc1, MoveFunc2, offst1, offst2
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position where to insert element
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		r9							; iterator value
cap		equ		r10							; object capacity
size	equ		r11							; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
s_iter	equ		stack + 3 * 8				; stack position of "iter" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		shl		pos, KSCALE
		mov		cap, [this + CAPACITY]		; get object capacity
		mov		size, [this + SIZE]			; get object size
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Check capacity]-----------------------
		cmp		size, cap					; if (size == cap)
		je		.ext						;     then try to extend object capacity
;---[Check position]-----------------------
.back:	sub		size, pos					; if (size < pos)
		jb		.error						;     then go to error branch
;---[Normal execution branch]--------------
		sub		cap, 1						; cap--
		cmp		size, pos					; if (size < pos)
		jb		.else						;     then go to else branch
;---[if size >= pos]-----------------------
		mov		iter, [this + offst1]		; get iterator value
		cmd1	iter, KSIZE
		and		iter, cap					; iter = (iter cmd1 KSIZE) & cap
		mov		[this + offst1], iter		; update iterator value
		cmd2	iter, pos
		and		iter, cap					; (iter cmd2 pos) & cap
		add		iter, [this + ARRAY]		; iter += array
		mov		[s_iter], iter				; save "iter" variable into the stack
		test	pos, pos					; if (pos != 0)
		jnz		.move1						;     then move elements
.back1:	movdqu	temp, [data]
		movdqa	[iter], temp				; iter[0] = data[0]
		add		qword [this + SIZE], KSIZE	; this.size++
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[else]---------------------------------
.else:	mov		iter, [this + offst2]		; get iterator value
		cmd2	iter, KSIZE
		and		iter, cap					; iter = (iter cmd2 KSIZE) & cap
		mov		[this + offst2], iter		; update iterator value
		cmd1	iter, size
		and		iter, cap					; (iter cmd1 size) & cap
		add		iter, [this + ARRAY]		; iter += array
		mov		[s_iter], iter				; save "iter" variable into the stack
		test	size, size					; if (size != 0)
		jnz		.move2						;     then move elements
.back2:	movdqu	temp, [data]
		movdqa	[iter], temp				; iter[0] = data[0]
		add		qword [this + SIZE], KSIZE	; this.size++
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, cap
		shl		param2, 1
		cmp		param2, cap					; if (newcapacity <= cap)
		jbe		.error						;     then go to error branch
		call	Extend						; status = this.Extend (cap * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
		mov		cap, [this + CAPACITY]		; get object capacity
		mov		size, [this + SIZE]			; get object size
		test	status, status
		jnz		.back						; if (status), then go back
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Move elements branch #1]--------------
.move1:	mov		iter, [this + offst1]		; get iterator value
		mov		param5, pos
		mov		param4, cap
		mov		param3, iter
		cmd2	param3, KSIZE
		and		param3, cap
		mov		param2, iter
		mov		param1, [this + ARRAY]
		call	MoveFunc1					; call MoveFunc1 (array, iter, iter cmd2 KSIZE, cap, pos)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		jmp		.back1						; go back
;---[Move elements branch #2]--------------
.move2:	mov		iter, [this + offst2]		; get iterator value
		mov		param5, size
		mov		param4, cap
		mov		param3, iter
		cmd1	param3, KSIZE
		and		param3, cap
		mov		param2, iter
		mov		param1, [this + ARRAY]
		call	MoveFunc2					; call MoveFunc2 (array, iter, iter cmd1 KSIZE, cap, size)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		jmp		.back2						; go back
}
InsertHead:	INSERT	sub, add, MoveFwd, MoveBwd, HEAD, TAIL
InsertTail:	INSERT	add, sub, MoveBwd, MoveFwd, TAIL, HEAD

;******************************************************************************;
;       Extraction of element                                                  ;
;******************************************************************************;
macro	EXTRACT	cmd1, cmd2, MoveFunc1, MoveFunc2, offst1, offst2
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to extract
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		r9							; iterator value
cap		equ		r10							; object capacity
size	equ		r11							; object size
ptr		equ		rax							; temporary pointer
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		cap, [this + CAPACITY]		; get object capacity
		mov		size, [this + SIZE]			; get object size
		sub		size, KSIZE					; size--
		sub		size, pos					; if (size < pos)
		jl		.error						;     then go to error branch
;---[Normal execution branch]--------------
		sub		cap, 1						; cap -= 1
		mov		iter, [this + offst1]		; get iterator value
		cmd1	iter, pos
		and		iter, cap					; iter = (iter cmd1 pos) & cap
		mov		ptr, iter					; ptr = iter
		add		iter, [this + ARRAY]		; iter += array
		movdqa	temp, [iter]
		movdqu	[data], temp				; data[0] = iter[0]
		sub		qword [this + SIZE], KSIZE	; this.size--
		jz		.empty						; if (this.size == 0), then go to empty branch
		cmp		size, pos					; if (size < pos)
		jb		.else						;     then go to else branch
;---[if size >= pos]-----------------------
		mov		iter, [this + offst1]		; get iterator value
		cmd1	iter, KSIZE
		and		iter, cap					; iter = (iter cmd1 KSIZE) & cap
		mov		[this + offst1], iter		; update iterator value
		test	pos, pos					; if (pos != 0)
		jnz		.move1						;     then move elements
		mov		status, 1					; return true
		ret
;---[else]---------------------------------
.else:	mov		iter, [this + offst2]		; get iterator value
		cmd2	iter, KSIZE
		and		iter, cap					; iter = (iter cmd2 KSIZE) & cap
		mov		[this + offst2], iter		; update iterator value
		test	size, size					; if (size != 0)
		jnz		.move2						;     then move elements
		mov		status, 1					; return true
		ret
;---[Clear the deque if empty]-------------
.empty:	sub		cap, KSIZE - 1
		mov		qword [this + HEAD], 0		; this.head = 0
		mov		qword [this + TAIL], cap	; this.tail = cap - KSIZE
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
;---[Move elements branch #1]--------------
.move1:	mov		param5, pos
		mov		param4, cap
		mov		param3, ptr
		cmd2	param3, KSIZE
		and		param3, cap
		mov		param2, ptr
		mov		param1, [this + ARRAY]
		call	MoveFunc1					; call MoveFunc1 (array, ptr, ptr cmd2 KSIZE, cap, pos)
		mov		status, 1					; return true
		ret
;---[Move elements branch #2]--------------
.move2:	mov		param5, size
		mov		param4, cap
		mov		param3, ptr
		cmd1	param3, KSIZE
		and		param3, cap
		mov		param2, ptr
		mov		param1, [this + ARRAY]
		call	MoveFunc2					; call MoveFunc2 (array, ptr, ptr cmd1 KSIZE, cap, size)
		mov		status, 1					; return true
		ret
}
ExtractHead:	EXTRACT	add, sub, MoveBwd, MoveFwd, HEAD, TAIL
ExtractTail:	EXTRACT	sub, add, MoveFwd, MoveBwd, TAIL, HEAD

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
macro	SET_ELEMENT		cmd, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to set
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rcx							; iterator value
cap		equ		rax							; object capacity
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		cap, [this + CAPACITY]		; get object capacity
		cmp		[this + SIZE], pos			; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		iter, [this + offst]		; get iterator value
		sub		cap, 1						; cap -= 1
		cmd		iter, pos					; change iterator value
		and		iter, cap					; iter &= cap
		add		iter, [this + ARRAY]		; iter += array
		movdqu	temp, [data]
		movdqa	[iter], temp				; array[iter] = data[0]
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
SetHead:	SET_ELEMENT		add, HEAD
SetTail:	SET_ELEMENT		sub, TAIL

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;
macro	GET_ELEMENT		cmd, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to get
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rcx							; iterator value
cap		equ		rax							; object capacity
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		cap, [this + CAPACITY]		; get object capacity
		cmp		[this + SIZE], pos			; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		iter, [this + offst]		; get iterator value
		sub		cap, 1						; cap -= 1
		cmd		iter, pos					; change iterator value
		and		iter, cap					; iter &= cap
		add		iter, [this + ARRAY]		; iter += array
		movdqa	temp, [iter]
		movdqu	[data], temp				; data[0] = array[uter]
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
GetHead:	GET_ELEMENT		add, HEAD
GetTail:	GET_ELEMENT		sub, TAIL

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;
macro	REPLACE_ELEMENT		cmd, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
odata	equ		rsi							; pointer to old data structure
ndata	equ		rdx							; pointer to new data structure
pos		equ		rcx							; position of element to replace
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		r8							; iterator value
cap		equ		rax							; object capacity
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		cap, [this + CAPACITY]		; get object capacity
		cmp		[this + SIZE], pos			; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		iter, [this + offst]		; get iterator value
		sub		cap, 1						; cap -= 1
		cmd		iter, pos					; change iterator value
		and		iter, cap					; iter &= cap
		add		iter, [this + ARRAY]		; iter += array
		movdqa	temp, [iter]
		movdqu	[odata], temp				; odata[0] = array[uter]
		movdqu	temp, [ndata]
		movdqa	[iter], temp				; array[iter] = ndata[0]
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
ReplaceHead:	REPLACE_ELEMENT		add, HEAD
ReplaceTail:	REPLACE_ELEMENT		sub, TAIL

;******************************************************************************;
;       Changing elements order                                                ;
;******************************************************************************;

;==============================================================================;
;       Reversing elements order                                               ;
;==============================================================================;
macro	REVERSE		cmd, dir1, dir2, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
pos		equ		rsi							; beginning position
count	equ		rdx							; count of nodes to reverse
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
iter1	equ		r9							; first iterator value
iter2	equ		r10							; second iterator value
cap		equ		rcx							; object capacity
size	equ		result						; object size
temp1	equ		xmm0						; temporary register #1
temp2	equ		xmm1						; temporary register #2
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		cap, [this + CAPACITY]		; get object capacity
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
		mov		iter1, [this + offst]		; get iterator value
		sub		cap, 1						; cap -= 1
		cmd		iter1, pos					; change first iterator value
		and		iter1, cap					; iter1 &= cap
		mov		iter2, iter1				; iter2 = iter1
		cmd		iter2, count				; change second iterator value
		shr		count, KSCALE + 1			; count >>= 1
;---[Order reversing loop]-----------------
.loop:	dir2	iter2, KSIZE				; change second iterator value
		and		iter2, cap					; iter2 &= cap
		movdqa	temp1, [array + iter1]		; temp1 = array[iter1]
		movdqa	temp2, [array + iter2]		; temp2 = array[iter2]
		movdqa	[array + iter1], temp2		; array[iter1] = temp2
		movdqa	[array + iter2], temp1		; array[iter2] = temp1
		dir1	iter1, KSIZE				; change first iterator value
		and		iter1, cap					; iter1 &= cap
		sub		count, 1					; count--
		jnz		.loop						; do while (count != 0)
;---[Normal exit branch]-------------------
.exit:	shr		result, KSCALE				; return result
		ret
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		ret
}
ReverseHead:	REVERSE	add, add, sub, HEAD
ReverseTail:	REVERSE	sub, sub, add, TAIL

;==============================================================================;
;       Swapping elements                                                      ;
;==============================================================================;
macro	SWAP		cmd, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
pos1	equ		rsi							; position of first element to swap
pos2	equ		rdx							; position of second element to swap
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
iter1	equ		r9							; first iterator value
iter2	equ		r10							; second iterator value
cap		equ		rcx							; object capacity
size	equ		result						; object size
temp1	equ		xmm0						; temporary register #1
temp2	equ		xmm1						; temporary register #2
;------------------------------------------
		shl		pos1, KSCALE
		shl		pos2, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		cap, [this + CAPACITY]		; get object capacity
		mov		size, [this + SIZE]			; get object size
;---[Check 1-st position]------------------
		cmp		size, pos1					; if (size <= pos1)
		jbe		.error						;     then go to error branch
;---[Check 2-nd position]------------------
		cmp		size, pos2					; if (size <= pos2)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		iter1, [this + offst]		; get iterator value
		mov		iter2, [this + offst]		; get iterator value
		sub		cap, 1						; cap -= 1
		cmd		iter1, pos1					; change iterator value
		cmd		iter2, pos2					; change iterator value
		and		iter1, cap					; iter1 &= cap
		and		iter2, cap					; iter2 &= cap
		add		iter1, array				; iter1 += array
		add		iter2, array				; iter2 += array
		movdqa	temp1, [iter1]				; temp1 = iter1[0]
		movdqa	temp2, [iter2]				; temp2 = iter2[0]
		movdqa	[iter1], temp2				; iter1[0] = temp2
		movdqa	[iter2], temp1				; iter2[0] = temp1
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
SwapHead:	SWAP	add, HEAD
SwapTail:	SWAP	sub, TAIL

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;
macro	MINMAX	cmd, offst, c, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; beginning position
count	equ		rcx							; count of nodes to check
func	equ		r8							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
iter	equ		r11							; iterator value
size	equ		result						; object size
cap		equ		this						; object capacity
value	equ		r12							; min or max max value
vptr	equ		r13							; position of min or max value
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
s_vptr	equ		stack + 1 * 8				; stack position of "vptr" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_base	equ		stack + 3 * 8				; stack position of "base" variable
s_iter	equ		stack + 4 * 8				; stack position of "iter" variable
s_cap	equ		stack + 5 * 8				; stack position of "cap" variable
s_data	equ		stack + 6 * 8				; stack position of "data" variable
s_count	equ		stack + 7 * 8				; stack position of "count" variable
s_func	equ		stack + 8 * 8				; stack position of "func" variable
space	= 9 * 8								; stack size required by the procedure
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
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get iterator value
		mov		[s_base], iter				; save "base" variable into the stack
		mov		cap, [this + CAPACITY]		; get object capacity
		sub		cap, 1						; cap -= 1
		cmd		iter, pos					; change iterator value
		and		iter, cap					; iter &= cap
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_vptr], vptr				; save old value of "vptr" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_cap], cap				; save "cap" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		value, [array + iter]		; value = array[iter].key
		mov		vptr, iter					; vptr = iter
		jmp		.skip
;---[Search loop]--------------------------
.loop:	mov		param2, [array + iter]
		mov		param1, value
		call	qword [s_func]				; result = Compare (value, array[iter].key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		cmp		result, 0					; if (result cond 0)
		cmov#c	value, [array + iter]		;     value = array[iter].key
		cmov#c	vptr, iter					;     vptr = iter
.skip:	cmd		iter, KSIZE					; change iterator value
		and		iter, cap					; iter &= cap
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Normal exit branch]-------------------
		mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [array + vptr]
		movdqu	[data], temp				; data[0] = array[vptr]
		sub		vptr, [s_base]				; vptr = vptr - base
if bwd
		neg		vptr						; vptr = base - vptr
end if
		and		vptr, cap					; vptr &= cap
		mov		result, vptr				; result = vptr
		mov		value, [s_value]			; restore old value of "value" variable
		mov		vptr, [s_vptr]				; restore old value of "vptr" variable
		shr		result, KSCALE				; return result
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
}

; Minimum value
MinHead:	MINMAX	add, HEAD, g, 0
MinTail:	MINMAX	sub, TAIL, g, 1

; Maximum value
MaxHead:	MINMAX	add, HEAD, l, 0
MaxTail:	MINMAX	sub, TAIL, l, 1

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

;==============================================================================;
;       Single key searching                                                   ;
;==============================================================================;
macro	FIND_KEY	cmd, offst, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
pos		equ		rcx							; beginning position
count	equ		r8							; count of nodes to check
func	equ		r9							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
iter	equ		r11							; iterator value
size	equ		result						; object size
cap		equ		this						; object capacity
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_base	equ		stack + 1 * 8				; stack position of "base" variable
s_iter	equ		stack + 2 * 8				; stack position of "iter" variable
s_cap	equ		stack + 3 * 8				; stack position of "cap" variable
s_data	equ		stack + 4 * 8				; stack position of "data" variable
s_key	equ		stack + 5 * 8				; stack position of "key" variable
s_count	equ		stack + 6 * 8				; stack position of "count" variable
s_func	equ		stack + 7 * 8				; stack position of "func" variable
space	= 9 * 8								; stack size required by the procedure
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
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get iterator value
		mov		[s_base], iter				; save "base" variable into the stack
		mov		cap, [this + CAPACITY]		; get object capacity
		sub		cap, 1						; cap -= 1
		cmd		iter, pos					; change iterator value
		and		iter, cap					; iter &= cap
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_cap], cap				; save "cap" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [array + iter]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[iter].key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		cmd		iter, KSIZE					; change iterator value
		and		iter, cap					; iter &= cap
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [array + iter]
		movdqu	[data], temp				; data[0] = array[iter]
		sub		iter, [s_base]				; iter = iter - base
if bwd
		neg		iter						; iter = base - iter
end if
		and		iter, cap					; iter &= cap
		mov		result, iter				; result = iter
		shr		result, KSCALE				; return result
		add		stack, space				; restoring back the stack pointer
		ret
}
FindKeyHead:	FIND_KEY	add, HEAD, 0
FindKeyTail:	FIND_KEY	sub, TAIL, 1

;==============================================================================;
;       Keys set searching                                                     ;
;==============================================================================;
macro	FIND_KEYS	cmd, offst, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
data	equ		rsi							; pointer to data structure
keys	equ		rdx							; pointer to array of keys
ksize	equ		rcx							; size of array of keys
pos		equ		r8							; beginning position
count	equ		r9							; count of nodes to check
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
array	equ		r10							; pointer to array of nodes
iter	equ		r11							; iterator value
size	equ		result						; object size
cap		equ		this						; object capacity
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_base	equ		stack + 1 * 8				; stack position of "base" variable
s_iter	equ		stack + 2 * 8				; stack position of "iter" variable
s_cap	equ		stack + 3 * 8				; stack position of "cap" variable
s_data	equ		stack + 4 * 8				; stack position of "data" variable
s_keys	equ		stack + 5 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 6 * 8				; stack position of "ksize" variable
s_count	equ		stack + 7 * 8				; stack position of "count" variable
s_func	equ		stack + 10 * 8				; stack position of "func" variable
space	= 9 * 8								; stack size required by the procedure
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
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get iterator value
		mov		[s_base], iter				; save "base" variable into the stack
		mov		cap, [this + CAPACITY]		; get object capacity
		sub		cap, 1						; cap -= 1
		cmd		iter, pos					; change iterator value
		and		iter, cap					; iter &= cap
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_cap], cap				; save "cap" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param4, [s_func]
		mov		param3, [array + iter]
		mov		param2, [s_ksize]
		mov		param1, [s_keys]
		mov		fptr, FindSet
		call	fptr						; result = FindSet (keys, ksize, array[iter].key, func)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		test	result, result				; if (result)
		jnz		.found						;     then go to found branch
		cmd		iter, KSIZE					; change iterator value
		and		iter, cap					; iter &= cap
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [array + iter]
		movdqu	[data], temp				; data[0] = array[iter]
		sub		iter, [s_base]				; iter = iter - base
if bwd
		neg		iter						; iter = base - iter
end if
		and		iter, cap					; iter &= cap
		mov		result, iter				; result = iter
		shr		result, KSCALE				; return result
		add		stack, space				; restoring back the stack pointer
		ret
}
FindKeysHead:	FIND_KEYS	add, HEAD, 0
FindKeysTail:	FIND_KEYS	sub, TAIL, 1

;******************************************************************************;
;       Searching for differences                                              ;
;******************************************************************************;
macro	DIFF	cmd
{
;---[Parameters]---------------------------
tarray	equ		rdi							; pointer to target array of nodes
sarray	equ		rsi							; pointer to source array of nodes
titer	equ		rdx							; target iterator
siter	equ		rcx							; source iterator
tmask	equ		r8							; mask for target object iterator
smask	equ		r9							; mask for source object iterator
size	equ		r10							; count of elements to compare
func	equ		r11							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
status	equ		rdx							; compare status
stack	equ		rsp							; stack pointer
s_tarr	equ		stack + 0 * 8				; stack position of "tarray" variable
s_sarr	equ		stack + 1 * 8				; stack position of "sarray" variable
s_titer	equ		stack + 2 * 8				; stack position of "titer" variable
s_siter	equ		stack + 3 * 8				; stack position of "siter" variable
s_tmask	equ		stack + 4 * 8				; stack position of "tmask" variable
s_smask	equ		stack + 5 * 8				; stack position of "smask" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
s_func	equ		stack + 7 * 8				; stack position of "func" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_tarr], tarray			; save "tarray" variable into the stack
		mov		[s_sarr], sarray			; save "sarray" variable into the stack
		mov		[s_titer], titer			; save "titer" variable into the stack
		mov		[s_siter], siter			; save "siter" variable into the stack
		mov		[s_tmask], tmask			; save "tmask" variable into the stack
		mov		[s_smask], smask			; save "smask" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Check loop]---------------------------
.loop:	mov		param2, [sarray + siter]
		mov		param1, [tarray + titer]
		call	qword [s_func]				; result = Compare (tarray[titer].key, sarray[siter].key)
		test	result, result				; if (result != 0)
		jnz		.found						;     then go to found branch
		mov		siter, [s_siter]			; get "siter" variable from the stack
		mov		titer, [s_titer]			; get "titer" variable from the stack
		mov		smask, [s_smask]			; get "smask" variable from the stack
		mov		tmask, [s_tmask]			; get "tmask" variable from the stack
		mov		sarray, [s_sarr]			; get "sarray" variable from the stack
		mov		tarray, [s_tarr]			; get "tarray" variable from the stack
		cmd		siter, KSIZE				; change source iterator value
		cmd		titer, KSIZE				; change target iterator value
		and		siter, smask				; siter &= smask
		and		titer, tmask				; titer &= tmask
		mov		[s_siter], siter			; save "siter" variable into the stack
		mov		[s_titer], titer			; save "titer" variable into the stack
		sub		qword [s_size], KSIZE		; size--
		jnz		.loop						; do while (size != 0)
;---[End of check loop]--------------------
		xor		status, status
		mov		result, NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret									; return {NOT_FOUND, 0}
;---[Found branch]-------------------------
.found:	mov		status, result
		mov		result, [s_titer]
		add		stack, space				; restoring back the stack pointer
		ret									; return {titer, status}
}
DiffFwd:	DIFF	add
DiffBwd:	DIFF	sub
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_DIFF	cmd, offst, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target deque object
data	equ		rsi							; pointer to data structure
tpos	equ		rdx							; beginning position into target deque
source	equ		rcx							; pointer to source deque object
spos	equ		r8							; beginning position into source deque
count	equ		r9							; count of nodes to check
func	equ		XXXX						; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		rax							; pointer to array of nodes
titer	equ		r10							; target iterator value
siter	equ		r11							; source iterator value
size	equ		result						; object size
cap		equ		data						; object capacity
ptr		equ		this						; temporary pointer
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_data	equ		stack + 0 * 8				; stack position of "data" variable
s_base	equ		stack + 1 * 8				; stack position of "base" variable
s_tarr	equ		stack + 2 * 8				; stack position of "tarray" variable
s_tcap	equ		stack + 3 * 8				; stack position of "tcap" variable
s_sarr	equ		stack + 4 * 8				; stack position of "sarray" variable
s_scap	equ		stack + 5 * 8				; stack position of "scap" variable
s_func	equ		stack + 8 * 8				; stack position of "func" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		shl		count, KSCALE
;---[Check target position]----------------
		shl		tpos, KSCALE
		mov		size, [this + SIZE]			; get target object size
		sub		size, tpos					; if (size <= tpos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Correct target count]-----------------
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check source position]----------------
		shl		spos, KSCALE
		mov		size, [source + SIZE]		; get source object size
		sub		size, spos					; if (size <= spos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Correct source count]-----------------
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		mov		[s_data], data				; save "data" variable into the stack
		mov		array, [this + ARRAY]		; get pointer to target array of nodes
		mov		cap, [this + CAPACITY]		; get target object capacity
		mov		titer, [this + offst]		; get target iterator value
		mov		[s_base], titer				; save "base" variable into the stack
		sub		cap, 1						; cap -= 1
		cmd		titer, tpos					; change iterator value
		and		titer, cap					; titer &= cap
		mov		[s_tarr], array				; save "array" variable into the stack
		mov		[s_tcap], cap				; save "tcap" variable into the stack
		mov		array, [source + ARRAY]		; get pointer to source array of nodes
		mov		cap, [source + CAPACITY]	; get source object capacity
		mov		siter, [source + offst]		; get source iterator value
		sub		cap, 1						; cap -= 1
		cmd		siter, spos					; change iterator value
		and		siter, cap					; siter &= cap
		mov		[s_sarr], array				; save "array" variable into the stack
		mov		[s_scap], cap				; save "scap" variable into the stack
		mov		param4, siter
		mov		param3, titer
		mov		param8, [s_func]
		mov		param7, count
		mov		param6, [s_scap]
		mov		param5, [s_tcap]
		mov		param2, [s_sarr]
		mov		param1, [s_tarr]
		call	DiffFwd						; result = DiffFwd (tarray, sarray, titer, siter, tcap, scap, count, func)
		cmp		result, NOT_FOUND			; if (result != NOT_FOUND)
		jne		.found						;     then go to found branch
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		ptr, [s_tarr]				; get "array" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [ptr + result]
		movdqu	[data], temp				; data[0] = array[result]
		sub		result, [s_base]			; result = result - base
if bwd
		neg		result						; result = base - result
end if
		and		result, [s_tcap]			; result &= cap
		shr		result, KSCALE				; return result
		add		stack, space				; restoring back the stack pointer
		ret
}
FindDiffHead:	FIND_DIFF	add, HEAD, 0
FindDiffTail:	FIND_DIFF	sub, TAIL, 1

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

;==============================================================================;
;       Single key counting                                                    ;
;==============================================================================;
macro	COUNT_KEY	cmd, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
key		equ		rsi							; key to find
pos		equ		rdx							; beginning position
count	equ		rcx							; count of nodes to check
func	equ		r8							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
iter	equ		r11							; iterator value
size	equ		result						; object size
cap		equ		this						; object capacity
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_iter	equ		stack + 1 * 8				; stack position of "iter" variable
s_cap	equ		stack + 2 * 8				; stack position of "cap" variable
s_key	equ		stack + 3 * 8				; stack position of "key" variable
s_count	equ		stack + 4 * 8				; stack position of "count" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
s_total	equ		stack + 6 * 8				; stack position of "total" variable
space	= 7 * 8								; stack size required by the procedure
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
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get iterator value
		mov		cap, [this + CAPACITY]		; get object capacity
		sub		cap, 1						; cap -= 1
		cmd		iter, pos					; change iterator value
		and		iter, cap					; iter &= cap
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_cap], cap				; save "cap" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [array + iter]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[iter].key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		test	result, result				; if (result == 0)
		setz	status						; {
		movzx	result, status
		add		[s_total], result			;     then total++ }
		cmd		iter, KSIZE					; change iterator value
		and		iter, cap					; iter &= cap
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total
}
CountKeyHead:	COUNT_KEY	add, HEAD
CountKeyTail:	COUNT_KEY	sub, TAIL

;==============================================================================;
;       Keys set counting                                                      ;
;==============================================================================;
macro	COUNT_KEYS	cmd, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
keys	equ		rsi							; pointer to array of keys
ksize	equ		rdx							; size of array of keys
pos		equ		rcx							; beginning position
count	equ		r8							; count of nodes to check
func	equ		r9							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
array	equ		r10							; pointer to array of nodes
iter	equ		r11							; iterator value
size	equ		result						; object size
cap		equ		this						; object capacity
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_iter	equ		stack + 1 * 8				; stack position of "iter" variable
s_cap	equ		stack + 2 * 8				; stack position of "cap" variable
s_keys	equ		stack + 3 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 4 * 8				; stack position of "ksize" variable
s_count	equ		stack + 5 * 8				; stack position of "count" variable
s_func	equ		stack + 6 * 8				; stack position of "func" variable
s_total	equ		stack + 7 * 8				; stack position of "total" variable
space	= 9 * 8								; stack size required by the procedure
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
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get iterator value
		mov		cap, [this + CAPACITY]		; get object capacity
		sub		cap, 1						; cap -= 1
		cmd		iter, pos					; change iterator value
		and		iter, cap					; iter &= cap
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_cap], cap				; save "cap" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param4, [s_func]
		mov		param3, [array + iter]
		mov		param2, [s_ksize]
		mov		param1, [s_keys]
		mov		fptr, FindSet
		call	fptr						; result = FindSet (keys, ksize, array[iter].key, func)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		add		[s_total], result			; if (result), then total++
		cmd		iter, KSIZE					; change iterator value
		and		iter, cap					; iter &= cap
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total
}
CountKeysHead:	COUNT_KEYS	add, HEAD
CountKeysTail:	COUNT_KEYS	sub, TAIL

;******************************************************************************;
;       Comparison of deques                                                   ;
;******************************************************************************;
Compare:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target deque object
source	equ		rsi							; pointer to source deque object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
status	equ		rdx							; compare status
size	equ		rcx							; object size
great	equ		r8							; +1
less	equ		r9							; -1
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
		mov		param8, func
		mov		param7, [this + SIZE]
		mov		param6, [source + CAPACITY]
		sub		param6, 1
		mov		param5, [this + CAPACITY]
		sub		param5, 1
		mov		param4, [source + HEAD]
		mov		param3, [this + HEAD]
		mov		param2, [source + ARRAY]
		mov		param1, [this + ARRAY]
		call	DiffFwd						; result = DiffFwd (this.array, source.array, this.head, source.head, this.capacity - 1, source.capacity - 1, this.size, func)
		cmp		result, NOT_FOUND			; if (result != NOT_FOUND)
		jne		.exit						;     return status
;---[Compare object size]------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
.size:	add		stack, space				; restoring back the stack pointer
		xor		result, result				; result = 0
		mov		great, +1					; great = +1
		mov		less, -1					; less = -1
		mov		size, [this + SIZE]
		cmp		size, [source + SIZE]
		cmovg	result, great				; if (this.size > source.size), return great
		cmovl	result, less				; if (this.size < source.size), return less
		ret									; if (this.size == source.size), return equal
;---[Normal exit branch]-------------------
.exit:	mov		result, status				; return status
		add		stack, space				; restoring back the stack pointer
		ret
;---[Equal b-trees branch]-----------------
.equal:	xor		result, result				; return 0
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Check for equality                                                     ;
;******************************************************************************;
IsEqual:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target deque object
source	equ		rsi							; pointer to source deque object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		rcx							; object size
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
		mov		param8, func
		mov		param7, [this + SIZE]
		mov		param6, [source + CAPACITY]
		sub		param6, 1
		mov		param5, [this + CAPACITY]
		sub		param5, 1
		mov		param4, [source + HEAD]
		mov		param3, [this + HEAD]
		mov		param2, [source + ARRAY]
		mov		param1, [this + ARRAY]
		call	DiffFwd						; result = DiffFwd (this.array, source.array, this.head, source.head, this.capacity - 1, source.capacity - 1, this.size, func)
		cmp		result, NOT_FOUND			; if (result == NOT_FOUND)
.exit:	sete	status
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Deque properties                                                       ;
;******************************************************************************;
GetCapacity:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + CAPACITY]	; get object capacity
		shr		result, KSCALE
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetSize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + SIZE]		; get object size
		shr		result, KSCALE
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IsEmpty:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
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
this	equ		rdi							; pointer to deque object
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
