;                                                                       List.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#               DOUBLY LINKED LIST AND CIRCULAR LIST DATA TYPES               #
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
extrn	'FindSet'			as	FindSet

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
public	ConstructorList		as	'List_InitList'
public	ConstructorRing		as	'Ring_InitRing'
public	ConstructorList		as	'_ZN4ListC1Em'
public	ConstructorRing		as	'_ZN4RingC1Em'

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
public	CopyConstructorList	as	'List_CopyList'
public	CopyConstructorRing	as	'Ring_CopyRing'
public	CopyConstructorList	as	'_ZN4ListC1ERKS_'
public	CopyConstructorRing	as	'_ZN4RingC1ERKS_'

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
public	DestructorList		as	'List_FreeList'
public	DestructorRing		as	'Ring_FreeRing'
public	DestructorList		as	'_ZN4ListD1Ev'
public	DestructorRing		as	'_ZN4RingD1Ev'

;******************************************************************************;
;       Copying elements                                                       ;
;******************************************************************************;

; Into list head/tail
public	CopyIntoHead		as	'List_CopyIntoHead'
public	CopyIntoTail		as	'List_CopyIntoTail'
public	CopyIntoHead		as	'_ZN4List12CopyIntoHeadEPKS_m'
public	CopyIntoTail		as	'_ZN4List12CopyIntoTailEPKS_m'

; Using ring link
public	CopyAfterLink		as	'Ring_CopyAfterLink'
public	CopyBeforeLink		as	'Ring_CopyBeforeLink'
public	CopyAfterLink		as	'_ZN4Ring13CopyAfterLinkEPKS_m'
public	CopyBeforeLink		as	'_ZN4Ring14CopyBeforeLinkEPKS_m'

; Using forward iterator
public	CopyAfterFwdList	as	'List_CopyAfterFwd'
public	CopyAfterFwdRing	as	'Ring_CopyAfterFwd'
public	CopyBeforeFwdList	as	'List_CopyBeforeFwd'
public	CopyBeforeFwdRing	as	'Ring_CopyBeforeFwd'
public	CopyAfterFwdList	as	'_ZN4List12CopyAfterFwdEPKS_m'
public	CopyAfterFwdRing	as	'_ZN4Ring12CopyAfterFwdEPKS_m'
public	CopyBeforeFwdList	as	'_ZN4List13CopyBeforeFwdEPKS_m'
public	CopyBeforeFwdRing	as	'_ZN4Ring13CopyBeforeFwdEPKS_m'

; Using backward iterator
public	CopyAfterBwdList	as	'List_CopyAfterBwd'
public	CopyAfterBwdRing	as	'Ring_CopyAfterBwd'
public	CopyBeforeBwdList	as	'List_CopyBeforeBwd'
public	CopyBeforeBwdRing	as	'Ring_CopyBeforeBwd'
public	CopyAfterBwdList	as	'_ZN4List12CopyAfterBwdEPKS_m'
public	CopyAfterBwdRing	as	'_ZN4Ring12CopyAfterBwdEPKS_m'
public	CopyBeforeBwdList	as	'_ZN4List13CopyBeforeBwdEPKS_m'
public	CopyBeforeBwdRing	as	'_ZN4Ring13CopyBeforeBwdEPKS_m'

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;

; Into list head/tail
public	MoveIntoHead		as	'List_MoveIntoHead'
public	MoveIntoTail		as	'List_MoveIntoTail'
public	MoveIntoHead		as	'_ZN4List12MoveIntoHeadEPS_m'
public	MoveIntoTail		as	'_ZN4List12MoveIntoTailEPS_m'

; Using ring link
public	MoveAfterLink		as	'Ring_MoveAfterLink'
public	MoveBeforeLink		as	'Ring_MoveBeforeLink'
public	MoveAfterLink		as	'_ZN4Ring13MoveAfterLinkEPS_m'
public	MoveBeforeLink		as	'_ZN4Ring14MoveBeforeLinkEPS_m'

; Using forward iterator
public	MoveAfterFwdList	as	'List_MoveAfterFwd'
public	MoveAfterFwdRing	as	'Ring_MoveAfterFwd'
public	MoveBeforeFwdList	as	'List_MoveBeforeFwd'
public	MoveBeforeFwdRing	as	'Ring_MoveBeforeFwd'
public	MoveAfterFwdList	as	'_ZN4List12MoveAfterFwdEPS_m'
public	MoveAfterFwdRing	as	'_ZN4Ring12MoveAfterFwdEPS_m'
public	MoveBeforeFwdList	as	'_ZN4List13MoveBeforeFwdEPS_m'
public	MoveBeforeFwdRing	as	'_ZN4Ring13MoveBeforeFwdEPS_m'

; Using backward iterator
public	MoveAfterBwdList	as	'List_MoveAfterBwd'
public	MoveAfterBwdRing	as	'Ring_MoveAfterBwd'
public	MoveBeforeBwdList	as	'List_MoveBeforeBwd'
public	MoveBeforeBwdRing	as	'Ring_MoveBeforeBwd'
public	MoveAfterBwdList	as	'_ZN4List12MoveAfterBwdEPS_m'
public	MoveAfterBwdRing	as	'_ZN4Ring12MoveAfterBwdEPS_m'
public	MoveBeforeBwdList	as	'_ZN4List13MoveBeforeBwdEPS_m'
public	MoveBeforeBwdRing	as	'_ZN4Ring13MoveBeforeBwdEPS_m'

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;

; Into list head/tail
public	InsertIntoHead		as	'List_InsertIntoHead'
public	InsertIntoTail		as	'List_InsertIntoTail'
public	InsertIntoHead		as	'_ZN4List14InsertIntoHeadEPK6data_t'
public	InsertIntoTail		as	'_ZN4List14InsertIntoTailEPK6data_t'

; Using ring link
public	InsertAfterLink		as	'Ring_InsertAfterLink'
public	InsertBeforeLink	as	'Ring_InsertBeforeLink'
public	InsertAfterLink		as	'_ZN4Ring15InsertAfterLinkEPK6data_t'
public	InsertBeforeLink	as	'_ZN4Ring16InsertBeforeLinkEPK6data_t'

; Using forward iterator
public	InsertAfterFwdList	as	'List_InsertAfterFwd'
public	InsertAfterFwdRing	as	'Ring_InsertAfterFwd'
public	InsertBeforeFwdList	as	'List_InsertBeforeFwd'
public	InsertBeforeFwdRing	as	'Ring_InsertBeforeFwd'
public	InsertAfterFwdList	as	'_ZN4List14InsertAfterFwdEPK6data_t'
public	InsertAfterFwdRing	as	'_ZN4Ring14InsertAfterFwdEPK6data_t'
public	InsertBeforeFwdList	as	'_ZN4List15InsertBeforeFwdEPK6data_t'
public	InsertBeforeFwdRing	as	'_ZN4Ring15InsertBeforeFwdEPK6data_t'

; Using backward iterator
public	InsertAfterBwdList	as	'List_InsertAfterBwd'
public	InsertAfterBwdRing	as	'Ring_InsertAfterBwd'
public	InsertBeforeBwdList	as	'List_InsertBeforeBwd'
public	InsertBeforeBwdRing	as	'Ring_InsertBeforeBwd'
public	InsertAfterBwdList	as	'_ZN4List14InsertAfterBwdEPK6data_t'
public	InsertAfterBwdRing	as	'_ZN4Ring14InsertAfterBwdEPK6data_t'
public	InsertBeforeBwdList	as	'_ZN4List15InsertBeforeBwdEPK6data_t'
public	InsertBeforeBwdRing	as	'_ZN4Ring15InsertBeforeBwdEPK6data_t'

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;

; From list head/tail
public	RemoveHead			as	'List_RemoveHead'
public	RemoveTail			as	'List_RemoveTail'
public	RemoveHead			as	'_ZN4List10RemoveHeadEP6data_t'
public	RemoveTail			as	'_ZN4List10RemoveTailEP6data_t'

; Using ring link
public	RemoveLink			as	'Ring_RemoveLink'
public	RemoveLink			as	'_ZN4Ring10RemoveLinkEP6data_t'

; Using forward iterator
public	RemoveFwdList		as	'List_RemoveFwd'
public	RemoveFwdRing		as	'Ring_RemoveFwd'
public	RemoveFwdList		as	'_ZN4List9RemoveFwdEP6data_t'
public	RemoveFwdRing		as	'_ZN4Ring9RemoveFwdEP6data_t'

; Using backward iterator
public	RemoveBwdList		as	'List_RemoveBwd'
public	RemoveBwdRing		as	'Ring_RemoveBwd'
public	RemoveBwdList		as	'_ZN4List9RemoveBwdEP6data_t'
public	RemoveBwdRing		as	'_ZN4Ring9RemoveBwdEP6data_t'

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;

; Set head/tail element
public	SetHead				as	'List_SetHead'
public	SetTail				as	'List_SetTail'
public	SetHead				as	'_ZN4List7SetHeadEPK6data_t'
public	SetTail				as	'_ZN4List7SetTailEPK6data_t'

; Set link element
public	SetHead				as	'Ring_SetLink'
public	SetHead				as	'_ZN4Ring7SetLinkEPK6data_t'

; Set element which is pointed by forward iterator
public	SetFwd				as	'List_SetFwd'
public	SetFwd				as	'Ring_SetFwd'
public	SetFwd				as	'_ZN4List6SetFwdEPK6data_t'
public	SetFwd				as	'_ZN4Ring6SetFwdEPK6data_t'

; Set element which is pointed by backward iterator
public	SetBwd				as	'List_SetBwd'
public	SetBwd				as	'Ring_SetBwd'
public	SetBwd				as	'_ZN4List6SetBwdEPK6data_t'
public	SetBwd				as	'_ZN4Ring6SetBwdEPK6data_t'

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;

; Get head/tail element
public	GetHead				as	'List_GetHead'
public	GetTail				as	'List_GetTail'
public	GetHead				as	'_ZNK4List7GetHeadEP6data_t'
public	GetTail				as	'_ZNK4List7GetTailEP6data_t'

; Get link element
public	GetHead				as	'Ring_GetLink'
public	GetHead				as	'_ZNK4Ring7GetLinkEP6data_t'

; Get element which is pointed by forward iterator
public	GetFwd				as	'List_GetFwd'
public	GetFwd				as	'Ring_GetFwd'
public	GetFwd				as	'_ZNK4List6GetFwdEP6data_t'
public	GetFwd				as	'_ZNK4Ring6GetFwdEP6data_t'

; Get element which is pointed by backward iterator
public	GetBwd				as	'List_GetBwd'
public	GetBwd				as	'Ring_GetBwd'
public	GetBwd				as	'_ZNK4List6GetBwdEP6data_t'
public	GetBwd				as	'_ZNK4Ring6GetBwdEP6data_t'

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;

; Replace head/tail element
public	ReplaceHead			as	'List_ReplaceHead'
public	ReplaceTail			as	'List_ReplaceTail'
public	ReplaceHead			as	'_ZN4List11ReplaceHeadEP6data_tPKS0_'
public	ReplaceTail			as	'_ZN4List11ReplaceTailEP6data_tPKS0_'

; Replace link element
public	ReplaceHead			as	'Ring_ReplaceLink'
public	ReplaceHead			as	'_ZN4Ring11ReplaceLinkEP6data_tPKS0_'

; Replace element which is pointed by forward iterator
public	ReplaceFwd			as	'List_ReplaceFwd'
public	ReplaceFwd			as	'Ring_ReplaceFwd'
public	ReplaceFwd			as	'_ZN4List10ReplaceFwdEP6data_tPKS0_'
public	ReplaceFwd			as	'_ZN4Ring10ReplaceFwdEP6data_tPKS0_'

; Replace element which is pointed by backward iterator
public	ReplaceBwd			as	'List_ReplaceBwd'
public	ReplaceBwd			as	'Ring_ReplaceBwd'
public	ReplaceBwd			as	'_ZN4List10ReplaceBwdEP6data_tPKS0_'
public	ReplaceBwd			as	'_ZN4Ring10ReplaceBwdEP6data_tPKS0_'

;******************************************************************************;
;       Changing elements order                                                ;
;******************************************************************************;

;==============================================================================;
;       Reversing elements order                                               ;
;==============================================================================;

; Using list head/tail
public	ReverseHead			as	'List_ReverseHead'
public	ReverseTail			as	'List_ReverseTail'
public	ReverseHead			as	'_ZN4List11ReverseHeadEm'
public	ReverseTail			as	'_ZN4List11ReverseTailEm'

; Using ring link
public	ReverseLink			as	'Ring_ReverseLink'
public	ReverseLink			as	'_ZN4Ring11ReverseLinkEm'

; Using forward iterator
public	ReverseFwdList		as	'List_ReverseFwd'
public	ReverseFwdRing		as	'Ring_ReverseFwd'
public	ReverseFwdList		as	'_ZN4List10ReverseFwdEm'
public	ReverseFwdRing		as	'_ZN4Ring10ReverseFwdEm'

; Using backward iterator
public	ReverseBwdList		as	'List_ReverseBwd'
public	ReverseBwdRing		as	'Ring_ReverseBwd'
public	ReverseBwdList		as	'_ZN4List10ReverseBwdEm'
public	ReverseBwdRing		as	'_ZN4Ring10ReverseBwdEm'

;==============================================================================;
;       Swapping elements                                                      ;
;==============================================================================;
public	Swap				as	'List_Swap'
public	Swap				as	'Ring_Swap'
public	Swap				as	'_ZN4List4SwapEv'
public	Swap				as	'_ZN4Ring4SwapEv'

;******************************************************************************;
;       Manipulation with forward iterator                                     ;
;******************************************************************************;

; Set iterator position
public	FwdToIndex			as	'List_FwdToIndex'
public	FwdToIndex			as	'Ring_FwdToIndex'
public	FwdToHead			as	'List_FwdToHead'
public	FwdToHead			as	'Ring_FwdToLink'
public	FwdToTail			as	'List_FwdToTail'
public	FwdToBwd			as	'List_FwdToBwd'
public	FwdToBwd			as	'Ring_FwdToBwd'
public	FwdToIndex			as	'_ZN4List10FwdToIndexEm'
public	FwdToIndex			as	'_ZN4Ring10FwdToIndexEm'
public	FwdToHead			as	'_ZN4List9FwdToHeadEv'
public	FwdToHead			as	'_ZN4Ring9FwdToLinkEv'
public	FwdToTail			as	'_ZN4List9FwdToTailEv'
public	FwdToBwd			as	'_ZN4List8FwdToBwdEv'
public	FwdToBwd			as	'_ZN4Ring8FwdToBwdEv'

; Get iterator position
public	GetFwdPos			as	'List_GetFwdPos'
public	GetFwdPos			as	'Ring_GetFwdPos'
public	GetFwdPos			as	'_ZNK4List9GetFwdPosEv'
public	GetFwdPos			as	'_ZNK4Ring9GetFwdPosEv'

; Change iterator position
public	FwdGoNext			as	'List_FwdGoNext'
public	FwdGoNext			as	'Ring_FwdGoNext'
public	FwdGoPrev			as	'List_FwdGoPrev'
public	FwdGoPrev			as	'Ring_FwdGoPrev'
public	FwdGoNext			as	'_ZN4List9FwdGoNextEm'
public	FwdGoNext			as	'_ZN4Ring9FwdGoNextEm'
public	FwdGoPrev			as	'_ZN4List9FwdGoPrevEm'
public	FwdGoPrev			as	'_ZN4Ring9FwdGoPrevEm'

;******************************************************************************;
;       Manipulation with backward iterator                                    ;
;******************************************************************************;

; Set iterator position
public	BwdToIndex			as	'List_BwdToIndex'
public	BwdToIndex			as	'Ring_BwdToIndex'
public	BwdToHead			as	'List_BwdToHead'
public	BwdToHead			as	'Ring_BwdToLink'
public	BwdToTail			as	'List_BwdToTail'
public	BwdToFwd			as	'List_BwdToFwd'
public	BwdToFwd			as	'Ring_BwdToFwd'
public	BwdToIndex			as	'_ZN4List10BwdToIndexEm'
public	BwdToIndex			as	'_ZN4Ring10BwdToIndexEm'
public	BwdToHead			as	'_ZN4List9BwdToHeadEv'
public	BwdToHead			as	'_ZN4Ring9BwdToLinkEv'
public	BwdToTail			as	'_ZN4List9BwdToTailEv'
public	BwdToFwd			as	'_ZN4List8BwdToFwdEv'
public	BwdToFwd			as	'_ZN4Ring8BwdToFwdEv'

; Get iterator position
public	GetBwdPos			as	'List_GetBwdPos'
public	GetBwdPos			as	'Ring_GetBwdPos'
public	GetBwdPos			as	'_ZNK4List9GetBwdPosEv'
public	GetBwdPos			as	'_ZNK4Ring9GetBwdPosEv'

; Change iterator position
public	BwdGoNext			as	'List_BwdGoNext'
public	BwdGoNext			as	'Ring_BwdGoNext'
public	BwdGoPrev			as	'List_BwdGoPrev'
public	BwdGoPrev			as	'Ring_BwdGoPrev'
public	BwdGoNext			as	'_ZN4List9BwdGoNextEm'
public	BwdGoNext			as	'_ZN4Ring9BwdGoNextEm'
public	BwdGoPrev			as	'_ZN4List9BwdGoPrevEm'
public	BwdGoPrev			as	'_ZN4Ring9BwdGoPrevEm'

;******************************************************************************;
;       Swapping iterators                                                     ;
;******************************************************************************;
public	SwapFwdBwd			as	'List_SwapFwdBwd'
public	SwapFwdBwd			as	'Ring_SwapFwdBwd'
public	SwapFwdBwd			as	'_ZN4List10SwapFwdBwdEv'
public	SwapFwdBwd			as	'_ZN4Ring10SwapFwdBwdEv'

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;

; Minimum value
public	MinFwd				as	'List_MinFwd'
public	MinFwd				as	'Ring_MinFwd'
public	MinBwd				as	'List_MinBwd'
public	MinBwd				as	'Ring_MinBwd'
public	MinFwd				as	'_ZN4List6MinFwdEP6data_tmPFx5adt_tS2_E'
public	MinFwd				as	'_ZN4Ring6MinFwdEP6data_tmPFx5adt_tS2_E'
public	MinBwd				as	'_ZN4List6MinBwdEP6data_tmPFx5adt_tS2_E'
public	MinBwd				as	'_ZN4Ring6MinBwdEP6data_tmPFx5adt_tS2_E'

; Maximum value
public	MaxFwd				as	'List_MaxFwd'
public	MaxFwd				as	'Ring_MaxFwd'
public	MaxBwd				as	'List_MaxBwd'
public	MaxBwd				as	'Ring_MaxBwd'
public	MaxFwd				as	'_ZN4List6MaxFwdEP6data_tmPFx5adt_tS2_E'
public	MaxFwd				as	'_ZN4Ring6MaxFwdEP6data_tmPFx5adt_tS2_E'
public	MaxBwd				as	'_ZN4List6MaxBwdEP6data_tmPFx5adt_tS2_E'
public	MaxBwd				as	'_ZN4Ring6MaxBwdEP6data_tmPFx5adt_tS2_E'

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

; Single key searching
public	FindKeyFwd			as	'List_FindKeyFwd'
public	FindKeyFwd			as	'Ring_FindKeyFwd'
public	FindKeyBwd			as	'List_FindKeyBwd'
public	FindKeyBwd			as	'Ring_FindKeyBwd'
public	FindKeyFwd			as	'_ZN4List10FindKeyFwdEP6data_t5adt_tmPFxS2_S2_E'
public	FindKeyFwd			as	'_ZN4Ring10FindKeyFwdEP6data_t5adt_tmPFxS2_S2_E'
public	FindKeyBwd			as	'_ZN4List10FindKeyBwdEP6data_t5adt_tmPFxS2_S2_E'
public	FindKeyBwd			as	'_ZN4Ring10FindKeyBwdEP6data_t5adt_tmPFxS2_S2_E'

; Keys set searching
public	FindKeysFwd			as	'List_FindKeysFwd'
public	FindKeysFwd			as	'Ring_FindKeysFwd'
public	FindKeysBwd			as	'List_FindKeysBwd'
public	FindKeysBwd			as	'Ring_FindKeysBwd'
public	FindKeysFwd			as	'_ZN4List11FindKeysFwdEP6data_tPK5adt_tmmPFxS2_S2_E'
public	FindKeysFwd			as	'_ZN4Ring11FindKeysFwdEP6data_tPK5adt_tmmPFxS2_S2_E'
public	FindKeysBwd			as	'_ZN4List11FindKeysBwdEP6data_tPK5adt_tmmPFxS2_S2_E'
public	FindKeysBwd			as	'_ZN4Ring11FindKeysBwdEP6data_tPK5adt_tmmPFxS2_S2_E'

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
public	FindDupFwd			as	'List_FindDupFwd'
public	FindDupFwd			as	'Ring_FindDupFwd'
public	FindDupBwd			as	'List_FindDupBwd'
public	FindDupBwd			as	'Ring_FindDupBwd'
public	FindDupFwd			as	'_ZN4List10FindDupFwdEP6data_tPFx5adt_tS2_E'
public	FindDupFwd			as	'_ZN4Ring10FindDupFwdEP6data_tPFx5adt_tS2_E'
public	FindDupBwd			as	'_ZN4List10FindDupBwdEP6data_tPFx5adt_tS2_E'
public	FindDupBwd			as	'_ZN4Ring10FindDupBwdEP6data_tPFx5adt_tS2_E'

;******************************************************************************;
;       Unordered elements searching                                           ;
;******************************************************************************;

; Ascending sort order
public	FindNonAscFwd		as	'List_FindNonAscFwd'
public	FindNonAscFwd		as	'Ring_FindNonAscFwd'
public	FindNonAscBwd		as	'List_FindNonAscBwd'
public	FindNonAscBwd		as	'Ring_FindNonAscBwd'
public	FindNonAscFwd		as	'_ZN4List13FindNonAscFwdEP6data_tPFx5adt_tS2_E'
public	FindNonAscFwd		as	'_ZN4Ring13FindNonAscFwdEP6data_tPFx5adt_tS2_E'
public	FindNonAscBwd		as	'_ZN4List13FindNonAscBwdEP6data_tPFx5adt_tS2_E'
public	FindNonAscBwd		as	'_ZN4Ring13FindNonAscBwdEP6data_tPFx5adt_tS2_E'

; Descending sort order
public	FindNonDscFwd		as	'List_FindNonDscFwd'
public	FindNonDscFwd		as	'Ring_FindNonDscFwd'
public	FindNonDscBwd		as	'List_FindNonDscBwd'
public	FindNonDscBwd		as	'Ring_FindNonDscBwd'
public	FindNonDscFwd		as	'_ZN4List13FindNonDscFwdEP6data_tPFx5adt_tS2_E'
public	FindNonDscFwd		as	'_ZN4Ring13FindNonDscFwdEP6data_tPFx5adt_tS2_E'
public	FindNonDscBwd		as	'_ZN4List13FindNonDscBwdEP6data_tPFx5adt_tS2_E'
public	FindNonDscBwd		as	'_ZN4Ring13FindNonDscBwdEP6data_tPFx5adt_tS2_E'

;******************************************************************************;
;       Searching for differences                                              ;
;******************************************************************************;
public	FindDiffFwd			as	'List_FindDiffFwd'
public	FindDiffFwd			as	'Ring_FindDiffFwd'
public	FindDiffBwd			as	'List_FindDiffBwd'
public	FindDiffBwd			as	'Ring_FindDiffBwd'
public	FindDiffFwd			as	'_ZN4List11FindDiffFwdEP6data_tPKS_mPFx5adt_tS4_E'
public	FindDiffFwd			as	'_ZN4Ring11FindDiffFwdEP6data_tPKS_mPFx5adt_tS4_E'
public	FindDiffBwd			as	'_ZN4List11FindDiffBwdEP6data_tPKS_mPFx5adt_tS4_E'
public	FindDiffBwd			as	'_ZN4Ring11FindDiffBwdEP6data_tPKS_mPFx5adt_tS4_E'

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

; Single key counting
public	CountKeyFwd			as	'List_CountKeyFwd'
public	CountKeyFwd			as	'Ring_CountKeyFwd'
public	CountKeyBwd			as	'List_CountKeyBwd'
public	CountKeyBwd			as	'Ring_CountKeyBwd'
public	CountKeyFwd			as	'_ZNK4List11CountKeyFwdE5adt_tmPFxS0_S0_E'
public	CountKeyFwd			as	'_ZNK4Ring11CountKeyFwdE5adt_tmPFxS0_S0_E'
public	CountKeyBwd			as	'_ZNK4List11CountKeyBwdE5adt_tmPFxS0_S0_E'
public	CountKeyBwd			as	'_ZNK4Ring11CountKeyBwdE5adt_tmPFxS0_S0_E'

; Keys set counting
public	CountKeysFwd		as	'List_CountKeysFwd'
public	CountKeysFwd		as	'Ring_CountKeysFwd'
public	CountKeysBwd		as	'List_CountKeysBwd'
public	CountKeysBwd		as	'Ring_CountKeysBwd'
public	CountKeysFwd		as	'_ZNK4List12CountKeysFwdEPK5adt_tmmPFxS0_S0_E'
public	CountKeysFwd		as	'_ZNK4Ring12CountKeysFwdEPK5adt_tmmPFxS0_S0_E'
public	CountKeysBwd		as	'_ZNK4List12CountKeysBwdEPK5adt_tmmPFxS0_S0_E'
public	CountKeysBwd		as	'_ZNK4Ring12CountKeysBwdEPK5adt_tmmPFxS0_S0_E'

;******************************************************************************;
;       Sorting                                                                ;
;******************************************************************************;

; Ascending sort order
public	SortAscList			as	'List_SortAsc'
public	SortAscRing			as	'Ring_SortAsc'
public	SortAscList			as	'_ZN4List7SortAscEPFx5adt_tS0_E'
public	SortAscRing			as	'_ZN4Ring7SortAscEPFx5adt_tS0_E'

; Descending sort order
public	SortDscList			as	'List_SortDsc'
public	SortDscRing			as	'Ring_SortDsc'
public	SortDscList			as	'_ZN4List7SortDscEPFx5adt_tS0_E'
public	SortDscRing			as	'_ZN4Ring7SortDscEPFx5adt_tS0_E'

;******************************************************************************;
;       Merging of sorted lists                                                ;
;******************************************************************************;

; Ascending sort order
public	MergeAscList		as	'List_MergeAsc'
public	MergeAscRing		as	'Ring_MergeAsc'
public	MergeAscList		as	'_ZN4List8MergeAscEPKS_PFx5adt_tS2_E'
public	MergeAscRing		as	'_ZN4Ring8MergeAscEPKS_PFx5adt_tS2_E'

; Descending sort order
public	MergeDscList		as	'List_MergeDsc'
public	MergeDscRing		as	'Ring_MergeDsc'
public	MergeDscList		as	'_ZN4List8MergeDscEPKS_PFx5adt_tS2_E'
public	MergeDscRing		as	'_ZN4Ring8MergeDscEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
public	UniqueList			as	'List_Unique'
public	UniqueRing			as	'Ring_Unique'
public	UniqueList			as	'_ZN4List6UniqueEPKS_PFx5adt_tS2_E'
public	UniqueRing			as	'_ZN4Ring6UniqueEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       Comparison of lists/rings                                              ;
;******************************************************************************;
public	Compare				as	'List_Compare'
public	Compare				as	'Ring_Compare'
public	Compare				as	'_ZNK4List7CompareEPKS_PFx5adt_tS2_E'
public	Compare				as	'_ZNK4Ring7CompareEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

; Check for sort order
public	CheckSortAsc		as	'List_CheckSortAsc'
public	CheckSortAsc		as	'Ring_CheckSortAsc'
public	CheckSortDsc		as	'List_CheckSortDsc'
public	CheckSortDsc		as	'Ring_CheckSortDsc'
public	CheckSortAsc		as	'_ZNK4List12CheckSortAscEPFx5adt_tS0_E'
public	CheckSortAsc		as	'_ZNK4Ring12CheckSortAscEPFx5adt_tS0_E'
public	CheckSortDsc		as	'_ZNK4List12CheckSortDscEPFx5adt_tS0_E'
public	CheckSortDsc		as	'_ZNK4Ring12CheckSortDscEPFx5adt_tS0_E'

; Check for duplicate values
public	CheckDup			as	'List_CheckDup'
public	CheckDup			as	'Ring_CheckDup'
public	CheckDup			as	'_ZNK4List8CheckDupEPFx5adt_tS0_E'
public	CheckDup			as	'_ZNK4Ring8CheckDupEPFx5adt_tS0_E'

; Check for equality
public	IsEqual				as	'List_IsEqual'
public	IsEqual				as	'Ring_IsEqual'
public	IsEqual				as	'_ZNK4List7IsEqualEPKS_PFx5adt_tS2_E'
public	IsEqual				as	'_ZNK4Ring7IsEqualEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       List/ring properties                                                   ;
;******************************************************************************;

; List capacity
public	GetCapacity			as	'List_Capacity'
public	GetCapacity			as	'Ring_Capacity'
public	GetCapacity			as	'_ZNK4List8CapacityEv'
public	GetCapacity			as	'_ZNK4Ring8CapacityEv'

; List size
public	GetSize				as	'List_Size'
public	GetSize				as	'Ring_Size'
public	GetSize				as	'_ZNK4List4SizeEv'
public	GetSize				as	'_ZNK4Ring4SizeEv'

; Check if list is empty
public	IsEmpty				as	'List_IsEmpty'
public	IsEmpty				as	'Ring_IsEmpty'
public	IsEmpty				as	'_ZNK4List7IsEmptyEv'
public	IsEmpty				as	'_ZNK4Ring7IsEmptyEv'

; Check if list is initialized
public	IsInit				as	'List_IsInit'
public	IsInit				as	'Ring_IsInit'
public	IsInit				as	'_ZNK4List6IsInitEv'
public	IsInit				as	'_ZNK4Ring6IsInitEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
KSCALE		= 4								; Key scale factor
NSCALE		= 8								; Node scale factor
KSIZE		= 1 shl KSCALE					; Size of key (bytes)
NSIZE		= 1 shl NSCALE					; Size of node (bytes)
NMASK		= not (NSIZE - 1)				; Mask to extract node index
IMASK		= NSIZE - KSIZE					; Mask to extract element index
EMPTY		= -NSIZE						; Pointer which points to empty node
MINCAP		= 1 shl	PSCALE					; Min capacity of list/ring object

;==============================================================================;
;       Limit sizes for the nodes                                              ;
;==============================================================================;
NMAX		= NSIZE - KSIZE					; Max size of node
NMIN		= NSIZE / 2						; Min size of node

;==============================================================================;
;       Offsets inside list/ring object                                        ;
;==============================================================================;
ARRAY		= 0 * 8							; Offset of array pointer
CAPACITY	= 1 * 8							; Offset of object capacity field
SIZE		= 2 * 8							; Offset of object size field
POOL		= 3 * 8							; Offset of pool free node field
FWD			= 4 * 8							; Offset of forward iterator field
BWD			= 5 * 8							; Offset of backward iterator field
HEAD		= 6 * 8							; Offset of head pointer field
TAIL		= 7 * 8							; Offset of tail pointer field

;==============================================================================;
;       Offsets inside node                                                    ;
;==============================================================================;
FDIR		= 0 * 8							; Offset of forward direction pointer
BDIR		= 1 * 8							; Offset of backward direction pointer
NDATA		= 2 * 8							; Offset of node data field

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
;       Extending list/ring capacity                                           ;
;******************************************************************************;
Extend:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
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
		sub		sc_prm1, NSIZE
		mov		sc_num, SYSCALL_MREMAP
		syscall								; array = mremap (array - 1, cap, newcap, MREMAP_MAYMOVE)
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Update object properties]-------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		newcap, [s_ncap]			; get "newcap" variable from the stack
		mov		oldcap, [this + CAPACITY]	; get old capacity of the list
		mov		oldpool, [this + POOL]		; get old index of pool free node
		add		array, NSIZE				; array++
		sub		oldcap, NSIZE				; oldcap -= NSIZE
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], newcap	; this.capacity = newcap
		mov		[this + POOL], oldcap		; this.pool = oldcap
		mov		param4, oldpool
		mov		param3, newcap
		sub		param3, NSIZE
		mov		param2, oldcap
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		InitFree					; return InitFree (array, oldcap - NSIZE, newcap - NSIZE, pool)
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Delete element from the node                                           ;
;******************************************************************************;
DeleteCore:
;---[Parameters]---------------------------
data	equ		rdi							; pointer to data array
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
;       Replace element in the left node                                       ;
;******************************************************************************;
ReplaceLeftCore:
;---[Parameters]---------------------------
data	equ		rdi							; pointer to data array
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
;       Replace element in the right node                                      ;
;******************************************************************************;
ReplaceRightCore:
;---[Parameters]---------------------------
data	equ		rdi							; pointer to data array
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
;       Join two nodes                                                         ;
;******************************************************************************;
JoinCore:
;---[Parameters]---------------------------
tdata	equ		rdi							; pointer to target array of keys
sdata	equ		rsi							; pointer to source array of keys
size	equ		rdx							; size of right node
;---[Internal variables]-------------------
count	equ		rax							; count of iterations
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
temp3	equ		xmm4						; temporary register #4
smask	= 1 shl (KSCALE + 2) - 1			; mask for scalar loop count
vmask	= not smask							; mask for vector loop count
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
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
;       Split the node                                                         ;
;******************************************************************************;
SplitCore:
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
		mov		count, NMIN / 4
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
;---[End of splitting loop]----------------
		ret

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
macro	CONSTRUCTOR		ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
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
		shl		cap, KSCALE + 1
		add		cap, NSIZE - KSIZE
		and		cap, -NSIZE					; cap = cap * 2 * KSIZE + NSIZE - KSIZE & (-NSIZE)
	Capacity	cap, array, MINCAP			; compute capacity of the object
		mov		[s_cap], cap				; save "cap" variable into the stack
;---[Allocate memory for the object]-------
		mov		sc_prm6, 0
		mov		sc_prm5, -1
		mov		sc_prm4, 0x22
		mov		sc_prm3, 0x3
		mov		sc_prm2, cap
		mov		sc_prm1, 0
		mov		sc_num, SYSCALL_MMAP
		syscall								; array = mmap (NULL, cap, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Normal execution branch]--------------
		add		array, NSIZE
		mov		[this + ARRAY], array		; this.array = array + 1
		mov		[this + CAPACITY], cap		; this.capacity = cap
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + POOL], 0		; this.pool = 0
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + HEAD], EMPTY	; this.head = EMPTY
if ~ring
		mov		qword [this + TAIL], EMPTY	; this.tail = EMPTY
end if
		mov		param4, EMPTY
		mov		param3, cap
		sub		param3, NSIZE
		mov		param2, 0
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		InitFree					; return InitFree (array, pool, cap - NSIZE, EMPTY)
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + POOL], EMPTY	; this.pool = EMPTY
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + HEAD], EMPTY	; this.head = EMPTY
if ~ring
		mov		qword [this + TAIL], EMPTY	; this.tail = EMPTY
end if
		add		stack, space				; restoring back the stack pointer
		ret
}
ConstructorList:	CONSTRUCTOR	0
ConstructorRing:	CONSTRUCTOR	1

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
macro	COPY_CONSTRUCTOR	ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target list/ring object
source	equ		rsi							; pointer to source list/ring object
;---[Internal variables]-------------------
array	equ		rax							; pointer to array of nodes
temp	equ		array						; temporary register
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
		add		array, NSIZE
		mov		[this + ARRAY], array		; this.array = array + 1
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
		mov		temp, [source + HEAD]
		mov		[this + HEAD], temp			; this.head = source.head
if ~ring
		mov		temp, [source + TAIL]
		mov		[this + TAIL], temp			; this.tail = source.tail
end if
;---[Copy content of nodes]----------------
		mov		param3, [source + CAPACITY]
		mov		param2, [source + ARRAY]
		sub		param2, NSIZE
		mov		param1, [this + ARRAY]
		sub		param1, NSIZE
		add		stack, space				; restoring back the stack pointer
		jmp		Copy						; return Array::Copy (this.array - 1, source.array - 1, source.capacity)
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + POOL], EMPTY	; this.pool = EMPTY
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + HEAD], EMPTY	; this.head = EMPTY
if ~ring
		mov		qword [this + TAIL], EMPTY	; this.tail = EMPTY
end if
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
CopyConstructorList:	COPY_CONSTRUCTOR	0
CopyConstructorRing:	COPY_CONSTRUCTOR	1

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
macro	DESTRUCTOR	ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		sc_prm2, [this + CAPACITY]
		mov		sc_prm1, [this + ARRAY]
		sub		sc_prm1, NSIZE
		mov		sc_num, SYSCALL_MUNMAP
		syscall								; munmap (array - 1, capacity)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + POOL], EMPTY	; this.pool = EMPTY
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		mov		qword [this + HEAD], EMPTY	; this.head = EMPTY
if ~ring
		mov		qword [this + TAIL], EMPTY	; this.tail = EMPTY
end if
		add		stack, space				; restoring back the stack pointer
		ret
}
DestructorList:	DESTRUCTOR	0
DestructorRing:	DESTRUCTOR	1

;******************************************************************************;
;       Copying elements                                                       ;
;******************************************************************************;
macro	COPY_MOVE	func1, cmd, offst1, offst2, shift, check, rev, bwd, ring, move
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target list/ring object
source	equ		rsi							; pointer to source list/ring object
count	equ		rdx							; count of nodes to copy
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
remain	equ		rdx							; remain elements
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
node	equ		r10							; node index
next	equ		remain						; next node
size	equ		result						; object size
value	equ		xmm0						; value to insert
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_count	equ		stack + 2 * 8				; stack position of "count" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_iter	equ		stack + 4 * 8				; stack position of "iter" variable
s_cnt	equ		stack + 5 * 8				; stack position of "counter" variable
s_limit	equ		stack + 6 * 8				; stack position of "limit" variable
space	= 7 * 8								; stack size required by the procedure
if ring
insfunc	= InsertCoreRing					; insert function
remfunc = RemoveCoreRing					; remove function
else
insfunc	= InsertCoreList					; insert function
remfunc = RemoveCoreList					; remove function
end if
if bwd
dir		= BDIR								; direction of iteration
else
dir		= FDIR								; direction of iteration
end if
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.error						;     then go to error branch
;---[Check target iterator]----------------
if check
		cmp		qword [this + offst1], EMPTY; if (iter == EMPTY)
		je		.error						;     then go to error branch
end if
;---[Check source iterator]----------------
		mov		array, [source + ARRAY]		; get pointer to array of nodes
		mov		size, [source + SIZE]		; get source object size
		mov		iter, [source + offst1]		; get source iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     then go to error branch
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
		mov		[s_count], count			; save "count" variable into the stack
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Get real count]-----------------------
if ~ring | rev
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		lea		param3, [count - KSIZE]
		mov		param2, iter
		mov		param1, array
		call	func1						; result = func (array, iter1, count - KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.corr						;     then correct the iterator
.cback:	mov		count, [s_count]			; get "count" variable from the stack
end if
if rev
		mov		iter, result				; iter = result
		mov		[s_iter], result			; save "iter" variable into the stack
end if
;---[Check object capacity]----------------
		add		count, [this + SIZE]		; count = count + size
		lea		count, [count * 2 + NSIZE - KSIZE]
		and		count, -NSIZE				; count = count * 2 + NSIZE - KSIZE & (-NSIZE)
	Capacity	count, result, MINCAP		; compute new capacity of target object
		cmp		count, [this + CAPACITY]	; if (count > capacity)
		ja		.ext						;     then try to extend object capacity
.eback:	mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + node + FDIR]
		lea		size, [size + node - KSIZE]	; size = node + (array[node].fdir & IMASK) - KSIZE
if bwd
		mov		[s_limit], node				; save "limit" variable into the stack
else
		mov		[s_limit], size				; save "limit" variable into the stack
end if
;---[Insert elements into target list]-----
		mov		count, [s_count]			; get "count" variable from the stack
		mov		[s_cnt], count				; counter = count
@@:		movdqa	value, [array + iter + NDATA]
		mov		iter, [this + offst1]
		lea		param2, [iter + shift]
		call	insfunc						; call this.insfunc (this.iter, value)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		cmd		iter, KSIZE					; change iterator position
		cmp		iter, [s_limit]				; if (iter cond limit)
if bwd
		jl		.next						;     then go to next node
else
		jg		.next						;     then go to next node
end if
.back:	mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_cnt], KSIZE		; counter--
		jnz		@b							; do while (counter != 0)
;---[Remove elements from source list]-----
if move
		mov		count, [s_count]			; get "count" variable from the stack
		mov		[s_cnt], count				; counter = count
@@:		mov		this, [s_src]				; get "source" variable from the stack
		mov		param2, [this + offst1]
		call	remfunc						; call source.remfunc (iter)
		sub		qword [s_cnt], KSIZE		; counter--
		jnz		@b							; do while (counter != 0)
end if
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_count]			; get "count" variable from the stack
		shr		result, KSCALE				; return count
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, count
		call	Extend						; status = this.Extend (low)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		test	status, status				; if (status)
		jnz		.eback						;     then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct iterator branch]--------------
if ~ring | rev
.corr:	mov		result, [source + offst2]	; correct iterator value
		add		remain, KSIZE
		sub		[s_count], remain			; count -= remain + KSIZE
		jmp		.cback						; go back
end if
;---[Go to another node branch]------------
.next:	mov		next, NMASK					; load node mask
		and		next, [array + node + dir]	; next = array[node].dir & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + next + FDIR]
		lea		size, [size + next - KSIZE]	; size = next + (array[next].fdir & IMASK) - KSIZE
if bwd
		mov		iter, size					; iter = next + (array[next].fdir & IMASK) - KSIZE
		mov		[s_limit], next				; save "limit" variable into the stack
else
		mov		iter, next					; iter = next
		mov		[s_limit], size				; save "limit" variable into the stack
end if
		jmp		.back						; go back
}

; Into list head/tail
CopyIntoHead:		COPY_MOVE	GoNext, sub, HEAD, TAIL, 0, 0, 1, 1, 0, 0
CopyIntoTail:		COPY_MOVE	GoPrev, add, TAIL, HEAD, KSIZE, 0, 1, 0, 0, 0

; Using ring link
CopyAfterLink:		COPY_MOVE	GoNext, sub, HEAD, TAIL, KSIZE, 0, 1, 1, 1, 0
CopyBeforeLink:		COPY_MOVE	GoNext, sub, HEAD, TAIL, 0, 0, 1, 1, 1, 0

; Using forward iterator
CopyAfterFwdList:	COPY_MOVE	GoNext, sub, FWD, TAIL, KSIZE, 1, 1, 1, 0, 0
CopyAfterFwdRing:	COPY_MOVE	GoNext, sub, FWD, BWD, KSIZE, 1, 1, 1, 1, 0
CopyBeforeFwdList:	COPY_MOVE	GoNext, add, FWD, TAIL, 0, 1, 0, 0, 0, 0
CopyBeforeFwdRing:	COPY_MOVE	GoNext, add, FWD, BWD, 0, 1, 0, 0, 1, 0

; Using backward iterator
CopyAfterBwdList:	COPY_MOVE	GoPrev, add, BWD, HEAD, 0, 1, 1, 0, 0, 0
CopyAfterBwdRing:	COPY_MOVE	GoPrev, add, BWD, FWD, 0, 1, 1, 0, 1, 0
CopyBeforeBwdList:	COPY_MOVE	GoPrev, sub, BWD, HEAD, KSIZE, 1, 0, 1, 0, 0
CopyBeforeBwdRing:	COPY_MOVE	GoPrev, sub, BWD, FWD, KSIZE, 1, 0, 1, 1, 0

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;

; Into list head/tail
MoveIntoHead:		COPY_MOVE	GoNext, sub, HEAD, TAIL, 0, 0, 1, 1, 0, 1
MoveIntoTail:		COPY_MOVE	GoPrev, add, TAIL, HEAD, KSIZE, 0, 1, 0, 0, 1

; Using ring link
MoveAfterLink:		COPY_MOVE	GoNext, sub, HEAD, TAIL, KSIZE, 0, 1, 1, 1, 1
MoveBeforeLink:		COPY_MOVE	GoNext, sub, HEAD, TAIL, 0, 0, 1, 1, 1, 1

; Using forward iterator
MoveAfterFwdList:	COPY_MOVE	GoNext, sub, FWD, TAIL, KSIZE, 1, 1, 1, 0, 1
MoveAfterFwdRing:	COPY_MOVE	GoNext, sub, FWD, BWD, KSIZE, 1, 1, 1, 1, 1
MoveBeforeFwdList:	COPY_MOVE	GoNext, add, FWD, TAIL, 0, 1, 0, 0, 0, 1
MoveBeforeFwdRing:	COPY_MOVE	GoNext, add, FWD, BWD, 0, 1, 0, 0, 1, 1

; Using backward iterator
MoveAfterBwdList:	COPY_MOVE	GoPrev, add, BWD, HEAD, 0, 1, 1, 0, 0, 1
MoveAfterBwdRing:	COPY_MOVE	GoPrev, add, BWD, FWD, 0, 1, 1, 0, 1, 1
MoveBeforeBwdList:	COPY_MOVE	GoPrev, sub, BWD, HEAD, KSIZE, 1, 0, 1, 0, 1
MoveBeforeBwdRing:	COPY_MOVE	GoPrev, sub, BWD, FWD, KSIZE, 1, 0, 1, 1, 1

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;

;==============================================================================;
;       Insert element into the node                                           ;
;==============================================================================;
macro	INSERT	ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
node	equ		rsi							; node index
size	equ		rdx							; node size
pos		equ		rcx							; insert position
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r9							; pointer to array of nodes
iter	equ		r10							; iterator value
iter1	equ		r11							; new iterator value
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
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_node], node				; save "node" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Insert data into the node]------------
		add		qword [array + node + FDIR], KSIZE
		neg		pos							; pos = -pos
		add		node, size					; node += size
		lea		param1, [array + node + NDATA]
		lea		param2, [pos + size]
		call	ReplaceLeftCore				; call ReplaceLeftCore (array[node].data + size, size - pos, value)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
;---[Correct tail iterator]----------------
if ~ring
		mov		iter, [this + TAIL]			; iter = this.tail
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.tail						;     then check iterator position
end if
;---[Correct forward iterator]-------------
.back1:	mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then check iterator position
;---[Correct backward iterator]------------
.back2:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then check iterator position
;---[Normal exit]--------------------------
.back3:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct tail iterator]----------------
if ~ring
.tail:	add		iter, KSIZE					; iter = iter + KSIZE
		mov		[this + TAIL], iter			; update iterator position
		jmp		.back1						; go back
end if
;---[Correct forward iterator branch]------
.fwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter + KSIZE]
		cmp		ival, pos					; if (ival >= pos)
		cmovae	iter, iter1					;     iter = iter + KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back2						; go back
;---[Correct backward iterator branch]-----
.bwd:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter + KSIZE]
		cmp		ival, pos					; if (ival >= pos)
		cmovae	iter, iter1					;     iter = iter + KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back3						; go back
}
InsertList:	INSERT	0
InsertRing:	INSERT	1

;==============================================================================;
;       Insert element into the left node                                      ;
;==============================================================================;
InsertLeft:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
node	equ		rsi							; node index
pos		equ		rdx							; insert position
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
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
		call	ReplaceLeftCore				; call ReplaceLeftCore (array[node].data + NMIN - KSIZE, NMIN - KSIZE - pos, value)
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

;==============================================================================;
;       Insert element into the right node                                     ;
;==============================================================================;
InsertRight:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
node	equ		rsi							; node index
pos		equ		rdx							; insert position
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
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
		call	ReplaceRightCore			; call ReplaceRightCore (array[node].data, pos, value)
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
macro	SPLIT	ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
node	equ		rsi							; index of node to split
pos		equ		rdx							; insert position
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
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
		lea		param2, [array + node + NMIN - KSIZE + NDATA]
		lea		param1, [array + nnode + NDATA]
		call	SplitCore					; call SplitCore (array[nnode].data, array[node].data + NMIN + KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		nnode, [s_nnode]			; get "nnode" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
		movdqa	value, [s_value]			; get "value" variable from the stack
;---[Correct tail iterator]----------------
if ~ring
		mov		iter, [this + TAIL]			; iter = this.tail
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.tail						;     then check iterator position
end if
;---[Correct forward iterator]-------------
.back1:	mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then check iterator position
;---[Correct backward iterator]------------
.back2:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then check iterator position
.back3:	cmp		pos, NMIN - KSIZE			; if (pos > NMIN - KSIZE)
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
;---[Correct tail iterator branch]---------
if ~ring
.tail:	lea		iter, [nnode + NMIN - KSIZE]; iter = nnode + NMIN - KSIZE
		mov		[this + TAIL], iter			; update iterator position
		jmp		.back1						; go back
end if
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
		jmp		.back2						; go back
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
		jmp		.back3						; go back
}
SplitList:	SPLIT	0
SplitRing:	SPLIT	1

;==============================================================================;
;       Insert element into list                                               ;
;==============================================================================;
macro	INSERT_CORE	insfunc, splitfunc, val, ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
iter	equ		rsi							; iterator value
value	equ		xmm0						; value to insert
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
node	equ		r9							; node index
nnode	equ		r10							; new node
index	equ		r11							; insert position
nsize	equ		result						; node size
;------------------------------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		add		qword [this + SIZE], KSIZE	; this.size++
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		mov		nsize, IMASK				; load index mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
		and		nsize, [array + node + FDIR]; nsize = array[node].fdir & IMASK
;---[Check list properties]----------------
		cmp		node, EMPTY					; if (node == EMPTY)
		je		.init						;     then init list
		cmp		nsize, NMAX					; if (nsize == NMAX)
		je		.split						;     then split the node
		mov		param4, index
		mov		param3, nsize
		mov		param2, node
		jmp		insfunc						; return this.insfunc (node, nsize, index, value)
;---[Split node branch]--------------------
.split:	mov		param3, index
		mov		param2, node
		jmp		splitfunc					; return this.splitfunc (node, index, value)
;---[Init list]----------------------------
.init:	mov		nnode, [this + POOL]		; nnode = this.pool
		mov		result, [array + nnode + FDIR]
		mov		[this + POOL], result		; this.pool = array[nnode].fdir
		mov		[this + HEAD], nnode		; update head iterator
if ~ring
		mov		[this + TAIL], nnode		; update tail iterator
end if
		mov		result, val
		add		result, KSIZE
		mov		qword [array + nnode + FDIR], result
		mov		qword [array + nnode + BDIR], val
		movdqa	[array + nnode + NDATA], value
		mov		status, 1					; return true
		ret
}
InsertCoreList:	INSERT_CORE	InsertList, SplitList, EMPTY, 0
InsertCoreRing:	INSERT_CORE	InsertRing, SplitRing, nnode, 1
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INSERT1		func, offst, shift
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rdx							; iterator value
value	equ		xmm0						; value to insert
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		cmp		qword [this + POOL], EMPTY	; if (this.pool == EMPTY)
		je		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	mov		iter, [this + offst]		; get iterator value
		movdqu	value, [data]				; value = data[0]
		lea		param2, [iter + shift]
		jmp		func						; call func (iter, value)
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
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INSERT2		func, offst, shift
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
iter	equ		rdx							; iterator value
value	equ		xmm0						; value to insert
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		cmp		qword [this + POOL], EMPTY	; if (this.pool == EMPTY)
		je		.ext						;     then try to extend object capacity
;---[Check iterator position]--------------
.back:	mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		movdqu	value, [data]				; value = data[0]
		lea		param2, [iter + shift]
		jmp		func						; call func (iter, value)
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
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}

; Into list head/tail
InsertIntoHead:			INSERT1	InsertCoreList, HEAD, 0
InsertIntoTail:			INSERT1	InsertCoreList, TAIL, KSIZE

; Using ring link
InsertAfterLink:		INSERT1	InsertCoreRing, HEAD, KSIZE
InsertBeforeLink:		INSERT1	InsertCoreRing, HEAD, 0

; Using forward iterator
InsertAfterFwdList:		INSERT2	InsertCoreList, FWD, KSIZE
InsertAfterFwdRing:		INSERT2	InsertCoreRing, FWD, KSIZE
InsertBeforeFwdList:	INSERT2	InsertCoreList, FWD, 0
InsertBeforeFwdRing:	INSERT2	InsertCoreRing, FWD, 0

; Using backward iterator
InsertAfterBwdList:		INSERT2	InsertCoreList, BWD, 0
InsertAfterBwdRing:		INSERT2	InsertCoreRing, BWD, 0
InsertBeforeBwdList:	INSERT2	InsertCoreList, BWD, KSIZE
InsertBeforeBwdRing:	INSERT2	InsertCoreRing, BWD, KSIZE

;******************************************************************************;
;       Removing of element                                                    ;
;******************************************************************************;

;==============================================================================;
;       Delete element from the node                                           ;
;==============================================================================;
macro	DELETE	ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
node	equ		rsi							; node index
size	equ		rdx							; node size
pos		equ		rcx							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r9							; pointer to array of nodes
iter	equ		r10							; iterator value
iter1	equ		r11							; new iterator value
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
		sub		qword [array + node + FDIR], KSIZE
		add		node, pos					; node += pos
		neg		pos							; pos = -pos
		lea		param1, [array + node + NDATA]
		lea		param2, [pos + size]
		call	DeleteCore					; call DeleteCore (array[node].data + pos, size - pos)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		cmp		qword [s_size], 0			; if (size == 0)
		jz		.free						;     then free the node
;---[Correct tail iterator]----------------
if ~ring
		mov		iter, [this + TAIL]			; iter = this.tail
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.tail						;     then check iterator position
end if
;---[Correct forward iterator]-------------
.back1:	mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.fwd						;     then check iterator position
;---[Correct backward iterator]------------
.back2:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, node					; if (nval == node)
		je		.bwd						;     then check iterator position
;---[Normal exit]--------------------------
.back3:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct tail iterator branch]---------
if ~ring
.tail:	sub		iter, KSIZE					; iter = iter - KSIZE
		mov		[this + TAIL], iter			; update iterator position
		jmp		.back1						; go back
end if
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
		jmp		.back2						; go back
@@:		mov		param3, KSIZE
		lea		param2, [iter - KSIZE]
		mov		param1, array
		call	GoNext						; fwd = GoNext (array, iter - KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		[this + FWD], result		; update iterator position
		jmp		.back2						; go back
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
		jmp		.back3						; go back
@@:		mov		param3, KSIZE
		lea		param2, [iter + KSIZE]
		mov		param1, array
		call	GoPrev						; bwd = GoPrev (array, iter + KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		node, [s_node]				; get "node" variable from the stack
		mov		[this + BWD], result		; update iterator position
		jmp		.back3						; go back
;---[Set list/ring properties]-------------
.free:	mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
if ~ring
		mov		qword [this + HEAD], EMPTY	; this.head = EMPTY
		mov		qword [this + TAIL], EMPTY	; this.tail = EMPTY
end if
;---[Free node]----------------------------
		mov		result, [this + POOL]		; array[node].fdir = this.pool
		mov		[array + node + FDIR], result
		mov		[this + POOL], node			; this.pool = node
		mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
}
DeleteList:	DELETE	0
DeleteRing:	DELETE	1

;==============================================================================;
;       Replace element in the left node                                       ;
;==============================================================================;
macro	REPLACE_LEFT
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
lnode	equ		rsi							; left node index
rnode	equ		rdx							; right node index
size	equ		rcx							; node size
pos		equ		r8							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r9							; pointer to array of nodes
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
s_size	equ		stack + 4 * 8				; stack position of "size" variable
s_pos	equ		stack + 5 * 8				; stack position of "pos" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_lnode], lnode			; save "lnode" variable into the stack
		mov		[s_rnode], rnode			; save "rnode" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Get value]----------------------------
		add		lnode, array
		add		lnode, size
		movdqa	value, [lnode + NDATA]		; value = array[lnode].data[size]
;---[Replace element in the node]----------
		add		rnode, pos					; rnode += pos
		lea		param1, [array + rnode + NDATA]
		mov		param2, pos
		call	ReplaceLeftCore				; call ReplaceLeftCore (array[rnode].data + pos, pos, value)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		sub		qword [array + lnode + FDIR], KSIZE
		mov		this, [s_this]				; get "this" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct backward iterator]------------
		mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then check iterator position
;---[Correct forward iterator]-------------
.back2:	mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then check iterator position
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then check iterator position
;---[Normal exit]--------------------------
.back3:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct backward iterator branch]-----
.bleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		iter1, rnode
		cmp		ival, [s_size]				; if (ival == size)
		cmove	iter, iter1					;     iter = rnode
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
.brght:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter + KSIZE]
		cmp		ival, [s_pos]				; if (ival < pos)
		cmovb	iter, iter1					;    iter = iter + KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back2						; go back
;---[Correct forward iterator branch]------
.fleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		mov		iter1, rnode
		cmp		ival, [s_size]				; if (ival == size)
		cmove	iter, iter1					;     iter = rnode
		mov		[this + FWD], iter			; update iterator position
		jmp		.back3						; go back
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
		jmp		.back3						; go back
@@:		mov		param3, KSIZE
		lea		param2, [iter - KSIZE]
		mov		param1, [s_array]
		call	GoNext						; fwd = GoNext (array, iter - KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + FWD], result		; update iterator position
		jmp		.back3						; go back
}
ReplaceLeftList:	REPLACE_LEFT
ReplaceLeftRing:	REPLACE_LEFT

;==============================================================================;
;       Replace element in the right node                                      ;
;==============================================================================;
macro	REPLACE_RIGHT	ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
lnode	equ		rsi							; left node index
rnode	equ		rdx							; right node index
size	equ		rcx							; node size
pos		equ		r8							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r9							; pointer to array of nodes
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
s_size	equ		stack + 4 * 8				; stack position of "size" variable
s_pos	equ		stack + 5 * 8				; stack position of "pos" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_lnode], lnode			; save "lnode" variable into the stack
		mov		[s_rnode], rnode			; save "rnode" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Get value]----------------------------
		add		rnode, array
		movdqa	value, [rnode + NDATA]		; value = array[rnode].data[0]
;---[Replace element in the node]----------
		add		lnode, pos					; lnode += pos
		neg		pos							; pos = -pos
		lea		param1, [array + lnode + NDATA]
		lea		param2, [pos + NMIN - KSIZE]
		call	ReplaceRightCore			; call ReplaceRightCore (array[lnode].data + pos, NMIN - KSIZE - pos, value)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		sub		qword [array + rnode + FDIR], KSIZE
		lea		param1, [array + rnode + NDATA]
		mov		param2, size
		call	DeleteCore					; call DeleteCore (array[rnode].data, size)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct tail iterator]----------------
if ~ring
		mov		iter, [this + TAIL]			; iter = this.tail
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, rnode					; if (nval == node)
		je		.tail						;     then check iterator position
end if
;---[Correct forward iterator]-------------
.back1:	mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then check iterator position
;---[Correct backward iterator]------------
.back2:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then check iterator position
;---[Normal exit]--------------------------
.back3:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct tail iterator branch]---------
if ~ring
.tail:	lea		iter, [lnode + NMAX - KSIZE]; iter = lnode + NMAX - KSIZE
		mov		[this + TAIL], iter			; update iterator position
		jmp		.back1						; go back
end if
;---[Correct forward iterator branch]------
.frght:	sub		iter, KSIZE					; iter -= KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [lnode + NMIN - KSIZE]
		cmp		ival, [s_size]				; if (ival > size)
		cmova	iter, iter1					;    iter = lnode + NMIN - KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back2						; go back
.fleft:	mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [iter - KSIZE]
		cmp		ival, [s_pos]				; if (ival > pos)
		cmova	iter, iter1					;     iter = iter - KSIZE
		mov		[this + FWD], iter			; update iterator position
		jmp		.back2						; go back
;---[Correct backward iterator branch]-----
.brght:	sub		iter, KSIZE					; iter -= KSIZE
		mov		ival, IMASK					; load index mask
		and		ival, iter					; ival = iter & IMASK
		lea		iter1, [lnode + NMIN - KSIZE]
		cmp		ival, [s_size]				; if (ival > size)
		cmova	iter, iter1					;    iter = lnode + NMIN - KSIZE
		mov		[this + BWD], iter			; update iterator position
		jmp		.back3						; go back
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
		jmp		.back3						; go back
@@:		mov		param3, KSIZE
		lea		param2, [iter + KSIZE]
		mov		param1, [s_array]
		call	GoPrev						; bwd = GoPrev (array, iter + KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		[this + BWD], result		; update iterator position
		jmp		.back3						; go back
}
ReplaceRightList:	REPLACE_RIGHT	0
ReplaceRightRing:	REPLACE_RIGHT	1

;==============================================================================;
;       Join two nodes                                                         ;
;==============================================================================;
macro	JOIN	ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
lnode	equ		rsi							; left node index
rnode	equ		rdx							; right node index
node	equ		rcx							; node index
pos		equ		r8							; delete position
;---[Internal variables]-------------------
result	equ		rax							; result register
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
		call	DeleteCore					; call DeleteCore (array[node].data + pos, NMIN - KSIZE - pos)
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
		call	JoinCore					; call JoinCore (array[lnode].data + lsize, array[rnode].data, rsize)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
;---[Correct tail iterator]----------------
if ~ring
		mov		iter, [this + TAIL]			; iter = this.tail
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, rnode					; if (nval == node)
		je		.tail						;     then check iterator position
end if
;---[Correct forward iterator]-------------
.back1:	mov		iter, [this + FWD]			; iter = this.fwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, rnode					; if (nval == rnode)
		je		.frght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.fleft						;     then check iterator position
;---[Correct backward iterator]------------
.back2:	mov		iter, [this + BWD]			; iter = this.bwd
		mov		nval, NMASK					; load node mask
		and		nval, iter					; nval = iter & NMASK
		cmp		nval, rnode					; if (nval == rnode)
		je		.brght						;     then check iterator position
		cmp		nval, lnode					; if (nval == lnode)
		je		.bleft						;     then check iterator position
;---[Free node]----------------------------
.back3:	mov		result, [this + POOL]		; array[rnode].fdir = this.pool
		mov		[array + rnode + FDIR], result
		mov		[this + POOL], rnode		; this.pool = rnode
		mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct tail iterator branch]---------
if ~ring
.tail:	lea		iter, [lnode + NMAX - KSIZE]; iter = lnode + NMAX - KSIZE
		mov		[this + TAIL], iter			; update iterator position
		jmp		.back1						; go back
end if
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
		jmp		.back2						; go back
@@:		mov		rsize, IMASK				; load index mask
		and		rsize, [array + rnode + FDIR]
		mov		param3, KSIZE
		lea		param2, [rnode + rsize - KSIZE]
		mov		param1, array
		call	GoNext						; fwd = GoNext (array, rnode + rsize - KSIZE, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		mov		[this + FWD], result		; update iterator position
		jmp		.back2						; go back
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
		jmp		.back3						; go back
@@:		mov		param3, KSIZE
		mov		param2, lnode
		mov		param1, array
		call	GoPrev						; bwd = GoPrev (array, lnode, KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		lnode, [s_lnode]			; get "lnode" variable from the stack
		mov		rnode, [s_rnode]			; get "rnode" variable from the stack
		mov		[this + BWD], result		; update iterator position
		jmp		.back3						; go back
}
JoinList:	JOIN	0
JoinRing:	JOIN	1

;==============================================================================;
;       Remove element from list/ring                                          ;
;==============================================================================;
macro	REMOVE_CORE	delfunc, repleftfunc, reprightfunc, joinfunc
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
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
size	equ		rsize						; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_iter	equ		stack + 2 * 8				; stack position of "iter" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
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
		cmp		nsize, NMIN					; if (nsize >= NMIN)
		jae		.del						;     then delete element
		cmp		size, NMAX					; if (size < NMAX)
		jb		.del						;     then delete element
		mov		rnode, NMASK				; load node mask
		and		rnode, [array + node + FDIR]; rnode = array[node].fdir & NMASK
		mov		lnode, [array + node + BDIR]; lnode = array[node].bdir
		cmp		lnode, EMPTY				; if (lnode == EMPTY)
		je		.else						;     then go to else branch
;---[if tindex >= KSIZE]-------------------
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
		jmp		joinfunc					; call this.joinfunc (lnode, node, node, index)
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
		jmp		joinfunc					; call this.joinfunc (node, rnode, node, index)
;---[Delete element from the node]---------
.del:	mov		param4, index
		mov		param2, node
		mov		param3, nsize
		add		stack, space				; restoring back the stack pointer
		jmp		delfunc						; call this.delfunc (node, nsize, index)
;---[Replace element in the left node]-----
.left:	mov		param2, lnode
		mov		param5, index
		mov		param3, node
		mov		param4, lsize
		add		stack, space				; restoring back the stack pointer
		jmp		repleftfunc					; call this.repleftfunc (lnode, node, lsize, index)
;---[Replace element in the right node]----
.right:	mov		param5, index
		mov		param2, node
		mov		param4, rsize
		mov		param3, rnode
		add		stack, space				; restoring back the stack pointer
		jmp		reprightfunc				; call this.reprightfunc (node, rnode, rsize, index)
}
RemoveCoreList:	REMOVE_CORE	DeleteList, ReplaceLeftList, ReplaceRightList, JoinList
RemoveCoreRing:	REMOVE_CORE	DeleteRing, ReplaceLeftRing, ReplaceRightRing, JoinRing
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	REMOVE		func, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		rdx							; pointer to array of nodes
iter	equ		rcx							; iterator value
temp	equ		xmm0						; temporary register
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		movdqa	temp, [array + iter + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
		mov		param2, iter
		jmp		func						; call this.func (iter)
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}

; From list head/tail
RemoveHead:		REMOVE	RemoveCoreList, HEAD
RemoveTail:		REMOVE	RemoveCoreList, TAIL

; Using ring link
RemoveLink:		REMOVE	RemoveCoreRing, HEAD

; Using forward iterator
RemoveFwdList:	REMOVE	RemoveCoreList, FWD
RemoveFwdRing:	REMOVE	RemoveCoreRing, FWD

; Using backward iterator
RemoveBwdList:	REMOVE	RemoveCoreList, BWD
RemoveBwdRing:	REMOVE	RemoveCoreRing, BWD

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
macro	SET_ELEMENT		offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
temp	equ		xmm0						; temporary register
;---[Check iterator]-----------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		setne	status						;     return false
		je		.exit
;---[Normal execution branch]--------------
		movdqu	temp, [data]
		movdqa	[array + iter + NDATA], temp; array[iter].data = data[0]
.exit:	ret									; return true
}
SetHead:	SET_ELEMENT		HEAD
SetTail:	SET_ELEMENT		TAIL
SetFwd:		SET_ELEMENT		FWD
SetBwd:		SET_ELEMENT		BWD

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;
macro	GET_ELEMENT		offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
temp	equ		xmm0						; temporary register
;---[Check iterator]-----------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		setne	status						;     return false
		je		.exit
;---[Normal execution branch]--------------
		movdqa	temp, [array + iter + NDATA]
		movdqu	[data], temp				; data[0] = array[iter].data
.exit:	ret									; return true
}
GetHead:	GET_ELEMENT		HEAD
GetTail:	GET_ELEMENT		TAIL
GetFwd:		GET_ELEMENT		FWD
GetBwd:		GET_ELEMENT		BWD

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;
macro	REPLACE_ELEMENT		offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
odata	equ		rsi							; pointer to old data structure
ndata	equ		rdx							; pointer to new data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
iter	equ		r9							; iterator value
temp	equ		xmm0						; temporary register
;---[Check iterator]-----------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		setne	status						;     return false
		je		.exit
;---[Normal execution branch]--------------
		movdqa	temp, [array + iter + NDATA]
		movdqu	[odata], temp				; odata[0] = array[iter].data
		movdqu	temp, [ndata]
		movdqa	[array + iter + NDATA], temp; array[iter].data = ndata[0]
.exit:	ret									; return true
}
ReplaceHead:	REPLACE_ELEMENT		HEAD
ReplaceTail:	REPLACE_ELEMENT		TAIL
ReplaceFwd:		REPLACE_ELEMENT		FWD
ReplaceBwd:		REPLACE_ELEMENT		BWD

;******************************************************************************;
;       Changing elements order                                                ;
;******************************************************************************;

;==============================================================================;
;       Reversing elements order                                               ;
;==============================================================================;
macro	REVERSE		func, cmd1, cmd2, offst1, offst2, bwd, ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
count	equ		rsi							; count of nodes to reverse
;---[Internal variables]-------------------
result	equ		rax							; result register
remain	equ		rdx							; remain elements
array	equ		r8							; pointer to array of nodes
iter1	equ		r9							; iterator value #1
iter2	equ		r10							; iterator value #2
node	equ		r11							; node index
next	equ		remain						; next node
size	equ		result						; object size
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_count	equ		stack + 1 * 8				; stack position of "count" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_iter	equ		stack + 3 * 8				; stack position of "iter" variable
s_lim1	equ		stack + 4 * 8				; stack position of "limit1" variable
s_lim2	equ		stack + 5 * 8				; stack position of "limit2" variable
space	= 7 * 8								; stack size required by the procedure
if bwd
dir1	= BDIR								; direction of iteration #1
dir2	= FDIR								; direction of iteration #2
else
dir1	= FDIR								; direction of iteration #1
dir2	= BDIR								; direction of iteration #2
end if
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
;---[Check iterator]-----------------------
		mov		iter1, [this + offst1]		; get iterator value
		cmp		iter1, EMPTY				; if (iter1 == EMPTY)
		je		.error						;     then go to error branch
;---[Correct count]------------------------
		shl		count, KSCALE
		mov		size, [this + SIZE]			; get object size
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
		mov		[s_count], count			; save "count" variable into the stack
;---[Check count]--------------------------
		cmp		count, KSIZE				; if (count <= KSIZE)
		jbe		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter1				; save "iter1" variable into the stack
		lea		param3, [count - KSIZE]
		mov		param2, iter1
		mov		param1, array
		call	func						; result = func (array, iter1, count - KSIZE)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		count, [s_count]			; get "count" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter1, [s_iter]				; get "iter1" variable from the stack
if ~ring
		cmp		result, EMPTY				; if (result == EMPTY)
		je		.corr						;     then correct the iterator
end if
.back:	mov		iter2, result				; iter2 = result
		shr		count, KSCALE + 1			; count >>= 1
		jz		.exit						; if (count == 0), then go to exit
		mov		node, NMASK					; load node mask
		and		node, iter1					; node = iter1 & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + node + FDIR]
		lea		size, [size + node - KSIZE]	; size = node + (array[node].fdir & IMASK) - KSIZE
if bwd
		mov		[s_lim1], node				; save "limit1" variable into the stack
else
		mov		[s_lim1], size				; save "limit1" variable into the stack
end if
		mov		node, NMASK					; load node mask
		and		node, iter2					; node = iter2 & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + node + FDIR]
		lea		size, [size + node - KSIZE]	; size = node + (array[node].fdir & IMASK) - KSIZE
if bwd
		mov		[s_lim2], size				; save "limit2" variable into the stack
else
		mov		[s_lim2], node				; save "limit2" variable into the stack
end if
;---[Order reversing loop]-----------------
.loop:	movdqa	temp0, [array + iter1 + NDATA]
		movdqa	temp1, [array + iter2 + NDATA]
		movdqa	[array + iter1 + NDATA], temp1
		movdqa	[array + iter2 + NDATA], temp0
		mov		node, NMASK					; load node mask
		and		node, iter1					; node = iter1 & NMASK
		cmd1	iter1, KSIZE				; change iterator position
		cmp		iter1, [s_lim1]				; if (iter1 cond limit1)
if bwd
		jl		.next1						;     then go to next node
else
		jg		.next1						;     then go to next node
end if
.back1:	mov		node, NMASK					; load node mask
		and		node, iter2					; node = iter2 & NMASK
		cmd2	iter2, KSIZE				; change iterator position
		cmp		iter2, [s_lim2]				; if (iter2 cond limit2)
if bwd
		jg		.next2						;     then go to next node
else
		jl		.next2						;     then go to next node
end if
.back2:	sub		count, 1					; count--
		jnz		.loop						; do while (count != 0)
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_count]			; get "count" variable from the stack
		shr		result, KSCALE				; return count
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret
;---[Correct iterator branch]--------------
if ~ring
.corr:	mov		result, [this + offst2]		; correct iterator value
		add		remain, KSIZE
		sub		count, remain				; count -= remain + KSIZE
		mov		[s_count], count			; save "count" variable into the stack
		jmp		.back						; go back
end if
;---[Go to another node branch #1]---------
.next1:	mov		next, NMASK					; load node mask
		and		next, [array + node + dir1]	; next = array[node].dir1 & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + next + FDIR]
		lea		size, [size + next - KSIZE]	; size = next + (array[next].fdir & IMASK) - KSIZE
if bwd
		mov		iter1, size					; iter1 = next + (array[next].fdir & IMASK) - KSIZE
		mov		[s_lim1], next				; save "limit1" variable into the stack
else
		mov		iter1, next					; iter1 = next
		mov		[s_lim1], size				; save "limit1" variable into the stack
end if
		jmp		.back1						; go back
;---[Go to another node branch #2]---------
.next2:	mov		next, NMASK					; load node mask
		and		next, [array + node + dir2]	; next = array[node].dir2 & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + next + FDIR]
		lea		size, [size + next - KSIZE]	; size = next + (array[next].fdir & IMASK) - KSIZE
if bwd
		mov		iter2, next					; iter2 = next
		mov		[s_lim2], size				; save "limit2" variable into the stack
else
		mov		iter2, size					; iter2 = next + (array[next].fdir & IMASK) - KSIZE
		mov		[s_lim2], next				; save "limit2" variable into the stack
end if
		jmp		.back2						; go back
}

; Using list head/tail
ReverseHead:	REVERSE		GoNext, add, sub, HEAD, TAIL, 0, 0
ReverseTail:	REVERSE		GoPrev, sub, add, TAIL, HEAD, 1, 0

; Using ring link
ReverseLink:	REVERSE		GoNext, add, sub, HEAD, TAIL, 0, 1

; Using forward iterator
ReverseFwdList:	REVERSE		GoNext, add, sub, FWD, TAIL, 0, 0
ReverseFwdRing:	REVERSE		GoNext, add, sub, FWD, BWD, 0, 1

; Using backward iterator
ReverseBwdList:	REVERSE		GoPrev, sub, add, BWD, HEAD, 1, 0
ReverseBwdRing:	REVERSE		GoPrev, sub, add, BWD, FWD, 1, 1

;==============================================================================;
;       Swapping elements                                                      ;
;==============================================================================;
Swap:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
;---[Internal variables]-------------------
status	equ		al							; operation status
fwd		equ		rcx							; forward iterator
bwd		equ		rdx							; forward iterator
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
;------------------------------------------
		mov		fwd, [this + FWD]			; get fwd iterator value
		cmp		fwd, EMPTY					; if (fwd == EMPTY)
		setne	status						;     then return false
		je		.exit
		mov		bwd, [this + BWD]			; get bwd iterator value
		cmp		bwd, EMPTY					; if (bwd == EMPTY)
		setne	status						;     then return false
		je		.exit
;---[Normal execution branch]--------------
		add		fwd, [this + ARRAY]			; fwd += array
		add		bwd, [this + ARRAY]			; bwd += array
		movdqa	temp0, [fwd + NDATA]		; temp0 = array[fwd].data
		movdqa	temp1, [bwd + NDATA]		; temp1 = array[bwd].data
		movdqa	[fwd + NDATA], temp1		; array[fwd].data = temp1
		movdqa	[bwd + NDATA], temp0		; array[bwd].data = temp0
.exit:	ret

;******************************************************************************;
;       Manipulation with forward iterator                                     ;
;******************************************************************************;
GoNext:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
iter	equ		rsi							; iterator value
pos		equ		rdx							; number of positions to move
;---[Internal variables]-------------------
result	equ		rax							; result register
node	equ		r8							; pointer to bnode
index	equ		r9							; element index
nsize	equ		rcx							; node size
;------------------------------------------
		mov		result, iter				; result = iter
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
;---[Iteration loop]-----------------------
.loop:	add		result, pos					; result += pos
		mov		nsize, [array + node + FDIR]
		and		nsize, IMASK
		sub		nsize, index				; nsize = array[node].fdir & IMASK - index
		sub		pos, nsize					; if (pos < nsize)
		jb		.exit						;     then go to exit
		mov		node, [array + node + FDIR]
		and		node, NMASK					; node = array[node].fdir & NMASK
		xor		index, index				; index = 0
		lea		result, [node + index]
		cmp		node, EMPTY					; if (node == EMPTY)
		je		.error						;     return EMPTY
		test	pos, pos
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
;------------------------------------------
		mov		result, iter				; result = iter
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
;---[Iteration loop]-----------------------
.loop:	sub		result, pos					; result -= pos
		add		index, KSIZE				; index++
		sub		pos, index					; if (pos < index)
		jb		.exit						;     then go to exit
		mov		node, [array + node + BDIR]	; node = array[node].bdir
		mov		index, [array + node + FDIR]
		and		index, IMASK
		sub		index, KSIZE				; index = (array[node].fdir & NMASK) - KSIZE
		lea		result, [node + index]
		cmp		node, EMPTY					; if (node == EMPTY)
		je		.error						;     return EMPTY
		test	pos, pos
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
this	equ		rdi							; pointer to list/ring object
index	equ		rsi							; element index
;---[Internal variables]-------------------
array	equ		r8							; pointer to array of nodes
node	equ		r9							; node index
next	equ		r10							; next node
nsize	equ		r11							; node size
temp	equ		rdx							; temporary register
;---[Check index]--------------------------
		shl		index, KSCALE
		cmp		[this + SIZE], index		; if (size <= index)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		node, NMASK					; load node mask
		and		node, [this + HEAD]			; node = this.head & NMASK
		mov		temp, [array + node + FDIR]	; temp = array[node].fdir
		mov		next, NMASK					; load node mask
		mov		nsize, IMASK				; load index mask
		and		next, temp					; next = array[node].fdir & NMASK
		and		nsize, temp					; nsize = array[node].fdir & IMASK
		sub		index, nsize				; if (index < nsize)
		jb		.exit						;     then go to exit
;---[Searching loop]-----------------------
.loop:	mov		node, next					; node = next
		mov		temp, [array + next + FDIR]	; temp = array[next].fdir
		mov		next, NMASK					; load node mask
		mov		nsize, IMASK				; load index mask
		and		next, temp					; next = array[node].fdir & NMASK
		and		nsize, temp					; nsize = array[node].fdir & IMASK
		sub		index, nsize
		jae		.loop						; do while (index >= nsize)
;---[End of searching loop]----------------
.exit:	add		index, nsize
		add		node, index					; iter = node + index
		mov		[this + offst], node		; update iterator position
		ret
;---[Error branch]-------------------------
.error:	mov		qword [this + offst], EMPTY	; update iterator position
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SET_ITERATOR	target, source
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
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
this	equ		rdi							; pointer to list/ring object
;---[Internal variables]-------------------
index	equ		rax							; position index
array	equ		r8							; pointer to array of nodes
node	equ		r9							; node index
prev	equ		r10							; previous node
iter	equ		r11							; iterator value
temp	equ		rdx							; temporary register
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, iter					; node = iter & NMASK
		and		index, iter					; index = iter & IMASK
		mov		prev, [array + node + BDIR]	; prev = array[node].bdir
		cmp		prev, EMPTY					; if (prev == EMPTY)
		je		.exit						;     then go to exit
;---[Position calculation loop]------------
.loop:	mov		node, prev					; node = prev
		mov		temp, [array + prev + FDIR]
		and		temp, IMASK
		add		index, temp					; index += array[prev].fdir & IMASK
		mov		prev, [array + prev + BDIR]	; prev = array[prev].bdir
		cmp		prev, EMPTY
		jne		.loop						; do while (prev != EMPTY)
;---[End of position calculation loop]-----
.exit:	shr		index, KSCALE				; return index
		ret
;---[Error branch]-------------------------
.error:	mov		index, ERROR				; return ERROR
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MOVE_ITERATOR	func, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
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
		call	func						; iter = func (array, iter, pos)
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
FwdToHead:	SET_ITERATOR	FWD, HEAD
FwdToTail:	SET_ITERATOR	FWD, TAIL
FwdToBwd:	SET_ITERATOR	FWD, BWD

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
BwdToHead:	SET_ITERATOR	BWD, HEAD
BwdToTail:	SET_ITERATOR	BWD, TAIL
BwdToFwd:	SET_ITERATOR	BWD, FWD

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
this	equ		rdi							; pointer to list/ring object
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
macro	MINMAX	cmd, cond, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
data	equ		rsi							; pointer to data structure
count	equ		rdx							; count of nodes to check
func	equ		rcx							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
iter	equ		r11							; iterator value
value	equ		r12							; min or max max value
vptr	equ		r13							; position of min or max value
size	equ		result						; object size
node	equ		count						; node index
next	equ		func						; next node
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
s_vptr	equ		stack + 1 * 8				; stack position of "vptr" variable
s_this	equ		stack + 2 * 8				; stack position of "this" variable
s_data	equ		stack + 3 * 8				; stack position of "data" variable
s_count	equ		stack + 4 * 8				; stack position of "count" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
s_array	equ		stack + 6 * 8				; stack position of "array" variable
s_iter	equ		stack + 7 * 8				; stack position of "iter" variable
s_limit	equ		stack + 8 * 8				; stack position of "limit" variable
space	= 9 * 8								; stack size required by the procedure
if bwd
offst	= BWD								; offset of iterator field
dir		= BDIR								; direction of iteration
else
offst	= FWD								; offset of iterator field
dir		= FDIR								; direction of iteration
end if
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.ntfnd						;     return false
;---[Correct count]------------------------
		shl		count, KSCALE
		mov		size, [this + SIZE]			; get object size
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_vptr], vptr				; save old value of "vptr" variable
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + node + FDIR]
		lea		size, [size + node - KSIZE]	; size = node + (array[node].fdir & IMASK) - KSIZE
if bwd
		mov		[s_limit], node				; save "limit" variable into the stack
else
		mov		[s_limit], size				; save "limit" variable into the stack
end if
		mov		value, [array + iter+NDATA]	; value = array[iter].data.key
		mov		vptr, iter					; vptr = iter
		jmp		.skip
;---[Search loop]--------------------------
.loop:	mov		param2, [array + iter + NDATA]
		mov		param1, value
		call	qword [s_func]				; status = Compare (value, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0					; if (result cond 0)
		jn#cond	.skip						; {
		mov		value, [array + iter+NDATA]	;     value = array[iter].data.key
		mov		vptr, iter					;     vptr = iter }
.skip:	mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		cmd		iter, KSIZE					; change iterator position
		cmp		iter, [s_limit]				; if (iter cond limit)
if bwd
		jl		.next						;     then go to next node
else
		jg		.next						;     then go to next node
end if
.back:	mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Normal exit branch]-------------------
.exit:	mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		[this + offst], vptr		; update iterator position
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
;---[Go to another node branch]------------
.next:	mov		next, NMASK					; load node mask
		and		next, [array + node + dir]	; next = array[node].dir & NMASK
		cmp		next, EMPTY					; if (next == EMPTY)
		je		.exit						;     then go to exit
		mov		size, IMASK					; load index mask
		and		size, [array + next + FDIR]
		lea		size, [size + next - KSIZE]	; size = next + (array[next].fdir & IMASK) - KSIZE
if bwd
		mov		iter, size					; iter = next + (array[next].fdir & IMASK) - KSIZE
		mov		[s_limit], next				; save "limit" variable into the stack
else
		mov		iter, next					; iter = next
		mov		[s_limit], size				; save "limit" variable into the stack
end if
		jmp		.back						; go back
}

; Minimum value
MinFwd:	MINMAX	add, g, 0
MinBwd:	MINMAX	sub, g, 1

; Maximum value
MaxFwd:	MINMAX	add, l, 0
MaxBwd:	MINMAX	sub, l, 1

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

;==============================================================================;
;       Single key searching                                                   ;
;==============================================================================;
macro	FIND_KEY	cmd, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
count	equ		rcx							; count of nodes to check
func	equ		r8							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
iter	equ		r11							; iterator value
size	equ		result						; object size
node	equ		count						; node index
next	equ		func						; next node
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_key	equ		stack + 2 * 8				; stack position of "key" variable
s_count	equ		stack + 3 * 8				; stack position of "count" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_array	equ		stack + 5 * 8				; stack position of "array" variable
s_iter	equ		stack + 6 * 8				; stack position of "iter" variable
s_limit	equ		stack + 7 * 8				; stack position of "limit" variable
space	= 9 * 8								; stack size required by the procedure
if bwd
offst	= BWD								; offset of iterator field
dir		= BDIR								; direction of iteration
else
offst	= FWD								; offset of iterator field
dir		= FDIR								; direction of iteration
end if
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.ntfnd						;     return false
;---[Correct count]------------------------
		shl		count, KSCALE
		mov		size, [this + SIZE]			; get object size
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + node + FDIR]
		lea		size, [size + node - KSIZE]	; size = node + (array[node].fdir & IMASK) - KSIZE
if bwd
		mov		[s_limit], node				; save "limit" variable into the stack
else
		mov		[s_limit], size				; save "limit" variable into the stack
end if
;---[Search loop]--------------------------
.loop:	mov		param2, [array + iter + NDATA]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		cmd		iter, KSIZE					; change iterator position
		cmp		iter, [s_limit]				; if (iter cond limit)
if bwd
		jl		.next						;     then go to next node
else
		jg		.next						;     then go to next node
end if
.back:	mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
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
;---[Go to another node branch]------------
.next:	mov		next, NMASK					; load node mask
		and		next, [array + node + dir]	; next = array[node].dir & NMASK
		cmp		next, EMPTY					; if (next == EMPTY)
		je		.ntfnd						;     return false
		mov		size, IMASK					; load index mask
		and		size, [array + next + FDIR]
		lea		size, [size + next - KSIZE]	; size = next + (array[next].fdir & IMASK) - KSIZE
if bwd
		mov		iter, size					; iter = next + (array[next].fdir & IMASK) - KSIZE
		mov		[s_limit], next				; save "limit" variable into the stack
else
		mov		iter, next					; iter = next
		mov		[s_limit], size				; save "limit" variable into the stack
end if
		jmp		.back						; go back
}
FindKeyFwd:	FIND_KEY	add, 0
FindKeyBwd:	FIND_KEY	sub, 1

;==============================================================================;
;       Keys set searching                                                     ;
;==============================================================================;
macro	FIND_KEYS	cmd, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
data	equ		rsi							; pointer to data structure
keys	equ		rdx							; pointer to array of keys
ksize	equ		rcx							; size of array of keys
count	equ		r8							; count of nodes to check
func	equ		r9							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
iter	equ		r11							; iterator value
size	equ		result						; object size
node	equ		count						; node index
next	equ		func						; next node
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_keys	equ		stack + 2 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 3 * 8				; stack position of "ksize" variable
s_count	equ		stack + 4 * 8				; stack position of "count" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
s_array	equ		stack + 6 * 8				; stack position of "array" variable
s_iter	equ		stack + 7 * 8				; stack position of "iter" variable
s_limit	equ		stack + 8 * 8				; stack position of "limit" variable
space	= 9 * 8								; stack size required by the procedure
if bwd
offst	= BWD								; offset of iterator field
dir		= BDIR								; direction of iteration
else
offst	= FWD								; offset of iterator field
dir		= FDIR								; direction of iteration
end if
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.ntfnd						;     return false
;---[Correct count]------------------------
		shl		count, KSCALE
		mov		size, [this + SIZE]			; get object size
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + node + FDIR]
		lea		size, [size + node - KSIZE]	; size = node + (array[node].fdir & IMASK) - KSIZE
if bwd
		mov		[s_limit], node				; save "limit" variable into the stack
else
		mov		[s_limit], size				; save "limit" variable into the stack
end if
;---[Search loop]--------------------------
.loop:	mov		param4, [s_func]
		mov		param3, [array + iter + NDATA]
		mov		param2, [s_ksize]
		mov		param1, [s_keys]
		call	FindSet						; result = FindSet (keys, ksize, array[iter].data.key, func)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		test	result, result				; if (result == 0)
		jnz		.found						;     then go to found branch
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		cmd		iter, KSIZE					; change iterator position
		cmp		iter, [s_limit]				; if (iter cond limit)
if bwd
		jl		.next						;     then go to next node
else
		jg		.next						;     then go to next node
end if
.back:	mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
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
;---[Go to another node branch]------------
.next:	mov		next, NMASK					; load node mask
		and		next, [array + node + dir]	; next = array[node].dir & NMASK
		cmp		next, EMPTY					; if (next == EMPTY)
		je		.ntfnd						;     return false
		mov		size, IMASK					; load index mask
		and		size, [array + next + FDIR]
		lea		size, [size + next - KSIZE]	; size = next + (array[next].fdir & IMASK) - KSIZE
if bwd
		mov		iter, size					; iter = next + (array[next].fdir & IMASK) - KSIZE
		mov		[s_limit], next				; save "limit" variable into the stack
else
		mov		iter, next					; iter = next
		mov		[s_limit], size				; save "limit" variable into the stack
end if
		jmp		.back						; go back
}
FindKeysFwd:	FIND_KEYS	add, 0
FindKeysBwd:	FIND_KEYS	sub, 1

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
macro	FIND_CORE	cmd, cond, value, bwd
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
iter	equ		rsi							; iterator value
count	equ		rdx							; count of nodes to check
func	equ		rcx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
node	equ		r8							; node index
next	equ		r9							; next node
prev	equ		r10							; prev node
size	equ		result						; object size
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_iter	equ		stack + 1 * 8				; stack position of "iter" variable
s_prev	equ		stack + 2 * 8				; stack position of "iter" variable
s_count	equ		stack + 3 * 8				; stack position of "count" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_limit	equ		stack + 5 * 8				; stack position of "limit" variable
space	= 7 * 8								; stack size required by the procedure
if bwd
offst	= BWD								; offset of iterator field
dir		= BDIR								; direction of iteration
else
offst	= FWD								; offset of iterator field
dir		= FDIR								; direction of iteration
end if
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		prev, iter					; prev = iter
		mov		[s_prev], iter				; save "prev" variable into the stack
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + node + FDIR]
		lea		size, [size + node - KSIZE]	; size = node + (array[node].fdir & IMASK) - KSIZE
if bwd
		mov		[s_limit], node				; save "limit" variable into the stack
else
		mov		[s_limit], size				; save "limit" variable into the stack
end if
		cmd		iter, KSIZE					; change iterator position
		cmp		iter, [s_limit]				; if (iter cond limit)
if bwd
		jl		.next1						;     then go to next node
else
		jg		.next1						;     then go to next node
end if
.back1:	mov		[s_iter], iter				; save "iter" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [array + iter + NDATA]
		mov		param1, [array + prev + NDATA]
		call	qword [s_func]				; result = Compare (array[prev].data.key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0					; if (result cond 0)
		j#cond	.found						;     then go to found branch
		mov		prev, iter					; prev = iter
		mov		[s_prev], iter				; save "prev" variable into the stack
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		cmd		iter, KSIZE					; change iterator position
		cmp		iter, [s_limit]				; if (iter cond limit)
if bwd
		jl		.next2						;     then go to next node
else
		jg		.next2						;     then go to next node
end if
.back2:	mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Not found branch]---------------------
.ntfnd:	mov		result, EMPTY				; return EMPTY
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		result, [value]				; return value
		add		stack, space				; restoring back the stack pointer
		ret
;---[Go to another node branch #1]---------
.next1:	mov		next, NMASK					; load node mask
		and		next, [array + node + dir]	; next = array[node].dir & NMASK
		cmp		next, EMPTY					; if (next == EMPTY)
		je		.ntfnd						;     return false
		mov		size, IMASK					; load index mask
		and		size, [array + next + FDIR]
		lea		size, [size + next - KSIZE]	; size = next + (array[next].fdir & IMASK) - KSIZE
if bwd
		mov		iter, size					; iter = next + (array[next].fdir & IMASK) - KSIZE
		mov		[s_limit], next				; save "limit" variable into the stack
else
		mov		iter, next					; iter = next
		mov		[s_limit], size				; save "limit" variable into the stack
end if
		jmp		.back1						; go back
;---[Go to another node branch #2]---------
.next2:	mov		next, NMASK					; load node mask
		and		next, [array + node + dir]	; next = array[node].dir & NMASK
		cmp		next, EMPTY					; if (next == EMPTY)
		je		.ntfnd						;     return false
		mov		size, IMASK					; load index mask
		and		size, [array + next + FDIR]
		lea		size, [size + next - KSIZE]	; size = next + (array[next].fdir & IMASK) - KSIZE
if bwd
		mov		iter, size					; iter = next + (array[next].fdir & IMASK) - KSIZE
		mov		[s_limit], next				; save "limit" variable into the stack
else
		mov		iter, next					; iter = next
		mov		[s_limit], size				; save "limit" variable into the stack
end if
		jmp		.back2						; go back
}
CheckDupFwd:		FIND_CORE	add, e, s_prev, 0
CheckDupBwd:		FIND_CORE	sub, e, s_prev, 1
CheckSortAscFwd:	FIND_CORE	add, g, s_iter, 0
CheckSortAscBwd:	FIND_CORE	sub, l, s_iter, 1
CheckSortDscFwd:	FIND_CORE	add, l, s_iter, 0
CheckSortDscBwd:	FIND_CORE	sub, g, s_iter, 1
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND	checkfunc, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
data	equ		rsi							; pointer to data structure
func	equ		rdx							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
iter	equ		r8							; iterator value
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
		sub		size, NSIZE					; if (size <= 1)
		jbe		.ntfnd						;     return false
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
;---[Call search function]-----------------
		mov		param4, func
		mov		param3, size
		mov		param2, iter
		mov		param1, [this + ARRAY]
		call	checkfunc					; result = corefunc (array, iter, size - 1, func)
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
FindDupFwd:		FIND	CheckDupFwd, FWD
FindDupBwd:		FIND	CheckDupBwd, BWD

;******************************************************************************;
;       Unordered elements searching                                           ;
;******************************************************************************;

; Ascending sort order
FindNonAscFwd:	FIND	CheckSortAscFwd, FWD
FindNonAscBwd:	FIND	CheckSortAscBwd, BWD

; Descending sort order
FindNonDscFwd:	FIND	CheckSortDscFwd, FWD
FindNonDscBwd:	FIND	CheckSortDscBwd, BWD

;******************************************************************************;
;       Searching for differences                                              ;
;******************************************************************************;
macro	DIFF	cmd, bwd
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
node	equ		r10							; node index
next	equ		r11							; next node
stack	equ		rsp							; stack pointer
s_tarr	equ		stack + 0 * 8				; stack position of "tarray" variable
s_sarr	equ		stack + 1 * 8				; stack position of "sarray" variable
s_titer	equ		stack + 2 * 8				; stack position of "titer" variable
s_siter	equ		stack + 3 * 8				; stack position of "siter" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
s_tsize	equ		stack + 6 * 8				; stack position of "tsize" variable
s_ssize	equ		stack + 7 * 8				; stack position of "ssize" variable
space	= 9 * 8								; stack size required by the procedure
if bwd
offst	= BWD								; offset of iterator field
dir		= BDIR								; direction of iteration
else
offst	= FWD								; offset of iterator field
dir		= FDIR								; direction of iteration
end if
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_tarr], tarray			; save "tarray" variable into the stack
		mov		[s_sarr], sarray			; save "sarray" variable into the stack
		mov		[s_titer], titer			; save "titer" variable into the stack
		mov		[s_siter], siter			; save "siter" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		node, NMASK					; load node mask
		and		node, siter					; node = siter & NMASK
		mov		size, IMASK					; load index mask
		and		size, [sarray + node + FDIR]
		lea		size, [size + node - KSIZE]	; ssize = node + (sarray[node].fdir & IMASK) - KSIZE
if bwd
		mov		[s_ssize], node				; save "ssize" variable into the stack
else
		mov		[s_ssize], size				; save "ssize" variable into the stack
end if
		mov		node, NMASK					; load node mask
		and		node, titer					; node = titer & NMASK
		mov		size, IMASK					; load index mask
		and		size, [tarray + node + FDIR]
		lea		size, [size + node - KSIZE]	; tsize = node + (tarray[node].fdir & IMASK) - KSIZE
if bwd
		mov		[s_tsize], node				; save "tsize" variable into the stack
else
		mov		[s_tsize], size				; save "tsize" variable into the stack
end if
;---[Check loop]---------------------------
.loop:	mov		param2, [sarray + siter + NDATA]
		mov		param1, [tarray + titer + NDATA]
		call	qword [s_func]				; result = Compare (tarray[titer].key, sarray[siter].key)
		mov		tarray, [s_tarr]			; get "tarray" variable from the stack
		mov		sarray, [s_sarr]			; get "sarray" variable from the stack
		mov		titer, [s_titer]			; get "titer" variable from the stack
		mov		siter, [s_siter]			; get "siter" variable from the stack
		test	result, result				; if (result != 0)
		jnz		.found						;     then go to found branch
		mov		node, NMASK					; load node mask
		and		node, siter					; node = siter & NMASK
		cmd		siter, KSIZE				; change iterator position
		cmp		siter, [s_ssize]			; if (siter cond ssize)
if bwd
		jl		.next1						;     then go to next node
else
		jg		.next1						;     then go to next node
end if
.back1:	mov		[s_siter], siter			; save "siter" variable into the stack
		mov		node, NMASK					; load node mask
		and		node, titer					; node = titer & NMASK
		cmd		titer, KSIZE				; change iterator position
		cmp		titer, [s_tsize]			; if (titer cond tsize)
if bwd
		jl		.next2						;     then go to next node
else
		jg		.next2						;     then go to next node
end if
.back2:	mov		[s_titer], titer			; save "titer" variable into the stack
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
;---[Go to another node branch #1]---------
.next1:	mov		next, NMASK					; load node mask
		and		next, [sarray + node + dir]	; next = sarray[node].dir & NMASK
		cmp		next, EMPTY					; if (next == EMPTY)
		je		.break						;     return {EMPTY, 0}
		mov		size, IMASK					; load index mask
		and		size, [sarray + next + FDIR]
		lea		size, [size + next - KSIZE]	; ssize = next + (sarray[next].fdir & IMASK) - KSIZE
if bwd
		mov		siter, size					; siter = next + (sarray[next].fdir & IMASK) - KSIZE
		mov		[s_ssize], next				; save "ssize" variable into the stack
else
		mov		siter, next					; siter = next
		mov		[s_ssize], size				; save "ssize" variable into the stack
end if
		jmp		.back1						; go back
;---[Go to another node branch #2]---------
.next2:	mov		next, NMASK					; load node mask
		and		next, [tarray + node + dir]	; next = tarray[node].dir & NMASK
		cmp		next, EMPTY					; if (next == EMPTY)
		je		.break						;     return {EMPTY, 0}
		mov		size, IMASK					; load index mask
		and		size, [tarray + next + FDIR]
		lea		size, [size + next - KSIZE]	; tsize = next + (tarray[next].fdir & IMASK) - KSIZE
if bwd
		mov		titer, size					; titer = next + (tarray[next].fdir & IMASK) - KSIZE
		mov		[s_tsize], next				; save "tsize" variable into the stack
else
		mov		titer, next					; titer = next
		mov		[s_tsize], size				; save "tsize" variable into the stack
end if
		jmp		.back2						; go back
}
DiffFwd:	DIFF	add, 0
DiffBwd:	DIFF	sub, 1
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_DIFF	checkfunc, offst
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target list/ring object
data	equ		rsi							; pointer to data structure
source	equ		rdx							; pointer to source list/ring object
count	equ		rcx							; count of nodes to copy
func	equ		r8							; compare function
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
		mov		param6, func
		mov		param5, count
		mov		param4, [source + offst]
		mov		param2, [source + ARRAY]
		mov		param3, [this + offst]
		mov		param1, [this + ARRAY]
		call	checkfunc					; result = checkfunc (this.array, source.array, titer, siter, count, func)
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
FindDiffFwd:	FIND_DIFF	DiffFwd, FWD
FindDiffBwd:	FIND_DIFF	DiffBwd, BWD

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

;==============================================================================;
;       Single key counting                                                    ;
;==============================================================================;
macro	COUNT_KEY	cmd, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
key		equ		rsi							; key to find
count	equ		rdx							; count of nodes to check
func	equ		rcx							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
iter	equ		r11							; iterator value
size	equ		result						; object size
node	equ		count						; node index
next	equ		func						; next node
stack	equ		rsp							; stack pointer
s_key	equ		stack + 0 * 8				; stack position of "key" variable
s_count	equ		stack + 1 * 8				; stack position of "count" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_iter	equ		stack + 4 * 8				; stack position of "iter" variable
s_limit	equ		stack + 5 * 8				; stack position of "limit" variable
s_total	equ		stack + 6 * 8				; stack position of "total" variable
space	= 7 * 8								; stack size required by the procedure
if bwd
offst	= BWD								; offset of iterator field
dir		= BDIR								; direction of iteration
else
offst	= FWD								; offset of iterator field
dir		= FDIR								; direction of iteration
end if
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.exit						;     then go to exit
;---[Correct count]------------------------
		shl		count, KSCALE
		mov		size, [this + SIZE]			; get object size
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + node + FDIR]
		lea		size, [size + node - KSIZE]	; size = node + (array[node].fdir & IMASK) - KSIZE
if bwd
		mov		[s_limit], node				; save "limit" variable into the stack
else
		mov		[s_limit], size				; save "limit" variable into the stack
end if
;---[Search loop]--------------------------
.loop:	mov		param2, [array + iter + NDATA]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[iter].data.key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		test	result, result				; if (result == 0)
		setz	status						; {
		movzx	result, status
		add		[s_total], result			;     then total++ }
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		cmd		iter, KSIZE					; change iterator position
		cmp		iter, [s_limit]				; if (iter cond limit)
if bwd
		jl		.next						;     then go to next node
else
		jg		.next						;     then go to next node
end if
.back:	mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total
;---[Go to another node branch]------------
.next:	mov		next, NMASK					; load node mask
		and		next, [array + node + dir]	; next = array[node].dir & NMASK
		cmp		next, EMPTY					; if (next == EMPTY)
		je		.exit						;     then go to exit
		mov		size, IMASK					; load index mask
		and		size, [array + next + FDIR]
		lea		size, [size + next - KSIZE]	; size = next + (array[next].fdir & IMASK) - KSIZE
if bwd
		mov		iter, size					; iter = next + (array[next].fdir & IMASK) - KSIZE
		mov		[s_limit], next				; save "limit" variable into the stack
else
		mov		iter, next					; iter = next
		mov		[s_limit], size				; save "limit" variable into the stack
end if
		jmp		.back						; go back
}
CountKeyFwd:	COUNT_KEY	add, 0
CountKeyBwd:	COUNT_KEY	sub, 1

;==============================================================================;
;       Keys set counting                                                      ;
;==============================================================================;
macro	COUNT_KEYS	cmd, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
keys	equ		rsi							; pointer to array of keys
ksize	equ		rdx							; size of array of keys
count	equ		rcx							; count of nodes to check
func	equ		r8							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
iter	equ		r11							; iterator value
size	equ		result						; object size
node	equ		count						; node index
next	equ		func						; next node
stack	equ		rsp							; stack pointer
s_keys	equ		stack + 0 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 1 * 8				; stack position of "ksize" variable
s_count	equ		stack + 2 * 8				; stack position of "count" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_iter	equ		stack + 5 * 8				; stack position of "iter" variable
s_limit	equ		stack + 6 * 8				; stack position of "limit" variable
s_total	equ		stack + 7 * 8				; stack position of "total" variable
space	= 9 * 8								; stack size required by the procedure
if bwd
offst	= BWD								; offset of iterator field
dir		= BDIR								; direction of iteration
else
offst	= FWD								; offset of iterator field
dir		= FDIR								; direction of iteration
end if
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check iterator]-----------------------
		mov		iter, [this + offst]		; get iterator value
		cmp		iter, EMPTY					; if (iter == EMPTY)
		je		.exit						;     then go to exit
;---[Correct count]------------------------
		shl		count, KSCALE
		mov		size, [this + SIZE]			; get object size
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + node + FDIR]
		lea		size, [size + node - KSIZE]	; size = node + (array[node].fdir & IMASK) - KSIZE
if bwd
		mov		[s_limit], node				; save "limit" variable into the stack
else
		mov		[s_limit], size				; save "limit" variable into the stack
end if
;---[Search loop]--------------------------
.loop:	mov		param4, [s_func]
		mov		param3, [array + iter + NDATA]
		mov		param2, [s_ksize]
		mov		param1, [s_keys]
		call	FindSet						; result = FindSet (keys, ksize, iter[0].key, func)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		iter, [s_iter]				; get "iter" variable from the stack
		add		[s_total], result			;     then total++
		mov		node, NMASK					; load node mask
		and		node, iter					; node = iter & NMASK
		cmd		iter, KSIZE					; change iterator position
		cmp		iter, [s_limit]				; if (iter cond limit)
if bwd
		jl		.next						;     then go to next node
else
		jg		.next						;     then go to next node
end if
.back:	mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total
;---[Go to another node branch]------------
.next:	mov		next, NMASK					; load node mask
		and		next, [array + node + dir]	; next = array[node].dir & NMASK
		cmp		next, EMPTY					; if (next == EMPTY)
		je		.exit						;     then go to exit
		mov		size, IMASK					; load index mask
		and		size, [array + next + FDIR]
		lea		size, [size + next - KSIZE]	; size = next + (array[next].fdir & IMASK) - KSIZE
if bwd
		mov		iter, size					; iter = next + (array[next].fdir & IMASK) - KSIZE
		mov		[s_limit], next				; save "limit" variable into the stack
else
		mov		iter, next					; iter = next
		mov		[s_limit], size				; save "limit" variable into the stack
end if
		jmp		.back						; go back
}
CountKeysFwd:	COUNT_KEYS	add, 0
CountKeysBwd:	COUNT_KEYS	sub, 1

;******************************************************************************;
;       Sorting                                                                ;
;******************************************************************************;
macro	SORT_NODE	cond
{
;---[Parameters]---------------------------
data	equ		rdi							; pointer to data array
size	equ		rsi							; count of keys to sort
func	equ		rdx							; compare function
;---[Internal variables]-------------------
ptr		equ		rcx							; temporary pointer
left	equ		r12							; left index
right	equ		r13							; right index
median	equ		r14							; median value
median1	equ		r8							; median value + 1
value	equ		xmm0						; value to insert
stack	equ		rsp							; stack pointer
s_data	equ		stack + 0 * 8				; stack position of "data" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
s_value	equ		stack + 4 * 8				; stack position of "value" variable
s_left	equ		stack + 6 * 8				; stack position of "left" variable
s_right	equ		stack + 7 * 8				; stack position of "right" variable
s_med	equ		stack + 8 * 8				; stack position of "median" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		ptr, KSIZE
		mov		[s_left], left				; save old value of "left" variable
		mov		[s_right], right			; save old value of "right" variable
		mov		[s_med], median				; save old value of "median" variable
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
;---[Sorting loop]-------------------------
.sloop:	movdqa	value, [data + ptr]			; value = data[ptr]
		movdqa	[s_value], value			; save "value" variable into the stack
		xor		left, left					; left = 0
		mov		right, ptr					; right = ptr
;---[Binary search loop]-------------------
.bloop:	lea		median, [left + right]
		shr		median, 1
		and		median, -KSIZE				; median = (left + right) / 2
		mov		param2, [data + median]
		mov		param1, [s_value]
		call	qword [s_func]				; result = Compare (value.key, data[median].key)
		mov		data, [s_data]				; get "data" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		lea		median1, [median + KSIZE]	; median1 = median + KSIZE
		cmp		result, 0
	cmov#cond	left, median1				; if (result cond 0), then left = median + KSIZE
	cmovn#cond	right, median				; if (result !cond 0), then right = median
		cmp		left, right
		jb		.bloop						; do while (left < right)
;---[End of binary search loop]------------
		movdqa	value, [s_value]			; get "value" variable from the stack
		mov		param2, ptr
		sub		param2, left
		lea		param1, [data + ptr]
		call	ReplaceLeftCore				; call ReplaceLeftCore (data + ptr, ptr - left, value)
		mov		data, [s_data]				; get "data" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		add		ptr, KSIZE					; ptr++
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		cmp		ptr, [s_size]
		jb		.sloop						; do while (ptr < size)
;---[End of sorting loop]------------------
		mov		left, [s_left]				; restore old value of "left" variable
		mov		right, [s_right]			; restore old value of "right" variable
		mov		median, [s_med]				; restore old value of "median" variable
		add		stack, space				; restoring back the stack pointer
		ret
}
SortNodeAsc:	SORT_NODE	ge
SortNodeDsc:	SORT_NODE	le
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MERGE_SORT	cond
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
siter1	equ		rsi							; source iterator #1
siter2	equ		rdx							; source iterator #2
size1	equ		rcx							; size of source list #1
size2	equ		r8							; size of source list #2
func	equ		r9							; compare function
;---[Internal variables]-------------------
rhead	equ		rax							; chain head
rtail	equ		rdx							; chain tail
node	equ		r11							; node index
array	equ		r12							; pointer to array of nodes
pool	equ		r13							; pointer to pool free node
titer	equ		r14							; target iterator
value1	equ		xmm0						; value to insert #1
value2	equ		xmm1						; value to insert #2
size	equ		rhead						; node size
prev	equ		node						; previous node
index	equ		func						; element index
back	equ		func						; back address
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_iter1	equ		stack + 1 * 8				; stack position of "siter1" variable
s_iter2	equ		stack + 2 * 8				; stack position of "siter2" variable
s_size1	equ		stack + 3 * 8				; stack position of "size1" variable
s_size2	equ		stack + 4 * 8				; stack position of "size2" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
s_slim1	equ		stack + 6 * 8				; stack position of "slimit1" variable
s_slim2	equ		stack + 7 * 8				; stack position of "slimit2" variable
s_tlim	equ		stack + 8 * 8				; stack position of "tlimit" variable
s_head	equ		stack + 9 * 8				; stack position of "head" variable
s_val1	equ		stack + 10 * 8				; stack position of "value1" variable
s_val2	equ		stack + 12 * 8				; stack position of "value2" variable
s_array	equ		stack + 14 * 8				; stack position of "array" variable
s_pool	equ		stack + 15 * 8				; stack position of "pool" variable
s_titer	equ		stack + 16 * 8				; stack position of "titer" variable
space	= 17 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save old value of "array" variable
		mov		[s_pool], pool				; save old value of "pool" variable
		mov		[s_titer], titer			; save old value of "titer" variable
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_iter1], siter1			; save "siter1" variable into the stack
		mov		[s_iter2], siter2			; save "siter2" variable into the stack
		mov		[s_size1], size1			; save "size1" variable into the stack
		mov		[s_size2], size2			; save "size2" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		pool, [this + POOL]			; get pool pointer
		mov		titer, EMPTY				; titer = EMPTY
		mov		size, IMASK					; load index mask
		and		size, [array + siter1 + FDIR]
		lea		size, [size + siter1 - KSIZE]
		mov		[s_slim1], size				; save "slimit1" variable into the stack
		mov		size, IMASK					; load index mask
		and		size, [array + siter2 + FDIR]
		lea		size, [size + siter2 - KSIZE]
		mov		[s_slim2], size				; save "slimit2" variable into the stack
		mov		[s_tlim], titer				; tlimit = EMPTY
		mov		[s_head], pool				; save "head" variable into the stack
;---[Merging loop]-------------------------
.loop:	movdqa	value1, [array + siter1 + NDATA]
		movdqa	value2, [array + siter2 + NDATA]
		movdqa	[s_val1], value1			; value1 = array[siter1].data
		movdqa	[s_val2], value2			; value2 = array[siter2].data
		mov		param1, [array + siter1 + NDATA]
		mov		param2, [array + siter2 + NDATA]
		call	qword [s_func]				; rhead = func (array[siter1].data.key, array[siter2].data.key)
		mov		siter1, [s_iter1]			; get "siter1" variable from the stack
		mov		siter2, [s_iter2]			; get "siter2" variable from the stack
		movdqa	value1, [s_val1]			; get "value1" variable from the stack
		movdqa	value2, [s_val2]			; get "value2" variable from the stack
		cmp		rhead, 0					; if (rhead cond 0)
		j#cond	.else						;     then go to else branch
;---[if rhead cond 0]---------------------
		mov		node, NMASK					; load node mask
		and		node, siter1				; node = siter1 & NMASK
		add		siter1, KSIZE				; siter1++
		mov		back, .back1
		cmp		siter1, [s_slim1]			; if (siter1 cond slimit1)
		jg		.snxt1						;     then go to next node
.back1:	mov		[s_iter1], siter1			; save "siter1" variable into the stack
		add		titer, KSIZE				; titer++
		mov		back, .back2
		cmp		titer, [s_tlim]				; if (titer cond tlimit)
		jg		.tnext						;     then go to next node
.back2:	movdqa	[array + titer + NDATA], value1
		sub		qword [s_size1], KSIZE		; size1--
		jnz		.loop						; do while (size1 != 0)
;---[Coping loop]--------------------------
.loop1:	movdqa	value2, [array + siter2 + NDATA]
		mov		node, NMASK					; load node mask
		and		node, siter2				; node = siter2 & NMASK
		add		siter2, KSIZE				; siter2++
		mov		back, .back3
		cmp		siter2, [s_slim2]			; if (siter2 cond slimit2)
		jg		.snxt2						;     then go to next node
.back3:	mov		[s_iter2], siter2			; save "siter2" variable into the stack
		add		titer, KSIZE				; titer++
		mov		back, .back4
		cmp		titer, [s_tlim]				; if (titer cond tlimit)
		jg		.tnext						;     then go to next node
.back4:	movdqa	[array + titer + NDATA], value2
		sub		qword [s_size2], KSIZE		; size2--
		jnz		.loop1						; do while (size2 != 0)
;---[End of coping loop]-------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, titer					; node = titer & NMASK
		and		index, titer				; index = titer & IMASK
		lea		index, [index + EMPTY + KSIZE]
		mov		[array + node + FDIR], index; array[node].fdir = index + EMPTY + KSIZE
		mov		[this + POOL], pool			; this.pool = pool
		mov		rhead, [s_head]				; rhead = head
		mov		rtail, titer				; rtail = titer
		mov		array, [s_array]			; restore old value of "array" variable
		mov		pool, [s_pool]				; restore old value of "pool" variable
		mov		titer, [s_titer]			; restore old value of "titer" variable
		add		stack, space				; restoring back the stack pointer
		ret									; return {head, titer}
;---[else]---------------------------------
.else:	mov		node, NMASK					; load node mask
		and		node, siter2				; node = siter2 & NMASK
		add		siter2, KSIZE				; siter2++
		mov		back, .back5
		cmp		siter2, [s_slim2]			; if (siter2 cond slimit2)
		jg		.snxt2						;     then go to next node
.back5:	mov		[s_iter2], siter2			; save "siter2" variable into the stack
		add		titer, KSIZE				; titer++
		mov		back, .back6
		cmp		titer, [s_tlim]				; if (titer cond tlimit)
		jg		.tnext						;     then go to next node
.back6:	movdqa	[array + titer + NDATA], value2
		sub		qword [s_size2], KSIZE		; size2--
		jnz		.loop						; do while (size2 != 0)
;---[Coping loop]--------------------------
.loop2:	movdqa	value1, [array + siter1 + NDATA]
		mov		node, NMASK					; load node mask
		and		node, siter1				; node = siter1 & NMASK
		add		siter1, KSIZE				; siter1++
		mov		back, .back7
		cmp		siter1, [s_slim1]			; if (siter1 cond slimit1)
		jg		.snxt1						;     then go to next node
.back7:	mov		[s_iter1], siter1			; save "siter1" variable into the stack
		add		titer, KSIZE				; titer++
		mov		back, .back8
		cmp		titer, [s_tlim]				; if (titer cond tlimit)
		jg		.tnext						;     then go to next node
.back8:	movdqa	[array + titer + NDATA], value1
		sub		qword [s_size1], KSIZE		; size1--
		jnz		.loop2						; do while (size1 != 0)
;---[End of coping loop]-------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, titer					; node = titer & NMASK
		and		index, titer				; index = titer & IMASK
		lea		index, [index + EMPTY + KSIZE]
		mov		[array + node + FDIR], index; array[node].fdir = index + EMPTY + KSIZE
		mov		[this + POOL], pool			; this.pool = pool
		mov		rhead, [s_head]				; rhead = head
		mov		rtail, titer				; rtail = titer
		mov		array, [s_array]			; restore old value of "array" variable
		mov		pool, [s_pool]				; restore old value of "pool" variable
		mov		titer, [s_titer]			; restore old value of "titer" variable
		add		stack, space				; restoring back the stack pointer
		ret									; return {head, titer}
;---[Go to another source node branch #1]--
.snxt1:	mov		siter1, NMASK				; load node mask
		and		siter1, [array + node + FDIR]
		mov		size, IMASK					; load index mask
		and		size, [array + siter1 + FDIR]
		lea		size, [size + siter1 - KSIZE]
		mov		[s_slim1], size				; save "slimit1" variable into the stack
		mov		[array + node + FDIR], pool	; array[node].fdir = pool
		mov		pool, node					; pool = node
		jmp		back						; go back
;---[Go to another source node branch #2]--
.snxt2:	mov		siter2, NMASK				; load node mask
		and		siter2, [array + node + FDIR]
		mov		size, IMASK					; load index mask
		and		size, [array + siter2 + FDIR]
		lea		size, [size + siter2 - KSIZE]
		mov		[s_slim2], size				; save "slimit2" variable into the stack
		mov		[array + node + FDIR], pool	; array[node].fdir = pool
		mov		pool, node					; pool = node
		jmp		back						; go back
;---[Go to another target node branch]-----
.tnext:	mov		prev, NMASK					; load node mask
		and		prev, titer					; prev = titer & NMASk
		mov		titer, pool					; titer = pool
		lea		size, [pool + NMAX]
		mov		[array + pool + BDIR], prev	; array[pool].bdir = prev
		mov		[array + prev + FDIR], size	; array[prev].fdir = titer + NMAX
		mov		pool, [array + pool + FDIR]	; pool = array[pool].fdir
		sub		size, KSIZE
		mov		[s_tlim], size				; save "tlimit" variable into the stack
		jmp		back						; go back
}
MergeSortAsc:	MERGE_SORT	g
MergeSortDsc:	MERGE_SORT	l
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SORT_CORE	mergefunc, sortfunc
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
array	equ		rsi							; pointer to array of nodes
iter	equ		rdx							; iterator value
size	equ		rcx							; list size
func	equ		r8							; compare function
;---[Internal variables]-------------------
rhead	equ		rax							; chain head
rtail	equ		rdx							; chain tail
rnext	equ		r10							; pointer to next chain
rsize	equ		r11							; chain size
ptr		equ		r9							; temporary pointer
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_iter	equ		stack + 2 * 8				; stack position of "iter" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_rnext	equ		stack + 5 * 8				; stack position of "rnext" variable
s_rsize	equ		stack + 6 * 8				; stack position of "rsize" variable
s_head	equ		stack + 7 * 8				; stack position of "head" variable
s_next	equ		stack + 8 * 8				; stack position of "next" variable
s_size1	equ		stack + 9 * 8				; stack position of "size1" variable
s_size2	equ		stack + 10 * 8				; stack position of "size2" variable
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
.start:	sub		stack, space				; reserving stack size for local vars
		mov		ptr, [array + iter + FDIR]	; ptr = array[iter].fdir
		mov		rnext, NMASK				; load node mask
		mov		rsize, IMASK				; load index mask
		and		rnext, ptr					; rnext = array[iter].fdir & NMASK
		and		rsize, ptr					; rsize = array[iter].fdir & NMASK
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_rnext], rnext			; save "rnext" variable into the stack
		mov		[s_rsize], rsize			; save "rsize" variable into the stack
		cmp		size, rsize					; if (size <= rsize)
		jbe		.node						;     then sort node
;---[Sort fisrt list]----------------------
		shr		size, 1
		and		size, -KSIZE				; size /= 2
		call	.start						; result = this.sortcore (array, iter, size / 2, func)
		mov		size, [s_size]				; get "size" variable from the stack
		sub		size, rsize					; size -= result.size
		jz		.exit						; if (size == 0), then go to exit
		mov		[s_head], rhead				; save "head" variable into the stack
		mov		[s_size1], rsize			; save "size1" variable into the stack
;---[Sort second list]---------------------
		mov		param5, [s_func]
		mov		param4, size
		mov		param3, rnext
		mov		param2, [s_array]
		mov		param1, [s_this]
		call	.start						; result = this.sortcore (array, result.next, size - result.size, func)
		mov		[s_next], rnext				; save "next" variable into the stack
		mov		[s_size2], rsize			; save "size2" variable into the stack
;---[Merge sorted lists]-------------------
		mov		param6, [s_func]
		mov		param5, rsize
		mov		param4, [s_size1]
		mov		param3, rhead
		mov		param2, [s_head]
		mov		param1, [s_this]
		call	mergefunc					; result = this.mergefunc (head, rhead, size1, rsize, func)
		mov		rnext, [s_next]
		mov		rsize, [s_size1]
		add		rsize, [s_size2]
;---[Normal exit]--------------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
;---[Sort node branch]---------------------
.node:	lea		param1, [array + iter + NDATA]
		mov		param2, rsize
		mov		param3, func
		call	sortfunc					; result = sortfunc (array[iter].data, rsize, func)
		mov		iter, [s_iter]				; get "iter" variable from the stack
		mov		rnext, [s_rnext]			; get "rnext" variable from the stack
		mov		rsize, [s_rsize]			; get "rsize" variable from the stack
		mov		rhead, iter
		lea		rtail, [iter + rsize - KSIZE]
		add		stack, space				; restoring back the stack pointer
		ret
}
SortAscCore:	SORT_CORE	MergeSortAsc, SortNodeAsc
SortDscCore:	SORT_CORE	MergeSortDsc, SortNodeDsc
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SORT	sortfunc, ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
func	equ		rsi							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
rhead	equ		rax							; chain head
rtail	equ		rdx							; chain tail
array	equ		r9							; pointer to array of nodes
size	equ		r10							; object size
pool	equ		r11							; pointer to pool free node
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_func	equ		stack + 1 * 8				; stack position of "func" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
		mov		pool, [this + POOL]			; get pool pointer
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		cmp		size, KSIZE					; if (size <= KSIZE)
		jbe		.exit						;     then go to exit
;---[Check free nodes for sorting]---------
		cmp		pool, EMPTY					; if (pool == EMPTY)
		je		.ext						;     then try to extend object capacity
		cmp		qword [array + pool + FDIR], EMPTY
		je		.ext
;---[Normal execution branch]--------------
.back:	mov		param5, func
		mov		param4, size
		mov		param3, [this + HEAD]
		mov		param2, [this + ARRAY]
		call	sortfunc					; result = this.sortfunc (array, head, size, func)
;---[Set list properties]------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[this + HEAD], rhead		; this.head = rhead
if ring
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		and		rhead, NMASK				; resul1 &= NMASK
		and		rtail, NMASK				; resul2 &= NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + rtail + FDIR]
		add		size, rhead
		mov		[array + rhead + BDIR], rtail
		mov		[array + rtail + FDIR], size
else
		mov		[this + TAIL], rtail		; this.tail = rtail
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
end if
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_size]			; get "size" variable from the stack
		shr		result, KSCALE				; return count
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, [this + CAPACITY]
		shl		param2, 1
		cmp		param2, [this + CAPACITY]	; if (newcapacity <= capacity)
		jbe		.error						;     then go to error branch
		call	Extend						; status = this.Extend (capacity * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		test	status, status
		jnz		.back						; if (status), then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret
}

; Ascending sort order
SortAscList:	SORT	SortAscCore, 0
SortAscRing:	SORT	SortAscCore, 1

; Descending sort order
SortDscList:	SORT	SortDscCore, 0
SortDscRing:	SORT	SortDscCore, 1

;******************************************************************************;
;       Merging of sorted lists                                                ;
;******************************************************************************;
macro	MERGE_CORE	cond
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
sarray	equ		rsi							; pointer to source array of nodes
siter1	equ		rdx							; source iterator #1
siter2	equ		rcx							; source iterator #2
size1	equ		r8							; size of source list #1
size2	equ		r9							; size of source list #2
func	equ		r10							; compare function
;---[Internal variables]-------------------
rhead	equ		rax							; chain head
rtail	equ		rdx							; chain tail
node	equ		r11							; node index
tarray	equ		r12							; pointer to array of nodes
pool	equ		r13							; pointer to pool free node
titer	equ		r14							; target iterator
value1	equ		xmm0						; value to insert #1
value2	equ		xmm1						; value to insert #2
size	equ		rhead						; node size
prev	equ		node						; previous node
index	equ		func						; element index
back	equ		func						; back address
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_sarr	equ		stack + 1 * 8				; stack position of "sarray" variable
s_iter1	equ		stack + 2 * 8				; stack position of "siter1" variable
s_iter2	equ		stack + 3 * 8				; stack position of "siter2" variable
s_size1	equ		stack + 4 * 8				; stack position of "size1" variable
s_size2	equ		stack + 5 * 8				; stack position of "size2" variable
s_func	equ		stack + 6 * 8				; stack position of "func" variable
s_slim1	equ		stack + 7 * 8				; stack position of "slimit1" variable
s_slim2	equ		stack + 8 * 8				; stack position of "slimit2" variable
s_tlim	equ		stack + 9 * 8				; stack position of "tlimit" variable
s_head	equ		stack + 10 * 8				; stack position of "head" variable
s_tarr	equ		stack + 11 * 8				; stack position of "array" variable
s_pool	equ		stack + 12 * 8				; stack position of "pool" variable
s_titer	equ		stack + 13 * 8				; stack position of "titer" variable
s_val1	equ		stack + 14 * 8				; stack position of "value1" variable
s_val2	equ		stack + 16 * 8				; stack position of "value2" variable
space	= 19 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_tarr], tarray			; save old value of "tarray" variable
		mov		[s_pool], pool				; save old value of "pool" variable
		mov		[s_titer], titer			; save old value of "titer" variable
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_sarr], sarray			; save "sarray" variable into the stack
		mov		[s_iter1], siter1			; save "siter1" variable into the stack
		mov		[s_iter2], siter2			; save "siter2" variable into the stack
		mov		[s_size1], size1			; save "size1" variable into the stack
		mov		[s_size2], size2			; save "size2" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		tarray, [this + ARRAY]		; get pointer to array of nodes
		mov		pool, [this + POOL]			; get pool pointer
		mov		titer, EMPTY				; titer = EMPTY
		mov		size, IMASK					; load index mask
		and		size, [tarray + siter1 + FDIR]
		lea		size, [size + siter1 - KSIZE]
		mov		[s_slim1], size				; save "slimit1" variable into the stack
		mov		size, IMASK					; load index mask
		and		size, [sarray + siter2 + FDIR]
		lea		size, [size + siter2 - KSIZE]
		mov		[s_slim2], size				; save "slimit2" variable into the stack
		mov		[s_tlim], titer				; tlimit = EMPTY
		mov		[s_head], pool				; save "head" variable into the stack
		test	size1, size1				; if (size1 == 0)
		jz		.loop1						;     then copy source list into target list
;---[Merging loop]-------------------------
.loop:	movdqa	value1, [tarray + siter1 + NDATA]
		movdqa	value2, [sarray + siter2 + NDATA]
		movdqa	[s_val1], value1			; value1 = tarray[siter1].data
		movdqa	[s_val2], value2			; value2 = sarray[siter2].data
		mov		param1, [tarray + siter1 + NDATA]
		mov		param2, [sarray + siter2 + NDATA]
		call	qword [s_func]				; rhead = func (tarray[siter1].data.key, sarray[siter2].data.key)
		mov		sarray, [s_sarr]			; get "sarray" variable from the stack
		mov		siter1, [s_iter1]			; get "siter1" variable from the stack
		mov		siter2, [s_iter2]			; get "siter2" variable from the stack
		movdqa	value1, [s_val1]			; get "value1" variable from the stack
		movdqa	value2, [s_val2]			; get "value2" variable from the stack
		cmp		rhead, 0					; if (rhead cond 0)
		j#cond	.else						;     then go to else branch
;---[if rhead cond 0]---------------------
		mov		node, NMASK					; load node mask
		and		node, siter1				; node = siter1 & NMASK
		add		siter1, KSIZE				; siter1++
		mov		back, .back1
		cmp		siter1, [s_slim1]			; if (siter1 cond slimit1)
		jg		.snxt1						;     then go to next node
.back1:	mov		[s_iter1], siter1			; save "siter1" variable into the stack
		add		titer, KSIZE				; titer++
		mov		back, .back2
		cmp		titer, [s_tlim]				; if (titer cond tlimit)
		jg		.tnext						;     then go to next node
.back2:	movdqa	[tarray + titer + NDATA], value1
		sub		qword [s_size1], KSIZE		; size1--
		jnz		.loop						; do while (size1 != 0)
;---[Coping loop]--------------------------
.loop1:	movdqa	value2, [sarray + siter2 + NDATA]
		mov		node, NMASK					; load node mask
		and		node, siter2				; node = siter2 & NMASK
		add		siter2, KSIZE				; siter2++
		mov		back, .back3
		cmp		siter2, [s_slim2]			; if (siter2 cond slimit2)
		jg		.snxt2						;     then go to next node
.back3:	mov		[s_iter2], siter2			; save "siter2" variable into the stack
		add		titer, KSIZE				; titer++
		mov		back, .back4
		cmp		titer, [s_tlim]				; if (titer cond tlimit)
		jg		.tnext						;     then go to next node
.back4:	movdqa	[tarray + titer + NDATA], value2
		sub		qword [s_size2], KSIZE		; size2--
		jnz		.loop1						; do while (size2 != 0)
;---[End of coping loop]-------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, titer					; node = titer & NMASK
		and		index, titer				; index = titer & IMASK
		lea		index, [index + EMPTY + KSIZE]
		mov		[tarray + node + FDIR], index; tarray[node].fdir = index + EMPTY + KSIZE
		mov		[this + POOL], pool			; this.pool = pool
		mov		rhead, [s_head]				; rhead = head
		mov		rtail, titer				; rtail = titer
		mov		tarray, [s_tarr]			; restore old value of "tarray" variable
		mov		pool, [s_pool]				; restore old value of "pool" variable
		mov		titer, [s_titer]			; restore old value of "titer" variable
		add		stack, space				; restoring back the stack pointer
		ret									; return {head, titer}
;---[else]---------------------------------
.else:	mov		node, NMASK					; load node mask
		and		node, siter2				; node = siter2 & NMASK
		add		siter2, KSIZE				; siter2++
		mov		back, .back5
		cmp		siter2, [s_slim2]			; if (siter2 cond slimit2)
		jg		.snxt2						;     then go to next node
.back5:	mov		[s_iter2], siter2			; save "siter2" variable into the stack
		add		titer, KSIZE				; titer++
		mov		back, .back6
		cmp		titer, [s_tlim]				; if (titer cond tlimit)
		jg		.tnext						;     then go to next node
.back6:	movdqa	[tarray + titer + NDATA], value2
		sub		qword [s_size2], KSIZE		; size2--
		jnz		.loop						; do while (size2 != 0)
;---[Coping loop]--------------------------
.loop2:	movdqa	value1, [tarray + siter1 + NDATA]
		mov		node, NMASK					; load node mask
		and		node, siter1				; node = siter1 & NMASK
		add		siter1, KSIZE				; siter1++
		mov		back, .back7
		cmp		siter1, [s_slim1]			; if (siter1 cond slimit1)
		jg		.snxt1						;     then go to next node
.back7:	mov		[s_iter1], siter1			; save "siter1" variable into the stack
		add		titer, KSIZE				; titer++
		mov		back, .back8
		cmp		titer, [s_tlim]				; if (titer cond tlimit)
		jg		.tnext						;     then go to next node
.back8:	movdqa	[tarray + titer + NDATA], value1
		sub		qword [s_size1], KSIZE		; size1--
		jnz		.loop2						; do while (size1 != 0)
;---[End of coping loop]-------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, titer					; node = titer & NMASK
		and		index, titer				; index = titer & IMASK
		lea		index, [index + EMPTY + KSIZE]
		mov		[tarray + node + FDIR], index; tarray[node].fdir = index + EMPTY + KSIZE
		mov		[this + POOL], pool			; this.pool = pool
		mov		rhead, [s_head]				; rhead = head
		mov		rtail, titer				; rtail = titer
		mov		tarray, [s_tarr]			; restore old value of "tarray" variable
		mov		pool, [s_pool]				; restore old value of "pool" variable
		mov		titer, [s_titer]			; restore old value of "titer" variable
		add		stack, space				; restoring back the stack pointer
		ret									; return {head, titer}
;---[Go to another source node branch #1]--
.snxt1:	mov		siter1, NMASK				; load node mask
		and		siter1, [tarray + node + FDIR]
		mov		size, IMASK					; load index mask
		and		size, [tarray + siter1 + FDIR]
		lea		size, [size + siter1 - KSIZE]
		mov		[s_slim1], size				; save "slimit1" variable into the stack
		mov		[tarray + node + FDIR], pool; tarray[node].fdir = pool
		mov		pool, node					; pool = node
		jmp		back						; go back
;---[Go to another source node branch #2]--
.snxt2:	mov		siter2, NMASK				; load node mask
		and		siter2, [sarray + node + FDIR]
		mov		size, IMASK					; load index mask
		and		size, [sarray + siter2 + FDIR]
		lea		size, [size + siter2 - KSIZE]
		mov		[s_slim2], size				; save "slimit2" variable into the stack
		jmp		back						; go back
;---[Go to another target node branch]-----
.tnext:	mov		prev, NMASK					; load node mask
		and		prev, titer					; prev = titer & NMASk
		mov		titer, pool					; titer = pool
		lea		size, [pool + NMAX]
		mov		[tarray + pool + BDIR], prev; tarray[pool].bdir = prev
		mov		[tarray + prev + FDIR], size; tarray[prev].fdir = titer + NMAX
		mov		pool, [tarray + pool + FDIR]; pool = tarray[pool].fdir
		sub		size, KSIZE
		mov		[s_tlim], size				; save "tlimit" variable into the stack
		jmp		back						; go back
}
MergeAscCore:	MERGE_CORE	g
MergeDscCore:	MERGE_CORE	l
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MERGE	mergefunc, ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target list/ring object
source	equ		rsi							; pointer to source list/ring object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
rhead	equ		rax							; chain head
rtail	equ		rdx							; chain tail
array	equ		r11							; pointer to array of nodes
size	equ		r10							; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.error						;     then go to error branch
;---[Check source object size]-------------
		mov		array, [source + ARRAY]		; get pointer to array of nodes
		mov		size, [source + SIZE]		; get source object size
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; count = size
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		add		size, [this + SIZE]			; size = size + this.size
		lea		size, [size * 2 + NSIZE - KSIZE]
		and		size, -NSIZE				; size = size * 2 + NSIZE - KSIZE & (-NSIZE)
	Capacity	size, func, MINCAP			; compute new capacity of target object
		cmp		size, [this + CAPACITY]		; if (size > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Merge lists]--------------------------
.back:	mov		param7, [s_func]
		mov		param6, [source + SIZE]
		mov		param5, [this + SIZE]
		mov		param4, [source + HEAD]
		mov		param3, [this + HEAD]
		mov		param2, array
		call	mergefunc					; call this.mergefunc (array, this.head, source.head, this.size, source.size, func)
;---[Set target list properties]-----------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		add		[this + SIZE], size			; this.size += source.size
		mov		[this + HEAD], rhead		; this.head = rhead
if ring
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
		and		rhead, NMASK				; resul1 &= NMASK
		and		rtail, NMASK				; resul2 &= NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + rtail + FDIR]
		add		size, rhead
		mov		[array + rhead + BDIR], rtail
		mov		[array + rtail + FDIR], size
else
		mov		[this + TAIL], rtail		; this.tail = rtail
		mov		qword [this + FWD], EMPTY	; this.fwd = EMPTY
		mov		qword [this + BWD], EMPTY	; this.bwd = EMPTY
end if
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_size]			; get "size" variable from the stack
		shr		result, KSCALE				; return count
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, size
		call	Extend						; status = this.Extend (low)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret
}

; Ascending sort order
MergeAscList:	MERGE	MergeAscCore, 0
MergeAscRing:	MERGE	MergeAscCore, 1

; Descending sort order
MergeDscList:	MERGE	MergeDscCore, 0
MergeDscRing:	MERGE	MergeDscCore, 1

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
UniqueCore:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
sarray	equ		rsi							; pointer to source array of nodes
siter	equ		rdx							; source iterator
size	equ		rcx							; size of source list
func	equ		r8							; compare function
;---[Internal variables]-------------------
rhead	equ		rax							; chain head
rtail	equ		rdx							; chain tail
value	equ		r9							; key value
total	equ		r10							; count of duplicates
node	equ		r11							; node index
tarray	equ		r12							; pointer to array of nodes
pool	equ		r13							; pointer to pool free node
titer	equ		r14							; target iterator
count	equ		r15							; count of unique elements
key		equ		xmm0						; key value
data	equ		xmm1						; temporary register
prev	equ		node						; previous node
index	equ		func						; element index
back	equ		func						; back address
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_sarr	equ		stack + 1 * 8				; stack position of "sarray" variable
s_siter	equ		stack + 2 * 8				; stack position of "siter1" variable
s_size	equ		stack + 3 * 8				; stack position of "size1" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_slim	equ		stack + 5 * 8				; stack position of "slimit1" variable
s_tlim	equ		stack + 6 * 8				; stack position of "tlimit" variable
s_head	equ		stack + 7 * 8				; stack position of "head" variable
s_tarr	equ		stack + 8 * 8				; stack position of "array" variable
s_pool	equ		stack + 9 * 8				; stack position of "pool" variable
s_titer	equ		stack + 10 * 8				; stack position of "titer" variable
s_count	equ		stack + 11 * 8				; stack position of "count" variable
s_value	equ		stack + 12 * 8				; stack position of "value" variable
s_total	equ		stack + 13 * 8				; stack position of "total" variable
space	= 15 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_tarr], tarray			; save old value of "tarray" variable
		mov		[s_pool], pool				; save old value of "pool" variable
		mov		[s_titer], titer			; save old value of "titer" variable
		mov		[s_count], count			; save old value of "count" variable
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_sarr], sarray			; save "sarray" variable into the stack
		mov		[s_siter], siter			; save "siter" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		tarray, [this + ARRAY]		; get pointer to array of nodes
		mov		pool, [this + POOL]			; get pool pointer
		mov		titer, EMPTY				; titer = EMPTY
		xor		count, count				; count = 0
		mov		size, IMASK					; load index mask
		and		size, [sarray + siter + FDIR]
		lea		size, [size + siter - KSIZE]
		mov		[s_slim], size				; save "limit" variable into the stack
		mov		[s_tlim], titer				; tlimit = EMPTY
		mov		[s_head], pool				; save "head" variable into the stack
		mov		value, [sarray + siter + NDATA]
		mov		[s_value], value			; save "value" variable into the stack
		mov		qword [s_total], 1			; total = 1
		mov		node, NMASK					; load node mask
		and		node, siter					; node = siter & NMASK
		add		siter, KSIZE				; siter++
		mov		back, .back1
		cmp		siter, [s_slim]				; if (siter cond slimit)
		jg		.snext						;     then go to next node
.back1:	mov		[s_siter], siter			; save "siter" variable into the stack
		sub		qword [s_size], KSIZE		; if (--size == 0)
		jz		.skip						;     then skip following code
;---[Unique loop]--------------------------
.loop:	mov		param2, [sarray + siter + NDATA]
		mov		param1, [s_value]
		call	qword [s_func]				; result = Compare (value.key, sarray[siter].key)
		mov		sarray, [s_sarr]			; get "sarray" variable from the stack
		mov		siter, [s_siter]			; get "siter" variable from the stack
		mov		total, [s_total]			; get "total" variable from the stack
		test	result, result				; if (result != 0)
		jz		@f							; {
		add		titer, KSIZE				;     titer++
		mov		back, .back2
		cmp		titer, [s_tlim]				;     if (titer cond tlimit)
		jg		.tnext						;         then go to next node
.back2:	movq	key, [s_value]
		movq	data, [s_total]
	punpcklqdq	key, data
		movdqa	[tarray + titer + NDATA], key
		add		count, KSIZE				;     count++
		mov		sarray, [s_sarr]			;     get "sarray" variable from the stack
		mov		siter, [s_siter]			;     get "siter" variable from the stack
		mov		value,  [sarray + siter + NDATA]
		xor		total, total				;     total = 0 }
		mov		[s_value], value			; save "value" variable into the stack
@@:		add		total, 1					; total++
		mov		[s_total], total			; save "total" variable into the stack
		mov		node, NMASK					; load node mask
		and		node, siter					; node = siter & NMASK
		add		siter, KSIZE				; siter++
		mov		back, .back3
		cmp		siter, [s_slim]				; if (siter cond slimit)
		jg		.snext						;     then go to next node
.back3:	mov		[s_siter], siter			; save "siter" variable into the stack
		sub		qword [s_size], KSIZE		; size--
		jnz		.loop						; do while (size != 0)
;---[End of unique loop]-------------------
.skip:	add		titer, KSIZE				; titer++
		mov		back, .back4
		cmp		titer, [s_tlim]				; if (titer cond tlimit)
		jg		.tnext						;     then go to next node
.back4:	movq	key, [s_value]
		movq	data, [s_total]
	punpcklqdq	key, data
		movdqa	[tarray + titer + NDATA], key
		add		count, KSIZE				;     count++
		mov		this, [s_this]				; get "this" variable from the stack
		mov		node, NMASK					; load node mask
		mov		index, IMASK				; load index mask
		and		node, titer					; node = titer & NMASK
		and		index, titer				; index = titer & IMASK
		lea		index, [index + EMPTY + KSIZE]
		mov		[tarray + node + FDIR], index; tarray[node].fdir = index + EMPTY + KSIZE
		mov		[this + SIZE], count		; this.size = count
		mov		[this + POOL], pool			; this.pool = pool
		mov		rhead, [s_head]				; rhead = head
		mov		rtail, titer				; rtail = titer
		mov		tarray, [s_tarr]			; restore old value of "tarray" variable
		mov		pool, [s_pool]				; restore old value of "pool" variable
		mov		titer, [s_titer]			; restore old value of "titer" variable
		mov		count, [s_count]			; restore old value of "count" variable
		add		stack, space				; restoring back the stack pointer
		ret
;---[Go to another source node branch]-----
.snext:	mov		siter, NMASK				; load node mask
		and		siter, [sarray + node + FDIR]
		mov		size, IMASK					; load index mask
		and		size, [sarray + siter + FDIR]
		lea		size, [size + siter - KSIZE]
		mov		[s_slim], size				; save "slimit" variable into the stack
		jmp		back						; go back
;---[Go to another target node branch]-----
.tnext:	mov		prev, NMASK					; load node mask
		and		prev, titer					; prev = titer & NMASk
		mov		titer, pool					; titer = pool
		lea		size, [pool + NMAX]
		mov		[tarray + pool + BDIR], prev; tarray[pool].bdir = prev
		mov		[tarray + prev + FDIR], size; tarray[prev].fdir = titer + NMAX
		mov		pool, [tarray + pool + FDIR]; pool = tarray[pool].fdir
		sub		size, KSIZE
		mov		[s_tlim], size				; save "tlimit" variable into the stack
		jmp		back						; go back
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	UNIQUE	ring
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target list/ring object
source	equ		rsi							; pointer to source list/ring object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
rhead	equ		rax							; chain head
rtail	equ		rdx							; chain tail
array	equ		r11							; pointer to array of nodes
size	equ		r10							; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check target object size]-------------
		cmp		qword [this + SIZE], 0		; if (size)
		jnz		.error						;     then go to error branch
;---[Check source object size]-------------
		mov		size, [source + SIZE]		; get size of source list/ring object
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		lea		size, [size * 2 + NSIZE - KSIZE]
		and		size, -NSIZE				; size = size * 2 + NSIZE - KSIZE & (-NSIZE)
	Capacity	size, func, MINCAP			; compute new capacity of target object
		cmp		size, [this + CAPACITY]		; if (size > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	mov		param5, [s_func]
		mov		param4, [source + SIZE]
		mov		param3, [source + HEAD]
		mov		param2, [source + ARRAY]
		call	UniqueCore					; result = this.UniqueCore (source.array, source.head, source.size, func)
;---[Set list properties]------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[this + HEAD], rhead		; this.head = rhead
if ring
		and		rhead, NMASK				; resul1 &= NMASK
		and		rtail, NMASK				; resul2 &= NMASK
		mov		size, IMASK					; load index mask
		and		size, [array + rtail + FDIR]
		add		size, rhead
		mov		[array + rhead + BDIR], rtail
		mov		[array + rtail + FDIR], size
else
		mov		[this + TAIL], rtail		; this.tail = rtail
end if
;---[Normal exit branch]-------------------
.exit:	mov		result, [this + SIZE]
		shr		result, KSCALE				; return this.size
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, size
		call	Extend						; status = this.Extend (low)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret
}
UniqueList:	UNIQUE	0
UniqueRing:	UNIQUE	1

;******************************************************************************;
;       Comparison of lists/rings                                              ;
;******************************************************************************;
Compare:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target list/ring object
source	equ		rsi							; pointer to source list/ring object
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
		mov		size, [this + SIZE]
		test	size, size					; if (this.size == 0)
		jz		.size						;     then go to size compare branch
		cmp		qword [source + SIZE], 0	; if (source.size == 0)
		jz		.size						;     then go to size compare branch
;---[Call check function]------------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		param6, func
		mov		param5, size
		mov		param4, [source + HEAD]
		mov		param3, [this + HEAD]
		mov		param2, [source + ARRAY]
		mov		param1, [this + ARRAY]
		call	DiffFwd						; result = DiffFwd (this.array, source.array, this.iter, source.iter, this.size, this.func)
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
;---[Equal lists branch]-------------------
.equal:	xor		result, result				; return 0
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for sort order                                                   ;
;==============================================================================;
macro	CHECK	checkfunc, c1, c2
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
func	equ		rsi							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		r8							; object size
;------------------------------------------
		mov		size, [this + SIZE]			; get object size
		sub		size, NSIZE					; if (size <= 1)
		set#c1	status						;     then set status and
		jbe		.exit						;     go to exit
;---[Call check function]------------------
		mov		param4, func
		mov		param3, size
		mov		param2, [this + HEAD]
		mov		param1, [this + ARRAY]
		call	checkfunc					; result = checkfunc (array, iter, size - 1, func)
		cmp		result, EMPTY				; check result
		set#c2	status						; and return correct status
.exit:	ret
}
CheckSortAsc:	CHECK	CheckSortAscFwd, be, e
CheckSortDsc:	CHECK	CheckSortDscFwd, be, e

;==============================================================================;
;       Check for duplicate values                                             ;
;==============================================================================;
CheckDup:		CHECK	CheckDupFwd, nbe, ne

;==============================================================================;
;       Check for equality                                                     ;
;==============================================================================;
IsEqual:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target list/ring object
source	equ		rsi							; pointer to source list/ring object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		rcx							; object size
;------------------------------------------
		cmp		this, source				; if (this == source)
		je		.exit						;     return true
		mov		size, [this + SIZE]
		cmp		size, [source + SIZE]		; if (this.size != source.size)
		jne		.exit						;     return false
		test	size, size					; if (size == 0)
		jz		.exit						;     return true
;---[Call check function]------------------
		mov		param6, func
		mov		param5, size
		mov		param4, [source + HEAD]
		mov		param3, [this + HEAD]
		mov		param2, [source + ARRAY]
		mov		param1, [this + ARRAY]
		call	DiffFwd						; result = DiffFwd (this.array, source.array, this.iter, source.iter, this.size, func)
		cmp		result, EMPTY				; if (result == EMPTY)
.exit:	sete	status						;     return true
		ret
;---[Not equal branch]---------------------
.nteql:	xor		status, status				; return false
		ret

;******************************************************************************;
;       List/ring properties                                                   ;
;******************************************************************************;
GetCapacity:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
;---[Internal variables]-------------------
result	equ		rax							; result register
temp	equ		rdx							; temporary register
;------------------------------------------
		mov		result, [this + CAPACITY]	; get object capacity
		mov		temp, result
		shr		result, KSCALE
		shr		temp, NSCALE
		sub		result, NMAX / KSIZE
		sub		result, temp				; return this.capacity / KSIZE - this.capacity / NSIZE - NMAX / KSIZE
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetSize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + SIZE]		; get object size
		shr		result, KSCALE				; return this.size
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IsEmpty:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to list/ring object
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
this	equ		rdi							; pointer to list/ring object
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
