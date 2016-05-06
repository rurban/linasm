;                                                                       Hash.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                            HASH TABLE DATA TYPE                             #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'
include	'Syscall.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################
extrn	'Array_Copy'			as	Copy
extrn	'NodeDeleteCore'		as	DeleteCore
extrn	'NodeReplaceLeftCore'	as	ReplaceLeftCore
extrn	'NodeReplaceRightCore'	as	ReplaceRightCore
extrn	'NodeJoinCore'			as	JoinCore
extrn	'NodeSplitCore'			as	SplitCore

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
public	GetIter					as	'MultiHash_GetIter'
public	GetIter					as	'UniqueHash_GetIter'
public	GetFwd					as	'_ZNK9MultiHash6GetFwdEP6data_t'
public	GetFwd					as	'_ZNK10UniqueHash6GetFwdEP6data_t'
public	GetBwd					as	'_ZNK9MultiHash6GetBwdEP6data_t'
public	GetBwd					as	'_ZNK10UniqueHash6GetBwdEP6data_t'
public	GetIter					as	'_ZNK9MultiHash7GetIterEP6data_tl'
public	GetIter					as	'_ZNK10UniqueHash7GetIterEP6data_tl'

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
;       Manipulation with external iterator                                    ;
;******************************************************************************;

;==============================================================================;
;       Set iterator position                                                  ;
;==============================================================================;

; To head element
public	IterToHead				as	'MultiHash_IterToHead'
public	IterToHead				as	'UniqueHash_IterToHead'
public	IterToHead				as	'_ZNK9MultiHash10IterToHeadEv'
public	IterToHead				as	'_ZNK10UniqueHash10IterToHeadEv'

; To tail element
public	IterToTail				as	'MultiHash_IterToTail'
public	IterToTail				as	'UniqueHash_IterToTail'
public	IterToTail				as	'_ZNK9MultiHash10IterToTailEv'
public	IterToTail				as	'_ZNK10UniqueHash10IterToTailEv'

; To forward iterator
public	IterToFwd				as	'MultiHash_IterToFwd'
public	IterToFwd				as	'UniqueHash_IterToFwd'
public	IterToFwd				as	'_ZNK9MultiHash9IterToFwdEv'
public	IterToFwd				as	'_ZNK10UniqueHash9IterToFwdEv'

; To backward iterator
public	IterToBwd				as	'MultiHash_IterToBwd'
public	IterToBwd				as	'UniqueHash_IterToBwd'
public	IterToBwd				as	'_ZNK9MultiHash9IterToBwdEv'
public	IterToBwd				as	'_ZNK10UniqueHash9IterToBwdEv'

;==============================================================================;
;       Change iterator position                                               ;
;==============================================================================;

; Move in forward direction
public	IterGoFwd				as	'MultiHash_IterGoFwd'
public	IterGoFwd				as	'UniqueHash_IterGoFwd'
public	IterGoFwd				as	'_ZNK9MultiHash9IterGoFwdEmPl'
public	IterGoFwd				as	'_ZNK10UniqueHash9IterGoFwdEmPl'

; Move in backward direction
public	IterGoBwd				as	'MultiHash_IterGoBwd'
public	IterGoBwd				as	'UniqueHash_IterGoBwd'
public	IterGoBwd				as	'_ZNK9MultiHash9IterGoBwdEmPl'
public	IterGoBwd				as	'_ZNK10UniqueHash9IterGoBwdEmPl'

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
public	MinIterFwd				as	'MultiHash_MinIterFwd'
public	MinIterFwd				as	'UniqueHash_MinIterFwd'
public	MinIterBwd				as	'MultiHash_MinIterBwd'
public	MinIterBwd				as	'UniqueHash_MinIterBwd'
public	MinFwd					as	'_ZN9MultiHash6MinFwdEP6data_t'
public	MinFwd					as	'_ZN10UniqueHash6MinFwdEP6data_t'
public	MinBwd					as	'_ZN9MultiHash6MinBwdEP6data_t'
public	MinBwd					as	'_ZN10UniqueHash6MinBwdEP6data_t'
public	MinIterFwd				as	'_ZNK9MultiHash10MinIterFwdEP6data_tPl'
public	MinIterFwd				as	'_ZNK10UniqueHash10MinIterFwdEP6data_tPl'
public	MinIterBwd				as	'_ZNK9MultiHash10MinIterBwdEP6data_tPl'
public	MinIterBwd				as	'_ZNK10UniqueHash10MinIterBwdEP6data_tPl'

; Maximum value
public	MaxFwd					as	'MultiHash_MaxFwd'
public	MaxFwd					as	'UniqueHash_MaxFwd'
public	MaxBwd					as	'MultiHash_MaxBwd'
public	MaxBwd					as	'UniqueHash_MaxBwd'
public	MaxIterFwd				as	'MultiHash_MaxIterFwd'
public	MaxIterFwd				as	'UniqueHash_MaxIterFwd'
public	MaxIterBwd				as	'MultiHash_MaxIterBwd'
public	MaxIterBwd				as	'UniqueHash_MaxIterBwd'
public	MaxFwd					as	'_ZN9MultiHash6MaxFwdEP6data_t'
public	MaxFwd					as	'_ZN10UniqueHash6MaxFwdEP6data_t'
public	MaxBwd					as	'_ZN9MultiHash6MaxBwdEP6data_t'
public	MaxBwd					as	'_ZN10UniqueHash6MaxBwdEP6data_t'
public	MaxIterFwd				as	'_ZNK9MultiHash10MaxIterFwdEP6data_tPl'
public	MaxIterFwd				as	'_ZNK10UniqueHash10MaxIterFwdEP6data_tPl'
public	MaxIterBwd				as	'_ZNK9MultiHash10MaxIterBwdEP6data_tPl'
public	MaxIterBwd				as	'_ZNK10UniqueHash10MaxIterBwdEP6data_tPl'

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

; Single key searching
public	FindKeyFwd				as	'MultiHash_FindKeyFwd'
public	FindKeyFwd				as	'UniqueHash_FindKeyFwd'
public	FindKeyBwd				as	'MultiHash_FindKeyBwd'
public	FindKeyBwd				as	'UniqueHash_FindKeyBwd'
public	FindKeyIterFwd			as	'MultiHash_FindKeyIterFwd'
public	FindKeyIterFwd			as	'UniqueHash_FindKeyIterFwd'
public	FindKeyIterBwd			as	'MultiHash_FindKeyIterBwd'
public	FindKeyIterBwd			as	'UniqueHash_FindKeyIterBwd'
public	FindKeyFwd				as	'_ZN9MultiHash10FindKeyFwdEP6data_t5adt_t'
public	FindKeyFwd				as	'_ZN10UniqueHash10FindKeyFwdEP6data_t5adt_t'
public	FindKeyBwd				as	'_ZN9MultiHash10FindKeyBwdEP6data_t5adt_t'
public	FindKeyBwd				as	'_ZN10UniqueHash10FindKeyBwdEP6data_t5adt_t'
public	FindKeyIterFwd			as	'_ZNK9MultiHash14FindKeyIterFwdEP6data_t5adt_tPl'
public	FindKeyIterFwd			as	'_ZNK10UniqueHash14FindKeyIterFwdEP6data_t5adt_tPl'
public	FindKeyIterBwd			as	'_ZNK9MultiHash14FindKeyIterBwdEP6data_t5adt_tPl'
public	FindKeyIterBwd			as	'_ZNK10UniqueHash14FindKeyIterBwdEP6data_t5adt_tPl'

; Keys set searching
public	FindKeysFwd				as	'MultiHash_FindKeysFwd'
public	FindKeysFwd				as	'UniqueHash_FindKeysFwd'
public	FindKeysBwd				as	'MultiHash_FindKeysBwd'
public	FindKeysBwd				as	'UniqueHash_FindKeysBwd'
public	FindKeysIterFwd			as	'MultiHash_FindKeysIterFwd'
public	FindKeysIterFwd			as	'UniqueHash_FindKeysIterFwd'
public	FindKeysIterBwd			as	'MultiHash_FindKeysIterBwd'
public	FindKeysIterBwd			as	'UniqueHash_FindKeysIterBwd'
public	FindKeysFwd				as	'_ZN9MultiHash11FindKeysFwdEP6data_tPK5adt_tm'
public	FindKeysFwd				as	'_ZN10UniqueHash11FindKeysFwdEP6data_tPK5adt_tm'
public	FindKeysBwd				as	'_ZN9MultiHash11FindKeysBwdEP6data_tPK5adt_tm'
public	FindKeysBwd				as	'_ZN10UniqueHash11FindKeysBwdEP6data_tPK5adt_tm'
public	FindKeysIterFwd			as	'_ZNK9MultiHash15FindKeysIterFwdEP6data_tPK5adt_tmPl'
public	FindKeysIterFwd			as	'_ZNK10UniqueHash15FindKeysIterFwdEP6data_tPK5adt_tmPl'
public	FindKeysIterBwd			as	'_ZNK9MultiHash15FindKeysIterBwdEP6data_tPK5adt_tmPl'
public	FindKeysIterBwd			as	'_ZNK10UniqueHash15FindKeysIterBwdEP6data_tPK5adt_tmPl'

; Sequence searching
public	FindSequenceFwd			as	'MultiHash_FindSequenceFwd'
public	FindSequenceBwd			as	'MultiHash_FindSequenceBwd'
public	FindSequenceIterFwd		as	'MultiHash_FindSequenceIterFwd'
public	FindSequenceIterBwd		as	'MultiHash_FindSequenceIterBwd'
public	FindSequenceFwd			as	'_ZN9MultiHash15FindSequenceFwdEP6data_t5adt_t'
public	FindSequenceBwd			as	'_ZN9MultiHash15FindSequenceBwdEP6data_t5adt_t'
public	FindSequenceIterFwd		as	'_ZNK9MultiHash19FindSequenceIterFwdEP6data_t5adt_tPl'
public	FindSequenceIterBwd		as	'_ZNK9MultiHash19FindSequenceIterBwdEP6data_t5adt_tPl'

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
public	FindDupFwd				as	'MultiHash_FindDupFwd'
public	FindDupBwd				as	'MultiHash_FindDupBwd'
public	FindDupIterFwd			as	'MultiHash_FindDupIterFwd'
public	FindDupIterBwd			as	'MultiHash_FindDupIterBwd'
public	FindDupFwd				as	'_ZN9MultiHash10FindDupFwdEP6data_t'
public	FindDupBwd				as	'_ZN9MultiHash10FindDupBwdEP6data_t'
public	FindDupIterFwd			as	'_ZNK9MultiHash14FindDupIterFwdEP6data_tPl'
public	FindDupIterBwd			as	'_ZNK9MultiHash14FindDupIterBwdEP6data_tPl'

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
NSCALE		= 6								; Node scale factor
NSIZE		= 1 shl NSCALE					; Size of node (bytes)
NMASK		= not (NSIZE - 1)				; Mask to extract node index
IMASK		= NSIZE - KSIZE					; Mask to extract element index
EMPTY		= -NSIZE						; Pointer which points to empty node
MINCAP		= 1 shl	PSCALE					; Min capacity of hash table object

;==============================================================================;
;       Limit sizes for the nodes                                              ;
;==============================================================================;
NMAX		= NSIZE - KSIZE					; Max size of node
NMIN		= NSIZE / 2						; Min size of node

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
node	equ		rsi							; first node of hash table
size	equ		rdx							; size of hash table
;---[Initialization loop]------------------
.loop:	mov		[array + node + FDIR], node	; array[node].fdir = node
		mov		[array + node + BDIR], node	; array[node].fdir = node
		add		node, NSIZE					; node++
		sub		size, NSIZE					; size++
		jnz		.loop						; do while (size != 0)
;---[End of initialization loop]-----------
		ret

;******************************************************************************;
;       Moving of hash table                                                   ;
;******************************************************************************;
MoveTable:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
target	equ		rsi							; position of target table
source	equ		rdx							; position of source table
;---[Internal variables]-------------------
index	equ		rax							; element index
array	equ		rcx							; pointer to array of nodes
fnode	equ		r8							; node value of forward iterator
bnode	equ		r9							; node value of backward iterator
fdir	equ		r10							; index of next node
bdir	equ		r11							; index of prev node
node	equ		r12							; node index
nsize	equ		r13							; node size
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
stack	equ		rsp							; stack pointer
s_node	equ		stack + 0 * 8				; stack position of "node" variable
s_nsize	equ		stack + 1 * 8				; stack position of "nsize" variable
s_count	equ		stack + 2 * 8				; stack position of "count" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_node], node				; save old value of "node" variable
		mov		[s_nsize], nsize			; save old value of "nsize" variable
		mov		[s_count], source			; save "count" variable into the stack
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		fnode, NMASK				; load node mask
		and		fnode, [this + FWD]			; fnode = this.fwd & NMASK
		mov		bnode, NMASK				; load node mask
		and		bnode, [this + BWD]			; bnode = this.bwd & NMASK
;---[Moving loop]--------------------------
.loop:
repeat	NSIZE / CLINE
		movdqa	temp0, [array + source + (% - 1) * CLINE + 0 * KSIZE]
		movdqa	temp1, [array + source + (% - 1) * CLINE + 1 * KSIZE]
		movdqa	temp2, [array + source + (% - 1) * CLINE + 2 * KSIZE]
		movdqa	temp3, [array + source + (% - 1) * CLINE + 3 * KSIZE]
		movdqa	[array + target + (% - 1) * CLINE + 0 * KSIZE], temp0
		movdqa	[array + target + (% - 1) * CLINE + 1 * KSIZE], temp1
		movdqa	[array + target + (% - 1) * CLINE + 2 * KSIZE], temp2
		movdqa	[array + target + (% - 1) * CLINE + 3 * KSIZE], temp3
end repeat
		mov		fdir, [array + target + FDIR]
		mov		bdir, [array + target + BDIR]
		mov		node, NMASK					; load node mask
		mov		nsize, IMASK				; load index mask
		and		node, fdir					; node = fdir & NMASK
		and		nsize, fdir					; nsize = fdir & IMASK
		add		nsize, target				; nsize = target + nsize
		cmp		node, source				; if (node == source)
		cmove	fdir, nsize					;     fdir = target + nsize
		cmove	bdir, target				;     bdir = target
		mov		[array + target + FDIR], fdir
		mov		[array + target + BDIR], bdir
		mov		[array + node + BDIR], target
		mov		fdir, [array + bdir + FDIR]
		mov		nsize, IMASK				; load index mask
		and		nsize, fdir					; nsize = fdir & IMASK
		add		nsize, target				; nsize = target + nsize
		mov		[array + bdir + FDIR], nsize
		cmp		fnode, source				; if (fnode == source)
		cmove	fnode, target				;     fnode = target
		cmp		bnode, source				; if (bnode == source)
		cmove	bnode, target				;     bnode = target
		add		source, NSIZE				; source++
		add		target, NSIZE				; target++
		sub		qword [s_count], NSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of moving loop]-------------------
		mov		index, IMASK				; load index mask
		and		index, [this + FWD]			; index = this.fwd & IMASK
		add		fnode, index				; fnode += index
		mov		[this + FWD], fnode			; update iterator position
		mov		index, IMASK				; load index mask
		and		index, [this + BWD]			; index = this.bwd & IMASK
		add		bnode, index				; bnode += index
		mov		[this + BWD], bnode			; update iterator position
		neg		source
		add		source, target
		mov		param1, array
		mov		node, [s_node]				; restore old value of "node" variable
		mov		nsize, [s_nsize]			; restore old value of "nsize" variable
		add		stack, space				; restoring back the stack pointer
		jmp		InitTable					; return InitTable (array, target, target - source)

;******************************************************************************;
;       Correcting hash table                                                  ;
;******************************************************************************;
CorrectTable:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
size	equ		rsi							; old size of hash table
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
kfunc	equ		r9							; compare function
hfunc	equ		r10							; hash function
node	equ		r11							; node index
iter	equ		rdx							; iterator value
prev	equ		rcx							; previous iterator value
temp	equ		xmm0						; temporary register
key		equ		prev						; key value
nsize	equ		kfunc						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_kfunc	equ		stack + 2 * 8				; stack position of "kfunc" variable
s_hfunc	equ		stack + 3 * 8				; stack position of "hfunc" variable
s_table	equ		stack + 4 * 8				; stack position of "table" variable
s_fkey	equ		stack + 5 * 8				; stack position of "fkey" variable
s_bkey	equ		stack + 6 * 8				; stack position of "bkey" variable
s_find	equ		stack + 7 * 8				; stack position of "findex" variable
s_bind	equ		stack + 8 * 8				; stack position of "bindex" variable
s_node	equ		stack + 9 * 8				; stack position of "node" variable
s_iter	equ		stack + 10 * 8				; stack position of "iter" variable
s_prev	equ		stack + 11 * 8				; stack position of "prev" variable
s_data	equ		stack + 12 * 8				; stack position of "data" variable
space	= 15 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		kfunc, [this + KFUNC]		; get compare function
		mov		hfunc, [this + HFUNC]		; get hash function
		shr		result, 1
		lea		node, [result + size]		; node = table + size
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_hfunc], hfunc			; save "hfunc" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		qword [s_find], -KSIZE		; findex = -KSIZE
		mov		qword [s_bind], -KSIZE		; bindex = -KSIZE
		mov		iter, [this + FWD]			; iter = this.fwd
		cmp		iter, EMPTY					; if (iter != EMPTY)
		jne		.fwd						;     then save position of forward iterator
.back:	mov		iter, [this + BWD]			; iter = this.bwd
		cmp		iter, EMPTY					; if (iter != EMPTY)
		jne		.bwd						;     then save position of backward iterator
;---[Search loop]--------------------------
.sloop:	sub		node, NSIZE					; node--
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		jz		.tskip						; if (nsize == 0), then skip following code
		mov		[s_node], node				; save "node" variable into the stack
		mov		iter, [array + node + BDIR]	; iter = array[node].bdir
		mov		nsize, [array + iter + FDIR]
		and		nsize, IMASK				; nsize = array[iter].fdir & IMASK
		lea		prev, [iter + nsize - KSIZE]; prev = iter + nsize - 1
		mov		[this + BWD], prev			; update iterator position
;---[Internal loop]------------------------
.iloop:	mov		prev, [this + BWD]			; prev = this.bwd
		movdqa	temp, [array + prev + NDATA]; temp = array[prev].data
		mov		[s_prev], prev				; save "prev" variable into the stack
		movdqa	[s_data], temp				; save "data" variable into the stack
		mov		param1, [s_data]
		call	qword [s_hfunc]
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (data.key) * NSIZE
		sub		node, 1
		and		node, result
		add		node, [s_table]				; node = (hfunc (keys[0]) * NSIZE & mask) + table
		cmp		node, [s_node]				; if new node value is not equal to
		jne		.move						; the old one, then move the element
		mov		param4, KSIZE
		mov		param3, [this + BWD]
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoPrev						; call GoPrev (array, table, bwd, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		[this + BWD], result		; update iterator position
		cmp		node, [s_prev]
		jne		.iloop						; do while (node != prev)
;---[End of internal loop]-----------------
		jmp		.tskip
.move:	mov		param2, [s_prev]
		call	RemoveCore					; call this.RemoveCore (prev)
		mov		this, [s_this]				; get "this" variable from the stack
		movdqa	temp, [s_data]
		call	InsertCoreMulti				; call this.InsertCoreMulti (data)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		cmp		node, [s_prev]
		jne		.iloop						; do while (node != prev)
;---[End of internal loop]-----------------
.tskip:	cmp		node, [s_table]
		jne		.sloop						; do while (node != table)
;---[End of search loop]-------------------
		cmp		qword [s_find], -KSIZE		; if (findex == -KSIZE)
		je		@f							;     then skip following code
		mov		param3, [s_fkey]
		lea		param2, [s_data]
		call	FindKeyFwd					; call this.FindKeyFwd (&data, fkey)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		param4, [s_find]
		mov		param3, [this + FWD]
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoNext						; call GoNext (array, table, fwd, findex)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + FWD], result		; update iterator position
@@:		cmp		qword [s_bind], -KSIZE		; if (bindex == -KSIZE)
		je		@f							;     then skip following code
		mov		param3, [s_fkey]
		lea		param2, [s_data]
		call	FindKeyBwd					; call this.FindKeyBwd (&data, fkey)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		param4, [s_bind]
		mov		param3, [this + BWD]
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoPrev						; call GoPrev (array, table, bwd, bindex)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + BWD], result		; update iterator position
@@:		mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Save forward iterator branch]---------
.fwd:	mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		key, [array + iter + NDATA]	; key = array[iter].data
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_fkey], key				; save "fkey" variable into the stack
.floop:	add		qword [s_find], KSIZE		; findex++
		mov		param4, KSIZE
		mov		param3, [s_iter]
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoPrev						; call GoPrev (array, table, iter, KSIZE)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		[s_iter], result			; save "iter" variable into the stack
		mov		param1, [s_fkey]
		mov		param2, [array + result + NDATA]
		call	qword [s_kfunc]				; result = Compare (key, array[iter].data)
		test	result, result
		jz		.floop						; do while (result == 0)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		jmp		.back						; go back
;---[Save backward iterator branch]--------
.bwd:	mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		key, [array + iter + NDATA]	; key = array[iter].data
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_fkey], key				; save "fkey" variable into the stack
.bloop:	add		qword [s_bind], KSIZE		; bindex++
		mov		param4, KSIZE
		mov		param3, [s_iter]
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoNext						; call GoNext (array, table, iter, KSIZE)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		[s_iter], result			; save "iter" variable into the stack
		mov		param1, [s_fkey]
		mov		param2, [array + result + NDATA]
		call	qword [s_kfunc]				; result = Compare (key, array[iter].data)
		test	result, result
		jz		.bloop						; do while (result == 0)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		jmp		.sloop						; go back

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
size	equ		r10							; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_ncap	equ		stack + 1 * 8				; stack position of "newcap" variable
s_ocap	equ		stack + 2 * 8				; stack position of "oldcap" variable
s_pool	equ		stack + 3 * 8				; stack position of "oldpool" variable
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
		mov		size, [this + SIZE]			; get object size
		shr		oldcap, 1					; oldcap /= 2
		mov		[s_ocap], oldcap			; save "oldcap" variable into the stack
		mov		[s_pool], oldpool			; save "oldpool" variable into the stack
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], newcap	; this.capacity = newcap
		mov		[this + POOL], oldcap		; this.pool = oldcap / 2
		test	size, size					; if (size == 0)
		jz		.empty						;     then go to empty branch
		mov		param3, oldcap
		mov		param2, newcap
		shr		param2, 1
		call	MoveTable					; call this.MoveTable (newcap / 2, oldcap / 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		param4, [s_pool]
		mov		param3, [s_ncap]
		shr		param3, 1
		mov		param2, [s_ocap]
		mov		param1, [this + ARRAY]
		call	InitFree					; call InitFree (array, oldcap / 2, newcap / 2, oldpool)
		mov		param2, [s_ocap]
		mov		param1, [s_this]
		add		stack, space				; restoring back the stack pointer
		jmp		CorrectTable				; call this.CorrectTable (oldcap / 2)
;---[Empty hash table branch]--------------
.empty:	mov		param3, newcap
		shr		param3, 1
		mov		param2, param3
		mov		param1, array
		call	InitTable					; call InitTable (array, newcap / 2, newcap / 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		param4, [s_pool]
		mov		param3, [s_ncap]
		shr		param3, 1
		mov		param2, [s_ocap]
		mov		param1, [this + ARRAY]
		add		stack, space				; restoring back the stack pointer
		jmp		InitFree					; call InitFree (array, oldcap / 2, newcap / 2, oldpool)
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
		shl		cap, NSCALE + 1				; cap = cap * 2 * NSIZE
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
		mov		param3, cap
		shr		param3, 1
		mov		param2, param3
		mov		param1, array
		call	InitTable					; call InitTable (array, cap / 2, cap / 2)
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
		mov		fptr, Copy
		add		stack, space				; restoring back the stack pointer
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

;==============================================================================;
;       Insert element into the node                                           ;
;==============================================================================;
InsertNode:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
node	equ		rsi							; node index
pos		equ		rdx							; insert position
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
size	equ		rcx							; node size
array	equ		r9							; pointer to array of nodes
iter	equ		r10							; iterator value
iter1	equ		r11							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_node	equ		stack + 1 * 8				; stack position of "node" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Insert data into the node]------------
		mov		size, [array + node + FDIR]	; get node size
		add		size, KSIZE					; size++
		mov		[array + node + FDIR], size	; update node size
		and		size, IMASK					; extract node size
		neg		pos							; pos = -pos
		add		node, size					; node += size
		lea		param1, [array + node + NDATA - KSIZE]
		lea		param2, [size + pos - KSIZE]
		mov		fptr, ReplaceLeftCore
		call	fptr						; call ReplaceLeftCore (array[node].data + size - 1, size - pos - 1, value)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then correct iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then correct iterator position
;---[Normal exit]--------------------------
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator branch]------
.fwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter + KSIZE]
		cmp		ival, pos					; if (ival >= pos)
		cmovae	iter, iter1					;     iter = iter + KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.bwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter + KSIZE]
		cmp		ival, pos					; if (ival >= pos)
		cmovae	iter, iter1					;     iter = iter + KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Insert element into the left node                                      ;
;==============================================================================;
InsertLeft:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
node	equ		rsi							; node index
pos		equ		rdx							; insert position
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
array	equ		r9							; pointer to array of nodes
iter	equ		r10							; iterator value
iter1	equ		r11							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_node	equ		stack + 1 * 8				; stack position of "node" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Insert data into the node]------------
		neg		pos							; pos = -pos
		add		node, NMIN - KSIZE			; node += NMIN - KSIZE
		lea		param1, [array + node + NDATA]
		lea		param2, [pos + NMIN - KSIZE]
		mov		fptr, ReplaceLeftCore
		call	fptr						; call ReplaceLeftCore (array[node].data + NMIN - KSIZE, NMIN - KSIZE - pos, value)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then correct iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then correct iterator position
;---[Normal exit]--------------------------
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator branch]------
.fwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter + KSIZE]
		cmp		ival, pos					; if (ival >= pos)
		cmovae	iter, iter1					;     iter = iter + KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.bwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter + KSIZE]
		cmp		ival, pos					; if (ival >= pos)
		cmovae	iter, iter1					;     iter = iter + KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Insert element into the right node                                     ;
;==============================================================================;
InsertRight:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
node	equ		rsi							; node index
pos		equ		rdx							; insert position
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
array	equ		r9							; pointer to array of nodes
iter	equ		r10							; iterator value
iter1	equ		r11							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_node	equ		stack + 1 * 8				; stack position of "node" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Insert data into the node]------------
		lea		param1, [array + node + NDATA]
		mov		param2, pos
		mov		fptr, ReplaceRightCore
		call	fptr						; call ReplaceRightCore (array[node].data, pos, value)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then correct iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then correct iterator position
;---[Normal exit]--------------------------
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator branch]------
.fwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, pos					; if (ival <= pos)
		cmovbe	iter, iter1					;     iter = iter - KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.bwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, pos					; if (ival <= pos)
		cmovbe	iter, iter1					;     iter = iter - KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Split the node                                                         ;
;==============================================================================;
SplitNode:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
node	equ		rsi							; index of node to split
pos		equ		rdx							; insert position
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
nnode	equ		rcx							; new node
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
iter1	equ		r10							; new iterator value #1
iter2	equ		r11							; new iterator value #2
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
next	equ		iter						; next node
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_node	equ		stack + 1 * 8				; stack position of "node" variable
s_nnode	equ		stack + 2 * 8				; stack position of "nnode" variable
s_pos	equ		stack + 3 * 8				; stack position of "pos" variable
s_value	equ		stack + 4 * 8				; stack position of "value" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Allocate new node]--------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		next, NMASK					; load node mask
		and		next, [array + node + FDIR]	; next = array[node].fdir & NMASK
		mov		nnode, [this + POOL]		; nnode = this.pool
		mov		result, [array + nnode + FDIR]
		mov		[this + POOL], result		; this.pool = array[nnode].fdir
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_nnode], nnode			; save "nnode" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
		movdqa	[s_value], value			; save "value" variable into the stack
;---[Split node]---------------------------
		lea		result, [next + NMIN]
		mov		[array + nnode + FDIR], result
		mov		[array + nnode + BDIR], node
		lea		result, [nnode + NMIN]
		mov		[array + node + FDIR], result
		mov		[array + next + BDIR], nnode
		mov		param3, NMIN
		lea		param2, [array + node + NMIN - KSIZE + NDATA]
		lea		param1, [array + nnode + NDATA]
		mov		fptr, SplitCore
		call	fptr						; call SplitCore (array[nnode].data, array[node].data + NMIN + KSIZE, NMIN)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		nnode, [s_nnode]			; get "nnode" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
		movdqa	value, [s_value]			; get "value" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then correct iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then correct iterator position
.back2:	cmp		pos, NMIN - KSIZE			; if (pos > NMIN - KSIZE)
		ja		.else						;     then go to else branch
;---[if pos <= NMIN - KSIZE]---------------
		mov		param3, pos
		mov		param2, node
		add		stack, space				; restoring back the stack pointer
		jmp		InsertLeft					; return this.InsertLeft (node, pos, value)
;---[else]---------------------------------
.else:	lea		param3, [pos - NMIN]
		mov		param2, nnode
		add		stack, space				; restoring back the stack pointer
		jmp		InsertRight					; return this.InsertRight (nnode, pos - NMIN, value)
;---[Correct forward iterator branch]------
.fwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		iter1, iter					; iter1 = iter
		lea		iter2, [nnode + ival - NMIN + KSIZE]
		cmp		pos, NMIN - KSIZE			; if (pos <= NMIN - KSIZE)
		cmovbe	iter1, iter2				;     then iter1 = nnode + ival - NMIN + KSIZE
		cmp		ival, NMIN - KSIZE
		cmove	iter, iter1					; if (ival = NMIN - KSIZE), then iter = iter1
		cmova	iter, iter2					; if (ival > NMIN - KSIZE), then iter = nnode + ival - NMIN - KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.bwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		iter1, iter					; iter1 = iter
		lea		iter2, [nnode + ival - NMIN + KSIZE]
		cmp		pos, NMIN - KSIZE			; if (pos <= NMIN - KSIZE)
		cmovbe	iter1, iter2				;     then iter1 = nnode + ival - NMIN + KSIZE
		cmp		ival, NMIN - KSIZE
		cmove	iter, iter1					; if (ival = NMIN - KSIZE), then iter = iter1
		cmova	iter, iter2					; if (ival > NMIN - KSIZE), then iter = nnode + ival - NMIN - KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Insert element into hash table                                         ;
;==============================================================================;
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
node	equ		r8							; index of current node in the chain
next	equ		r9							; index of next node in the chain
ptr		equ		r10							; temporary pointer
func	equ		r11							; compare function
nsize	equ		result						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_odata	equ		stack + 1 * 8				; stack position of "odata" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
s_table	equ		stack + 6 * 8				; stack position of "table" variable
s_node	equ		stack + 7 * 8				; stack position of "node" variable
s_next	equ		stack + 8 * 8				; stack position of "next" variable
s_nsize	equ		stack + 9 * 8				; stack position of "nsize" variable
s_count	equ		stack + 10 * 8				; stack position of "count" variable
s_ptr	equ		stack + 11 * 8				; stack position of "ptr" variable
s_base	equ		stack + 12 * 8				; stack position of "base" variable
space	= 13 * 8							; stack size required by the procedure
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
		mov		node, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (value) * NSIZE
		sub		node, 1
		and		node, result
		add		node, [s_table]				; node = (hfunc (value) * NSIZE & mask) + table
		mov		ptr, [array + node + FDIR]	; ptr = array[node].fdir
		mov		nsize, IMASK				; load index mask
		and		nsize, ptr					; nsize = array[node].fdir & IMASK
		jz		.empty						; if (nsize == 0), then insert element into empty chain
		jmp		@f
;---[Search loop]--------------------------
.loop:	mov		node, next					; node = next
		mov		ptr, [array + next + FDIR]	; ptr = array[next].fdir
		mov		nsize, IMASK				; load index mask
		and		nsize, ptr					; nsize = array[next].fdir & IMASK
@@:		mov		next, NMASK 				; load node mask
		and		next, ptr					; next = array[next].fdir & NMASK
		lea		ptr, [array + node + NDATA]	; ptr = array[mode].data
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_next], next				; save "next" variable into the stack
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
		mov		[s_count], nsize			; save "count" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_base], ptr				; save "base" variable into the stack
;---[Internal loop]------------------------
.iloop:	mov		param1, [s_value]
		mov		param2, [ptr]
		call	qword [s_func]				; result = Compare (value.key, ptr[0].key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		next, [s_next]				; get "next" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		cmp		result, 0
if type
		je		.undo						; if (result == 0), then undo element insertion
end if
		jle		.break						; if (result <= 0), then break the loop
		add		ptr, KSIZE					; ptr++
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.iloop						; do while (count != 0)
;---[End of internal loop]-----------------
		cmp		next, [s_table]
		jb		.loop						; do while (next < table)
;---[End of search loop]-------------------
.break:	cmp		qword [s_nsize], NMAX		; if (nsize == NMAX)
		je		.split						;     then split the node
;---[Insert into node branch]--------------
		mov		this, [s_this]				; get "this" variable from the stack
		movdqa	value, [s_value]			; get "value" variable from the stack
		add		qword [this + SIZE], KSIZE	; this.size++
		sub		ptr, [s_base]
		mov		param3, ptr
		mov		param2, node
		add		stack, space				; restoring back the stack pointer
		jmp		InsertNode					; return this.InsertNode (node, ptr - base, value)
;---[Split node branch]--------------------
.split:	mov		this, [s_this]				; get "this" variable from the stack
		movdqa	value, [s_value]			; get "value" variable from the stack
		add		qword [this + SIZE], KSIZE	; this.size++
		sub		ptr, [s_base]
		mov		param3, ptr
		mov		param2, node
		add		stack, space				; restoring back the stack pointer
		jmp		SplitNode					; return this.SplitNode (node, index, value)
;---[Insert into empty chain]--------------
.empty:	mov		this, [s_this]				; get "this" variable from the stack
		movdqa	value, [s_value]			; get "value" variable from the stack
		add		qword [this + SIZE], KSIZE	; this.size++
		add		qword [array + node + FDIR], KSIZE
		movdqa	[array + node + NDATA], value
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Undo element insertion]---------------
if type = 1
.undo:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
else if type = 2
.undo:	mov		odata, [s_odata]			; get "odata" variable from the stack
		movdqa	value, [ptr]
		movdqu	[odata], value				; odata[0] = ptr[0]
		movdqa	value, [s_value]
		movdqa	[ptr], value				; ptr[0] = value
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
end if
}
InsertCoreMulti:	INSERT_CORE		0
InsertCoreUnique:	INSERT_CORE		1

;==============================================================================;
;       Insertion of element                                                   ;
;==============================================================================;
macro	INSERT_ELEMENT	InsertCore
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
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
		jmp		InsertCore					; call InsertCore (value)
;---[Extend object capacity]---------------
.ext:	sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		param2, [this + CAPACITY]
		shl		param2, 1
		call	Extend						; status = this.Extend (capacity * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		add		stack, space				; restoring back the stack pointer
		test	status, status
		jnz		.back						; if (status), then go back
		ret									;              else return false
}
InsertMulti:	INSERT_ELEMENT	InsertCoreMulti
InsertUnique:	INSERT_ELEMENT	InsertCoreUnique

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;

;==============================================================================;
;       Delete element from the node                                           ;
;==============================================================================;
DeleteNode:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
node	equ		rsi							; node index
pos		equ		rdx							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
array	equ		r8							; pointer to array of nodes
size	equ		r9							; node size
iter	equ		r10							; iterator value
iter1	equ		r11							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_node	equ		stack + 2 * 8				; stack position of "node" variable
s_pos	equ		stack + 3 * 8				; stack position of "pos" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Remove element from the node]---------
		mov		size, [array + node + FDIR]	; get node size
		sub		size, KSIZE					; size--
		mov		[array + node + FDIR], size	; update node size
		and		size, IMASK					; extract node size
		mov		[s_size], size				; save "size" variable into the stack
		add		node, pos					; node += pos
		neg		pos							; pos = -pos
		lea		param1, [array + node + NDATA]
		lea		param2, [pos + size]
		mov		fptr, DeleteCore
		call	fptr						; call DeleteCore (array[node].data + pos, size - pos)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		cmp		qword [this + SIZE], 0		; if (this.size == 0)
		jz		.reset						;     then reset hash table properties
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then correct iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then correct iterator position
;---[Normal exit]--------------------------
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator branch]------
.fwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival > pos)
		cmova	iter, iter1					;     iter = iter - KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		cmp		ival, [s_size]				; if (ival >= size)
		jae		@f							;     then go to next element
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
@@:		mov		param4, KSIZE
		lea		param3, [iter - KSIZE]
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [s_array]
		call	GoNext						; fwd = GoNext (array, capacity / 2, iter - KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		[this + FWD], result		; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.bwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival >= pos)
		cmovae	iter, iter1					;     iter = iter - KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		cmp		ival, [s_size]				; if (ival > size)
		ja		@f							;     then go to prev element
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
@@:		mov		param4, KSIZE
		lea		param3, [iter + KSIZE]
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [s_array]
		call	GoPrev						; bwd = GoPrev (array, capacity / 2, iter + KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		[this + BWD], result		; update iterator position
		jmp		.back2						; go back
;---[Reset hash table properties]----------
.reset:	mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret

;==============================================================================;
;       Replace element in the left node                                       ;
;==============================================================================;
ReplaceLeft:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
lnode	equ		rsi							; left node index
rnode	equ		rdx							; right node index
pos		equ		rcx							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
array	equ		r8							; pointer to array of nodes
size	equ		r9							; node size
iter	equ		r10							; iterator value
iter1	equ		r11							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
value	equ		xmm0						; value to replace
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_lnode	equ		stack + 2 * 8				; stack position of "lnode" variable
s_rnode	equ		stack + 3 * 8				; stack position of "rnode" variable
s_pos	equ		stack + 4 * 8				; stack position of "pos" variable
s_size	equ		stack + 5 * 8				; stack position of "size" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_lnode], lnode			; save "lnode" variable into the stack
		mov		[s_rnode], rnode			; save "rnode" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Get value]----------------------------
		mov		size, [array + lnode + FDIR]; get node size
		sub		size, KSIZE					; size--
		mov		[array + lnode + FDIR], size; update node size
		and		size, IMASK					; extract node size
		mov		[s_size], size				; save "size" variable into the stack
		add		lnode, array
		add		lnode, size
		movdqa	value, [lnode + NDATA]		; value = array[lnode].data[size]
;---[Replace element in the node]----------
		add		rnode, pos					; rnode += pos
		lea		param1, [array + rnode + NDATA]
		mov		param2, pos
		mov		fptr, ReplaceLeftCore
		call	fptr						; call ReplaceLeftCore (array[rnode].data + pos, pos, value)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		this, [s_this]				; get "this" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct backward iterator]------------
		mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then correct iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then correct iterator position
;---[Correct forward iterator]-------------
.back1:	mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then correct iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then correct iterator position
;---[Normal exit]--------------------------
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct backward iterator branch]-----
.bleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		iter1, rnode
		cmp		ival, [s_size]				; if (ival == size)
		cmove	iter, iter1					;     iter = rnode
		mov		[this + BWD], iter			; update iterator position
		jmp		.back1						; go back
.brght:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter + KSIZE]
		cmp		ival, [s_pos]				; if (ival < pos)
		cmovb	iter, iter1					;    iter = iter + KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back1						; go back
;---[Correct forward iterator branch]------
.fleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		iter1, rnode
		cmp		ival, [s_size]				; if (ival == size)
		cmove	iter, iter1					;     iter = rnode
		mov		[this + FWD], iter			; update iterator position
		jmp		.back2						; go back
.frght:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter + KSIZE]
		cmp		ival, [s_pos]				; if (ival <= pos)
		cmovbe	iter, iter1					;    iter = iter + KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		cmp		ival, NMIN - KSIZE			; if (ival > NMIN - KSIZE)
		ja		@f							;     then go to next element
		mov		[this + FWD], iter			; update iterator position
		jmp		.back2						; go back
@@:		mov		param4, KSIZE
		lea		param3, [iter - KSIZE]
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [s_array]
		call	GoNext						; fwd = GoNext (array, capacity / 2, iter - KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + FWD], result		; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Replace element in the right node                                      ;
;==============================================================================;
ReplaceRight:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
lnode	equ		rsi							; left node index
rnode	equ		rdx							; right node index
pos		equ		rcx							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
array	equ		r8							; pointer to array of nodes
size	equ		r9							; node size
iter	equ		r10							; iterator value
iter1	equ		r11							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
value	equ		xmm0						; value to replace
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_lnode	equ		stack + 2 * 8				; stack position of "lnode" variable
s_rnode	equ		stack + 3 * 8				; stack position of "rnode" variable
s_pos	equ		stack + 4 * 8				; stack position of "pos" variable
s_size	equ		stack + 5 * 8				; stack position of "size" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_lnode], lnode			; save "lnode" variable into the stack
		mov		[s_rnode], rnode			; save "rnode" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Get value]----------------------------
		mov		size, [array + rnode + FDIR]; get node size
		sub		size, KSIZE					; size--
		mov		[array + rnode + FDIR], size; update node size
		and		size, IMASK					; extract node size
		mov		[s_size], size				; save "size" variable into the stack
		add		rnode, array
		movdqa	value, [rnode + NDATA]		; value = array[rnode].data[0]
;---[Replace element in the node]----------
		add		lnode, pos					; lnode += pos
		neg		pos							; pos = -pos
		lea		param1, [array + lnode + NDATA]
		lea		param2, [pos + NMIN - KSIZE]
		mov		fptr, ReplaceRightCore
		call	fptr						; call ReplaceRightCore (array[lnode].data + pos, NMIN - KSIZE - pos, value)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		lea		param1, [array + rnode + NDATA]
		mov		param2, [s_size]
		mov		fptr, DeleteCore
		call	fptr						; call DeleteCore (array[rnode].data, size)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then correct iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then correct iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then correct iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then correct iterator position
;---[Normal exit]--------------------------
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator branch]------
.frght:	sub		iter, KSIZE					; iter -= KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [lnode + NMIN - KSIZE]
		cmp		ival, [s_size]				; if (ival > size)
		cmova	iter, iter1					;    iter = lnode + NMIN - KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
.fleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival > pos)
		cmova	iter, iter1					;     iter = iter - KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.brght:	sub		iter, KSIZE					; iter -= KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [lnode + NMIN - KSIZE]
		cmp		ival, [s_size]				; if (ival > size)
		cmova	iter, iter1					;    iter = lnode + NMIN - KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
.bleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival >= pos)
		cmovae	iter, iter1					;     iter = iter - KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		cmp		ival, NMIN - KSIZE			; if (ival > NMIN - KSIZE)
		ja		@f							;     then go to next element
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
@@:		mov		param4, KSIZE
		lea		param3, [iter + KSIZE]
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [s_array]
		call	GoPrev						; bwd = GoPrev (array, capacity / 2, iter + KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + BWD], result		; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Join two nodes                                                         ;
;==============================================================================;
JoinNode:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
lnode	equ		rsi							; left node index
rnode	equ		rdx							; right node index
node	equ		rcx							; node index
pos		equ		r8							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
array	equ		r9							; pointer to array of nodes
iter	equ		r10							; iterator value
iter1	equ		r11							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
next	equ		result						; next node
lsize	equ		iter						; size of left node
rsize	equ		iter1						; size of right node
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_lnode	equ		stack + 2 * 8				; stack position of "lnode" variable
s_rnode	equ		stack + 3 * 8				; stack position of "rnode" variable
s_pos	equ		stack + 4 * 8				; stack position of "pos" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_lnode], lnode			; save "lnode" variable into the stack
		mov		[s_rnode], rnode			; save "rnode" variable into the stack
;---[Correct position]---------------------
		lea		result, [pos + NMIN]		; result = pos + NMIN
		cmp		node, lnode					; if (node == lnode)
		cmove	result, pos					;     result = pos
		mov		[s_pos], result				; save "pos" variable into the stack
;---[Join nodes]---------------------------
		sub		qword [array + node + FDIR], KSIZE
		add		node, pos					; node += pos
		neg		pos							; pos = -pos
		lea		param1, [array + node + NDATA]
		lea		param2, [pos + NMIN - KSIZE]
		mov		fptr, DeleteCore
		call	fptr						; call DeleteCore (array[node].data + pos, NMIN - KSIZE - pos)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		mov		lsize, IMASK				; load index mask
		mov		rsize, IMASK				; load index mask
		mov		next, NMASK					; load node mask
		and		lsize, [array + lnode + FDIR]
		and		rsize, [array + rnode + FDIR]
		and		next, [array + rnode + FDIR]
		add		next, NMAX
		mov		qword [array + lnode + FDIR], next
		add		lnode, lsize
		lea		param1, [array + lnode + NDATA]
		lea		param2, [array + rnode + NDATA]
		mov		param3, rsize
		mov		fptr, JoinCore
		call	fptr						; call JoinCore (array[lnode].data + lsize, array[rnode].data, rsize)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then correct iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then correct iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then correct iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then correct iterator position
;---[Free node]----------------------------
.back2:	mov		result, [this + POOL]		; array[rnode].fdir = this.pool
		mov		[array + rnode + FDIR], result
		mov		[this + POOL], rnode		; this.pool = rnode
		mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator branch]------
.frght:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter, [lnode + ival + NMIN]
.fleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival > pos)
		cmova	iter, iter1					;     iter = iter - KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		cmp		ival, NMAX					; if (ival >= NMAX)
		jae		@f							;     then go to next element
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
@@:		mov		rsize, IMASK				; load index mask
		and		rsize, [array + rnode + FDIR]
		mov		param4, KSIZE
		lea		param3, [rnode + rsize - KSIZE]
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [s_array]
		call	GoNext						; fwd = GoNext (array, capacity / 2, rnode + rsize - KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		mov		[this + FWD], result		; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.brght:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter, [lnode + ival + NMIN]
.bleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival >= pos)
		cmovae	iter, iter1					;     iter = iter - KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		cmp		ival, NMAX					; if (ival > NMAX)
		ja		@f							;     then go to next element
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
@@:		mov		param4, KSIZE
		mov		param3, lnode
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [s_array]
		call	GoPrev						; bwd = GoPrev (array, capacity / 2, lnode, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		mov		[this + BWD], result		; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Remove element from hash table                                         ;
;==============================================================================;
RemoveCore:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
iter	equ		rsi							; iterator value
;---[Internal variables]-------------------
array	equ		rax							; pointer to array of nodes
node	equ		rdx							; node index
index	equ		rcx							; delete position
lnode	equ		r8							; left node index
rnode	equ		r9							; right node index
lsize	equ		r10							; left node size
rsize	equ		r11							; right node size
nsize	equ		lsize						; node size
size	equ		lsize						; object size
table	equ		rsize						; first element in hash table
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_iter	equ		stack + 2 * 8				; stack position of "iter" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		table, [this + CAPACITY]	; get object capacity
		shr		table, 1					; table = capacity / 2
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
;---[Get node pointer]---------------------
		mov		size, [this + SIZE]			; get object size
		sub		size, KSIZE					; this.size--
		mov		[this + SIZE], size			; update object size
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		mov		nsize, IMASK				; load index mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
		and		nsize, [array + node + FDIR]
		sub		nsize, KSIZE				; nsize = (array[node].fdir & IMASK) - KSIZE
		je		.clear						; if (nsize == 1), then clear the chain
		cmp		nsize, NMIN					; if (nsize >= NMIN)
		jae		.del						;     then delete element
		mov		rnode, NMASK				; load node mask
		and		rnode, [array + node + FDIR]; rnode = array[node].fdir & NMASK
		mov		lnode, [array + node + BDIR]; lnode = array[node].bdir
		cmp		node, rnode					; if (node == rnode)
		je		.del						;     then delete element
		cmp		node, table					; if (node >= table)
		jae		.else						;     then go to else branch
;---[if lnode != EMPTY]--------------------
		mov		lsize, IMASK				; load index mask
		and		lsize, [array + lnode + FDIR]
		sub		lsize, KSIZE				; lsize = (array[lnode].fdir & IMASK) - KSIZE
		cmp		lsize, NMIN					; if (lsize >= NMIN)
		jae		.left						;     then replace element in the left node
		mov		param2, lnode
		mov		param5, index
		mov		param4, node
		mov		param3, node
		add		stack, space				; restoring back the stack pointer
		jmp		JoinNode					; call this.JoinNode (lnode, node, node, index)
;---[else]---------------------------------
.else:	mov		rsize, IMASK				; load index mask
		and		rsize, [array + rnode + FDIR]
		sub		rsize, KSIZE				; rsize = (array[rnode].fdir & IMASK) - KSIZE
		cmp		rsize, NMIN					; if (rsize >= NMIN)
		jae		.right						;     then replace element in the right node
		mov		param5, index
		mov		param4, node
		mov		param2, node
		mov		param3, rnode
		add		stack, space				; restoring back the stack pointer
		jmp		JoinNode					; call this.JoinNode (node, rnode, node, index)
;---[Clear the chain]----------------------
.clear:	sub		qword [array + node + FDIR], KSIZE
;---[Correct forward iterator]-------------
		cmp		iter, [this + FWD]			; if (iter == this.fwd)
		je		.fwd						;     then correct iterator position
;---[Correct backward iterator]------------
.back1:	cmp		iter, [this + BWD]			; if (iter == this.bwd)
		je		.bwd						;     then correct iterator position
;---[Normal exit]--------------------------
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Delete element from the node]---------
.del:	mov		param2, node
		mov		param3, index
		add		stack, space				; restoring back the stack pointer
		jmp		DeleteNode					; call this.DeleteNode (node, index)
;---[Replace element in the left node]-----
.left:	mov		param2, lnode
		mov		param3, node
		mov		param4, index
		add		stack, space				; restoring back the stack pointer
		jmp		ReplaceLeft					; call this.ReplaceLeft (lnode, node, index)
;---[Replace element in the right node]----
.right:	mov		param2, node
		mov		param3, rnode
		mov		param4, index
		add		stack, space				; restoring back the stack pointer
		jmp		ReplaceRight				; call this.ReplaceRight (node, rnode, index)
;---[Correct forward iterator branch]------
.fwd:	mov		param4, 0
		mov		param3, iter
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	GoNext						; fwd = GoNext (array, capacity / 2, iter, 0)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		[this + FWD], result		; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.bwd:	mov		param4, KSIZE
		mov		param3, iter
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	GoPrev						; bwd = GoPrev (array, capacity / 2, iter, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		[this + BWD], result		; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Removing of element                                                    ;
;==============================================================================;
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
macro	SET_ELEMENT		InsertCore, offst
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
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		func, [this + KFUNC]		; get pointer to key compare function
		add		iter, [this + ARRAY]		; iter += array
		mov		[s_ptr], iter				; save "ptr" variable into the stack
;---[Compare keys]-------------------------
		mov		param1, [data]
		mov		param2, [iter + NDATA]
		call	func						; result = Compare (data[0].key, array[iter].data.key)
		test	result, result				; if (result != 0)
		jnz		.rem						;     then go to remove branch
;---[Change element]-----------------------
		mov		data, [s_data]				; get "data" variable from the stack
		mov		iter, [s_ptr]				; get "ptr" variable from the stack
		movdqu	temp, [data]
		movdqa	[iter + NDATA], temp		; array[iter].data = data[0]
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Remove old key]-----------------------
.rem:	mov		param2, [s_iter]
		mov		param1, [s_this]
		call	RemoveCore					; call RemoveCore (iter)
;---[Insert new key]-----------------------
		mov		this, [s_this]				; get "this" variable from the stack
		cmp		qword [this + POOL], EMPTY	; if (this.pool == EMPTY)
		je		.ext						;     then try to extend object capacity
.back:	mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		movdqu	temp, [data]
		add		stack, space				; restoring back the stack pointer
		jmp		InsertCore					; return this.InsertCore (data[0])
;---[Extend object capacity]---------------
.ext:	mov		param2, [this + CAPACITY]
		shl		param2, 1
		call	Extend						; status = this.Extend (capacity * 2)
		test	status, status
		jnz		.back						; if (status), then go back
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
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
macro	GET_ELEMENT		offst, ext
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
iter	equ		rdx							; iterator value
;---[Internal variables]-------------------
status	equ		al							; operation status
temp	equ		xmm0						; temporary register
;------------------------------------------
if ~ext
		mov		iter, [this + offst]		; get iterator value
end if
		cmp		iter, EMPTY					; if (iter == EMPTY)
		setne	status						;     return false
		je		.exit
;---[Normal execution branch]--------------
		add		iter, [this + ARRAY]
		movdqa	temp, [iter + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
.exit:	ret									; return true
}
GetFwd:		GET_ELEMENT		FWD, 0
GetBwd:		GET_ELEMENT		BWD, 0
GetIter:	GET_ELEMENT		EMPTY, 1

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;
macro	REPLACE_ELEMENT		InsertCore, offst
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
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		func, [this + KFUNC]		; get pointer to key compare function
		add		iter, [this + ARRAY]		; iter += array
		mov		[s_ptr], iter				; save "ptr" variable into the stack
		movdqa	temp, [iter + NDATA]
		movdqu	[odata], temp				; odata[0] = array[iter].data
;---[Compare keys]-------------------------
		mov		param1, [ndata]
		mov		param2, [iter + NDATA]
		call	func						; result = Compare (ndata[0].key, array[iter].data.key)
		test	result, result				; if (result != 0)
		jnz		.rem						;     then go to remove branch
;---[Change element]-----------------------
		mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		mov		iter, [s_ptr]				; get "ptr" variable from the stack
		movdqu	temp, [ndata]				; get "ndata" variable from the stack
		movdqa	[iter + NDATA], temp		; array[iter].data = ndata[0]
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Remove old key]-----------------------
.rem:	mov		param2, [s_iter]
		mov		param1, [s_this]
		call	RemoveCore					; call RemoveCore (iter)
;---[Insert new key]-----------------------
		mov		this, [s_this]				; get "this" variable from the stack
		cmp		qword [this + POOL], EMPTY	; if (this.pool == EMPTY)
		je		.ext						;     then try to extend object capacity
.back:	mov		this, [s_this]				; get "this" variable from the stack
		mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		movdqu	temp, [ndata]
		add		stack, space				; restoring back the stack pointer
		jmp		InsertCore					; return this.InsertCore (ndata[0])
;---[Extend object capacity]---------------
.ext:	mov		param2, [this + CAPACITY]
		shl		param2, 1
		call	Extend						; status = this.Extend (capacity * 2)
		test	status, status
		jnz		.back						; if (status), then go back
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
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
		call	Extend						; status = this.Extend (cap * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		odata, [s_odata]			; get "odata" variable from the stack
		mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		add		stack, space				; restoring back the stack pointer
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
result	equ		rax							; result register
node	equ		rax							; node index
nsize	equ		rdx							; node size
;------------------------------------------
		lea		node, [table - NSIZE]		; node = table - NSIZE
;---[Search loop]--------------------------
.loop:	add		node, NSIZE					; node++
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		jz		.loop						; do while (nsize == 0)
;---[End of search loop]-------------------
		mov		result, node
		ret									; return node
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
FindTail:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
table	equ		rsi							; first element in hash table
;---[Internal variables]-------------------
result	equ		rax							; result register
node	equ		rax							; node index
nsize	equ		rdx							; node size
;------------------------------------------
		lea		node, [table * 2]			; node = table * 2
;---[Search loop]--------------------------
.loop:	sub		node, NSIZE					; node--
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		jz		.loop						; do while (nsize == 0)
;---[End of search loop]-------------------
		mov		node, [array + node + BDIR]	; node = array[node].bdir
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		lea		result, [node + nsize - KSIZE]
		ret									; return node + nsize - 1
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GoNext:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
table	equ		rsi							; first element in hash table
iter	equ		rdx							; iterator value
pos		equ		rcx							; number of positions to move
;---[Internal variables]-------------------
result	equ		rax							; result register
node	equ		r8							; pointer to bnode
index	equ		r9							; element index
nsize	equ		r10							; node size
border	equ		r11							; border value
;------------------------------------------
		lea		border, [table * 2]			; border = table * 2
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
;---[Iteration loop]-----------------------
.loop:	add		iter, pos					; iter += pos
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK
		sub		nsize, index				; nsize = array[node].fdir & IMASK - index
		sub		pos, nsize					; if (pos < nsize)
		jb		.exit						;     then go to exit
		mov		node, [array + node + FDIR]
		and		node, NMASK					; node = array[node].fdir & NMASK
		cmp		node, table					; if (node < table)
		jb		.skip						;     then skip following code
;---[Table seek loop]----------------------
.tloop:	add		node, NSIZE					; node++
		cmp		node, border				; if (node == border)
		je		.error						;     then go to error branch
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		jz		.tloop						; do while (nsize == 0)
;---[End of table seek loop]---------------
.skip:	xor		index, index				; index = 0
		lea		iter, [node + index]
		test	pos, pos
		jnz		.loop						; do while (pos != 0)
;---[End of iteration loop]----------------
.exit:	mov		result, iter				; return node + index
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
node	equ		r8							; pointer to bnode
index	equ		r9							; element index
nsize	equ		r10							; node size
border	equ		r11							; border value
;------------------------------------------
		mov		border, table				; border = table
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
;---[Iteration loop]-----------------------
.loop:	sub		iter, pos					; iter -= pos
		add		index, KSIZE				; index++
		sub		pos, index					; if (pos < index)
		jb		.exit						;     then go to exit
		cmp		node, table					; if (node < table)
		jb		.skip						;     then skip following code
;---[Table seek loop]----------------------
.tloop:	sub		node, NSIZE					; node--
		cmp		node, border				; if (node < border)
		jb		.error						;     then go to error branch
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		jz		.tloop						; do while (nsize == 0)
;---[End of table seek loop]---------------
.skip:	mov		node, [array + node + BDIR]
		and		node, NMASK					; node = array[node].bdir & NMASK
		mov		index, [array + node + FDIR]
		and		index, IMASK
		sub		index, KSIZE				; index = (array[node].fdir & NMASK) - KSIZE
		lea		iter, [node + index]
		test	pos, pos
		jnz		.loop						; do while (pos != 0)
;---[End of iteration loop]----------------
.exit:	mov		result, iter				; return node + index
		ret
;---[Error branch]-------------------------
.error:	mov		result, EMPTY				; return EMPTY
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SET_ITERATOR1	IterFunc, offst, ext
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
		call	IterFunc					; result = IterFunc (array, capacity / 2)
		mov		this, [s_this]				; get "this" variable from the stack
if ~ext
		mov		[this + offst], result		; update iterator position
end if
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		result, EMPTY				; return EMPTY
if ~ext
		mov		[this + offst], result		; update iterator position
end if
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SET_ITERATOR2	target, source, ext
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + source]
if ~ext
		mov		[this + target], result		; set target iterator by source value
end if
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MOVE_ITERATOR	IterFunc, offst, ext
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
pos		equ		rsi							; number of positions to move
ptr		equ		rdx							; pointer to iterator
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rax							; iterator value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
if ~ext
		mov		iter, [this + offst]		; get iterator value
else
		mov		iter, [ptr]					; get iterator value
end if
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     then go to error branch
;---[Check position]-----------------------
		shl		pos, KSCALE					; if (pos == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		param4, pos
		mov		param3, iter
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	IterFunc					; result = IterFunc (array, capacity / 2, iter, pos)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
if ~ext
		mov		[this + offst], iter		; update iterator position
else
		mov		[ptr], iter					; update iterator position
end if
		cmp		iter, EMPTY					; if (iter == EMPTY)
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
FwdToHead:	SET_ITERATOR1	FindHead, FWD, 0
FwdToTail:	SET_ITERATOR1	FindTail, FWD, 0
FwdToBwd:	SET_ITERATOR2	FWD, BWD, 0

;==============================================================================;
;       Change iterator position                                               ;
;==============================================================================;
FwdGoNext:	MOVE_ITERATOR	GoNext, FWD, 0
FwdGoPrev:	MOVE_ITERATOR	GoPrev, FWD, 0

;******************************************************************************;
;       Manipulation with backward iterator                                    ;
;******************************************************************************;

;==============================================================================;
;       Set iterator position                                                  ;
;==============================================================================;
BwdToHead:	SET_ITERATOR1	FindHead, BWD, 0
BwdToTail:	SET_ITERATOR1	FindTail, BWD, 0
BwdToFwd:	SET_ITERATOR2	BWD, FWD, 0

;==============================================================================;
;       Change iterator position                                               ;
;==============================================================================;
BwdGoNext:	MOVE_ITERATOR	GoPrev, BWD, 0
BwdGoPrev:	MOVE_ITERATOR	GoNext, BWD, 0

;******************************************************************************;
;       Manipulation with external iterator                                    ;
;******************************************************************************;

;==============================================================================;
;       Set iterator position                                                  ;
;==============================================================================;
IterToHead:	SET_ITERATOR1	FindHead, EMPTY, 1
IterToTail:	SET_ITERATOR1	FindTail, EMPTY, 1
IterToFwd:	SET_ITERATOR2	EMPTY, FWD, 1
IterToBwd:	SET_ITERATOR2	EMPTY, BWD, 1

;==============================================================================;
;       Change iterator position                                               ;
;==============================================================================;
IterGoFwd:	MOVE_ITERATOR	GoNext, EMPTY, 1
IterGoBwd:	MOVE_ITERATOR	GoPrev, EMPTY, 1

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
macro	MINMAX	cmd, cond, offst, dir, max, bwd, ext
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
ptr		equ		rdx							; pointer to iterator
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
node	equ		r8							; node index
array	equ		r9							; pointer to array of nodes
func	equ		r10							; compare function
iter	equ		r11							; iterator value
value	equ		r12							; min or max max value
vptr	equ		r13							; position of min or max value
temp	equ		xmm0						; temporary register
nsize	equ		result						; node size
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
s_vptr	equ		stack + 1 * 8				; stack position of "vptr" variable
s_this	equ		stack + 2 * 8				; stack position of "this" variable
s_data	equ		stack + 3 * 8				; stack position of "data" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
s_array	equ		stack + 5 * 8				; stack position of "array" variable
s_func	equ		stack + 6 * 8				; stack position of "func" variable
s_brdr	equ		stack + 7 * 8				; stack position of "border" variable
s_node	equ		stack + 8 * 8				; stack position of "node" variable
s_iter	equ		stack + 9 * 8				; stack position of "iter" variable
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check object size]--------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		func, [this + KFUNC]		; get compare function
		mov		node, result
if bwd
		shr		result, 1					; border = capacity / 2
else
		sub		result, NSIZE				; border = capacity - 1
		shr		node, 1
		sub		node, NSIZE					; node = border / 2 - 1
end if
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_vptr], vptr				; save old value of "vptr" variable
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_brdr], result			; save "border" variable into the stack
;---[First element search loop]------------
.floop:	cmd		node, NSIZE					; change node value
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		jz		.floop						; do while (nsize == 0)
;---[End of first element search loop]-----
		mov		iter, node					; iter = node
if max
		mov		iter, [array + node + BDIR]	; iter = array[node].bdir
		mov		nsize, [array + iter + FDIR]
		and		nsize, IMASK				; nsize = array[iter].fdir & IMASK
		lea		iter, [iter + nsize - KSIZE]; iter = iter + nsize - 1
end if
		mov		value, [array + iter + NDATA]
		mov		vptr, iter					; vptr = iter
;---[Search loop]--------------------------
.sloop:	cmd		node, NSIZE					; change node value
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		jz		.tskip						; if (nsize == 0), then skip following code
		mov		iter, node					; iter = node
if max
		mov		iter, [array + node + BDIR]	; iter = array[node].bdir
		mov		nsize, [array + iter + FDIR]
		and		nsize, IMASK				; nsize = array[iter].fdir & IMASK
		lea		iter, [iter + nsize - KSIZE]; iter = iter + nsize - 1
end if
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		param1, value
		mov		param2, [array + iter + NDATA]
		call	qword [s_func]				; result = Compare (value, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0					; if (result cond 0)
		jn#cond	.tskip						;     value = array[iter].data.key
		mov		value, [array + iter + NDATA]
		mov		vptr, iter					;     vptr = iter
.tskip:	cmp		node, [s_brdr]
		jne		.sloop						; do while (node != border)
;---[End of search loop]-------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
if ~ext
		mov		[this + offst], vptr		; update iterator position
else
		mov		[ptr], vptr					; update iterator position
end if
		movdqa	temp, [array + vptr + NDATA]
		movdqu	[data], temp				; data[0] = array[vptr].data
		mov		value, [s_value]			; restore old value of "value" variable
		mov		vptr, [s_vptr]				; restore old value of "vptr" variable
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Minimum value
MinFwd:		MINMAX	add, g, FWD, FDIR, 0, 0, 0
MinBwd:		MINMAX	sub, g, BWD, BDIR, 0, 1, 0
MinIterFwd:	MINMAX	add, g, EMPTY, FDIR, 0, 0, 1
MinIterBwd:	MINMAX	sub, g, EMPTY, BDIR, 0, 1, 1

; Maximum value
MaxFwd:		MINMAX	add, l, FWD, FDIR, 1, 0, 0
MaxBwd:		MINMAX	sub, l, BWD, BDIR, 1, 1, 0
MaxIterFwd:	MINMAX	add, l, EMPTY, FDIR, 1, 0, 1
MaxIterBwd:	MINMAX	sub, l, EMPTY, BDIR, 1, 1, 1

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

;==============================================================================;
;       Single key searching                                                   ;
;==============================================================================;
macro	FIND_KEY	cmd, cond, offst, bwd, ext
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
ptr		equ		rcx							; pointer to iterator
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
node	equ		r8							; node index
array	equ		r9							; pointer to array of nodes
func	equ		r10							; compare function
iter	equ		r11							; iterator value
temp	equ		xmm0						; temporary register
nsize	equ		func						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_key	equ		stack + 2 * 8				; stack position of "key" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
s_table	equ		stack + 6 * 8				; stack position of "table" variable
s_node	equ		stack + 7 * 8				; stack position of "node" variable
s_iter	equ		stack + 8 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 9 * 8				; stack position of "nsize" variable
space	= 11 * 8							; stack size required by the procedure
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
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
;---[Get hash value]-----------------------
		mov		func, [this + HFUNC]
		mov		param1, key
		call	func
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (key) * NSIZE
		sub		node, 1
		and		node, result
		add		node, [s_table]				; node = (hfunc (key) * NSIZE & mask) + table
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]; nsize = array[node].fdir & IMASK
		and		nsize, IMASK				; if (nsize == 0)
		jz		.ntfnd						;     then return false
;---[Search loop]--------------------------
.sloop:
if bwd
		mov		node, [array + node + BDIR]	; node = array[node].bdir
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		lea		iter, [node + nsize - KSIZE]; iter = node + nsize - 1
end if
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
;---[Internal loop]------------------------
.iloop:	mov		param1, [s_key]
		mov		param2, [array + iter + NDATA]
		call	qword [s_func]				; result = Compare (key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0
		j#cond	.ntfnd						; if (result cond 0), then return false
		je		.found						; if (result == 0), then go to found branch
		cmd		iter, KSIZE					; change iterator position
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_nsize], KSIZE		; nsize--
		jnz		.iloop						; do while (nsize != 0)
;---[End of internal loop]-----------------
if ~bwd
		mov		result, [array + node + FDIR]
		mov		node, NMASK					; load node mask
		mov		nsize, IMASK				; load index mask
		and		node, result				; node = array[node].fdir & NMASK
		and		nsize, result				; nsize = array[node].fdir & IMASK
		mov		iter, node					; iter = node
end if
		cmp		node, [s_table]
		jb		.sloop						; do while (node < table)
;---[Not found branch]---------------------
.ntfnd:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
if ~ext
		mov		[this + offst], iter		; update iterator position
else
		mov		[ptr], iter					; update iterator position
end if
		movdqa	temp, [array + iter + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
}
FindKeyFwd:		FIND_KEY	add, l, FWD, 0, 0
FindKeyBwd:		FIND_KEY	sub, g, BWD, 1, 0
FindKeyIterFwd:	FIND_KEY	add, l, EMPTY, 0, 1
FindKeyIterBwd:	FIND_KEY	sub, g, EMPTY, 1, 1

;==============================================================================;
;       Keys set searching                                                     ;
;==============================================================================;
macro	FIND_KEYS	cmd, cond, offst, bwd, ext
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
keys	equ		rdx							; pointer to array of keys
ksize	equ		rcx							; size of array of keys
ptr		equ		r8							; pointer to iterator
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
node	equ		r8							; node index
array	equ		r9							; pointer to array of nodes
kfunc	equ		r10							; compare function
hfunc	equ		r11							; hash function
iter	equ		r11							; iterator value
temp	equ		xmm0						; temporary register
nsize	equ		kfunc						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_keys	equ		stack + 2 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 3 * 8				; stack position of "ksize" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
s_array	equ		stack + 5 * 8				; stack position of "array" variable
s_kfunc	equ		stack + 6 * 8				; stack position of "kfunc" variable
s_hfunc	equ		stack + 7 * 8				; stack position of "hfunc" variable
s_table	equ		stack + 8 * 8				; stack position of "table" variable
s_node	equ		stack + 9 * 8				; stack position of "node" variable
s_iter	equ		stack + 10 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 11 * 8				; stack position of "nsize" variable
space	= 13 * 8							; stack size required by the procedure
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
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_hfunc], hfunc			; save "hfunc" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
;---[Keys search loop]---------------------
.loop:	mov		param1, [keys]
		call	qword [s_hfunc]
		mov		keys, [s_keys]				; get "keys" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (keys[0]) * NSIZE
		sub		node, 1
		and		node, result
		add		node, [s_table]				; node = (hfunc (keys[0]) * NSIZE & mask) + table
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]; nsize = array[node].fdir & IMASK
		and		nsize, IMASK				; if (nsize == 0)
		jz		.break						;     then skip the loop
;---[Search loop]--------------------------
.sloop:
if bwd
		mov		node, [array + node + BDIR]	; node = array[node].bdir
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		lea		iter, [node + nsize - KSIZE]; iter = node + nsize - 1
end if
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
;---[Internal loop]------------------------
.iloop:	mov		param1, [keys]
		mov		param2, [array + iter + NDATA]
		call	qword [s_kfunc]				; result = Compare (keys[0], array[iter].data.key)
		mov		keys, [s_keys]				; get "keys" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0
		j#cond	.break						; if (result cond 0), then break the loop
		je		.found						; if (result == 0), then go to found branch
		cmd		iter, KSIZE					; change iterator position
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_nsize], KSIZE		; nsize--
		jnz		.iloop						; do while (nsize != 0)
;---[End of internal loop]-----------------
if ~bwd
		mov		result, [array + node + FDIR]
		mov		node, NMASK					; load node mask
		mov		nsize, IMASK				; load index mask
		and		node, result				; node = array[node].fdir & NMASK
		and		nsize, result				; nsize = array[node].fdir & IMASK
		mov		iter, node					; iter = node
end if
		cmp		node, [s_table]
		jb		.sloop						; do while (node < table)
;---[End of search loop]-------------------
.break:	add		keys, 8						; keys++
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
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
if ~ext
		mov		[this + offst], iter		; update iterator position
else
		mov		[ptr], iter					; update iterator position
end if
		movdqa	temp, [array + iter + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
}
FindKeysFwd:		FIND_KEYS	add, l, FWD, 0, 0
FindKeysBwd:		FIND_KEYS	sub, g, BWD, 1, 0
FindKeysIterFwd:	FIND_KEYS	add, l, EMPTY, 0, 1
FindKeysIterBwd:	FIND_KEYS	sub, g, EMPTY, 1, 1

;==============================================================================;
;       Sequence searching                                                     ;
;==============================================================================;
macro	FIND_SEQUENCE	cmd, cond, offst, bwd, ext
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
ptr		equ		rcx							; pointer to iterator
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
node	equ		r8							; node index
array	equ		r9							; pointer to array of nodes
func	equ		r10							; compare function
iter	equ		r11							; iterator value
vptr	equ		r12							; position of key
temp	equ		xmm0						; temporary register
nsize	equ		func						; node size
stack	equ		rsp							; stack pointer
s_vptr	equ		stack + 0 * 8				; stack position of "vptr" variable
s_this	equ		stack + 1 * 8				; stack position of "this" variable
s_data	equ		stack + 2 * 8				; stack position of "data" variable
s_key	equ		stack + 3 * 8				; stack position of "key" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
s_array	equ		stack + 5 * 8				; stack position of "array" variable
s_func	equ		stack + 6 * 8				; stack position of "func" variable
s_table	equ		stack + 7 * 8				; stack position of "table" variable
s_node	equ		stack + 8 * 8				; stack position of "node" variable
s_iter	equ		stack + 9 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 10 * 8				; stack position of "nsize" variable
s_total	equ		stack + 11 * 8				; stack position of "total" variable
space	= 13 * 8								; stack size required by the procedure
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
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
;---[Get hash value]-----------------------
		mov		func, [this + HFUNC]
		mov		param1, key
		call	func
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (key) * NSIZE
		sub		node, 1
		and		node, result
		add		node, [s_table]				; node = (hfunc (key) * NSIZE & mask) + table
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]; nsize = array[node].fdir & IMASK
		and		nsize, IMASK				; if (nsize == 0)
		jz		.exit						;     then go to exit
		mov		vptr, EMPTY					; vptr = EMPTY
;---[Search loop]--------------------------
.sloop:
if bwd
		mov		node, [array + node + BDIR]	; node = array[node].bdir
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		lea		iter, [node + nsize - KSIZE]; iter = node + nsize - 1
end if
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
;---[Internal loop]------------------------
.iloop:	mov		param1, [s_key]
		mov		param2, [array + iter + NDATA]
		call	qword [s_func]				; result = Compare (key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0
		j#cond	.brk						; if (result cond 0), then break the loop
		cmove	vptr, iter					; if (result == 0)
		sete	status						; {
		movzx	result, status				;     vptr = iter
		add		[s_total], result			;     then total++ }
		cmd		iter, KSIZE					; change iterator position
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_nsize], KSIZE		; nsize--
		jnz		.iloop						; do while (nsize != 0)
;---[End of internal loop]-----------------
if ~bwd
		mov		result, [array + node + FDIR]
		mov		node, NMASK					; load node mask
		mov		nsize, IMASK				; load index mask
		and		node, result				; node = array[node].fdir & NMASK
		and		nsize, result				; nsize = array[node].fdir & IMASK
		mov		iter, node					; iter = node
end if
		cmp		node, [s_table]
		jb		.sloop						; do while (node < table)
;---[End of search loop]-------------------
.brk:	cmp		vptr, EMPTY					; if (vptr == EMPTY)
		je		.skip						;     then key is not found
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
if ~ext
		mov		[this + offst], vptr		; update iterator position
else
		mov		[ptr], vptr					; update iterator position
end if
		movdqa	temp, [array + vptr + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
.skip:	mov		vptr, [s_vptr]				; restore old value of "vptr" variable
;---[Normal exit]--------------------------
.exit:	mov		result, [s_total]			; return total
		add		stack, space				; restoring back the stack pointer
		ret
}
FindSequenceFwd:		FIND_SEQUENCE	sub, g, FWD, 1, 0
FindSequenceBwd:		FIND_SEQUENCE	add, l, BWD, 0, 0
FindSequenceIterFwd:	FIND_SEQUENCE	sub, g, EMPTY, 1, 1
FindSequenceIterBwd:	FIND_SEQUENCE	add, l, EMPTY, 0, 1

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
macro	FIND_CORE	cmd, bwd
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
table	equ		rsi							; first element in hash table
iter	equ		rdx							; iterator value
func	equ		rcx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
prev	equ		r9							; previous iterator value
node	equ		r10							; node index
index	equ		r11							; element index
nsize	equ		func						; node size
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_table	equ		stack + 1 * 8				; stack position of "table" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_brdr	equ		stack + 3 * 8				; stack position of "border" variable
s_node	equ		stack + 4 * 8				; stack position of "node" variable
s_prev	equ		stack + 5 * 8				; stack position of "prev" variable
s_iter	equ		stack + 6 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 7 * 8				; stack position of "nsize" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
if bwd
		mov		result, table				; border = table
else
		lea		result, [table * 2 - NSIZE]	; border = table * 2 - 1
end if
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
		mov		prev, iter					; prev = iter
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], table			; save "table" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_brdr], result			; save "border" variable into the stack
		mov		[s_prev], prev				; save "prev" variable into the stack
if bwd
		sub		iter, KSIZE					; iter--
		mov		nsize, index				; nsize = index
		test	nsize, nsize				; if (nsize != 0)
		jnz		@f							;     then skip following code
		cmp		node, table					; if (node < table)
		jb		.sloop						;     then go to prev node
else
		add		iter, KSIZE					; iter++
		add		index, KSIZE				; index++
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK - index
		sub		nsize, index				; if (nsize != 0)
		jnz		@f							;     then skip following code
		jmp		.next						; go to next node
end if
;---[Duplicates search loop]---------------
.dloop:	cmd		node, NSIZE					; change node value
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		cmp		nsize, KSIZE				; if (nsize <= 1)
		jbe		.tskip						;     then skip following code
		mov		iter, node					; iter = node
;---[Search loop]--------------------------
.sloop:
if bwd
		mov		node, [array + node + BDIR]	; node = array[node].bdir
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		lea		iter, [node + nsize - KSIZE]; iter = node + nsize - 1
end if
@@:		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
;---[Internal loop]------------------------
.iloop:	mov		param2, [array + iter + NDATA]
		mov		param1, [array + prev + NDATA]
		call	qword [s_func]				; result = Compare (array[prev].data.key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		prev, [s_prev]				; get "prev" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		mov		prev, iter					; prev = iter
		cmd		iter, KSIZE					; change iterator position
		mov		[s_prev], prev				; save "prev" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_nsize], KSIZE		; nsize--
		jnz		.iloop						; do while (nsize != 0)
;---[End of internal loop]-----------------
if ~bwd
.next:	mov		result, [array + node + FDIR]
		mov		node, NMASK					; load node mask
		mov		nsize, IMASK				; load index mask
		and		node, result				; node = array[node].fdir & NMASK
		and		nsize, result				; nsize = array[node].fdir & IMASK
		mov		iter, node					; iter = node
end if
		cmp		node, [s_table]
		jb		.sloop						; do while (node < table)
;---[End of search loop]-------------------
.tskip:	cmp		node, [s_brdr]
		jne		.dloop						; do while (node != border)
;---[End of duplicates search loop]--------
		mov		result, EMPTY				; return EMPTY
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		result, prev				; return prev
		add		stack, space				; restoring back the stack pointer
		ret
}
DupFwd:	FIND_CORE	add, 0
DupBwd:	FIND_CORE	sub, 1
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_DUP	DupFunc, offst, ext
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to data structure
ptr		equ		rdx							; pointer to iterator
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
iter	equ		rcx							; iterator value
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_ptr	equ		stack + 2 * 8				; stack position of "ptr" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
if ~ext
		mov		iter, [this + offst]		; get iterator value
else
		mov		iter, [ptr]					; get iterator value
end if
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
;---[Call search function]-----------------
		mov		param3, iter
		mov		param4, [this + KFUNC]
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	DupFunc						; result = DupFunc (array, capacity / 2, iter, func)
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.ntfnd						;     return false
;---[Update iterator value]----------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
if ~ext
		mov		[this + offst], result		; update iterator position
else
		mov		[ptr], result				; update iterator position
end if
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
FindDupFwd:		FIND_DUP	DupFwd, FWD, 0
FindDupBwd:		FIND_DUP	DupBwd, BWD, 0
FindDupIterFwd:	FIND_DUP	DupFwd, EMPTY, 1
FindDupIterBwd:	FIND_DUP	DupBwd, EMPTY, 1

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
node	equ		r8							; node index
array	equ		r9							; pointer to array of nodes
func	equ		r10							; compare function
iter	equ		r11							; iterator value
nsize	equ		func						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_key	equ		stack + 1 * 8				; stack position of "key" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_table	equ		stack + 4 * 8				; stack position of "table" variable
s_node	equ		stack + 5 * 8				; stack position of "node" variable
s_iter	equ		stack + 6 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 7 * 8				; stack position of "nsize" variable
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
		mov		node, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (key) * NSIZE
		sub		node, 1
		and		node, result
		add		node, [s_table]				; node = (hfunc (key) * NSIZE & mask) + table
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]; nsize = array[node].fdir & IMASK
		and		nsize, IMASK				; if (nsize == 0)
		jz		.exit						;     then go to exit
;---[Search loop]--------------------------
.sloop:	mov		[s_node], node				; save "node" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
;---[Internal loop]------------------------
.iloop:	mov		param1, [s_key]
		mov		param2, [array + iter + NDATA]
		call	qword [s_func]				; result = Compare (key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0
		jl		.exit						; if (result < 0), then go to exit
		sete	status						; if (result == 0)
		movzx	result, status				; {
		add		[s_total], result			;     then total++ }
		add		iter, KSIZE					; change iterator position
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_nsize], KSIZE		; nsize--
		jnz		.iloop						; do while (nsize != 0)
;---[End of internal loop]-----------------
		mov		result, [array + node + FDIR]
		mov		node, NMASK					; load node mask
		mov		nsize, IMASK				; load index mask
		and		node, result				; node = array[node].fdir & NMASK
		and		nsize, result				; nsize = array[node].fdir & IMASK
		mov		iter, node					; iter = node
		cmp		node, [s_table]
		jb		.sloop						; do while (node < table)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]			; return total
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
status	equ		al							; operation status
result	equ		rax							; result register
node	equ		r8							; node index
array	equ		r9							; pointer to array of nodes
kfunc	equ		r10							; compare function
hfunc	equ		r11							; hash function
iter	equ		r11							; iterator value
nsize	equ		kfunc						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_keys	equ		stack + 1 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 2 * 8				; stack position of "ksize" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_kfunc	equ		stack + 4 * 8				; stack position of "kfunc" variable
s_hfunc	equ		stack + 5 * 8				; stack position of "hfunc" variable
s_table	equ		stack + 6 * 8				; stack position of "table" variable
s_node	equ		stack + 7 * 8				; stack position of "node" variable
s_iter	equ		stack + 8 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 9 * 8				; stack position of "nsize" variable
s_total	equ		stack + 10 * 8				; stack position of "total" variable
space	= 11 * 8								; stack size required by the procedure
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
;---[Keys search loop]---------------------
.loop:	mov		param1, [keys]
		call	qword [s_hfunc]
		mov		keys, [s_keys]				; get "keys" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (keys[0]) * NSIZE
		sub		node, 1
		and		node, result
		add		node, [s_table]				; node = (hfunc (keys[0]) * NSIZE & mask) + table
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]; nsize = array[node].fdir & IMASK
		and		nsize, IMASK				; if (nsize == 0)
		jz		.break						;     then skip the loop
;---[Search loop]--------------------------
.sloop:	mov		[s_node], node				; save "node" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
;---[Internal loop]------------------------
.iloop:	mov		param1, [keys]
		mov		param2, [array + iter + NDATA]
		call	qword [s_kfunc]				; result = Compare (keys[0], array[iter].data.key)
		mov		keys, [s_keys]				; get "keys" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0
		jl		.break						; if (result < 0), then break the loop
		sete	status						; if (result == 0)
		movzx	result, status				; {
		add		[s_total], result			;     then total++ }
		add		iter, KSIZE					; change iterator position
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_nsize], KSIZE		; nsize--
		jnz		.iloop						; do while (nsize != 0)
;---[End of internal loop]-----------------
		mov		result, [array + node + FDIR]
		mov		node, NMASK					; load node mask
		mov		nsize, IMASK				; load index mask
		and		node, result				; node = array[node].fdir & NMASK
		and		nsize, result				; nsize = array[node].fdir & IMASK
		mov		iter, node					; iter = node
		cmp		node, [s_table]
		jb		.sloop						; do while (node < table)
;---[End of search loop]-------------------
.break:	add		keys, 8						; keys++
		mov		[s_keys], keys				; save "keys" variable into the stack
		sub		qword [s_ksize], 1			; ksize--
		jnz		.loop						; do while (ksize != 0)
;---[End of keys search loop]--------------
.exit:	mov		result, [s_total]			; return total
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
total	equ		rdx							; count of duplicates
node	equ		r8							; node index
array	equ		r9							; pointer to array of nodes
func	equ		r10							; compare function
iter	equ		r11							; iterator value
key		equ		xmm0						; key value
data	equ		xmm1						; temporary register
size	equ		func						; hash table size
nsize	equ		func						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_table	equ		stack + 4 * 8				; stack position of "table" variable
s_brdr	equ		stack + 5 * 8				; stack position of "border" variable
s_value	equ		stack + 6 * 8				; stack position of "value" variable
s_total	equ		stack + 7 * 8				; stack position of "total" variable
s_node	equ		stack + 8 * 8				; stack position of "node" variable
s_iter	equ		stack + 9 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 10 * 8				; stack position of "nsize" variable
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
;---[Check target object size]-------------
		cmp		qword [this + SIZE], 0		; if (size)
		jnz		.error						;     then go to error branch
;---[Check source object size]-------------
		mov		size, [source + SIZE]		; get size of source hash table object
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		shl		size, NSCALE - KSCALE + 1
	Capacity	size, result, MINCAP		; compute new capacity of target object
		cmp		size, [this + CAPACITY]		; if (size > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	mov		array, [source + ARRAY]		; get pointer to source array of nodes
		mov		result, [source + CAPACITY]	; get source object capacity
		mov		func, [source + KFUNC]		; get pointer to key compare function
		lea		total, [result - NSIZE]		; border = capacity - 1
		shr		result, 1					; table = capacity / 2
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
		mov		[s_brdr], total				; save "border" variable into the stack
		lea		node, [result - NSIZE]		; node = table - 1
;---[Search loop]--------------------------
.sloop:	add		node, NSIZE					; node++
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
		jz		.tskip						; if (nsize == 0), then skip following code
		mov		result, [array + node + NDATA]
		mov		[s_value], result			; save "value" variable into the stack
		mov		qword [s_total], 1			; total = 1
		lea		iter, [node + KSIZE]		; iter = node + 1
		sub		nsize, KSIZE				; if (nsize == 1)
		jz		.skip						;     then skip the loop
;---[Duplicates check loop]----------------
.dloop:	mov		[s_node], node				; save "node" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
;---[Internal loop]------------------------
.iloop:	mov		param1, [s_value]
		mov		param2, [array + iter + NDATA]
		call	qword [s_func]				; result = Compare (key, array[iter].data.key)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
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
		mov		node, [s_node]				;     get "node" variable from the stack
		mov		iter, [s_iter]				;     get "iter" variable from the stack
		mov		result, [array + node + NDATA]
		xor		total, total				;     total = 0 }
		mov		[s_value], result			; save "value" variable into the stack
@@:		add		total, 1					; total++
		mov		[s_total], total			; save "total" variable into the stack
		add		iter, KSIZE					; change iterator position
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_nsize], KSIZE		; nsize--
		jnz		.iloop						; do while (nsize != 0)
;---[End of internal loop]-----------------
		mov		result, [array + node + FDIR]
		mov		node, NMASK					; load node mask
		mov		nsize, IMASK				; load index mask
		and		node, result				; node = array[node].fdir & NMASK
		and		nsize, result				; nsize = array[node].fdir & IMASK
		mov		iter, node					; iter = node
		cmp		node, [s_table]
		jb		.dloop						; do while (node < table)
;---[End of duplicates check loop]---------
.skip:	mov		[s_node], node				; save "node" variable into the stack
		mov		this, [s_this]				; get "this" variable from the stack
		movq	key, [s_value]
		movq	data, [s_total]
	punpcklqdq	key, data
		call	InsertCoreMulti				; call this.InsertCoreMulti ({key, total})
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
.tskip:	cmp		node, [s_brdr]
		jne		.sloop						; do while (node != border)
;---[End of search loop]-------------------
.exit:	mov		result, [this + SIZE]
		shr		result, KSCALE				; return this.size
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
temp	equ		rdx							; temporary register
;------------------------------------------
		mov		result, [this + CAPACITY]	; get object capacity
		mov		temp, result
		shr		result, KSCALE
		shr		temp, NSCALE
		sub		result, temp				; return this.capacity / KSIZE - this.capacity / NSIZE
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetSize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + SIZE]		; get object size
		shr		result, KSCALE				; return this.size
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
