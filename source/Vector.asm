;                                                                     Vector.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                              VECTOR DATA TYPE                               #
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
extrn	'Array_Move'		as	Move

;###############################################################################
;#      Export section                                                         #
;###############################################################################
public	FindSet				as	'FindSet'

;******************************************************************************;
;       Constructor                                                            ;
;******************************************************************************;
public	Constructor			as	'Vector_InitVector'
public	Constructor			as	'Stack_InitStack'
public	Constructor			as	'_ZN6VectorC1Em'
public	Constructor			as	'_ZN5StackC1Em'

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
public	CopyConstructor		as	'Vector_CopyVector'
public	CopyConstructor		as	'Stack_CopyStack'
public	CopyConstructor		as	'_ZN6VectorC1ERKS_'
public	CopyConstructor		as	'_ZN5StackC1ERKS_'

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
public	Destructor			as	'Vector_FreeVector'
public	Destructor			as	'Stack_FreeStack'
public	Destructor			as	'_ZN6VectorD1Ev'
public	Destructor			as	'_ZN5StackD1Ev'

;******************************************************************************;
;       Copying elements                                                       ;
;******************************************************************************;
public	CopyVector			as	'Vector_Copy'
public	CopyStack			as	'Stack_Copy'
public	CopyVector			as	'_ZN6Vector4CopyEmPKS_mm'
public	CopyStack			as	'_ZN5Stack4CopyEmPKS_mm'

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;
public	MoveVector			as	'Vector_Move'
public	MoveStack			as	'Stack_Move'
public	MoveVector			as	'_ZN6Vector4MoveEmPS_mm'
public	MoveStack			as	'_ZN5Stack4MoveEmPS_mm'

;******************************************************************************;
;       Addition of element                                                    ;
;******************************************************************************;
public	PushData			as	'Vector_Push'
public	PushData			as	'Stack_Push'
public	PushData			as	'_ZN6Vector4PushEPK6data_t'
public	PushData			as	'_ZN5Stack4PushEPK6data_t'

;******************************************************************************;
;       Removal of element                                                     ;
;******************************************************************************;
public	PopData				as	'Vector_Pop'
public	PopData				as	'Stack_Pop'
public	PopData				as	'_ZN6Vector3PopEP6data_t'
public	PopData				as	'_ZN5Stack3PopEP6data_t'

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
public	InsertVector		as	'Vector_Insert'
public	InsertStack			as	'Stack_Insert'
public	InsertVector		as	'_ZN6Vector6InsertEPK6data_tm'
public	InsertStack			as	'_ZN5Stack6InsertEPK6data_tm'

;******************************************************************************;
;       Extraction of element                                                  ;
;******************************************************************************;
public	ExtractVector		as	'Vector_Extract'
public	ExtractStack		as	'Stack_Extract'
public	ExtractVector		as	'_ZN6Vector7ExtractEP6data_tm'
public	ExtractStack		as	'_ZN5Stack7ExtractEP6data_tm'

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
public	SetVector			as	'Vector_Set'
public	SetStack			as	'Stack_Set'
public	SetVector			as	'_ZN6Vector3SetEPK6data_tm'
public	SetStack			as	'_ZN5Stack3SetEPK6data_tm'

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;
public	GetVector			as	'Vector_Get'
public	GetStack			as	'Stack_Get'
public	GetVector			as	'_ZNK6Vector3GetEP6data_tm'
public	GetStack			as	'_ZNK5Stack3GetEP6data_tm'

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;
public	ReplaceVector		as	'Vector_Replace'
public	ReplaceStack		as	'Stack_Replace'
public	ReplaceVector		as	'_ZN6Vector7ReplaceEP6data_tPKS0_m'
public	ReplaceStack		as	'_ZN5Stack7ReplaceEP6data_tPKS0_m'

;******************************************************************************;
;       Changing elements order                                                ;
;******************************************************************************;

; Reversing elements order
public	ReverseVector		as	'Vector_Reverse'
public	ReverseStack		as	'Stack_Reverse'
public	ReverseVector		as	'_ZN6Vector7ReverseEmm'
public	ReverseStack		as	'_ZN5Stack7ReverseEmm'

; Swapping elements
public	SwapVector			as	'Vector_Swap'
public	SwapStack			as	'Stack_Swap'
public	SwapVector			as	'_ZN6Vector4SwapEmm'
public	SwapStack			as	'_ZN5Stack4SwapEmm'

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;

; Minimum value
public	MinFwdVector		as	'Vector_MinFwd'
public	MinFwdStack			as	'Stack_MinFwd'
public	MinBwdVector		as	'Vector_MinBwd'
public	MinBwdStack			as	'Stack_MinBwd'
public	MinFwdVector		as	'_ZNK6Vector6MinFwdEP6data_tmmPFx5adt_tS2_E'
public	MinFwdStack			as	'_ZNK5Stack6MinFwdEP6data_tmmPFx5adt_tS2_E'
public	MinBwdVector		as	'_ZNK6Vector6MinBwdEP6data_tmmPFx5adt_tS2_E'
public	MinBwdStack			as	'_ZNK5Stack6MinBwdEP6data_tmmPFx5adt_tS2_E'

; Maximum value
public	MaxFwdVector		as	'Vector_MaxFwd'
public	MaxFwdStack			as	'Stack_MaxFwd'
public	MaxBwdVector		as	'Vector_MaxBwd'
public	MaxBwdStack			as	'Stack_MaxBwd'
public	MaxFwdVector		as	'_ZNK6Vector6MaxFwdEP6data_tmmPFx5adt_tS2_E'
public	MaxFwdStack			as	'_ZNK5Stack6MaxFwdEP6data_tmmPFx5adt_tS2_E'
public	MaxBwdVector		as	'_ZNK6Vector6MaxBwdEP6data_tmmPFx5adt_tS2_E'
public	MaxBwdStack			as	'_ZNK5Stack6MaxBwdEP6data_tmmPFx5adt_tS2_E'

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

;==============================================================================;
;       Linear search                                                          ;
;==============================================================================;

; Single key searching
public	FindKeyFwdVector	as	'Vector_FindKeyFwd'
public	FindKeyFwdStack		as	'Stack_FindKeyFwd'
public	FindKeyBwdVector	as	'Vector_FindKeyBwd'
public	FindKeyBwdStack		as	'Stack_FindKeyBwd'
public	FindKeyFwdVector	as	'_ZNK6Vector10FindKeyFwdEP6data_t5adt_tmmPFxS2_S2_E'
public	FindKeyFwdStack		as	'_ZNK5Stack10FindKeyFwdEP6data_t5adt_tmmPFxS2_S2_E'
public	FindKeyBwdVector	as	'_ZNK6Vector10FindKeyBwdEP6data_t5adt_tmmPFxS2_S2_E'
public	FindKeyBwdStack		as	'_ZNK5Stack10FindKeyBwdEP6data_t5adt_tmmPFxS2_S2_E'

; Keys set searching
public	FindKeysFwdVector	as	'Vector_FindKeysFwd'
public	FindKeysFwdStack	as	'Stack_FindKeysFwd'
public	FindKeysBwdVector	as	'Vector_FindKeysBwd'
public	FindKeysBwdStack	as	'Stack_FindKeysBwd'
public	FindKeysFwdVector	as	'_ZNK6Vector11FindKeysFwdEP6data_tPK5adt_tmmmPFxS2_S2_E'
public	FindKeysFwdStack	as	'_ZNK5Stack11FindKeysFwdEP6data_tPK5adt_tmmmPFxS2_S2_E'
public	FindKeysBwdVector	as	'_ZNK6Vector11FindKeysBwdEP6data_tPK5adt_tmmmPFxS2_S2_E'
public	FindKeysBwdStack	as	'_ZNK5Stack11FindKeysBwdEP6data_tPK5adt_tmmmPFxS2_S2_E'

;==============================================================================;
;       Binary search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Searching for equal element
public	FindFirstEqualAsc	as	'Vector_FindFirstEqualAsc'
public	FindLastEqualAsc	as	'Vector_FindLastEqualAsc'
public	FindFirstEqualAsc	as	'_ZNK6Vector17FindFirstEqualAscEP6data_t5adt_tPFxS2_S2_E'
public	FindLastEqualAsc	as	'_ZNK6Vector16FindLastEqualAscEP6data_t5adt_tPFxS2_S2_E'

; Searching for greater element
public	FindGreatAsc		as	'Vector_FindGreatAsc'
public	FindGreatAsc		as	'_ZNK6Vector12FindGreatAscEP6data_t5adt_tPFxS2_S2_E'

; Searching for greater or equal element
public	FindGreatOrEqualAsc	as	'Vector_FindGreatOrEqualAsc'
public	FindGreatOrEqualAsc	as	'_ZNK6Vector19FindGreatOrEqualAscEP6data_t5adt_tPFxS2_S2_E'

; Searching for less element
public	FindLessAsc			as	'Vector_FindLessAsc'
public	FindLessAsc			as	'_ZNK6Vector11FindLessAscEP6data_t5adt_tPFxS2_S2_E'

; Searching for less or equal element
public	FindLessOrEqualAsc	as	'Vector_FindLessOrEqualAsc'
public	FindLessOrEqualAsc	as	'_ZNK6Vector18FindLessOrEqualAscEP6data_t5adt_tPFxS2_S2_E'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Searching for equal element
public	FindFirstEqualDsc	as	'Vector_FindFirstEqualDsc'
public	FindLastEqualDsc	as	'Vector_FindLastEqualDsc'
public	FindFirstEqualDsc	as	'_ZNK6Vector17FindFirstEqualDscEP6data_t5adt_tPFxS2_S2_E'
public	FindLastEqualDsc	as	'_ZNK6Vector16FindLastEqualDscEP6data_t5adt_tPFxS2_S2_E'

; Searching for less element
public	FindLessDsc			as	'Vector_FindLessDsc'
public	FindLessDsc			as	'_ZNK6Vector11FindLessDscEP6data_t5adt_tPFxS2_S2_E'

; Searching for less or equal element
public	FindLessOrEqualDsc	as	'Vector_FindLessOrEqualDsc'
public	FindLessOrEqualDsc	as	'_ZNK6Vector18FindLessOrEqualDscEP6data_t5adt_tPFxS2_S2_E'

; Searching for greater element
public	FindGreatDsc		as	'Vector_FindGreatDsc'
public	FindGreatDsc		as	'_ZNK6Vector12FindGreatDscEP6data_t5adt_tPFxS2_S2_E'

; Searching for greater or equal element
public	FindGreatOrEqualDsc	as	'Vector_FindGreatOrEqualDsc'
public	FindGreatOrEqualDsc	as	'_ZNK6Vector19FindGreatOrEqualDscEP6data_t5adt_tPFxS2_S2_E'

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
public	FindDupFwd			as	'Vector_FindDupFwd'
public	FindDupBwd			as	'Vector_FindDupBwd'
public	FindDupFwd			as	'_ZNK6Vector10FindDupFwdEP6data_tmmPFx5adt_tS2_E'
public	FindDupBwd			as	'_ZNK6Vector10FindDupBwdEP6data_tmmPFx5adt_tS2_E'

;******************************************************************************;
;       Unordered elements searching                                           ;
;******************************************************************************;

; Ascending sort order
public	FindNonAscFwd		as	'Vector_FindNonAscFwd'
public	FindNonAscBwd		as	'Vector_FindNonAscBwd'
public	FindNonAscFwd		as	'_ZNK6Vector13FindNonAscFwdEP6data_tmmPFx5adt_tS2_E'
public	FindNonAscBwd		as	'_ZNK6Vector13FindNonAscBwdEP6data_tmmPFx5adt_tS2_E'

; Descending sort order
public	FindNonDscFwd		as	'Vector_FindNonDscFwd'
public	FindNonDscBwd		as	'Vector_FindNonDscBwd'
public	FindNonDscFwd		as	'_ZNK6Vector13FindNonDscFwdEP6data_tmmPFx5adt_tS2_E'
public	FindNonDscBwd		as	'_ZNK6Vector13FindNonDscBwdEP6data_tmmPFx5adt_tS2_E'

;******************************************************************************;
;       Searching for differences                                              ;
;******************************************************************************;
public	FindDiffFwdVector	as	'Vector_FindDiffFwd'
public	FindDiffFwdStack	as	'Stack_FindDiffFwd'
public	FindDiffBwdVector	as	'Vector_FindDiffBwd'
public	FindDiffBwdStack	as	'Stack_FindDiffBwd'
public	FindDiffFwdVector	as	'_ZNK6Vector11FindDiffFwdEP6data_tmPKS_mmPFx5adt_tS4_E'
public	FindDiffFwdStack	as	'_ZNK5Stack11FindDiffFwdEP6data_tmPKS_mmPFx5adt_tS4_E'
public	FindDiffBwdVector	as	'_ZNK6Vector11FindDiffBwdEP6data_tmPKS_mmPFx5adt_tS4_E'
public	FindDiffBwdStack	as	'_ZNK5Stack11FindDiffBwdEP6data_tmPKS_mmPFx5adt_tS4_E'

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

;==============================================================================;
;       Linear counting                                                        ;
;==============================================================================;

; Single key counting
public	CountKeyFwdVector	as	'Vector_CountKeyFwd'
public	CountKeyFwdStack	as	'Stack_CountKeyFwd'
public	CountKeysFwdVector	as	'Vector_CountKeysFwd'
public	CountKeysFwdStack	as	'Stack_CountKeysFwd'
public	CountKeyFwdVector	as	'_ZNK6Vector11CountKeyFwdE5adt_tmmPFxS0_S0_E'
public	CountKeyFwdStack	as	'_ZNK5Stack11CountKeyFwdE5adt_tmmPFxS0_S0_E'
public	CountKeysFwdVector	as	'_ZNK6Vector12CountKeysFwdEPK5adt_tmmmPFxS0_S0_E'
public	CountKeysFwdStack	as	'_ZNK5Stack12CountKeysFwdEPK5adt_tmmmPFxS0_S0_E'

; Keys set counting
public	CountKeyBwdVector	as	'Vector_CountKeyBwd'
public	CountKeyBwdStack	as	'Stack_CountKeyBwd'
public	CountKeysBwdVector	as	'Vector_CountKeysBwd'
public	CountKeysBwdStack	as	'Stack_CountKeysBwd'
public	CountKeyBwdVector	as	'_ZNK6Vector11CountKeyBwdE5adt_tmmPFxS0_S0_E'
public	CountKeyBwdStack	as	'_ZNK5Stack11CountKeyBwdE5adt_tmmPFxS0_S0_E'
public	CountKeysBwdVector	as	'_ZNK6Vector12CountKeysBwdEPK5adt_tmmmPFxS0_S0_E'
public	CountKeysBwdStack	as	'_ZNK5Stack12CountKeysBwdEPK5adt_tmmmPFxS0_S0_E'

;==============================================================================;
;       Binary counting                                                        ;
;==============================================================================;

; Ascending sort order
public	CountAsc			as	'Vector_CountAsc'
public	CountAsc			as	'_ZNK6Vector8CountAscE5adt_tPFxS0_S0_E'

; Descending sort order
public	CountDsc			as	'Vector_CountDsc'
public	CountDsc			as	'_ZNK6Vector8CountDscE5adt_tPFxS0_S0_E'

;******************************************************************************;
;       Insertion sort                                                         ;
;******************************************************************************;

; Ascending sort order
public	InsertSortAsc		as	'Vector_InsertSortAsc'
public	InsertSortAsc		as	'_ZN6Vector13InsertSortAscEPFx5adt_tS0_E'

; Descending sort order
public	InsertSortDsc		as	'Vector_InsertSortDsc'
public	InsertSortDsc		as	'_ZN6Vector13InsertSortDscEPFx5adt_tS0_E'

;******************************************************************************;
;       Quick sort                                                             ;
;******************************************************************************;

; Ascending sort order
public	QuickSortAsc		as	'Vector_QuickSortAsc'
public	QuickSortAsc		as	'_ZN6Vector12QuickSortAscEPFx5adt_tS0_E'

; Descending sort order
public	QuickSortDsc		as	'Vector_QuickSortDsc'
public	QuickSortDsc		as	'_ZN6Vector12QuickSortDscEPFx5adt_tS0_E'

;******************************************************************************;
;       Merge sort                                                             ;
;******************************************************************************;

; Ascending sort order
public	MergeSortAsc		as	'Vector_MergeSortAsc'
public	MergeSortAsc		as	'_ZN6Vector12MergeSortAscEPFx5adt_tS0_E'

; Descending sort order
public	MergeSortDsc		as	'Vector_MergeSortDsc'
public	MergeSortDsc		as	'_ZN6Vector12MergeSortDscEPFx5adt_tS0_E'

;******************************************************************************;
;       Merging of sorted vectors                                              ;
;******************************************************************************;

; Ascending sort order
public	MergeAsc			as	'Vector_MergeAsc'
public	MergeAsc			as	'_ZN6Vector8MergeAscEPKS_PFx5adt_tS2_E'

; Descending sort order
public	MergeDsc			as	'Vector_MergeDsc'
public	MergeDsc			as	'_ZN6Vector8MergeDscEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
public	Unique				as	'Vector_Unique'
public	Unique				as	'_ZN6Vector6UniqueEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       Comparison of vectors                                                  ;
;******************************************************************************;
public	CompareVector		as	'Vector_Compare'
public	CompareStack		as	'Stack_Compare'
public	CompareVector		as	'_ZNK6Vector7CompareEPKS_PFx5adt_tS2_E'
public	CompareStack		as	'_ZNK5Stack7CompareEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

; Check for sort order
public	CheckSortAsc		as	'Vector_CheckSortAsc'
public	CheckSortDsc		as	'Vector_CheckSortDsc'
public	CheckSortAsc		as	'_ZNK6Vector12CheckSortAscEPFx5adt_tS0_E'
public	CheckSortDsc		as	'_ZNK6Vector12CheckSortDscEPFx5adt_tS0_E'

; Check for duplicate values
public	CheckDup			as	'Vector_CheckDup'
public	CheckDup			as	'_ZNK6Vector8CheckDupEPFx5adt_tS0_E'

; Check for equality
public	IsEqualVector		as	'Vector_IsEqual'
public	IsEqualStack		as	'Stack_IsEqual'
public	IsEqualVector		as	'_ZNK6Vector7IsEqualEPKS_PFx5adt_tS2_E'
public	IsEqualStack		as	'_ZNK5Stack7IsEqualEPKS_PFx5adt_tS2_E'

;******************************************************************************;
;       Vector properties                                                      ;
;******************************************************************************;

; Vector capacity
public	GetCapacity			as	'Vector_Capacity'
public	GetCapacity			as	'Stack_Capacity'
public	GetCapacity			as	'_ZNK6Vector8CapacityEv'
public	GetCapacity			as	'_ZNK5Stack8CapacityEv'

; Vector size
public	GetSize				as	'Vector_Size'
public	GetSize				as	'Stack_Size'
public	GetSize				as	'_ZNK6Vector4SizeEv'
public	GetSize				as	'_ZNK5Stack4SizeEv'

; Check if vector is empty
public	IsEmpty				as	'Vector_IsEmpty'
public	IsEmpty				as	'Stack_IsEmpty'
public	IsEmpty				as	'_ZNK6Vector7IsEmptyEv'
public	IsEmpty				as	'_ZNK5Stack7IsEmptyEv'

; Check if vector is initialized
public	IsInit				as	'Vector_IsInit'
public	IsInit				as	'Stack_IsInit'
public	IsInit				as	'_ZNK6Vector6IsInitEv'
public	IsInit				as	'_ZNK5Stack6IsInitEv'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
KSCALE		= 4								; Key scale factor
KSIZE		= 1 shl KSCALE					; Size of key (bytes)
MINCAP		= 1 shl	PSCALE					; Min capacity of vector object

;==============================================================================;
;       Offsets inside vector object                                            ;
;==============================================================================;
ARRAY		= 0 * 8							; Offset of array pointer
CAPACITY	= 1 * 8							; Offset of object capacity field
SIZE		= 2 * 8							; Offset of object size field

;******************************************************************************;
;       Find key in array of keys                                              ;
;******************************************************************************;
FindSet:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of keys
size	equ		rsi							; size of array of keys
key		equ		rdx							; key to find
func	equ		rcx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_key	equ		stack + 2 * 8				; stack position of "key" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
space	= 5 * 8								; stack size required by the procedure
bytes	= 8									; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [s_key]
		mov		param1, [array]
		call	qword [s_func]				; result = Compare (array[0], key)
		mov		array, [s_array]			; get "array" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		add		array, bytes				; array++
		mov		[s_array], array			; save "array" variable into the stack
		dec		qword [s_size]				; size--
		jnz		.loop
;---[Not found branch]---------------------
.ntfnd:	xor		result, result				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		result, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Extending vector capacity                                              ;
;******************************************************************************;
Extend:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
newcap	equ		rsi							; new object capacity
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		rax							; pointer to array of nodes
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
		mov		sc_num, SYSCALL_MREMAP
		syscall								; array = mremap (array, cap, newcap, MREMAP_MAYMOVE)
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Update object properties]-------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		newcap, [s_ncap]			; get "newcap" variable from the stack
		mov		[this + ARRAY], array		; this.array = array
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
this	equ		rdi							; pointer to vector object
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
		shl		cap, KSCALE
	Capacity	cap, array, MINCAP			; compute capacity of the object
		mov		[s_cap], cap				; save "cap" variable into the stack
;---[Allocate memory for the object]-------
		mov		sc_prm6, 0
		mov		sc_prm5, -1
		mov		sc_prm4, 0x22
		mov		sc_prm3, 0x3
		mov		sc_prm1, 0
		mov		sc_num, SYSCALL_MMAP
		syscall								; array = mmap (NULL, cap, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		cap, [s_cap]				; get "cap" variable from the stack
		test	array, array				; if (array < 0)
		js		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		[this + ARRAY], array		; this.array = array
		mov		[this + CAPACITY], cap		; this.capacity = cap
		mov		qword [this + SIZE], 0		; this.size = 0
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Copy constructor                                                       ;
;******************************************************************************;
CopyConstructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
source	equ		rsi							; pointer to source vector object
;---[Internal variables]-------------------
array	equ		rax							; pointer to array of nodes
temp	equ		rcx							; temporary register
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
		mov		[this + ARRAY], array		; this.array = array
		mov		temp, [source + CAPACITY]
		mov		[this + CAPACITY], temp		; this.capacity = source.capacity
		mov		temp, [source + SIZE]
		mov		[this + SIZE], temp			; this.size = source.size
;---[Copy content of nodes]----------------
		mov		param3, [source + SIZE]
		mov		param2, [source + ARRAY]
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		Copy						; return Array::Copy (this.array, source.array, source.size)
;---[Error branch]-------------------------
.error:	mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
.exit:	add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Destructor                                                             ;
;******************************************************************************;
Destructor:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		sc_prm2, [this + CAPACITY]
		mov		sc_prm1, [this + ARRAY]
		mov		sc_num, SYSCALL_MUNMAP
		syscall								; munmap (array, capacity)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		qword [this + ARRAY], 0		; this.array = NULL
		mov		qword [this + CAPACITY], 0	; this.capacity = 0
		mov		qword [this + SIZE], 0		; this.size = 0
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Copying elements                                                       ;
;******************************************************************************;
macro	COPY_MOVE	move, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
tpos	equ		rsi							; position into target vector
source	equ		rdx							; pointer to source vector object
spos	equ		rcx							; position into source vector
count	equ		r8							; count of nodes to copy
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
ptr		equ		rax							; temporary pointer
size	equ		r9							; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_tpos	equ		stack + 1 * 8				; stack position of "tpos" variable
s_src	equ		stack + 2 * 8				; stack position of "source" variable
s_spos	equ		stack + 3 * 8				; stack position of "spos" variable
s_count	equ		stack + 4 * 8				; stack position of "count" variable
s_tsize	equ		stack + 5 * 8				; stack position of "tsize" variable
s_ssize	equ		stack + 6 * 8				; stack position of "ssize" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.error						;     then go to error branch
;---[Check target position]----------------
		shl		tpos, KSCALE
		mov		size, [this + SIZE]			; get target object size
		sub		size, tpos					; if (size < tpos)
		jb		.error						;     then go to error branch
if type
		mov		[s_tsize], tpos				; tsize = tpos
		mov		tpos, size					; tpos = size - tpos
else
		mov		[s_tsize], size				; tsize = size - tpos
end if
;---[Check source position]----------------
		shl		spos, KSCALE
		mov		size, [source + SIZE]		; get source object size
		sub		size, spos					; if (size <= spos)
		jbe		.error						;     then go to error branch
if type
		mov		[s_ssize], spos				; ssize = spos
		mov		spos, size					; spos = size - spos
else
		mov		[s_ssize], size				; ssize = size - spos
end if
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
if type
		sub		spos, count					; spos = size - spos - count
end if
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_tpos], tpos				; save "tpos" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_spos], spos				; save "spos" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		add		count, [this + SIZE]		; count += size
	Capacity	count, size, MINCAP			; compute new capacity of target object
		cmp		count, [this + CAPACITY]	; if (count > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Move elements in target vector]-------
.back:	mov		this, [s_this]				; get "this" variable from the stack
		mov		tpos, [s_tpos]				; get "tpos" variable from the stack
		mov		count, [s_count]			; get "count" variable from the stack
		mov		size, [s_tsize]				; get "tsize" variable from the stack
		mov		ptr, [this + ARRAY]			; get pointer to target array of nodes
		add		ptr, tpos					; ptr += tpos
		add		[this + SIZE], count		; this.size += count
		test	size, size					; if (size == 0)
		jz		.copy						;     then skip following code
		mov		param3, size
		mov		param2, ptr
		lea		param1, [ptr + count]
		call	Move						; call Move (ptr + count, ptr, tsize)
;---[Insert elements into target vector]---
.copy:	mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		mov		param2, [source + ARRAY]
		add		param2, [s_spos]
		mov		param1, [this + ARRAY]
		add		param1, [s_tpos]
		mov		param3, [s_count]
		call	Copy						; call Copy (this.array + tpos, source.array + spos, count)
;---[Remove elements from source vector]---
if move
		mov		source, [s_src]				; get "source" variable from the stack
		mov		spos, [s_spos]				; get "tpos" variable from the stack
		mov		count, [s_count]			; get "count" variable from the stack
		mov		size, [s_ssize]				; get "ssize" variable from the stack
		mov		ptr, [source + ARRAY]		; get pointer to source array of nodes
		add		ptr, spos					; ptr += spos
		sub		[source + SIZE], count		; source.size -= count
		test	size, size					; if (size == 0)
		jz		.exit						;     then skip following code
		mov		param3, size
		lea		param2, [ptr + count]
		mov		param1, ptr
		call	Move						; call Move (ptr, ptr + count, size)
end if
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_count]			; get "count" variable from the stack
		shr		result, KSCALE				; return count
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, count
		call	Extend						; status = this.Extend (size)
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret
}
CopyVector:	COPY_MOVE	0, 0
CopyStack:	COPY_MOVE	0, 1

;******************************************************************************;
;       Moving elements                                                        ;
;******************************************************************************;
MoveVector:	COPY_MOVE	1, 0
MoveStack:	COPY_MOVE	1, 1

;******************************************************************************;
;       Addition of element                                                    ;
;******************************************************************************;
PushData:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
size	equ		r9							; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object sizes
;---[Check capacity]-----------------------
		cmp		size, [this + CAPACITY]		; if (size == cap)
		je		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	add		array, size					; array += size
		add		size, KSIZE
		movdqu	temp, [data]
		movdqa	[array], temp				; array[0] = data[0]
		mov		[this + SIZE], size			; this.size++
		mov		status, 1					; return true
		ret
;---[Extend object capacity]---------------
.ext:	sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		param2, [this + CAPACITY]
		shl		param2, 1
		cmp		param2, [this + CAPACITY]	; if (newcapacity <= capacity)
		setnbe	status						;     then return false
		jbe		.exit
		call	Extend						; status = this.Extend (cap * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object sizes
.exit:	add		stack, space				; restoring back the stack pointer
		test	status, status
		jnz		.back						; if (status), then go back
		ret									;              else return false

;******************************************************************************;
;       Removal of element                                                     ;
;******************************************************************************;
PopData:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
data	equ		rsi							; pointer to data structure
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
size	equ		r9							; object size
temp	equ		xmm0						; temporary register
;------------------------------------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object sizes
		sub		size, KSIZE					; if (size < KSIZE)
		jb		.error						;     then go to error branch
;---[Normal execution branch]--------------
		add		array, size					; array += size
		movdqa	temp, [array]
		movdqu	[data], temp				; data[0] = array[0]
		mov		[this + SIZE], size			; this.size--
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret

;******************************************************************************;
;       Insertion of element                                                   ;
;******************************************************************************;
macro	INSERT	cmd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position where to insert element
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
size	equ		r9							; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_pos	equ		stack + 2 * 8				; stack position of "pos" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object sizes
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_pos], pos				; save "pos" variable into the stack
;---[Check capacity]-----------------------
		cmp		size, [this + CAPACITY]		; if (size == cap)
		je		.ext						;     then try to extend object capacity
;---[Check position]-----------------------
.back:
if type
		add		array, size					; array += size
end if
		cmd		array, pos					; change array position
		mov		[s_array], array			; save "array" variable into the stack
		sub		size, pos					; if (size < pos)
		jb		.error						;     then go to error branch
;---[Normal execution branch]--------------
if type
		mov		size, pos					; size = pos
end if
		test	size, size					; if (size != 0)
		jnz		.move						;     then move elements
.back1:	movdqu	temp, [data]
		movdqa	[array], temp				; array[0] = data[0]
		add		qword [this + SIZE], KSIZE	; this.size++
		mov		status, 1					; return true
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, [this + CAPACITY]
		shl		param2, 1
		cmp		param2, [this + CAPACITY]	; if (newcapacity <= capacity)
		jbe		.error						;     then go to error branch
		call	Extend						; status = this.Extend (cap * 2)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		pos, [s_pos]				; get "pos" variable from the stack
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object sizes
		test	status, status
		jnz		.back						; if (status), then go back
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		add		stack, space				; restoring back the stack pointer
		ret
;---[Move elements branch]-----------------
.move:	mov		param3, size
		mov		param2, array
		lea		param1, [array + KSIZE]
		call	Move						; call Move (array + KSIZE, array, size)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		data, [s_data]				; get "data" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		jmp		.back1						; go back
}
InsertVector:	INSERT	add, 0
InsertStack:	INSERT	sub, 1

;******************************************************************************;
;       Extraction of element                                                  ;
;******************************************************************************;
macro	EXTRACT		cmd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to extract
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
size	equ		r9							; object size
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object sizes
		sub		size, KSIZE					; size -= KSIZE
if type
		add		array, size					; array += size
end if
		sub		size, pos					; if (size < pos)
		jl		.error						;     then go to error branch
;---[Normal execution branch]--------------
if type
		mov		size, pos					; size = pos
end if
		cmd		array, pos					; change array position
		movdqa	temp, [array]
		movdqu	[data], temp				; data[0] = array[0]
		sub		qword [this + SIZE], KSIZE	; this.size--
		test	size, size					; if (size != 0)
		jnz		.move						;     then move elements
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
;---[Move elements branch]-----------------
.move:	mov		param3, size
		lea		param2, [array + KSIZE]
		mov		param1, array
		call	Move						; call Move (array, array + KSIZE, size)
		mov		status, 1					; return true
		ret
}
ExtractVector:	EXTRACT		add, 0
ExtractStack:	EXTRACT		sub, 1

;******************************************************************************;
;       Setting element value                                                  ;
;******************************************************************************;
macro	SET		cmd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to set
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
size	equ		r9							; object size
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object sizes
if type
		lea		array, [array + size - KSIZE]
end if
		cmp		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		cmd		array, pos					; change array position
		movdqu	temp, [data]
		movdqa	[array], temp				; array[0] = data[0]
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
SetVector:	SET		add, 0
SetStack:	SET		sub, 1

;******************************************************************************;
;       Getting element value                                                  ;
;******************************************************************************;
macro	GET		cmd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; position of element to get
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
size	equ		r9							; object size
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object sizes
if type
		lea		array, [array + size - KSIZE]
end if
		cmp		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		cmd		array, pos					; change array position
		movdqa	temp, [array]
		movdqu	[data], temp				; data[0] = array[0]
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
GetVector:	GET		add, 0
GetStack:	GET		sub, 1

;******************************************************************************;
;       Replacing element value                                                ;
;******************************************************************************;
macro	REPLACE		cmd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
odata	equ		rsi							; pointer to old data structure
ndata	equ		rdx							; pointer to new data structure
pos		equ		rcx							; position of element to replace
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
size	equ		r9							; object size
temp	equ		xmm0						; temporary register
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object sizes
if type
		lea		array, [array + size - KSIZE]
end if
		cmp		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		cmd		array, pos					; change array position
		movdqa	temp, [array]
		movdqu	[odata], temp				; odata[0] = array[0]
		movdqu	temp, [ndata]
		movdqa	[array], temp				; array[0] = ndata[0]
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
ReplaceVector:	REPLACE		add, 0
ReplaceStack:	REPLACE		sub, 1

;******************************************************************************;
;       Changing elements order                                                ;
;******************************************************************************;

;==============================================================================;
;       Reversing elements order                                               ;
;==============================================================================;
macro	REVERSE	cmd1, cmd2, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
pos		equ		rsi							; beginning position
count	equ		rdx							; count of nodes to reverse
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r8							; pointer to array of nodes
ptr		equ		r9							; temporary pointer to array of nodes
size	equ		rcx							; object size
temp1	equ		xmm0						; temporary register #1
temp2	equ		xmm1						; temporary register #2
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
if type
		lea		array, [array + size - KSIZE]
end if
		sub		size, pos					; if (size <= pos)
		jbe		.error						;     then go to error branch
;---[Correct count]------------------------
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
		mov		result, count				; result = count
;---[Check count]--------------------------
		cmp		count, KSIZE				; if (count <= KSIZE)
		jbe		.exit						;     then go to exit
;---[Normal execution branch]--------------
		cmd1	array, pos					; change array position
		mov		ptr, array					; ptr = array
		cmd1	ptr, count					; change ptr position
		shr		count, KSCALE + 1			; count >>= 1
;---[Order reversing loop]-----------------
.loop:	cmd2	ptr, KSIZE					; change ptr position
		movdqa	temp1, [array]				; temp1 = array[0]
		movdqa	temp2, [ptr]				; temp2 = ptr[0]
		movdqa	[array], temp2				; array[0] = temp2
		movdqa	[ptr], temp1				; ptr[0] = temp1
		cmd1	array, KSIZE				; change array position
		sub		count, 1					; count--
		jnz		.loop						; do while (count != 0)
;---[Normal exit branch]-------------------
.exit:	shr		result, KSCALE				; return result
		ret
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		ret
}
ReverseVector:	REVERSE	add, sub, 0
ReverseStack:	REVERSE	sub, add, 1

;==============================================================================;
;       Swapping elements                                                      ;
;==============================================================================;
macro	SWAP	cmd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
pos1	equ		rsi							; position of first element to swap
pos2	equ		rdx							; position of second element to swap
;---[Internal variables]-------------------
status	equ		al							; operation status
array	equ		r8							; pointer to array of nodes
size	equ		rcx							; object size
temp1	equ		xmm0						; temporary register #1
temp2	equ		xmm1						; temporary register #2
;------------------------------------------
		shl		pos1, KSCALE
		shl		pos2, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
if type
		lea		array, [array + size - KSIZE]
end if
;---[Check 1-st position]------------------
		cmp		size, pos1					; if (size <= pos1)
		jbe		.error						;     then go to error branch
;---[Check 2-nd position]------------------
		cmp		size, pos2					; if (size <= pos2)
		jbe		.error						;     then go to error branch
;---[Normal execution branch]--------------
		cmd		pos1, array					; change pos1 position
		cmd		pos2, array					; change pos2 position
if type
		neg		pos1						; pos1 = -pos1
		neg		pos2						; pos2 = -pos2
end if
		movdqa	temp1, [pos1]				; temp1 = pos1[0]
		movdqa	temp2, [pos2]				; temp2 = pos2[0]
		movdqa	[pos1], temp2				; pos1[0] = temp2
		movdqa	[pos2], temp1				; pos2[0] = temp1
		mov		status, 1					; return true
		ret
;---[Error branch]-------------------------
.error:	xor		status, status				; return false
		ret
}
SwapVector:	SWAP	add, 0
SwapStack:	SWAP	sub, 1

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;
macro	MINMAX	cmd1, cmd2, cond, bwd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; beginning position
count	equ		rcx							; count of nodes to check
func	equ		r8							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
base	equ		r11							; base for pointer arithmetic
size	equ		result						; object size
value	equ		r12							; min or max max value
vptr	equ		r13							; position of min or max value
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
s_vptr	equ		stack + 1 * 8				; stack position of "vptr" variable
s_base	equ		stack + 2 * 8				; stack position of "base" variable
s_array	equ		stack + 3 * 8				; stack position of "array" variable
s_data	equ		stack + 4 * 8				; stack position of "data" variable
s_count	equ		stack + 5 * 8				; stack position of "count" variable
s_func	equ		stack + 6 * 8				; stack position of "func" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
if type
		lea		array, [array + size - KSIZE]
end if
		mov		base, array					; base = array
		sub		size, pos					; if (size <= pos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Correct count]------------------------
if bwd
		lea		size, [pos + KSIZE]			; size = pos + 1
end if
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		cmd1	array, pos					; change array position
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_vptr], vptr				; save old value of "vptr" variable
		mov		[s_base], base				; save "base" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		value, [array]				; value = array[0].key
		mov		vptr, array					; vptr = array
		jmp		.skip
;---[Search loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, value
		call	qword [s_func]				; result = Compare (value, array[0].key)
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		result, 0					; if (result cond 0)
	cmov#cond	value, [array]				;     value = array[0].key
	cmov#cond	vptr, array					;     vptr = array
.skip:	cmd2	array, KSIZE				; change array position
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Normal exit branch]-------------------
		mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [vptr]
		movdqu	[data], temp				; data[0] = vptr[0]
		sub		vptr, [s_base]				; vptr = vptr - base
if type
		neg		vptr						; vptr = base - vptr
end if
		shr		vptr, KSCALE
		mov		result, vptr				; return vptr
		mov		value, [s_value]			; restore old value of "value" variable
		mov		vptr, [s_vptr]				; restore old value of "vptr" variable
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
}

; Minimum value
MinFwdVector:	MINMAX	add, add, g, 0, 0
MinFwdStack:	MINMAX	sub, sub, g, 0, 1
MinBwdVector:	MINMAX	add, sub, g, 1, 0
MinBwdStack:	MINMAX	sub, add, g, 1, 1

; Maximum value
MaxFwdVector:	MINMAX	add, add, l, 0, 0
MaxFwdStack:	MINMAX	sub, sub, l, 0, 1
MaxBwdVector:	MINMAX	add, sub, l, 1, 0
MaxBwdStack:	MINMAX	sub, add, l, 1, 1

;******************************************************************************;
;       Key searching                                                          ;
;******************************************************************************;

;==============================================================================;
;       Linear search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Single key searching                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_KEY	cmd1, cmd2, bwd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
pos		equ		rcx							; beginning position
count	equ		r8							; count of nodes to check
func	equ		r9							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
base	equ		r11							; base for pointer arithmetic
size	equ		result						; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_base	equ		stack + 0 * 8				; stack position of "base" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_data	equ		stack + 2 * 8				; stack position of "data" variable
s_key	equ		stack + 3 * 8				; stack position of "key" variable
s_count	equ		stack + 4 * 8				; stack position of "count" variable
s_func	equ		stack + 5 * 8				; stack position of "func" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
if type
		lea		array, [array + size - KSIZE]
end if
		mov		base, array					; base = array
		sub		size, pos					; if (size <= pos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Correct count]------------------------
if bwd
		lea		size, [pos + KSIZE]			; size = pos + 1
end if
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		cmd1	array, pos					; change array position
		mov		[s_base], base				; save "base" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[0].key)
		mov		array, [s_array]			; get "array" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		cmd2	array, KSIZE				; change array position
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [array]
		movdqu	[data], temp				; data[0] = array[0]
		sub		array, [s_base]				; array = array - base
if type
		neg		array						; array = base - array
end if
		shr		array, KSCALE
		mov		result, array				; return array
		add		stack, space				; restoring back the stack pointer
		ret
}
FindKeyFwdVector:	FIND_KEY	add, add, 0, 0
FindKeyFwdStack:	FIND_KEY	sub, sub, 0, 1
FindKeyBwdVector:	FIND_KEY	add, sub, 1, 0
FindKeyBwdStack:	FIND_KEY	sub, add, 1, 1

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Keys set searching                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_KEYS	cmd1, cmd2, bwd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
data	equ		rsi							; pointer to data structure
keys	equ		rdx							; pointer to array of keys
ksize	equ		rcx							; size of array of keys
pos		equ		r8							; beginning position
count	equ		r9							; count of nodes to check
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
base	equ		r11							; base for pointer arithmetic
size	equ		result						; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_base	equ		stack + 0 * 8				; stack position of "base" variable
s_array	equ		stack + 1 * 8				; stack position of "array" variable
s_data	equ		stack + 2 * 8				; stack position of "data" variable
s_keys	equ		stack + 3 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 4 * 8				; stack position of "ksize" variable
s_count	equ		stack + 5 * 8				; stack position of "count" variable
s_func	equ		stack + 8 * 8				; stack position of "func" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
if type
		lea		array, [array + size - KSIZE]
end if
		mov		base, array					; base = array
		sub		size, pos					; if (size <= pos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Correct count]------------------------
if bwd
		lea		size, [pos + KSIZE]			; size = pos + 1
end if
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Check ksize]--------------------------
		test	ksize, ksize				; if (ksize == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		cmd1	array, pos					; change array position
		mov		[s_base], base				; save "base" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param4, [s_func]
		mov		param3, [array]
		mov		param2, [s_ksize]
		mov		param1, [s_keys]
		call	FindSet						; result = FindSet (keys, ksize, array[0].key, func)
		mov		array, [s_array]			; get "array" variable from the stack
		test	result, result				; if (result)
		jnz		.found						;     then go to found branch
		cmd2	array, KSIZE				; change array position
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [array]
		movdqu	[data], temp				; data[0] = array[0]
		sub		array, [s_base]				; array = array - base
if type
		neg		array						; array = base - array
end if
		shr		array, KSCALE
		mov		result, array				; return array
		add		stack, space				; restoring back the stack pointer
		ret
}
FindKeysFwdVector:	FIND_KEYS	add, add, 0, 0
FindKeysFwdStack:	FIND_KEYS	sub, sub, 0, 1
FindKeysBwdVector:	FIND_KEYS	add, sub, 1, 0
FindKeysBwdStack:	FIND_KEYS	sub, add, 1, 1

;==============================================================================;
;       Binary search                                                          ;
;==============================================================================;
macro	FINDBIN	cond1, cond2
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
data	equ		rsi							; pointer to data structure
key		equ		rdx							; key to find
func	equ		rcx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
median	equ		r8							; median value
median1	equ		r9							; median value + 1
left	equ		r10							; left index
right	equ		r11							; right index
pos		equ		r12							; matched position
array	equ		this						; pointer to array of nodes
size	equ		right						; object size
stack	equ		rsp							; stack pointer
s_pos	equ		stack + 0 * 8				; stack position of "pos" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
s_key	equ		stack + 2 * 8				; stack position of "key" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_left	equ		stack + 5 * 8				; stack position of "left" variable
s_right	equ		stack + 6 * 8				; stack position of "right" variable
s_med	equ		stack + 7 * 8				; stack position of "median" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		size, [this + SIZE]			; get object size
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     then return NOT_FOUND
;---[Normal execution branch]--------------
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		xor		left, left					; left = 0
		mov		[s_pos], pos				; save old value of "pos" variable
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		mov		pos, NOT_FOUND				; pos = NOT_FOUND
;---[Binary search loop]-------------------
.loop:	lea		median, [left + right]
		shr		median, 1
		and		median, -KSIZE				; median = (left + right) / 2
		mov		[s_med], median				; save "median" variable into the stack
		mov		param2, [array + median]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[median])
		mov		array, [s_array]			; get "array" variable from the stack
		mov		left, [s_left]				; get "left" variable from the stack
		mov		right, [s_right]			; get "right" variable from the stack
		mov		median, [s_med]				; get "median" variable from the stack
		lea		median1, [median + KSIZE]	; median1 = median + KSIZE
		cmp		result, 0					; if (key cond array[median])
	cmov#cond1	pos, median					;     update matched position
	cmov#cond2	left, median1				;     then left = median + KSIZE
	cmovn#cond2	right, median				;     else right = median
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		cmp		left, right
		jb		.loop						; do while (left < right)
;---[End of search loop]-------------------
		cmp		pos, NOT_FOUND				; if (pos = NOT_FOUND)
		je		@f							;     then skip following code
		mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [array + pos]
		movdqu	[data], temp				; data[0] = array[pos]
		shr		pos, KSCALE
@@:		mov		result, pos					; return pos
		mov		pos, [s_pos]				; restore old value of "pos" variable
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Searching for equal element
FindFirstEqualAsc:		FINDBIN		e, g
FindLastEqualAsc:		FINDBIN		e, ge

; Searching for greater element
FindGreatAsc:			FINDBIN		l, ge

; Searching for greater or equal element
FindGreatOrEqualAsc:	FINDBIN		le, g

; Searching for less element
FindLessAsc:			FINDBIN		g, g

; Searching for less or equal element
FindLessOrEqualAsc:		FINDBIN		ge, ge

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Searching for equal element
FindFirstEqualDsc:		FINDBIN		e, l
FindLastEqualDsc:		FINDBIN		e, le

; Searching for less element
FindLessDsc:			FINDBIN		g, le

; Searching for less or equal element
FindLessOrEqualDsc:		FINDBIN		ge, l

; Searching for greater element
FindGreatDsc:			FINDBIN		l, l

; Searching for greater or equal element
FindGreatOrEqualDsc:	FINDBIN		le, le

;******************************************************************************;
;       Duplicates searching                                                   ;
;******************************************************************************;
macro	FIND_CORE	cmd, cond, op, sort
{
;---[Parameters]---------------------------
iter	equ		rdi							; iterator value
count	equ		rsi							; count of nodes to check
func	equ		rdx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_iter	equ		stack + 0 * 8				; stack position of "iter" variable
s_count	equ		stack + 1 * 8				; stack position of "count" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Normal execution branch]--------------
		mov		[s_iter], iter				; save "iter" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [iter op KSIZE]
		mov		param1, [iter]
		call	qword [s_func]				; result = Compare (iter[0], iter[1])
		mov		iter, [s_iter]				; get "iter" variable from the stack
		cmp		result, 0					; if (result cond 0)
		j#cond	.found						;     then go to found branch
		cmd		iter, KSIZE					; change iterator value
		mov		[s_iter], iter				; save "iter" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of search loop]-------------------
		mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]---------------------
.found:
if sort
		cmd		iter, KSIZE					; change iterator value
end if
		mov		result, iter				; return iter
		add		stack, space				; restoring back the stack pointer
		ret
}
CheckDupFwd:		FIND_CORE	add, e, +, 0
CheckDupBwd:		FIND_CORE	sub, e, -, 0
CheckSortAscFwd:	FIND_CORE	add, g, +, 1
CheckSortAscBwd:	FIND_CORE	sub, l, -, 1
CheckSortDscFwd:	FIND_CORE	add, l, +, 1
CheckSortDscBwd:	FIND_CORE	sub, g, -, 1
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND	checkfunc, bwd
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
data	equ		rsi							; pointer to data structure
pos		equ		rdx							; beginning position
count	equ		rcx							; count of nodes to check
func	equ		r8							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r10							; pointer to array of nodes
size	equ		result						; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_base	equ		stack + 0 * 8				; stack position of "base" variable
s_data	equ		stack + 1 * 8				; stack position of "data" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
		sub		size, pos					; if (size <= pos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Correct count]------------------------
if bwd
		lea		size, [pos + KSIZE]			; size = pos + 1
end if
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		sub		count, KSIZE				; if (--count <= 0)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		mov		[s_base], array				; save "base" variable into the stack
		mov		[s_data], data				; save "data" variable into the stack
		lea		param1, [array + pos]
		mov		param2, count
		mov		param3, func
		call	checkfunc					; result = checkfunc (array + pos, count, func)
		cmp		result, NOT_FOUND			; if (result != NOT_FOUND)
		jne		.found						;     then go to found branch
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [result]
		movdqu	[data], temp				; data[0] = result[0]
		sub		result, [s_base]			; result = result - base
		shr		result, KSCALE				; return result
		add		stack, space				; restoring back the stack pointe
		ret
}
FindDupFwd:		FIND	CheckDupFwd, 0
FindDupBwd:		FIND	CheckDupBwd, 1

;******************************************************************************;
;       Unordered elements searching                                           ;
;******************************************************************************;

; Ascending sort order
FindNonAscFwd:	FIND	CheckSortAscFwd, 0
FindNonAscBwd:	FIND	CheckSortAscBwd, 1

; Descending sort order
FindNonDscFwd:	FIND	CheckSortDscFwd, 0
FindNonDscBwd:	FIND	CheckSortDscBwd, 1

;******************************************************************************;
;       Searching for differences                                              ;
;******************************************************************************;
macro	DIFF	cmd
{
;---[Parameters]---------------------------
tarray	equ		rdi							; pointer to target array of nodes
sarray	equ		rsi							; pointer to source array of nodes
size	equ		rdx							; count of elements to compare
func	equ		rcx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
status	equ		rdx							; compare status
stack	equ		rsp							; stack pointer
s_tarr	equ		stack + 0 * 8				; stack position of "tarray" variable
s_sarr	equ		stack + 1 * 8				; stack position of "sarray" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_tarr], tarray			; save "tarray" variable into the stack
		mov		[s_sarr], sarray			; save "sarray" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Check loop]---------------------------
.loop:	mov		param2, [sarray]
		mov		param1, [tarray]
		call	qword [s_func]				; result = Compare (tarray[0].key, sarray[0].key)
		test	result, result				; if (result != 0)
		jnz		.found						;     then go to found branch
		mov		sarray, [s_sarr]			; get "sarray" variable from the stack
		mov		tarray, [s_tarr]			; get "tarray" variable from the stack
		cmd		sarray, KSIZE				; change sarray position
		cmd		tarray, KSIZE				; change tarray position
		mov		[s_sarr], sarray			; save "sarray" variable into the stack
		mov		[s_tarr], tarray			; save "tarray" variable into the stack
		sub		qword [s_size], KSIZE		; size--
		jnz		.loop						; do while (size != 0)
;---[End of check loop]--------------------
		xor		status, status
		mov		result, NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret									; return {NOT_FOUND, 0}
;---[Found branch]-------------------------
.found:	mov		status, result
		mov		result, [s_tarr]
		add		stack, space				; restoring back the stack pointer
		ret									; return {tarray, status}
}
DiffFwd:	DIFF	add
DiffBwd:	DIFF	sub
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_DIFF	diff, cmd, bwd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
data	equ		rsi							; pointer to data structure
tpos	equ		rdx							; beginning position into target vector
source	equ		rcx							; pointer to source vector object
spos	equ		r8							; beginning position into source vector
count	equ		r9							; count of nodes to check
;---[Internal variables]-------------------
result	equ		rax							; result register
tarray	equ		r10							; pointer to target array of nodes
sarray	equ		r11							; pointer to source array of nodes
base	equ		this						; base for pointer arithmetic
size	equ		result						; object size
temp	equ		xmm0						; temporary register
stack	equ		rsp							; stack pointer
s_data	equ		stack + 0 * 8				; stack position of "data" variable
s_base	equ		stack + 1 * 8				; stack position of "base" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		shl		count, KSCALE
;---[Check target position]----------------
		shl		tpos, KSCALE
		mov		tarray, [this + ARRAY]		; get pointer to target array of nodes
		mov		size, [this + SIZE]			; get target object size
if type
		lea		tarray, [tarray + size - KSIZE]
end if
		mov		base, tarray				; base = tarray
		sub		size, tpos					; if (size <= tpos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Correct target count]-----------------
if bwd
		lea		size, [tpos + KSIZE]		; size = tpos + 1
end if
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check source position]----------------
		shl		spos, KSCALE
		mov		sarray, [source + ARRAY]	; get pointer to source array of nodes
		mov		size, [source + SIZE]		; get source object size
if type
		lea		sarray, [sarray + size - KSIZE]
end if
		sub		size, spos					; if (size <= spos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Correct source count]-----------------
if bwd
		lea		size, [spos + KSIZE]		; size = spos + 1
end if
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		cmd		tarray, tpos				; change tarray position
		cmd		sarray, spos				; change sarray position
		mov		[s_data], data				; save "data" variable into the stack
		mov		[s_base], base				; save "base" variable into the stack
		mov		param4, [s_func]
		mov		param3, count
		mov		param2, sarray
		mov		param1, tarray
		call	diff						; result = diff (tarray, sarray, count, func)
		cmp		result, NOT_FOUND			; if (result != NOT_FOUND)
		jne		.found						;     then go to found branch
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	mov		data, [s_data]				; get "data" variable from the stack
		movdqa	temp, [result]
		movdqu	[data], temp				; data[0] = result[0]
		sub		result, [s_base]			; result = result - base
if type
		neg		result						; result = base - result
end if
		shr		result, KSCALE				; return result
		add		stack, space				; restoring back the stack pointe
		ret
}
FindDiffFwdVector:	FIND_DIFF	DiffFwd, add, 0, 0
FindDiffFwdStack:	FIND_DIFF	DiffBwd, sub, 0, 1
FindDiffBwdVector:	FIND_DIFF	DiffBwd, add, 1, 0
FindDiffBwdStack:	FIND_DIFF	DiffFwd, sub, 1, 1

;******************************************************************************;
;       Key counting                                                           ;
;******************************************************************************;

;==============================================================================;
;       Linear counting                                                        ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Single key counting                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	COUNT_KEY	cmd1, cmd2, bwd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
key		equ		rsi							; key to find
pos		equ		rdx							; beginning position
count	equ		rcx							; count of nodes to check
func	equ		r8							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
size	equ		result						; object size
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_key	equ		stack + 1 * 8				; stack position of "key" variable
s_count	equ		stack + 2 * 8				; stack position of "count" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_total	equ		stack + 4 * 8				; stack position of "total" variable
space	= 5 * 8
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
if type
		lea		array, [array + size - KSIZE]
end if
		sub		size, pos					; if (size <= pos)
		jbe		.exit						;     then go to exit
;---[Correct count]------------------------
if bwd
		lea		size, [pos + KSIZE]			; size = pos + 1
end if
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		cmd1	array, pos					; change array position
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, [s_key]
		call	qword [s_func]				; result = Compare (key, array[0].key)
		mov		array, [s_array]			; get "array" variable from the stack
		test	result, result				; if (result == 0)
		setz	status						; {
		movzx	result, status
		add		[s_total], result			;     then total++ }
		cmd2	array, KSIZE				; change array position
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total
}
CountKeyFwdVector:	COUNT_KEY	add, add, 0, 0
CountKeyFwdStack:	COUNT_KEY	sub, sub, 0, 1
CountKeyBwdVector:	COUNT_KEY	add, sub, 1, 0
CountKeyBwdStack:	COUNT_KEY	sub, add, 1, 1

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Keys set counting                                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	COUNT_KEYS	cmd1, cmd2, bwd, type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
keys	equ		rsi							; pointer to array of keys
ksize	equ		rdx							; size of array of keys
pos		equ		rcx							; beginning position
count	equ		r8							; count of nodes to check
func	equ		r9							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
array	equ		r11							; pointer to array of nodes
size	equ		result						; object size
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_keys	equ		stack + 1 * 8				; stack position of "keys" variable
s_ksize	equ		stack + 2 * 8				; stack position of "ksize" variable
s_count	equ		stack + 3 * 8				; stack position of "count" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_total	equ		stack + 5 * 8				; stack position of "total" variable
space	= 7 * 8
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		qword [s_total], 0			; total = 0
;---[Check position]-----------------------
		shl		pos, KSCALE
		mov		array, [this + ARRAY]		; get pointer to array of nodes
		mov		size, [this + SIZE]			; get object size
if type
		lea		array, [array + size - KSIZE]
end if
		sub		size, pos					; if (size <= pos)
		jbe		.exit						;     then go to exit
;---[Correct count]------------------------
if bwd
		lea		size, [pos + KSIZE]			; size = pos + 1
end if
		shl		count, KSCALE
		cmp		count, size					; if (count > size)
		cmova	count, size					;     count = size
;---[Check count]--------------------------
		test	count, count				; if (count == 0)
		jz		.exit						;     then go to exit
;---[Check ksize]--------------------------
		test	ksize, ksize				; if (ksize == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		cmd1	array, pos					; change array position
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_keys], keys				; save "keys" variable into the stack
		mov		[s_ksize], ksize			; save "ksize" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param4, [s_func]
		mov		param3, [array]
		mov		param2, [s_ksize]
		mov		param1, [s_keys]
		call	FindSet						; result = FindSet (keys, ksize, array[0].key, func)
		mov		array, [s_array]			; get "array" variable from the stack
		add		[s_total], result			; if (result) then total++
		cmd2	array, KSIZE				; change array position
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_count], KSIZE		; count--
		jnz		.loop						; do while (count != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total
}
CountKeysFwdVector:	COUNT_KEYS	add, add, 0, 0
CountKeysFwdStack:	COUNT_KEYS	sub, sub, 0, 1
CountKeysBwdVector:	COUNT_KEYS	add, sub, 1, 0
CountKeysBwdStack:	COUNT_KEYS	sub, add, 1, 1

;==============================================================================;
;       Binary counting                                                        ;
;==============================================================================;
macro	COUNTBIN	func1, func2
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
key		equ		rsi							; key to find
func	equ		rdx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_key	equ		stack + 1 * 8				; stack position of "key" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_res	equ		stack + 3 * 8				; stack position of "result" variable
s_data	equ		stack + 4 * 8				; stack position of "data" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		size, [this + SIZE]			; get object size
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     return 0
;---[Normal execution branch]--------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		param4, func
		mov		param3, key
		lea		param2, [s_data]
		mov		param1, this
		call	func1						; result = this.func1 (&data, key, func)
		cmp		result, NOT_FOUND			; if (result == NOT_FOUND)
		je		.ntfnd						;     return 0
		mov		[s_res], result				; save "result" variable into the stack
		mov		param4, [s_func]
		mov		param3, [s_key]
		lea		param2, [s_data]
		mov		param1, [s_this]
		call	func2						; result = this.func2 (&data, key, func)
		sub		result, [s_res]				; correct result
		add		result, 1					; return result + 1
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		result, result				; return 0
		add		stack, space				; restoring back the stack pointer
		ret
}
CountAsc:	COUNTBIN	FindFirstEqualAsc, FindLastEqualAsc
CountDsc:	COUNTBIN	FindFirstEqualDsc, FindLastEqualDsc

;******************************************************************************;
;       Insertion sort                                                         ;
;******************************************************************************;
macro	INSERTSORT_CORE	op
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
size	equ		rsi							; object size
func	equ		rdx							; compare function
;---[Internal variables]-------------------
left	equ		r8							; left index
right	equ		r9							; right index
key1	equ		r12							; temporary key #1
key2	equ		r13							; temporary key #2
data1	equ		r14							; temporary data #1
data2	equ		r15							; temporary data #2
stack	equ		rsp							; stack pointer
s_key1	equ		stack + 0 * 8				; stack position of "key1" variable
s_key2	equ		stack + 1 * 8				; stack position of "key2" variable
s_data1	equ		stack + 2 * 8				; stack position of "data1" variable
s_data2	equ		stack + 3 * 8				; stack position of "data2" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_size	equ		stack + 5 * 8				; stack position of "size" variable
s_func	equ		stack + 6 * 8				; stack position of "func" variable
s_left	equ		stack + 7 * 8				; stack position of "left" variable
s_right	equ		stack + 8 * 8				; stack position of "right" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_key1], key1				; save old value of "key1" variable
		mov		[s_key2], key2				; save old value of "key2" variable
		mov		[s_data1], data1			; save old value of "data1" variable
		mov		[s_data2], data2			; save old value of "data2" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		left, KSIZE					; left = 1
		mov		[s_left], left				; save "left" variable into the stack
;---[Sorting loop]-------------------------
.loop:	mov		right, left					; right = left
		mov		[s_right], right			; save "right" variable into the stack
		mov		key1, [array + right]		; key1 = array[right].key
		mov		data1, [array + right + 8]	; data1 = array[right].data
;---[Internal loop]------------------------
.iloop:	mov		key2, [array + right - KSIZE]
		mov		data2, [array + right - KSIZE + 8]
		mov		param2, key2
		mov		param1, key1
		call	qword [s_func]				; result = Compare (key1, key2)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		left, [s_left]				; get "left" variable from the stack
		mov		right, [s_right]			; get "right" variable from the stack
		cmp		result, 0					; if (result op 0)
		jn#op	.break						; {
		mov		[array + right], key2		;     array[right].key = key2
		mov		[array + right + 8], data2	;     array[right].data = data2
		sub		right, KSIZE				;     right-- }
		mov		[s_right], right			; save "right" variable into the stack
		jnz		.iloop						; do while (right != 0)
;---[End of internal loop]-----------------
.break:	mov		[array + right], key1		; array[right].key = key1
		mov		[array + right + 8], data1	; array[right].data = data1
		add		left, KSIZE					; left++
		mov		[s_left], left				; save "left" variable into the stack
		cmp		left, [s_size]
		jb		.loop						; do while (left < size)
;---[End of sorting loop]------------------
		mov		key1, [s_key1]				; restore old value of "key1" variable
		mov		key2, [s_key2]				; restore old value of "key2" variable
		mov		data1, [s_data1]			; restore old value of "data1" variable
		mov		data2, [s_data2]			; restore old value of "data2" variable
		add		stack, space				; restoring back the stack pointer
		ret
}
InsertSortCoreAsc:	INSERTSORT_CORE	l
InsertSortCoreDsc:	INSERTSORT_CORE	g
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SORT	sortfunc
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
func	equ		rsi							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
size	equ		result						; object size
stack	equ		rsp							; stack pointer
s_size	equ		stack + 0 * 8				; stack position of "size" variable
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		size, [this + SIZE]			; get object size
		mov		[s_size], size				; save "size" variable into the stack
;---[Size check]---------------------------
		cmp		size, KSIZE					; if (size <= KSIZE)
		jbe		.exit						;     then go to exit
;---[Call sort function]-------------------
		mov		param3, func
		mov		param2, size
		mov		param1, [this + ARRAY]
		call	sortfunc					; call sortfunc (array, size, func)
;---[Normal exit]--------------------------
.exit:	mov		result, [s_size]			; get "size" variable from the stack
		shr		result, KSCALE				; return size
		add		stack, space				; restoring back the stack pointer
		ret
}
InsertSortAsc:	SORT	InsertSortCoreAsc
InsertSortDsc:	SORT	InsertSortCoreDsc

;******************************************************************************;
;       Quick sort                                                             ;
;******************************************************************************;
macro	QUICKSORT_CORE	insertsort, op1, op2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
size	equ		rsi							; object size
func	equ		rdx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
median	equ		rax							; median value
half	equ		rax							; half of array size
left	equ		r8							; left index
right	equ		r9							; right index
key1	equ		r12							; temporary key #1
key2	equ		r13							; temporary key #2
data1	equ		r14							; temporary data #1
data2	equ		r15							; temporary data #2
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
stack	equ		rsp							; stack pointer
s_key1	equ		stack + 0 * 8				; stack position of "key1" variable
s_key2	equ		stack + 1 * 8				; stack position of "key2" variable
s_data1	equ		stack + 2 * 8				; stack position of "data1" variable
s_data2	equ		stack + 3 * 8				; stack position of "data2" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_size	equ		stack + 5 * 8				; stack position of "size" variable
s_func	equ		stack + 6 * 8				; stack position of "func" variable
s_med	equ		stack + 7 * 8				; stack position of "median" variable
s_left	equ		stack + 8 * 8				; stack position of "left" variable
s_right	equ		stack + 9 * 8				; stack position of "right" variable
space	= 11 * 8							; stack size required by the procedure
minsize	= 16 * KSIZE						; min array size is aceptable for Quick sort
;------------------------------------------
.start:	cmp		size, minsize				; if (size <= minsize)
		jbe		insertsort					;     call insertsort (array, size, func)
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_key1], key1				; save old value of "key1" variable
		mov		[s_key2], key2				; save old value of "key2" variable
		mov		[s_data1], data1			; save old value of "data1" variable
		mov		[s_data2], data2			; save old value of "data2" variable
;---[Sorting loop]-------------------------
.loop:	mov		half, size
		shr		half, 1
		and		half, -KSIZE				; half = size / 2
		mov		left, -KSIZE				; left = -1
		mov		right, size					; right = size
		mov		median, [array + half]		; median = array[half]
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_med], median				; save "median" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	xchg	key1, key2
		mov		[array + left], key1		; array[left].key = key2
		mov		[array + right], key2		; array[right].key = key1
		xchg	data1, data2
		mov		[array + left + 8], data1	; array[left].data = data2
		mov		[array + right + 8], data2	; array[right].data = data1
;---[Internal loop 1]----------------------
.loop1:	mov		left, [s_left]				; get "left" variable from the stack
		add		left, KSIZE					; left++
		mov		[s_left], left				; save "left" variable into the stack
		mov		key1, [array + left]		; key1 = array[left].key
		mov		data1, [array + left + 8]	; data1 = array[left].data
		mov		param2, [s_med]
		mov		param1, key1
		call	qword [s_func]				; result = Compare (array[left], median)
		mov		array, [s_array]			; get "array" variable from the stack
		cmp		result, 0					; check compare result
		j#op1	.loop1						; do while compare condition is true
;---[Internal loop 2]----------------------
.loop2:	mov		right, [s_right]			; get "right" variable from the stack
		sub		right, KSIZE				; right--
		mov		[s_right], right			; save "right" variable into the stack
		mov		key2, [array + right]		; key2 = array[right].key
		mov		data2, [array + right + 8]	; data2 = array[right].data
		mov		param2, [s_med]
		mov		param1, key2
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
		mov		rsize, [s_size]				; get "size" variable from the stack
		add		right, KSIZE
		sub		rsize, right				; rsize = size - (right + 1)
		lea		rarray, [array + right]		; rarray = array + (right + 1)
		cmp		lsize, rsize				; if (lsize <= rsize)
		ja		.else						; {
;---[if lsize <= rsize]--------------------
		cmp		lsize, KSIZE				; if (lsize > KSIZE)
		jbe		@f							; {
		mov		[s_array], rarray			; save "rarray" variable into the stack
		mov		[s_size], rsize				; save "rsize" variable into the stack
		mov		func, [s_func]				; get "func" variable from the stack
		mov		size, lsize
		call	.start						; call Sort (larray, lsize, func)
		mov		rarray, [s_array]			; get "rarray" variable from the stack
		mov		rsize, [s_size]				; get "rsize" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
@@:		mov		array, rarray				; }
		jmp		.end
;---[else]---------------------------------
.else:	cmp		rsize, KSIZE				; if (rsize > KSIZE)
		jbe		@f							; {
		mov		[s_array], larray			; save "larray" variable into the stack
		mov		[s_size], lsize				; save "lsize" variable into the stack
		mov		func, [s_func]				; get "func" variable from the stack
		mov		array, rarray
		call	.start						; call Sort (rarray, rsize, func)
		mov		larray, [s_array]			; get "larray" variable from the stack
		mov		lsize, [s_size]				; get "lsize" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
@@:		mov		size, lsize					; }
;---[end if]-------------------------------
.end:	cmp		size, minsize
		ja		.loop						; do while (size > minsize)
;---[Insert sort]--------------------------
		mov		func, [s_func]				; get "func" variable from the stack
		mov		key1, [s_key1]				; restore old value of "key1" variable
		mov		key2, [s_key2]				; restore old value of "key2" variable
		mov		data1, [s_data1]			; restore old value of "data1" variable
		mov		data2, [s_data2]			; restore old value of "data2" variable
		add		stack, space				; restoring back the stack pointer
		jmp		insertsort					; call insertsort (array, size, func)
		ret
}
QuickSortCoreAsc:	QUICKSORT_CORE	InsertSortCoreAsc, l, g
QuickSortCoreDsc:	QUICKSORT_CORE	InsertSortCoreDsc, g, l
QuickSortAsc:		SORT	QuickSortCoreAsc
QuickSortDsc:		SORT	QuickSortCoreDsc

;******************************************************************************;
;       Merge sort                                                             ;
;******************************************************************************;
macro	MERGESORT_CORE	insertsort, mergefunc, copyfunc
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array of nodes
temp	equ		rsi							; pointer to temporary array of nodes
size	equ		rdx							; object size
func	equ		rcx							; compare function
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_temp	equ		stack + 1 * 8				; stack position of "temp" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
space	= 5 * 8								; stack size required by the procedure
minsize	= 16 * KSIZE						; min array size is aceptable for Merge sort
;------------------------------------------
.start:	cmp		size, minsize				; if (size <= minsize)
		jbe		.ins						;     then do insert sort
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
;---[Sort first subarray]------------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		shr		size, 1						; size /= 2
		and		size, -KSIZE
		call	.start						; call Sort (array, temp, size / 2, func)
;---[Sort second subarray]-----------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		temp, [s_temp]				; get "temp" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		shr		size, 1						; size /= 2
		and		size, -KSIZE
		lea		array, [array + size]
		neg		size
		add		size, [s_size]
		call	.start						; call Sort (array + size / 2, temp, size - size / 2, func)
;---[Copy data into temporary array]-------
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 1						; size /= 2
		and		size, -KSIZE
		mov		param3, size
		mov		param2, [s_array]
		mov		param1, [s_temp]
		call	copyfunc					; call copyfunc (temp, array, size / 2)
;---[Merge sorted arrays]------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		temp, [s_temp]				; get "temp" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		shr		size, 1						; size /= 2
		and		size, -KSIZE
		mov		param6, func
		mov		param5, size
		neg		param5
		add		param5, [s_size]
		lea		param4, [array + size]
		mov		param3, size
		mov		param2, temp
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		mergefunc					; call mergefunc (array, temp, size / 2, array + size / 2, size - size / 2, func)
;---[Insert sort branch]-------------------
.ins:	mov		param1, array
		mov		param2, size
		mov		param3, func
		jmp		insertsort					; call insertsort (array, size, func)
		ret
}
MergeSortCoreAsc:	MERGESORT_CORE	InsertSortCoreAsc, MergeCoreAsc, Copy
MergeSortCoreDsc:	MERGESORT_CORE	InsertSortCoreDsc, MergeCoreDsc, Copy
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MERGESORT	sortfunc
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
func	equ		rsi							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		result						; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_func	equ		stack + 1 * 8				; stack position of "func" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		size, [this + SIZE]			; get object size
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Size check]---------------------------
		cmp		size, KSIZE					; if (size <= KSIZE)
		jbe		.exit						;     then go to exit
;---[Check object capacity]----------------
		shr		size, 1
		and		size, -KSIZE				; size /= 2
		add		size, [this + SIZE]			; size = this.size + size / 2
	Capacity	size, func, MINCAP			; compute new capacity of target object
		cmp		size, [this + CAPACITY]		; if (size > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Call sort function]-------------------
.back:	mov		param4, [s_func]
		mov		param3, [s_size]
		mov		param2, [s_size]
		add		param2, [this + ARRAY]
		mov		param1, [this + ARRAY]
		call	sortfunc					; call sortfunc (array, array + size, size, func)
;---[Normal exit]--------------------------
.exit:	mov		result, [s_size]			; get "size" variable from the stack
		shr		result, KSCALE				; return size
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, size
		call	Extend						; status = this.Extend (count)
		mov		this, [s_this]				; get "this" variable from the stack
		test	status, status				; if (status)
		jnz		.back						;     then go back
		mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret
}
MergeSortAsc:	MERGESORT	MergeSortCoreAsc
MergeSortDsc:	MERGESORT	MergeSortCoreDsc

;******************************************************************************;
;       Merging of sorted vectors                                              ;
;******************************************************************************;
macro	MERGE_CORE	cond
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
src1	equ		rsi							; pointer to first source array
size1	equ		rdx							; size of first array
src2	equ		rcx							; pointer to second source array
size2	equ		r8							; size of second array
func	equ		r9							; pointer to compare function
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
key		equ		r10							; key value
data	equ		r11							; data value
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
.loop:	lea		temp, [src1 + KSIZE]		; src1p = src1 + 1
		mov		[s_src1p], temp				; save "src1p" variable into the stack
		lea		temp, [size1 - KSIZE]		; size1m = size1 - 1
		mov		[s_sz1m], temp				; save "size1m" variable into the stack
		lea		temp, [src2 + KSIZE]		; src2p = src2 + 1
		mov		[s_src2p], temp				; save "src2p" variable into the stack
		lea		temp, [size2 - KSIZE]		; size2m = size2 - 1
		mov		[s_sz2m], temp				; save "size2m" variable into the stack
		mov		param1, [src1]
		mov		param2, [src2]
		call	qword [s_func]				; result = func (src1[0], src2[0])
		mov		target, [s_tgt]				; get "target" variable from the stack
		mov		src1, [s_src1]				; get "src1" variable from the stack
		mov		size1, [s_size1]			; get "size1" variable from the stack
		mov		src2, [s_src2]				; get "src2" variable from the stack
		mov		size2, [s_size2]			; get "size2" variable from the stack
		cmp		result, 0
	cmov#cond	key, [src1]					; if (result cond 0), then key = src1[0].key
	cmov#cond	data, [src1 + 8]			; if (result cond 0), then data = src1[0].data
	cmovn#cond	key, [src2]					; if (result !cond 0), then key = src2[0].key
	cmovn#cond	data, [src2 + 8]			; if (result !cond 0), then data = src2[0].data
	cmov#cond	src1, [s_src1p]				; if (result cond 0), then src1 = src1 + 1
	cmovn#cond	src2, [s_src2p]				; if (result !cond 0), then src2 = src2 + 1
	cmov#cond	size1, [s_sz1m]				; if (result cond 0), then size1 = size1 - 1
	cmovn#cond	size2, [s_sz2m]				; if (result !cond 0), then size2 = size2 - 1
		mov		[target], key				; target[0].key = key
		mov		[target + 8], data			; target[0].data = data
		add		target, KSIZE				; target++
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
MergeCoreAsc:	MERGE_CORE	le
MergeCoreDsc:	MERGE_CORE	ge
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MERGE	mergefunc
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
source	equ		rsi							; pointer to source vector object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		result						; object size
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.error						;     then go to error branch
;---[Check source object size]-------------
		mov		size, [source + SIZE]		; get source object size
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		test	size, size					; if (source.size == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		add		size, [this + SIZE]			; size = this.size + source.size
	Capacity	size, func, MINCAP			; compute new capacity of target object
		cmp		size, [this + CAPACITY]		; if (size > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Copy nodes content]-------------------
.back:	mov		size, [s_size]				; get "size" variable from the stack
		mov		param3, [this + SIZE]
		mov		param2, [this + ARRAY]
		mov		param1, [this + ARRAY]
		add		param1, size
		call	Move						; call Move (this.array + source.size, this.array, this.size)
;---[Merge vectors]------------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		param6, func
		mov		param5, [source + SIZE]
		mov		param4, [source + ARRAY]
		mov		param3, [this + SIZE]
		mov		param2, [this + ARRAY]
		add		param2, size
		mov		param1, [this + ARRAY]
		call	mergefunc					; call mergefunc (this.array, this.array + source.size, this.size, source.array, source.size, func)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		add		[this + SIZE], size			; this.size += source.size
;---[Normal exit branch]-------------------
.exit:	mov		result, [s_size]			; get "size" variable from the stack
		shr		result, KSCALE				; return result
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, size
		call	Extend						; status = this.Extend (count)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret
}
MergeAsc:	MERGE	MergeCoreAsc
MergeDsc:	MERGE	MergeCoreDsc

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
Unique:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
source	equ		rsi							; pointer to source vector object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
ptr		equ		rcx							; temporary pointer
array	equ		r8							; pointer to array of nodes
size	equ		r9							; object size
value	equ		r10							; key value
total	equ		r11							; count of duplicates
key		equ		xmm0						; key value
data	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
s_func	equ		stack + 2 * 8				; stack position of "func" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_uniq	equ		stack + 5 * 8				; stack position of "unique" variable
s_array	equ		stack + 4 * 8				; stack position of "array" variable
s_ptr	equ		stack + 6 * 8				; stack position of "ptr" variable
s_value	equ		stack + 7 * 8				; stack position of "value" variable
s_total	equ		stack + 8 * 8				; stack position of "total" variable
space	= 9 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Check target object size]-------------
		cmp		qword [this + SIZE], 0		; if (size)
		jnz		.error						;     then go to error branch
;---[Check source object size]-------------
		mov		size, [source + SIZE]		; get size of source vector object
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Check object capacity]----------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
	Capacity	size, result, MINCAP		; compute new capacity of target object
		cmp		size, [this + CAPACITY]		; if (size > capacity)
		ja		.ext						;     then try to extend object capacity
;---[Normal execution branch]--------------
.back:	mov		ptr, [this + ARRAY]			; get pointer to target array of nodes
		mov		array, [source + ARRAY]		; get pointer to source array of nodes
		mov		value, [array]				; value = array[0]
		add		array, KSIZE				; array++
		mov		[s_uniq], ptr				; save "unique" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
		mov		qword [s_total], 1			; total = 1
		sub		qword [s_size], KSIZE		; size--
		jz		.skip						; if (size == 0), then skip the loop
;---[Unique loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, value
		call	qword [s_func]				; result = Compare (value.key, array[0].key)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		value, [s_value]			; get "value" variable from the stack
		mov		total, [s_total]			; get "total" variable from the stack
		test	result, result				; if (result != 0)
		jz		@f							; {
		movq	key, [s_value]
		movq	data, [s_total]
	punpcklqdq	key, data					;
		movdqa	[ptr], key					;     ptr[0] = {key, total}
		add		ptr, KSIZE					;     ptr++
		mov		value, [array]				;     value = array[0]
		xor		total, total				;     total = 0 }
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
@@:		add		total, 1					; total++
		mov		[s_total], total			; save "total" variable into the stack
		add		array, KSIZE				; array++
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_size], KSIZE		; size--
		jnz		.loop						; do while (size != 0)
;---[End of unique loop]-------------------
.skip:	mov		this, [s_this]				; get "this" variable from the stack
		movq	key, [s_value]
		movq	data, [s_total]
	punpcklqdq	key, data
		movdqa	[ptr], key					; ptr[0] = {key, total}
		add		ptr, KSIZE					; ptr++
		sub		ptr, [s_uniq]
		mov		[this + SIZE], ptr			; this.size = ptr - unique
;---[Normal exit branch]-------------------
.exit:	mov		result, [this + SIZE]
		shr		result, KSCALE				; return this.size
		add		stack, space				; restoring back the stack pointer
		ret
;---[Extend object capacity]---------------
.ext:	mov		param2, size
		call	Extend						; status = this.Extend (size)
		mov		this, [s_this]				; get "this" variable from the stack
		mov		source, [s_src]				; get "source" variable from the stack
		test	status, status				; if (status)
		jnz		.back						;     then go back
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Comparison of vectors                                                  ;
;******************************************************************************;
macro	COMPARE	type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
source	equ		rsi							; pointer to source vector object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
status	equ		rdx							; compare status
size	equ		rcx							; object size
tarray	equ		r8							; pointer to target array of nodes
sarray	equ		r9							; pointer to source array of nodes
great	equ		r10							; +1
less	equ		r11							; -1
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "source" variable
if type
diff	= DiffBwd							; diff function
else
diff	= DiffFwd							; diff function
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.equal						;     return 0
		cmp		qword [this + SIZE], 0		; if (this.size == 0)
		jz		.size						;     then go to size compare branch
		cmp		qword [source + SIZE], 0	; if (source.size == 0)
		jz		.size						;     then go to size compare branch
;---[Call check function]------------------
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], source				; save "source" variable into the stack
		mov		tarray, [this + ARRAY]
if type
		add		tarray, [this + SIZE]
		sub		tarray, KSIZE				; tarray = this.array + this.size - 1
end if
		mov		sarray, [source + ARRAY]
if type
		add		sarray, [source + SIZE]
		sub		sarray, KSIZE				; sarray = source.array + source.size - 1
end if
		mov		param4, func
		mov		param3, [this + SIZE]
		mov		param2, sarray
		mov		param1, tarray
		call	diff						; result = diff (this.array, source.array, this.size, func)
		cmp		result, NOT_FOUND			; if (result != NOT_FOUND)
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
;---[Equal b-trees branch]-----------------
.equal:	xor		result, result				; return 0
		add		stack, space				; restoring back the stack pointer
		ret
}
CompareVector:	COMPARE	0
CompareStack:	COMPARE	1

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for sort order                                                   ;
;==============================================================================;
macro	CHECK	checkfunc, c1, c2
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
func	equ		rsi							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		r8							; object size
;------------------------------------------
		mov		size, [this + SIZE]			; get object size
		sub		size, KSIZE					; if (size <= 1)
		set#c1	status						;     then set status and
		jbe		.exit						;     go to exit
;---[Call check function]------------------
		mov		param3, func
		mov		param2, size
		mov		param1, [this + ARRAY]
		call	checkfunc					; result = checkfunc (array, size - 1, func)
		cmp		result, NOT_FOUND			; check result
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
macro	IS_EQUAL	type
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
source	equ		rsi							; pointer to source vector object
func	equ		rdx							; compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
size	equ		rcx							; object size
tarray	equ		r8							; pointer to target array of nodes
sarray	equ		r9							; pointer to source array of nodes
if type
diff	= DiffBwd							; diff function
else
diff	= DiffFwd							; diff function
end if
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		cmp		this, source				; if (this == source)
		je		.exit						;     return true
		mov		size, [this + SIZE]
		cmp		size, [source + SIZE]		; if (this.size != source.size)
		jne		.exit						;     return false
		test	size, size					; if (size == 0)
		jz		.exit						;     return true
;---[Call check function]------------------
		mov		tarray, [this + ARRAY]
if type
		add		tarray, [this + SIZE]
		sub		tarray, KSIZE				; tarray = this.array + this.size - 1
end if
		mov		sarray, [source + ARRAY]
if type
		add		sarray, [source + SIZE]
		sub		sarray, KSIZE				; sarray = source.array + source.size - 1
end if
		mov		param4, func
		mov		param3, [this + SIZE]
		mov		param2, sarray
		mov		param1, tarray
		call	diff						; result = diff (this.array + this.size - 1, source.array + source.size - 1, this.size, func)
		cmp		result, NOT_FOUND			; if (result == NOT_FOUND)
.exit:	sete	status
		add		stack, space				; restoring back the stack pointer
		ret
}
IsEqualVector:	IS_EQUAL	0
IsEqualStack:	IS_EQUAL	1

;******************************************************************************;
;       Vector properties                                                      ;
;******************************************************************************;
GetCapacity:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + CAPACITY]	; get object capacity
		shr		result, KSCALE
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
GetSize:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
		mov		result, [this + SIZE]		; get object size
		shr		result, KSCALE
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
IsEmpty:
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
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
this	equ		rdi							; pointer to vector object
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
