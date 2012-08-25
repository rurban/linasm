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
public	Len_char8			as	'_ZN6String3LenEPKc'
public	Len_char16			as	'_ZN6String3LenEPKs'
public	Len_char32			as	'_ZN6String3LenEPKi'

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;

; Copying of string to string
public	Copy1_char8			as	'_ZN6String4CopyEPcmPKc'
public	Copy1_char16		as	'_ZN6String4CopyEPsmPKs'
public	Copy1_char32		as	'_ZN6String4CopyEPimPKi'

; Copying of characters sequence to string
public	Copy2_char8			as	'_ZN6String4CopyEPcmPKcm'
public	Copy2_char16		as	'_ZN6String4CopyEPsmPKsm'
public	Copy2_char32		as	'_ZN6String4CopyEPimPKim'

;******************************************************************************;
;       String comparison                                                      ;
;******************************************************************************;

; Checking if strings are equal
public	Equal1_char8		as	'_ZN6String7IsEqualEPKcS1_'
public	Equal1_char16		as	'_ZN6String7IsEqualEPKsS1_'
public	Equal1_char32		as	'_ZN6String7IsEqualEPKiS1_'

; Checking if string is equal to characters sequence
public	Equal2_char8		as	'_ZN6String7IsEqualEPKcS1_m'
public	Equal2_char16		as	'_ZN6String7IsEqualEPKsS1_m'
public	Equal2_char32		as	'_ZN6String7IsEqualEPKiS1_m'

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

; Searching for single symbol
public	Find1_char8			as	'_ZN6String10FindSymbolEPKcc'
public	Find1_char16		as	'_ZN6String10FindSymbolEPKss'
public	Find1_char32		as	'_ZN6String10FindSymbolEPKii'

; Searching for symbols set
public	Find2_char8			as	'_ZN6String10FindSymbolEPKcS1_'
public	Find2_char16		as	'_ZN6String10FindSymbolEPKsS1_'
public	Find2_char32		as	'_ZN6String10FindSymbolEPKiS1_'

; Searching for string pattern
public	FindStr_char8		as	'_ZN6String10FindStringEPKcS1_'
public	FindStr_char16		as	'_ZN6String10FindStringEPKsS1_'
public	FindStr_char32		as	'_ZN6String10FindStringEPKiS1_'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Macros                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Consts                                                                 ;
;==============================================================================;
NO_SPACE	= -1							; No space in target string
NOT_FOUND	= -1							; Pattern is not found

;==============================================================================;
;       Check End Of Line (EOL) macro                                          ;
;==============================================================================;
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

;==============================================================================;
;       Set End Of Line (EOL) macro                                            ;
;==============================================================================;
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

;==============================================================================;
;       String len macro                                                       ;
;==============================================================================;
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
macro	COPY1	temp, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; target string
max_len	equ		rsi							; maximum length of target string
source	equ		rdx							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to source string
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		add		max_len, 1					; max_len++
		lea		ptr, [source - bytes]		; ptr = source - 1
		sub		target, bytes				; target--
		jmp		@f
;---[Loop]---------------------------------
.loop:	sub		max_len, 1					; max_len--
		jz		.nospc						; if (max_len == 0), then no space
@@:		add		ptr, bytes					; ptr++
		add		target, bytes				; target++
		mov		temp, [ptr]
		mov		[target], temp				; target[0] = ptr[0]
		test	temp, temp
		jnz		.loop						; do while (ptr[0] != 0)
;---[End of loop]--------------------------
		sub		ptr, source					; return ptr - source
if scale > 0
		shr		ptr, scale
end if
		ret
;---[No space exit branch]-----------------
.nospc:	mov		ptr, NO_SPACE				; return NO_SPACE
		ret
}
Copy1_char8:	COPY1	r8b, 0
Copy1_char16:	COPY1	r8w, 1
Copy1_char32:	COPY1	r8d, 2

;==============================================================================;
;       Copying of characters sequence to string                               ;
;==============================================================================;
macro	COPY2	temp, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; target string
max_len	equ		rsi							; maximum length of target string
source	equ		rdx							; source string
size	equ		rcx							; characters to copy
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to source string
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		mov		ptr, source					; ptr = source
		add		max_len, 1					; max_len++
		test	size, size					; if (size == 0)
		jz		.exit						; then go to exit
;---[Loop]---------------------------------
.loop:	mov		temp, [ptr]					; temp = ptr[0]
		test	temp, temp					; if (ptr[0] == 0)
		jz		.exit						;     then break
		sub		max_len, 1					; max_len--
		jz		.nospc						; if (max_len == 0), then no space
		mov		[target], temp				; target[0] = temp
		add		ptr, bytes					; ptr++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.loop						; do while (size > 0)
;---[End of loop]--------------------------
.exit:	sub		ptr, source					; target[0] = 0
		seteol	target, scale
if scale > 0
		shr		ptr, scale
end if
		ret
;---[No space exit branch]-----------------
.nospc:	mov		ptr, NO_SPACE				; return NO_SPACE
		ret
}
Copy2_char8:	COPY2	r8b, 0
Copy2_char16:	COPY2	r8w, 1
Copy2_char32:	COPY2	r8d, 2

;******************************************************************************;
;       String comparison                                                      ;
;******************************************************************************;

;==============================================================================;
;       Checking if strings are equal                                          ;
;==============================================================================;
macro	EQUAL1	temp, scale
{
;---[Parameters]---------------------------
string1	equ		rdi							; string #1
string2	equ		rsi							; string #2
;---[Internal variables]-------------------
res		equ		al							; result
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		sub		string1, bytes				; string1--
		sub		string2, bytes				; string2--
;---[Loop]---------------------------------
.loop:	add		string1, bytes				; string1++
		add		string2, bytes				; string2++
		mov		temp, [string1]
		cmp		temp, [string2]				; if (string1[0] != string2[0]
		jne		.exit						; then go to exit
		test	temp, temp
		jnz		.loop						; do while (string1[0] != 0)
;---[end of loop]--------------------------
.exit:	sete	res
		ret
}
Equal1_char8:	EQUAL1	al, 0
Equal1_char16:	EQUAL1	ax, 1
Equal1_char32:	EQUAL1	eax, 2

;==============================================================================;
;       Checking if string is equal to characters sequence                     ;
;==============================================================================;
macro	EQUAL2	temp, scale
{
;---[Parameters]---------------------------
string1	equ		rdi							; string #1
string2	equ		rsi							; string #2
size	equ		rdx							; size of string #2
;---[Internal variables]-------------------
res		equ		al							; result
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		@f							; then skip search loop
;---[Loop]---------------------------------
.loop:	mov		temp, [string1]
		cmp		temp, [string2]				; if (string1[0] != string2[0]
		jne		.exit						; then go to exit
		add		string1, bytes				; string1++
		add		string2, bytes				; string2++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[end of loop]--------------------------
@@:	checkeol	string1, scale
.exit:	sete	res
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
macro	FIND_SYMBOL	symbol, temp, scale
{
;---[Parameters]---------------------------
string	equ		rdi							; source string
;---[Internal variables]-------------------
ptr		equ		rax							; temporary pointer to string
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		lea		ptr, [string - bytes]		; ptr = string - 1
;---[Loop]---------------------------------
.loop:	add		ptr, bytes					; ptr++
		mov		temp, [ptr]					; temp = ptr[0]
		cmp		temp, symbol				; if (temp == symbol), then found
		je		@f							; go to found branch
		test	temp, temp
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
macro	FIND_SYMBOLS	temp1, temp2, scale
{
;---[Parameters]---------------------------
string	equ		rdi							; source string
symbols	equ		rsi							; symbols to find
;---[Internal variables]-------------------
ptr1	equ		rax							; temporary pointer to string
ptr2	equ		r8							; temporary pointer to symbols
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		lea		ptr1, [string - bytes]		; ptr = string - 1
		sub		symbols, bytes				; symbols--
;---[Loop]---------------------------------
.loop1:	add		ptr1, bytes					; ptr1++
		mov		ptr2, symbols				; ptr2 = symbols
		mov		temp1, [ptr1]				; temp1 = ptr1[0]
;---[Internal loop]------------------------
.loop2:	add		ptr2, bytes					; ptr2++
		mov		temp2, [ptr2]				; temp2 = ptr2[0]
		cmp		temp2, temp1				; if (temp2 == temp1), then found
		je		@f							; go to found branch
		test	temp2, temp2
		jnz		.loop2						; do while (ptr2[0] != 0)
;---[end of internal loop]-----------------
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

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
