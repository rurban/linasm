;                                                                     String.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                            SAFE STRING FUNCTIONS                            #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################

; Copy function
extrn	'Array_Copy_size'		as	Copy_size

; Boyer-Moore-Horspool pattern hash
extrn	'BMH_uint8'				as	BMH_uint8
extrn	'BMH_uint16'			as	BMH_uint16
extrn	'BMH_uint32'			as	BMH_uint32

; Boyer-Moore-Horspool subsequence searching algorithm
extrn	'Sequence_Find_uint8'	as	BMH_Find_uint8
extrn	'Sequence_Find_uint16'	as	BMH_Find_uint16
extrn	'Sequence_Find_uint32'	as	BMH_Find_uint32

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

;==============================================================================;
;       Searching for single symbol                                            ;
;==============================================================================;

; Forward direction search
public	FindSymbolFwd_char8		as	'String_FindSymbolFwd_char8'
public	FindSymbolFwd_char16	as	'String_FindSymbolFwd_char16'
public	FindSymbolFwd_char32	as	'String_FindSymbolFwd_char32'
public	FindSymbolFwd_char8		as	'_ZN6String13FindSymbolFwdEPKcc'
public	FindSymbolFwd_char16	as	'_ZN6String13FindSymbolFwdEPKss'
public	FindSymbolFwd_char32	as	'_ZN6String13FindSymbolFwdEPKii'

; Backward direction search
public	FindSymbolBwd_char8		as	'String_FindSymbolBwd_char8'
public	FindSymbolBwd_char16	as	'String_FindSymbolBwd_char16'
public	FindSymbolBwd_char32	as	'String_FindSymbolBwd_char32'
public	FindSymbolBwd_char8		as	'_ZN6String13FindSymbolBwdEPKcc'
public	FindSymbolBwd_char16	as	'_ZN6String13FindSymbolBwdEPKss'
public	FindSymbolBwd_char32	as	'_ZN6String13FindSymbolBwdEPKii'

;==============================================================================;
;       Searching for symbols set                                              ;
;==============================================================================;

; Forward direction search
public	FindSymbolsFwd_char8	as	'String_FindSymbolsFwd_char8'
public	FindSymbolsFwd_char16	as	'String_FindSymbolsFwd_char16'
public	FindSymbolsFwd_char32	as	'String_FindSymbolsFwd_char32'
public	FindSymbolsFwd_char8	as	'_ZN6String14FindSymbolsFwdEPKcS1_'
public	FindSymbolsFwd_char16	as	'_ZN6String14FindSymbolsFwdEPKsS1_'
public	FindSymbolsFwd_char32	as	'_ZN6String14FindSymbolsFwdEPKiS1_'

; Backward direction search
public	FindSymbolsBwd_char8	as	'String_FindSymbolsBwd_char8'
public	FindSymbolsBwd_char16	as	'String_FindSymbolsBwd_char16'
public	FindSymbolsBwd_char32	as	'String_FindSymbolsBwd_char32'
public	FindSymbolsBwd_char8	as	'_ZN6String14FindSymbolsBwdEPKcS1_'
public	FindSymbolsBwd_char16	as	'_ZN6String14FindSymbolsBwdEPKsS1_'
public	FindSymbolsBwd_char32	as	'_ZN6String14FindSymbolsBwdEPKiS1_'

;******************************************************************************;
;       Substring search                                                       ;
;******************************************************************************;

;==============================================================================;
;       Searching string for pattern                                           ;
;==============================================================================;

; Forward direction search
public	FindStrStrFwd_char8		as	'String_FindSubStringFwd_char8'
public	FindStrStrFwd_char16	as	'String_FindSubStringFwd_char16'
public	FindStrStrFwd_char32	as	'String_FindSubStringFwd_char32'
public	FindStrStrFwd_char8		as	'_ZN6String16FindSubStringFwdEPKcS1_'
public	FindStrStrFwd_char16	as	'_ZN6String16FindSubStringFwdEPKsS1_'
public	FindStrStrFwd_char32	as	'_ZN6String16FindSubStringFwdEPKiS1_'

; Backward direction search
public	FindStrStrBwd_char8		as	'String_FindSubStringBwd_char8'
public	FindStrStrBwd_char16	as	'String_FindSubStringBwd_char16'
public	FindStrStrBwd_char32	as	'String_FindSubStringBwd_char32'
public	FindStrStrBwd_char8		as	'_ZN6String16FindSubStringBwdEPKcS1_'
public	FindStrStrBwd_char16	as	'_ZN6String16FindSubStringBwdEPKsS1_'
public	FindStrStrBwd_char32	as	'_ZN6String16FindSubStringBwdEPKiS1_'

;==============================================================================;
;       Searching characters sequence for pattern                              ;
;==============================================================================;

; Forward direction search
public	FindSeqStrFwd_char8		as	'String_FindSubStringNFwd_char8'
public	FindSeqStrFwd_char16	as	'String_FindSubStringNFwd_char16'
public	FindSeqStrFwd_char32	as	'String_FindSubStringNFwd_char32'
public	FindSeqStrFwd_char8		as	'_ZN6String16FindSubStringFwdEPKcmS1_'
public	FindSeqStrFwd_char16	as	'_ZN6String16FindSubStringFwdEPKsmS1_'
public	FindSeqStrFwd_char32	as	'_ZN6String16FindSubStringFwdEPKimS1_'

; Backward direction search
public	FindSeqStrBwd_char8		as	'String_FindSubStringNBwd_char8'
public	FindSeqStrBwd_char16	as	'String_FindSubStringNBwd_char16'
public	FindSeqStrBwd_char32	as	'String_FindSubStringNBwd_char32'
public	FindSeqStrBwd_char8		as	'_ZN6String16FindSubStringBwdEPKcmS1_'
public	FindSeqStrBwd_char16	as	'_ZN6String16FindSubStringBwdEPKsmS1_'
public	FindSeqStrBwd_char32	as	'_ZN6String16FindSubStringBwdEPKimS1_'

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

;******************************************************************************;
;       Insertion sort                                                         ;
;******************************************************************************;

; Ascending sort order
public	InsertSortKeyAsc		as	'String_InsertSortKeyAsc_char8'
public	InsertSortKeyAsc		as	'String_InsertSortKeyAsc_char16'
public	InsertSortKeyAsc		as	'String_InsertSortKeyAsc_char32'
public	InsertSortKeyAsc		as	'_ZN6String16InsertSortKeyAscEPPKcPPKvmPFxS1_S1_E'
public	InsertSortKeyAsc		as	'_ZN6String16InsertSortKeyAscEPPKsPPKvmPFxS1_S1_E'
public	InsertSortKeyAsc		as	'_ZN6String16InsertSortKeyAscEPPKiPPKvmPFxS1_S1_E'

; Descending sort order
public	InsertSortKeyDsc		as	'String_InsertSortKeyDsc_char8'
public	InsertSortKeyDsc		as	'String_InsertSortKeyDsc_char16'
public	InsertSortKeyDsc		as	'String_InsertSortKeyDsc_char32'
public	InsertSortKeyDsc		as	'_ZN6String16InsertSortKeyDscEPPKcPPKvmPFxS1_S1_E'
public	InsertSortKeyDsc		as	'_ZN6String16InsertSortKeyDscEPPKsPPKvmPFxS1_S1_E'
public	InsertSortKeyDsc		as	'_ZN6String16InsertSortKeyDscEPPKiPPKvmPFxS1_S1_E'

;******************************************************************************;
;       Quick sort                                                             ;
;******************************************************************************;

; Ascending sort order
public	QuickSortKeyAsc			as	'String_QuickSortKeyAsc_char8'
public	QuickSortKeyAsc			as	'String_QuickSortKeyAsc_char16'
public	QuickSortKeyAsc			as	'String_QuickSortKeyAsc_char32'
public	QuickSortKeyAsc			as	'_ZN6String15QuickSortKeyAscEPPKcPPKvmPFxS1_S1_E'
public	QuickSortKeyAsc			as	'_ZN6String15QuickSortKeyAscEPPKsPPKvmPFxS1_S1_E'
public	QuickSortKeyAsc			as	'_ZN6String15QuickSortKeyAscEPPKiPPKvmPFxS1_S1_E'

; Descending sort order
public	QuickSortKeyDsc			as	'String_QuickSortKeyDsc_char8'
public	QuickSortKeyDsc			as	'String_QuickSortKeyDsc_char16'
public	QuickSortKeyDsc			as	'String_QuickSortKeyDsc_char32'
public	QuickSortKeyDsc			as	'_ZN6String15QuickSortKeyDscEPPKcPPKvmPFxS1_S1_E'
public	QuickSortKeyDsc			as	'_ZN6String15QuickSortKeyDscEPPKsPPKvmPFxS1_S1_E'
public	QuickSortKeyDsc			as	'_ZN6String15QuickSortKeyDscEPPKiPPKvmPFxS1_S1_E'

;******************************************************************************;
;       Merge sort                                                             ;
;******************************************************************************;

; Ascending sort order
public	MergeSortKeyAsc			as	'String_MergeSortKeyAsc_char8'
public	MergeSortKeyAsc			as	'String_MergeSortKeyAsc_char16'
public	MergeSortKeyAsc			as	'String_MergeSortKeyAsc_char32'
public	MergeSortKeyAsc			as	'_ZN6String15MergeSortKeyAscEPPKcS2_PPKvS5_mPFxS1_S1_E'
public	MergeSortKeyAsc			as	'_ZN6String15MergeSortKeyAscEPPKsS2_PPKvS5_mPFxS1_S1_E'
public	MergeSortKeyAsc			as	'_ZN6String15MergeSortKeyAscEPPKiS2_PPKvS5_mPFxS1_S1_E'

; Descending sort order
public	MergeSortKeyDsc			as	'String_MergeSortKeyDsc_char8'
public	MergeSortKeyDsc			as	'String_MergeSortKeyDsc_char16'
public	MergeSortKeyDsc			as	'String_MergeSortKeyDsc_char32'
public	MergeSortKeyDsc			as	'_ZN6String15MergeSortKeyDscEPPKcS2_PPKvS5_mPFxS1_S1_E'
public	MergeSortKeyDsc			as	'_ZN6String15MergeSortKeyDscEPPKsS2_PPKvS5_mPFxS1_S1_E'
public	MergeSortKeyDsc			as	'_ZN6String15MergeSortKeyDscEPPKiS2_PPKvS5_mPFxS1_S1_E'

;******************************************************************************;
;       Merging of sorted strings                                              ;
;******************************************************************************;

; Ascending sort order
public	MergeKeyAsc				as	'String_MergeKeyAsc_char8'
public	MergeKeyAsc				as	'String_MergeKeyAsc_char16'
public	MergeKeyAsc				as	'String_MergeKeyAsc_char32'
public	MergeKeyAsc				as	'_ZN6String11MergeKeyAscEPPKcPPKvPPKcPPKvmS6_S9_mPFxS5_S5_E'
public	MergeKeyAsc				as	'_ZN6String11MergeKeyAscEPPKsPPKvPPKsPPKvmS6_S9_mPFxS5_S5_E'
public	MergeKeyAsc				as	'_ZN6String11MergeKeyAscEPPKiPPKvPPKiPPKvmS6_S9_mPFxS5_S5_E'

; Descending sort order
public	MergeKeyDsc				as	'String_MergeKeyDsc_char8'
public	MergeKeyDsc				as	'String_MergeKeyDsc_char16'
public	MergeKeyDsc				as	'String_MergeKeyDsc_char32'
public	MergeKeyDsc				as	'_ZN6String11MergeKeyDscEPPKcPPKvPPKcPPKvmS6_S9_mPFxS5_S5_E'
public	MergeKeyDsc				as	'_ZN6String11MergeKeyDscEPPKsPPKvPPKsPPKvmS6_S9_mPFxS5_S5_E'
public	MergeKeyDsc				as	'_ZN6String11MergeKeyDscEPPKiPPKvPPKiPPKvmS6_S9_mPFxS5_S5_E'

;******************************************************************************;
;       String hashing                                                         ;
;******************************************************************************;

; 32-bit hash functions
public	Hash32_char8			as	'String_Hash32_char8'
public	Hash32_char16			as	'String_Hash32_char16'
public	Hash32_char32			as	'String_Hash32_char32'
public	Hash32_char8			as	'_ZN6String6Hash32EPKc'
public	Hash32_char16			as	'_ZN6String6Hash32EPKs'
public	Hash32_char32			as	'_ZN6String6Hash32EPKi'

; 64-bit hash functions
public	Hash64_char8			as	'String_Hash64_char8'
public	Hash64_char16			as	'String_Hash64_char16'
public	Hash64_char32			as	'String_Hash64_char32'
public	Hash64_char8			as	'_ZN6String6Hash64EPKc'
public	Hash64_char16			as	'_ZN6String6Hash64EPKs'
public	Hash64_char32			as	'_ZN6String6Hash64EPKi'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

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
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
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
if scale
		test	string, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
;---[Normal execution branch]--------------
		mov		shft, string
		and		shft, VMASK					; get string offset from vector boundary
		sub		string, shft				; align pointer to vector boundary
;---[Unaligned search for eol]-------------
		sub		index, shft					; index -= shft
		mov		cmask, VBITS
		shl		cmask, low					; adjust cmask for unaligned search
		pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string]			; check string[0] for end of line
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, cmask				; if eof is found
		jnz		.brk						;     then return string length
		add		index, VSIZE				; index += VSIZE
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string + % * VSIZE]; check string[i] for end of line
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
end repeat
		add		string, CLINE				; string += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		emask, emask				; find index of first occurence of eol
		add		index, emask				; index += emask
		shftr	index, scale				; return index
		ret
if scale
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
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
cmask	equ		r8							; mask to clear unrequired results
emask	equ		r9							; result of eol search
ptr1	equ		r10							; temporary pointer to target string
ptr2	equ		r11							; temporary pointer to source string
size	equ		cmask						; string size (bytes)
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
if scale
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
;---[Normal execution branch]--------------
		mov		shft, source
		and		shft, VMASK					; get string offset from vector boundary
		sub		ptr2, shft					; ptr2 = source - shft
		sub		ptr1, shft					; ptr1 = target - shft
		shftl	maxlen, scale				; convert maxlen to bytes
;---[Unaligned copy]-----------------------
		add		maxlen, shft				; maxlen += shft
		sub		index, shft					; index -= shft
		mov		cmask, VBITS
		shl		cmask, low					; adjust cmask for unaligned search
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
.vloop:
repeat	CLINE / VSIZE
		movdqu	[ptr1 + % * VSIZE], sdata1	; ptr1[i] = ptr2[i]
		movdqa	sdata0, [ptr2 + (%+1)*VSIZE]; sdata0 = ptr2[i+1]
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, sdata0				; check ptr2[i+1] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen < VSIZE)
		jb		.nospc						;     then go to no space branch
end repeat
		add		ptr2, CLINE					; ptr2 += CLINE
		add		ptr1, CLINE					; ptr1 += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk0:	bsf		emask, emask				; find index of first occurence of eol
		cmp		maxlen, emask				; if (maxlen < emask)
		jb		.nospc						;     then go to no space branch
		add		index, emask				; index += emask
		mov		size, index					; size = index
		seteol	(target + index), x			; put eol symbol into target string
;---[Scalar loop]--------------------------
.sclr:	mov		char, [source]				; reg = source[0]
		mov		[target], char				; target[0] = reg
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, bytes					; size--
		jnz		.sclr						; do while (size != 0)
;---[End of scalar loop]-------------------
		shftr	index, scale				; return index
		ret
;---[Loop break branch]--------------------
.brk1:	bsf		emask, emask				; find index of first occurence of eol
		cmp		maxlen, emask				; if (maxlen < emask)
		jb		.nospc						;     then go to no space branch
		add		index, emask				; index += emask
		movdqu	sdata0, [source + index - VSIZE + 1]
		movdqu	[target + index - VSIZE + 1], sdata0
		shftr	index, scale				; return index
		ret
if scale
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
		mov		index, ERROR				; return ERROR
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
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
cmask	equ		r8							; mask to clear unrequired results
emask	equ		r9							; result of eol search
ptr1	equ		r10							; temporary pointer to target string
ptr2	equ		r11							; temporary pointer to source string
size	equ		cmask						; string size (bytes)
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
if scale
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
;---[Normal execution branch]--------------
		mov		shft, source
		and		shft, VMASK					; get string offset from vector boundary
		sub		ptr2, shft					; ptr2 = source - shft
		sub		ptr1, shft					; ptr1 = target - shft
		shftl	maxlen, scale				; convert maxlen to bytes
;---[Unaligned copy]-----------------------
		add		maxlen, shft				; maxlen += shft
		sub		index, shft					; index -= shft
		mov		cmask, VBITS
		shl		cmask, low					; adjust cmask for unaligned search
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
.vloop:
repeat	CLINE / VSIZE
		movdqu	[ptr1 + % * VSIZE], sdata1	; ptr1[i] = ptr2[i]
		movdqa	sdata0, [ptr2 + (%+1)*VSIZE]; sdata0 = ptr2[i+1]
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, sdata0				; check ptr2[i+1] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen <= VSIZE)
		jbe		.tail1						;     then copy maxlen elements from source
end repeat
		add		ptr2, CLINE					; ptr2 += CLINE
		add		ptr1, CLINE					; ptr1 += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk0:	bsf		emask, emask				; find index of first occurence of eol
		cmp		maxlen, emask				; if (maxlen > emask)
		cmova	maxlen, emask				;     maxlen = emask
.tail0:	add		index, maxlen				; index += maxlen
		mov		size, index					; size = index
		seteol	(target + index), x			; put eol symbol into target string
;---[Scalar loop]--------------------------
.sclr:	mov		char, [source]				; reg = source[0]
		mov		[target], char				; target[0] = reg
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, bytes					; size--
		jnz		.sclr						; do while (size != 0)
;---[End of scalar loop]-------------------
		shftr	index, scale				; return index
		ret
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
if scale
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
		mov		index, ERROR				; return ERROR
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
Length	= Len_char8							; string length function
CopyStr	= CopyStr_char8						; string copy function
scale	= 0									; scale value
else if x eq w
Length	= Len_char16						; string length function
CopyStr	= CopyStr_char16					; string copy function
scale	= 1									; scale value
else if x eq d
Length	= Len_char32						; string length function
CopyStr	= CopyStr_char32					; string copy function
scale	= 2									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_trgt], target			; save "target" variable into the stack
		mov		[s_mlen], maxlen			; save "maxlen" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		call	Length						; len = Len (target)
		mov		maxlen, [s_mlen]			; get "maxlen" variable from the stack
		sub		maxlen, result				; if (maxlen - len < 0)
		jb		.nospc						;     then go to no space branch
		mov		target, [s_trgt]
		lea		target, [target + result * bytes]
		mov		source, [s_src]
		add		stack, space				; restoring back the stack pointer
		jmp		CopyStr						; return CopyStr (target + len, maxlen - len, source)
;---[No space branch]----------------------
.nospc:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
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
Length	= Len_char8							; string length function
CopyStr	= CopySeq_char8						; string copy function
scale	= 0									; scale value
else if x eq w
Length	= Len_char16						; string length function
CopyStr	= CopySeq_char16					; string copy function
scale	= 1									; scale value
else if x eq d
Length	= Len_char32						; string length function
CopyStr	= CopySeq_char32					; string copy function
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
		call	Length						; len = Len (target)
		mov		maxlen, [s_mlen]			; get "maxlen" variable from the stack
		sub		maxlen, result				; if (maxlen - len < 0)
		jb		.nospc						;     then go to no space branch
		mov		target, [s_trgt]
		lea		target, [target + result * bytes]
		mov		source, [s_src]
		mov		size, [s_size]
		add		stack, space				; restoring back the stack pointer
		jmp		CopyStr						; return CopyStr (target + len, maxlen - len, source, size)
;---[No space branch]----------------------
.nospc:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
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
		cmp		string1, string2			; if (string1 == string2)
		je		.equal						;     then go to equal branch
if scale
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
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + % * VSIZE]	; s1temp = ptr1[i]
		movdqa	s2temp, [ptr2 + % * VSIZE]	; s2temp = ptr2[i]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[i] == ptr2[i]
	pcmpeq#x	s2temp, eol					; check ptr2[i] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if ptr1[i] != ptr2[i] or eol is found
		jnz		.brk1						;     then break the loop
end repeat
		add		ptr1, CLINE					; ptr1 += CLINE
		add		ptr2, CLINE					; ptr2 += CLINE
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
if scale
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
;---[Equal branch]-------------------------
.equal:	xor		index, index				; return 0
		ret
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
		cmp		string1, string2			; if (string1 == string2)
		je		.equal						;     then go to equal branch
		test	size, size					; if (size == 0)
		jz		.skip						;     then skip following code
if scale
		test	string1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	string2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		cmp		size, VSIZE / bytes			; if (size < VSIZE / bytes)
		jb		.sloop						;     then skip vector code
		shftl	size, scale					; convert size to bytes
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
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + % * VSIZE]	; s1temp = ptr1[i]
		movdqa	s2temp, [ptr2 + % * VSIZE]	; s2temp = ptr2[i]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[i] == ptr2[i]
	pcmpeq#x	s2temp, eol					; check ptr2[i] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, VBITS				; if ptr1[i] != ptr2[i] or eol is found
		jnz		.brk1						;     then break the loop
end repeat
		add		ptr1, CLINE					; ptr1 += CLINE
		add		ptr2, CLINE					; ptr2 += CLINE
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
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
.exit:	seta	res1						; if (string1[0] > string2[0]), then res1 = 1
		setb	res2						; if (string1[0] < string2[0]), then res2 = 1
		sub		res1, res2					; return res1 - res2
		movsx	index, res1
		ret
;---[Skip branch]--------------------------
.skip:	xor		char, char					; char = 0
		cmp		[string1], char
		seta	res1						; if (string1[0] > 0), then res1 = 1
		setb	res2						; if (string1[0] < 0), then res2 = 1
		sub		res1, res2					; return res1 - res2
		movsx	index, res1
		ret
;---[Equal branch]-------------------------
.equal:	xor		index, index				; return 0
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

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_SYMBOL_FWD	symbol, char, x
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
psymbol	equ		rsi							; register which holds symbol
;---[Internal variables]-------------------
result	equ		rax							; result register
shft	equ		rcx							; shift value
table	equ		r8							; pointer to blending table
index	equ		r9							; index of first occurence of pattern
emask	equ		r10							; result of eol search
fmask	equ		r11							; result of pattern search
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
		mov		result, NOT_FOUND			; result = NOT_FOUND
		test	symbol, symbol				; if (symbol == eol)
		jz		.exit						;     then go to exit
		xor		index, index				; index = 0
if scale
		test	string, bmask				; if elements have wrong alignment
		jnz		.skip						;     then skip vector code
end if
;---[Normal execution branch]--------------
		movq	pattern, psymbol			; pattern = symbol
		clone	pattern, scale				; duplicate value through the entire register
		mov		shft, string
		and		shft, VMASK					; get string offset from vector boundary
		sub		string, shft				; align pointer to vector boundary
		pxor	eol, eol					; eol = 0
;---[Unaligned search for pattern]---------
		sub		index, shft					; index -= shft
		shl		shft, VSCALE				; compute shift in mask array
		lea		table, [maskA]				; set pointer to blending table
		movdqa	cmask, [table + shft]
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
.vloop:
repeat	CLINE / VSIZE
		movdqa	echeck, [string + % * VSIZE]; echeck = string[i]
		movdqa	pcheck, echeck				; pcheck = string[i]
	pcmpeq#x	echeck, eol					; check string[i] for end of line
	pcmpeq#x	pcheck, pattern				; check string[i] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
end repeat
		add		string, CLINE				; string += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:pmovmskb	fmask, pcheck				; save check results to fmask
		xor		emask, fmask				; if ((emask ^ fmask) == 0)
		jz		.patt						;     then go to pattern found branch
		sub		emask, 1					; emask--
		and		fmask, emask				; clear non required bits in fmask
		bsf		fmask, fmask				; find index of first occurence of pattern
		jz		@f							; if pattern is not found, then go to exit
		add		index, fmask				; index += fmask
		shftr	index, scale
		mov		result, index				; result = index
@@:		ret									; return result
;---[Pattern found branch]-----------------
.patt:	bsf		fmask, fmask				; find index of first occurence of pattern
		add		index, fmask				; index += fmask
		shftr	index, scale
		mov		result, index				; result = index
		ret									; return result
if scale
;---[Scalar loop]--------------------------
.sloop:	cmp		char, symbol				; if (char == symbol)
		cmove	result, index				;     result = index
		je		.exit						;     then go to exit
		add		index, 1					; index++
		add		string, bytes				; string++
.skip:	mov		char, [string]				; char = string[0]
		test	char, char
		jnz		.sloop						; do while (char != 0)
;---[End of scalar loop]-------------------
end if
;---[Not found branch]---------------------
.exit:	ret									; return result
}
FindSymbolFwd_char8:	FIND_SYMBOL_FWD	sil, cl, b
FindSymbolFwd_char16:	FIND_SYMBOL_FWD	si, cx, w
FindSymbolFwd_char32:	FIND_SYMBOL_FWD	esi, ecx, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_SYMBOL_BWD	symbol, char, x
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
psymbol	equ		rsi							; register which holds symbol
;---[Internal variables]-------------------
result	equ		rax							; result register
shft	equ		rcx							; shift value
table	equ		r8							; pointer to blending table
index	equ		r9							; index of first occurence of pattern
emask	equ		r10							; result of eol search
fmask	equ		r11							; result of pattern search
back	equ		table						; back address
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
		mov		result, NOT_FOUND			; result = NOT_FOUND
		test	symbol, symbol				; if (symbol == eol)
		jz		.exit						;     then go to exit
		xor		index, index				; index = 0
if scale
		test	string, bmask				; if elements have wrong alignment
		jnz		.skip						;     then skip vector code
end if
;---[Normal execution branch]--------------
		movq	pattern, psymbol			; pattern = symbol
		clone	pattern, scale				; duplicate value through the entire register
		mov		shft, string
		and		shft, VMASK					; get string offset from vector boundary
		sub		string, shft				; align pointer to vector boundary
		pxor	eol, eol					; eol = 0
;---[Unaligned search for pattern]---------
		sub		index, shft					; index -= shft
		shl		shft, VSCALE				; compute shift in mask array
		lea		table, [maskA]				; set pointer to blending table
		movdqa	cmask, [table + shft]
		movdqa	echeck, [string]			; echeck = string[0]
		movdqa	pcheck, echeck				; pcheck = string[0]
	pcmpeq#x	echeck, eol					; check string[0] for end of line
	pcmpeq#x	pcheck, pattern				; check string[0] for symbol
		pand	echeck, cmask				; apply cmask to eol search results
		pand	pcheck, cmask				; apply cmask to pattern search results
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		lea		back, [.back0]				; save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back0:	add		index, VSIZE				; index += VSIZE
;---[Vector loop]--------------------------
.vloop:	movdqa	echeck, [string + 1 * VSIZE]; echeck = string[1]
		movdqa	pcheck, echeck				; pcheck = string[1]
	pcmpeq#x	echeck, eol					; check string[1] for end of line
	pcmpeq#x	pcheck, pattern				; check string[1] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		lea		back, [.back1]				; save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back1:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [string + 2 * VSIZE]; echeck = string[2]
		movdqa	pcheck, echeck				; pcheck = string[2]
	pcmpeq#x	echeck, eol					; check string[2] for end of line
	pcmpeq#x	pcheck, pattern				; check string[2] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		lea		back, [.back2]				; save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back2:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [string + 3 * VSIZE]; echeck = string[3]
		movdqa	pcheck, echeck				; pcheck = string[3]
	pcmpeq#x	echeck, eol					; check string[3] for end of line
	pcmpeq#x	pcheck, pattern				; check string[3] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		lea		back, [.back3]				; save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back3:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [string + 4 * VSIZE]; echeck = string[4]
		movdqa	pcheck, echeck				; pcheck = string[4]
	pcmpeq#x	echeck, eol					; check string[4] for end of line
	pcmpeq#x	pcheck, pattern				; check string[4] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		lea		back, [.back4]				; save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back4:	add		index, VSIZE				; index += VSIZE
		add		string, CLINE				; string += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:pmovmskb	fmask, pcheck				; save check results to fmask
		xor		emask, fmask				; if ((emask ^ fmask) == 0)
		jz		.patt						;     then go to pattern found branch
		sub		emask, 1					; emask--
		and		fmask, emask				; clear non required bits in fmask
		bsr		fmask, fmask				; find index of first occurence of pattern
		jz		@f							; if pattern is not found, then go to exit
		add		index, fmask				; index += fmask
		shftr	index, scale
		mov		result, index				; result = index
@@:		ret									; return result
;---[Pattern found branch]-----------------
.patt:	bsr		fmask, fmask				; find index of first occurence of pattern
		add		index, fmask				; index += fmask
		shftr	index, scale
		mov		result, index				; result = index
		jmp		back						; go back into the search loop
if scale
;---[Scalar loop]--------------------------
.sloop:	cmp		char, symbol				; if (char == symbol)
		cmove	result, index				;     result = index
		add		index, 1					; index++
		add		string, bytes				; string++
.skip:	mov		char, [string]				; char = string[0]
		test	char, char
		jnz		.sloop						; do while (char != 0)
;---[End of scalar loop]-------------------
end if
;---[Not found branch]---------------------
.exit:	ret									; return result
}
FindSymbolBwd_char8:	FIND_SYMBOL_BWD	sil, cl, b
FindSymbolBwd_char16:	FIND_SYMBOL_BWD	si, cx, w
FindSymbolBwd_char32:	FIND_SYMBOL_BWD	esi, ecx, d

;==============================================================================;
;       Searching for symbols set                                              ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_SYMBOLS_FWD	symbol, char, x
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
symbols	equ		rsi							; symbols to find
;---[Internal variables]-------------------
result	equ		rax							; result register
shft	equ		rcx							; shift value
pindex	equ		rdx							; pattern table index
wchar	equ		rcx							; register which holds char value
index	equ		r8							; index of first occurence of pattern
emask	equ		r9							; result of eol search
fmask	equ		r10							; result of pattern search
size	equ		r11							; size of pattern table
ptr		equ		size						; temporary pointer
tsize	equ		symbols						; count of patterns to check
table	equ		symbols						; pointer to blending table
pcheck	equ		xmm0						; pattern check mask
echeck	equ		xmm1						; eol check mask
eol		equ		xmm2						; end of line
pattern	equ		xmm3						; pattern to find
cmask	equ		xmm4						; mask to clear unrequired results
stack	equ		rsp							; stack pointer
ptable	equ		stack						; pattern table
s_str	equ		stack + 0 * 8				; stack position of "string" variable
s_smbls	equ		stack + 1 * 8				; stack position of "symbols" variable
if x eq b
Length	= Len_char8							; string length function
scale	= 0									; scale value
else if x eq w
Length	= Len_char16						; string length function
scale	= 1									; scale value
else if x eq d
Length	= Len_char32						; string length function
scale	= 2									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		mov		result, NOT_FOUND			; result = NOT_FOUND
		mov		symbol, [symbols]			; symbol = symbols[0]
		test	symbol, symbol				; if (symbol == eol)
		jz		.exit						;     then go to exit
		xor		index, index				; index = 0
if scale
		test	string, bmask				; if elements have wrong alignment
		jnz		.skip						;     then skip vector code
end if
;---[Creating pattern table]---------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_smbls], symbols			; save "symbols" variable into the stack
		mov		param1, symbols
		call	Length						; result = Len (symbols)
		shl		result, VSCALE
		mov		size, result				; size = result
		mov		string, [s_str]				; get "string" variable from the stack
		mov		symbols, [s_smbls]			; get "symbols" variable from the stack
		sub		stack, result				; get space for pattern table
		xor		pindex, pindex				; pindex = 0
;---[Filling pattern table]----------------
.ploop:	mov		char, [symbols]
		movq	pattern, wchar				; pattern = char
		clone	pattern, scale				; duplicate value through the entire register
		movdqa	[ptable + pindex], pattern	; ptable[pindex] = pattern
		add		symbols, bytes				; symbols++
		add		pindex, VSIZE				; pindex++
		sub		result, VSIZE				; result--
		jnz		.ploop						; do while (result != 0)
;---[Normal execution branch]--------------
		mov		result, NOT_FOUND			; result = NOT_FOUND
		xor		index, index				; index = 0
		mov		shft, string
		and		shft, VMASK					; get string offset from vector boundary
		sub		string, shft				; align pointer to vector boundary
		pxor	eol, eol					; eol = 0
;---[Unaligned search for pattern]---------
		sub		index, shft					; index -= shft
		shl		shft, VSCALE				; compute shift in mask array
		lea		table, [maskA]				; set pointer to blending table
		movdqa	cmask, [table + shft]
		movdqa	echeck, [string]			; echeck = string[0]
		pxor	pcheck, pcheck				; pcheck = 0
		xor		pindex, pindex				; pindex = 0
		mov		tsize, size					; tsize = size
;---[Pattern matching loop]----------------
.loop1:	movdqa	pattern, [ptable + pindex]	; pattern = ptable[pindex]
	pcmpeq#x	pattern, echeck				; check string[0] for symbol
		por		pcheck, pattern				; add patern matching mask to pcheck
		add		pindex, VSIZE				; pindex++
		sub		tsize, VSIZE				; tsize--
		jnz		.loop1						; do while (tsize != 0)
;---[End of pattern matching loop]---------
	pcmpeq#x	echeck, eol					; check string[0] for end of line
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
.loop2:	movdqa	pattern, [ptable + pindex]	; pattern = ptable[pindex]
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
.brk:pmovmskb	fmask, pcheck				; save check results to fmask
		xor		emask, fmask				; if ((emask ^ fmask) == 0)
		jz		.patt						;     then go to pattern found branch
		sub		emask, 1					; emask--
		and		fmask, emask				; clear non required bits in fmask
		bsf		fmask, fmask				; find index of first occurence of pattern
		jz		@f							; if pattern is not found, then go to exit
		add		index, fmask				; index += fmask
		shftr	index, scale
		mov		result, index				; result = index
@@:		add		size, space					; size += space
		add		stack, size					; restoring back the stack pointer
		ret
;---[Pattern found branch]-----------------
.patt:	bsf		fmask, fmask				; find index of first occurence of pattern
		add		index, fmask				; index += fmask
		shftr	index, scale
		mov		result, index				; result = index
		add		size, space					; size += space
		add		stack, size					; restoring back the stack pointer
		ret									; return result
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		ptr, symbols				; ptr = symbols
		mov		symbol, [ptr]				; symbol = ptr[0]
;---[Search loop]--------------------------
.iloop:	cmp		char, symbol				; if (char == symbol)
		cmove	result, index				;     result = index
		je		.exit						;     then go to exit
		add		ptr, bytes					; ptr++
		mov		symbol, [ptr]				; symbol = ptr[0]
		test	symbol, symbol
		jnz		.iloop						; do while (symbol)
;---[End of search loop]-------------------
		add		index, 1					; index++
		add		string, bytes				; string++
.skip:	mov		char, [string]				; char = string[0]
		test	char, char
		jnz		.sloop						; do while (char != 0)
;---[End of scalar loop]-------------------
end if
;---[Not found branch]---------------------
.exit:	ret
}
FindSymbolsFwd_char8:	FIND_SYMBOLS_FWD	dl, cl, b
FindSymbolsFwd_char16:	FIND_SYMBOLS_FWD	dx, cx, w
FindSymbolsFwd_char32:	FIND_SYMBOLS_FWD	edx, ecx, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_SYMBOLS_BWD	symbol, char, x
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
symbols	equ		rsi							; symbols to find
;---[Internal variables]-------------------
result	equ		rax							; result register
shft	equ		rcx							; shift value
pindex	equ		rdx							; pattern table index
wchar	equ		rcx							; register which holds char value
index	equ		r8							; index of first occurence of pattern
emask	equ		r9							; result of eol search
fmask	equ		r10							; result of pattern search
size	equ		r11							; size of pattern table
ptr		equ		size						; temporary pointer
tsize	equ		symbols						; count of patterns to check
table	equ		symbols						; pointer to blending table
pcheck	equ		xmm0						; pattern check mask
echeck	equ		xmm1						; eol check mask
eol		equ		xmm2						; end of line
pattern	equ		xmm3						; pattern to find
cmask	equ		xmm4						; mask to clear unrequired results
stack	equ		rsp							; stack pointer
ptable	equ		stack						; pattern table
s_str	equ		stack + 0 * 8				; stack position of "string" variable
s_smbls	equ		stack + 1 * 8				; stack position of "symbols" variable
if x eq b
Length	= Len_char8							; string length function
scale	= 0									; scale value
else if x eq w
Length	= Len_char16						; string length function
scale	= 1									; scale value
else if x eq d
Length	= Len_char32						; string length function
scale	= 2									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		mov		result, NOT_FOUND			; result = NOT_FOUND
		mov		symbol, [symbols]			; symbol = symbols[0]
		test	symbol, symbol				; if (symbol == eol)
		jz		.exit						;     then go to exit
		xor		index, index				; index = 0
if scale
		test	string, bmask				; if elements have wrong alignment
		jnz		.skip						;     then skip vector code
end if
;---[Creating pattern table]---------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_smbls], symbols			; save "symbols" variable into the stack
		mov		param1, symbols
		call	Length						; result = Len (symbols)
		shl		result, VSCALE
		mov		size, result				; size = result
		mov		string, [s_str]				; get "string" variable from the stack
		mov		symbols, [s_smbls]			; get "symbols" variable from the stack
		sub		stack, result				; get space for pattern table
		xor		pindex, pindex				; pindex = 0
;---[Filling pattern table]----------------
.ploop:	mov		char, [symbols]
		movq	pattern, wchar				; pattern = char
		clone	pattern, scale				; duplicate value through the entire register
		movdqa	[ptable + pindex], pattern	; ptable[pindex] = pattern
		add		symbols, bytes				; symbols++
		add		pindex, VSIZE				; pindex++
		sub		result, VSIZE				; result--
		jnz		.ploop						; do while (result != 0)
;---[Normal execution branch]--------------
		mov		result, NOT_FOUND			; result = NOT_FOUND
		xor		index, index				; index = 0
		mov		shft, string
		and		shft, VMASK					; get string offset from vector boundary
		sub		string, shft				; align pointer to vector boundary
		pxor	eol, eol					; eol = 0
;---[Unaligned search for pattern]---------
		sub		index, shft					; index -= shft
		shl		shft, VSCALE				; compute shift in mask array
		lea		table, [maskA]				; set pointer to blending table
		movdqa	cmask, [table + shft]
		movdqa	echeck, [string]			; echeck = string[0]
		pxor	pcheck, pcheck				; pcheck = 0
		xor		pindex, pindex				; pindex = 0
		mov		tsize, size					; tsize = size
;---[Pattern matching loop]----------------
.loop1:	movdqa	pattern, [ptable + pindex]	; pattern = ptable[pindex]
	pcmpeq#x	pattern, echeck				; check string[0] for symbol
		por		pcheck, pattern				; add patern matching mask to pcheck
		add		pindex, VSIZE				; pindex++
		sub		tsize, VSIZE				; tsize--
		jnz		.loop1						; do while (tsize != 0)
;---[End of pattern matching loop]---------
	pcmpeq#x	echeck, eol					; check string[0] for end of line
		pand	echeck, cmask				; apply cmask to eol search results
		pand	pcheck, cmask				; apply cmask to pattern search results
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk0						;     then break the loop
.back0:	add		index, VSIZE				; index += VSIZE
;---[Vector loop]--------------------------
.vloop:	movdqa	echeck, [string + 1 * VSIZE]; echeck = string[1]
		pxor	pcheck, pcheck				; pcheck = 0
		xor		pindex, pindex				; pindex = 0
		mov		tsize, size					; tsize = size
;---[Pattern matching loop]----------------
.loop2:	movdqa	pattern, [ptable + pindex]	; pattern = ptable[pindex]
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
		jnz		.brk1						;     then break the loop
.back1:	add		index, VSIZE				; index += VSIZE
		add		string, VSIZE				; string += VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk0:pmovmskb	fmask, pcheck				; save check results to fmask
		xor		emask, fmask				; if ((emask ^ fmask) == 0)
		jz		.patt0						;     then go to pattern found branch
		sub		emask, 1					; emask--
		and		fmask, emask				; clear non required bits in fmask
		bsr		fmask, fmask				; find index of first occurence of pattern
		jz		@f							; if pattern is not found, then go to exit
		add		index, fmask				; index += fmask
		shftr	index, scale
		mov		result, index				; result = index
@@:		add		size, space					; size += space
		add		stack, size					; restoring back the stack pointer
		ret
;---[Pattern found branch #1]--------------
.patt0:	bsr		fmask, fmask				; find index of first occurence of pattern
		add		index, fmask				; index += fmask
		shftr	index, scale
		mov		result, index				; result = index
		jmp		.back0						; go back into the search loop
;---[Break loop branch #2]-----------------
.brk1:pmovmskb	fmask, pcheck				; save check results to fmask
		xor		emask, fmask				; if ((emask ^ fmask) == 0)
		jz		.patt1						;     then go to pattern found branch
		sub		emask, 1					; emask--
		and		fmask, emask				; clear non required bits in fmask
		bsr		fmask, fmask				; find index of first occurence of pattern
		jz		@f							; if pattern is not found, then go to exit
		add		index, fmask				; index += fmask
		shftr	index, scale
		mov		result, index				; result = index
@@:		add		size, space					; size += space
		add		stack, size					; restoring back the stack pointer
		ret
;---[Pattern found branch #2]--------------
.patt1:	bsr		fmask, fmask				; find index of first occurence of pattern
		add		index, fmask				; index += fmask
		shftr	index, scale
		mov		result, index				; result = index
		jmp		.back1						; go back into the search loop
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		ptr, symbols				; ptr = symbols
		mov		symbol, [ptr]				; symbol = ptr[0]
;---[Search loop]--------------------------
.iloop:	cmp		char, symbol				; if (char == symbol)
		cmove	result, index				;     result = index
		add		ptr, bytes					; ptr++
		mov		symbol, [ptr]				; symbol = ptr[0]
		test	symbol, symbol
		jnz		.iloop						; do while (symbol)
;---[End of search loop]-------------------
		add		index, 1					; index++
		add		string, bytes				; string++
.skip:	mov		char, [string]				; char = string[0]
		test	char, char
		jnz		.sloop						; do while (char != 0)
;---[End of scalar loop]-------------------
end if
;---[Not found branch]---------------------
.exit:	ret
}
FindSymbolsBwd_char8:	FIND_SYMBOLS_BWD	dl, cl, b
FindSymbolsBwd_char16:	FIND_SYMBOLS_BWD	dx, cx, w
FindSymbolsBwd_char32:	FIND_SYMBOLS_BWD	edx, ecx, d

;******************************************************************************;
;       Substring search                                                       ;
;******************************************************************************;

;==============================================================================;
;       Searching string for pattern                                           ;
;==============================================================================;
macro	FIND_STRING1	bwd, x
{
;---[Parameters]---------------------------
string	equ		rdi							; source string
pattern	equ		rsi							; pattern to find
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
stack	equ		rsp							; stack pointer
s_str	equ		stack + 0 * 8				; stack position of "string" variable
s_patt	equ		stack + 1 * 8				; stack position of "pattern" variable
s_ssize	equ		stack + 2 * 8				; stack position of string size variable
s_psize	equ		stack + 3 * 8				; stack position of pattern size variable
s_bmh	equ		stack + 4 * 8				; stack position of BMH object
if x eq b
Length	= Len_char8							; string length function
Hash	= BMH_uint8							; BMH pattern hash function
Find	= BMH_Find_uint8					; BMH subsequence searching function
else if x eq w
Length	= Len_char16						; string length function
Hash	= BMH_uint16						; BMH pattern hash function
Find	= BMH_Find_uint16					; BMH subsequence searching function
else if x eq d
Length	= Len_char32						; string length function
Hash	= BMH_uint32						; BMH pattern hash function
Find	= BMH_Find_uint32					; BMH subsequence searching function
end if
space	= 265 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_patt], pattern			; save "pattern" variable into the stack
;---[Get pattern length]-------------------
		mov		param1, pattern
		call	Length						; result = Len (pattern)
		mov		[s_psize], result			; save pattern size into the stack
		test	result, result				; if (len == 0)
		jz		.ntfnd						;     then go to not found branch
;---[Get string length]--------------------
		mov		param1, [s_str]
		call	Length						; result = Len (string)
		mov		[s_ssize], result			; save string size into the stack
		cmp		result, [s_psize]			; if (Len (string) < Len (pattern))
		jb		.ntfnd						;     then go to not found branch
;---[Call BMH constructor]-----------------
if bwd
		mov		param4, 1					; backward direction
else
		xor		param4, param4				; forward direction
end if
		mov		param3, [s_psize]			; pass pattern size to BMH constructor
		mov		param2, [s_patt]			; pass pattern string to BMH constructor
		lea		param1, [s_bmh]				; pass BMH object to BMH constructor
		mov		fptr, Hash
		call	fptr						; call BMH constructor
;---[Call BMH search algorithm]------------
		lea		param3, [s_bmh]				; pass BMH pattern to BMH search algorithm
		mov		param2, [s_ssize]			; pass source string size to BMH search algorithm
		mov		param1, [s_str]				; pass source string to BMH search algorithm
		mov		fptr, Find
		call	fptr						; call BMH search algorithm
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
}

; Forward direction search
FindStrStrFwd_char8:	FIND_STRING1	0, b
FindStrStrFwd_char16:	FIND_STRING1	0, w
FindStrStrFwd_char32:	FIND_STRING1	0, d

; Backward direction search
FindStrStrBwd_char8:	FIND_STRING1	1, b
FindStrStrBwd_char16:	FIND_STRING1	1, w
FindStrStrBwd_char32:	FIND_STRING1	1, d

;==============================================================================;
;       Searching characters sequence for pattern                              ;
;==============================================================================;
macro	FIND_STRING2	bwd, x
{
;---[Parameters]---------------------------
string	equ		rdi							; source characters sequence
size	equ		rsi							; size of source characters sequence
pattern	equ		rdx							; pattern to find
;---[Internal variables]-------------------
result	equ		rax							; result register
fptr	equ		rax							; pointer to call external function
stack	equ		rsp							; stack pointer
s_str	equ		stack + 0 * 8				; stack position of "string" variable
s_patt	equ		stack + 1 * 8				; stack position of "pattern" variable
s_ssize	equ		stack + 2 * 8				; stack position of string size variable
s_psize	equ		stack + 3 * 8				; stack position of pattern size variable
s_bmh	equ		stack + 4 * 8				; stack position of BMH object
if x eq b
Length	= Len_char8							; string length function
Hash	= BMH_uint8							; BMH pattern hash function
Find	= BMH_Find_uint8					; BMH subsequence searching function
else if x eq w
Length	= Len_char16						; string length function
Hash	= BMH_uint16						; BMH pattern hash function
Find	= BMH_Find_uint16					; BMH subsequence searching function
else if x eq d
Length	= Len_char32						; string length function
Hash	= BMH_uint32						; BMH pattern hash function
Find	= BMH_Find_uint32					; BMH subsequence searching function
end if
space	= 265 * 8							; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_ssize], size				; save string size into the stack
		mov		[s_patt], pattern			; save "pattern" variable into the stack
;---[Get pattern length]-------------------
		mov		param1, pattern
		call	Length						; result = Len (pattern)
		mov		[s_psize], result			; save pattern size into the stack
		test	result, result				; if (len == 0)
		jz		.ntfnd						;     then go to not found branch
		mov		result, [s_ssize]			; result = Len (string)
		cmp		result, [s_psize]			; if (Len (string) < Len (pattern))
		jb		.ntfnd						;     then go to not found branch
;---[Call BMH constructor]-----------------
if bwd
		mov		param4, 1					; backward direction
else
		xor		param4, param4				; forward direction
end if
		mov		param3, [s_psize]			; pass pattern size to BMH constructor
		mov		param2, [s_patt]			; pass pattern string to BMH constructor
		lea		param1, [s_bmh]				; pass BMH object to BMH constructor
		mov		fptr, Hash
		call	fptr						; call BMH constructor
;---[Call BMH search algorithm]------------
		lea		param3, [s_bmh]				; pass BMH pattern to BMH search algorithm
		mov		param2, [s_ssize]			; pass source string size to BMH search algorithm
		mov		param1, [s_str]				; pass source string to BMH search algorithm
		mov		fptr, Find
		call	fptr						; call BMH search algorithm
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
}

; Forward direction search
FindSeqStrFwd_char8:	FIND_STRING2	0, b
FindSeqStrFwd_char16:	FIND_STRING2	0, w
FindSeqStrFwd_char32:	FIND_STRING2	0, d

; Backward direction search
FindSeqStrBwd_char8:	FIND_STRING2	1, b
FindSeqStrBwd_char16:	FIND_STRING2	1, w
FindSeqStrBwd_char32:	FIND_STRING2	1, d

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
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
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
if scale
		test	string, bmask				; if elements have wrong alignment
		jnz		.skip						;     then skip vector code
end if
;---[Normal execution branch]--------------
		movq	pattern, psymbol			; pattern = symbol
		clone	pattern, scale				; duplicate value through the entire register
		mov		shft, string
		and		shft, VMASK					; get string offset from vector boundary
		sub		string, shft				; align pointer to vector boundary
		pxor	eol, eol					; eol = 0
;---[Unaligned search for pattern]---------
		mov		cmask, VBITS
		shl		cmask, low					; adjust cmask for unaligned search
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
.vloop:
repeat	CLINE / VSIZE
		movdqa	echeck, [string + % * VSIZE]; echeck = string[i]
		movdqa	pcheck, echeck				; pcheck = string[i]
	pcmpeq#x	echeck, eol					; check string[i] for end of line
	pcmpeq#x	pcheck, pattern				; check string[i] for symbol
	pmovmskb	emask, echeck				; save check results to emask
	pmovmskb	fmask, pcheck				; save check results to fmask
		and		emask, emask				; if eol is found
		jnz		.brk						;     then break the loop
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
end repeat
		add		string, CLINE				; string += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		emask, emask				; find index of first occurence of eol
		mov		shft, VSIZE
		sub		shft, emask					; get count of tail elements
		mov		cmask, VBITS
		shr		cmask, low					; adjust cmask for tail search
		and		fmask, cmask				; if pattern is found
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
		shftr	count, scale				; return count
		ret
if scale
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
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
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
ptable	equ		stack						; pattern table
s_str	equ		stack + 0 * 8				; stack position of "string" variable
s_smbls	equ		stack + 1 * 8				; stack position of "symbols" variable
if x eq b
Length	= Len_char8							; string length function
scale	= 0									; scale value
else if x eq w
Length	= Len_char16						; string length function
scale	= 1									; scale value
else if x eq d
Length	= Len_char32						; string length function
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
if scale
		test	string, bmask				; if elements have wrong alignment
		jnz		.skip						;     then skip vector code
end if
;---[Creating pattern table]---------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_smbls], symbols			; save "symbols" variable into the stack
		mov		param1, symbols
		call	Length						; count = Len (symbols)
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
		movdqa	[ptable + pindex], pattern	; ptable[pindex] = pattern
		add		symbols, bytes				; symbols++
		add		pindex, VSIZE				; pindex++
		sub		count, VSIZE				; count--
		jnz		.ploop						; do while (count != 0)
;---[Normal execution branch]--------------
		mov		shft, string
		and		shft, VMASK					; get string offset from vector boundary
		sub		string, shft				; align pointer to vector boundary
		pxor	eol, eol					; eol = 0
;---[Unaligned search for pattern]---------
		mov		cmask, VBITS
		shl		cmask, low					; adjust cmask for unaligned search
		movdqa	echeck, [string]			; echeck = string[0]
		pxor	pcheck, pcheck				; pcheck = 0
		xor		pindex, pindex				; pindex = 0
		mov		tsize, size					; tsize = size
;---[Pattern matching loop]----------------
.loop1:	movdqa	pattern, [ptable + pindex]	; pattern = ptable[pindex]
	pcmpeq#x	pattern, echeck				; check string[0] for symbol
		por		pcheck, pattern				; add patern matching mask to pcheck
		add		pindex, VSIZE				; pindex++
		sub		tsize, VSIZE				; tsize--
		jnz		.loop1						; do while (tsize != 0)
;---[End of pattern matching loop]---------
	pcmpeq#x	echeck, eol					; check string[0] for end of line
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
.loop2:	movdqa	pattern, [ptable + pindex]	; pattern = ptable[pindex]
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
		mov		shft, VSIZE
		sub		shft, emask					; get count of tail elements
		mov		cmask, VBITS
		shr		cmask, low					; adjust cmask for tail search
		and		fmask, cmask				; if pattern is found
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
		shftr	count, scale				; return count
		ret
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		ptr, symbols				; ptr = symbols
		mov		symbol, [ptr]				; symbol = ptr[0]
;---[Search loop]--------------------------
.iloop:	xor		fmask, fmask				; fmask = 0
		cmp		char, symbol				; if (char == symbol) {
		cmove	fmask, cmask				;     count++
		je		@f							; }
		add		ptr, bytes					; ptr++
		mov		symbol, [ptr]				; symbol = ptr[0]
		test	symbol, symbol
		jnz		.iloop						; do while (symbol)
;---[End of search loop]-------------------
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
table	equ		r8							; pointer to blending table
ptr		equ		r9							; temporary pointer to string
emask	equ		r10							; result of eol search
fmask	equ		r11							; result of pattern search
back	equ		table						; back address
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
if scale
		test	string, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
;---[Normal execution branch]--------------
		movq	pattern, preg				; pattern = symbol
		clone	pattern, scale				; duplicate value through the entire register
		movq	replace, vreg				; replace = value
		clone	replace, scale				; duplicate value through the entire register
		mov		index, string
		and		index, VMASK				; get string offset from vector boundary
		sub		string, index				; align pointer to vector boundary
		mov		ptr, string					; ptr = string
		pxor	eol, eol					; eol = 0
;---[Unaligned search for pattern]---------
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskA]				; set pointer to blending table
		movdqa	cmask, [table + index]
		xor		index, index				; index = 0
		movdqa	echeck, [string]			; echeck = string[0]
		movdqa	pcheck, echeck				; pcheck = string[0]
	pcmpeq#x	echeck, eol					; check string[0] for end of line
	pcmpeq#x	pcheck, pattern				; check string[0] for symbol
		pand	echeck, cmask				; apply cmask to eol search results
		pand	pcheck, cmask				; apply cmask to pattern search results
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		lea		back, [.back0]				; save return address
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
		lea		back, [.back1]				; save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back1:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [ptr + 2 * VSIZE]	; echeck = ptr[2]
		movdqa	pcheck, echeck				; pcheck = ptr[2]
	pcmpeq#x	echeck, eol					; check ptr[2] for end of line
	pcmpeq#x	pcheck, pattern				; check ptr[2] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		lea		back, [.back2]				; save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back2:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [ptr + 3 * VSIZE]	; echeck = ptr[3]
		movdqa	pcheck, echeck				; pcheck = ptr[3]
	pcmpeq#x	echeck, eol					; check ptr[3] for end of line
	pcmpeq#x	pcheck, pattern				; check ptr[3] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		lea		back, [.back3]				; save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back3:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [ptr + 4 * VSIZE]	; echeck = ptr[4]
		movdqa	pcheck, echeck				; pcheck = ptr[4]
	pcmpeq#x	echeck, eol					; check ptr[4] for end of line
	pcmpeq#x	pcheck, pattern				; check ptr[4] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		lea		back, [.back4]				; save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back4:	add		index, VSIZE				; index += VSIZE
		add		ptr, CLINE					; ptr += CLINE
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
		jmp		back						; go back into the search loop
@@:		bsf		emask, emask				; find index of first occurence of eol
		bsf		fmask, fmask				; find index of first occurence of pattern
		jz		.exit						; if pattern is not found, then go to exit
		cmp		fmask, emask				; if (index(pattern) > index (eol))
		ja		.exit						;     then go to exit
		shl		emask, VSCALE				; compute shift in mask array
		lea		table, [maskB]				; set pointer to blending table
		pand	pcheck, [table + emask]
		movdqa	echeck, [string + index]	; echeck = string[index]
	pblendvb	echeck, replace
		movdqa	[string + index], echeck	; string[index] = replace (echeck, pattern, value)
		ret
if scale
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

;******************************************************************************;
;       Insertion sort                                                         ;
;******************************************************************************;
macro	INSERTSORT	op
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to strings array
ptr		equ		rsi							; pointer to array of pointers to data
size	equ		rdx							; array size (count of elements)
func	equ		rcx							; pointer to string compare function
;---[Internal variables]-------------------
left	equ		r8							; left index
right	equ		r9							; right index
key1	equ		r12							; temporary key #1
key2	equ		r13							; temporary key #2
ptr1	equ		r14							; temporary ptr #1
ptr2	equ		r15							; temporary ptr #2
stack	equ		rsp							; stack pointer
s_key1	equ		stack + 0 * 8				; stack position of "key1" variable
s_key2	equ		stack + 1 * 8				; stack position of "key2" variable
s_ptr1	equ		stack + 2 * 8				; stack position of "ptr1" variable
s_ptr2	equ		stack + 3 * 8				; stack position of "ptr2" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_ptr	equ		stack + 5 * 8				; stack position of "ptr" variable
s_size	equ		stack + 6 * 8				; stack position of "size" variable
s_func	equ		stack + 7 * 8				; stack position of "func" variable
s_left	equ		stack + 8 * 8				; stack position of "left" variable
s_right	equ		stack + 9 * 8				; stack position of "right" variable
space	= 11 * 8							; stack size required by the procedure
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
		sub		stack, space				; reserving stack size for local vars
		mov		[s_key1], key1				; save old value of "key1" variable
		mov		[s_key2], key2				; save old value of "key2" variable
		mov		[s_ptr1], ptr1				; save old value of "ptr1" variable
		mov		[s_ptr2], ptr2				; save old value of "ptr2" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		left, 1						; left = 1
		mov		[s_left], left				; save "left" variable into the stack
;---[Sorting loop]-------------------------
.loop:	mov		right, left					; right = left
		mov		[s_right], right			; save "right" variable into the stack
		mov		key1, [array + right * 8]	; key1 = array[right]
		mov		ptr1, [ptr + right * 8]		; ptr1 = ptr[right]
;---[Internal loop]------------------------
.iloop:	mov		key2, [array + right * 8 - 8]
		mov		ptr2, [ptr + right * 8 - 8]	; ptr2 = ptr[right-1]
		mov		param2, key2
		mov		param1, key1
		call	qword [s_func]				; result = Compare (key1, key2)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		left, [s_left]				; get "left" variable from the stack
		mov		right, [s_right]			; get "right" variable from the stack
		cmp		result, 0					; if (result op 0)
		jn#op	.break						; {
		mov		[array + right * 8], key2	;     array[right] = key2
		mov		[ptr + right * 8], ptr2		;     ptr[right] = ptr2
		sub		right, 1					;     right-- }
		mov		[s_right], right			; save "right" variable into the stack
		jnz		.iloop						; do while (right != 0)
;---[End of internal loop]-----------------
.break:	mov		[array + right * 8], key1	; array[right] = key1
		mov		[ptr + right * 8], ptr1		; ptr[right] = ptr1
		add		left, 1						; left++
		mov		[s_left], left				; save "left" variable into the stack
		cmp		left, [s_size]
		jb		.loop						; do while (left < size)
;---[End of sorting loop]------------------
		mov		key1, [s_key1]				; restore old value of "key1" variable
		mov		key2, [s_key2]				; restore old value of "key2" variable
		mov		ptr1, [s_ptr1]				; restore old value of "ptr1" variable
		mov		ptr2, [s_ptr2]				; restore old value of "ptr2" variable
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}
InsertSortKeyAsc:	INSERTSORT	l
InsertSortKeyDsc:	INSERTSORT	g

;******************************************************************************;
;       Quick sort                                                             ;
;******************************************************************************;
macro	QUICKSORT	InsertSort, op1, op2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to strings array
ptr		equ		rsi							; pointer to array of pointers to data
size	equ		rdx							; array size (count of elements)
func	equ		rcx							; pointer to string compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
median	equ		rax							; median value
half	equ		rax							; half of array size
left	equ		r8							; left index
right	equ		r9							; right index
ptr1	equ		r10							; temporary ptr #1
ptr2	equ		r11							; temporary ptr #2
key1	equ		r12							; temporary key #1
key2	equ		r13							; temporary key #2
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
lptr	equ		ptr							; pointer to left part of ptr array
rptr	equ		median						; pointer to right part of ptr array
stack	equ		rsp							; stack pointer
s_key1	equ		stack + 0 * 8				; stack position of "key1" variable
s_key2	equ		stack + 1 * 8				; stack position of "key2" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
s_med	equ		stack + 6 * 8				; stack position of "median" variable
s_left	equ		stack + 7 * 8				; stack position of "left" variable
s_right	equ		stack + 8 * 8				; stack position of "right" variable
space	= 9 * 8								; stack size required by the procedure
minsize	= 32								; min array size is aceptable for Quick sort
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
.start:	cmp		size, minsize				; if (size <= minsize)
		jbe		InsertSort					;     call InsertSort (array, ptr, size, func)
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_key1], key1				; save old value of "key1" variable
		mov		[s_key2], key2				; save old value of "key2" variable
;---[Sorting loop]-------------------------
.loop:	mov		half, size
		shr		half, 1						; half = size / 2
		mov		left, -1					; left = -1
		mov		right, size					; right = size
		mov		median, [array + half * 8]	; median = array[half]
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_med], median				; save "median" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	xchg	key1, key2					; exchange key1 and key2
		mov		[array + left * 8], key1	; array[left] = key1
		mov		[array + right * 8], key2	; array[right] = key2
		mov		ptr1, [ptr + left * 8]		; ptr1 = ptr[left]
		mov		ptr2, [ptr + right * 8]		; ptr1 = ptr[left]
		xchg	ptr1, ptr2					; exchange ptr1 and ptr2
		mov		[ptr + left * 8], ptr1		; ptr[left] = ptr1
		mov		[ptr + right * 8], ptr2		; ptr[right] = ptr2
;---[Internal loop 1]----------------------
.loop1:	mov		left, [s_left]				; get "left" variable from the stack
		add		left, 1						; left++
		mov		[s_left], left				; save "left" variable into the stack
		mov		key1, [array + left * 8]	; key1 = array[left]
		mov		param2, [s_med]
		mov		param1, key1
		call	qword [s_func]				; result = Compare (array[left], median)
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		result, 0					; check compare result
		j#op1	.loop1						; do while compare condition is true
;---[Internal loop 2]----------------------
.loop2:	mov		right, [s_right]			; get "right" variable from the stack
		sub		right, 1					; right--
		mov		[s_right], right			; save "right" variable into the stack
		mov		key2, [array + right * 8]	; key2 = array[right]
		mov		param2, [s_med]
		mov		param1, key2
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
		mov		rsize, [s_size]				; get "size" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
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
		mov		size, lsize
		call	.start						; call Sort (larray, lptr, lsize, func)
		mov		rarray, [s_array]			; get "rarray" variable from the stack
		mov		rptr, [s_ptr]				; get "rptr" variable from the stack
		mov		rsize, [s_size]				; get "rsize" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
@@:		mov		array, rarray				; }
		mov		ptr, rptr
		jmp		.end
;---[else]---------------------------------
.else:	cmp		rsize, 1					; if (rsize > 1)
		jbe		@f							; {
		mov		[s_array], larray			; save "larray" variable into the stack
		mov		[s_ptr], lptr				; save "lptr" variable into the stack
		mov		[s_size], lsize				; save "lsize" variable into the stack
		mov		array, rarray
		mov		ptr, rptr
		call	.start						; call Sort (rarray, rptr, rsize, func)
		mov		larray, [s_array]			; get "larray" variable from the stack
		mov		lptr, [s_ptr]				; get "lptr" variable from the stack
		mov		lsize, [s_size]				; get "lsize" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
@@:		mov		size, lsize					; }
;---[end if]-------------------------------
.end:	cmp		size, 1
		ja		.loop						; do while (size > 1)
;---[End of sorting loop]------------------
		mov		func, [s_func]				; get "func" variable from the stack
		mov		key1, [s_key1]				; restore old value of "key1" variable
		mov		key2, [s_key2]				; restore old value of "key2" variable
		add		stack, space				; restoring back the stack pointer
		jmp		InsertSort					; call InsertSort (array, ptr, size, func)
.exit:	ret
}
QuickSortKeyAsc:	QUICKSORT	InsertSortKeyAsc, l, g
QuickSortKeyDsc:	QUICKSORT	InsertSortKeyDsc, g, l

;******************************************************************************;
;       Merge sort                                                             ;
;******************************************************************************;
macro	MERGESORT	InsertSort, MergeFunc
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of strings
temp	equ		rsi							; pointer to temporary array of strings
ptr		equ		rdx							; pointer to array of pointers to data
tptr	equ		rcx							; pointer to temporary array of pointers to data
size	equ		r8							; array size (count of elements)
func	equ		r9							; pointer to string compare function
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_temp	equ		stack + 1 * 8				; stack position of "temp" variable
s_ptr	equ		stack + 2 * 8				; stack position of "ptr" variable
s_tptr	equ		stack + 3 * 8				; stack position of "tptr" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
space	= 7 * 8								; stack size required by the procedure
minsize	= 32								; min array size is aceptable for Merge sort
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
.start:	cmp		size, minsize				; if (size <= minsize)
		jbe		.ins						;     then do insert sort
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
;---[Sort first subarray]------------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		shr		size, 1						; size /= 2
		call	.start						; call Sort (array, temp, ptr, tptr, size / 2, func)
;---[Sort second subarray]-----------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		temp, [s_temp]				; get "temp" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		tptr, [s_tptr]				; get "tptr" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		shr		size, 1						; size /= 2
		lea		array, [array + size * 8]
		lea		ptr, [ptr + size * 8]
		neg		size
		add		size, [s_size]
		call	.start						; call Sort (array + size / 2, temp, ptr + size / 2, tptr, size - size / 2, func)
;---[Copy data into temporary array]-------
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 1						; size /= 2
		mov		param3, size
		mov		param2, [s_ptr]
		mov		param1, [s_tptr]
		mov		fptr, Copy_size
		call	fptr						; call Copy (tptr, ptr, size / 2)
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 1						; size /= 2
		mov		param3, size
		mov		param2, [s_array]
		mov		param1, [s_temp]
		mov		fptr, Copy_size
		call	fptr						; call Copy (temp, array, size / 2)
;---[Merge sorted arrays]------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		temp, [s_temp]				; get "temp" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		tptr, [s_tptr]				; get "tptr" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		shr		size, 1						; size /= 2
		mov		param9, func
		mov		param8, size
		neg		param8
		add		param8, [s_size]
		lea		param7, [ptr + size * 8]
		lea		param6, [array + size * 8]
		mov		param5, size
		mov		param4, tptr
		mov		param3, temp
		mov		param2, [s_ptr]
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		MergeFunc					; call MergeFunc (array, ptr, temp, tptr, size / 2, array + size / 2, ptr + size / 2, size - size / 2, func)
;---[Insert sort branch]-------------------
.ins:	mov		param1, array
		mov		param2, ptr
		mov		param3, size
		mov		param4, func
		jmp		InsertSort					; call InsertSort (array, ptr, size, func)
.exit:	ret
}
MergeSortKeyAsc:	MERGESORT	InsertSortKeyAsc, MergeKeyCoreAsc
MergeSortKeyDsc:	MERGESORT	InsertSortKeyDsc, MergeKeyCoreDsc

;******************************************************************************;
;       Merging of sorted strings                                              ;
;******************************************************************************;
macro	MERGE_KEY_CORE	cond
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
func	equ		rax							; pointer to string compare function
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
fptr	equ		rax							; pointer to call external function
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
s_sptr2	equ		stack + 14 * 8				; stack position of "sptr2" variable
s_size2	equ		stack + 15 * 8				; stack position of "size2" variable
s_func	equ		stack + 16 * 8				; stack position of "func" variable
space	= 17 * 8							; stack size required by the procedure
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
		mov		[s_sptr2], sptr2			; save "sptr2" variable into the stack
		mov		[s_size2], size2			; save "size2" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		test	size1, size1				; if (size1 == 0)
		jz		.copy1						;     then go to copy1 branch
		test	size2, size2				; if (size2 == 0)
		jz		.copy2						;     then go to copy2 branch
;---[Merging loop]-------------------------
.loop:	lea		temp, [skey1 + 8]			; skey1p = skey1 + 1
		mov		[s_sk1p], temp				; save "skey1p" variable into the stack
		lea		temp, [sptr1 + 8]			; sptr1p = sptr1 + 1
		mov		[s_sp1p], temp				; save "sptr1p" variable into the stack
		lea		temp, [size1 - 1]			; size1m = size1 - 1
		mov		[s_sz1m], temp				; save "size1m" variable into the stack
		lea		temp, [skey2 + 8]			; skey2p = skey2 + 1
		mov		[s_sk2p], temp				; save "skey2p" variable into the stack
		lea		temp, [sptr2 + 8]			; sptr2p = sptr2 + 1
		mov		[s_sp2p], temp				; save "sptr2p" variable into the stack
		lea		temp, [size2 - 1]			; size2m = size2 - 1
		mov		[s_sz2m], temp				; save "size2m" variable into the stack
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
		mov		fptr, Copy_size
		call	fptr						; call Copy (tkey, skey2, size2)
		mov		param1, [s_tptr]
		mov		param2, [s_sptr2]
		mov		param3, [s_size2]
		mov		value, [s_value]			; restore old value of "value" variable
		mov		ptr, [s_ptr]				; restore old value of "ptr" variable
		mov		fptr, Copy_size
		add		stack, space				; restoring back the stack pointe
		jmp		fptr						; call Copy (tptr, sptr2, size2)
.copy2:	mov		param1, [s_tkey]
		mov		param2, [s_skey1]
		mov		param3, [s_size1]
		mov		fptr, Copy_size
		call	fptr						; call Copy (tkey, skey1, size1)
		mov		param1, [s_tptr]
		mov		param2, [s_sptr1]
		mov		param3, [s_size1]
		mov		value, [s_value]			; restore old value of "value" variable
		mov		ptr, [s_ptr]				; restore old value of "ptr" variable
		mov		fptr, Copy_size
		add		stack, space				; restoring back the stack pointe
		jmp		fptr						; call Copy (tptr, sptr1, size1)
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MERGE_KEY	MergeFunc
{
;---[Parameters]---------------------------
sptr2	equ		r10							; pointer to second source array of pointers to data
size2	equ		r11							; size of second array
func	equ		rax							; pointer to string compare function
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_sptr2	equ		stack + 1 * 8				; stack position of "sptr2" variable
s_size2	equ		stack + 2 * 8				; stack position of "size2" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
;------------------------------------------
		mov		sptr2, [s_sptr2]			; get "sptr2" variable from the stack
		mov		size2, [s_size2]			; get "size2" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		jmp		MergeFunc					; call MergeFunc (tkey, tptr, skey1, sptr1, size1, skey2, sptr2, size2)
}

; Ascending sort order
MergeKeyCoreAsc:	MERGE_KEY_CORE	le
MergeKeyAsc:		MERGE_KEY		MergeKeyCoreAsc

; Descending sort order
MergeKeyCoreDsc:	MERGE_KEY_CORE	ge
MergeKeyDsc:		MERGE_KEY		MergeKeyCoreDsc

;******************************************************************************;
;       String hashing                                                         ;
;******************************************************************************;
macro	HASH	result, temp, value, char, const, scale
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of string element (bytes)
;------------------------------------------
		mov		value, const				; value = const
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
		imul	result, value				; result *= value
	i = i + 1
end while
		add		string, bytes				; string++
		mov		char, [string]				; char = string[0]
		test	char, char
		jnz		.loop						; do while (char != eol)
;---[End of hashing loop]------------------
.exit:	ret
}

;==============================================================================;
;       32-bit hash functions                                                  ;
;==============================================================================;
Hash32_char8:	HASH	eax, edx, ecx, r8b, 2654435769, 0
Hash32_char16:	HASH	eax, edx, ecx, r8w, 2654435769, 1
Hash32_char32:	HASH	eax, edx, ecx, r8d, 2654435769, 2

;==============================================================================;
;       64-bit hash functions                                                  ;
;==============================================================================;
Hash64_char8:	HASH	rax, rdx, rcx, r8b, 11400714819323198485, 0
Hash64_char16:	HASH	rax, rdx, rcx, r8w, 11400714819323198485, 1
Hash64_char32:	HASH	rax, rdx, rcx, r8d, 11400714819323198485, 2

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

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
