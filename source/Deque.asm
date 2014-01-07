;                                                                      Deque.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                        DOUBLE-ENDED QUEUE DATA TYPE                         #
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
public	CopyHead			as	'_ZN5Deque8CopyHeadEPKS_mm'

; Into deque tail
public	CopyTail			as	'Deque_CopyTail'
public	CopyTail			as	'_ZN5Deque8CopyTailEPKS_mm'

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;

; Into deque head
public	MoveHead			as	'Deque_MoveHead'
public	MoveHead			as	'_ZN5Deque8MoveHeadEPS_mm'

; Into deque tail
public	MoveTail			as	'Deque_MoveTail'
public	MoveTail			as	'_ZN5Deque8MoveTailEPS_mm'

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;

; Into deque head
public	InsertIntoHead		as	'Deque_InsertIntoHead'
public	InsertIntoHead		as	'_ZN5Deque14InsertIntoHeadEPK6data_t'

; Into deque tail
public	InsertIntoTail		as	'Deque_InsertIntoTail'
public	InsertIntoTail		as	'_ZN5Deque14InsertIntoTailEPK6data_t'

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;

; From deque head
public	RemoveFromHead		as	'Deque_RemoveFromHead'
public	RemoveFromHead		as	'_ZN5Deque14RemoveFromHeadEP6data_t'

; From deque tail
public	RemoveFromTail		as	'Deque_RemoveFromTail'
public	RemoveFromTail		as	'_ZN5Deque14RemoveFromTailEP6data_t'

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

; Swapping element
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
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Key searching                                                          ;
;==============================================================================;

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

;==============================================================================;
;       Searching for differences                                              ;
;==============================================================================;
public	FindDiffHead		as	'Deque_FindDiffHead'
public	FindDiffTail		as	'Deque_FindDiffTail'
public	FindDiffHead		as	'_ZNK5Deque12FindDiffHeadEP6data_tPKS_mmPFx5adt_tS4_E'
public	FindDiffTail		as	'_ZNK5Deque12FindDiffTailEP6data_tPKS_mmPFx5adt_tS4_E'

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
		call	Copy						; call Copy (array + oldcap, array, size1)
		add		stack, space				; restoring back the stack pointer
		mov		status, 1					; return true
		ret
;---[else]---------------------------------
.else:	sub		newcap, oldcap				; newcap -= oldcap
		add		array, head					; array += head
		add		[this + HEAD], newcap		; this.head += newcap
		mov		param3, size2
		mov		param2, array
		lea		param1, [array + newcap]
		call	Copy						; call Copy (array + newcap, array, size2)
		add		stack, space				; restoring back the stack pointer
		mov		status, 1					; return true
		ret
;---[Clear the deque if empty]-------------
.empty:	sub		newcap, KSIZE
		mov		[this + TAIL], newcap		; tail = newcap - 1
.exit:	add		stack, space				; restoring back the stack pointer
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
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + HEAD], 0		; this.head = 0
		sub		cap, KSIZE
		mov		qword [this + TAIL], cap	; this.tail = cap - 1
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + HEAD], 0		; this.head = 0
		mov		qword [this + TAIL], -KSIZE	; this.tail = -1
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
		add		stack, space				; restoring back the stack pointer
		jmp		Copy						; return Array::Copy (this.array, source.array, source.capacity)
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
macro	ADD_DATA	cmd1, cmd2, offst
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target deque object
source	equ		rsi							; pointer to source deque object
pos		equ		rdx							; beginning position
count	equ		rcx							; count of nodes to copy
;---[Internal variables]-------------------
sarray	equ		r8							; pointer to source array of nodes
scap	equ		r9							; source object capacity
siter	equ		source						; iterator value for source object
tarray	equ		r10							; pointer to target array of nodes
tcap	equ		r11							; target object capacity
titer	equ		target						; iterator value for target object
bhead	equ		rax							; block head
btail	equ		rdx							; block tail
ptr		equ		rsi							; temporary pointer
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_tgt	equ		stack + 0 * 8				; stack position of "target" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_tgt], target				; save "target" variable into the stack
		add		[target + SIZE], count		; size += count
		mov		sarray, [source + ARRAY]	; get pointer to source array of nodes
		mov		scap, [source + CAPACITY]	; get source object capacity
		mov		siter, [source + offst]		; get iterator value for source object
		mov		tarray, [target + ARRAY]	; get pointer to target array of nodes
		mov		tcap, [target + CAPACITY]	; get target object capacity
		mov		titer, [target + offst]		; get iterator value for target object
		sub		scap, 1						; scap -= 1
		sub		tcap, 1						; tcap -= 1
		cmd1	siter, pos
		cmd1	siter, count				; change source iterator value
		and		siter, scap					; siter &= scap
		mov		btail, siter				; btail = siter
;---[Copying loop]-------------------------
.loop:	cmd2	siter, KSIZE				; change source iterator value
		cmd2	titer, KSIZE				; change target iterator value
		and		siter, scap					; siter &= scap
		and		titer, tcap					; titer &= tcap
		movdqa	temp, [sarray + siter]
		movdqa	[tarray + titer], temp		; array[titer] = source.array[siter]
		sub		count, KSIZE				; count--
		jnz		.loop						; do while (count != 0)
;---[End of loop]--------------------------
		mov		bhead, siter				; bhead = siter
		mov		ptr, [s_tgt]				; get "target" variable from the stack
		mov		[ptr + offst], titer		; update iterator value
		add		stack, space				; restoring back the stack pointer
		ret
}
AddHead:	ADD_DATA	add, sub, HEAD
AddTail:	ADD_DATA	sub, add, TAIL
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	HEAD_BLOCK
{
		mov		size1, bhead
		mov		size2, tail
		sub		size1, head
		sub		size2, btail
		add		size2, KSIZE
		and		size1, cap					; size1 = (bhead - head) & cap
		and		size2, cap					; size2 = (tail - btail + 1) & cap
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TAIL_BLOCK
{
		mov		size1, tail
		mov		size2, btail
		sub		size1, bhead
		sub		size2, head
		add		size2, KSIZE
		and		size1, cap					; size1 = (tail - bhead) & cap
		and		size2, cap					; size2 = (btail - head + 1) & cap
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	DELETE_DATA		getsize, cmd1, cmd2, offst1, offst2
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
bhead	equ		rsi							; block head
btail	equ		rdx							; block tail
count	equ		rcx							; count of nodes to delete
;---[Internal variables]-------------------
array	equ		rcx							; pointer to array of nodes
head	equ		r8							; pointer to deque head
tail	equ		r9							; pointer to deque tail
size1	equ		r10							; size of first sequence
size2	equ		r11							; size of second sequence
cap		equ		rax							; object capacity
temp	equ		xmm0						; temporary register
;------------------------------------------
		mov		cap, [this + CAPACITY]		; get object capacity
		sub		[this + SIZE], count		; size -= count
		jz		.empty						; if (size == 0), then set empty values
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		head, [this + HEAD]			; get head pointer
		mov		tail, [this + TAIL]			; get tail pointer
		sub		cap, 1						; cap -= 1
		getsize								; invoke size computing code
		cmp		size1, size2				; if (size1 > size2)
		ja		.else						;     then go to else branch
;---[if size1 <= size2]--------------------
		test	size1, size1				; if (size1 == 0)
		jz		@f							;     then skip deleting loop
;---[Deleting loop]------------------------
.loop1:	cmd1	bhead, KSIZE				; change block head iterator value
		cmd1	btail, KSIZE				; change block tail iterator value
		and		bhead, cap					; bhead &= cap
		and		btail, cap					; btail &= cap
		movdqa	temp, [array + bhead]
		movdqa	[array + btail], temp		; array[btail] = source.array[bhead]
		sub		size1, KSIZE				; size1--
		jnz		.loop1						; do while (size1 != 0)
;---[End of loop]--------------------------
@@:		mov		[this + offst1], btail		; update iterator value
		ret
;---[else]---------------------------------
.else:	test	size2, size2				; if (size2 == 0)
		jz		@f							;     then skip deleting loop
;---[Deleting loop]------------------------
.loop2:	movdqa	temp, [array + btail]
		movdqa	[array + bhead], temp		; array[bhead] = source.array[btail]
		cmd2	btail, KSIZE				; change block tail iterator value
		cmd2	bhead, KSIZE				; change block head iterator value
		and		btail, cap					; btail &= cap
		and		bhead, cap					; bhead &= cap
		sub		size2, KSIZE				; size2--
		jnz		.loop2						; do while (size2 != 0)
;---[End of loop]--------------------------
@@:		cmd1	bhead, KSIZE				; change block head iterator value
		and		bhead, cap					; bhead &= cap
		mov		[this + offst2], bhead		; update iterator value
		ret
;---[Clear the deque if empty]-------------
.empty:	sub		cap, KSIZE
		mov		qword [this + HEAD], 0		; head = 0
		mov		qword [this + TAIL], cap	; tail = cap - 1
		ret
}
DeleteHead:	DELETE_DATA		HEAD_BLOCK, sub, add, HEAD, TAIL
DeleteTail:	DELETE_DATA		TAIL_BLOCK, add, sub, TAIL, HEAD
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	COPY_MOVE	copyfunc, delfunc, move
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target deque object
source	equ		rsi							; pointer to source deque object
pos		equ		rdx							; beginning position
count	equ		rcx							; count of nodes to copy
;---[Internal variables]-------------------
result	equ		rax							; result register
status	equ		al							; operation status
bhead	equ		rax							; block head
btail	equ		rdx							; block tail
size	equ		result						; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
s_count	equ		stack + 3 * 8				; stack position of "count" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		size, [source + SIZE]		; get source object size
		sub		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
		mov		[s_count], count			; save "count" variable into the stack
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		mov		size, [this + SIZE]			; get target object size
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
		add		size, count					; size += count
	Capacity	size, count, MINCAP			; compute new capacity of target object
		cmp		size, [this + CAPACITY]		; if (size > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Copy elements to target object]-------
.back:	mov		param4, [s_count]
		mov		param3, [s_pos]
		mov		param2, [s_src]
		mov		param1, [s_this]
		call	copyfunc					; call this.CopyFunc (source, pos, count)
;---[Remove elements from source object]---
if move
		mov		param4, [s_count]
		mov		param3, btail
		mov		param2, bhead
		mov		param1, [s_src]
		call	delfunc						; call source.delfunc (bhead, btail, count)
end if
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_count]			; get "count" variable from the stack
		add		stack, space				; restoring back the stack pointer
		shr		result, KSCALE				; return count
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, size
		call	Extend						; status = this.Extend (size)
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
		mov		result, ERROR				; return ERROR
		ret
}
CopyHead:	COPY_MOVE	AddHead, DeleteHead, 0
CopyTail:	COPY_MOVE	AddTail, DeleteTail, 0

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;
MoveHead:	COPY_MOVE	AddHead, DeleteHead, 1
MoveTail:	COPY_MOVE	AddTail, DeleteTail, 1

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
macro	INSERT	cmd, offst
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
		mov		cap, [this + CAPACITY]		; get object capacity
		cmp		[this + SIZE], cap			; if (size == cap)
		je		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	sub		cap, 1						; cap -= 1
		mov		array, [this + ARRAY]		; get pointer to array of nodes
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
		lea		param2, [cap * 2]
	Capacity	param2, iter, MINCAP		; compute new capacity of target object
		cmp		param2, [this + CAPACITY]	; if (newcapacity <= capacity)
		jbe		.error						;     then go to error branch
		call	Extend						; status = this.Extend (cap * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		cap, [this + CAPACITY]		; get object capacity
		add		stack, space				; restoring back the stack pointer
		test	status, status
		jnz		.back						; if (status), then go back
		ret									;              else return false
;---[Error branch]-------------------------
.error:	add		stack, space				; restoring back the stack pointer
		xor		status, status				; return false
		ret
}
InsertIntoHead:	INSERT	sub, HEAD
InsertIntoTail:	INSERT	add, TAIL

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;
macro	REMOVE	cmd, offst
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
		movdqa	temp, [array + iter]
		movdqu	[data], temp				; data[0] = array[iter]
		sub		cap, 1						; cap -= 1
		cmd		iter, KSIZE					; change iterator value
		and		iter, cap					; iter &= cap
		sub		qword [this + SIZE], KSIZE	; if (size == 0)
		jz		.empty						;     then set empty values
		mov		[this + offst], iter		; update iterator value
		mov		status, 1					; return true
		ret
;---[Clear the deque if empty]-------------
.empty:	add		cap, 1 - KSIZE
		mov		qword [this + HEAD], 0		; head = 0
		mov		qword [this + TAIL], cap	; tail = cap - 1
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
RemoveFromHead:	REMOVE	add, HEAD
RemoveFromTail:	REMOVE	sub, TAIL

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
		cmp		[this + SIZE], pos			; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		cap, [this + CAPACITY]		; get object capacity
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
		cmp		[this + SIZE], pos			; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		cap, [this + CAPACITY]		; get object capacity
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
		cmp		[this + SIZE], pos			; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		cap, [this + CAPACITY]		; get object capacity
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
size	equ		result						; object size
cap		equ		rcx							; object capacity
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
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		cap, [this + CAPACITY]		; get object capacity
		mov		iter1, [this + offst]		; get iterator value
		sub		cap, 1						; cap -= 1
		cmd		iter1, pos					; change first iterator value
		and		iter1, cap					; iter1 &= cap
		mov		iter2, iter1				; iter2 = iter1
		cmd		iter2, count				; change second iterator value
		shr		count, KSCALE + 1
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
;       Swapping element                                                       ;
;==============================================================================;
macro	SWAP		cmd, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to deque object
pos		equ		rsi							; position of element to swap
;---[Internal variables]-------------------
status	equ		al							; operation status
iter1	equ		rdx							; first iterator value
iter2	equ		rcx							; second iterator value
cap		equ		rax							; object capacity
temp1	equ		xmm0						; temporary register #1
temp2	equ		xmm1						; temporary register #2
;---[Check position]-----------------------
		shl		pos, KSCALE
		cmp		[this + SIZE], pos			; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		cap, [this + CAPACITY]		; get object capacity
		mov		iter1, [this + offst]		; get iterator value
		mov		iter2, iter1				; iter2 = iter1
		sub		cap, 1						; cap -= 1
		cmd		iter1, pos					; change iterator value
		and		iter1, cap					; iter1 &= cap
		add		iter1, [this + ARRAY]		; iter1 += array
		add		iter2, [this + ARRAY]		; iter2 += array
		movdqa	temp1, [iter1]				; temp1 = array[iter1]
		movdqa	temp2, [iter2]				; temp2 = array[iter2]
		movdqa	[iter1], temp2				; array[iter1] = temp2
		movdqa	[iter2], temp1				; array[iter2] = temp1
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
macro	MINMAX	cmd, offst, c, fwd
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
		mov		result, [s_base]
		sub		result, vptr				; result = base - vptr
if fwd
		neg		result						; result = -result
end if
		and		result, cap					; result &= cap
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

; Minimum value
MinHead:	MINMAX		add, HEAD, g, 1
MinTail:	MINMAX		sub, TAIL, g, 0

; Maximum value
MaxHead:	MINMAX		add, HEAD, l, 1
MaxTail:	MINMAX		sub, TAIL, l, 0

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Key searching                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Single key searching                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_KEY	cmd, offst, fwd
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
.ntfnd:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [array + iter]
		movdqu	[data], temp				; data[0] = array[iter]
		mov		result, [s_base]
		sub		result, iter				; result = base - iter
if fwd
		neg		result						; result = -result
end if
		and		result, cap					; result &= cap
		add		stack, space				; restoring back the stack pointer
		shr		result, KSCALE				; return result
		ret
}
FindKeyHead:	FIND_KEY	add, HEAD, 1
FindKeyTail:	FIND_KEY	sub, TAIL, 0

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Keys set searching                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_KEYS	cmd, offst, fwd
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
		call	FindSet						; result = FindSet (keys, ksize, array[iter].key, func)
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
.ntfnd:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [array + iter]
		movdqu	[data], temp				; data[0] = array[iter]
		mov		result, [s_base]
		sub		result, iter				; result = base - iter
if fwd
		neg		result						; result = -result
end if
		and		result, cap					; result &= cap
		add		stack, space				; restoring back the stack pointer
		shr		result, KSCALE				; return result
		ret
}
FindKeysHead:	FIND_KEYS	add, HEAD, 1
FindKeysTail:	FIND_KEYS	sub, TAIL, 0

;==============================================================================;
;       Searching for differences                                              ;
;==============================================================================;
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
macro	FIND_DIFF		cmd, offst, fwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target deque object
data	equ		rsi							; pointer to data structure
source	equ		rdx							; pointer to source deque object
pos		equ		rcx							; beginning position
count	equ		r8							; count of nodes to check
func	equ		r9							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		rax							; pointer to array of nodes
iter	equ		r11							; iterator value
size	equ		result						; object size
cap		equ		r10							; object capacity
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_base	equ		stack + 1 * 8				; stack position of "base" variable
s_cap	equ		stack + 2 * 8				; stack position of "cap" variable
s_data	equ		stack + 3 * 8				; stack position of "data" variable
space	= 5 * 8								; stack size required by the procedure
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
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get target iterator value
		mov		[s_base], iter				; save "base" variable into the stack
		mov		iter, [source + offst]		; get source iterator value
		mov		cap, [source + CAPACITY]	; get source object capacity
		sub		cap, 1						; cap -= 1
		cmd		iter, pos					; change iterator value
		and		iter, cap					; iter &= cap
;---[Call check function]------------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_cap], cap				; save "cap" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		param4, iter
		mov		param8, func
		mov		param6, cap
		mov		param7, count
		mov		param5, [this + CAPACITY]
		sub		param5, 1
		mov		param2, [source + ARRAY]
		mov		param3, [this + offst]
		mov		param1, [this + ARRAY]
		call	DiffFwd						; result = DiffFwd (this.array, source.array, this.iter, source.iter, this.capacity - 1, source.capacity - 1, count, func)
		mov		iter, result				; iter = result
		cmp		result, NOT_FOUND			; if (result != NOT_FOUND)
		jne		.found						;     then go to found branch
;---[Not found branch]---------------------
.ntfnd:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
;---[Found branch]-------------------------
.found:	mov		array, [s_array]			; get "array" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [array + iter]
		movdqu	[data], temp				; data[0] = array[iter]
		mov		result, [s_base]
		sub		result, iter				; result = base - iter
if fwd
		neg		result						; result = -result
end if
		and		result, cap					; result &= cap
		add		stack, space				; restoring back the stack pointer
		shr		result, KSCALE				; return result
		ret
}
FindDiffHead:	FIND_DIFF	add, HEAD, 1
FindDiffTail:	FIND_DIFF	sub, TAIL, 0

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
		not		result
		and		result, 0x1					; if (result)
		add		[s_total], result			;     then total++
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
		call	FindSet						; result = FindSet (keys, ksize, array[iter].key, func)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		add		[s_total], result			; if (result) then total++
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
this	equ		rdi							; pointer to target deque object
source	equ		rsi							; pointer to source deque object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
status	equ		al							; operation status
size	equ		rax							; object size
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

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
