;                                                                Accumulator.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                             ACCUMULATING BUFFER                             #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'
include	'Syscall.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################
extrn	'Array_Copy'		as	Copy

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
public	Constructor			as	'Accumulator_InitAccumulator'
public	Constructor			as	'_ZN11AccumulatorC1Em'

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
public	CopyConstructor		as	'Accumulator_CopyAccumulator'
public	CopyConstructor		as	'_ZN11AccumulatorC1ERKS_'

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
public	Destructor			as	'Accumulator_FreeAccumulator'
public	Destructor			as	'_ZN11AccumulatorD1Ev'

;******************************************************************************;
;       Accumulator functions                                                  ;
;******************************************************************************;

; Reserve space into the buffer
public	Reserve				as	'Accumulator_Reserve'
public	Reserve				as	'_ZN11Accumulator7ReserveEm'

; Fill reservered space into the buffer
public	Fill				as	'Accumulator_Fill'
public	Fill				as	'_ZN11Accumulator4FillEm'

; Get pointer to the buffer
public	GetData				as	'Accumulator_Data'
public	GetData				as	'_ZNK11Accumulator4DataEv'

; Clear the buffer
public	Clear				as	'Accumulator_Clear'
public	Clear				as	'_ZN11Accumulator5ClearEv'

;******************************************************************************;
;       Accumulator properties                                                 ;
;******************************************************************************;

; Accumulator capacity
public	GetCapacity			as	'Accumulator_Capacity'
public	GetCapacity			as	'_ZNK11Accumulator8CapacityEv'

; Accumulator size
public	GetSize				as	'Accumulator_Size'
public	GetSize				as	'_ZNK11Accumulator4SizeEv'

; Check if accumulator is empty
public	IsEmpty				as	'Accumulator_IsEmpty'
public	IsEmpty				as	'_ZNK11Accumulator7IsEmptyEv'

; Check if accumulator is initialized
public	IsInit				as	'Accumulator_IsInit'
public	IsInit				as	'_ZNK11Accumulator6IsInitEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
MINCAP		= 1 shl	PSCALE					; Min capacity of accumulator object

;==============================================================================;
;       Offsets inside accumulator object                                      ;
;==============================================================================;
BUFFER		= 0 * 8							; Offset of buffer pointer
CAPACITY	= 1 * 8							; Offset of object capacity field
SIZE		= 2 * 8							; Offset of object size field

;******************************************************************************;
;       Extending accumulator capacity                                         ;
;******************************************************************************;
Extend:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to accumulator object
newcap	equ		rsi							; new object capacity
;---[Internal variables]-------------------
status	equ		al							; operation status
buffer	equ		rax							; pointer to memory buffer
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
		mov		sc_prm1, [this + BUFFER]
		mov		sc_num, SYSCALL_MREMAP
		syscall								; buffer = mremap (buffer, cap, newcap, MREMAP_MAYMOVE)
		test	buffer, buffer				; if (buffer < 0)
		js		.error						;     then go to error branch
;---[Update object properties]-------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		newcap, [s_ncap]			; get "newcap" variable from the stack
		mov		[this + BUFFER], buffer		; this.buffer = buffer
		mov		[this + CAPACITY], newcap	; this.capacity = newcap
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
Constructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to accumulator object
cap		equ		rsi							; object capacity
;---[Internal variables]-------------------
status	equ		al							; operation status
buffer	equ		rax							; pointer to memory buffer
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_cap	equ		stack + 1 * 8				; stack position of "cap" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
	Capacity	cap, buffer, MINCAP			; compute capacity of the object
		mov		[s_cap], cap				; save "cap" variable into the stack
;---[Allocate memory for the object]-------
		mov		sc_prm6, 0
		mov		sc_prm5, -1
		mov		sc_prm4, 0x8022
		mov		sc_prm3, 0x3
		mov		sc_prm1, 0
		mov		sc_num, SYSCALL_MMAP
		syscall								; buffer = mmap (NULL, cap, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_POPULATE, -1, 0)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		test	buffer, buffer				; if (buffer < 0)
		js		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[this + BUFFER], buffer		; this.buffer = buffer
		mov		[this + CAPACITY], cap		; this.capacity = cap
		mov		qword [this + SIZE], 0		; this.size = 0
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		qword [this + BUFFER], 0		; this.buffer = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
CopyConstructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target accumulator object
source	equ		rsi							; pointer to source accumulator object
;---[Internal variables]-------------------
status	equ		al							; operation status
fptr	equ		rax							; pointer to call external function
size	equ		rdx							; object size (bytes)
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Prevent initialization by itself]-----
		cmp		this, source				; if (this == source)
		je		.exit						;     then go to exit
;---[Call object constructor]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		param2, [source + SIZE]
		call	Constructor					; status = this.Counstructor (source.size)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		test	status, status				; if (!status)
		jz		.exit						;     then go to exit
;---[Copy elements from source object]-----
		mov		size, [source + SIZE]
		mov		[this + SIZE], size			; this.size = source.size
		mov		param3, size
		mov		param2, [source + BUFFER]
		mov		param1, [this + BUFFER]
		mov		fptr, Copy
		add		stack, space				; restoring back the stack pointer
		jmp		fptr						; return Copy (this.buffer, source.buffer, source.size)
;---[Normal exit branch]-------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
Destructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to accumulator object
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		sc_prm2, [this + CAPACITY]
		mov		sc_prm1, [this + BUFFER]
		mov		sc_num, SYSCALL_MUNMAP
		syscall								; syscall munmap (buffer, capacity)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		qword [this + BUFFER], 0	; this.buffer = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Accumulator functions                                                  ;
;******************************************************************************;

;==============================================================================;
;       Reserve space into the buffer                                          ;
;==============================================================================;
Reserve:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to accumulator object
size	equ		rsi							; space to reserve into the buffer
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;---[Check object capacity]----------------
		add		size, [this + SIZE]			; size = this.size + size
	Capacity	size, result, MINCAP		; compute new capacity of target object
		cmp		size, [this + CAPACITY]		; if (size > this.capacity)
		ja		.ext						;     then try to extend object capacity
;---[Return pointer to reserved space]-----
.back:	mov		result, [this + BUFFER]
		add		result, [this + SIZE]		; return bufer + size
		ret
;---[Extend object capacity]---------------
.ext:	sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		call	Extend						; status = this.Extend (size)
		mov		this, [s_this]				; get "this" variable from the stack
		add		stack, space				; restoring back the stack pointer
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	xor		result, result				; return NULL
		ret

;==============================================================================;
;       Fill reservered space into the buffer                                  ;
;==============================================================================;
Fill:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to accumulator object
size	equ		rsi							; size of data to add to the buffer
;---[Internal variables]-------------------
status	equ		al							; operation status
;------------------------------------------
		add		size, [this + SIZE]			; size = this.size + size
		cmp		size, [this + CAPACITY]		; if (size > this.capacity)
		ja		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[this + SIZE], size			; this.size += size
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret

;==============================================================================;
;       Get pointer to the buffer                                              ;
;==============================================================================;
GetData:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to accumulator object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + BUFFER]		; get pointer to the buffer
		ret

;==============================================================================;
;       Clear the buffer                                                       ;
;==============================================================================;
Clear:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to accumulator object
;------------------------------------------
		mov		qword [this + SIZE], 0		; this.size = 0
		ret

;******************************************************************************;
;       Accumulator properties                                                 ;
;******************************************************************************;
GetCapacity:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to accumulator object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + CAPACITY]	; get object capacity
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetSize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to accumulator object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + SIZE]		; get object size
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IsEmpty:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to accumulator object
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
this	equ		rdi							; pointer to accumulator object
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
