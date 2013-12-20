;                                                                     String.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                            SAFE STRING FUNCTIONS                            #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2013, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################

; Copy function
extrn	'Array_Copy_size'				as	Copy

; Boyer-Moore-Horspool pattern hash
extrn	'_ZN3BMHC1EPKhmb'				as	BMH8
extrn	'_ZN3BMHC1EPKtmb'				as	BMH16
extrn	'_ZN3BMHC1EPKjmb'				as	BMH32

; Boyer-Moore-Horspool subsequence searching algorithm
extrn	'_ZN8Sequence4FindEPKhmPK3BMH'	as	BMH_Find8
extrn	'_ZN8Sequence4FindEPKtmPK3BMH'	as	BMH_Find16
extrn	'_ZN8Sequence4FindEPKjmPK3BMH'	as	BMH_Find32

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       String length                                                          ;
;******************************************************************************;
public	Len_char8				as	'String_Len_char8'
public	Len_char16				as	'String_Len_char16'
public	Len_char32				as	'String_Len_char32'
public	Len_char8				as	'_ZN6String3LenEPKc'
public	Len_char16				as	'_ZN6String3LenEPKs'
public	Len_char32				as	'_ZN6String3LenEPKi'

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;

; Copying of string to string
public	CopyStr_char8			as	'String_Copy_char8'
public	CopyStr_char16			as	'String_Copy_char16'
public	CopyStr_char32			as	'String_Copy_char32'
public	CopyStr_char8			as	'_ZN6String4CopyEPcmPKc'
public	CopyStr_char16			as	'_ZN6String4CopyEPsmPKs'
public	CopyStr_char32			as	'_ZN6String4CopyEPimPKi'

; Copying of characters sequence to string
public	CopySeq_char8			as	'String_CopyN_char8'
public	CopySeq_char16			as	'String_CopyN_char16'
public	CopySeq_char32			as	'String_CopyN_char32'
public	CopySeq_char8			as	'_ZN6String4CopyEPcmPKcm'
public	CopySeq_char16			as	'_ZN6String4CopyEPsmPKsm'
public	CopySeq_char32			as	'_ZN6String4CopyEPimPKim'

;******************************************************************************;
;       Concatenating                                                          ;
;******************************************************************************;

; Concatenating of string to string
public	CatStr_char8			as	'String_Cat_char8'
public	CatStr_char16			as	'String_Cat_char16'
public	CatStr_char32			as	'String_Cat_char32'
public	CatStr_char8			as	'_ZN6String3CatEPcmPKc'
public	CatStr_char16			as	'_ZN6String3CatEPsmPKs'
public	CatStr_char32			as	'_ZN6String3CatEPimPKi'

; Concatenating of characters sequence to string
public	CatSeq_char8			as	'String_CatN_char8'
public	CatSeq_char16			as	'String_CatN_char16'
public	CatSeq_char32			as	'String_CatN_char32'
public	CatSeq_char8			as	'_ZN6String3CatEPcmPKcm'
public	CatSeq_char16			as	'_ZN6String3CatEPsmPKsm'
public	CatSeq_char32			as	'_ZN6String3CatEPimPKim'

;******************************************************************************;
;       String comparison                                                      ;
;******************************************************************************;

; Comparison of strings
public	CompareStr_char8		as	'String_Compare_char8'
public	CompareStr_char16		as	'String_Compare_char16'
public	CompareStr_char32		as	'String_Compare_char32'
public	CompareStr_char8		as	'_ZN6String7CompareEPKcS1_'
public	CompareStr_char16		as	'_ZN6String7CompareEPKsS1_'
public	CompareStr_char32		as	'_ZN6String7CompareEPKiS1_'

; Comparison of characters sequences
public	CompareSeq_char8		as	'String_CompareN_char8'
public	CompareSeq_char16		as	'String_CompareN_char16'
public	CompareSeq_char32		as	'String_CompareN_char32'
public	CompareSeq_char8		as	'_ZN6String7CompareEPKcS1_m'
public	CompareSeq_char16		as	'_ZN6String7CompareEPKsS1_m'
public	CompareSeq_char32		as	'_ZN6String7CompareEPKiS1_m'

;******************************************************************************;
;       Symbol search                                                          ;
;******************************************************************************;

; Searching for single symbol
public	FindSymbol_char8		as	'String_FindSymbol_char8'
public	FindSymbol_char16		as	'String_FindSymbol_char16'
public	FindSymbol_char32		as	'String_FindSymbol_char32'
public	FindSymbol_char8		as	'_ZN6String10FindSymbolEPKcc'
public	FindSymbol_char16		as	'_ZN6String10FindSymbolEPKss'
public	FindSymbol_char32		as	'_ZN6String10FindSymbolEPKii'

; Searching for symbols set
public	FindSymbols_char8		as	'String_FindSymbols_char8'
public	FindSymbols_char16		as	'String_FindSymbols_char16'
public	FindSymbols_char32		as	'String_FindSymbols_char32'
public	FindSymbols_char8		as	'_ZN6String11FindSymbolsEPKcS1_'
public	FindSymbols_char16		as	'_ZN6String11FindSymbolsEPKsS1_'
public	FindSymbols_char32		as	'_ZN6String11FindSymbolsEPKiS1_'

;******************************************************************************;
;       Substring search                                                       ;
;******************************************************************************;

; Searching string for pattern
public	FindStrStr_char8		as	'String_FindSubString_char8'
public	FindStrStr_char16		as	'String_FindSubString_char16'
public	FindStrStr_char32		as	'String_FindSubString_char32'
public	FindStrStr_char8		as	'_ZN6String13FindSubStringEPKcS1_'
public	FindStrStr_char16		as	'_ZN6String13FindSubStringEPKsS1_'
public	FindStrStr_char32		as	'_ZN6String13FindSubStringEPKiS1_'

; Searching characters sequence for pattern
public	FindSeqStr_char8		as	'String_FindSubStringN_char8'
public	FindSeqStr_char16		as	'String_FindSubStringN_char16'
public	FindSeqStr_char32		as	'String_FindSubStringN_char32'
public	FindSeqStr_char8		as	'_ZN6String13FindSubStringEPKcmS1_'
public	FindSeqStr_char16		as	'_ZN6String13FindSubStringEPKsmS1_'
public	FindSeqStr_char32		as	'_ZN6String13FindSubStringEPKimS1_'

;******************************************************************************;
;       String search                                                          ;
;******************************************************************************;

;==============================================================================;
;       Linear search                                                          ;
;==============================================================================;

; Forward direction search
public	FindFwd					as	"String_FindFwd_char8"
public	FindFwd					as	"String_FindFwd_char16"
public	FindFwd					as	"String_FindFwd_char32"
public	FindFwd					as	"_ZN6String7FindFwdEPPKcmS1_PFxS1_S1_E"
public	FindFwd					as	"_ZN6String7FindFwdEPPKsmS1_PFxS1_S1_E"
public	FindFwd					as	"_ZN6String7FindFwdEPPKimS1_PFxS1_S1_E"

; Backward direction search
public	FindBwd					as	"String_FindBwd_char8"
public	FindBwd					as	"String_FindBwd_char16"
public	FindBwd					as	"String_FindBwd_char32"
public	FindBwd					as	"_ZN6String7FindBwdEPPKcmS1_PFxS1_S1_E"
public	FindBwd					as	"_ZN6String7FindBwdEPPKsmS1_PFxS1_S1_E"
public	FindBwd					as	"_ZN6String7FindBwdEPPKimS1_PFxS1_S1_E"

;==============================================================================;
;       Binary search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Searching for equal string
public	FindEqualAsc			as	"String_FindEqualAsc_char8"
public	FindEqualAsc			as	"String_FindEqualAsc_char16"
public	FindEqualAsc			as	"String_FindEqualAsc_char32"
public	FindEqualAsc			as	"_ZN6String12FindEqualAscEPPKcmS1_PFxS1_S1_E"
public	FindEqualAsc			as	"_ZN6String12FindEqualAscEPPKsmS1_PFxS1_S1_E"
public	FindEqualAsc			as	"_ZN6String12FindEqualAscEPPKimS1_PFxS1_S1_E"

; Searching for greater string
public	FindGreatAsc			as	"String_FindGreatAsc_char8"
public	FindGreatAsc			as	"String_FindGreatAsc_char16"
public	FindGreatAsc			as	"String_FindGreatAsc_char32"
public	FindGreatAsc			as	"_ZN6String12FindGreatAscEPPKcmS1_PFxS1_S1_E"
public	FindGreatAsc			as	"_ZN6String12FindGreatAscEPPKsmS1_PFxS1_S1_E"
public	FindGreatAsc			as	"_ZN6String12FindGreatAscEPPKimS1_PFxS1_S1_E"

; Searching for greater or equal string
public	FindGreatOrEqualAsc		as	"String_FindGreatOrEqualAsc_char8"
public	FindGreatOrEqualAsc		as	"String_FindGreatOrEqualAsc_char16"
public	FindGreatOrEqualAsc		as	"String_FindGreatOrEqualAsc_char32"
public	FindGreatOrEqualAsc		as	"_ZN6String19FindGreatOrEqualAscEPPKcmS1_PFxS1_S1_E"
public	FindGreatOrEqualAsc		as	"_ZN6String19FindGreatOrEqualAscEPPKsmS1_PFxS1_S1_E"
public	FindGreatOrEqualAsc		as	"_ZN6String19FindGreatOrEqualAscEPPKimS1_PFxS1_S1_E"

; Searching for less string
public	FindLessAsc				as	"String_FindLessAsc_char8"
public	FindLessAsc				as	"String_FindLessAsc_char16"
public	FindLessAsc				as	"String_FindLessAsc_char32"
public	FindLessAsc				as	"_ZN6String11FindLessAscEPPKcmS1_PFxS1_S1_E"
public	FindLessAsc				as	"_ZN6String11FindLessAscEPPKsmS1_PFxS1_S1_E"
public	FindLessAsc				as	"_ZN6String11FindLessAscEPPKimS1_PFxS1_S1_E"

; Searching for less or equal string
public	FindLessOrEqualAsc		as	"String_FindLessOrEqualAsc_char8"
public	FindLessOrEqualAsc		as	"String_FindLessOrEqualAsc_char16"
public	FindLessOrEqualAsc		as	"String_FindLessOrEqualAsc_char32"
public	FindLessOrEqualAsc		as	"_ZN6String18FindLessOrEqualAscEPPKcmS1_PFxS1_S1_E"
public	FindLessOrEqualAsc		as	"_ZN6String18FindLessOrEqualAscEPPKsmS1_PFxS1_S1_E"
public	FindLessOrEqualAsc		as	"_ZN6String18FindLessOrEqualAscEPPKimS1_PFxS1_S1_E"

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Searching for equal string
public	FindEqualDsc			as	"String_FindEqualDsc_char8"
public	FindEqualDsc			as	"String_FindEqualDsc_char16"
public	FindEqualDsc			as	"String_FindEqualDsc_char32"
public	FindEqualDsc			as	"_ZN6String12FindEqualDscEPPKcmS1_PFxS1_S1_E"
public	FindEqualDsc			as	"_ZN6String12FindEqualDscEPPKsmS1_PFxS1_S1_E"
public	FindEqualDsc			as	"_ZN6String12FindEqualDscEPPKimS1_PFxS1_S1_E"

; Searching for less string
public	FindLessDsc				as	"String_FindLessDsc_char8"
public	FindLessDsc				as	"String_FindLessDsc_char16"
public	FindLessDsc				as	"String_FindLessDsc_char32"
public	FindLessDsc				as	"_ZN6String11FindLessDscEPPKcmS1_PFxS1_S1_E"
public	FindLessDsc				as	"_ZN6String11FindLessDscEPPKsmS1_PFxS1_S1_E"
public	FindLessDsc				as	"_ZN6String11FindLessDscEPPKimS1_PFxS1_S1_E"

; Searching for less or equal string
public	FindLessOrEqualDsc		as	"String_FindLessOrEqualDsc_char8"
public	FindLessOrEqualDsc		as	"String_FindLessOrEqualDsc_char16"
public	FindLessOrEqualDsc		as	"String_FindLessOrEqualDsc_char32"
public	FindLessOrEqualDsc		as	"_ZN6String18FindLessOrEqualDscEPPKcmS1_PFxS1_S1_E"
public	FindLessOrEqualDsc		as	"_ZN6String18FindLessOrEqualDscEPPKsmS1_PFxS1_S1_E"
public	FindLessOrEqualDsc		as	"_ZN6String18FindLessOrEqualDscEPPKimS1_PFxS1_S1_E"

; Searching for greater string
public	FindGreatDsc			as	"String_FindGreatDsc_char8"
public	FindGreatDsc			as	"String_FindGreatDsc_char16"
public	FindGreatDsc			as	"String_FindGreatDsc_char32"
public	FindGreatDsc			as	"_ZN6String12FindGreatDscEPPKcmS1_PFxS1_S1_E"
public	FindGreatDsc			as	"_ZN6String12FindGreatDscEPPKsmS1_PFxS1_S1_E"
public	FindGreatDsc			as	"_ZN6String12FindGreatDscEPPKimS1_PFxS1_S1_E"

; Searching for greater or equal string
public	FindGreatOrEqualDsc		as	"String_FindGreatOrEqualDsc_char8"
public	FindGreatOrEqualDsc		as	"String_FindGreatOrEqualDsc_char16"
public	FindGreatOrEqualDsc		as	"String_FindGreatOrEqualDsc_char32"
public	FindGreatOrEqualDsc		as	"_ZN6String19FindGreatOrEqualDscEPPKcmS1_PFxS1_S1_E"
public	FindGreatOrEqualDsc		as	"_ZN6String19FindGreatOrEqualDscEPPKsmS1_PFxS1_S1_E"
public	FindGreatOrEqualDsc		as	"_ZN6String19FindGreatOrEqualDscEPPKimS1_PFxS1_S1_E"

;******************************************************************************;
;       Counting                                                               ;
;******************************************************************************;

;==============================================================================;
;       Symbol counting                                                        ;
;==============================================================================;

; Single symbol counting
public	CountSymbol_char8		as	'String_CountSymbol_char8'
public	CountSymbol_char16		as	'String_CountSymbol_char16'
public	CountSymbol_char32		as	'String_CountSymbol_char32'
public	CountSymbol_char8		as	'_ZN6String11CountSymbolEPKcc'
public	CountSymbol_char16		as	'_ZN6String11CountSymbolEPKss'
public	CountSymbol_char32		as	'_ZN6String11CountSymbolEPKii'

; Symbols set counting
public	CountSymbols_char8		as	'String_CountSymbols_char8'
public	CountSymbols_char16		as	'String_CountSymbols_char16'
public	CountSymbols_char32		as	'String_CountSymbols_char32'
public	CountSymbols_char8		as	'_ZN6String12CountSymbolsEPKcS1_'
public	CountSymbols_char16		as	'_ZN6String12CountSymbolsEPKsS1_'
public	CountSymbols_char32		as	'_ZN6String12CountSymbolsEPKiS1_'

;==============================================================================;
;       String counting                                                        ;
;==============================================================================;
public	CountString				as	"String_CountString_char8"
public	CountString				as	"String_CountString_char16"
public	CountString				as	"String_CountString_char32"
public	CountString				as	"_ZN6String11CountStringEPPKcmS1_PFxS1_S1_E"
public	CountString				as	"_ZN6String11CountStringEPPKsmS1_PFxS1_S1_E"
public	CountString				as	"_ZN6String11CountStringEPPKimS1_PFxS1_S1_E"

;******************************************************************************;
;       Replacing                                                              ;
;******************************************************************************;

; Symbol replacing
public	Replace_char8			as	'String_ReplaceSymbol_char8'
public	Replace_char16			as	'String_ReplaceSymbol_char16'
public	Replace_char32			as	'String_ReplaceSymbol_char32'
public	Replace_char8			as	'_ZN6String13ReplaceSymbolEPccc'
public	Replace_char16			as	'_ZN6String13ReplaceSymbolEPsss'
public	Replace_char32			as	'_ZN6String13ReplaceSymbolEPiii'

; String replacing
public	Replace					as	'String_ReplaceString_char8'
public	Replace					as	'String_ReplaceString_char16'
public	Replace					as	'String_ReplaceString_char32'
public	Replace					as	'_ZN6String13ReplaceStringEPPKcmS1_S1_PFxS1_S1_E'
public	Replace					as	'_ZN6String13ReplaceStringEPPKsmS1_S1_PFxS1_S1_E'
public	Replace					as	'_ZN6String13ReplaceStringEPPKimS1_S1_PFxS1_S1_E'

;******************************************************************************;
;       Sorting algorithms                                                     ;
;******************************************************************************;

;==============================================================================;
;       Array sorting                                                          ;
;==============================================================================;

; Ascending sort order
public	SortAsc					as	"String_SortAsc_char8"
public	SortAsc					as	"String_SortAsc_char16"
public	SortAsc					as	"String_SortAsc_char32"
public	SortAsc					as	"_ZN6String7SortAscEPPKcmPFxS1_S1_E"
public	SortAsc					as	"_ZN6String7SortAscEPPKsmPFxS1_S1_E"
public	SortAsc					as	"_ZN6String7SortAscEPPKimPFxS1_S1_E"

; Descending sort order
public	SortDsc					as	"String_SortDsc_char8"
public	SortDsc					as	"String_SortDsc_char16"
public	SortDsc					as	"String_SortDsc_char32"
public	SortDsc					as	"_ZN6String7SortDscEPPKcmPFxS1_S1_E"
public	SortDsc					as	"_ZN6String7SortDscEPPKsmPFxS1_S1_E"
public	SortDsc					as	"_ZN6String7SortDscEPPKimPFxS1_S1_E"

;==============================================================================;
;       Key sorting                                                            ;
;==============================================================================;

; Ascending sort order
public	SortKeyAsc				as	"String_SortKeyAsc_char8"
public	SortKeyAsc				as	"String_SortKeyAsc_char16"
public	SortKeyAsc				as	"String_SortKeyAsc_char32"
public	SortKeyAsc				as	"_ZN6String10SortKeyAscEPPKcPPKvmPFxS1_S1_E"
public	SortKeyAsc				as	"_ZN6String10SortKeyAscEPPKsPPKvmPFxS1_S1_E"
public	SortKeyAsc				as	"_ZN6String10SortKeyAscEPPKiPPKvmPFxS1_S1_E"

; Descending sort order
public	SortKeyDsc				as	"String_SortKeyDsc_char8"
public	SortKeyDsc				as	"String_SortKeyDsc_char16"
public	SortKeyDsc				as	"String_SortKeyDsc_char32"
public	SortKeyDsc				as	"_ZN6String10SortKeyDscEPPKcPPKvmPFxS1_S1_E"
public	SortKeyDsc				as	"_ZN6String10SortKeyDscEPPKsPPKvmPFxS1_S1_E"
public	SortKeyDsc				as	"_ZN6String10SortKeyDscEPPKiPPKvmPFxS1_S1_E"

;******************************************************************************;
;       Reversing elements order                                               ;
;******************************************************************************;
public	Reverse					as	'String_Reverse_char8'
public	Reverse					as	'String_Reverse_char16'
public	Reverse					as	'String_Reverse_char32'
public	Reverse					as	"_ZN6String7ReverseEPPKcm"
public	Reverse					as	"_ZN6String7ReverseEPPKsm"
public	Reverse					as	"_ZN6String7ReverseEPPKim"

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
public	Unique					as	'String_Unique_char8'
public	Unique					as	'String_Unique_char16'
public	Unique					as	'String_Unique_char32'
public	Unique					as	'_ZN6String6UniqueEPPcPPKcmPFxS3_S3_E'
public	Unique					as	'_ZN6String6UniqueEPPsPPKsmPFxS3_S3_E'
public	Unique					as	'_ZN6String6UniqueEPPiPPKimPFxS3_S3_E'

;******************************************************************************;
;       Duplicate values                                                       ;
;******************************************************************************;
public	Duplicates				as	'String_Duplicates_char8'
public	Duplicates				as	'String_Duplicates_char16'
public	Duplicates				as	'String_Duplicates_char32'
public	Duplicates				as	'_ZN6String10DuplicatesEPPcPmPPKcmPFxS4_S4_E'
public	Duplicates				as	'_ZN6String10DuplicatesEPPsPmPPKsmPFxS4_S4_E'
public	Duplicates				as	'_ZN6String10DuplicatesEPPiPmPPKimPFxS4_S4_E'

;******************************************************************************;
;       Merging of sorted strings                                              ;
;******************************************************************************;

;==============================================================================;
;       Array merging                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	MergeAsc				as	'String_MergeAsc_char8'
public	MergeAsc				as	'String_MergeAsc_char16'
public	MergeAsc				as	'String_MergeAsc_char32'
public	MergeAsc				as	'_ZN6String8MergeAscEPPcPPKcmS4_mPFxS3_S3_E'
public	MergeAsc				as	'_ZN6String8MergeAscEPPsPPKsmS4_mPFxS3_S3_E'
public	MergeAsc				as	'_ZN6String8MergeAscEPPiPPKimS4_mPFxS3_S3_E'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	MergeDsc				as	'String_MergeDsc_char8'
public	MergeDsc				as	'String_MergeDsc_char16'
public	MergeDsc				as	'String_MergeDsc_char32'
public	MergeDsc				as	'_ZN6String8MergeDscEPPcPPKcmS4_mPFxS3_S3_E'
public	MergeDsc				as	'_ZN6String8MergeDscEPPsPPKsmS4_mPFxS3_S3_E'
public	MergeDsc				as	'_ZN6String8MergeDscEPPiPPKimS4_mPFxS3_S3_E'

;==============================================================================;
;       Key merging                                                            ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	MergeKeyAsc				as	'String_MergeKeyAsc_char8'
public	MergeKeyAsc				as	'String_MergeKeyAsc_char16'
public	MergeKeyAsc				as	'String_MergeKeyAsc_char32'
public	MergeKeyAsc				as	'_ZN6String11MergeKeyAscEPPcPPvPPKcPPKvmS6_S9_mPFxS5_S5_E'
public	MergeKeyAsc				as	'_ZN6String11MergeKeyAscEPPsPPvPPKsPPKvmS6_S9_mPFxS5_S5_E'
public	MergeKeyAsc				as	'_ZN6String11MergeKeyAscEPPiPPvPPKiPPKvmS6_S9_mPFxS5_S5_E'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	MergeKeyDsc				as	'String_MergeKeyDsc_char8'
public	MergeKeyDsc				as	'String_MergeKeyDsc_char16'
public	MergeKeyDsc				as	'String_MergeKeyDsc_char32'
public	MergeKeyDsc				as	'_ZN6String11MergeKeyDscEPPcPPvPPKcPPKvmS6_S9_mPFxS5_S5_E'
public	MergeKeyDsc				as	'_ZN6String11MergeKeyDscEPPsPPvPPKsPPKvmS6_S9_mPFxS5_S5_E'
public	MergeKeyDsc				as	'_ZN6String11MergeKeyDscEPPiPPvPPKiPPKvmS6_S9_mPFxS5_S5_E'

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for sort order                                                   ;
;==============================================================================;

; Check for ascending sort order
public	CheckSortAsc			as	"String_CheckSortAsc_char8"
public	CheckSortAsc			as	"String_CheckSortAsc_char16"
public	CheckSortAsc			as	"String_CheckSortAsc_char32"
public	CheckSortAsc			as	"_ZN6String12CheckSortAscEPPKcmPFxS1_S1_E"
public	CheckSortAsc			as	"_ZN6String12CheckSortAscEPPKsmPFxS1_S1_E"
public	CheckSortAsc			as	"_ZN6String12CheckSortAscEPPKimPFxS1_S1_E"

; Check for descending sort order
public	CheckSortDsc			as	"String_CheckSortDsc_char8"
public	CheckSortDsc			as	"String_CheckSortDsc_char16"
public	CheckSortDsc			as	"String_CheckSortDsc_char32"
public	CheckSortDsc			as	"_ZN6String12CheckSortDscEPPKcmPFxS1_S1_E"
public	CheckSortDsc			as	"_ZN6String12CheckSortDscEPPKsmPFxS1_S1_E"
public	CheckSortDsc			as	"_ZN6String12CheckSortDscEPPKimPFxS1_S1_E"

;==============================================================================;
;       Check for duplicate values                                             ;
;==============================================================================;
public	CheckDup				as	"String_CheckDup_char8"
public	CheckDup				as	"String_CheckDup_char16"
public	CheckDup				as	"String_CheckDup_char32"
public	CheckDup				as	"_ZN6String8CheckDupEPPKcmPFxS1_S1_E"
public	CheckDup				as	"_ZN6String8CheckDupEPPKsmPFxS1_S1_E"
public	CheckDup				as	"_ZN6String8CheckDupEPPKimPFxS1_S1_E"

;******************************************************************************;
;       String hashing                                                         ;
;******************************************************************************;
public	Hash_char8				as	'String_Hash_char8'
public	Hash_char16				as	'String_Hash_char16'
public	Hash_char32				as	'String_Hash_char32'
public	Hash_char8				as	'_ZN6String4HashEPKc'
public	Hash_char16				as	'_ZN6String4HashEPKs'
public	Hash_char32				as	'_ZN6String4HashEPKi'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
NO_SPACE	= -1							; No space in target string

;******************************************************************************;
;       Set End Of Line (EOL) macro                                            ;
;******************************************************************************;
macro	seteol	ptr, x
{
if x eq b
		mov		byte [ptr], 0				; ptr[0] = 0
else if x eq w
		mov		word [ptr], 0				; ptr[0] = 0
else if x eq d
		mov		dword [ptr], 0				; ptr[0] = 0
end if
}

;******************************************************************************;
;       String length                                                          ;
;******************************************************************************;
macro	LEN		char, x
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
;---[Internal variables]-------------------
index	equ		rax							; index of eol symbol
sindex	equ		rcx							; string offset from vector boundary
sindexl	equ		cl							; low part of "sindex"
cmask	equ		r8							; mask to clear unrequired results
emask	equ		r9							; result of eol search
echeck	equ		xmm0						; eol check mask
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		xor		index, index				; index = 0
if scale <> 0
		test	string, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
;---[Normal execution branch]--------------
		mov		sindex, string
		and		sindex, VMASK				; get string offset from vector boundary
		sub		string, sindex				; align pointer to vector boundary
;---[Unaligned search for eol]-------------
		sub		index, sindex				; index -= sindex
		mov		cmask, VBITS
		shl		cmask, sindexl				; adjust cmask for unaligned search
		pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string]			; check string[0] for end of line
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, cmask				; if eof is found
		jnz		.brk						;     then return string length
		add		index, VSIZE				; index += VSIZE
;---[Vector loop]--------------------------
.vloop:	pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string + 1 * VSIZE]; check string[1] for end of line
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string + 2 * VSIZE]; check string[2] for end of line
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string + 3 * VSIZE]; check string[3] for end of line
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string + 4 * VSIZE]; check string[4] for end of line
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		add		string, 4 * VSIZE			; string += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		emask, emask				; find index of first occurence of eol
		add		index, emask				; index += emask
		shftr	index, scale				; return index
		ret
if scale <> 0
;---[Scalar loop]--------------------------
.sloop:	mov		char, [string]				; char = string[0]
		test	char, char					; if (char == eol)
		jz		.exit						;     then go to exit
		add		index, 1					; index++
		add		string, bytes				; string++
		jmp		.sloop						; do while (true)
;---[End of scalar loop]-------------------
.exit:	ret
end if
}
Len_char8:	LEN	cl, b
Len_char16:	LEN	cx, w
Len_char32:	LEN	ecx, d

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;
target	equ		rdi							; target string
source	equ		rdx							; source string
temp8	equ		cl							; temporary register which holds 8-bit value
temp16	equ		cx							; temporary register which holds 16-bit value
temp32	equ		ecx							; temporary register which holds 32-bit value
temp64	equ		rcx							; temporary register which holds 64-bit value
temp128	equ		xmm0						; temporary register which holds 128-bit value
;------------------------------------------
Copy0:	ret
;------------------------------------------
Copy1:	mov		temp8, [source]
		mov		[target], temp8				; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy2:	mov		temp16, [source]
		mov		[target], temp16			; Copy 2 bytes from source string to target string
		ret
;------------------------------------------
Copy3:	mov		temp16, [source]
		mov		[target], temp16			; Copy 2 bytes from source string to target string
		mov		temp8, [source + 2]
		mov		[target + 2], temp8			; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy4:	mov		temp32, [source]
		mov		[target], temp32			; Copy 4 bytes from source string to target string
		ret
;------------------------------------------
Copy5:	mov		temp32, [source]
		mov		[target], temp32			; Copy 4 bytes from source string to target string
		mov		temp8, [source + 4]
		mov		[target + 4], temp8			; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy6:	mov		temp32, [source]
		mov		[target], temp32			; Copy 4 bytes from source string to target string
		mov		temp16, [source + 4]
		mov		[target + 4], temp16		; Copy 2 bytes from source string to target string
		ret
;------------------------------------------
Copy7:	mov		temp32, [source]
		mov		[target], temp32			; Copy 4 bytes from source string to target string
		mov		temp16, [source + 4]
		mov		[target + 4], temp16		; Copy 2 bytes from source string to target string
		mov		temp8, [source + 6]
		mov		[target + 6], temp8			; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy8:	mov		temp64, [source]
		mov		[target], temp64			; Copy 8 bytes from source string to target string
		ret
;------------------------------------------
Copy9:	mov		temp64, [source]
		mov		[target], temp64			; Copy 8 bytes from source string to target string
		mov		temp8, [source + 8]
		mov		[target + 8], temp8			; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy10:	mov		temp64, [source]
		mov		[target], temp64			; Copy 8 bytes from source string to target string
		mov		temp16, [source + 8]
		mov		[target + 8], temp16		; Copy 2 bytes from source string to target string
		ret
;------------------------------------------
Copy11:	mov		temp64, [source]
		mov		[target], temp64			; Copy 8 bytes from source string to target string
		mov		temp16, [source + 8]
		mov		[target + 8], temp16		; Copy 2 bytes from source string to target string
		mov		temp8, [source + 10]
		mov		[target + 10], temp8		; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy12:	mov		temp64, [source]
		mov		[target], temp64			; Copy 8 bytes from source string to target string
		mov		temp32, [source + 8]
		mov		[target + 8], temp32		; Copy 4 bytes from source string to target string
		ret
;------------------------------------------
Copy13:	mov		temp64, [source]
		mov		[target], temp64			; Copy 8 bytes from source string to target string
		mov		temp32, [source + 8]
		mov		[target + 8], temp32		; Copy 4 bytes from source string to target string
		mov		temp8, [source + 12]
		mov		[target + 12], temp8		; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy14:	mov		temp64, [source]
		mov		[target], temp64			; Copy 8 bytes from source string to target string
		mov		temp32, [source + 8]
		mov		[target + 8], temp32		; Copy 4 bytes from source string to target string
		mov		temp16, [source + 12]
		mov		[target + 12], temp16		; Copy 2 bytes from source string to target string
		ret
;------------------------------------------
Copy15:	mov		temp64, [source]
		mov		[target], temp64			; Copy 8 bytes from source string to target string
		mov		temp32, [source + 8]
		mov		[target + 8], temp32		; Copy 4 bytes from source string to target string
		mov		temp16, [source + 12]
		mov		[target + 12], temp16		; Copy 2 bytes from source string to target string
		mov		temp8, [source + 14]
		mov		[target + 14], temp8		; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy16:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		ret
;------------------------------------------
Copy17:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp8, [source + 16]
		mov		[target + 16], temp8		; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy18:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp16, [source + 16]
		mov		[target + 16], temp16		; Copy 2 bytes from source string to target string
		ret
;------------------------------------------
Copy19:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp16, [source + 16]
		mov		[target + 16], temp16		; Copy 2 bytes from source string to target string
		mov		temp8, [source + 18]
		mov		[target + 18], temp8		; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy20:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp32, [source + 16]
		mov		[target + 16], temp32		; Copy 4 bytes from source string to target string
		ret
;------------------------------------------
Copy21:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp32, [source + 16]
		mov		[target + 16], temp32		; Copy 4 bytes from source string to target string
		mov		temp8, [source + 20]
		mov		[target + 20], temp8		; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy22:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp32, [source + 16]
		mov		[target + 16], temp32		; Copy 4 bytes from source string to target string
		mov		temp16, [source + 20]
		mov		[target + 20], temp16		; Copy 2 bytes from source string to target string
		ret
;------------------------------------------
Copy23:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp32, [source + 16]
		mov		[target + 16], temp32		; Copy 4 bytes from source string to target string
		mov		temp16, [source + 20]
		mov		[target + 20], temp16		; Copy 2 bytes from source string to target string
		mov		temp8, [source + 22]
		mov		[target + 22], temp8		; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy24:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp64, [source + 16]
		mov		[target + 16], temp64		; Copy 8 bytes from source string to target string
		ret
;------------------------------------------
Copy25:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp64, [source + 16]
		mov		[target + 16], temp64		; Copy 8 bytes from source string to target string
		mov		temp8, [source + 24]
		mov		[target + 24], temp8		; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy26:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp64, [source + 16]
		mov		[target + 16], temp64		; Copy 8 bytes from source string to target string
		mov		temp16, [source + 24]
		mov		[target + 24], temp16		; Copy 2 bytes from source string to target string
		ret
;------------------------------------------
Copy27:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp64, [source + 16]
		mov		[target + 16], temp64		; Copy 8 bytes from source string to target string
		mov		temp16, [source + 24]
		mov		[target + 24], temp16		; Copy 2 bytes from source string to target string
		mov		temp8, [source + 26]
		mov		[target + 26], temp8		; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy28:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp64, [source + 16]
		mov		[target + 16], temp64		; Copy 8 bytes from source string to target string
		mov		temp32, [source + 24]
		mov		[target + 24], temp32		; Copy 4 bytes from source string to target string
		ret
;------------------------------------------
Copy29:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp64, [source + 16]
		mov		[target + 16], temp64		; Copy 8 bytes from source string to target string
		mov		temp32, [source + 24]
		mov		[target + 24], temp32		; Copy 4 bytes from source string to target string
		mov		temp8, [source + 28]
		mov		[target + 28], temp8		; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy30:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp64, [source + 16]
		mov		[target + 16], temp64		; Copy 8 bytes from source string to target string
		mov		temp32, [source + 24]
		mov		[target + 24], temp32		; Copy 4 bytes from source string to target string
		mov		temp16, [source + 28]
		mov		[target + 28], temp16		; Copy 2 bytes from source string to target string
		ret
;------------------------------------------
Copy31:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		mov		temp64, [source + 16]
		mov		[target + 16], temp64		; Copy 8 bytes from source string to target string
		mov		temp32, [source + 24]
		mov		[target + 24], temp32		; Copy 4 bytes from source string to target string
		mov		temp16, [source + 28]
		mov		[target + 28], temp16		; Copy 2 bytes from source string to target string
		mov		temp8, [source + 30]
		mov		[target + 30], temp8		; Copy 1 byte from source string to target string
		ret
;------------------------------------------
Copy32:	movdqu	temp128, [source]
		movdqu	[target], temp128			; Copy 16 bytes from source string to target string
		movdqu	temp128, [source + 16]
		movdqu	[target + 16], temp128		; Copy 16 bytes from source string to target string
		ret

;==============================================================================;
;       Copying of string to string                                            ;
;==============================================================================;
macro	COPY1	char, x
{
;---[Parameters]---------------------------
target	equ		rdi							; target string
maxlen	equ		rsi							; maximum length of target string
source	equ		rdx							; source string
;---[Internal variables]-------------------
index	equ		rax							; index of eol symbol
sindex	equ		rcx							; string offset from vector boundary
sindexl	equ		cl							; low part of "sindex"
cmask	equ		r8							; mask to clear unrequired results
emask	equ		r9							; result of eol search
ptr1	equ		r10							; temporary pointer to target string
ptr2	equ		r11							; temporary pointer to source string
func	equ		cmask						; pointer to copy function
echeck0	equ		xmm0						; eol check mask #1
echeck1	equ		xmm1						; eol check mask #2
sdata0	equ		xmm2						; string data #1
sdata1	equ		xmm3						; string data #2
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		mov		ptr2, source				; ptr2 = source
		mov		ptr1, target				; ptr1 = target
		xor		index, index				; index = 0
if scale <> 0
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
;---[Normal execution branch]--------------
		mov		sindex, source
		and		sindex, VMASK				; get string offset from vector boundary
		sub		ptr2, sindex				; ptr2 = source - sindex
		sub		ptr1, sindex				; ptr1 = target - sindex
		shftl	maxlen, scale				; convert maxlen to bytes
;---[Unaligned copy]-----------------------
		add		maxlen, sindex				; maxlen += sindex
		sub		index, sindex				; index -= sindex
		mov		cmask, VBITS
		shl		cmask, sindexl				; adjust cmask for unaligned search
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, [ptr2]				; check ptr2[0] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, cmask				; if eof is found
		jnz		.brk0						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen < VSIZE)
		jb		.nospc						;     then go to no space branch
		movdqa	sdata1, [ptr2 + 1 * VSIZE]	; sdata1 = ptr2[1]
		pxor	echeck1, echeck1			; echeck1 = 0
	pcmpeq#x	echeck1, sdata1				; check ptr2[1] for end of line
	pmovmskb	emask, echeck1				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk0						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen < VSIZE)
		jb		.nospc						;     then go to no space branch
		movdqu	sdata0, [source]
		movdqu	[target], sdata0			; target[0] = source[0]
;---[Vector loop]--------------------------
.vloop:	movdqu	[ptr1 + 1 * VSIZE], sdata1	; ptr1[1] = ptr2[1]
		movdqa	sdata0, [ptr2 + 2 * VSIZE]	; sdata0 = ptr2[2]
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, sdata0				; check ptr2[2] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen < VSIZE)
		jb		.nospc						;     then go to no space branch
		movdqu	[ptr1 + 2 * VSIZE], sdata0	; ptr1[2] = ptr2[2]
		movdqa	sdata1, [ptr2 + 3 * VSIZE]	; sdata1 = ptr2[3]
		pxor	echeck1, echeck1			; echeck1 = 0
	pcmpeq#x	echeck1, sdata1				; check ptr2[3] for end of line
	pmovmskb	emask, echeck1				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen < VSIZE)
		jb		.nospc						;     then go to no space branch
		movdqu	[ptr1 + 3 * VSIZE], sdata1	; ptr1[3] = ptr2[3]
		movdqa	sdata0, [ptr2 + 4 * VSIZE]	; sdata0 = ptr2[4]
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, sdata0				; check ptr2[4] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen < VSIZE)
		jb		.nospc						;     then go to no space branch
		movdqu	[ptr1 + 4 * VSIZE], sdata0	; ptr1[4] = ptr2[4]
		movdqa	sdata1, [ptr2 + 5 * VSIZE]	; sdata1 = ptr2[5]
		pxor	echeck1, echeck1			; echeck1 = 0
	pcmpeq#x	echeck1, sdata1				; check ptr2[5] for end of line
	pmovmskb	emask, echeck1				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen < VSIZE)
		jb		.nospc						;     then go to no space branch
		add		ptr2, 4 * VSIZE				; ptr2 += 4 * VSIZE
		add		ptr1, 4 * VSIZE				; ptr1 += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk0:	bsf		emask, emask				; find index of first occurence of eol
		cmp		maxlen, emask				; if (maxlen < emask)
		jb		.nospc						;     then go to no space branch
		add		index, emask				; index += emask
		lea		func, [copytable + index * 8 + 8]
		shftr	index, scale				; return index
		jmp		qword [func]				; call associated copy function
;---[Loop break branch]--------------------
.brk1:	bsf		emask, emask				; find index of first occurence of eol
		cmp		maxlen, emask				; if (maxlen < emask)
		jb		.nospc						;     then go to no space branch
		add		index, emask				; index += emask
		movdqu	sdata0, [source + index - VSIZE + 1]
		movdqu	[target + index - VSIZE + 1], sdata0
		shftr	index, scale				; return index
		ret
if scale <> 0
;---[Scalar loop]--------------------------
.sloop:	mov		char, [ptr2]
		mov		[ptr1], char				; ptr1[0] = ptr2[0]
		test	char, char					; if (ptr2[0] == 0)
		jz		.exit						;     then go to exit
		add		ptr2, bytes					; ptr2++
		add		ptr1, bytes					; ptr1++
		add		index, 1					; index++
		sub		maxlen, 1					; maxlen--
		jae		.sloop						; do while (maxlen >= 0)
;---[End of scalar loop]-------------------
.exit:	ret
end if
;---[No space exit branch]-----------------
.nospc:	seteol	target, x					; clear target string
		mov		index, NO_SPACE				; return NO_SPACE
		ret
}
CopyStr_char8:	COPY1	cl, b
CopyStr_char16:	COPY1	cx, w
CopyStr_char32:	COPY1	ecx, d

;==============================================================================;
;       Copying of characters sequence to string                               ;
;==============================================================================;
macro	COPY2	char, x
{
;---[Parameters]---------------------------
target	equ		rdi							; target string
maxlen	equ		rsi							; maximum length of target string
source	equ		rdx							; source string
size	equ		rcx							; characters to copy
;---[Internal variables]-------------------
index	equ		rax							; index of eol symbol
sindex	equ		rcx							; string offset from vector boundary
sindexl	equ		cl							; low part of "sindex"
cmask	equ		r8							; mask to clear unrequired results
emask	equ		r9							; result of eol search
ptr1	equ		r10							; temporary pointer to target string
ptr2	equ		r11							; temporary pointer to source string
func	equ		cmask						; pointer to copy function
echeck0	equ		xmm0						; eol check mask #1
echeck1	equ		xmm1						; eol check mask #2
sdata0	equ		xmm2						; string data #1
sdata1	equ		xmm3						; string data #2
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		cmp		maxlen, size				; if (maxlen < size)
		jb		.nospc						;     then go to no space branch
		mov		maxlen, size				;     else maxlen = size
		mov		ptr2, source				; ptr2 = source
		mov		ptr1, target				; ptr1 = target
		xor		index, index				; index = 0
if scale <> 0
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
;---[Normal execution branch]--------------
		mov		sindex, source
		and		sindex, VMASK				; get string offset from vector boundary
		sub		ptr2, sindex				; ptr2 = source - sindex
		sub		ptr1, sindex				; ptr1 = target - sindex
		shftl	maxlen, scale				; convert maxlen to bytes
;---[Unaligned copy]-----------------------
		add		maxlen, sindex				; maxlen += sindex
		sub		index, sindex				; index -= sindex
		mov		cmask, VBITS
		shl		cmask, sindexl				; adjust cmask for unaligned search
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, [ptr2]				; check ptr2[0] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, cmask				; if eof is found
		jnz		.brk0						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen <= VSIZE)
		jbe		.tail0						;     then copy maxlen elements from source
		movdqa	sdata1, [ptr2 + 1 * VSIZE]	; sdata1 = ptr2[1]
		pxor	echeck1, echeck1			; echeck1 = 0
	pcmpeq#x	echeck1, sdata1				; check ptr2[1] for end of line
	pmovmskb	emask, echeck1				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk0						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen <= VSIZE)
		jbe		.tail0						;     then copy maxlen elements from source
		movdqu	sdata0, [source]
		movdqu	[target], sdata0			; target[0] = source[0]
;---[Vector loop]--------------------------
.vloop:	movdqu	[ptr1 + 1 * VSIZE], sdata1	; ptr1[1] = ptr2[1]
		movdqa	sdata0, [ptr2 + 2 * VSIZE]	; sdata0 = ptr2[2]
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, sdata0				; check ptr2[2] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen <= VSIZE)
		jbe		.tail1						;     then copy maxlen elements from source
		movdqu	[ptr1 + 2 * VSIZE], sdata0	; ptr1[2] = ptr2[2]
		movdqa	sdata1, [ptr2 + 3 * VSIZE]	; sdata1 = ptr2[3]
		pxor	echeck1, echeck1			; echeck1 = 0
	pcmpeq#x	echeck1, sdata1				; check ptr2[3] for end of line
	pmovmskb	emask, echeck1				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen <= VSIZE)
		jbe		.tail1						;     then copy maxlen elements from source
		movdqu	[ptr1 + 3 * VSIZE], sdata1	; ptr1[3] = ptr2[3]
		movdqa	sdata0, [ptr2 + 4 * VSIZE]	; sdata0 = ptr2[4]
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, sdata0				; check ptr2[4] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen <= VSIZE)
		jbe		.tail1						;     then copy maxlen elements from source
		movdqu	[ptr1 + 4 * VSIZE], sdata0	; ptr1[4] = ptr2[4]
		movdqa	sdata1, [ptr2 + 5 * VSIZE]	; sdata1 = ptr2[5]
		pxor	echeck1, echeck1			; echeck1 = 0
	pcmpeq#x	echeck1, sdata1				; check ptr2[5] for end of line
	pmovmskb	emask, echeck1				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen <= VSIZE)
		jbe		.tail1						;     then copy maxlen elements from source
		add		ptr2, 4 * VSIZE				; ptr2 += 4 * VSIZE
		add		ptr1, 4 * VSIZE				; ptr1 += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk0:	bsf		emask, emask				; find index of first occurence of eol
		cmp		maxlen, emask				; if (maxlen > emask)
		cmova	maxlen, emask				;     maxlen = emask
.tail0:	add		index, maxlen				; index += maxlen
		seteol	(target + index), x			; put eol symbol into target string
		lea		func, [copytable + index * 8]
		shftr	index, scale				; return index
		jmp		qword [func]				; call associated copy function
;---[Loop break branch]--------------------
.brk1:	bsf		emask, emask				; find index of first occurence of eol
		cmp		maxlen, emask				; if (maxlen > emask)
		cmova	maxlen, emask				;     maxlen = emask
.tail1:	add		index, maxlen				; index += maxlen
		seteol	(target + index), x			; put eol symbol into target string
		movdqu	sdata0, [source + index - VSIZE]
		movdqu	[target + index - VSIZE], sdata0
		shftr	index, scale				; return index
		ret
if scale <> 0
;---[Scalar loop]--------------------------
.sloop:	mov		char, [ptr2]
		mov		[ptr1], char				; ptr1[0] = ptr2[0]
		test	char, char					; if (ptr2[0] == 0)
		jz		.exit						;     then go to exit
		add		ptr2, bytes					; ptr2++
		add		ptr1, bytes					; ptr1++
		add		index, 1					; index++
		sub		maxlen, 1					; maxlen--
		jae		.sloop						; do while (maxlen >= 0)
;---[End of scalar loop]-------------------
		seteol	(ptr1 - bytes), x			; put eol symbol into target string
		sub		index, 1					; return index - 1
.exit:	ret
end if
;---[No space exit branch]-----------------
.nospc:	seteol	target, x					; clear target string
		mov		index, NO_SPACE				; return NO_SPACE
		ret
}
CopySeq_char8:	COPY2	cl, b
CopySeq_char16:	COPY2	cx, w
CopySeq_char32:	COPY2	ecx, d

;******************************************************************************;
;       Concatenating                                                          ;
;******************************************************************************;

;==============================================================================;
;       Concatenating of string to string                                      ;
;==============================================================================;
macro	CAT1	x
{
;---[Parameters]---------------------------
target	equ		rdi							; target string
maxlen	equ		rsi							; maximum length of target string
source	equ		rdx							; source string
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_trgt	equ		stack + 0 * 8				; stack position of "target" variable
s_mlen	equ		stack + 1 * 8				; stack position of "maxlen" variable
s_src	equ		stack + 2 * 8				; stack position of "source" variable
if x eq b
length	= Len_char8							; string length function
copy	= CopyStr_char8						; string copy function
scale	= 0									; scale value
else if x eq w
length	= Len_char16						; string length function
copy	= CopyStr_char16					; string copy function
scale	= 1									; scale value
else if x eq d
length	= Len_char32						; string length function
copy	= CopyStr_char32					; string copy function
scale	= 2									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_trgt], target			; save "target" variable into the stack
		mov		[s_mlen], maxlen			; save "maxlen" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		call	length						; len = Len (target)
		mov		maxlen, [s_mlen]			; get "maxlen" variable from the stack
		sub		maxlen, result				; if (maxlen - len < 0)
		jb		.nospc						;     then go to no space branch
		mov		target, [s_trgt]
		lea		target, [target + result * bytes]
		mov		source, [s_src]
		add		stack, space				; restoring back the stack pointer
		jmp		copy						; return Copy (target + len, maxlen - len, source)
;---[No space branch]----------------------
.nospc:	add		stack, space				; restoring back the stack pointer
		mov		result, NO_SPACE			; return NO_SPACE
		ret
}
CatStr_char8:	CAT1	b
CatStr_char16:	CAT1	w
CatStr_char32:	CAT1	d

;==============================================================================;
;       Concatenating of characters sequence to string                         ;
;==============================================================================;
macro	CAT2	x
{
;---[Parameters]---------------------------
target	equ		rdi							; target string
maxlen	equ		rsi							; maximum length of target string
source	equ		rdx							; source string
size	equ		rcx							; characters to copy
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_trgt	equ		stack + 0 * 8				; stack position of "target" variable
s_mlen	equ		stack + 1 * 8				; stack position of "maxlen" variable
s_src	equ		stack + 2 * 8				; stack position of "source" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
if x eq b
length	= Len_char8							; string length function
copy	= CopySeq_char8						; string copy function
scale	= 0									; scale value
else if x eq w
length	= Len_char16						; string length function
copy	= CopySeq_char16					; string copy function
scale	= 1									; scale value
else if x eq d
length	= Len_char32						; string length function
copy	= CopySeq_char32					; string copy function
scale	= 2									; scale value
end if
space	= 5 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_trgt], target			; save "target" variable into the stack
		mov		[s_mlen], maxlen			; save "maxlen" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		call	length						; len = Len (target)
		mov		maxlen, [s_mlen]			; get "maxlen" variable from the stack
		sub		maxlen, result				; if (maxlen - len < 0)
		jb		.nospc						;     then go to no space branch
		mov		target, [s_trgt]
		lea		target, [target + result * bytes]
		mov		source, [s_src]
		mov		size, [s_size]
		add		stack, space				; restoring back the stack pointer
		jmp		copy						; return Copy (target + len, maxlen - len, source, size)
;---[No space branch]----------------------
.nospc:	add		stack, space				; restoring back the stack pointer
		mov		result, NO_SPACE			; return NO_SPACE
		ret
}
CatSeq_char8:	CAT2	b
CatSeq_char16:	CAT2	w
CatSeq_char32:	CAT2	d

;******************************************************************************;
;       String comparison                                                      ;
;******************************************************************************;

;==============================================================================;
;       Comparison of strings                                                  ;
;==============================================================================;
macro	COMPARE1	char, x
{
;---[Parameters]---------------------------
string1	equ		rdi							; pointer to first string
string2	equ		rsi							; pointer to second string
;---[Internal variables]-------------------
index	equ		rax							; index of first different symbol
size	equ		rdx							; string size (count of elements)
res1	equ		al							; result of comparison #1
res2	equ		dl							; result of comparison #2
fmask	equ		r9							; result of string compare
ptr1	equ		r10							; temporary pointer to string1
ptr2	equ		r11							; temporary pointer to string2
size1	equ		ptr1						; size of first string
size2	equ		ptr2						; size of second string
s1temp	equ		xmm0						; string1 data register
s2temp	equ		xmm1						; string2 data register
eol		equ		xmm2						; end of line
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
if scale <> 0
		test	string1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	string2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
.start:	mov		size1, PMASK
		mov		size2, PMASK
		and		size1, string1
		and		size2, string2
		neg		size1
		neg		size2
		add		size1, PSIZE				; size1 = PSIZE - (string1 & PMASK)
		add		size2, PSIZE				; size2 = PSIZE - (string2 & PMASK)
		cmp		size1, size2				; if (size1 <= size2)
		cmovbe	size, size1					;     then size = size1
		cmova	size, size2					;     then size = size2
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.tloop						;     then check string tails
;---[Normal execution branch]--------------
		mov		ptr1, string1				; ptr1 = string1
		mov		ptr2, string2				; ptr2 = string2
		mov		index, string2
		and		index, VMASK				; get string offset from vector boundary
		sub		ptr1, index					; ptr1 = string1 - index
		sub		ptr2, index					; ptr2 = string2 - index
		pxor	eol, eol					; eol = 0
;---[Unaligned check]----------------------
		add		size, index					; size += index
		neg		index						; index = -index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [string1]			; s1temp = string1[0]
		movdqu	s2temp, [string2]			; s2temp = string2[0]
	pcmpeq#x	s1temp, s2temp				; check if string1[0] == string2[0]
	pcmpeq#x	s2temp, eol					; check string2[0] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if string1[0] != string2[0] or eol is found
		jnz		.brk0						;     then break the loop
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 1 * VSIZE]	; s1temp = ptr1[1]
		movdqa	s2temp, [ptr2 + 1 * VSIZE]	; s2temp = ptr2[1]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[1] == ptr2[1]
	pcmpeq#x	s2temp, eol					; check ptr2[1] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if ptr1[1] != ptr2[1] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 2 * VSIZE]	; s1temp = ptr1[2]
		movdqa	s2temp, [ptr2 + 2 * VSIZE]	; s2temp = ptr2[2]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[2] == ptr2[2]
	pcmpeq#x	s2temp, eol					; check ptr2[2] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if ptr1[2] != ptr2[2] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 3 * VSIZE]	; s1temp = ptr1[3]
		movdqa	s2temp, [ptr2 + 3 * VSIZE]	; s2temp = ptr2[3]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[3] == ptr2[3]
	pcmpeq#x	s2temp, eol					; check ptr2[3] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if ptr1[3] != ptr2[3] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 4 * VSIZE]	; s1temp = ptr1[4]
		movdqa	s2temp, [ptr2 + 4 * VSIZE]	; s2temp = ptr2[4]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[4] == ptr2[4]
	pcmpeq#x	s2temp, eol					; check ptr2[4] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if ptr1[4] != ptr2[4] or eol is found
		jnz		.brk1						;     then break the loop
		add		ptr1, 4 * VSIZE				; ptr1 += 4 * VSIZE
		add		ptr2, 4 * VSIZE				; ptr2 += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk0:	bsf		fmask, fmask				; find index of first different symbol
		mov		char, [string1 + fmask]
		cmp		char, [string2 + fmask]
		seta	res1						; if (string1[fmask] > string2[fmask]), then res1 = 1
		setb	res2						; if (string1[fmask] < string2[fmask]), then res2 = 1
		sub		res1, res2					; return res1 - res2
		movsx	index, res1
		ret
;---[Compare tails branch]-----------------
.tail:	add		index, size
		lea		ptr1, [string1 + index + VSIZE]
		lea		ptr2, [string2 + index + VSIZE]
		movdqu	s1temp, [string1 + index]	; s1temp = string1[index]
		movdqu	s2temp, [string2 + index]	; s2temp = string2[index]
	pcmpeq#x	s1temp, s2temp				; check if string1[index] == string2[index]
	pcmpeq#x	s2temp, eol					; check string2[index] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if string1[index] == string2[index] and eol is not found
		cmovz	string1, ptr1				;     string1 = ptr1
		cmovz	string2, ptr2				;     string2 = ptr2
		jz		.start						;     then compare another memory block
.brk1:	bsf		fmask, fmask				; find index of first different symbol
		add		index, fmask				; index += fmask
		mov		char, [string1 + index]
		cmp		char, [string2 + index]
@@:		seta	res1						; if (string1[index] > string2[index]), then res1 = 1
		setb	res2						; if (string1[index] < string2[index]), then res2 = 1
		sub		res1, res2					; return res1 - res2
		movsx	index, res1
		ret
;---[Tail loop]----------------------------
.tloop:	mov		char, [string1]
		cmp		char, [string2]				; if (string1[0] != string2[0])
		jne		@b							;     then go to exit
		test	char, char					; if (char == 0)
		jz		@b							;     then go to exit
		add		string1, bytes				; string1++
		add		string2, bytes				; string2++
		sub		size, bytes					; size--
		jnz		.tloop						; do while (size != 0)
;---[End of tail loop]---------------------
		jmp		.start						; compare another memory block
if scale <> 0
;---[Scalar loop]--------------------------
.sloop:	mov		char, [string1]
		cmp		char, [string2]				; if (string1[0] != string2[0])
		jne		.exit						;     then go to exit
		add		string1, bytes				; string1++
		add		string2, bytes				; string2++
		test	char, char
		jnz		.sloop						; do while (char != 0)
;---[End of scalar loop]-------------------
.exit:	seta	res1						; if (string1[0] > string2[0]), then res1 = 1
		setb	res2						; if (string1[0] < string2[0]), then res2 = 1
		sub		res1, res2					; return res1 - res2
		movsx	index, res1
		ret
end if
}
CompareStr_char8:	COMPARE1	cl, b
CompareStr_char16:	COMPARE1	cx, w
CompareStr_char32:	COMPARE1	ecx, d

;==============================================================================;
;       Comparison of characters sequences                                     ;
;==============================================================================;
macro	COMPARE2	char, x
{
;---[Parameters]---------------------------
string1	equ		rdi							; pointer to first string
string2	equ		rsi							; pointer to second string
size	equ		rdx							; string size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; index of first different symbol
res1	equ		al							; result of comparison #1
res2	equ		dl							; result of comparison #2
fmask	equ		r9							; result of string compare
ptr1	equ		r10							; temporary pointer to string1
ptr2	equ		r11							; temporary pointer to string2
size1	equ		ptr1						; size of first string
size2	equ		ptr2						; size of second string
s1temp	equ		xmm0						; string1 data register
s2temp	equ		xmm1						; string2 data register
eol		equ		xmm2						; end of line
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		shftl	size, scale					; convert size to bytes
if scale <> 0
		test	string1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	string2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		ptr1, string1				; ptr1 = string1
		mov		ptr2, string2				; ptr2 = string2
		mov		index, string2
		and		index, VMASK				; get string offset from vector boundary
		sub		ptr1, index					; ptr1 = string1 - index
		sub		ptr2, index					; ptr2 = string2 - index
		pxor	eol, eol					; eol = 0
;---[Unaligned check]----------------------
		add		size, index					; size += index
		neg		index						; index = -index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [string1]			; s1temp = string1[0]
		movdqu	s2temp, [string2]			; s2temp = string2[0]
	pcmpeq#x	s1temp, s2temp				; check if string1[0] == string2[0]
	pcmpeq#x	s2temp, eol					; check string2[0] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if string1[0] != string2[0] or eol is found
		jnz		.brk0						;     then break the loop
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 1 * VSIZE]	; s1temp = ptr1[1]
		movdqa	s2temp, [ptr2 + 1 * VSIZE]	; s2temp = ptr2[1]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[1] == ptr2[1]
	pcmpeq#x	s2temp, eol					; check ptr2[1] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if ptr1[1] != ptr2[1] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 2 * VSIZE]	; s1temp = ptr1[2]
		movdqa	s2temp, [ptr2 + 2 * VSIZE]	; s2temp = ptr2[2]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[2] == ptr2[2]
	pcmpeq#x	s2temp, eol					; check ptr2[2] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if ptr1[2] != ptr2[2] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 3 * VSIZE]	; s1temp = ptr1[3]
		movdqa	s2temp, [ptr2 + 3 * VSIZE]	; s2temp = ptr2[3]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[3] == ptr2[3]
	pcmpeq#x	s2temp, eol					; check ptr2[3] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if ptr1[3] != ptr2[3] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 4 * VSIZE]	; s1temp = ptr1[4]
		movdqa	s2temp, [ptr2 + 4 * VSIZE]	; s2temp = ptr2[4]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[4] == ptr2[4]
	pcmpeq#x	s2temp, eol					; check ptr2[4] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if ptr1[4] != ptr2[4] or eol is found
		jnz		.brk1						;     then break the loop
		add		ptr1, 4 * VSIZE				; ptr1 += 4 * VSIZE
		add		ptr2, 4 * VSIZE				; ptr2 += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk0:	bsf		fmask, fmask				; find index of first different symbol
		mov		char, [string1 + fmask]
		cmp		char, [string2 + fmask]
		seta	res1						; if (string1[fmask] > string2[fmask]), then res1 = 1
		setb	res2						; if (string1[fmask] < string2[fmask]), then res2 = 1
		sub		res1, res2					; return res1 - res2
		movsx	index, res1
		ret
;---[Compare tails branch]-----------------
.tail:	add		index, size
		movdqu	s1temp, [string1 + index]	; s1temp = string1[index]
		movdqu	s2temp, [string2 + index]	; s2temp = string2[index]
	pcmpeq#x	s1temp, s2temp				; check if string1[index] == string2[index]
	pcmpeq#x	s2temp, eol					; check string2[index] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if string1[index] == string2[index] and eol is not found
		jz		@f							;     then exit
.brk1:	bsf		fmask, fmask				; find index of first different symbol
		add		index, fmask				; index += fmask
		mov		char, [string1 + index]
		cmp		char, [string2 + index]
@@:		seta	res1						; if (string1[index] > string2[index]), then res1 = 1
		setb	res2						; if (string1[index] < string2[index]), then res2 = 1
		sub		res1, res2					; return res1 - res2
		movsx	index, res1
		ret
;---[Scalar loop]--------------------------
.sloop:	mov		char, [string1]
		cmp		char, [string2]				; if (string1[0] != string2[0])
		jne		.exit						;     then go to exit
		test	char, char					; if (char == 0)
		jz		.exit						;     then go to exit
		add		string1, bytes				; string1++
		add		string2, bytes				; string2++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.exit:	seta	res1						; if (string1[0] > string2[0]), then res1 = 1
		setb	res2						; if (string1[0] < string2[0]), then res2 = 1
		sub		res1, res2					; return res1 - res2
		movsx	index, res1
		ret
}
CompareSeq_char8:	COMPARE2	cl, b
CompareSeq_char16:	COMPARE2	cx, w
CompareSeq_char32:	COMPARE2	ecx, d

;******************************************************************************;
;       Symbol search                                                          ;
;******************************************************************************;

;==============================================================================;
;       Searching for single symbol                                            ;
;==============================================================================;
macro	FIND_SYMBOL	symbol, char, x
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
psymbol	equ		rsi							; register which holds symbol
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
sindex	equ		rcx							; string offset from vector boundary
emask	equ		r9							; result of eol search
fmask	equ		r10							; result of pattern search
pcheck	equ		xmm0						; pattern check mask
echeck	equ		xmm1						; eol check mask
eol		equ		xmm2						; end of line
pattern	equ		xmm3						; pattern to find
cmask	equ		xmm4						; mask to clear unrequired results
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		test	symbol, symbol				; if (symbol == eol)
		jz		.ntfnd						;     then go to not found branch
		xor		index, index				; index = 0
if scale <> 0
		test	string, bmask				; if elements have wrong alignment
		jnz		.skip						;     then skip vector code
end if
;---[Normal execution branch]--------------
		movq	pattern, psymbol			; pattern = symbol
		mov		sindex, string
		and		sindex, VMASK				; get string offset from vector boundary
		sub		string, sindex				; align pointer to vector boundary
		pxor	eol, eol					; eol = 0
		clone	pattern, scale				; duplicate value through the entire register
;---[Unaligned search for pattern]---------
		sub		index, sindex				; index -= sindex
		shl		sindex, 4					; compute shift in mask array
		movdqa	cmask, dqword [maskA + sindex]
		movdqa	echeck, [string]			; echeck = string[0]
		movdqa	pcheck, echeck				; pcheck = string[0]
	pcmpeq#x	echeck, eol					; check string[0] for end of line
	pcmpeq#x	pcheck, pattern				; check string[0] for symbol
		pand	echeck, cmask				; apply cmask to eol search results
		pand	pcheck, cmask				; apply cmask to pattern search results
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
;---[Vector loop]--------------------------
.vloop:	movdqa	echeck, [string + 1 * VSIZE]; echeck = string[1]
		movdqa	pcheck, echeck				; pcheck = string[1]
	pcmpeq#x	echeck, eol					; check string[1] for end of line
	pcmpeq#x	pcheck, pattern				; check string[1] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [string + 2 * VSIZE]; echeck = string[2]
		movdqa	pcheck, echeck				; pcheck = string[2]
	pcmpeq#x	echeck, eol					; check string[2] for end of line
	pcmpeq#x	pcheck, pattern				; check string[2] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [string + 3 * VSIZE]; echeck = string[3]
		movdqa	pcheck, echeck				; pcheck = string[3]
	pcmpeq#x	echeck, eol					; check string[3] for end of line
	pcmpeq#x	pcheck, pattern				; check string[3] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [string + 4 * VSIZE]; echeck = string[4]
		movdqa	pcheck, echeck				; pcheck = string[4]
	pcmpeq#x	echeck, eol					; check string[4] for end of line
	pcmpeq#x	pcheck, pattern				; check string[4] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		add		string, 4 * VSIZE			; string += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:pmovmskb	fmask, pcheck				; save check results to fmask
		bsf		emask, emask				; find index of first occurence of eol
		bsf		fmask, fmask				; find index of first occurence of pattern
		jz		.ntfnd						; if pattern is not found, then go to not found branch
		cmp		fmask, emask				; if (index(pattern) > index (eol))
		ja		.ntfnd						;     then go to not found branch
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
if scale <> 0
;---[Scalar loop]--------------------------
.sloop:	cmp		char, symbol				; if (char == symbol)
		je		.exit						;     then go to exit
		add		index, 1					; index++
		add		string, bytes				; string++
.skip:	mov		char, [string]				; char = string[0]
		test	char, char
		jnz		.sloop						; do while (char != 0)
;---[End of scalar loop]-------------------
.exit:	ret
end if
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
		ret
}
FindSymbol_char8:	FIND_SYMBOL	sil, cl, b
FindSymbol_char16:	FIND_SYMBOL	si, cx, w
FindSymbol_char32:	FIND_SYMBOL	esi, ecx, d

;==============================================================================;
;       Searching for symbols set                                              ;
;==============================================================================;
macro	FIND_SYMBOLS	symbol, char, x
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
symbols	equ		rsi							; symbols to find
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
sindex	equ		rcx							; string offset from vector boundary
pindex	equ		rdx							; pattern table index
emask	equ		r9							; result of eol search
fmask	equ		r10							; result of pattern search
size	equ		r11							; size of pattern table
wchar	equ		rcx							; register which holds char value
ptr		equ		size						; temporary pointer
tsize	equ		symbols						; count of patterns to check
pcheck	equ		xmm0						; pattern check mask
echeck	equ		xmm1						; eol check mask
eol		equ		xmm2						; end of line
pattern	equ		xmm3						; pattern to find
cmask	equ		xmm4						; mask to clear unrequired results
stack	equ		rsp							; stack pointer
table	equ		stack						; pattern table
s_str	equ		stack + 0 * 8				; stack position of "string" variable
s_smbls	equ		stack + 1 * 8				; stack position of "symbols" variable
if x eq b
length	= Len_char8							; string length function
scale	= 0									; scale value
else if x eq w
length	= Len_char16						; string length function
scale	= 1									; scale value
else if x eq d
length	= Len_char32						; string length function
scale	= 2									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		mov		symbol, [symbols]			; symbol = symbols[0]
		test	symbol, symbol				; if (symbol == eol)
		jz		.ntfnd						;     then go to not found branch
		xor		index, index				; index = 0
if scale <> 0
		test	string, bmask				; if elements have wrong alignment
		jnz		.skip						;     then skip vector code
end if
;---[Creating pattern table]---------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_smbls], symbols			; save "symbols" variable into the stack
		mov		param1, symbols
		call	length						; index = Len (symbols)
		mov		string, [s_str]				; get "string" variable from the stack
		mov		symbols, [s_smbls]			; get "symbols" variable from the stack
		shl		index, VSCALE
		sub		stack, index				; get space for pattern table
		mov		size, index					; size = index
		xor		pindex, pindex				; pindex = 0
;---[Filling pattern table]----------------
.ploop:	mov		char, [symbols]
		movq	pattern, wchar				; pattern = char
		clone	pattern, scale				; duplicate value through the entire register
		movdqa	[table + pindex], pattern	; table[pindex] = pattern
		add		symbols, bytes				; symbols++
		add		pindex, VSIZE				; pindex++
		sub		index, VSIZE				; index--
		jnz		.ploop						; do while (index != 0)
;---[Normal execution branch]--------------
		mov		sindex, string
		and		sindex, VMASK				; get string offset from vector boundary
		sub		string, sindex				; align pointer to vector boundary
		pxor	eol, eol					; eol = 0
;---[Unaligned search for pattern]---------
		sub		index, sindex				; index -= sindex
		shl		sindex, 4					; compute shift in mask array
		movdqa	cmask, dqword [maskA + sindex]
		movdqa	echeck, [string]			; echeck = string[0]
		pxor	pcheck, pcheck				; pcheck = 0
		xor		pindex, pindex				; pindex = 0
		mov		tsize, size					; tsize = size
;---[Pattern matching loop]----------------
.loop1:	movdqa	pattern, [table + pindex]	; pattern = table[pindex]
	pcmpeq#x	pattern, echeck				; check string[1] for symbol
		por		pcheck, pattern				; add patern matching mask to pcheck
		add		pindex, VSIZE				; pindex++
		sub		tsize, VSIZE				; tsize--
		jnz		.loop1						; do while (tsize != 0)
;---[End of pattern matching loop]---------
	pcmpeq#x	echeck, eol					; check string[1] for end of line
		pand	echeck, cmask				; apply cmask to eol search results
		pand	pcheck, cmask				; apply cmask to pattern search results
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
;---[Vector loop]--------------------------
.vloop:	movdqa	echeck, [string + 1 * VSIZE]; echeck = string[1]
		pxor	pcheck, pcheck				; pcheck = 0
		xor		pindex, pindex				; pindex = 0
		mov		tsize, size					; tsize = size
;---[Pattern matching loop]----------------
.loop2:	movdqa	pattern, [table + pindex]	; pattern = table[pindex]
	pcmpeq#x	pattern, echeck				; check string[1] for symbol
		por		pcheck, pattern				; add patern matching mask to pcheck
		add		pindex, VSIZE				; pindex++
		sub		tsize, VSIZE				; tsize--
		jnz		.loop2						; do while (tsize != 0)
;---[End of pattern matching loop]---------
	pcmpeq#x	echeck, eol					; check string[1] for end of line
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		add		string, VSIZE				; string += VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	lea		stack, [stack + size+space]	; restoring back the stack pointer
	pmovmskb	fmask, pcheck				; save check results to fmask
		bsf		emask, emask				; find index of first occurence of eol
		bsf		fmask, fmask				; find index of first occurence of pattern
		jz		.ntfnd						; if pattern is not found, then go to not found branch
		cmp		fmask, emask				; if (index(pattern) > index (eol))
		ja		.ntfnd						;     then go to not found branch
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
if scale <> 0
;---[Scalar loop]--------------------------
.sloop:	mov		ptr, symbols				; ptr = symbols
		mov		symbol, [ptr]				; symbol = ptr[0]
;---[Searching loop]-----------------------
.iloop:	cmp		char, symbol				; if (char == symbol)
		je		.exit						;     then go to exit
		add		ptr, bytes					; ptr++
		mov		symbol, [ptr]				; symbol = ptr[0]
		test	symbol, symbol
		jnz		.iloop						; do while (symbol)
;---[End of searching loop]----------------
		add		index, 1					; index++
		add		string, bytes				; string++
.skip:	mov		char, [string]				; char = string[0]
		test	char, char
		jnz		.sloop						; do while (char != 0)
;---[End of scalar loop]-------------------
.exit:	ret
end if
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
		ret
}
FindSymbols_char8:	FIND_SYMBOLS	dl, cl, b
FindSymbols_char16:	FIND_SYMBOLS	dx, cx, w
FindSymbols_char32:	FIND_SYMBOLS	edx, ecx, d

;******************************************************************************;
;       Substring search                                                       ;
;******************************************************************************;

;==============================================================================;
;       Searching string for pattern                                           ;
;==============================================================================;
macro	FIND_STRING1 x
{
;---[Parameters]---------------------------
string	equ		rdi							; source string
pattern	equ		rsi							; pattern to find
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_str	equ		stack + 0 * 8				; stack position of "string" variable
s_patt	equ		stack + 1 * 8				; stack position of "pattern" variable
s_ssize	equ		stack + 2 * 8				; stack position of string size variable
s_psize	equ		stack + 3 * 8				; stack position of pattern size variable
s_bmh	equ		stack + 4 * 8				; stack position of BMH object
if x eq b
length	= Len_char8							; string length function
hash	= BMH8								; BMH pattern hash function
find	= BMH_Find8							; BMH subsequence searching function
else if x eq w
length	= Len_char16						; string length function
hash	= BMH16								; BMH pattern hash function
find	= BMH_Find16						; BMH subsequence searching function
else if x eq d
length	= Len_char32						; string length function
hash	= BMH32								; BMH pattern hash function
find	= BMH_Find32						; BMH subsequence searching function
end if
space	= 265 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_patt], pattern			; save "pattern" variable into the stack
		mov		param1, pattern
		call	length						; result = Len (pattern)
		test	result, result				; if (len == 0)
		jz		.ntfnd						;     then go to not found branch
		mov		[s_psize], result			; save pattern size into the stack
		mov		param1, [s_str]
		call	length						; result = Len (string)
		cmp		result, [s_psize]			; if (Len (string) < Len (pattern))
		jb		.ntfnd						;     then go to not found branch
		mov		[s_ssize], result			; save string size into the stack
;---[Calling BMH constructor]--------------
		xor		param4, param4				; pass direction flag to BMH constructor
		mov		param3, [s_psize]			; pass pattern size to BMH constructor
		mov		param2, [s_patt]			; pass pattern string to BMH constructor
		lea		param1, [s_bmh]				; pass BMH object to BMH constructor
		call	hash						; call BMH constructor
;---[Calling BMH search algorithm]---------
		lea		param3, [s_bmh]				; pass BMH pattern to BMH search algorithm
		mov		param2, [s_ssize]			; pass source string size to BMH search algorithm
		mov		param1, [s_str]				; pass source string to BMH search algorithm
		call	find						; call BMH search algorithm
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.ntfnd:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
}
FindStrStr_char8:	FIND_STRING1	b
FindStrStr_char16:	FIND_STRING1	w
FindStrStr_char32:	FIND_STRING1	d

;==============================================================================;
;       Searching characters sequence for pattern                              ;
;==============================================================================;
macro	FIND_STRING2 x
{
;---[Parameters]---------------------------
string	equ		rdi							; source characters sequence
size	equ		rsi							; size of source characters sequence
pattern	equ		rdx							; pattern to find
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_str	equ		stack + 0 * 8				; stack position of "string" variable
s_patt	equ		stack + 1 * 8				; stack position of "pattern" variable
s_ssize	equ		stack + 2 * 8				; stack position of string size variable
s_psize	equ		stack + 3 * 8				; stack position of pattern size variable
s_bmh	equ		stack + 4 * 8				; stack position of BMH object
if x eq b
length	= Len_char8							; string length function
hash	= BMH8								; BMH pattern hash function
find	= BMH_Find8							; BMH subsequence searching function
else if x eq w
length	= Len_char16						; string length function
hash	= BMH16								; BMH pattern hash function
find	= BMH_Find16						; BMH subsequence searching function
else if x eq d
length	= Len_char32						; string length function
hash	= BMH32								; BMH pattern hash function
find	= BMH_Find32						; BMH subsequence searching function
end if
space	= 265 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_ssize], size				; save string size into the stack
		mov		[s_patt], pattern			; save "pattern" variable into the stack
		mov		param1, pattern
		call	length						; result = Len (pattern)
		test	result, result				; if (len == 0)
		jz		.ntfnd						;     then go to not found branch
		mov		[s_psize], result			; save pattern size into the stack
		mov		result, [s_ssize]			; result = Len (string)
		cmp		result, [s_psize]			; if (Len (string) < Len (pattern))
		jb		.ntfnd						;     then go to not found branch
;---[Calling BMH constructor]--------------
		xor		param4, param4				; pass direction flag to BMH constructor
		mov		param3, [s_psize]			; pass pattern size to BMH constructor
		mov		param2, [s_patt]			; pass pattern string to BMH constructor
		lea		param1, [s_bmh]				; pass BMH object to BMH constructor
		call	hash						; call BMH constructor
;---[Calling BMH search algorithm]---------
		lea		param3, [s_bmh]				; pass BMH pattern to BMH search algorithm
		mov		param2, [s_ssize]			; pass source string size to BMH search algorithm
		mov		param1, [s_str]				; pass source string to BMH search algorithm
		call	find						; call BMH search algorithm
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.ntfnd:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
}
FindSeqStr_char8:	FIND_STRING2	b
FindSeqStr_char16:	FIND_STRING2	w
FindSeqStr_char32:	FIND_STRING2	d

;******************************************************************************;
;       String search                                                          ;
;******************************************************************************;

;==============================================================================;
;       Linear search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
FindFwd:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of strings
size	equ		rsi							; array size (count of elements)
string	equ		rdx							; string to find
func	equ		rcx							; pointer to string compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
ptr		equ		rax							; pointer to current element
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_str	equ		stack + 2 * 8				; stack position of "string" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		ptr, array					; ptr = array
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [ptr]
		mov		param1, [s_str]
		call	qword [s_func]				; result = Compare (string, ptr[0])
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		add		ptr, 8						; ptr++
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of search loop]-------------------
.exit:	add		stack, space				; restoring back the stack pointer
		mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
;---[Found branch]---------------------
.found:	sub		ptr, [s_array]
		add		stack, space				; restoring back the stack pointer
		shr		ptr, 3						; return ptr - array
		ret

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
FindBwd:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of strings
size	equ		rsi							; array size (count of elements)
string	equ		rdx							; string to find
func	equ		rcx							; pointer to string compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
ptr		equ		rax							; pointer to current element
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_str	equ		stack + 2 * 8				; stack position of "string" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		lea		ptr, [array + size * 8 - 8]	; ptr = array + size - 1
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [ptr]
		mov		param1, [s_str]
		call	qword [s_func]				; result = Compare (string, ptr[0])
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		sub		ptr, 8						; ptr--
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of search loop]-------------------
.exit:	add		stack, space				; restoring back the stack pointer
		mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
;---[Found branch]---------------------
.found:	sub		ptr, [s_array]
		add		stack, space				; restoring back the stack pointer
		shr		ptr, 3						; return ptr - array
		ret

;==============================================================================;
;       Binary search                                                          ;
;==============================================================================;
macro	FIND_BIN	cond1, cond2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of strings
size	equ		rsi							; array size (count of elements)
string	equ		rdx							; string to find
func	equ		rcx							; pointer to string compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
median	equ		r8							; median value
median1	equ		r9							; median value + 1
left	equ		r10							; left index
right	equ		size						; right index
pos		equ		r12							; matched position
stack	equ		rsp							; stack pointer
s_pos	equ		stack + 0 * 8				; stack position of "pos" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_str	equ		stack + 2 * 8				; stack position of "string" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_left	equ		stack + 4 * 8				; stack position of "left" variable
s_right	equ		stack + 5 * 8				; stack position of "right" variable
s_med	equ		stack + 6 * 8				; stack position of "median" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		xor		left, left					; left = 0
		mov		[s_pos], pos				; save old value of "pos" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		mov		pos, NOT_FOUND				; pos = NOT_FOUND
;---[Binary search loop]-------------------
.loop:	lea		median, [left + right]
		shr		median, 1					; median = (left + right) / 2
		mov		[s_med], median				; save "median" variable into the stack
		mov		param2, [array + median * 8]
		mov		param1, [s_str]
		call	qword [s_func]				; result = Compare (string, array[median])
		mov		array, [s_array]			; get "array" variable from the stack
		mov		median, [s_med]				; get "median" variable from the stack
		mov		left, [s_left]				; get "left" variable from the stack
		mov		right, [s_right]			; get "right" variable from the stack
		lea		median1, [median + 1]		; median1 = median + 1
		cmp		result, 0					; if (string cond array[median])
	cmov#cond1	pos, median					;     update matched position
	cmov#cond2	left, median1				;     then left = median + 1
	cmovn#cond2	right, median				;     else right = median
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		cmp		left, right
		jb		.loop						; do while (left < right)
;---[End of search loop]-------------------
		mov		result, pos					; result = pos
		mov		pos, [s_pos]				; restore old value of "pos" variable
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.exit:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
FindEqualAsc:			FIND_BIN	e, g
FindGreatAsc:			FIND_BIN	l, ge
FindGreatOrEqualAsc:	FIND_BIN	le, g
FindLessAsc:			FIND_BIN	g, g
FindLessOrEqualAsc:		FIND_BIN	ge, ge

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
FindEqualDsc:			FIND_BIN	e, l
FindLessDsc:			FIND_BIN	g, le
FindLessOrEqualDsc:		FIND_BIN	ge, l
FindGreatDsc:			FIND_BIN	l, l
FindGreatOrEqualDsc:	FIND_BIN	le, le

;******************************************************************************;
;       Counting                                                               ;
;******************************************************************************;

;==============================================================================;
;       Symbol counting                                                        ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Single symbol counting                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	COUNT_SYMBOL	symbol, char, x
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
psymbol	equ		rsi							; register which holds symbol
;---[Internal variables]-------------------
count	equ		rax							; count of pattern matches
sindex	equ		rcx							; string offset from vector boundary
sindexl	equ		cl							; low part of "sindex"
cmask	equ		r8							; mask to clear unrequired results
emask	equ		r9							; result of eol search
fmask	equ		r10							; result of pattern search
pcheck	equ		xmm0						; pattern check mask
echeck	equ		xmm1						; eol check mask
eol		equ		xmm2						; end of line
pattern	equ		xmm3						; pattern to find
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		test	symbol, symbol				; if (symbol == eol)
		jz		.error						;     then go to error branch
		xor		count, count				; count = 0
		mov		cmask, 1					; cmask = 1
if scale <> 0
		test	string, bmask				; if elements have wrong alignment
		jnz		.skip						;     then skip vector code
end if
;---[Normal execution branch]--------------
		movq	pattern, psymbol			; pattern = symbol
		mov		sindex, string
		and		sindex, VMASK				; get string offset from vector boundary
		sub		string, sindex				; align pointer to vector boundary
		pxor	eol, eol					; eol = 0
		clone	pattern, scale				; duplicate value through the entire register
;---[Unaligned search for pattern]---------
		mov		cmask, VBITS
		shl		cmask, sindexl				; adjust cmask for unaligned search
		movdqa	echeck, [string]			; echeck = string[0]
		movdqa	pcheck, echeck				; pcheck = string[0]
	pcmpeq#x	echeck, eol					; check string[0] for end of line
	pcmpeq#x	pcheck, pattern				; check string[0] for symbol
	pmovmskb	emask, echeck				; save check results to emask
	pmovmskb	fmask, pcheck				; save check results to fmask
		and		fmask, cmask				; clear unrequired results
		and		emask, cmask				; if eol is found
		jnz		.brk						;     then break the loop
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
;---[Vector loop]--------------------------
.vloop:	movdqa	echeck, [string + 1 * VSIZE]; echeck = string[1]
		movdqa	pcheck, echeck				; pcheck = string[1]
	pcmpeq#x	echeck, eol					; check string[1] for end of line
	pcmpeq#x	pcheck, pattern				; check string[1] for symbol
	pmovmskb	emask, echeck				; save check results to emask
	pmovmskb	fmask, pcheck				; save check results to fmask
		and		emask, emask				; if eol is found
		jnz		.brk						;     then break the loop
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
		movdqa	echeck, [string + 2 * VSIZE]; echeck = string[2]
		movdqa	pcheck, echeck				; pcheck = string[2]
	pcmpeq#x	echeck, eol					; check string[2] for end of line
	pcmpeq#x	pcheck, pattern				; check string[2] for symbol
	pmovmskb	emask, echeck				; save check results to emask
	pmovmskb	fmask, pcheck				; save check results to fmask
		and		emask, emask				; if eol is found
		jnz		.brk						;     then break the loop
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
		movdqa	echeck, [string + 3 * VSIZE]; echeck = string[3]
		movdqa	pcheck, echeck				; pcheck = string[3]
	pcmpeq#x	echeck, eol					; check string[3] for end of line
	pcmpeq#x	pcheck, pattern				; check string[3] for symbol
	pmovmskb	emask, echeck				; save check results to emask
	pmovmskb	fmask, pcheck				; save check results to fmask
		and		emask, emask				; if eol is found
		jnz		.brk						;     then break the loop
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
		movdqa	echeck, [string + 4 * VSIZE]; echeck = string[4]
		movdqa	pcheck, echeck				; pcheck = string[4]
	pcmpeq#x	echeck, eol					; check string[4] for end of line
	pcmpeq#x	pcheck, pattern				; check string[4] for symbol
	pmovmskb	emask, echeck				; save check results to emask
	pmovmskb	fmask, pcheck				; save check results to fmask
		and		emask, emask				; if eol is found
		jnz		.brk						;     then break the loop
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
		add		string, 4 * VSIZE			; string += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		emask, emask				; find index of first occurence of eol
		mov		sindex, VSIZE
		sub		sindex, emask				; get count of tail elements
		mov		cmask, VBITS
		shr		cmask, sindexl				; adjust cmask for tail search
		and		fmask, cmask				; if pattern is found
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
		shftr	count, scale				; return count
		ret
if scale <> 0
;---[Scalar loop]--------------------------
.sloop:	xor		fmask, fmask				; fmask = 0
		cmp		char, symbol				; if (char == symbol) {
		cmove	fmask, cmask				;     count++
		add		count, fmask				; }
		add		string, bytes				; string++
.skip:	mov		char, [string]				; char = string[0]
		test	char, char
		jnz		.sloop						; do while (char != 0)
;---[End of scalar loop]-------------------
		ret
end if
;---[Error branch]-------------------------
.error:	mov		count, ERROR				; return ERROR
		ret
}
CountSymbol_char8:	COUNT_SYMBOL	sil, cl, b
CountSymbol_char16:	COUNT_SYMBOL	si, cx, w
CountSymbol_char32:	COUNT_SYMBOL	esi, ecx, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Symbols set counting                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	COUNT_SYMBOLS	symbol, char, x
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
symbols	equ		rsi							; symbols to find
;---[Internal variables]-------------------
count	equ		rax							; count of pattern matches
sindex	equ		rcx							; string offset from vector boundary
sindexl	equ		cl							; low part of "sindex"
pindex	equ		rdx							; pattern table index
cmask	equ		r8							; mask to clear unrequired results
emask	equ		r9							; result of eol search
fmask	equ		r10							; result of pattern search
size	equ		r11							; size of pattern table
wchar	equ		rcx							; register which holds char value
ptr		equ		size						; temporary pointer
tsize	equ		symbols						; count of patterns to check
pcheck	equ		xmm0						; pattern check mask
echeck	equ		xmm1						; eol check mask
eol		equ		xmm2						; end of line
pattern	equ		xmm3						; pattern to find
stack	equ		rsp							; stack pointer
table	equ		stack						; pattern table
s_str	equ		stack + 0 * 8				; stack position of "string" variable
s_smbls	equ		stack + 1 * 8				; stack position of "symbols" variable
if x eq b
length	= Len_char8							; string length function
scale	= 0									; scale value
else if x eq w
length	= Len_char16						; string length function
scale	= 1									; scale value
else if x eq d
length	= Len_char32						; string length function
scale	= 2									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		mov		symbol, [symbols]			; symbol = symbols[0]
		test	symbol, symbol				; if (symbol == eol)
		jz		.error						;     then go to error branch
		xor		count, count				; count = 0
		mov		cmask, 1					; cmask = 1
if scale <> 0
		test	string, bmask				; if elements have wrong alignment
		jnz		.skip						;     then skip vector code
end if
;---[Creating pattern table]---------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_smbls], symbols			; save "symbols" variable into the stack
		mov		param1, symbols
		call	length						; count = Len (symbols)
		mov		string, [s_str]				; get "string" variable from the stack
		mov		symbols, [s_smbls]			; get "symbols" variable from the stack
		shl		count, VSCALE
		sub		stack, count				; get space for pattern table
		mov		size, count					; size = count
		xor		pindex, pindex				; pindex = 0
;---[Filling pattern table]----------------
.ploop:	mov		char, [symbols]
		movq	pattern, wchar				; pattern = char
		clone	pattern, scale				; duplicate value through the entire register
		movdqa	[table + pindex], pattern	; table[pindex] = pattern
		add		symbols, bytes				; symbols++
		add		pindex, VSIZE				; pindex++
		sub		count, VSIZE				; count--
		jnz		.ploop						; do while (count != 0)
;---[Normal execution branch]--------------
		mov		sindex, string
		and		sindex, VMASK				; get string offset from vector boundary
		sub		string, sindex				; align pointer to vector boundary
		pxor	eol, eol					; eol = 0
;---[Unaligned search for pattern]---------
		mov		cmask, VBITS
		shl		cmask, sindexl				; adjust cmask for unaligned search
		movdqa	echeck, [string]			; echeck = string[0]
		pxor	pcheck, pcheck				; pcheck = 0
		xor		pindex, pindex				; pindex = 0
		mov		tsize, size					; tsize = size
;---[Pattern matching loop]----------------
.loop1:	movdqa	pattern, [table + pindex]	; pattern = table[pindex]
	pcmpeq#x	pattern, echeck				; check string[1] for symbol
		por		pcheck, pattern				; add patern matching mask to pcheck
		add		pindex, VSIZE				; pindex++
		sub		tsize, VSIZE				; tsize--
		jnz		.loop1						; do while (tsize != 0)
;---[End of pattern matching loop]---------
	pcmpeq#x	echeck, eol					; check string[1] for end of line
	pmovmskb	fmask, pcheck				; save check results to fmask
	pmovmskb	emask, echeck				; save check results to emask
		and		fmask, cmask				; clear unrequired results
		and		emask, cmask				; if eol is found
		jnz		.brk						;     then break the loop
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
;---[Vector loop]--------------------------
.vloop:	movdqa	echeck, [string + 1 * VSIZE]; echeck = string[1]
		pxor	pcheck, pcheck				; pcheck = 0
		xor		pindex, pindex				; pindex = 0
		mov		tsize, size					; tsize = size
;---[Pattern matching loop]----------------
.loop2:	movdqa	pattern, [table + pindex]	; pattern = table[pindex]
	pcmpeq#x	pattern, echeck				; check string[1] for symbol
		por		pcheck, pattern				; add patern matching mask to pcheck
		add		pindex, VSIZE				; pindex++
		sub		tsize, VSIZE				; tsize--
		jnz		.loop2						; do while (tsize != 0)
;---[End of pattern matching loop]---------
	pcmpeq#x	echeck, eol					; check string[1] for end of line
	pmovmskb	fmask, pcheck				; save check results to fmask
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
		add		string, VSIZE				; string += VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	lea		stack, [stack + size+space]	; restoring back the stack pointer
		bsf		emask, emask				; find index of first occurence of eol
		mov		sindex, VSIZE
		sub		sindex, emask				; get count of tail elements
		mov		cmask, VBITS
		shr		cmask, sindexl				; adjust cmask for tail search
		and		fmask, cmask				; if pattern is found
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
		shftr	count, scale				; return count
		ret
if scale <> 0
;---[Scalar loop]--------------------------
.sloop:	mov		ptr, symbols				; ptr = symbols
		mov		symbol, [ptr]				; symbol = ptr[0]
;---[Searching loop]-----------------------
.iloop:	xor		fmask, fmask				; fmask = 0
		cmp		char, symbol				; if (char == symbol) {
		cmove	fmask, cmask				;     count++
		je		@f							; }
		add		ptr, bytes					; ptr++
		mov		symbol, [ptr]				; symbol = ptr[0]
		test	symbol, symbol
		jnz		.iloop						; do while (symbol)
;---[End of searching loop]----------------
@@:		add		count, fmask
		add		string, bytes				; string++
.skip:	mov		char, [string]				; char = string[0]
		test	char, char
		jnz		.sloop						; do while (char != 0)
;---[End of scalar loop]-------------------
		ret
end if
;---[Error branch]-------------------------
.error:	mov		count, ERROR				; return ERROR
		ret
}
CountSymbols_char8:		COUNT_SYMBOLS	dl, cl, b
CountSymbols_char16:	COUNT_SYMBOLS	dx, cx, w
CountSymbols_char32:	COUNT_SYMBOLS	edx, ecx, d

;==============================================================================;
;       String counting                                                        ;
;==============================================================================;
CountString:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of strings
size	equ		rsi							; array size (count of elements)
string	equ		rdx							; string to find
func	equ		rcx							; pointer to string compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_str	equ		stack + 2 * 8				; stack position of "string" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_total	equ		stack + 4 * 8				; stack position of "total" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, [s_str]
		call	qword [s_func]				; result = Compare (string, array[0])
		mov		array, [s_array]			; get "array" variable from the stack
		not		result
		and		result, 0x1					; if (result)
		add		[s_total], result			;     then total++
		add		array, 8					; array++
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total

;******************************************************************************;
;       Replacing                                                              ;
;******************************************************************************;

;==============================================================================;
;       Symbol replacing                                                       ;
;==============================================================================;
macro	REPLACE_SYMBOL	patt, val, char, x
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
preg	equ		rsi							; register which holds symbol
vreg	equ		rdx							; register which holds value
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
sindex	equ		rcx							; string offset from vector boundary
addr	equ		r8							; return address
emask	equ		r9							; result of eol search
fmask	equ		r10							; result of pattern search
ptr		equ		r11							; temporary pointer to string
pcheck	equ		xmm0						; pattern check mask
echeck	equ		xmm1						; eol check mask #1
eol		equ		xmm2						; end of line
pattern	equ		xmm3						; pattern to find
replace	equ		xmm4						; replacement value
cmask	equ		xmm5						; mask to clear unrequired results
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		test	patt, patt					; if (patt == eol)
		jz		.exit						;     then go to exit
if scale <> 0
		test	string, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
;---[Normal execution branch]--------------
		movq	pattern, preg				; pattern = symbol
		movq	replace, vreg				; replace = value
		mov		sindex, string
		and		sindex, VMASK				; get string offset from vector boundary
		sub		string, sindex				; align pointer to vector boundary
		mov		ptr, string					; ptr = string
		pxor	eol, eol					; eol = 0
		clone	pattern, scale				; duplicate value through the entire register
		clone	replace, scale				; duplicate value through the entire register
;---[Unaligned search for pattern]---------
		xor		index, index				; index = 0
		shl		sindex, 4					; compute shift in mask array
		movdqa	cmask, dqword [maskA + sindex]
		movdqa	echeck, [string]			; echeck = string[0]
		movdqa	pcheck, echeck				; pcheck = string[0]
	pcmpeq#x	echeck, eol					; check string[0] for end of line
	pcmpeq#x	pcheck, pattern				; check string[0] for symbol
		pand	echeck, cmask				; apply cmask to eol search results
		pand	pcheck, cmask				; apply cmask to pattern search results
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		mov		addr, .back0				;     save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back0:	add		index, VSIZE				; index += VSIZE
;---[Vector loop]--------------------------
.vloop:	movdqa	echeck, [ptr + 1 * VSIZE]	; echeck = ptr[1]
		movdqa	pcheck, echeck				; pcheck = ptr[1]
	pcmpeq#x	echeck, eol					; check ptr[1] for end of line
	pcmpeq#x	pcheck, pattern				; check ptr[1] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		mov		addr, .back1				;     save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back1:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [ptr + 2 * VSIZE]	; echeck = ptr[2]
		movdqa	pcheck, echeck				; pcheck = ptr[2]
	pcmpeq#x	echeck, eol					; check ptr[2] for end of line
	pcmpeq#x	pcheck, pattern				; check ptr[2] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		mov		addr, .back2				;     save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back2:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [ptr + 3 * VSIZE]	; echeck = ptr[3]
		movdqa	pcheck, echeck				; pcheck = ptr[3]
	pcmpeq#x	echeck, eol					; check ptr[3] for end of line
	pcmpeq#x	pcheck, pattern				; check ptr[3] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		mov		addr, .back3				;     save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back3:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [ptr + 4 * VSIZE]	; echeck = ptr[4]
		movdqa	pcheck, echeck				; pcheck = ptr[4]
	pcmpeq#x	echeck, eol					; check ptr[4] for end of line
	pcmpeq#x	pcheck, pattern				; check ptr[4] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		mov		addr, .back4				;     save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back4:	add		index, VSIZE				; index += VSIZE
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	pxor	echeck, pcheck				; echeck ^= pcheck
	pmovmskb	emask, echeck				; save check results to emask
	pmovmskb	fmask, pcheck				; save check results to fmask
		and		emask, emask				; if eol is found
		jnz		@f							;     then parse string tail
		movdqa	echeck, [string + index]	; echeck = string[index]
	pblendvb	echeck, replace
		movdqa	[string + index], echeck	; string[index] = replace (echeck, pattern, value)
		jmp		addr						; go back into the searching loop
@@:		bsf		emask, emask				; find index of first occurence of eol
		bsf		fmask, fmask				; find index of first occurence of pattern
		jz		@f							; if pattern is not found, then go to exit
		cmp		fmask, emask				; if (index(pattern) > index (eol))
		ja		@f							;     then go to exit
		shl		emask, 4					; compute shift in mask array
		pand	pcheck, dqword [maskB + emask]
		movdqa	echeck, [string + index]	; echeck = string[index]
	pblendvb	echeck, replace
		movdqa	[string + index], echeck	; string[index] = replace (echeck, pattern, value)
@@:		ret
if scale <> 0
;---[Scalar loop]--------------------------
.sloop:	mov		char, [string]				; char = string[0]
		cmp		char, patt					; if (char == patt) {
		jne		@f							;     string[0] = value
		mov		[string], val				; }
@@:		add		string, bytes				; string++
		test	char, char
		jnz		.sloop						; do while (char != 0)
;---[End of scalar loop]-------------------
end if
.exit:	ret
}
Replace_char8:		REPLACE_SYMBOL	sil, dl, cl, b
Replace_char16:		REPLACE_SYMBOL	si, dx, cx, w
Replace_char32:		REPLACE_SYMBOL	esi, edx, ecx, d

;==============================================================================;
;       String replacing                                                       ;
;==============================================================================;
Replace:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of strings
size	equ		rsi							; array size (count of elements)
string	equ		rdx							; string to find
value	equ		rcx							; string to replace matched string
func	equ		r8							; pointer to string compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_str	equ		stack + 2 * 8				; stack position of "string" variable
s_value	equ		stack + 3 * 8				; stack position of "value" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, [s_str]
		call	qword [s_func]				; result = Compare (string, array[0])
		mov		array, [s_array]			; get "array" variable from the stack
		test	result, result				; if (result == 0)
		jz		.brk						;     then break the loop
.back:	add		array, 8					; array++
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of search loop]-------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]---------------------
.brk:	mov		value, [s_value]			; get "value" variable from the stack
		mov		[array], value				; array[0] = value
		jmp		.back						; go back

;******************************************************************************;
;       Sorting algorithms                                                     ;
;******************************************************************************;

;==============================================================================;
;       Array sorting                                                          ;
;==============================================================================;
macro	SORT	op1, op2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to strings array
size	equ		rsi							; array size (count of elements)
func	equ		rdx							; pointer to string compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
median	equ		rax							; median value
left	equ		r8							; left index
right	equ		r9							; right index
ptr1	equ		r10							; temporary pointer #1
ptr2	equ		r11							; temporary pointer #2
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_med	equ		stack + 3 * 8				; stack position of "median" variable
s_left	equ		stack + 4 * 8				; stack position of "left" variable
s_right	equ		stack + 5 * 8				; stack position of "right" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
;---[Normal execution branch]--------------
.start:	sub		stack, space				; reserving stack size for local vars
		mov		[s_func], func				; save "func" variable into the stack
;---[Sorting loop]-------------------------
.sort:	mov		median, size
		shr		median, 1					; median = size / 2
		mov		left, -1					; left = -1
		mov		right, size					; right = size
		mov		median, [array + median * 8]; median = array[median]
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_med], median				; save "median" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	mov		ptr1, [array + left * 8]	; ptr1 = array[left]
		mov		ptr2, [array + right * 8]	; ptr1 = array[left]
		xchg	ptr1, ptr2
		mov		[array + left * 8], ptr1	; array[left] = ptr2
		mov		[array + right * 8], ptr2	; array[right] = ptr1
;---[Internal loop 1]----------------------
.loop1:	mov		left, [s_left]				; get "left" variable from the stack
		add		left, 1						; left++
		mov		[s_left], left				; save "left" variable into the stack
		mov		param2, [s_med]
		mov		param1, [array + left * 8]
		call	qword [s_func]				; result = Compare (array[left], median)
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		result, 0					; check compare result
		j#op1	.loop1						; do while compare condition is true
;---[Internal loop 2]----------------------
.loop2:	mov		right, [s_right]			; get "right" variable from the stack
		sub		right, 1					; right--
		mov		[s_right], right			; save "right" variable into the stack
		mov		param2, [s_med]
		mov		param1, [array + right * 8]
		call	qword [s_func]				; result = Compare (array[right], median)
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		result, 0					; check compare result
		j#op2	.loop2						; do while compare condition is true
;------------------------------------------
		mov		left, [s_left]				; get "left" variable from the stack
		mov		right, [s_right]			; get "right" variable from the stack
		cmp		left, right
		jb		.swap						; do while (left < right)
;---[End of swap loop]---------------------
		mov		size, [s_size]				; get "size" variable from the stack
		add		right, 1
		sub		rsize, right				; rsize = size - (right + 1)
		lea		rarray, [array + right * 8]	; rarray = array + (right + 1)
		cmp		lsize, rsize				; if (lsize <= rsize)
		ja		.else						; {
;---[if lsize <= rsize]--------------------
		cmp		lsize, 1					; if (lsize > 1)
		jbe		@f							; {
		mov		[s_array], rarray			; save "rarray" variable into the stack
		mov		[s_size], rsize				; save "rsize" variable into the stack
		mov		func, [s_func]				; get "func" variable from the stack
		mov		size, lsize
		call	.start						; call Sort (larray, lsize, func)
		mov		rarray, [s_array]			; get "rarray" variable from the stack
		mov		rsize, [s_size]				; get "rsize" variable from the stack
@@:		mov		array, rarray				; }
		jmp		.end
;---[else]---------------------------------
.else:	cmp		rsize, 1					; if (rsize > 1)
		jbe		@f							; {
		mov		[s_array], larray			; save "larray" variable into the stack
		mov		[s_size], lsize				; save "lsize" variable into the stack
		mov		func, [s_func]				; get "func" variable from the stack
		mov		array, rarray
		call	.start						; call Sort (rarray, rsize, func)
		mov		larray, [s_array]			; get "larray" variable from the stack
		mov		lsize, [s_size]				; get "lsize" variable from the stack
@@:		mov		size, lsize					; }
;---[end if]-------------------------------
.end:	cmp		size, 1
		ja		.sort						; do while (size > 1)
;---[End of sorting loop]------------------
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}
SortAsc:	SORT	l, g
SortDsc:	SORT	g, l

;==============================================================================;
;       Key sorting                                                            ;
;==============================================================================;
macro	SORT_KEY	op1, op2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to strings array
ptr		equ		rsi							; pointer to array of pointers to data
size	equ		rdx							; array size (count of elements)
func	equ		rcx							; pointer to string func function
;---[Internal variables]-------------------
result	equ		rax							; result register
median	equ		rax							; median value
left	equ		r8							; left index
right	equ		r9							; right index
ptr1	equ		r10							; temporary pointer #1
ptr2	equ		r11							; temporary pointer #2
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
lptr	equ		ptr							; pointer to left part of ptr array
rptr	equ		median						; pointer to right part of ptr array
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_med	equ		stack + 4 * 8				; stack position of "median" variable
s_left	equ		stack + 5 * 8				; stack position of "left" variable
s_right	equ		stack + 6 * 8				; stack position of "right" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
;---[Normal execution branch]--------------
.start:	sub		stack, space				; reserving stack size for local vars
		mov		[s_func], func				; save "func" variable into the stack
;---[Sorting loop]-------------------------
.sort:	mov		median, size
		shr		median, 1					; median = size / 2
		mov		left, -1					; left = -1
		mov		right, size					; right = size
		mov		median, [array + median * 8]; median = array[median]
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_med], median				; save "median" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	mov		ptr1, [array + left * 8]	; ptr1 = array[left]
		mov		ptr2, [array + right * 8]	; ptr1 = array[left]
		xchg	ptr1, ptr2
		mov		[array + left * 8], ptr1	; array[left] = ptr2
		mov		[array + right * 8], ptr2	; array[right] = ptr1
		mov		ptr1, [ptr + left * 8]		; ptr1 = ptr[left]
		mov		ptr2, [ptr + right * 8]		; ptr1 = ptr[left]
		xchg	ptr1, ptr2
		mov		[ptr + left * 8], ptr1		; ptr[left] = ptr2
		mov		[ptr + right * 8], ptr2		; ptr[right] = ptr1
;---[Internal loop 1]----------------------
.loop1:	mov		left, [s_left]				; get "left" variable from the stack
		add		left, 1						; left++
		mov		[s_left], left				; save "left" variable into the stack
		mov		param2, [s_med]
		mov		param1, [array + left * 8]
		call	qword [s_func]				; result = Compare (array[left], median)
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		result, 0					; check compare result
		j#op1	.loop1						; do while compare condition is true
;---[Internal loop 2]----------------------
.loop2:	mov		right, [s_right]			; get "right" variable from the stack
		sub		right, 1					; right--
		mov		[s_right], right			; save "right" variable into the stack
		mov		param2, [s_med]
		mov		param1, [array + right * 8]
		call	qword [s_func]				; result = Compare (array[right], median)
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		result, 0					; check compare result
		j#op2	.loop2						; do while compare condition is true
;------------------------------------------
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		left, [s_left]				; get "left" variable from the stack
		mov		right, [s_right]			; get "right" variable from the stack
		cmp		left, right
		jb		.swap						; do while (left < right)
;---[End of swap loop]---------------------
		mov		size, [s_size]				; get "size" variable from the stack
		add		right, 1
		sub		rsize, right				; rsize = size - (right + 1)
		lea		rptr, [ptr + right * 8]		; rptr = ptr + (right + 1)
		lea		rarray, [array + right * 8]	; rarray = array + (right + 1)
		cmp		lsize, rsize				; if (lsize <= rsize)
		ja		.else						; {
;---[if lsize <= rsize]--------------------
		cmp		lsize, 1					; if (lsize > 1)
		jbe		@f							; {
		mov		[s_array], rarray			; save "rarray" variable into the stack
		mov		[s_ptr], rptr				; save "rptr" variable into the stack
		mov		[s_size], rsize				; save "rsize" variable into the stack
		mov		func	, [s_func]			; get "func" variable from the stack
		mov		size, lsize
		call	.start						; call Sort (larray, lptr, lsize, func)
		mov		rarray, [s_array]			; get "rarray" variable from the stack
		mov		rptr, [s_ptr]				; get "rptr" variable from the stack
		mov		rsize, [s_size]				; get "rsize" variable from the stack
@@:		mov		array, rarray				; }
		mov		ptr, rptr
		jmp		.end
;---[else]---------------------------------
.else:	cmp		rsize, 1					; if (rsize > 1)
		jbe		@f							; {
		mov		[s_array], larray			; save "larray" variable into the stack
		mov		[s_ptr], lptr				; save "lptr" variable into the stack
		mov		[s_size], lsize				; save "lsize" variable into the stack
		mov		func, [s_func]				; get "func" variable from the stack
		mov		array, rarray
		mov		ptr, rptr
		call	.start						; call Sort (rarray, rptr, rsize, func)
		mov		larray, [s_array]			; get "larray" variable from the stack
		mov		lptr, [s_ptr]				; get "lptr" variable from the stack
		mov		lsize, [s_size]				; get "lsize" variable from the stack
@@:		mov		size, lsize					; }
;---[end if]-------------------------------
.end:	cmp		size, 1
		ja		.sort						; do while (size > 1)
;---[End of sorting loop]------------------
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}
SortKeyAsc:		SORT_KEY	l, g
SortKeyDsc:		SORT_KEY	g, l

;******************************************************************************;
;       Reversing elements order                                               ;
;******************************************************************************;
Reverse:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to strings array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ 	rax							; pointer to last element of array
temp1	equ		r8							; temporary register #1
temp2	equ		r9							; temporary register #2
;------------------------------------------
		lea		ptr, [array + size * 8]		; ptr = array + size
		shr		size, 1						; size >>= 1
		jz		.exit						; if (size == 0), then go to exit
;---[Swap loop]----------------------------
@@:		sub		ptr, 8						; ptr--
		mov		temp1, [array]				; temp1 = array[0]
		mov		temp2, [ptr]				; temp2 = ptr[0]
		xchg	temp1, temp2				; exchange temp1 and temp2
		mov		[array], temp1				; array[0] = temp2
		mov		[ptr], temp2				; ptr[0] = temp1
		add		array, 8					; array++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
.exit:	ret

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
Unique:
;---[Parameters]---------------------------
unique	equ		rdi							; pointer to array of unique strings
array	equ		rsi							; pointer to strings array
size	equ		rdx							; array size (count of elements)
func	equ		rcx							; pointer to string compare function
;---[Internal variables]-------------------
result	equ		rax							; result registet
ptr		equ		r8							; pointer to unique sequnce
value	equ		r9							; key value
stack	equ		rsp							; stack pointer
s_uniq	equ		stack + 0 * 8				; stack position of "unique" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
s_value	equ		stack + 5 * 8				; stack position of "value" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_uniq], unique			; save "unique" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		ptr, unique					; ptr = unique
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		value, [array]				; value = array[0]
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
		add		array, 8					; array++
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_size], 1			; size--
		jz		.skip						; if (size == 0), then skip the loop
;---[Unique loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, [s_value]
		call	qword [s_func]				; result = func (value, array[0])
		mov		array, [s_array]			; get "array" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		value, [s_value]			; get "value" variable from the stack
		test	result, result				; if (result != 0)
		jz		@f							; {
		mov		[ptr], value				;     ptr[0] = value
		add		ptr, 8						;     ptr++
		mov		value, [array]				;     value = array[0]
		mov		[s_ptr], ptr				; }
		mov		[s_value], value			;
@@:		add		array, 8					; array++
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of unique loop]-------------------
.skip:	mov		[ptr], value				; ptr[0] = value
		add		ptr, 8						; ptr++
;---[Normal exit branch]-------------------
.exit:	sub		ptr, [s_uniq]
		shr		ptr, 3
		add		stack, space				; restoring back the stack pointer
		mov		result, ptr					; return ptr - unique
		ret

;******************************************************************************;
;       Duplicate values                                                       ;
;******************************************************************************;
Duplicates:
;---[Parameters]---------------------------
unique	equ		rdi							; pointer to array of unique strings
count	equ		rsi							; pointer to array of counters
array	equ		rdx							; pointer to strings array
size	equ		rcx							; array size (count of elements)
func	equ		r8							; pointer to string compare function
;---[Internal variables]-------------------
result	equ		rax							; result registet
ptr		equ		r9							; pointer to unique sequnce
value	equ		r10							; key value
total	equ		r11							; count of duplicates
stack	equ		rsp							; stack pointer
s_uniq	equ		stack + 0 * 8				; stack position of "unique" variable
s_count	equ		stack + 1 * 8				; stack position of "count" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_ptr	equ		stack + 5 * 8				; stack position of "ptr" variable
s_value	equ		stack + 6 * 8				; stack position of "value" variable
s_total	equ		stack + 7 * 8				; stack position of "total" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_uniq], unique			; save "unique" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		ptr, unique					; ptr = unique
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		value, [array]				; value = array[0]
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
		add		array, 8					; array++
		mov		[s_array], array			; save "array" variable into the stack
		mov		qword [s_total], 1			; total = 1
		sub		qword [s_size], 1			; size--
		jz		.skip						; if (size == 0), then skip the loop
;---[Unique loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, [s_value]
		call	qword [s_func]				; result = func (value, array[0])
		mov		count, [s_count]			; get "count" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		value, [s_value]			; get "value" variable from the stack
		mov		total, [s_total]			; get "total" variable from the stack
		test	result, result				; if (result != 0)
		jz		@f							; {
		mov		[ptr], value				;     ptr[0] = value
		add		ptr, 8						;     ptr++
		mov		[count], total				;     count[0] = total
		add		count, 8					;     count++
		mov		value, [array]				;     value = array[0]
		xor		total, total				;     total = 0 }
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
@@:		add		array, 8					; array++
		add		total, 1					; total++
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_total], total			; save "total" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of unique loop]-------------------
.skip:	mov		[ptr], value				; ptr[0] = value
		add		ptr, 8						; ptr++
		mov		[count], total				; count[0] = total
		add		count, 8					; count++
;---[Normal exit branch]-------------------
.exit:	sub		ptr, [s_uniq]
		shr		ptr, 3
		add		stack, space				; restoring back the stack pointer
		mov		result, ptr					; return ptr - unique
		ret

;******************************************************************************;
;       Merging of sorted strings                                              ;
;******************************************************************************;

;==============================================================================;
;       Array merging                                                          ;
;==============================================================================;
macro	MERGE	cond
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target strings array
src1	equ		rsi							; pointer to first source strings array
size1	equ		rdx							; size of first array
src2	equ		rcx							; pointer to second source strings array
size2	equ		r8							; size of second array
func	equ		r9							; pointer to string compare function
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
value	equ		r10							; pointer to source string
stack	equ		rsp							; stack pointer
s_src1p	equ		stack + 0 * 8				; stack position of "src1p" variable
s_sz1m	equ		stack + 1 * 8				; stack position of "size1m" variable
s_src2p	equ		stack + 2 * 8				; stack position of "src2p" variable
s_sz2m	equ		stack + 3 * 8				; stack position of "size2m" variable
s_tgt	equ		stack + 4 * 8				; stack position of "target" variable
s_src1	equ		stack + 5 * 8				; stack position of "src1" variable
s_size1	equ		stack + 6 * 8				; stack position of "size1" variable
s_src2	equ		stack + 7 * 8				; stack position of "src2" variable
s_size2	equ		stack + 8 * 8				; stack position of "size2" variable
s_func	equ		stack + 9 * 8				; stack position of "func" variable
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_tgt], target				; save "target" variable into the stack
		mov		[s_src1], src1				; save "src1" variable into the stack
		mov		[s_size1], size1			; save "size1" variable into the stack
		mov		[s_src2], src2				; save "src2" variable into the stack
		mov		[s_size2], size2			; save "size2" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		test	size1, size1				; if (size1 == 0)
		jz		.copy1						;     then go to copy1 branch
		test	size2, size2				; if (size2 == 0)
		jz		.copy2						;     then go to copy2 branch
;---[Merging loop]-------------------------
.loop:	add		src1, 8						; src1p = src1 + 1
		mov		[s_src1p], src1				; save "src1p" variable into the stack
		sub		size1, 1					; size1m = size1 - 1
		mov		[s_sz1m], size1				; save "size1m" variable into the stack
		add		src2, 8						; src2p = src2 + 1
		mov		[s_src2p], src2				; save "src2p" variable into the stack
		sub		size2, 1					; size2m = size2 - 1
		mov		[s_sz2m], size2				; save "size2m" variable into the stack
		mov		param1, [src1]
		mov		param2, [src2]
		call	qword [s_func]				; result = func (src1[0], src2[0])
		mov		target, [s_tgt]				; get "target" variable from the stack
		mov		src1, [s_src1]				; get "src1" variable from the stack
		mov		size1, [s_size1]			; get "size1" variable from the stack
		mov		src2, [s_src2]				; get "src2" variable from the stack
		mov		size2, [s_size2]			; get "size2" variable from the stack
		cmp		result, 0
	cmov#cond	value, [src1]				; if (result cond 0), then value = src1[0]
	cmovn#cond	value, [src2]				; if (result !cond 0), then value = src2[0]
	cmov#cond	src1, [s_src1p]				; if (result cond 0), then src1 = src1 + 1
	cmovn#cond	src2, [s_src2p]				; if (result !cond 0), then src2 = src2 + 1
	cmov#cond	size1, [s_sz1m]				; if (result cond 0), then size1 = size1 - 1
	cmovn#cond	size2, [s_sz2m]				; if (result !cond 0), then size2 = size2 - 1
		mov		[target], value				; target[0] = value
		add		target, 8					; target++
		mov		[s_tgt], target				; save "target" variable into the stack
		mov		[s_src1], src1				; save "src1" variable into the stack
		mov		[s_size1], size1			; save "size1" variable into the stack
		mov		[s_src2], src2				; save "src2" variable into the stack
		mov		[s_size2], size2			; save "size2" variable into the stack
		test	size1, size1				; if (size1 == 0)
		jz		.copy1						;     then go to copy1 branch
		test	size2, size2				; if (size2 == 0)
		jz		.copy2						;     then go to copy2 branch
		jmp		.loop						; do while (true)
;---[End of merging loop]------------------
.copy1:	mov		param1, [s_tgt]
		mov		param2, [s_src2]
		mov		param3, [s_size2]
		add		stack, space				; restoring back the stack pointe
		jmp		Copy						; call Copy (target, src2, size2)
.copy2:	mov		param1, [s_tgt]
		mov		param2, [s_src1]
		mov		param3, [s_size1]
		add		stack, space				; restoring back the stack pointe
		jmp		Copy						; call Copy (target, src1, size1)
}
MergeAsc:	MERGE	le
MergeDsc:	MERGE	ge

;==============================================================================;
;       Key merging                                                            ;
;==============================================================================;
macro	MERGE_KEY	cond
{
;---[Parameters]---------------------------
tkey	equ		rdi							; pointer to target strings array
tptr	equ		rsi							; pointer to target array of pointers to data
skey1	equ		rdx							; pointer to first source strings array
sptr1	equ		rcx							; pointer to first source array of pointers to data
size1	equ		r8							; size of first array
skey2	equ		r9							; pointer to second source strings array
sptr2	equ		r10							; pointer to second source array of pointers to data
size2	equ		r11							; size of second array
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
value	equ		r12							; pointer to source string
ptr		equ		r13							; pointer to assigned string data
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
s_sk1p	equ		stack + 2 * 8				; stack position of "skey1p" variable
s_sp1p	equ		stack + 3 * 8				; stack position of "sptr1p" variable
s_sz1m	equ		stack + 4 * 8				; stack position of "size1m" variable
s_sk2p	equ		stack + 5 * 8				; stack position of "skey2p" variable
s_sp2p	equ		stack + 6 * 8				; stack position of "sptr2p" variable
s_sz2m	equ		stack + 7 * 8				; stack position of "size2m" variable
s_tkey	equ		stack + 8 * 8				; stack position of "tkey" variable
s_tptr	equ		stack + 9 * 8				; stack position of "tptr" variable
s_skey1	equ		stack + 10 * 8				; stack position of "skey1" variable
s_sptr1	equ		stack + 11 * 8				; stack position of "sptr1" variable
s_size1	equ		stack + 12 * 8				; stack position of "size1" variable
s_skey2	equ		stack + 13 * 8				; stack position of "skey2" variable
s_sptr2	equ		stack + 16 * 8				; stack position of "sptr2" variable
s_size2	equ		stack + 17 * 8				; stack position of "size2" variable
s_func	equ		stack + 18 * 8				; stack position of "func" variable
space	= 15 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_ptr], ptr				; save old value of "ptr" variable
		mov		[s_tkey], tkey				; save "tkey" variable into the stack
		mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_skey1], skey1			; save "skey1" variable into the stack
		mov		[s_sptr1], sptr1			; save "sptr1" variable into the stack
		mov		[s_size1], size1			; save "size1" variable into the stack
		mov		[s_skey2], skey2			; save "skey2" variable into the stack
		mov		sptr2, [s_sptr2]			; get "sptr2" variable from the stack
		mov		size2, [s_size2]			; get "size2" variable from the stack
		test	size1, size1				; if (size1 == 0)
		jz		.copy1						;     then go to copy1 branch
		test	size2, size2				; if (size2 == 0)
		jz		.copy2						;     then go to copy2 branch
;---[Merging loop]-------------------------
.loop:	add		skey1, 8					; skey1p = skey1 + 1
		mov		[s_sk1p], skey1				; save "skey1p" variable into the stack
		add		sptr1, 8					; sptr1p = sptr1 + 1
		mov		[s_sp1p], sptr1				; save "sptr1p" variable into the stack
		sub		size1, 1					; size1m = size1 - 1
		mov		[s_sz1m], size1				; save "size1m" variable into the stack
		add		skey2, 8					; skey2p = skey2 + 1
		mov		[s_sk2p], skey2				; save "skey2p" variable into the stack
		add		sptr2, 8					; sptr2p = sptr2 + 1
		mov		[s_sp2p], sptr2				; save "sptr2p" variable into the stack
		sub		size2, 1					; size2m = size2 - 1
		mov		[s_sz2m], size2				; save "size2m" variable into the stack
		mov		param1, [skey1]
		mov		param2, [skey2]
		call	qword [s_func]				; result = func (skey1[0], skey2[0])
		mov		tkey, [s_tkey]				; get "tkey" variable from the stack
		mov		tptr, [s_tptr]				; get "tptr" variable from the stack
		mov		skey1, [s_skey1]			; get "skey1" variable from the stack
		mov		sptr1, [s_sptr1]			; get "sptr1" variable from the stack
		mov		size1, [s_size1]			; get "size1" variable from the stack
		mov		skey2, [s_skey2]			; get "skey2" variable from the stack
		mov		sptr2, [s_sptr2]			; get "sptr2" variable from the stack
		mov		size2, [s_size2]			; get "size2" variable from the stack
		cmp		result, 0
	cmov#cond	value, [skey1]				; if (result cond 0), then value = skey1[0]
	cmovn#cond	value, [skey2]				; if (result !cond 0), then value = skey2[0]
	cmov#cond	ptr, [sptr1]				; if (result cond 0), then ptr = sptr1[0]
	cmovn#cond	ptr, [sptr2]				; if (result !cond 0), then ptr = sptr2[0]
	cmov#cond	skey1, [s_sk1p]				; if (result cond 0), then skey1 = skey1 + 1
	cmovn#cond	skey2, [s_sk2p]				; if (result !cond 0), then skey2 = skey2 + 1
	cmov#cond	sptr1, [s_sp1p]				; if (result cond 0), then sptr1 = sptr1 + 1
	cmovn#cond	sptr2, [s_sp2p]				; if (result !cond 0), then sptr2 = sptr2 + 1
	cmov#cond	size1, [s_sz1m]				; if (result cond 0), then size1 = size1 - 1
	cmovn#cond	size2, [s_sz2m]				; if (result !cond 0), then size2 = size2 - 1
		mov		[tkey], value				; tkey[0] = value
		add		tkey, 8						; tkey++
		mov		[tptr], ptr					; tptr[0] = ptr
		add		tptr, 8						; tptr++
		mov		[s_tkey], tkey				; save "tkey" variable into the stack
		mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_skey1], skey1			; save "skey1" variable into the stack
		mov		[s_sptr1], sptr1			; save "sptr1" variable into the stack
		mov		[s_size1], size1			; save "size1" variable into the stack
		mov		[s_skey2], skey2			; save "skey2" variable into the stack
		mov		[s_sptr2], sptr2			; save "sptr2" variable into the stack
		mov		[s_size2], size2			; save "size2" variable into the stack
		test	size1, size1				; if (size1 == 0)
		jz		.copy1						;     then go to copy1 branch
		test	size2, size2				; if (size2 == 0)
		jz		.copy2						;     then go to copy2 branch
		jmp		.loop						; do while (true)
;---[End of merging loop]------------------
.copy1:	mov		param1, [s_tkey]
		mov		param2, [s_skey2]
		mov		param3, [s_size2]
		call	Copy						; call Copy (tkey, skey2, size2)
		mov		param1, [s_tptr]
		mov		param2, [s_sptr2]
		mov		param3, [s_size2]
		mov		value, [s_value]			; restore old value of "value" variable
		mov		ptr, [s_ptr]				; restore old value of "ptr" variable
		add		stack, space				; restoring back the stack pointe
		jmp		Copy						; call Copy (tptr, sptr2, size2)
.copy2:	mov		param1, [s_tkey]
		mov		param2, [s_skey1]
		mov		param3, [s_size1]
		call	Copy						; call Copy (tkey, skey1, size1)
		mov		param1, [s_tptr]
		mov		param2, [s_sptr1]
		mov		param3, [s_size1]
		mov		value, [s_value]			; restore old value of "value" variable
		mov		ptr, [s_ptr]				; restore old value of "ptr" variable
		add		stack, space				; restoring back the stack pointe
		jmp		Copy						; call Copy (tptr, sptr1, size1)
}
MergeKeyAsc:	MERGE_KEY	le
MergeKeyDsc:	MERGE_KEY	ge

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;
macro	CHECK_CORE	c, sort
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of strings
size	equ		rsi							; array size (count of elements)
func	equ		rdx							; pointer to string func function
;---[Internal variables]-------------------
result	equ		rax							; result register
ptr		equ		rcx							; pointer to current element
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		sub		size, 1						; if (--size <= 0)
		jbe		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		ptr, array					; ptr = array
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [ptr + 8]
		mov		param1, [ptr]
		call	qword [s_func]				; result = Compare (ptr[0], ptr[1])
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		cmp		result, 0					; if (result cond 0)
		j#c		.found						;     then go to found branch
		add		ptr, 8						; ptr++
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of search loop]-------------------
.exit:	add		stack, space				; restoring back the stack pointer
		mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
;---[Found branch]---------------------
.found:	mov		result, [s_ptr]				; get "ptr" variable from the stack
if sort
		add		result, 8
end if
		sub		result, [s_array]
		add		stack, space				; restoring back the stack pointer
		shr		result, 3					; return ptr - array
		ret
}

; Check for sort order
CheckSortAsc:	CHECK_CORE	g, 1
CheckSortDsc:	CHECK_CORE	l, 1

; Check for duplicate values
CheckDup:		CHECK_CORE	e, 0

;******************************************************************************;
;       String hashing                                                         ;
;******************************************************************************;
macro	HASH	char, scale
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
;---[Internal variables]-------------------
result	equ		eax							; result register
temp	equ		edx							; temporary register
bytes	= 1 shl scale						; size of string element (bytes)
;------------------------------------------
		xor		result, result				; result = 0
		mov		char, [string]				; char = string[0]
		test	char, char					; if (char == eol)
		jz		.exit						;     then go to exit
;---[Hashing loop]-------------------------
.loop:
i = 0
while i < bytes
		movzx	temp, byte [string + i]		; temp = string[i]
		add		result, temp				; result += temp
		imul 	result, result, 2654435769	; result *= 2654435769
	i = i + 1
end while
		add		string, bytes				; string++
		mov		char, [string]				; char = string[0]
		test	char, char
		jnz		.loop						; do while (char != eol)
;---[End of hashing loop]------------------
.exit:	ret
}
Hash_char8:		HASH	cl, 0
Hash_char16:	HASH	cx, 1
Hash_char32:	HASH	ecx, 2

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

;******************************************************************************;
;       Vector of copy functions                                               ;
;******************************************************************************;
align 16
copytable	dq	Copy0						; Copy 0 bytes function
			dq	Copy1						; Copy 1 byte function
			dq	Copy2						; Copy 2 bytes function
			dq	Copy3						; Copy 3 bytes function
			dq	Copy4						; Copy 4 bytes function
			dq	Copy5						; Copy 5 bytes function
			dq	Copy6						; Copy 6 bytes function
			dq	Copy7						; Copy 7 bytes function
			dq	Copy8						; Copy 8 bytes function
			dq	Copy9						; Copy 9 bytes function
			dq	Copy10						; Copy 10 bytes function
			dq	Copy11						; Copy 11 bytes function
			dq	Copy12						; Copy 12 bytes function
			dq	Copy13						; Copy 13 bytes function
			dq	Copy14						; Copy 14 bytes function
			dq	Copy15						; Copy 15 bytes function
			dq	Copy16						; Copy 16 bytes function
			dq	Copy17						; Copy 17 bytes function
			dq	Copy18						; Copy 18 bytes function
			dq	Copy19						; Copy 19 bytes function
			dq	Copy20						; Copy 20 bytes function
			dq	Copy21						; Copy 21 bytes function
			dq	Copy22						; Copy 22 bytes function
			dq	Copy23						; Copy 23 bytes function
			dq	Copy24						; Copy 24 bytes function
			dq	Copy25						; Copy 25 bytes function
			dq	Copy26						; Copy 26 bytes function
			dq	Copy27						; Copy 27 bytes function
			dq	Copy28						; Copy 28 bytes function
			dq	Copy29						; Copy 29 bytes function
			dq	Copy30						; Copy 30 bytes function
			dq	Copy31						; Copy 31 bytes function
			dq	Copy32						; Copy 32 bytes function

;******************************************************************************;
;       Arrays of masks                                                        ;
;******************************************************************************;
align 16
maskA		dq	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFFFFFF00, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFFFF0000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFF000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFF00000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFF0000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFF000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFF00000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0x0000000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0x0000000000000000, 0xFFFFFFFFFFFFFF00
			dq	0x0000000000000000, 0xFFFFFFFFFFFF0000
			dq	0x0000000000000000, 0xFFFFFFFFFF000000
			dq	0x0000000000000000, 0xFFFFFFFF00000000
			dq	0x0000000000000000, 0xFFFFFF0000000000
			dq	0x0000000000000000, 0xFFFF000000000000
			dq	0x0000000000000000, 0xFF00000000000000

align 16
maskB		dq	0x0000000000000000, 0x0000000000000000
			dq	0x00000000000000FF, 0x0000000000000000
			dq	0x000000000000FFFF, 0x0000000000000000
			dq	0x0000000000FFFFFF, 0x0000000000000000
			dq	0x00000000FFFFFFFF, 0x0000000000000000
			dq	0x000000FFFFFFFFFF, 0x0000000000000000
			dq	0x0000FFFFFFFFFFFF, 0x0000000000000000
			dq	0x00FFFFFFFFFFFFFF, 0x0000000000000000
			dq	0xFFFFFFFFFFFFFFFF, 0x0000000000000000
			dq	0xFFFFFFFFFFFFFFFF, 0x00000000000000FF
			dq	0xFFFFFFFFFFFFFFFF, 0x000000000000FFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x0000000000FFFFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x00000000FFFFFFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x000000FFFFFFFFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x0000FFFFFFFFFFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x00FFFFFFFFFFFFFF

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
