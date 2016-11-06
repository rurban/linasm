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
public	Constructor				as	'_ZN9MultiHashC1EmPFx5adt_tS0_EPFmS0_EPFbP6pair_tPKS5_PvEPFvS6_S9_ES9_'
public	Constructor				as	'_ZN10UniqueHashC1EmPFx5adt_tS0_EPFmS0_EPFbP6pair_tPKS5_PvEPFvS6_S9_ES9_'

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
;       Access predicates                                                      ;
;******************************************************************************;

; Lock operations
public	LockReadings			as	'MultiHash_LockReadings'
public	LockReadings			as	'UniqueHash_LockReadings'
public	LockWritings			as	'MultiHash_LockWritings'
public	LockWritings			as	'UniqueHash_LockWritings'
public	LockReadings			as	'_ZN9MultiHash12LockReadingsEb'
public	LockReadings			as	'_ZN10UniqueHash12LockReadingsEb'
public	LockWritings			as	'_ZN9MultiHash12LockWritingsEb'
public	LockWritings			as	'_ZN10UniqueHash12LockWritingsEb'

; Release operations
public	AllowReadings			as	'MultiHash_AllowReadings'
public	AllowReadings			as	'UniqueHash_AllowReadings'
public	AllowWritings			as	'MultiHash_AllowWritings'
public	AllowWritings			as	'UniqueHash_AllowWritings'
public	AllowReadings			as	'_ZN9MultiHash13AllowReadingsEv'
public	AllowReadings			as	'_ZN10UniqueHash13AllowReadingsEv'
public	AllowWritings			as	'_ZN9MultiHash13AllowWritingsEv'
public	AllowWritings			as	'_ZN10UniqueHash13AllowWritingsEv'

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
public	InsertMulti				as	'MultiHash_Insert'
public	InsertUnique			as	'UniqueHash_Insert'
public	InsertMulti				as	'_ZN9MultiHash6InsertEPK6pair_t'
public	InsertUnique			as	'_ZN10UniqueHash6InsertEPK6pair_t'

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;
public	RemoveFwd				as	'MultiHash_RemoveFwd'
public	RemoveFwd				as	'UniqueHash_RemoveFwd'
public	RemoveBwd				as	'MultiHash_RemoveBwd'
public	RemoveBwd				as	'UniqueHash_RemoveBwd'
public	RemoveFwd				as	'_ZN9MultiHash9RemoveFwdEv'
public	RemoveFwd				as	'_ZN10UniqueHash9RemoveFwdEv'
public	RemoveBwd				as	'_ZN9MultiHash9RemoveBwdEv'
public	RemoveBwd				as	'_ZN10UniqueHash9RemoveBwdEv'

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
public	SetFwdMulti				as	'MultiHash_SetFwd'
public	SetFwdUnique			as	'UniqueHash_SetFwd'
public	SetBwdMulti				as	'MultiHash_SetBwd'
public	SetBwdUnique			as	'UniqueHash_SetBwd'
public	SetFwdMulti				as	'_ZN9MultiHash6SetFwdEPK6pair_t'
public	SetFwdUnique			as	'_ZN10UniqueHash6SetFwdEPK6pair_t'
public	SetBwdMulti				as	'_ZN9MultiHash6SetBwdEPK6pair_t'
public	SetBwdUnique			as	'_ZN10UniqueHash6SetBwdEPK6pair_t'

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;
public	GetFwd					as	'MultiHash_GetFwd'
public	GetFwd					as	'UniqueHash_GetFwd'
public	GetBwd					as	'MultiHash_GetBwd'
public	GetBwd					as	'UniqueHash_GetBwd'
public	GetIter					as	'MultiHash_GetIter'
public	GetIter					as	'UniqueHash_GetIter'
public	GetFwd					as	'_ZNK9MultiHash6GetFwdEP6pair_t'
public	GetFwd					as	'_ZNK10UniqueHash6GetFwdEP6pair_t'
public	GetBwd					as	'_ZNK9MultiHash6GetBwdEP6pair_t'
public	GetBwd					as	'_ZNK10UniqueHash6GetBwdEP6pair_t'
public	GetIter					as	'_ZNK9MultiHash7GetIterEP6pair_tl'
public	GetIter					as	'_ZNK10UniqueHash7GetIterEP6pair_tl'

;******************************************************************************;
;       Overriding element value                                               ;
;******************************************************************************;
public	Override				as	'UniqueHash_Override'
public	Override				as	'_ZN10UniqueHash8OverrideEPK6pair_t'

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
public	MinFwd					as	'_ZN9MultiHash6MinFwdEP6pair_t'
public	MinFwd					as	'_ZN10UniqueHash6MinFwdEP6pair_t'
public	MinBwd					as	'_ZN9MultiHash6MinBwdEP6pair_t'
public	MinBwd					as	'_ZN10UniqueHash6MinBwdEP6pair_t'
public	MinIterFwd				as	'_ZNK9MultiHash10MinIterFwdEP6pair_tPl'
public	MinIterFwd				as	'_ZNK10UniqueHash10MinIterFwdEP6pair_tPl'
public	MinIterBwd				as	'_ZNK9MultiHash10MinIterBwdEP6pair_tPl'
public	MinIterBwd				as	'_ZNK10UniqueHash10MinIterBwdEP6pair_tPl'

; Maximum value
public	MaxFwd					as	'MultiHash_MaxFwd'
public	MaxFwd					as	'UniqueHash_MaxFwd'
public	MaxBwd					as	'MultiHash_MaxBwd'
public	MaxBwd					as	'UniqueHash_MaxBwd'
public	MaxIterFwd				as	'MultiHash_MaxIterFwd'
public	MaxIterFwd				as	'UniqueHash_MaxIterFwd'
public	MaxIterBwd				as	'MultiHash_MaxIterBwd'
public	MaxIterBwd				as	'UniqueHash_MaxIterBwd'
public	MaxFwd					as	'_ZN9MultiHash6MaxFwdEP6pair_t'
public	MaxFwd					as	'_ZN10UniqueHash6MaxFwdEP6pair_t'
public	MaxBwd					as	'_ZN9MultiHash6MaxBwdEP6pair_t'
public	MaxBwd					as	'_ZN10UniqueHash6MaxBwdEP6pair_t'
public	MaxIterFwd				as	'_ZNK9MultiHash10MaxIterFwdEP6pair_tPl'
public	MaxIterFwd				as	'_ZNK10UniqueHash10MaxIterFwdEP6pair_tPl'
public	MaxIterBwd				as	'_ZNK9MultiHash10MaxIterBwdEP6pair_tPl'
public	MaxIterBwd				as	'_ZNK10UniqueHash10MaxIterBwdEP6pair_tPl'

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
public	FindKeyFwd				as	'_ZN9MultiHash10FindKeyFwdEP6pair_t5adt_t'
public	FindKeyFwd				as	'_ZN10UniqueHash10FindKeyFwdEP6pair_t5adt_t'
public	FindKeyBwd				as	'_ZN9MultiHash10FindKeyBwdEP6pair_t5adt_t'
public	FindKeyBwd				as	'_ZN10UniqueHash10FindKeyBwdEP6pair_t5adt_t'
public	FindKeyIterFwd			as	'_ZNK9MultiHash14FindKeyIterFwdEP6pair_t5adt_tPl'
public	FindKeyIterFwd			as	'_ZNK10UniqueHash14FindKeyIterFwdEP6pair_t5adt_tPl'
public	FindKeyIterBwd			as	'_ZNK9MultiHash14FindKeyIterBwdEP6pair_t5adt_tPl'
public	FindKeyIterBwd			as	'_ZNK10UniqueHash14FindKeyIterBwdEP6pair_t5adt_tPl'

; Keys set searching
public	FindKeysFwd				as	'MultiHash_FindKeysFwd'
public	FindKeysFwd				as	'UniqueHash_FindKeysFwd'
public	FindKeysBwd				as	'MultiHash_FindKeysBwd'
public	FindKeysBwd				as	'UniqueHash_FindKeysBwd'
public	FindKeysIterFwd			as	'MultiHash_FindKeysIterFwd'
public	FindKeysIterFwd			as	'UniqueHash_FindKeysIterFwd'
public	FindKeysIterBwd			as	'MultiHash_FindKeysIterBwd'
public	FindKeysIterBwd			as	'UniqueHash_FindKeysIterBwd'
public	FindKeysFwd				as	'_ZN9MultiHash11FindKeysFwdEP6pair_tPK5adt_tm'
public	FindKeysFwd				as	'_ZN10UniqueHash11FindKeysFwdEP6pair_tPK5adt_tm'
public	FindKeysBwd				as	'_ZN9MultiHash11FindKeysBwdEP6pair_tPK5adt_tm'
public	FindKeysBwd				as	'_ZN10UniqueHash11FindKeysBwdEP6pair_tPK5adt_tm'
public	FindKeysIterFwd			as	'_ZNK9MultiHash15FindKeysIterFwdEP6pair_tPK5adt_tmPl'
public	FindKeysIterFwd			as	'_ZNK10UniqueHash15FindKeysIterFwdEP6pair_tPK5adt_tmPl'
public	FindKeysIterBwd			as	'_ZNK9MultiHash15FindKeysIterBwdEP6pair_tPK5adt_tmPl'
public	FindKeysIterBwd			as	'_ZNK10UniqueHash15FindKeysIterBwdEP6pair_tPK5adt_tmPl'

; Sequence searching
public	FindSequenceFwd			as	'MultiHash_FindSequenceFwd'
public	FindSequenceBwd			as	'MultiHash_FindSequenceBwd'
public	FindSequenceIterFwd		as	'MultiHash_FindSequenceIterFwd'
public	FindSequenceIterBwd		as	'MultiHash_FindSequenceIterBwd'
public	FindSequenceFwd			as	'_ZN9MultiHash15FindSequenceFwdEP6pair_t5adt_t'
public	FindSequenceBwd			as	'_ZN9MultiHash15FindSequenceBwdEP6pair_t5adt_t'
public	FindSequenceIterFwd		as	'_ZNK9MultiHash19FindSequenceIterFwdEP6pair_t5adt_tPl'
public	FindSequenceIterBwd		as	'_ZNK9MultiHash19FindSequenceIterBwdEP6pair_t5adt_tPl'

; Vectorized searching
public	FindVectorFwdMulti		as	'MultiHash_FindVectorFwd'
public	FindVectorFwdUnique		as	'UniqueHash_FindVectorFwd'
public	FindVectorBwdMulti		as	'MultiHash_FindVectorBwd'
public	FindVectorBwdUnique		as	'UniqueHash_FindVectorBwd'
public	FindVectorIterFwdMulti	as	'MultiHash_FindVectorIterFwd'
public	FindVectorIterFwdUnique	as	'UniqueHash_FindVectorIterFwd'
public	FindVectorIterBwdMulti	as	'MultiHash_FindVectorIterBwd'
public	FindVectorIterBwdUnique	as	'UniqueHash_FindVectorIterBwd'
public	FindVectorFwdMulti		as	'_ZN9MultiHash13FindVectorFwdEP6pair_tmS1_Pm'
public	FindVectorFwdUnique		as	'_ZN10UniqueHash13FindVectorFwdEP6pair_tmS1_Pm'
public	FindVectorBwdMulti		as	'_ZN9MultiHash13FindVectorBwdEP6pair_tmS1_Pm'
public	FindVectorBwdUnique		as	'_ZN10UniqueHash13FindVectorBwdEP6pair_tmS1_Pm'
public	FindVectorIterFwdMulti	as	'_ZNK9MultiHash17FindVectorIterFwdEP6pair_tmS1_PmPl'
public	FindVectorIterFwdUnique	as	'_ZNK10UniqueHash17FindVectorIterFwdEP6pair_tmS1_PmPl'
public	FindVectorIterBwdMulti	as	'_ZNK9MultiHash17FindVectorIterBwdEP6pair_tmS1_PmPl'
public	FindVectorIterBwdUnique	as	'_ZNK10UniqueHash17FindVectorIterBwdEP6pair_tmS1_PmPl'

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
public	FindDupFwd				as	'MultiHash_FindDupFwd'
public	FindDupBwd				as	'MultiHash_FindDupBwd'
public	FindDupIterFwd			as	'MultiHash_FindDupIterFwd'
public	FindDupIterBwd			as	'MultiHash_FindDupIterBwd'
public	FindDupFwd				as	'_ZN9MultiHash10FindDupFwdEP6pair_t'
public	FindDupBwd				as	'_ZN9MultiHash10FindDupBwdEP6pair_t'
public	FindDupIterFwd			as	'_ZNK9MultiHash14FindDupIterFwdEP6pair_tPl'
public	FindDupIterBwd			as	'_ZNK9MultiHash14FindDupIterBwdEP6pair_tPl'

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

; Hash table pair copy function
public	GetCopyFunction			as	'MultiHash_CopyFunction'
public	GetCopyFunction			as	'UniqueHash_CopyFunction'
public	GetCopyFunction			as	'_ZNK9MultiHash12CopyFunctionEv'
public	GetCopyFunction			as	'_ZNK10UniqueHash12CopyFunctionEv'

; Hash table pair delete function
public	GetDeleteFunction		as	'MultiHash_DeleteFunction'
public	GetDeleteFunction		as	'UniqueHash_DeleteFunction'
public	GetDeleteFunction		as	'_ZNK9MultiHash14DeleteFunctionEv'
public	GetDeleteFunction		as	'_ZNK10UniqueHash14DeleteFunctionEv'

; Hash table user's data
public	GetUserData				as	'MultiHash_UserData'
public	GetUserData				as	'UniqueHash_UserData'
public	GetUserData				as	'_ZNK9MultiHash8UserDataEv'
public	GetUserData				as	'_ZNK10UniqueHash8UserDataEv'

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
SORTSIZE	= 1 shl 20						; Min vector size for presort algorithm

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
FUTEX		= 6 * 8							; Offset of futex field
KFUNC		= 7 * 8							; Offset of pointer to key compare function
HFUNC		= 8 * 8							; Offset of pointer to hash function
CFUNC		= 9 * 8							; Offset of pointer to copy function
DFUNC		= 10 * 8						; Offset of pointer to delete function
DPTR		= 11 * 8						; Offset of pointer to user's data

;==============================================================================;
;       Offsets inside node                                                    ;
;==============================================================================;
FDIR		= 0 * 8							; Offset of forward direction pointer
BDIR		= 1 * 8							; Offset of backward direction pointer
NDATA		= 2 * 8							; Offset of node data field

;******************************************************************************;
;       Copy elements into hash table                                          ;
;******************************************************************************;
CopyElements:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
array	equ		rsi							; pointer to array of nodes
table	equ		rdx							; first element in hash table
size	equ		rcx							; count of elements to copy
func	equ		r8							; pointer to copy function
ptr		equ		r9							; pointer to user's data
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
iter	equ		result						; iterator value
value	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_table	equ		stack + 2 * 8				; stack position of "table" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_ptr	equ		stack + 5 * 8				; stack position of "ptr" variable
s_iter	equ		stack + 6 * 8				; stack position of "iter" variable
s_total	equ		stack + 7 * 8				; stack position of "total" variable
s_value	equ		stack + 8 * 8				; stack position of "value" variable
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check size]---------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], table			; save "table" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
;---[Find hash table head]-----------------
		mov		param1, array
		mov		param2, table
		call	FindHead					; iter = FindHead (array, table)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
;---[Copy loop]----------------------------
.loop:	lea		array, [array + iter + NDATA]
		movdqa	value, [array]
;---[Call copy function if set]------------
		mov		func, [s_func]				; get pointer to copy function
		test	func, func					; if (func != NULL)
		jnz		.copy						;     then call copy function
;---[Insert new element]-------------------
.back:	call	InsertCoreMulti				; call this.InsertCoreMulti (value)
		test	status, status				; if (status == 0)
		jz		.exit						;     then go to exit
		add		qword [s_total], KSIZE		; total++
;---[Go to another source element]---------
		mov		param4, KSIZE
		mov		param3, [s_iter]
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoNext						; iter = GoNext (array, table, iter, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		iter, EMPTY					; if (iter <= EMPTY)
		jle		.exit						;     then go to exit
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_size], KSIZE		; size--
		jnz		.loop						; do while (size != 0)
;---[End of copy loop]---------------------
.exit:	mov		result, [s_total]			; return total
		add		stack, space				; restoring back the stack pointer
		ret
;---[Copy element branch]------------------
.copy:	mov		param3, [s_ptr]
		mov		param2, array
		lea		param1, [s_value]
		call	func						; call func (&value, array, ptr)
		mov		this, [s_this]				; get "this" variable from the stack
		movdqa	value, [s_value]			; get "value" variable from the stack
		test	status, status				; if (status)
		jnz		.back						;     then go back
		mov		result, [s_total]			; return total
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Delete elements from hash table                                        ;
;******************************************************************************;
DeleteElements:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
table	equ		rsi							; first element in hash table
size	equ		rdx							; count of elements to delete
func	equ		rcx							; pointer to delete function
ptr		equ		r8							; pointer to user's data
;---[Internal variables]-------------------
iter	equ		rax							; iterator value
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_table	equ		stack + 1 * 8				; stack position of "table" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
s_iter	equ		stack + 5 * 8				; stack position of "iter" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check size]---------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Check delete function]----------------
		test	func, func					; if (func == NULL)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], table			; save "table" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
;---[Find hash table head]-----------------
		call	FindHead					; iter = FindHead (array, table)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
;---[Delete loop]--------------------------
.loop:	lea		array, [array + iter + NDATA]
		mov		param2, [s_ptr]
		call	qword [s_func]				; call func (array, ptr)
		mov		param4, KSIZE
		mov		param3, [s_iter]
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoNext						; iter = GoNext (array, table, iter, KSIZE)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_size], KSIZE		; size--
		jnz		.loop						; do while (size != 0)
;---[End of delete loop]-------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret

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
kfunc	equ		r9							; key compare function
hfunc	equ		r10							; hash function
node	equ		r11							; node index
iter	equ		rax							; iterator value
prev	equ		rcx							; previous iterator value
value	equ		xmm0						; temporary register
key		equ		prev						; key value
nsize	equ		kfunc						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_table	equ		stack + 2 * 8				; stack position of "table" variable
s_kfunc	equ		stack + 3 * 8				; stack position of "kfunc" variable
s_hfunc	equ		stack + 4 * 8				; stack position of "hfunc" variable
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
		mov		kfunc, [this + KFUNC]		; get pointer to key compare function
		mov		hfunc, [this + HFUNC]		; get pointer to hash function
		shr		result, 1
		lea		node, [result + size]		; node = table + size
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_hfunc], hfunc			; save "hfunc" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		qword [s_find], -KSIZE		; findex = -KSIZE
		mov		qword [s_bind], -KSIZE		; bindex = -KSIZE
		mov		iter, [this + FWD]			; iter = this.fwd
		cmp		iter, EMPTY					; if (iter > EMPTY)
		jg		.fwd						;     then save position of forward iterator
.back:	mov		iter, [this + BWD]			; iter = this.bwd
		cmp		iter, EMPTY					; if (iter > EMPTY)
		jg		.bwd						;     then save position of backward iterator
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
		movdqa	value, [array + prev + NDATA]; value = array[prev].data
		mov		[s_prev], prev				; save "prev" variable into the stack
		movdqa	[s_data], value				; save "data" variable into the stack
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
		call	GoPrev						; iter = GoPrev (array, table, bwd, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		[this + BWD], iter			; update iterator position
		cmp		node, [s_prev]
		jne		.iloop						; do while (node != prev)
;---[End of internal loop]-----------------
		jmp		.tskip
.move:	mov		param2, [s_prev]
		call	RemoveCore					; call this.RemoveCore (prev)
		mov		this, [s_this]				; get "this" variable from the stack
		movdqa	value, [s_data]
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
;---[Restore forward iterator]-------------
		mov		param3, [s_fkey]
		lea		param2, [s_data]
		call	FindKeyFwd					; call this.FindKeyFwd (&data, fkey)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		param4, [s_find]
		mov		param3, [this + FWD]
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoNext						; iter = GoNext (array, table, fwd, findex)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + FWD], iter			; update iterator position
@@:		cmp		qword [s_bind], -KSIZE		; if (bindex == -KSIZE)
		je		@f							;     then skip following code
;---[Restore backward iterator]------------
		mov		param3, [s_bkey]
		lea		param2, [s_data]
		call	FindKeyBwd					; call this.FindKeyBwd (&data, bkey)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		param4, [s_bind]
		mov		param3, [this + BWD]
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoPrev						; iter = GoPrev (array, table, bwd, bindex)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + BWD], iter			; update iterator position
@@:		mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Save forward iterator branch]---------
.fwd:	mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		key, [array + iter + NDATA]	; key = array[iter].data
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_fkey], key				; save "fkey" variable into the stack
;---[Index computation loop]---------------
.floop:	add		qword [s_find], KSIZE		; findex++
		mov		param4, KSIZE
		mov		param3, [s_iter]
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoPrev						; iter = GoPrev (array, table, iter, KSIZE)
		cmp		iter, EMPTY					; if (iter <= EMPTY)
		jle		@f							;     then break the loop
		mov		array, [s_array]			; get "array" variable from the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		param1, [s_fkey]
		mov		param2, [array + iter + NDATA]
		call	qword [s_kfunc]				; result = Compare (key, array[iter].data)
		test	result, result
		jz		.floop						; do while (result == 0)
;---[End of index computation loop]--------
@@:		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		jmp		.back						; go back
;---[Save backward iterator branch]--------
.bwd:	mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		key, [array + iter + NDATA]	; key = array[iter].data
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_bkey], key				; save "bkey" variable into the stack
;---[Index computation loop]---------------
.bloop:	add		qword [s_bind], KSIZE		; bindex++
		mov		param4, KSIZE
		mov		param3, [s_iter]
		mov		param2, [s_table]
		mov		param1, [s_array]
		call	GoNext						; iter = GoNext (array, table, iter, KSIZE)
		cmp		iter, EMPTY					; if (iter <= EMPTY)
		jle		@f							;     then break the loop
		mov		array, [s_array]			; get "array" variable from the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		param1, [s_bkey]
		mov		param2, [array + iter + NDATA]
		call	qword [s_kfunc]				; result = Compare (key, array[iter].data)
		test	result, result
		jz		.bloop						; do while (result == 0)
;---[End of index computation loop]--------
@@:		mov		this, [s_this]				; get "this" variable from the stack
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
status	equ		al							; operation status
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
		mov		oldcap, [this + CAPACITY]	; get old object capacity
		mov		oldpool, [this + POOL]		; get old pool pointer
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
		jmp		CorrectTable				; return this.CorrectTable (oldcap / 2)
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
kfunc	equ		rdx							; key compare function
hfunc	equ		rcx							; hash function
cfunc	equ		r8							; copy function
dfunc	equ		r9							; delete function
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		rax							; pointer to array of nodes
ptr		equ		r10							; pointer to user's data
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_cap	equ		stack + 1 * 8				; stack position of "cap" variable
s_kfunc	equ		stack + 2 * 8				; stack position of "kfunc" variable
s_hfunc	equ		stack + 3 * 8				; stack position of "hfunc" variable
s_cfunc	equ		stack + 4 * 8				; stack position of "cfunc" variable
s_dfunc	equ		stack + 5 * 8				; stack position of "dfunc" variable
s_ptr	equ		stack + 8 * 8				; stack position of "ptr" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_hfunc], hfunc			; save "hfunc" variable into the stack
		mov		[s_cfunc], cfunc			; save "cfunc" variable into the stack
		mov		[s_dfunc], dfunc			; save "dfunc" variable into the stack
		shl		cap, NSCALE + 1				; cap = cap * 2 * NSIZE
	Capacity	cap, array, MINCAP			; compute capacity of the object
		mov		[s_cap], cap				; save "cap" variable into the stack
;---[Allocate memory for the object]-------
		mov		sc_prm6, 0
		mov		sc_prm5, -1
		mov		sc_prm4, 0x8022
		mov		sc_prm3, 0x3
		mov		sc_prm1, 0
		mov		sc_num, SYSCALL_MMAP
		syscall								; array = mmap (NULL, cap, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_POPULATE, -1, 0)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		mov		kfunc, [s_kfunc]			; get "kfunc" variable from the stack
		mov		hfunc, [s_hfunc]			; get "hfunc" variable from the stack
		mov		cfunc, [s_cfunc]			; get "cfunc" variable from the stack
		mov		dfunc, [s_dfunc]			; get "dfunc" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], cap		; this.capacity = cap
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + POOL], 0		; this.pool = 0
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + FUTEX], 0		; this.futex = 0
		mov		[this + KFUNC], kfunc		; this.kfunc = kfunc
		mov		[this + HFUNC], hfunc		; this.hfunc = hfunc
		mov		[this + CFUNC], cfunc		; this.cfunc = cfunc
		mov		[this + DFUNC], dfunc		; this.dfunc = dfunc
		mov		[this + DPTR], ptr			; this.ptr = ptr
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
		mov		qword [this + FUTEX], 0		; this.futex = 0
		mov		[this + KFUNC], kfunc		; this.kfunc = kfunc
		mov		[this + HFUNC], hfunc		; this.hfunc = hfunc
		mov		[this + CFUNC], cfunc		; this.cfunc = cfunc
		mov		[this + DFUNC], dfunc		; this.dfunc = dfunc
		mov		[this + DPTR], ptr			; this.ptr = ptr
		xor		status, status				; return false
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
status	equ		al							; operation status
temp	equ		rax							; temporary register
stack	equ		rsp							; stack pointer
s_ptr	equ		stack + 0 * 8				; stack position of "ptr" variable
s_this	equ		stack + 1 * 8				; stack position of "this" variable
s_src	equ		stack + 2 * 8				; stack position of "source" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Prevent initialization by itself]-----
		cmp		this, source				; if (this == source)
		je		.exit						;     then go to exit
;---[Call object constructor]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		temp, [source + DPTR]
		mov		[s_ptr], temp
		mov		param6, [source + DFUNC]
		mov		param5, [source + CFUNC]
		mov		param4, [source + HFUNC]
		mov		param3, [source + KFUNC]
		mov		param2, [source + SIZE]
		shr		param2, KSCALE
		call	Constructor					; status = this.Counstructor (source.size, source.kfunc, source.hfunc, source.cfunc, source.dfunc, source.ptr)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		test	status, status				; if (!status)
		jz		.exit						;     then go to exit
;---[Copy elements from source object]-----
		mov		param6, [this + DPTR]
		mov		param5, [this + CFUNC]
		mov		param4, [source + SIZE]
		mov		param3, [source + CAPACITY]
		shr		param3, 1
		mov		param2, [source + ARRAY]
		add		stack, space				; restoring back the stack pointer
		jmp		CopyElements				; return this.CopyElements (source.array, source.capacity / 2, source.size, this.cfunc, this.ptr)
;---[Normal exit branch]-------------------
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
;---[Delete elements]----------------------
		mov		param5, [this + DPTR]
		mov		param4, [this + DFUNC]
		mov		param3, [this + SIZE]
		mov		param2, [this + CAPACITY]
		shr		param2, 1
		mov		param1, [this + ARRAY]
		call	DeleteElements				; call DeleteElements (this.array, this.capacity / 2, this.size, this.dfunc, this.ptr)
		mov		this, [s_this]				; get "this" variable from the stack
;---[Release memory]-----------------------
		mov		sc_prm2, [this + CAPACITY]
		mov		sc_prm1, [this + ARRAY]
		mov		sc_num, SYSCALL_MUNMAP
		syscall								; syscall munmap (array, capacity)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + POOL], EMPTY	; this.pool = EMPTY
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + FUTEX], 0		; this.futex = 0
		mov		qword [this + KFUNC], 0		; this.kfunc = NULL
		mov		qword [this + HFUNC], 0		; this.hfunc = NULL
		mov		qword [this + CFUNC], 0		; this.cfunc = NULL
		mov		qword [this + DFUNC], 0		; this.dfunc = NULL
		mov		qword [this + DPTR], 0		; this.ptr = NULL
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Access predicates                                                      ;
;******************************************************************************;

; Lock operations
LockReadings:	WRITE_LOCK
LockWritings:	READ_LOCK

; Release operations
AllowReadings:	WRITE_RELEASE
AllowWritings:	READ_RELEASE

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
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		rcx							; pointer to array of nodes
node	equ		r8							; index of current node in the chain
next	equ		r9							; index of next node in the chain
ptr		equ		r10							; temporary pointer
func	equ		r11							; pointer to function
nsize	equ		result						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_table	equ		stack + 2 * 8				; stack position of "table" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_node	equ		stack + 4 * 8				; stack position of "node" variable
s_next	equ		stack + 5 * 8				; stack position of "next" variable
s_nsize	equ		stack + 6 * 8				; stack position of "nsize" variable
s_count	equ		stack + 7 * 8				; stack position of "count" variable
s_ptr	equ		stack + 8 * 8				; stack position of "ptr" variable
s_base	equ		stack + 9 * 8				; stack position of "base" variable
s_value	equ		stack + 10 * 8				; stack position of "value" variable
space	= 13 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		func, [this + KFUNC]		; get pointer to key compare function
		shr		result, 1
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		movdqa	[s_value], value			; save "value" variable into the stack
;---[Get hash value]-----------------------
		mov		func, [this + HFUNC]		; get pointer to hash function
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
		mov		ptr, [array + node + FDIR]	; ptr = array[node].fdir
		mov		nsize, IMASK				; load index mask
		and		nsize, ptr					; nsize = array[next].fdir & IMASK
@@:		mov		next, NMASK 				; load node mask
		and		next, ptr					; next = array[next].fdir & NMASK
		lea		ptr, [array + node + NDATA]	; ptr = array[node].data
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
		add		qword [this + SIZE], KSIZE	; update object size
		movdqa	value, [s_value]			; get "value" variable from the stack
		sub		ptr, [s_base]
		mov		param3, ptr
		mov		param2, node
		add		stack, space				; restoring back the stack pointer
		jmp		InsertNode					; return this.InsertNode (node, ptr - base, value)
;---[Split node branch]--------------------
.split:	mov		this, [s_this]				; get "this" variable from the stack
		add		qword [this + SIZE], KSIZE	; update object size
		movdqa	value, [s_value]			; get "value" variable from the stack
		sub		ptr, [s_base]
		mov		param3, ptr
		mov		param2, node
		add		stack, space				; restoring back the stack pointer
		jmp		SplitNode					; return this.SplitNode (node, index, value)
;---[Insert into empty chain]--------------
.empty:	mov		this, [s_this]				; get "this" variable from the stack
		add		qword [this + SIZE], KSIZE	; update object size
		add		qword [array + node + FDIR], KSIZE
		movdqa	value, [s_value]			; get "value" variable from the stack
		movdqa	[array + node + NDATA], value
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
if type = 1
;---[Call delete function if set]----------
.undo:	mov		this, [s_this]				; get "this" variable from the stack
		mov		func, [this + DFUNC]		; get pointer to delete function
		test	func, func					; if (func != NULL)
		jnz		.del						;     then call delete function
.back:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Delete element branch]----------------
.del:	mov		param2, [this + DPTR]
		lea		param1, [s_value]
		call	func						; call func (&value, this.ptr)
		jmp		.back						; go back
else if type = 2
;---[Call delete function if set]----------
.undo:	mov		this, [s_this]				; get "this" variable from the stack
		mov		func, [this + DFUNC]		; get pointer to delete function
		test	func, func					; if (func != NULL)
		jnz		.del						;     then call delete function
.back:	movdqa	value, [s_value]			; get "value" variable from the stack
		movdqa	[ptr], value				; ptr[0] = value
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Delete element branch]----------------
.del:	mov		param2, [this + DPTR]
		mov		param1, ptr
		call	func						; call func (ptr, this.ptr)
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		jmp		.back						; go back
end if
}
InsertCoreMulti:	INSERT_CORE	0
InsertCoreUnique:	INSERT_CORE	1
OverrideCore:		INSERT_CORE	2

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
func	equ		rcx							; pointer to function
value	equ		xmm0						; value to insert
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check access mode]--------------------
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.error						; function, then go to error branch
;---[Check pool for free nodes]------------
		movdqu	value, [data]				; value = data[0]
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		movdqa	[s_value], value			; save "value" variable into the stack
		cmp		qword [this + POOL], EMPTY	; if (this.pool <= EMPTY)
		jle		.ext						;     then try to extend object capacity
;---[Call copy function if set]------------
.back1:	mov		func, [this + CFUNC]		; get pointer to copy function
		test	func, func					; if (func != NULL)
		jnz		.copy						;     then call copy function
;---[Insert new element]-------------------
.back2:	movdqa	value, [s_value]			; get "value" variable from the stack
		add		stack, space				; restoring back the stack pointer
		jmp		InsertCore					; return this.InsertCore (value)
;---[Extend object capacity]---------------
.ext:	mov		param2, [this + CAPACITY]
		shl		param2, 1
		call	Extend						; status = this.Extend (capacity * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		test	status, status				; if (status)
		jnz		.back1						;     then go back
		add		stack, space				; restoring back the stack pointer
		ret
;---[Copy element branch]------------------
.copy:	mov		param3, [this + DPTR]
		mov		param2, [s_data]
		lea		param1, [s_value]
		call	func						; call func (&value, data, ptr)
		mov		this, [s_this]				; get "this" variable from the stack
		test	status, status				; if (status)
		jnz		.back2						;     then go back
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}
InsertMulti:	INSERT_ELEMENT	InsertCoreMulti
InsertUnique:	INSERT_ELEMENT	InsertCoreUnique
Override:		INSERT_ELEMENT	OverrideCore

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
;       Take element from the left node                                        ;
;==============================================================================;
TakeFromLeftNode:
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
		add		lnode, array				; lnode += array
		mov		size, [lnode + FDIR]		; get node size
		sub		size, KSIZE					; size--
		mov		[lnode + FDIR], size		; update node size
		and		size, IMASK					; extract node size
		mov		[s_size], size				; save "size" variable into the stack
		add		lnode, size					; lnode += size
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
;       Take element from the right node                                       ;
;==============================================================================;
TakeFromRightNode:
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
		add		rnode, array				; rnode += array
		mov		size, [rnode + FDIR]		; get node size
		sub		size, KSIZE					; size--
		mov		[rnode + FDIR], size		; update node size
		and		size, IMASK					; extract node size
		mov		[s_size], size				; save "size" variable into the stack
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
		mov		[array + next + BDIR], lnode
		add		next, NMAX
		mov		[array + lnode + FDIR], next
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
		cmp		ival, NMAX					; if (ival >= NMAX)
		jae		@f							;     then go to prev element
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
;---[if lnode < table]---------------------
		mov		lsize, IMASK				; load index mask
		and		lsize, [array + lnode + FDIR]
		sub		lsize, KSIZE				; lsize = (array[lnode].fdir & IMASK) - KSIZE
		cmp		lsize, NMIN					; if (lsize >= NMIN)
		jae		.left						;     then take element from the left node
		mov		param2, lnode
		mov		param5, index
		mov		param4, node
		mov		param3, node
		add		stack, space				; restoring back the stack pointer
		jmp		JoinNode					; return this.JoinNode (lnode, node, node, index)
;---[else]---------------------------------
.else:	mov		rsize, IMASK				; load index mask
		and		rsize, [array + rnode + FDIR]
		sub		rsize, KSIZE				; rsize = (array[rnode].fdir & IMASK) - KSIZE
		cmp		rsize, NMIN					; if (rsize >= NMIN)
		jae		.right						;     then take element from the right node
		mov		param5, index
		mov		param4, node
		mov		param2, node
		mov		param3, rnode
		add		stack, space				; restoring back the stack pointer
		jmp		JoinNode					; return this.JoinNode (node, rnode, node, index)
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
		jmp		DeleteNode					; return this.DeleteNode (node, index)
;---[Take element from the left node]------
.left:	mov		param2, lnode
		mov		param3, node
		mov		param4, index
		add		stack, space				; restoring back the stack pointer
		jmp		TakeFromLeftNode			; return this.TakeFromLeftNode (lnode, node, index)
;---[Take element from the right node]-----
.right:	mov		param2, node
		mov		param3, rnode
		mov		param4, index
		add		stack, space				; restoring back the stack pointer
		jmp		TakeFromRightNode			; return this.TakeFromRightNode (node, rnode, index)
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
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
func	equ		r10							; pointer to function
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_iter	equ		stack + 1 * 8				; stack position of "iter" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check access mode]--------------------
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.error						; function, then go to error branch
;---[Check iterator]-----------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter <= EMPTY)
		jle		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		lea		array, [array + iter + NDATA]
;---[Call delete function if set]----------
		mov		func, [this + DFUNC]		; get pointer to delete function
		test	func, func					; if (func != NULL)
		jnz		.del						;     then call delete function
;---[Remove element]-----------------------
.back:	mov		param2, [s_iter]
		add		stack, space				; restoring back the stack pointer
		jmp		RemoveCore					; return this.RemoveCore (iter)
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Delete element branch]----------------
.del:	mov		param2, [this + DPTR]
		mov		param1, array
		call	func						; call func (array, this.ptr)
		mov		this, [s_this]				; get "this" variable from the stack
		jmp		.back						; go back
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
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
func	equ		r10							; pointer to function
value	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_iter	equ		stack + 3 * 8				; stack position of "iter" variable
s_value	equ		stack + 4 * 8				; stack position of "value" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check access mode]--------------------
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.error						; function, then go to error branch
;---[Check pool for free nodes]------------
		movdqu	value, [data]				; value = data[0]
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		movdqa	[s_value], value			; save "value" variable into the stack
		cmp		qword [this + POOL], EMPTY	; if (this.pool <= EMPTY)
		jle		.ext						;     then try to extend object capacity
;---[Check iterator]-----------------------
.back1:	mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter <= EMPTY)
		jle		.error						;     then go to error branch
;---[Normal execution branch]--------------
		lea		array, [array + iter + NDATA]
		mov		[s_array], array			; save "array" variable into the stack
;---[Call copy function if set]------------
		mov		func, [this + CFUNC]		; get pointer to copy function
		test	func, func					; if (func != NULL)
		jnz		.copy						;     then call copy function
;---[Compare keys]-------------------------
.back2:	mov		func, [this + KFUNC]		; get pointer to key compare function
		mov		param1, [s_value]
		mov		param2, [array]
		call	func						; result = Compare (value.key, array[iter].data.key)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		test	result, result				; if (result != 0)
		jnz		.ins						;     then go to insert branch
;---[Call delete function if set]----------
		mov		func, [this + DFUNC]		; get pointer to delete function
		test	func, func					; if (func != NULL)
		jnz		.del1						;     then call delete function
;---[Set new value]------------------------
.back3:	movdqa	value, [s_value]			; get "value" variable from the stack
		movdqa	[array], value				; array[0] = value
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Insert new element]-------------------
.ins:	movdqa	value, [s_value]			; get "value" variable from the stack
		call	InsertCore					; status = this.InsertCore (value)
		test	status, status				; if (status == 0)
		jz		.error						;     then go to error branch
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get iterator value
		mov		[s_iter], iter				; save "iter" variable into the stack
		lea		array, [array + iter + NDATA]
;---[Call delete function if set]----------
		mov		func, [this + DFUNC]		; get pointer to delete function
		test	func, func					; if (func != NULL)
		jnz		.del2						;     then call delete function
;---[Remove old element]-------------------
.back4:	mov		param2, [s_iter]
		add		stack, space				; restoring back the stack pointer
		jmp		RemoveCore					; return this.RemoveCore (iter)
;---[Extend object capacity]---------------
.ext:	mov		param2, [this + CAPACITY]
		shl		param2, 1
		call	Extend						; status = this.Extend (capacity * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		test	status, status				; if (status)
		jnz		.back1						;     then go back
		add		stack, space				; restoring back the stack pointer
		ret
;---[Copy element branch]------------------
.copy:	mov		param3, [this + DPTR]
		mov		param2, [s_data]
		lea		param1, [s_value]
		call	func						; call func (&value, data, this.ptr)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		test	status, status				; if (status)
		jnz		.back2						;     then go back
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Delete element branch #1]-------------
.del1:	mov		param2, [this + DPTR]
		mov		param1, array
		call	func						; call func (array, this.ptr)
		mov		array, [s_array]			; get "array" variable from the stack
		jmp		.back3						; go back
;---[Delete element branch #2]-------------
.del2:	mov		param2, [this + DPTR]
		mov		param1, array
		call	func						; call func (array, this.ptr)
		mov		this, [s_this]				; get "this" variable from the stack
		jmp		.back4						; go back
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
value	equ		xmm0						; temporary register
;------------------------------------------
if ~ext
		mov		iter, [this + offst]		; get iterator value
end if
		cmp		iter, EMPTY					; if (iter <= EMPTY)
		setg	status						;     return false
		jle		.exit
;---[Normal execution branch]--------------
		add		iter, [this + ARRAY]		; iter += array
		movdqa	value, [iter + NDATA]
		movdqu	[data], value				; data[0] = array[iter].data
.exit:	ret									; return true
}
GetFwd:		GET_ELEMENT		FWD, 0
GetBwd:		GET_ELEMENT		BWD, 0
GetIter:	GET_ELEMENT		EMPTY, 1

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
;---[Check access mode]--------------------
if ~ext
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.exit						; function, then go to exit
end if
;---[Check size]---------------------------
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
.exit:	add		stack, space				; restoring back the stack pointer
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
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.exit						; function, then go to exit
		mov		[this + target], result		; set target iterator by source value
end if
.exit:	ret
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
;---[Check access mode]--------------------
if ~ext
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.error						; function, then go to error branch
end if
;---[Check iterator]-----------------------
if ~ext
		mov		iter, [this + offst]		; get iterator value
else
		mov		iter, [ptr]					; get iterator value
end if
		cmp		iter, EMPTY					; if (iter <= EMPTY)
		jle		.error						;     then go to error branch
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
		cmp		iter, EMPTY					; if (iter <= EMPTY)
		jle		.error						;     then go to error branch
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
;---[Check access mode]--------------------
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.exit						; function, then go to exit
;---[Swap iterators]-----------------------
		mov		fwd, [this + FWD]			; get forward iterator value
		mov		bwd, [this + BWD]			; get backward iterator value
		mov		[this + FWD], bwd			; set forward iterator value
		mov		[this + BWD], fwd			; set backward iterator value
.exit:	ret

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
func	equ		r10							; pointer to function
iter	equ		r11							; iterator value
mvalue	equ		r12							; min or max max value
vptr	equ		r13							; position of min or max value
value	equ		xmm0						; temporary register
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
;---[Check access mode]--------------------
if ~ext
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.ntfnd						; function, then return false
end if
;---[Check size]---------------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		func, [this + KFUNC]		; get pointer to key compare function
		mov		node, result
if bwd
		shr		result, 1					; border = capacity / 2
else
		sub		result, NSIZE				; border = capacity - 1
		shr		node, 1
		sub		node, NSIZE					; node = border / 2 - 1
end if
		mov		[s_value], mvalue			; save old value of "mvalue" variable
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
		mov		mvalue, [array + iter + NDATA]
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
		mov		param1, mvalue
		mov		param2, [array + iter + NDATA]
		call	qword [s_func]				; result = Compare (mvalue, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0					; if (result cond 0)
		jn#cond	.tskip						;     mvalue = array[iter].data.key
		mov		mvalue, [array + iter + NDATA]
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
		movdqa	value, [array + vptr + NDATA]
		movdqu	[data], value				; data[0] = array[vptr].data
		mov		mvalue, [s_value]			; restore old value of "mvalue" variable
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
func	equ		r10							; pointer to function
iter	equ		r11							; iterator value
value	equ		xmm0						; temporary register
nsize	equ		func						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_key	equ		stack + 2 * 8				; stack position of "key" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_table	equ		stack + 5 * 8				; stack position of "table" variable
s_func	equ		stack + 6 * 8				; stack position of "func" variable
s_node	equ		stack + 7 * 8				; stack position of "node" variable
s_iter	equ		stack + 8 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 9 * 8				; stack position of "nsize" variable
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check access mode]--------------------
if ~ext
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.ntfnd						; function, then return false
end if
;---[Check size]---------------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		func, [this + KFUNC]		; get pointer to key compare function
		shr		result, 1
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Get hash value]-----------------------
		mov		func, [this + HFUNC]		; get pointer to hash function
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
		mov		node, [array + node + FDIR]
		and		node, NMASK					; node = array[node].fdir & NMASK
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
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
		movdqa	value, [array + iter + NDATA]
		movdqu	[data], value				; data[0] = array[iter].data
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
kfunc	equ		r10							; key compare function
hfunc	equ		r11							; hash function
value	equ		xmm0						; temporary register
iter	equ		kfunc						; iterator value
nsize	equ		hfunc						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_keys	equ		stack + 2 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 3 * 8				; stack position of "ksize" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
s_array	equ		stack + 5 * 8				; stack position of "array" variable
s_table	equ		stack + 6 * 8				; stack position of "table" variable
s_kfunc	equ		stack + 7 * 8				; stack position of "kfunc" variable
s_hfunc	equ		stack + 8 * 8				; stack position of "hfunc" variable
s_node	equ		stack + 9 * 8				; stack position of "node" variable
s_iter	equ		stack + 10 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 11 * 8				; stack position of "nsize" variable
space	= 13 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check access mode]--------------------
if ~ext
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.ntfnd						; function, then return false
end if
;---[Check size]---------------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.ntfnd						;     return false
;---[Check ksize]--------------------------
		test	ksize, ksize				; if (ksize == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		kfunc, [this + KFUNC]		; get pointer to key compare function
		mov		hfunc, [this + HFUNC]		; get pointer to hash function
		shr		result, 1
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_hfunc], hfunc			; save "hfunc" variable into the stack
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
		mov		node, [array + node + FDIR]
		and		node, NMASK					; node = array[node].fdir & NMASK
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
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
		movdqa	value, [array + iter + NDATA]
		movdqu	[data], value				; data[0] = array[iter].data
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
func	equ		r10							; pointer to function
iter	equ		r11							; iterator value
vptr	equ		r12							; position of key
value	equ		xmm0						; temporary register
nsize	equ		func						; node size
stack	equ		rsp							; stack pointer
s_vptr	equ		stack + 0 * 8				; stack position of "vptr" variable
s_this	equ		stack + 1 * 8				; stack position of "this" variable
s_data	equ		stack + 2 * 8				; stack position of "data" variable
s_key	equ		stack + 3 * 8				; stack position of "key" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
s_array	equ		stack + 5 * 8				; stack position of "array" variable
s_table	equ		stack + 6 * 8				; stack position of "table" variable
s_func	equ		stack + 7 * 8				; stack position of "func" variable
s_node	equ		stack + 8 * 8				; stack position of "node" variable
s_iter	equ		stack + 9 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 10 * 8				; stack position of "nsize" variable
s_total	equ		stack + 11 * 8				; stack position of "total" variable
space	= 13 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check access mode]--------------------
if ~ext
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.exit						; function, then go to exit
end if
;---[Check size]---------------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		func, [this + KFUNC]		; get pointer to key compare function
		shr		result, 1
		mov		[s_vptr], vptr				; save old value of "vptr" variable
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Get hash value]-----------------------
		mov		func, [this + HFUNC]		; get pointer to hash function
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
		mov		node, [array + node + FDIR]
		and		node, NMASK					; node = array[node].fdir & NMASK
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
end if
		cmp		node, [s_table]
		jb		.sloop						; do while (node < table)
;---[End of search loop]-------------------
.brk:	cmp		vptr, EMPTY					; if (vptr <= EMPTY)
		jle		.skip						;     then key is not found
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
if ~ext
		mov		[this + offst], vptr		; update iterator position
else
		mov		[ptr], vptr					; update iterator position
end if
		movdqa	value, [array + vptr + NDATA]
		movdqu	[data], value				; data[0] = array[iter].data
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

;==============================================================================;
;       Vectorized searching                                                   ;
;==============================================================================;
macro	INSERTSORT	dsc
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
low		equ		rsi							; low part of compare result
high	equ		rax							; high part of compare result
left	equ		rdx							; left index
right	equ		rcx							; right index
key1	equ		r8							; temporary key #1
key2	equ		r9							; temporary key #2
data1	equ		r10							; temporary data #1
data2	equ		r11							; temporary data #2
stack	equ		rsp							; stack pointer
s_size	equ		stack - 1 * 8				; stack position of "size" variable
;------------------------------------------
		mov		[s_size], size				; save "size" variable into the stack
		mov		left, KSIZE					; left = 1
;---[Sorting loop]-------------------------
.loop:	mov		right, left					; right = left
		mov		key1, [array + right + 0]	; key1 = array[right].key
		mov		data1, [array + right + 8]	; data1 = array[right].data
;---[Internal loop]------------------------
.iloop:	mov		key2, [array + right - 16]	; key2 = array[right - 1].key
		mov		data2, [array + right - 8]	; data2 = array[right - 1].data
if dsc
		mov		low, key2					; low = key2
		mov		high, data2					; high = data2
		sub		low, key1					; low -= key1
		sbb		high, data1					; high -= data1
else
		mov		low, key1					; low = key1
		mov		high, data1					; high = data1
		sub		low, key2					; low -= key2
		sbb		high, data2					; high -= data2
end if
		jnb		.break						; if (array[right] op array[right - 1])
		mov		[array + right + 0], key2	;     array[right].key = key2
		mov		[array + right + 8], data2	;     array[right].data = data2
		sub		right, KSIZE				;     right--
		jnz		.iloop						; do while (right != 0)
;---[End of internal loop]-----------------
.break:	mov		[array + right + 0], key1	; array[right].key = key1
		mov		[array + right + 8], data1	; array[right].data = data1
		add		left, KSIZE					; left++
		cmp		left, [s_size]
		jb		.loop						; do while (left < size)
;---[End of sorting loop]------------------
		ret
}
InsertSortAsc:	INSERTSORT	0
InsertSortDsc:	INSERTSORT	1
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	QUICKSORT	InsertSort, dsc
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
half	equ		rax							; half of array size
left	equ		rdx							; left index
right	equ		rcx							; right index
mkey	equ		r8							; median key value
mdata	equ		r9							; median data value
low		equ		r10							; low part of compare result
high	equ		r11							; high part of compare result
key1	equ		r12							; temporary key #1
key2	equ		r13							; temporary key #2
data1	equ		r14							; temporary data #1
data2	equ		r15							; temporary data #2
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
stack	equ		rsp							; stack pointer
s_key1	equ		stack + 0 * 8				; stack position of "key1" variable
s_data1	equ		stack + 1 * 8				; stack position of "data1" variable
s_key2	equ		stack + 2 * 8				; stack position of "key2" variable
s_data2	equ		stack + 3 * 8				; stack position of "data2" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_size	equ		stack + 5 * 8				; stack position of "size" variable
space	= 7 * 8								; stack size required by the procedure
minsize	= 512								; min array size is aceptable for Quick sort
;------------------------------------------
.start:	cmp		size, minsize				; if (size <= minsize)
		jbe		InsertSort					;     call InsertSort (array, size)
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_key1], key1				; save old value of "key1" variable
		mov		[s_data1], data1			; save old value of "data1" variable
		mov		[s_key2], key2				; save old value of "key2" variable
		mov		[s_data2], data2			; save old value of "data2" variable
;---[Sorting loop]-------------------------
.loop:	mov		half, size
		shr		half, 1
		and		half, -KSIZE				; half = size / 2
		mov		left, -KSIZE				; left = -1
		mov		right, size					; right = size
		mov		mkey, [array + half + 0]	; mkey = array[half].key
		mov		mdata, [array + half + 8]	; mdata = array[half].data
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	mov		[array + left + 0], key2	; array[left].key = key2
		mov		[array + left + 8], data2	; array[left].data = data2
		mov		[array + right + 0], key1	; array[right].key = key1
		mov		[array + right + 8], data1	; array[right].data = data1
;---[Internal loop 1]----------------------
.loop1:	add		left, KSIZE					; left++
		mov		key1, [array + left + 0]	; key1 = array[left].key
		mov		data1, [array + left + 8]	; data1 = array[left].data
if dsc
		mov		low, mkey					; low = mkey
		mov		high, mdata					; high = mdata
		sub		low, key1					; low -= key1
		sbb		high, data1					; high -= data1
else
		mov		low, key1					; low = key1
		mov		high, data1					; high = data1
		sub		low, mkey					; low -= mkey
		sbb		high, mdata					; high -= mdata
end if
		jb		.loop1						; do while (condition is true)
;---[Internal loop 2]----------------------
.loop2:	sub		right, KSIZE				; right--
		mov		key2, [array + right + 0]	; key2 = array[right].key
		mov		data2, [array + right + 8]	; data2 = array[right].data
if dsc
		mov		low, key2					; low = key2
		mov		high, data2					; high = data2
		sub		low, mkey					; low -= mkey
		sbb		high, mdata					; high -= mdata
else
		mov		low, mkey					; low = mkey
		mov		high, mdata					; high = mdata
		sub		low, key2					; low -= key2
		sbb		high, data2					; high -= data2
end if
		jb		.loop2						; do while (condition is true)
;------------------------------------------
		cmp		left, right
		jb		.swap						; do while (left < right)
;---[End of swap loop]---------------------
		add		right, KSIZE
		sub		rsize, right				; rsize = size - (right + 1)
		lea		rarray, [array + right]		; rarray = array + (right + 1)
		cmp		lsize, rsize				; if (lsize <= rsize)
		ja		.else						; {
;---[if lsize <= rsize]--------------------
		cmp		lsize, KSIZE				; if (lsize > 1)
		jbe		@f							; {
		mov		[s_array], rarray			; save "rarray" variable into the stack
		mov		[s_size], rsize				; save "rsize" variable into the stack
		mov		size, lsize
		call	.start						; call QuickSort (larray, lsize)
		mov		rarray, [s_array]			; get "rarray" variable from the stack
		mov		rsize, [s_size]				; get "rsize" variable from the stack
@@:		mov		array, rarray				; }
		jmp		.end
;---[else]---------------------------------
.else:	cmp		rsize, KSIZE				; if (rsize > 1)
		jbe		@f							; {
		mov		[s_array], larray			; save "larray" variable into the stack
		mov		[s_size], lsize				; save "lsize" variable into the stack
		mov		array, rarray
		call	.start						; call QuickSort (rarray, rsize)
		mov		larray, [s_array]			; get "larray" variable from the stack
		mov		lsize, [s_size]				; get "lsize" variable from the stack
@@:		mov		size, lsize					; }
;---[end if]-------------------------------
.end:	cmp		size, minsize
		ja		.loop						; do while (size > minsize)
;---[Insert sort]--------------------------
		mov		key1, [s_key1]				; restore old value of "key1" variable
		mov		data1, [s_data1]			; restore old value of "data1" variable
		mov		key2, [s_key2]				; restore old value of "key2" variable
		mov		data2, [s_data2]			; restore old value of "data2" variable
		add		stack, space				; restoring back the stack pointer
		jmp		InsertSort					; return InsertSort (array, size)
}
QuickSortAsc:	QUICKSORT	InsertSortAsc, 0
QuickSortDsc:	QUICKSORT	InsertSortDsc, 1
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	PREPARE		QuickSort
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
mask	equ		rdx							; mask value
func	equ		rcx							; hash function
;---[Internal variables]-------------------
result	equ		rax							; result registet
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_mask	equ		stack + 2 * 8				; stack position of "mask" variable
s_func	equ		stack + 3 * 8				; stack position of "hfunc" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
s_count	equ		stack + 5 * 8				; stack position of "count" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		sub		mask, 1						; mask = mask - 1
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_mask], mask				; save "mask" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_ptr], array				; save "ptr" variable into the stack
		mov		[s_count], size				; save "count" variable into the stack
;---[Prepare keys]-------------------------
.loop:	mov		param1, [array]
		call	qword [s_func]
		mov		array, [s_ptr]				; get "ptr" variable from the stack
		shl		result, NSCALE
		and		result, [s_mask]			; result = hfunc (ptr[0].key) * NSIZE & mask
		mov		[array + 8], result			; ptr[0].data = result
		add		array, KSIZE				; array++
		mov		[s_ptr], array				; save "ptr" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Sort vectors]-------------------------
		mov		param2, [s_size]
		mov		param1, [s_array]
		call	QuickSort					; QuickSort (array, size)
		add		stack, space				; restoring back the stack pointer
		ret
}
PrepareVectorAsc:	PREPARE		QuickSortAsc
PrepareVectorDsc:	PREPARE		QuickSortDsc
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_VECTOR		PrepareVector, cmd, cond, offst, bwd, ext, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
data	equ		rsi							; pointer to result vector
dsize	equ		rdx							; capacity of result vector
keys	equ		rcx							; pointer to array of keys
ksize	equ		r8							; pointer to size of array of keys
ptr		equ		r9							; pointer to iterator
;---[Internal variables]-------------------
result	equ		rax							; result register
count	equ		r12							; count of elements to find
node	equ		r13							; node index
array	equ		r14							; pointer to array of nodes
kfunc	equ		r10							; key compare function
hfunc	equ		r11							; hash function
value	equ		xmm0						; temporary register
iter	equ		kfunc						; iterator value
nsize	equ		hfunc						; node size
stack	equ		rsp							; stack pointer
s_count	equ		stack + 0 * 8				; stack position of "count" variable
s_node	equ		stack + 1 * 8				; stack position of "node" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_this	equ		stack + 3 * 8				; stack position of "this" variable
s_data	equ		stack + 4 * 8				; stack position of "data" variable
s_dsize	equ		stack + 5 * 8				; stack position of "dsize" variable
s_keys	equ		stack + 6 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 7 * 8				; stack position of "ksize" variable
s_ptr	equ		stack + 8 * 8				; stack position of "ptr" variable
s_table	equ		stack + 9 * 8				; stack position of "table" variable
s_kfunc	equ		stack + 10 * 8				; stack position of "kfunc" variable
s_hfunc	equ		stack + 11 * 8				; stack position of "hfunc" variable
s_iter	equ		stack + 12 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 13 * 8				; stack position of "nsize" variable
s_total	equ		stack + 14 * 8				; stack position of "total" variable
space	= 15 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
		mov		[s_count], count			; save old value of "count" variable
		mov		[s_node], node				; save old value of "node" variable
		mov		[s_array], array			; save old value of "array" variable
;---[Check access mode]--------------------
if ~ext
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.exit						; function, then go to exit
end if
;---[Check size]---------------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.exit						;     then go to exit
;---[Check ksize]--------------------------
		mov		count, CONTINUE - 1			; count = CONTINUE - 1
		and		count, [ksize]				; if (count & ksize[0] == 0)
		jz		.exit						;     then go to exit
;---[Check dsize]--------------------------
		test	dsize, dsize				; if (dsize == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		kfunc, [this + KFUNC]		; get pointer to key compare function
		mov		hfunc, [this + HFUNC]		; get pointer to hash function
		shl		count, KSCALE				; convert count to bytes
		shr		result, 1
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_dsize], dsize			; save "dsize" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_hfunc], hfunc			; save "hfunc" variable into the stack
;---[Check continue flag]------------------
if ~ext
		mov		iter, [this + offst]		; get iterator value
else
		mov		iter, [ptr]					; get iterator value
end if
		mov		node, NMASK					; load node mask
		mov		result, IMASK				; load index mask
		and		node, iter					; node = iter & NMASK
		and		result, iter				; result = iter & IMASK
if bwd
		lea		nsize, [result + KSIZE]		; nsize = iter & IMASK + 1
else
		mov		nsize, IMASK				; load index mask
		and		nsize, [array + node + FDIR]; nsize = array[node].fdir & IMASK
		sub		nsize, result				; nsize -= iter
end if
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
		mov		result, CONTINUE			; result = CONTINUE
		test	result, [ksize]				; if (result & ksize[0])
if type
		jnz		.break						;     then continue from last position
else
		jnz		.back						;     then continue from last position
end if
;---[Prepare vector to search]-------------
		cmp		count, SORTSIZE				; if (count < SORTSIZE)
		jb		.loop						;     then skip vector sorting
		mov		param1, keys
		mov		param2, count
		mov		param3, [s_table]
		mov		param4, [s_hfunc]
		call	PrepareVector				; PrepareVector (keys, count, table, hfunc)
		mov		keys, [s_keys]				; get "keys" variable from the stack
;---[Keys search loop]---------------------
.loop:	mov		param1, [keys + count - KSIZE]
		call	qword [s_hfunc]
		mov		keys, [s_keys]				; get "keys" variable from the stack
		mov		node, [s_table]				; get "table" variable from the stack
		shl		result, NSCALE				; result = hfunc (keys[count-1]) * NSIZE
		sub		node, 1
		and		node, result
		add		node, [s_table]				; node = (hfunc (keys[count-1]) * NSIZE & mask) + table
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
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
;---[Internal loop]------------------------
.iloop:	mov		param1, [keys + count - KSIZE]
		mov		param2, [array + iter + NDATA]
		call	qword [s_kfunc]				; result = Compare (keys[count-1], array[iter].data.key)
		mov		keys, [s_keys]				; get "keys" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0
		j#cond	.break						; if (result cond 0), then break the loop
		je		.found						; if (result == 0), then go to found branch
.back:	cmd		iter, KSIZE					; change iterator position
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_nsize], KSIZE		; nsize--
		jnz		.iloop						; do while (nsize != 0)
;---[End of internal loop]-----------------
if ~bwd
		mov		node, [array + node + FDIR]
		and		node, NMASK					; node = array[node].fdir & NMASK
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
end if
		cmp		node, [s_table]
		jb		.sloop						; do while (node < table)
;---[End of search loop]-------------------
.break:	sub		count, KSIZE				; count--
		jnz		.loop						; do while (count != 0)
;---[End of keys search loop]--------------
		mov		ksize, [s_ksize]			; get "ksize" variable from the stack
		mov		[ksize], count				; ksize[0] = count
;---[Normal exit branch]-------------------
.exit:	mov		count, [s_count]			; restore old value of "count" variable
		mov		node, [s_node]				; restore old value of "node" variable
		mov		array, [s_array]			; restore old value of "array" variable
		mov		result, [s_total]			; return total
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		ksize, [s_ksize]			; get "ksize" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
if ~ext
		mov		[this + offst], iter		; update iterator position
else
		mov		[ptr], iter					; update iterator position
end if
		movdqa	value, [array + iter + NDATA]
		movdqa	[data], value				; data[0] = array[iter].data
		add		data, KSIZE					; data++
		mov		[s_data], data				; save "data" variable into the stack
		add		qword [s_total], 1			; total++
		sub		qword [s_dsize], 1			; dsize--
if type
		jnz		.break						; if (dsize != 0), then break search loop
else
		jnz		.back						; if (dsize != 0), then go back
end if
		mov		result, CONTINUE
		shr		count, KSCALE
		or		count, result				; set continue flag
		mov		[ksize], count				; ksize[0] = count
		mov		count, [s_count]			; restore old value of "count" variable
		mov		node, [s_node]				; restore old value of "node" variable
		mov		array, [s_array]			; restore old value of "array" variable
		mov		result, [s_total]			; return total
		add		stack, space				; restoring back the stack pointer
		ret
}
FindVectorFwdMulti:			FIND_VECTOR		PrepareVectorDsc, add, l, FWD, 0, 0, 0
FindVectorFwdUnique:		FIND_VECTOR		PrepareVectorDsc, add, l, FWD, 0, 0, 1
FindVectorBwdMulti:			FIND_VECTOR		PrepareVectorAsc, sub, g, BWD, 1, 0, 0
FindVectorBwdUnique:		FIND_VECTOR		PrepareVectorAsc, sub, g, BWD, 1, 0, 1
FindVectorIterFwdMulti:		FIND_VECTOR		PrepareVectorDsc, add, l, EMPTY, 0, 1, 0
FindVectorIterFwdUnique:	FIND_VECTOR		PrepareVectorDsc, add, l, EMPTY, 0, 1, 1
FindVectorIterBwdMulti:		FIND_VECTOR		PrepareVectorAsc, sub, g, EMPTY, 1, 1, 0
FindVectorIterBwdUnique:	FIND_VECTOR		PrepareVectorAsc, sub, g, EMPTY, 1, 1, 1

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
macro	FIND_CORE	cmd, bwd
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
table	equ		rsi							; first element in hash table
iter	equ		rdx							; iterator value
func	equ		rcx							; key compare function
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
.next:	mov		node, [array + node + FDIR]
		and		node, NMASK					; node = array[node].fdir & NMASK
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
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
value	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_ptr	equ		stack + 2 * 8				; stack position of "ptr" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check access mode]--------------------
if ~ext
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.ntfnd						; function, then return false
end if
;---[Get iterator value]-------------------
if ~ext
		mov		iter, [this + offst]		; get iterator value
else
		mov		iter, [ptr]					; get iterator value
end if
		cmp		iter, EMPTY					; if (iter <= EMPTY)
		jle		.ntfnd						;     return false
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
		cmp		result, EMPTY				; if (result <= EMPTY)
		jle		.ntfnd						;     return false
;---[Update iterator value]----------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
if ~ext
		mov		[this + offst], result		; update iterator position
else
		mov		[ptr], result				; update iterator position
end if
		add		result, [this + ARRAY]		; result += array
		movdqa	value, [result + NDATA]
		movdqu	[data], value				; data[0] = array[iter].data
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
func	equ		r10							; pointer to function
iter	equ		r11							; iterator value
nsize	equ		func						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_key	equ		stack + 1 * 8				; stack position of "key" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_table	equ		stack + 3 * 8				; stack position of "table" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_node	equ		stack + 5 * 8				; stack position of "node" variable
s_iter	equ		stack + 6 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 7 * 8				; stack position of "nsize" variable
s_total	equ		stack + 8 * 8				; stack position of "total" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check size]---------------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		func, [this + KFUNC]		; get pointer to key compare function
		shr		result, 1
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Get hash value]-----------------------
		mov		func, [this + HFUNC]		; get pointer to hash function
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
		mov		node, [array + node + FDIR]
		and		node, NMASK					; node = array[node].fdir & NMASK
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
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
kfunc	equ		r10							; key compare function
hfunc	equ		r11							; hash function
iter	equ		kfunc						; iterator value
nsize	equ		hfunc						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_keys	equ		stack + 1 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 2 * 8				; stack position of "ksize" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_table	equ		stack + 4 * 8				; stack position of "table" variable
s_kfunc	equ		stack + 5 * 8				; stack position of "kfunc" variable
s_hfunc	equ		stack + 6 * 8				; stack position of "hfunc" variable
s_node	equ		stack + 7 * 8				; stack position of "node" variable
s_iter	equ		stack + 8 * 8				; stack position of "iter" variable
s_nsize	equ		stack + 9 * 8				; stack position of "nsize" variable
s_total	equ		stack + 10 * 8				; stack position of "total" variable
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check size]---------------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.exit						;     then go to exit
;---[Check ksize]--------------------------
		test	ksize, ksize				; if (ksize == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		result, [this + CAPACITY]	; get object capacity
		mov		kfunc, [this + KFUNC]		; get pointer to key compare function
		mov		hfunc, [this + HFUNC]		; get pointer to hash function
		shr		result, 1
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_table], result			; save "table" variable into the stack
		mov		[s_kfunc], kfunc			; save "kfunc" variable into the stack
		mov		[s_hfunc], hfunc			; save "hfunc" variable into the stack
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
		mov		node, [array + node + FDIR]
		and		node, NMASK					; node = array[node].fdir & NMASK
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
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
func	equ		r10							; pointer to function
iter	equ		r11							; iterator value
key		equ		xmm0						; key value
data	equ		xmm1						; data value
size	equ		func						; hash table size
nsize	equ		func						; node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_table	equ		stack + 3 * 8				; stack position of "table" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
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
;---[Check access mode]--------------------
		cmp		dword [this + FUTEX], 0		; if read only code section called this
		jg		.error						; function, then go to error branch
;---[Check target object size]-------------
		cmp		qword [this + SIZE], 0		; if (size)
		jnz		.error						;     then go to error branch
;---[Check source object size]-------------
		mov		size, [source + SIZE]		; get source object size
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
		mov		[s_table], result			; save "table" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
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
		mov		node, [array + node + FDIR]
		and		node, NMASK					; node = array[node].fdir & NMASK
		mov		iter, node					; iter = node
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK				; nsize = array[node].fdir & IMASK
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
.exit:	mov		result, [this + SIZE]		; get target object size
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
		cmp		result, EMPTY				; if (result <= EMPTY)
		setg	status						;     return false
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
		mov		result, [this + KFUNC]		; get pointer to key compare function
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetHashFunction:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + HFUNC]		; get pointer to hash function
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetCopyFunction:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + CFUNC]		; get pointer to copy function
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetDeleteFunction:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + DFUNC]		; get pointer to delete function
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetUserData:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to hash table object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + DPTR]		; get pointer to user's data
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
