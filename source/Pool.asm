;                                                                       Pool.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                                 OBJECT POOL                                 #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2014, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'
include	'Syscall.inc'

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
public	Constructor			as	'Pool_InitPool'
public	Constructor			as	'_ZN4PoolC1Emmh'

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
public	Destructor			as	'Pool_FreePool'
public	Destructor			as	'_ZN4PoolD1Ev'

;******************************************************************************;
;       Pool functions                                                         ;
;******************************************************************************;

; Allocate new object
public	Alloc				as	'Pool_Alloc'
public	Alloc				as	'_ZN4Pool5AllocEv'

; Deallocate existing object
public	Free				as	'Pool_Free'
public	Free				as	'_ZN4Pool4FreeEPv'

; Check if object is allocated
public	IsAlloc				as	'Pool_IsAlloc'
public	IsAlloc				as	'_ZNK4Pool7IsAllocEPv'

; Check if object is free
public	IsFree				as	'Pool_IsFree'
public	IsFree				as	'_ZNK4Pool6IsFreeEPv'

; Clear object pool
public	Clear				as	'Pool_Clear'
public	Clear				as	'_ZN4Pool5ClearEv'

;******************************************************************************;
;       Pool properties                                                        ;
;******************************************************************************;

; Pool capacity
public	GetCapacity			as	'Pool_Capacity'
public	GetCapacity			as	'_ZNK4Pool8CapacityEv'

; Pool size
public	GetSize				as	'Pool_Size'
public	GetSize				as	'_ZNK4Pool4SizeEv'

; Check if pool is full
public	IsFull				as	'Pool_IsFull'
public	IsFull				as	'_ZNK4Pool6IsFullEv'

; Check if pool is empty
public	IsEmpty				as	'Pool_IsEmpty'
public	IsEmpty				as	'_ZNK4Pool7IsEmptyEv'

; Check if pool is initialized
public	IsInit				as	'Pool_IsInit'
public	IsInit				as	'_ZNK4Pool6IsInitEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
INUSE		= -1							; Marker if the node is in use
MINCAP		= 1 shl	PSCALE					; Min capacity of pool object

;==============================================================================;
;       Offsets inside pool object                                             ;
;==============================================================================;
ARRAY		= 0 * 8							; Offset of array pointer
CAPACITY	= 1 * 8							; Offset of object capacity field
SIZE		= 2 * 8							; Offset of object size field
BSIZE		= 3 * 8							; Offset of block size field
POOL		= 4 * 8							; Offset of pool free node field

;******************************************************************************;
;       Initialization of free nodes                                           ;
;******************************************************************************;
InitFree:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
cap		equ		rsi							; array capacity
bsize	equ		rdx							; block size
;---[Internal variables]-------------------
next	equ		rax							; next free node
;------------------------------------------
		mov		next, array					; next = array
		sub		array, 8					; array--
		sub		cap, bsize					; cap--
		jz		.exit						; if (cap == 0), then go to exit
;---[Nodes init loop]----------------------
.nloop:	add		next, bsize					; next += bsize
		add		array, bsize				; array++
		mov		[array], next				; array[0] = next
		sub		cap, bsize					; cap--
		jnz		.nloop						; do while (cap != 0)
;---[End of nodes init loop]---------------
.exit:	add		array, bsize				; array++
		mov		qword [array], 0			; array[0] = NULL
		ret

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
Constructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to pool object
cap		equ		rsi							; array capacity
osize	equ		rdx							; object size
ascale	equ		rcx							; align scale value
;---[Internal variables]-------------------
array	equ		rax							; pointer to array of nodes
rem		equ		rdx							; remainder value of div operation
ascalel	equ		cl							; low part of align scale value
min		equ		array						; min align scale value
mask	equ		array						; mask to compute block size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_cap	equ		stack + 1 * 8				; stack position of "cap" variable
s_osize	equ		stack + 2 * 8				; stack position of "osize" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		min, 3						; min = 3
		and		ascale, 63					; ascale &= 63
		cmp		ascale, min					; if (ascale < min)
		cmovb	ascale, min					;     ascale = min
		mov		mask, 1
		shl		mask, ascalel
		sub		mask, 1						; mask = (1 << ascale) - 1
		lea		osize, [osize + mask + 8]
		not		mask
		and		osize, mask					; osize = (osize + mask + 8) & (~mask)
		mov		[s_osize], osize			; save "osize" variable into the stack
		mov		array, cap
		mul		osize
		add		array, MINCAP - 1
		and		array, -MINCAP				; cap = cap * osize + MINCAP - 1 & (-MINCAP)
		mov		[s_cap], array				; save "cap" variable into the stack
;---[Allocate memory for the object]-------
		mov		sc_prm6, 0
		mov		sc_prm5, -1
		mov		sc_prm4, 0x22
		mov		sc_prm3, 0x3
		mov		sc_prm2, array
		mov		sc_prm1, 0
		mov		sc_num, SYSCALL_MMAP
		syscall								; array = mmap (NULL, cap, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + POOL], array		; this.pool = array
		xor		rem, rem					; rem = 0
		mov		array, cap
		div		qword [s_osize]				; array = cap % osize
		sub		cap, rem					; cap = cap - cap % osize
		mov		osize, [s_osize]			; get "osize" variable from the stack
		mov		[this + CAPACITY], cap		; this.capacity = cap
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		[this + BSIZE], osize		; this.bsize = osize
		mov		param1, [this + ARRAY]
		add		stack, space				; restoring back the stack pointer
		jmp		InitFree					; return InitFree (array, capacity, osize)
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + BSIZE], 0		; this.bsize = 0
		mov		qword [this + POOL], 0		; this.pool = NULL
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
Destructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to pool object
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		sc_prm2, [this + CAPACITY]
		add		sc_prm2, MINCAP - 1
		and		sc_prm2, -MINCAP
		mov		sc_prm1, [this + ARRAY]
		mov		sc_num, SYSCALL_MUNMAP
		syscall								; munmap (array, capacity + MINCAP - 1 & (-MINCAP))
		mov		this, [s_this]				; get "this" variable from the stack
		mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		qword [this + BSIZE], 0		; this.bsize = 0
		mov		qword [this + POOL], 0		; this.pool = NULL
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Pool functions                                                         ;
;******************************************************************************;

;==============================================================================;
;       Allocate new object                                                    ;
;==============================================================================;
Alloc:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to pool object
;---[Internal variables]-------------------
result	equ		rax							; result register
bsize	equ		rdx							; block size
temp	equ		rcx							; temporary register
;---[Check pool status]--------------------
		mov		result, [this + POOL]		; result = pool
		test	result, result				; if (pool == NULL)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		bsize, [this + BSIZE]		; get block size
		mov		temp, [result + bsize - 8]
		mov		qword [result + bsize - 8], INUSE
		mov		[this + POOL], temp			; pool = *(result + bsize - 8)
		add		[this + SIZE], bsize		; size++
.exit:	ret

;==============================================================================;
;       Deallocate existing object                                             ;
;==============================================================================;
Free:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to pool object
ptr		equ		rsi							; pointer to object to free
;---[Internal variables]-------------------
index	equ		rax							; index value
bsize	equ		rdx							; block size
temp	equ		rcx							; temporary register
;---[Check pointer range]------------------
		mov		index, ptr
		sub		index, [this + ARRAY]		; index = ptr - array
		cmp		index, [this + CAPACITY]	; if (index >= capacity)
		jae		.exit						;     then go to exit
;---[Check object status]------------------
		mov		bsize, [this + BSIZE]		; get block size
		cmp		qword [ptr + bsize - 8], INUSE
		jne		.exit						; if (*(ptr + bsize - 8) != INUSE), then go to exit
;---[Normal execution branch]--------------
		mov		temp, [this + POOL]
		mov		[ptr + bsize - 8], temp		; *(ptr + bsize - 8) = pool
		mov		[this + POOL], ptr			; pool = ptr
		sub		[this + SIZE], bsize		; size--
.exit:	ret

;==============================================================================;
;       Check if object is allocated                                           ;
;==============================================================================;
IsAlloc:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to pool object
ptr		equ		rsi							; pointer to object to check
;---[Internal variables]-------------------
status	equ		al							; operation status
index	equ		rax							; index value
bsize	equ		rdx							; block size
;---[Check pointer range]------------------
		mov		index, ptr
		sub		index, [this + ARRAY]		; index = ptr - array
		cmp		index, [this + CAPACITY]	; if (index >= capacity)
		setnae	status						;     return false
		jae		.exit
;---[Check object status]------------------
		mov		bsize, [this + BSIZE]		; get block size
		cmp		qword [ptr + bsize - 8], INUSE
		sete	status						; if (*(ptr + bsize - 8) == INUSE)
.exit:	ret									;     then return true

;==============================================================================;
;       Check if object is free                                                ;
;==============================================================================;
IsFree:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to pool object
ptr		equ		rsi							; pointer to object to check
;---[Internal variables]-------------------
status	equ		al							; operation status
index	equ		rax							; index value
bsize	equ		rdx							; block size
;---[Check pointer range]------------------
		mov		index, ptr
		sub		index, [this + ARRAY]		; index = ptr - array
		cmp		index, [this + CAPACITY]	; if (index >= capacity)
		setnae	status						;     return false
		jae		.exit
;---[Check object status]------------------
		mov		bsize, [this + BSIZE]		; get block size
		cmp		qword [ptr + bsize - 8], INUSE
		setne	status						; if (*(ptr + bsize - 8) != INUSE)
.exit:	ret

;==============================================================================;
;       Clear object pool                                                      ;
;==============================================================================;
Clear:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to pool object
;---[Internal variables]-------------------
array	equ		rax							; pointer to array of nodes
;------------------------------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		[this + POOL], array		; this.pool = this.array
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		param3, [this + BSIZE]
		mov		param2, [this + CAPACITY]
		mov		param1, array
		jmp		InitFree					; call InitFree (array, capacity, bsize)

;******************************************************************************;
;       Pool properties                                                        ;
;******************************************************************************;
GetCapacity:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to pool object
;---[Internal variables]-------------------
result	equ		rax							; result register
high	equ		rdx							; high part of value for div operation
;------------------------------------------
		xor		high, high					; high = 0
		mov		result, [this + CAPACITY]	; get object capacity
		div		qword [this + BSIZE]		; return param / bsize
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetSize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to pool object
;---[Internal variables]-------------------
result	equ		rax							; result register
high	equ		rdx							; high part of value for div operation
;------------------------------------------
		xor		high, high					; high = 0
		mov		result, [this + SIZE]		; get object size
		div		qword [this + BSIZE]		; return param / bsize
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IsFull:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to pool object
;---[Internal variables]-------------------
status	equ		al							; operation status
size	equ		rdx							; object size
;------------------------------------------
		mov		size, [this + SIZE]			; get object size
		cmp		size, [this + CAPACITY]		; if (size == capacity)
		sete	status						;     return true
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IsEmpty:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to pool object
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
this	equ		rdi							; pointer to pool object
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
