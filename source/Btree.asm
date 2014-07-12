;                                                                      Btree.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                              B-TREE DATA TYPE                               #
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
public	Constructor				as	'MultiTree_InitMultiTree'
public	Constructor				as	'UniqueTree_InitUniqueTree'
public	Constructor				as	'_ZN9MultiTreeC1EmPFx5adt_tS0_E'
public	Constructor				as	'_ZN10UniqueTreeC1EmPFx5adt_tS0_E'

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
public	CopyConstructor			as	'MultiTree_CopyMultiTree'
public	CopyConstructor			as	'UniqueTree_CopyUniqueTree'
public	CopyConstructor			as	'_ZN9MultiTreeC1ERKS_'
public	CopyConstructor			as	'_ZN10UniqueTreeC1ERKS_'

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
public	Destructor				as	'MultiTree_FreeMultiTree'
public	Destructor				as	'UniqueTree_FreeUniqueTree'
public	Destructor				as	'_ZN9MultiTreeD1Ev'
public	Destructor				as	'_ZN10UniqueTreeD1Ev'

;******************************************************************************;
;       Copying elements                                                       ;
;******************************************************************************;

; Using forward iterator
public	CopyFwdMulti			as	'MultiTree_CopyFwd'
public	CopyFwdUnique			as	'UniqueTree_CopyFwd'
public	CopyFwdMulti			as	'_ZN9MultiTree7CopyFwdEPKS_m'
public	CopyFwdUnique			as	'_ZN10UniqueTree7CopyFwdEPKS_m'

; Using backward iterator
public	CopyBwdMulti			as	'MultiTree_CopyBwd'
public	CopyBwdUnique			as	'UniqueTree_CopyBwd'
public	CopyBwdMulti			as	'_ZN9MultiTree7CopyBwdEPKS_m'
public	CopyBwdUnique			as	'_ZN10UniqueTree7CopyBwdEPKS_m'

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;

; Using forward iterator
public	MoveFwdMulti			as	'MultiTree_MoveFwd'
public	MoveFwdUnique			as	'UniqueTree_MoveFwd'
public	MoveFwdMulti			as	'_ZN9MultiTree7MoveFwdEPS_m'
public	MoveFwdUnique			as	'_ZN10UniqueTree7MoveFwdEPS_m'

; Using backward iterator
public	MoveBwdMulti			as	'MultiTree_MoveBwd'
public	MoveBwdUnique			as	'UniqueTree_MoveBwd'
public	MoveBwdMulti			as	'_ZN9MultiTree7MoveBwdEPS_m'
public	MoveBwdUnique			as	'_ZN10UniqueTree7MoveBwdEPS_m'

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
public	InsertMulti				as	'MultiTree_Insert'
public	InsertUnique			as	'UniqueTree_Insert'
public	InsertMulti				as	'_ZN9MultiTree6InsertEPK6data_t'
public	InsertUnique			as	'_ZN10UniqueTree6InsertEPK6data_t'

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;

; By element index
public	RemoveIndex				as	'MultiTree_RemoveIndex'
public	RemoveIndex				as	'UniqueTree_RemoveIndex'
public	RemoveIndex				as	'_ZN9MultiTree11RemoveIndexEP6data_tm'
public	RemoveIndex				as	'_ZN10UniqueTree11RemoveIndexEP6data_tm'

; Using iterators
public	RemoveFwd				as	'MultiTree_RemoveFwd'
public	RemoveFwd				as	'UniqueTree_RemoveFwd'
public	RemoveBwd				as	'MultiTree_RemoveBwd'
public	RemoveBwd				as	'UniqueTree_RemoveBwd'
public	RemoveFwd				as	'_ZN9MultiTree9RemoveFwdEP6data_t'
public	RemoveFwd				as	'_ZN10UniqueTree9RemoveFwdEP6data_t'
public	RemoveBwd				as	'_ZN9MultiTree9RemoveBwdEP6data_t'
public	RemoveBwd				as	'_ZN10UniqueTree9RemoveBwdEP6data_t'

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;

; By element index
public	SetIndexMulti			as	'MultiTree_SetIndex'
public	SetIndexUnique			as	'UniqueTree_SetIndex'
public	SetIndexMulti			as	'_ZN9MultiTree8SetIndexEPK6data_tm'
public	SetIndexUnique			as	'_ZN10UniqueTree8SetIndexEPK6data_tm'

; Using iterators
public	SetFwdMulti				as	'MultiTree_SetFwd'
public	SetFwdUnique			as	'UniqueTree_SetFwd'
public	SetBwdMulti				as	'MultiTree_SetBwd'
public	SetBwdUnique			as	'UniqueTree_SetBwd'
public	SetFwdMulti				as	'_ZN9MultiTree6SetFwdEPK6data_t'
public	SetFwdUnique			as	'_ZN10UniqueTree6SetFwdEPK6data_t'
public	SetBwdMulti				as	'_ZN9MultiTree6SetBwdEPK6data_t'
public	SetBwdUnique			as	'_ZN10UniqueTree6SetBwdEPK6data_t'

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;

; By element index
public	GetIndex				as	'MultiTree_GetIndex'
public	GetIndex				as	'UniqueTree_GetIndex'
public	GetIndex				as	'_ZNK9MultiTree8GetIndexEP6data_tm'
public	GetIndex				as	'_ZNK10UniqueTree8GetIndexEP6data_tm'

; Using iterators
public	GetFwd					as	'MultiTree_GetFwd'
public	GetFwd					as	'UniqueTree_GetFwd'
public	GetBwd					as	'MultiTree_GetBwd'
public	GetBwd					as	'UniqueTree_GetBwd'
public	GetFwd					as	'_ZNK9MultiTree6GetFwdEP6data_t'
public	GetFwd					as	'_ZNK10UniqueTree6GetFwdEP6data_t'
public	GetBwd					as	'_ZNK9MultiTree6GetBwdEP6data_t'
public	GetBwd					as	'_ZNK10UniqueTree6GetBwdEP6data_t'

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;

; By element index
public	ReplaceIndexMulti		as	'MultiTree_ReplaceIndex'
public	ReplaceIndexUnique		as	'UniqueTree_ReplaceIndex'
public	ReplaceIndexMulti		as	'_ZN9MultiTree12ReplaceIndexEP6data_tPKS0_m'
public	ReplaceIndexUnique		as	'_ZN10UniqueTree12ReplaceIndexEP6data_tPKS0_m'

; Using iterators
public	ReplaceFwdMulti			as	'MultiTree_ReplaceFwd'
public	ReplaceFwdUnique		as	'UniqueTree_ReplaceFwd'
public	ReplaceBwdMulti			as	'MultiTree_ReplaceBwd'
public	ReplaceBwdUnique		as	'UniqueTree_ReplaceBwd'
public	ReplaceFwdMulti			as	'_ZN9MultiTree10ReplaceFwdEP6data_tPKS0_'
public	ReplaceFwdUnique		as	'_ZN10UniqueTree10ReplaceFwdEP6data_tPKS0_'
public	ReplaceBwdMulti			as	'_ZN9MultiTree10ReplaceBwdEP6data_tPKS0_'
public	ReplaceBwdUnique		as	'_ZN10UniqueTree10ReplaceBwdEP6data_tPKS0_'

;******************************************************************************;
;       Overriding element value                                               ;
;******************************************************************************;
public	Override				as	'UniqueTree_Override'
public	Override				as	'_ZN10UniqueTree8OverrideEP6data_tPKS0_'

;******************************************************************************;
;       Manipulation with forward iterator                                     ;
;******************************************************************************;

;==============================================================================;
;       Set iterator position                                                  ;
;==============================================================================;

; By index
public	FwdToIndex				as	'MultiTree_FwdToIndex'
public	FwdToIndex				as	'UniqueTree_FwdToIndex'
public	FwdToIndex				as	'_ZN9MultiTree10FwdToIndexEm'
public	FwdToIndex				as	'_ZN10UniqueTree10FwdToIndexEm'

; To min element
public	FwdToMin				as	'MultiTree_FwdToMin'
public	FwdToMin				as	'UniqueTree_FwdToMin'
public	FwdToMin				as	'_ZN9MultiTree8FwdToMinEv'
public	FwdToMin				as	'_ZN10UniqueTree8FwdToMinEv'

; To max element
public	FwdToMax				as	'MultiTree_FwdToMax'
public	FwdToMax				as	'UniqueTree_FwdToMax'
public	FwdToMax				as	'_ZN9MultiTree8FwdToMaxEv'
public	FwdToMax				as	'_ZN10UniqueTree8FwdToMaxEv'

; To backward iterator
public	FwdToBwd				as	'MultiTree_FwdToBwd'
public	FwdToBwd				as	'UniqueTree_FwdToBwd'
public	FwdToBwd				as	'_ZN9MultiTree8FwdToBwdEv'
public	FwdToBwd				as	'_ZN10UniqueTree8FwdToBwdEv'

;==============================================================================;
;       Get iterator position                                                  ;
;==============================================================================;
public	GetFwdPos				as	'MultiTree_GetFwdPos'
public	GetFwdPos				as	'UniqueTree_GetFwdPos'
public	GetFwdPos				as	'_ZNK9MultiTree9GetFwdPosEv'
public	GetFwdPos				as	'_ZNK10UniqueTree9GetFwdPosEv'

;==============================================================================;
;       Change iterator position                                               ;
;==============================================================================;

; Move to next position
public	FwdGoNext				as	'MultiTree_FwdGoNext'
public	FwdGoNext				as	'UniqueTree_FwdGoNext'
public	FwdGoNext				as	'_ZN9MultiTree9FwdGoNextEm'
public	FwdGoNext				as	'_ZN10UniqueTree9FwdGoNextEm'

; Move to prev position
public	FwdGoPrev				as	'MultiTree_FwdGoPrev'
public	FwdGoPrev				as	'UniqueTree_FwdGoPrev'
public	FwdGoPrev				as	'_ZN9MultiTree9FwdGoPrevEm'
public	FwdGoPrev				as	'_ZN10UniqueTree9FwdGoPrevEm'

;******************************************************************************;
;       Manipulation with backward iterator                                    ;
;******************************************************************************;

;==============================================================================;
;       Set iterator position                                                  ;
;==============================================================================;

; By index
public	BwdToIndex				as	'MultiTree_BwdToIndex'
public	BwdToIndex				as	'UniqueTree_BwdToIndex'
public	BwdToIndex				as	'_ZN9MultiTree10BwdToIndexEm'
public	BwdToIndex				as	'_ZN10UniqueTree10BwdToIndexEm'

; To min element
public	BwdToMin				as	'MultiTree_BwdToMin'
public	BwdToMin				as	'UniqueTree_BwdToMin'
public	BwdToMin				as	'_ZN9MultiTree8BwdToMinEv'
public	BwdToMin				as	'_ZN10UniqueTree8BwdToMinEv'

; To max element
public	BwdToMax				as	'MultiTree_BwdToMax'
public	BwdToMax				as	'UniqueTree_BwdToMax'
public	BwdToMax				as	'_ZN9MultiTree8BwdToMaxEv'
public	BwdToMax				as	'_ZN10UniqueTree8BwdToMaxEv'

; To backward iterator
public	BwdToFwd				as	'MultiTree_BwdToFwd'
public	BwdToFwd				as	'UniqueTree_BwdToFwd'
public	BwdToFwd				as	'_ZN9MultiTree8BwdToFwdEv'
public	BwdToFwd				as	'_ZN10UniqueTree8BwdToFwdEv'

;==============================================================================;
;       Get iterator position                                                  ;
;==============================================================================;
public	GetBwdPos				as	'MultiTree_GetBwdPos'
public	GetBwdPos				as	'UniqueTree_GetBwdPos'
public	GetBwdPos				as	'_ZNK9MultiTree9GetBwdPosEv'
public	GetBwdPos				as	'_ZNK10UniqueTree9GetBwdPosEv'

;==============================================================================;
;       Change iterator position                                               ;
;==============================================================================;

; Move to next position
public	BwdGoNext				as	'MultiTree_BwdGoNext'
public	BwdGoNext				as	'UniqueTree_BwdGoNext'
public	BwdGoNext				as	'_ZN9MultiTree9BwdGoNextEm'
public	BwdGoNext				as	'_ZN10UniqueTree9BwdGoNextEm'

; Move to prev position
public	BwdGoPrev				as	'MultiTree_BwdGoPrev'
public	BwdGoPrev				as	'UniqueTree_BwdGoPrev'
public	BwdGoPrev				as	'_ZN9MultiTree9BwdGoPrevEm'
public	BwdGoPrev				as	'_ZN10UniqueTree9BwdGoPrevEm'

;******************************************************************************;
;       Swapping iterators                                                     ;
;******************************************************************************;
public	SwapFwdBwd				as	'MultiTree_SwapFwdBwd'
public	SwapFwdBwd				as	'UniqueTree_SwapFwdBwd'
public	SwapFwdBwd				as	'_ZN9MultiTree10SwapFwdBwdEv'
public	SwapFwdBwd				as	'_ZN10UniqueTree10SwapFwdBwdEv'

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;

; Minimum value
public	MinFwd					as	'MultiTree_MinFwd'
public	MinFwd					as	'UniqueTree_MinFwd'
public	MinBwd					as	'MultiTree_MinBwd'
public	MinBwd					as	'UniqueTree_MinBwd'
public	MinFwd					as	'_ZN9MultiTree6MinFwdEP6data_t'
public	MinFwd					as	'_ZN10UniqueTree6MinFwdEP6data_t'
public	MinBwd					as	'_ZN9MultiTree6MinBwdEP6data_t'
public	MinBwd					as	'_ZN10UniqueTree6MinBwdEP6data_t'

; Maximum value
public	MaxFwd					as	'MultiTree_MaxFwd'
public	MaxFwd					as	'UniqueTree_MaxFwd'
public	MaxBwd					as	'MultiTree_MaxBwd'
public	MaxBwd					as	'UniqueTree_MaxBwd'
public	MaxFwd					as	'_ZN9MultiTree6MaxFwdEP6data_t'
public	MaxFwd					as	'_ZN10UniqueTree6MaxFwdEP6data_t'
public	MaxBwd					as	'_ZN9MultiTree6MaxBwdEP6data_t'
public	MaxBwd					as	'_ZN10UniqueTree6MaxBwdEP6data_t'

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

;==============================================================================;
;       Single key searching                                                   ;
;==============================================================================;

; Searching for equal key
public	FindEqualFwd			as	'MultiTree_FindEqualFwd'
public	FindEqualFwd			as	'UniqueTree_FindEqualFwd'
public	FindEqualBwd			as	'MultiTree_FindEqualBwd'
public	FindEqualBwd			as	'UniqueTree_FindEqualBwd'
public	FindEqualFwd			as	'_ZN9MultiTree12FindEqualFwdEP6data_t5adt_t'
public	FindEqualFwd			as	'_ZN10UniqueTree12FindEqualFwdEP6data_t5adt_t'
public	FindEqualBwd			as	'_ZN9MultiTree12FindEqualBwdEP6data_t5adt_t'
public	FindEqualBwd			as	'_ZN10UniqueTree12FindEqualBwdEP6data_t5adt_t'

; Searching for greater key
public	FindGreatFwd			as	'MultiTree_FindGreatFwd'
public	FindGreatFwd			as	'UniqueTree_FindGreatFwd'
public	FindGreatBwd			as	'MultiTree_FindGreatBwd'
public	FindGreatBwd			as	'UniqueTree_FindGreatBwd'
public	FindGreatFwd			as	'_ZN9MultiTree12FindGreatFwdEP6data_t5adt_t'
public	FindGreatFwd			as	'_ZN10UniqueTree12FindGreatFwdEP6data_t5adt_t'
public	FindGreatBwd			as	'_ZN9MultiTree12FindGreatBwdEP6data_t5adt_t'
public	FindGreatBwd			as	'_ZN10UniqueTree12FindGreatBwdEP6data_t5adt_t'

; Searching for greater or equal key
public	FindGreatOrEqualFwd		as	'MultiTree_FindGreatOrEqualFwd'
public	FindGreatOrEqualFwd		as	'UniqueTree_FindGreatOrEqualFwd'
public	FindGreatOrEqualBwd		as	'MultiTree_FindGreatOrEqualBwd'
public	FindGreatOrEqualBwd		as	'UniqueTree_FindGreatOrEqualBwd'
public	FindGreatOrEqualFwd		as	'_ZN9MultiTree19FindGreatOrEqualFwdEP6data_t5adt_t'
public	FindGreatOrEqualFwd		as	'_ZN10UniqueTree19FindGreatOrEqualFwdEP6data_t5adt_t'
public	FindGreatOrEqualBwd		as	'_ZN9MultiTree19FindGreatOrEqualBwdEP6data_t5adt_t'
public	FindGreatOrEqualBwd		as	'_ZN10UniqueTree19FindGreatOrEqualBwdEP6data_t5adt_t'

; Searching for less key
public	FindLessFwd				as	'MultiTree_FindLessFwd'
public	FindLessFwd				as	'UniqueTree_FindLessFwd'
public	FindLessBwd				as	'MultiTree_FindLessBwd'
public	FindLessBwd				as	'UniqueTree_FindLessBwd'
public	FindLessFwd				as	'_ZN9MultiTree11FindLessFwdEP6data_t5adt_t'
public	FindLessFwd				as	'_ZN10UniqueTree11FindLessFwdEP6data_t5adt_t'
public	FindLessBwd				as	'_ZN9MultiTree11FindLessBwdEP6data_t5adt_t'
public	FindLessBwd				as	'_ZN10UniqueTree11FindLessBwdEP6data_t5adt_t'

; Searching for less or equal key
public	FindLessOrEqualFwd		as	'MultiTree_FindLessOrEqualFwd'
public	FindLessOrEqualFwd		as	'UniqueTree_FindLessOrEqualFwd'
public	FindLessOrEqualBwd		as	'MultiTree_FindLessOrEqualBwd'
public	FindLessOrEqualBwd		as	'UniqueTree_FindLessOrEqualBwd'
public	FindLessOrEqualFwd		as	'_ZN9MultiTree18FindLessOrEqualFwdEP6data_t5adt_t'
public	FindLessOrEqualFwd		as	'_ZN10UniqueTree18FindLessOrEqualFwdEP6data_t5adt_t'
public	FindLessOrEqualBwd		as	'_ZN9MultiTree18FindLessOrEqualBwdEP6data_t5adt_t'
public	FindLessOrEqualBwd		as	'_ZN10UniqueTree18FindLessOrEqualBwdEP6data_t5adt_t'

;==============================================================================;
;       Sequence searching                                                     ;
;==============================================================================;
public	FindSequenceFwd			as	'MultiTree_FindSequenceFwd'
public	FindSequenceBwd			as	'MultiTree_FindSequenceBwd'
public	FindSequenceFwd			as	'_ZN9MultiTree15FindSequenceFwdEP6data_t5adt_t'
public	FindSequenceBwd			as	'_ZN9MultiTree15FindSequenceBwdEP6data_t5adt_t'

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
public	FindDupFwd				as	'MultiTree_FindDupFwd'
public	FindDupBwd				as	'MultiTree_FindDupBwd'
public	FindDupFwd				as	'_ZN9MultiTree10FindDupFwdEP6data_t'
public	FindDupBwd				as	'_ZN9MultiTree10FindDupBwdEP6data_t'

;******************************************************************************;
;       Searching for differences                                              ;
;******************************************************************************;
public	FindDiffFwd				as	'MultiTree_FindDiffFwd'
public	FindDiffFwd				as	'UniqueTree_FindDiffFwd'
public	FindDiffBwd				as	'MultiTree_FindDiffBwd'
public	FindDiffBwd				as	'UniqueTree_FindDiffBwd'
public	FindDiffFwd				as	'_ZN9MultiTree11FindDiffFwdEP6data_tPKS_m'
public	FindDiffFwd				as	'_ZN10UniqueTree11FindDiffFwdEP6data_tPKS_m'
public	FindDiffBwd				as	'_ZN9MultiTree11FindDiffBwdEP6data_tPKS_m'
public	FindDiffBwd				as	'_ZN10UniqueTree11FindDiffBwdEP6data_tPKS_m'

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

; Single key counting
public	CountKeyMulti			as	'MultiTree_CountKey'
public	CountKeyUnique			as	'UniqueTree_CountKey'
public	CountKeyMulti			as	'_ZNK9MultiTree8CountKeyE5adt_t'
public	CountKeyUnique			as	'_ZNK10UniqueTree8CountKeyE5adt_t'

; Keys set counting
public	CountKeysMulti			as	'MultiTree_CountKeys'
public	CountKeysUnique			as	'UniqueTree_CountKeys'
public	CountKeysMulti			as	'_ZNK9MultiTree9CountKeysEPK5adt_tm'
public	CountKeysUnique			as	'_ZNK10UniqueTree9CountKeysEPK5adt_tm'

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
public	Unique					as	'MultiTree_Unique'
public	Unique					as	'_ZN9MultiTree6UniqueEPKS_'

;******************************************************************************;
;       Comparison of b-trees                                                  ;
;******************************************************************************;
public	Compare					as	'MultiTree_Compare'
public	Compare					as	'UniqueTree_Compare'
public	Compare					as	'_ZNK9MultiTree7CompareEPKS_'
public	Compare					as	'_ZNK10UniqueTree7CompareEPKS_'

;******************************************************************************;
;       Check for duplicate values                                             ;
;******************************************************************************;
public	CheckDup				as	'MultiTree_CheckDup'
public	CheckDup				as	'_ZNK9MultiTree8CheckDupEv'

;******************************************************************************;
;       Check for equality                                                     ;
;******************************************************************************;
public	IsEqual					as	'MultiTree_IsEqual'
public	IsEqual					as	'UniqueTree_IsEqual'
public	IsEqual					as	'_ZNK9MultiTree7IsEqualEPKS_'
public	IsEqual					as	'_ZNK10UniqueTree7IsEqualEPKS_'

;******************************************************************************;
;       B-tree properties                                                      ;
;******************************************************************************;

; B-tree key compare function
public	GetCompareFunction		as	'MultiTree_CompareFunction'
public	GetCompareFunction		as	'UniqueTree_CompareFunction'
public	GetCompareFunction		as	'_ZNK9MultiTree15CompareFunctionEv'
public	GetCompareFunction		as	'_ZNK10UniqueTree15CompareFunctionEv'

; B-tree capacity
public	GetCapacity				as	'MultiTree_Capacity'
public	GetCapacity				as	'UniqueTree_Capacity'
public	GetCapacity				as	'_ZNK9MultiTree8CapacityEv'
public	GetCapacity				as	'_ZNK10UniqueTree8CapacityEv'

; B-tree size
public	GetSize					as	'MultiTree_Size'
public	GetSize					as	'UniqueTree_Size'
public	GetSize					as	'_ZNK9MultiTree4SizeEv'
public	GetSize					as	'_ZNK10UniqueTree4SizeEv'

; B-tree height
public	GetHeight				as	'MultiTree_Height'
public	GetHeight				as	'UniqueTree_Height'
public	GetHeight				as	'_ZNK9MultiTree6HeightEv'
public	GetHeight				as	'_ZNK10UniqueTree6HeightEv'

; Check if b-tree is empty
public	IsEmpty					as	'MultiTree_IsEmpty'
public	IsEmpty					as	'UniqueTree_IsEmpty'
public	IsEmpty					as	'_ZNK9MultiTree7IsEmptyEv'
public	IsEmpty					as	'_ZNK10UniqueTree7IsEmptyEv'

; Check if b-tree is initialized
public	IsInit					as	'MultiTree_IsInit'
public	IsInit					as	'UniqueTree_IsInit'
public	IsInit					as	'_ZNK9MultiTree6IsInitEv'
public	IsInit					as	'_ZNK10UniqueTree6IsInitEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
KSCALE		= 4								; Key scale factor
NSCALE		= 10							; Node scale factor
KSIZE		= 1 shl KSCALE					; Size of key (bytes)
NSIZE		= 1 shl NSCALE					; Size of node (bytes)
PMASK		= not (KSIZE - 1)				; Mask to extract node pointer
NMASK		= not (NSIZE - 1)				; Mask to extract node index
LMASK		= KSIZE - 1						; Mask to extract node level
IMASK		= NSIZE - KSIZE					; Mask to extract element index
EMPTY		= -NSIZE						; Pointer which points to empty node
MINCAP		= 4 shl	PSCALE					; Min capacity of b-tree object

;==============================================================================;
;       Limit sizes for the nodes                                              ;
;==============================================================================;
LMAX		= NSIZE - KSIZE					; Max size of leaf node
LMIN		= (LMAX / 2) and -KSIZE			; Min size of leaf node
BMAX		= LMIN							; Max size of branch node
BMIN		= (BMAX / 2) and -KSIZE			; Min size of branch node

;==============================================================================;
;       Offsets inside b-tree object                                           ;
;==============================================================================;
ARRAY		= 0 * 8							; Offset of array pointer
CAPACITY	= 1 * 8							; Offset of object capacity field
SIZE		= 2 * 8							; Offset of object size field
HEIGHT		= 3 * 8							; Offset of object height field
POOL		= 4 * 8							; Offset of pool free node field
FWD			= 5 * 8							; Offset of forward iterator field
BWD			= 6 * 8							; Offset of backward iterator field
ROOT		= 7 * 8							; Offset of object root field
FUNC		= 8 * 8							; Offset of pointer to key compare function

;==============================================================================;
;       Offsets inside node                                                    ;
;==============================================================================;
BROOT		= 0 * 8							; Offset of subtree root field
BSIZE		= 1 * 8							; Offset of node size field
BDATA		= KSIZE							; Offset of data array inside bnode
BPTR		= NSIZE / 2						; Offset of bptr array inside bnode

;==============================================================================;
;       Offsets inside subtree pointer                                         ;
;==============================================================================;
TROOT		= 0 * 8							; Offset of subtree root field
TSIZE		= 1 * 8							; Offset of subtree size field

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
.nloop:	mov		[array + BROOT], oldcap		; array[0].root = oldcap
		add		array, NSIZE				; array++
		add		oldcap, NSIZE				; oldcap++
		sub		newcap, NSIZE				; newcap--
		jnz		.nloop						; do while (newcap != 0)
;---[End of nodes init loop]---------------
		mov		qword [array + BROOT], pool	; array[0].root = pool
		mov		status, 1					; return true
		ret

;******************************************************************************;
;       Extending b-tree capacity                                              ;
;******************************************************************************;
Extend:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
newcap	equ		rsi							; new object capacity
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		rax							; pointer to array of nodes
oldcap	equ		r8							; old object capacity
oldpool	equ		r9							; old index of pool free node
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
		mov		oldcap, [this + CAPACITY]	; get old capacity of the b-tree
		mov		oldpool, [this + POOL]		; get old index of pool free node
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], newcap	; this.capacity = newcap
		mov		[this + POOL], oldcap		; this.pool = oldcap
		mov		param4, oldpool
		mov		param3, newcap
		mov		param2, oldcap
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		InitFree					; return InitFree (array, oldcap, newcap, pool)
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Delete element from the leaf node                                      ;
;******************************************************************************;
LeafDeleteCore:
;---[Parameters]---------------------------
data	equ		rdi							; pointer to leaf data array
size	equ		rsi							; count of keys to move
;---[Internal variables]-------------------
count	equ		rax							; count of iterations
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
smask	= 1 shl (KSCALE + 2) - 1			; mask for scalar loop count
vmask	= not smask							; mask for vector loop count
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		count, vmask				; load vmask
		and		count, size					; apply mask to size variable
		jz		.skip						; if (count == 0), then skip the loop
;---[Vector loop]--------------------------
.vloop:	movdqa	temp1, [data + 1 * KSIZE]	; temp1 = data[+1]
		movdqa	temp2, [data + 2 * KSIZE]	; temp2 = data[+2]
		movdqa	temp3, [data + 3 * KSIZE]	; temp3 = data[+3]
		movdqa	temp4, [data + 4 * KSIZE]	; temp4 = data[+4]
		movdqa	[data + 0 * KSIZE], temp1	; data[+0] = temp1
		movdqa	[data + 1 * KSIZE], temp2	; data[+1] = temp2
		movdqa	[data + 2 * KSIZE], temp3	; data[+2] = temp3
		movdqa	[data + 3 * KSIZE], temp4	; data[+3] = temp4
		add		data, 4 * KSIZE				; data += 4
		sub		count, 4 * KSIZE			; count -= 4
		jnz		.vloop						; do while (count != 0)
;---[End of vector loop]-------------------
.skip:	mov		count, smask				; load smask
		and		count, size					; apply mask to size variable
		jz		.exit						; if (count == 0), then go to exit
;---[Scalar loop]--------------------------
.sloop:	movdqa	temp1, [data + 1 * KSIZE]	; temp1 = data[+1]
		movdqa	[data + 0 * KSIZE], temp1	; data[+0] = temp1
		add		data, KSIZE					; data++
		sub		count, KSIZE				; count--
		jnz		.sloop						; do while (count != 0)
;---[End of scalar loop]-------------------
.exit:	ret

;******************************************************************************;
;       Replace element in the left leaf node                                  ;
;******************************************************************************;
LeafReplaceLeftCore:
;---[Parameters]---------------------------
data	equ		rdi							; pointer to leaf data array
size	equ		rsi							; count of keys to move
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
count	equ		rax							; count of iterations
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
smask	= 1 shl (KSCALE + 2) - 1			; mask for scalar loop count
vmask	= not smask							; mask for vector loop count
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		count, vmask				; load vmask
		and		count, size					; apply mask to size variable
		jz		.skip						; if (count == 0), then skip the loop
;---[Vector loop]--------------------------
.vloop:	movdqa	temp1, [data - 1 * KSIZE]	; temp1 = data[-1]
		movdqa	temp2, [data - 2 * KSIZE]	; temp2 = data[-2]
		movdqa	temp3, [data - 3 * KSIZE]	; temp3 = data[-3]
		movdqa	temp4, [data - 4 * KSIZE]	; temp4 = data[-4]
		movdqa	[data - 0 * KSIZE], temp1	; data[-0] = temp1
		movdqa	[data - 1 * KSIZE], temp2	; data[-1] = temp2
		movdqa	[data - 2 * KSIZE], temp3	; data[-2] = temp3
		movdqa	[data - 3 * KSIZE], temp4	; data[-3] = temp4
		sub		data, 4 * KSIZE				; data -= 4
		sub		count, 4 * KSIZE			; count -= 4
		jnz		.vloop						; do while (count != 0)
;---[End of vector loop]-------------------
.skip:	mov		count, smask				; load smask
		and		count, size					; apply mask to size variable
		jz		.exit						; if (count == 0), then go to exit
;---[Scalar loop]--------------------------
.sloop:	movdqa	temp1, [data - 1 * KSIZE]	; temp1 = data[-1]
		movdqa	[data - 0 * KSIZE], temp1	; data[-0] = temp1
		sub		data, KSIZE					; data--
		sub		count, KSIZE				; count--
		jnz		.sloop						; do while (count != 0)
;---[End of scalar loop]-------------------
.exit:	movdqa	[data], value				; data[0] = value
		ret

;******************************************************************************;
;       Replace element in the right leaf node                                 ;
;******************************************************************************;
LeafReplaceRightCore:
;---[Parameters]---------------------------
data	equ		rdi							; pointer to leaf data array
size	equ		rsi							; count of keys to move
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
count	equ		rax							; count of iterations
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
smask	= 1 shl (KSCALE + 2) - 1			; mask for scalar loop count
vmask	= not smask							; mask for vector loop count
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		count, vmask				; load vmask
		and		count, size					; apply mask to size variable
		jz		.skip						; if (count == 0), then skip the loop
;---[Vector loop]--------------------------
.vloop:	movdqa	temp1, [data + 1 * KSIZE]	; temp1 = data[+1]
		movdqa	temp2, [data + 2 * KSIZE]	; temp2 = data[+2]
		movdqa	temp3, [data + 3 * KSIZE]	; temp3 = data[+3]
		movdqa	temp4, [data + 4 * KSIZE]	; temp4 = data[+4]
		movdqa	[data + 0 * KSIZE], temp1	; data[+0] = temp1
		movdqa	[data + 1 * KSIZE], temp2	; data[+1] = temp2
		movdqa	[data + 2 * KSIZE], temp3	; data[+2] = temp3
		movdqa	[data + 3 * KSIZE], temp4	; data[+3] = temp4
		add		data, 4 * KSIZE				; data += 4
		sub		count, 4 * KSIZE			; count -= 4
		jnz		.vloop						; do while (count != 0)
;---[End of vector loop]-------------------
.skip:	mov		count, smask				; load smask
		and		count, size					; apply mask to size variable
		jz		.exit						; if (count == 0), then go to exit
;---[Scalar loop]--------------------------
.sloop:	movdqa	temp1, [data + 1 * KSIZE]	; temp1 = data[+1]
		movdqa	[data + 0 * KSIZE], temp1	; data[+0] = temp1
		add		data, KSIZE					; data++
		sub		count, KSIZE				; count--
		jnz		.sloop						; do while (count != 0)
;---[End of scalar loop]-------------------
.exit:	movdqa	[data], value				; data[0] = value
		ret

;******************************************************************************;
;       Join two leaf nodes                                                    ;
;******************************************************************************;
LeafJoinCore:
;---[Parameters]---------------------------
tdata	equ		rdi							; pointer to target array of keys
sdata	equ		rsi							; pointer to source array of keys
size	equ		rdx							; size of right node
value	equ		xmm0						; key to insert
;---[Internal variables]-------------------
count	equ		rax							; count of iterations
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
temp3	equ		xmm4						; temporary register #4
smask	= 1 shl (KSCALE + 2) - 1			; mask for scalar loop count
vmask	= not smask							; mask for vector loop count
;------------------------------------------
		movdqa	[tdata], value				; tdata[0] = value
		add		tdata, KSIZE				; tdata++
		mov		count, vmask				; load vmask
		and		count, size					; apply mask to size variable
		jz		.skip						; if (count == 0), then skip the loop
;---[Vector loop]--------------------------
.vloop:	movdqa	temp0, [sdata + 0 * KSIZE]	; temp0 = sdata[0]
		movdqa	temp1, [sdata + 1 * KSIZE]	; temp1 = sdata[1]
		movdqa	temp2, [sdata + 2 * KSIZE]	; temp2 = sdata[2]
		movdqa	temp3, [sdata + 3 * KSIZE]	; temp3 = sdata[3]
		add		sdata, 4 * KSIZE			; sdata += 4
		movdqa	[tdata + 0 * KSIZE], temp0	; tdata[0] = temp0
		movdqa	[tdata + 1 * KSIZE], temp1	; tdata[1] = temp1
		movdqa	[tdata + 2 * KSIZE], temp2	; tdata[2] = temp2
		movdqa	[tdata + 3 * KSIZE], temp3	; tdata[3] = temp3
		add		tdata, 4 * KSIZE			; tdata += 4
		sub		count, 4 * KSIZE			; count -= 4
		jnz		.vloop						; do while (count != 0)
;---[End of vector loop]-------------------
.skip:	mov		count, smask				; load smask
		and		count, size					; apply mask to size variable
		jz		.exit						; if (count == 0), then go to exit
;---[Scalar loop]--------------------------
.sloop:	movdqa	temp0, [sdata]				; temp0 = sdata[0]
		movdqa	[tdata], temp0				; tdata[0] = temp0
		add		sdata, KSIZE				; sdata++
		add		tdata, KSIZE				; tdata++
		sub		count, KSIZE				; count--
		jnz		.sloop						; do while (count != 0)
;---[End of scalar loop]-------------------
.exit:	ret

;******************************************************************************;
;       Split the leaf node                                                    ;
;******************************************************************************;
LeafSplitCore:
;---[Parameters]---------------------------
tdata	equ		rdi							; pointer to target array of keys
sdata	equ		rsi							; pointer to source array of keys
;---[Internal variables]-------------------
count	equ		rax							; count of iterations
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
;------------------------------------------
if (LMIN / 4) and -KSIZE
		mov		count, (LMIN / 4) and -KSIZE
;---[Splitting loop]-----------------------
.loop:	movdqa	temp0, [sdata + 0 * KSIZE]	; temp0 = sdata[0]
		movdqa	temp1, [sdata + 1 * KSIZE]	; temp1 = sdata[1]
		movdqa	temp2, [sdata + 2 * KSIZE]	; temp2 = sdata[2]
		movdqa	temp3, [sdata + 3 * KSIZE]	; temp3 = sdata[3]
		add		sdata, 4 * KSIZE			; sdata += 4
		movdqa	[tdata + 0 * KSIZE], temp0	; tdata[0] = temp0
		movdqa	[tdata + 1 * KSIZE], temp1	; tdata[1] = temp1
		movdqa	[tdata + 2 * KSIZE], temp2	; tdata[2] = temp2
		movdqa	[tdata + 3 * KSIZE], temp3	; tdata[3] = temp3
		add		tdata, 4 * KSIZE			; tdata += 4
		sub		count, KSIZE				; count--
		jnz		.loop						; do while (count != 0)
end if
		movdqa	temp0, [sdata + 0 * KSIZE]	; temp0 = sdata[0]
		movdqa	temp1, [sdata + 1 * KSIZE]	; temp1 = sdata[1]
		movdqa	temp2, [sdata + 2 * KSIZE]	; temp2 = sdata[2]
		movdqa	[tdata + 0 * KSIZE], temp0	; tdata[0] = temp0
		movdqa	[tdata + 1 * KSIZE], temp1	; tdata[1] = temp1
		movdqa	[tdata + 2 * KSIZE], temp2	; tdata[2] = temp2
		mov		count, LMIN					; return LMIN
		ret

;******************************************************************************;
;       Delete element from the branch node                                    ;
;******************************************************************************;
BranchDeleteCore:
;---[Parameters]---------------------------
data	equ		rdi							; pointer to source array of keys
bptr	equ		rsi							; pointer to source array of subtrees
array	equ		rdx							; pointer to array of nodes
node	equ		rcx							; index of branch node to process
size	equ		r8							; count of elements to move
;---[Internal variables]-------------------
count	equ		rax							; count of iterations
root	equ		r11							; index of subtree root node
temp1	equ		xmm2						; temporary register #1
temp2	equ		xmm3						; temporary register #2
temp3	equ		xmm4						; temporary register #3
temp4	equ		xmm5						; temporary register #4
temp5	equ		xmm6						; temporary register #5
temp6	equ		xmm7						; temporary register #6
temp7	equ		xmm8						; temporary register #7
temp8	equ		xmm9						; temporary register #8
smask	= 1 shl (KSCALE + 2) - 1			; mask for scalar loop count
vmask	= not smask							; mask for vector loop count
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		count, vmask				; load vmask
		and		count, size					; apply mask to size variable
		jz		.skip						; if (count == 0), then skip the loop
;---[Vector loop]--------------------------
.vloop:	movdqa	temp1, [data + 1 * KSIZE]	; temp1 = data[+1]
		movdqa	temp2, [data + 2 * KSIZE]	; temp2 = data[+2]
		movdqa	temp3, [data + 3 * KSIZE]	; temp3 = data[+3]
		movdqa	temp4, [data + 4 * KSIZE]	; temp4 = data[+4]
		movdqa	temp5, [bptr + 1 * KSIZE]	; temp5 = bptr[+1]
		movdqa	temp6, [bptr + 2 * KSIZE]	; temp6 = bptr[+2]
		movdqa	temp7, [bptr + 3 * KSIZE]	; temp7 = bptr[+3]
		movdqa	temp8, [bptr + 4 * KSIZE]	; temp8 = bptr[+4]
		movdqa	[data + 0 * KSIZE], temp1	; data[+0] = temp1
		movdqa	[data + 1 * KSIZE], temp2	; data[+1] = temp2
		movdqa	[data + 2 * KSIZE], temp3	; data[+2] = temp3
		movdqa	[data + 3 * KSIZE], temp4	; data[+3] = temp4
		add		data, 4 * KSIZE				; data += 4
		movdqa	[bptr + 0 * KSIZE], temp5	; bptr[+0] = temp5
		movdqa	[bptr + 1 * KSIZE], temp6	; bptr[+1] = temp6
		movdqa	[bptr + 2 * KSIZE], temp7	; bptr[+2] = temp7
		movdqa	[bptr + 3 * KSIZE], temp8	; bptr[+3] = temp8
		add		bptr, 4 * KSIZE				; bptr += 4
		movq	root, temp5					; root = temp5.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp6					; root = temp6.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp7					; root = temp7.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp8					; root = temp8.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		sub		count, 4 * KSIZE			; count -= 4
		jnz		.vloop						; do while (count != 0)
;---[End of vector loop]-------------------
.skip:	mov		count, smask				; load smask
		and		count, size					; apply mask to size variable
		jz		.exit						; if (count == 0), then go to exit
;---[Scalar loop]--------------------------
.sloop:	movdqa	temp1, [data + 1 * KSIZE]	; temp1 = data[+1]
		movdqa	temp5, [bptr + 1 * KSIZE]	; temp5 = bptr[+1]
		movdqa	[data + 0 * KSIZE], temp1	; data[+0] = temp1
		movdqa	[bptr + 0 * KSIZE], temp5	; bptr[+0] = temp5
		add		data, KSIZE					; data++
		add		bptr, KSIZE					; bptr++
		movq	root, temp5					; root = temp5.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		sub		count, KSIZE				; count--
		jnz		.sloop						; do while (count != 0)
;---[End of scalar loop]-------------------
.exit:	ret

;******************************************************************************;
;       Replace element in the left branch node                                ;
;******************************************************************************;
BranchReplaceLeftCore:
;---[Parameters]---------------------------
data	equ		rdi							; pointer to source array of keys
bptr	equ		rsi							; pointer to source array of subtrees
array	equ		rdx							; pointer to array of nodes
node	equ		rcx							; index of branch node to process
size	equ		r8							; count of elements to move
proot	equ		r9							; pointer to subtree tree root
psize	equ		r10							; size of subtree
value	equ		xmm0						; key to insert
;---[Internal variables]-------------------
count	equ		rax							; count of iterations
root	equ		r11							; index of subtree root node
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
smask	= 1 shl (KSCALE + 2) - 1			; mask for scalar loop count
vmask	= not smask							; mask for vector loop count
;------------------------------------------
		movdqa	temp5, [bptr - 1 * KSIZE]	; temp5 = bptr[-1]
		movdqa	[bptr - 0 * KSIZE], temp5	; bptr[-0] = temp5
		sub		bptr, KSIZE					; bptr--
		movq	root, temp5					; root = temp5.root
		mov		[array + root + BROOT], node
		sub		node, KSIZE					; node--
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		count, vmask				; load vmask
		and		count, size					; apply mask to size variable
		jz		.skip						; if (count == 0), then skip the loop
;---[Vector loop]--------------------------
.vloop:	movdqa	temp1, [data - 1 * KSIZE]	; temp1 = data[-1]
		movdqa	temp2, [data - 2 * KSIZE]	; temp2 = data[-2]
		movdqa	temp3, [data - 3 * KSIZE]	; temp3 = data[-3]
		movdqa	temp4, [data - 4 * KSIZE]	; temp4 = data[-4]
		movdqa	temp5, [bptr - 1 * KSIZE]	; temp5 = bptr[-1]
		movdqa	temp6, [bptr - 2 * KSIZE]	; temp6 = bptr[-2]
		movdqa	temp7, [bptr - 3 * KSIZE]	; temp7 = bptr[-3]
		movdqa	temp8, [bptr - 4 * KSIZE]	; temp8 = bptr[-4]
		movdqa	[data - 0 * KSIZE], temp1	; data[-0] = temp1
		movdqa	[data - 1 * KSIZE], temp2	; data[-1] = temp2
		movdqa	[data - 2 * KSIZE], temp3	; data[-2] = temp3
		movdqa	[data - 3 * KSIZE], temp4	; data[-3] = temp4
		sub		data, 4 * KSIZE				; data -= 4
		movdqa	[bptr - 0 * KSIZE], temp5	; bptr[-0] = temp5
		movdqa	[bptr - 1 * KSIZE], temp6	; bptr[-1] = temp6
		movdqa	[bptr - 2 * KSIZE], temp7	; bptr[-2] = temp7
		movdqa	[bptr - 3 * KSIZE], temp8	; bptr[-3] = temp8
		sub		bptr, 4 * KSIZE				; bptr -= 4
		movq	root, temp5					; root = temp5.root
		mov		[array + root + BROOT], node
		sub		node, KSIZE					; node--
		movq	root, temp6					; root = temp6.root
		mov		[array + root + BROOT], node
		sub		node, KSIZE					; node--
		movq	root, temp7					; root = temp7.root
		mov		[array + root + BROOT], node
		sub		node, KSIZE					; node--
		movq	root, temp8					; root = temp8.root
		mov		[array + root + BROOT], node
		sub		node, KSIZE					; node--
		sub		count, 4 * KSIZE			; count -= 4
		jnz		.vloop						; do while (count != 0)
;---[End of vector loop]-------------------
.skip:	mov		count, smask				; load smask
		and		count, size					; apply mask to size variable
		jz		.exit						; if (count == 0), then go to exit
;---[Scalar loop]--------------------------
.sloop:	movdqa	temp1, [data - 1 * KSIZE]	; temp1 = data[-1]
		movdqa	temp5, [bptr - 1 * KSIZE]	; temp5 = bptr[-1]
		movdqa	[data - 0 * KSIZE], temp1	; data[-0] = temp1
		movdqa	[bptr - 0 * KSIZE], temp5	; bptr[-0] = temp5
		sub		data, KSIZE					; data--
		sub		bptr, KSIZE					; bptr--
		movq	root, temp5					; root = temp5.root
		mov		[array + root + BROOT], node
		sub		node, KSIZE					; node--
		sub		count, KSIZE				; count--
		jnz		.sloop						; do while (count != 0)
;---[End of scalar loop]-------------------
.exit:	movdqa	[data], value				; data[0] = value
		mov		[bptr + TROOT], proot		; bptr[0].root = proot
		mov		[bptr + TSIZE], psize		; bptr[0].size = psize
		mov		[array + proot + BROOT], node
		ret

;******************************************************************************;
;       Replace element in the right branch node                               ;
;******************************************************************************;
BranchReplaceRightCore:
;---[Parameters]---------------------------
data	equ		rdi							; pointer to source array of keys
bptr	equ		rsi							; pointer to source array of subtrees
array	equ		rdx							; pointer to array of nodes
node	equ		rcx							; index of branch node to process
size	equ		r8							; count of elements to move
proot	equ		r9							; pointer to subtree tree root
psize	equ		r10							; size of subtree
value	equ		xmm0						; key to insert
;---[Internal variables]-------------------
count	equ		rax							; count of iterations
root	equ		r11							; index of subtree root node
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
smask	= 1 shl (KSCALE + 2) - 1			; mask for scalar loop count
vmask	= not smask							; mask for vector loop count
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		count, vmask				; load vmask
		and		count, size					; apply mask to size variable
		jz		.skip						; if (count == 0), then skip the loop
;---[Vector loop]--------------------------
.vloop:	movdqa	temp1, [data + 1 * KSIZE]	; temp1 = data[+1]
		movdqa	temp2, [data + 2 * KSIZE]	; temp2 = data[+2]
		movdqa	temp3, [data + 3 * KSIZE]	; temp3 = data[+3]
		movdqa	temp4, [data + 4 * KSIZE]	; temp4 = data[+4]
		movdqa	temp5, [bptr + 1 * KSIZE]	; temp5 = bptr[+1]
		movdqa	temp6, [bptr + 2 * KSIZE]	; temp6 = bptr[+2]
		movdqa	temp7, [bptr + 3 * KSIZE]	; temp7 = bptr[+3]
		movdqa	temp8, [bptr + 4 * KSIZE]	; temp8 = bptr[+4]
		movdqa	[data + 0 * KSIZE], temp1	; data[+0] = temp1
		movdqa	[data + 1 * KSIZE], temp2	; data[+1] = temp2
		movdqa	[data + 2 * KSIZE], temp3	; data[+2] = temp3
		movdqa	[data + 3 * KSIZE], temp4	; data[+3] = temp4
		add		data, 4 * KSIZE				; data += 4
		movdqa	[bptr + 0 * KSIZE], temp5	; bptr[+0] = temp5
		movdqa	[bptr + 1 * KSIZE], temp6	; bptr[+1] = temp6
		movdqa	[bptr + 2 * KSIZE], temp7	; bptr[+2] = temp7
		movdqa	[bptr + 3 * KSIZE], temp8	; bptr[+3] = temp8
		add		bptr, 4 * KSIZE				; bptr += 4
		movq	root, temp5					; root = temp5.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp6					; root = temp6.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp7					; root = temp7.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp8					; root = temp8.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		sub		count, 4 * KSIZE			; count -= 4
		jnz		.vloop						; do while (count != 0)
;---[End of vector loop]-------------------
.skip:	mov		count, smask				; load smask
		and		count, size					; apply mask to size variable
		jz		.exit						; if (count == 0), then go to exit
;---[Scalar loop]--------------------------
.sloop:	movdqa	temp1, [data + 1 * KSIZE]	; temp1 = data[+1]
		movdqa	temp5, [bptr + 1 * KSIZE]	; temp5 = bptr[+1]
		movdqa	[data + 0 * KSIZE], temp1	; data[+0] = temp1
		movdqa	[bptr + 0 * KSIZE], temp5	; bptr[+0] = temp5
		add		data, KSIZE					; data++
		add		bptr, KSIZE					; bptr++
		movq	root, temp5					; root = temp5.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		sub		count, KSIZE				; count--
		jnz		.sloop						; do while (count != 0)
;---[End of scalar loop]-------------------
.exit:	movdqa	[data], value				; data[0] = value
		mov		[bptr + TROOT], proot		; bptr[0].root = proot
		mov		[bptr + TSIZE], psize		; bptr[0].size = psize
		mov		[array + proot + BROOT], node
		ret

;******************************************************************************;
;       Join two branch nodes                                                  ;
;******************************************************************************;
BranchJoinCore:
;---[Parameters]---------------------------
tdata	equ		rdi							; pointer to target array of keys
tbptr	equ		rsi							; pointer to target array of subtrees
sdata	equ		rdx							; pointer to source array of keys
sbptr	equ		rcx							; pointer to source array of subtrees
array	equ		r8							; pointer to array of nodes
node	equ		r9							; index of old branch node
size	equ		r10							; size of right node
value	equ		xmm0						; key to insert
;---[Internal variables]-------------------
count	equ		rax							; count of iterations
root	equ		r11							; index of subtree root node
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
temp3	equ		xmm4						; temporary register #4
temp4	equ		xmm5						; temporary register #5
temp5	equ		xmm6						; temporary register #6
temp6	equ		xmm7						; temporary register #7
temp7	equ		xmm8						; temporary register #8
smask	= 1 shl (KSCALE + 2) - 1			; mask for scalar loop count
vmask	= not smask							; mask for vector loop count
;------------------------------------------
		movdqa	[tdata], value				; tdata[0] = value
		add		tdata, KSIZE				; tdata++
		add		tbptr, KSIZE				; tbptr++
		add		node, KSIZE					; node++
		mov		count, vmask				; load vmask
		and		count, size					; apply mask to size variable
		jz		.skip						; if (count == 0), then skip the loop
;---[Vector loop]--------------------------
.vloop:	movdqa	temp0, [sdata + 0 * KSIZE]	; temp0 = sdata[0]
		movdqa	temp1, [sdata + 1 * KSIZE]	; temp1 = sdata[1]
		movdqa	temp2, [sdata + 2 * KSIZE]	; temp2 = sdata[2]
		movdqa	temp3, [sdata + 3 * KSIZE]	; temp3 = sdata[3]
		add		sdata, 4 * KSIZE			; sdata += 4
		movdqa	temp4, [sbptr + 0 * KSIZE]	; temp4 = sbptr[0]
		movdqa	temp5, [sbptr + 1 * KSIZE]	; temp5 = sbptr[1]
		movdqa	temp6, [sbptr + 2 * KSIZE]	; temp6 = sbptr[2]
		movdqa	temp7, [sbptr + 3 * KSIZE]	; temp7 = sbptr[3]
		add		sbptr, 4 * KSIZE			; sbptr += 4
		movdqa	[tdata + 0 * KSIZE], temp0	; tdata[0] = temp0
		movdqa	[tdata + 1 * KSIZE], temp1	; tdata[1] = temp1
		movdqa	[tdata + 2 * KSIZE], temp2	; tdata[2] = temp2
		movdqa	[tdata + 3 * KSIZE], temp3	; tdata[3] = temp3
		add		tdata, 4 * KSIZE			; tdata += 4
		movdqa	[tbptr + 0 * KSIZE], temp4	; tbptr[0] = temp4
		movdqa	[tbptr + 1 * KSIZE], temp5	; tbptr[1] = temp5
		movdqa	[tbptr + 2 * KSIZE], temp6	; tbptr[2] = temp6
		movdqa	[tbptr + 3 * KSIZE], temp7	; tbptr[3] = temp7
		add		tbptr, 4 * KSIZE			; tbptr += 4
		movq	root, temp4					; root = temp4.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp5					; root = temp5.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp6					; root = temp6.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp7					; root = temp7.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		sub		count, 4 * KSIZE			; count -= 4
		jnz		.vloop						; do while (count != 0)
;---[End of vector loop]-------------------
.skip:	mov		count, smask				; load smask
		and		count, size					; apply mask to size variable
		jz		.exit						; if (count == 0), then go to exit
;---[Scalar loop]--------------------------
.sloop:	movdqa	temp0, [sdata]				; temp0 = sdata[0]
		movdqa	temp4, [sbptr]				; temp4 = sbptr[0]
		movdqa	[tdata], temp0				; tdata[0] = temp0
		movdqa	[tbptr], temp4				; tbptr[0] = temp4
		add		sdata, KSIZE				; sdata++
		add		sbptr, KSIZE				; sbptr++
		add		tdata, KSIZE				; tdata++
		add		tbptr, KSIZE				; tbptr++
		movq	root, temp4					; root = temp4.root
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		sub		count, KSIZE				; count--
		jnz		.sloop						; do while (count != 0)
;---[End of scalar loop]-------------------
.exit:	movdqa	temp4, [sbptr]				; temp4 = sbptr[0]
		movdqa	[tbptr], temp4				; tbptr[0] = temp4
		movq	root, temp4					; root = temp4.root
		mov		[array + root + BROOT], node
		ret

;******************************************************************************;
;       Split the branch node                                                  ;
;******************************************************************************;
BranchSplitCore:
;---[Parameters]---------------------------
tdata	equ		rdi							; pointer to target array of keys
tbptr	equ		rsi							; pointer to target array of subtrees
sdata	equ		rdx							; pointer to source array of keys
sbptr	equ		rcx							; pointer to source array of subtrees
array	equ		r8							; pointer to array of nodes
node	equ		r9							; index of new branch node
;---[Internal variables]-------------------
count	equ		rax							; count of iterations
root	equ		r11							; index of subtree root node
sum		equ		xmm0						; count of elements into subtree
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
temp3	equ		xmm4						; temporary register #4
temp4	equ		xmm5						; temporary register #5
temp5	equ		xmm6						; temporary register #6
temp6	equ		xmm7						; temporary register #7
temp7	equ		xmm8						; temporary register #8
;------------------------------------------
		pxor	sum, sum					; sum = 0
if (BMIN / 4) and -KSIZE
		mov		count, (BMIN / 4) and -KSIZE
;---[Splitting loop]-----------------------
.loop:	movdqa	temp0, [sdata + 0 * KSIZE]	; temp0 = sdata[0]
		movdqa	temp1, [sdata + 1 * KSIZE]	; temp1 = sdata[1]
		movdqa	temp2, [sdata + 2 * KSIZE]	; temp2 = sdata[2]
		movdqa	temp3, [sdata + 3 * KSIZE]	; temp3 = sdata[3]
		add		sdata, 4 * KSIZE			; sdata += 4
		movdqa	temp4, [sbptr + 0 * KSIZE]	; temp4 = sbptr[0]
		movdqa	temp5, [sbptr + 1 * KSIZE]	; temp5 = sbptr[1]
		movdqa	temp6, [sbptr + 2 * KSIZE]	; temp6 = sbptr[2]
		movdqa	temp7, [sbptr + 3 * KSIZE]	; temp7 = sbptr[3]
		add		sbptr, 4 * KSIZE			; sbptr += 4
		movdqa	[tdata + 0 * KSIZE], temp0	; tdata[0] = temp0
		movdqa	[tdata + 1 * KSIZE], temp1	; tdata[1] = temp1
		movdqa	[tdata + 2 * KSIZE], temp2	; tdata[2] = temp2
		movdqa	[tdata + 3 * KSIZE], temp3	; tdata[3] = temp3
		add		tdata, 4 * KSIZE			; tdata += 4
		movdqa	[tbptr + 0 * KSIZE], temp4	; tbptr[0] = temp4
		movdqa	[tbptr + 1 * KSIZE], temp5	; tbptr[1] = temp5
		movdqa	[tbptr + 2 * KSIZE], temp6	; tbptr[2] = temp6
		movdqa	[tbptr + 3 * KSIZE], temp7	; tbptr[3] = temp7
		add		tbptr, 4 * KSIZE			; tbptr += 4
		movq	root, temp4					; root = temp4.root
		paddq	sum, temp4					; sum += temp4.size
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp5					; root = temp5.root
		paddq	sum, temp5					; sum += temp5.size
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp6					; root = temp6.root
		paddq	sum, temp6					; sum += temp6.size
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp7					; root = temp7.root
		paddq	sum, temp7					; sum += temp7.size
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		sub		count, KSIZE				; count--
		jnz		.loop						; do while (count != 0)
end if
		movdqa	temp0, [sdata + 0 * KSIZE]	; temp0 = sdata[0]
		movdqa	temp1, [sdata + 1 * KSIZE]	; temp1 = sdata[1]
		movdqa	temp2, [sdata + 2 * KSIZE]	; temp2 = sdata[2]
		movdqa	temp4, [sbptr + 0 * KSIZE]	; temp4 = sbptr[0]
		movdqa	temp5, [sbptr + 1 * KSIZE]	; temp5 = sbptr[1]
		movdqa	temp6, [sbptr + 2 * KSIZE]	; temp6 = sbptr[2]
		movdqa	temp7, [sbptr + 3 * KSIZE]	; temp7 = sbptr[3]
		movdqa	[tdata + 0 * KSIZE], temp0	; tdata[0] = temp0
		movdqa	[tdata + 1 * KSIZE], temp1	; tdata[1] = temp1
		movdqa	[tdata + 2 * KSIZE], temp2	; tdata[2] = temp2
		movdqa	[tbptr + 0 * KSIZE], temp4	; tbptr[0] = temp4
		movdqa	[tbptr + 1 * KSIZE], temp5	; tbptr[1] = temp5
		movdqa	[tbptr + 2 * KSIZE], temp6	; tbptr[2] = temp6
		movdqa	[tbptr + 3 * KSIZE], temp7	; tbptr[3] = temp7
		movq	root, temp4					; root = temp4.root
		paddq	sum, temp4					; sum += temp4.size
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp5					; root = temp5.root
		paddq	sum, temp5					; sum += temp5.size
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp6					; root = temp6.root
		paddq	sum, temp6					; sum += temp6.size
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		movq	root, temp7					; root = temp7.root
		paddq	sum, temp7					; sum += temp7.size
		mov		[array + root + BROOT], node
		add		node, KSIZE					; node++
		psrldq	sum, 8
		movq	count, sum
		add		count, BMIN					; return BMIN + size
		ret

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
Constructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
cap		equ		rsi							; object capacity
func	equ		rdx							; compare function
;---[Internal variables]-------------------
array	equ		rax							; pointer to array of nodes
low		equ		rax							; low part of value for div operation
high	equ		rdx							; high part of value for div operation
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
		xor		high, high					; high = 0
		lea		low, [cap + BMAX - 2 * KSIZE]
		mov		cap, BMAX - KSIZE
		div		cap							; low = (cap + BMAX - 2 * KSIZE) / (BMAX - KSIZE)
		shl		low, NSCALE
	Capacity	low, func, MINCAP			; compute capacity of the object
		mov		[s_cap], low				; save "cap" variable into the stack
;---[Allocate memory for the object]-------
		mov		sc_prm6, 0
		mov		sc_prm5, -1
		mov		sc_prm4, 0x22
		mov		sc_prm3, 0x3
		mov		sc_prm2, low
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
		mov		qword [this + HEIGHT], ERROR; this.height = ERROR
		mov		qword [this + POOL], 0		; this.pool = 0
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + ROOT], EMPTY	; this.root = EMPTY
		mov		[this + FUNC], func			; this.func = func
		mov		param4, EMPTY
		mov		param3, cap
		mov		param2, 0
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		InitFree					; return InitFree (array, pool, cap, EMPTY)
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + HEIGHT], ERROR; this.height = ERROR
		mov		qword [this + POOL], EMPTY	; this.pool = EMPTY
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + ROOT], EMPTY	; this.root = EMPTY
		mov		[this + FUNC], func			; this.func = func
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
CopyConstructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target b-tree object
source	equ		rsi							; pointer to source b-tree object
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
		mov		temp, [source + HEIGHT]
		mov		[this + HEIGHT], temp		; this.height = source.height
		mov		temp, [source + POOL]
		mov		[this + POOL], temp			; this.pool = source.pool
		mov		temp, [source + FWD]
		mov		[this + FWD], temp			; this.fwd = source.fwd
		mov		temp, [source + BWD]
		mov		[this + BWD], temp			; this.bwd = source.bwd
		mov		temp, [source + ROOT]
		mov		[this + ROOT], temp			; this.root = source.root
		mov		temp, [source + FUNC]
		mov		[this + FUNC], temp			; this.func = source.func
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
		mov		qword [this + HEIGHT], ERROR; this.height = ERROR
		mov		qword [this + POOL], EMPTY	; this.pool = EMPTY
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + ROOT], EMPTY	; this.root = EMPTY
		mov		temp, [source + FUNC]
		mov		[this + FUNC], temp			; this.func = source.func
.exit:	add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
Destructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
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
		mov		qword [this + HEIGHT], ERROR; this.height = ERROR
		mov		qword [this + POOL], EMPTY	; this.pool = EMPTY
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + ROOT], EMPTY	; this.root = EMPTY
		mov		qword [this + FUNC], 0		; this.func = NULL
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Copying elements                                                       ;
;******************************************************************************;
macro	COPY_MOVE	InsFunc, MoveFunc, offst, bwd, move
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target b-tree object
source	equ		rsi							; pointer to source b-tree object
count	equ		rdx							; count of nodes to copy
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
low		equ		rax							; low part of value for div operation
high	equ		rdx							; high part of value for div operation
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
size	equ		r10							; object size
value	equ		xmm0						; value to insert
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_count	equ		stack + 2 * 8				; stack position of "count" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_iter	equ		stack + 4 * 8				; stack position of "iter" variable
s_cnt	equ		stack + 5 * 8				; stack position of "counter" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.error						;     then go to error branch
;---[Check source iterator]----------------
		mov		array, [source + ARRAY]		; get pointer to array of nodes
		mov		iter, [source + offst]		; get source iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     then go to error branch
;---[Get iterator position]----------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		param2, iter
		mov		param1, array
		call	GetPos						; result = GetPos (source.array, iter)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		mov		count, [s_count]			; get "count" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
if bwd
		add		size, KSIZE					; size = result + KSIZE
else
		neg		size
		add		size, [source + SIZE]		; size = source.size - result
end if
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
		mov		[s_count], count			; save "count" variable into the stack
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		mov		low, [this + SIZE]
		lea		low, [low + count + BMAX - 2 * KSIZE]
		xor		high, high					; high = 0
		mov		size, BMAX - KSIZE
		div		size
		shl		low, NSCALE					; low = (size + count + BMAX - 2 * KSIZE) / (BMAX - KSIZE) * NSIZE
	Capacity	low, count, MINCAP			; compute new capacity of target object
		cmp		low, [this + CAPACITY]		; if (low > capacity)
		ja		.ext						;     then try to extend object capacity
.eback:	mov		count, [s_count]			; get "count" variable from the stack
		mov		[s_cnt], count				; counter = count
;---[Copying/moving loop]------------------
.loop:	and		iter, PMASK
		movdqa	value, [array + iter + BDATA]
		call	InsFunc						; call this.InsFunc (value)
		mov		source, [s_src]				; get "source" variable from the stack
		test	status, status				; if (!status)
		jz		.skip						;     then go to skip branch
if move
		mov		this, [s_src]				; get "source" variable from the stack
		mov		param2, [source + offst]
		call	RemoveCore					; call source.RemoveCore (iter)
else
		mov		param1, [s_array]
		mov		param2, [s_iter]
		mov		param3, KSIZE
		call	MoveFunc					; result = MoveFunc (source.array, source.iter, KSIZE)
end if
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
if move
		mov		source, [s_src]				; get "source" variable from the stack
		mov		iter, [source + offst]		; iter = source.iter
else
		mov		iter, result				; iter = result
		mov		[s_iter], result			; save "iter" variable into the stack
end if
		sub		qword [s_cnt], KSIZE		; counter--
		jnz		.loop						; do while (counter != 0)
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_count]			; get "count" variable from the stack
		shr		result, KSCALE				; return count
		add		stack, space				; restoring back the stack pointer
		ret
;---[Skip element branch]------------------
.skip:	sub		qword [s_count], KSIZE		; count--
		mov		param1, [s_array]
if move
		mov		param2, [source + offst]
else
		mov		param2, [s_iter]
end if
		mov		param3, KSIZE
		call	MoveFunc					; result = MoveFunc (source.array, source.iter, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
if move
		mov		source, [s_src]				; get "source" variable from the stack
		mov		iter, [source + offst]		; iter = source.iter
else
		mov		iter, result				; iter = result
		mov		[s_iter], result			; save "iter" variable into the stack
end if
		sub		qword [s_cnt], KSIZE		; counter--
		jnz		.loop						; do while (counter != 0)
		mov		result, [s_count]			; get "count" variable from the stack
		shr		result, KSCALE				; return count
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, low
		call	Extend						; status = this.Extend (low)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		test	status, status				; if (status)
		jnz		.eback						;     then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret
}

; Using forward iterator
CopyFwdMulti:	COPY_MOVE	InsertCoreMulti, GoNext, FWD, 0, 0
CopyFwdUnique:	COPY_MOVE	InsertCoreUnique, GoNext, FWD, 0, 0

; Using backward iterator
CopyBwdMulti:	COPY_MOVE	InsertCoreMulti, GoPrev, BWD, 0, 0
CopyBwdUnique:	COPY_MOVE	InsertCoreUnique, GoPrev, BWD, 0, 0

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;

; Using forward iterator
MoveFwdMulti:	COPY_MOVE	InsertCoreMulti, GoNext, FWD, 0, 1
MoveFwdUnique:	COPY_MOVE	InsertCoreUnique, GoNext, FWD, 0, 1

; Using backward iterator
MoveBwdMulti:	COPY_MOVE	InsertCoreMulti, GoPrev, BWD, 0, 1
MoveBwdUnique:	COPY_MOVE	InsertCoreUnique, GoPrev, BWD, 0, 1

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;

;==============================================================================;
;       Correct tree size                                                      ;
;==============================================================================;
CorrectSize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
node	equ		rsi							; index of node to start from
index	equ		rdx							; index of branch into the node
status	equ		rcx							; return status
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
iter	equ		result						; iterator value
;------------------------------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		sub		qword [this + SIZE], KSIZE	; this.size--
		cmp		node, EMPTY					; if (node == EMPTY)
		je		.exit						;     then go to exit
;---[Correcting loop]----------------------
.loop:	add		node, array
		mov		iter, [node + BROOT]		; iter = array[node].root
		sub		qword [node + index + BPTR + TSIZE], KSIZE
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		mov		index, IMASK				; load index mask
		and		index, iter					; index = iter & IMASK
		cmp		node, EMPTY
		jne		.loop						; do while (node != EMPTY)
;---[End of correcting loop]---------------
.exit:	mov		result, status				; return status
		ret

;==============================================================================;
;       Leaf operations                                                        ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Insert element into the leaf node                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
LeafInsert:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
node	equ		rsi							; node index
size	equ		rdx							; node size
pos		equ		rcx							; insert position
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
iter	equ		r8							; iterator value
iter1	equ		r9							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
nsize	equ		result						; new node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_node	equ		stack + 1 * 8				; stack position of "node" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Insert data into the leaf node]-------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		lea		nsize, [size + KSIZE]		; nsize = size + KSIZE
		neg		pos							; pos = -pos
		mov		[array + node + BSIZE], nsize
		add		node, size					; node += size
		lea		param1, [array + node + BDATA]
		lea		param2, [pos + size]
		call	LeafReplaceLeftCore			; call LeafReplaceLeftCore (array[node].data + size, size - pos, value)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then check iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then check iterator position
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

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Split the leaf node                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
LeafSplit:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
node	equ		rsi							; index of node to split
pos		equ		rdx							; insert position
level	equ		rcx							; branch level
;---[Internal variables]-------------------
result	equ		rax							; result register
res1	equ		rax							; target node
res2	equ		rdx							; target position
array	equ		r8							; pointer to array of nodes
nnode	equ		r9							; new node
tnode	equ		r10							; index of the top node
tindex	equ		r11							; subtree position in the top node
root	equ		result						; index of subtree root node
rsize	equ		level						; size of right subrtee
tsize	equ		result						; size of the top node
bsize	equ		pos							; size of subtree branch
pos1	equ		tnode						; insert position
rsize1	equ		tindex						; size of right subrtee
iter	equ		pos							; iterator value
iter1	equ		level						; new iterator value #1
iter2	equ		array						; new iterator value #2
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
median	equ		xmm0						; median value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_node	equ		stack + 2 * 8				; stack position of "node" variable
s_nnode	equ		stack + 3 * 8				; stack position of "nnode" variable
s_pos	equ		stack + 4 * 8				; stack position of "pos" variable
s_level	equ		stack + 5 * 8				; stack position of "pos" variable
s_res1	equ		stack + 6 * 8				; stack position of "res1" variable
s_res2	equ		stack + 7 * 8				; stack position of "res2" variable
s_tnode	equ		stack + 8 * 8				; stack position of "tnode" variable
s_tind	equ		stack + 9 * 8				; stack position of "tindex" variable
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Allocate new node]--------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		nnode, [this + POOL]		; nnode = this.pool
		mov		result, [array + nnode + BROOT]
		mov		[this + POOL], result		; this.pool = array[nnode].root
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_nnode], nnode			; save "nnode" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
		mov		[s_level], level			; save "level" variable into the stack
;---[Split leaf node]----------------------
		mov		result, [array + node + BROOT]
		mov		[array + nnode + BROOT], result
		mov		qword [array + nnode + BSIZE], LMIN
		mov		qword [array + node + BSIZE], LMIN
		lea		param2, [array + node + LMIN + KSIZE + BDATA]
		lea		param1, [array + nnode + BDATA]
		call	LeafSplitCore
		mov		rsize, result				; rsize = LeafSplitCore (array[nnode].data, array[node].data + LMIN + KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		nnode, [s_nnode]			; get "nnode" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
		movdqa	median, [array + node + LMIN + BDATA]
;---[Set branch properties]----------------
		lea		pos1, [pos - LMIN - KSIZE]
		lea		rsize1, [rsize + KSIZE]
		mov		res1, node					; res1 = node
		mov		res2, pos					; res2 = pos
		cmp		pos, LMIN					; if (pos > LMIN)
		cmova	res1, nnode					;     res1 = nnode
		cmova	res2, pos1					;     res2 = pos - LMIN - KSIZE
		cmova	rsize, rsize1				;     rsize = rsize + KSIZE
		mov		[s_res1], res1				; save "res1" variable into the stack
		mov		[s_res2], res2				; save "res2" variable into the stack
;---[Insert median into the top node]------
		mov		root, [array + node + BROOT]
		mov		tnode, NMASK				; load node mask
		and		tnode, root					; tnode = array[node].root & NMASK
		mov		tindex, IMASK				; load index mask
		and		tindex, root				; tindex = array[node].root & IMASK
		mov		[s_tnode], tnode			; save "tnode" variable into the stack
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		add		tnode, array
		mov		tsize, [tnode + BSIZE]		; tsize = array[tnode].size
		mov		bsize, [tnode + tindex + BPTR + TSIZE]
		sub		bsize, KSIZE
		sub		bsize, rsize
		mov		[tnode + tindex + BPTR + TROOT], nnode
		mov		[tnode + tindex + BPTR + TSIZE], rsize
		sub		tnode, array
		mov		param6, bsize
		mov		param5, node
		mov		param4, tindex
		mov		param3, tsize
		mov		param2, tnode
		mov		param1, this
		call	BranchInsert				; call this.BranchInsert (tnode, tsize, tindex, node, bsize, median)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		nnode, [s_nnode]			; get "nnode" variable from the stack
		mov		tnode, [s_tnode]			; get "tnode" variable from the stack
		mov		tindex, [s_tind]			; get "tindex" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then check iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then check iterator position
;---[Return branch properties]-------------
.back2:	mov		res1, [s_res1]				; get "res1" variable from the stack
		mov		res2, [s_res2]				; get "res2" variable from the stack
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator branch]------
.fwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		lea		iter2, [nnode + ival - LMIN - KSIZE]
		add		iter1, [s_level]
		add		iter2, [s_level]
		cmp		ival, LMIN
		cmove	iter, iter1					; if (ival = LMIN), then iter = tnode + tindex + level + 1
		cmova	iter, iter2					; if (ival > LMIN), then iter = nnode + ival + level - LMIN - KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.bwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		lea		iter2, [nnode + ival - LMIN - KSIZE]
		add		iter1, [s_level]
		add		iter2, [s_level]
		cmp		ival, LMIN
		cmove	iter, iter1					; if (ival = LMIN), then iter = tnode + tindex + level + 1
		cmova	iter, iter2					; if (ival > LMIN), then iter = nnode + ival + level - LMIN - KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Branch operations                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Insert element into the branch node                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
BranchInsert:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
node	equ		rsi							; node index
size	equ		rdx							; node size
pos		equ		rcx							; insert position
proot	equ		r8							; pointer to subtree tree root
psize	equ		r9							; size of subtree
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
iter	equ		r8							; iterator value
iter1	equ		r9							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
nsize	equ		result						; new node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_node	equ		stack + 1 * 8				; stack position of "node" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Insert data into the leaf node]-------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		lea		nsize, [size + KSIZE]		; nsize = size + KSIZE
		neg		pos							; pos = -pos
		mov		[array + node + BSIZE], nsize
		add		node, size					; node += size
		mov		param7, psize
		mov		param6, proot
		lea		param5, [pos + size]
		lea		param4, [node + KSIZE]
		mov		param3, array
		lea		param1, [array + node + BDATA]
		lea		param2, [array + node + KSIZE + BPTR]
		call	BranchReplaceLeftCore		; call BranchReplaceLeftCore (array[node].data + nsize, array[node].bptr + nsize + KSIZE, array, node + nsize + KSIZE, nsize - pos, ptr, value)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then check iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then check iterator position
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

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Split the branch node                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
BranchSplit:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
node	equ		rsi							; index of node to split
pos		equ		rdx							; insert position
level	equ		rcx							; branch level
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
nnode	equ		r9							; new node
tnode	equ		r10							; index of the top node
tindex	equ		r11							; subtree position in the top node
root	equ		result						; index of subtree root node
rsize	equ		level						; size of right subrtee
tsize	equ		result						; size of the top node
bsize	equ		pos							; size of subtree branch
iter	equ		pos							; iterator value
iter1	equ		level						; new iterator value #1
iter2	equ		array						; new iterator value #2
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
median	equ		xmm0						; median value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_node	equ		stack + 2 * 8				; stack position of "node" variable
s_nnode	equ		stack + 3 * 8				; stack position of "nnode" variable
s_pos	equ		stack + 4 * 8				; stack position of "pos" variable
s_level	equ		stack + 5 * 8				; stack position of "pos" variable
s_tnode	equ		stack + 6 * 8				; stack position of "tnode" variable
s_tind	equ		stack + 7 * 8				; stack position of "tindex" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Allocate new node]--------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		nnode, [this + POOL]		; nnode = this.pool
		mov		result, [array + nnode + BROOT]
		mov		[this + POOL], result		; this.pool = array[nnode].root
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_nnode], nnode			; save "nnode" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
		mov		[s_level], level			; save "level" variable into the stack
;---[Split branch node]--------------------
		mov		result, [array + node + BROOT]
		mov		[array + nnode + BROOT], result
		mov		qword [array + nnode + BSIZE], BMIN
		mov		qword [array + node + BSIZE], BMIN
		mov		param6, nnode
		mov		param5, array
		lea		param4, [array + node + BMIN + KSIZE + BPTR]
		lea		param3, [array + node + BMIN + KSIZE + BDATA]
		lea		param2, [array + nnode + BPTR]
		lea		param1, [array + nnode + BDATA]
		call	BranchSplitCore
		mov		rsize, result				; rsize = BranchSplitCore (array[nnode].data, array[nnode].bptr, array[node].data + BMIN + KSIZE, array[node].bptr + BMIN + KSIZE, array, nnode)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		nnode, [s_nnode]			; get "nnode" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
		movdqa	median, [array + node + BMIN + BDATA]
;---[Insert median into the top node]------
		mov		root, [array + node + BROOT]
		mov		tnode, NMASK				; load node mask
		and		tnode, root					; tnode = array[node].root & NMASK
		mov		tindex, IMASK				; load index mask
		and		tindex, root				; tindex = array[node].root & IMASK
		mov		[s_tnode], tnode			; save "tnode" variable into the stack
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		add		tnode, array
		mov		tsize, [tnode + BSIZE]		; tsize = array[tnode].size
		mov		bsize, [tnode + tindex + BPTR + TSIZE]
		sub		bsize, KSIZE
		sub		bsize, rsize
		mov		[tnode + tindex + BPTR + TROOT], nnode
		mov		[tnode + tindex + BPTR + TSIZE], rsize
		sub		tnode, array
		mov		param6, bsize
		mov		param5, node
		mov		param4, tindex
		mov		param3, tsize
		mov		param2, tnode
		mov		param1, this
		call	BranchInsert				; call this.BranchInsert (tnode, tsize, tindex, node, bsize, median)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		nnode, [s_nnode]			; get "nnode" variable from the stack
		mov		tnode, [s_tnode]			; get "tnode" variable from the stack
		mov		tindex, [s_tind]			; get "tindex" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then check iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then check iterator position
;---[Return branch properties]-------------
.back2:	add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator branch]------
.fwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		lea		iter2, [nnode + ival - BMIN - KSIZE]
		add		iter1, [s_level]
		add		iter2, [s_level]
		cmp		ival, BMIN
		cmove	iter, iter1					; if (ival = BMIN), then iter = tnode + tindex + level + 1
		cmova	iter, iter2					; if (ival > BMIN), then iter = nnode + ival + level - BMIN - KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.bwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		lea		iter2, [nnode + ival - BMIN - KSIZE]
		add		iter1, [s_level]
		add		iter2, [s_level]
		cmp		ival, BMIN
		cmove	iter, iter1					; if (ival = BMIN), then iter = tnode + tindex + level + 1
		cmova	iter, iter2					; if (ival > BMIN), then iter = nnode + ival + level - BMIN - KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Insert element into b-tree                                             ;
;==============================================================================;
macro	INSERT_CORE	type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
odata	equ		rsi							; pointer to old data structure
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
res1	equ		rax							; target node
res2	equ		rdx							; target position
array	equ		rdx							; pointer to array of nodes
root	equ		rcx							; begining node to start from
height	equ		r8							; b-tree height
size	equ		r9							; b-tree size
nsize	equ		r10							; node size
node	equ		r11							; current node
next	equ		rbx							; next root node
left	equ		r12							; left index
right	equ		r13							; right index
data	equ		r14							; pointer to array of keys
bptr	equ		r15							; pointer to array of subtrees
median	equ		this						; median value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_odata	equ		stack + 1 * 8				; stack position of "odata" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_node	equ		stack + 5 * 8				; stack position of "node" variable
s_nsize	equ		stack + 6 * 8				; stack position of "nsize" variable
s_hght	equ		stack + 7 * 8				; stack position of "height" variable
s_func	equ		stack + 8 * 8				; stack position of "func" variable
s_next	equ		stack + 9 * 8				; stack position of "next" variable
s_left	equ		stack + 10 * 8				; stack position of "left" variable
s_right	equ		stack + 11 * 8				; stack position of "right" variable
s_data	equ		stack + 12 * 8				; stack position of "data" variable
s_bptr	equ		stack + 13 * 8				; stack position of "bptr" variable
s_med	equ		stack + 14 * 8				; stack position of "median" variable
space	= 15 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]
		mov		size, [this + SIZE]
		mov		height, [this + HEIGHT]
		mov		root, [this + ROOT]
		mov		result, [this + FUNC]
		mov		[s_next], next				; save old value of "next" variable
		mov		[s_left], left				; save old value of "left" variable
		mov		[s_right], right			; save old value of "right" variable
		mov		[s_data], data				; save old value of "data" variable
		mov		[s_bptr], bptr				; save old value of "bptr" variable
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_odata], odata			; save "odata" variable into the stack
		movdqa	[s_value], value			; save "value" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_hght], height			; save "height" variable into the stack
		mov		[s_func], result			; save "func" variable into the stack
;---[Check tree properties]----------------
		add		size, KSIZE					; this.size += KSIZE
		mov		[this + SIZE], size			; update tree size
		cmp		root, EMPTY					; if (this.root == EMPTY)
		je		.init						;     then init b-tree
.back1:	mov		node, root					; node = root
		mov		nsize, [array + root + BSIZE]
		mov		[s_node], root				; save "node" variable into the stack
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
		test	height, height				; if (height == 0)
		jz		.lsize						;     then check size of leaf node
;---[Check size of root node]--------------
		cmp		nsize, BMAX					; if (nsize == BMAX)
		je		.nroot						;     then create new root node
;---[Branch searching loop]----------------
.bloop:	mov		right, nsize
		lea		data, [array + node + BDATA]
		lea		bptr, [array + node + BPTR]
		mov		next, [array + node + BPTR + TROOT]
		xor		left, left					; left = 0
;---[Binary search loop]-------------------
.loop1:	lea		median, [left + right]
		shr		median, 1
		and		median, -KSIZE				; median = (left + right) / 2
		mov		[s_med], median				; save "median" variable into the stack
		mov		param2, [data + median]
		mov		param1, [s_value]
		call	qword [s_func]				; result = Compare (value.key, data[median].key)
		mov		median, [s_med]				; get "median" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		nsize, [s_nsize]			; get "nsize" variable from the stack
		cmp		result, 0					; if (result == 0)
if type
		je		.undo						;     then undo tree size changes
end if
		jl		@f
;---[if result >= 0]-----------------------
		mov		next, [bptr + median + KSIZE + TROOT]
		lea		left, [median + KSIZE]		; left = median + KSIZE
		cmp		left, right
		jb		.loop1						; do while (left < right)
;---[else]---------------------------------
@@:		mov		right, median				; right = median
		cmp		left, right
		jb		.loop1						; do while (left < right)
;---[End of binary search loop]------------
		add		qword [bptr + left + TSIZE], KSIZE
		cmp		nsize, BMAX					; if (nsize == BMAX)
		je		.bsplt						;     then split branch node
.back2:	mov		node, next					; node = next
		mov		nsize, [array + next + BSIZE]
		mov		[s_node], next				; save "node" variable into the stack
		mov		[s_nsize], nsize			; save "nsize" variable into the stack
		sub		qword [s_hght], 1			; height--
		jnz		.bloop						; do while (height != 0)
;---[End of branch searching loop]---------
.leaf:	mov		right, nsize
		lea		data, [array + node + BDATA]
		xor		left, left					; left = 0
;---[Binary search loop]-------------------
.loop2:	lea		median, [left + right]
		shr		median, 1
		and		median, -KSIZE				; median = (left + right) / 2
		mov		[s_med], median				; save "median" variable into the stack
		mov		param2, [data + median]
		mov		param1, [s_value]
		call	qword [s_func]				; result = Compare (value.key, data[median].key)
		mov		median, [s_med]				; get "median" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		nsize, [s_nsize]			; get "nsize" variable from the stack
		cmp		result, 0					; if (result == 0)
if type
		je		.undo						;     then undo tree size changes
end if
		jl		@f
;---[if result >= 0]-----------------------
		lea		left, [median + KSIZE]		; left = median + KSIZE
		cmp		left, right
		jb		.loop2						; do while (left < right)
;---[else]---------------------------------
@@:		mov		right, median				; right = median
		cmp		left, right
		jb		.loop2						; do while (left < right)
;---[End of binary search loop]------------
		cmp		nsize, LMAX					; if (nsize == LMAX)
		je		.lsplt						;     then split leaf node
.back3:	movdqa	value, [s_value]
		mov		param4, left
		mov		param3, nsize
		mov		param2, node
		mov		param1, [s_this]
		mov		next, [s_next]				; restore old value of "next" variable
		mov		left, [s_left]				; restore old value of "left" variable
		mov		right, [s_right]			; restore old value of "right" variable
		mov		data, [s_data]				; restore old value of "data" variable
		mov		bptr, [s_bptr]				; restore old value of "bptr" variable
		add		stack, space				; restoring back the stack pointer
		jmp		LeafInsert					; call this.LeafInsert (node, nsize, left, value)
;---[Init b-tree]--------------------------
.init:	mov		root, [this + POOL]			; this.root = this.pool
		add		height, 1					; this.height++
		mov		result, [array + root + BROOT]
		mov		[this + HEIGHT], height		; update root height
		mov		[this + POOL], result		; this.pool = array[root].root
		mov		[this + ROOT], root			; update root node
		mov		qword [array + root + BROOT], EMPTY
		mov		qword [array + root + BSIZE], 0
		jmp		.back1						; go back
;---[Check size of leaf node]--------------
.lsize:	xor		left, left					; left = 0
		test	nsize, nsize				; if (nsize == 0)
		jz		.back3						;     then go to insert branch
		cmp		nsize, LMAX					; if (nsize != LMAX)
		jne		.leaf						;     then go to leaf branch
;---[Create new root node]-----------------
		mov		root, [this + POOL]			; this.root = this.pool
		add		height, 1					; this.height++
		mov		result, [array + root + BROOT]
		mov		[this + HEIGHT], height		; update root height
		mov		[this + POOL], result		; this.pool = array[root].root
		mov		[this + ROOT], root			; update root node
		mov		qword [array + root + BROOT], EMPTY
		mov		qword [array + root + BSIZE], 0
		mov		[array + root + BPTR + TROOT], node
		mov		[array + root + BPTR + TSIZE], size
		mov		[array + node + BROOT], root
		jmp		.leaf						; go back
;---[Create new root node]-----------------
.nroot:	mov		root, [this + POOL]			; this.root = this.pool
		add		height, 1					; this.height++
		mov		result, [array + root + BROOT]
		mov		[this + HEIGHT], height		; update root height
		mov		[this + POOL], result		; this.pool = array[root].root
		mov		[this + ROOT], root			; update root node
		mov		qword [array + root + BROOT], EMPTY
		mov		qword [array + root + BSIZE], 0
		mov		[array + root + BPTR + TROOT], node
		mov		[array + root + BPTR + TSIZE], size
		mov		[array + node + BROOT], root
		jmp		.bloop						; go back
;---[Correct tree size]--------------------
if type = 1
.undo:	mov		result, [array + node + BROOT]
		xor		param4, param4
		mov		param3, IMASK				; load index mask
		and		param3, result				; tindex = array[node].root & IMASK
		mov		param2, NMASK				; load node mask
		and		param2, result				; tnode = array[node].root & NMASK
		mov		param1, [s_this]
		mov		next, [s_next]				; restore old value of "next" variable
		mov		left, [s_left]				; restore old value of "left" variable
		mov		right, [s_right]			; restore old value of "right" variable
		mov		data, [s_data]				; restore old value of "data" variable
		mov		bptr, [s_bptr]				; restore old value of "bptr" variable
		add		stack, space				; restoring back the stack pointer
		jmp		CorrectSize					; call this.CorrectSize (tnode, tindex, false)
else if type = 2
.undo:	mov		odata, [s_odata]			; get "odata" variable from the stack
		movdqa	value, [data + median]
		movdqu	[odata], value				; odata[0] = data[median]
		movdqa	value, [s_value]
		movdqa	[data + median], value		; data[median] = pdata[0]
		mov		result, [array + node + BROOT]
		mov		param4, 1
		mov		param3, IMASK				; load index mask
		and		param3, result				; tindex = array[node].root & IMASK
		mov		param2, NMASK				; load node mask
		and		param2, result				; tnode = array[node].root & NMASK
		mov		param1, [s_this]
		mov		next, [s_next]				; restore old value of "next" variable
		mov		left, [s_left]				; restore old value of "left" variable
		mov		right, [s_right]			; restore old value of "right" variable
		mov		data, [s_data]				; restore old value of "data" variable
		mov		bptr, [s_bptr]				; restore old value of "bptr" variable
		add		stack, space				; restoring back the stack pointer
		jmp		CorrectSize					; call this.CorrectSize (tnode, tindex, true)
end if
;---[Split branch node]--------------------
.bsplt:	mov		param4, [s_hght]
		mov		param3, left
		mov		param2, node
		mov		param1, [s_this]
		call	BranchSplit					; call this.BranchSplit (node, left, level)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		jmp		.back2						; go back
;---[Split leaf node]----------------------
.lsplt:	mov		param4, [s_hght]
		mov		param3, left
		mov		param2, node
		mov		param1, [s_this]
		call	LeafSplit					; call this.LeafSplit (node, left, level)
		movdqa	value, [s_value]
		mov		param4, res2
		mov		param3, LMIN
		mov		param2, res1
		mov		param1, [s_this]
		mov		next, [s_next]				; restore old value of "next" variable
		mov		left, [s_left]				; restore old value of "left" variable
		mov		right, [s_right]			; restore old value of "right" variable
		mov		data, [s_data]				; restore old value of "data" variable
		mov		bptr, [s_bptr]				; restore old value of "bptr" variable
		add		stack, space				; restoring back the stack pointer
		jmp		LeafInsert					; call this.LeafInsert (node, nsize, left, value)
}
InsertCoreMulti:	INSERT_CORE	0
InsertCoreUnique:	INSERT_CORE	1
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INSERT_ELEMENT	Func
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
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

;==============================================================================;
;       Leaf operations                                                        ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Delete element from the leaf node                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
LeafDelete:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
node	equ		rsi							; node index
size	equ		rdx							; node size
pos		equ		rcx							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
tnode	equ		r9							; index of the top node
tindex	equ		r10							; subtree position in the top node
root	equ		result						; index of subtree root node
iter	equ		tnode						; iterator value
iter1	equ		tindex						; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_node	equ		stack + 2 * 8				; stack position of "node" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_pos	equ		stack + 4 * 8				; stack position of "pos" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Remove element from the node]---------
		mov		[array + node + BSIZE], size
		add		node, pos					; node += pos
		neg		pos							; pos = -pos
		lea		param1, [array + node + BDATA]
		lea		param2, [pos + size]
		call	LeafDeleteCore				; call LeafDeleteCore (array[node].data + pos, size - pos)
;---[Correct tree size]--------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		root, [array + node + BROOT]
		mov		tnode, NMASK				; load node mask
		and		tnode, root					; tnode = array[node].root & NMASK
		mov		tindex, IMASK				; load index mask
		and		tindex, root				; tindex = array[node].root & IMASK
		mov		param3, tindex
		mov		param2, tnode
		call	CorrectSize					; call this.CorrectSize (tnode, tindex)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		cmp		qword [s_size], 0			; if (size == 0)
		jz		.free						;     then free leaf node
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then check iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then check iterator position
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
@@:		mov		param3, KSIZE
		lea		param2, [iter - KSIZE]
		mov		param1, array
		call	GoNext						; fwd = GoNext (array, iter - KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
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
@@:		mov		param3, KSIZE
		lea		param2, [iter + KSIZE]
		mov		param1, array
		call	GoPrev						; bwd = GoPrev (array, iter + KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		[this + BWD], result		; update iterator position
		jmp		.back2						; go back
;---[Set tree properties]------------------
.free:	sub		qword [this + HEIGHT], 1	; this.height--
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + ROOT], EMPTY	; this.root = EMPTY
;---[Free node]----------------------------
		mov		result, [this + POOL]		; array[node].root = this.pool
		mov		[array + node + BROOT], result
		mov		[this + POOL], node			; this.pool = node
		mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Replace element in the left leaf node                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
LeafReplaceLeft:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
tnode	equ		rsi							; index of the top node
tindex	equ		rdx							; subtree position in the top node
lnode	equ		rcx							; left node index
rnode	equ		r8							; right node index
size	equ		r9							; node size
pos		equ		r10							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
iter	equ		size						; iterator value
iter1	equ		pos							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
lval	equ		array						; iterator level value
median	equ		xmm0						; median value
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_tnode	equ		stack + 2 * 8				; stack position of "tnode" variable
s_tind	equ		stack + 3 * 8				; stack position of "tindex" variable
s_lnode	equ		stack + 4 * 8				; stack position of "lnode" variable
s_rnode	equ		stack + 5 * 8				; stack position of "rnode" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
s_pos	equ		stack + 7 * 8				; stack position of "pos" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_tnode], tnode			; save "tnode" variable into the stack
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		mov		[s_lnode], lnode			; save "lnode" variable into the stack
		mov		[s_rnode], rnode			; save "rnode" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Get median element]-------------------
		add		tnode, array
		movdqa	median, [tnode + tindex + BDATA]
;---[Correct root node]--------------------
		add		lnode, array
		add		lnode, size
		movdqa	temp, [lnode + BDATA]
		movdqa	[tnode + BDATA], temp		; array[tnode].data[tindex] = array[lnode].data[size]
;---[Replace element in the node]----------
		add		rnode, pos					; rnode += pos
		mov		param2, pos
		lea		param1, [array + rnode + BDATA]
		call	LeafReplaceLeftCore			; call LeafReplaceLeftCore (array[rnode].data + pos, pos, median)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		[array + lnode + BSIZE], size
;---[Correct tree size]--------------------
		mov		param3, [s_tind]
		mov		param2, [s_tnode]
		mov		param1, [s_this]
		call	CorrectSize					; call this.CorrectSize (tnode, tindex)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		tnode, [s_tnode]			; get "tnode" variable from the stack
		mov		tindex, [s_tind]			; get "tindex" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct backward iterator]------------
		mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.btop						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then check iterator position
;---[Correct forward iterator]-------------
.back1:	mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.ftop						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then check iterator position
;---[Normal exit]--------------------------
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct backward iterator branch]-----
.btop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, IMASK					; load index mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [rnode + lval - 1]
		cmp		ival, tindex				; if (ival == tindex)
		cmove	iter, iter1					;     iter = rnode + lval - 1
		mov		[this + BWD], iter			; update iterator position
		jmp		.back1						; go back
.bleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, IMASK					; load index mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		add		iter1, lval
		cmp		ival, [s_size]				; if (ival == size)
		cmove	iter, iter1					;     iter = tnode + tindex + 1
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
.ftop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, IMASK					; load index mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [rnode + lval - 1]
		cmp		ival, tindex				; if (ival == tindex)
		cmove	iter, iter1					;     iter = rnode + lval - 1
		mov		[this + FWD], iter			; update iterator position
		jmp		.back2						; go back
.fleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, IMASK					; load index mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		add		iter1, lval
		cmp		ival, [s_size]				; if (ival == size)
		cmove	iter, iter1					;     iter = tnode + tindex + 1
		mov		[this + FWD], iter			; update iterator position
		jmp		.back2						; go back
.frght:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter + KSIZE]
		cmp		ival, [s_pos]				; if (ival <= pos)
		cmovbe	iter, iter1					;    iter = iter + KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		cmp		ival, LMIN - KSIZE			; if (ival > LMIN - KSIZE)
		ja		@f							;     then go to next element
		mov		[this + FWD], iter			; update iterator position
		jmp		.back2						; go back
@@:		mov		param3, KSIZE
		lea		param2, [iter - KSIZE]
		mov		param1, [s_array]
		call	GoNext						; fwd = GoNext (array, iter - KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + FWD], result		; update iterator position
		jmp		.back2						; go back

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Replace element in the right leaf node                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
LeafReplaceRight:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
tnode	equ		rsi							; index of the top node
tindex	equ		rdx							; subtree position in the top node
lnode	equ		rcx							; left node index
rnode	equ		r8							; right node index
size	equ		r9							; node size
pos		equ		r10							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
iter	equ		size						; iterator value
iter1	equ		pos							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
lval	equ		array						; iterator level value
median	equ		xmm0						; median value
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_tnode	equ		stack + 2 * 8				; stack position of "tnode" variable
s_tind	equ		stack + 3 * 8				; stack position of "tindex" variable
s_lnode	equ		stack + 4 * 8				; stack position of "lnode" variable
s_rnode	equ		stack + 5 * 8				; stack position of "rnode" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
s_pos	equ		stack + 7 * 8				; stack position of "pos" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_tnode], tnode			; save "tnode" variable into the stack
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		mov		[s_lnode], lnode			; save "lnode" variable into the stack
		mov		[s_rnode], rnode			; save "rnode" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Get median element]-------------------
		add		tnode, array
		movdqa	median, [tnode + tindex + BDATA]
;---[Correct root node]--------------------
		add		rnode, array
		movdqa	temp, [rnode + BDATA]
		movdqa	[tnode + BDATA], temp		; array[tnode].data[tindex] = array[rnode].data[0]
;---[Replace element in the node]----------
		add		lnode, pos					; lnode += pos
		neg		pos							; pos = -pos
		lea		param2, [pos + LMIN - KSIZE]
		lea		param1, [array + lnode + BDATA]
		call	LeafReplaceRightCore		; call LeafReplaceRightCore (array[lnode].data + pos, LMIN - KSIZE - pos, median)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		[array + rnode + BSIZE], size
		mov		param2, size
		lea		param1, [array + rnode + BDATA]
		call	LeafDeleteCore				; call LeafDeleteCore (array[rnode].data, size)
;---[Correct tree size]--------------------
		mov		param3, [s_tind]
		add		param3, KSIZE
		mov		param2, [s_tnode]
		mov		param1, [s_this]
		call	CorrectSize					; call this.CorrectSize (tnode, tindex + KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		tnode, [s_tnode]			; get "tnode" variable from the stack
		mov		tindex, [s_tind]			; get "tindex" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.ftop						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then check iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.btop						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then check iterator position
;---[Normal exit]--------------------------
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator branch]------
.ftop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [lnode + lval + LMIN - KSIZE - 1]
		cmp		ival, tindex				; if (ival == tindex)
		cmove	iter, iter1					;     iter = lnode + lval + LMIN - KSIZE - 1
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
.frght:	sub		iter, KSIZE					; iter -= KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		add		iter1, lval
		cmp		ival, [s_size]				; if (ival > size)
		cmova	iter, iter1					;    iter = tnode + tindex + lval + 1
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
.btop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [lnode + lval + LMIN - KSIZE - 1]
		cmp		ival, tindex				; if (ival == tindex)
		cmove	iter, iter1					;     iter = lnode + lval + LMIN - KSIZE - 1
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
.brght:	sub		iter, KSIZE					; iter -= KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		add		iter1, lval
		cmp		ival, [s_size]				; if (ival > size)
		cmova	iter, iter1					;    iter = tnode + tindex + lval + 1
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
.bleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival >= pos)
		cmovae	iter, iter1					;     iter = iter - KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		cmp		ival, LMIN - KSIZE			; if (ival > LMIN - KSIZE)
		ja		@f							;     then go to next element
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
@@:		mov		param3, KSIZE
		lea		param2, [iter + KSIZE]
		mov		param1, [s_array]
		call	GoPrev						; bwd = GoPrev (array, iter + KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + BWD], result		; update iterator position
		jmp		.back2						; go back

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Join two leaf nodes                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
LeafJoin:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
tnode	equ		rsi							; index of the top node
tindex	equ		rdx							; subtree position in the top node
lnode	equ		rcx							; left node index
rnode	equ		r8							; right node index
node	equ		r9							; node index
pos		equ		r10							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
bsize	equ		result						; size of subtree branch
lsize	equ		result						; size of left node
rsize	equ		node						; size of right node
iter	equ		node						; iterator value
iter1	equ		pos							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
lval	equ		pos							; iterator level value
median	equ		xmm0						; median value
stack	equ		rsp							; stack pointer
s_med	equ		stack + 0 * 8				; stack position of "median" variable
s_this	equ		stack + 2 * 8				; stack position of "this" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_tnode	equ		stack + 4 * 8				; stack position of "tnode" variable
s_tind	equ		stack + 5 * 8				; stack position of "tindex" variable
s_lnode	equ		stack + 6 * 8				; stack position of "lnode" variable
s_rnode	equ		stack + 7 * 8				; stack position of "rnode" variable
s_pos	equ		stack + 8 * 8				; stack position of "pos" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_tnode], tnode			; save "tnode" variable into the stack
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		mov		[s_lnode], lnode			; save "lnode" variable into the stack
		mov		[s_rnode], rnode			; save "rnode" variable into the stack
;---[Correct position]---------------------
		lea		result, [pos + LMIN + KSIZE]; result = pos + LMIN + KSIZE
		cmp		node, lnode					; if (node == lnode)
		cmove	result, pos					;     result = pos
		mov		[s_pos], result				; save "pos" variable into the stack
;---[Get median element]-------------------
		add		tnode, array
		movdqa	median, [tnode + tindex + BDATA]
		mov		bsize, [tnode + tindex + KSIZE + BPTR + TSIZE]
		movdqa	[s_med], median				; save "median" variable into the stack
;---[Correct root node]--------------------
		add		[tnode + tindex + BPTR + TSIZE], bsize
;---[Join nodes]---------------------------
		mov		qword [array + node + BSIZE], LMIN - KSIZE
		add		node, pos					; node += pos
		neg		pos							; pos = -pos
		lea		param2, [pos + LMIN - KSIZE]
		lea		param1, [array + node + BDATA]
		call	LeafDeleteCore				; call LeafDeleteCore (array[node].data + pos, LMIN - KSIZE - pos)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		movdqa	median, [s_med]				; get "median" variable from the stack
		mov		lsize, [array + lnode + BSIZE]
		mov		rsize, [array + rnode + BSIZE]
		mov		qword [array + lnode + BSIZE], LMAX - KSIZE
		add		lnode, lsize
		mov		param3, rsize
		lea		param2, [array + rnode + BDATA]
		lea		param1, [array + lnode + BDATA]
		call	LeafJoinCore				; call LeafJoinCore (array[lnode].data + lsize, array[rnode].data, rsize, median)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		tnode, [s_tnode]			; get "tnode" variable from the stack
		mov		tindex, [s_tind]			; get "tindex" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.ftop						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then check iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.btop						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then check iterator position
;---[Free node]----------------------------
.back2:	mov		result, [this + POOL]		; array[rnode].root = this.pool
		mov		[array + rnode + BROOT], result
		mov		[this + POOL], rnode		; this.pool = rnode
;---[Delete median from top node]----------
		add		stack, space				; restoring back the stack pointer
		jmp		MergeUp						; call this.MergeUp (tnode, tindex)
;---[Correct forward iterator branch]------
.ftop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & LMASK
		lea		iter, [lnode + lval + LMIN - 1]
		cmp		ival, tindex				; if (ival == tindex)
		je		.fleft						;     then check left node
		jmp		.back1						; go back
.frght:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & LMASK
		lea		iter, [lnode + ival + LMIN + KSIZE]
		add		iter, lval					; iter = lnode + ival + lval + LMIN + KSIZE
.fleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival > pos)
		cmova	iter, iter1					;     iter = iter - KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		cmp		ival, LMAX - KSIZE			; if (ival >= LMAX - KSIZE)
		jae		@f							;     then go to next element
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
@@:		mov		rsize, [array + rnode + BSIZE]
		mov		param3, KSIZE
		lea		param2, [rnode + rsize - KSIZE]
		mov		param1, array
		call	GoNext						; fwd = GoNext (array, rnode + rsize - KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		tnode, [s_tnode]			; get "tnode" variable from the stack
		mov		tindex, [s_tind]			; get "tindex" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		mov		[this + FWD], result		; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.btop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & LMASK
		lea		iter, [lnode + lval + LMIN - 1]
		cmp		ival, tindex				; if (ival == tindex)
		je		.bleft						;     then check left node
		jmp		.back2						; go back
.brght:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & LMASK
		lea		iter, [lnode + ival + LMIN + KSIZE]
		add		iter, lval					; iter = lnode + ival + lval + LMIN + KSIZE
.bleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival >= pos)
		cmovae	iter, iter1					;     iter = iter - KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		cmp		ival, LMAX - KSIZE			; if (ival > LMAX - KSIZE)
		ja		@f							;     then go to next element
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
@@:		mov		param3, KSIZE
		mov		param2, lnode
		mov		param1, array
		call	GoPrev						; bwd = GoPrev (array, lnode, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		tnode, [s_tnode]			; get "tnode" variable from the stack
		mov		tindex, [s_tind]			; get "tindex" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		mov		[this + BWD], result		; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Branch operations                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Delete element from the branch node                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
BranchDelete:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
node	equ		rsi							; node index
size	equ		rdx							; node size
pos		equ		rcx							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
tnode	equ		r9							; index of the top node
tindex	equ		r10							; subtree position in the top node
root	equ		result						; index of subtree root node
iter	equ		tnode						; iterator value
iter1	equ		tindex						; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_node	equ		stack + 2 * 8				; stack position of "node" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_pos	equ		stack + 4 * 8				; stack position of "pos" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Remove element from the node]---------
		mov		[array + node + BSIZE], size
		add		node, pos					; node += pos
		neg		pos							; pos = -pos
		lea		param5, [pos + size]
		lea		param4, [node + KSIZE]
		mov		param3, array
		lea		param1, [array + node + BDATA]
		lea		param2, [array + node + KSIZE + BPTR]
		call	BranchDeleteCore			; call BranchDeleteCore (array[node].data + pos, array[node].bptr + pos + KSIZE, array, node + pos + KSIZE, size - pos)
;---[Correct tree size]--------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		root, [array + node + BROOT]
		mov		tnode, NMASK				; load node mask
		and		tnode, root					; tnode = array[node].root & NMASK
		mov		tindex, IMASK				; load index mask
		and		tindex, root				; tindex = array[node].root & IMASK
		mov		param3, tindex
		mov		param2, tnode
		call	CorrectSize					; call this.CorrectSize (tnode, tindex)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		cmp		qword [s_size], 0			; if (size == 0)
		jz		.free						;     then free leaf node
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then check iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then check iterator position
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
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.bwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival > pos)
		cmova	iter, iter1					;     iter = iter - KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
;---[Set tree properties]------------------
.free:	sub		qword [this + HEIGHT], 1	; this.height--
		mov		result, [array + node + BPTR + TROOT]
		mov		qword [array + result + BROOT], EMPTY
		mov		qword [this + ROOT], result	; this.root = array[node].bptr[0].root
;---[Free node]----------------------------
		mov		result, [this + POOL]		; array[node].root = this.pool
		mov		[array + node + BROOT], result
		mov		[this + POOL], node			; this.pool = node
		mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Replace element in the left branch node                                ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
BranchReplaceLeft:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
tnode	equ		rsi							; index of the top node
tindex	equ		rdx							; subtree position in the top node
lnode	equ		rcx							; left node index
rnode	equ		r8							; right node index
size	equ		r9							; node size
pos		equ		r10							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
broot	equ		size						; pointer to subtree tree root
bsize	equ		result						; size of subtree
iter	equ		size						; iterator value
iter1	equ		pos							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
lval	equ		array						; iterator level value
median	equ		xmm0						; median value
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_tnode	equ		stack + 2 * 8				; stack position of "tnode" variable
s_tind	equ		stack + 3 * 8				; stack position of "tindex" variable
s_lnode	equ		stack + 4 * 8				; stack position of "lnode" variable
s_rnode	equ		stack + 5 * 8				; stack position of "rnode" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
s_pos	equ		stack + 7 * 8				; stack position of "pos" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_tnode], tnode			; save "tnode" variable into the stack
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		mov		[s_lnode], lnode			; save "lnode" variable into the stack
		mov		[s_rnode], rnode			; save "rnode" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Get median element]-------------------
		add		tnode, array
		movdqa	median, [tnode + tindex + BDATA]
;---[Correct root node]--------------------
		add		lnode, array
		add		lnode, size
		movdqa	temp, [lnode + BDATA]
		mov		broot, [lnode + KSIZE + BPTR + TROOT]
		mov		bsize, [lnode + KSIZE + BPTR + TSIZE]
		movdqa	[tnode + tindex + BDATA], temp
		sub		[tnode + tindex + BPTR + TSIZE], bsize
		add		[tnode + tindex + KSIZE + BPTR + TSIZE], bsize
;---[Replace element in the node]----------
		add		rnode, pos					; rnode += pos
		lea		param1, [array + rnode + BDATA]
		lea		param2, [array + rnode + KSIZE + BPTR]
		mov		param3, array
		lea		param4, [rnode + KSIZE]
		mov		param5, pos
		mov		param6, broot
		mov		param7, bsize
		call	BranchReplaceLeftCore		; call BranchReplaceLeftCore (array[rnode].data + pos, array[rnode].bptr + pos + KSIZE, array, rnode + pos + KSIZE, pos, ptr, median)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		[array + lnode + BSIZE], size
;---[Correct tree size]--------------------
		mov		param3, [s_tind]
		mov		param2, [s_tnode]
		mov		param1, [s_this]
		call	CorrectSize					; call this.CorrectSize (tnode, tindex)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		tnode, [s_tnode]			; get "tnode" variable from the stack
		mov		tindex, [s_tind]			; get "tindex" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct backward iterator]------------
		mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.btop						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then check iterator position
;---[Correct forward iterator]-------------
.back1:	mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.ftop						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then check iterator position
;---[Normal exit]--------------------------
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct backward iterator branch]-----
.btop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, IMASK					; load index mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [rnode + lval - 1]
		cmp		ival, tindex				; if (ival == tindex)
		cmove	iter, iter1					;     iter = rnode + lval - 1
		mov		[this + BWD], iter			; update iterator position
		jmp		.back1						; go back
.bleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, IMASK					; load index mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		add		iter1, lval
		cmp		ival, [s_size]				; if (ival == size)
		cmove	iter, iter1					;     iter = tnode + tindex + 1
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
.ftop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, IMASK					; load index mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [rnode + lval - 1]
		cmp		ival, tindex				; if (ival == tindex)
		cmove	iter, iter1					;     iter = rnode + lval - 1
		mov		[this + FWD], iter			; update iterator position
		jmp		.back2						; go back
.fleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, IMASK					; load index mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		add		iter1, lval
		cmp		ival, [s_size]				; if (ival == size)
		cmove	iter, iter1					;     iter = tnode + tindex + 1
		mov		[this + FWD], iter			; update iterator position
		jmp		.back2						; go back
.frght:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter + KSIZE]
		cmp		ival, [s_pos]				; if (ival < pos)
		cmovb	iter, iter1					;    iter = iter + KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back2						; go back

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Replace element in the right branch node                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
BranchReplaceRight:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
tnode	equ		rsi							; index of the top node
tindex	equ		rdx							; subtree position in the top node
lnode	equ		rcx							; left node index
rnode	equ		r8							; right node index
size	equ		r9							; node size
pos		equ		r10							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
broot	equ		size						; pointer to subtree tree root
bsize	equ		result						; size of subtree
iter	equ		size						; iterator value
iter1	equ		pos							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
lval	equ		array						; iterator level value
median	equ		xmm0						; median value
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_tnode	equ		stack + 2 * 8				; stack position of "tnode" variable
s_tind	equ		stack + 3 * 8				; stack position of "tindex" variable
s_lnode	equ		stack + 4 * 8				; stack position of "lnode" variable
s_rnode	equ		stack + 5 * 8				; stack position of "rnode" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
s_pos	equ		stack + 7 * 8				; stack position of "pos" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_tnode], tnode			; save "tnode" variable into the stack
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		mov		[s_lnode], lnode			; save "lnode" variable into the stack
		mov		[s_rnode], rnode			; save "rnode" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Get median element]-------------------
		add		tnode, array
		movdqa	median, [tnode + tindex + BDATA]
;---[Correct root node]--------------------
		add		rnode, array
		movdqa	temp, [rnode + BDATA]
		mov		broot, [rnode + BPTR + TROOT]
		mov		bsize, [rnode + BPTR + TSIZE]
		movdqa	[tnode + tindex + BDATA], temp
		add		[tnode + tindex + BPTR + TSIZE], bsize
		sub		[tnode + tindex + KSIZE + BPTR + TSIZE], bsize
;---[Replace element in the node]----------
		add		lnode, pos					; lnode += pos
		neg		pos							; pos = -pos
		lea		param1, [array + lnode + BDATA]
		lea		param2, [array + lnode + KSIZE + BPTR]
		mov		param3, array
		lea		param4, [lnode + KSIZE]
		lea		param5, [pos + BMIN - KSIZE]
		mov		param6, broot
		mov		param7, bsize
		call	BranchReplaceRightCore		; call BranchReplaceRightCore (array[lnode].data + pos, array[lnode].bptr + pos + KSIZE, array, lnode + pos + KSIZE, BMIN - KSIZE - pos, proot, psize, median)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		[array + rnode + BSIZE], size
		lea		param1, [array + rnode + BDATA]
		lea		param2, [array + rnode + BPTR]
		mov		param3, array
		mov		param4, rnode
		lea		param5, [size + KSIZE]
		call	BranchDeleteCore			; call BranchDeleteCore (array[rnode].data, array[rnode].bptr, array, rnode, size + KSIZE)
;---[Correct tree size]--------------------
		mov		param3, [s_tind]
		add		param3, KSIZE
		mov		param2, [s_tnode]
		mov		param1, [s_this]
		call	CorrectSize					; call this.CorrectSize (tnode, tindex + KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		tnode, [s_tnode]			; get "tnode" variable from the stack
		mov		tindex, [s_tind]			; get "tindex" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.ftop						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then check iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.btop						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then check iterator position
;---[Normal exit]--------------------------
.back2:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator branch]------
.ftop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [lnode + lval + BMIN - KSIZE - 1]
		cmp		ival, tindex				; if (ival == tindex)
		cmove	iter, iter1					;     iter = lnode + lval + BMIN - KSIZE - 1
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
.frght:	sub		iter, KSIZE					; iter -= KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		add		iter1, lval
		cmp		ival, [s_size]				; if (ival > size)
		cmova	iter, iter1					;    iter = tnode + tindex + lval + 1
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
.btop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [lnode + lval + BMIN - KSIZE - 1]
		cmp		ival, tindex				; if (ival == tindex)
		cmove	iter, iter1					;     iter = lnode + lval + BMIN - KSIZE - 1
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
.brght:	sub		iter, KSIZE					; iter -= KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & IMASK
		lea		iter1, [tnode + tindex + 1]
		add		iter1, lval
		cmp		ival, [s_size]				; if (ival > size)
		cmova	iter, iter1					;    iter = tnode + tindex + lval + 1
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
.bleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival > pos)
		cmova	iter, iter1					;     iter = iter - KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Join two branch nodes                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
BranchJoin:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
tnode	equ		rsi							; index of the top node
tindex	equ		rdx							; subtree position in the top node
lnode	equ		rcx							; left node index
rnode	equ		r8							; right node index
node	equ		r9							; node index
pos		equ		r10							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
bsize	equ		result						; size of subtree branch
lsize	equ		result						; size of left node
rsize	equ		node						; size of right node
iter	equ		node						; iterator value
iter1	equ		pos							; new iterator value
nval	equ		result						; iterator node value
ival	equ		result						; iterator index value
lval	equ		pos							; iterator level value
median	equ		xmm0						; median value
stack	equ		rsp							; stack pointer
s_med	equ		stack + 0 * 8				; stack position of "median" variable
s_this	equ		stack + 2 * 8				; stack position of "this" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_tnode	equ		stack + 4 * 8				; stack position of "tnode" variable
s_tind	equ		stack + 5 * 8				; stack position of "tindex" variable
s_lnode	equ		stack + 6 * 8				; stack position of "lnode" variable
s_rnode	equ		stack + 7 * 8				; stack position of "rnode" variable
s_pos	equ		stack + 8 * 8				; stack position of "pos" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_tnode], tnode			; save "tnode" variable into the stack
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		mov		[s_lnode], lnode			; save "lnode" variable into the stack
		mov		[s_rnode], rnode			; save "rnode" variable into the stack
;---[Correct position]---------------------
		lea		result, [pos + BMIN + KSIZE]; result = pos + BMIN + KSIZE
		cmp		node, lnode					; if (node == lnode)
		cmove	result, pos					;     result = pos
		mov		[s_pos], result				; save "pos" variable into the stack
;---[Get median element]-------------------
		add		tnode, array
		movdqa	median, [tnode + tindex + BDATA]
		mov		bsize, [tnode + tindex + KSIZE + BPTR + TSIZE]
		movdqa	[s_med], median				; save "median" variable into the stack
;---[Correct root node]--------------------
		add		[tnode + tindex + BPTR + TSIZE], bsize
;---[Join nodes]---------------------------
		mov		qword [array + node + BSIZE], BMIN - KSIZE
		add		node, pos					; node += pos
		neg		pos							; pos = -pos
		lea		param5, [pos + BMIN - KSIZE]
		lea		param4, [node + KSIZE]
		mov		param3, array
		lea		param2, [array + node + KSIZE + BPTR]
		lea		param1, [array + node + BDATA]
		call	BranchDeleteCore			; call BranchDeleteCore (array[node].data + pos, array[node].bptr + pos + KSIZE, array, node + pos + KSIZE, BMIN - KSIZE - pos)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		movdqa	median, [s_med]				; get "median" variable from the stack
		mov		lsize, [array + lnode + BSIZE]
		mov		rsize, [array + rnode + BSIZE]
		mov		qword [array + lnode + BSIZE], BMAX - KSIZE
		add		lnode, lsize
		mov		param7, rsize
		mov		param6, lnode
		lea		param1, [array + lnode + BDATA]
		lea		param2, [array + lnode + BPTR]
		lea		param3, [array + rnode + BDATA]
		lea		param4, [array + rnode + BPTR]
		mov		param5, array
		call	BranchJoinCore				; call BranchJoinCore (array[lnode].data + lsize, array[lnode].bptr + lsize, array[rnode].data, array[rnode].bptr, array, lnode + lsize, rsize, median)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		tnode, [s_tnode]			; get "tnode" variable from the stack
		mov		tindex, [s_tind]			; get "tindex" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct forward iterator]-------------
		mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.ftop						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then check iterator position
;---[Correct backward iterator]------------
.back1:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, tnode					; if (nval == tnode)
		je		.btop						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then check iterator position
;---[Free node]----------------------------
.back2:	mov		result, [this + POOL]		; array[rnode].root = this.pool
		mov		[array + rnode + BROOT], result
		mov		[this + POOL], rnode		; this.pool = rnode
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct forward iterator branch]------
.ftop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & LMASK
		lea		iter, [lnode + lval + BMIN - 1]
		cmp		ival, tindex				; if (ival == tindex)
		je		.fleft						;     then check left node
		jmp		.back1						; go back
.frght:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & LMASK
		lea		iter, [lnode + ival + BMIN + KSIZE]
		add		iter, lval					; iter = lnode + ival + lval + BMIN + KSIZE
.fleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival > pos)
		cmova	iter, iter1					;     iter = iter - KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back1						; go back
;---[Correct backward iterator branch]-----
.btop:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & LMASK
		lea		iter, [lnode + lval + BMIN - 1]
		cmp		ival, tindex				; if (ival == tindex)
		je		.bleft						;     then check left node
		jmp		.back2						; go back
.brght:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		lval, LMASK					; load level mask
		and		lval, iter					; lval = iter & LMASK
		lea		iter, [lnode + ival + BMIN + KSIZE]
		add		iter, lval					; iter = lnode + ival + lval + BMIN + KSIZE
.bleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival > pos)
		cmova	iter, iter1					;     iter = iter - KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back

;==============================================================================;
;       Merge upward branch nodes                                              ;
;==============================================================================;
MergeUp:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
node	equ		rsi							; index of the node
index	equ		rdx							; index of element in the node
;---[Internal variables]-------------------
root	equ		rcx							; tree root
nsize	equ		r8							; node size
array	equ		r9							; pointer to array of nodes
tnode	equ		r10							; index of the top node
tindex	equ		r11							; subtree position in the top node
lnode	equ		root						; left node index
rnode	equ		nsize						; right node index
lsize	equ		array						; left node size
rsize	equ		array						; right node size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_tnode	equ		stack + 2 * 8				; stack position of "tnode" variable
s_tind	equ		stack + 3 * 8				; stack position of "tindex" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
;---[Get top node]-------------------------
.loop:	mov		root, [array + node + BROOT]; root = array[node].root
		mov		nsize, [array + node + BSIZE]
		sub		nsize, KSIZE				; nsize = array[node].size - KSIZE
		mov		tnode, NMASK				; load node mask
		and		tnode, root					; tnode = root & NMASK
		mov		tindex, IMASK				; load index mask
		and		tindex, root				; tindex = root & IMASK
		mov		[s_tnode], tnode			; save "tnode" variable into the stack
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		cmp		nsize, BMIN					; if (nsize >= BMIN)
		jae		.del						;     then delete element
		cmp		tnode, EMPTY				; if (tnode == EMPTY)
		je		.del						;     then delete element
		sub		tindex, KSIZE				; if (tindex < KSIZE)
		jb		.else						;     then go to else branch
;---[if tindex >= KSIZE]-------------------
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		add		tnode, tindex
		mov		lnode, [array + tnode + BPTR + TROOT]
		mov		lsize, [array + lnode + BSIZE]
		sub		lsize, KSIZE				; lsize = array[lnode].size - KSIZE
		cmp		lsize, BMIN					; if (lsize >= BMIN)
		jae		.left						;     then replace element in the left node
		mov		param7, index
		mov		param6, node
		mov		param5, node
		mov		param3, [s_tind]
		mov		param2, [s_tnode]
		call	BranchJoin					; call this.BranchJoin (tnode, tindex, lnode, node, node, index)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_tnode]				; get "tnode" variable from the stack
		mov		index, [s_tind]				; get "tindex" variable from the stack
		jmp		.loop						; do while (true)
;---[else]---------------------------------
.else:	mov		rnode, [array + tnode + KSIZE + BPTR + TROOT]
		mov		rsize, [array + rnode + BSIZE]
		sub		rsize, KSIZE				; rsize = array[rnode].size - KSIZE
		cmp		rsize, BMIN					; if (rsize >= BMIN)
		jae		.right						;     then replace element in the right node
		mov		param7, index
		mov		param6, node
		mov		param4, node
		mov		param3, [s_tind]
		mov		param2, [s_tnode]
		call	BranchJoin					; call this.BranchJoin (tnode, tindex, node, rnode, node, index)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_tnode]				; get "tnode" variable from the stack
		mov		index, [s_tind]				; get "tindex" variable from the stack
		jmp		.loop						; do while (true)
;---[Delete element from the node]---------
.del:	mov		param4, index
		mov		param3, nsize
		mov		param2, node
		add		stack, space				; restoring back the stack pointer
		jmp		BranchDelete				; call this.BranchDelete (node, nsize, index)
;---[Replace element in the left node]-----
.left:	mov		param7, index
		mov		param5, node
		mov		param3, [s_tind]
		mov		param2, [s_tnode]
		add		stack, space				; restoring back the stack pointer
		jmp		BranchReplaceLeft			; call this.BranchReplaceLeft (tnode, tindex, lnode, node, lsize, index)
;---[Replace element in the right node]----
.right:	mov		param7, index
		mov		param4, node
		mov		param3, [s_tind]
		mov		param2, [s_tnode]
		add		stack, space				; restoring back the stack pointer
		jmp		BranchReplaceRight			; call this.BranchReplaceRight (tnode, tindex, node, rnode, rsize, index)

;==============================================================================;
;       Remove element from b-tree                                             ;
;==============================================================================;
RemoveCore:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
iter	equ		rsi							; iterator value
;---[Internal variables]-------------------
level	equ		rax							; branch level
root	equ		rcx							; tree root
nsize	equ		r8							; node size
array	equ		r9							; pointer to array of nodes
tnode	equ		r10							; index of the top node
tindex	equ		r11							; subtree position in the top node
node	equ		rdx							; index of the node
lnode	equ		root						; left node index
rnode	equ		nsize						; right node index
lsize	equ		array						; left node size
rsize	equ		array						; right node size
index	equ		iter						; index of element in the node
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_iter	equ		stack + 2 * 8				; stack position of "iter" variable
s_tnode	equ		stack + 3 * 8				; stack position of "tnode" variable
s_tind	equ		stack + 4 * 8				; stack position of "tindex" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
;---[Get node pointer]---------------------
		mov		level, LMASK				; load level mask
		and		level, iter					; level = iter & LMASK
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		and		index, IMASK				; index = iter & IMASK
;---[Get top node]-------------------------
		mov		root, [array + node + BROOT]; root = array[node].root
		mov		nsize, [array + node + BSIZE]
		sub		nsize, KSIZE				; nsize = array[node].size - KSIZE
		mov		tnode, NMASK				; load node mask
		and		tnode, root					; tnode = root & NMASK
		mov		tindex, IMASK				; load index mask
		and		tindex, root				; tindex = root & IMASK
		mov		[s_tnode], tnode			; save "tnode" variable into the stack
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		test	level, level				; if (level)
		jnz		.swap						;     then swap the element
.back1:	cmp		nsize, LMIN					; if (nsize >= LMIN)
		jae		.del						;     then delete element
		cmp		tnode, EMPTY				; if (tnode == EMPTY)
		je		.del						;     then delete element
		sub		tindex, KSIZE				; if (tindex < KSIZE)
		jb		.else						;     then go to else branch
;---[if tindex >= KSIZE]-------------------
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		add		tnode, tindex
		mov		lnode, [array + tnode + BPTR + TROOT]
		mov		lsize, [array + lnode + BSIZE]
		sub		lsize, KSIZE				; lsize = array[lnode].size - KSIZE
		cmp		lsize, LMIN					; if (lsize >= LMIN)
		jae		.left						;     then replace element in the left node
		mov		param7, index
		mov		param6, node
		mov		param5, node
		mov		param3, [s_tind]
		mov		param2, [s_tnode]
		add		stack, space				; restoring back the stack pointer
		jmp		LeafJoin					; call this.LeafJoin (tnode, tindex, lnode, node, node, index)
;---[else]---------------------------------
.else:	mov		rnode, [array + tnode + KSIZE + BPTR + TROOT]
		mov		rsize, [array + rnode + BSIZE]
		sub		rsize, KSIZE				; rsize = array[rnode].size - KSIZE
		cmp		rsize, LMIN					; if (rsize >= LMIN)
		jae		.right						;     then replace element in the right node
		mov		param7, index
		mov		param6, node
		mov		param4, node
		mov		param3, [s_tind]
		mov		param2, [s_tnode]
		add		stack, space				; restoring back the stack pointer
		jmp		LeafJoin					; call this.LeafJoin (tnode, tindex, node, rnode, node, index)
;---[Delete element from the node]---------
.del:	mov		param4, index
		mov		param2, node
		mov		param3, nsize
		add		stack, space				; restoring back the stack pointer
		jmp		LeafDelete					; call this.LeafDelete (node, nsize, index)
;---[Replace element in the left node]-----
.left:	mov		param7, index
		mov		param5, node
		mov		param3, [s_tind]
		mov		param2, [s_tnode]
		add		stack, space				; restoring back the stack pointer
		jmp		LeafReplaceLeft				; call this.LeafReplaceLeft (tnode, tindex, lnode, node, lsize, index)
;---[Replace element in the right node]----
.right:	mov		param7, index
		mov		param4, node
		mov		param3, [s_tind]
		mov		param2, [s_tnode]
		add		stack, space				; restoring back the stack pointer
		jmp		LeafReplaceRight			; call this.LeafReplaceRight (tnode, tindex, node, rnode, rsize, index)
;---[Swap element in the node]-------------
.swap:	mov		iter, [s_iter]
		cmp		iter, [this + FWD]			; if (fwd == iter)
		je		.fwd						;     then correct forward iterator
.back2:	mov		param3, KSIZE
		mov		param2, iter
		mov		param1, array
		call	GoPrev						; iter = GoPrev (array, iter, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]
;---[Extract element value]----------------
		and		result, PMASK
		and		iter, PMASK
		movdqa	temp, [array + result + BDATA]
		movdqa	[array + iter + BDATA], temp; ptr[0] = array[node].data[index]
;---[Get node pointer]---------------------
		mov		node, NMASK					; load node mask
		and		node, result				; node = iter & NMASK
		mov		index, IMASK				; load index mask
		and		index, result				; index = iter & IMASK
;---[Get top node]-------------------------
		mov		root, [array + node + BROOT]; root = array[node].root
		mov		nsize, [array + node + BSIZE]
		sub		nsize, KSIZE				; size = array[node].size - KSIZE
		mov		tnode, NMASK				; load node mask
		and		tnode, root					; tnode = root & NMASK
		mov		tindex, IMASK				; load index mask
		and		tindex, root				; tindex = root & IMASK
		mov		[s_tnode], tnode			; save "tnode" variable into the stack
		mov		[s_tind], tindex			; save "tindex" variable into the stack
		jmp		.back1						; go back
;---[Correct forward iterator]-------------
.fwd:	mov		param3, KSIZE
		mov		param2, iter
		mov		param1, array
		call	GoNext						; result = GoNext (array, fwd, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		[this + FWD], result		; update iterator position
		jmp		.back2						; go back
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
RemoveIndex:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
data	equ		rsi							; pointer to data structure
index	equ		rdx							; element index
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		rcx							; pointer to array of nodes
ptr		equ		r8							; pointer to element value
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check index]--------------------------
		shl		index, KSCALE
		cmp		[this + SIZE], index		; if (size <= index)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		param4, index
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	GetNode						; result = GetNode (array, root, height, index)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		ptr, PMASK
		and		ptr, result
		movdqa	temp, [array + ptr + BDATA]
		movdqu	[data], temp				; data[0] = array[node].data[index]
		add		stack, space				; restoring back the stack pointer
		mov		param2, result
		jmp		RemoveCore					; call this.RemoveCore (result)
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	REMOVE_ELEMENT	offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rdx							; iterator value
array	equ		rcx							; pointer to array of nodes
ptr		equ		r8							; pointer to element value
temp	equ		xmm0						; temporary register
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		ptr, PMASK
		and		ptr, iter
		movdqa	temp, [array + ptr + BDATA]
		movdqu	[data], temp				; data[0] = array[node].data[index]
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

;==============================================================================;
;       By element index                                                       ;
;==============================================================================;
macro	SET_INDEX	insfunc
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
data	equ		rsi							; pointer to data structure
index	equ		rdx							; element index
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
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
;---[Check index]--------------------------
		shl		index, KSCALE
		cmp		[this + SIZE], index		; if (size <= index)
		setnbe	status						;     return false
		jbe		.exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		param4, index
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	GetNode						; result = GetNode (array, root, height, index)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		func, [this + FUNC]			; get pointer to key compare function
		mov		[s_iter], result			; save "iter" variable into the stack
		and		result, PMASK
		add		result, [this + ARRAY]		; result += array
		mov		[s_ptr], result				; save "ptr" variable into the stack
;---[Compare keys]-------------------------
		mov		param1, [data]
		mov		param2, [result + BDATA]
		call	func						; result = Compare (data[0].key, array[index].key)
		cmp		result, 0					; if (result == 0)
		je		.skip						;     then go to skip branch
;---[Remove old key]-----------------------
		mov		param2, [s_iter]
		mov		param1, [s_this]
		call	RemoveCore					; call RemoveCore (iter)
;---[Insert new key]-----------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		movdqu	temp, [data]
		add		stack, space				; restoring back the stack pointer
		jmp		insfunc						; return this.insfunc (data[0])
;---[Skip branch]--------------------------
.skip:	mov		data, [s_data]				; get "data" variable from the stack
		mov		iter, [s_ptr]				; get "ptr" variable from the stack
		movdqu	temp, [data]				; get "data" variable from the stack
		movdqa	[iter + BDATA], temp		; array[index].data = data[0]
		mov		status, 1					; return true
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
SetIndexMulti:	SET_INDEX	InsertCoreMulti
SetIndexUnique:	SET_INDEX	InsertCoreUnique

;==============================================================================;
;       Using iterators                                                        ;
;==============================================================================;
macro	SET_ITER	insfunc, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
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
		setne	status						;     return false
		je		.exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		func, [this + FUNC]			; get pointer to key compare function
		mov		[s_iter], iter				; save "iter" variable into the stack
		and		iter, PMASK
		add		iter, [this + ARRAY]		; iter += array
		mov		[s_ptr], iter				; save "ptr" variable into the stack
;---[Compare keys]-------------------------
		mov		param1, [data]
		mov		param2, [iter + BDATA]
		call	func						; result = Compare (data[0].key, array[iter].key)
		cmp		result, 0					; if (result == 0)
		je		.skip						;     then go to skip branch
;---[Remove old key]-----------------------
		mov		param2, [s_iter]
		mov		param1, [s_this]
		call	RemoveCore					; call RemoveCore (iter)
;---[Insert new key]-----------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		movdqu	temp, [data]
		add		stack, space				; restoring back the stack pointer
		jmp		insfunc						; return this.insfunc (data[0])
;---[Skip branch]--------------------------
.skip:	mov		data, [s_data]				; get "data" variable from the stack
		mov		iter, [s_ptr]				; get "ptr" variable from the stack
		movdqa	temp, [data]				; get "data" variable from the stack
		movdqa	[iter + BDATA], temp		; array[iter].data = data[0]
		mov		status, 1					; return true
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
SetFwdMulti:	SET_ITER	InsertCoreMulti, FWD
SetBwdMulti:	SET_ITER	InsertCoreMulti, BWD
SetFwdUnique:	SET_ITER	InsertCoreUnique, FWD
SetBwdUnique:	SET_ITER	InsertCoreUnique, BWD

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;

;==============================================================================;
;       By element index                                                       ;
;==============================================================================;
GetIndex:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
data	equ		rsi							; pointer to data structure
index	equ		rdx							; element index
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check index]--------------------------
		shl		index, KSCALE
		cmp		[this + SIZE], index		; if (size <= index)
		setnbe	status						;     return false
		jbe		.exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		param4, index
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	GetNode						; result = GetNode (array, root, height, index)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		and		result, PMASK
		add		result, [this + ARRAY]
		movdqa	temp, [result + BDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		status, 1					; return true
.exit:	add		stack, space				; restoring back the stack pointer
		ret

;==============================================================================;
;       Using iterators                                                        ;
;==============================================================================;
macro	GET_ITER	offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rcx							; iterator value
temp	equ		xmm0						; temporary register
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		setne	status						;     return false
		je		.exit
;---[Normal execution branch]--------------
		and		iter, PMASK
		add		iter, [this + ARRAY]
		movdqa	temp, [iter + BDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
.exit:	ret									; return true
}
GetFwd:	GET_ITER	FWD
GetBwd:	GET_ITER	BWD

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;

;==============================================================================;
;       By element index                                                       ;
;==============================================================================;
macro	REPLACE_INDEX	insfunc
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
odata	equ		rsi							; pointer to old data structure
ndata	equ		rdx							; pointer to new data structure
index	equ		rcx							; element index
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
func	equ		r8							; compare function
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_odata	equ		stack + 1 * 8				; stack position of "odata" variable
s_ndata	equ		stack + 2 * 8				; stack position of "ndata" variable
s_iter	equ		stack + 3 * 8				; stack position of "iter" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check index]--------------------------
		shl		index, KSCALE
		cmp		[this + SIZE], index		; if (size <= index)
		setnbe	status						;     return false
		jbe		.exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_odata], odata			; save "odata" variable into the stack
		mov		[s_ndata], ndata			; save "ndata" variable into the stack
		mov		param4, index
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	GetNode						; result = GetNode (array, root, height, index)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		odata, [s_odata]			; get "odata" variable from the stack
		mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		mov		func, [this + FUNC]			; get pointer to key compare function
		mov		[s_iter], result			; save "iter" variable into the stack
		and		result, PMASK
		add		result, [this + ARRAY]		; result += array
		mov		[s_ptr], result				; save "ptr" variable into the stack
		movdqa	temp, [result + BDATA]
		movdqu	[odata], temp				; odata[0] = array[index].data
;---[Compare keys]-------------------------
		mov		param1, [ndata]
		mov		param2, [result + BDATA]
		call	func						; result = Compare (ndata[0].key, array[index].key)
		cmp		result, 0					; if (result == 0)
		je		.skip						;     then go to skip branch
;---[Remove old key]-----------------------
		mov		param2, [s_iter]
		mov		param1, [s_this]
		call	RemoveCore					; call RemoveCore (iter)
;---[Insert new key]-----------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		movdqu	temp, [ndata]
		add		stack, space				; restoring back the stack pointer
		jmp		insfunc						; return this.insfunc (ndata[0])
;---[Skip branch]--------------------------
.skip:	mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		mov		iter, [s_ptr]				; get "ptr" variable from the stack
		movdqu	temp, [ndata]				; get "ndata" variable from the stack
		movdqa	[iter + BDATA], temp		; array[index].data = ndata[0]
		mov		status, 1					; return true
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
ReplaceIndexMulti:	REPLACE_INDEX	InsertCoreMulti
ReplaceIndexUnique:	REPLACE_INDEX	InsertCoreUnique

;==============================================================================;
;       Using iterators                                                        ;
;==============================================================================;
macro	REPLACE_ITER	insfunc, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
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
		setne	status						;     return false
		je		.exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_ndata], ndata			; save "ndata" variable into the stack
		mov		func, [this + FUNC]			; get pointer to key compare function
		mov		[s_iter], iter				; save "iter" variable into the stack
		and		iter, PMASK
		add		iter, [this + ARRAY]		; iter += array
		mov		[s_ptr], iter				; save "ptr" variable into the stack
		movdqa	temp, [iter + BDATA]
		movdqu	[odata], temp				; odata[0] = array[iter].data
;---[Compare keys]-------------------------
		mov		param1, [ndata]
		mov		param2, [iter + BDATA]
		call	func						; result = Compare (ndata[0].key, array[iter].key)
		cmp		result, 0					; if (result == 0)
		je		.skip						;     then go to skip branch
;---[Remove old key]-----------------------
		mov		param2, [s_iter]
		mov		param1, [s_this]
		call	RemoveCore					; call RemoveCore (iter)
;---[Insert new key]-----------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		movdqu	temp, [ndata]
		add		stack, space				; restoring back the stack pointer
		jmp		insfunc						; return this.insfunc (ndata[0])
;---[Skip branch]--------------------------
.skip:	mov		ndata, [s_ndata]			; get "ndata" variable from the stack
		mov		iter, [s_ptr]				; get "ptr" variable from the stack
		movdqu	temp, [ndata]				; get "ndata" variable from the stack
		movdqa	[iter + BDATA], temp		; array[iter].data = ndata[0]
		mov		status, 1					; return true
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
ReplaceFwdMulti:	REPLACE_ITER	InsertCoreMulti, FWD
ReplaceBwdMulti:	REPLACE_ITER	InsertCoreMulti, BWD
ReplaceFwdUnique:	REPLACE_ITER	InsertCoreUnique, FWD
ReplaceBwdUnique:	REPLACE_ITER	InsertCoreUnique, BWD

;******************************************************************************;
;       Overriding element value                                               ;
;******************************************************************************;
Override:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
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
GetNode:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
node	equ		rsi							; begining node to start from
height	equ		rdx							; b-tree height
pos		equ		rcx							; position of element to go
;---[Internal variables]-------------------
result	equ		rax							; result register
bptr	equ		r8							; pointer to array of subtrees
index	equ		r9							; element index into bnode
size	equ		result						; sutree size
;------------------------------------------
		test	height, height				; if (height == 0)
		jz		.exit						;     then go to exit
;---[Searching loop]-----------------------
.loop:	lea		bptr, [array + node + BPTR]	; bptr = array[node].bptr
		mov		size, [array + node + BPTR + TSIZE]
		xor		index, index				; index = 0
		cmp		pos, size					; if (pos <= size)
		jbe		@f							;     then skip the loop
;---[Index computation loop]---------------
.iloop:	add		size, KSIZE
		sub		pos, size					; pos -= size + KSIZE
		add		bptr, KSIZE					; bptr++
		mov		size, [bptr + TSIZE]		; size = bptr[0].size
		add		index, KSIZE				; index++
		cmp		pos, size
		ja		.iloop						; do while (pos > size)
;---[End of index computation loop]--------
@@:		je		.break						; if (pos == size), then break the loop
		mov		node, [bptr + TROOT]		; node = bptr[0].root
		sub		height, 1					; height--
		jnz		.loop						; do while (height)
;---[End of searching loop]----------------
.exit:	add		node, pos
		add		node, height
		mov		result, node				; return node + pos + height
		ret
;---[Loop breaking branch]-----------------
.break:	add		node, index
		add		node, height
		mov		result, node				; return node + index + height
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetPos:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
iter	equ		rsi							; iterator value
;---[Internal variables]-------------------
result	equ		rax							; result register
sindex	equ		rdx							; subtree index
node	equ		r8							; pointer to bnode
index	equ		r9							; element index
level	equ		r10							; level of b-tree node
bptr	equ		r11							; pointer to array of subtrees
;------------------------------------------
		xor		result, result				; result = 0
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		mov		level, LMASK				; load level mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
		and		level, iter					; if (level != 0)
		jz		@f							;     then skip the loop
		lea		bptr, [array + node + BPTR]	; bptr = array[node].bptr
		lea		sindex, [index + KSIZE]		; sindex = index + KSIZE
;---[Iteration loop]-----------------------
.loop1:	add		result, [bptr + TSIZE]		; result += bptr[0].size
		add		bptr, KSIZE					; bptr++
		sub		sindex, KSIZE				; sindex--
		jnz		.loop1						; do while (sindex != 0)
;---[End of iteration loop]----------------
@@:		add		result, index				; result += index
		mov		iter, [array + node + BROOT]
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
		cmp		node, EMPTY					; if (node == EMPTY)
		je		.exit						;     return result
;---[Internal loop]------------------------
.iloop:	test	index, index				; if (index == 0)
		je		@f							;     then skip index searching loop
		lea		bptr, [array + node + BPTR]	; bptr = array[node].bptr
		mov		sindex, index				; sindex = index
;---[Iteration loop]-----------------------
.loop2:	add		result, [bptr + TSIZE]		; result += bptr[0].size
		add		bptr, KSIZE					; bptr++
		sub		sindex, KSIZE				; sindex--
		jnz		.loop2						; do while (sindex != 0)
;---[End of iteration loop]----------------
@@:		add		result, index				; result += index
		mov		iter, [array + node + BROOT]
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
		cmp		node, EMPTY					; if (node == EMPTY)
		jne		.iloop						; do while (node != EMPTY)
;---[End of internal loop]-----------------
.exit:	ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GoNext:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
iter	equ		rsi							; iterator value
pos		equ		rdx							; number of positions to move
;---[Internal variables]-------------------
result	equ		rax							; result register
node	equ		r8							; pointer to bnode
index	equ		r9							; element index
level	equ		r10							; level of b-tree node
nsize	equ		r11							; node size
;------------------------------------------
		mov		result, iter				; result = iter
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		mov		level, LMASK				; load level mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
		and		level, iter					; if (level != 0)
		jnz		.else						;     then go to else branch
;---[Iteration loop]-----------------------
.loop:	add		result, pos					; result += pos
		mov		nsize, [array + node + BSIZE]
		sub		nsize, index				; nsize = array[node].size - index
		sub		pos, nsize					; if (pos < nsize)
		jb		.exit						;     then go to exit
;---[Internal loop]------------------------
@@:		mov		result, [array + node + BROOT]
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, result				; node = result & NMASK
		and		index, result				; index = result & IMASK
		cmp		node, EMPTY					; if (node == EMPTY)
		je		.error						;     return EMPTY
		add		level, 1					; level++
		cmp		index, [array + node + BSIZE]
		je		@b							; do while (index == array[node].size)
;---[End of internal loop]-----------------
		add		result, level
		test	pos, pos					; if (pos == 0)
		jz		.exit						;     then go to exit
;---[else]---------------------------------
.else:	add		index, KSIZE				; index++
;---[Internal loop]------------------------
@@:		add		node, index
		mov		node, [array + node + BPTR + TROOT]
		xor		index, index				; index = 0
		sub		level, 1					; level--
		jnz		@b							; do while (level != 0)
;---[End of internal loop]-----------------
		lea		result, [node + index]		; result = node + index
		sub		pos, KSIZE					; pos--
		jnz		.loop						; do while (pos != 0)
;---[End of iteration loop]----------------
.exit:	ret									; return iter
;---[Error branch]-------------------------
.error:	mov		result, EMPTY				; return EMPTY
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GoPrev:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
iter	equ		rsi							; iterator value
pos		equ		rdx							; number of positions to move
;---[Internal variables]-------------------
result	equ		rax							; result register
node	equ		r8							; pointer to bnode
index	equ		r9							; element index
level	equ		r10							; level of b-tree node
;------------------------------------------
		mov		result, iter				; result = iter
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		mov		level, LMASK				; load level mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
		and		level, iter					; if (level != 0)
		jnz		.else						;     then go to else branch
;---[Iteration loop]-----------------------
.loop:	sub		result, pos					; result -= pos
		add		index, KSIZE				; index++
		sub		pos, index					; if (pos < index)
		jb		.exit						;     then go to exit
;---[Internal loop]------------------------
@@:		mov		result, [array + node + BROOT]
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, result				; node = result & NMASK
		and		index, result				; index = result & IMASK
		cmp		node, EMPTY					; if (node == EMPTY)
		je		.error						;     return EMPTY
		add		level, 1					; level++
		test	index, index
		je		@b							; do while (index == 0)
;---[End of internal loop]-----------------
		lea		result, [result + level - KSIZE]
		test	pos, pos					; if (pos == 0)
		jz		.exit						;     then go to exit
;---[else]---------------------------------
.else:
;---[Internal loop]------------------------
@@:		add		node, index
		mov		node, [array + node + BPTR + TROOT]
		mov		index, [array + node + BSIZE]
		sub		level, 1					; level--
		jnz		@b							; do while (level != 0)
;---[End of internal loop]-----------------
		sub		index, KSIZE				; index--
		lea		result, [node + index]		; result = node + index
		sub		pos, KSIZE					; pos--
		jnz		.loop						; do while (pos != 0)
;---[End of iteration loop]----------------
.exit:	ret									; return iter
;---[Error branch]-------------------------
.error:	mov		result, EMPTY				; return EMPTY
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SET_ITER_INDEX	offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
index	equ		rsi							; element index
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check index]--------------------------
		shl		index, KSCALE
		cmp		[this + SIZE], index		; if (size <= index)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		param4, index
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	GetNode						; result = GetNode (array, root, height, index)
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
macro	SET_ITERATOR1	offst, max
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
;---[Internal variables]-------------------
result	equ		rax							; result register
size	equ		rdx							; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check object size]--------------------
		mov		size, [this + SIZE]			; get object size
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
if max
		lea		param4, [size - KSIZE]
else
		mov		param4, 0
end if
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	GetNode						; result = GetNode (array, root, height, size)
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
this	equ		rdi							; pointer to b-tree object
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
;------------------------------------------
		mov		temp, [this + source]
		mov		[this + target], temp		; set target iterator by source value
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	GET_POS		offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
;---[Internal variables]-------------------
result	equ		rax							; result register
iter	equ		rcx							; iterator value
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		param2, iter
		mov		param1, [this + ARRAY]
		call	GetPos						; result = GetPos (array, iter)
		shr		result, KSCALE				; return result
		ret
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MOVE_ITERATOR	Func, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
pos		equ		rsi							; number of positions to move
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rax							; iterator value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     then go to error branch
;---[Check position]-----------------------
		shl		pos, KSCALE					; if (pos == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		param3, pos
		mov		param2, iter
		mov		param1, [this + ARRAY]
		call	Func						; iter = Func (array, iter, pos)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + offst], iter		; update iterator position
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
FwdToIndex:	SET_ITER_INDEX	FWD
FwdToMin:	SET_ITERATOR1	FWD, 0
FwdToMax:	SET_ITERATOR1	FWD, 1
FwdToBwd:	SET_ITERATOR2	FWD, BWD

;==============================================================================;
;       Get iterator position                                                  ;
;==============================================================================;
GetFwdPos:	GET_POS			FWD

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
BwdToIndex:	SET_ITER_INDEX	BWD
BwdToMin:	SET_ITERATOR1	BWD, 0
BwdToMax:	SET_ITERATOR1	BWD, 1
BwdToFwd:	SET_ITERATOR2	BWD, FWD

;==============================================================================;
;       Get iterator position                                                  ;
;==============================================================================;
GetBwdPos:	GET_POS			BWD

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
this	equ		rdi							; pointer to b-tree object
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
macro	MINMAX1	offst, max
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		rdx							; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check object size]--------------------
		mov		size, [this + SIZE]			; get object size
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
if max
		lea		param4, [size - KSIZE]
else
		mov		param4, 0
end if
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	GetNode						; result = GetNode (array, root, height, size)
;---[Update iterator value]----------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], result		; update iterator position
		and		result, PMASK
		add		result, [this + ARRAY]
		movdqa	temp, [result + BDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MINMAX2	Func, offst, max
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		rdx							; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check object size]--------------------
		mov		size, [this + SIZE]			; get object size
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
if max
		lea		param4, [size - KSIZE]
else
		mov		param4, 0
end if
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	GetNode						; result = GetNode (array, root, height, size)
;---[Call search function]-----------------
		mov		this, [s_this]				; get "this" variable from the stack
		and		result, PMASK
		add		result, [this + ARRAY]
		mov		param5, [result + BDATA]
		mov		param4, [this + FUNC]
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	Func						; result = Func (array, root, height, func, array[iter].data.key)
;---[Update iterator value]----------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], result		; update iterator position
		and		result, PMASK
		add		result, [this + ARRAY]
		movdqa	temp, [result + BDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Minimum value
MinFwd:	MINMAX1	FWD, 0
MinBwd:	MINMAX2	EqualBwd, BWD, 0

; Maximum value
MaxFwd:	MINMAX2	EqualFwd, FWD, 1
MaxBwd:	MINMAX1	BWD, 1

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

;==============================================================================;
;       Single key searching                                                   ;
;==============================================================================;
macro	FIND_CORE	cond1, cond2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
root	equ		rsi							; begining node to start from
height	equ		rdx							; b-tree height
func	equ		rcx							; compare function
key		equ		r8							; key for searching
;---[Internal variables]-------------------
result	equ		rax							; result register
next	equ		rbx							; next root node
level	equ		rbp							; level of b-tree iterator
median	equ		r8							; median value
median1	equ		r9							; median value + 1
data	equ		r10							; pointer to array of keys
bptr	equ		r11							; pointer to array of subtrees
node	equ		r12							; node, where the key was found
index	equ		r13							; index, where the key was found
left	equ		r14							; left index
right	equ		r15							; right index
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_root	equ		stack + 1 * 8				; stack position of "root" variable
s_hght	equ		stack + 2 * 8				; stack position of "height" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_key	equ		stack + 4 * 8				; stack position of "key" variable
s_next	equ		stack + 5 * 8				; stack position of "next" variable
s_level	equ		stack + 6 * 8				; stack position of "level" variable
s_node	equ		stack + 7 * 8				; stack position of "node" variable
s_index	equ		stack + 8 * 8				; stack position of "index" variable
s_left	equ		stack + 9 * 8				; stack position of "left" variable
s_right	equ		stack + 10 * 8				; stack position of "right" variable
s_med	equ		stack + 11 * 8				; stack position of "median" variable
s_data	equ		stack + 12 * 8				; stack position of "data" variable
s_bptr	equ		stack + 13 * 8				; stack position of "bptr" variable
space	= 15 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_next], next				; save old value of "next" variable
		mov		[s_level], level			; save old value of "level" variable
		mov		[s_node], node				; save old value of "node" variable
		mov		[s_index], index			; save old value of "index" variable
		mov		[s_left], left				; save old value of "left" variable
		mov		[s_right], right			; save old value of "right" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_root], root				; save "root" variable into the stack
		mov		[s_hght], height			; save "height" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		node, EMPTY					; node = EMPTY
		xor		index, index				; index = 0
		xor		level, level				; level = 0
		test	height, height				; if (height == 0)
		jz		.leaf						;     then check only leaf node
;---[Branch searching loop]----------------
.bloop:	mov		right, [array + root + BSIZE]
		lea		data, [array + root + BDATA]
		lea		bptr, [array + root + BPTR]
		mov		next, [array + root + BPTR + TROOT]
		xor		left, left					; left = 0
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_bptr], bptr				; save "bptr" variable into the stack
;---[Binary search loop]-------------------
.loop1:	lea		median, [left + right]
		shr		median, 1
		and		median, -KSIZE				; median = (left + right) / 2
		mov		[s_med], median				; save "median" variable into the stack
		mov		param2, [data + median]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, data[median].key)
		mov		median, [s_med]				; get "median" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		root, [s_root]				; get "root" variable from the stack
		mov		height, [s_hght]			; get "height" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		bptr, [s_bptr]				; get "bptr" variable from the stack
		cmp		result, 0
	jn#cond1	@f							; if (result cond1 0)
		mov		node, root					;     node = root
		mov		index, median				;     index = median
		mov		level, height				;     level = height
@@:	jn#cond2	@f							; if (result cond2 0)
;---[if result cond2 0]--------------------
		mov		next, [bptr + median + KSIZE + TROOT]
		lea		left, [median + KSIZE]		; left = median + KSIZE
		cmp		left, right
		jb		.loop1						; do while (left < right)
;---[else]---------------------------------
@@:		mov		right, median				; right = median
		cmp		left, right
		jb		.loop1						; do while (left < right)
;---[End of binary search loop]------------
		mov		root, next					; root = next
		mov		[s_root], next				; save "root" variable into the stack
		sub		height, 1					; height--
		mov		[s_hght], height			; save "height" variable into the stack
		jnz		.bloop						; do while (height != 0)
;---[End of branch searching loop]---------
.leaf:	mov		right, [array + root + BSIZE]
		lea		data, [array + root + BDATA]
		xor		left, left					; left = 0
		mov		[s_data], data				; save "data" variable into the stack
;---[Binary search loop]-------------------
.loop2:	lea		median, [left + right]
		shr		median, 1
		and		median, -KSIZE				; median = (left + right) / 2
		mov		[s_med], median				; save "median" variable into the stack
		mov		param2, [data + median]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, data[median].key)
		mov		root, [s_root]				; get "root" variable from the stack
		mov		height, [s_hght]			; get "height" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		median, [s_med]				; get "median" variable from the stack
		lea		median1, [median + KSIZE]	; median1 = median + KSIZE
		cmp		result, 0
	cmov#cond1	node, root					; if (result cond1 0), then node = root
	cmov#cond1	index, median				; if (result cond1 0), then index = median
	cmov#cond1	level, height				; if (result cond1 0), then level = height
	cmov#cond2	left, median1				; if (result cond2 0), then left = median + KSIZE
	cmovn#cond2	right, median				; if (result !cond2 0), then right = median
		cmp		left, right
		jb		.loop2						; do while (left < right)
;---[End of binary search loop]------------
		add		node, index
		add		node, level
		mov		result, node				; return node + index + level
		mov		next, [s_next]				; restore old value of "next" variable
		mov		level, [s_level]			; restore old value of "level" variable
		mov		node, [s_node]				; restore old value of "node" variable
		mov		index, [s_index]			; restore old value of "index" variable
		mov		left, [s_left]				; restore old value of "left" variable
		mov		right, [s_right]			; restore old value of "right" variable
		add		stack, space				; restoring back the stack pointer
		ret									; return level
}
EqualFwd:		FIND_CORE	e, g
EqualBwd:		FIND_CORE	e, ge
Great:			FIND_CORE	l, ge
GreatOrEqual:	FIND_CORE	le, g
Less:			FIND_CORE	g, g
LessOrEqual:	FIND_CORE	ge, ge
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_KEY	Func, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check object size]--------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
;---[Call search function]-----------------
		mov		param5, key
		mov		param4, [this + FUNC]
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	Func						; result = Func (array, root, height, func, key)
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.ntfnd						;     return false
;---[Update iterator value]----------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], result		; update iterator position
		and		result, PMASK
		add		result, [this + ARRAY]
		movdqa	temp, [result + BDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}

; Searching for equal key
FindEqualFwd:			FIND_KEY	EqualFwd, FWD
FindEqualBwd:			FIND_KEY	EqualBwd, BWD

; Searching for greater key
FindGreatFwd:			FIND_KEY	Great, FWD
FindGreatBwd:			FIND_KEY	Great, BWD

; Searching for greater or equal key
FindGreatOrEqualFwd:	FIND_KEY	GreatOrEqual, FWD
FindGreatOrEqualBwd:	FIND_KEY	GreatOrEqual, BWD

; Searching for less key
FindLessFwd:			FIND_KEY	Less, FWD
FindLessBwd:			FIND_KEY	Less, BWD

; Searching for less or equal key
FindLessOrEqualFwd:		FIND_KEY	LessOrEqual, FWD
FindLessOrEqualBwd:		FIND_KEY	LessOrEqual, BWD

;==============================================================================;
;       Sequence searching                                                     ;
;==============================================================================;
macro	FIND_INDEX	cond1, cond2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
root	equ		rsi							; begining node to start from
height	equ		rdx							; b-tree height
func	equ		rcx							; compare function
key		equ		r8							; key for searching
;---[Internal variables]-------------------
result	equ		rax							; result register
next	equ		rbx							; next root node
level	equ		rbp							; level of b-tree iterator
median	equ		r8							; median value
median1	equ		r9							; median value + 1
data	equ		r10							; pointer to array of keys
bptr	equ		r11							; pointer to array of subtrees
node	equ		r12							; node, where the key was found
index	equ		r13							; index, where the key was found
left	equ		r14							; left index
right	equ		r15							; right index
size	equ		func						; index, where the key was found
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_root	equ		stack + 1 * 8				; stack position of "root" variable
s_hght	equ		stack + 2 * 8				; stack position of "height" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_key	equ		stack + 4 * 8				; stack position of "key" variable
s_next	equ		stack + 5 * 8				; stack position of "next" variable
s_level	equ		stack + 6 * 8				; stack position of "level" variable
s_node	equ		stack + 7 * 8				; stack position of "node" variable
s_index	equ		stack + 8 * 8				; stack position of "index" variable
s_left	equ		stack + 9 * 8				; stack position of "left" variable
s_right	equ		stack + 10 * 8				; stack position of "right" variable
s_med	equ		stack + 11 * 8				; stack position of "median" variable
s_data	equ		stack + 12 * 8				; stack position of "data" variable
s_bptr	equ		stack + 13 * 8				; stack position of "bptr" variable
s_size	equ		stack + 14 * 8				; stack position of "size" variable
space	= 15 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_next], next				; save old value of "next" variable
		mov		[s_level], level			; save old value of "level" variable
		mov		[s_node], node				; save old value of "node" variable
		mov		[s_index], index			; save old value of "index" variable
		mov		[s_left], left				; save old value of "left" variable
		mov		[s_right], right			; save old value of "right" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_root], root				; save "root" variable into the stack
		mov		[s_hght], height			; save "height" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		qword [s_size], 0			; size = 0
		mov		node, EMPTY					; node = EMPTY
		xor		index, index				; index = 0
		xor		level, level				; level = 0
		test	height, height				; if (height == 0)
		jz		.leaf						;     then check only leaf node
;---[Branch searching loop]----------------
.bloop:	mov		right, [array + root + BSIZE]
		lea		data, [array + root + BDATA]
		lea		bptr, [array + root + BPTR]
		mov		next, [array + root + BPTR + TROOT]
		xor		left, left					; left = 0
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_bptr], bptr				; save "bptr" variable into the stack
;---[Binary search loop]-------------------
.loop1:	lea		median, [left + right]
		shr		median, 1
		and		median, -KSIZE				; median = (left + right) / 2
		mov		[s_med], median				; save "median" variable into the stack
		mov		param2, [data + median]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, data[median].key)
		mov		median, [s_med]				; get "median" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		root, [s_root]				; get "root" variable from the stack
		mov		height, [s_hght]			; get "height" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		bptr, [s_bptr]				; get "bptr" variable from the stack
		cmp		result, 0
	jn#cond1	@f							; if (result cond1 0)
		mov		node, root					;     node = root
		mov		index, median				;     index = median
		mov		level, height				;     level = height
@@:	jn#cond2	@f							; if (result cond2 0)
;---[if result > 0]------------------------
		mov		next, [bptr + median + KSIZE + TROOT]
		lea		left, [median + KSIZE]		; left = median + KSIZE
		cmp		left, right
		jb		.loop1						; do while (left < right)
;---[else]---------------------------------
@@:		mov		right, median				; right = median
		cmp		left, right
		jb		.loop1						; do while (left < right)
;---[End of binary search loop]------------
		mov		size, [s_size]				; get "size" variable from the stack
		add		size, left					; size += left
		test	left, left					; if (left == 0)
		jz		@f							;     then skip following loop
;---[Index computation loop]---------------
.iloop:	add		size, [bptr + TSIZE]		; size += bptr[0].size
		add		bptr, KSIZE					; bptr++
		sub		left, KSIZE					; left--
		jnz		.iloop						; do while (left != 0)
@@:		mov		[s_size], size				; save "size" variable into the stack
;---[End of index computation loop]--------
		mov		root, next					; root = next
		mov		[s_root], next				; save "root" variable into the stack
		sub		height, 1					; height--
		mov		[s_hght], height			; save "height" variable into the stack
		jnz		.bloop						; do while (height != 0)
;---[End of branch searching loop]---------
.leaf:	mov		right, [array + root + BSIZE]
		lea		data, [array + root + BDATA]
		xor		left, left					; left = 0
		mov		[s_data], data				; save "data" variable into the stack
;---[Binary search loop]-------------------
.loop2:	lea		median, [left + right]
		shr		median, 1
		and		median, -KSIZE				; median = (left + right) / 2
		mov		[s_med], median				; save "median" variable into the stack
		mov		param2, [data + median]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, data[median].key)
		mov		root, [s_root]				; get "root" variable from the stack
		mov		height, [s_hght]			; get "height" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		median, [s_med]				; get "median" variable from the stack
		lea		median1, [median + KSIZE]	; median1 = median + KSIZE
		cmp		result, 0
	cmov#cond1	node, root					; if (result cond1 0), then node = root
	cmov#cond1	index, median				; if (result cond1 0), then index = median
	cmov#cond1	level, height				; if (result cond1 0), then level = height
	cmov#cond2	left, median1				; if (result cond2 0), then left = median + KSIZE
	cmovn#cond2	right, median				; if (result !cond2 0), then right = median
		cmp		left, right
		jb		.loop2						; do while (left < right)
;---[End of binary search loop]------------
		mov		size, [s_size]				; get "size" variable from the stack
		add		size, left					; size += left
		add		node, index
		add		node, level
		mov		result, node				; return node + index + level
		mov		next, [s_next]				; restore old value of "next" variable
		mov		level, [s_level]			; restore old value of "level" variable
		mov		node, [s_node]				; restore old value of "node" variable
		mov		index, [s_index]			; restore old value of "index" variable
		mov		left, [s_left]				; restore old value of "left" variable
		mov		right, [s_right]			; restore old value of "right" variable
		add		stack, space				; restoring back the stack pointer
		ret									; return level
}
FirstIndex:	FIND_INDEX	e, g
LastIndex:	FIND_INDEX	e, ge
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_SEQUENCE	Func1, Func2, offst, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
;---[Internal variables]-------------------
result	equ		rax							; result register
index	equ		rcx							; element index
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_key	equ		stack + 2 * 8				; stack position of "key" variable
s_index	equ		stack + 3 * 8				; stack position of "index" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check object size]--------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.ntfnd						;     then return 0
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
;---[Call search function #1]--------------
		mov		param5, key
		mov		param4, [this + FUNC]
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	Func1						; result = Func1 (array, root, height, func, key)
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.ntfnd						;     then return 0
		mov		[s_index], index			; save "index" variable into the stack
;---[Call search function #2]--------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		param5, [s_key]
		mov		param4, [this + FUNC]
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	Func2						; result = Func2 (array, root, height, func, key)
;---[Update iterator value]----------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], result		; update iterator position
		and		result, PMASK
		add		result, [this + ARRAY]
		movdqa	temp, [result + BDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
if bwd
		sub		index, [s_index]
else
		neg		index
		add		index, [s_index]
end if
		shr		index, KSCALE
		mov		result, index				; return index
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		result, result				; return 0
		add		stack, space				; restoring back the stack pointer
		ret
}
FindSequenceFwd:	FIND_SEQUENCE	LastIndex, FirstIndex, FWD, 0
FindSequenceBwd:	FIND_SEQUENCE	FirstIndex, LastIndex, BWD, 1

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
macro	FIND_DUP_CORE	Next
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
iter	equ		rsi							; iterator value
func	equ		rdx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
prev	equ		rcx							; previous iterator value
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_iter	equ		stack + 1 * 8				; stack position of "iter" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_prev	equ		stack + 3 * 8				; stack position of "prev" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		param3, KSIZE
		mov		param2, iter
		mov		param1, array
		call	Next						; result = Next (array, iter, KSIZE)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		prev, [s_iter]				; get "prev" variable from the stack
		mov		[s_iter], result			; save "iter" variable into the stack
		mov		[s_prev], prev				; save "prev" variable into the stack
		cmp		result, EMPTY				; if (iter == EMPTY)
		je		.exit						;     return EMPTY
;---[Check loop]---------------------------
.loop:	and		result, PMASK
		and		prev, PMASK
		mov		param2, [array + result + BDATA]
		mov		param1, [array + prev + BDATA]
		call	qword [s_func]				; result = Compare (array[prev].data.key, array[iter].data.key)
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		mov		param3, KSIZE
		mov		param2, [s_iter]
		mov		param1, [s_array]
		call	Next						; result = Next (array, iter, KSIZE)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		prev, [s_iter]				; get "prev" variable from the stack
		mov		[s_iter], result			; save "iter" variable into the stack
		mov		[s_prev], prev				; save "prev" variable into the stack
		cmp		result, EMPTY
		jne		.loop						; do while (iter != EMPTY)
;---[End of check loop]--------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		result, [s_prev]			; return prev
		add		stack, space				; restoring back the stack pointer
		ret
}
DupFwd:	FIND_DUP_CORE	GoNext
DupBwd:	FIND_DUP_CORE	GoPrev
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_DUP	CheckFunc, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
iter	equ		rcx							; iterator value
size	equ		result						; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.ntfnd						;     return false
;---[Check object size]--------------------
		mov		size, [this + SIZE]			; get object size
		sub		size, KSIZE					; if (size <= 1)
		jbe		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
;---[Call search function]-----------------
		mov		param3, [this + FUNC]
		mov		param2, iter
		mov		param1, [this + ARRAY]
		call	CheckFunc					; result = CheckFunc (array, iter, func)
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.ntfnd						;     return false
;---[Update iterator value]----------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], result		; update iterator position
		and		result, PMASK
		add		result, [this + ARRAY]
		movdqa	temp, [result + BDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointe
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}
FindDupFwd:	FIND_DUP	DupFwd, FWD
FindDupBwd:	FIND_DUP	DupBwd, BWD

;******************************************************************************;
;       Searching for differences                                              ;
;******************************************************************************;
macro	DIFF	Next
{
;---[Parameters]---------------------------
tarray	equ		rdi							; pointer to target array of nodes
sarray	equ		rsi							; pointer to source array of nodes
titer	equ		rdx							; target iterator
siter	equ		rcx							; source iterator
size	equ		r8							; count of elements to compare
func	equ		r9							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
status	equ		rdx							; compare status
stack	equ		rsp							; stack pointer
s_tarr	equ		stack + 0 * 8				; stack position of "tarray" variable
s_sarr	equ		stack + 1 * 8				; stack position of "sarray" variable
s_titer	equ		stack + 2 * 8				; stack position of "titer" variable
s_siter	equ		stack + 3 * 8				; stack position of "siter" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_tarr], tarray			; save "tarray" variable into the stack
		mov		[s_sarr], sarray			; save "sarray" variable into the stack
		mov		[s_titer], titer			; save "titer" variable into the stack
		mov		[s_siter], siter			; save "siter" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Check loop]---------------------------
.loop:	and		siter, PMASK
		and		titer, PMASK
		mov		param2, [sarray + siter + BDATA]
		mov		param1, [tarray + titer + BDATA]
		call	qword [s_func]				; result = Compare (tarray[titer].key, sarray[siter].key)
		test	result, result				; if (result != 0)
		jnz		.found						;     then go to found branch
		mov		param3, KSIZE
		mov		param2, [s_siter]
		mov		param1, [s_sarr]
		call	Next						; result = Next (sarray, siter, KSIZE)
		mov		[s_siter], result			; save "siter" variable into the stack
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.break						;     then break the loop
		mov		param3, KSIZE
		mov		param2, [s_titer]
		mov		param1, [s_tarr]
		call	Next						; result = Next (tarray, titer, KSIZE)
		mov		[s_titer], result			; save "titer" variable into the stack
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.break						;     then break the loop
		mov		siter, [s_siter]			; get "siter" variable from the stack
		mov		titer, [s_titer]			; get "titer" variable from the stack
		mov		sarray, [s_sarr]			; get "sarray" variable from the stack
		mov		tarray, [s_tarr]			; get "tarray" variable from the stack
		sub		qword [s_size], KSIZE		; size--
		jnz		.loop						; do while (size != 0)
;---[End of check loop]--------------------
.break:	xor		status, status
		mov		result, EMPTY
		add		stack, space				; restoring back the stack pointer
		ret									; return {EMPTY, 0}
;---[Found branch]-------------------------
.found:	mov		status, result
		mov		result, [s_titer]
		add		stack, space				; restoring back the stack pointer
		ret									; return {titer, status}
}
DiffFwd:	DIFF	GoNext
DiffBwd:	DIFF	GoPrev
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_DIFF	CheckFunc, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target b-tree object
data	equ		rsi							; pointer to data structure
source	equ		rdx							; pointer to source b-tree object
count	equ		rcx							; count of nodes to copy
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		result						; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.ntfnd						;     then return false
;---[Check target iterator]----------------
		cmp		qword [this + offst], EMPTY
		je		.ntfnd						; if (this.iter == EMPTY), then return false
;---[Check source iterator]----------------
		cmp		qword [source + offst], EMPTY
		je		.ntfnd						; if (source.iter == EMPTY), then return false
;---[Correct count]------------------------
		shl		count, KSCALE
		mov		size, [source + SIZE]		; get source object size
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
		mov		size, [this + SIZE]			; get target object size
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return false
;---[Call search function]-----------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		param6, [this + FUNC]
		mov		param5, count
		mov		param4, [source + offst]
		mov		param2, [source + ARRAY]
		mov		param3, [this + offst]
		mov		param1, [this + ARRAY]
		call	CheckFunc					; result = CheckFunc (this.array, source.array, titer, siter, count, this.func)
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.ntfnd						;     return false
;---[Update iterator value]----------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], result		; update iterator position
		and		result, PMASK
		add		result, [this + ARRAY]
		movdqa	temp, [result + BDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
}
FindDiffFwd:	FIND_DIFF	DiffFwd, FWD
FindDiffBwd:	FIND_DIFF	DiffBwd, BWD

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;
macro	COUNT_CORE	uniq
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
root	equ		rsi							; begining node to start from
height	equ		rdx							; b-tree height
func	equ		rcx							; compare function
key		equ		r8							; key for searching
;---[Internal variables]-------------------
result	equ		rax							; result register
index	equ		rcx							; element index
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_root	equ		stack + 1 * 8				; stack position of "root" variable
s_hght	equ		stack + 2 * 8				; stack position of "height" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_key	equ		stack + 4 * 8				; stack position of "key" variable
s_index	equ		stack + 5 * 8				; stack position of "index" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_root], root				; save "root" variable into the stack
		mov		[s_hght], height			; save "height" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
;---[Call search function #1]--------------
		call	FirstIndex					; result = FirstIndex (array, root, height, func, key)
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.ntfnd						;     then return 0
if ~uniq
		mov		[s_index], index			; save "index" variable into the stack
;---[Call search function #2]--------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		root, [s_root]				; get "root" variable from the stack
		mov		height, [s_hght]			; get "height" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		mov		key, [s_key]				; get "key" variable from the stack
		call	LastIndex					; result = LastIndex (array, root, height, func, key)
;---[Update iterator value]----------------
		sub		index, [s_index]
		shr		index, KSCALE
		mov		result, index				; return index
else
		mov		result, 1					; return 1
end if
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		result, result				; return 0
		add		stack, space				; restoring back the stack pointer
		ret
}
CountCoreMulti:		COUNT_CORE	0
CountCoreUnique:	COUNT_CORE	1

;==============================================================================;
;       Single key counting                                                    ;
;==============================================================================;
macro	COUNT_KEY	func
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
key		equ		rsi							; key to find
;---[Internal variables]-------------------
result	equ		rax							; result register
;---[Check object size]--------------------
		cmp		qword [this + SIZE], 0		; if (size == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		param5, key
		mov		param4, [this + FUNC]
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		jmp		func						; return func (array, root, height, func, key)
;---[Normal exit]--------------------------
.exit:	xor		result, result				; return 0
		ret
}
CountKeyMulti:	COUNT_KEY	CountCoreMulti
CountKeyUnique:	COUNT_KEY	CountCoreUnique

;==============================================================================;
;       Keys set counting                                                      ;
;==============================================================================;
macro	COUNT_KEYS	Func
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
keys	equ		rsi							; pointer to array of keys
ksize	equ		rdx							; size of array of keys
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_keys	equ		stack + 1 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 2 * 8				; stack position of "ksize" variable
s_total	equ		stack + 3 * 8				; stack position of "total" variable
space	= 5 * 8								; stack size required by the procedure
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
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param5, [keys]
		mov		param4, [this + FUNC]
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	Func						; result = Func (array, root, height, func, keys[0])
		mov		this, [s_this]				; get "this" variable from the stack
		mov		keys, [s_keys]				; get "keys" variable from the stack
		add		[s_total], result			; if (result), then total++
		add		keys, 8						; keys++
		mov		[s_keys], keys				; save "keys" variable into the stack
		sub		qword [s_ksize], 1			; ksize--
		jnz		.loop						; do while (ksize != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total
}
CountKeysMulti:		COUNT_KEYS	CountCoreMulti
CountKeysUnique:	COUNT_KEYS	CountCoreUnique

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
Unique:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target b-tree object
source	equ		rsi							; pointer to source b-tree object
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
low		equ		rax							; low part of value for div operation
high	equ		rdx							; high part of value for div operation
ptr		equ		rcx							; temporary pointer
array	equ		r8							; pointer to array of nodes
size	equ		r9							; b-tree size
value	equ		r10							; key value
total	equ		r11							; count of duplicates
key		equ		xmm0						; key value
data	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_iter	equ		stack + 4 * 8				; stack position of "iter" variable
s_value	equ		stack + 5 * 8				; stack position of "value" variable
s_total	equ		stack + 6 * 8				; stack position of "total" variable
space	= 7 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check target object size]-------------
		cmp		qword [this + SIZE], 0		; if (size)
		jnz		.error						;     then go to error branch
;---[Check source object size]-------------
		mov		size, [source + SIZE]		; get size of source b-tree object
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		xor		high, high					; high = 0
		lea		low, [size + BMAX - 2 * KSIZE]
		mov		size, BMAX - KSIZE
		div		size
		shl		low, NSCALE					; low = (size + BMAX - 2 * KSIZE) / (BMAX - KSIZE) * NSIZE
	Capacity	low, ptr, MINCAP			; compute new capacity of target object
		cmp		low, [this + CAPACITY]		; if (low > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	mov		result, [this + FUNC]		; get pointer to key compare function
		mov		array, [source + ARRAY]		; get pointer to source array of nodes
		mov		[s_func], result			; save "func" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		xor		param4, param4
		mov		param3, [source + HEIGHT]
		mov		param2, [source + ROOT]
		mov		param1, array
		call	GetNode						; result = GetNode (source.array, source.root, source.heught, 0)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		[s_iter], result			; save "iter" variable into the stack
		mov		ptr, PMASK
		and		ptr, result					; ptr = iter & PMASK
		mov		value, [array + ptr + BDATA]
		mov		[s_value], value			; save "value" variable into the stack
		mov		qword [s_total], 1			; total = 1
		mov		param3, KSIZE
		mov		param2, result
		mov		param1, array
		call	GoNext						; result = GoNext (array, iter, KSIZE)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		[s_iter], result			; save "iter" variable into the stack
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.skip						;     then skip the loop
;---[Unique loop]--------------------------
.loop:	mov		ptr, PMASK
		and		ptr, result					; ptr = iter & PMASK
		mov		param2, [array + ptr + BDATA]
		mov		param1, [s_value]
		call	qword [s_func]				; result = Compare (value.key, array[ptr].key)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		total, [s_total]			; get "total" variable from the stack
		test	result, result				; if (result != 0)
		jz		@f							; {
		movq	key, [s_value]
		movq	data, [s_total]
	punpcklqdq	key, data
		call	InsertCoreMulti				;     call this.InsertCoreMulti ({key, total})
		mov		array, [s_array]			;     get "array" variable from the stack
		mov		ptr, [s_iter]				;     get "iter" variable from the stack
		and		ptr, PMASK					;     ptr = iter & PMASK
		mov		value, [array + ptr + BDATA]
		xor		total, total				;     total = 0 }
		mov		[s_value], value			; save "value" variable into the stack
@@:		add		total, 1					; total++
		mov		[s_total], total			; save "total" variable into the stack
		mov		param3, KSIZE
		mov		param2, [s_iter]
		mov		param1, [s_array]
		call	GoNext						; result = GoNext (array, iter, KSIZE)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		[s_iter], result			; save "iter" variable into the stack
		cmp		result, EMPTY
		jne		.loop						; do while (result != EMPTY)
;---[End of unique loop]-------------------
.skip:	mov		this, [s_this]				; get "this" variable from the stack
		movq	key, [s_value]
		movq	data, [s_total]
	punpcklqdq	key, data
		call	InsertCoreMulti				; call this.InsertCoreMulti ({key, total})
		mov		this, [s_this]				; get "this" variable from the stack
;---[Normal exit branch]-------------------
.exit:	mov		result, [this + SIZE]
		shr		result, KSCALE				; return this.size
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, low
		call	Extend						; status = this.Extend (low)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Comparison of b-trees                                                  ;
;******************************************************************************;
Compare:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target b-tree object
source	equ		rsi							; pointer to source b-tree object
;---[Internal variables]-------------------
result	equ		rax							; result register
status	equ		rdx							; compare status
size	equ		rcx							; object size
great	equ		r8							; +1
less	equ		r9							; -1
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_titer	equ		stack + 2 * 8				; stack position of "titer" variable
s_siter	equ		stack + 3 * 8				; stack position of "siter" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.equal						;     return 0
		cmp		qword [this + SIZE], 0		; if (this.size == 0)
		jz		.size						;     then go to size compare branch
		cmp		qword [source + SIZE], 0	; if (source.size == 0)
		jz		.size						;     then go to size compare branch
;---[Go to min elements]-------------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		xor		param4, param4
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	GetNode						; result = GetNode (this.array, this.root, this.height, 0)
		mov		[s_titer], result			; save "titer" variable into the stack
		mov		source, [s_src]				; get "source" variable from the stack
		xor		param4, param4
		mov		param3, [source + HEIGHT]
		mov		param1, [source + ARRAY]
		mov		param2, [source + ROOT]
		call	GetNode						; result = GetNode (source.array, source.root, source.height, 0)
		mov		[s_siter], result			; save "siter" variable into the stack
;---[Call check function]------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		mov		param6, [this + FUNC]
		mov		param5, [this + SIZE]
		mov		param4, [s_siter]
		mov		param3, [s_titer]
		mov		param2, [source + ARRAY]
		mov		param1, [this + ARRAY]
		call	DiffFwd						; result = DiffFwd (this.array, source.array, titer, siter, this.size, this.func)
		cmp		result, EMPTY				; if (result != EMPTY)
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
;       Check for duplicate values                                             ;
;******************************************************************************;
CheckDup:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		qword [this + SIZE], KSIZE	; if (size <= KSIZE)
		setnbe	status						;     then set status and
		jbe		.exit						;     go to exit
;---[Go to min element]--------------------
		mov		[s_this], this				; save "this" variable into the stack
		xor		param4, param4
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	GetNode						; result = GetNode (array, root, height, 0)
;---[Call check function]------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		param3, [this + FUNC]
		mov		param2, result
		mov		param1, [this + ARRAY]
		call	DupFwd						; result = DupFwd (array, iter, func)
		cmp		result, EMPTY				; if (result == EMPTY)
		setne	status						;     return false
.exit:	add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Check for equality                                                     ;
;******************************************************************************;
IsEqual:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target b-tree object
source	equ		rsi							; pointer to source b-tree object
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		rcx							; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_titer	equ		stack + 2 * 8				; stack position of "titer" variable
s_siter	equ		stack + 3 * 8				; stack position of "siter" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.exit						;     return true
		mov		size, [this + SIZE]			; get target object size
		cmp		size, [source + SIZE]		; if (this.size != source.size)
		jne		.exit						;     return false
		test	size, size					; if (size == 0)
		jz		.exit						;     return true
;---[Go to min elements]-------------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		xor		param4, param4
		mov		param3, [this + HEIGHT]
		mov		param2, [this + ROOT]
		mov		param1, [this + ARRAY]
		call	GetNode						; result = GetNode (this.array, this.root, this.height, 0)
		mov		[s_titer], result			; save "titer" variable into the stack
		mov		source, [s_src]				; get "source" variable from the stack
		xor		param4, param4
		mov		param3, [source + HEIGHT]
		mov		param1, [source + ARRAY]
		mov		param2, [source + ROOT]
		call	GetNode						; result = GetNode (source.array, source.root, source.height, 0)
		mov		[s_siter], result			; save "siter" variable into the stack
;---[Call check function]------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		mov		param6, [this + FUNC]
		mov		param5, [this + SIZE]
		mov		param4, [s_siter]
		mov		param3, [s_titer]
		mov		param2, [source + ARRAY]
		mov		param1, [this + ARRAY]
		call	DiffFwd						; result = DiffFwd (this.array, source.array, titer, siter, this.size, this.func)
		cmp		result, EMPTY				; if (result == EMPTY)
.exit:	sete	status						;     return true
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       B-tree properties                                                      ;
;******************************************************************************;
GetCompareFunction:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + FUNC]		; get pointer to key compare function
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetCapacity:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
;---[Internal variables]-------------------
result	equ		rax							; result register
temp	equ		rdx							; temporary register
;------------------------------------------
		mov		result, [this + CAPACITY]	; get object capacity
		shr		result, NSCALE				; result = this.capacity
		mov		temp, BMAX shr KSCALE - 1
		mul		temp						; return this.capacity * (BMAX - 1)
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetSize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + SIZE]		; get object size
		shr		result, KSCALE				; return this.size
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetHeight:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + HEIGHT]		; get object height
		add		result, 1					; return this.height + 1
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IsEmpty:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to b-tree object
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
this	equ		rdi							; pointer to b-tree object
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
