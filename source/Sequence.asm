;                                                                   Sequence.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                      SUBSEQUENCE SEARCHING ALGORITHMS                       #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2012, Jack Black #
;###############################################################################
format	ELF64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Boyer-Moore-Horspool pattern hash                                      ;
;******************************************************************************;

; Unsigned integer types
public	BMH8		as	'BMH_uint8'
public	BMH16		as	'BMH_uint16'
public	BMH32		as	'BMH_uint32'
public	BMH64		as	'BMH_uint64'
public	BMH8		as	'_ZN3BMHC1EPKhmb'
public	BMH16		as	'_ZN3BMHC1EPKtmb'
public	BMH32		as	'_ZN3BMHC1EPKjmb'
public	BMH64		as	'_ZN3BMHC1EPKymb'

; Signed integer types
public	BMH8		as	'BMH_sint8'
public	BMH16		as	'BMH_sint16'
public	BMH32		as	'BMH_sint32'
public	BMH64		as	'BMH_sint64'
public	BMH8		as	'_ZN3BMHC1EPKamb'
public	BMH16		as	'_ZN3BMHC1EPKsmb'
public	BMH32		as	'_ZN3BMHC1EPKimb'
public	BMH64		as	'_ZN3BMHC1EPKxmb'

;******************************************************************************;
;       Boyer-Moore-Horspool subsequence searching algorithm                   ;
;******************************************************************************;

; Unsigned integer types
public	BMH_Find8	as	'Sequence_Find_uint8'
public	BMH_Find16	as	'Sequence_Find_uint16'
public	BMH_Find32	as	'Sequence_Find_uint32'
public	BMH_Find64	as	'Sequence_Find_uint64'
public	BMH_Find8	as	'_ZN8Sequence4FindEPKhmPK3BMH'
public	BMH_Find16	as	'_ZN8Sequence4FindEPKtmPK3BMH'
public	BMH_Find32	as	'_ZN8Sequence4FindEPKjmPK3BMH'
public	BMH_Find64	as	'_ZN8Sequence4FindEPKymPK3BMH'

; Signed integer types
public	BMH_Find8	as	'Sequence_Find_sint8'
public	BMH_Find16	as	'Sequence_Find_sint16'
public	BMH_Find32	as	'Sequence_Find_sint32'
public	BMH_Find64	as	'Sequence_Find_sint64'
public	BMH_Find8	as	'_ZN8Sequence4FindEPKamPK3BMH'
public	BMH_Find16	as	'_ZN8Sequence4FindEPKsmPK3BMH'
public	BMH_Find32	as	'_ZN8Sequence4FindEPKimPK3BMH'
public	BMH_Find64	as	'_ZN8Sequence4FindEPKxmPK3BMH'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

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
elemnt	equ		rax							; register to load/store sequence element
elemntl	equ		eax							; low part of element
hptr	equ		r8							; pointer to hash array
vector	equ		xmm0						; vector register to hold size of pattern
count	equ		elemntl						; counter
hash	equ		this						; pointer to hash array
hash_sz	= 256								; size of hash array
block	= 64								; block size (bytes)
size_of	= hash_sz * 8						; offset of size variable inside BMH_charX
patt_of	= size_of + 8						; offset of pattern variable inside BMH_charX
bwd_of	= patt_of + 8						; offset of backward variable inside BMH_charX
;------------------------------------------
if scale > 0
		shl		size, scale					; scale size variable
end if
		test	size, size					; if (size == 0)
		jz		.empty						; then go to empty pattern branch
;---[Normal execution branch]--------------
		mov		[this + size_of], size		; this -> size = size
		mov		[this + patt_of], pattern	; this -> pattern = pattern
		mov		[this + bwd_of], bwd		; this -> backward = backward
;---[Initialization of hash array]---------
		movq	vector, size				; vector = size
		mov		hptr, hash					; hptr = hash
	punpcklqdq	vector, vector				; duplicating size through the entire register
		mov		count, hash_sz				; count = hash_sz
;---[Initialization loop]------------------
.iloop:	movdqa	[hptr + 0x00], vector		; hptr[0] = vector
		movdqa	[hptr + 0x10], vector		; hptr[16] = vector
		movdqa	[hptr + 0x20], vector		; hptr[32] = vector
		movdqa	[hptr + 0x30], vector		; hptr[48] = vector
		add		hptr, block					; hptr += block
		sub		count, block / 8			; count -= block / 8
		jnz		.iloop						; do while (count != 0)
;------------------------------------------
		test	bwd, bwd					; if (backward)
		jnz		.bkwrd						; then go to backward hash branch
;---[Forward hash branch]------------------
		jmp		@f
.loop1:
if scale = 0
		movzx	elemnt, byte [pattern]		; elemnt = pattern[0]
else if scale = 1
		movzx	elemnt, word [pattern]		; elemnt = pattern[0]
else if scale = 2
		mov		elemntl, dword [pattern]	; elemnt = pattern[0]
else if scale = 3
		mov		elemnt, qword [pattern]		; elemnt = pattern[0]
end if
		mov		[hash + elemnt * 8], size	; hash[elemnt] = size
		add		pattern, 1					; pattern++
@@:		sub		size, 1						; size--
		jnz		.loop1						; do while (size != 0)
		ret
;---[Backward hash branch]-----------------
.bkwrd:	lea		pattern, [pattern + size]
		jmp		@f
.loop2:	sub		pattern, 1 					; pattern--
if scale = 0
		movzx	elemnt, byte [pattern]		; elemnt = pattern[0]
else if scale = 1
		movzx	elemnt, word [pattern]		; elemnt = pattern[0]
else if scale = 2
		mov		elemntl, dword [pattern]	; elemnt = pattern[0]
else if scale = 3
		mov		elemnt, qword [pattern]		; elemnt = pattern[0]
end if
		mov		[hash + elemnt * 8], size	; hash[elemnt] = size
@@:		sub		size, 1						; size--
		jnz		.loop2						; do while (size != 0)
		ret
;---[Empty pattern branch]-----------------
.empty:	mov		qword [this + size_of], 0	; this -> size = 0
		mov		qword [this + patt_of], 0	; this -> pattern = NULL
		mov		byte [this + bwd_of], 0		; this -> backward = false
		ret
}
BMH8:	BMH_HASH		0
BMH16:	BMH_HASH		1
BMH32:	BMH_HASH		2
BMH64:	BMH_HASH		3

;******************************************************************************;
;       Boyer-Moore-Horspool subsequence searching algorithm                   ;
;******************************************************************************;
macro	BMH_FIND	element, scale
{
;---[Parameters]---------------------------
source	equ		rdi							; pointer to source sequence
ssize	equ		rsi							; size of source sequence
pattern	equ		rdx							; pointer to BMHpattern
;---[Internal variables]-------------------
psize	equ		rcx							; pattern size
result	equ		rax							; result register
key		equ		rdi							; hash key
keyl	equ		edi							; low part of key
patt	equ		r8							; pointer to pattern sequence
p_start	equ		r9							; start position for pattern comparison
s_start	equ		r10							; start position for source comparison
s_end	equ		r11							; pointer to the end of source sequence
hash	equ		pattern						; pointer to hash array
p_pat	equ		psize						; pointer to current element of pattern
p_src	equ		ssize						; pointer to current element of source
s_src	equ		rsp - 1 * 8					; stack position of "source" variable
hash_of	= 256								; size of hash array
size_of	= hash_of * 8						; offset of size variable inside BMH_charX
patt_of	= size_of + 8						; offset of pattern variable inside BMH_charX
bwd_of	= patt_of + 8						; offset of backward variable inside BMH_charX
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
if scale > 0
		shl		ssize, scale				; scale ssize variable
end if
		mov		psize, [pattern + size_of]	; psize = pattern -> size
		test	psize, psize				; if (psize == 0)
		jz		.error						; then go to error branch
		test	psize, bytes - 1			; if (psize & mask != 0)
		jnz		.error						; then go to error branch
		cmp		ssize, psize				; if (ssize < psize)
		jb		.error						; then go to error branch
;---[Normal execution branch]--------------
		cmp		byte [pattern + bwd_of], 0	; if (pattern -> backward)
		ja		.bkwrd						; then go to backward hash branch
;---[Forward search branch]----------------
		lea		s_start, [source + psize]	; s_start = source + psize
		mov		patt, [pattern + patt_of]	; patt = pattern -> pattern
		lea		s_end, [source + ssize]		; s_end = source + ssize
		lea		p_start, [patt + psize]		; pstart = patt + psize
		sub		source, bytes				; source--
		mov		[s_src], source				; save source variable into the stack
;---[External loop]------------------------
.loop1:	mov		p_pat, p_start				; p_pat = p_start
		mov		p_src, s_start				; p_src = s_start
;---[Internal loop]------------------------
@@:		sub		p_pat, bytes				; p_pat--
		sub		p_src, bytes				; p_src--
		cmp		p_pat, patt					; if (p_pat < patt)
		jb		.fnd1						; then pattern is probably found
		mov		element, [p_src]
		cmp		element, [p_pat]
		je		@b							; do while (p_pat[0] == p_src[0])
;---[End of internal loop]-----------------
@@:
if scale = 0
		movzx	key, byte [s_start - 1]		; key = s_start[-1]
else if scale = 1
		movzx	key, word [s_start - 1]		; key = s_start[-1]
else if scale = 2
		mov		keyl, dword [s_start - 1]	; key = s_start[-1]
else if scale = 3
		mov		key, qword [s_start - 1]	; key = s_start[-1]
end if
		add		s_start, [hash + key * 8]	; s_start += hash[key];
		cmp		s_start, s_end
		jbe		.loop1						; do while (s_start <= s_end)
;---[End of external loop]-----------------
		mov		result, -1					; return -1 (pattern not found)
		ret
.fnd1:	sub		p_src, [s_src]				; p_src -= source
if scale > 0
		test	p_src, bytes - 1			; if (p_src & mask != 0)
		jnz		@b							; then not found, reapeat search
		shr		p_src, scale				; else adjust result
end if
		mov		result, p_src				; return p_src - source (index of first match)
		ret
;---[Backward search branch]---------------
.bkwrd:	sub		ssize, psize				; ssize -= psize
		mov		p_start, [pattern + patt_of]
		lea		s_end, [source - bytes]		; s_end = source - 1
		sub		p_start, bytes				; p_start = pattern -> pattern - 1
		lea		s_start, [s_end + ssize]	; s_start = s_end + ssize
		lea		patt, [p_start + psize]		; patt = p_start + psize
		lea		source, [source + psize]	; source += psize
		mov		[s_src], source				; save source variable into the stack
;---[External loop]------------------------
.loop2:	mov		p_pat, p_start				; p_pat = p_start
		mov		p_src, s_start				; p_src = s_start
;---[Internal loop]------------------------
@@:		add		p_pat, bytes				; p_pat++
		add		p_src, bytes				; p_src++
		cmp		p_pat, patt					; if (p_pat > patt)
		ja		.fnd2						; then pattern is probably found
		mov		element, [p_src]
		cmp		element, [p_pat]
		je		@b							; do while (p_pat[0] == p_src[0])
;---[End of internal loop]-----------------
@@:
if scale = 0
		movzx	key, byte [s_start - 1]		; key = s_start[-1]
else if scale = 1
		movzx	key, word [s_start - 1]		; key = s_start[-1]
else if scale = 2
		mov		keyl, dword [s_start - 1]	; key = s_start[-1]
else if scale = 3
		mov		key, qword [s_start - 1]	; key = s_start[-1]
end if
		sub		s_start, [hash + key * 8]	; s_start -= hash[key];
		cmp		s_start, s_end
		jae		.loop2						; do while (s_start >= s_end)
;---[End of external loop]-----------------
		mov		result, -1					; return -1 (pattern not found)
		ret
.fnd2:	sub		p_src, [s_src]				; p_src -= source
if scale > 0
		test	p_src, bytes - 1			; if (p_src & mask != 0)
		jnz		@b							; then not found, reapeat search
		shr		p_src, scale				; else adjust result
end if
		mov		result, p_src				; return p_src - source (index of first match)
		ret
;---[Error branch]-------------------------
.error:	mov		result, -1					; return -1 (pattern not found)
		ret
}
BMH_Find8:	BMH_FIND	al, 0
BMH_Find16:	BMH_FIND	ax, 1
BMH_Find32:	BMH_FIND	eax, 2
BMH_Find64:	BMH_FIND	rax, 3

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
