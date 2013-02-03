;                                                                     String.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                            SAFE STRING FUNCTIONS                            #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2012, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################

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
public	Len_char8			as	'String_Len_char8'
public	Len_char16			as	'String_Len_char16'
public	Len_char32			as	'String_Len_char32'
public	Len_char8			as	'_ZN6String3LenEPKc'
public	Len_char16			as	'_ZN6String3LenEPKs'
public	Len_char32			as	'_ZN6String3LenEPKi'

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;

; Copying of string to string
public	Copy1_char8			as	'String_Copy_char8'
public	Copy1_char16		as	'String_Copy_char16'
public	Copy1_char32		as	'String_Copy_char32'
public	Copy1_char8			as	'_ZN6String4CopyEPcmPKc'
public	Copy1_char16		as	'_ZN6String4CopyEPsmPKs'
public	Copy1_char32		as	'_ZN6String4CopyEPimPKi'

; Copying of characters sequence to string
public	Copy2_char8			as	'String_CopyN_char8'
public	Copy2_char16		as	'String_CopyN_char16'
public	Copy2_char32		as	'String_CopyN_char32'
public	Copy2_char8			as	'_ZN6String4CopyEPcmPKcm'
public	Copy2_char16		as	'_ZN6String4CopyEPsmPKsm'
public	Copy2_char32		as	'_ZN6String4CopyEPimPKim'

;******************************************************************************;
;       Concatenating                                                          ;
;******************************************************************************;

; Concatenating of string to string
public	Cat1_char8			as	'String_Cat_char8'
public	Cat1_char16			as	'String_Cat_char16'
public	Cat1_char32			as	'String_Cat_char32'
public	Cat1_char8			as	'_ZN6String3CatEPcmPKc'
public	Cat1_char16			as	'_ZN6String3CatEPsmPKs'
public	Cat1_char32			as	'_ZN6String3CatEPimPKi'

; Concatenating of characters sequence to string
public	Cat2_char8			as	'String_CatN_char8'
public	Cat2_char16			as	'String_CatN_char16'
public	Cat2_char32			as	'String_CatN_char32'
public	Cat2_char8			as	'_ZN6String3CatEPcmPKcm'
public	Cat2_char16			as	'_ZN6String3CatEPsmPKsm'
public	Cat2_char32			as	'_ZN6String3CatEPimPKim'

;******************************************************************************;
;       String comparison                                                      ;
;******************************************************************************;

; Comparison of strings
public	Compare1_char8		as	'String_Compare_char8'
public	Compare1_char16		as	'String_Compare_char16'
public	Compare1_char32		as	'String_Compare_char32'
public	Compare1_char8		as	'_ZN6String7CompareEPKcS1_'
public	Compare1_char16		as	'_ZN6String7CompareEPKsS1_'
public	Compare1_char32		as	'_ZN6String7CompareEPKiS1_'

; Comparison of characters sequences
public	Compare2_char8		as	'String_CompareN_char8'
public	Compare2_char16		as	'String_CompareN_char16'
public	Compare2_char32		as	'String_CompareN_char32'
public	Compare2_char8		as	'_ZN6String7CompareEPKcS1_m'
public	Compare2_char16		as	'_ZN6String7CompareEPKsS1_m'
public	Compare2_char32		as	'_ZN6String7CompareEPKiS1_m'

;******************************************************************************;
;       Value replacement                                                      ;
;******************************************************************************;

; Replacing of single symbol
public	Replace_char8		as	'String_ReplaceSymbol_char8'
public	Replace_char16		as	'String_ReplaceSymbol_char16'
public	Replace_char32		as	'String_ReplaceSymbol_char32'
public	Replace_char8		as	'_ZN6String13ReplaceSymbolEPccc'
public	Replace_char16		as	'_ZN6String13ReplaceSymbolEPsss'
public	Replace_char32		as	'_ZN6String13ReplaceSymbolEPiii'

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Symbols search                                                         ;
;==============================================================================;

; Searching for single symbol
public	Find1_char8			as	'String_FindSymbol_char8'
public	Find1_char16		as	'String_FindSymbol_char16'
public	Find1_char32		as	'String_FindSymbol_char32'
public	Find1_char8			as	'_ZN6String10FindSymbolEPKcc'
public	Find1_char16		as	'_ZN6String10FindSymbolEPKss'
public	Find1_char32		as	'_ZN6String10FindSymbolEPKii'

; Searching for symbols set
public	Find2_char8			as	'String_FindSymbols_char8'
public	Find2_char16		as	'String_FindSymbols_char16'
public	Find2_char32		as	'String_FindSymbols_char32'
public	Find2_char8			as	'_ZN6String11FindSymbolsEPKcS1_'
public	Find2_char16		as	'_ZN6String11FindSymbolsEPKsS1_'
public	Find2_char32		as	'_ZN6String11FindSymbolsEPKiS1_'

;==============================================================================;
;       Substring search                                                       ;
;==============================================================================;

; Searching string for pattern
public	FindStr1_char8		as	'String_FindString_char8'
public	FindStr1_char16		as	'String_FindString_char16'
public	FindStr1_char32		as	'String_FindString_char32'
public	FindStr1_char8		as	'_ZN6String10FindStringEPKcS1_'
public	FindStr1_char16		as	'_ZN6String10FindStringEPKsS1_'
public	FindStr1_char32		as	'_ZN6String10FindStringEPKiS1_'

; Searching characters sequence for pattern
public	FindStr2_char8		as	'String_FindStringN_char8'
public	FindStr2_char16		as	'String_FindStringN_char16'
public	FindStr2_char32		as	'String_FindStringN_char32'
public	FindStr2_char8		as	'_ZN6String10FindStringEPKcmS1_'
public	FindStr2_char16		as	'_ZN6String10FindStringEPKsmS1_'
public	FindStr2_char32		as	'_ZN6String10FindStringEPKimS1_'

;==============================================================================;
;       String search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Linear search                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Forward direction search
public	FindFwd_char8		as	"String_FindFwd_char8"
public	FindFwd_char16		as	"String_FindFwd_char16"
public	FindFwd_char32		as	"String_FindFwd_char32"
public	FindFwd_char8		as	"_ZN6String7FindFwdEPPKcmS1_"
public	FindFwd_char16		as	"_ZN6String7FindFwdEPPKsmS1_"
public	FindFwd_char32		as	"_ZN6String7FindFwdEPPKimS1_"

; Backward direction search
public	FindBwd_char8		as	"String_FindBwd_char8"
public	FindBwd_char16		as	"String_FindBwd_char16"
public	FindBwd_char32		as	"String_FindBwd_char32"
public	FindBwd_char8		as	"_ZN6String7FindBwdEPPKcmS1_"
public	FindBwd_char16		as	"_ZN6String7FindBwdEPPKsmS1_"
public	FindBwd_char32		as	"_ZN6String7FindBwdEPPKimS1_"

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Binary search                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Ascending sort order
public	FindAsc_char8		as	"String_FindAsc_char8"
public	FindAsc_char16		as	"String_FindAsc_char16"
public	FindAsc_char32		as	"String_FindAsc_char32"
public	FindAsc_char8		as	"_ZN6String7FindAscEPPKcmS1_PFiS1_S1_E"
public	FindAsc_char16		as	"_ZN6String7FindAscEPPKsmS1_PFiS1_S1_E"
public	FindAsc_char32		as	"_ZN6String7FindAscEPPKimS1_PFiS1_S1_E"

; Descending sort order
public	FindDsc_char8		as	"String_FindDsc_char8"
public	FindDsc_char16		as	"String_FindDsc_char16"
public	FindDsc_char32		as	"String_FindDsc_char32"
public	FindDsc_char8		as	"_ZN6String7FindDscEPPKcmS1_PFiS1_S1_E"
public	FindDsc_char16		as	"_ZN6String7FindDscEPPKsmS1_PFiS1_S1_E"
public	FindDsc_char32		as	"_ZN6String7FindDscEPPKimS1_PFiS1_S1_E"

;******************************************************************************;
;       Sorting algorithms                                                     ;
;******************************************************************************;

;==============================================================================;
;       Array sorting                                                          ;
;==============================================================================;

; Ascending sort order
public	SortAsc_char8		as	"String_SortAsc_char8"
public	SortAsc_char16		as	"String_SortAsc_char16"
public	SortAsc_char32		as	"String_SortAsc_char32"
public	SortAsc_char8		as	"_ZN6String7SortAscEPPKcmPFiS1_S1_E"
public	SortAsc_char16		as	"_ZN6String7SortAscEPPKsmPFiS1_S1_E"
public	SortAsc_char32		as	"_ZN6String7SortAscEPPKimPFiS1_S1_E"

; Descending sort order
public	SortDsc_char8		as	"String_SortDsc_char8"
public	SortDsc_char16		as	"String_SortDsc_char16"
public	SortDsc_char32		as	"String_SortDsc_char32"
public	SortDsc_char8		as	"_ZN6String7SortDscEPPKcmPFiS1_S1_E"
public	SortDsc_char16		as	"_ZN6String7SortDscEPPKsmPFiS1_S1_E"
public	SortDsc_char32		as	"_ZN6String7SortDscEPPKimPFiS1_S1_E"

;==============================================================================;
;       Key sorting                                                            ;
;==============================================================================;

; Ascending sort order
public	SortKeyAsc_char8	as	"String_SortKeyAsc_char8"
public	SortKeyAsc_char16	as	"String_SortKeyAsc_char16"
public	SortKeyAsc_char32	as	"String_SortKeyAsc_char32"
public	SortKeyAsc_char8	as	"_ZN6String7SortAscEPPKcPPKvmPFiS1_S1_E"
public	SortKeyAsc_char16	as	"_ZN6String7SortAscEPPKsPPKvmPFiS1_S1_E"
public	SortKeyAsc_char32	as	"_ZN6String7SortAscEPPKiPPKvmPFiS1_S1_E"

; Descending sort order
public	SortKeyDsc_char8	as	"String_SortKeyDsc_char8"
public	SortKeyDsc_char16	as	"String_SortKeyDsc_char16"
public	SortKeyDsc_char32	as	"String_SortKeyDsc_char32"
public	SortKeyDsc_char8	as	"_ZN6String7SortDscEPPKcPPKvmPFiS1_S1_E"
public	SortKeyDsc_char16	as	"_ZN6String7SortDscEPPKsPPKvmPFiS1_S1_E"
public	SortKeyDsc_char32	as	"_ZN6String7SortDscEPPKiPPKvmPFiS1_S1_E"

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

; Check for duplicate values
public	CheckDup_char8		as	"String_CheckDup_char8"
public	CheckDup_char16		as	"String_CheckDup_char16"
public	CheckDup_char32		as	"String_CheckDup_char32"
public	CheckDup_char8		as	"_ZN6String8CheckDupEPPKcm"
public	CheckDup_char16		as	"_ZN6String8CheckDupEPPKsm"
public	CheckDup_char32		as	"_ZN6String8CheckDupEPPKim"

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
		mov		cmask, 0xFFFF
		shl		cmask, sindexl				; adjust cmask for unaligned search
		pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string]			; check string[0] for end of line
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, cmask				; if eof is found
		jnz		.brk						;     then return string length
		add		index, VSIZE				; index += VSIZE
;---[Vector loop]--------------------------
.vloop:	pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string + 1*VSIZE]	; check string[1] for end of line
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string + 2*VSIZE]	; check string[2] for end of line
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string + 3*VSIZE]	; check string[3] for end of line
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		pxor	echeck, echeck				; echeck = 0
	pcmpeq#x	echeck, [string + 4*VSIZE]	; check string[4] for end of line
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
		add		string, bytes				; string++
		add		index, 1					; index++
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
		mov		cmask, 0xFFFF
		shl		cmask, sindexl				; adjust cmask for unaligned search
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, [ptr2]				; check ptr2[0] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, cmask				; if eof is found
		jnz		.brk0						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen < VSIZE)
		jb		.nospc						;     then go to no space branch
		movdqa	sdata1, [ptr2 + 1*VSIZE]	; sdata1 = ptr2[1]
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
.vloop:	movdqu	[ptr1 + 1*VSIZE], sdata1	; ptr1[1] = ptr2[1]
		movdqa	sdata0, [ptr2 + 2*VSIZE]	; sdata0 = ptr2[2]
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, sdata0				; check ptr2[2] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen < VSIZE)
		jb		.nospc						;     then go to no space branch
		movdqu	[ptr1 + 2*VSIZE], sdata0	; ptr1[2] = ptr2[2]
		movdqa	sdata1, [ptr2 + 3*VSIZE]	; sdata1 = ptr2[3]
		pxor	echeck1, echeck1			; echeck1 = 0
	pcmpeq#x	echeck1, sdata1				; check ptr2[3] for end of line
	pmovmskb	emask, echeck1				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen < VSIZE)
		jb		.nospc						;     then go to no space branch
		movdqu	[ptr1 + 3*VSIZE], sdata1	; ptr1[3] = ptr2[3]
		movdqa	sdata0, [ptr2 + 4*VSIZE]	; sdata0 = ptr2[4]
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, sdata0				; check ptr2[4] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen < VSIZE)
		jb		.nospc						;     then go to no space branch
		movdqu	[ptr1 + 4*VSIZE], sdata0	; ptr1[4] = ptr2[4]
		movdqa	sdata1, [ptr2 + 5*VSIZE]	; sdata1 = ptr2[5]
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
end if
;---[No space exit branch]-----------------
.nospc:	seteol	target, x					; clear target string
		mov		index, NO_SPACE				; return NO_SPACE
.exit:	ret
}
Copy1_char8:	COPY1	cl, b
Copy1_char16:	COPY1	cx, w
Copy1_char32:	COPY1	ecx, d

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
		mov		cmask, 0xFFFF
		shl		cmask, sindexl				; adjust cmask for unaligned search
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, [ptr2]				; check ptr2[0] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, cmask				; if eof is found
		jnz		.brk0						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen <= VSIZE)
		jbe		.tail0						;     then copy maxlen elements from source
		movdqa	sdata1, [ptr2 + 1*VSIZE]	; sdata1 = ptr2[1]
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
.vloop:	movdqu	[ptr1 + 1*VSIZE], sdata1	; ptr1[1] = ptr2[1]
		movdqa	sdata0, [ptr2 + 2*VSIZE]	; sdata0 = ptr2[2]
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, sdata0				; check ptr2[2] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen <= VSIZE)
		jbe		.tail1						;     then copy maxlen elements from source
		movdqu	[ptr1 + 2*VSIZE], sdata0	; ptr1[2] = ptr2[2]
		movdqa	sdata1, [ptr2 + 3*VSIZE]	; sdata1 = ptr2[3]
		pxor	echeck1, echeck1			; echeck1 = 0
	pcmpeq#x	echeck1, sdata1				; check ptr2[3] for end of line
	pmovmskb	emask, echeck1				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen <= VSIZE)
		jbe		.tail1						;     then copy maxlen elements from source
		movdqu	[ptr1 + 3*VSIZE], sdata1	; ptr1[3] = ptr2[3]
		movdqa	sdata0, [ptr2 + 4*VSIZE]	; sdata0 = ptr2[4]
		pxor	echeck0, echeck0			; echeck0 = 0
	pcmpeq#x	echeck0, sdata0				; check ptr2[4] for end of line
	pmovmskb	emask, echeck0				; save check results to emask
		and		emask, emask				; if eof is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		maxlen, VSIZE				; if (maxlen <= VSIZE)
		jbe		.tail1						;     then copy maxlen elements from source
		movdqu	[ptr1 + 4*VSIZE], sdata0	; ptr1[4] = ptr2[4]
		movdqa	sdata1, [ptr2 + 5*VSIZE]	; sdata1 = ptr2[5]
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
;---[Set end of line]----------------------
		seteol	(ptr1 - bytes), x			; put eol symbol into target string
		sub		index, 1					; return index - 1
.exit:	ret
end if
;---[No space exit branch]-----------------
.nospc:	seteol	target, x					; clear target string
		mov		index, NO_SPACE				; return NO_SPACE
		ret
}
Copy2_char8:	COPY2	cl, b
Copy2_char16:	COPY2	cx, w
Copy2_char32:	COPY2	ecx, d

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
copy	= Copy1_char8						; string copy function
scale	= 0									; scale value
else if x eq w
length	= Len_char16						; string length function
copy	= Copy1_char16						; string copy function
scale	= 1									; scale value
else if x eq d
length	= Len_char32						; string length function
copy	= Copy1_char32						; string copy function
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
Cat1_char8:		CAT1	b
Cat1_char16:	CAT1	w
Cat1_char32:	CAT1	d

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
copy	= Copy2_char8						; string copy function
scale	= 0									; scale value
else if x eq w
length	= Len_char16						; string length function
copy	= Copy2_char16						; string copy function
scale	= 1									; scale value
else if x eq d
length	= Len_char32						; string length function
copy	= Copy2_char32						; string copy function
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
Cat2_char8:		CAT2	b
Cat2_char16:	CAT2	w
Cat2_char32:	CAT2	d

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
size	equ		rdx							; string size (count of elements)
result	equ		rax							; result register
res1	equ		al							; result of comparison #1
res2	equ		dl							; result of comparison #2
index	equ		rax							; index of first occurence of pattern
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
		xor		fmask, 0xFFFF				; if string1[0] != string2[0] or eol is found
		jnz		.brk0						;     then break the loop
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 1*VSIZE]	; s1temp = ptr1[1]
		movdqa	s2temp, [ptr2 + 1*VSIZE]	; s2temp = ptr2[1]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[1] == ptr2[1]
	pcmpeq#x	s2temp, eol					; check ptr2[1] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if ptr1[1] != ptr2[1] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 2*VSIZE]	; s1temp = ptr1[2]
		movdqa	s2temp, [ptr2 + 2*VSIZE]	; s2temp = ptr2[2]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[2] == ptr2[2]
	pcmpeq#x	s2temp, eol					; check ptr2[2] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if ptr1[2] != ptr2[2] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 3*VSIZE]	; s1temp = ptr1[3]
		movdqa	s2temp, [ptr2 + 3*VSIZE]	; s2temp = ptr2[3]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[3] == ptr2[3]
	pcmpeq#x	s2temp, eol					; check ptr2[3] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if ptr1[3] != ptr2[3] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 4*VSIZE]	; s1temp = ptr1[4]
		movdqa	s2temp, [ptr2 + 4*VSIZE]	; s2temp = ptr2[4]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[4] == ptr2[4]
	pcmpeq#x	s2temp, eol					; check ptr2[4] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if ptr1[4] != ptr2[4] or eol is found
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
		movsx	result, res1
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
		xor		fmask, 0xFFFF				; if string1[index] == string2[index] and eol is not found
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
		movsx	result, res1
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
		movsx	result, res1
		ret
end if
}
Compare1_char8:		COMPARE1	cl, b
Compare1_char16:	COMPARE1	cx, w
Compare1_char32:	COMPARE1	ecx, d

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
result	equ		rax							; result register
res1	equ		al							; result of comparison #1
res2	equ		dl							; result of comparison #2
index	equ		rax							; index of first occurence of pattern
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
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
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
		xor		fmask, 0xFFFF				; if string1[0] != string2[0] or eol is found
		jnz		.brk0						;     then break the loop
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 1*VSIZE]	; s1temp = ptr1[1]
		movdqa	s2temp, [ptr2 + 1*VSIZE]	; s2temp = ptr2[1]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[1] == ptr2[1]
	pcmpeq#x	s2temp, eol					; check ptr2[1] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if ptr1[1] != ptr2[1] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 2*VSIZE]	; s1temp = ptr1[2]
		movdqa	s2temp, [ptr2 + 2*VSIZE]	; s2temp = ptr2[2]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[2] == ptr2[2]
	pcmpeq#x	s2temp, eol					; check ptr2[2] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if ptr1[2] != ptr2[2] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 3*VSIZE]	; s1temp = ptr1[3]
		movdqa	s2temp, [ptr2 + 3*VSIZE]	; s2temp = ptr2[3]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[3] == ptr2[3]
	pcmpeq#x	s2temp, eol					; check ptr2[3] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if ptr1[3] != ptr2[3] or eol is found
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check string tails
		movdqu	s1temp, [ptr1 + 4*VSIZE]	; s1temp = ptr1[4]
		movdqa	s2temp, [ptr2 + 4*VSIZE]	; s2temp = ptr2[4]
	pcmpeq#x	s1temp, s2temp				; check if ptr1[4] == ptr2[4]
	pcmpeq#x	s2temp, eol					; check ptr2[4] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if ptr1[4] != ptr2[4] or eol is found
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
		movsx	result, res1
		ret
;---[Compare tails branch]-----------------
.tail:	add		index, size
		movdqu	s1temp, [string1 + index]	; s1temp = string1[index]
		movdqu	s2temp, [string2 + index]	; s2temp = string2[index]
	pcmpeq#x	s1temp, s2temp				; check if string1[index] == string2[index]
	pcmpeq#x	s2temp, eol					; check string2[index] for end of line
	pandn		s2temp, s1temp
	pmovmskb	fmask, s2temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if string1[index] == string2[index] and eol is not found
		jz		@f							;     then exit
.brk1:	bsf		fmask, fmask				; find index of first different symbol
		add		index, fmask				; index += fmask
		mov		char, [string1 + index]
		cmp		char, [string2 + index]
@@:		seta	res1						; if (string1[index] > string2[index]), then res1 = 1
		setb	res2						; if (string1[index] < string2[index]), then res2 = 1
		sub		res1, res2					; return res1 - res2
		movsx	result, res1
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
		movsx	result, res1
		ret
}
Compare2_char8:		COMPARE2	cl, b
Compare2_char16:	COMPARE2	cx, w
Compare2_char32:	COMPARE2	ecx, d

;******************************************************************************;
;       Value replacement                                                      ;
;******************************************************************************;
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
pmask	equ		r10							; result of pattern search
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
.vloop:	movdqa	echeck, [ptr + 1*VSIZE]		; echeck = ptr[1]
		movdqa	pcheck, echeck				; pcheck = ptr[1]
	pcmpeq#x	echeck, eol					; check ptr[1] for end of line
	pcmpeq#x	pcheck, pattern				; check ptr[1] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		mov		addr, .back1				;     save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back1:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [ptr + 2*VSIZE]		; echeck = ptr[2]
		movdqa	pcheck, echeck				; pcheck = ptr[2]
	pcmpeq#x	echeck, eol					; check ptr[2] for end of line
	pcmpeq#x	pcheck, pattern				; check ptr[2] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		mov		addr, .back2				;     save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back2:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [ptr + 3*VSIZE]		; echeck = ptr[3]
		movdqa	pcheck, echeck				; pcheck = ptr[3]
	pcmpeq#x	echeck, eol					; check ptr[3] for end of line
	pcmpeq#x	pcheck, pattern				; check ptr[3] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		mov		addr, .back3				;     save return address
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
.back3:	add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [ptr + 4*VSIZE]		; echeck = ptr[4]
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
	pmovmskb	pmask, pcheck				; save check results to pmask
		and		emask, emask				; if eol is found
		jnz		@f							;     then parse string tail
		movdqa	echeck, [string + index]	; echeck = string[index]
	pblendvb	echeck, replace
		movdqa	[string + index], echeck	; string[index] = replace (echeck, pattern, value)
		jmp		addr						; go back into the searching loop
@@:		bsf		emask, emask				; find index of first occurence of eol
		bsf		pmask, pmask				; find index of first occurence of pattern
		jz		@f							; if pattern is not found, then go to exit
		cmp		pmask, emask				; if (index(pattern) > index (eol))
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
end if
;---[Normal exit branch]-------------------
.exit:	ret
}
Replace_char8:		REPLACE_SYMBOL	sil, dl, cl, b
Replace_char16:		REPLACE_SYMBOL	si, dx, cx, w
Replace_char32:		REPLACE_SYMBOL	esi, edx, ecx, d

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Symbols search                                                         ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Searching for single symbol                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_SYMBOL	patt, char, x
{
;---[Parameters]---------------------------
string	equ		rdi							; pointer to string
preg	equ		rsi							; register which holds symbol
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
sindex	equ		rcx							; string offset from vector boundary
emask	equ		r9							; result of eol search
pmask	equ		r10							; result of pattern search
pcheck	equ		xmm0						; pattern check mask
echeck	equ		xmm1						; eol check mask
eol		equ		xmm2						; end of line
pattern	equ		xmm3						; pattern to find
cmask	equ		xmm4						; mask to clear unrequired results
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
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		test	patt, patt					; if (patt == eol)
		jz		length						;     then call Len (string)
		xor		index, index				; index = 0
if scale <> 0
		test	string, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
;---[Normal execution branch]--------------
		movq	pattern, preg				; pattern = symbol
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
.vloop:	movdqa	echeck, [string + 1*VSIZE]	; echeck = string[1]
		movdqa	pcheck, echeck				; pcheck = string[1]
	pcmpeq#x	echeck, eol					; check string[1] for end of line
	pcmpeq#x	pcheck, pattern				; check string[1] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [string + 2*VSIZE]	; echeck = string[2]
		movdqa	pcheck, echeck				; pcheck = string[2]
	pcmpeq#x	echeck, eol					; check string[2] for end of line
	pcmpeq#x	pcheck, pattern				; check string[2] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [string + 3*VSIZE]	; echeck = string[3]
		movdqa	pcheck, echeck				; pcheck = string[3]
	pcmpeq#x	echeck, eol					; check string[3] for end of line
	pcmpeq#x	pcheck, pattern				; check string[3] for symbol
		por		echeck, pcheck				; echeck |= pcheck
	pmovmskb	emask, echeck				; save check results to emask
		and		emask, emask				; if eol or pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		movdqa	echeck, [string + 4*VSIZE]	; echeck = string[4]
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
.brk:pmovmskb	pmask, pcheck				; save check results to pmask
		bsf		emask, emask				; find index of first occurence of eol
		bsf		pmask, pmask				; find index of first occurence of pattern
		jz		.ntfnd						; if pattern is not found, then go to not found branch
		cmp		pmask, emask				; if (index(pattern) > index (eol))
		ja		.ntfnd						;     then go to not found branch
		add		index, pmask				; index += pmask
		shftr	index, scale				; return index
		ret
if scale <> 0
;---[Scalar loop]--------------------------
.sloop:	mov		char, [string]				; char = string[0]
		cmp		char, patt					; if (char == patt)
		je		.exit						;     then go to exit
		add		string, bytes				; string++
		add		index, 1					; index++
		test	char, char
		jnz		.sloop						; do while (char != 0)
end if
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}
Find1_char8:	FIND_SYMBOL	sil, cl, b
Find1_char16:	FIND_SYMBOL	si, cx, w
Find1_char32:	FIND_SYMBOL	esi, ecx, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Searching for symbols set                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_SYMBOLS	char1, char2, scale
{
;---[Parameters]---------------------------
string	equ		rdi							; source string
symbols	equ		rsi							; symbols to find
;---[Internal variables]-------------------
ptr1	equ		rax							; temporary pointer to string
ptr2	equ		r8							; temporary pointer to symbols
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		mov		ptr1, string				; ptr1 = string
;---[Loop]---------------------------------
.loop1:	mov		ptr2, symbols				; ptr2 = symbols
		mov		char1, [ptr1]				; char1 = ptr1[0]
;---[Internal loop]------------------------
.loop2:	mov		char2, [ptr2]				; char2 = ptr2[0]
		cmp		char2, char1				; if (char2 == char1)
		je		.match						;     then go to match branch
		add		ptr2, bytes					; ptr2++
		test	char2, char2
		jnz		.loop2						; do while (char2 != 0)
;---[end of internal loop]-----------------
		add		ptr1, bytes					; ptr1++
		jmp		.loop1						; do while (true)
;---[end of loop]--------------------------
.match:	test	char1, char1				; if (char1 == 0)
		jz		.ntfnd						;     then no matching symbol is found
		sub		ptr1, string				; return ptr1 - string
		shftr	ptr1, scale
		ret
;---[Not found branch]---------------------
.ntfnd:	mov		ptr1, NOT_FOUND				; return NOT_FOUND
		ret
}
Find2_char8:	FIND_SYMBOLS	dl, cl, 0
Find2_char16:	FIND_SYMBOLS	dx, cx, 1
Find2_char32:	FIND_SYMBOLS	edx, ecx, 2

;==============================================================================;
;       Substring search                                                       ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Searching string for pattern                                           ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_STRING1 x
{
;---[Parameters]---------------------------
string	equ		rdi							; source string
pattern	equ		rsi							; pattern to find
;---[Internal variables]-------------------
result	equ		rax							; result register
param1	equ		rdi							; register to pass 1 procedure parameter
param2	equ		rsi							; register to pass 2 procedure parameter
param3	equ		rdx							; register to pass 3 procedure parameter
param4	equ		cl							; register to pass 4 procedure parameter
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
		lea		param1, [s_bmh]				; pass BMH object to BMH constructor
		mov		param2, [s_patt]			; pass pattern string to BMH constructor
		mov		param3, [s_psize]			; pass pattern size to BMH constructor
		xor		param4, param4				; pass direction flag to BMH constructor
		call	hash						; call BMH constructor
;---[Calling BMH search algorithm]---------
		mov		param1, [s_str]				; pass source string to BMH search algorithm
		mov		param2, [s_ssize]			; pass source string size to BMH search algorithm
		lea		param3, [s_bmh]				; pass BMH pattern to BMH search algorithm
		call	find						; call BMH search algorithm
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.ntfnd:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
}
FindStr1_char8:		FIND_STRING1	b
FindStr1_char16:	FIND_STRING1	w
FindStr1_char32:	FIND_STRING1	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Searching characters sequence for pattern                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_STRING2 x
{
;---[Parameters]---------------------------
string	equ		rdi							; source characters sequence
size	equ		rsi							; size of source characters sequence
pattern	equ		rdx							; pattern to find
;---[Internal variables]-------------------
result	equ		rax							; result register
param1	equ		rdi							; register to pass 1 procedure parameter
param2	equ		rsi							; register to pass 2 procedure parameter
param3	equ		rdx							; register to pass 3 procedure parameter
param4	equ		cl							; register to pass 4 procedure parameter
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
		lea		param1, [s_bmh]				; pass BMH object to BMH constructor
		mov		param2, [s_patt]			; pass pattern string to BMH constructor
		mov		param3, [s_psize]			; pass pattern size to BMH constructor
		xor		param4, param4				; pass direction flag to BMH constructor
		call	hash						; call BMH constructor
;---[Calling BMH search algorithm]---------
		mov		param1, [s_str]				; pass source string to BMH search algorithm
		mov		param2, [s_ssize]			; pass source string size to BMH search algorithm
		lea		param3, [s_bmh]				; pass BMH pattern to BMH search algorithm
		call	find						; call BMH search algorithm
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.ntfnd:	add		stack, space				; restoring back the stack pointer
		mov		result, NOT_FOUND			; return NOT_FOUND
		ret
}
FindStr2_char8:		FIND_STRING2	b
FindStr2_char16:	FIND_STRING2	w
FindStr2_char32:	FIND_STRING2	d

;==============================================================================;
;       String search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Linear search                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Forward direction search                                               ;
;------------------------------------------------------------------------------;
macro	FIND_FWD	result, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of strings
size	equ		rsi							; array size (count of elements)
string	equ		rdx							; string to find
func	equ		rcx							; pointer to string compare function
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to current element
str1	equ		rdi							; pointer to first string
str2	equ		rsi							; pointer to second string
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_str	equ		stack + 2 * 8				; stack position of "string" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		sub		stack, space				; reserving stack size for local vars
		mov		ptr, array					; ptr = array
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		ptr, [s_ptr]
		mov		str1, [ptr]
		mov		str2, [s_str]
		call	func						; result = Compare (ptr[0], string)
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		add		qword [s_ptr], 8			; ptr++
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[Not found branch]---------------------
		add		stack, space				; restoring back the stack pointer
.exit:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
;---[Found branch]---------------------
.found:	mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		array, [s_array]
		add		stack, space				; restoring back the stack pointer
		sub		ptr, array					; return ptr - array
		shr		ptr, 3
		ret
}
FindFwd_char8:	FIND_FWD	al, b
FindFwd_char16:	FIND_FWD	ax, w
FindFwd_char32:	FIND_FWD	eax, d

;------------------------------------------------------------------------------;
;       Backward direction search                                              ;
;------------------------------------------------------------------------------;
macro	FIND_BWD	result, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of strings
size	equ		rsi							; array size (count of elements)
string	equ		rdx							; string to find
func	equ		rcx							; pointer to string compare function
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to current element
str1	equ		rdi							; pointer to first string
str2	equ		rsi							; pointer to second string
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_str	equ		stack + 2 * 8				; stack position of "string" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		sub		stack, space				; reserving stack size for local vars
		lea		ptr, [array + size * 8]		; ptr = array + size
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
;---[Search loop]--------------------------
.loop:	sub		qword [s_ptr], 8			; ptr--
		mov		ptr, [s_ptr]
		mov		str1, [ptr]
		mov		str2, [s_str]
		call	func						; result = Compare (ptr[0], string)
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[Not found branch]---------------------
		add		stack, space				; restoring back the stack pointer
.exit:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
;---[Found branch]---------------------
.found:	mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		array, [s_array]
		add		stack, space				; restoring back the stack pointer
		sub		ptr, array					; return ptr - array
		shr		ptr, 3
		ret
}
FindBwd_char8:	FIND_BWD	al, b
FindBwd_char16:	FIND_BWD	ax, w
FindBwd_char32:	FIND_BWD	eax, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Binary search                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_BIN	result, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of strings
size	equ		rsi							; array size (count of elements)
string	equ		rdx							; string to find
func	equ		rcx							; pointer to string compare function
;---[Internal variables]-------------------
left	equ		rax							; pointer to start of the data array
right	equ		size						; pointer to end of the data array
ptr		equ		size						; pointer to current element
median	equ		r8							; median value
median1	equ		r9							; median value + 1
str1	equ		rdi							; pointer to first string
str2	equ		rsi							; pointer to second string
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_str	equ		stack + 1 * 8				; stack position of "string" variable
s_cmp	equ		stack + 2 * 8				; stack position of "func" variable
s_left	equ		stack + 3 * 8				; stack position of "left" variable
s_right	equ		stack + 4 * 8				; stack position of "right" variable
s_med	equ		stack + 5 * 8				; stack position of "median" variable
s_med1	equ		stack + 6 * 8				; stack position of "median1" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     then go to not found branch
		sub		stack, space				; reserving stack size for local vars
		xor		left, left					; left = 0
		sub		size, 1						; if (--size == 0)
		jz		.skip						;     then skip binary search loop
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_cmp], func				; save "func" variable into the stack
;---[Binary search loop]-------------------
.loop:	mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		lea		median, [left + right]
		shr		median, 1					; median = (left + right) / 2
		lea		median1, [median + 1]		; median1 = median + 1
		mov		ptr, [s_array]				; get "array" variable from the stack
		mov		[s_med], median				; save "median" variable into the stack
		mov		[s_med1], median1			; save "median1" variable into the stack
		mov		str1, [s_str]				; str1 = string
		mov		str2, [ptr + median * 8]	; str2 = array[median]
		call	qword [s_cmp]				; if Compare (string, array[median]) condition is met
		cmp		result, 0					; check compare result
		cmov#x	left, [s_med1]				;     then left = median + 1
		cmovn#x	left, [s_left]
		cmovn#x	right, [s_med]				;     else right = median
		cmov#x	right, [s_right]
		cmp		left, right
		jb		.loop						; do while (left < right)
;------------------------------------------
		mov		ptr, [s_array]				; get "array" variable from the stack
		mov		string, [s_str]				; get "string" variable from the stack
		mov		func, [s_cmp]				; get "func" variable from the stack
.skip:	mov		[s_left], left				; save "left" variable into the stack
		mov		str1, string				; str1 = string
		mov		str2, [ptr + left * 8]		; str2 = array[left]
		call	func						; result = Compare (string, array[left])
		cmp		result, 0					; if (result == 0)
		jne		@f							; {
		mov		left, [s_left]				;     return left
		add		stack, space				; }
		ret									; else
@@:		add		stack, space				;     return NOT_FOUND
;---[Not found branch]---------------------
.ntfnd:	mov		left, NOT_FOUND				; return NOT_FOUND
		ret
}

; Ascending sort order
FindAsc_char8:	FIND_BIN	al, g
FindAsc_char16:	FIND_BIN	ax, g
FindAsc_char32:	FIND_BIN	eax, g

; Descending sort order
FindDsc_char8:	FIND_BIN	al, l
FindDsc_char16:	FIND_BIN	ax, l
FindDsc_char32:	FIND_BIN	eax, l

;******************************************************************************;
;       Sorting algorithms                                                     ;
;******************************************************************************;

;==============================================================================;
;       Array sorting                                                          ;
;==============================================================================;
macro	SORT	median, ptr1, ptr2, result, op1, op2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to strings array
size	equ		rsi							; array size (count of elements)
func	equ		rdx							; pointer to string compare function
;---[Internal variables]-------------------
half	equ		rax							; half of array size
left	equ		r8							; left index
right	equ		r9							; right index
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
str1	equ		rdi							; pointer to first string
str2	equ		rsi							; pointer to second string
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_cmp	equ		stack + 2 * 8				; stack position of "func" variable
s_med	equ		stack + 3 * 8				; stack position of "median" variable
s_left	equ		stack + 4 * 8				; stack position of "left" variable
s_right	equ		stack + 5 * 8				; stack position of "right" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
.start:	cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
		sub		stack, space				; reserving stack size for local vars
		mov		[s_cmp], func				; save "func" variable into the stack
;---[Sorting loop]-------------------------
.sort:	mov		half, size
		mov		left, -1					; left = -1
		shr		half, 1						; half = size / 2
		mov		right, size					; right = size
		mov		median, [array + half * 8]	; median = array[half]
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_med], median				; save "median" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	mov		array, [s_array]			; get "array" variable from the stack
		mov		ptr1, [array + left * 8]	; ptr1 = array[left]
		mov		ptr2, [array + right * 8]	; ptr1 = array[left]
		xchg	ptr1, ptr2
		mov		[array + left * 8], ptr1	; array[left] = ptr2
		mov		[array + right * 8], ptr2	; array[right] = ptr1
;---[Internal loop 1]----------------------
.loop1:	add		qword [s_left], 1			; left++
		mov		left, [s_left]				; get "left" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		str1, [array + left * 8]	; str1 = array[left]
		mov		str2, [s_med]				; str2 = median
		call	qword [s_cmp]				; result = Compare (array[left], median)
		cmp		result, 0					; check compare result
		j#op1	.loop1						; do while compare condition is true
;---[Internal loop 2]----------------------
.loop2:	sub		qword [s_right], 1			; right--
		mov		right, [s_right]			; get "right" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		str1, [array + right * 8]	; str1 = array[right]
		mov		str2, [s_med]				; str2 = median
		call	qword [s_cmp]				; result = Compare (array[right], median)
		cmp		result, 0					; check compare result
		j#op2	.loop2						; do while compare condition is true
;------------------------------------------
		mov		left, [s_left]				; get "left" variable from the stack
		mov		right, [s_right]			; get "right" variable from the stack
		cmp		left, right
		jb		.swap						; do while (left < right)
;---[end of swap loop]---------------------
		mov		size, [s_size]				; get "size" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
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
		mov		func, [s_cmp]				; get "func" variable from the stack
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
		mov		func, [s_cmp]				; get "func" variable from the stack
		mov		array, rarray
		call	.start						; call Sort (rarray, rsize, func)
		mov		larray, [s_array]			; get "larray" variable from the stack
		mov		lsize, [s_size]				; get "lsize" variable from the stack
@@:		mov		size, lsize					; }
;---[end if]-------------------------------
.end:	cmp		size, 1
		ja		.sort						; do while (size > 1)
;---[end of sorting loop]------------------
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}

; Ascending sort order
SortAsc_char8:		SORT	rax, r10, r11, al, l, g
SortAsc_char16:		SORT	rax, r10, r11, ax, l, g
SortAsc_char32:		SORT	rax, r10, r11, eax, l, g

; Descending sort order
SortDsc_char8:		SORT	rax, r10, r11, al, g, l
SortDsc_char16:		SORT	rax, r10, r11, ax, g, l
SortDsc_char32:		SORT	rax, r10, r11, eax, g, l

;==============================================================================;
;       Key sorting                                                            ;
;==============================================================================;
macro	SORT_KEY	median, ptr1, ptr2, result, op1, op2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to strings array
ptr		equ		rsi							; pointer to array of pointers to data
size	equ		rdx							; array size (count of elements)
func	equ		rcx							; pointer to string func function
;---[Internal variables]-------------------
half	equ		rax							; half of array size
left	equ		r8							; left index
right	equ		r9							; right index
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
lptr	equ		ptr							; pointer to left part of ptr array
rptr	equ		half						; pointer to right part of ptr array
str1	equ		rdi							; pointer to first string
str2	equ		rsi							; pointer to second string
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_cmp	equ		stack + 3 * 8				; stack position of "func" variable
s_med	equ		stack + 4 * 8				; stack position of "median" variable
s_left	equ		stack + 5 * 8				; stack position of "left" variable
s_right	equ		stack + 6 * 8				; stack position of "right" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
.start:	cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
		sub		stack, space				; reserving stack size for local vars
		mov		[s_cmp], func				; save "func" variable into the stack
;---[Sorting loop]-------------------------
.sort:	mov		half, size
		mov		left, -1					; left = -1
		shr		half, 1						; half = size / 2
		mov		right, size					; right = size
		mov		median, [array + half * 8]	; median = array[half]
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_med], median				; save "median" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	mov		array, [s_array]			; get "array" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		ptr1, [array + left * 8]	; ptr1 = array[left]
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
.loop1:	add		qword [s_left], 1			; left++
		mov		left, [s_left]				; get "left" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		str1, [array + left * 8]	; str1 = array[left]
		mov		str2, [s_med]				; str2 = median
		call	qword [s_cmp]				; result = Compare (array[left], median)
		cmp		result, 0					; check compare result
		j#op1	.loop1						; do while compare condition is true
;---[Internal loop 2]----------------------
.loop2:	sub		qword [s_right], 1			; right--
		mov		right, [s_right]			; get "right" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		str1, [array + right * 8]	; str1 = array[right]
		mov		str2, [s_med]				; str2 = median
		call	qword [s_cmp]				; result = Compare (array[right], median)
		cmp		result, 0					; check compare result
		j#op2	.loop2						; do while compare condition is true
;------------------------------------------
		mov		left, [s_left]				; get "left" variable from the stack
		mov		right, [s_right]			; get "right" variable from the stack
		cmp		left, right
		jb		.swap						; do while (left < right)
;---[end of swap loop]---------------------
		mov		size, [s_size]				; get "size" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
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
		mov		func	, [s_cmp]			; get "func" variable from the stack
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
		mov		func, [s_cmp]				; get "func" variable from the stack
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
;---[end of sorting loop]------------------
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}

; Ascending sort order
SortKeyAsc_char8:		SORT_KEY	rax, r10, r11, al, l, g
SortKeyAsc_char16:		SORT_KEY	rax, r10, r11, ax, l, g
SortKeyAsc_char32:		SORT_KEY	rax, r10, r11, eax, l, g

; Descending sort order
SortKeyDsc_char8:		SORT_KEY	rax, r10, r11, al, g, l
SortKeyDsc_char16:		SORT_KEY	rax, r10, r11, ax, g, l
SortKeyDsc_char32:		SORT_KEY	rax, r10, r11, eax, g, l

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for duplicate values                                             ;
;==============================================================================;
macro	CHECK_DUP	result, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of strings
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to current element
str1	equ		rdi							; pointer to first string
str2	equ		rsi							; pointer to second string
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_ptr	equ		stack + 2 * 8				; stack position of "ptr" variable
if x eq b
compare	= Compare1_char8					; compare function
else if x eq w
compare	= Compare1_char16					; compare function
else if x eq d
compare	= Compare1_char32					; compare function
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		size, 1						; if (--size <= 0)
		jbe		.exit						;     then go to exit
		sub		stack, space				; reserving stack size for local vars
		mov		ptr, array					; ptr = array
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		ptr, [s_ptr]
		mov		str1, [ptr]
		mov		str2, [ptr + 8]
		call	compare						; result = Compare (ptr[0], ptr[1])
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		add		qword [s_ptr], 8			; ptr++
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[Not found branch]---------------------
		add		stack, space				; restoring back the stack pointer
.exit:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
;---[Found branch]---------------------
.found:	mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		array, [s_array]
		add		stack, space				; restoring back the stack pointer
		sub		ptr, array					; return ptr - array
		shr		ptr, 3
		ret
}
CheckDup_char8:		CHECK_DUP	al, b
CheckDup_char16:	CHECK_DUP	ax, w
CheckDup_char32:	CHECK_DUP	eax, d

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
