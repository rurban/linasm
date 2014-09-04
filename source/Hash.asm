;                                                                       Hash.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                            HASH TABLE DATA TYPE                             #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2014, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'
include	'Syscall.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################
extrn	'Array_Copy'			as	Copy

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
public	Constructor				as	'MultiHash_InitMultiHash'
public	Constructor				as	'UniqueHash_InitUniqueHash'
public	Constructor				as	'_ZN9MultiHashC1EmPFx5adt_tS0_EPFmS0_E'
public	Constructor				as	'_ZN10UniqueHashC1EmPFx5adt_tS0_EPFmS0_E'

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
public	CopyConstructor			as	'MultiHash_CopyMultiHash'
public	CopyConstructor			as	'UniqueHash_CopyUniqueHash'
public	CopyConstructor			as	'_ZN9MultiHashC1ERKS_'
public	CopyConstructor			as	'_ZN10UniqueHashC1ERKS_'

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
public	Destructor				as	'MultiHash_FreeMultiHash'
public	Destructor				as	'UniqueHash_FreeUniqueHash'
public	Destructor				as	'_ZN9MultiHashD1Ev'
public	Destructor				as	'_ZN10UniqueHashD1Ev'

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
public	InsertMulti				as	'MultiHash_Insert'
public	InsertUnique			as	'UniqueHash_Insert'
public	InsertMulti				as	'_ZN9MultiHash6InsertEPK6data_t'
public	InsertUnique			as	'_ZN10UniqueHash6InsertEPK6data_t'

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;
public	RemoveFwd				as	'MultiHash_RemoveFwd'
public	RemoveFwd				as	'UniqueHash_RemoveFwd'
public	RemoveBwd				as	'MultiHash_RemoveBwd'
public	RemoveBwd				as	'UniqueHash_RemoveBwd'
public	RemoveFwd				as	'_ZN9MultiHash9RemoveFwdEP6data_t'
public	RemoveFwd				as	'_ZN10UniqueHash9RemoveFwdEP6data_t'
public	RemoveBwd				as	'_ZN9MultiHash9RemoveBwdEP6data_t'
public	RemoveBwd				as	'_ZN10UniqueHash9RemoveBwdEP6data_t'

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
public	SetFwdMulti				as	'MultiHash_SetFwd'
public	SetFwdUnique			as	'UniqueHash_SetFwd'
public	SetBwdMulti				as	'MultiHash_SetBwd'
public	SetBwdUnique			as	'UniqueHash_SetBwd'
public	SetFwdMulti				as	'_ZN9MultiHash6SetFwdEPK6data_t'
public	SetFwdUnique			as	'_ZN10UniqueHash6SetFwdEPK6data_t'
public	SetBwdMulti				as	'_ZN9MultiHash6SetBwdEPK6data_t'
public	SetBwdUnique			as	'_ZN10UniqueHash6SetBwdEPK6data_t'

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;
public	GetFwd					as	'MultiHash_GetFwd'
public	GetFwd					as	'UniqueHash_GetFwd'
public	GetBwd					as	'MultiHash_GetBwd'
public	GetBwd					as	'UniqueHash_GetBwd'
public	GetFwd					as	'_ZNK9MultiHash6GetFwdEP6data_t'
public	GetFwd					as	'_ZNK10UniqueHash6GetFwdEP6data_t'
public	GetBwd					as	'_ZNK9MultiHash6GetBwdEP6data_t'
public	GetBwd					as	'_ZNK10UniqueHash6GetBwdEP6data_t'

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;
public	ReplaceFwdMulti			as	'MultiHash_ReplaceFwd'
public	ReplaceFwdUnique		as	'UniqueHash_ReplaceFwd'
public	ReplaceBwdMulti			as	'MultiHash_ReplaceBwd'
public	ReplaceBwdUnique		as	'UniqueHash_ReplaceBwd'
public	ReplaceFwdMulti			as	'_ZN9MultiHash10ReplaceFwdEP6data_tPKS0_'
public	ReplaceFwdUnique		as	'_ZN10UniqueHash10ReplaceFwdEP6data_tPKS0_'
public	ReplaceBwdMulti			as	'_ZN9MultiHash10ReplaceBwdEP6data_tPKS0_'
public	ReplaceBwdUnique		as	'_ZN10UniqueHash10ReplaceBwdEP6data_tPKS0_'

;******************************************************************************;
;       Overriding element value                                               ;
;******************************************************************************;
public	Override				as	'UniqueHash_Override'
public	Override				as	'_ZN10UniqueHash8OverrideEP6data_tPKS0_'

;******************************************************************************;
;       Manipulation with forward iterator                                     ;
;******************************************************************************;

;==============================================================================;
;       Set iterator position                                                  ;
;==============================================================================;

; To head element
public	FwdToHead				as	'MultiHash_FwdToHead'
public	FwdToHead				as	'UniqueHash_FwdToHead'
public	FwdToHead				as	'_ZN9MultiHash9FwdToHeadEv'
public	FwdToHead				as	'_ZN10UniqueHash9FwdToHeadEv'

; To tail element
public	FwdToTail				as	'MultiHash_FwdToTail'
public	FwdToTail				as	'UniqueHash_FwdToTail'
public	FwdToTail				as	'_ZN9MultiHash9FwdToTailEv'
public	FwdToTail				as	'_ZN10UniqueHash9FwdToTailEv'

; To backward iterator
public	FwdToBwd				as	'MultiHash_FwdToBwd'
public	FwdToBwd				as	'UniqueHash_FwdToBwd'
public	FwdToBwd				as	'_ZN9MultiHash8FwdToBwdEv'
public	FwdToBwd				as	'_ZN10UniqueHash8FwdToBwdEv'

;==============================================================================;
;       Change iterator position                                               ;
;==============================================================================;

; Move to next position
public	FwdGoNext				as	'MultiHash_FwdGoNext'
public	FwdGoNext				as	'UniqueHash_FwdGoNext'
public	FwdGoNext				as	'_ZN9MultiHash9FwdGoNextEm'
public	FwdGoNext				as	'_ZN10UniqueHash9FwdGoNextEm'

; Move to prev position
public	FwdGoPrev				as	'MultiHash_FwdGoPrev'
public	FwdGoPrev				as	'UniqueHash_FwdGoPrev'
public	FwdGoPrev				as	'_ZN9MultiHash9FwdGoPrevEm'
public	FwdGoPrev				as	'_ZN10UniqueHash9FwdGoPrevEm'

;******************************************************************************;
;       Manipulation with backward iterator                                    ;
;******************************************************************************;

;==============================================================================;
;       Set iterator position                                                  ;
;==============================================================================;

; To head element
public	BwdToHead				as	'MultiHash_BwdToHead'
public	BwdToHead				as	'UniqueHash_BwdToHead'
public	BwdToHead				as	'_ZN9MultiHash9BwdToHeadEv'
public	BwdToHead				as	'_ZN10UniqueHash9BwdToHeadEv'

; To tail element
public	BwdToTail				as	'MultiHash_BwdToTail'
public	BwdToTail				as	'UniqueHash_BwdToTail'
public	BwdToTail				as	'_ZN9MultiHash9BwdToTailEv'
public	BwdToTail				as	'_ZN10UniqueHash9BwdToTailEv'

; To backward iterator
public	BwdToFwd				as	'MultiHash_BwdToFwd'
public	BwdToFwd				as	'UniqueHash_BwdToFwd'
public	BwdToFwd				as	'_ZN9MultiHash8BwdToFwdEv'
public	BwdToFwd				as	'_ZN10UniqueHash8BwdToFwdEv'

;==============================================================================;
;       Change iterator position                                               ;
;==============================================================================;

; Move to next position
public	BwdGoNext				as	'MultiHash_BwdGoNext'
public	BwdGoNext				as	'UniqueHash_BwdGoNext'
public	BwdGoNext				as	'_ZN9MultiHash9BwdGoNextEm'
public	BwdGoNext				as	'_ZN10UniqueHash9BwdGoNextEm'

; Move to prev position
public	BwdGoPrev				as	'MultiHash_BwdGoPrev'
public	BwdGoPrev				as	'UniqueHash_BwdGoPrev'
public	BwdGoPrev				as	'_ZN9MultiHash9BwdGoPrevEm'
public	BwdGoPrev				as	'_ZN10UniqueHash9BwdGoPrevEm'

;******************************************************************************;
;       Swapping iterators                                                     ;
;******************************************************************************;
public	SwapFwdBwd				as	'MultiHash_SwapFwdBwd'
public	SwapFwdBwd				as	'UniqueHash_SwapFwdBwd'
public	SwapFwdBwd				as	'_ZN9MultiHash10SwapFwdBwdEv'
public	SwapFwdBwd				as	'_ZN10UniqueHash10SwapFwdBwdEv'

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;

; Minimum value
public	MinFwd					as	'MultiHash_MinFwd'
public	MinFwd					as	'UniqueHash_MinFwd'
public	MinBwd					as	'MultiHash_MinBwd'
public	MinBwd					as	'UniqueHash_MinBwd'
public	MinFwd					as	'_ZN9MultiHash6MinFwdEP6data_t'
public	MinFwd					as	'_ZN10UniqueHash6MinFwdEP6data_t'
public	MinBwd					as	'_ZN9MultiHash6MinBwdEP6data_t'
public	MinBwd					as	'_ZN10UniqueHash6MinBwdEP6data_t'

; Maximum value
public	MaxFwd					as	'MultiHash_MaxFwd'
public	MaxFwd					as	'UniqueHash_MaxFwd'
public	MaxBwd					as	'MultiHash_MaxBwd'
public	MaxBwd					as	'UniqueHash_MaxBwd'
public	MaxFwd					as	'_ZN9MultiHash6MaxFwdEP6data_t'
public	MaxFwd					as	'_ZN10UniqueHash6MaxFwdEP6data_t'
public	MaxBwd					as	'_ZN9MultiHash6MaxBwdEP6data_t'
public	MaxBwd					as	'_ZN10UniqueHash6MaxBwdEP6data_t'

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

; Single key searching
public	FindKeyFwd				as	'MultiHash_FindKeyFwd'
public	FindKeyFwd				as	'UniqueHash_FindKeyFwd'
public	FindKeyBwd				as	'MultiHash_FindKeyBwd'
public	FindKeyBwd				as	'UniqueHash_FindKeyBwd'
public	FindKeyFwd				as	'_ZN9MultiHash10FindKeyFwdEP6data_t5adt_t'
public	FindKeyFwd				as	'_ZN10UniqueHash10FindKeyFwdEP6data_t5adt_t'
public	FindKeyBwd				as	'_ZN9MultiHash10FindKeyBwdEP6data_t5adt_t'
public	FindKeyBwd				as	'_ZN10UniqueHash10FindKeyBwdEP6data_t5adt_t'

; Keys set searching
public	FindKeysFwd				as	'MultiHash_FindKeysFwd'
public	FindKeysFwd				as	'UniqueHash_FindKeysFwd'
public	FindKeysBwd				as	'MultiHash_FindKeysBwd'
public	FindKeysBwd				as	'UniqueHash_FindKeysBwd'
public	FindKeysFwd				as	'_ZN9MultiHash11FindKeysFwdEP6data_tPK5adt_tm'
public	FindKeysFwd				as	'_ZN10UniqueHash11FindKeysFwdEP6data_tPK5adt_tm'
public	FindKeysBwd				as	'_ZN9MultiHash11FindKeysBwdEP6data_tPK5adt_tm'
public	FindKeysBwd				as	'_ZN10UniqueHash11FindKeysBwdEP6data_tPK5adt_tm'

; Sequence searching
public	FindSequenceFwd			as	'MultiHash_FindSequenceFwd'
public	FindSequenceBwd			as	'MultiHash_FindSequenceBwd'
public	FindSequenceFwd			as	'_ZN9MultiHash15FindSequenceFwdEP6data_t5adt_t'
public	FindSequenceBwd			as	'_ZN9MultiHash15FindSequenceBwdEP6data_t5adt_t'

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
public	FindDupFwd				as	'MultiHash_FindDupFwd'
public	FindDupBwd				as	'MultiHash_FindDupBwd'
public	FindDupFwd				as	'_ZN9MultiHash10FindDupFwdEP6data_t'
public	FindDupBwd				as	'_ZN9MultiHash10FindDupBwdEP6data_t'

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

; Single key counting
public	CountKey				as	'MultiHash_CountKey'
public	CountKey				as	'UniqueHash_CountKey'
public	CountKey				as	'_ZNK9MultiHash8CountKeyE5adt_t'
public	CountKey				as	'_ZNK10UniqueHash8CountKeyE5adt_t'

; Keys set counting
public	CountKeys				as	'MultiHash_CountKeys'
public	CountKeys				as	'UniqueHash_CountKeys'
public	CountKeys				as	'_ZNK9MultiHash9CountKeysEPK5adt_tm'
public	CountKeys				as	'_ZNK10UniqueHash9CountKeysEPK5adt_tm'

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
public	Unique					as	'MultiHash_Unique'
public	Unique					as	'_ZN9MultiHash6UniqueEPKS_'

;******************************************************************************;
;       Check for duplicate values                                             ;
;******************************************************************************;
public	CheckDup				as	'MultiHash_CheckDup'
public	CheckDup				as	'_ZNK9MultiHash8CheckDupEv'

;******************************************************************************;
;       Hash table properties                                                  ;
;******************************************************************************;

; Hash table key compare function
public	GetCompareFunction		as	'MultiHash_CompareFunction'
public	GetCompareFunction		as	'UniqueHash_CompareFunction'
public	GetCompareFunction		as	'_ZNK9MultiHash15CompareFunctionEv'
public	GetCompareFunction		as	'_ZNK10UniqueHash15CompareFunctionEv'

; Hash table hash function
public	GetHashFunction			as	'MultiHash_HashFunction'
public	GetHashFunction			as	'UniqueHash_HashFunction'
public	GetHashFunction			as	'_ZNK9MultiHash12HashFunctionEv'
public	GetHashFunction			as	'_ZNK10UniqueHash12HashFunctionEv'

; Hash table capacity
public	GetCapacity				as	'MultiHash_Capacity'
public	GetCapacity				as	'UniqueHash_Capacity'
public	GetCapacity				as	'_ZNK9MultiHash8CapacityEv'
public	GetCapacity				as	'_ZNK10UniqueHash8CapacityEv'

; Hash table size
public	GetSize					as	'MultiHash_Size'
public	GetSize					as	'UniqueHash_Size'
public	GetSize					as	'_ZNK9MultiHash4SizeEv'
public	GetSize					as	'_ZNK10UniqueHash4SizeEv'

; Check if hash table is empty
public	IsEmpty					as	'MultiHash_IsEmpty'
public	IsEmpty					as	'UniqueHash_IsEmpty'
public	IsEmpty					as	'_ZNK9MultiHash7IsEmptyEv'
public	IsEmpty					as	'_ZNK10UniqueHash7IsEmptyEv'

; Check if hash table is initialized
public	IsInit					as	'MultiHash_IsInit'
public	IsInit					as	'UniqueHash_IsInit'
public	IsInit					as	'_ZNK9MultiHash6IsInitEv'
public	IsInit					as	'_ZNK10UniqueHash6IsInitEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
NSCALE		= 5								; Node scale factor
NSIZE		= 1 shl NSCALE					; Size of node (bytes)
EMPTY		= -NSIZE						; Pointer which points to empty node
MINCAP		= 1 shl	PSCALE					; Min capacity of hash table object

;==============================================================================;
;       Offsets inside hash table object                                       ;
;==============================================================================;
ARRAY		= 0 * 8							; Offset of array pointer
CAPACITY	= 1 * 8							; Offset of object capacity field
SIZE		= 2 * 8							; Offset of object size field
POOL		= 3 * 8							; Offset of pool free node field
FWD			= 4 * 8							; Offset of forward iterator field
BWD			= 5 * 8							; Offset of backward iterator field
KFUNC		= 6 * 8							; Offset of pointer to key compare function
HFUNC		= 7 * 8							; Offset of pointer to hash function

;==============================================================================;
;       Offsets inside node                                                    ;
;==============================================================================;
FDIR		= 0 * 8							; Offset of forward direction pointer
BDIR		= 1 * 8							; Offset of backward direction pointer
NDATA		= 2 * 8							; Offset of node data field

;******************************************************************************;
;       Initialization of hash table                                           ;
;******************************************************************************;
InitTable:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
cap		equ		rsi							; hash table capacity
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
value	equ		xmm0						; init value for hash table
;------------------------------------------
		add		array, cap					; array += cap
		initreg	value, treg, EMPTY			; ptr = EMPTY
		clone	value, 3					; duplicate value through the entire register
;---[Initialization loop]------------------
.loop:	movdqa	[array], value				; array[0] = {EMPTY, EMPTY}
		add		array, NSIZE				; array++
		sub		cap, NSIZE					; cap--
		jnz		.loop						; do while (cap != 0)
;---[End of initialization loop]-----------
		ret

;******************************************************************************;
;       Initialization of free nodes                                           ;
;******************************************************************************;
InitFree:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
oldcap	equ		rsi							; old capacity of array
newcap	equ		rdx							; new capacity of array
pool	equ		rcx							; pointer to pool free node
;---[Internal variables]-------------------
status	equ		rax							; operation status
;------------------------------------------
		add		array, oldcap				; array += oldcap
		add		oldcap, NSIZE				; oldcap++
		sub		newcap, oldcap				; newcap -= oldcap
;---[Nodes init loop]----------------------
.nloop:	mov		[array + FDIR], oldcap		; array[0].fdir = oldcap
		add		array, NSIZE				; array++
		add		oldcap, NSIZE				; oldcap++
		sub		newcap, NSIZE				; newcap--
		jnz		.nloop						; do while (newcap != 0)
;---[End of nodes init loop]---------------
		mov		qword [array + FDIR], pool	; array[0].fdir = pool
		mov		status, 1					; return true
		ret

;******************************************************************************;
;       Resizing hash table                                                    ;
;******************************************************************************;
Resize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
table	equ		rsi							; first element in hash table
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		rcx							; pointer to array of nodes
pool	equ		rdx							; pointer to pool free node
fdir	equ		r8							; index of next node
bdir	equ		r9							; index of prev node
fwd		equ		r10							; forward iterator
bwd		equ		r11							; forward iterator
iter	equ		result						; iterator value
node	equ		pool						; index of node where element was moved
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_table	equ		stack + 1 * 8				; stack position of "table" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_iter	equ		stack + 3 * 8				; stack position of "iter" variable
s_prev	equ		stack + 4 * 8				; stack position of "prev" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.exit						;     then go to exit
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_table], table			; save "table" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		param2, table
		mov		param1, array
		call	FindTail					; iter = FindTail (array, table)
		mov		[s_iter], iter				; save "iter" variable into the stack
;---[Resizing loop]------------------------
.loop:	mov		param4, NSIZE
		mov		param3, iter
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoPrev						; result = GoPrev (array, table, iter, NSIZE)
		mov		[s_prev], result			; save "prev" variable into the stack
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		iter, [s_table]				; if (iter < table)
		jae		.else
;---[if iter < table]----------------------
		mov		pool, [this + POOL]
		mov		fdir, [array + iter + FDIR]	; fdir = array[iter].fdir
		mov		bdir, [array + iter + BDIR]	; bdir = array[iter].bdir
		movdqa	temp, [array + iter + NDATA]; temp = array[iter].data
		mov		[array + bdir + FDIR], fdir	; array[bdir].fdir = fdir
		mov		[array + fdir + BDIR], bdir	; array[fdir].bdir = bdir
		mov		[array + iter + FDIR], pool ; array[iter].fdir = this.pool
		mov		[this + POOL], iter			; this.pool = iter
		sub		qword [this + SIZE], NSIZE	; this.size--
		call	InsertCoreMulti				; result = this.InsertCoreMulti (temp)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		fwd, [this + FWD]
		cmp		fwd, [s_iter]				; if (fwd == iter)
		cmove	fwd, node					;     fwd = node
		mov		[this + FWD], fwd			; update iterator position
		mov		bwd, [this + BWD]
		cmp		bwd, [s_iter]				; if (bwd == iter)
		cmove	bwd, node					;     bwd = node
		mov		[this + BWD], bwd			; update iterator position
		mov		iter, [s_prev]				; iter = prev
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		iter, EMPTY
		jne		.loop						; do while (iter != EMPTY)
;---[End of resizing loop]-----------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
;---[else]---------------------------------
.else:	mov		qword [array + iter + FDIR], EMPTY
		mov		qword [array + iter + BDIR], EMPTY
		sub		qword [this + SIZE], NSIZE	; this.size--
		movdqa	temp, [array + iter + NDATA]; temp = array[iter].data
		call	InsertCoreMulti				; result = this.InsertCoreMulti (temp)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		fwd, [this + FWD]
		cmp		fwd, [s_iter]				; if (fwd == iter)
		cmove	fwd, node					;     fwd = node
		mov		[this + FWD], fwd			; update iterator position
		mov		bwd, [this + BWD]
		cmp		bwd, [s_iter]				; if (bwd == iter)
		cmove	bwd, node					;     bwd = node
		mov		[this + BWD], bwd			; update iterator position
		mov		iter, [s_prev]				; iter = prev
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		iter, EMPTY
		jne		.loop						; do while (iter != EMPTY)
;---[End of resizing loop]-----------------
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Extending hash table capacity                                          ;
;******************************************************************************;
Extend:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
newcap	equ		rsi							; new object capacity
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		rax							; pointer to array of nodes
oldcap	equ		r8							; old object capacity
oldpool	equ		r9							; old index of pool free node
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_ncap	equ		stack + 1 * 8				; stack position of "newcap" variable
s_pool	equ		stack + 2 * 8				; stack position of "oldpool" variable
s_cap	equ		stack + 3 * 8				; stack position of "oldcap" variable
space	= 5 * 8								; stack size required by the procedure
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
		mov		oldcap, [this + CAPACITY]	; get old capacity of the hash table
		mov		oldpool, [this + POOL]		; get old index of pool free node
		shr		oldcap, 1					; oldcap /= 2
		mov		[s_pool], oldpool			; save "oldpool" variable into the stack
		mov		[s_cap], oldcap				; save "oldcap" variable into the stack
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], newcap	; this.capacity = newcap
		mov		[this + POOL], oldcap		; this.pool = oldcap / 2
		mov		param2, newcap
		shr		param2, 1
		mov		param1, array
		call	InitTable					; call InitTable (array, newcap / 2)
		mov		param2, [s_cap]
		mov		param1, [s_this]
		call	Resize						; call this.Resize (oldcap / 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		param4, [s_pool]
		mov		param3, [s_ncap]
		shr		param3, 1
		mov		param2, [s_cap]
		mov		param1, [this + ARRAY]
		add		stack, space				; restoring back the stack pointer
		jmp		InitFree					; return InitFree (array, oldcap / 2, newcap / 2, oldpool)
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
Constructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
cap		equ		rsi							; object capacity
kfunc	equ		rdx							; compare function
hfunc	equ		rcx							; hash function
;---[Internal variables]-------------------
array	equ		rax							; pointer to array of nodes
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_cap	equ		stack + 1 * 8				; stack position of "cap" variable
s_kfunc	equ		stack + 2 * 8				; stack position of "kfunc" variable
s_hfunc	equ		stack + 3 * 8				; stack position of "hfunc" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_hfunc], hfunc			; save "hfunc" variable into the stack
		shl		cap, NSCALE + 1
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
		mov		hfunc, [s_hfunc]			; get "hfunc" variable from the stack
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], cap		; this.capacity = cap
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + POOL], 0		; this.pool = 0
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		[this + KFUNC], kfunc		; this.kfunc = kfunc
		mov		[this + HFUNC], hfunc		; this.hfunc = hfunc
		mov		param2, cap
		shr		param2, 1
		mov		param1, array
		call	InitTable					; call InitTable (array, cap / 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		mov		param4, EMPTY
		mov		param3, cap
		shr		param3, 1
		mov		param2, 0
		mov		param1, [this + ARRAY]
		add		stack, space				; restoring back the stack pointer
		jmp		InitFree					; return InitFree (array, pool, cap / 2, EMPTY)
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + POOL], EMPTY	; this.pool = EMPTY
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		[this + KFUNC], kfunc		; this.kfunc = kfunc
		mov		[this + HFUNC], hfunc		; this.hfunc = hfunc
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
CopyConstructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target hash table object
source	equ		rsi							; pointer to source hash table object
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
		mov		temp, [source + POOL]
		mov		[this + POOL], temp			; this.pool = source.pool
		mov		temp, [source + FWD]
		mov		[this + FWD], temp			; this.fwd = source.fwd
		mov		temp, [source + BWD]
		mov		[this + BWD], temp			; this.bwd = source.bwd
		mov		temp, [source + KFUNC]
		mov		[this + KFUNC], temp		; this.kfunc = source.kfunc
		mov		temp, [source + HFUNC]
		mov		[this + HFUNC], temp		; this.hfunc = source.hfunc
;---[Copy content of nodes]----------------
		mov		param3, [source + CAPACITY]
		mov		param2, [source + ARRAY]
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		mov		fptr, Copy
		jmp		fptr						; return Array::Copy (this.array, source.array, source.capacity)
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + POOL], EMPTY	; this.pool = EMPTY
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		temp, [source + KFUNC]
		mov		[this + KFUNC], temp		; this.kfunc = source.kfunc
		mov		temp, [source + HFUNC]
		mov		[this + HFUNC], temp		; this.hfunc = source.hfunc
.exit:	add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
Destructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
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
		mov		qword [this + POOL], EMPTY	; this.pool = EMPTY
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + KFUNC], 0		; this.kfunc = NULL
		mov		qword [this + HFUNC], 0		; this.hfunc = NULL
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
macro	INSERT_CORE	type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
odata	equ		rsi							; pointer to old data structure
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		rcx							; pointer to array of nodes
iter	equ		rdx							; iterator value
next	equ		r8							; index of next node in the chain
node	equ		r9							; index of new node
fwd		equ		r10							; forward iterator
bwd		equ		r11							; forward iterator
func	equ		iter						; compare function
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_odata	equ		stack + 1 * 8				; stack position of "odata" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
s_table	equ		stack + 6 * 8				; stack position of "table" variable
s_iter	equ		stack + 7 * 8				; stack position of "iter" variable
s_next	equ		stack + 8 * 8				; stack position of "next" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		func, [this + KFUNC]		; get compare function
		shr		result, 1
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_odata], odata			; save "odata" variable into the stack
		movdqa	[s_value], value			; save "value" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
;---[Get hash value]-----------------------
		mov		func, [this + HFUNC]
		movq	param1, value
		call	func
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (value) * NSIZE
		sub		iter, 1
		and		iter, result
		add		iter, [s_table]				; iter = (hfunc (value) * NSIZE & mask) + table
		mov		next, [array + iter + FDIR] ; next = array[iter].fdir
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_next], next				; save "next" variable into the stack
		cmp		next, EMPTY					; if (next == EMPTY)
		je		.empty						;     then insert element into empty chain
;---[Compare head element]-----------------
		mov		param2, [array + iter + NDATA]
		mov		param1, [s_value]
		call	qword [s_func]				; result = Compare (value.key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		next, [s_next]				; get "next" variable from the stack
		cmp		result, 0					; if (result <= 0)
if type
		je		.undo1						;     then undo element insertion
end if
		jl		.head						;     then insert element into chain head
		cmp		next, [s_table]				; if (next >= table)
		jae		.chain						;     then skip following code
;---[Searching loop]-----------------------
.loop:	mov		param2, [array + next + NDATA]
		mov		param1, [s_value]
		call	qword [s_func]				; result = Compare (value.key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		next, [s_next]				; get "next" variable from the stack
		cmp		result, 0					; if (result <= 0)
if type
		je		.undo2						;     then undo element insertion
end if
		jl		.chain						;     then break the loop
		mov		iter, [s_next]				; get "next" variable from the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		next, [array + iter + FDIR] ; next = array[iter].fdir
		mov		[s_next], next				; save "next" variable into the stack
		cmp		next, [s_table]
		jb		.loop						; do while (next < table)
;---[Insert into chain]--------------------
.chain:	mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [this + POOL]			; node = this.pool
		mov		result, [array + node + FDIR]
		mov		[this + POOL], result		; this.pool = array[node].fdir
		add		qword [this + SIZE], NSIZE	; this.size++
		mov		[array + node + FDIR], next	; array[node].fdir = next
		mov		[array + node + BDIR], iter	; array[node].bdir = iter
		movdqa	value, [s_value]			; get "value" variable from the stack
		movdqa	[array + node + NDATA], value
		mov		[array + iter + FDIR], node	; array[iter].fdir = node
		mov		[array + next + BDIR], node	; array[next].bdir = node
		mov		iter, node					; iter = node
		mov		status, 1					; return {true, node}
		add		stack, space				; restoring back the stack pointer
		ret
;---[Insert into chain head]---------------
.head:	mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [this + POOL]			; node = this.pool
		mov		result, [array + node + FDIR]
		mov		[this + POOL], result		; this.pool = array[node].fdir
		add		qword [this + SIZE], NSIZE	; this.size++
		mov		[array + node + FDIR], next	; array[node].fdir = next
		mov		[array + node + BDIR], iter	; array[node].bdir = iter
		movdqa	value, [array + iter + NDATA]
		movdqa	[array + node + NDATA], value
		mov		[array + iter + FDIR], node	; array[iter].fdir = node
		movdqa	value, [s_value]			; get "value" variable from the stack
		movdqa	[array + iter + NDATA], value
		mov		[array + next + BDIR], node	; array[next].bdir = node
		mov		fwd, [this + FWD]
		cmp		fwd, iter					; if (fwd == iter)
		cmove	fwd, node					;     fwd = node
		mov		[this + FWD], fwd			; update iterator position
		mov		bwd, [this + BWD]
		cmp		bwd, iter					; if (bwd == iter)
		cmove	bwd, node					;     bwd = node
		mov		[this + BWD], bwd			; update iterator position
		mov		status, 1					; return {true, iter}
		add		stack, space				; restoring back the stack pointer
		ret
;---[Insert into empty chain]--------------
.empty:	mov		this, [s_this]				; get "this" variable from the stack
		movdqa	value, [s_value]			; get "value" variable from the stack
		add		qword [this + SIZE], NSIZE	; this.size++
		mov		[array + iter + FDIR], iter	; array[iter].fdir = iter
		mov		[array + iter + BDIR], iter	; array[iter].bdir = iter
		movdqa	[array + iter + NDATA], value
		mov		status, 1					; return {true, iter}
		add		stack, space				; restoring back the stack pointer
		ret
;---[Undo element insertion]---------------
if type = 1
.undo1:
.undo2:	mov		iter, EMPTY
		xor		status, status				; return {false, EMPTY}
		add		stack, space				; restoring back the stack pointer
		ret
else if type = 2
.undo1:	mov		odata, [s_odata]			; get "odata" variable from the stack
		movdqa	value, [array + iter + NDATA]
		movdqu	[odata], value				; odata[0] = array[iter].data
		movdqa	value, [s_value]			; array[iter].data = value
		movdqa	[array + iter + NDATA], value
		mov		status, 1					; return {true, iter}
		add		stack, space				; restoring back the stack pointer
		ret
.undo2:	mov		odata, [s_odata]			; get "odata" variable from the stack
		movdqa	value, [array + next + NDATA]
		movdqu	[odata], value				; odata[0] = array[next].data
		movdqa	value, [s_value]			; array[next].data = value
		movdqa	[array + next + NDATA], value
		mov		iter, next					; iter = next
		mov		status, 1					; return {true, next}
		add		stack, space				; restoring back the stack pointer
		ret
end if
}
InsertCoreMulti:	INSERT_CORE		0
InsertCoreUnique:	INSERT_CORE		1
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INSERT_ELEMENT	Func
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
temp	equ		rdx							; temporary register
value	equ		xmm0						; value to insert
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		cmp		qword [this + POOL], EMPTY	; if (this.pool == EMPTY)
		je		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	movdqu	value, [data]				; value = data[0]
		jmp		Func						; call Func (value)
;---[Extend object capacity]---------------
.ext:	sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		param2, [this + CAPACITY]
		shl		param2, 1
		cmp		param2, [this + CAPACITY]	; if (newcapacity <= capacity)
		setnbe	status						;     then return false
		jbe		.exit
		call	Extend						; status = this.Extend (capacity * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
.exit:	add		stack, space				; restoring back the stack pointer
		test	status, status
		jnz		.back						; if (status), then go back
		ret									;              else return false
}
InsertMulti:	INSERT_ELEMENT	InsertCoreMulti
InsertUnique:	INSERT_ELEMENT	InsertCoreUnique

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;
RemoveCore:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
iter	equ		rsi							; iterator value
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		rcx							; pointer to array of nodes
next	equ		rdx							; index of next node in the chain
fdir	equ		r8							; index of next node
bdir	equ		r9							; index of prev node
fwd		equ		r10							; forward iterator
bwd		equ		r11							; forward iterator
table	equ		result						; first element in hash table
pool	equ		result						; pointer to pool free node
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_iter	equ		stack + 2 * 8				; stack position of "iter" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		iter, [this + FWD]			; if (iter == fwd)
		je		.fwd						;     then correct forward iterator
.back1:	cmp		iter, [this + BWD]			; if (iter == bwd)
		je		.bwd						;     then correct backward iterator
;---[Remove regular node]------------------
.back2:	mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		table, [this + CAPACITY]	; get object capacity
		shr		table, 1					; table = capacity / 2
		cmp		iter, table					; if (iter < table)
		jb		.del						;     then delete node
		mov		next, [array + iter + FDIR] ; next = array[iter].fdir
		cmp		next, table					; if (next < table)
		jb		.rplc						;     then replace chain head
		mov		qword [array + iter + FDIR], EMPTY
		mov		qword [array + iter + BDIR], EMPTY
		sub		qword [this + SIZE], NSIZE	; this.size--
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Delete node]--------------------------
.del:	mov		pool, [this + POOL]
		mov		fdir, [array + iter + FDIR]	; fdir = array[iter].fdir
		mov		bdir, [array + iter + BDIR]	; bdir = array[iter].bdir
		mov		[array + bdir + FDIR], fdir	; array[bdir].fdir = fdir
		mov		[array + fdir + BDIR], bdir	; array[fdir].bdir = bdir
		mov		[array + iter + FDIR], pool ; array[iter].fdir = this.pool
		mov		[this + POOL], iter			; this.pool = iter
		sub		qword [this + SIZE], NSIZE	; this.size--
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Replace chain head]-------------------
.rplc:	mov		pool, [this + POOL]
		mov		fdir, [array + next + FDIR]	; fdir = array[next].fdir
		movdqa	temp, [array + next + NDATA]
		movdqa	[array + iter + NDATA], temp; array[iter].data = array[next].data
		mov		[array + iter + FDIR], fdir	; array[iter].fdir = fdir
		mov		[array + fdir + BDIR], iter	; array[fdir].bdir = iter
		mov		[array + next + FDIR], pool ; array[next].fdir = this.pool
		mov		[this + POOL], next			; this.pool = next
		sub		qword [this + SIZE], NSIZE	; this.size--
		mov		fwd, [this + FWD]
		cmp		fwd, next					; if (fwd == next)
		cmove	fwd, iter					;     fwd = iter
		mov		[this + FWD], fwd			; update iterator position
		mov		bwd, [this + BWD]
		cmp		bwd, next					; if (bwd == next)
		cmove	bwd, iter					;     bwd = iter
		mov		[this + BWD], bwd			; update iterator position
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator]-------------
.fwd:	mov		param4, NSIZE
		mov		param3, [this + FWD]
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	GoNext						; fwd = GoNext (array, capacity / 2, fwd, NSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		[this + FWD], result		; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator]------------
.bwd:	mov		param4, NSIZE
		mov		param3, [this + BWD]
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	GoPrev						; bwd = GoPrev (array, capacity / 2, bwd, NSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		[this + BWD], result		; update iterator position
		jmp		.back2						; go back
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	REMOVE_ELEMENT	offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rdx							; iterator value
array	equ		rcx							; pointer to array of nodes
temp	equ		xmm0						; temporary register
;------------------------------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		movdqa	temp, [array + iter + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		param2, iter
		jmp		RemoveCore					; call this.RemoveCore (iter)
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
RemoveFwd:	REMOVE_ELEMENT	FWD
RemoveBwd:	REMOVE_ELEMENT	BWD

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
macro	SET_ELEMENT		insfunc, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
iter	equ		rcx							; iterator value
func	equ		r8							; compare function
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_iter	equ		stack + 2 * 8				; stack position of "iter" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     return false
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		func, [this + KFUNC]		; get pointer to key compare function
		mov		[s_iter], iter				; save "iter" variable into the stack
		add		iter, [this + ARRAY]		; iter += array
		mov		[s_ptr], iter				; save "ptr" variable into the stack
;---[Compare keys]-------------------------
		mov		param1, [data]
		mov		param2, [iter + NDATA]
		call	func						; result = Compare (data[0].key, array[iter].data.key)
		cmp		result, 0					; if (result == 0)
		je		.skip						;     then go to skip branch
;---[Remove old key]-----------------------
		mov		param2, [s_iter]
		mov		param1, [s_this]
		call	RemoveCore					; call RemoveCore (iter)
;---[Insert new key]-----------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		cmp		qword [this + POOL], EMPTY	; if (this.pool == EMPTY)
		je		.ext						;     then try to extend object capacity
.back:	movdqu	temp, [data]
		add		stack, space				; restoring back the stack pointer
		jmp		insfunc						; return this.insfunc (data[0])
;---[Extend object capacity]---------------
.ext:	mov		param2, [this + CAPACITY]
		shl		param2, 1
		cmp		param2, [this + CAPACITY]	; if (newcapacity <= capacity)
		jbe		.error						;     then go to error branch
		call	Extend						; status = this.Extend (capacity * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		test	status, status
		jnz		.back						; if (status), then go back
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Skip branch]--------------------------
.skip:	mov		data, [s_data]				; get "data" variable from the stack
		mov		iter, [s_ptr]				; get "ptr" variable from the stack
		movdqu	temp, [data]
		movdqa	[iter + NDATA], temp		; array[iter].data = data[0]
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
}
SetFwdMulti:	SET_ELEMENT	InsertCoreMulti, FWD
SetBwdMulti:	SET_ELEMENT	InsertCoreMulti, BWD
SetFwdUnique:	SET_ELEMENT	InsertCoreUnique, FWD
SetBwdUnique:	SET_ELEMENT	InsertCoreUnique, BWD

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;
macro	GET_ELEMENT		offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rcx							; iterator value
temp	equ		xmm0						; temporary register
;------------------------------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		setne	status						;     return false
		je		.exit
;---[Normal execution branch]--------------
		add		iter, [this + ARRAY]
		movdqa	temp, [iter + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
.exit:	ret									; return true
}
GetFwd:	GET_ELEMENT		FWD
GetBwd:	GET_ELEMENT		BWD

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;
macro	REPLACE_ELEMENT		insfunc, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
odata	equ		rsi							; pointer to old data structure
ndata	equ		rdx							; pointer to new data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
iter	equ		rcx							; iterator value
func	equ		r8							; compare function
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_ndata	equ		stack + 1 * 8				; stack position of "ndata" variable
s_iter	equ		stack + 2 * 8				; stack position of "iter" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     return false
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_ndata], ndata			; save "ndata" variable into the stack
		mov		func, [this + KFUNC]		; get pointer to key compare function
		mov		[s_iter], iter				; save "iter" variable into the stack
		add		iter, [this + ARRAY]		; iter += array
		mov		[s_ptr], iter				; save "ptr" variable into the stack
		movdqa	temp, [iter + NDATA]
		movdqu	[odata], temp				; odata[0] = array[iter].data
;---[Compare keys]-------------------------
		mov		param1, [ndata]
		mov		param2, [iter + NDATA]
		call	func						; result = Compare (ndata[0].key, array[iter].data.key)
		cmp		result, 0					; if (result == 0)
		je		.skip						;     then go to skip branch
;---[Remove old key]-----------------------
		mov		param2, [s_iter]
		mov		param1, [s_this]
		call	RemoveCore					; call RemoveCore (iter)
;---[Insert new key]-----------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		cmp		qword [this + POOL], EMPTY	; if (this.pool == EMPTY)
		je		.ext						;     then try to extend object capacity
.back:	movdqu	temp, [ndata]
		add		stack, space				; restoring back the stack pointer
		jmp		insfunc						; return this.insfunc (ndata[0])
;---[Extend object capacity]---------------
.ext:	mov		param2, [this + CAPACITY]
		shl		param2, 1
		cmp		param2, [this + CAPACITY]	; if (newcapacity <= capacity)
		jbe		.error						;     then go to error branch
		call	Extend						; status = this.Extend (capacity * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		test	status, status
		jnz		.back						; if (status), then go back
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Skip branch]--------------------------
.skip:	mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		mov		iter, [s_ptr]				; get "ptr" variable from the stack
		movdqu	temp, [ndata]				; get "ndata" variable from the stack
		movdqa	[iter + NDATA], temp		; array[iter].data = ndata[0]
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
}
ReplaceFwdMulti:	REPLACE_ELEMENT		InsertCoreMulti, FWD
ReplaceBwdMulti:	REPLACE_ELEMENT		InsertCoreMulti, BWD
ReplaceFwdUnique:	REPLACE_ELEMENT		InsertCoreUnique, FWD
ReplaceBwdUnique:	REPLACE_ELEMENT		InsertCoreUnique, BWD

;******************************************************************************;
;       Overriding element value                                               ;
;******************************************************************************;
Override:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
odata	equ		rsi							; pointer to old data structure
ndata	equ		rdx							; pointer to new data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
temp	equ		rdx							; temporary register
value	equ		xmm0						; value to insert
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_odata	equ		stack + 1 * 8				; stack position of "odata" variable
s_ndata	equ		stack + 2 * 8				; stack position of "ndata" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		cmp		qword [this + POOL], EMPTY	; if (this.pool == EMPTY)
		je		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	pxor	value, value
		movdqu	[odata], value				; odata[0] = 0
		movdqu	value, [ndata]				; value = ndata[0]
	INSERT_CORE	2
;---[Extend object capacity]---------------
.ext:	sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_odata], odata			; save "odata" variable into the stack
		mov		[s_ndata], ndata			; save "ndata" variable into the stack
		mov		param2, [this + CAPACITY]
		shl		param2, 1
		cmp		param2, [this + CAPACITY]	; if (newcapacity <= capacity)
		setnbe	status						;     then return false
		jbe		.exit
		call	Extend						; status = this.Extend (cap * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		odata, [s_odata]			; get "odata" variable from the stack
		mov		ndata, [s_ndata]			; get "ndata" variable from the stack
.exit:	add		stack, space				; restoring back the stack pointer
		test	status, status
		jnz		.back						; if (status), then go back
		ret									;              else return false

;******************************************************************************;
;       Manipulation with forward iterator                                     ;
;******************************************************************************;
FindHead:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
table	equ		rsi							; first element in hash table
;---[Internal variables]-------------------
iter	equ		rax							; iterator value
;------------------------------------------
		lea		iter, [table - NSIZE]		; iter = table - NSIZE
;---[Searching loop]-----------------------
.loop:	add		iter, NSIZE					; iter++
		cmp		qword [array + iter + FDIR], EMPTY
		je		.loop						; do while (array[iter].fdir == EMPTY)
;---[End of searching loop]----------------
		ret									; return iter
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
FindTail:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
table	equ		rsi							; first element in hash table
;---[Internal variables]-------------------
iter	equ		rax							; iterator value
;------------------------------------------
		lea		iter, [table * 2]			; iter = table * 2
;---[Searching loop]-----------------------
.loop:	sub		iter, NSIZE					; iter--
		cmp		qword [array + iter + BDIR], EMPTY
		je		.loop						; do while (array[iter].bdir == EMPTY)
;---[End of searching loop]----------------
		mov		iter, [array + iter + BDIR]	; iter = array[iter].bdir
		ret									; return iter
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GoNext:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
table	equ		rsi							; first element in hash table
iter	equ		rdx							; iterator value
pos		equ		rcx							; number of positions to move
;---[Internal variables]-------------------
result	equ		rax							; result register
tbound	equ		r8							; upper bound of hash table
;------------------------------------------
		lea		tbound, [table * 2]			; tbound = table * 2
;---[Iteration loop]-----------------------
.loop:	mov		iter, [array + iter + FDIR]	; iter = array[iter].fdir
		cmp		iter, table					; if (iter < table)
		jb		.skip						;     then skip following code
;---[Internal loop]------------------------
@@:		add		iter, NSIZE					; iter++
		cmp		iter, tbound				; if (iter == tbound)
		je		.error						;     then go to error branch
		cmp		qword [array + iter + FDIR], EMPTY
		je		@b							; do while (array[iter].fdir == EMPTY)
;---[End of internal loop]-----------------
.skip:	sub		pos, NSIZE					; pos--
		jnz		.loop						; do while (pos != 0)
;---[End of iteration loop]----------------
		mov		result, iter				; return iter
		ret
;---[Error branch]-------------------------
.error:	mov		result, EMPTY				; return EMPTY
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GoPrev:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
table	equ		rsi							; first element in hash table
iter	equ		rdx							; iterator value
pos		equ		rcx							; number of positions to move
;---[Internal variables]-------------------
result	equ		rax							; result register
;---[Iteration loop]-----------------------
.loop:	cmp		iter, table					; if (iter < table)
		jb		.skip						;     then skip following code
;---[Internal loop]------------------------
@@:		sub		iter, NSIZE					; iter--
		cmp		iter, table					; if (iter < table)
		jb		.error						;     then go to error branch
		cmp		qword [array + iter + BDIR], EMPTY
		je		@b							; do while (array[iter].fdir == EMPTY)
;---[End of internal loop]-----------------
.skip:	mov		iter, [array + iter + BDIR]	; iter = array[iter].fdir
		sub		pos, NSIZE					; pos--
		jnz		.loop						; do while (pos != 0)
;---[End of iteration loop]----------------
		mov		result, iter				; return iter
		ret
;---[Error branch]-------------------------
.error:	mov		result, EMPTY				; return EMPTY
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SET_ITERATOR1	Func, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
result	equ		rax							; result register
size	equ		rdx							; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		size, [this + SIZE]			; get object size
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	Func						; result = Func (array, capacity / 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + offst], result		; update iterator position
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		qword [this + offst], EMPTY	; update iterator position
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SET_ITERATOR2	target, source
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
;------------------------------------------
		mov		temp, [this + source]
		mov		[this + target], temp		; set target iterator by source value
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MOVE_ITERATOR	Func, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
pos		equ		rsi							; number of positions to move
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rax							; iterator value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     then go to error branch
;---[Check position]-----------------------
		shl		pos, NSCALE					; if (pos == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		param4, pos
		mov		param3, iter
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	Func						; result = Func (array, capacity / 2, iter, pos)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + offst], result		; update iterator position
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.error						;     then go to error branch
;---[Normal exit branch]-------------------
.exit:	mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

;==============================================================================;
;       Set iterator position                                                  ;
;==============================================================================;
FwdToHead:	SET_ITERATOR1	FindHead, FWD
FwdToTail:	SET_ITERATOR1	FindTail, FWD
FwdToBwd:	SET_ITERATOR2	FWD, BWD

;==============================================================================;
;       Change iterator position                                               ;
;==============================================================================;
FwdGoNext:	MOVE_ITERATOR	GoNext, FWD
FwdGoPrev:	MOVE_ITERATOR	GoPrev, FWD

;******************************************************************************;
;       Manipulation with backward iterator                                    ;
;******************************************************************************;

;==============================================================================;
;       Set iterator position                                                  ;
;==============================================================================;
BwdToHead:	SET_ITERATOR1	FindHead, BWD
BwdToTail:	SET_ITERATOR1	FindTail, BWD
BwdToFwd:	SET_ITERATOR2	BWD, FWD

;==============================================================================;
;       Change iterator position                                               ;
;==============================================================================;
BwdGoNext:	MOVE_ITERATOR	GoPrev, BWD
BwdGoPrev:	MOVE_ITERATOR	GoNext, BWD

;******************************************************************************;
;       Swapping iterators                                                     ;
;******************************************************************************;
SwapFwdBwd:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
fwd		equ		rax							; forward iterator
bwd		equ		rdx							; forward iterator
;------------------------------------------
		mov		fwd, [this + FWD]			; get forward iterator value
		mov		bwd, [this + BWD]			; get backward iterator value
		mov		[this + FWD], bwd			; set forward iterator value
		mov		[this + BWD], fwd			; set backward iterator value
		ret

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;
macro	MINMAX	cmd, cond, c, offst, dir, max, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
func	equ		r10							; compare function
value	equ		r12							; min or max max value
vptr	equ		r13							; position of min or max value
pos		equ		r14							; temporary position variable
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
s_vptr	equ		stack + 1 * 8				; stack position of "vptr" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
s_this	equ		stack + 3 * 8				; stack position of "this" variable
s_data	equ		stack + 4 * 8				; stack position of "data" variable
s_array	equ		stack + 5 * 8				; stack position of "array" variable
s_func	equ		stack + 6 * 8				; stack position of "func" variable
s_tbnd	equ		stack + 7 * 8				; stack position of "tbound" variable
s_iter	equ		stack + 8 * 8				; stack position of "iter" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check object size]--------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		func, [this + KFUNC]		; get compare function
		mov		iter, result
if bwd
		shr		result, 1					; tbound /= 2
else
		shr		iter, 1
		sub		iter, NSIZE					; iter = tbound / 2 - NSIZE
end if
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_vptr], vptr				; save old value of "vptr" variable
		mov		[s_pos], pos				; save old value of "pos" variable
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_tbnd], result			; save "tbound" variable into the stack
;---[First element searching loop]---------
.floop:	cmd		iter, NSIZE					; change iterator position
		cmp		qword [array + iter + dir], EMPTY
		je		.floop						; do while (array[iter].dir == EMPTY)
;---[End of first element searching loop]--
		mov		[s_iter], iter				; save "iter" variable into the stack
if max
		mov		pos, [array + iter + dir]	; pos = array[iter].dir
else
		mov		pos, iter					; pos = iter
end if
		mov		value, [array + pos + NDATA]; value = array[pos].data.key
		mov		vptr, pos					; vptr = pos
		jmp		.iloop
;---[Search loop]--------------------------
.sloop:
if max
		mov		pos, [array + iter + BDIR]	; pos = array[iter].bdir
else
		mov		pos, iter					; pos = iter
end if
		mov		param2, [array + pos + NDATA]
		mov		param1, value
		call	qword [s_func]				; result = Compare (value, array[pos].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0					; if (result cond 0)
		jn#cond	.iloop						; {
		mov		value, [array + pos + NDATA];     value = array[pos].data.key
		mov		vptr, pos					;     vptr = pos }
;---[Internal loop]------------------------
.iloop:	cmd		iter, NSIZE					; change iterator position
		cmp		iter, [s_tbnd]				; if (iter == tbound)
		j#c		.exit						;     then go to exit
		cmp		qword [array + iter + dir], EMPTY
		je		.iloop						; do while (array[iter].dir == EMPTY)
;---[End of internal loop]-----------------
		mov		[s_iter], iter				; save "iter" variable into the stack
		jmp		.sloop						; do while (true)
;---[Normal exit branch]-------------------
.exit:	mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], vptr		; update iterator position
		movdqa	temp, [array + vptr + NDATA]
		movdqu	[data], temp				; data[0] = array[vptr].data
		mov		value, [s_value]			; restore old value of "value" variable
		mov		vptr, [s_vptr]				; restore old value of "vptr" variable
		mov		pos, [s_pos]				; restore old value of "pos" variable
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Minimum value
MinFwd:	MINMAX	add, g, e, FWD, FDIR, 0, 0
MinBwd:	MINMAX	sub, g, b, BWD, BDIR, 0, 1

; Maximum value
MaxFwd:	MINMAX	add, l, e, FWD, FDIR, 1, 0
MaxBwd:	MINMAX	sub, l, b, BWD, BDIR, 1, 1

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

;==============================================================================;
;       Single key searching                                                   ;
;==============================================================================;
macro	FIND_KEY	cond, offst, dir, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
func	equ		r10							; compare function
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_key	equ		stack + 2 * 8				; stack position of "key" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_table	equ		stack + 5 * 8				; stack position of "table" variable
s_iter	equ		stack + 6 * 8				; stack position of "iter" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check object size]--------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		func, [this + KFUNC]		; get compare function
		shr		result, 1
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
;---[Get hash value]-----------------------
		mov		func, [this + HFUNC]
		mov		param1, key
		call	func
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (key) * NSIZE
		sub		iter, 1
		and		iter, result
		add		iter, [s_table]				; iter = (hfunc (value) * NSIZE & mask) + table
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		qword [array + iter + dir], EMPTY
		je		.ntfnd						; if (array[iter].dir == EMPTY), then return false
;---[Search loop]--------------------------
.sloop:
if type = 1
		mov		iter, [array + iter + dir]	; iter = array[iter].dir
		mov		[s_iter], iter				; save "iter" variable into the stack
end if
		mov		param2, [array + iter + NDATA]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0
		j#cond	.ntfnd						; if (result cond 0), then return false
		je		.found						; if (result == 0), then go to found branch
if type = 0
		mov		iter, [array + iter + dir]	; iter = array[iter].dir
		mov		[s_iter], iter				; save "iter" variable into the stack
end if
		cmp		iter, [s_table]
		jb		.sloop						; do while (iter < table)
;---[Not found branch]---------------------
.ntfnd:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], iter		; update iterator position
		movdqa	temp, [array + iter + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
}
FindKeyFwd:	FIND_KEY	l, FWD, FDIR, 0
FindKeyBwd:	FIND_KEY	g, BWD, BDIR, 1

;==============================================================================;
;       Keys set searching                                                     ;
;==============================================================================;
macro	FIND_KEYS	cond, offst, dir, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
keys	equ		rdx							; pointer to array of keys
ksize	equ		rcx							; size of array of keys
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
kfunc	equ		r10							; compare function
hfunc	equ		r11							; hash function
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_keys	equ		stack + 2 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 3 * 8				; stack position of "ksize" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_kfunc	equ		stack + 5 * 8				; stack position of "kfunc" variable
s_hfunc	equ		stack + 6 * 8				; stack position of "hfunc" variable
s_table	equ		stack + 7 * 8				; stack position of "table" variable
s_iter	equ		stack + 8 * 8				; stack position of "iter" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check object size]--------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.ntfnd						;     return false
;---[Check ksize]--------------------------
		test	ksize, ksize				; if (ksize == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		kfunc, [this + KFUNC]		; get compare function
		mov		hfunc, [this + HFUNC]		; get hash function
		shr		result, 1
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_hfunc], hfunc			; save "hfunc" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
;---[Keys searching loop]------------------
.loop:	mov		param1, [keys]
		call	qword [s_hfunc]
		mov		keys, [s_keys]				; get "keys" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (key) * NSIZE
		sub		iter, 1
		and		iter, result
		add		iter, [s_table]				; iter = (hfunc (value) * NSIZE & mask) + table
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		qword [array + iter + dir], EMPTY
		je		.ntfnd						; if (array[iter].dir == EMPTY), then return false
;---[Search loop]--------------------------
.sloop:
if type = 1
		mov		iter, [array + iter + dir]	; iter = array[iter].dir
		mov		[s_iter], iter				; save "iter" variable into the stack
end if
		mov		param1, [keys]
		mov		param2, [array + iter + NDATA]
		call	qword [s_kfunc]				; result = Compare (keys[0], array[iter].data.key)
		mov		keys, [s_keys]				; get "keys" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0
		j#cond	.ntfnd						; if (result cond 0), then return false
		je		.found						; if (result == 0), then go to found branch
if type = 0
		mov		iter, [array + iter + dir]	; iter = array[iter].dir
		mov		[s_iter], iter				; save "iter" variable into the stack
end if
		cmp		iter, [s_table]
		jb		.sloop						; do while (iter < table)
;---[End of search loop]-------------------
		add		keys, 8						; keys++
		mov		[s_keys], keys				; save "keys" variable into the stack
		sub		qword [s_ksize], 1			; ksize--
		jnz		.loop						; do while (ksize != 0)
;---[Not found branch]---------------------
.ntfnd:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], iter		; update iterator position
		movdqa	temp, [array + iter + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
}
FindKeysFwd:	FIND_KEYS	l, FWD, FDIR, 0
FindKeysBwd:	FIND_KEYS	g, BWD, BDIR, 1

;==============================================================================;
;       Sequence searching                                                     ;
;==============================================================================;
macro	FIND_SEQUENCE	cond, offst, dir, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
func	equ		r10							; compare function
vptr	equ		r12							; position of key
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_vptr	equ		stack + 0 * 8				; stack position of "vptr" variable
s_this	equ		stack + 1 * 8				; stack position of "this" variable
s_data	equ		stack + 2 * 8				; stack position of "data" variable
s_key	equ		stack + 3 * 8				; stack position of "key" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
s_table	equ		stack + 6 * 8				; stack position of "table" variable
s_iter	equ		stack + 7 * 8				; stack position of "iter" variable
s_total	equ		stack + 8 * 8				; stack position of "total" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check object size]--------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		func, [this + KFUNC]		; get compare function
		shr		result, 1
		mov		[s_vptr], vptr				; save old value of "vptr" variable
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
;---[Get hash value]-----------------------
		mov		func, [this + HFUNC]
		mov		param1, key
		call	func
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (key) * NSIZE
		sub		iter, 1
		and		iter, result
		add		iter, [s_table]				; iter = (hfunc (value) * NSIZE & mask) + table
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		qword [array + iter + dir], EMPTY
		je		.exit						; if (array[iter].fdir == EMPTY), then go to exit
		mov		vptr, EMPTY					; vptr = EMPTY
;---[Search loop]--------------------------
.sloop:
if type = 1
		mov		iter, [array + iter + dir]	; iter = array[iter].dir
		mov		[s_iter], iter				; save "iter" variable into the stack
end if
		mov		param2, [array + iter + NDATA]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0
		j#cond	.brk						; if (result cond 0), then break the loop
		cmove	vptr, iter					; if (result == 0)
		sete	status						; {
		movzx	result, status				;     vptr = iter
		add		[s_total], result			;     then total++ }
if type = 0
		mov		iter, [array + iter + dir]	; iter = array[iter].dir
		mov		[s_iter], iter				; save "iter" variable into the stack
end if
		cmp		iter, [s_table]
		jb		.sloop						; do while (iter < table)
;---[End of search loop]-------------------
.brk:	cmp		vptr, EMPTY					; if (vptr == EMPTY)
		je		.skip						;     then key is not found
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], vptr		; update iterator position
		movdqa	temp, [array + vptr + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
.skip:	mov		vptr, [s_vptr]				; restore old value of "vptr" variable
;---[Normal exit]--------------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret
}
FindSequenceFwd:	FIND_SEQUENCE	g, FWD, BDIR, 1
FindSequenceBwd:	FIND_SEQUENCE	l, BWD, FDIR, 0

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
DupFwd:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
table	equ		rsi							; first element in hash table
iter	equ		rdx							; iterator value
func	equ		rcx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
prev	equ		r8							; previous iterator value
tbound	equ		r9							; upper bound of hash table
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_table	equ		stack + 1 * 8				; stack position of "table" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_tbnd	equ		stack + 3 * 8				; stack position of "tbound" variable
s_prev	equ		stack + 4 * 8				; stack position of "prev" variable
s_iter	equ		stack + 5 * 8				; stack position of "iter" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		lea		tbound, [table * 2]			; tbound = table * 2
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], table			; save "table" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_tbnd], tbound			; save "tbound" variable into the stack
;---[Check loop]---------------------------
.loop:	mov		prev, iter					; prev = iter
		mov		iter, [array + iter + FDIR]	; iter = array[iter].fdir
		mov		[s_prev], prev				; save "prev" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		iter, [s_table]				; if (iter >= table)
		jae		.iloop						;     then skip following code
;---[Duplicates check loop]----------------
@@:		mov		param2, [array + iter + NDATA]
		mov		param1, [array + prev + NDATA]
		call	qword [s_func]				; result = Compare (array[prev].data.key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		mov		prev, iter					; prev = iter
		mov		iter, [array + iter + FDIR]	; iter = array[iter].fdir
		mov		[s_prev], prev				; save "prev" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		iter, [s_table]
		jb		@b							; do while (iter < table)
;---[End of duplicates check loop]---------
.iloop:	add		iter, NSIZE					; iter++
		cmp		iter, [s_tbnd]				; if (iter == tbound)
		je		.break						;     then break the loop
		cmp		qword [array + iter + FDIR], EMPTY
		je		.iloop						; do while (array[iter].fdir == EMPTY)
		jmp		.loop						; do while (true)
;---[End of check loop]--------------------
.break:	mov		result, EMPTY				; return EMPTY
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		result, [s_prev]			; return prev
		add		stack, space				; restoring back the stack pointer
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
DupBwd:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
table	equ		rsi							; first element in hash table
iter	equ		rdx							; iterator value
func	equ		rcx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
prev	equ		r9							; previous iterator value
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_table	equ		stack + 1 * 8				; stack position of "table" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_prev	equ		stack + 3 * 8				; stack position of "prev" variable
s_iter	equ		stack + 4 * 8				; stack position of "iter" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], table			; save "table" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Check loop]---------------------------
.loop:	mov		prev, iter					; prev = iter
		mov		[s_prev], prev				; save "prev" variable into the stack
		cmp		prev, [s_table]				; if (prev >= table)
		jae		.iloop						;     then skip following code
;---[Duplicates check loop]----------------
@@:		mov		iter, [array + prev + BDIR]	; iter = array[prev].bdir
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		param2, [array + iter + NDATA]
		mov		param1, [array + prev + NDATA]
		call	qword [s_func]				; result = Compare (array[prev].data.key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		mov		prev, iter					; prev = iter
		mov		[s_prev], prev				; save "prev" variable into the stack
		cmp		prev, [s_table]
		jb		@b							; do while (prev < table)
;---[End of duplicates check loop]---------
.iloop:	sub		prev, NSIZE					; prev--
		cmp		prev, [s_table]				; if (prev < table)
		jb		.break						;     then break the loop
		cmp		qword [array + prev + BDIR], EMPTY
		je		.iloop						; do while (array[prev].bdir == EMPTY)
		mov		iter, [array + prev + BDIR]	; iter = array[prev].bdir
		jmp		.loop						; do while (true)
;---[End of check loop]--------------------
.break:	mov		result, EMPTY				; return EMPTY
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		result, [s_prev]			; return prev
		add		stack, space				; restoring back the stack pointer
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_DUP	Func, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
iter	equ		rcx							; iterator value
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
;---[Call search function]-----------------
		mov		param3, iter
		mov		param4, [this + KFUNC]
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	Func						; result = Func (array, capacity / 2, iter, func)
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.ntfnd						;     return false
;---[Update iterator value]----------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], result		; update iterator position
		add		result, [this + ARRAY]
		movdqa	temp, [result + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}
FindDupFwd:	FIND_DUP	DupFwd, FWD
FindDupBwd:	FIND_DUP	DupBwd, BWD

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

;==============================================================================;
;       Single key counting                                                    ;
;==============================================================================;
CountKey:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
key		equ		rsi							; key to find
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
func	equ		r10							; compare function
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_key	equ		stack + 1 * 8				; stack position of "key" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_table	equ		stack + 4 * 8				; stack position of "table" variable
s_iter	equ		stack + 5 * 8				; stack position of "iter" variable
s_total	equ		stack + 6 * 8				; stack position of "total" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check object size]--------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		func, [this + KFUNC]		; get compare function
		shr		result, 1
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
;---[Get hash value]-----------------------
		mov		func, [this + HFUNC]
		mov		param1, key
		call	func
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (key) * NSIZE
		sub		iter, 1
		and		iter, result
		add		iter, [s_table]				; iter = (hfunc (value) * NSIZE & mask) + table
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		qword [array + iter + FDIR], EMPTY
		je		.exit						; if (array[iter].fdir == EMPTY), then go to exit
;---[Search loop]--------------------------
.sloop:	mov		param2, [array + iter + NDATA]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0
		jl		.exit						; if (result < 0), then go to exit
		sete	status						; if (result == 0)
		movzx	result, status				; {
		add		[s_total], result			;     then total++ }
		mov		iter, [array + iter + FDIR]	; iter = array[iter].fdir
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		iter, [s_table]
		jb		.sloop						; do while (iter < table)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret

;==============================================================================;
;       Keys set counting                                                      ;
;==============================================================================;
CountKeys:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
keys	equ		rsi							; pointer to array of keys
ksize	equ		rdx							; size of array of keys
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
kfunc	equ		r10							; compare function
hfunc	equ		r11							; hash function
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_keys	equ		stack + 1 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 2 * 8				; stack position of "ksize" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_kfunc	equ		stack + 4 * 8				; stack position of "kfunc" variable
s_hfunc	equ		stack + 5 * 8				; stack position of "hfunc" variable
s_table	equ		stack + 6 * 8				; stack position of "table" variable
s_iter	equ		stack + 7 * 8				; stack position of "iter" variable
s_total	equ		stack + 8 * 8				; stack position of "total" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check object size]--------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.exit						;     then go to exit
;---[Check ksize]--------------------------
		test	ksize, ksize				; if (ksize == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		kfunc, [this + KFUNC]		; get compare function
		mov		hfunc, [this + HFUNC]		; get hash function
		shr		result, 1
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_hfunc], hfunc			; save "hfunc" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
;---[Keys searching loop]------------------
.loop:	mov		param1, [keys]
		call	qword [s_hfunc]
		mov		keys, [s_keys]				; get "keys" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (key) * NSIZE
		sub		iter, 1
		and		iter, result
		add		iter, [s_table]				; iter = (hfunc (value) * NSIZE & mask) + table
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		qword [array + iter + FDIR], EMPTY
		je		.exit						; if (array[iter].fdir == EMPTY), then go to exit
;---[Search loop]--------------------------
.sloop:	mov		param1, [keys]
		mov		param2, [array + iter + NDATA]
		call	qword [s_kfunc]				; result = Compare (keys[0], array[iter].data.key)
		mov		keys, [s_keys]				; get "keys" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0
		jl		.exit						; if (result < 0), then go to exit
		sete	status						; if (result == 0)
		movzx	result, status				; {
		add		[s_total], result			;     then total++ }
		mov		iter, [array + iter + FDIR]	; iter = array[iter].fdir
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		iter, [s_table]
		jb		.sloop						; do while (iter < table)
;---[End of search loop]-------------------
		add		keys, 8						; keys++
		mov		[s_keys], keys				; save "keys" variable into the stack
		sub		qword [s_ksize], 1			; ksize--
		jnz		.loop						; do while (ksize != 0)
;---[End of keys searching loop]-----------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
Unique:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target hash table object
source	equ		rsi							; pointer to source hash table object
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
iter	equ		rcx							; iterator value
tbound	equ		rdx							; upper bound of hash table
array	equ		r8							; pointer to array of nodes
size	equ		r9							; hash table size
value	equ		r10							; key value
total	equ		r11							; count of duplicates
key		equ		xmm0						; key value
data	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_tbnd	equ		stack + 4 * 8				; stack position of "tbound" variable
s_table	equ		stack + 5 * 8				; stack position of "table" variable
s_iter	equ		stack + 6 * 8				; stack position of "iter" variable
s_value	equ		stack + 7 * 8				; stack position of "value" variable
s_total	equ		stack + 8 * 8				; stack position of "total" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check target object size]-------------
		cmp		qword [this + SIZE], 0		; if (size)
		jnz		.error						;     then go to error branch
;---[Check source object size]-------------
		mov		size, [source + SIZE]		; get size of source hash table object
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		shl		size, 1
	Capacity	size, result, MINCAP		; compute new capacity of target object
		cmp		size, [this + CAPACITY]		; if (size > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	mov		result, [this + KFUNC]		; get pointer to key compare function
		mov		array, [source + ARRAY]		; get pointer to source array of nodes
		mov		tbound, [source + CAPACITY]	; get source object capacity
		mov		[s_func], result			; save "func" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_tbnd], tbound			; save "tbound" variable into the stack
		shr		tbound, 1					; table = capacity / 2
		mov		[s_table], tbound			; save "table" variable into the stack
		lea		iter, [tbound - NSIZE]
;---[Internal loop]------------------------
.loop:	add		iter, NSIZE					; iter++
		cmp		iter, [s_tbnd]				; if (iter == tbound)
		je		.exit						;     then go to exit
		cmp		qword [array + iter + FDIR], EMPTY
		je		.loop						; do while (array[iter].fdir == EMPTY)
;---[End of internal loop]-----------------
		mov		value, [array + iter + NDATA]
		mov		[s_value], value			; save "value" variable into the stack
		mov		qword [s_total], 1			; total = 1
		mov		iter, [array + iter + FDIR]	; iter = array[iter].fdir
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		iter, [s_table]				; if (iter >= table)
		jae		.skip						;     then skip the loop
;---[Duplicates check loop]----------------
.dloop:	mov		param2, [array + iter + NDATA]
		mov		param1, value
		call	qword [s_func]				; result = Compare (value.key, array[iter].key)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		total, [s_total]			; get "total" variable from the stack
		test	result, result				; if (result != 0)
		jz		@f							; {
		movq	key, [s_value]
		movq	data, [s_total]
	punpcklqdq	key, data
		call	InsertCoreMulti				;     call this.InsertCoreMulti ({key, total})
		mov		this, [s_this]				;     get "this" variable from the stack
		mov		array, [s_array]			;     get "array" variable from the stack
		mov		iter, [s_iter]				;     get "iter" variable from the stack
		mov		value, [array + iter + NDATA]
		xor		total, total				;     total = 0 }
		mov		[s_value], value			; save "value" variable into the stack
@@:		add		total, 1					; total++
		mov		[s_total], total			; save "total" variable into the stack
		mov		iter, [array + iter + FDIR]	; iter = array[iter].fdir
		mov		[s_iter], iter				; save "iter" variable into the stack
		cmp		iter, [s_table]
		jb		.dloop						; do while (iter < table)
;---[End of duplicates check loop]---------
.skip:	mov		this, [s_this]				; get "this" variable from the stack
		movq	key, [s_value]
		movq	data, [s_total]
	punpcklqdq	key, data
		call	InsertCoreMulti				; call this.InsertCoreMulti ({key, total})
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		jmp		.loop						; do while (true)
;---[Normal exit branch]-------------------
.exit:	mov		result, [this + SIZE]
		shr		result, NSCALE				; return this.size
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, size
		call	Extend						; status = this.Extend (size)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Check for duplicate values                                             ;
;******************************************************************************;
CheckDup:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		qword [this + SIZE], NSIZE	; if (size <= NSIZE)
		setnbe	status						;     then set status and
		jbe		.exit						;     go to exit
;---[Go to head element]-------------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	FindHead					; result = FindHead (array, capacity / 2)
;---[Call check function]------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		param4, [this + KFUNC]
		mov		param3, result
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	DupFwd						; result = DupFwd (array, capacity / 2, iter, func)
		cmp		result, EMPTY				; if (result == EMPTY)
		setne	status						;     return false
.exit:	add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Hash table properties                                                  ;
;******************************************************************************;
GetCompareFunction:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + KFUNC]		; get object key compare function
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetHashFunction:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + HFUNC]		; get object hash function
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetCapacity:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + CAPACITY]	; get object capacity
		shr		result, NSCALE				; return this.capacity
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetSize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + SIZE]		; get object size
		shr		result, NSCALE				; return this.size
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IsEmpty:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
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
this	equ		rdi							; pointer to hash table object
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
