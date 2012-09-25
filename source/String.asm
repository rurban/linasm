;                                                                     String.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                            SAFE STRING FUNCTIONS                            #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2012, Jack Black #
;###############################################################################
format	ELF64

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

; Checking if strings are equal
public	Equal1_char8		as	'String_IsEqual_char8'
public	Equal1_char16		as	'String_IsEqual_char16'
public	Equal1_char32		as	'String_IsEqual_char32'
public	Equal1_char8		as	'_ZN6String7IsEqualEPKcS1_'
public	Equal1_char16		as	'_ZN6String7IsEqualEPKsS1_'
public	Equal1_char32		as	'_ZN6String7IsEqualEPKiS1_'

; Checking if string is equal to characters sequence
public	Equal2_char8		as	'String_IsEqualN_char8'
public	Equal2_char16		as	'String_IsEqualN_char16'
public	Equal2_char32		as	'String_IsEqualN_char32'
public	Equal2_char8		as	'_ZN6String7IsEqualEPKcS1_m'
public	Equal2_char16		as	'_ZN6String7IsEqualEPKsS1_m'
public	Equal2_char32		as	'_ZN6String7IsEqualEPKiS1_m'

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

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

; Searching for string pattern
public	FindStr_char8		as	'String_FindString_char8'
public	FindStr_char16		as	'String_FindString_char16'
public	FindStr_char32		as	'String_FindString_char32'
public	FindStr_char8		as	'_ZN6String10FindStringEPKcS1_'
public	FindStr_char16		as	'_ZN6String10FindStringEPKsS1_'
public	FindStr_char32		as	'_ZN6String10FindStringEPKiS1_'

;******************************************************************************;
;       Value replacement                                                      ;
;******************************************************************************;

; Replacing of single symbol
public	Replace1_char8		as	'String_ReplaceSymbol_char8'
public	Replace1_char16		as	'String_ReplaceSymbol_char16'
public	Replace1_char32		as	'String_ReplaceSymbol_char32'
public	Replace1_char8		as	'_ZN6String13ReplaceSymbolEPKccc'
public	Replace1_char16		as	'_ZN6String13ReplaceSymbolEPKsss'
public	Replace1_char32		as	'_ZN6String13ReplaceSymbolEPKiii'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
NO_SPACE	= -1							; No space in target string
NOT_FOUND	= -1							; Pattern is not found

;******************************************************************************;
;       Check End Of Line (EOL) macro                                          ;
;******************************************************************************;
macro	checkeol	ptr, scale
{
if scale = 0
		cmp		byte [ptr], 0
else if scale = 1
		cmp		word [ptr], 0
else if scale = 2
		cmp		dword [ptr], 0
end if
}

;******************************************************************************;
;       Set End Of Line (EOL) macro                                            ;
;******************************************************************************;
macro	seteol	ptr, scale
{
if scale = 0
		mov		byte [ptr], 0
else if scale = 1
		mov		word [ptr], 0
else if scale = 2
		mov		dword [ptr], 0
end if
}

;******************************************************************************;
;       String len macro                                                       ;
;******************************************************************************;
macro	strlen	size, string, scale
{
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		lea		size, [string - bytes]		; size = string - 1
;---[Loop]---------------------------------
@@:		add		size, bytes					; size++
	checkeol	size, scale					; check of EOL symbol
		jne		@b							; do while (symbol != 0)
;---[end of loop]--------------------------
		sub		size, string				; size -= string
if scale > 0
		shr		size, scale					; correct size value
end if
}

;******************************************************************************;
;       String length                                                          ;
;******************************************************************************;
macro	LEN		scale
{
;---[Parameters]---------------------------
string	equ		rdi							; string
;---[Internal variables]-------------------
size	equ		rax							; string size
;------------------------------------------
		strlen	size, string, scale
		ret
}
Len_char8:	LEN	0
Len_char16:	LEN	1
Len_char32:	LEN	2

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;

;==============================================================================;
;       Copying of string to string                                            ;
;==============================================================================;
macro	COPY1	char, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; target string
max_len	equ		rsi							; maximum length of target string
source	equ		rdx							; source string
;---[Internal variables]-------------------
tptr	equ		r8							; temporary pointer to target string
sptr	equ		rax							; temporary pointer to source string
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		mov		sptr, source				; sptr = source
		mov		tptr, target				; tptr = target
		add		max_len, 1					; max_len++
;---[Loop]---------------------------------
.loop:	mov		char, [sptr]
		mov		[tptr], char				; tptr[0] = sptr[0]
		test	char, char					; if (sptr[0] == 0), then we found end of string
		jz		.exit						;     and should do normal exit
		add		sptr, bytes					; sptr++
		add		tptr, bytes					; tptr++
		sub		max_len, 1					; max_len--
		jnz		.loop						; do while (max_len > 0)
;---[No space exit branch]-----------------
		mov		sptr, NO_SPACE				; return NO_SPACE
		seteol	target, scale				; clear target string
		ret
;---[Normal exit branch]-------------------
.exit:	sub		sptr, source				; return sptr - source
if scale > 0
		shr		sptr, scale
end if
		ret
}
Copy1_char8:	COPY1	r9b, 0
Copy1_char16:	COPY1	r9w, 1
Copy1_char32:	COPY1	r9d, 2

;==============================================================================;
;       Copying of characters sequence to string                               ;
;==============================================================================;
macro	COPY2	char, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; target string
max_len	equ		rsi							; maximum length of target string
source	equ		rdx							; source string
size	equ		rcx							; characters to copy
;---[Internal variables]-------------------
tptr	equ		r8							; temporary pointer to target string
sptr	equ		rax							; temporary pointer to source string
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		mov		sptr, source				; sptr = source
		mov		tptr, target				; tptr = target
		test	size, size					; if (size == 0)
		jz		.exit						; then go to exit
		add		max_len, 1					; max_len++
;---[Loop]---------------------------------
.loop:	mov		char, [sptr]
		mov		[tptr], char				; tptr[0] = sptr[0]
		test	char, char					; if (sptr[0] == 0), then we found end of string
		jz		.exit						;     and should do normal exit
		add		sptr, bytes					; sptr++
		add		tptr, bytes					; tptr++
		sub		size, 1						; if (--size == 0)
		jz		.eol						;     then set end of line
		sub		max_len, 1					; max_len--
		jnz		.loop						; do while (max_len > 0)
;---[No space exit branch]-----------------
		mov		sptr, NO_SPACE				; return NO_SPACE
		seteol	target, scale				; clear target string
		ret
;---[Normal exit branch]-------------------
.eol:	seteol	tptr, scale					; set end of string
.exit:	sub		sptr, source				; return sptr - source
if scale > 0
		shr		sptr, scale
end if
		ret
}
Copy2_char8:	COPY2	r9b, 0
Copy2_char16:	COPY2	r9w, 1
Copy2_char32:	COPY2	r9d, 2

;******************************************************************************;
;       Concatenating                                                          ;
;******************************************************************************;

;==============================================================================;
;       Concatenating of string to string                                      ;
;==============================================================================;
macro	CAT1	func, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; target string
max_len	equ		rsi							; maximum length of target string
source	equ		rdx							; source string
;---[Internal variables]-------------------
len		equ		rax							; current size of target string
;------------------------------------------
		strlen	len, target, scale			; len = Len(target)
		sub		max_len, len				; if (max_len >= len)
		jb		.nospc						; {
		add		target, len					;     return Copy (target + len, max_len - len, source)
		jmp		func						; }
;---[No space exit branch]-----------------
.nospc:	mov		sptr, NO_SPACE				;     else return NO_SPACE
		ret
}
Cat1_char8:		CAT1	Copy1_char8, 0
Cat1_char16:	CAT1	Copy1_char16, 1
Cat1_char32:	CAT1	Copy1_char32, 2

;==============================================================================;
;       Concatenating of characters sequence to string                         ;
;==============================================================================;
macro	CAT2	func, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; target string
max_len	equ		rsi							; maximum length of target string
source	equ		rdx							; source string
size	equ		rcx							; characters to copy
;---[Internal variables]-------------------
len		equ		rax							; current size of target string
;------------------------------------------
		strlen	len, target, scale			; len = Len(target)
		sub		max_len, len				; if (max_len >= len)
		jb		.nospc						; {
		add		target, len					;     return Copy (target + len, max_len - len, source, size)
		jmp		func						; }
;---[No space exit branch]-----------------
.nospc:	mov		sptr, NO_SPACE				;     else return NO_SPACE
		ret
}
Cat2_char8:		CAT2	Copy2_char8, 0
Cat2_char16:	CAT2	Copy2_char16, 1
Cat2_char32:	CAT2	Copy2_char32, 2

;******************************************************************************;
;       String comparison                                                      ;
;******************************************************************************;

;==============================================================================;
;       Checking if strings are equal                                          ;
;==============================================================================;
macro	EQUAL1	char, scale
{
;---[Parameters]---------------------------
string1	equ		rdi							; string #1
string2	equ		rsi							; string #2
;---[Internal variables]-------------------
result	equ		al							; result
bytes	= 1 shl scale						; size of element (bytes)
;---[Loop]---------------------------------
.loop:	mov		char, [string1]
		cmp		char, [string2]				; if (string1[0] != string2[0]
		jne		.exit						; then go to exit
		add		string1, bytes				; string1++
		add		string2, bytes				; string2++
		test	char, char
		jnz		.loop						; do while (string1[0] != 0)
;---[end of loop]--------------------------
.exit:	sete	result
		ret
}
Equal1_char8:	EQUAL1	al, 0
Equal1_char16:	EQUAL1	ax, 1
Equal1_char32:	EQUAL1	eax, 2

;==============================================================================;
;       Checking if string is equal to characters sequence                     ;
;==============================================================================;
macro	EQUAL2	char, scale
{
;---[Parameters]---------------------------
string1	equ		rdi							; string #1
string2	equ		rsi							; string #2
size	equ		rdx							; size of string #2
;---[Internal variables]-------------------
result	equ		al							; result
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		@f							; then skip search loop
;---[Loop]---------------------------------
.loop:	mov		char, [string1]
		cmp		char, [string2]				; if (string1[0] != string2[0]
		jne		.exit						; then go to exit
		add		string1, bytes				; string1++
		add		string2, bytes				; string2++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[end of loop]--------------------------
@@:	checkeol	string1, scale
.exit:	sete	result
		ret
}
Equal2_char8:	EQUAL2	al, 0
Equal2_char16:	EQUAL2	ax, 1
Equal2_char32:	EQUAL2	eax, 2

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Searching for single symbol                                            ;
;==============================================================================;
macro	FIND_SYMBOL	symbol, char, scale
{
;---[Parameters]---------------------------
string	equ		rdi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		mov		ptr, string					; ptr = string
;---[Loop]---------------------------------
.loop:	mov		char, [ptr]					; char = ptr[0]
		cmp		char, symbol				; if (char == symbol), then found
		je		@f							; go to found branch
		add		ptr, bytes					; ptr++
		test	char, char
		jnz		.loop						; do while (ptr[0] != 0)
;---[end of loop]--------------------------
		mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
;---[if symbol is found]-------------------
@@:		sub		ptr, string					; return ptr - string
if scale > 0
		shr		ptr, scale
end if
		ret
}
Find1_char8:	FIND_SYMBOL	sil, dl, 0
Find1_char16:	FIND_SYMBOL	si, dx, 1
Find1_char32:	FIND_SYMBOL	esi, edx, 2

;==============================================================================;
;       Searching for symbols set                                              ;
;==============================================================================;
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
		cmp		char2, char1				; if (char2 == char1), then found
		je		@f							; go to found branch
		add		ptr2, bytes					; ptr2++
		test	char2, char2
		jnz		.loop2						; do while (ptr2[0] != 0)
;---[end of internal loop]-----------------
		add		ptr1, bytes					; ptr1++
		jmp		.loop1						; do while (true)
;---[end of loop]--------------------------
@@:		sub		ptr1, string				; return ptr1 - string
if scale > 0
		shr		ptr1, scale
end if
		ret
}
Find2_char8:	FIND_SYMBOLS	dl, cl, 0
Find2_char16:	FIND_SYMBOLS	dx, cx, 1
Find2_char32:	FIND_SYMBOLS	edx, ecx, 2

;==============================================================================;
;       Searching for string pattern                                           ;
;==============================================================================;
macro	FIND_STRING	hash_func, find_func, scale
{
;---[Parameters]---------------------------
string	equ		rdi							; source string
pattern	equ		rsi							; pattern to find
;---[Internal variables]-------------------
psize	equ		rax							; pattern size
ssize	equ		rdx							; source size
param1	equ		rdi							; register to pass 1 procedure parameter
param2	equ		rsi							; register to pass 2 procedure parameter
param3	equ		rdx							; register to pass 3 procedure parameter
param4	equ		cl							; register to pass 4 procedure parameter
result	equ		psize						; result register
stack	equ		rsp							; stack pointer
s_str	equ		stack + 0 * 8				; stack position of string variable
s_size	equ		stack + 1 * 8				; stack position of string size variable
s_bmh	equ		stack + 2 * 8				; stack position of BMH object
space	= 261 * 8							; stack size required by the procedure
;------------------------------------------
		strlen	psize, pattern, scale		; getting pattern string len
		jz		.error						; if (psize == 0), then go to error branch
		strlen	ssize, string, scale		; getting source string len
		cmp		ssize, psize				; if (ssize < psize)
		jb		.error						; then go to error branch
		sub		stack, space				; reserving stack size for local vars
		mov		[s_str], string				; save "string" variable into the stack
		mov		[s_size], ssize				; save "ssize" variable into the stack
;---[Calling BMH constructor]--------------
		lea		param1, [s_bmh]				; pass BMH object to BMH constructor
		mov		param2, pattern				; pass pattern string to BMH constructor
		mov		param3, psize				; pass pattern size to BMH constructor
		xor		param4, param4				; pass direction flag to BMH constructor
		call	hash_func					; call BMH constructor
;---[Calling BMH search algorithm]---------
		mov		param1, [s_str]				; pass source string to BMH search algorithm
		mov		param2, [s_size]			; pass source string size to BMH search algorithm
		lea		param3, [s_bmh]				; pass BMH pattern to BMH search algorithm
		call	find_func					; call BMH search algorithm
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		result, NOT_FOUND			; return NOT_FOUND
		ret
}
FindStr_char8:	FIND_STRING	BMH8, BMH_Find8, 0
FindStr_char16:	FIND_STRING	BMH16, BMH_Find16, 1
FindStr_char32:	FIND_STRING	BMH32, BMH_Find32, 2

;******************************************************************************;
;       Value replacement                                                      ;
;******************************************************************************;
macro	REPLACE_SYMBOL	symbol, char, scale
{
;---[Parameters]---------------------------
string	equ		rdi							; source string
value	equ		rdx							; value that replace pattern
;---[Internal variables]-------------------
temp	equ		rcx							; temporary register to hold value
count	equ		rax							; replacement counter
cinc	equ		r8							; counter increment register
cincl	equ		r8b							; low part of counter increment register
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		xor		count, count				; count = 0
		mov		char, [string]				; char = string[0]
		xor		cinc, cinc					; cinc = 0
		test	char, char					; if (char == 0)
		jz		.exit						;     then go to exit
;---[Loop]---------------------------------
.loop:	cmp		char, symbol				; if (char == symbol)
		cmove	temp, value					;     char = value
		sete	cincl						;     count++
		mov		[string], char				; string[0] = char
		add		count, cinc
		add		string, bytes				; string++
		mov		char, [string]				; char = string[0]
		test	char, char
		jnz		.loop						; do while (char != 0)
;---[end of loop]--------------------------
.exit:	ret
}
Replace1_char8:		REPLACE_SYMBOL	sil, cl, 0
Replace1_char16:	REPLACE_SYMBOL	si, cx, 1
Replace1_char32:	REPLACE_SYMBOL	esi, ecx, 2

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
