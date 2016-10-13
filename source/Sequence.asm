;                                                                   Sequence.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                      SUBSEQUENCE SEARCHING ALGORITHMS                       #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Boyer-Moore-Horspool pattern hash                                      ;
;******************************************************************************;

; Unsigned integer types
public	BMH8						as	'BMH_uint8'
public	BMH16						as	'BMH_uint16'
public	BMH32						as	'BMH_uint32'
public	BMH64						as	'BMH_uint64'
public	BMH8						as	'_ZN3BMHC1EPKhmb'
public	BMH16						as	'_ZN3BMHC1EPKtmb'
public	BMH32						as	'_ZN3BMHC1EPKjmb'
public	BMH64						as	'_ZN3BMHC1EPKymb'

; Signed integer types
public	BMH8						as	'BMH_sint8'
public	BMH16						as	'BMH_sint16'
public	BMH32						as	'BMH_sint32'
public	BMH64						as	'BMH_sint64'
public	BMH8						as	'_ZN3BMHC1EPKamb'
public	BMH16						as	'_ZN3BMHC1EPKsmb'
public	BMH32						as	'_ZN3BMHC1EPKimb'
public	BMH64						as	'_ZN3BMHC1EPKxmb'

; Other types
public	BMH64						as	'BMH_size'
public	BMH8						as	'BMH'
public	BMH64						as	'_ZN3BMHC1EPKmmb'
public	BMH8						as	'_ZN3BMHC1EPKvmb'

;******************************************************************************;
;       Boyer-Moore-Horspool subsequence searching algorithm                   ;
;******************************************************************************;

; Unsigned integer types
public	BMH_Find8					as	'Sequence_Find_uint8'
public	BMH_Find16					as	'Sequence_Find_uint16'
public	BMH_Find32					as	'Sequence_Find_uint32'
public	BMH_Find64					as	'Sequence_Find_uint64'
public	BMH_Find8					as	'_ZN8Sequence4FindEPKhmPK3BMH'
public	BMH_Find16					as	'_ZN8Sequence4FindEPKtmPK3BMH'
public	BMH_Find32					as	'_ZN8Sequence4FindEPKjmPK3BMH'
public	BMH_Find64					as	'_ZN8Sequence4FindEPKymPK3BMH'

; Signed integer types
public	BMH_Find8					as	'Sequence_Find_sint8'
public	BMH_Find16					as	'Sequence_Find_sint16'
public	BMH_Find32					as	'Sequence_Find_sint32'
public	BMH_Find64					as	'Sequence_Find_sint64'
public	BMH_Find8					as	'_ZN8Sequence4FindEPKamPK3BMH'
public	BMH_Find16					as	'_ZN8Sequence4FindEPKsmPK3BMH'
public	BMH_Find32					as	'_ZN8Sequence4FindEPKimPK3BMH'
public	BMH_Find64					as	'_ZN8Sequence4FindEPKxmPK3BMH'

; Other types
public	BMH_Find64					as	'Sequence_Find_size'
public	BMH_Find8					as	'Sequence_Find'
public	BMH_Find64					as	'_ZN8Sequence4FindEPKmmPK3BMH'
public	BMH_Find8					as	'_ZN8Sequence4FindEPKvmPK3BMH'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
HSIZE		= 256							; Size of preprocessing hash table

;==============================================================================;
;       Offsets inside BMH object                                              ;
;==============================================================================;
PATT		= 256 * 8						; Offset of pattern pointer field
SIZE		= 257 * 8						; Offset of pattern size field
BWD			= 258 * 8						; Offset of backward direction flag

;******************************************************************************;
;       Boyer-Moore-Horspool pattern hash                                      ;
;******************************************************************************;
macro	BMH_HASH	scale
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to BMH_char8 object
pattern	equ		rsi							; pointer to pattern
size	equ		rdx							; pattern size
bwd		equ		cl							; backward direction search flag
;---[Internal variables]-------------------
element	equ		rax							; sequence element
ptr		equ		r8							; pointer to hash array
count	equ		r9							; loop counter
vsize	equ		xmm0						; vector register which holds size of pattern
hash	equ		this						; pointer to hash array
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.empty						;     then go to empty pattern branch
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		[this + PATT], pattern		; this.pattern = pattern
		mov		[this + SIZE], size			; this.size = size
		mov		[this + BWD], bwd			; this.backward = backward
;---[Initialization of hash array]---------
		movq	vsize, size					; vsize = size
		clone	vsize, 3					; duplicate value through the entire register
		mov		ptr, hash					; ptr = hash
		mov		count, HSIZE * 8			; count = HSIZE * 8
;---[Initialization loop]------------------
.iloop:
repeat	CLINE / VSIZE
		movdqa	[ptr + (%-1) * VSIZE], vsize
end repeat
		add		ptr, CLINE					; ptr += CLINE
		sub		count, CLINE				; count -= CLINE
		jnz		.iloop						; do while (count != 0)
;---[End of initialization loop]-----------
		test	bwd, bwd					; if (backward)
		jnz		.bwd						;     then go to backward hash branch
;---[Forward hash branch]------------------
		sub		size, 1						; size--
		jz		@f							; if (size == 0), then go to exit
;---[Shift calculation loop]---------------
.loop1:	movzx	element, byte [pattern]		; element = pattern[0]
		mov		[hash + element * 8], size	; hash[element] = size
		add		pattern, 1					; pattern++
		sub		size, 1						; size--
		jnz		.loop1						; do while (size != 0)
;---[End of shift calculation loop]--------
@@:		ret
;---[Backward hash branch]-----------------
.bwd:	lea		pattern, [pattern + size - 1]
		sub		size, 1						; size--
		jz		@f							; if (size == 0), then go to exit
;---[Shift calculation loop]---------------
.loop2:	movzx	element, byte [pattern]		; element = pattern[0]
		mov		[hash + element * 8], size	; hash[element] = size
		sub		pattern, 1					; pattern--
		sub		size, 1						; size--
		jnz		.loop2						; do while (size != 0)
;---[End of shift calculation loop]--------
@@:		ret
;---[Empty pattern branch]-----------------
.empty:	mov		qword [this + PATT], 0		; this.pattern = NULL
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		byte [this + BWD], 0		; this.backward = false
		ret
}
BMH8:	BMH_HASH	0
BMH16:	BMH_HASH	1
BMH32:	BMH_HASH	2
BMH64:	BMH_HASH	3

;******************************************************************************;
;       Boyer-Moore-Horspool subsequence searching algorithm                   ;
;******************************************************************************;
macro	BMH_FIND	scale
{
;---[Parameters]---------------------------
source	equ		rdi							; pointer to source sequence
ssize	equ		rsi							; size of source sequence
pattern	equ		rdx							; pointer to BMH object
;---[Internal variables]-------------------
temp	equ		cl							; temporary register
sptr	equ		rax							; temporary pointer to source sequence
pptr	equ		r8							; temporary pointer to pattern sequence
size	equ		r9							; size of pattern (bytes)
src		equ		r10							; pointer to source sequence
patt	equ		r11							; pointer to pattern sequence
psize	equ		rcx							; pattern size (bytes)
element	equ		ssize						; sequence element
hash	equ		pattern						; pointer to hash array
stack	equ		rsp							; stack pointer
s_size	equ		stack - 1 * 8				; stack position of "size" variable
s_bar	equ		stack - 2 * 8				; stack position of "barier" variable
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		shftl	ssize, scale				; convert size to bytes
		mov		patt, [pattern + PATT]		; patt = pattern.pattern
		mov		psize, [pattern + SIZE]		; psize = pattern.size
		test	psize, psize				; if (psize == 0)
		jz		.error						;     then go to error branch
		test	psize, bytes - 1			; if pattern size is incorrect
		jnz		.error						;     then go to error branch
		cmp		ssize, psize				; if (ssize < psize)
		jb		.error						;     then go to error branch
;---[Normal execution branch]--------------
		cmp		byte [pattern + BWD], 0		; if (pattern.backward)
		jnz		.bwd						;     then go to backward search branch
;---[Forward search branch]----------------
		lea		patt, [patt + psize - 1]	; patt = pattern.pattern + psize - 1
		lea		src, [source + psize - 1]	; src = source + psize - 1
		add		ssize, source				; ssize += source
		mov		[s_size], psize				; save "size" variable into the stack
		mov		[s_bar], ssize				; save "barier" variable into the stack
		sub		source, 1
		neg		source						; source = 1 - source
;---[External loop]------------------------
.loop1:	mov		pptr, patt					; pptr = patt
		mov		sptr, src					; sptr = src
		mov		size, [s_size]				; size = psize
;---[Internal loop]------------------------
@@:		mov		temp, [pptr]
		cmp		temp, [sptr]				; if (pptr[0] != sptr[0])
		jne		.brk1						;     then break the loop
		sub		pptr, 1						; pptr--
		sub		sptr, 1						; sptr--
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;---[End of internal loop]-----------------
		add		sptr, source				; sptr += source
		test	sptr, bytes - 1				; if position is correct
		jz		.found						;     then go to found branch
;---[End of internal loop]-----------------
.brk1:	movzx	element, byte [src]			; element = src[0]
		add		src, [hash + element * 8]	; src += hash[element]
		cmp		src, [s_bar]
		jb		.loop1						; do while (src < barier)
;---[End of external loop]-----------------
		mov		sptr, NOT_FOUND				; return NOT_FOUND
		ret
;---[Found branch]-------------------------
.found:	shftr	sptr, scale					; return sptr
		ret
;---[backward search branch]---------------
.bwd:	lea		src, [source + ssize]
		sub		src, psize					; src = source + ssize - psize
		mov		[s_size], psize				; save "size" variable into the stack
		mov		[s_bar], source				; save "barier" variable into the stack
		neg		source						; source = -source
;---[External loop]------------------------
.loop2:	mov		pptr, patt					; pptr = patt
		mov		sptr, src					; sptr = src
		mov		size, [s_size]				; size = psize
;---[Internal loop]------------------------
@@:		mov		temp, [pptr]
		cmp		temp, [sptr]				; if (pptr[0] != sptr[0])
		jne		.brk2						;     then break the loop
		add		pptr, 1						; pptr++
		add		sptr, 1						; sptr++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;---[End of internal loop]-----------------
		lea		sptr, [src + source]		; sptr = src + source
		test	sptr, bytes - 1				; if position is correct
		jz		.found						;     then go to found branch
;---[End of internal loop]-----------------
.brk2:	movzx	element, byte [src]			; element = src[0]
		sub		src, [hash + element * 8]	; src -= hash[element]
		cmp		src, [s_bar]
		jae		.loop2						; do while (src >= barier)
;---[End of external loop]-----------------
.error:	mov		sptr, NOT_FOUND				; return NOT_FOUND
		ret
}
BMH_Find8:	BMH_FIND	0
BMH_Find16:	BMH_FIND	1
BMH_Find32:	BMH_FIND	2
BMH_Find64:	BMH_FIND	3

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
