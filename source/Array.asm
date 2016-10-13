;                                                                      Array.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                 COMMON ROUTINES THAT ARE USEFUL FOR ARRAYS                  #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Initialization                                                         ;
;******************************************************************************;

; Unsigned integer types
public	Init_int8					as	'Array_Init_uint8'
public	Init_int16					as	'Array_Init_uint16'
public	Init_int32					as	'Array_Init_uint32'
public	Init_int64					as	'Array_Init_uint64'
public	Init_int8					as	'_ZN5Array4InitEPhmh'
public	Init_int16					as	'_ZN5Array4InitEPtmt'
public	Init_int32					as	'_ZN5Array4InitEPjmj'
public	Init_int64					as	'_ZN5Array4InitEPymy'

; Signed integer types
public	Init_int8					as	'Array_Init_sint8'
public	Init_int16					as	'Array_Init_sint16'
public	Init_int32					as	'Array_Init_sint32'
public	Init_int64					as	'Array_Init_sint64'
public	Init_int8					as	'_ZN5Array4InitEPama'
public	Init_int16					as	'_ZN5Array4InitEPsms'
public	Init_int32					as	'_ZN5Array4InitEPimi'
public	Init_int64					as	'_ZN5Array4InitEPxmx'

; Floating-point types
public	Init_int32					as	'Array_Init_flt32'
public	Init_int64					as	'Array_Init_flt64'
public	Init_flt32					as	'_ZN5Array4InitEPfmf'
public	Init_flt64					as	'_ZN5Array4InitEPdmd'

; Other types
public	Init_int64					as	'Array_Init_size'
public	Init_int64					as	'_ZN5Array4InitEPmmm'

;******************************************************************************;
;       Copying arrays                                                         ;
;******************************************************************************;

; Unsigned integer types
public	CopyFwd8					as	'Array_Copy_uint8'
public	CopyFwd16					as	'Array_Copy_uint16'
public	CopyFwd32					as	'Array_Copy_uint32'
public	CopyFwd64					as	'Array_Copy_uint64'
public	CopyFwd8					as	'_ZN5Array4CopyEPhPKhm'
public	CopyFwd16					as	'_ZN5Array4CopyEPtPKtm'
public	CopyFwd32					as	'_ZN5Array4CopyEPjPKjm'
public	CopyFwd64					as	'_ZN5Array4CopyEPyPKym'

; Signed integer types
public	CopyFwd8					as	'Array_Copy_sint8'
public	CopyFwd16					as	'Array_Copy_sint16'
public	CopyFwd32					as	'Array_Copy_sint32'
public	CopyFwd64					as	'Array_Copy_sint64'
public	CopyFwd8					as	'_ZN5Array4CopyEPaPKam'
public	CopyFwd16					as	'_ZN5Array4CopyEPsPKsm'
public	CopyFwd32					as	'_ZN5Array4CopyEPiPKim'
public	CopyFwd64					as	'_ZN5Array4CopyEPxPKxm'

; Floating-point types
public	CopyFwd32					as	'Array_Copy_flt32'
public	CopyFwd64					as	'Array_Copy_flt64'
public	CopyFwd32					as	'_ZN5Array4CopyEPfPKfm'
public	CopyFwd64					as	'_ZN5Array4CopyEPdPKdm'

; Other types
public	CopyFwd64					as	'Array_Copy_size'
public	CopyFwd8					as	'Array_Copy'
public	CopyFwd64					as	'_ZN5Array4CopyEPmPKmm'
public	CopyFwd8					as	'_ZN5Array4CopyEPvPKvm'

;******************************************************************************;
;       Moving arrays                                                          ;
;******************************************************************************;

; Unsigned integer types
public	Move8						as	'Array_Move_uint8'
public	Move16						as	'Array_Move_uint16'
public	Move32						as	'Array_Move_uint32'
public	Move64						as	'Array_Move_uint64'
public	Move8						as	'_ZN5Array4MoveEPhS0_m'
public	Move16						as	'_ZN5Array4MoveEPtS0_m'
public	Move32						as	'_ZN5Array4MoveEPjS0_m'
public	Move64						as	'_ZN5Array4MoveEPyS0_m'

; Signed integer types
public	Move8						as	'Array_Move_sint8'
public	Move16						as	'Array_Move_sint16'
public	Move32						as	'Array_Move_sint32'
public	Move64						as	'Array_Move_sint64'
public	Move8						as	'_ZN5Array4MoveEPaS0_m'
public	Move16						as	'_ZN5Array4MoveEPsS0_m'
public	Move32						as	'_ZN5Array4MoveEPiS0_m'
public	Move64						as	'_ZN5Array4MoveEPxS0_m'

; Floating-point types
public	Move32						as	'Array_Move_flt32'
public	Move64						as	'Array_Move_flt64'
public	Move32						as	'_ZN5Array4MoveEPfS0_m'
public	Move64						as	'_ZN5Array4MoveEPdS0_m'

; Other types
public	Move64						as	'Array_Move_size'
public	Move8						as	'Array_Move'
public	Move64						as	'_ZN5Array4MoveEPmS0_m'
public	Move8						as	'_ZN5Array4MoveEPvS0_m'

;******************************************************************************;
;       Pattern cloning                                                        ;
;******************************************************************************;

; Unsigned integer types
public	Clone8						as	'Array_Clone_uint8'
public	Clone16						as	'Array_Clone_uint16'
public	Clone32						as	'Array_Clone_uint32'
public	Clone64						as	'Array_Clone_uint64'
public	Clone8						as	'_ZN5Array5CloneEPhmm'
public	Clone16						as	'_ZN5Array5CloneEPtmm'
public	Clone32						as	'_ZN5Array5CloneEPjmm'
public	Clone64						as	'_ZN5Array5CloneEPymm'

; Signed integer types
public	Clone8						as	'Array_Clone_sint8'
public	Clone16						as	'Array_Clone_sint16'
public	Clone32						as	'Array_Clone_sint32'
public	Clone64						as	'Array_Clone_sint64'
public	Clone8						as	'_ZN5Array5CloneEPamm'
public	Clone16						as	'_ZN5Array5CloneEPsmm'
public	Clone32						as	'_ZN5Array5CloneEPimm'
public	Clone64						as	'_ZN5Array5CloneEPxmm'

; Floating-point types
public	Clone32						as	'Array_Clone_flt32'
public	Clone64						as	'Array_Clone_flt64'
public	Clone32						as	'_ZN5Array5CloneEPfmm'
public	Clone64						as	'_ZN5Array5CloneEPdmm'

; Other types
public	Clone64						as	'Array_Clone_size'
public	Clone8						as	'Array_Clone'
public	Clone64						as	'_ZN5Array5CloneEPmmm'
public	Clone8						as	'_ZN5Array5CloneEPvmm'

;******************************************************************************;
;       Data conversion                                                        ;
;******************************************************************************;

; Conversion between floating-point types
public	ConvertToFlt32_flt64		as	'Array_ConvertToFlt32'
public	ConvertToFlt64_flt32		as	'Array_ConvertToFlt64'
public	ConvertToFlt32_flt64		as	'_ZN5Array14ConvertToFlt32EPfPKdm'
public	ConvertToFlt64_flt32		as	'_ZN5Array14ConvertToFlt64EPdPKfm'

; Conversion from signed integer types to floating-point types
public	ConvertToFlt32_sint32		as	'Array_ConvertSint32ToFlt32_sint32'
public	ConvertToFlt32_sint64		as	'Array_ConvertSint64ToFlt32_sint64'
public	ConvertToFlt64_sint32		as	'Array_ConvertSint32ToFlt64_sint32'
public	ConvertToFlt64_sint64		as	'Array_ConvertSint64ToFlt64_sint64'
public	ConvertToFlt32_sint32		as	'_ZN5Array14ConvertToFlt32EPfPKim'
public	ConvertToFlt32_sint64		as	'_ZN5Array14ConvertToFlt32EPfPKxm'
public	ConvertToFlt64_sint32		as	'_ZN5Array14ConvertToFlt64EPdPKim'
public	ConvertToFlt64_sint64		as	'_ZN5Array14ConvertToFlt64EPdPKxm'

; Conversion from floating-point types to signed integer types
public	ConvertToSint32_flt32		as	'Array_ConvertToSint32_flt32'
public	ConvertToSint32_flt64		as	'Array_ConvertToSint32_flt64'
public	ConvertToSint64_flt32		as	'Array_ConvertToSint64_flt32'
public	ConvertToSint64_flt64		as	'Array_ConvertToSint64_flt64'
public	ConvertToSint32_flt32		as	'_ZN5Array15ConvertToSint32EPiPKfm'
public	ConvertToSint32_flt64		as	'_ZN5Array15ConvertToSint32EPiPKdm'
public	ConvertToSint64_flt32		as	'_ZN5Array15ConvertToSint64EPxPKfm'
public	ConvertToSint64_flt64		as	'_ZN5Array15ConvertToSint64EPxPKdm'

; Truncating from floating-point types to signed integer types
public	TruncateToSint32_flt32		as	'Array_TruncateToSint32_Flt32'
public	TruncateToSint32_flt64		as	'Array_TruncateToSint32_Flt64'
public	TruncateToSint64_flt32		as	'Array_TruncateToSint64_Flt32'
public	TruncateToSint64_flt64		as	'Array_TruncateToSint64_Flt64'
public	TruncateToSint32_flt32		as	'_ZN5Array16TruncateToSint32EPiPKfm'
public	TruncateToSint32_flt64		as	'_ZN5Array16TruncateToSint32EPiPKdm'
public	TruncateToSint64_flt32		as	'_ZN5Array16TruncateToSint64EPxPKfm'
public	TruncateToSint64_flt64		as	'_ZN5Array16TruncateToSint64EPxPKdm'

;******************************************************************************;
;       Bit field operations                                                   ;
;******************************************************************************;

;==============================================================================;
;       Get bit value from bit field                                           ;
;==============================================================================;

; Unsigned integer types
public	GetBit						as	'Array_GetBit_uint8'
public	GetBit						as	'Array_GetBit_uint16'
public	GetBit						as	'Array_GetBit_uint32'
public	GetBit						as	'Array_GetBit_uint64'
public	GetBit						as	'_ZN5Array6GetBitEPKhm'
public	GetBit						as	'_ZN5Array6GetBitEPKtm'
public	GetBit						as	'_ZN5Array6GetBitEPKjm'
public	GetBit						as	'_ZN5Array6GetBitEPKym'

; Signed integer types
public	GetBit						as	'Array_GetBit_sint8'
public	GetBit						as	'Array_GetBit_sint16'
public	GetBit						as	'Array_GetBit_sint32'
public	GetBit						as	'Array_GetBit_sint64'
public	GetBit						as	'_ZN5Array6GetBitEPKam'
public	GetBit						as	'_ZN5Array6GetBitEPKsm'
public	GetBit						as	'_ZN5Array6GetBitEPKim'
public	GetBit						as	'_ZN5Array6GetBitEPKxm'

; Other types
public	GetBit						as	'Array_GetBit_size'
public	GetBit						as	'Array_GetBit'
public	GetBit						as	'_ZN5Array6GetBitEPKmm'
public	GetBit						as	'_ZN5Array6GetBitEPKvm'

;==============================================================================;
;       Set bit value in bit field                                             ;
;==============================================================================;

; Unsigned integer types
public	SetBit						as	'Array_SetBit_uint8'
public	SetBit						as	'Array_SetBit_uint16'
public	SetBit						as	'Array_SetBit_uint32'
public	SetBit						as	'Array_SetBit_uint64'
public	SetBit						as	'_ZN5Array6SetBitEPhm'
public	SetBit						as	'_ZN5Array6SetBitEPtm'
public	SetBit						as	'_ZN5Array6SetBitEPjm'
public	SetBit						as	'_ZN5Array6SetBitEPym'

; Signed integer types
public	SetBit						as	'Array_SetBit_sint8'
public	SetBit						as	'Array_SetBit_sint16'
public	SetBit						as	'Array_SetBit_sint32'
public	SetBit						as	'Array_SetBit_sint64'
public	SetBit						as	'_ZN5Array6SetBitEPam'
public	SetBit						as	'_ZN5Array6SetBitEPsm'
public	SetBit						as	'_ZN5Array6SetBitEPim'
public	SetBit						as	'_ZN5Array6SetBitEPxm'

; Other types
public	SetBit						as	'Array_SetBit_size'
public	SetBit						as	'Array_SetBit'
public	SetBit						as	'_ZN5Array6SetBitEPmm'
public	SetBit						as	'_ZN5Array6SetBitEPvm'

;==============================================================================;
;       Reset bit value in bit field                                           ;
;==============================================================================;

; Unsigned integer types
public	ResetBit					as	'Array_ResetBit_uint8'
public	ResetBit					as	'Array_ResetBit_uint16'
public	ResetBit					as	'Array_ResetBit_uint32'
public	ResetBit					as	'Array_ResetBit_uint64'
public	ResetBit					as	'_ZN5Array8ResetBitEPhm'
public	ResetBit					as	'_ZN5Array8ResetBitEPtm'
public	ResetBit					as	'_ZN5Array8ResetBitEPjm'
public	ResetBit					as	'_ZN5Array8ResetBitEPym'

; Signed integer types
public	ResetBit					as	'Array_ResetBit_sint8'
public	ResetBit					as	'Array_ResetBit_sint16'
public	ResetBit					as	'Array_ResetBit_sint32'
public	ResetBit					as	'Array_ResetBit_sint64'
public	ResetBit					as	'_ZN5Array8ResetBitEPam'
public	ResetBit					as	'_ZN5Array8ResetBitEPsm'
public	ResetBit					as	'_ZN5Array8ResetBitEPim'
public	ResetBit					as	'_ZN5Array8ResetBitEPxm'

; Other types
public	ResetBit					as	'Array_ResetBit_size'
public	ResetBit					as	'Array_ResetBit'
public	ResetBit					as	'_ZN5Array8ResetBitEPmm'
public	ResetBit					as	'_ZN5Array8ResetBitEPvm'

;==============================================================================;
;       Invert bit value in bit field                                          ;
;==============================================================================;

; Unsigned integer types
public	InvertBit					as	'Array_InvertBit_uint8'
public	InvertBit					as	'Array_InvertBit_uint16'
public	InvertBit					as	'Array_InvertBit_uint32'
public	InvertBit					as	'Array_InvertBit_uint64'
public	InvertBit					as	'_ZN5Array9InvertBitEPhm'
public	InvertBit					as	'_ZN5Array9InvertBitEPtm'
public	InvertBit					as	'_ZN5Array9InvertBitEPjm'
public	InvertBit					as	'_ZN5Array9InvertBitEPym'

; Signed integer types
public	InvertBit					as	'Array_InvertBit_sint8'
public	InvertBit					as	'Array_InvertBit_sint16'
public	InvertBit					as	'Array_InvertBit_sint32'
public	InvertBit					as	'Array_InvertBit_sint64'
public	InvertBit					as	'_ZN5Array9InvertBitEPam'
public	InvertBit					as	'_ZN5Array9InvertBitEPsm'
public	InvertBit					as	'_ZN5Array9InvertBitEPim'
public	InvertBit					as	'_ZN5Array9InvertBitEPxm'

; Other types
public	InvertBit					as	'Array_InvertBit_size'
public	InvertBit					as	'Array_InvertBit'
public	InvertBit					as	'_ZN5Array9InvertBitEPmm'
public	InvertBit					as	'_ZN5Array9InvertBitEPvm'

;******************************************************************************;
;       Bitwise operations                                                     ;
;******************************************************************************;

;==============================================================================;
;       Byte swap                                                              ;
;==============================================================================;

; Unsigned integer types
public	ByteSwap8					as	'Array_ByteSwap_uint8'
public	ByteSwap16					as	'Array_ByteSwap_uint16'
public	ByteSwap32					as	'Array_ByteSwap_uint32'
public	ByteSwap64					as	'Array_ByteSwap_uint64'
public	ByteSwap8					as	'_ZN5Array8ByteSwapEPhm'
public	ByteSwap16					as	'_ZN5Array8ByteSwapEPtm'
public	ByteSwap32					as	'_ZN5Array8ByteSwapEPjm'
public	ByteSwap64					as	'_ZN5Array8ByteSwapEPym'

; Signed integer types
public	ByteSwap8					as	'Array_ByteSwap_sint8'
public	ByteSwap16					as	'Array_ByteSwap_sint16'
public	ByteSwap32					as	'Array_ByteSwap_sint32'
public	ByteSwap64					as	'Array_ByteSwap_sint64'
public	ByteSwap8					as	'_ZN5Array8ByteSwapEPam'
public	ByteSwap16					as	'_ZN5Array8ByteSwapEPsm'
public	ByteSwap32					as	'_ZN5Array8ByteSwapEPim'
public	ByteSwap64					as	'_ZN5Array8ByteSwapEPxm'

; Other types
public	ByteSwap64					as	'Array_ByteSwap_size'
public	ByteSwap64					as	'_ZN5Array8ByteSwapEPmm'

;==============================================================================;
;       Bit reversal permutation                                               ;
;==============================================================================;

; Unsigned integer types
public	BitReverse8					as	'Array_BitReverse_uint8'
public	BitReverse16				as	'Array_BitReverse_uint16'
public	BitReverse32				as	'Array_BitReverse_uint32'
public	BitReverse64				as	'Array_BitReverse_uint64'
public	BitReverse8					as	'_ZN5Array10BitReverseEPhm'
public	BitReverse16				as	'_ZN5Array10BitReverseEPtm'
public	BitReverse32				as	'_ZN5Array10BitReverseEPjm'
public	BitReverse64				as	'_ZN5Array10BitReverseEPym'

; Signed integer types
public	BitReverse8					as	'Array_BitReverse_sint8'
public	BitReverse16				as	'Array_BitReverse_sint16'
public	BitReverse32				as	'Array_BitReverse_sint32'
public	BitReverse64				as	'Array_BitReverse_sint64'
public	BitReverse8					as	'_ZN5Array10BitReverseEPam'
public	BitReverse16				as	'_ZN5Array10BitReverseEPsm'
public	BitReverse32				as	'_ZN5Array10BitReverseEPim'
public	BitReverse64				as	'_ZN5Array10BitReverseEPxm'

; Other types
public	BitReverse64				as	'Array_BitReverse_size'
public	BitReverse64				as	'_ZN5Array10BitReverseEPmm'

;==============================================================================;
;       Population count                                                       ;
;==============================================================================;

; Unsigned integer types
public	PopCount8					as	'Array_PopCount_uint8'
public	PopCount16					as	'Array_PopCount_uint16'
public	PopCount32					as	'Array_PopCount_uint32'
public	PopCount64					as	'Array_PopCount_uint64'
public	PopCount8					as	'_ZN5Array8PopCountEPhm'
public	PopCount16					as	'_ZN5Array8PopCountEPtm'
public	PopCount32					as	'_ZN5Array8PopCountEPjm'
public	PopCount64					as	'_ZN5Array8PopCountEPym'

; Signed integer types
public	PopCount8					as	'Array_PopCount_sint8'
public	PopCount16					as	'Array_PopCount_sint16'
public	PopCount32					as	'Array_PopCount_sint32'
public	PopCount64					as	'Array_PopCount_sint64'
public	PopCount8					as	'_ZN5Array8PopCountEPam'
public	PopCount16					as	'_ZN5Array8PopCountEPsm'
public	PopCount32					as	'_ZN5Array8PopCountEPim'
public	PopCount64					as	'_ZN5Array8PopCountEPxm'

; Other types
public	PopCount64					as	'Array_PopCount_size'
public	PopCount64					as	'_ZN5Array8PopCountEPmm'

;==============================================================================;
;       Bitwise NOT                                                            ;
;==============================================================================;

; Unsigned integer types
public	Not8						as	'Array_Not_uint8'
public	Not16						as	'Array_Not_uint16'
public	Not32						as	'Array_Not_uint32'
public	Not64						as	'Array_Not_uint64'
public	Not8						as	'_ZN5Array3NotEPhm'
public	Not16						as	'_ZN5Array3NotEPtm'
public	Not32						as	'_ZN5Array3NotEPjm'
public	Not64						as	'_ZN5Array3NotEPym'

; Signed integer types
public	Not8						as	'Array_Not_sint8'
public	Not16						as	'Array_Not_sint16'
public	Not32						as	'Array_Not_sint32'
public	Not64						as	'Array_Not_sint64'
public	Not8						as	'_ZN5Array3NotEPam'
public	Not16						as	'_ZN5Array3NotEPsm'
public	Not32						as	'_ZN5Array3NotEPim'
public	Not64						as	'_ZN5Array3NotEPxm'

; Other types
public	Not64						as	'Array_Not_size'
public	Not64						as	'_ZN5Array3NotEPmm'

;==============================================================================;
;       Bitwise AND                                                            ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Scalar bitwise AND                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	AndS8						as	'Array_AndScalar_uint8'
public	AndS16						as	'Array_AndScalar_uint16'
public	AndS32						as	'Array_AndScalar_uint32'
public	AndS64						as	'Array_AndScalar_uint64'
public	AndS8						as	'_ZN5Array9AndScalarEPhmh'
public	AndS16						as	'_ZN5Array9AndScalarEPtmt'
public	AndS32						as	'_ZN5Array9AndScalarEPjmj'
public	AndS64						as	'_ZN5Array9AndScalarEPymy'

; Signed integer types
public	AndS8						as	'Array_AndScalar_sint8'
public	AndS16						as	'Array_AndScalar_sint16'
public	AndS32						as	'Array_AndScalar_sint32'
public	AndS64						as	'Array_AndScalar_sint64'
public	AndS8						as	'_ZN5Array9AndScalarEPama'
public	AndS16						as	'_ZN5Array9AndScalarEPsms'
public	AndS32						as	'_ZN5Array9AndScalarEPimi'
public	AndS64						as	'_ZN5Array9AndScalarEPxmx'

; Other types
public	AndS64						as	'Array_AndScalar_size'
public	AndS64						as	'_ZN5Array9AndScalarEPmmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Vector bitwise AND                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	AndV8						as	'Array_AndVector_uint8'
public	AndV16						as	'Array_AndVector_uint16'
public	AndV32						as	'Array_AndVector_uint32'
public	AndV64						as	'Array_AndVector_uint64'
public	AndV8						as	'_ZN5Array9AndVectorEPhPKhm'
public	AndV16						as	'_ZN5Array9AndVectorEPtPKtm'
public	AndV32						as	'_ZN5Array9AndVectorEPjPKjm'
public	AndV64						as	'_ZN5Array9AndVectorEPyPKym'

; Signed integer types
public	AndV8						as	'Array_AndVector_sint8'
public	AndV16						as	'Array_AndVector_sint16'
public	AndV32						as	'Array_AndVector_sint32'
public	AndV64						as	'Array_AndVector_sint64'
public	AndV8						as	'_ZN5Array9AndVectorEPaPKam'
public	AndV16						as	'_ZN5Array9AndVectorEPsPKsm'
public	AndV32						as	'_ZN5Array9AndVectorEPiPKim'
public	AndV64						as	'_ZN5Array9AndVectorEPxPKxm'

; Other types
public	AndV64						as	'Array_AndVector_size'
public	AndV64						as	'_ZN5Array9AndVectorEPmPKmm'

;==============================================================================;
;       Bitwise OR                                                             ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Scalar bitwise OR                                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	OrS8						as	'Array_OrScalar_uint8'
public	OrS16						as	'Array_OrScalar_uint16'
public	OrS32						as	'Array_OrScalar_uint32'
public	OrS64						as	'Array_OrScalar_uint64'
public	OrS8						as	'_ZN5Array8OrScalarEPhmh'
public	OrS16						as	'_ZN5Array8OrScalarEPtmt'
public	OrS32						as	'_ZN5Array8OrScalarEPjmj'
public	OrS64						as	'_ZN5Array8OrScalarEPymy'

; Signed integer types
public	OrS8						as	'Array_OrScalar_sint8'
public	OrS16						as	'Array_OrScalar_sint16'
public	OrS32						as	'Array_OrScalar_sint32'
public	OrS64						as	'Array_OrScalar_sint64'
public	OrS8						as	'_ZN5Array8OrScalarEPama'
public	OrS16						as	'_ZN5Array8OrScalarEPsms'
public	OrS32						as	'_ZN5Array8OrScalarEPimi'
public	OrS64						as	'_ZN5Array8OrScalarEPxmx'

; Other types
public	OrS64						as	'Array_OrScalar_size'
public	OrS64						as	'_ZN5Array8OrScalarEPmmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Vector bitwise OR                                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	OrV8						as	'Array_OrVector_uint8'
public	OrV16						as	'Array_OrVector_uint16'
public	OrV32						as	'Array_OrVector_uint32'
public	OrV64						as	'Array_OrVector_uint64'
public	OrV8						as	'_ZN5Array8OrVectorEPhPKhm'
public	OrV16						as	'_ZN5Array8OrVectorEPtPKtm'
public	OrV32						as	'_ZN5Array8OrVectorEPjPKjm'
public	OrV64						as	'_ZN5Array8OrVectorEPyPKym'

; Signed integer types
public	OrV8						as	'Array_OrVector_sint8'
public	OrV16						as	'Array_OrVector_sint16'
public	OrV32						as	'Array_OrVector_sint32'
public	OrV64						as	'Array_OrVector_sint64'
public	OrV8						as	'_ZN5Array8OrVectorEPaPKam'
public	OrV16						as	'_ZN5Array8OrVectorEPsPKsm'
public	OrV32						as	'_ZN5Array8OrVectorEPiPKim'
public	OrV64						as	'_ZN5Array8OrVectorEPxPKxm'

; Other types
public	OrV64						as	'Array_OrVector_size'
public	OrV64						as	'_ZN5Array8OrVectorEPmPKmm'

;==============================================================================;
;       Bitwise XOR                                                            ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Scalar bitwise XOR                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	XorS8						as	'Array_XorScalar_uint8'
public	XorS16						as	'Array_XorScalar_uint16'
public	XorS32						as	'Array_XorScalar_uint32'
public	XorS64						as	'Array_XorScalar_uint64'
public	XorS8						as	'_ZN5Array9XorScalarEPhmh'
public	XorS16						as	'_ZN5Array9XorScalarEPtmt'
public	XorS32						as	'_ZN5Array9XorScalarEPjmj'
public	XorS64						as	'_ZN5Array9XorScalarEPymy'

; Signed integer types
public	XorS8						as	'Array_XorScalar_sint8'
public	XorS16						as	'Array_XorScalar_sint16'
public	XorS32						as	'Array_XorScalar_sint32'
public	XorS64						as	'Array_XorScalar_sint64'
public	XorS8						as	'_ZN5Array9XorScalarEPama'
public	XorS16						as	'_ZN5Array9XorScalarEPsms'
public	XorS32						as	'_ZN5Array9XorScalarEPimi'
public	XorS64						as	'_ZN5Array9XorScalarEPxmx'

; Other types
public	XorS64						as	'Array_XorScalar_size'
public	XorS64						as	'_ZN5Array9XorScalarEPmmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Vector bitwise XOR                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	XorV8						as	'Array_XorVector_uint8'
public	XorV16						as	'Array_XorVector_uint16'
public	XorV32						as	'Array_XorVector_uint32'
public	XorV64						as	'Array_XorVector_uint64'
public	XorV8						as	'_ZN5Array9XorVectorEPhPKhm'
public	XorV16						as	'_ZN5Array9XorVectorEPtPKtm'
public	XorV32						as	'_ZN5Array9XorVectorEPjPKjm'
public	XorV64						as	'_ZN5Array9XorVectorEPyPKym'

; Signed integer types
public	XorV8						as	'Array_XorVector_sint8'
public	XorV16						as	'Array_XorVector_sint16'
public	XorV32						as	'Array_XorVector_sint32'
public	XorV64						as	'Array_XorVector_sint64'
public	XorV8						as	'_ZN5Array9XorVectorEPaPKam'
public	XorV16						as	'_ZN5Array9XorVectorEPsPKsm'
public	XorV32						as	'_ZN5Array9XorVectorEPiPKim'
public	XorV64						as	'_ZN5Array9XorVectorEPxPKxm'

; Other types
public	XorV64						as	'Array_XorVector_size'
public	XorV64						as	'_ZN5Array9XorVectorEPmPKmm'

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unary operations                                                       ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Negative value                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
public	Neg_sint8					as	'Array_Neg_sint8'
public	Neg_sint16					as	'Array_Neg_sint16'
public	Neg_sint32					as	'Array_Neg_sint32'
public	Neg_sint64					as	'Array_Neg_sint64'
public	Neg_sint8					as	'_ZN5Array3NegEPam'
public	Neg_sint16					as	'_ZN5Array3NegEPsm'
public	Neg_sint32					as	'_ZN5Array3NegEPim'
public	Neg_sint64					as	'_ZN5Array3NegEPxm'

; Floating-point types
public	Neg_flt32					as	'Array_Neg_flt32'
public	Neg_flt64					as	'Array_Neg_flt64'
public	Neg_flt32					as	'_ZN5Array3NegEPfm'
public	Neg_flt64					as	'_ZN5Array3NegEPdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Absolute value                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
public	Abs_sint8					as	'Array_Abs_sint8'
public	Abs_sint16					as	'Array_Abs_sint16'
public	Abs_sint32					as	'Array_Abs_sint32'
public	Abs_sint64					as	'Array_Abs_sint64'
public	Abs_sint8					as	'_ZN5Array3AbsEPam'
public	Abs_sint16					as	'_ZN5Array3AbsEPsm'
public	Abs_sint32					as	'_ZN5Array3AbsEPim'
public	Abs_sint64					as	'_ZN5Array3AbsEPxm'

; Floating-point types
public	Abs_flt32					as	'Array_Abs_flt32'
public	Abs_flt64					as	'Array_Abs_flt64'
public	Abs_flt32					as	'_ZN5Array3AbsEPfm'
public	Abs_flt64					as	'_ZN5Array3AbsEPdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Negative absolute value                                                ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
public	NegAbs_sint8				as	'Array_NegAbs_sint8'
public	NegAbs_sint16				as	'Array_NegAbs_sint16'
public	NegAbs_sint32				as	'Array_NegAbs_sint32'
public	NegAbs_sint64				as	'Array_NegAbs_sint64'
public	NegAbs_sint8				as	'_ZN5Array6NegAbsEPam'
public	NegAbs_sint16				as	'_ZN5Array6NegAbsEPsm'
public	NegAbs_sint32				as	'_ZN5Array6NegAbsEPim'
public	NegAbs_sint64				as	'_ZN5Array6NegAbsEPxm'

; Floating-point types
public	NegAbs_flt32				as	'Array_NegAbs_flt32'
public	NegAbs_flt64				as	'Array_NegAbs_flt64'
public	NegAbs_flt32				as	'_ZN5Array6NegAbsEPfm'
public	NegAbs_flt64				as	'_ZN5Array6NegAbsEPdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Number sign                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
public	Sign_sint8					as	'Array_Sign_sint8'
public	Sign_sint16					as	'Array_Sign_sint16'
public	Sign_sint32					as	'Array_Sign_sint32'
public	Sign_sint64					as	'Array_Sign_sint64'
public	Sign_sint8					as	'_ZN5Array4SignEPam'
public	Sign_sint16					as	'_ZN5Array4SignEPsm'
public	Sign_sint32					as	'_ZN5Array4SignEPim'
public	Sign_sint64					as	'_ZN5Array4SignEPxm'

; Floating-point types
public	Sign_flt32					as	'Array_Sign_flt32'
public	Sign_flt64					as	'Array_Sign_flt64'
public	Sign_flt32					as	'_ZN5Array4SignEPfm'
public	Sign_flt64					as	'_ZN5Array4SignEPdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Square                                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Sqr_flt32					as	'Array_Sqr_flt32'
public	Sqr_flt64					as	'Array_Sqr_flt64'
public	Sqr_flt32					as	'_ZN5Array3SqrEPfm'
public	Sqr_flt64					as	'_ZN5Array3SqrEPdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Square root                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Sqrt_flt32					as	'Array_Sqrt_flt32'
public	Sqrt_flt64					as	'Array_Sqrt_flt64'
public	Sqrt_flt32					as	'_ZN5Array4SqrtEPfm'
public	Sqrt_flt64					as	'_ZN5Array4SqrtEPdm'

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Addition                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar addition                                                        ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	AddS8						as	'Array_AddScalar_uint8'
public	AddS16						as	'Array_AddScalar_uint16'
public	AddS32						as	'Array_AddScalar_uint32'
public	AddS64						as	'Array_AddScalar_uint64'
public	AddS8						as	'_ZN5Array9AddScalarEPhmh'
public	AddS16						as	'_ZN5Array9AddScalarEPtmt'
public	AddS32						as	'_ZN5Array9AddScalarEPjmj'
public	AddS64						as	'_ZN5Array9AddScalarEPymy'

; Signed integer types
public	AddS8						as	'Array_AddScalar_sint8'
public	AddS16						as	'Array_AddScalar_sint16'
public	AddS32						as	'Array_AddScalar_sint32'
public	AddS64						as	'Array_AddScalar_sint64'
public	AddS8						as	'_ZN5Array9AddScalarEPama'
public	AddS16						as	'_ZN5Array9AddScalarEPsms'
public	AddS32						as	'_ZN5Array9AddScalarEPimi'
public	AddS64						as	'_ZN5Array9AddScalarEPxmx'

; Floating-point types
public	AddS_flt32					as	'Array_AddScalar_flt32'
public	AddS_flt64					as	'Array_AddScalar_flt64'
public	AddS_flt32					as	'_ZN5Array9AddScalarEPfmf'
public	AddS_flt64					as	'_ZN5Array9AddScalarEPdmd'

; Other types
public	AddS64						as	'Array_AddScalar_size'
public	AddS64						as	'_ZN5Array9AddScalarEPmmm'

;------------------------------------------------------------------------------;
;       Vector addition                                                        ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	AddV8						as	'Array_AddVector_uint8'
public	AddV16						as	'Array_AddVector_uint16'
public	AddV32						as	'Array_AddVector_uint32'
public	AddV64						as	'Array_AddVector_uint64'
public	AddV8						as	'_ZN5Array9AddVectorEPhPKhm'
public	AddV16						as	'_ZN5Array9AddVectorEPtPKtm'
public	AddV32						as	'_ZN5Array9AddVectorEPjPKjm'
public	AddV64						as	'_ZN5Array9AddVectorEPyPKym'

; Signed integer types
public	AddV8						as	'Array_AddVector_sint8'
public	AddV16						as	'Array_AddVector_sint16'
public	AddV32						as	'Array_AddVector_sint32'
public	AddV64						as	'Array_AddVector_sint64'
public	AddV8						as	'_ZN5Array9AddVectorEPaPKam'
public	AddV16						as	'_ZN5Array9AddVectorEPsPKsm'
public	AddV32						as	'_ZN5Array9AddVectorEPiPKim'
public	AddV64						as	'_ZN5Array9AddVectorEPxPKxm'

; Floating-point types
public	AddV_flt32					as	'Array_AddVector_flt32'
public	AddV_flt64					as	'Array_AddVector_flt64'
public	AddV_flt32					as	'_ZN5Array9AddVectorEPfPKfm'
public	AddV_flt64					as	'_ZN5Array9AddVectorEPdPKdm'

; Other types
public	AddV64						as	'Array_AddVector_size'
public	AddV64						as	'_ZN5Array9AddVectorEPmPKmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Subtraction                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar subtraction                                                     ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	SubS8						as	'Array_SubScalar_uint8'
public	SubS16						as	'Array_SubScalar_uint16'
public	SubS32						as	'Array_SubScalar_uint32'
public	SubS64						as	'Array_SubScalar_uint64'
public	SubS8						as	'_ZN5Array9SubScalarEPhmh'
public	SubS16						as	'_ZN5Array9SubScalarEPtmt'
public	SubS32						as	'_ZN5Array9SubScalarEPjmj'
public	SubS64						as	'_ZN5Array9SubScalarEPymy'

; Signed integer types
public	SubS8						as	'Array_SubScalar_sint8'
public	SubS16						as	'Array_SubScalar_sint16'
public	SubS32						as	'Array_SubScalar_sint32'
public	SubS64						as	'Array_SubScalar_sint64'
public	SubS8						as	'_ZN5Array9SubScalarEPama'
public	SubS16						as	'_ZN5Array9SubScalarEPsms'
public	SubS32						as	'_ZN5Array9SubScalarEPimi'
public	SubS64						as	'_ZN5Array9SubScalarEPxmx'

; Floating-point types
public	SubS_flt32					as	'Array_SubScalar_flt32'
public	SubS_flt64					as	'Array_SubScalar_flt64'
public	SubS_flt32					as	'_ZN5Array9SubScalarEPfmf'
public	SubS_flt64					as	'_ZN5Array9SubScalarEPdmd'

; Other types
public	SubS64						as	'Array_SubScalar_size'
public	SubS64						as	'_ZN5Array9SubScalarEPmmm'

;------------------------------------------------------------------------------;
;       Vector subtraction                                                     ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	SubV8						as	'Array_SubVector_uint8'
public	SubV16						as	'Array_SubVector_uint16'
public	SubV32						as	'Array_SubVector_uint32'
public	SubV64						as	'Array_SubVector_uint64'
public	SubV8						as	'_ZN5Array9SubVectorEPhPKhm'
public	SubV16						as	'_ZN5Array9SubVectorEPtPKtm'
public	SubV32						as	'_ZN5Array9SubVectorEPjPKjm'
public	SubV64						as	'_ZN5Array9SubVectorEPyPKym'

; Signed integer types
public	SubV8						as	'Array_SubVector_sint8'
public	SubV16						as	'Array_SubVector_sint16'
public	SubV32						as	'Array_SubVector_sint32'
public	SubV64						as	'Array_SubVector_sint64'
public	SubV8						as	'_ZN5Array9SubVectorEPaPKam'
public	SubV16						as	'_ZN5Array9SubVectorEPsPKsm'
public	SubV32						as	'_ZN5Array9SubVectorEPiPKim'
public	SubV64						as	'_ZN5Array9SubVectorEPxPKxm'

; Floating-point types
public	SubV_flt32					as	'Array_SubVector_flt32'
public	SubV_flt64					as	'Array_SubVector_flt64'
public	SubV_flt32					as	'_ZN5Array9SubVectorEPfPKfm'
public	SubV_flt64					as	'_ZN5Array9SubVectorEPdPKdm'

; Other types
public	SubV64						as	'Array_SubVector_size'
public	SubV64						as	'_ZN5Array9SubVectorEPmPKmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Reverse subtraction                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar reverse subtraction                                             ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	ReverseSubS8				as	'Array_ReverseSubScalar_uint8'
public	ReverseSubS16				as	'Array_ReverseSubScalar_uint16'
public	ReverseSubS32				as	'Array_ReverseSubScalar_uint32'
public	ReverseSubS64				as	'Array_ReverseSubScalar_uint64'
public	ReverseSubS8				as	'_ZN5Array16ReverseSubScalarEPhmh'
public	ReverseSubS16				as	'_ZN5Array16ReverseSubScalarEPtmt'
public	ReverseSubS32				as	'_ZN5Array16ReverseSubScalarEPjmj'
public	ReverseSubS64				as	'_ZN5Array16ReverseSubScalarEPymy'

; Signed integer types
public	ReverseSubS8				as	'Array_ReverseSubScalar_sint8'
public	ReverseSubS16				as	'Array_ReverseSubScalar_sint16'
public	ReverseSubS32				as	'Array_ReverseSubScalar_sint32'
public	ReverseSubS64				as	'Array_ReverseSubScalar_sint64'
public	ReverseSubS8				as	'_ZN5Array16ReverseSubScalarEPama'
public	ReverseSubS16				as	'_ZN5Array16ReverseSubScalarEPsms'
public	ReverseSubS32				as	'_ZN5Array16ReverseSubScalarEPimi'
public	ReverseSubS64				as	'_ZN5Array16ReverseSubScalarEPxmx'

; Floating-point types
public	ReverseSubS_flt32			as	'Array_ReverseSubScalar_flt32'
public	ReverseSubS_flt64			as	'Array_ReverseSubScalar_flt64'
public	ReverseSubS_flt32			as	'_ZN5Array16ReverseSubScalarEPfmf'
public	ReverseSubS_flt64			as	'_ZN5Array16ReverseSubScalarEPdmd'

; Other types
public	ReverseSubS64				as	'Array_ReverseSubScalar_size'
public	ReverseSubS64				as	'_ZN5Array16ReverseSubScalarEPmmm'

;------------------------------------------------------------------------------;
;       Vector reverse subtraction                                             ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	ReverseSubV8				as	'Array_ReverseSubVector_uint8'
public	ReverseSubV16				as	'Array_ReverseSubVector_uint16'
public	ReverseSubV32				as	'Array_ReverseSubVector_uint32'
public	ReverseSubV64				as	'Array_ReverseSubVector_uint64'
public	ReverseSubV8				as	'_ZN5Array16ReverseSubVectorEPhPKhm'
public	ReverseSubV16				as	'_ZN5Array16ReverseSubVectorEPtPKtm'
public	ReverseSubV32				as	'_ZN5Array16ReverseSubVectorEPjPKjm'
public	ReverseSubV64				as	'_ZN5Array16ReverseSubVectorEPyPKym'

; Signed integer types
public	ReverseSubV8				as	'Array_ReverseSubVector_sint8'
public	ReverseSubV16				as	'Array_ReverseSubVector_sint16'
public	ReverseSubV32				as	'Array_ReverseSubVector_sint32'
public	ReverseSubV64				as	'Array_ReverseSubVector_sint64'
public	ReverseSubV8				as	'_ZN5Array16ReverseSubVectorEPaPKam'
public	ReverseSubV16				as	'_ZN5Array16ReverseSubVectorEPsPKsm'
public	ReverseSubV32				as	'_ZN5Array16ReverseSubVectorEPiPKim'
public	ReverseSubV64				as	'_ZN5Array16ReverseSubVectorEPxPKxm'

; Floating-point types
public	ReverseSubV_flt32			as	'Array_ReverseSubVector_flt32'
public	ReverseSubV_flt64			as	'Array_ReverseSubVector_flt64'
public	ReverseSubV_flt32			as	'_ZN5Array16ReverseSubVectorEPfPKfm'
public	ReverseSubV_flt64			as	'_ZN5Array16ReverseSubVectorEPdPKdm'

; Other types
public	ReverseSubV64				as	'Array_ReverseSubVector_size'
public	ReverseSubV64				as	'_ZN5Array16ReverseSubVectorEPmPKmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar multiplication                                                  ;
;------------------------------------------------------------------------------;
public	MulS_flt32					as	'Array_MulScalar_flt32'
public	MulS_flt64					as	'Array_MulScalar_flt64'
public	MulS_flt32					as	'_ZN5Array9MulScalarEPfmf'
public	MulS_flt64					as	'_ZN5Array9MulScalarEPdmd'

;------------------------------------------------------------------------------;
;       Vector multiplication                                                  ;
;------------------------------------------------------------------------------;
public	MulV_flt32					as	'Array_MulVector_flt32'
public	MulV_flt64					as	'Array_MulVector_flt64'
public	MulV_flt32					as	'_ZN5Array9MulVectorEPfPKfm'
public	MulV_flt64					as	'_ZN5Array9MulVectorEPdPKdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar division                                                        ;
;------------------------------------------------------------------------------;
public	DivS_flt32					as	'Array_DivScalar_flt32'
public	DivS_flt64					as	'Array_DivScalar_flt64'
public	DivS_flt32					as	'_ZN5Array9DivScalarEPfmf'
public	DivS_flt64					as	'_ZN5Array9DivScalarEPdmd'

;------------------------------------------------------------------------------;
;       Vector division                                                        ;
;------------------------------------------------------------------------------;
public	DivV_flt32					as	'Array_DivVector_flt32'
public	DivV_flt64					as	'Array_DivVector_flt64'
public	DivV_flt32					as	'_ZN5Array9DivVectorEPfPKfm'
public	DivV_flt64					as	'_ZN5Array9DivVectorEPdPKdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Reverse division                                                       ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar reverse division                                                ;
;------------------------------------------------------------------------------;
public	ReverseDivS_flt32			as	'Array_ReverseDivScalar_flt32'
public	ReverseDivS_flt64			as	'Array_ReverseDivScalar_flt64'
public	ReverseDivS_flt32			as	'_ZN5Array16ReverseDivScalarEPfmf'
public	ReverseDivS_flt64			as	'_ZN5Array16ReverseDivScalarEPdmd'

;------------------------------------------------------------------------------;
;       Vector reverse division                                                ;
;------------------------------------------------------------------------------;
public	ReverseDivV_flt32			as	'Array_ReverseDivVector_flt32'
public	ReverseDivV_flt64			as	'Array_ReverseDivVector_flt64'
public	ReverseDivV_flt32			as	'_ZN5Array16ReverseDivVectorEPfPKfm'
public	ReverseDivV_flt64			as	'_ZN5Array16ReverseDivVectorEPdPKdm'

;******************************************************************************;
;       Rounding                                                               ;
;******************************************************************************;

; Round down (floor)
public	RoundDown_flt32				as	'Array_RoundDown_flt32'
public	RoundDown_flt64				as	'Array_RoundDown_flt64'
public	RoundDown_flt32				as	'_ZN5Array9RoundDownEPfm'
public	RoundDown_flt64				as	'_ZN5Array9RoundDownEPdm'

; Round up (ceil)
public	RoundUp_flt32				as	'Array_RoundUp_flt32'
public	RoundUp_flt64				as	'Array_RoundUp_flt64'
public	RoundUp_flt32				as	'_ZN5Array7RoundUpEPfm'
public	RoundUp_flt64				as	'_ZN5Array7RoundUpEPdm'

; Round to nearest even integer
public	RoundInt_flt32				as	'Array_RoundInt_flt32'
public	RoundInt_flt64				as	'Array_RoundInt_flt64'
public	RoundInt_flt32				as	'_ZN5Array8RoundIntEPfm'
public	RoundInt_flt64				as	'_ZN5Array8RoundIntEPdm'

; Round to nearest integer, away from zero
public	RoundRound_flt32			as	'Array_Round_flt32'
public	RoundRound_flt64			as	'Array_Round_flt64'
public	RoundRound_flt32			as	'_ZN5Array5RoundEPfm'
public	RoundRound_flt64			as	'_ZN5Array5RoundEPdm'

; Round to nearest integer, toward zero (truncation)
public	RoundTruncate_flt32			as	'Array_Truncate_flt32'
public	RoundTruncate_flt64			as	'Array_Truncate_flt64'
public	RoundTruncate_flt32			as	'_ZN5Array8TruncateEPfm'
public	RoundTruncate_flt64			as	'_ZN5Array8TruncateEPdm'

; Fractional part
public	RoundFrac_flt32				as	'Array_Frac_flt32'
public	RoundFrac_flt64				as	'Array_Frac_flt64'
public	RoundFrac_flt32				as	'_ZN5Array4FracEPfm'
public	RoundFrac_flt64				as	'_ZN5Array4FracEPdm'

;******************************************************************************;
;       Numerical integration                                                  ;
;******************************************************************************;

; Sum of elements
public	Sum_flt32					as	'Array_Sum_flt32'
public	Sum_flt64					as	'Array_Sum_flt64'
public	Sum_flt32					as	'_ZN5Array3SumEPKfm'
public	Sum_flt64					as	'_ZN5Array3SumEPKdm'

; Sum of squares
public	SumSqr_flt32				as	'Array_SumSqr_flt32'
public	SumSqr_flt64				as	'Array_SumSqr_flt64'
public	SumSqr_flt32				as	'_ZN5Array6SumSqrEPKfm'
public	SumSqr_flt64				as	'_ZN5Array6SumSqrEPKdm'

; Sum of absolute values
public	SumAbs_flt32				as	'Array_SumAbs_flt32'
public	SumAbs_flt64				as	'Array_SumAbs_flt64'
public	SumAbs_flt32				as	'_ZN5Array6SumAbsEPKfm'
public	SumAbs_flt64				as	'_ZN5Array6SumAbsEPKdm'

; Sum of multiplied elements
public	SumMul_flt32				as	'Array_SumMul_flt32'
public	SumMul_flt64				as	'Array_SumMul_flt64'
public	SumMul_flt32				as	'_ZN5Array6SumMulEPKfS1_m'
public	SumMul_flt64				as	'_ZN5Array6SumMulEPKdS1_m'

; Sum of squared differences
public	SumSqrDiff_flt32			as	'Array_SumSqrDiff_flt32'
public	SumSqrDiff_flt64			as	'Array_SumSqrDiff_flt64'
public	SumSqrDiff_flt32			as	'_ZN5Array10SumSqrDiffEPKfS1_m'
public	SumSqrDiff_flt64			as	'_ZN5Array10SumSqrDiffEPKdS1_m'

; Sum of absolute differences
public	SumAbsDiff_flt32			as	'Array_SumAbsDiff_flt32'
public	SumAbsDiff_flt64			as	'Array_SumAbsDiff_flt64'
public	SumAbsDiff_flt32			as	'_ZN5Array10SumAbsDiffEPKfS1_m'
public	SumAbsDiff_flt64			as	'_ZN5Array10SumAbsDiffEPKdS1_m'

;******************************************************************************;
;       Minimum and maximum absolute value                                     ;
;******************************************************************************;

;==============================================================================;
;       Minimum absolute value                                                 ;
;==============================================================================;

; Signed integer types
public	MinAbs_sint8				as	'Array_MinAbs_sint8'
public	MinAbs_sint16				as	'Array_MinAbs_sint16'
public	MinAbs_sint32				as	'Array_MinAbs_sint32'
public	MinAbs_sint8				as	'_ZN5Array6MinAbsEPKam'
public	MinAbs_sint16				as	'_ZN5Array6MinAbsEPKsm'
public	MinAbs_sint32				as	'_ZN5Array6MinAbsEPKim'

; Floating-point types
public	MinAbs_flt32				as	'Array_MinAbs_flt32'
public	MinAbs_flt64				as	'Array_MinAbs_flt64'
public	MinAbs_flt32				as	'_ZN5Array6MinAbsEPKfm'
public	MinAbs_flt64				as	'_ZN5Array6MinAbsEPKdm'

;==============================================================================;
;       Maximum absolute value                                                 ;
;==============================================================================;

; Signed integer types
public	MaxAbs_sint8				as	'Array_MaxAbs_sint8'
public	MaxAbs_sint16				as	'Array_MaxAbs_sint16'
public	MaxAbs_sint32				as	'Array_MaxAbs_sint32'
public	MaxAbs_sint8				as	'_ZN5Array6MaxAbsEPKam'
public	MaxAbs_sint16				as	'_ZN5Array6MaxAbsEPKsm'
public	MaxAbs_sint32				as	'_ZN5Array6MaxAbsEPKim'

; Floating-point types
public	MaxAbs_flt32				as	'Array_MaxAbs_flt32'
public	MaxAbs_flt64				as	'Array_MaxAbs_flt64'
public	MaxAbs_flt32				as	'_ZN5Array6MaxAbsEPKfm'
public	MaxAbs_flt64				as	'_ZN5Array6MaxAbsEPKdm'

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;

;==============================================================================;
;       Regular array search                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	Min_uint8					as	'Array_Min_uint8'
public	Min_uint16					as	'Array_Min_uint16'
public	Min_uint32					as	'Array_Min_uint32'
public	Min_uint8					as	'_ZN5Array3MinEPKhm'
public	Min_uint16					as	'_ZN5Array3MinEPKtm'
public	Min_uint32					as	'_ZN5Array3MinEPKjm'

; Signed integer types
public	Min_sint8					as	'Array_Min_sint8'
public	Min_sint16					as	'Array_Min_sint16'
public	Min_sint32					as	'Array_Min_sint32'
public	Min_sint8					as	'_ZN5Array3MinEPKam'
public	Min_sint16					as	'_ZN5Array3MinEPKsm'
public	Min_sint32					as	'_ZN5Array3MinEPKim'

; Floating-point types
public	Min_flt32					as	'Array_Min_flt32'
public	Min_flt64					as	'Array_Min_flt64'
public	Min_flt32					as	'_ZN5Array3MinEPKfm'
public	Min_flt64					as	'_ZN5Array3MinEPKdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	Max_uint8					as	'Array_Max_uint8'
public	Max_uint16					as	'Array_Max_uint16'
public	Max_uint32					as	'Array_Max_uint32'
public	Max_uint8					as	'_ZN5Array3MaxEPKhm'
public	Max_uint16					as	'_ZN5Array3MaxEPKtm'
public	Max_uint32					as	'_ZN5Array3MaxEPKjm'

; Signed integer types
public	Max_sint8					as	'Array_Max_sint8'
public	Max_sint16					as	'Array_Max_sint16'
public	Max_sint32					as	'Array_Max_sint32'
public	Max_sint8					as	'_ZN5Array3MaxEPKam'
public	Max_sint16					as	'_ZN5Array3MaxEPKsm'
public	Max_sint32					as	'_ZN5Array3MaxEPKim'

; Floating-point types
public	Max_flt32					as	'Array_Max_flt32'
public	Max_flt64					as	'Array_Max_flt64'
public	Max_flt32					as	'_ZN5Array3MaxEPKfm'
public	Max_flt64					as	'_ZN5Array3MaxEPKdm'

;==============================================================================;
;       Object array search                                                    ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	MinFwd						as	'Array_MinObjFwd'
public	MinBwd						as	'Array_MinObjBwd'
public	MinFwd						as	'_ZN5Array9MinObjFwdEPPKvmPFxS1_S1_E'
public	MinBwd						as	'_ZN5Array9MinObjBwdEPPKvmPFxS1_S1_E'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	MaxFwd						as	'Array_MaxObjFwd'
public	MaxBwd						as	'Array_MaxObjBwd'
public	MaxFwd						as	'_ZN5Array9MaxObjFwdEPPKvmPFxS1_S1_E'
public	MaxBwd						as	'_ZN5Array9MaxObjBwdEPPKvmPFxS1_S1_E'

;******************************************************************************;
;       Linear search                                                          ;
;******************************************************************************;

;==============================================================================;
;       Bit field search                                                       ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Searching for set bit                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindSetBitFwd				as	'Array_FindSetBitFwd_uint8'
public	FindSetBitFwd				as	'Array_FindSetBitFwd_uint16'
public	FindSetBitFwd				as	'Array_FindSetBitFwd_uint32'
public	FindSetBitFwd				as	'Array_FindSetBitFwd_uint64'
public	FindSetBitFwd				as	'_ZN5Array13FindSetBitFwdEPKhmm'
public	FindSetBitFwd				as	'_ZN5Array13FindSetBitFwdEPKtmm'
public	FindSetBitFwd				as	'_ZN5Array13FindSetBitFwdEPKjmm'
public	FindSetBitFwd				as	'_ZN5Array13FindSetBitFwdEPKymm'

; Signed integer types
public	FindSetBitFwd				as	'Array_FindSetBitFwd_sint8'
public	FindSetBitFwd				as	'Array_FindSetBitFwd_sint16'
public	FindSetBitFwd				as	'Array_FindSetBitFwd_sint32'
public	FindSetBitFwd				as	'Array_FindSetBitFwd_sint64'
public	FindSetBitFwd				as	'_ZN5Array13FindSetBitFwdEPKamm'
public	FindSetBitFwd				as	'_ZN5Array13FindSetBitFwdEPKsmm'
public	FindSetBitFwd				as	'_ZN5Array13FindSetBitFwdEPKimm'
public	FindSetBitFwd				as	'_ZN5Array13FindSetBitFwdEPKxmm'

; Other types
public	FindSetBitFwd				as	'Array_FindSetBitFwd_size'
public	FindSetBitFwd				as	'Array_FindSetBitFwd'
public	FindSetBitFwd				as	'_ZN5Array13FindSetBitFwdEPKmmm'
public	FindSetBitFwd				as	'_ZN5Array13FindSetBitFwdEPKvmm'

;------------------------------------------------------------------------------;
;       Searching for reset bit                                                ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindResetBitFwd				as	'Array_FindResetBitFwd_uint8'
public	FindResetBitFwd				as	'Array_FindResetBitFwd_uint16'
public	FindResetBitFwd				as	'Array_FindResetBitFwd_uint32'
public	FindResetBitFwd				as	'Array_FindResetBitFwd_uint64'
public	FindResetBitFwd				as	'_ZN5Array15FindResetBitFwdEPKhmm'
public	FindResetBitFwd				as	'_ZN5Array15FindResetBitFwdEPKtmm'
public	FindResetBitFwd				as	'_ZN5Array15FindResetBitFwdEPKjmm'
public	FindResetBitFwd				as	'_ZN5Array15FindResetBitFwdEPKymm'

; Signed integer types
public	FindResetBitFwd				as	'Array_FindResetBitFwd_sint8'
public	FindResetBitFwd				as	'Array_FindResetBitFwd_sint16'
public	FindResetBitFwd				as	'Array_FindResetBitFwd_sint32'
public	FindResetBitFwd				as	'Array_FindResetBitFwd_sint64'
public	FindResetBitFwd				as	'_ZN5Array15FindResetBitFwdEPKamm'
public	FindResetBitFwd				as	'_ZN5Array15FindResetBitFwdEPKsmm'
public	FindResetBitFwd				as	'_ZN5Array15FindResetBitFwdEPKimm'
public	FindResetBitFwd				as	'_ZN5Array15FindResetBitFwdEPKxmm'

; Other types
public	FindResetBitFwd				as	'Array_FindResetBitFwd_size'
public	FindResetBitFwd				as	'Array_FindResetBitFwd'
public	FindResetBitFwd				as	'_ZN5Array15FindResetBitFwdEPKmmm'
public	FindResetBitFwd				as	'_ZN5Array15FindResetBitFwdEPKvmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Searching for set bit                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindSetBitBwd				as	'Array_FindSetBitBwd_uint8'
public	FindSetBitBwd				as	'Array_FindSetBitBwd_uint16'
public	FindSetBitBwd				as	'Array_FindSetBitBwd_uint32'
public	FindSetBitBwd				as	'Array_FindSetBitBwd_uint64'
public	FindSetBitBwd				as	'_ZN5Array13FindSetBitBwdEPKhmm'
public	FindSetBitBwd				as	'_ZN5Array13FindSetBitBwdEPKtmm'
public	FindSetBitBwd				as	'_ZN5Array13FindSetBitBwdEPKjmm'
public	FindSetBitBwd				as	'_ZN5Array13FindSetBitBwdEPKymm'

; Signed integer types
public	FindSetBitBwd				as	'Array_FindSetBitBwd_sint8'
public	FindSetBitBwd				as	'Array_FindSetBitBwd_sint16'
public	FindSetBitBwd				as	'Array_FindSetBitBwd_sint32'
public	FindSetBitBwd				as	'Array_FindSetBitBwd_sint64'
public	FindSetBitBwd				as	'_ZN5Array13FindSetBitBwdEPKamm'
public	FindSetBitBwd				as	'_ZN5Array13FindSetBitBwdEPKsmm'
public	FindSetBitBwd				as	'_ZN5Array13FindSetBitBwdEPKimm'
public	FindSetBitBwd				as	'_ZN5Array13FindSetBitBwdEPKxmm'

; Other types
public	FindSetBitBwd				as	'Array_FindSetBitBwd_size'
public	FindSetBitBwd				as	'Array_FindSetBitBwd'
public	FindSetBitBwd				as	'_ZN5Array13FindSetBitBwdEPKmmm'
public	FindSetBitBwd				as	'_ZN5Array13FindSetBitBwdEPKvmm'

;------------------------------------------------------------------------------;
;       Searching for reset bit                                                ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindResetBitBwd				as	'Array_FindResetBitBwd_uint8'
public	FindResetBitBwd				as	'Array_FindResetBitBwd_uint16'
public	FindResetBitBwd				as	'Array_FindResetBitBwd_uint32'
public	FindResetBitBwd				as	'Array_FindResetBitBwd_uint64'
public	FindResetBitBwd				as	'_ZN5Array15FindResetBitBwdEPKhmm'
public	FindResetBitBwd				as	'_ZN5Array15FindResetBitBwdEPKtmm'
public	FindResetBitBwd				as	'_ZN5Array15FindResetBitBwdEPKjmm'
public	FindResetBitBwd				as	'_ZN5Array15FindResetBitBwdEPKymm'

; Signed integer types
public	FindResetBitBwd				as	'Array_FindResetBitBwd_sint8'
public	FindResetBitBwd				as	'Array_FindResetBitBwd_sint16'
public	FindResetBitBwd				as	'Array_FindResetBitBwd_sint32'
public	FindResetBitBwd				as	'Array_FindResetBitBwd_sint64'
public	FindResetBitBwd				as	'_ZN5Array15FindResetBitBwdEPKamm'
public	FindResetBitBwd				as	'_ZN5Array15FindResetBitBwdEPKsmm'
public	FindResetBitBwd				as	'_ZN5Array15FindResetBitBwdEPKimm'
public	FindResetBitBwd				as	'_ZN5Array15FindResetBitBwdEPKxmm'

; Other types
public	FindResetBitBwd				as	'Array_FindResetBitBwd_size'
public	FindResetBitBwd				as	'Array_FindResetBitBwd'
public	FindResetBitBwd				as	'_ZN5Array15FindResetBitBwdEPKmmm'
public	FindResetBitBwd				as	'_ZN5Array15FindResetBitBwdEPKvmm'

;==============================================================================;
;       Regular array search                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	FindFwd8					as	'Array_FindFwd_uint8'
public	FindFwd16					as	'Array_FindFwd_uint16'
public	FindFwd32					as	'Array_FindFwd_uint32'
public	FindFwd64					as	'Array_FindFwd_uint64'
public	FindFwd8					as	'_ZN5Array7FindFwdEPKhmh'
public	FindFwd16					as	'_ZN5Array7FindFwdEPKtmt'
public	FindFwd32					as	'_ZN5Array7FindFwdEPKjmj'
public	FindFwd64					as	'_ZN5Array7FindFwdEPKymy'

; Signed integer types
public	FindFwd8					as	'Array_FindFwd_sint8'
public	FindFwd16					as	'Array_FindFwd_sint16'
public	FindFwd32					as	'Array_FindFwd_sint32'
public	FindFwd64					as	'Array_FindFwd_sint64'
public	FindFwd8					as	'_ZN5Array7FindFwdEPKama'
public	FindFwd16					as	'_ZN5Array7FindFwdEPKsms'
public	FindFwd32					as	'_ZN5Array7FindFwdEPKimi'
public	FindFwd64					as	'_ZN5Array7FindFwdEPKxmx'

; Other types
public	FindFwd64					as	'Array_FindFwd_size'
public	FindFwd64					as	'_ZN5Array7FindFwdEPKmmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	FindBwd8					as	'Array_FindBwd_uint8'
public	FindBwd16					as	'Array_FindBwd_uint16'
public	FindBwd32					as	'Array_FindBwd_uint32'
public	FindBwd64					as	'Array_FindBwd_uint64'
public	FindBwd8					as	'_ZN5Array7FindBwdEPKhmh'
public	FindBwd16					as	'_ZN5Array7FindBwdEPKtmt'
public	FindBwd32					as	'_ZN5Array7FindBwdEPKjmj'
public	FindBwd64					as	'_ZN5Array7FindBwdEPKymy'

; Signed integer types
public	FindBwd8					as	'Array_FindBwd_sint8'
public	FindBwd16					as	'Array_FindBwd_sint16'
public	FindBwd32					as	'Array_FindBwd_sint32'
public	FindBwd64					as	'Array_FindBwd_sint64'
public	FindBwd8					as	'_ZN5Array7FindBwdEPKama'
public	FindBwd16					as	'_ZN5Array7FindBwdEPKsms'
public	FindBwd32					as	'_ZN5Array7FindBwdEPKimi'
public	FindBwd64					as	'_ZN5Array7FindBwdEPKxmx'

; Other types
public	FindBwd64					as	'Array_FindBwd_size'
public	FindBwd64					as	'_ZN5Array7FindBwdEPKmmm'

;==============================================================================;
;       Object array search                                                    ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	FindFwd						as	'Array_FindObjFwd'
public	FindFwd						as	'String_FindFwd_char8'
public	FindFwd						as	'String_FindFwd_char16'
public	FindFwd						as	'String_FindFwd_char32'
public	FindFwd						as	'_ZN5Array10FindObjFwdEPPKvmS1_PFxS1_S1_E'
public	FindFwd						as	'_ZN6String7FindFwdEPPKcmS1_PFxS1_S1_E'
public	FindFwd						as	'_ZN6String7FindFwdEPPKsmS1_PFxS1_S1_E'
public	FindFwd						as	'_ZN6String7FindFwdEPPKimS1_PFxS1_S1_E'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	FindBwd						as	'Array_FindObjBwd'
public	FindBwd						as	'String_FindBwd_char8'
public	FindBwd						as	'String_FindBwd_char16'
public	FindBwd						as	'String_FindBwd_char32'
public	FindBwd						as	'_ZN5Array10FindObjBwdEPPKvmS1_PFxS1_S1_E'
public	FindBwd						as	'_ZN6String7FindBwdEPPKcmS1_PFxS1_S1_E'
public	FindBwd						as	'_ZN6String7FindBwdEPPKsmS1_PFxS1_S1_E'
public	FindBwd						as	'_ZN6String7FindBwdEPPKimS1_PFxS1_S1_E'

;******************************************************************************;
;       Binary search                                                          ;
;******************************************************************************;

;==============================================================================;
;       Regular array search                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Searching for first equal element                                      ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindFirstEqualAsc_uint8		as	'Array_FindFirstEqualAsc_uint8'
public	FindFirstEqualAsc_uint16	as	'Array_FindFirstEqualAsc_uint16'
public	FindFirstEqualAsc_uint32	as	'Array_FindFirstEqualAsc_uint32'
public	FindFirstEqualAsc_uint64	as	'Array_FindFirstEqualAsc_uint64'
public	FindFirstEqualAsc_uint8		as	'_ZN5Array17FindFirstEqualAscEPKhmh'
public	FindFirstEqualAsc_uint16	as	'_ZN5Array17FindFirstEqualAscEPKtmt'
public	FindFirstEqualAsc_uint32	as	'_ZN5Array17FindFirstEqualAscEPKjmj'
public	FindFirstEqualAsc_uint64	as	'_ZN5Array17FindFirstEqualAscEPKymy'

; Signed integer types
public	FindFirstEqualAsc_sint8		as	'Array_FindFirstEqualAsc_sint8'
public	FindFirstEqualAsc_sint16	as	'Array_FindFirstEqualAsc_sint16'
public	FindFirstEqualAsc_sint32	as	'Array_FindFirstEqualAsc_sint32'
public	FindFirstEqualAsc_sint64	as	'Array_FindFirstEqualAsc_sint64'
public	FindFirstEqualAsc_sint8		as	'_ZN5Array17FindFirstEqualAscEPKama'
public	FindFirstEqualAsc_sint16	as	'_ZN5Array17FindFirstEqualAscEPKsms'
public	FindFirstEqualAsc_sint32	as	'_ZN5Array17FindFirstEqualAscEPKimi'
public	FindFirstEqualAsc_sint64	as	'_ZN5Array17FindFirstEqualAscEPKxmx'

; Other types
public	FindFirstEqualAsc_uint64	as	'Array_FindFirstEqualAsc_size'
public	FindFirstEqualAsc_uint64	as	'_ZN5Array17FindFirstEqualAscEPKmmm'

;------------------------------------------------------------------------------;
;       Searching for last equal element                                       ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindLastEqualAsc_uint8		as	'Array_FindLastEqualAsc_uint8'
public	FindLastEqualAsc_uint16		as	'Array_FindLastEqualAsc_uint16'
public	FindLastEqualAsc_uint32		as	'Array_FindLastEqualAsc_uint32'
public	FindLastEqualAsc_uint64		as	'Array_FindLastEqualAsc_uint64'
public	FindLastEqualAsc_uint8		as	'_ZN5Array16FindLastEqualAscEPKhmh'
public	FindLastEqualAsc_uint16		as	'_ZN5Array16FindLastEqualAscEPKtmt'
public	FindLastEqualAsc_uint32		as	'_ZN5Array16FindLastEqualAscEPKjmj'
public	FindLastEqualAsc_uint64		as	'_ZN5Array16FindLastEqualAscEPKymy'

; Signed integer types
public	FindLastEqualAsc_sint8		as	'Array_FindLastEqualAsc_sint8'
public	FindLastEqualAsc_sint16		as	'Array_FindLastEqualAsc_sint16'
public	FindLastEqualAsc_sint32		as	'Array_FindLastEqualAsc_sint32'
public	FindLastEqualAsc_sint64		as	'Array_FindLastEqualAsc_sint64'
public	FindLastEqualAsc_sint8		as	'_ZN5Array16FindLastEqualAscEPKama'
public	FindLastEqualAsc_sint16		as	'_ZN5Array16FindLastEqualAscEPKsms'
public	FindLastEqualAsc_sint32		as	'_ZN5Array16FindLastEqualAscEPKimi'
public	FindLastEqualAsc_sint64		as	'_ZN5Array16FindLastEqualAscEPKxmx'

; Other types
public	FindLastEqualAsc_uint64		as	'Array_FindLastEqualAsc_size'
public	FindLastEqualAsc_uint64		as	'_ZN5Array16FindLastEqualAscEPKmmm'

;------------------------------------------------------------------------------;
;       Searching for greater element                                          ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindGreatAsc_uint8			as	'Array_FindGreatAsc_uint8'
public	FindGreatAsc_uint16			as	'Array_FindGreatAsc_uint16'
public	FindGreatAsc_uint32			as	'Array_FindGreatAsc_uint32'
public	FindGreatAsc_uint64			as	'Array_FindGreatAsc_uint64'
public	FindGreatAsc_uint8			as	'_ZN5Array12FindGreatAscEPKhmh'
public	FindGreatAsc_uint16			as	'_ZN5Array12FindGreatAscEPKtmt'
public	FindGreatAsc_uint32			as	'_ZN5Array12FindGreatAscEPKjmj'
public	FindGreatAsc_uint64			as	'_ZN5Array12FindGreatAscEPKymy'

; Signed integer types
public	FindGreatAsc_sint8			as	'Array_FindGreatAsc_sint8'
public	FindGreatAsc_sint16			as	'Array_FindGreatAsc_sint16'
public	FindGreatAsc_sint32			as	'Array_FindGreatAsc_sint32'
public	FindGreatAsc_sint64			as	'Array_FindGreatAsc_sint64'
public	FindGreatAsc_sint8			as	'_ZN5Array12FindGreatAscEPKama'
public	FindGreatAsc_sint16			as	'_ZN5Array12FindGreatAscEPKsms'
public	FindGreatAsc_sint32			as	'_ZN5Array12FindGreatAscEPKimi'
public	FindGreatAsc_sint64			as	'_ZN5Array12FindGreatAscEPKxmx'

; Other types
public	FindGreatAsc_uint64			as	'Array_FindGreatAsc_size'
public	FindGreatAsc_uint64			as	'_ZN5Array12FindGreatAscEPKmmm'

;------------------------------------------------------------------------------;
;       Searching for greater or equal element                                 ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindGreatEqualAsc_uint8		as	'Array_FindGreatOrEqualAsc_uint8'
public	FindGreatEqualAsc_uint16	as	'Array_FindGreatOrEqualAsc_uint16'
public	FindGreatEqualAsc_uint32	as	'Array_FindGreatOrEqualAsc_uint32'
public	FindGreatEqualAsc_uint64	as	'Array_FindGreatOrEqualAsc_uint64'
public	FindGreatEqualAsc_uint8		as	'_ZN5Array19FindGreatOrEqualAscEPKhmh'
public	FindGreatEqualAsc_uint16	as	'_ZN5Array19FindGreatOrEqualAscEPKtmt'
public	FindGreatEqualAsc_uint32	as	'_ZN5Array19FindGreatOrEqualAscEPKjmj'
public	FindGreatEqualAsc_uint64	as	'_ZN5Array19FindGreatOrEqualAscEPKymy'

; Signed integer types
public	FindGreatEqualAsc_sint8		as	'Array_FindGreatOrEqualAsc_sint8'
public	FindGreatEqualAsc_sint16	as	'Array_FindGreatOrEqualAsc_sint16'
public	FindGreatEqualAsc_sint32	as	'Array_FindGreatOrEqualAsc_sint32'
public	FindGreatEqualAsc_sint64	as	'Array_FindGreatOrEqualAsc_sint64'
public	FindGreatEqualAsc_sint8		as	'_ZN5Array19FindGreatOrEqualAscEPKama'
public	FindGreatEqualAsc_sint16	as	'_ZN5Array19FindGreatOrEqualAscEPKsms'
public	FindGreatEqualAsc_sint32	as	'_ZN5Array19FindGreatOrEqualAscEPKimi'
public	FindGreatEqualAsc_sint64	as	'_ZN5Array19FindGreatOrEqualAscEPKxmx'

; Other types
public	FindGreatEqualAsc_uint64	as	'Array_FindGreatOrEqualAsc_size'
public	FindGreatEqualAsc_uint64	as	'_ZN5Array19FindGreatOrEqualAscEPKmmm'

;------------------------------------------------------------------------------;
;       Searching for less element                                             ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindLessAsc_uint8			as	'Array_FindLessAsc_uint8'
public	FindLessAsc_uint16			as	'Array_FindLessAsc_uint16'
public	FindLessAsc_uint32			as	'Array_FindLessAsc_uint32'
public	FindLessAsc_uint64			as	'Array_FindLessAsc_uint64'
public	FindLessAsc_uint8			as	'_ZN5Array11FindLessAscEPKhmh'
public	FindLessAsc_uint16			as	'_ZN5Array11FindLessAscEPKtmt'
public	FindLessAsc_uint32			as	'_ZN5Array11FindLessAscEPKjmj'
public	FindLessAsc_uint64			as	'_ZN5Array11FindLessAscEPKymy'

; Signed integer types
public	FindLessAsc_sint8			as	'Array_FindLessAsc_sint8'
public	FindLessAsc_sint16			as	'Array_FindLessAsc_sint16'
public	FindLessAsc_sint32			as	'Array_FindLessAsc_sint32'
public	FindLessAsc_sint64			as	'Array_FindLessAsc_sint64'
public	FindLessAsc_sint8			as	'_ZN5Array11FindLessAscEPKama'
public	FindLessAsc_sint16			as	'_ZN5Array11FindLessAscEPKsms'
public	FindLessAsc_sint32			as	'_ZN5Array11FindLessAscEPKimi'
public	FindLessAsc_sint64			as	'_ZN5Array11FindLessAscEPKxmx'

; Other types
public	FindLessAsc_uint64			as	'Array_FindLessAsc_size'
public	FindLessAsc_uint64			as	'_ZN5Array11FindLessAscEPKmmm'

;------------------------------------------------------------------------------;
;       Searching for less or equal element                                    ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindLessEqualAsc_uint8		as	'Array_FindLessOrEqualAsc_uint8'
public	FindLessEqualAsc_uint16		as	'Array_FindLessOrEqualAsc_uint16'
public	FindLessEqualAsc_uint32		as	'Array_FindLessOrEqualAsc_uint32'
public	FindLessEqualAsc_uint64		as	'Array_FindLessOrEqualAsc_uint64'
public	FindLessEqualAsc_uint8		as	'_ZN5Array18FindLessOrEqualAscEPKhmh'
public	FindLessEqualAsc_uint16		as	'_ZN5Array18FindLessOrEqualAscEPKtmt'
public	FindLessEqualAsc_uint32		as	'_ZN5Array18FindLessOrEqualAscEPKjmj'
public	FindLessEqualAsc_uint64		as	'_ZN5Array18FindLessOrEqualAscEPKymy'

; Signed integer types
public	FindLessEqualAsc_sint8		as	'Array_FindLessOrEqualAsc_sint8'
public	FindLessEqualAsc_sint16		as	'Array_FindLessOrEqualAsc_sint16'
public	FindLessEqualAsc_sint32		as	'Array_FindLessOrEqualAsc_sint32'
public	FindLessEqualAsc_sint64		as	'Array_FindLessOrEqualAsc_sint64'
public	FindLessEqualAsc_sint8		as	'_ZN5Array18FindLessOrEqualAscEPKama'
public	FindLessEqualAsc_sint16		as	'_ZN5Array18FindLessOrEqualAscEPKsms'
public	FindLessEqualAsc_sint32		as	'_ZN5Array18FindLessOrEqualAscEPKimi'
public	FindLessEqualAsc_sint64		as	'_ZN5Array18FindLessOrEqualAscEPKxmx'

; Other types
public	FindLessEqualAsc_uint64		as	'Array_FindLessOrEqualAsc_size'
public	FindLessEqualAsc_uint64		as	'_ZN5Array18FindLessOrEqualAscEPKmmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Searching for first equal element                                      ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindFirstEqualDsc_uint8		as	'Array_FindFirstEqualDsc_uint8'
public	FindFirstEqualDsc_uint16	as	'Array_FindFirstEqualDsc_uint16'
public	FindFirstEqualDsc_uint32	as	'Array_FindFirstEqualDsc_uint32'
public	FindFirstEqualDsc_uint64	as	'Array_FindFirstEqualDsc_uint64'
public	FindFirstEqualDsc_uint8		as	'_ZN5Array17FindFirstEqualDscEPKhmh'
public	FindFirstEqualDsc_uint16	as	'_ZN5Array17FindFirstEqualDscEPKtmt'
public	FindFirstEqualDsc_uint32	as	'_ZN5Array17FindFirstEqualDscEPKjmj'
public	FindFirstEqualDsc_uint64	as	'_ZN5Array17FindFirstEqualDscEPKymy'

; Signed integer types
public	FindFirstEqualDsc_sint8		as	'Array_FindFirstEqualDsc_sint8'
public	FindFirstEqualDsc_sint16	as	'Array_FindFirstEqualDsc_sint16'
public	FindFirstEqualDsc_sint32	as	'Array_FindFirstEqualDsc_sint32'
public	FindFirstEqualDsc_sint64	as	'Array_FindFirstEqualDsc_sint64'
public	FindFirstEqualDsc_sint8		as	'_ZN5Array17FindFirstEqualDscEPKama'
public	FindFirstEqualDsc_sint16	as	'_ZN5Array17FindFirstEqualDscEPKsms'
public	FindFirstEqualDsc_sint32	as	'_ZN5Array17FindFirstEqualDscEPKimi'
public	FindFirstEqualDsc_sint64	as	'_ZN5Array17FindFirstEqualDscEPKxmx'

; Other types
public	FindFirstEqualDsc_uint64	as	'Array_FindFirstEqualDsc_size'
public	FindFirstEqualDsc_uint64	as	'_ZN5Array17FindFirstEqualDscEPKmmm'

;------------------------------------------------------------------------------;
;       Searching for last equal element                                       ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindLastEqualDsc_uint8		as	'Array_FindLastEqualDsc_uint8'
public	FindLastEqualDsc_uint16		as	'Array_FindLastEqualDsc_uint16'
public	FindLastEqualDsc_uint32		as	'Array_FindLastEqualDsc_uint32'
public	FindLastEqualDsc_uint64		as	'Array_FindLastEqualDsc_uint64'
public	FindLastEqualDsc_uint8		as	'_ZN5Array16FindLastEqualDscEPKhmh'
public	FindLastEqualDsc_uint16		as	'_ZN5Array16FindLastEqualDscEPKtmt'
public	FindLastEqualDsc_uint32		as	'_ZN5Array16FindLastEqualDscEPKjmj'
public	FindLastEqualDsc_uint64		as	'_ZN5Array16FindLastEqualDscEPKymy'

; Signed integer types
public	FindLastEqualDsc_sint8		as	'Array_FindLastEqualDsc_sint8'
public	FindLastEqualDsc_sint16		as	'Array_FindLastEqualDsc_sint16'
public	FindLastEqualDsc_sint32		as	'Array_FindLastEqualDsc_sint32'
public	FindLastEqualDsc_sint64		as	'Array_FindLastEqualDsc_sint64'
public	FindLastEqualDsc_sint8		as	'_ZN5Array16FindLastEqualDscEPKama'
public	FindLastEqualDsc_sint16		as	'_ZN5Array16FindLastEqualDscEPKsms'
public	FindLastEqualDsc_sint32		as	'_ZN5Array16FindLastEqualDscEPKimi'
public	FindLastEqualDsc_sint64		as	'_ZN5Array16FindLastEqualDscEPKxmx'

; Other types
public	FindLastEqualDsc_uint64		as	'Array_FindLastEqualDsc_size'
public	FindLastEqualDsc_uint64		as	'_ZN5Array16FindLastEqualDscEPKmmm'

;------------------------------------------------------------------------------;
;       Searching for less element                                             ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindLessDsc_uint8			as	'Array_FindLessDsc_uint8'
public	FindLessDsc_uint16			as	'Array_FindLessDsc_uint16'
public	FindLessDsc_uint32			as	'Array_FindLessDsc_uint32'
public	FindLessDsc_uint64			as	'Array_FindLessDsc_uint64'
public	FindLessDsc_uint8			as	'_ZN5Array11FindLessDscEPKhmh'
public	FindLessDsc_uint16			as	'_ZN5Array11FindLessDscEPKtmt'
public	FindLessDsc_uint32			as	'_ZN5Array11FindLessDscEPKjmj'
public	FindLessDsc_uint64			as	'_ZN5Array11FindLessDscEPKymy'

; Signed integer types
public	FindLessDsc_sint8			as	'Array_FindLessDsc_sint8'
public	FindLessDsc_sint16			as	'Array_FindLessDsc_sint16'
public	FindLessDsc_sint32			as	'Array_FindLessDsc_sint32'
public	FindLessDsc_sint64			as	'Array_FindLessDsc_sint64'
public	FindLessDsc_sint8			as	'_ZN5Array11FindLessDscEPKama'
public	FindLessDsc_sint16			as	'_ZN5Array11FindLessDscEPKsms'
public	FindLessDsc_sint32			as	'_ZN5Array11FindLessDscEPKimi'
public	FindLessDsc_sint64			as	'_ZN5Array11FindLessDscEPKxmx'

; Other types
public	FindLessDsc_uint64			as	'Array_FindLessDsc_size'
public	FindLessDsc_uint64			as	'_ZN5Array11FindLessDscEPKmmm'

;------------------------------------------------------------------------------;
;       Searching for less or equal element                                    ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindLessEqualDsc_uint8		as	'Array_FindLessOrEqualDsc_uint8'
public	FindLessEqualDsc_uint16		as	'Array_FindLessOrEqualDsc_uint16'
public	FindLessEqualDsc_uint32		as	'Array_FindLessOrEqualDsc_uint32'
public	FindLessEqualDsc_uint64		as	'Array_FindLessOrEqualDsc_uint64'
public	FindLessEqualDsc_uint8		as	'_ZN5Array18FindLessOrEqualDscEPKhmh'
public	FindLessEqualDsc_uint16		as	'_ZN5Array18FindLessOrEqualDscEPKtmt'
public	FindLessEqualDsc_uint32		as	'_ZN5Array18FindLessOrEqualDscEPKjmj'
public	FindLessEqualDsc_uint64		as	'_ZN5Array18FindLessOrEqualDscEPKymy'

; Signed integer types
public	FindLessEqualDsc_sint8		as	'Array_FindLessOrEqualDsc_sint8'
public	FindLessEqualDsc_sint16		as	'Array_FindLessOrEqualDsc_sint16'
public	FindLessEqualDsc_sint32		as	'Array_FindLessOrEqualDsc_sint32'
public	FindLessEqualDsc_sint64		as	'Array_FindLessOrEqualDsc_sint64'
public	FindLessEqualDsc_sint8		as	'_ZN5Array18FindLessOrEqualDscEPKama'
public	FindLessEqualDsc_sint16		as	'_ZN5Array18FindLessOrEqualDscEPKsms'
public	FindLessEqualDsc_sint32		as	'_ZN5Array18FindLessOrEqualDscEPKimi'
public	FindLessEqualDsc_sint64		as	'_ZN5Array18FindLessOrEqualDscEPKxmx'

; Other types
public	FindLessEqualDsc_uint64		as	'Array_FindLessOrEqualDsc_size'
public	FindLessEqualDsc_uint64		as	'_ZN5Array18FindLessOrEqualDscEPKmmm'

;------------------------------------------------------------------------------;
;       Searching for greater element                                          ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindGreatDsc_uint8			as	'Array_FindGreatDsc_uint8'
public	FindGreatDsc_uint16			as	'Array_FindGreatDsc_uint16'
public	FindGreatDsc_uint32			as	'Array_FindGreatDsc_uint32'
public	FindGreatDsc_uint64			as	'Array_FindGreatDsc_uint64'
public	FindGreatDsc_uint8			as	'_ZN5Array12FindGreatDscEPKhmh'
public	FindGreatDsc_uint16			as	'_ZN5Array12FindGreatDscEPKtmt'
public	FindGreatDsc_uint32			as	'_ZN5Array12FindGreatDscEPKjmj'
public	FindGreatDsc_uint64			as	'_ZN5Array12FindGreatDscEPKymy'

; Signed integer types
public	FindGreatDsc_sint8			as	'Array_FindGreatDsc_sint8'
public	FindGreatDsc_sint16			as	'Array_FindGreatDsc_sint16'
public	FindGreatDsc_sint32			as	'Array_FindGreatDsc_sint32'
public	FindGreatDsc_sint64			as	'Array_FindGreatDsc_sint64'
public	FindGreatDsc_sint8			as	'_ZN5Array12FindGreatDscEPKama'
public	FindGreatDsc_sint16			as	'_ZN5Array12FindGreatDscEPKsms'
public	FindGreatDsc_sint32			as	'_ZN5Array12FindGreatDscEPKimi'
public	FindGreatDsc_sint64			as	'_ZN5Array12FindGreatDscEPKxmx'

; Other types
public	FindGreatDsc_uint64			as	'Array_FindGreatDsc_size'
public	FindGreatDsc_uint64			as	'_ZN5Array12FindGreatDscEPKmmm'

;------------------------------------------------------------------------------;
;       Searching for greater or equal element                                 ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindGreatEqualDsc_uint8		as	'Array_FindGreatOrEqualDsc_uint8'
public	FindGreatEqualDsc_uint16	as	'Array_FindGreatOrEqualDsc_uint16'
public	FindGreatEqualDsc_uint32	as	'Array_FindGreatOrEqualDsc_uint32'
public	FindGreatEqualDsc_uint64	as	'Array_FindGreatOrEqualDsc_uint64'
public	FindGreatEqualDsc_uint8		as	'_ZN5Array19FindGreatOrEqualDscEPKhmh'
public	FindGreatEqualDsc_uint16	as	'_ZN5Array19FindGreatOrEqualDscEPKtmt'
public	FindGreatEqualDsc_uint32	as	'_ZN5Array19FindGreatOrEqualDscEPKjmj'
public	FindGreatEqualDsc_uint64	as	'_ZN5Array19FindGreatOrEqualDscEPKymy'

; Signed integer types
public	FindGreatEqualDsc_sint8		as	'Array_FindGreatOrEqualDsc_sint8'
public	FindGreatEqualDsc_sint16	as	'Array_FindGreatOrEqualDsc_sint16'
public	FindGreatEqualDsc_sint32	as	'Array_FindGreatOrEqualDsc_sint32'
public	FindGreatEqualDsc_sint64	as	'Array_FindGreatOrEqualDsc_sint64'
public	FindGreatEqualDsc_sint8		as	'_ZN5Array19FindGreatOrEqualDscEPKama'
public	FindGreatEqualDsc_sint16	as	'_ZN5Array19FindGreatOrEqualDscEPKsms'
public	FindGreatEqualDsc_sint32	as	'_ZN5Array19FindGreatOrEqualDscEPKimi'
public	FindGreatEqualDsc_sint64	as	'_ZN5Array19FindGreatOrEqualDscEPKxmx'

; Other types
public	FindGreatEqualDsc_uint64	as	'Array_FindGreatOrEqualDsc_size'
public	FindGreatEqualDsc_uint64	as	'_ZN5Array19FindGreatOrEqualDscEPKmmm'

;==============================================================================;
;       Object array search                                                    ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Searching for first equal element                                      ;
;------------------------------------------------------------------------------;
public	FindFirstEqualAsc			as	'Array_FindFirstEqualObjAsc'
public	FindFirstEqualAsc			as	'String_FindFirstEqualAsc_char8'
public	FindFirstEqualAsc			as	'String_FindFirstEqualAsc_char16'
public	FindFirstEqualAsc			as	'String_FindFirstEqualAsc_char32'
public	FindFirstEqualAsc			as	'_ZN5Array20FindFirstEqualObjAscEPPKvmS1_PFxS1_S1_E'
public	FindFirstEqualAsc			as	'_ZN6String17FindFirstEqualAscEPPKcmS1_PFxS1_S1_E'
public	FindFirstEqualAsc			as	'_ZN6String17FindFirstEqualAscEPPKsmS1_PFxS1_S1_E'
public	FindFirstEqualAsc			as	'_ZN6String17FindFirstEqualAscEPPKimS1_PFxS1_S1_E'

;------------------------------------------------------------------------------;
;       Searching for last equal element                                       ;
;------------------------------------------------------------------------------;
public	FindLastEqualAsc			as	'Array_FindLastEqualObjAsc'
public	FindLastEqualAsc			as	'String_FindLastEqualAsc_char8'
public	FindLastEqualAsc			as	'String_FindLastEqualAsc_char16'
public	FindLastEqualAsc			as	'String_FindLastEqualAsc_char32'
public	FindLastEqualAsc			as	'_ZN5Array19FindLastEqualObjAscEPPKvmS1_PFxS1_S1_E'
public	FindLastEqualAsc			as	'_ZN6String16FindLastEqualAscEPPKcmS1_PFxS1_S1_E'
public	FindLastEqualAsc			as	'_ZN6String16FindLastEqualAscEPPKsmS1_PFxS1_S1_E'
public	FindLastEqualAsc			as	'_ZN6String16FindLastEqualAscEPPKimS1_PFxS1_S1_E'

;------------------------------------------------------------------------------;
;       Searching for greater element                                          ;
;------------------------------------------------------------------------------;
public	FindGreatAsc				as	'Array_FindGreatObjAsc'
public	FindGreatAsc				as	'String_FindGreatAsc_char8'
public	FindGreatAsc				as	'String_FindGreatAsc_char16'
public	FindGreatAsc				as	'String_FindGreatAsc_char32'
public	FindGreatAsc				as	'_ZN5Array15FindGreatObjAscEPPKvmS1_PFxS1_S1_E'
public	FindGreatAsc				as	'_ZN6String12FindGreatAscEPPKcmS1_PFxS1_S1_E'
public	FindGreatAsc				as	'_ZN6String12FindGreatAscEPPKsmS1_PFxS1_S1_E'
public	FindGreatAsc				as	'_ZN6String12FindGreatAscEPPKimS1_PFxS1_S1_E'

;------------------------------------------------------------------------------;
;       Searching for greater or equal element                                 ;
;------------------------------------------------------------------------------;
public	FindGreatOrEqualAsc			as	'Array_FindGreatOrEqualObjAsc'
public	FindGreatOrEqualAsc			as	'String_FindGreatOrEqualAsc_char8'
public	FindGreatOrEqualAsc			as	'String_FindGreatOrEqualAsc_char16'
public	FindGreatOrEqualAsc			as	'String_FindGreatOrEqualAsc_char32'
public	FindGreatOrEqualAsc			as	'_ZN5Array22FindGreatOrEqualObjAscEPPKvmS1_PFxS1_S1_E'
public	FindGreatOrEqualAsc			as	'_ZN6String19FindGreatOrEqualAscEPPKcmS1_PFxS1_S1_E'
public	FindGreatOrEqualAsc			as	'_ZN6String19FindGreatOrEqualAscEPPKsmS1_PFxS1_S1_E'
public	FindGreatOrEqualAsc			as	'_ZN6String19FindGreatOrEqualAscEPPKimS1_PFxS1_S1_E'

;------------------------------------------------------------------------------;
;       Searching for less element                                             ;
;------------------------------------------------------------------------------;
public	FindLessAsc					as	'Array_FindLessObjAsc'
public	FindLessAsc					as	'String_FindLessAsc_char8'
public	FindLessAsc					as	'String_FindLessAsc_char16'
public	FindLessAsc					as	'String_FindLessAsc_char32'
public	FindLessAsc					as	'_ZN5Array14FindLessObjAscEPPKvmS1_PFxS1_S1_E'
public	FindLessAsc					as	'_ZN6String11FindLessAscEPPKcmS1_PFxS1_S1_E'
public	FindLessAsc					as	'_ZN6String11FindLessAscEPPKsmS1_PFxS1_S1_E'
public	FindLessAsc					as	'_ZN6String11FindLessAscEPPKimS1_PFxS1_S1_E'

;------------------------------------------------------------------------------;
;       Searching for less or equal element                                    ;
;------------------------------------------------------------------------------;
public	FindLessOrEqualAsc			as	'Array_FindLessOrEqualObjAsc'
public	FindLessOrEqualAsc			as	'String_FindLessOrEqualAsc_char8'
public	FindLessOrEqualAsc			as	'String_FindLessOrEqualAsc_char16'
public	FindLessOrEqualAsc			as	'String_FindLessOrEqualAsc_char32'
public	FindLessOrEqualAsc			as	'_ZN5Array21FindLessOrEqualObjAscEPPKvmS1_PFxS1_S1_E'
public	FindLessOrEqualAsc			as	'_ZN6String18FindLessOrEqualAscEPPKcmS1_PFxS1_S1_E'
public	FindLessOrEqualAsc			as	'_ZN6String18FindLessOrEqualAscEPPKsmS1_PFxS1_S1_E'
public	FindLessOrEqualAsc			as	'_ZN6String18FindLessOrEqualAscEPPKimS1_PFxS1_S1_E'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Searching for first equal element                                      ;
;------------------------------------------------------------------------------;
public	FindFirstEqualDsc			as	'Array_FindFirstEqualObjDsc'
public	FindFirstEqualDsc			as	'String_FindFirstEqualDsc_char8'
public	FindFirstEqualDsc			as	'String_FindFirstEqualDsc_char16'
public	FindFirstEqualDsc			as	'String_FindFirstEqualDsc_char32'
public	FindFirstEqualDsc			as	'_ZN5Array20FindFirstEqualObjDscEPPKvmS1_PFxS1_S1_E'
public	FindFirstEqualDsc			as	'_ZN6String17FindFirstEqualDscEPPKcmS1_PFxS1_S1_E'
public	FindFirstEqualDsc			as	'_ZN6String17FindFirstEqualDscEPPKsmS1_PFxS1_S1_E'
public	FindFirstEqualDsc			as	'_ZN6String17FindFirstEqualDscEPPKimS1_PFxS1_S1_E'

;------------------------------------------------------------------------------;
;       Searching for last equal element                                       ;
;------------------------------------------------------------------------------;
public	FindLastEqualDsc			as	'Array_FindLastEqualObjDsc'
public	FindLastEqualDsc			as	'String_FindLastEqualDsc_char8'
public	FindLastEqualDsc			as	'String_FindLastEqualDsc_char16'
public	FindLastEqualDsc			as	'String_FindLastEqualDsc_char32'
public	FindLastEqualDsc			as	'_ZN5Array19FindLastEqualObjDscEPPKvmS1_PFxS1_S1_E'
public	FindLastEqualDsc			as	'_ZN6String16FindLastEqualDscEPPKcmS1_PFxS1_S1_E'
public	FindLastEqualDsc			as	'_ZN6String16FindLastEqualDscEPPKsmS1_PFxS1_S1_E'
public	FindLastEqualDsc			as	'_ZN6String16FindLastEqualDscEPPKimS1_PFxS1_S1_E'

;------------------------------------------------------------------------------;
;       Searching for less element                                             ;
;------------------------------------------------------------------------------;
public	FindLessDsc					as	'Array_FindLessObjDsc'
public	FindLessDsc					as	'String_FindLessDsc_char8'
public	FindLessDsc					as	'String_FindLessDsc_char16'
public	FindLessDsc					as	'String_FindLessDsc_char32'
public	FindLessDsc					as	'_ZN5Array14FindLessObjDscEPPKvmS1_PFxS1_S1_E'
public	FindLessDsc					as	'_ZN6String11FindLessDscEPPKcmS1_PFxS1_S1_E'
public	FindLessDsc					as	'_ZN6String11FindLessDscEPPKsmS1_PFxS1_S1_E'
public	FindLessDsc					as	'_ZN6String11FindLessDscEPPKimS1_PFxS1_S1_E'

;------------------------------------------------------------------------------;
;       Searching for less or equal element                                    ;
;------------------------------------------------------------------------------;
public	FindLessOrEqualDsc			as	'Array_FindLessOrEqualObjDsc'
public	FindLessOrEqualDsc			as	'String_FindLessOrEqualDsc_char8'
public	FindLessOrEqualDsc			as	'String_FindLessOrEqualDsc_char16'
public	FindLessOrEqualDsc			as	'String_FindLessOrEqualDsc_char32'
public	FindLessOrEqualDsc			as	'_ZN5Array21FindLessOrEqualObjDscEPPKvmS1_PFxS1_S1_E'
public	FindLessOrEqualDsc			as	'_ZN6String18FindLessOrEqualDscEPPKcmS1_PFxS1_S1_E'
public	FindLessOrEqualDsc			as	'_ZN6String18FindLessOrEqualDscEPPKsmS1_PFxS1_S1_E'
public	FindLessOrEqualDsc			as	'_ZN6String18FindLessOrEqualDscEPPKimS1_PFxS1_S1_E'

;------------------------------------------------------------------------------;
;       Searching for greater element                                          ;
;------------------------------------------------------------------------------;
public	FindGreatDsc				as	'Array_FindGreatObjDsc'
public	FindGreatDsc				as	'String_FindGreatDsc_char8'
public	FindGreatDsc				as	'String_FindGreatDsc_char16'
public	FindGreatDsc				as	'String_FindGreatDsc_char32'
public	FindGreatDsc				as	'_ZN5Array15FindGreatObjDscEPPKvmS1_PFxS1_S1_E'
public	FindGreatDsc				as	'_ZN6String12FindGreatDscEPPKcmS1_PFxS1_S1_E'
public	FindGreatDsc				as	'_ZN6String12FindGreatDscEPPKsmS1_PFxS1_S1_E'
public	FindGreatDsc				as	'_ZN6String12FindGreatDscEPPKimS1_PFxS1_S1_E'

;------------------------------------------------------------------------------;
;       Searching for greater or equal element                                 ;
;------------------------------------------------------------------------------;
public	FindGreatOrEqualDsc			as	'Array_FindGreatOrEqualObjDsc'
public	FindGreatOrEqualDsc			as	'String_FindGreatOrEqualDsc_char8'
public	FindGreatOrEqualDsc			as	'String_FindGreatOrEqualDsc_char16'
public	FindGreatOrEqualDsc			as	'String_FindGreatOrEqualDsc_char32'
public	FindGreatOrEqualDsc			as	'_ZN5Array22FindGreatOrEqualObjDscEPPKvmS1_PFxS1_S1_E'
public	FindGreatOrEqualDsc			as	'_ZN6String19FindGreatOrEqualDscEPPKcmS1_PFxS1_S1_E'
public	FindGreatOrEqualDsc			as	'_ZN6String19FindGreatOrEqualDscEPPKsmS1_PFxS1_S1_E'
public	FindGreatOrEqualDsc			as	'_ZN6String19FindGreatOrEqualDscEPPKimS1_PFxS1_S1_E'

;******************************************************************************;
;       Linear counting                                                        ;
;******************************************************************************;

;==============================================================================;
;       Bit counting                                                           ;
;==============================================================================;

; Unsigned integer types
public	CountBits					as	'Array_CountBits_uint8'
public	CountBits					as	'Array_CountBits_uint16'
public	CountBits					as	'Array_CountBits_uint32'
public	CountBits					as	'Array_CountBits_uint64'
public	CountBits					as	'_ZN5Array9CountBitsEPKhmm'
public	CountBits					as	'_ZN5Array9CountBitsEPKtmm'
public	CountBits					as	'_ZN5Array9CountBitsEPKjmm'
public	CountBits					as	'_ZN5Array9CountBitsEPKymm'

; Signed integer types
public	CountBits					as	'Array_CountBits_sint8'
public	CountBits					as	'Array_CountBits_sint16'
public	CountBits					as	'Array_CountBits_sint32'
public	CountBits					as	'Array_CountBits_sint64'
public	CountBits					as	'_ZN5Array9CountBitsEPKamm'
public	CountBits					as	'_ZN5Array9CountBitsEPKsmm'
public	CountBits					as	'_ZN5Array9CountBitsEPKimm'
public	CountBits					as	'_ZN5Array9CountBitsEPKxmm'

; Other types
public	CountBits					as	'Array_CountBits_size'
public	CountBits					as	'Array_CountBits'
public	CountBits					as	'_ZN5Array9CountBitsEPKmmm'
public	CountBits					as	'_ZN5Array9CountBitsEPKvmm'

;==============================================================================;
;       Element counting                                                       ;
;==============================================================================;

; Unsigned integer types
public	Count8						as	'Array_Count_uint8'
public	Count16						as	'Array_Count_uint16'
public	Count32						as	'Array_Count_uint32'
public	Count64						as	'Array_Count_uint64'
public	Count8						as	'_ZN5Array5CountEPKhmh'
public	Count16						as	'_ZN5Array5CountEPKtmt'
public	Count32						as	'_ZN5Array5CountEPKjmj'
public	Count64						as	'_ZN5Array5CountEPKymy'

; Signed integer types
public	Count8						as	'Array_Count_sint8'
public	Count16						as	'Array_Count_sint16'
public	Count32						as	'Array_Count_sint32'
public	Count64						as	'Array_Count_sint64'
public	Count8						as	'_ZN5Array5CountEPKama'
public	Count16						as	'_ZN5Array5CountEPKsms'
public	Count32						as	'_ZN5Array5CountEPKimi'
public	Count64						as	'_ZN5Array5CountEPKxmx'

; Other types
public	Count64						as	'Array_Count_size'
public	Count64						as	'_ZN5Array5CountEPKmmm'

;==============================================================================;
;       Object counting                                                        ;
;==============================================================================;
public	Count						as	'Array_CountObj'
public	Count						as	'String_CountString_char8'
public	Count						as	'String_CountString_char16'
public	Count						as	'String_CountString_char32'
public	Count						as	'_ZN5Array8CountObjEPPKvmS1_PFxS1_S1_E'
public	Count						as	'_ZN6String11CountStringEPPKcmS1_PFxS1_S1_E'
public	Count						as	'_ZN6String11CountStringEPPKsmS1_PFxS1_S1_E'
public	Count						as	'_ZN6String11CountStringEPPKimS1_PFxS1_S1_E'

;******************************************************************************;
;       Binary counting                                                        ;
;******************************************************************************;

;==============================================================================;
;       Element counting                                                       ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	CountAsc_uint8				as	'Array_CountAsc_uint8'
public	CountAsc_uint16				as	'Array_CountAsc_uint16'
public	CountAsc_uint32				as	'Array_CountAsc_uint32'
public	CountAsc_uint64				as	'Array_CountAsc_uint64'
public	CountAsc_uint8				as	'_ZN5Array8CountAscEPKhmh'
public	CountAsc_uint16				as	'_ZN5Array8CountAscEPKtmt'
public	CountAsc_uint32				as	'_ZN5Array8CountAscEPKjmj'
public	CountAsc_uint64				as	'_ZN5Array8CountAscEPKymy'

; Signed integer types
public	CountAsc_sint8				as	'Array_CountAsc_sint8'
public	CountAsc_sint16				as	'Array_CountAsc_sint16'
public	CountAsc_sint32				as	'Array_CountAsc_sint32'
public	CountAsc_sint64				as	'Array_CountAsc_sint64'
public	CountAsc_sint8				as	'_ZN5Array8CountAscEPKama'
public	CountAsc_sint16				as	'_ZN5Array8CountAscEPKsms'
public	CountAsc_sint32				as	'_ZN5Array8CountAscEPKimi'
public	CountAsc_sint64				as	'_ZN5Array8CountAscEPKxmx'

; Other types
public	CountAsc_uint64				as	'Array_CountAsc_size'
public	CountAsc_uint64				as	'_ZN5Array8CountAscEPKmmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	CountDsc_uint8				as	'Array_CountDsc_uint8'
public	CountDsc_uint16				as	'Array_CountDsc_uint16'
public	CountDsc_uint32				as	'Array_CountDsc_uint32'
public	CountDsc_uint64				as	'Array_CountDsc_uint64'
public	CountDsc_uint8				as	'_ZN5Array8CountDscEPKhmh'
public	CountDsc_uint16				as	'_ZN5Array8CountDscEPKtmt'
public	CountDsc_uint32				as	'_ZN5Array8CountDscEPKjmj'
public	CountDsc_uint64				as	'_ZN5Array8CountDscEPKymy'

; Signed integer types
public	CountDsc_sint8				as	'Array_CountDsc_sint8'
public	CountDsc_sint16				as	'Array_CountDsc_sint16'
public	CountDsc_sint32				as	'Array_CountDsc_sint32'
public	CountDsc_sint64				as	'Array_CountDsc_sint64'
public	CountDsc_sint8				as	'_ZN5Array8CountDscEPKama'
public	CountDsc_sint16				as	'_ZN5Array8CountDscEPKsms'
public	CountDsc_sint32				as	'_ZN5Array8CountDscEPKimi'
public	CountDsc_sint64				as	'_ZN5Array8CountDscEPKxmx'

; Other types
public	CountDsc_uint64				as	'Array_CountDsc_size'
public	CountDsc_uint64				as	'_ZN5Array8CountDscEPKmmm'

;==============================================================================;
;       Object counting                                                        ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	CountAsc					as	'Array_CountObjAsc'
public	CountAsc					as	'String_CountStringAsc_char8'
public	CountAsc					as	'String_CountStringAsc_char16'
public	CountAsc					as	'String_CountStringAsc_char32'
public	CountAsc					as	'_ZN5Array11CountObjAscEPPKvmS1_PFxS1_S1_E'
public	CountAsc					as	'_ZN6String14CountStringAscEPPKcmS1_PFxS1_S1_E'
public	CountAsc					as	'_ZN6String14CountStringAscEPPKsmS1_PFxS1_S1_E'
public	CountAsc					as	'_ZN6String14CountStringAscEPPKimS1_PFxS1_S1_E'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	CountDsc					as	'Array_CountObjDsc'
public	CountDsc					as	'String_CountStringDsc_char8'
public	CountDsc					as	'String_CountStringDsc_char16'
public	CountDsc					as	'String_CountStringDsc_char32'
public	CountDsc					as	'_ZN5Array11CountObjDscEPPKvmS1_PFxS1_S1_E'
public	CountDsc					as	'_ZN6String14CountStringDscEPPKcmS1_PFxS1_S1_E'
public	CountDsc					as	'_ZN6String14CountStringDscEPPKsmS1_PFxS1_S1_E'
public	CountDsc					as	'_ZN6String14CountStringDscEPPKimS1_PFxS1_S1_E'

;******************************************************************************;
;       Replacing                                                              ;
;******************************************************************************;

;==============================================================================;
;       Element replacing                                                      ;
;==============================================================================;

; Unsigned integer types
public	Replace8					as	'Array_Replace_uint8'
public	Replace16					as	'Array_Replace_uint16'
public	Replace32					as	'Array_Replace_uint32'
public	Replace64					as	'Array_Replace_uint64'
public	Replace8					as	'_ZN5Array7ReplaceEPhmhh'
public	Replace16					as	'_ZN5Array7ReplaceEPtmtt'
public	Replace32					as	'_ZN5Array7ReplaceEPjmjj'
public	Replace64					as	'_ZN5Array7ReplaceEPymyy'

; Signed integer types
public	Replace8					as	'Array_Replace_sint8'
public	Replace16					as	'Array_Replace_sint16'
public	Replace32					as	'Array_Replace_sint32'
public	Replace64					as	'Array_Replace_sint64'
public	Replace8					as	'_ZN5Array7ReplaceEPamaa'
public	Replace16					as	'_ZN5Array7ReplaceEPsmss'
public	Replace32					as	'_ZN5Array7ReplaceEPimii'
public	Replace64					as	'_ZN5Array7ReplaceEPxmxx'

; Other types
public	Replace64					as	'Array_Replace_size'
public	Replace64					as	'_ZN5Array7ReplaceEPmmmm'

;==============================================================================;
;       Object replacing                                                       ;
;==============================================================================;
public	Replace						as	'Array_ReplaceObj'
public	Replace						as	'String_ReplaceString_char8'
public	Replace						as	'String_ReplaceString_char16'
public	Replace						as	'String_ReplaceString_char32'
public	Replace						as	'_ZN5Array10ReplaceObjEPPKvmS1_S1_PFxS1_S1_E'
public	Replace						as	'_ZN6String13ReplaceStringEPPKcmS1_S1_PFxS1_S1_E'
public	Replace						as	'_ZN6String13ReplaceStringEPPKsmS1_S1_PFxS1_S1_E'
public	Replace						as	'_ZN6String13ReplaceStringEPPKimS1_S1_PFxS1_S1_E'

;******************************************************************************;
;       Order reversing                                                        ;
;******************************************************************************;

;==============================================================================;
;       Regular array reversing                                                ;
;==============================================================================;

; Unsigned integer types
public	Reverse8					as	'Array_Reverse_uint8'
public	Reverse16					as	'Array_Reverse_uint16'
public	Reverse32					as	'Array_Reverse_uint32'
public	Reverse64					as	'Array_Reverse_uint64'
public	Reverse8					as	'_ZN5Array7ReverseEPhm'
public	Reverse16					as	'_ZN5Array7ReverseEPtm'
public	Reverse32					as	'_ZN5Array7ReverseEPjm'
public	Reverse64					as	'_ZN5Array7ReverseEPym'

; Signed integer types
public	Reverse8					as	'Array_Reverse_sint8'
public	Reverse16					as	'Array_Reverse_sint16'
public	Reverse32					as	'Array_Reverse_sint32'
public	Reverse64					as	'Array_Reverse_sint64'
public	Reverse8					as	'_ZN5Array7ReverseEPam'
public	Reverse16					as	'_ZN5Array7ReverseEPsm'
public	Reverse32					as	'_ZN5Array7ReverseEPim'
public	Reverse64					as	'_ZN5Array7ReverseEPxm'

; Floating-point types
public	Reverse32					as	'Array_Reverse_flt32'
public	Reverse64					as	'Array_Reverse_flt64'
public	Reverse32					as	'_ZN5Array7ReverseEPfm'
public	Reverse64					as	'_ZN5Array7ReverseEPdm'

; Other types
public	Reverse64					as	'Array_Reverse_size'
public	Reverse64					as	'_ZN5Array7ReverseEPmm'

;==============================================================================;
;       Object array reversing                                                 ;
;==============================================================================;
public	Reverse64					as	'Array_ReverseObj'
public	Reverse64					as	'String_Reverse_char8'
public	Reverse64					as	'String_Reverse_char16'
public	Reverse64					as	'String_Reverse_char32'
public	Reverse64					as	'_ZN5Array10ReverseObjEPPKvm'
public	Reverse64					as	'_ZN6String7ReverseEPPKcm'
public	Reverse64					as	'_ZN6String7ReverseEPPKsm'
public	Reverse64					as	'_ZN6String7ReverseEPPKim'

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;

;==============================================================================;
;       Unique elements                                                        ;
;==============================================================================;

; Unsigned integer types
public	Unique8						as	'Array_Unique_uint8'
public	Unique16					as	'Array_Unique_uint16'
public	Unique32					as	'Array_Unique_uint32'
public	Unique64					as	'Array_Unique_uint64'
public	Unique8						as	'_ZN5Array6UniqueEPhPKhm'
public	Unique16					as	'_ZN5Array6UniqueEPtPKtm'
public	Unique32					as	'_ZN5Array6UniqueEPjPKjm'
public	Unique64					as	'_ZN5Array6UniqueEPyPKym'

; Signed integer types
public	Unique8						as	'Array_Unique_sint8'
public	Unique16					as	'Array_Unique_sint16'
public	Unique32					as	'Array_Unique_sint32'
public	Unique64					as	'Array_Unique_sint64'
public	Unique8						as	'_ZN5Array6UniqueEPaPKam'
public	Unique16					as	'_ZN5Array6UniqueEPsPKsm'
public	Unique32					as	'_ZN5Array6UniqueEPiPKim'
public	Unique64					as	'_ZN5Array6UniqueEPxPKxm'

; Other types
public	Unique64					as	'Array_Unique_size'
public	Unique64					as	'_ZN5Array6UniqueEPmPKmm'

;==============================================================================;
;       Unique objects                                                         ;
;==============================================================================;
public	Unique						as	'Array_UniqueObj'
public	Unique						as	'String_Unique_char8'
public	Unique						as	'String_Unique_char16'
public	Unique						as	'String_Unique_char32'
public	Unique						as	'_ZN5Array9UniqueObjEPPKvS2_mPFxS1_S1_E'
public	Unique						as	'_ZN6String6UniqueEPPKcS2_mPFxS1_S1_E'
public	Unique						as	'_ZN6String6UniqueEPPKsS2_mPFxS1_S1_E'
public	Unique						as	'_ZN6String6UniqueEPPKiS2_mPFxS1_S1_E'

;******************************************************************************;
;       Duplicate values                                                       ;
;******************************************************************************;

;==============================================================================;
;       Duplicate elements                                                     ;
;==============================================================================;

; Unsigned integer types
public	Duplicates8					as	'Array_Duplicates_uint8'
public	Duplicates16				as	'Array_Duplicates_uint16'
public	Duplicates32				as	'Array_Duplicates_uint32'
public	Duplicates64				as	'Array_Duplicates_uint64'
public	Duplicates8					as	'_ZN5Array10DuplicatesEPhPmPKhm'
public	Duplicates16				as	'_ZN5Array10DuplicatesEPtPmPKtm'
public	Duplicates32				as	'_ZN5Array10DuplicatesEPjPmPKjm'
public	Duplicates64				as	'_ZN5Array10DuplicatesEPyPmPKym'

; Signed integer types
public	Duplicates8					as	'Array_Duplicates_sint8'
public	Duplicates16				as	'Array_Duplicates_sint16'
public	Duplicates32				as	'Array_Duplicates_sint32'
public	Duplicates64				as	'Array_Duplicates_sint64'
public	Duplicates8					as	'_ZN5Array10DuplicatesEPaPmPKam'
public	Duplicates16				as	'_ZN5Array10DuplicatesEPsPmPKsm'
public	Duplicates32				as	'_ZN5Array10DuplicatesEPiPmPKim'
public	Duplicates64				as	'_ZN5Array10DuplicatesEPxPmPKxm'

; Other types
public	Duplicates64				as	'Array_Duplicates_size'
public	Duplicates64				as	'_ZN5Array10DuplicatesEPmS0_PKmm'

;==============================================================================;
;       Duplicate objects                                                      ;
;==============================================================================;
public	Duplicates					as	'Array_DuplicatesObj'
public	Duplicates					as	'String_Duplicates_char8'
public	Duplicates					as	'String_Duplicates_char16'
public	Duplicates					as	'String_Duplicates_char32'
public	Duplicates					as	'_ZN5Array13DuplicatesObjEPPKvPmS2_mPFxS1_S1_E'
public	Duplicates					as	'_ZN6String10DuplicatesEPPKcPmS2_mPFxS1_S1_E'
public	Duplicates					as	'_ZN6String10DuplicatesEPPKsPmS2_mPFxS1_S1_E'
public	Duplicates					as	'_ZN6String10DuplicatesEPPKiPmS2_mPFxS1_S1_E'

;******************************************************************************;
;       Mapping functions                                                      ;
;******************************************************************************;
public	Map_flt32					as	'Map_flt32'
public	Map_flt64					as	'Map_flt64'

;******************************************************************************;
;       Insertion sort                                                         ;
;******************************************************************************;

;==============================================================================;
;       Regular array sorting                                                  ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	InsertSortAsc_uint8			as	'Array_InsertSortAsc_uint8'
public	InsertSortAsc_uint16		as	'Array_InsertSortAsc_uint16'
public	InsertSortAsc_uint32		as	'Array_InsertSortAsc_uint32'
public	InsertSortAsc_uint64		as	'Array_InsertSortAsc_uint64'
public	InsertSortAsc_uint8			as	'_ZN5Array13InsertSortAscEPhm'
public	InsertSortAsc_uint16		as	'_ZN5Array13InsertSortAscEPtm'
public	InsertSortAsc_uint32		as	'_ZN5Array13InsertSortAscEPjm'
public	InsertSortAsc_uint64		as	'_ZN5Array13InsertSortAscEPym'

; Signed integer types
public	InsertSortAsc_sint8			as	'Array_InsertSortAsc_sint8'
public	InsertSortAsc_sint16		as	'Array_InsertSortAsc_sint16'
public	InsertSortAsc_sint32		as	'Array_InsertSortAsc_sint32'
public	InsertSortAsc_sint64		as	'Array_InsertSortAsc_sint64'
public	InsertSortAsc_sint8			as	'_ZN5Array13InsertSortAscEPam'
public	InsertSortAsc_sint16		as	'_ZN5Array13InsertSortAscEPsm'
public	InsertSortAsc_sint32		as	'_ZN5Array13InsertSortAscEPim'
public	InsertSortAsc_sint64		as	'_ZN5Array13InsertSortAscEPxm'

; Floating-point types
public	InsertSortAsc_flt32			as	'Array_InsertSortAsc_flt32'
public	InsertSortAsc_flt64			as	'Array_InsertSortAsc_flt64'
public	InsertSortAsc_flt32			as	'_ZN5Array13InsertSortAscEPfm'
public	InsertSortAsc_flt64			as	'_ZN5Array13InsertSortAscEPdm'

; Other types
public	InsertSortAsc_uint64		as	'Array_InsertSortAsc_size'
public	InsertSortAsc_uint64		as	'_ZN5Array13InsertSortAscEPmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	InsertSortDsc_uint8			as	'Array_InsertSortDsc_uint8'
public	InsertSortDsc_uint16		as	'Array_InsertSortDsc_uint16'
public	InsertSortDsc_uint32		as	'Array_InsertSortDsc_uint32'
public	InsertSortDsc_uint64		as	'Array_InsertSortDsc_uint64'
public	InsertSortDsc_uint8			as	'_ZN5Array13InsertSortDscEPhm'
public	InsertSortDsc_uint16		as	'_ZN5Array13InsertSortDscEPtm'
public	InsertSortDsc_uint32		as	'_ZN5Array13InsertSortDscEPjm'
public	InsertSortDsc_uint64		as	'_ZN5Array13InsertSortDscEPym'

; Signed integer types
public	InsertSortDsc_sint8			as	'Array_InsertSortDsc_sint8'
public	InsertSortDsc_sint16		as	'Array_InsertSortDsc_sint16'
public	InsertSortDsc_sint32		as	'Array_InsertSortDsc_sint32'
public	InsertSortDsc_sint64		as	'Array_InsertSortDsc_sint64'
public	InsertSortDsc_sint8			as	'_ZN5Array13InsertSortDscEPam'
public	InsertSortDsc_sint16		as	'_ZN5Array13InsertSortDscEPsm'
public	InsertSortDsc_sint32		as	'_ZN5Array13InsertSortDscEPim'
public	InsertSortDsc_sint64		as	'_ZN5Array13InsertSortDscEPxm'

; Floating-point types
public	InsertSortDsc_flt32			as	'Array_InsertSortDsc_flt32'
public	InsertSortDsc_flt64			as	'Array_InsertSortDsc_flt64'
public	InsertSortDsc_flt32			as	'_ZN5Array13InsertSortDscEPfm'
public	InsertSortDsc_flt64			as	'_ZN5Array13InsertSortDscEPdm'

; Other types
public	InsertSortDsc_uint64		as	'Array_InsertSortDsc_size'
public	InsertSortDsc_uint64		as	'_ZN5Array13InsertSortDscEPmm'

;==============================================================================;
;       Key array sorting                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	InsertSortKeyAsc_uint8		as	'Array_InsertSortKeyAsc_uint8'
public	InsertSortKeyAsc_uint16		as	'Array_InsertSortKeyAsc_uint16'
public	InsertSortKeyAsc_uint32		as	'Array_InsertSortKeyAsc_uint32'
public	InsertSortKeyAsc_uint64		as	'Array_InsertSortKeyAsc_uint64'
public	InsertSortKeyAsc_uint8		as	'_ZN5Array16InsertSortKeyAscEPhPPKvm'
public	InsertSortKeyAsc_uint16		as	'_ZN5Array16InsertSortKeyAscEPtPPKvm'
public	InsertSortKeyAsc_uint32		as	'_ZN5Array16InsertSortKeyAscEPjPPKvm'
public	InsertSortKeyAsc_uint64		as	'_ZN5Array16InsertSortKeyAscEPyPPKvm'

; Signed integer types
public	InsertSortKeyAsc_sint8		as	'Array_InsertSortKeyAsc_sint8'
public	InsertSortKeyAsc_sint16		as	'Array_InsertSortKeyAsc_sint16'
public	InsertSortKeyAsc_sint32		as	'Array_InsertSortKeyAsc_sint32'
public	InsertSortKeyAsc_sint64		as	'Array_InsertSortKeyAsc_sint64'
public	InsertSortKeyAsc_sint8		as	'_ZN5Array16InsertSortKeyAscEPaPPKvm'
public	InsertSortKeyAsc_sint16		as	'_ZN5Array16InsertSortKeyAscEPsPPKvm'
public	InsertSortKeyAsc_sint32		as	'_ZN5Array16InsertSortKeyAscEPiPPKvm'
public	InsertSortKeyAsc_sint64		as	'_ZN5Array16InsertSortKeyAscEPxPPKvm'

; Floating-point types
public	InsertSortKeyAsc_flt32		as	'Array_InsertSortKeyAsc_flt32'
public	InsertSortKeyAsc_flt64		as	'Array_InsertSortKeyAsc_flt64'
public	InsertSortKeyAsc_flt32		as	'_ZN5Array16InsertSortKeyAscEPfPPKvm'
public	InsertSortKeyAsc_flt64		as	'_ZN5Array16InsertSortKeyAscEPdPPKvm'

; Other types
public	InsertSortKeyAsc_uint64		as	'Array_InsertSortKeyAsc_size'
public	InsertSortKeyAsc_uint64		as	'_ZN5Array16InsertSortKeyAscEPmPPKvm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	InsertSortKeyDsc_uint8		as	'Array_InsertSortKeyDsc_uint8'
public	InsertSortKeyDsc_uint16		as	'Array_InsertSortKeyDsc_uint16'
public	InsertSortKeyDsc_uint32		as	'Array_InsertSortKeyDsc_uint32'
public	InsertSortKeyDsc_uint64		as	'Array_InsertSortKeyDsc_uint64'
public	InsertSortKeyDsc_uint8		as	'_ZN5Array16InsertSortKeyDscEPhPPKvm'
public	InsertSortKeyDsc_uint16		as	'_ZN5Array16InsertSortKeyDscEPtPPKvm'
public	InsertSortKeyDsc_uint32		as	'_ZN5Array16InsertSortKeyDscEPjPPKvm'
public	InsertSortKeyDsc_uint64		as	'_ZN5Array16InsertSortKeyDscEPyPPKvm'

; Signed integer types
public	InsertSortKeyDsc_sint8		as	'Array_InsertSortKeyDsc_sint8'
public	InsertSortKeyDsc_sint16		as	'Array_InsertSortKeyDsc_sint16'
public	InsertSortKeyDsc_sint32		as	'Array_InsertSortKeyDsc_sint32'
public	InsertSortKeyDsc_sint64		as	'Array_InsertSortKeyDsc_sint64'
public	InsertSortKeyDsc_sint8		as	'_ZN5Array16InsertSortKeyDscEPaPPKvm'
public	InsertSortKeyDsc_sint16		as	'_ZN5Array16InsertSortKeyDscEPsPPKvm'
public	InsertSortKeyDsc_sint32		as	'_ZN5Array16InsertSortKeyDscEPiPPKvm'
public	InsertSortKeyDsc_sint64		as	'_ZN5Array16InsertSortKeyDscEPxPPKvm'

; Floating-point types
public	InsertSortKeyDsc_flt32		as	'Array_InsertSortKeyDsc_flt32'
public	InsertSortKeyDsc_flt64		as	'Array_InsertSortKeyDsc_flt64'
public	InsertSortKeyDsc_flt32		as	'_ZN5Array16InsertSortKeyDscEPfPPKvm'
public	InsertSortKeyDsc_flt64		as	'_ZN5Array16InsertSortKeyDscEPdPPKvm'

; Other types
public	InsertSortKeyDsc_uint64		as	'Array_InsertSortKeyDsc_size'
public	InsertSortKeyDsc_uint64		as	'_ZN5Array16InsertSortKeyDscEPmPPKvm'

;==============================================================================;
;       Object array sorting                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	InsertSortAsc				as	'Array_InsertSortObjAsc'
public	InsertSortAsc				as	'String_InsertSortAsc_char8'
public	InsertSortAsc				as	'String_InsertSortAsc_char16'
public	InsertSortAsc				as	'String_InsertSortAsc_char32'
public	InsertSortAsc				as	'_ZN5Array16InsertSortObjAscEPPKvmPFxS1_S1_E'
public	InsertSortAsc				as	'_ZN6String13InsertSortAscEPPKcmPFxS1_S1_E'
public	InsertSortAsc				as	'_ZN6String13InsertSortAscEPPKsmPFxS1_S1_E'
public	InsertSortAsc				as	'_ZN6String13InsertSortAscEPPKimPFxS1_S1_E'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	InsertSortDsc				as	'Array_InsertSortObjDsc'
public	InsertSortDsc				as	'String_InsertSortDsc_char8'
public	InsertSortDsc				as	'String_InsertSortDsc_char16'
public	InsertSortDsc				as	'String_InsertSortDsc_char32'
public	InsertSortDsc				as	'_ZN5Array16InsertSortObjDscEPPKvmPFxS1_S1_E'
public	InsertSortDsc				as	'_ZN6String13InsertSortDscEPPKcmPFxS1_S1_E'
public	InsertSortDsc				as	'_ZN6String13InsertSortDscEPPKsmPFxS1_S1_E'
public	InsertSortDsc				as	'_ZN6String13InsertSortDscEPPKimPFxS1_S1_E'

;******************************************************************************;
;       Quick sort                                                             ;
;******************************************************************************;

;==============================================================================;
;       Regular array sorting                                                  ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	QuickSortAsc_uint8			as	'Array_QuickSortAsc_uint8'
public	QuickSortAsc_uint16			as	'Array_QuickSortAsc_uint16'
public	QuickSortAsc_uint32			as	'Array_QuickSortAsc_uint32'
public	QuickSortAsc_uint64			as	'Array_QuickSortAsc_uint64'
public	QuickSortAsc_uint8			as	'_ZN5Array12QuickSortAscEPhm'
public	QuickSortAsc_uint16			as	'_ZN5Array12QuickSortAscEPtm'
public	QuickSortAsc_uint32			as	'_ZN5Array12QuickSortAscEPjm'
public	QuickSortAsc_uint64			as	'_ZN5Array12QuickSortAscEPym'

; Signed integer types
public	QuickSortAsc_sint8			as	'Array_QuickSortAsc_sint8'
public	QuickSortAsc_sint16			as	'Array_QuickSortAsc_sint16'
public	QuickSortAsc_sint32			as	'Array_QuickSortAsc_sint32'
public	QuickSortAsc_sint64			as	'Array_QuickSortAsc_sint64'
public	QuickSortAsc_sint8			as	'_ZN5Array12QuickSortAscEPam'
public	QuickSortAsc_sint16			as	'_ZN5Array12QuickSortAscEPsm'
public	QuickSortAsc_sint32			as	'_ZN5Array12QuickSortAscEPim'
public	QuickSortAsc_sint64			as	'_ZN5Array12QuickSortAscEPxm'

; Floating-point types
public	QuickSortAsc_flt32			as	'Array_QuickSortAsc_flt32'
public	QuickSortAsc_flt64			as	'Array_QuickSortAsc_flt64'
public	QuickSortAsc_flt32			as	'_ZN5Array12QuickSortAscEPfm'
public	QuickSortAsc_flt64			as	'_ZN5Array12QuickSortAscEPdm'

; Other types
public	QuickSortAsc_uint64			as	'Array_QuickSortAsc_size'
public	QuickSortAsc_uint64			as	'_ZN5Array12QuickSortAscEPmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	QuickSortDsc_uint8			as	'Array_QuickSortDsc_uint8'
public	QuickSortDsc_uint16			as	'Array_QuickSortDsc_uint16'
public	QuickSortDsc_uint32			as	'Array_QuickSortDsc_uint32'
public	QuickSortDsc_uint64			as	'Array_QuickSortDsc_uint64'
public	QuickSortDsc_uint8			as	'_ZN5Array12QuickSortDscEPhm'
public	QuickSortDsc_uint16			as	'_ZN5Array12QuickSortDscEPtm'
public	QuickSortDsc_uint32			as	'_ZN5Array12QuickSortDscEPjm'
public	QuickSortDsc_uint64			as	'_ZN5Array12QuickSortDscEPym'

; Signed integer types
public	QuickSortDsc_sint8			as	'Array_QuickSortDsc_sint8'
public	QuickSortDsc_sint16			as	'Array_QuickSortDsc_sint16'
public	QuickSortDsc_sint32			as	'Array_QuickSortDsc_sint32'
public	QuickSortDsc_sint64			as	'Array_QuickSortDsc_sint64'
public	QuickSortDsc_sint8			as	'_ZN5Array12QuickSortDscEPam'
public	QuickSortDsc_sint16			as	'_ZN5Array12QuickSortDscEPsm'
public	QuickSortDsc_sint32			as	'_ZN5Array12QuickSortDscEPim'
public	QuickSortDsc_sint64			as	'_ZN5Array12QuickSortDscEPxm'

; Floating-point types
public	QuickSortDsc_flt32			as	'Array_QuickSortDsc_flt32'
public	QuickSortDsc_flt64			as	'Array_QuickSortDsc_flt64'
public	QuickSortDsc_flt32			as	'_ZN5Array12QuickSortDscEPfm'
public	QuickSortDsc_flt64			as	'_ZN5Array12QuickSortDscEPdm'

; Other types
public	QuickSortDsc_uint64			as	'Array_QuickSortDsc_size'
public	QuickSortDsc_uint64			as	'_ZN5Array12QuickSortDscEPmm'

;==============================================================================;
;       Key array sorting                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	QuickSortKeyAsc_uint8		as	'Array_QuickSortKeyAsc_uint8'
public	QuickSortKeyAsc_uint16		as	'Array_QuickSortKeyAsc_uint16'
public	QuickSortKeyAsc_uint32		as	'Array_QuickSortKeyAsc_uint32'
public	QuickSortKeyAsc_uint64		as	'Array_QuickSortKeyAsc_uint64'
public	QuickSortKeyAsc_uint8		as	'_ZN5Array15QuickSortKeyAscEPhPPKvm'
public	QuickSortKeyAsc_uint16		as	'_ZN5Array15QuickSortKeyAscEPtPPKvm'
public	QuickSortKeyAsc_uint32		as	'_ZN5Array15QuickSortKeyAscEPjPPKvm'
public	QuickSortKeyAsc_uint64		as	'_ZN5Array15QuickSortKeyAscEPyPPKvm'

; Signed integer types
public	QuickSortKeyAsc_sint8		as	'Array_QuickSortKeyAsc_sint8'
public	QuickSortKeyAsc_sint16		as	'Array_QuickSortKeyAsc_sint16'
public	QuickSortKeyAsc_sint32		as	'Array_QuickSortKeyAsc_sint32'
public	QuickSortKeyAsc_sint64		as	'Array_QuickSortKeyAsc_sint64'
public	QuickSortKeyAsc_sint8		as	'_ZN5Array15QuickSortKeyAscEPaPPKvm'
public	QuickSortKeyAsc_sint16		as	'_ZN5Array15QuickSortKeyAscEPsPPKvm'
public	QuickSortKeyAsc_sint32		as	'_ZN5Array15QuickSortKeyAscEPiPPKvm'
public	QuickSortKeyAsc_sint64		as	'_ZN5Array15QuickSortKeyAscEPxPPKvm'

; Floating-point types
public	QuickSortKeyAsc_flt32		as	'Array_QuickSortKeyAsc_flt32'
public	QuickSortKeyAsc_flt64		as	'Array_QuickSortKeyAsc_flt64'
public	QuickSortKeyAsc_flt32		as	'_ZN5Array15QuickSortKeyAscEPfPPKvm'
public	QuickSortKeyAsc_flt64		as	'_ZN5Array15QuickSortKeyAscEPdPPKvm'

; Other types
public	QuickSortKeyAsc_uint64		as	'Array_QuickSortKeyAsc_size'
public	QuickSortKeyAsc_uint64		as	'_ZN5Array15QuickSortKeyAscEPmPPKvm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	QuickSortKeyDsc_uint8		as	'Array_QuickSortKeyDsc_uint8'
public	QuickSortKeyDsc_uint16		as	'Array_QuickSortKeyDsc_uint16'
public	QuickSortKeyDsc_uint32		as	'Array_QuickSortKeyDsc_uint32'
public	QuickSortKeyDsc_uint64		as	'Array_QuickSortKeyDsc_uint64'
public	QuickSortKeyDsc_uint8		as	'_ZN5Array15QuickSortKeyDscEPhPPKvm'
public	QuickSortKeyDsc_uint16		as	'_ZN5Array15QuickSortKeyDscEPtPPKvm'
public	QuickSortKeyDsc_uint32		as	'_ZN5Array15QuickSortKeyDscEPjPPKvm'
public	QuickSortKeyDsc_uint64		as	'_ZN5Array15QuickSortKeyDscEPyPPKvm'

; Signed integer types
public	QuickSortKeyDsc_sint8		as	'Array_QuickSortKeyDsc_sint8'
public	QuickSortKeyDsc_sint16		as	'Array_QuickSortKeyDsc_sint16'
public	QuickSortKeyDsc_sint32		as	'Array_QuickSortKeyDsc_sint32'
public	QuickSortKeyDsc_sint64		as	'Array_QuickSortKeyDsc_sint64'
public	QuickSortKeyDsc_sint8		as	'_ZN5Array15QuickSortKeyDscEPaPPKvm'
public	QuickSortKeyDsc_sint16		as	'_ZN5Array15QuickSortKeyDscEPsPPKvm'
public	QuickSortKeyDsc_sint32		as	'_ZN5Array15QuickSortKeyDscEPiPPKvm'
public	QuickSortKeyDsc_sint64		as	'_ZN5Array15QuickSortKeyDscEPxPPKvm'

; Floating-point types
public	QuickSortKeyDsc_flt32		as	'Array_QuickSortKeyDsc_flt32'
public	QuickSortKeyDsc_flt64		as	'Array_QuickSortKeyDsc_flt64'
public	QuickSortKeyDsc_flt32		as	'_ZN5Array15QuickSortKeyDscEPfPPKvm'
public	QuickSortKeyDsc_flt64		as	'_ZN5Array15QuickSortKeyDscEPdPPKvm'

; Other types
public	QuickSortKeyDsc_uint64		as	'Array_QuickSortKeyDsc_size'
public	QuickSortKeyDsc_uint64		as	'_ZN5Array15QuickSortKeyDscEPmPPKvm'

;==============================================================================;
;       Object array sorting                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	QuickSortAsc				as	'Array_QuickSortObjAsc'
public	QuickSortAsc				as	'String_QuickSortAsc_char8'
public	QuickSortAsc				as	'String_QuickSortAsc_char16'
public	QuickSortAsc				as	'String_QuickSortAsc_char32'
public	QuickSortAsc				as	'_ZN5Array15QuickSortObjAscEPPKvmPFxS1_S1_E'
public	QuickSortAsc				as	'_ZN6String12QuickSortAscEPPKcmPFxS1_S1_E'
public	QuickSortAsc				as	'_ZN6String12QuickSortAscEPPKsmPFxS1_S1_E'
public	QuickSortAsc				as	'_ZN6String12QuickSortAscEPPKimPFxS1_S1_E'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	QuickSortDsc				as	'Array_QuickSortObjDsc'
public	QuickSortDsc				as	'String_QuickSortDsc_char8'
public	QuickSortDsc				as	'String_QuickSortDsc_char16'
public	QuickSortDsc				as	'String_QuickSortDsc_char32'
public	QuickSortDsc				as	'_ZN5Array15QuickSortObjDscEPPKvmPFxS1_S1_E'
public	QuickSortDsc				as	'_ZN6String12QuickSortDscEPPKcmPFxS1_S1_E'
public	QuickSortDsc				as	'_ZN6String12QuickSortDscEPPKsmPFxS1_S1_E'
public	QuickSortDsc				as	'_ZN6String12QuickSortDscEPPKimPFxS1_S1_E'

;******************************************************************************;
;       Merge sort                                                             ;
;******************************************************************************;

;==============================================================================;
;       Regular array sorting                                                  ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeSortAsc_uint8			as	'Array_MergeSortAsc_uint8'
public	MergeSortAsc_uint16			as	'Array_MergeSortAsc_uint16'
public	MergeSortAsc_uint32			as	'Array_MergeSortAsc_uint32'
public	MergeSortAsc_uint64			as	'Array_MergeSortAsc_uint64'
public	MergeSortAsc_uint8			as	'_ZN5Array12MergeSortAscEPhS0_m'
public	MergeSortAsc_uint16			as	'_ZN5Array12MergeSortAscEPtS0_m'
public	MergeSortAsc_uint32			as	'_ZN5Array12MergeSortAscEPjS0_m'
public	MergeSortAsc_uint64			as	'_ZN5Array12MergeSortAscEPyS0_m'

; Signed integer types
public	MergeSortAsc_sint8			as	'Array_MergeSortAsc_sint8'
public	MergeSortAsc_sint16			as	'Array_MergeSortAsc_sint16'
public	MergeSortAsc_sint32			as	'Array_MergeSortAsc_sint32'
public	MergeSortAsc_sint64			as	'Array_MergeSortAsc_sint64'
public	MergeSortAsc_sint8			as	'_ZN5Array12MergeSortAscEPaS0_m'
public	MergeSortAsc_sint16			as	'_ZN5Array12MergeSortAscEPsS0_m'
public	MergeSortAsc_sint32			as	'_ZN5Array12MergeSortAscEPiS0_m'
public	MergeSortAsc_sint64			as	'_ZN5Array12MergeSortAscEPxS0_m'

; Floating-point types
public	MergeSortAsc_flt32			as	'Array_MergeSortAsc_flt32'
public	MergeSortAsc_flt64			as	'Array_MergeSortAsc_flt64'
public	MergeSortAsc_flt32			as	'_ZN5Array12MergeSortAscEPfS0_m'
public	MergeSortAsc_flt64			as	'_ZN5Array12MergeSortAscEPdS0_m'

; Other types
public	MergeSortAsc_uint64			as	'Array_MergeSortAsc_size'
public	MergeSortAsc_uint64			as	'_ZN5Array12MergeSortAscEPmS0_m'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeSortDsc_uint8			as	'Array_MergeSortDsc_uint8'
public	MergeSortDsc_uint16			as	'Array_MergeSortDsc_uint16'
public	MergeSortDsc_uint32			as	'Array_MergeSortDsc_uint32'
public	MergeSortDsc_uint64			as	'Array_MergeSortDsc_uint64'
public	MergeSortDsc_uint8			as	'_ZN5Array12MergeSortDscEPhS0_m'
public	MergeSortDsc_uint16			as	'_ZN5Array12MergeSortDscEPtS0_m'
public	MergeSortDsc_uint32			as	'_ZN5Array12MergeSortDscEPjS0_m'
public	MergeSortDsc_uint64			as	'_ZN5Array12MergeSortDscEPyS0_m'

; Signed integer types
public	MergeSortDsc_sint8			as	'Array_MergeSortDsc_sint8'
public	MergeSortDsc_sint16			as	'Array_MergeSortDsc_sint16'
public	MergeSortDsc_sint32			as	'Array_MergeSortDsc_sint32'
public	MergeSortDsc_sint64			as	'Array_MergeSortDsc_sint64'
public	MergeSortDsc_sint8			as	'_ZN5Array12MergeSortDscEPaS0_m'
public	MergeSortDsc_sint16			as	'_ZN5Array12MergeSortDscEPsS0_m'
public	MergeSortDsc_sint32			as	'_ZN5Array12MergeSortDscEPiS0_m'
public	MergeSortDsc_sint64			as	'_ZN5Array12MergeSortDscEPxS0_m'

; Floating-point types
public	MergeSortDsc_flt32			as	'Array_MergeSortDsc_flt32'
public	MergeSortDsc_flt64			as	'Array_MergeSortDsc_flt64'
public	MergeSortDsc_flt32			as	'_ZN5Array12MergeSortDscEPfS0_m'
public	MergeSortDsc_flt64			as	'_ZN5Array12MergeSortDscEPdS0_m'

; Other types
public	MergeSortDsc_uint64			as	'Array_MergeSortDsc_size'
public	MergeSortDsc_uint64			as	'_ZN5Array12MergeSortDscEPmS0_m'

;==============================================================================;
;       Key array sorting                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeSortKeyAsc_uint8		as	'Array_MergeSortKeyAsc_uint8'
public	MergeSortKeyAsc_uint16		as	'Array_MergeSortKeyAsc_uint16'
public	MergeSortKeyAsc_uint32		as	'Array_MergeSortKeyAsc_uint32'
public	MergeSortKeyAsc_uint64		as	'Array_MergeSortKeyAsc_uint64'
public	MergeSortKeyAsc_uint8		as	'_ZN5Array15MergeSortKeyAscEPhPPKvS0_S3_m'
public	MergeSortKeyAsc_uint16		as	'_ZN5Array15MergeSortKeyAscEPtPPKvS0_S3_m'
public	MergeSortKeyAsc_uint32		as	'_ZN5Array15MergeSortKeyAscEPjPPKvS0_S3_m'
public	MergeSortKeyAsc_uint64		as	'_ZN5Array15MergeSortKeyAscEPyPPKvS0_S3_m'

; Signed integer types
public	MergeSortKeyAsc_sint8		as	'Array_MergeSortKeyAsc_sint8'
public	MergeSortKeyAsc_sint16		as	'Array_MergeSortKeyAsc_sint16'
public	MergeSortKeyAsc_sint32		as	'Array_MergeSortKeyAsc_sint32'
public	MergeSortKeyAsc_sint64		as	'Array_MergeSortKeyAsc_sint64'
public	MergeSortKeyAsc_sint8		as	'_ZN5Array15MergeSortKeyAscEPaPPKvS0_S3_m'
public	MergeSortKeyAsc_sint16		as	'_ZN5Array15MergeSortKeyAscEPsPPKvS0_S3_m'
public	MergeSortKeyAsc_sint32		as	'_ZN5Array15MergeSortKeyAscEPiPPKvS0_S3_m'
public	MergeSortKeyAsc_sint64		as	'_ZN5Array15MergeSortKeyAscEPxPPKvS0_S3_m'

; Floating-point types
public	MergeSortKeyAsc_flt32		as	'Array_MergeSortKeyAsc_flt32'
public	MergeSortKeyAsc_flt64		as	'Array_MergeSortKeyAsc_flt64'
public	MergeSortKeyAsc_flt32		as	'_ZN5Array15MergeSortKeyAscEPfPPKvS0_S3_m'
public	MergeSortKeyAsc_flt64		as	'_ZN5Array15MergeSortKeyAscEPdPPKvS0_S3_m'

; Other types
public	MergeSortKeyAsc_uint64		as	'Array_MergeSortKeyAsc_size'
public	MergeSortKeyAsc_uint64		as	'_ZN5Array15MergeSortKeyAscEPmPPKvS0_S3_m'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeSortKeyDsc_uint8		as	'Array_MergeSortKeyDsc_uint8'
public	MergeSortKeyDsc_uint16		as	'Array_MergeSortKeyDsc_uint16'
public	MergeSortKeyDsc_uint32		as	'Array_MergeSortKeyDsc_uint32'
public	MergeSortKeyDsc_uint64		as	'Array_MergeSortKeyDsc_uint64'
public	MergeSortKeyDsc_uint8		as	'_ZN5Array15MergeSortKeyDscEPhPPKvS0_S3_m'
public	MergeSortKeyDsc_uint16		as	'_ZN5Array15MergeSortKeyDscEPtPPKvS0_S3_m'
public	MergeSortKeyDsc_uint32		as	'_ZN5Array15MergeSortKeyDscEPjPPKvS0_S3_m'
public	MergeSortKeyDsc_uint64		as	'_ZN5Array15MergeSortKeyDscEPyPPKvS0_S3_m'

; Signed integer types
public	MergeSortKeyDsc_sint8		as	'Array_MergeSortKeyDsc_sint8'
public	MergeSortKeyDsc_sint16		as	'Array_MergeSortKeyDsc_sint16'
public	MergeSortKeyDsc_sint32		as	'Array_MergeSortKeyDsc_sint32'
public	MergeSortKeyDsc_sint64		as	'Array_MergeSortKeyDsc_sint64'
public	MergeSortKeyDsc_sint8		as	'_ZN5Array15MergeSortKeyDscEPaPPKvS0_S3_m'
public	MergeSortKeyDsc_sint16		as	'_ZN5Array15MergeSortKeyDscEPsPPKvS0_S3_m'
public	MergeSortKeyDsc_sint32		as	'_ZN5Array15MergeSortKeyDscEPiPPKvS0_S3_m'
public	MergeSortKeyDsc_sint64		as	'_ZN5Array15MergeSortKeyDscEPxPPKvS0_S3_m'

; Floating-point types
public	MergeSortKeyDsc_flt32		as	'Array_MergeSortKeyDsc_flt32'
public	MergeSortKeyDsc_flt64		as	'Array_MergeSortKeyDsc_flt64'
public	MergeSortKeyDsc_flt32		as	'_ZN5Array15MergeSortKeyDscEPfPPKvS0_S3_m'
public	MergeSortKeyDsc_flt64		as	'_ZN5Array15MergeSortKeyDscEPdPPKvS0_S3_m'

; Other types
public	MergeSortKeyDsc_uint64		as	'Array_MergeSortKeyDsc_size'
public	MergeSortKeyDsc_uint64		as	'_ZN5Array15MergeSortKeyDscEPmPPKvS0_S3_m'

;==============================================================================;
;       Object array sorting                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	MergeSortAsc				as	'Array_MergeSortObjAsc'
public	MergeSortAsc				as	'String_MergeSortAsc_char8'
public	MergeSortAsc				as	'String_MergeSortAsc_char16'
public	MergeSortAsc				as	'String_MergeSortAsc_char32'
public	MergeSortAsc				as	'_ZN5Array15MergeSortObjAscEPPKvS2_mPFxS1_S1_E'
public	MergeSortAsc				as	'_ZN6String12MergeSortAscEPPKcS2_mPFxS1_S1_E'
public	MergeSortAsc				as	'_ZN6String12MergeSortAscEPPKsS2_mPFxS1_S1_E'
public	MergeSortAsc				as	'_ZN6String12MergeSortAscEPPKiS2_mPFxS1_S1_E'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	MergeSortDsc				as	'Array_MergeSortObjDsc'
public	MergeSortDsc				as	'String_MergeSortDsc_char8'
public	MergeSortDsc				as	'String_MergeSortDsc_char16'
public	MergeSortDsc				as	'String_MergeSortDsc_char32'
public	MergeSortDsc				as	'_ZN5Array15MergeSortObjDscEPPKvS2_mPFxS1_S1_E'
public	MergeSortDsc				as	'_ZN6String12MergeSortDscEPPKcS2_mPFxS1_S1_E'
public	MergeSortDsc				as	'_ZN6String12MergeSortDscEPPKsS2_mPFxS1_S1_E'
public	MergeSortDsc				as	'_ZN6String12MergeSortDscEPPKiS2_mPFxS1_S1_E'

;******************************************************************************;
;       Radix sort                                                             ;
;******************************************************************************;

;==============================================================================;
;       Regular array sorting                                                  ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	RadixSortAsc_uint8			as	'Array_RadixSortAsc_uint8'
public	RadixSortAsc_uint16			as	'Array_RadixSortAsc_uint16'
public	RadixSortAsc_uint32			as	'Array_RadixSortAsc_uint32'
public	RadixSortAsc_uint64			as	'Array_RadixSortAsc_uint64'
public	RadixSortAsc_uint8			as	'_ZN5Array12RadixSortAscEPhS0_m'
public	RadixSortAsc_uint16			as	'_ZN5Array12RadixSortAscEPtS0_m'
public	RadixSortAsc_uint32			as	'_ZN5Array12RadixSortAscEPjS0_m'
public	RadixSortAsc_uint64			as	'_ZN5Array12RadixSortAscEPyS0_m'

; Signed integer types
public	RadixSortAsc_sint8			as	'Array_RadixSortAsc_sint8'
public	RadixSortAsc_sint16			as	'Array_RadixSortAsc_sint16'
public	RadixSortAsc_sint32			as	'Array_RadixSortAsc_sint32'
public	RadixSortAsc_sint64			as	'Array_RadixSortAsc_sint64'
public	RadixSortAsc_sint8			as	'_ZN5Array12RadixSortAscEPaS0_m'
public	RadixSortAsc_sint16			as	'_ZN5Array12RadixSortAscEPsS0_m'
public	RadixSortAsc_sint32			as	'_ZN5Array12RadixSortAscEPiS0_m'
public	RadixSortAsc_sint64			as	'_ZN5Array12RadixSortAscEPxS0_m'

; Floating-point types
public	RadixSortAsc_flt32			as	'Array_RadixSortAsc_flt32'
public	RadixSortAsc_flt64			as	'Array_RadixSortAsc_flt64'
public	RadixSortAsc_flt32			as	'_ZN5Array12RadixSortAscEPfS0_m'
public	RadixSortAsc_flt64			as	'_ZN5Array12RadixSortAscEPdS0_m'

; Other types
public	RadixSortAsc_uint64			as	'Array_RadixSortAsc_size'
public	RadixSortAsc_uint64			as	'_ZN5Array12RadixSortAscEPmS0_m'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	RadixSortDsc_uint8			as	'Array_RadixSortDsc_uint8'
public	RadixSortDsc_uint16			as	'Array_RadixSortDsc_uint16'
public	RadixSortDsc_uint32			as	'Array_RadixSortDsc_uint32'
public	RadixSortDsc_uint64			as	'Array_RadixSortDsc_uint64'
public	RadixSortDsc_uint8			as	'_ZN5Array12RadixSortDscEPhS0_m'
public	RadixSortDsc_uint16			as	'_ZN5Array12RadixSortDscEPtS0_m'
public	RadixSortDsc_uint32			as	'_ZN5Array12RadixSortDscEPjS0_m'
public	RadixSortDsc_uint64			as	'_ZN5Array12RadixSortDscEPyS0_m'

; Signed integer types
public	RadixSortDsc_sint8			as	'Array_RadixSortDsc_sint8'
public	RadixSortDsc_sint16			as	'Array_RadixSortDsc_sint16'
public	RadixSortDsc_sint32			as	'Array_RadixSortDsc_sint32'
public	RadixSortDsc_sint64			as	'Array_RadixSortDsc_sint64'
public	RadixSortDsc_sint8			as	'_ZN5Array12RadixSortDscEPaS0_m'
public	RadixSortDsc_sint16			as	'_ZN5Array12RadixSortDscEPsS0_m'
public	RadixSortDsc_sint32			as	'_ZN5Array12RadixSortDscEPiS0_m'
public	RadixSortDsc_sint64			as	'_ZN5Array12RadixSortDscEPxS0_m'

; Floating-point types
public	RadixSortDsc_flt32			as	'Array_RadixSortDsc_flt32'
public	RadixSortDsc_flt64			as	'Array_RadixSortDsc_flt64'
public	RadixSortDsc_flt32			as	'_ZN5Array12RadixSortDscEPfS0_m'
public	RadixSortDsc_flt64			as	'_ZN5Array12RadixSortDscEPdS0_m'

; Other types
public	RadixSortDsc_uint64			as	'Array_RadixSortDsc_size'
public	RadixSortDsc_uint64			as	'_ZN5Array12RadixSortDscEPmS0_m'

;==============================================================================;
;       Key array sorting                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	RadixSortKeyAsc_uint8		as	'Array_RadixSortKeyAsc_uint8'
public	RadixSortKeyAsc_uint16		as	'Array_RadixSortKeyAsc_uint16'
public	RadixSortKeyAsc_uint32		as	'Array_RadixSortKeyAsc_uint32'
public	RadixSortKeyAsc_uint64		as	'Array_RadixSortKeyAsc_uint64'
public	RadixSortKeyAsc_uint8		as	'_ZN5Array15RadixSortKeyAscEPhPPKvS0_S3_m'
public	RadixSortKeyAsc_uint16		as	'_ZN5Array15RadixSortKeyAscEPtPPKvS0_S3_m'
public	RadixSortKeyAsc_uint32		as	'_ZN5Array15RadixSortKeyAscEPjPPKvS0_S3_m'
public	RadixSortKeyAsc_uint64		as	'_ZN5Array15RadixSortKeyAscEPyPPKvS0_S3_m'

; Signed integer types
public	RadixSortKeyAsc_sint8		as	'Array_RadixSortKeyAsc_sint8'
public	RadixSortKeyAsc_sint16		as	'Array_RadixSortKeyAsc_sint16'
public	RadixSortKeyAsc_sint32		as	'Array_RadixSortKeyAsc_sint32'
public	RadixSortKeyAsc_sint64		as	'Array_RadixSortKeyAsc_sint64'
public	RadixSortKeyAsc_sint8		as	'_ZN5Array15RadixSortKeyAscEPaPPKvS0_S3_m'
public	RadixSortKeyAsc_sint16		as	'_ZN5Array15RadixSortKeyAscEPsPPKvS0_S3_m'
public	RadixSortKeyAsc_sint32		as	'_ZN5Array15RadixSortKeyAscEPiPPKvS0_S3_m'
public	RadixSortKeyAsc_sint64		as	'_ZN5Array15RadixSortKeyAscEPxPPKvS0_S3_m'

; Floating-point types
public	RadixSortKeyAsc_flt32		as	'Array_RadixSortKeyAsc_flt32'
public	RadixSortKeyAsc_flt64		as	'Array_RadixSortKeyAsc_flt64'
public	RadixSortKeyAsc_flt32		as	'_ZN5Array15RadixSortKeyAscEPfPPKvS0_S3_m'
public	RadixSortKeyAsc_flt64		as	'_ZN5Array15RadixSortKeyAscEPdPPKvS0_S3_m'

; Other types
public	RadixSortKeyAsc_uint64		as	'Array_RadixSortKeyAsc_size'
public	RadixSortKeyAsc_uint64		as	'_ZN5Array15RadixSortKeyAscEPmPPKvS0_S3_m'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	RadixSortKeyDsc_uint8		as	'Array_RadixSortKeyDsc_uint8'
public	RadixSortKeyDsc_uint16		as	'Array_RadixSortKeyDsc_uint16'
public	RadixSortKeyDsc_uint32		as	'Array_RadixSortKeyDsc_uint32'
public	RadixSortKeyDsc_uint64		as	'Array_RadixSortKeyDsc_uint64'
public	RadixSortKeyDsc_uint8		as	'_ZN5Array15RadixSortKeyDscEPhPPKvS0_S3_m'
public	RadixSortKeyDsc_uint16		as	'_ZN5Array15RadixSortKeyDscEPtPPKvS0_S3_m'
public	RadixSortKeyDsc_uint32		as	'_ZN5Array15RadixSortKeyDscEPjPPKvS0_S3_m'
public	RadixSortKeyDsc_uint64		as	'_ZN5Array15RadixSortKeyDscEPyPPKvS0_S3_m'

; Signed integer types
public	RadixSortKeyDsc_sint8		as	'Array_RadixSortKeyDsc_sint8'
public	RadixSortKeyDsc_sint16		as	'Array_RadixSortKeyDsc_sint16'
public	RadixSortKeyDsc_sint32		as	'Array_RadixSortKeyDsc_sint32'
public	RadixSortKeyDsc_sint64		as	'Array_RadixSortKeyDsc_sint64'
public	RadixSortKeyDsc_sint8		as	'_ZN5Array15RadixSortKeyDscEPaPPKvS0_S3_m'
public	RadixSortKeyDsc_sint16		as	'_ZN5Array15RadixSortKeyDscEPsPPKvS0_S3_m'
public	RadixSortKeyDsc_sint32		as	'_ZN5Array15RadixSortKeyDscEPiPPKvS0_S3_m'
public	RadixSortKeyDsc_sint64		as	'_ZN5Array15RadixSortKeyDscEPxPPKvS0_S3_m'

; Floating-point types
public	RadixSortKeyDsc_flt32		as	'Array_RadixSortKeyDsc_flt32'
public	RadixSortKeyDsc_flt64		as	'Array_RadixSortKeyDsc_flt64'
public	RadixSortKeyDsc_flt32		as	'_ZN5Array15RadixSortKeyDscEPfPPKvS0_S3_m'
public	RadixSortKeyDsc_flt64		as	'_ZN5Array15RadixSortKeyDscEPdPPKvS0_S3_m'

; Other types
public	RadixSortKeyDsc_uint64		as	'Array_RadixSortKeyDsc_size'
public	RadixSortKeyDsc_uint64		as	'_ZN5Array15RadixSortKeyDscEPmPPKvS0_S3_m'

;******************************************************************************;
;       Merging of sorted arrays                                               ;
;******************************************************************************;

;==============================================================================;
;       Regular array merging                                                  ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeAsc_uint8				as	'Array_MergeAsc_uint8'
public	MergeAsc_uint16				as	'Array_MergeAsc_uint16'
public	MergeAsc_uint32				as	'Array_MergeAsc_uint32'
public	MergeAsc_uint64				as	'Array_MergeAsc_uint64'
public	MergeAsc_uint8				as	'_ZN5Array8MergeAscEPhPKhmS2_m'
public	MergeAsc_uint16				as	'_ZN5Array8MergeAscEPtPKtmS2_m'
public	MergeAsc_uint32				as	'_ZN5Array8MergeAscEPjPKjmS2_m'
public	MergeAsc_uint64				as	'_ZN5Array8MergeAscEPyPKymS2_m'

; Signed integer types
public	MergeAsc_sint8				as	'Array_MergeAsc_sint8'
public	MergeAsc_sint16				as	'Array_MergeAsc_sint16'
public	MergeAsc_sint32				as	'Array_MergeAsc_sint32'
public	MergeAsc_sint64				as	'Array_MergeAsc_sint64'
public	MergeAsc_sint8				as	'_ZN5Array8MergeAscEPaPKamS2_m'
public	MergeAsc_sint16				as	'_ZN5Array8MergeAscEPsPKsmS2_m'
public	MergeAsc_sint32				as	'_ZN5Array8MergeAscEPiPKimS2_m'
public	MergeAsc_sint64				as	'_ZN5Array8MergeAscEPxPKxmS2_m'

; Floating-point types
public	MergeAsc_flt32				as	'Array_MergeAsc_flt32'
public	MergeAsc_flt64				as	'Array_MergeAsc_flt64'
public	MergeAsc_flt32				as	'_ZN5Array8MergeAscEPfPKfmS2_m'
public	MergeAsc_flt64				as	'_ZN5Array8MergeAscEPdPKdmS2_m'

; Other types
public	MergeAsc_uint64				as	'Array_MergeAsc_size'
public	MergeAsc_uint64				as	'_ZN5Array8MergeAscEPmPKmmS2_m'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeDsc_uint8				as	'Array_MergeDsc_uint8'
public	MergeDsc_uint16				as	'Array_MergeDsc_uint16'
public	MergeDsc_uint32				as	'Array_MergeDsc_uint32'
public	MergeDsc_uint64				as	'Array_MergeDsc_uint64'
public	MergeDsc_uint8				as	'_ZN5Array8MergeDscEPhPKhmS2_m'
public	MergeDsc_uint16				as	'_ZN5Array8MergeDscEPtPKtmS2_m'
public	MergeDsc_uint32				as	'_ZN5Array8MergeDscEPjPKjmS2_m'
public	MergeDsc_uint64				as	'_ZN5Array8MergeDscEPyPKymS2_m'

; Signed integer types
public	MergeDsc_sint8				as	'Array_MergeDsc_sint8'
public	MergeDsc_sint16				as	'Array_MergeDsc_sint16'
public	MergeDsc_sint32				as	'Array_MergeDsc_sint32'
public	MergeDsc_sint64				as	'Array_MergeDsc_sint64'
public	MergeDsc_sint8				as	'_ZN5Array8MergeDscEPaPKamS2_m'
public	MergeDsc_sint16				as	'_ZN5Array8MergeDscEPsPKsmS2_m'
public	MergeDsc_sint32				as	'_ZN5Array8MergeDscEPiPKimS2_m'
public	MergeDsc_sint64				as	'_ZN5Array8MergeDscEPxPKxmS2_m'

; Floating-point types
public	MergeDsc_flt32				as	'Array_MergeDsc_flt32'
public	MergeDsc_flt64				as	'Array_MergeDsc_flt64'
public	MergeDsc_flt32				as	'_ZN5Array8MergeDscEPfPKfmS2_m'
public	MergeDsc_flt64				as	'_ZN5Array8MergeDscEPdPKdmS2_m'

; Other types
public	MergeDsc_uint64				as	'Array_MergeDsc_size'
public	MergeDsc_uint64				as	'_ZN5Array8MergeDscEPmPKmmS2_m'

;==============================================================================;
;       Key array merging                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeKeyAsc_uint8			as	'Array_MergeKeyAsc_uint8'
public	MergeKeyAsc_uint16			as	'Array_MergeKeyAsc_uint16'
public	MergeKeyAsc_uint32			as	'Array_MergeKeyAsc_uint32'
public	MergeKeyAsc_uint64			as	'Array_MergeKeyAsc_uint64'
public	MergeKeyAsc_uint8			as	'_ZN5Array11MergeKeyAscEPhPPKvPKhS3_mS5_S3_m'
public	MergeKeyAsc_uint16			as	'_ZN5Array11MergeKeyAscEPtPPKvPKtS3_mS5_S3_m'
public	MergeKeyAsc_uint32			as	'_ZN5Array11MergeKeyAscEPjPPKvPKjS3_mS5_S3_m'
public	MergeKeyAsc_uint64			as	'_ZN5Array11MergeKeyAscEPyPPKvPKyS3_mS5_S3_m'

; Signed integer types
public	MergeKeyAsc_sint8			as	'Array_MergeKeyAsc_sint8'
public	MergeKeyAsc_sint16			as	'Array_MergeKeyAsc_sint16'
public	MergeKeyAsc_sint32			as	'Array_MergeKeyAsc_sint32'
public	MergeKeyAsc_sint64			as	'Array_MergeKeyAsc_sint64'
public	MergeKeyAsc_sint8			as	'_ZN5Array11MergeKeyAscEPaPPKvPKaS3_mS5_S3_m'
public	MergeKeyAsc_sint16			as	'_ZN5Array11MergeKeyAscEPsPPKvPKsS3_mS5_S3_m'
public	MergeKeyAsc_sint32			as	'_ZN5Array11MergeKeyAscEPiPPKvPKiS3_mS5_S3_m'
public	MergeKeyAsc_sint64			as	'_ZN5Array11MergeKeyAscEPxPPKvPKxS3_mS5_S3_m'

; Floating-point types
public	MergeKeyAsc_flt32			as	'Array_MergeKeyAsc_flt32'
public	MergeKeyAsc_flt64			as	'Array_MergeKeyAsc_flt64'
public	MergeKeyAsc_flt32			as	'_ZN5Array11MergeKeyAscEPfPPKvPKfS3_mS5_S3_m'
public	MergeKeyAsc_flt64			as	'_ZN5Array11MergeKeyAscEPdPPKvPKdS3_mS5_S3_m'

; Other types
public	MergeKeyAsc_uint64			as	'Array_MergeKeyAsc_size'
public	MergeKeyAsc_uint64			as	'_ZN5Array11MergeKeyAscEPmPPKvPKmS3_mS5_S3_m'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeKeyDsc_uint8			as	'Array_MergeKeyDsc_uint8'
public	MergeKeyDsc_uint16			as	'Array_MergeKeyDsc_uint16'
public	MergeKeyDsc_uint32			as	'Array_MergeKeyDsc_uint32'
public	MergeKeyDsc_uint64			as	'Array_MergeKeyDsc_uint64'
public	MergeKeyDsc_uint8			as	'_ZN5Array11MergeKeyDscEPhPPKvPKhS3_mS5_S3_m'
public	MergeKeyDsc_uint16			as	'_ZN5Array11MergeKeyDscEPtPPKvPKtS3_mS5_S3_m'
public	MergeKeyDsc_uint32			as	'_ZN5Array11MergeKeyDscEPjPPKvPKjS3_mS5_S3_m'
public	MergeKeyDsc_uint64			as	'_ZN5Array11MergeKeyDscEPyPPKvPKyS3_mS5_S3_m'

; Signed integer types
public	MergeKeyDsc_sint8			as	'Array_MergeKeyDsc_sint8'
public	MergeKeyDsc_sint16			as	'Array_MergeKeyDsc_sint16'
public	MergeKeyDsc_sint32			as	'Array_MergeKeyDsc_sint32'
public	MergeKeyDsc_sint64			as	'Array_MergeKeyDsc_sint64'
public	MergeKeyDsc_sint8			as	'_ZN5Array11MergeKeyDscEPaPPKvPKaS3_mS5_S3_m'
public	MergeKeyDsc_sint16			as	'_ZN5Array11MergeKeyDscEPsPPKvPKsS3_mS5_S3_m'
public	MergeKeyDsc_sint32			as	'_ZN5Array11MergeKeyDscEPiPPKvPKiS3_mS5_S3_m'
public	MergeKeyDsc_sint64			as	'_ZN5Array11MergeKeyDscEPxPPKvPKxS3_mS5_S3_m'

; Floating-point types
public	MergeKeyDsc_flt32			as	'Array_MergeKeyDsc_flt32'
public	MergeKeyDsc_flt64			as	'Array_MergeKeyDsc_flt64'
public	MergeKeyDsc_flt32			as	'_ZN5Array11MergeKeyDscEPfPPKvPKfS3_mS5_S3_m'
public	MergeKeyDsc_flt64			as	'_ZN5Array11MergeKeyDscEPdPPKvPKdS3_mS5_S3_m'

; Other types
public	MergeKeyDsc_uint64			as	'Array_MergeKeyDsc_size'
public	MergeKeyDsc_uint64			as	'_ZN5Array11MergeKeyDscEPmPPKvPKmS3_mS5_S3_m'

;==============================================================================;
;       Object array merging                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	MergeAsc					as	'Array_MergeObjAsc'
public	MergeAsc					as	'String_MergeAsc_char8'
public	MergeAsc					as	'String_MergeAsc_char16'
public	MergeAsc					as	'String_MergeAsc_char32'
public	MergeAsc					as	'_ZN5Array11MergeObjAscEPPKvS2_mS2_mPFxS1_S1_E'
public	MergeAsc					as	'_ZN6String8MergeAscEPPKcS2_mS2_mPFxS1_S1_E'
public	MergeAsc					as	'_ZN6String8MergeAscEPPKsS2_mS2_mPFxS1_S1_E'
public	MergeAsc					as	'_ZN6String8MergeAscEPPKiS2_mS2_mPFxS1_S1_E'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	MergeDsc					as	'Array_MergeObjDsc'
public	MergeDsc					as	'String_MergeDsc_char8'
public	MergeDsc					as	'String_MergeDsc_char16'
public	MergeDsc					as	'String_MergeDsc_char32'
public	MergeDsc					as	'_ZN5Array11MergeObjDscEPPKvS2_mS2_mPFxS1_S1_E'
public	MergeDsc					as	'_ZN6String8MergeDscEPPKcS2_mS2_mPFxS1_S1_E'
public	MergeDsc					as	'_ZN6String8MergeDscEPPKsS2_mS2_mPFxS1_S1_E'
public	MergeDsc					as	'_ZN6String8MergeDscEPPKiS2_mS2_mPFxS1_S1_E'

;******************************************************************************;
;       Comparison of arrays                                                   ;
;******************************************************************************;

;==============================================================================;
;       Regular array comparison                                               ;
;==============================================================================;

; Unsigned integer types
public	Compare_uint8				as	'Array_Compare_uint8'
public	Compare_uint16				as	'Array_Compare_uint16'
public	Compare_uint32				as	'Array_Compare_uint32'
public	Compare_uint64				as	'Array_Compare_uint64'
public	Compare_uint8				as	'_ZN5Array7CompareEPKhS1_m'
public	Compare_uint16				as	'_ZN5Array7CompareEPKtS1_m'
public	Compare_uint32				as	'_ZN5Array7CompareEPKjS1_m'
public	Compare_uint64				as	'_ZN5Array7CompareEPKyS1_m'

; Signed integer types
public	Compare_sint8				as	'Array_Compare_sint8'
public	Compare_sint16				as	'Array_Compare_sint16'
public	Compare_sint32				as	'Array_Compare_sint32'
public	Compare_sint64				as	'Array_Compare_sint64'
public	Compare_sint8				as	'_ZN5Array7CompareEPKaS1_m'
public	Compare_sint16				as	'_ZN5Array7CompareEPKsS1_m'
public	Compare_sint32				as	'_ZN5Array7CompareEPKiS1_m'
public	Compare_sint64				as	'_ZN5Array7CompareEPKxS1_m'

; Floating-point types
public	Compare_flt32				as	'Array_Compare_flt32'
public	Compare_flt64				as	'Array_Compare_flt64'
public	Compare_flt32				as	'_ZN5Array7CompareEPKfS1_m'
public	Compare_flt64				as	'_ZN5Array7CompareEPKdS1_m'

; Other types
public	Compare_uint64				as	'Array_Compare_size'
public	Compare_uint8				as	'Array_Compare'
public	Compare_uint64				as	'_ZN5Array7CompareEPKmS1_m'
public	Compare_uint8				as	'_ZN5Array7CompareEPKvS1_m'

;==============================================================================;
;       Object array comparison                                                ;
;==============================================================================;
public	Compare						as	'Array_CompareObj'
public	Compare						as	'_ZN5Array10CompareObjEPPKvS2_mPFxS1_S1_E'

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for differences                                                  ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Regular array check                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	CheckDiff8					as	'Array_CheckDiff_uint8'
public	CheckDiff16					as	'Array_CheckDiff_uint16'
public	CheckDiff32					as	'Array_CheckDiff_uint32'
public	CheckDiff64					as	'Array_CheckDiff_uint64'
public	CheckDiff8					as	'_ZN5Array9CheckDiffEPKhS1_m'
public	CheckDiff16					as	'_ZN5Array9CheckDiffEPKtS1_m'
public	CheckDiff32					as	'_ZN5Array9CheckDiffEPKjS1_m'
public	CheckDiff64					as	'_ZN5Array9CheckDiffEPKyS1_m'

; Signed integer types
public	CheckDiff8					as	'Array_CheckDiff_sint8'
public	CheckDiff16					as	'Array_CheckDiff_sint16'
public	CheckDiff32					as	'Array_CheckDiff_sint32'
public	CheckDiff64					as	'Array_CheckDiff_sint64'
public	CheckDiff8					as	'_ZN5Array9CheckDiffEPKaS1_m'
public	CheckDiff16					as	'_ZN5Array9CheckDiffEPKsS1_m'
public	CheckDiff32					as	'_ZN5Array9CheckDiffEPKiS1_m'
public	CheckDiff64					as	'_ZN5Array9CheckDiffEPKxS1_m'

; Floating-point types
public	CheckDiff32					as	'Array_CheckDiff_flt32'
public	CheckDiff64					as	'Array_CheckDiff_flt64'
public	CheckDiff32					as	'_ZN5Array9CheckDiffEPKfS1_m'
public	CheckDiff64					as	'_ZN5Array9CheckDiffEPKdS1_m'

; Other types
public	CheckDiff64					as	'Array_CheckDiff_size'
public	CheckDiff8					as	'Array_CheckDiff'
public	CheckDiff64					as	'_ZN5Array9CheckDiffEPKmS1_m'
public	CheckDiff8					as	'_ZN5Array9CheckDiffEPKvmS1_m'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Object array check                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	CheckDiff					as	'Array_CheckDiffObj'
public	CheckDiff					as	'_ZN5Array12CheckDiffObjEPPKvS2_mPFxS1_S1_E'

;==============================================================================;
;       Check for duplicate values                                             ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Regular array check                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	CheckDup8					as	'Array_CheckDup_uint8'
public	CheckDup16					as	'Array_CheckDup_uint16'
public	CheckDup32					as	'Array_CheckDup_uint32'
public	CheckDup64					as	'Array_CheckDup_uint64'
public	CheckDup8					as	'_ZN5Array8CheckDupEPKhm'
public	CheckDup16					as	'_ZN5Array8CheckDupEPKtm'
public	CheckDup32					as	'_ZN5Array8CheckDupEPKjm'
public	CheckDup64					as	'_ZN5Array8CheckDupEPKym'

; Signed integer types
public	CheckDup8					as	'Array_CheckDup_sint8'
public	CheckDup16					as	'Array_CheckDup_sint16'
public	CheckDup32					as	'Array_CheckDup_sint32'
public	CheckDup64					as	'Array_CheckDup_sint64'
public	CheckDup8					as	'_ZN5Array8CheckDupEPKam'
public	CheckDup16					as	'_ZN5Array8CheckDupEPKsm'
public	CheckDup32					as	'_ZN5Array8CheckDupEPKim'
public	CheckDup64					as	'_ZN5Array8CheckDupEPKxm'

; Floating-point types
public	CheckDup32					as	'Array_CheckDup_flt32'
public	CheckDup64					as	'Array_CheckDup_flt64'
public	CheckDup32					as	'_ZN5Array8CheckDupEPKfm'
public	CheckDup64					as	'_ZN5Array8CheckDupEPKdm'

; Other types
public	CheckDup64					as	'Array_CheckDup_size'
public	CheckDup64					as	'_ZN5Array8CheckDupEPKmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Object array check                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	CheckDup					as	'Array_CheckDupObj'
public	CheckDup					as	'String_CheckDup_char8'
public	CheckDup					as	'String_CheckDup_char16'
public	CheckDup					as	'String_CheckDup_char32'
public	CheckDup					as	'_ZN5Array11CheckDupObjEPPKvmPFxS1_S1_E'
public	CheckDup					as	'_ZN6String8CheckDupEPPKcmPFxS1_S1_E'
public	CheckDup					as	'_ZN6String8CheckDupEPPKsmPFxS1_S1_E'
public	CheckDup					as	'_ZN6String8CheckDupEPPKimPFxS1_S1_E'

;==============================================================================;
;       Check for sort order                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Regular array check                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Check for ascending sort order                                         ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	CheckSortAsc_uint8			as	'Array_CheckSortAsc_uint8'
public	CheckSortAsc_uint16			as	'Array_CheckSortAsc_uint16'
public	CheckSortAsc_uint32			as	'Array_CheckSortAsc_uint32'
public	CheckSortAsc_uint64			as	'Array_CheckSortAsc_uint64'
public	CheckSortAsc_uint8			as	'_ZN5Array12CheckSortAscEPKhm'
public	CheckSortAsc_uint16			as	'_ZN5Array12CheckSortAscEPKtm'
public	CheckSortAsc_uint32			as	'_ZN5Array12CheckSortAscEPKjm'
public	CheckSortAsc_uint64			as	'_ZN5Array12CheckSortAscEPKym'

; Signed integer types
public	CheckSortAsc_sint8			as	'Array_CheckSortAsc_sint8'
public	CheckSortAsc_sint16			as	'Array_CheckSortAsc_sint16'
public	CheckSortAsc_sint32			as	'Array_CheckSortAsc_sint32'
public	CheckSortAsc_sint64			as	'Array_CheckSortAsc_sint64'
public	CheckSortAsc_sint8			as	'_ZN5Array12CheckSortAscEPKam'
public	CheckSortAsc_sint16			as	'_ZN5Array12CheckSortAscEPKsm'
public	CheckSortAsc_sint32			as	'_ZN5Array12CheckSortAscEPKim'
public	CheckSortAsc_sint64			as	'_ZN5Array12CheckSortAscEPKxm'

; Floating-point types
public	CheckSortAsc_flt32			as	'Array_CheckSortAsc_flt32'
public	CheckSortAsc_flt64			as	'Array_CheckSortAsc_flt64'
public	CheckSortAsc_flt32			as	'_ZN5Array12CheckSortAscEPKfm'
public	CheckSortAsc_flt64			as	'_ZN5Array12CheckSortAscEPKdm'

; Other types
public	CheckSortAsc_sint64			as	'Array_CheckSortAsc_size'
public	CheckSortAsc_sint64			as	'_ZN5Array12CheckSortAscEPKmm'

;------------------------------------------------------------------------------;
;       Check for descending sort order                                        ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	CheckSortDsc_uint8			as	'Array_CheckSortDsc_uint8'
public	CheckSortDsc_uint16			as	'Array_CheckSortDsc_uint16'
public	CheckSortDsc_uint32			as	'Array_CheckSortDsc_uint32'
public	CheckSortDsc_uint64			as	'Array_CheckSortDsc_uint64'
public	CheckSortDsc_uint8			as	'_ZN5Array12CheckSortDscEPKhm'
public	CheckSortDsc_uint16			as	'_ZN5Array12CheckSortDscEPKtm'
public	CheckSortDsc_uint32			as	'_ZN5Array12CheckSortDscEPKjm'
public	CheckSortDsc_uint64			as	'_ZN5Array12CheckSortDscEPKym'

; Signed integer types
public	CheckSortDsc_sint8			as	'Array_CheckSortDsc_sint8'
public	CheckSortDsc_sint16			as	'Array_CheckSortDsc_sint16'
public	CheckSortDsc_sint32			as	'Array_CheckSortDsc_sint32'
public	CheckSortDsc_sint64			as	'Array_CheckSortDsc_sint64'
public	CheckSortDsc_sint8			as	'_ZN5Array12CheckSortDscEPKam'
public	CheckSortDsc_sint16			as	'_ZN5Array12CheckSortDscEPKsm'
public	CheckSortDsc_sint32			as	'_ZN5Array12CheckSortDscEPKim'
public	CheckSortDsc_sint64			as	'_ZN5Array12CheckSortDscEPKxm'

; Floating-point types
public	CheckSortDsc_flt32			as	'Array_CheckSortDsc_flt32'
public	CheckSortDsc_flt64			as	'Array_CheckSortDsc_flt64'
public	CheckSortDsc_flt32			as	'_ZN5Array12CheckSortDscEPKfm'
public	CheckSortDsc_flt64			as	'_ZN5Array12CheckSortDscEPKdm'

; Other types
public	CheckSortDsc_sint64			as	'Array_CheckSortDsc_size'
public	CheckSortDsc_sint64			as	'_ZN5Array12CheckSortDscEPKmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Object array check                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Check for ascending sort order                                         ;
;------------------------------------------------------------------------------;
public	CheckSortAsc				as	'Array_CheckSortObjAsc'
public	CheckSortAsc				as	'String_CheckSortAsc_char8'
public	CheckSortAsc				as	'String_CheckSortAsc_char16'
public	CheckSortAsc				as	'String_CheckSortAsc_char32'
public	CheckSortAsc				as	'_ZN5Array15CheckSortObjAscEPPKvmPFxS1_S1_E'
public	CheckSortAsc				as	'_ZN6String12CheckSortAscEPPKcmPFxS1_S1_E'
public	CheckSortAsc				as	'_ZN6String12CheckSortAscEPPKsmPFxS1_S1_E'
public	CheckSortAsc				as	'_ZN6String12CheckSortAscEPPKimPFxS1_S1_E'

;------------------------------------------------------------------------------;
;       Check for descending sort order                                        ;
;------------------------------------------------------------------------------;
public	CheckSortDsc				as	'Array_CheckSortObjDsc'
public	CheckSortDsc				as	'String_CheckSortDsc_char8'
public	CheckSortDsc				as	'String_CheckSortDsc_char16'
public	CheckSortDsc				as	'String_CheckSortDsc_char32'
public	CheckSortDsc				as	'_ZN5Array15CheckSortObjDscEPPKvmPFxS1_S1_E'
public	CheckSortDsc				as	'_ZN6String12CheckSortDscEPPKcmPFxS1_S1_E'
public	CheckSortDsc				as	'_ZN6String12CheckSortDscEPPKsmPFxS1_S1_E'
public	CheckSortDsc				as	'_ZN6String12CheckSortDscEPPKimPFxS1_S1_E'

;==============================================================================;
;       Check for infinite values                                              ;
;==============================================================================;
public	CheckInf_flt32				as	'Array_CheckInf_flt32'
public	CheckInf_flt64				as	'Array_CheckInf_flt64'
public	CheckInf_flt32				as	'_ZN5Array8CheckInfEPKfm'
public	CheckInf_flt64				as	'_ZN5Array8CheckInfEPKdm'

;==============================================================================;
;       Check for NaN values                                                   ;
;==============================================================================;
public	CheckNaN_flt32				as	'Array_CheckNaN_flt32'
public	CheckNaN_flt64				as	'Array_CheckNaN_flt64'
public	CheckNaN_flt32				as	'_ZN5Array8CheckNaNEPKfm'
public	CheckNaN_flt64				as	'_ZN5Array8CheckNaNEPKdm'

;==============================================================================;
;       Check for overlap                                                      ;
;==============================================================================;

; Unsigned integer types
public	Overlap8					as	'Array_Overlap_uint8'
public	Overlap16					as	'Array_Overlap_uint16'
public	Overlap32					as	'Array_Overlap_uint32'
public	Overlap64					as	'Array_Overlap_uint64'
public	Overlap8					as	'_ZN5Array7OverlapEPKhmS1_m'
public	Overlap16					as	'_ZN5Array7OverlapEPKtmS1_m'
public	Overlap32					as	'_ZN5Array7OverlapEPKjmS1_m'
public	Overlap64					as	'_ZN5Array7OverlapEPKymS1_m'

; Signed integer types
public	Overlap8					as	'Array_Overlap_sint8'
public	Overlap16					as	'Array_Overlap_sint16'
public	Overlap32					as	'Array_Overlap_sint32'
public	Overlap64					as	'Array_Overlap_sint64'
public	Overlap8					as	'_ZN5Array7OverlapEPKamS1_m'
public	Overlap16					as	'_ZN5Array7OverlapEPKsmS1_m'
public	Overlap32					as	'_ZN5Array7OverlapEPKimS1_m'
public	Overlap64					as	'_ZN5Array7OverlapEPKxmS1_m'

; Floating-point types
public	Overlap32					as	'Array_Overlap_flt32'
public	Overlap64					as	'Array_Overlap_flt64'
public	Overlap32					as	'_ZN5Array7OverlapEPKfmS1_m'
public	Overlap64					as	'_ZN5Array7OverlapEPKdmS1_m'

; Other types
public	Overlap64					as	'Array_Overlap_size'
public	Overlap8					as	'Array_Overlap'
public	Overlap64					as	'_ZN5Array7OverlapEPKmmS1_m'
public	Overlap8					as	'_ZN5Array7OverlapEPKvmS1_m'

;******************************************************************************;
;       Array hashing                                                          ;
;******************************************************************************;

;==============================================================================;
;       32-bit hash functions                                                  ;
;==============================================================================;

; Unsigned integer types
public	Hash32_bit8					as	'Array_Hash32_uint8'
public	Hash32_bit16				as	'Array_Hash32_uint16'
public	Hash32_bit32				as	'Array_Hash32_uint32'
public	Hash32_bit64				as	'Array_Hash32_uint64'
public	Hash32_bit8					as	'_ZN5Array6Hash32EPKhm'
public	Hash32_bit16				as	'_ZN5Array6Hash32EPKtm'
public	Hash32_bit32				as	'_ZN5Array6Hash32EPKjm'
public	Hash32_bit64				as	'_ZN5Array6Hash32EPKym'

; Signed integer types
public	Hash32_bit8					as	'Array_Hash32_sint8'
public	Hash32_bit16				as	'Array_Hash32_sint16'
public	Hash32_bit32				as	'Array_Hash32_sint32'
public	Hash32_bit64				as	'Array_Hash32_sint64'
public	Hash32_bit8					as	'_ZN5Array6Hash32EPKam'
public	Hash32_bit16				as	'_ZN5Array6Hash32EPKsm'
public	Hash32_bit32				as	'_ZN5Array6Hash32EPKim'
public	Hash32_bit64				as	'_ZN5Array6Hash32EPKxm'

; Floating-point types
public	Hash32_bit32				as	'Array_Hash32_flt32'
public	Hash32_bit64				as	'Array_Hash32_flt64'
public	Hash32_bit32				as	'_ZN5Array6Hash32EPKfm'
public	Hash32_bit64				as	'_ZN5Array6Hash32EPKdm'

; Other types
public	Hash32_bit64				as	'Array_Hash32_size'
public	Hash32_bit8					as	'Array_Hash32'
public	Hash32_bit64				as	'_ZN5Array6Hash32EPKmm'
public	Hash32_bit8					as	'_ZN5Array6Hash32EPKvm'

;==============================================================================;
;       64-bit hash functions                                                  ;
;==============================================================================;

; Unsigned integer types
public	Hash64_bit8					as	'Array_Hash64_uint8'
public	Hash64_bit16				as	'Array_Hash64_uint16'
public	Hash64_bit32				as	'Array_Hash64_uint32'
public	Hash64_bit64				as	'Array_Hash64_uint64'
public	Hash64_bit8					as	'_ZN5Array6Hash64EPKhm'
public	Hash64_bit16				as	'_ZN5Array6Hash64EPKtm'
public	Hash64_bit32				as	'_ZN5Array6Hash64EPKjm'
public	Hash64_bit64				as	'_ZN5Array6Hash64EPKym'

; Signed integer types
public	Hash64_bit8					as	'Array_Hash64_sint8'
public	Hash64_bit16				as	'Array_Hash64_sint16'
public	Hash64_bit32				as	'Array_Hash64_sint32'
public	Hash64_bit64				as	'Array_Hash64_sint64'
public	Hash64_bit8					as	'_ZN5Array6Hash64EPKam'
public	Hash64_bit16				as	'_ZN5Array6Hash64EPKsm'
public	Hash64_bit32				as	'_ZN5Array6Hash64EPKim'
public	Hash64_bit64				as	'_ZN5Array6Hash64EPKxm'

; Floating-point types
public	Hash64_bit32				as	'Array_Hash64_flt32'
public	Hash64_bit64				as	'Array_Hash64_flt64'
public	Hash64_bit32				as	'_ZN5Array6Hash64EPKfm'
public	Hash64_bit64				as	'_ZN5Array6Hash64EPKdm'

; Other types
public	Hash64_bit64				as	'Array_Hash64_size'
public	Hash64_bit8					as	'Array_Hash64'
public	Hash64_bit64				as	'_ZN5Array6Hash64EPKmm'
public	Hash64_bit8					as	'_ZN5Array6Hash64EPKvm'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Initialization                                                         ;
;******************************************************************************;
macro	INIT	reg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		rdx							; register which holds value
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
vector	equ		xmm1						; value to process with
data	equ		xmm2						; register which holds original data
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		movq	vector, value				; vector = value
		clone	vector, scale				; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	data, vector				; data = vector
	pblendvb	data, [array]				; blend value with original data
		movdqa	[array], data				; array[0] = vector
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	[ptr + % * VSIZE], vector	; ptr[i] = vector
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		pandn	blend, [table + size]
		movdqa	data, [array + index]		; data = array[index]
	pblendvb	data, vector				; blend value with original data
		movdqa	[array + index], data		; array[index] = vector
		ret
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		[array], reg				; array[0] = reg
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INIT_FLT	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		xmm0						; register which holds value
;---[Internal variables]-------------------
reg		equ		rdx							; register which holds value
if x eq s
Init	= Init_int32						; function to call
else if x eq d
Init	= Init_int64						; function to call
end if
;------------------------------------------
		movq	reg, value					; load mask
		jmp		Init						; return Init (array, size, value)
}

; Integer types
Init_int8:	INIT	dl, b
Init_int16:	INIT	dx, w
Init_int32:	INIT	edx, d
Init_int64:	INIT	rdx, q

; Floating-point types
Init_flt32:	INIT_FLT	s
Init_flt64:	INIT_FLT	d

;******************************************************************************;
;       Copying arrays                                                         ;
;******************************************************************************;
macro	COPY_FWD	reg, x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of target array
ptr1	equ		r10							; temporary pointer to target array
ptr2	equ		r11							; temporary pointer to source array
temp	equ		xmm0						; temporary register
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[source]					; prefetch data
	prefetchnta	[target]					; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	target, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		cmp		size, VSIZE / bytes			; if (size < VSIZE / bytes)
		jb		.sloop						;     then skip vector code
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		index, target
		and		index, VMASK				; get array offset from vector boundary
		neg		index						; index = -index
		lea		ptr2, [source + index]		; ptr2 = source + index
		lea		ptr1, [target + index]		; ptr1 = target + index
;---[Unaligned operation]------------------
		sub		size, index					; size -= index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [source]				; temp = source[0]
		movdqu	[target], temp				; target[0] = temp
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [ptr2 + % * VSIZE]	; temp = ptr2[i]
		movdqa	[ptr1 + % * VSIZE], temp	; ptr1[i] = temp
end repeat
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
		add		ptr2, CLINE					; ptr2 += CLINE
		add		ptr1, CLINE					; ptr1 += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		movdqu	temp, [source + index]		; temp = source[index]
		movdqu	[target + index], temp		; target[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	mov		reg, [source]				; reg = source[0]
		mov		[target], reg				; target[0] = reg
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	COPY_BWD	reg, x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of target array
ptr1	equ		r10							; temporary pointer to target array
ptr2	equ		r11							; temporary pointer to source array
temp	equ		xmm0						; temporary register
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		lea		source, [source + size * bytes]
		lea		target, [target + size * bytes]
	prefetchnta	[source]					; prefetch data
	prefetchnta	[target]					; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	target, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		cmp		size, VSIZE / bytes			; if (size < VSIZE / bytes)
		jb		.sloop						;     then skip vector code
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		sub		source, VSIZE				; source -= VSIZE
		sub		target, VSIZE				; target -= VSIZE
		mov		index, target
		neg		index
		and		index, VMASK				; get array offset from vector boundary
		lea		ptr2, [source + index]		; ptr2 = source + index
		lea		ptr1, [target + index]		; ptr1 = target + index
;---[Unaligned operation]------------------
		add		size, index					; size += index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [source]				; temp = source[0]
		movdqu	[target], temp				; target[0] = temp
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [ptr2 - % * VSIZE]	; temp = ptr2[-i]
		movdqa	[ptr1 - % * VSIZE], temp	; ptr1[-i] = temp
end repeat
	prefetchnta	[ptr2 - PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr1 - PSTEP]				; prefetch next portion of data
		sub		ptr2, CLINE					; ptr2 -= CLINE
		sub		ptr1, CLINE					; ptr1 -= CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	sub		index, size					; index -= size
		movdqu	temp, [source + index]		; temp = source[index]
		movdqu	[target + index], temp		; target[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	sub		source, bytes				; source--
		sub		target, bytes				; target--
		mov		reg, [source]				; reg = source[0]
		mov		[target], reg				; target[0] = reg
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

; Copying arrays in forward direction
CopyFwd8:	COPY_FWD	al, b
CopyFwd16:	COPY_FWD	ax, w
CopyFwd32:	COPY_FWD	eax, d
CopyFwd64:	COPY_FWD	rax, q

; Copying arrays in backward direction
CopyBwd8:	COPY_BWD	al, b
CopyBwd16:	COPY_BWD	ax, w
CopyBwd32:	COPY_BWD	eax, d
CopyBwd64:	COPY_BWD	rax, q

;******************************************************************************;
;       Moving arrays                                                          ;
;******************************************************************************;
macro	MOVE	reg, x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
diff	equ		rax							; difference between pointers
temp	equ		rcx							; temporary register
if x eq b
CopyFwd	= CopyFwd8							; copy in forward direction function
CopyBwd	= CopyBwd8							; copy in backward direction function
scale	= 0									; scale value
else if x eq w
CopyFwd	= CopyFwd16							; copy in forward direction function
CopyBwd	= CopyBwd16							; copy in backward direction function
scale	= 1									; scale value
else if x eq d
CopyFwd	= CopyFwd32							; copy in forward direction function
CopyBwd	= CopyBwd32							; copy in backward direction function
scale	= 2									; scale value
else if x eq q
CopyFwd	= CopyFwd64							; copy in forward direction function
CopyBwd	= CopyBwd64							; copy in backward direction function
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		diff, target				; diff = target - source
		sub		diff, source				; if (diff == 0)
		je		.exit						;     then go to exit
;---[Find difference between pointers]-----
		mov		temp, diff					; temp = diff
		sar		temp, 63					; temp >>= 63
		xor		diff, temp					; diff ^= temp
		sub		diff, temp					; diff -= temp
		cmp		target, source				; if (target > source)
		ja		.else						;     then go to else branch
;---[if target <= source]------------------
		cmp		diff, VSIZE					; if (diff > VSIZE)
		ja		CopyFwd						;     call CopyFwd (target, source, size)
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Move forward loop]--------------------
.floop:	mov		reg, [source]
		mov		[target], reg				; target[0] = source[0]
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.floop						; do while (size != 0)
;---[End of move forward loop]-------------
		ret
;---[else brench]--------------------------
.else:	cmp		diff, VSIZE					; if (diff > VSIZE)
		ja		CopyBwd						;     call CopyBwd (target, source, size)
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		lea		source, [source + size * bytes]
		lea		target, [target + size * bytes]
;---[Move backward loop]-------------------
.bloop:	sub		source, bytes				; source--
		sub		target, bytes				; target--
		mov		reg, [source]
		mov		[target], reg				; target[0] = source[0]
		sub		size, 1						; size--
		jnz		.bloop						; do while (size != 0)
;---[End of move backward loop]------------
.exit:	ret
}
Move8:	MOVE	al, b
Move16:	MOVE	ax, w
Move32:	MOVE	eax, d
Move64:	MOVE	rax, q

;******************************************************************************;
;       Pattern cloning                                                        ;
;******************************************************************************;
macro	CLONE	temp, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
psize	equ		rdx							; pattern size (count of elements)
;---[Internal variables]-------------------
ptr		equ		psize						; pointer to first element after pattern
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	psize, psize				; if (psize == 0)
		jz		.exit						;     then go to exit
		sub		size, psize					; size -= psize
		jbe		.exit						; if (size <= psize), then go to exit
		lea		ptr, [array + psize * bytes]; ptr = array + psize
;---[Cloning loop]-------------------------
.loop:	mov		temp, [array]				; temp = array[0]
		mov		[ptr], temp					; ptr[0] = temp
		add		array, bytes				; array++
		add		ptr, bytes					; ptr++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
Clone8:		CLONE	al, 0
Clone16:	CLONE	ax, 1
Clone32:	CLONE	eax, 2
Clone64:	CLONE	rax, 3

;******************************************************************************;
;       Data conversion                                                        ;
;******************************************************************************;
macro	CONVERT	reg, move1, move2, vector, scalar, tscale, sscale, TSIZE, SSIZE
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
tsize	equ		rdx							; target array size (count of elements)
;---[Internal variables]-------------------
ssize	equ		rcx							; source array size (count of elements)
tindex	equ		r8							; offset from beginning of target array
sindex	equ		r9							; offset from beginning of source array
ptr1	equ		r10							; temporary pointer to target array
ptr2	equ		r11							; temporary pointer to source array
temp	equ		xmm0						; temporary register
if tscale >= sscale
scale	= tscale - sscale					; scale value
else
scale	= sscale - tscale					; scale value
end if
tbytes	= 1 shl tscale						; size of target array element (bytes)
sbytes	= 1 shl sscale						; size of source array element (bytes)
tmask	= tbytes - 1						; target elements aligning mask
smask	= sbytes - 1						; source elements aligning mask
MASK	= TSIZE - 1							; vector boundary mask
;------------------------------------------
	prefetchnta	[source]					; prefetch data
		test	tsize, tsize				; if (tsize == 0)
		jz		.exit						;     then go to exit
		shl		tsize, tscale				; convert tsize to bytes
		mov		ssize, tsize				; ssize = tsize
if tscale > sscale
		shr		ssize, tscale - sscale		; convert ssize to bytes
else if sscale > tscale
		shl		ssize, sscale - tscale		; convert ssize to bytes
end if
		test	source, smask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	target, tmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		ssize, SSIZE				; if (ssize < SSIZE)
		jb		.sloop						;     then skip vector code
		cmp		tsize, TSIZE				; if (tsize < TSIZE)
		jb		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		tindex, target
		and		tindex, MASK				; get array offset from vector boundary
		mov		sindex, tindex
if tscale > sscale
		shr		sindex, tscale - sscale		; convert sindex to bytes
else if sscale > tscale
		shl		sindex, sscale - tscale		; convert sindex to bytes
end if
		neg		sindex						; sindex = -sindex
		neg		tindex						; tindex = -tindex
		lea		ptr2, [source + sindex]		; ptr2 = source + sindex
		lea		ptr1, [target + tindex]		; ptr1 = target + tindex
;---[Unaligned operation]------------------
		sub		ssize, sindex				; ssize -= sindex
		sub		ssize, SSIZE				; if (ssize <= SSIZE)
		sub		tsize, tindex				; tsize -= tindex
		sub		tsize, TSIZE				; if (tsize <= TSIZE)
		jbe		.tail						;     then process array tails
		vector	reg, move1, target, source, 0, 0
;---[Vector loop]--------------------------
.vloop:	add		sindex, SSIZE				; sindex += SSIZE
		sub		ssize, SSIZE				; ssize -= SSIZE
		add		tindex, TSIZE				; tindex += TSIZE
		sub		tsize, TSIZE				; if (tsize <= TSIZE)
		jbe		.tail						;     then process array tails
		vector	reg, move2, ptr1, ptr2, 1 * TSIZE, 1 * SSIZE
		add		sindex, SSIZE				; sindex += SSIZE
		sub		ssize, SSIZE				; ssize -= SSIZE
		add		tindex, TSIZE				; tindex += TSIZE
		sub		tsize, TSIZE				; if (tsize <= TSIZE)
		jbe		.tail						;     then process array tails
		vector	reg, move2, ptr1, ptr2, 2 * TSIZE, 2 * SSIZE
		add		sindex, SSIZE				; sindex += SSIZE
		sub		ssize, SSIZE				; ssize -= SSIZE
		add		tindex, TSIZE				; tindex += TSIZE
		sub		tsize, TSIZE				; if (tsize <= TSIZE)
		jbe		.tail						;     then process array tails
		vector	reg, move2, ptr1, ptr2, 3 * TSIZE, 3 * SSIZE
		add		sindex, SSIZE				; sindex += SSIZE
		sub		ssize, SSIZE				; ssize -= SSIZE
		add		tindex, TSIZE				; tindex += TSIZE
		sub		tsize, TSIZE				; if (tsize <= TSIZE)
		jbe		.tail						;     then process array tails
		vector	reg, move2, ptr1, ptr2, 4 * TSIZE, 4 * SSIZE
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of data
		add		ptr2, 4 * SSIZE				; ptr2 += 4 * SSIZE
		add		ptr1, 4 * TSIZE				; ptr1 += 4 * TSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		sindex, ssize				; sindex += ssize
		add		tindex, tsize				; tindex += tsize
		vector	reg, move1, target, source, tindex, sindex
		ret
;---[Scalar loop]--------------------------
.sloop:	scalar	reg							; make scalar conversion
		add		source, sbytes				; source++
		add		target, tbytes				; target++
		sub		tsize, tbytes				; tsize--
		jnz		.sloop						; do while (tsize != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

;==============================================================================;
;       Conversion between floating-point types                                ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Convert flt64 to flt32                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CONVERT_FLT64_TO_FLT32_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
		movupd	temp, [iter2 + soffst]
	cvtpd2ps	temp, temp
		move	[iter1 + toffst], temp
}
macro	CONVERT_FLT64_TO_FLT32_SCALAR	reg
{
	cvtsd2ss	temp, [source]
		movss	[target], temp
}
ConvertToFlt32_flt64:	CONVERT	eax, movlps, movlps, CONVERT_FLT64_TO_FLT32_VECTOR, CONVERT_FLT64_TO_FLT32_SCALAR, 2, 3, 8, 16

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Convert flt32 to flt64                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CONVERT_FLT32_TO_FLT64_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
		movlps	temp, [iter2 + soffst]
	cvtps2pd	temp, temp
		move	[iter1 + toffst], temp
}
macro	CONVERT_FLT32_TO_FLT64_SCALAR	reg
{
	cvtss2sd	temp, [source]
		movsd	[target], temp
}
ConvertToFlt64_flt32:	CONVERT	rax, movupd, movapd, CONVERT_FLT32_TO_FLT64_VECTOR, CONVERT_FLT32_TO_FLT64_SCALAR, 3, 2, 16, 8

;==============================================================================;
;       Conversion from signed integer types to floating-point types           ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Convert sint32 to flt32                                                ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CONVERT_SINT32_TO_FLT32_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
		movdqu	temp, [iter2 + soffst]
	cvtdq2ps	temp, temp
		move	[iter1 + toffst], temp
}
macro	CONVERT_SINT32_TO_FLT32_SCALAR	reg
{
	cvtsi2ss 	temp, dword [source]
		movss	[target], temp
}
ConvertToFlt32_sint32:	CONVERT	eax, movups, movaps, CONVERT_SINT32_TO_FLT32_VECTOR, CONVERT_SINT32_TO_FLT32_SCALAR, 2, 2, 16, 16

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Convert sint64 to flt32                                                ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CONVERT_SINT64_TO_FLT32_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
	cvtsi2ss 	temp, qword [iter2 + soffst + 0 * sbytes]
		move	[iter1 + toffst + 0 * tbytes], temp
	cvtsi2ss 	temp, qword [iter2 + soffst + 1 * sbytes]
		move	[iter1 + toffst + 1 * tbytes], temp
}
macro	CONVERT_SINT64_TO_FLT32_SCALAR	reg
{
	cvtsi2ss 	temp, qword [source]
		movss	[target], temp
}
ConvertToFlt32_sint64:	CONVERT	eax, movss, movss, CONVERT_SINT64_TO_FLT32_VECTOR, CONVERT_SINT64_TO_FLT32_SCALAR, 2, 3, 8, 16

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Convert sint32 to flt64                                                ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CONVERT_SINT32_TO_FLT64_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
		movq	temp, [iter2 + soffst]
	cvtdq2pd	temp, temp
		move	[iter1 + toffst], temp
}
macro	CONVERT_SINT32_TO_FLT64_SCALAR	reg
{
	cvtsi2sd 	temp, dword [source]
		movsd	[target], temp
}
ConvertToFlt64_sint32:	CONVERT	rax, movupd, movapd, CONVERT_SINT32_TO_FLT64_VECTOR, CONVERT_SINT32_TO_FLT64_SCALAR, 3, 2, 16, 8

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Convert sint64 to flt64                                                ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CONVERT_SINT64_TO_FLT64_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
	cvtsi2sd 	temp, qword [iter2 + soffst + 0 * sbytes]
		move	[iter1 + toffst + 0 * tbytes], temp
	cvtsi2sd 	temp, qword [iter2 + soffst + 1 * sbytes]
		move	[iter1 + toffst + 1 * tbytes], temp
}
macro	CONVERT_SINT64_TO_FLT64_SCALAR	reg
{
	cvtsi2sd 	temp, qword [source]
		movsd	[target], temp
}
ConvertToFlt64_sint64:	CONVERT	rax, movsd, movsd, CONVERT_SINT64_TO_FLT64_VECTOR, CONVERT_SINT64_TO_FLT64_SCALAR, 3, 3, 16, 16

;==============================================================================;
;       Conversion from floating-point types to signed integer types           ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Convert flt32 to sint32                                                ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CONVERT_FLT32_TO_SINT32_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
		movups	temp, [iter2 + soffst]
	cvtps2dq	temp, temp
		move	[iter1 + toffst], temp
}
macro	CONVERT_FLT32_TO_SINT32_SCALAR	reg
{
	cvtss2si 	reg, [source]
		mov		[target], reg
}
ConvertToSint32_flt32:	CONVERT	eax, movdqu, movdqa, CONVERT_FLT32_TO_SINT32_VECTOR, CONVERT_FLT32_TO_SINT32_SCALAR, 2, 2, 16, 16

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Convert flt64 to sint32                                                ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CONVERT_FLT64_TO_SINT32_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
		movupd	temp, [iter2 + soffst]
	cvtpd2dq	temp, temp
		move	[iter1 + toffst], temp
}
macro	CONVERT_FLT64_TO_SINT32_SCALAR	reg
{
	cvtsd2si 	reg, [source]
		mov		[target], reg
}
ConvertToSint32_flt64:	CONVERT	eax, movq, movq, CONVERT_FLT64_TO_SINT32_VECTOR, CONVERT_FLT64_TO_SINT32_SCALAR, 2, 3, 8, 16

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Convert flt32 to sint64                                                ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CONVERT_FLT32_TO_SINT64_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
	cvtss2si 	reg, [iter2 + soffst + 0 * sbytes]
		move	[iter1 + toffst + 0 * tbytes], reg
	cvtss2si 	reg, [iter2 + soffst + 1 * sbytes]
		move	[iter1 + toffst + 1 * tbytes], reg
}
macro	CONVERT_FLT32_TO_SINT64_SCALAR	reg
{
	cvtss2si 	reg, [source]
		mov		[target], reg
}
ConvertToSint64_flt32:	CONVERT	rax, mov, mov, CONVERT_FLT32_TO_SINT64_VECTOR, CONVERT_FLT32_TO_SINT64_SCALAR, 3, 2, 16, 8

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Convert flt64 to sint64                                                ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CONVERT_FLT64_TO_SINT64_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
	cvtsd2si 	reg, [iter2 + soffst + 0 * sbytes]
		move	[iter1 + toffst + 0 * tbytes], reg
	cvtsd2si 	reg, [iter2 + soffst + 1 * sbytes]
		move	[iter1 + toffst + 1 * tbytes], reg
}
macro	CONVERT_FLT64_TO_SINT64_SCALAR	reg
{
	cvtsd2si 	reg, [source]
		mov		[target], reg
}
ConvertToSint64_flt64:	CONVERT	rax, mov, mov, CONVERT_FLT64_TO_SINT64_VECTOR, CONVERT_FLT64_TO_SINT64_SCALAR, 3, 3, 16, 16

;==============================================================================;
;       Truncating from floating-point types to signed integer types           ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Truncate flt32 to sint32                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	TRUNCATE_FLT32_TO_SINT32_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
		movups	temp, [iter2 + soffst]
	cvttps2dq	temp, temp
		move	[iter1 + toffst], temp
}
macro	TRUNCATE_FLT32_TO_SINT32_SCALAR	reg
{
	cvttss2si 	reg, [source]
		mov		[target], reg
}
TruncateToSint32_flt32:	CONVERT	eax, movdqu, movdqa, TRUNCATE_FLT32_TO_SINT32_VECTOR, TRUNCATE_FLT32_TO_SINT32_SCALAR, 2, 2, 16, 16

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Truncate flt64 to sint32                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	TRUNCATE_FLT64_TO_SINT32_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
		movupd	temp, [iter2 + soffst]
	cvttpd2dq	temp, temp
		move	[iter1 + toffst], temp
}
macro	TRUNCATE_FLT64_TO_SINT32_SCALAR	reg
{
	cvttsd2si 	reg, [source]
		mov		[target], reg
}
TruncateToSint32_flt64:	CONVERT	eax, movq, movq, TRUNCATE_FLT64_TO_SINT32_VECTOR, TRUNCATE_FLT64_TO_SINT32_SCALAR, 2, 3, 8, 16

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Truncate flt32 to sint64                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	TRUNCATE_FLT32_TO_SINT64_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
	cvttss2si 	reg, [iter2 + soffst + 0 * sbytes]
		move	[iter1 + toffst + 0 * tbytes], reg
	cvttss2si 	reg, [iter2 + soffst + 1 * sbytes]
		move	[iter1 + toffst + 1 * tbytes], reg
}
macro	TRUNCATE_FLT32_TO_SINT64_SCALAR	reg
{
	cvttss2si 	reg, [source]
		mov		[target], reg
}
TruncateToSint64_flt32:	CONVERT	rax, mov, mov, TRUNCATE_FLT32_TO_SINT64_VECTOR, TRUNCATE_FLT32_TO_SINT64_SCALAR, 3, 2, 16, 8

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Truncate flt64 to sint64                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	TRUNCATE_FLT64_TO_SINT64_VECTOR	reg, move, iter1, iter2, toffst, soffst
{
	cvttsd2si 	reg, [iter2 + soffst + 0 * sbytes]
		move	[iter1 + toffst + 0 * tbytes], reg
	cvttsd2si 	reg, [iter2 + soffst + 1 * sbytes]
		move	[iter1 + toffst + 1 * tbytes], reg
}
macro	TRUNCATE_FLT64_TO_SINT64_SCALAR	reg
{
	cvttsd2si 	reg, [source]
		mov		[target], reg
}
TruncateToSint64_flt64:	CONVERT	rax, mov, mov, TRUNCATE_FLT64_TO_SINT64_VECTOR, TRUNCATE_FLT64_TO_SINT64_SCALAR, 3, 3, 16, 16

;******************************************************************************;
;       Bit field operations                                                   ;
;******************************************************************************;
macro	CHANGE_BIT		cmd, inv
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
index	equ		rsi							; bit position (index)
;---[Internal variables]-------------------
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
mask	equ		al							; bit mask
;------------------------------------------
		mov		shft, index
		and		shft, 0x7					; shft = index & 0x7
		mov		mask, 1
		shl		mask, low					; mask = 1 << shft
if inv
		not		mask						; mask = ~mask
end if
		shr		index, 3					; index >>= 3
		cmd		[array + index], mask		; change selected bit
		ret
}

;==============================================================================;
;       Get bit value from bit field                                           ;
;==============================================================================;
GetBit:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
index	equ		rsi							; bit position (index)
;---[Internal variables]-------------------
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
mask	equ		al							; bit mask
;------------------------------------------
		mov		shft, index
		and		shft, 0x7					; shft = index & 0x7
		mov		mask, 1
		shl		mask, low					; mask = 1 << shft
		shr		index, 3					; index >>= 3
		test	[array + index], mask		; test selected bit
		setnz	mask						; return bit state
		ret

;==============================================================================;
;       Set bit value in bit field                                             ;
;==============================================================================;
SetBit:		CHANGE_BIT	or, 0

;==============================================================================;
;       Reset bit value in bit field                                           ;
;==============================================================================;
ResetBit:	CHANGE_BIT	and, 1

;==============================================================================;
;       Invert bit value in bit field                                          ;
;==============================================================================;
InvertBit:	CHANGE_BIT	xor, 0

;******************************************************************************;
;       Bitwise operations                                                     ;
;******************************************************************************;

;==============================================================================;
;       Byte swap                                                              ;
;==============================================================================;
macro	SWAP	reg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
mask	equ		xmm1						; shuffle control mask
value	equ		xmm2						; value to operate with
data	equ		xmm3						; register which holds original data
if x eq b
mpos	= smask8							; swap mask
scale	= 0									; scale value
else if x eq w
mpos	= smask16							; swap mask
scale	= 1									; scale value
else if x eq d
mpos	= smask32							; swap mask
scale	= 2									; scale value
else if x eq q
mpos	= smask64							; swap mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		movdqa	mask, dqword [mpos]			; load shuffle control mask
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	data, [array]				; data = array[0]
		movdqa	value, [array]				; value = array[0]
		pshufb	value, mask					; reverse elements order in value
	pblendvb	value, data					; blend value with original data
		movdqa	[array], value				; array[0] = value
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	value, [ptr + % * VSIZE]	; value = ptr[i]
		pshufb	value, mask					; reverse elements order in value
		movdqa	[ptr + % * VSIZE], value	; ptr[i] = value
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		pandn	blend, [table + size]
		movdqa	data, [array + index]		; data = array[index]
		movdqa	value, [array + index]		; value = array[index]
		pshufb	value, mask					; reverse elements order in value
	pblendvb	data, value					; blend value with original data
		movdqa	[array + index], data		; array[index] = value
		ret
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		reg, [array]				; reg = array[0]
if scale = 1
		rol		reg, 8						; swap bytes
else if scale > 1
		bswap	reg							; swap bytes
end if
		mov		[array], reg				; array[0] = reg
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Normal exit]--------------------------
.exit:	ret
}
ByteSwap8:		SWAP	al, b
ByteSwap16:		SWAP	ax, w
ByteSwap32:		SWAP	eax, d
ByteSwap64:		SWAP	rax, q

;==============================================================================;
;       Bit reversal permutation                                               ;
;==============================================================================;
macro	BREV_SCLR	value, temp1, temp2, scale
{
;---[Internal variables]-------------------
if scale = 0
const11	= 0x55								; const #1 for stage #1
const12	= 0xAA								; const #2 for stage #1
const21	= 0x33								; const #1 for stage #2
const22	= 0xCC								; const #2 for stage #2
const31	= 0x0F								; const #1 for stage #3
const32	= 0xF0								; const #2 for stage #3
else if scale = 1
const11	= 0x5555							; const #1 for stage #1
const12	= 0xAAAA							; const #2 for stage #1
const21	= 0x3333							; const #1 for stage #2
const22	= 0xCCCC							; const #2 for stage #2
const31	= 0x0F0F							; const #1 for stage #3
const32	= 0xF0F0							; const #2 for stage #3
else if scale = 2
const11	= 0x55555555						; const #1 for stage #1
const12	= 0xAAAAAAAA						; const #2 for stage #1
const21	= 0x33333333						; const #1 for stage #2
const22	= 0xCCCCCCCC						; const #2 for stage #2
const31	= 0x0F0F0F0F						; const #1 for stage #3
const32	= 0xF0F0F0F0						; const #2 for stage #3
else if scale = 3
const11	= 0x5555555555555555				; const #1 for stage #1
const12	= 0xAAAAAAAAAAAAAAAA				; const #2 for stage #1
const21	= 0x3333333333333333				; const #1 for stage #2
const22	= 0xCCCCCCCCCCCCCCCC				; const #2 for stage #2
const31	= 0x0F0F0F0F0F0F0F0F				; const #1 for stage #3
const32	= 0xF0F0F0F0F0F0F0F0				; const #2 for stage #3
end if
;---[Stage #1]-----------------------------
		mov		temp1, const11
		and		temp1, value				; temp1 = const11
		mov		temp2, const12
		and		temp2, value				; temp2 = const12
		shl		temp1, 1					; temp1 = (value & temp1) << 1
		shr		temp2, 1					; temp2 = (value & temp2) >> 1
		or		temp1, temp2
		mov		value, temp1				; value = temp1 | temp2
;---[Stage #2]-----------------------------
		mov		temp1, const21
		and		temp1, value				; temp1 = const21
		mov		temp2, const22
		and		temp2, value				; temp2 = const22
		shl		temp1, 2					; temp1 = (value & temp1) << 2
		shr		temp2, 2					; temp2 = (value & temp2) >> 2
		or		temp1, temp2
		mov		value, temp1				; value = temp1 | temp2
;---[Stage #3]-----------------------------
		mov		temp1, const31
		and		temp1, value				; temp1 = const31
		mov		temp2, const32
		and		temp2, value				; temp2 = const32
		shl		temp1, 4					; temp1 = (value & temp1) << 4
		shr		temp2, 4					; temp2 = (value & temp2) >> 4
		or		temp1, temp2
		mov		value, temp1				; value = temp1 | temp2
;---[Swap bytes]---------------------------
if scale = 1
		rol		value, 8					; swap bytes
else if scale > 1
		bswap	value						; swap bytes
end if
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	BREV_VCTR	value, temp1, temp2, mask
{
;---[Stage #1]-----------------------------
		movdqa	temp1, value
		pand	temp1, dqword [bmask11]		; temp1 = bmask11
		movdqa	temp2, value
		pand	temp2, dqword [bmask12]		; temp2 = bmask12
		psllq	temp1, 1					; temp1 = (value & temp1) << 1
		psrlq	temp2, 1					; temp2 = (value & temp2) >> 1
		por		temp1, temp2
		movdqa	value, temp1				; value = temp1 | temp2
;---[Stage #2]-----------------------------
		movdqa	temp1, value
		pand	temp1, dqword [bmask21]		; temp1 = bmask21
		movdqa	temp2, value
		pand	temp2, dqword [bmask22]		; temp2 = bmask22
		psllq	temp1, 2					; temp1 = (value & temp1) << 2
		psrlq	temp2, 2					; temp2 = (value & temp2) >> 2
		por		temp1, temp2
		movdqa	value, temp1				; value = temp1 | temp2
;---[Stage #3]-----------------------------
		movdqa	temp1, value
		pand	temp1, dqword [bmask31]		; temp1 = bmask31
		movdqa	temp2, value
		pand	temp2, dqword [bmask32]		; temp2 = bmask32
		psllq	temp1, 4					; temp1 = (value & temp1) << 4
		psrlq	temp2, 4					; temp2 = (value & temp2) >> 4
		por		temp1, temp2
		movdqa	value, temp1				; value = temp1 | temp2
;---[Swap bytes]---------------------------
		pshufb	value, mask					; swap bytes order in value
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	BIT_REVERSE	reg, treg1, treg2, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
mask	equ		xmm1						; shuffle control mask
value	equ		xmm2						; value to operate with
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
data	equ		xmm5						; register which holds original data
if x eq b
mpos	= smask8							; swap mask
scale	= 0									; scale value
else if x eq w
mpos	= smask16							; swap mask
scale	= 1									; scale value
else if x eq d
mpos	= smask32							; swap mask
scale	= 2									; scale value
else if x eq q
mpos	= smask64							; swap mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		movdqa	mask, dqword [mpos]			; load shuffle control mask
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	data, [array]				; data = array[0]
		movdqa	value, [array]				; value = array[0]
	BREV_VCTR	value, temp1, temp2, mask	; reverse bits order in value
	pblendvb	value, data					; blend value with original data
		movdqa	[array], value				; array[0] = value
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	value, [ptr + % * VSIZE]	; value = ptr[i]
	BREV_VCTR	value, temp1, temp2, mask	; reverse bits order in value
		movdqa	[ptr + % * VSIZE], value	; ptr[i] = value
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		pandn	blend, [table + size]
		movdqa	data, [array + index]		; data = array[index]
		movdqa	value, [array + index]		; value = array[index]
	BREV_VCTR	value, temp1, temp2, mask	; reverse bits order in value
	pblendvb	data, value					; blend value with original data
		movdqa	[array + index], data		; array[index] = value
		ret
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		reg, [array]				; reg = array[0]
	BREV_SCLR	reg, treg1, treg2, scale	; reverse bits order in reg
		mov		[array], reg				; array[0] = reg
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Normal exit]--------------------------
.exit:	ret
}
BitReverse8:	BIT_REVERSE		al, dl, cl, b
BitReverse16:	BIT_REVERSE		ax, dx, cx,  w
BitReverse32:	BIT_REVERSE		eax, edx, ecx, d
BitReverse64:	BIT_REVERSE		rax, rdx, rcx, q

;==============================================================================;
;       Population count                                                       ;
;==============================================================================;
macro	PCOUNT	value, temp1, temp2, scale
{
;---[Stage #1]-----------------------------
		movdqa	temp1, value
		pand	temp1, dqword [bmask11]		; temp1 = bmask11
		movdqa	temp2, value
		pand	temp2, dqword [bmask12]		; temp2 = bmask12
		psrlq	temp2, 1					; temp2 = (value & temp2) >> 1
		paddq	temp1, temp2
		movdqa	value, temp1				; value = temp1 | temp2
;---[Stage #2]-----------------------------
		movdqa	temp1, value
		pand	temp1, dqword [bmask21]		; temp1 = bmask21
		movdqa	temp2, value
		pand	temp2, dqword [bmask22]		; temp2 = bmask22
		psrlq	temp2, 2					; temp2 = (value & temp2) >> 2
		paddq	temp1, temp2
		movdqa	value, temp1				; value = temp1 | temp2
;---[Stage #3]-----------------------------
		movdqa	temp1, value
		pand	temp1, dqword [bmask31]		; temp1 = bmask31
		movdqa	temp2, value
		pand	temp2, dqword [bmask32]		; temp2 = bmask32
		psrlq	temp2, 4					; temp2 = (value & temp2) >> 4
		paddq	temp1, temp2
		movdqa	value, temp1				; value = temp1 | temp2
if scale > 0
;---[Stage #4]-----------------------------
		movdqa	temp1, value
		pand	temp1, dqword [bmask41]		; temp1 = bmask41
		movdqa	temp2, value
		pand	temp2, dqword [bmask42]		; temp2 = bmask42
		psrlq	temp2, 8					; temp2 = (value & temp2) >> 8
		paddq	temp1, temp2
		movdqa	value, temp1				; value = temp1 | temp2
end if
if scale > 1
;---[Stage #5]-----------------------------
		movdqa	temp1, value
		pand	temp1, dqword [bmask51]		; temp1 = bmask51
		movdqa	temp2, value
		pand	temp2, dqword [bmask52]		; temp2 = bmask52
		psrlq	temp2, 16					; temp2 = (value & temp2) >> 16
		paddq	temp1, temp2
		movdqa	value, temp1				; value = temp1 | temp2
end if
if scale > 2
;---[Stage #6]-----------------------------
		movdqa	temp1, value
		pand	temp1, dqword [bmask61]		; temp1 = bmask61
		movdqa	temp2, value
		pand	temp2, dqword [bmask62]		; temp2 = bmask62
		psrlq	temp2, 32					; temp2 = (value & temp2) >> 32
		paddq	temp1, temp2
		movdqa	value, temp1				; value = temp1 | temp2
end if
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	POP_COUNT	reg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
mask	equ		xmm1						; shuffle control mask
value	equ		xmm2						; value to operate with
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
data	equ		xmm5						; register which holds original data
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	data, [array]				; data = array[0]
		movdqa	value, [array]				; value = array[0]
		PCOUNT	value, temp1, temp2, scale	; count set bits
	pblendvb	value, data					; blend value with original data
		movdqa	[array], value				; array[0] = value
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	value, [ptr + % * VSIZE]	; value = ptr[i]
		PCOUNT	value, temp1, temp2, scale	; count set bits
		movdqa	[ptr + % * VSIZE], value	; ptr[i] = value
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		pandn	blend, [table + size]
		movdqa	data, [array + index]		; data = array[index]
		movdqa	value, [array + index]		; value = array[index]
		PCOUNT	value, temp1, temp2, scale	; count set bits
	pblendvb	data, value					; blend value with original data
		movdqa	[array + index], data		; array[index] = value
		ret
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		reg, [array]				; reg = array[0]
if scale = 0
		and		reg, 0xFF					; clear unrequired bits
end if
		popcnt	reg, reg					; reg = count of set bits
		mov		[array], reg				; array[0] = reg
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Normal exit]--------------------------
.exit:	ret
}
PopCount8:	POP_COUNT	ax, b
PopCount16:	POP_COUNT	ax, w
PopCount32:	POP_COUNT	eax, d
PopCount64:	POP_COUNT	rax, q

;==============================================================================;
;       Bitwise NOT                                                            ;
;==============================================================================;
macro	NOT		reg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
if x eq b
XorFunc	= XorS8								; function to call
bmask	= 0xFF								; mask to apply to all elements
else if x eq w
XorFunc	= XorS16							; function to call
bmask	= 0xFFFF							; mask to apply to all elements
else if x eq d
XorFunc	= XorS32							; function to call
bmask	= 0xFFFFFFFF						; mask to apply to all elements
else if x eq q
XorFunc	= XorS64							; function to call
bmask	= 0xFFFFFFFFFFFFFFFF				; mask to apply to all elements
end if
;------------------------------------------
		mov		reg, bmask					; load mask
		jmp		XorFunc						; return XorFunc (array, size)
}
Not8:	NOT		dl, b
Not16:	NOT		dx, w
Not32:	NOT		edx, d
Not64:	NOT		rdx, q

;==============================================================================;
;       Bitwise AND                                                            ;
;==============================================================================;
macro	INT_SCALAR	op, reg, treg, type, rev, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		rdx							; register which holds value
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
vector	equ		xmm1						; value to process with
temp	equ		xmm2						; temporary register
data	equ		xmm3						; register which holds original data
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		movq	vector, value				; vector = value
		clone	vector, scale				; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	data, [array]				; data = array[0]
if type
if rev
		movdqa	temp, vector				; temp = vector
		p#op#x	temp, [array]				; do operation to temp value
else
		movdqa	temp, [array]				; temp = array[0]
		p#op#x	temp, vector				; do operation to temp value
end if
else
		movdqa	temp, [array]				; temp = array[0]
		p#op	temp, vector				; do operation to temp value
end if
	pblendvb	temp, data					; blend temp with original data
		movdqa	[array], temp				; array[0] = temp
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
if type
if rev
		movdqa	temp, vector				; temp = vector
		p#op#x	temp, [ptr + % * VSIZE]		; do operation to temp value
else
		movdqa	temp, [ptr + % * VSIZE]		; temp = ptr[i]
		p#op#x	temp, vector				; do operation to temp value
end if
else
		movdqa	temp, [ptr + % * VSIZE]		; temp = ptr[i]
		p#op	temp, vector				; do operation to temp value
end if
		movdqa	[ptr + % * VSIZE], temp		; ptr[i] = temp
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		pandn	blend, [table + size]
		movdqa	data, [array + index]		; data = array[index]
if type
if rev
		movdqa	temp, vector				; temp = vector
		p#op#x	temp, [array + index]		; do operation to temp value
else
		movdqa	temp, [array + index]		; temp = array[index]
		p#op#x	temp, vector				; do operation to temp value
end if
else
		movdqa	temp, [array + index]		; temp = array[index]
		p#op	temp, vector				; do operation to temp value
end if
	pblendvb	data, temp					; blend temp with original data
		movdqa	[array + index], data		; array[index] = temp
		ret
if scale
;---[Scalar loop]--------------------------
if rev
.sloop:	mov		treg, reg					; treg = value
		op		treg, [array]				; do operation to treg value
else
.sloop:	mov		treg, [array]				; treg = array[0]
		op		treg, reg					; do operation to treg value
end if
		mov		[array], treg				; array[0] = treg
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INT_VECTOR	op, reg, type, rev, x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of target array
offst	equ		rcx							; offset in masks array
table	equ		r8							; pointer to blending table
ptr1	equ		r10							; temporary pointer to target array
ptr2	equ		r11							; temporary pointer to source array
blend	equ		xmm0						; blending mask
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
data	equ		xmm3						; register which holds original data
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[source]					; prefetch data
	prefetchnta	[target]					; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	target, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		cmp		size, VSIZE / bytes			; if (size < VSIZE / bytes)
		jb		.sloop						;     then skip vector code
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		ptr2, source				; ptr2 = source
		mov		ptr1, target				; ptr1 = target
		mov		index, target
		and		index, VMASK				; get array offset from vector boundary
		sub		ptr2, index					; ptr2 = source - index
		sub		ptr1, index					; ptr1 = target - index
;---[Unaligned operation]------------------
		add		size, index					; size += index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		mov		offst, index
		shl		offst, VSCALE				; compute offset in mask array
		neg		index						; index = -index
		lea		table, [maskV1]				; set pointer to blending table
		movdqa	blend, [table + offst]
		movdqu	data, [target]				; data = target[0]
if rev
		movdqu	temp1, [source]				; temp1 = source[0]
		movdqu	temp2, [target]				; temp2 = target[0]
else
		movdqu	temp2, [source]				; temp2 = source[0]
		movdqu	temp1, [target]				; temp1 = target[0]
end if
if type
		p#op#x	temp1, temp2				; do operation to temp value
else
		p#op	temp1, temp2				; do operation to temp value
end if
	pblendvb	temp1, data					; blend temp1 with original data
		movdqu	[target], temp1				; target[0] = temp1
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
if rev
		movdqu	temp1, [ptr2 + % * VSIZE]	; temp1 = ptr2[i]
		movdqa	temp2, [ptr1 + % * VSIZE]	; temp2 = ptr1[i]
else
		movdqu	temp2, [ptr2 + % * VSIZE]	; temp2 = ptr2[i]
		movdqa	temp1, [ptr1 + % * VSIZE]	; temp1 = ptr1[i]
end if
if type
		p#op#x	temp1, temp2				; do operation to temp value
else
		p#op	temp1, temp2				; do operation to temp value
end if
		movdqa	[ptr1 + % * VSIZE], temp1	; ptr1[i] = temp1
end repeat
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
		add		ptr2, CLINE					; ptr2 += CLINE
		add		ptr1, CLINE					; ptr1 += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskV2]				; set pointer to blending table
		movdqa	blend, [table + size]
		movdqu	data, [target + index]		; data = target[index]
if rev
		movdqu	temp1, [source + index]		; temp1 = source[index]
		movdqu	temp2, [target + index]		; temp2 = target[index]
else
		movdqu	temp2, [source + index]		; temp2 = source[index]
		movdqu	temp1, [target + index]		; temp1 = target[index]
end if
if type
		p#op#x	temp1, temp2				; do operation to temp value
else
		p#op	temp1, temp2				; do operation to temp value
end if
	pblendvb	data, temp1					; blend temp1 with original data
		movdqu	[target + index], data		; target[index] = temp1
		ret
;---[Scalar loop]--------------------------
if rev
.sloop:	mov		reg, [source]				; reg = source[0]
		op		reg, [target]				; do operation to reg value
else
.sloop:	mov		reg, [target]				; reg = target[0]
		op		reg, [source]				; do operation to reg value
end if
		mov		[target], reg				; target[0] = reg
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

; Scalar bitwise AND
AndS8:	INT_SCALAR	and, dl, cl, 0, 0, b
AndS16:	INT_SCALAR	and, dx, cx, 0, 0, w
AndS32:	INT_SCALAR	and, edx, ecx, 0, 0, d
AndS64:	INT_SCALAR	and, rdx, rcx, 0, 0, q

; Vector bitwise AND
AndV8:	INT_VECTOR	and, al, 0, 0, b
AndV16:	INT_VECTOR	and, ax, 0, 0, w
AndV32:	INT_VECTOR	and, eax, 0, 0, d
AndV64:	INT_VECTOR	and, rax, 0, 0, q

;==============================================================================;
;       Bitwise OR                                                             ;
;==============================================================================;

; Scalar bitwise OR
OrS8:	INT_SCALAR	or, dl, cl, 0, 0, b
OrS16:	INT_SCALAR	or, dx, cx, 0, 0, w
OrS32:	INT_SCALAR	or, edx, ecx, 0, 0, d
OrS64:	INT_SCALAR	or, rdx, rcx, 0, 0, q

; Vector bitwise OR
OrV8:	INT_VECTOR	or, al, 0, 0, b
OrV16:	INT_VECTOR	or, ax, 0, 0, w
OrV32:	INT_VECTOR	or, eax, 0, 0, d
OrV64:	INT_VECTOR	or, rax, 0, 0, q

;==============================================================================;
;       Bitwise XOR                                                            ;
;==============================================================================;

; Scalar bitwise XOR
XorS8:	INT_SCALAR	xor, dl, cl, 0, 0, b
XorS16:	INT_SCALAR	xor, dx, cx, 0, 0, w
XorS32:	INT_SCALAR	xor, edx, ecx, 0, 0, d
XorS64:	INT_SCALAR	xor, rdx, rcx, 0, 0, q

; Vector bitwise XOR
XorV8:	INT_VECTOR	xor, al, 0, 0, b
XorV16:	INT_VECTOR	xor, ax, 0, 0, w
XorV32:	INT_VECTOR	xor, eax, 0, 0, d
XorV64:	INT_VECTOR	xor, rax, 0, 0, q

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unary operations                                                       ;
;==============================================================================;
macro	ABS_INT1	reg, treg, type, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
value	equ		xmm1						; value to process with
temp	equ		xmm2						; temporary register
data	equ		xmm3						; register which holds original data
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	data, [array]				; data = array[0]
		movdqa	temp, [array]				; temp = array[0]
if type = 1
		pxor	value, value				; value = 0
		psub#x	value, temp					; value -= temp
	pblendvb	value, data					; blend value with original data
		movdqa	[array], value				; array[0] = value
else if type = 2
		pxor	value, value				; value = 0
		pabs#x	temp, temp					; temp = Abs (temp)
		psub#x	value, temp					; value -= temp
	pblendvb	value, data					; blend value with original data
		movdqa	[array], value				; array[0] = value
else
		pabs#x	temp, temp					; temp = Abs (temp)
	pblendvb	temp, data					; blend temp with original data
		movdqa	[array], temp				; array[0] = temp
end if
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + % * VSIZE]		; temp = ptr[i]
if type = 1
		pxor	value, value				; value = 0
		psub#x	value, temp					; value -= temp
		movdqa	[ptr + % * VSIZE], value	; ptr[i] = value
else if type = 2
		pxor	value, value				; value = 0
		pabs#x	temp, temp					; temp = Abs (temp)
		psub#x	value, temp					; value -= temp
		movdqa	[ptr + % * VSIZE], value	; ptr[i] = value
else
		pabs#x	temp, temp					; temp = Abs (temp)
		movdqa	[ptr + % * VSIZE], temp		; ptr[i] = temp
end if
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		pandn	blend, [table + size]
		movdqa	data, [array + index]		; data = array[index]
		movdqa	temp, [array + index]		; temp = array[index]
if type = 1
		pxor	value, value				; value = 0
		psub#x	value, temp					; value -= temp
	pblendvb	data, value					; blend value with original data
else if type = 2
		pxor	value, value				; value = 0
		pabs#x	temp, temp					; temp = Abs (temp)
		psub#x	value, temp					; value -= temp
	pblendvb	data, value					; blend value with original data
else
		pabs#x	temp, temp					; temp = Abs (temp)
	pblendvb	data, temp					; blend temp with original data
end if
		movdqa	[array + index], data		; array[index] = value
		ret
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		treg, [array]				; treg = array[0]
if type = 1
		neg		treg						; treg = -treg
else if type = 2
		mov		reg, treg					; reg = treg
		sar		treg, bytes * 8 - 1			; treg >>= 8 * sizeof(x) - 1
		xor		reg, treg					; reg ^= treg
		sub		treg, reg					; treg -= reg
else
		mov		reg, treg					; reg = treg
		sar		reg, bytes * 8 - 1			; reg >>= 8 * sizeof(x) - 1
		xor		treg, reg					; treg ^= reg
		sub		treg, reg					; treg -= reg
end if
		mov		[array], treg				; array[0] = treg
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ABS_INT2	reg, treg, negative
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
value	equ		xmm1						; value to process with
temp	equ		xmm2						; temporary register
data	equ		xmm3						; register which holds original data
scale	= 3									; scale value
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	data, [array]				; data = array[0]
		movdqa	temp, [array]				; temp = array[0]
		pxor	value, value				; value = 0
		pcmpgtq	value, temp					; get sign mask for all numbers
		pxor	temp, value					; temp ^= value
if negative
		psubq	value, temp					; value -= temp
	pblendvb	value, data					; blend value with original data
		movdqa	[array], value				; array[0] = value
else
		psubq	temp, value					; temp -= value
	pblendvb	temp, data					; blend temp with original data
		movdqa	[array], temp				; array[0] = temp
end if
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + % * VSIZE]		; temp = ptr[i]
		pxor	value, value				; value = 0
		pcmpgtq	value, temp					; get sign mask for all numbers
		pxor	temp, value					; temp ^= value
if negative
		psubq	value, temp					; value -= temp
		movdqa	[ptr + % * VSIZE], value	; ptr[i] = value
else
		psubq	temp, value					; temp -= value
		movdqa	[ptr + % * VSIZE], temp		; ptr[i] = temp
end if
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		pandn	blend, [table + size]
		movdqa	data, [array + index]		; data = array[index]
		movdqa	temp, [array + index]		; temp = array[index]
		pxor	value, value				; value = 0
		pcmpgtq	value, temp					; get sign mask for all numbers
		pxor	temp, value					; temp ^= value
if negative
		psubq	value, temp					; value -= temp
	pblendvb	data, value					; blend value with original data
else
		psubq	temp, value					; temp -= value
	pblendvb	data, temp					; blend temp with original data
end if
		movdqa	[array + index], data		; array[index] = value
		ret
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		treg, [array]				; treg = array[0]
if negative
		mov		reg, treg					; reg = treg
		sar		treg, bytes * 8 - 1			; treg >>= 8 * sizeof(x) - 1
		xor		reg, treg					; reg ^= treg
		sub		treg, reg					; treg -= reg
else
		mov		reg, treg					; reg = treg
		sar		reg, bytes * 8 - 1			; reg >>= 8 * sizeof(x) - 1
		xor		treg, reg					; treg ^= reg
		sub		treg, reg					; treg -= reg
end if
		mov		[array], treg				; array[0] = treg
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ABS_FLT	Func, reg, mask
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;------------------------------------------
		mov		reg, mask					; load mask
		jmp		Func						; return Func (array, size)
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Negative value                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
Neg_sint8:		ABS_INT1	dl, cl, 1, b
Neg_sint16:		ABS_INT1	dx, cx, 1, w
Neg_sint32:		ABS_INT1	edx, ecx, 1, d
Neg_sint64:		ABS_INT1	rdx, rcx, 1, q

; Floating-point types
Neg_flt32:		ABS_FLT		XorS32, edx, SMASK_FLT32
Neg_flt64:		ABS_FLT		XorS64, rdx, SMASK_FLT64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Absolute value                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
Abs_sint8:		ABS_INT1	dl, cl, 0, b
Abs_sint16:		ABS_INT1	dx, cx, 0, w
Abs_sint32:		ABS_INT1	edx, ecx, 0, d
Abs_sint64:		ABS_INT2	rdx, rcx, 0

; Floating-point types
Abs_flt32:		ABS_FLT		AndS32, edx, DMASK_FLT32
Abs_flt64:		ABS_FLT		AndS64, rdx, DMASK_FLT64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Negative absolute value                                                ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
NegAbs_sint8:	ABS_INT1	dl, cl, 2, b
NegAbs_sint16:	ABS_INT1	dx, cx, 2, w
NegAbs_sint32:	ABS_INT1	edx, ecx, 2, d
NegAbs_sint64:	ABS_INT2	rdx, rcx, 1

; Floating-point types
NegAbs_flt32:	ABS_FLT		OrS32, edx, SMASK_FLT32
NegAbs_flt64:	ABS_FLT		OrS64, rdx, SMASK_FLT64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Number sign                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SIGN_INT1	reg, treg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r9							; temporary pointer to array
pone	equ		r10							; +1
mone	equ		r11							; -1
blend	equ		xmm0						; blending mask
vector	equ		xmm1						; value to process with
temp1	equ		xmm2						; temporary register #1
temp2	equ		xmm3						; temporary register #2
data	equ		xmm4						; register which holds original data
if x eq b
smask	= 0x0101010101010101				; sign mask value
scale	= 0									; scale value
else if x eq w
smask	= 0x0001000100010001				; sign mask value
scale	= 1									; scale value
else if x eq d
smask	= 0x0000000100000001				; sign mask value
scale	= 2									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		initreg	vector, index, smask		; vector = smask
		clone	vector, scale				; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	data, [array]				; data = array[0]
		movdqa	temp1, [array]				; temp1 = array[0]
		movdqa	temp2, vector
		psign#x	temp2, temp1				; temp2 = Sign (temp1)
	pblendvb	temp2, data					; blend temp2 with original data
		movdqa	[array], temp2				; array[0] = temp2
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp1, [ptr + % * VSIZE]	; temp1 = ptr[i]
		movdqa	temp2, vector
		psign#x	temp2, temp1				; temp2 = Sign (temp1)
		movdqa	[ptr + % * VSIZE], temp2	; ptr[i] = temp2
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		pandn	blend, [table + size]
		movdqa	data, [array + index]		; data = array[index]
		movdqa	temp1, [array + index]		; temp1 = array[index]
		movdqa	temp2, vector
		psign#x	temp2, temp1				; temp2 = Sign (temp1)
	pblendvb	data, temp2					; blend temp2 with original data
		movdqa	[array + index], data		; array[index] = temp2
		ret
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		treg, [array]				; treg = array[0]
		xor		index, index				; index = 0
		mov		pone, +1					; pone = +1
		mov		mone, -1					; mone = -1
		cmp		treg, 0						; if (treg > 0), return +1
		cmovg	index, pone					; if (treg < 0), return -1
		cmovl	index, mone					; if (treg == 0), return 0
		mov		[array], reg				; array[0] = reg
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SIGN_INT2	reg, treg
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r9							; temporary pointer to array
pone	equ		r10							; +1
mone	equ		r11							; -1
blend	equ		xmm0						; blending mask
zero	equ		xmm1						; 0.0
temp1	equ		xmm2						; temporary register #1
temp2	equ		xmm3						; temporary register #2
data	equ		xmm4						; register which holds original data
scale	= 3									; scale value
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	data, [array]				; data = array[0]
		movdqa	temp1, [array]				; temp1 = array[0]
		pxor	temp2, temp2				; temp2 = 0.0
		pcmpgtq	temp2, temp1				; set bits if temp1 < 0
		pxor	zero, zero					; zero = 0.0
		pcmpgtq	temp1, zero					; set bits if temp1 > 0
		psubq	temp2, temp1				; temp2 = Sign (temp1)
	pblendvb	temp2, data					; blend temp2 with original data
		movdqa	[array], temp2				; array[0] = temp2
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp1, [ptr + % * VSIZE]	; temp1 = ptr[i]
		pxor	temp2, temp2				; temp2 = 0.0
		pcmpgtq	temp2, temp1				; set bits if temp1 < 0
		pxor	zero, zero					; zero = 0.0
		pcmpgtq	temp1, zero					; set bits if temp1 > 0
		psubq	temp2, temp1				; temp2 = Sign (temp1)
		movdqa	[ptr + % * VSIZE], temp2	; ptr[i] = temp2
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		pandn	blend, [table + size]
		movdqa	data, [array + index]		; data = array[index]
		movdqa	temp1, [array + index]		; temp1 = array[index]
		pxor	temp2, temp2				; temp2 = 0.0
		pcmpgtq	temp2, temp1				; set bits if temp1 < 0
		pxor	zero, zero					; zero = 0.0
		pcmpgtq	temp1, zero					; set bits if temp1 > 0
		psubq	temp2, temp1				; temp2 = Sign (temp1)
	pblendvb	data, temp2					; blend temp2 with original data
		movdqa	[array + index], data		; array[index] = temp2
		ret
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		treg, [array]				; treg = array[0]
		xor		index, index				; index = 0
		mov		pone, +1					; pone = +1
		mov		mone, -1					; mone = -1
		cmp		treg, 0						; if (treg > 0), return +1
		cmovg	index, pone					; if (treg < 0), return -1
		cmovl	index, mone					; if (treg == 0), return 0
		mov		[array], reg				; array[0] = reg
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SIGN_FLT	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
data	equ		xmm2						; register which holds original data
zero	equ		xmm3						; 0.0
one		equ		xmm4						; 1.0
nan		equ		xmm5						; NaN
great	equ		xmm6						; great condition
less	equ		xmm7						; less condition
if x eq s
poneval	= PONE_FLT32						; +1.0
moneval	= MONE_FLT32						; -1.0
nanval	= PNAN_FLT32						; +NaN
scale	= 2									; scale value
else if x eq d
poneval	= PONE_FLT64						; +1.0
moneval	= MONE_FLT64						; -1.0
nanval	= PNAN_FLT64						; +NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		initreg	one, index, poneval			; one = +1
		initreg	nan, index, nanval			; nan = NaN
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		shufp#x	one, one, 0x0				; duplicate value through the entire register
		shufp#x	nan, nan, 0x0				; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		xorp#x	zero, zero					; zero = 0
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movap#x	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
		movap#x	data, temp					; data = temp
		xorp#x	great, great				; great = 0
		movap#x	less, temp					; less = array[0]
	cmpltp#x	great, temp					; great = (0 < array[0])
		andp#x	great, one					; great &= one
	cmpltp#x	less, zero					; less = (array[0] < 0)
		andp#x	less, one					; less &= one
	cmpunordp#x	temp, temp					; temp = (temp == NaN)
		andp#x	temp, nan					; temp &= nan
		subp#x	great, less					; great -= less
		orp#x	temp, great					; temp |= great
	blendvp#x	temp, data					; blend temp with original data
		movap#x	[array], temp				; array[0] = temp
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + % * VSIZE]		; temp = ptr[i]
		xorp#x	great, great				; great = 0
		movap#x	less, temp					; less = ptr[i]
	cmpltp#x	great, temp					; great = (0 < ptr[i])
		andp#x	great, one					; great &= one
	cmpltp#x	less, zero					; less = (ptr[i] < 0)
		andp#x	less, one					; less &= one
	cmpunordp#x	temp, temp					; temp = (temp == NaN)
		andp#x	temp, nan					; temp &= nan
		subp#x	great, less					; great -= less
		orp#x	temp, great					; temp |= great
		movap#x	[ptr + % * VSIZE], temp		; ptr[i] = temp
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		andnp#x	blend, [table + size]
		movap#x	temp, [array + index]		; temp = array[index]
		movap#x	data, temp					; data = temp
		xorp#x	great, great				; great = 0
		movap#x	less, temp					; less = array[index]
	cmpltp#x	great, temp					; great = (0 < array[index])
		andp#x	great, one					; great &= one
	cmpltp#x	less, zero					; less = (array[index] < 0)
		andp#x	less, one					; less &= one
	cmpunordp#x	temp, temp					; temp = (temp == NaN)
		andp#x	temp, nan					; temp &= nan
		subp#x	great, less					; great -= less
		orp#x	temp, great					; temp |= great
	blendvp#x	data, temp					; blend temp with original data
		movap#x	[array + index], data		; array[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		xorp#x	great, great				; great = 0
		movap#x	less, temp					; less = array[0]
	cmplts#x	great, temp					; great = (0 < array[0])
		andp#x	great, one					; great &= one
	cmplts#x	less, zero					; less = (array[0] < 0)
		andp#x	less, one					; less &= one
	cmpunords#x	temp, temp					; temp = (temp == NaN)
		andp#x	temp, nan					; temp &= nan
		subs#x	great, less					; great -= less
		orp#x	temp, great					; temp |= great
		movs#x	[array], temp				; array[0] = temp
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

; Signed integer types
Sign_sint8:		SIGN_INT1	al, dl, b
Sign_sint16:	SIGN_INT1	ax, dx, w
Sign_sint32:	SIGN_INT1	eax, edx, d
Sign_sint64:	SIGN_INT2	rax, rdx

; Floating-point types
Sign_flt32:		SIGN_FLT	s
Sign_flt64:		SIGN_FLT	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Square                                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SQR		op, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
data	equ		xmm2						; register which holds original data
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movap#x	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
		movap#x	data, temp					; data = temp
		op#p#x	temp, temp					; do operation to temp value
	blendvp#x	temp, data					; blend temp with original data
		movap#x	[array], temp				; array[0] = temp
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + % * VSIZE]		; temp = ptr[i]
		op#p#x	temp, temp					; do operation to temp value
		movap#x	[ptr + % * VSIZE], temp		; ptr[i] = temp
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		andnp#x	blend, [table + size]
		movap#x	temp, [array + index]		; temp = array[index]
		movap#x	data, temp					; data = temp
		op#p#x	temp, temp					; do operation to temp value
	blendvp#x	data, temp					; blend temp with original data
		movap#x	[array + index], data		; array[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		op#s#x	temp, temp					; do operation to temp value
		movs#x	[array], temp				; array[0] = temp
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
Sqr_flt32:	SQR		mul, s
Sqr_flt64:	SQR		mul, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Square root                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
Sqrt_flt32:	SQR		sqrt, s
Sqrt_flt64:	SQR		sqrt, d

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;
macro	FLT_SCALAR	op, rev, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		xmm0						; value to process with
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
vector	equ		xmm1						; value to process with
temp	equ		xmm2						; temporary register
data	equ		xmm3						; register which holds original data
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		movap#x	vector, value				; vector = value
		shufp#x	vector, vector, 0x0			; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movap#x	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	data, [array]				; data = array[0]
if rev
		movap#x	temp, vector				; temp = vector
		op#p#x	temp, [array]				; do operation to temp value
else
		movap#x	temp, [array]				; temp = array[0]
		op#p#x	temp, vector				; do operation to temp value
end if
	blendvp#x	temp, data					; blend temp with original data
		movap#x	[array], temp				; array[0] = temp
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
if rev
		movap#x	temp, vector				; temp = vector
		op#p#x	temp, [ptr + % * VSIZE]		; do operation to temp value
else
		movap#x	temp, [ptr + % * VSIZE]		; temp = ptr[i]
		op#p#x	temp, vector				; do operation to temp value
end if
		movap#x	[ptr + % * VSIZE], temp		; ptr[i] = temp
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		andnp#x	blend, [table + size]
		movap#x	data, [array + index]		; data = array[index]
if rev
		movap#x	temp, vector				; temp = vector
		op#p#x	temp, [array + index]		; do operation to temp value
else
		movap#x	temp, [array + index]		; temp = array[index]
		op#p#x	temp, vector				; do operation to temp value
end if
	blendvp#x	data, temp					; blend temp with original data
		movap#x	[array + index], data		; array[index] = temp
		ret
;---[Scalar loop]--------------------------
if rev
.sloop:	movap#x	temp, value					; temp = value
		op#s#x	temp, [array]				; do operation to temp value
else
.sloop:	movs#x	temp, [array]				; temp = array[0]
		op#s#x	temp, value					; do operation to temp value
end if
		movs#x	[array], temp				; array[0] = temp
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FLT_VECTOR	op, rev, x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of target array
offst	equ		rcx							; offset in masks array
table	equ		r8							; pointer to blending table
ptr1	equ		r10							; temporary pointer to target array
ptr2	equ		r11							; temporary pointer to source array
blend	equ		xmm0						; blending mask
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
data	equ		xmm3						; register which holds original data
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[source]					; prefetch data
	prefetchnta	[target]					; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	target, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE / bytes			; if (size < VSIZE / bytes)
		jb		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		ptr2, source				; ptr2 = source
		mov		ptr1, target				; ptr1 = target
		mov		index, target
		and		index, VMASK				; get array offset from vector boundary
		sub		ptr2, index					; ptr2 = source - index
		sub		ptr1, index					; ptr1 = target - index
;---[Unaligned operation]------------------
		add		size, index					; size += index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		mov		offst, index
		shl		offst, VSCALE				; compute offset in mask array
		neg		index						; index = -index
		lea		table, [maskV1]				; set pointer to blending table
		movap#x	blend, [table + offst]
		movup#x	data, [target]				; data = target[0]
if rev
		movup#x	temp1, [source]				; temp1 = source[0]
		movup#x	temp2, [target]				; temp2 = target[0]
else
		movup#x	temp2, [source]				; temp2 = source[0]
		movup#x	temp1, [target]				; temp1 = target[0]
end if
		op#p#x	temp1, temp2				; do operation to temp value
	blendvp#x	temp1, data					; blend temp1 with original data
		movup#x	[target], temp1				; target[0] = temp1
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
if rev
		movup#x	temp1, [ptr2 + % * VSIZE]	; temp1 = ptr2[i]
		movap#x	temp2, [ptr1 + % * VSIZE]	; temp2 = ptr1[i]
else
		movup#x	temp2, [ptr2 + % * VSIZE]	; temp2 = ptr2[i]
		movap#x	temp1, [ptr1 + % * VSIZE]	; temp1 = ptr1[i]
end if
		op#p#x	temp1, temp2				; do operation to temp value
		movap#x	[ptr1 + % * VSIZE], temp1	; ptr1[i] = temp1
end repeat
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
		add		ptr2, CLINE					; ptr2 += CLINE
		add		ptr1, CLINE					; ptr1 += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskV2]				; set pointer to blending table
		movap#x	blend, [table + size]
		movup#x	data, [target + index]		; data = target[index]
if rev
		movup#x	temp1, [source + index]		; temp1 = source[index]
		movup#x	temp2, [target + index]		; temp2 = target[index]
else
		movup#x	temp2, [source + index]		; temp2 = source[index]
		movup#x	temp1, [target + index]		; temp1 = target[index]
end if
		op#p#x	temp1, temp2				; do operation to temp value
	blendvp#x	data, temp1					; blend temp1 with original data
		movup#x	[target + index], data		; target[index] = temp1
		ret
;---[Scalar loop]--------------------------
if rev
.sloop:	movs#x	temp1, [source]				; temp1 = source[0]
		movs#x	temp2, [target]				; temp2 = target[0]
else
.sloop:	movs#x	temp2, [source]				; temp2 = source[0]
		movs#x	temp1, [target]				; temp1 = target[0]
end if
		op#s#x	temp1, temp2				; do operation to temp value
		movs#x	[target], temp1				; target[0] = temp1
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Addition                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar addition                                                        ;
;------------------------------------------------------------------------------;

; Integer types
AddS8:				INT_SCALAR	add, dl, cl, 1, 0, b
AddS16:				INT_SCALAR	add, dx, cx, 1, 0, w
AddS32:				INT_SCALAR	add, edx, ecx, 1, 0, d
AddS64:				INT_SCALAR	add, rdx, rcx, 1, 0, q

; Floating-point types
AddS_flt32:			FLT_SCALAR	add, 0, s
AddS_flt64:			FLT_SCALAR	add, 0, d

;------------------------------------------------------------------------------;
;       Vector addition                                                        ;
;------------------------------------------------------------------------------;

; Integer types
AddV8:				INT_VECTOR	add, al, 1, 0, b
AddV16:				INT_VECTOR	add, ax, 1, 0, w
AddV32:				INT_VECTOR	add, eax, 1, 0, d
AddV64:				INT_VECTOR	add, rax, 1, 0, q

; Floating-point types
AddV_flt32:			FLT_VECTOR	add, 0, s
AddV_flt64:			FLT_VECTOR	add, 0, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Subtraction                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar subtraction                                                     ;
;------------------------------------------------------------------------------;

; Integer types
SubS8:				INT_SCALAR	sub, dl, cl, 1, 0, b
SubS16:				INT_SCALAR	sub, dx, cx, 1, 0, w
SubS32:				INT_SCALAR	sub, edx, ecx, 1, 0, d
SubS64:				INT_SCALAR	sub, rdx, rcx, 1, 0, q

; Floating-point types
SubS_flt32:			FLT_SCALAR	sub, 0, s
SubS_flt64:			FLT_SCALAR	sub, 0, d

;------------------------------------------------------------------------------;
;       Vector subtraction                                                     ;
;------------------------------------------------------------------------------;

; Integer types
SubV8:				INT_VECTOR	sub, al, 1, 0, b
SubV16:				INT_VECTOR	sub, ax, 1, 0, w
SubV32:				INT_VECTOR	sub, eax, 1, 0, d
SubV64:				INT_VECTOR	sub, rax, 1, 0, q

; Floating-point types
SubV_flt32:			FLT_VECTOR	sub, 0, s
SubV_flt64:			FLT_VECTOR	sub, 0, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Reverse subtraction                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar reverse subtraction                                             ;
;------------------------------------------------------------------------------;

; Integer types
ReverseSubS8:		INT_SCALAR	sub, dl, cl, 1, 1, b
ReverseSubS16:		INT_SCALAR	sub, dx, cx, 1, 1, w
ReverseSubS32:		INT_SCALAR	sub, edx, ecx, 1, 1, d
ReverseSubS64:		INT_SCALAR	sub, rdx, rcx, 1, 1, q

; Floating-point types
ReverseSubS_flt32:	FLT_SCALAR	sub, 1, s
ReverseSubS_flt64:	FLT_SCALAR	sub, 1, d

;------------------------------------------------------------------------------;
;       Vector reverse subtraction                                             ;
;------------------------------------------------------------------------------;

; Integer types
ReverseSubV8:		INT_VECTOR	sub, al, 1, 1, b
ReverseSubV16:		INT_VECTOR	sub, ax, 1, 1, w
ReverseSubV32:		INT_VECTOR	sub, eax, 1, 1, d
ReverseSubV64:		INT_VECTOR	sub, rax, 1, 1, q

; Floating-point types
ReverseSubV_flt32:	FLT_VECTOR	sub, 1, s
ReverseSubV_flt64:	FLT_VECTOR	sub, 1, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar multiplication                                                  ;
;------------------------------------------------------------------------------;
MulS_flt32:			FLT_SCALAR	mul, 0, s
MulS_flt64:			FLT_SCALAR	mul, 0, d

;------------------------------------------------------------------------------;
;       Vector multiplication                                                  ;
;------------------------------------------------------------------------------;
MulV_flt32:			FLT_VECTOR	mul, 0, s
MulV_flt64:			FLT_VECTOR	mul, 0, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar division                                                        ;
;------------------------------------------------------------------------------;
DivS_flt32:			FLT_SCALAR	div, 0, s
DivS_flt64:			FLT_SCALAR	div, 0, d

;------------------------------------------------------------------------------;
;       Vector division                                                        ;
;------------------------------------------------------------------------------;
DivV_flt32:			FLT_VECTOR	div, 0, s
DivV_flt64:			FLT_VECTOR	div, 0, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Reverse division                                                       ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar reverse division                                                ;
;------------------------------------------------------------------------------;
ReverseDivS_flt32:	FLT_SCALAR	div, 1, s
ReverseDivS_flt64:	FLT_SCALAR	div, 1, d

;------------------------------------------------------------------------------;
;       Vector reverse division                                                ;
;------------------------------------------------------------------------------;
ReverseDivV_flt32:	FLT_VECTOR	div, 1, s
ReverseDivV_flt64:	FLT_VECTOR	div, 1, d

;******************************************************************************;
;       Rounding                                                               ;
;******************************************************************************;
macro	ROUND	type, mode, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
mask	equ		xmm2						; data mask
bias	equ		xmm3						; bias value
value	equ		xmm4						; adjustment value
data	equ		xmm5						; register which holds original data
if x eq s
smask	= SMASK_FLT32						; sign mask
biasval	= PHALF_FLT32 - 1					; +0.499(9)
scale	= 2									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
biasval	= PHALF_FLT64 - 1					; +0.499(9)
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if type = 1
		initreg	mask, index, smask			; mask = smask
		initreg	bias, index, biasval		; bias = 0.499(9)
end if
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
if type = 1
		shufp#x	mask, mask, 0x0				; duplicate value through the entire register
		shufp#x	bias, bias, 0x0				; duplicate value through the entire register
end if
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movap#x	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
		movap#x	data, temp					; data = temp
if type = 1
		movap#x	value, temp
		andp#x	value, mask
		orp#x	value, bias					; value = 0.499(9) * Sign (temp)
		addp#x	temp, value					; temp += value
	roundp#x	temp, temp, mode			; temp = Round (temp)
else if type = 2
	roundp#x	value, temp, mode			; value = Round (temp)
		subp#x	temp, value					; temp -= value
else
	roundp#x	temp, temp, mode			; temp = Round (temp)
end if
	blendvp#x	temp, data					; blend temp with original data
		movap#x	[array], temp				; array[0] = temp
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + % * VSIZE]		; temp = ptr[i]
if type = 1
		movap#x	value, temp
		andp#x	value, mask
		orp#x	value, bias					; value = 0.499(9) * Sign (temp)
		addp#x	temp, value					; temp += value
	roundp#x	temp, temp, mode			; temp = Round (temp)
else if type = 2
	roundp#x	value, temp, mode			; value = Round (temp)
		subp#x	temp, value					; temp -= value
else
	roundp#x	temp, temp, mode			; temp = Round (temp)
end if
		movap#x	[ptr + % * VSIZE], temp		; ptr[i] = temp
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		andnp#x	blend, [table + size]
		movap#x	temp, [array + index]		; temp = array[index]
		movap#x	data, temp					; data = temp
if type = 1
		movap#x	value, temp
		andp#x	value, mask
		orp#x	value, bias					; value = 0.499(9) * Sign (temp)
		addp#x	temp, value					; temp += value
	roundp#x	temp, temp, mode			; temp = Round (temp)
else if type = 2
	roundp#x	value, temp, mode			; value = Round (temp)
		subp#x	temp, value					; temp -= value
else
	roundp#x	temp, temp, mode			; temp = Round (temp)
end if
	blendvp#x	data, temp					; blend temp with original data
		movap#x	[array + index], data		; array[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
if type = 1
		movap#x	value, temp
		andp#x	value, mask
		orp#x	value, bias					; value = 0.499(9) * Sign (temp)
		adds#x	temp, value					; temp += value
	rounds#x	temp, temp, mode			; temp = Round (temp)
else if type = 2
	rounds#x	value, temp, mode			; value = Round (temp)
		subs#x	temp, value					; temp -= value
else
	rounds#x	temp, temp, mode			; temp = Round (temp)
end if
		movs#x	[array], temp				; array[0] = temp
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

; Round down (floor)
RoundDown_flt32:		ROUND	0, 0x1, s
RoundDown_flt64:		ROUND	0, 0x1, d

; Round up (ceil)
RoundUp_flt32:			ROUND	0, 0x2, s
RoundUp_flt64:			ROUND	0, 0x2, d

; Round to nearest even integer
RoundInt_flt32:			ROUND	0, 0x0, s
RoundInt_flt64:			ROUND	0, 0x0, d

; Round to nearest integer, away from zero
RoundRound_flt32:		ROUND	1, 0x3, s
RoundRound_flt64:		ROUND	1, 0x3, d

; Round to nearest integer, toward zero (truncation)
RoundTruncate_flt32:	ROUND	0, 0x3, s
RoundTruncate_flt64:	ROUND	0, 0x3, d

; Fractional part
RoundFrac_flt32:		ROUND	2, 0x3, s
RoundFrac_flt64:		ROUND	2, 0x3, d

;******************************************************************************;
;       Numerical integration                                                  ;
;******************************************************************************;
macro	SUM_SCALAR	type, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
mask	equ		xmm2						; data mask
sum0	equ		xmm3						; intermediate sum #1
sum1	equ		xmm4						; intermediate sum #2
sum2	equ		xmm5						; intermediate sum #3
sum3	equ		xmm6						; intermediate sum #4
sum4	equ		xmm7						; intermediate sum #5
zero	equ		xmm8						; 0.0
result	equ		blend						; result register
if x eq s
dmask	= DMASK_FLT32						; data mask
scale	= 2									; scale value
else if x eq d
dmask	= DMASK_FLT64						; data mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		xorp#x	result, result				; index = 0
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if type = 2
		initreg	mask, index, dmask			; mask = dmask
end if
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
if type = 2
		shufp#x	mask, mask, 0x0				; duplicate value through the entire register
end if
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movap#x	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
	blendvp#x	temp, zero					; blend temp with zero values
		addp#x	sum0, temp					; sum0 += temp
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 1 * VSIZE]		; temp = ptr[1]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum1, temp					; sum1 += temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 2 * VSIZE]		; temp = ptr[2]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum2, temp					; sum2 += temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 3 * VSIZE]		; temp = ptr[3]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum3, temp					; sum3 += temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 4 * VSIZE]		; temp = ptr[4]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum4, temp					; sum4 += temp
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		andnp#x	blend, [table + size]
		movap#x	temp, [array + index]		; temp = array[index]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
	blendvp#x	zero, temp					; blend temp with zero values
		addp#x	sum0, zero					; sum0 += temp
		addp#x	sum1, sum2
		addp#x	sum3, sum4
		addp#x	sum1, sum3
		addp#x	sum0, sum1					; sum0 = sum0 + sum1 + sum2 + sum3 + sum4
		summa	sum0, x						; get all parallel sums
		movap#x	result, sum0				; return sum0
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
if type = 1
		muls#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		adds#x	result, temp				; result += temp
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SUM_VECTOR	type, x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of target array
offst	equ		rcx							; offset in masks array
table	equ		r8							; pointer to blending table
ptr1	equ		r10							; temporary pointer to first array
ptr2	equ		r11							; temporary pointer to second array
blend	equ		xmm0						; blending mask
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
mask	equ		xmm3						; data mask
sum0	equ		xmm4						; intermediate sum #1
sum1	equ		xmm5						; intermediate sum #2
sum2	equ		xmm6						; intermediate sum #3
sum3	equ		xmm7						; intermediate sum #4
sum4	equ		xmm8						; intermediate sum #5
zero	equ		xmm9						; 0.0
result	equ		blend						; result register
if x eq s
dmask	= DMASK_FLT32						; data mask
scale	= 2									; scale value
else if x eq d
dmask	= DMASK_FLT64						; data mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array2]					; prefetch data
	prefetchnta	[array1]					; prefetch data
		xorp#x	result, result				; result = 0
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if type = 2
		initreg	mask, index, dmask			; mask = dmask
end if
		test	array2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	array1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE / bytes			; if (size < VSIZE / bytes)
		jb		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
if type = 2
		shufp#x	mask, mask, 0x0				; duplicate value through the entire register
end if
		mov		ptr2, array2				; ptr2 = array2
		mov		ptr1, array1				; ptr1 = array1
		mov		index, array1
		and		index, VMASK				; get array offset from vector boundary
		sub		ptr2, index					; ptr2 = array2 - index
		sub		ptr1, index					; ptr1 = array1 - index
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned operation]------------------
		add		size, index					; size += index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		mov		offst, index
		shl		offst, VSCALE				; compute offset in mask array
		neg		index						; index = -index
		lea		table, [maskV1]				; set pointer to blending table
		movap#x	blend, [table + offst]
		movup#x	temp2, [array2]				; temp2 = array2[0]
		movup#x	temp1, [array1]				; temp1 = array1[0]
if type = 1
		subp#x	temp1, temp2				; temp1 -= temp2
		mulp#x	temp1, temp1				; temp1 *= temp2
else if type = 2
		subp#x	temp1, temp2				; temp1 -= temp2
		andp#x	temp1, mask					; temp1 = Abs (temp1)
else
		mulp#x	temp1, temp2				; temp1 *= temp2
end if
	blendvp#x	temp1, zero					; blend temp1 with zero values
		addp#x	sum0, temp1					; sum0 += temp1
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	temp2, [ptr2 + 1 * VSIZE]	; temp2 = ptr2[1]
		movap#x	temp1, [ptr1 + 1 * VSIZE]	; temp1 = ptr1[1]
if type = 1
		subp#x	temp1, temp2				; temp1 -= temp2
		mulp#x	temp1, temp1				; temp1 *= temp2
else if type = 2
		subp#x	temp1, temp2				; temp1 -= temp2
		andp#x	temp1, mask					; temp1 = Abs (temp1)
else
		mulp#x	temp1, temp2				; temp1 *= temp2
end if
		addp#x	sum1, temp1					; sum1 += temp1
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	temp2, [ptr2 + 2 * VSIZE]	; temp2 = ptr2[2]
		movap#x	temp1, [ptr1 + 2 * VSIZE]	; temp1 = ptr1[2]
if type = 1
		subp#x	temp1, temp2				; temp1 -= temp2
		mulp#x	temp1, temp1				; temp1 *= temp2
else if type = 2
		subp#x	temp1, temp2				; temp1 -= temp2
		andp#x	temp1, mask					; temp1 = Abs (temp1)
else
		mulp#x	temp1, temp2				; temp1 *= temp2
end if
		addp#x	sum2, temp1					; sum2 += temp1
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	temp2, [ptr2 + 3 * VSIZE]	; temp2 = ptr2[3]
		movap#x	temp1, [ptr1 + 3 * VSIZE]	; temp1 = ptr1[3]
if type = 1
		subp#x	temp1, temp2				; temp1 -= temp2
		mulp#x	temp1, temp1				; temp1 *= temp2
else if type = 2
		subp#x	temp1, temp2				; temp1 -= temp2
		andp#x	temp1, mask					; temp1 = Abs (temp1)
else
		mulp#x	temp1, temp2				; temp1 *= temp2
end if
		addp#x	sum3, temp1					; sum3 += temp1
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	temp2, [ptr2 + 4 * VSIZE]	; temp2 = ptr2[4]
		movap#x	temp1, [ptr1 + 4 * VSIZE]	; temp1 = ptr1[4]
if type = 1
		subp#x	temp1, temp2				; temp1 -= temp2
		mulp#x	temp1, temp1				; temp1 *= temp2
else if type = 2
		subp#x	temp1, temp2				; temp1 -= temp2
		andp#x	temp1, mask					; temp1 = Abs (temp1)
else
		mulp#x	temp1, temp2				; temp1 *= temp2
end if
		addp#x	sum4, temp1					; sum4 += temp1
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
		add		ptr2, CLINE					; ptr2 += CLINE
		add		ptr1, CLINE					; ptr1 += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskV2]				; set pointer to blending table
		movap#x	blend, [table + size]
		movup#x	temp2, [array2 + index]		; temp2 = array2[index]
		movup#x	temp1, [array1 + index]		; temp1 = array1[index]
if type = 1
		subp#x	temp1, temp2				; temp1 -= temp2
		mulp#x	temp1, temp1				; temp1 *= temp2
else if type = 2
		subp#x	temp1, temp2				; temp1 -= temp2
		andp#x	temp1, mask					; temp1 = Abs (temp1)
else
		mulp#x	temp1, temp2				; temp1 *= temp2
end if
	blendvp#x	zero, temp1					; blend temp1 with zero values
		addp#x	sum0, zero					; sum0 += temp1
		addp#x	sum1, sum2
		addp#x	sum3, sum4
		addp#x	sum1, sum3
		addp#x	sum0, sum1					; sum0 = sum0 + sum1 + sum2 + sum3 + sum4
		summa	sum0, x						; get all parallel sums
		movap#x	result, sum0				; return sum0
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp2, [array2]				; temp2 = array2[0]
		movs#x	temp1, [array1]				; temp1 = array1[0]
if type = 1
		subs#x	temp1, temp2				; temp1 -= temp2
		muls#x	temp1, temp1				; temp1 *= temp2
else if type = 2
		subs#x	temp1, temp2				; temp1 -= temp2
		andp#x	temp1, mask					; temp1 = Abs (temp1)
else
		muls#x	temp1, temp2				; temp1 *= temp2
end if
		adds#x	result, temp1				; result += temp1
		add		array2, bytes				; array2++
		add		array1, bytes				; array1++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

;==============================================================================;
;       Sum of elements                                                        ;
;==============================================================================;
Sum_flt32:			SUM_SCALAR	0, s
Sum_flt64:			SUM_SCALAR	0, d

;==============================================================================;
;       Sum of squares                                                         ;
;==============================================================================;
SumSqr_flt32:		SUM_SCALAR	1, s
SumSqr_flt64:		SUM_SCALAR	1, d

;==============================================================================;
;       Sum of absolute values                                                 ;
;==============================================================================;
SumAbs_flt32:		SUM_SCALAR	2, s
SumAbs_flt64:		SUM_SCALAR	2, d

;==============================================================================;
;       Sum of multiplied elements                                             ;
;==============================================================================;
SumMul_flt32:		SUM_VECTOR	0, s
SumMul_flt64:		SUM_VECTOR	0, d

;==============================================================================;
;       Sum of squared differences                                             ;
;==============================================================================;
SumSqrDiff_flt32:	SUM_VECTOR	1, s
SumSqrDiff_flt64:	SUM_VECTOR	1, d

;==============================================================================;
;       Sum of absolute differences                                            ;
;==============================================================================;
SumAbsDiff_flt32:	SUM_VECTOR	2, s
SumAbsDiff_flt64:	SUM_VECTOR	2, d

;******************************************************************************;
;       Minimum and maximum absolute value                                     ;
;******************************************************************************;
macro	MINMAX_INT	op, res, reg, treg, val, c, type, abs, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
result	equ		index						; result register
value	equ		index						; register which holds limit value
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
res0	equ		xmm2						; intermediate result #1
res1	equ		xmm3						; intermediate result #2
res2	equ		xmm4						; intermediate result #3
res3	equ		xmm5						; intermediate result #4
res4	equ		xmm6						; intermediate result #5
limit	equ		xmm7						; limit value
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
		mov		res, val					; result = value
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		movq	limit, value				; limit = value
		clone	limit, scale				; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		movdqa	res0, limit					; res0 = limit
		movdqa	res1, limit					; res1 = limit
		movdqa	res2, limit					; res2 = limit
		movdqa	res3, limit					; res3 = limit
		movdqa	res4, limit					; res4 = limit
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [array]				; temp = array[0]
if abs
		pabs#x	temp, temp					; temp = Abs (array[0])
end if
	pblendvb	temp, limit					; blend temp with limit values
	p#op#type#x	res0, temp					; find min or max value
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 1 * VSIZE]		; temp = ptr[1]
if abs
		pabs#x	temp, temp					; temp = Abs (ptr[1])
end if
	p#op#type#x	res1, temp					; find min or max value
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 2 * VSIZE]		; temp = ptr[2]
if abs
		pabs#x	temp, temp					; temp = Abs (ptr[2])
end if
	p#op#type#x	res2, temp					; find min or max value
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 3 * VSIZE]		; temp = ptr[3]
if abs
		pabs#x	temp, temp					; temp = Abs (ptr[3])
end if
	p#op#type#x	res3, temp					; find min or max value
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 4 * VSIZE]		; temp = ptr[4]
if abs
		pabs#x	temp, temp					; temp = Abs (ptr[4])
end if
	p#op#type#x	res4, temp					; find min or max value
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		pandn	blend, [table + size]
		movdqa	temp, [array + index]		; temp = array[index]
if abs
		pabs#x	temp, temp					; temp = Abs (array[index])
end if
	pblendvb	limit, temp					; blend temp with limit values
	p#op#type#x	res0, limit					; find min or max value
	p#op#type#x	res1, res2
	p#op#type#x	res3, res4
	p#op#type#x	res1, res3
	p#op#type#x	res0, res1					; find min or max values from all accumulators
		palignr	temp, res0, 8
	p#op#type#x	res0, temp
if scale < 3
		palignr	temp, res0, 4
	p#op#type#x	res0, temp
end if
if scale < 2
		palignr	temp, res0, 2
	p#op#type#x	res0, temp
end if
if scale < 1
		palignr	temp, res0, 1
	p#op#type#x	res0, temp
end if
		movq	result, res0				; return min or max value
		ret
if scale
;---[Scalar loop]--------------------------
.sloop:	mov		reg, [array]				; reg = array[0]
if abs
		mov		treg, reg					; treg = reg
		sar		treg, bytes * 8 - 1			; treg >>= 8 * sizeof(x) - 1
		xor		reg, treg					; reg ^= treg
		sub		reg, treg					; reg = Abs (reg)
end if
		cmp		reg, res					; if (reg condition result)
		cmov#c	res, reg					;     result = reg
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		ret
end if
;---[Error branch]-------------------------
.error:	xor		result, result				; return 0
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MINMAX_FLT	op, value, abs, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
fmask	equ		r9							; NaN check result
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
mask	equ		xmm2						; data mask
res0	equ		xmm3						; intermediate result #1
res1	equ		xmm4						; intermediate result #2
res2	equ		xmm5						; intermediate result #3
res3	equ		xmm6						; intermediate result #4
res4	equ		xmm7						; intermediate result #5
flags0	equ		xmm8						; NaN matching flags #1
flags1	equ		xmm9						; NaN matching flags #2
flags2	equ		xmm10						; NaN matching flags #3
flags3	equ		xmm11						; NaN matching flags #4
flags4	equ		xmm12						; NaN matching flags #5
inf		equ		xmm13						; infinity value
result	equ		blend						; result register
if x eq s
dmask	= DMASK_FLT32						; data mask
nanval	= PNAN_FLT32						; +NaN
scale	= 2									; scale value
else if x eq d
dmask	= DMASK_FLT64						; data mask
nanval	= PNAN_FLT64						; +NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.error						;     then go to error branch
		initreg	result, index, value		; result = value
if abs
		initreg	mask, index, dmask			; mask = dmask
end if
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		shufp#x	result, result, 0x0			; duplicate value through the entire register
if abs
		shufp#x	mask, mask, 0x0				; duplicate value through the entire register
end if
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		movap#x	res0, result				; res0 = value
		movap#x	res1, result				; res1 = value
		movap#x	res2, result				; res2 = value
		movap#x	res3, result				; res3 = value
		movap#x	res4, result				; res4 = value
		movap#x	inf, result					; inf = value
		xorp#x	flags0, flags0				; flags0 = 0
		xorp#x	flags1, flags1				; flags1 = 0
		xorp#x	flags2, flags2				; flags2 = 0
		xorp#x	flags3, flags3				; flags3 = 0
		xorp#x	flags4, flags4				; flags4 = 0
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movap#x	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
	blendvp#x	temp, inf					; blend temp with infinity values
		op#p#x	res0, temp					; find min or max value
	cmpunordp#x	temp, temp					; check values for NANs
		orp#x	flags0, temp				; accumulate NaN check results
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 1 * VSIZE]		; temp = ptr[1]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#p#x	res1, temp					; find min or max value
	cmpunordp#x	temp, temp					; check values for NANs
		orp#x	flags1, temp				; accumulate NaN check results
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 2 * VSIZE]		; temp = ptr[2]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#p#x	res2, temp					; find min or max value
	cmpunordp#x	temp, temp					; check values for NANs
		orp#x	flags2, temp				; accumulate NaN check results
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 3 * VSIZE]		; temp = ptr[3]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#p#x	res3, temp					; find min or max value
	cmpunordp#x	temp, temp					; check values for NANs
		orp#x	flags3, temp				; accumulate NaN check results
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 4 * VSIZE]		; temp = ptr[4]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#p#x	res4, temp					; find min or max value
	cmpunordp#x	temp, temp					; check values for NANs
		orp#x	flags4, temp				; accumulate NaN check results
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		andnp#x	blend, [table + size]
		movap#x	temp, [array + index]		; temp = array[index]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
	blendvp#x	inf, temp					; blend temp with infinity values
		op#p#x	res0, inf					; find min or max value
	cmpunordp#x	inf, inf					; check values for NANs
		orp#x	flags0, inf					; accumulate NaN check results
		orp#x	flags1, flags2
		orp#x	flags3, flags4
		orp#x	flags1, flags3
		orp#x	flags0, flags1
	pmovmskb	fmask, flags0				; save check results to fmask
		and		fmask, fmask				; if NAN is found,
		jnz		.error						;     then go to error branch
		op#p#x	res1, res2
		op#p#x	res3, res4
		op#p#x	res1, res3
		op#p#x	res0, res1					; find min or max value from all accumulators
if x eq s
		movhlps	temp, res0					; temp = upper half of res0
		op#p#x	res0, temp					; find min or max value
end if
		movap#x	temp, res0					; temp = res0
		shufp#x	temp, temp, 0x1				; shuffle values in temp register
		op#s#x	res0, temp					; find min or max value
		movap#x	result, res0				; return res0
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#s#x	result, temp				; find min or max value
		comis#x	temp, temp					; if NAN is found,
		jp		.error						;     then go to error branch
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[End of scalar loop]-------------------
		ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nanval		; return NaN
		ret
}

;==============================================================================;
;       Minimum absolute value                                                 ;
;==============================================================================;

; Signed integer types
MinAbs_sint8:	MINMAX_INT	min, al, dl, cl, 0xFF, b, u, 1, b
MinAbs_sint16:	MINMAX_INT	min, ax, dx, cx, 0xFFFF, b, u, 1, w
MinAbs_sint32:	MINMAX_INT	min, eax, edx, ecx, 0xFFFFFFFF, b, u, 1, d

; Floating-point types
MinAbs_flt32:	MINMAX_FLT	min, PINF_FLT32, 1, s
MinAbs_flt64:	MINMAX_FLT	min, PINF_FLT64, 1, d

;==============================================================================;
;       Maximum absolute value                                                 ;
;==============================================================================;

; Signed integer types
MaxAbs_sint8:	MINMAX_INT	max, al, dl, cl, 0x00, a, u, 1, b
MaxAbs_sint16:	MINMAX_INT	max, ax, dx, cx, 0x0000, a, u, 1, w
MaxAbs_sint32:	MINMAX_INT	max, eax, edx, ecx, 0x00000000, a, u, 1, d

; Floating-point types
MaxAbs_flt32:	MINMAX_FLT	max, MINF_FLT32, 1, s
MaxAbs_flt64:	MINMAX_FLT	max, MINF_FLT64, 1, d

;******************************************************************************;
;       Minimum and maximum value                                              ;
;******************************************************************************;

;==============================================================================;
;       Regular array search                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
Min_uint8:		MINMAX_INT	min, al, dl, cl, 0xFF, b, u, 0, b
Min_uint16:		MINMAX_INT	min, ax, dx, cx, 0xFFFF, b, u, 0, w
Min_uint32:		MINMAX_INT	min, eax, edx, ecx, 0xFFFFFFFF, b, u, 0, d

; Signed integer types
Min_sint8:		MINMAX_INT	min, al, dl, cl, 0x7F, l, s, 0, b
Min_sint16:		MINMAX_INT	min, ax, dx, cx, 0x7FFF, l, s, 0, w
Min_sint32:		MINMAX_INT	min, eax, edx, ecx, 0x7FFFFFFF, l, s, 0, d

; Floating-point types
Min_flt32:		MINMAX_FLT	min, PINF_FLT32, 0, s
Min_flt64:		MINMAX_FLT	min, PINF_FLT64, 0, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
Max_uint8:		MINMAX_INT	max, al, dl, cl, 0x00, a, u, 0, b
Max_uint16:		MINMAX_INT	max, ax, dx, cx, 0x0000, a, u, 0, w
Max_uint32:		MINMAX_INT	max, eax, edx, ecx, 0x00000000, a, u, 0, d

; Signed integer types
Max_sint8:		MINMAX_INT	max, al, dl, cl, 0x80, g, s, 0, b
Max_sint16:		MINMAX_INT	max, ax, dx, cx, 0x8000, g, s, 0, w
Max_sint32:		MINMAX_INT	max, eax, edx, ecx, 0x80000000, g, s, 0, d

; Floating-point types
Max_flt32:		MINMAX_FLT	max, MINF_FLT32, 0, s
Max_flt64:		MINMAX_FLT	max, MINF_FLT64, 0, d

;==============================================================================;
;       Object array search                                                    ;
;==============================================================================;
macro	MINMAX_OBJ	cmd, cond, bwd
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
func	equ		rdx							; pointer to compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
ptr		equ		r8							; pointer to current element
value	equ		r12							; min or max max value
vptr	equ		r13							; position of min or max value
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
s_vptr	equ		stack + 1 * 8				; stack position of "vptr" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_ptr	equ		stack + 5 * 8				; stack position of "ptr" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     then go to exit
;---[Normal execution branch]--------------
if bwd
		lea		ptr, [array + size * 8 - 8]	; ptr = array + size - 1
else
		mov		ptr, array					; ptr = array
end if
		mov		[s_value], value			; save old value of "value" variable
		mov		[s_vptr], vptr				; save old value of "vptr" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		value, [ptr]				; value = ptr[0].key
		mov		vptr, ptr					; vptr = ptr
		jmp		.skip
;---[Search loop]--------------------------
.loop:	mov		param2, [ptr]
		mov		param1, value
		call	qword [s_func]				; result = Compare (value, ptr[0])
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		cmp		result, 0					; if (result cond 0)
	cmov#cond	value, [ptr]				;     value = ptr[0].key
	cmov#cond	vptr, ptr					;     vptr = ptr
.skip:	cmd		ptr, 8						; change ptr position
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[Normal exit branch]-------------------
		sub		vptr, [s_array]
		shr		vptr, 3
		mov		result, vptr				; return vptr - array
		mov		value, [s_value]			; restore old value of "value" variable
		mov		vptr, [s_vptr]				; restore old value of "vptr" variable
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
MinFwd:	MINMAX_OBJ	add, g, 0
MinBwd:	MINMAX_OBJ	sub, g, 1

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
MaxFwd:	MINMAX_OBJ	add, l, 0
MaxBwd:	MINMAX_OBJ	sub, l, 1

;******************************************************************************;
;       Linear search                                                          ;
;******************************************************************************;

;==============================================================================;
;       Bit field search                                                       ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_BIT_FWD	inv
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
spos	equ		rsi							; start position
epos	equ		rdx							; end position
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of bitfield search
;------------------------------------------
		lea		array, [array * 8 + spos]	; convert bytes to bits
	prefetchnta	[array]						; prefetch data
		sub		epos, spos					; if (epos <= spos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		mov		index, array
		and		index, 0x3F					; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		shr		array, 3					; convert bits to bytes
;---[Unaligned operation]------------------
		add		epos, index					; epos += index
		mov		shft, index					; shft = index
		neg		index						; index = -index
		mov		cmask, -1
		shl		cmask, low					; adjust cmask for unaligned search
		mov		fmask, [array]
if inv
		not		fmask						; fmask = -fmask
end if
		and		fmask, cmask				; if any bit is set
		jnz		.brk						;     then break the loop
		add		index, 64					; index += 64
		sub		epos, 64					; if (epos <= 64)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / 8
		mov		fmask, [array + % * 8]
if inv
		not		fmask						; fmask = -fmask
end if
		and		fmask, fmask				; if any bit is set
		jnz		.brk						;     then break the loop
		add		index, 64					; index += 64
		sub		epos, 64					; if (epos <= 64)
		jbe		.ntfnd						;     return NOT_FOUND
end repeat
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, CLINE				; array += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		fmask, fmask				; find index of first set bit
		cmp		epos, fmask					; if (epos <= fmask)
		jbe		.ntfnd						;     return NOT_FOUND
		add		index, fmask				; index += fmask
		add		index, spos					; index += spos
		ret									; return index
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}

; Searching for set bit
FindSetBitFwd:		FIND_BIT_FWD	0

; Searching for reset bit
FindResetBitFwd:	FIND_BIT_FWD	1

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_BIT_BWD	inv
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
spos	equ		rsi							; start position
epos	equ		rdx							; end position
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of bitfield search
;------------------------------------------
		lea		array, [array * 8 + epos]	; convert bytes to bits
	prefetchnta	[array]						; prefetch data
		sub		epos, spos					; if (epos <= spos)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		mov		index, array
		neg		index
		and		index, 0x3F					; get array offset from vector boundary
		lea		array, [array + index - 64]	; align pointer to vector boundary
		shr		array, 3					; convert bits to bytes
;---[Unaligned operation]------------------
		add		epos, index					; epos += index
		mov		shft, index					; shft = index
		lea		index, [epos - 64]			; index = epos - 64
		mov		cmask, -1
		shr		cmask, low					; adjust cmask for unaligned search
		mov		fmask, [array]
if inv
		not		fmask						; fmask = -fmask
end if
		and		fmask, cmask				; if any bit is set
		jnz		.brk						;     then break the loop
		sub		index, 64					; index -= 64
		sub		epos, 64					; if (epos <= 64)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / 8
		mov		fmask, [array - % * 8]
if inv
		not		fmask						; fmask = -fmask
end if
		and		fmask, fmask				; if any bit is set
		jnz		.brk						;     then break the loop
		sub		index, 64					; index -= 64
		sub		epos, 64					; if (epos <= 64)
		jbe		.ntfnd						;     return NOT_FOUND
end repeat
	prefetchnta	[array - PSTEP]				; prefetch next portion of data
		sub		array, CLINE				; array -= CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsr		fmask, fmask				; find index of first occurence of pattern
		add		index, fmask				; if (index += fmask < 0), then go to not found branch
		js		.ntfnd						;     return NOT_FOUND
		add		index, spos					; index += spos
		ret
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}

; Searching for set bit
FindSetBitBwd:		FIND_BIT_BWD	0

; Searching for reset bit
FindResetBitBwd:	FIND_BIT_BWD	1

;==============================================================================;
;       Regular array search                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_FWD	reg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
patt	equ		rdx							; register which holds pattern
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of pattern search
flags	equ		xmm0						; pattern check flags
pattern	equ		xmm1						; pattern to find
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     return NOT_FOUND
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sclr						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		movq	pattern, patt				; pattern = patt
		clone	pattern, scale				; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
;---[Unaligned operation]------------------
		add		size, index					; size += index
		mov		shft, index					; shft = index
		neg		index						; index = -index
		mov		cmask, VBITS
		shl		cmask, low					; adjust cmask for unaligned search
		movdqa	flags, [array]
	pcmpeq#x	flags, pattern				; check array[0] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, cmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movdqa	flags, [array + % * VSIZE]
	pcmpeq#x	flags, pattern				; check array[i] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     return NOT_FOUND
end repeat
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, CLINE				; array += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		fmask, fmask				; find index of first occurence of pattern
		cmp		size, fmask					; if (size <= fmask)
		jbe		.ntfnd						;     return NOT_FOUND
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
if scale
;---[Scalar branch]------------------------
.sclr:	xor		index, index				; index = 0
;---[Scalar loop]--------------------------
.sloop:	cmp		[array], reg				; if (array[0] == pattern)
		je		.exit						;     then go to exit
		add		array, bytes				; array++
		add		index, 1					; index++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}
FindFwd8:	FIND_FWD	dl, b
FindFwd16:	FIND_FWD	dx, w
FindFwd32:	FIND_FWD	edx, d
FindFwd64:	FIND_FWD	rdx, q

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_BWD	reg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
patt	equ		rdx							; register which holds pattern
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of pattern search
flags	equ		xmm0						; pattern check flags
pattern	equ		xmm1						; pattern to find
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		lea		array, [array + size * bytes]
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     return NOT_FOUND
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sclr						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		movq	pattern, patt				; pattern = patt
		clone	pattern, scale				; duplicate value through the entire register
		mov		index, array
		neg		index
		and		index, VMASK				; get array offset from vector boundary
		lea		array, [array+index-VSIZE]	; align pointer to vector boundary
;---[Unaligned operation]------------------
		add		size, index					; size += index
		mov		shft, index					; shft = index
		lea		index, [size - VSIZE]		; index = size - VSIZE
		mov		cmask, VBITS
		shr		cmask, low					; adjust cmask for unaligned search
		movdqa	flags, [array]
	pcmpeq#x	flags, pattern				; check array[0] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, cmask				; if pattern is found
		jnz		.brk						;     then break the loop
		sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movdqa	flags, [array - % * VSIZE]
	pcmpeq#x	flags, pattern				; check array[-i] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     return NOT_FOUND
end repeat
	prefetchnta	[array - PSTEP]				; prefetch next portion of data
		sub		array, CLINE				; array -= CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsr		fmask, fmask				; find index of first occurence of pattern
		add		index, fmask				; if (index += fmask < 0), then go to not found branch
		js		.ntfnd						;     return NOT_FOUND
		shftr	index, scale				; return index
		ret
if scale
;---[Scalar branch]------------------------
.sclr:	mov		index, size					; index = size
;---[Scalar loop]--------------------------
.sloop:	sub		array, bytes				; array--
		sub		index, 1					; index--
		cmp		[array], reg				; if (array[0] == pattern)
		je		.exit						;     then go to exit
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}
FindBwd8:	FIND_BWD	dl, b
FindBwd16:	FIND_BWD	dx, w
FindBwd32:	FIND_BWD	edx, d
FindBwd64:	FIND_BWD	rdx, q

;==============================================================================;
;       Object array search                                                    ;
;==============================================================================;
macro	FIND_OBJ	cmd, bwd
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		rdx							; value to find
func	equ		rcx							; pointer to compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
ptr		equ		r8							; pointer to current element
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_ptr	equ		stack + 4 * 8				; stack position of "ptr" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
if bwd
		lea		ptr, [array + size * 8 - 8]	; ptr = array + size - 1
else
		mov		ptr, array					; ptr = array
end if
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [ptr]
		mov		param1, [s_value]
		call	qword [s_func]				; result = Compare (value, ptr[0])
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		test	result, result				; if (result == 0)
		jz		.found						;     then go to found branch
		cmd		ptr, 8						; change ptr position
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of search loop]-------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]-------------------------
.found:	sub		ptr, [s_array]
		shr		ptr, 3
		mov		result, ptr					; return ptr - array
		add		stack, space				; restoring back the stack pointer
		ret
}
FindFwd:	FIND_OBJ	add, 0
FindBwd:	FIND_OBJ	sub, 1

;******************************************************************************;
;       Binary search                                                          ;
;******************************************************************************;

;==============================================================================;
;       Regular array search                                                   ;
;==============================================================================;
macro	FINDBIN	value, cond1, cond2, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
result	equ		rax							; result register
median	equ		r8							; median value
median1	equ		r9							; median value + 1
left	equ		r10							; left index
right	equ		size						; right index
pos		equ		r11							; matched position
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		xor		left, left					; left = 0
		mov		pos, NOT_FOUND				; pos = NOT_FOUND
;---[Binary search loop]-------------------
.loop:	lea		median, [left + right]
		shr		median, 1					; median = (left + right) / 2
		lea		median1, [median + 1]		; median1 = median + 1
		cmp		value, [array+median*bytes]	; if (value cond array[median])
	cmov#cond1	pos, median					;     update matched position
	cmov#cond2	left, median1				;     then left = median + 1
	cmovn#cond2	right, median				;     else right = median
		cmp		left, right
		jb		.loop						; do while (left < right)
;---[End of search loop]-------------------
		mov		result, pos					; result = pos
		ret
;---[Not found branch]---------------------
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Searching for first equal element                                      ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindFirstEqualAsc_uint8:	FINDBIN		dl, e, a, 0
FindFirstEqualAsc_uint16:	FINDBIN		dx, e, a, 1
FindFirstEqualAsc_uint32:	FINDBIN		edx, e, a, 2
FindFirstEqualAsc_uint64:	FINDBIN		rdx, e, a, 3

; Signed integer types
FindFirstEqualAsc_sint8:	FINDBIN		dl, e, g, 0
FindFirstEqualAsc_sint16:	FINDBIN		dx, e, g, 1
FindFirstEqualAsc_sint32:	FINDBIN		edx, e, g, 2
FindFirstEqualAsc_sint64:	FINDBIN		rdx, e, g, 3

;------------------------------------------------------------------------------;
;       Searching for last equal element                                       ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindLastEqualAsc_uint8:		FINDBIN		dl, e, ae, 0
FindLastEqualAsc_uint16:	FINDBIN		dx, e, ae, 1
FindLastEqualAsc_uint32:	FINDBIN		edx, e, ae, 2
FindLastEqualAsc_uint64:	FINDBIN		rdx, e, ae, 3

; Signed integer types
FindLastEqualAsc_sint8:		FINDBIN		dl, e, ge, 0
FindLastEqualAsc_sint16:	FINDBIN		dx, e, ge, 1
FindLastEqualAsc_sint32:	FINDBIN		edx, e, ge, 2
FindLastEqualAsc_sint64:	FINDBIN		rdx, e, ge, 3

;------------------------------------------------------------------------------;
;       Searching for greater element                                          ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindGreatAsc_uint8:			FINDBIN		dl, b, ae, 0
FindGreatAsc_uint16:		FINDBIN		dx, b, ae, 1
FindGreatAsc_uint32:		FINDBIN		edx, b, ae, 2
FindGreatAsc_uint64:		FINDBIN		rdx, b, ae, 3

; Signed integer types
FindGreatAsc_sint8:			FINDBIN		dl, l, ge, 0
FindGreatAsc_sint16:		FINDBIN		dx, l, ge, 1
FindGreatAsc_sint32:		FINDBIN		edx, l, ge, 2
FindGreatAsc_sint64:		FINDBIN		rdx, l, ge, 3

;------------------------------------------------------------------------------;
;       Searching for greater or equal element                                 ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindGreatEqualAsc_uint8:	FINDBIN		dl, be, a, 0
FindGreatEqualAsc_uint16:	FINDBIN		dx, be, a, 1
FindGreatEqualAsc_uint32:	FINDBIN		edx, be, a, 2
FindGreatEqualAsc_uint64:	FINDBIN		rdx, be, a, 3

; Signed integer types
FindGreatEqualAsc_sint8:	FINDBIN		dl, le, g, 0
FindGreatEqualAsc_sint16:	FINDBIN		dx, le, g, 1
FindGreatEqualAsc_sint32:	FINDBIN		edx, le, g, 2
FindGreatEqualAsc_sint64:	FINDBIN		rdx, le, g, 3

;------------------------------------------------------------------------------;
;       Searching for less element                                             ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindLessAsc_uint8:			FINDBIN		dl, a, a, 0
FindLessAsc_uint16:			FINDBIN		dx, a, a, 1
FindLessAsc_uint32:			FINDBIN		edx, a, a, 2
FindLessAsc_uint64:			FINDBIN		rdx, a, a, 3

; Signed integer types
FindLessAsc_sint8:			FINDBIN		dl, g, g, 0
FindLessAsc_sint16:			FINDBIN		dx, g, g, 1
FindLessAsc_sint32:			FINDBIN		edx, g, g, 2
FindLessAsc_sint64:			FINDBIN		rdx, g, g, 3

;------------------------------------------------------------------------------;
;       Searching for less or equal element                                    ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindLessEqualAsc_uint8:		FINDBIN		dl, ae, ae, 0
FindLessEqualAsc_uint16:	FINDBIN		dx, ae, ae, 1
FindLessEqualAsc_uint32:	FINDBIN		edx, ae, ae, 2
FindLessEqualAsc_uint64:	FINDBIN		rdx, ae, ae, 3

; Signed integer types
FindLessEqualAsc_sint8:		FINDBIN		dl, ge, ge, 0
FindLessEqualAsc_sint16:	FINDBIN		dx, ge, ge, 1
FindLessEqualAsc_sint32:	FINDBIN		edx, ge, ge, 2
FindLessEqualAsc_sint64:	FINDBIN		rdx, ge, ge, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Searching for first equal element                                      ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindFirstEqualDsc_uint8:	FINDBIN		dl, e, b, 0
FindFirstEqualDsc_uint16:	FINDBIN		dx, e, b, 1
FindFirstEqualDsc_uint32:	FINDBIN		edx, e, b, 2
FindFirstEqualDsc_uint64:	FINDBIN		rdx, e, b, 3

; Signed integer types
FindFirstEqualDsc_sint8:	FINDBIN		dl, e, l, 0
FindFirstEqualDsc_sint16:	FINDBIN		dx, e, l, 1
FindFirstEqualDsc_sint32:	FINDBIN		edx, e, l, 2
FindFirstEqualDsc_sint64:	FINDBIN		rdx, e, l, 3

;------------------------------------------------------------------------------;
;       Searching for last equal element                                       ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindLastEqualDsc_uint8:		FINDBIN		dl, e, be, 0
FindLastEqualDsc_uint16:	FINDBIN		dx, e, be, 1
FindLastEqualDsc_uint32:	FINDBIN		edx, e, be, 2
FindLastEqualDsc_uint64:	FINDBIN		rdx, e, be, 3

; Signed integer types
FindLastEqualDsc_sint8:		FINDBIN		dl, e, le, 0
FindLastEqualDsc_sint16:	FINDBIN		dx, e, le, 1
FindLastEqualDsc_sint32:	FINDBIN		edx, e, le, 2
FindLastEqualDsc_sint64:	FINDBIN		rdx, e, le, 3

;------------------------------------------------------------------------------;
;       Searching for less element                                             ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindLessDsc_uint8:			FINDBIN		dl, a, be, 0
FindLessDsc_uint16:			FINDBIN		dx, a, be, 1
FindLessDsc_uint32:			FINDBIN		edx, a, be, 2
FindLessDsc_uint64:			FINDBIN		rdx, a, be, 3

; Signed integer types
FindLessDsc_sint8:			FINDBIN		dl, g, le, 0
FindLessDsc_sint16:			FINDBIN		dx, g, le, 1
FindLessDsc_sint32:			FINDBIN		edx, g, le, 2
FindLessDsc_sint64:			FINDBIN		rdx, g, le, 3

;------------------------------------------------------------------------------;
;       Searching for less or equal element                                    ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindLessEqualDsc_uint8:		FINDBIN		dl, ae, b, 0
FindLessEqualDsc_uint16:	FINDBIN		dx, ae, b, 1
FindLessEqualDsc_uint32:	FINDBIN		edx, ae, b, 2
FindLessEqualDsc_uint64:	FINDBIN		rdx, ae, b, 3

; Signed integer types
FindLessEqualDsc_sint8:		FINDBIN		dl, ge, l, 0
FindLessEqualDsc_sint16:	FINDBIN		dx, ge, l, 1
FindLessEqualDsc_sint32:	FINDBIN		edx, ge, l, 2
FindLessEqualDsc_sint64:	FINDBIN		rdx, ge, l, 3

;------------------------------------------------------------------------------;
;       Searching for greater element                                          ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindGreatDsc_uint8:			FINDBIN		dl, b, b, 0
FindGreatDsc_uint16:		FINDBIN		dx, b, b, 1
FindGreatDsc_uint32:		FINDBIN		edx, b, b, 2
FindGreatDsc_uint64:		FINDBIN		rdx, b, b, 3

; Signed integer types
FindGreatDsc_sint8:			FINDBIN		dl, l, l, 0
FindGreatDsc_sint16:		FINDBIN		dx, l, l, 1
FindGreatDsc_sint32:		FINDBIN		edx, l, l, 2
FindGreatDsc_sint64:		FINDBIN		rdx, l, l, 3

;------------------------------------------------------------------------------;
;       Searching for greater or equal element                                 ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindGreatEqualDsc_uint8:	FINDBIN		dl, be, be, 0
FindGreatEqualDsc_uint16:	FINDBIN		dx, be, be, 1
FindGreatEqualDsc_uint32:	FINDBIN		edx, be, be, 2
FindGreatEqualDsc_uint64:	FINDBIN		rdx, be, be, 3

; Signed integer types
FindGreatEqualDsc_sint8:	FINDBIN		dl, le, le, 0
FindGreatEqualDsc_sint16:	FINDBIN		dx, le, le, 1
FindGreatEqualDsc_sint32:	FINDBIN		edx, le, le, 2
FindGreatEqualDsc_sint64:	FINDBIN		rdx, le, le, 3

;==============================================================================;
;       Object array search                                                    ;
;==============================================================================;
macro	FINDBIN_OBJ	cond1, cond2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		rdx							; value to find
func	equ		rcx							; pointer to compare function
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
s_value	equ		stack + 2 * 8				; stack position of "value" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_left	equ		stack + 4 * 8				; stack position of "left" variable
s_right	equ		stack + 5 * 8				; stack position of "right" variable
s_med	equ		stack + 6 * 8				; stack position of "median" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     return NOT_FOUND
;---[Normal execution branch]--------------
		xor		left, left					; left = 0
		mov		[s_pos], pos				; save old value of "pos" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		mov		pos, NOT_FOUND				; pos = NOT_FOUND
;---[Binary search loop]-------------------
.loop:	lea		median, [left + right]
		shr		median, 1					; median = (left + right) / 2
		mov		[s_med], median				; save "median" variable into the stack
		mov		param2, [array + median * 8]
		mov		param1, [s_value]
		call	qword [s_func]				; result = Compare (value, array[median])
		mov		array, [s_array]			; get "array" variable from the stack
		mov		left, [s_left]				; get "left" variable from the stack
		mov		right, [s_right]			; get "right" variable from the stack
		mov		median, [s_med]				; get "median" variable from the stack
		lea		median1, [median + 1]		; median1 = median + 1
		cmp		result, 0					; if (value cond array[median])
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
.ntfnd:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Searching for first equal element
FindFirstEqualAsc:		FINDBIN_OBJ		e, g

; Searching for last equal element
FindLastEqualAsc:		FINDBIN_OBJ		e, ge

; Searching for greater element
FindGreatAsc:			FINDBIN_OBJ		l, ge

; Searching for greater or equal element
FindGreatOrEqualAsc:	FINDBIN_OBJ		le, g

; Searching for less element
FindLessAsc:			FINDBIN_OBJ		g, g

; Searching for less or equal element
FindLessOrEqualAsc:		FINDBIN_OBJ		ge, ge

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Searching for first equal element
FindFirstEqualDsc:		FINDBIN_OBJ		e, l

; Searching for last equal element
FindLastEqualDsc:		FINDBIN_OBJ		e, le

; Searching for less element
FindLessDsc:			FINDBIN_OBJ		g, le

; Searching for less or equal element
FindLessOrEqualDsc:		FINDBIN_OBJ		ge, l

; Searching for greater element
FindGreatDsc:			FINDBIN_OBJ		l, l

; Searching for greater or equal element
FindGreatOrEqualDsc:	FINDBIN_OBJ		le, le

;******************************************************************************;
;       Linear counting                                                        ;
;******************************************************************************;

;==============================================================================;
;       Bit counting                                                           ;
;==============================================================================;
CountBits:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
spos	equ		rsi							; start position
epos	equ		rdx							; end position
;---[Internal variables]-------------------
count	equ		rax							; count of pattern matches
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of pattern search
;------------------------------------------
		lea		array, [array * 8 + spos]	; convert bytes to bits
	prefetchnta	[array]						; prefetch data
		xor		count, count				; count = 0
		sub		epos, spos					; if (epos <= spos)
		jbe		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		shft, array
		and		shft, 0x3F					; get array offset from vector boundary
		sub		array, shft					; align pointer to vector boundary
		shr		array, 3					; convert bits to bytes
;---[Unaligned operation]------------------
		add		epos, shft					; epos += shft
		mov		cmask, -1
		shl		cmask, low					; adjust cmask for unaligned search
		mov		fmask, [array]
		and		fmask, cmask				; clear unrequired bits
		sub		epos, 64					; if (epos <= 64)
		jbe		.tail						;     then process array tail
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += bits
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / 8
		mov		fmask, [array + % * 8]
		sub		epos, 64					; if (epos <= 64)
		jbe		.tail						;     then process array tail
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += bits
end repeat
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, CLINE				; array += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	xor		shft, shft
		sub		shft, epos					; get count of tail elements
		mov		cmask, -1
		shr		cmask, low					; adjust cmask for tail search
		and		fmask, cmask				; clear unrequired bits
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += bits
		ret
;---[Normal exit]--------------------------
.exit:	ret

;==============================================================================;
;       Element counting                                                       ;
;==============================================================================;
macro	COUNT	reg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
patt	equ		rdx							; register which holds pattern
;---[Internal variables]-------------------
count	equ		rax							; count of pattern matches
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of pattern search
flags	equ		xmm0						; pattern check flags
pattern	equ		xmm1						; pattern to find
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		xor		count, count				; count = 0
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sclr						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		movq	pattern, patt				; pattern = patt
		clone	pattern, scale				; duplicate value through the entire register
		mov		shft, array
		and		shft, VMASK					; get array offset from vector boundary
		sub		array, shft					; align pointer to vector boundary
;---[Unaligned operation]------------------
		add		size, shft					; size += shft
		mov		cmask, VBITS
		shl		cmask, low					; adjust cmask for unaligned search
		movdqa	flags, [array]
	pcmpeq#x	flags, pattern				; check array[0] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, cmask				; if pattern is found
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movdqa	flags, [array + % * VSIZE]
	pcmpeq#x	flags, pattern				; check array[i] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
end repeat
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, CLINE				; array += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	xor		shft, shft
		sub		shft, size					; get count of tail elements
		mov		cmask, VBITS
		shr		cmask, low					; adjust cmask for tail search
		and		fmask, cmask				; if pattern is found
		popcnt	fmask, fmask				; get count of pattern matches
		add		count, fmask				; count += mathes
		shftr	count, scale				; return count
		ret
if scale
;---[Scalar branch]------------------------
.sclr:	mov		cmask, 1					; cmask = 1
;---[Scalar loop]--------------------------
.sloop:	xor		fmask, fmask				; fmask = 0
		cmp		[array], reg				; if (array[0] == pattern) {
		cmove	fmask, cmask				;     count++
		add		count, fmask				; }
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Normal exit]--------------------------
.exit:	ret
}
Count8:		COUNT	dl, b
Count16:	COUNT	dx, w
Count32:	COUNT	edx, d
Count64:	COUNT	rdx, q

;==============================================================================;
;       Object counting                                                        ;
;==============================================================================;
Count:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		rdx							; value to find
func	equ		rcx							; pointer to compare function
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
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
		mov		[s_value], value			; save "value" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, [s_value]
		call	qword [s_func]				; result = Compare (value, array[0])
		mov		array, [s_array]			; get "array" variable from the stack
		test	result, result				; if (result == 0)
		setz	status						; {
		movzx	result, status
		add		[s_total], result			;     then total++ }
		add		array, 8					; array++
		mov		[s_array], array			; save "array" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of search loop]-------------------
.exit:	mov		result, [s_total]
		add		stack, space				; restoring back the stack pointer
		ret									; return total

;******************************************************************************;
;       Binary counting                                                        ;
;******************************************************************************;

;==============================================================================;
;       Element counting                                                       ;
;==============================================================================;
macro	COUNTBIN	Func1, Func2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		rdx							; value to find
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
s_res	equ		stack + 3 * 8				; stack position of "result" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     return 0
;---[Normal execution branch]--------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
		call	Func1						; result = Func1 (array, size, value)
		cmp		result, NOT_FOUND			; if (result == NOT_FOUND)
		je		.ntfnd						;     return 0
		mov		[s_res], result				; save "result" variable into the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		value, [s_value]			; get "value" variable from the stack
		call	Func2						; result = Func2 (array, size, value)
		sub		result, [s_res]				; correct result
		add		result, 1					; return result + 1
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		result, result				; return 0
		add		stack, space				; restoring back the stack pointer
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
CountAsc_uint8:		COUNTBIN	FindFirstEqualAsc_uint8, FindLastEqualAsc_uint8
CountAsc_uint16:	COUNTBIN	FindFirstEqualAsc_uint16, FindLastEqualAsc_uint16
CountAsc_uint32:	COUNTBIN	FindFirstEqualAsc_uint32, FindLastEqualAsc_uint32
CountAsc_uint64:	COUNTBIN	FindFirstEqualAsc_uint64, FindLastEqualAsc_uint64

; Signed integer types
CountAsc_sint8:		COUNTBIN	FindFirstEqualAsc_sint8, FindLastEqualAsc_sint8
CountAsc_sint16:	COUNTBIN	FindFirstEqualAsc_sint16, FindLastEqualAsc_sint16
CountAsc_sint32:	COUNTBIN	FindFirstEqualAsc_sint32, FindLastEqualAsc_sint32
CountAsc_sint64:	COUNTBIN	FindFirstEqualAsc_sint64, FindLastEqualAsc_sint64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
CountDsc_uint8:		COUNTBIN	FindFirstEqualDsc_uint8, FindLastEqualDsc_uint8
CountDsc_uint16:	COUNTBIN	FindFirstEqualDsc_uint16, FindLastEqualDsc_uint16
CountDsc_uint32:	COUNTBIN	FindFirstEqualDsc_uint32, FindLastEqualDsc_uint32
CountDsc_uint64:	COUNTBIN	FindFirstEqualDsc_uint64, FindLastEqualDsc_uint64

; Signed integer types
CountDsc_sint8:		COUNTBIN	FindFirstEqualDsc_sint8, FindLastEqualDsc_sint8
CountDsc_sint16:	COUNTBIN	FindFirstEqualDsc_sint16, FindLastEqualDsc_sint16
CountDsc_sint32:	COUNTBIN	FindFirstEqualDsc_sint32, FindLastEqualDsc_sint32
CountDsc_sint64:	COUNTBIN	FindFirstEqualDsc_sint64, FindLastEqualDsc_sint64

;==============================================================================;
;       Object counting                                                        ;
;==============================================================================;
macro	COUNTBIN_OBJ	Func1, Func2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		rdx							; value to find
func	equ		rcx							; pointer to compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_res	equ		stack + 4 * 8				; stack position of "result" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     return 0
;---[Normal execution branch]--------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		call	Func1						; result = Func1 (array, size, value, func)
		cmp		result, NOT_FOUND			; if (result == NOT_FOUND)
		je		.ntfnd						;     return 0
		mov		[s_res], result				; save "result" variable into the stack
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		value, [s_value]			; get "value" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		call	Func2						; result = Func2 (array, size, value, func)
		sub		result, [s_res]				; correct result
		add		result, 1					; return result + 1
		add		stack, space				; restoring back the stack pointer
		ret
;---[Not found branch]---------------------
.ntfnd:	xor		result, result				; return 0
		add		stack, space				; restoring back the stack pointer
		ret
}
CountAsc:	COUNTBIN_OBJ	FindFirstEqualAsc, FindLastEqualAsc
CountDsc:	COUNTBIN_OBJ	FindFirstEqualDsc, FindLastEqualDsc

;******************************************************************************;
;       Replacing                                                              ;
;******************************************************************************;

;==============================================================================;
;       Element replacing                                                      ;
;==============================================================================;
macro	REPLACE	reg, val, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
patt	equ		rdx							; register which holds pattern
value	equ		rcx							; register which holds replacement value
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
table	equ		r8							; pointer to blending table
ptr		equ		r9							; temporary pointer to array
fmask	equ		r10							; result of pattern search
back	equ		table						; back address
flags	equ		xmm0						; pattern check flags
data	equ		xmm1						; register which holds original data
pattern	equ		xmm2						; pattern to find
replace	equ		xmm3						; replacement value
cmask	equ		xmm4						; mask to clear unrequired results
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		movq	pattern, patt				; pattern = patt
		clone	pattern, scale				; duplicate value through the entire register
		movq	replace, value				; replace = value
		clone	replace, scale				; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	cmask, [table + index]
		xor		index, index				; index = 0
		movdqa	flags, [array]
	pcmpeq#x	flags, pattern				; check array[0] for pattaren
		pandn	cmask, flags				; apply mask to pattern search results
		movdqa	flags, cmask
	pmovmskb	fmask, cmask				; save check results to fmask
		lea		back, [.back0]				;     save return address
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
.back0:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.exit						;     then go to exit
;---[Vector loop]--------------------------
.vloop:	movdqa	flags, [ptr + 1 * VSIZE]
	pcmpeq#x	flags, pattern				; check ptr[1] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		lea		back, [.back1]				;     save return address
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
.back1:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.exit						;     then go to exit
		movdqa	flags, [ptr + 2 * VSIZE]
	pcmpeq#x	flags, pattern				; check ptr[2] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		lea		back, [.back2]				;     save return address
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
.back2:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.exit						;     then go to exit
		movdqa	flags, [ptr + 3 * VSIZE]
	pcmpeq#x	flags, pattern				; check ptr[3] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		lea		back, [.back3]				;     save return address
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
.back3:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.exit						;     then go to exit
		movdqa	flags, [ptr + 4 * VSIZE]
	pcmpeq#x	flags, pattern				; check ptr[4] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		lea		back, [.back4]				;     save return address
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
.back4:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.exit						;     then go to exit
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	cmp		size, VSIZE					; if (size <= VSIZE)
		jbe		@f							;     then parse array tail
		movdqa	data, [array + index]		; data = array[index]
	pblendvb	data, replace
		movdqa	[array + index], data		; array[index] = replace (data, pattern, value)
		jmp		back						; go back into the search loop
@@:		shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		pand	flags, [table + size]
		movdqa	data, [array + index]		; data = array[index]
	pblendvb	data, replace
		movdqa	[array + index], data		; array[index] = replace (data, pattern, value)
		ret
if scale
;---[Scalar loop]--------------------------
.sloop:	cmp		[array], reg				; if (array[0] == pattern) {
		jne		@f							;     array[0] = value
		mov		[array], val				; }
@@:		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Not found branch]---------------------
.exit:	ret
}
Replace8:	REPLACE	dl, cl, b
Replace16:	REPLACE	dx, cx, w
Replace32:	REPLACE	edx, ecx, d
Replace64:	REPLACE	rdx, rcx, q

;==============================================================================;
;       Object replacing                                                       ;
;==============================================================================;
Replace:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
patt	equ		rdx							; pattern to find
value	equ		rcx							; value to replace matched pattern
func	equ		r8							; pointer to compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
s_patt	equ		stack + 2 * 8				; stack position of "pattern" variable
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
		mov		[s_patt], patt				; save "pattern" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Search loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, [s_patt]
		call	qword [s_func]				; result = Compare (pattern, array[0])
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
;       Order reversing                                                        ;
;******************************************************************************;

;==============================================================================;
;       Regular array reversing                                                ;
;==============================================================================;
macro	REVERSE	key1, key2, mpos, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to last element in array
vsize	equ		rdx							; count of vectorized reverse operations
temp1	equ		xmm0						; temporary register #1
temp2	equ		xmm1						; temporary register #2
mask	equ		xmm2						; shuffle control mask
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		lea		ptr, [array + size * bytes]	; ptr = array + size
		shr		size, 1						; size >>= 1
		jz		.exit						; if (size == 0), then go to exit
;---[normal execution branch]--------------
		shl		size, scale					; convert size to bytes
		mov		vsize, size					; vsize = size & ~VMASK
		and		vsize, not VMASK			; if (vsize == 0)
		jz		.skip						;     then skip vector loop
		movdqa	mask, dqword [mpos]			; load shuffle control mask
;---[Vector loop]--------------------------
.vloop:	sub		ptr, VSIZE					; ptr -= VSIZE
		movdqu	temp1, [array]				; temp1 = array[0]
		movdqu	temp2, [ptr]				; temp2 = ptr[0]
		pshufb	temp1, mask					; reverse elements order in temp1
		pshufb	temp2, mask					; reverse elements order in temp2
		movdqu	[array], temp2				; array[0] = temp2
		movdqu	[ptr], temp1				; ptr[0] = temp1
		add		array, VSIZE				; array += VSIZE
		sub		vsize, VSIZE				; vsize -= VSIZE
		jnz		.vloop						; do while (vsize != 0)
;---[End of vector loop]-------------------
.skip:	and		size, VMASK					; if (size & VMASK == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	sub		ptr, bytes					; ptr--
		mov		key1, [array]				; key1 = array[0]
		mov		key2, [ptr]					; key2 = ptr[0]
		mov		[array], key2				; array[0] = key2
		mov		[ptr], key1					; ptr[0] = key1
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
Reverse8:	REVERSE		cl, dl, rmask8, 0
Reverse16:	REVERSE		cx, dx, rmask16, 1
Reverse32:	REVERSE		ecx, edx, rmask32, 2
Reverse64:	REVERSE		rcx, rdx, rmask64, 3

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;

;==============================================================================;
;       Unique elements                                                        ;
;==============================================================================;
macro	UNIQUE	value, scale
{
;---[Parameters]---------------------------
unique	equ		rdi							; pointer to array of unique values
array	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
result	equ		rax							; result registet
ptr		equ		r9							; pointer to unique sequnce
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		ptr, unique					; ptr = unique
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		value, [array]				; value = array[0]
		add		array, bytes				; array++
		sub		size, 1						; size--
		jz		.skip						; if (size == 0), then skip the loop
;---[Unique loop]--------------------------
.loop:	cmp		value, [array]				; if (value != array[0])
		je		@f							; {
		mov		[ptr], value				;     ptr[0] = value
		add		ptr, bytes					;     ptr++
		mov		value, [array]				;     value = array[0] }
@@:		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of unique loop]-------------------
.skip:	mov		[ptr], value				; ptr[0] = value
		add		ptr, bytes					; ptr++
;---[Normal exit branch]-------------------
.exit:	sub		ptr, unique
		shr		ptr, scale
		mov		result, ptr					; return ptr - unique
		ret
}
Unique8:	UNIQUE	r10b, 0
Unique16:	UNIQUE	r10w, 1
Unique32:	UNIQUE	r10d, 2
Unique64:	UNIQUE	r10, 3

;==============================================================================;
;       Unique objects                                                         ;
;==============================================================================;
Unique:
;---[Parameters]---------------------------
unique	equ		rdi							; pointer to array of unique values
array	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
func	equ		rcx							; pointer to compare function
;---[Internal variables]-------------------
result	equ		rax							; result registet
ptr		equ		r9							; pointer to unique sequnce
value	equ		r10							; key value
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
		mov		ptr, unique					; ptr = unique
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		value, [array]				; value = array[0]
		add		array, 8					; array++
		mov		[s_uniq], unique			; save "unique" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
		sub		qword [s_size], 1			; size--
		jz		.skip						; if (size == 0), then skip the loop
;---[Unique loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, value
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
		mov		unique, [s_uniq]			; get "unique" variable from the stack
.exit:	sub		ptr, unique
		shr		ptr, 3
		mov		result, ptr					; return ptr - unique
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Duplicate values                                                       ;
;******************************************************************************;

;==============================================================================;
;       Duplicate elements                                                     ;
;==============================================================================;
macro	DUPLICATES	value, scale
{
;---[Parameters]---------------------------
unique	equ		rdi							; pointer to array of unique values
count	equ		rsi							; pointer to array of counters
array	equ		rdx							; pointer to source array
size	equ		rcx							; array size (count of elements)
;---[Internal variables]-------------------
result	equ		rax							; result registet
ptr		equ		r9							; pointer to unique sequnce
total	equ		r11							; count of duplicates
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		ptr, unique					; ptr = unique
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		value, [array]				; value = array[0]
		add		array, bytes				; array++
		mov		total, 1					; total = 1
		sub		size, 1						; size--
		jz		.skip						; if (size == 0), then skip the loop
;---[Unique loop]--------------------------
.loop:	cmp		value, [array]				; if (value != array[0])
		je		@f							; {
		mov		[ptr], value				;     ptr[0] = value
		add		ptr, bytes					;     ptr++
		mov		[count], total				;     count[0] = total
		add		count, 8					;     count++
		mov		value, [array]				;     value = array[0]
		xor		total, total				;     total = 0 }
@@:		add		array, bytes				; array++
		add		total, 1					; total++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of unique loop]-------------------
.skip:	mov		[ptr], value				; ptr[0] = value
		add		ptr, bytes					; ptr++
		mov		[count], total				; count[0] = total
		add		count, 8					; count++
;---[Normal exit branch]-------------------
.exit:	sub		ptr, unique
		shr		ptr, scale
		mov		result, ptr					; return ptr - unique
		ret
}
Duplicates8:	DUPLICATES	r10b, 0
Duplicates16:	DUPLICATES	r10w, 1
Duplicates32:	DUPLICATES	r10d, 2
Duplicates64:	DUPLICATES	r10, 3

;==============================================================================;
;       Duplicate objects                                                      ;
;==============================================================================;
Duplicates:
;---[Parameters]---------------------------
unique	equ		rdi							; pointer to array of unique values
count	equ		rsi							; pointer to array of counters
array	equ		rdx							; pointer to source array
size	equ		rcx							; array size (count of elements)
func	equ		r8							; pointer to compare function
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
		mov		ptr, unique					; ptr = unique
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		value, [array]				; value = array[0]
		add		array, 8					; array++
		mov		total, 1					; total = 1
		mov		[s_uniq], unique			; save "unique" variable into the stack
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_value], value			; save "value" variable into the stack
		mov		[s_total], total			; save "total" variable into the stack
		sub		qword [s_size], 1			; size--
		jz		.skip						; if (size == 0), then skip the loop
;---[Unique loop]--------------------------
.loop:	mov		param2, [array]
		mov		param1, value
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
		mov		[s_count], count			; save "count" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
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
		mov		unique, [s_uniq]			; get "unique" variable from the stack
.exit:	sub		ptr, unique
		shr		ptr, 3
		mov		result, ptr					; return ptr - unique
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Mapping functions                                                      ;
;******************************************************************************;
macro	MAP		reg1, reg2, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
table	equ		r8							; pointer to blending table
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
mask	equ		xmm2						; data mask
zero	equ		xmm3						; 0
data	equ		xmm4						; register which holds original data
if x eq d
dmask	= DMASK_FLT32						; data mask
scale	= 2									; scale value
else if x eq q
dmask	= DMASK_FLT64						; data mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		initreg	mask, index, dmask			; mask = dmask
		clone	mask, scale					; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned operation]------------------
		add		size, index					; size += index
		shl		index, VSCALE				; compute shift in mask array
		lea		table, [maskS1]				; set pointer to blending table
		movdqa	blend, [table + index]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [array]				; temp = array[0]
		movdqa	data, temp					; data = temp
		pxor	zero, zero					; zero = 0
	pcmpgt#x	zero, temp					; if (temp < 0)
		pand	zero, mask					;     then zero = dmask
		pxor	temp, zero					; temp ^= zero
	pblendvb	temp, data					; blend temp with original data
		movdqa	[array], temp				; array[0] = temp
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + % * VSIZE]		; temp = ptr[i]
		pxor	zero, zero					; zero = 0
	pcmpgt#x	zero, temp					; if (temp < 0)
		pand	zero, mask					;     then zero = dmask
		pxor	temp, zero					; temp ^= zero
		movdqa	[ptr + % * VSIZE], temp		; ptr[i] = temp
end repeat
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, CLINE					; ptr += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, VSCALE				; compute shift in mask array
		lea		table, [maskS2]				; set pointer to blending table
		pandn	blend, [table + size]
		movdqa	temp, [array + index]		; temp = array[index]
		movdqa	data, temp					; data = temp
		pxor	zero, zero					; zero = 0
	pcmpgt#x	zero, temp					; if (temp < 0)
		pand	zero, mask					;     then zero = dmask
		pxor	temp, zero					; temp ^= zero
	pblendvb	data, temp					; blend temp with original data
		movdqa	[array + index], data		; array[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	mov		reg1, [array]				; reg1 = array[0]
		mov		reg2, dmask					; reg2 = reg1 ^ dmask
		xor		reg2, reg1					; if (reg1 < 0)
		cmovs	reg1, reg2					;     reg1 = reg2
		mov		[array], reg1				; array[0] = reg1
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
Map_flt32:		MAP	eax, edx, d
Map_flt64:		MAP	rax, rdx, q

;******************************************************************************;
;       Insertion sort                                                         ;
;******************************************************************************;

;==============================================================================;
;       Regular array sorting                                                  ;
;==============================================================================;
macro	INSERTSORT	key1, key2, op, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
left	equ		r8							; left index
right	equ		r9							; right index
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
		mov		left, 1						; left = 1
;---[Sorting loop]-------------------------
.loop:	mov		right, left					; right = left
		mov		key1, [array + right*bytes]	; key1 = array[right]
;---[Internal loop]------------------------
.iloop:	mov		key2, [array + right*bytes-bytes]
		cmp		key1, key2					; if (key1 op array[right-1])
		jn#op	.break						; {
		mov		[array + right*bytes], key2	;     array[right] = key2
		sub		right, 1					;     right-- }
		jnz		.iloop						; do while (right != 0)
;---[End of internal loop]-----------------
.break:	mov		[array + right*bytes], key1	; array[right] = key1
		add		left, 1						; left++
		cmp		left, size
		jb		.loop						; do while (left < size)
;---[End of sorting loop]------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SORT1	SortFunc, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
if x eq s
Map		= Map_flt32							; map function
else if x eq d
Map		= Map_flt64							; map function
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Convert array]------------------------
		mov		param2, size
		mov		param1, array
		call	Map							; call Map (array, size)
;---[Sort array]---------------------------
		mov		param2, [s_size]
		mov		param1, [s_array]
		call	SortFunc					; call SortFunc (array, size)
;---[Convert array]------------------------
		mov		param2, [s_size]
		mov		param1, [s_array]
		call	Map							; call Map (array, size)
;---[Normal exit]--------------------------
		add		stack, space				; restoring back the stack pointer
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
InsertSortAsc_uint8:	INSERTSORT	al, cl, b, 0
InsertSortAsc_uint16:	INSERTSORT	ax, cx, b, 1
InsertSortAsc_uint32:	INSERTSORT	eax, ecx, b, 2
InsertSortAsc_uint64:	INSERTSORT	rax, rcx, b, 3

; Signed integer types
InsertSortAsc_sint8:	INSERTSORT	al, cl, l, 0
InsertSortAsc_sint16:	INSERTSORT	ax, cx, l, 1
InsertSortAsc_sint32:	INSERTSORT	eax, ecx, l, 2
InsertSortAsc_sint64:	INSERTSORT	rax, rcx, l, 3

; Floating-point types
InsertSortAsc_flt32:	SORT1		InsertSortAsc_sint32, s
InsertSortAsc_flt64:	SORT1		InsertSortAsc_sint64, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
InsertSortDsc_uint8:	INSERTSORT	al, cl, a, 0
InsertSortDsc_uint16:	INSERTSORT	ax, cx, a, 1
InsertSortDsc_uint32:	INSERTSORT	eax, ecx, a, 2
InsertSortDsc_uint64:	INSERTSORT	rax, rcx, a, 3

; Signed integer types
InsertSortDsc_sint8:	INSERTSORT	al, cl, g, 0
InsertSortDsc_sint16:	INSERTSORT	ax, cx, g, 1
InsertSortDsc_sint32:	INSERTSORT	eax, ecx, g, 2
InsertSortDsc_sint64:	INSERTSORT	rax, rcx, g, 3

; Floating-point types
InsertSortDsc_flt32:	SORT1		InsertSortDsc_sint32, s
InsertSortDsc_flt64:	SORT1		InsertSortDsc_sint64, d

;==============================================================================;
;       Key array sorting                                                      ;
;==============================================================================;
macro	INSERTSORT_KEY	key1, key2, op, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
ptr		equ		rsi							; pointer to array of pointers to data
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
left	equ		r8							; left index
right	equ		r9							; right index
ptr1	equ		r10							; temporary ptr #1
ptr2	equ		r11							; temporary ptr #2
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
		mov		left, 1						; left = 1
;---[Sorting loop]-------------------------
.loop:	mov		right, left					; right = left
		mov		key1, [array + right*bytes]	; key1 = array[right]
		mov		ptr1, [ptr + right * 8]		; ptr1 = ptr[right]
;---[Internal loop]------------------------
.iloop:	mov		key2, [array+right*bytes-bytes]
		mov		ptr2, [ptr + right * 8 - 8]	; ptr2 = ptr[right-1]
		cmp		key1, key2					; if (key1 op array[right-1])
		jn#op	.break						; {
		mov		[array+right*bytes], key2	;     array[right] = key2
		mov		[ptr + right * 8], ptr2		;     ptr[right] = ptr2
		sub		right, 1					;     right-- }
		jnz		.iloop						; do while (right != 0)
;---[End of internal loop]-----------------
.break:	mov		[array + right*bytes], key1	; array[right] = key1
		mov		[ptr + right * 8], ptr1		; ptr[right] = ptr1
		add		left, 1						; left++
		cmp		left, size
		jb		.loop						; do while (left < size)
;---[End of sorting loop]------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SORT1_KEY	SortFunc, x
{
;---[Parameters]---------------------------
key		equ		rdi							; pointer to key array
ptr		equ		rsi							; pointer to array of pointers to data
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_key	equ		stack + 0 * 8				; stack position of "key" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
if x eq s
Map		= Map_flt32							; map function
else if x eq d
Map		= Map_flt64							; map function
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Convert array]------------------------
		mov		param2, size
		mov		param1, key
		call	Map							; call Map (key, size)
;---[Sort array]---------------------------
		mov		param3, [s_size]
		mov		param2, [s_ptr]
		mov		param1, [s_key]
		call	SortFunc					; call SortFunc (key, ptr, size)
;---[Convert array]------------------------
		mov		param2, [s_size]
		mov		param1, [s_key]
		call	Map							; call Map (key, size)
;---[Normal exit]--------------------------
		add		stack, space				; restoring back the stack pointer
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
InsertSortKeyAsc_uint8:		INSERTSORT_KEY	al, cl, b, 0
InsertSortKeyAsc_uint16:	INSERTSORT_KEY	ax, cx, b, 1
InsertSortKeyAsc_uint32:	INSERTSORT_KEY	eax, ecx, b, 2
InsertSortKeyAsc_uint64:	INSERTSORT_KEY	rax, rcx, b, 3

; Signed integer types
InsertSortKeyAsc_sint8:		INSERTSORT_KEY	al, cl, l, 0
InsertSortKeyAsc_sint16:	INSERTSORT_KEY	ax, cx, l, 1
InsertSortKeyAsc_sint32:	INSERTSORT_KEY	eax, ecx, l, 2
InsertSortKeyAsc_sint64:	INSERTSORT_KEY	rax, rcx, l, 3

; Floating-point types
InsertSortKeyAsc_flt32:		SORT1_KEY		InsertSortKeyAsc_sint32, s
InsertSortKeyAsc_flt64:		SORT1_KEY		InsertSortKeyAsc_sint64, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
InsertSortKeyDsc_uint8:		INSERTSORT_KEY	al, cl, a, 0
InsertSortKeyDsc_uint16:	INSERTSORT_KEY	ax, cx, a, 1
InsertSortKeyDsc_uint32:	INSERTSORT_KEY	eax, ecx, a, 2
InsertSortKeyDsc_uint64:	INSERTSORT_KEY	rax, rcx, a, 3

; Signed integer types
InsertSortKeyDsc_sint8:		INSERTSORT_KEY	al, cl, g, 0
InsertSortKeyDsc_sint16:	INSERTSORT_KEY	ax, cx, g, 1
InsertSortKeyDsc_sint32:	INSERTSORT_KEY	eax, ecx, g, 2
InsertSortKeyDsc_sint64:	INSERTSORT_KEY	rax, rcx, g, 3

; Floating-point types
InsertSortKeyDsc_flt32:		SORT1_KEY		InsertSortKeyDsc_sint32, s
InsertSortKeyDsc_flt64:		SORT1_KEY		InsertSortKeyDsc_sint64, d

;==============================================================================;
;       Object array sorting                                                   ;
;==============================================================================;
macro	INSERTSORT_OBJ	op
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
func	equ		rdx							; pointer to compare function
;---[Internal variables]-------------------
left	equ		r8							; left index
right	equ		r9							; right index
key1	equ		r12							; temporary key #1
key2	equ		r13							; temporary key #2
stack	equ		rsp							; stack pointer
s_key1	equ		stack + 0 * 8				; stack position of "key1" variable
s_key2	equ		stack + 1 * 8				; stack position of "key2" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_left	equ		stack + 5 * 8				; stack position of "left" variable
s_right	equ		stack + 6 * 8				; stack position of "right" variable
space	= 7 * 8								; stack size required by the procedure
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
		mov		left, 1						; left = 1
		sub		stack, space				; reserving stack size for local vars
		mov		[s_key1], key1				; save old value of "key1" variable
		mov		[s_key2], key2				; save old value of "key2" variable
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
;---[Sorting loop]-------------------------
.loop:	mov		right, left					; right = left
		mov		[s_right], right			; save "right" variable into the stack
		mov		key1, [array + right * 8]	; key1 = array[right]
;---[Internal loop]------------------------
.iloop:	mov		key2, [array + right * 8 - 8]
		mov		param2, key2
		mov		param1, key1
		call	qword [s_func]				; result = Compare (key1, key2)
		mov		array, [s_array]			; get "array" variable from the stack
		mov		left, [s_left]				; get "left" variable from the stack
		mov		right, [s_right]			; get "right" variable from the stack
		cmp		result, 0					; if (result op 0)
		jn#op	.break						; {
		mov		[array + right * 8], key2	;     array[right] = key2
		sub		right, 1					;     right-- }
		mov		[s_right], right			; save "right" variable into the stack
		jnz		.iloop						; do while (right != 0)
;---[End of internal loop]-----------------
.break:	mov		[array + right * 8], key1	; array[right] = key1
		add		left, 1						; left++
		mov		[s_left], left				; save "left" variable into the stack
		cmp		left, [s_size]
		jb		.loop						; do while (left < size)
;---[End of sorting loop]------------------
		mov		key1, [s_key1]				; restore old value of "key1" variable
		mov		key2, [s_key2]				; restore old value of "key2" variable
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
InsertSortAsc:	INSERTSORT_OBJ	l

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
InsertSortDsc:	INSERTSORT_OBJ	g

;******************************************************************************;
;       Quick sort                                                             ;
;******************************************************************************;

;==============================================================================;
;       Regular array sorting                                                  ;
;==============================================================================;
macro	QUICKSORT	InsertSort, median, key1, key2, op1, op2, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
half	equ		rax							; half of array size
left	equ		r8							; left index
right	equ		r9							; right index
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
minsize	= 32								; min array size is aceptable for Quick sort
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
.start:	cmp		size, minsize				; if (size <= minsize)
		jbe		InsertSort					;     call InsertSort (array, size)
;---[Sorting loop]-------------------------
.loop:	mov		half, size
		shr		half, 1						; half = size / 2
		mov		left, -1					; left = -1
		mov		right, size					; right = size
		mov		median, [array+half*bytes]	; median = array[half]
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	mov		[array+left*bytes], key2	; array[left] = key2
		mov		[array+right*bytes], key1	; array[right] = key1
;---[Internal loop 1]----------------------
.loop1:	add		left, 1						; left++
		mov		key1, [array+left*bytes]	; key1 = array[left]
		cmp		key1, median
		j#op1	.loop1						; do while (key1 op1 median)
;---[Internal loop 2]----------------------
.loop2:	sub		right, 1					; right--
		mov		key2, [array+right*bytes]	; key2 = array[right]
		cmp		key2, median
		j#op2	.loop2						; do while (key2 op2 median)
;------------------------------------------
		cmp		left, right
		jb		.swap						; do while (left < right)
;---[End of swap loop]---------------------
		add		right, 1
		sub		rsize, right				; rsize = size - (right + 1)
		lea		rarray, [array+right*bytes]	; rarray = array + (right + 1)
		cmp		lsize, rsize				; if (lsize <= rsize)
		ja		.else						; {
;---[if lsize <= rsize]--------------------
		cmp		lsize, 1					; if (lsize > 1)
		jbe		@f							; {
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], rarray			; save "rarray" variable into the stack
		mov		[s_size], rsize				; save "rsize" variable into the stack
		mov		size, lsize
		call	.start						; call QuickSort (larray, lsize)
		mov		rarray, [s_array]			; get "rarray" variable from the stack
		mov		rsize, [s_size]				; get "rsize" variable from the stack
		add		stack, space				; restoring back the stack pointer
@@:		mov		array, rarray				; }
		jmp		.end
;---[else]---------------------------------
.else:	cmp		rsize, 1					; if (rsize > 1)
		jbe		@f							; {
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], larray			; save "larray" variable into the stack
		mov		[s_size], lsize				; save "lsize" variable into the stack
		mov		array, rarray
		call	.start						; call QuickSort (rarray, rsize)
		mov		larray, [s_array]			; get "larray" variable from the stack
		mov		lsize, [s_size]				; get "lsize" variable from the stack
		add		stack, space				; restoring back the stack pointer
@@:		mov		size, lsize					; }
;---[end if]-------------------------------
.end:	cmp		size, minsize
		ja		.loop						; do while (size > minsize)
;---[Insert sort]--------------------------
		jmp		InsertSort					; return InsertSort (array, size)
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
QuickSortAsc_uint8:		QUICKSORT	InsertSortAsc_uint8, al, dl, cl, b, a, 0
QuickSortAsc_uint16:	QUICKSORT	InsertSortAsc_uint16, ax, dx, cx, b, a, 1
QuickSortAsc_uint32:	QUICKSORT	InsertSortAsc_uint32, eax, edx, ecx, b, a, 2
QuickSortAsc_uint64:	QUICKSORT	InsertSortAsc_uint64, rax, rdx, rcx, b, a, 3

; Signed integer types
QuickSortAsc_sint8:		QUICKSORT	InsertSortAsc_sint8, al, dl, cl, l, g, 0
QuickSortAsc_sint16:	QUICKSORT	InsertSortAsc_sint16, ax, dx, cx, l, g, 1
QuickSortAsc_sint32:	QUICKSORT	InsertSortAsc_sint32, eax, edx, ecx, l, g, 2
QuickSortAsc_sint64:	QUICKSORT	InsertSortAsc_sint64, rax, rdx, rcx, l, g, 3

; Floating-point types
QuickSortAsc_flt32:		SORT1		QuickSortAsc_sint32, s
QuickSortAsc_flt64:		SORT1		QuickSortAsc_sint64, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
QuickSortDsc_uint8:		QUICKSORT	InsertSortDsc_uint8, al, dl, cl, a, b, 0
QuickSortDsc_uint16:	QUICKSORT	InsertSortDsc_uint16, ax, dx, cx, a, b, 1
QuickSortDsc_uint32:	QUICKSORT	InsertSortDsc_uint32, eax, edx, ecx, a, b, 2
QuickSortDsc_uint64:	QUICKSORT	InsertSortDsc_uint64, rax, rdx, rcx, a, b, 3

; Signed integer types
QuickSortDsc_sint8:		QUICKSORT	InsertSortDsc_sint8, al, dl, cl, g, l, 0
QuickSortDsc_sint16:	QUICKSORT	InsertSortDsc_sint16, ax, dx, cx, g, l, 1
QuickSortDsc_sint32:	QUICKSORT	InsertSortDsc_sint32, eax, edx, ecx, g, l, 2
QuickSortDsc_sint64:	QUICKSORT	InsertSortDsc_sint64, rax, rdx, rcx, g, l, 3

; Floating-point types
QuickSortDsc_flt32:		SORT1		QuickSortDsc_sint32, s
QuickSortDsc_flt64:		SORT1		QuickSortDsc_sint64, d

;==============================================================================;
;       Key array sorting                                                      ;
;==============================================================================;
macro	QUICKSORT_KEY	InsertSort, median, key1, key2, op1, op2, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
ptr		equ		rsi							; pointer to array of pointers to data
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
half	equ		rax							; half of array size
left	equ		r8							; left index
right	equ		r9							; right index
ptr1	equ		r10							; temporary ptr #1
ptr2	equ		r11							; temporary ptr #2
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
lptr	equ		ptr							; pointer to left part of ptr array
rptr	equ		half						; pointer to right part of ptr array
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
minsize	= 32								; min array size is aceptable for Quick sort
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
.start:	cmp		size, minsize				; if (size <= minsize)
		jbe		InsertSort					;     call InsertSort (array, ptr, size)
;---[Sorting loop]-------------------------
.loop:	mov		half, size
		shr		half, 1						; half = size / 2
		mov		left, -1					; left = -1
		mov		right, size					; right = size
		mov		median, [array + half*bytes]; median = array[half]
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	mov		[array + left*bytes], key2	; array[left] = key2
		mov		[array + right*bytes], key1	; array[right] = key1
		mov		ptr1, [ptr + left * 8]		; ptr1 = ptr[left]
		mov		ptr2, [ptr + right * 8]		; ptr2 = ptr[right]
		mov		[ptr + left * 8], ptr2		; ptr[left] = ptr2
		mov		[ptr + right * 8], ptr1		; ptr[right] = ptr1
;---[Internal loop 1]----------------------
.loop1:	add		left, 1						; left++
		mov		key1, [array + left*bytes]	; key1 = array[left]
		cmp		key1, median
		j#op1	.loop1						; do while (key1 op1 median)
;---[Internal loop 2]----------------------
.loop2:	sub		right, 1					; right--
		mov		key2, [array + right*bytes]	; key2 = array[right]
		cmp		key2, median
		j#op2	.loop2						; do while (key2 op2 median)
;------------------------------------------
		cmp		left, right
		jb		.swap						; do while (left < right)
;---[End of swap loop]---------------------
		add		right, 1
		sub		rsize, right				; rsize = size - (right + 1)
		lea		rptr, [ptr + right * 8]		; rptr = ptr + (right + 1)
		lea		rarray, [array+right*bytes]	; rarray = array + (right + 1)
		cmp		lsize, rsize				; if (lsize <= rsize)
		ja		.else						; {
;---[if lsize <= rsize]--------------------
		cmp		lsize, 1					; if (lsize > 1)
		jbe		@f							; {
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], rarray			; save "rarray" variable into the stack
		mov		[s_ptr], rptr				; save "rptr" variable into the stack
		mov		[s_size], rsize				; save "rsize" variable into the stack
		mov		size, lsize
		call	.start						; call QuickSortKey (larray, lptr, lsize)
		mov		rarray, [s_array]			; get "rarray" variable from the stack
		mov		rptr, [s_ptr]				; get "rptr" variable from the stack
		mov		rsize, [s_size]				; get "rsize" variable from the stack
		add		stack, space				; restoring back the stack pointer
@@:		mov		array, rarray
		mov		ptr, rptr					; }
		jmp		.end
;---[else]---------------------------------
.else:	cmp		rsize, 1					; if (rsize > 1)
		jbe		@f							; {
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], larray			; save "larray" variable into the stack
		mov		[s_ptr], lptr				; save "lptr" variable into the stack
		mov		[s_size], lsize				; save "lsize" variable into the stack
		mov		array, rarray
		mov		ptr, rptr
		call	.start						; call QuickSortKey (rarray, rptr, rsize)
		mov		larray, [s_array]			; get "larray" variable from the stack
		mov		lptr, [s_ptr]				; get "lptr" variable from the stack
		mov		lsize, [s_size]				; get "lsize" variable from the stack
		add		stack, space				; restoring back the stack pointer
@@:		mov		size, lsize					; }
;---[end if]-------------------------------
.end:	cmp		size, minsize
		ja		.loop						; do while (size > minsize)
;---[Insert sort]--------------------------
		jmp		InsertSort					; return InsertSort (array, ptr, size)
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
QuickSortKeyAsc_uint8:	QUICKSORT_KEY	InsertSortKeyAsc_uint8, al, r10b, r11b, b, a, 0
QuickSortKeyAsc_uint16:	QUICKSORT_KEY	InsertSortKeyAsc_uint16, ax, r10w, r11w, b, a, 1
QuickSortKeyAsc_uint32:	QUICKSORT_KEY	InsertSortKeyAsc_uint32, eax, r10d, r11d, b, a, 2
QuickSortKeyAsc_uint64:	QUICKSORT_KEY	InsertSortKeyAsc_uint64, rax, r10, r11, b, a, 3

; Signed integer types
QuickSortKeyAsc_sint8:	QUICKSORT_KEY	InsertSortKeyAsc_sint8, al, r10b, r11b, l, g, 0
QuickSortKeyAsc_sint16:	QUICKSORT_KEY	InsertSortKeyAsc_sint16, ax, r10w, r11w, l, g, 1
QuickSortKeyAsc_sint32:	QUICKSORT_KEY	InsertSortKeyAsc_sint32, eax, r10d, r11d, l, g, 2
QuickSortKeyAsc_sint64:	QUICKSORT_KEY	InsertSortKeyAsc_sint64, rax, r10, r11, l, g, 3

; Floating-point types
QuickSortKeyAsc_flt32:	SORT1_KEY		QuickSortKeyAsc_sint32, s
QuickSortKeyAsc_flt64:	SORT1_KEY		QuickSortKeyAsc_sint64, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
QuickSortKeyDsc_uint8:	QUICKSORT_KEY	InsertSortKeyDsc_uint8, al, r10b, r11b, a, b, 0
QuickSortKeyDsc_uint16:	QUICKSORT_KEY	InsertSortKeyDsc_uint16, ax, r10w, r11w, a, b, 1
QuickSortKeyDsc_uint32:	QUICKSORT_KEY	InsertSortKeyDsc_uint32, eax, r10d, r11d, a, b, 2
QuickSortKeyDsc_uint64:	QUICKSORT_KEY	InsertSortKeyDsc_uint64, rax, r10, r11, a, b, 3

; Signed integer types
QuickSortKeyDsc_sint8:	QUICKSORT_KEY	InsertSortKeyDsc_sint8, al, r10b, r11b, g, l, 0
QuickSortKeyDsc_sint16:	QUICKSORT_KEY	InsertSortKeyDsc_sint16, ax, r10w, r11w, g, l, 1
QuickSortKeyDsc_sint32:	QUICKSORT_KEY	InsertSortKeyDsc_sint32, eax, r10d, r11d, g, l, 2
QuickSortKeyDsc_sint64:	QUICKSORT_KEY	InsertSortKeyDsc_sint64, rax, r10, r11, g, l, 3

; Floating-point types
QuickSortKeyDsc_flt32:	SORT1_KEY		QuickSortKeyDsc_sint32, s
QuickSortKeyDsc_flt64:	SORT1_KEY		QuickSortKeyDsc_sint64, d

;==============================================================================;
;       Object array sorting                                                   ;
;==============================================================================;
macro	QUICKSORT_OBJ	InsertSort, op1, op2
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to object array
size	equ		rsi							; array size (count of elements)
func	equ		rdx							; pointer to compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
median	equ		rax							; median value
half	equ		rax							; half of array size
left	equ		r8							; left index
right	equ		r9							; right index
key1	equ		r12							; temporary key #1
key2	equ		r13							; temporary key #2
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
stack	equ		rsp							; stack pointer
s_key1	equ		stack + 0 * 8				; stack position of "key1" variable
s_key2	equ		stack + 1 * 8				; stack position of "key2" variable
s_array	equ		stack + 2 * 8				; stack position of "array" variable
s_size	equ		stack + 3 * 8				; stack position of "size" variable
s_func	equ		stack + 4 * 8				; stack position of "func" variable
s_med	equ		stack + 5 * 8				; stack position of "median" variable
s_left	equ		stack + 6 * 8				; stack position of "left" variable
s_right	equ		stack + 7 * 8				; stack position of "right" variable
space	= 9 * 8								; stack size required by the procedure
minsize	= 32								; min array size is aceptable for Quick sort
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
.start:	cmp		size, minsize				; if (size <= minsize)
		jbe		InsertSort					;     call InsertSort (array, size, func)
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
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_med], median				; save "median" variable into the stack
		mov		[s_left], left				; save "left" variable into the stack
		mov		[s_right], right			; save "right" variable into the stack
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	mov		[array + left * 8], key2	; array[left] = key2
		mov		[array + right * 8], key1	; array[right] = key1
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
		mov		left, [s_left]				; get "left" variable from the stack
		mov		right, [s_right]			; get "right" variable from the stack
		cmp		left, right
		jb		.swap						; do while (left < right)
;---[End of swap loop]---------------------
		mov		rsize, [s_size]				; get "size" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
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
		mov		size, lsize
		call	.start						; call Sort (larray, lsize, func)
		mov		rarray, [s_array]			; get "rarray" variable from the stack
		mov		rsize, [s_size]				; get "rsize" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
@@:		mov		array, rarray				; }
		jmp		.end
;---[else]---------------------------------
.else:	cmp		rsize, 1					; if (rsize > 1)
		jbe		@f							; {
		mov		[s_array], larray			; save "larray" variable into the stack
		mov		[s_size], lsize				; save "lsize" variable into the stack
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
		add		stack, space				; restoring back the stack pointer
		jmp		InsertSort					; return InsertSort (array, size, func)
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
QuickSortAsc:	QUICKSORT_OBJ	InsertSortAsc, l, g

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
QuickSortDsc:	QUICKSORT_OBJ	InsertSortDsc, g, l

;******************************************************************************;
;       Merge sort                                                             ;
;******************************************************************************;

;==============================================================================;
;       Regular array sorting                                                  ;
;==============================================================================;
macro	MERGESORT	InsertSort, MergeFunc, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
temp	equ		rsi							; pointer to temporary array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_temp	equ		stack + 1 * 8				; stack position of "temp" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
if scale = 0
Copy	= CopyFwd8							; copy function
else if scale = 1
Copy	= CopyFwd16							; copy function
else if scale = 2
Copy	= CopyFwd32							; copy function
else if scale = 3
Copy	= CopyFwd64							; copy function
end if
space	= 3 * 8								; stack size required by the procedure
minsize	= 32								; min array size is aceptable for Merge sort
bytes	= 1 shl scale						; size of array element (bytes)
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
		mov		[s_size], size				; save "size" variable into the stack
		shr		size, 1						; size /= 2
		call	.start						; call Sort (array, temp, size / 2)
;---[Sort second subarray]-----------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		temp, [s_temp]				; get "temp" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 1						; size /= 2
		lea		array, [array + size * bytes]
		neg		size
		add		size, [s_size]
		call	.start						; call Sort (array + size / 2, temp + size / 2, size - size / 2)
;---[Copy data into temporary array]-------
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 1						; size /= 2
		mov		param3, size
		mov		param2, [s_array]
		mov		param1, [s_temp]
		call	Copy						; call Copy (temp, array, size / 2)
;---[Merge sorted arrays]------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		temp, [s_temp]				; get "temp" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 1						; size /= 2
		mov		param5, size
		neg		param5
		add		param5, [s_size]
		lea		param4, [array + size * bytes]
		mov		param3, size
		mov		param2, temp
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		MergeFunc					; return MergeFunc (array, temp, size / 2, array + size / 2, size - size / 2)
;---[Insert sort branch]-------------------
.ins:	mov		param1, array
		mov		param2, size
		jmp		InsertSort					; return InsertSort (array, size)
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SORT2	SortFunc, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
temp	equ		rsi							; pointer to temporary array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_temp	equ		stack + 1 * 8				; stack position of "temp" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
if x eq s
Map		= Map_flt32							; map function
else if x eq d
Map		= Map_flt64							; map function
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Convert array]------------------------
		mov		param2, size
		mov		param1, array
		call	Map							; call Map (array, size)
;---[Sort array]---------------------------
		mov		param3, [s_size]
		mov		param2, [s_temp]
		mov		param1, [s_array]
		call	SortFunc					; call SortFunc (array, temp, size)
;---[Convert array]------------------------
		mov		param2, [s_size]
		mov		param1, [s_array]
		call	Map							; call Map (array, size)
;---[Normal exit]--------------------------
		add		stack, space				; restoring back the stack pointer
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeSortAsc_uint8:		MERGESORT	InsertSortAsc_uint8, MergeAsc_uint8, 0
MergeSortAsc_uint16:	MERGESORT	InsertSortAsc_uint16, MergeAsc_uint16, 1
MergeSortAsc_uint32:	MERGESORT	InsertSortAsc_uint32, MergeAsc_uint32, 2
MergeSortAsc_uint64:	MERGESORT	InsertSortAsc_uint64, MergeAsc_uint64, 3

; Signed integer types
MergeSortAsc_sint8:		MERGESORT	InsertSortAsc_sint8, MergeAsc_sint8, 0
MergeSortAsc_sint16:	MERGESORT	InsertSortAsc_sint16, MergeAsc_sint16, 1
MergeSortAsc_sint32:	MERGESORT	InsertSortAsc_sint32, MergeAsc_sint32, 2
MergeSortAsc_sint64:	MERGESORT	InsertSortAsc_sint64, MergeAsc_sint64, 3

; Floating-point types
MergeSortAsc_flt32:		SORT2		MergeSortAsc_sint32, s
MergeSortAsc_flt64:		SORT2		MergeSortAsc_sint64, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeSortDsc_uint8:		MERGESORT	InsertSortDsc_uint8, MergeDsc_uint8, 0
MergeSortDsc_uint16:	MERGESORT	InsertSortDsc_uint16, MergeDsc_uint16, 1
MergeSortDsc_uint32:	MERGESORT	InsertSortDsc_uint32, MergeDsc_uint32, 2
MergeSortDsc_uint64:	MERGESORT	InsertSortDsc_uint64, MergeDsc_uint64, 3

; Signed integer types
MergeSortDsc_sint8:		MERGESORT	InsertSortDsc_sint8, MergeDsc_sint8, 0
MergeSortDsc_sint16:	MERGESORT	InsertSortDsc_sint16, MergeDsc_sint16, 1
MergeSortDsc_sint32:	MERGESORT	InsertSortDsc_sint32, MergeDsc_sint32, 2
MergeSortDsc_sint64:	MERGESORT	InsertSortDsc_sint64, MergeDsc_sint64, 3

; Floating-point types
MergeSortDsc_flt32:		SORT2		MergeSortDsc_sint32, s
MergeSortDsc_flt64:		SORT2		MergeSortDsc_sint64, d

;==============================================================================;
;       Key array sorting                                                      ;
;==============================================================================;
macro	MERGESORT_KEY	InsertSort, MergeFunc, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
ptr		equ		rsi							; pointer to array of pointers to data
temp	equ		rdx							; pointer to temporary array
tptr	equ		rcx							; pointer to temporary array of pointers to data
size	equ		r8							; array size (count of elements)
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
s_temp	equ		stack + 2 * 8				; stack position of "temp" variable
s_tptr	equ		stack + 3 * 8				; stack position of "tptr" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
if scale = 0
Copy	= CopyFwd8							; copy function
else if scale = 1
Copy	= CopyFwd16							; copy function
else if scale = 2
Copy	= CopyFwd32							; copy function
else if scale = 3
Copy	= CopyFwd64							; copy function
end if
space	= 5 * 8								; stack size required by the procedure
minsize	= 32								; min array size is aceptable for Merge sort
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
.start:	cmp		size, minsize				; if (size <= minsize)
		jbe		.ins						;     then do insert sort
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
;---[Sort first subarray]------------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		shr		size, 1						; size /= 2
		call	.start						; call Sort (array, ptr, temp, tptr, size / 2)
;---[Sort second subarray]-----------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		temp, [s_temp]				; get "temp" variable from the stack
		mov		tptr, [s_tptr]				; get "tptr" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 1						; size /= 2
		lea		array, [array + size * bytes]
		lea		ptr, [ptr + size * 8]
		neg		size
		add		size, [s_size]
		call	.start						; call Sort (array + size / 2, ptr + size / 2, temp, tptr, size - size / 2)
;---[Copy data into temporary array]-------
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 1						; size /= 2
		mov		param3, size
		mov		param2, [s_ptr]
		mov		param1, [s_tptr]
		call	CopyFwd64					; call CopyFwd64 (tptr, ptr, size / 2)
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 1						; size /= 2
		mov		param3, size
		mov		param2, [s_array]
		mov		param1, [s_temp]
		call	Copy						; call Copy (temp, array, size / 2)
;---[Merge sorted arrays]------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		temp, [s_temp]				; get "temp" variable from the stack
		mov		tptr, [s_tptr]				; get "tptr" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 1						; size /= 2
		mov		param8, size
		neg		param8
		add		param8, [s_size]
		lea		param7, [ptr + size * 8]
		lea		param6, [array + size * bytes]
		mov		param5, size
		mov		param4, tptr
		mov		param3, temp
		mov		param2, ptr
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		MergeFunc					; return MergeFunc (array, ptr, temp, tptr, size / 2, array + size / 2, ptr + size / 2, size - size / 2)
;---[Insert sort branch]-------------------
.ins:	mov		param1, array
		mov		param2, ptr
		mov		param3, size
		jmp		InsertSort					; return InsertSort (array, ptr, size)
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SORT2_KEY	SortFunc, x
{
;---[Parameters]---------------------------
key		equ		rdi							; pointer to key array
ptr		equ		rsi							; pointer to array of pointers to data
tkey	equ		rdx							; pointer to temporary key array
tptr	equ		rcx							; pointer to temporary array of pointers to data
size	equ		r8							; array size (count of elements)
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_key	equ		stack + 0 * 8				; stack position of "key" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
s_tkey	equ		stack + 2 * 8				; stack position of "tkey" variable
s_tptr	equ		stack + 3 * 8				; stack position of "tptr" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
if x eq s
Map		= Map_flt32							; map function
else if x eq d
Map		= Map_flt64							; map function
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_tkey], tkey				; save "tkey" variable into the stack
		mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Convert array]------------------------
		mov		param2, size
		mov		param1, key
		call	Map							; call Map (key, size)
;---[Sort array]---------------------------
		mov		param5, [s_size]
		mov		param4, [s_tptr]
		mov		param3, [s_tkey]
		mov		param2, [s_ptr]
		mov		param1, [s_key]
		call	SortFunc					; call SortFunc (key, ptr, tkey, tptr, size)
;---[Convert array]------------------------
		mov		param2, [s_size]
		mov		param1, [s_key]
		call	Map							; call Map (key, size)
;---[Normal exit]--------------------------
		add		stack, space				; restoring back the stack pointer
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeSortKeyAsc_uint8:	MERGESORT_KEY	InsertSortKeyAsc_uint8, MergeKeyCoreAsc_uint8, 0
MergeSortKeyAsc_uint16:	MERGESORT_KEY	InsertSortKeyAsc_uint16, MergeKeyCoreAsc_uint16, 1
MergeSortKeyAsc_uint32:	MERGESORT_KEY	InsertSortKeyAsc_uint32, MergeKeyCoreAsc_uint32, 2
MergeSortKeyAsc_uint64:	MERGESORT_KEY	InsertSortKeyAsc_uint64, MergeKeyCoreAsc_uint64, 3

; Signed integer types
MergeSortKeyAsc_sint8:	MERGESORT_KEY	InsertSortKeyAsc_sint8, MergeKeyCoreAsc_sint8, 0
MergeSortKeyAsc_sint16:	MERGESORT_KEY	InsertSortKeyAsc_sint16, MergeKeyCoreAsc_sint16, 1
MergeSortKeyAsc_sint32:	MERGESORT_KEY	InsertSortKeyAsc_sint32, MergeKeyCoreAsc_sint32, 2
MergeSortKeyAsc_sint64:	MERGESORT_KEY	InsertSortKeyAsc_sint64, MergeKeyCoreAsc_sint64, 3

; Floating-point types
MergeSortKeyAsc_flt32:	SORT2_KEY		MergeSortKeyAsc_sint32, s
MergeSortKeyAsc_flt64:	SORT2_KEY		MergeSortKeyAsc_sint64, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeSortKeyDsc_uint8:	MERGESORT_KEY	InsertSortKeyDsc_uint8, MergeKeyCoreDsc_uint8, 0
MergeSortKeyDsc_uint16:	MERGESORT_KEY	InsertSortKeyDsc_uint16, MergeKeyCoreDsc_uint16, 1
MergeSortKeyDsc_uint32:	MERGESORT_KEY	InsertSortKeyDsc_uint32, MergeKeyCoreDsc_uint32, 2
MergeSortKeyDsc_uint64:	MERGESORT_KEY	InsertSortKeyDsc_uint64, MergeKeyCoreDsc_uint64, 3

; Signed integer types
MergeSortKeyDsc_sint8:	MERGESORT_KEY	InsertSortKeyDsc_sint8, MergeKeyCoreDsc_sint8, 0
MergeSortKeyDsc_sint16:	MERGESORT_KEY	InsertSortKeyDsc_sint16, MergeKeyCoreDsc_sint16, 1
MergeSortKeyDsc_sint32:	MERGESORT_KEY	InsertSortKeyDsc_sint32, MergeKeyCoreDsc_sint32, 2
MergeSortKeyDsc_sint64:	MERGESORT_KEY	InsertSortKeyDsc_sint64, MergeKeyCoreDsc_sint64, 3

; Floating-point types
MergeSortKeyDsc_flt32:	SORT2_KEY		MergeSortKeyDsc_sint32, s
MergeSortKeyDsc_flt64:	SORT2_KEY		MergeSortKeyDsc_sint64, d

;==============================================================================;
;       Object array sorting                                                   ;
;==============================================================================;
macro	MERGESORT_OBJ	InsertSort, MergeFunc
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to object array
temp	equ		rsi							; pointer to temporary array
size	equ		rdx							; array size (count of elements)
func	equ		rcx							; pointer to compare function
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_temp	equ		stack + 1 * 8				; stack position of "temp" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
space	= 5 * 8								; stack size required by the procedure
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
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		shr		size, 1						; size /= 2
		call	.start						; call Sort (array, temp, size / 2, func)
;---[Sort second subarray]-----------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		temp, [s_temp]				; get "temp" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		shr		size, 1						; size /= 2
		lea		array, [array + size * 8]
		neg		size
		add		size, [s_size]
		call	.start						; call Sort (array + size / 2, temp, size - size / 2, func)
;---[Copy data into temporary array]-------
		mov		size, [s_size]				; get "size" variable from the stack
		shr		size, 1						; size /= 2
		mov		param3, size
		mov		param2, [s_array]
		mov		param1, [s_temp]
		call	CopyFwd64					; call CopyFwd64 (temp, array, size / 2)
;---[Merge sorted arrays]------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		temp, [s_temp]				; get "temp" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		mov		func, [s_func]				; get "func" variable from the stack
		shr		size, 1						; size /= 2
		mov		param6, func
		mov		param5, size
		neg		param5
		add		param5, [s_size]
		lea		param4, [array + size * 8]
		mov		param3, size
		mov		param2, temp
		mov		param1, array
		add		stack, space				; restoring back the stack pointer
		jmp		MergeFunc					; return MergeFunc (array, temp, size / 2, array + size / 2, size - size / 2, func)
;---[Insert sort branch]-------------------
.ins:	mov		param1, array
		mov		param2, size
		mov		param3, func
		jmp		InsertSort					; return InsertSort (array, size, func)
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
MergeSortAsc:	MERGESORT_OBJ	InsertSortAsc, MergeAsc

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
MergeSortDsc:	MERGESORT_OBJ	InsertSortDsc, MergeDsc

;******************************************************************************;
;       Radix sort                                                             ;
;******************************************************************************;
AscOrder_ui:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
sum		equ		rax							; sum value
temp	equ		rdx							; temporary register
;------------------------------------------
		xor		sum, sum					; sum = 0
		mov		size, 256					; size = 256 (partial key range)
;---[Address calculating loop]-------------
@@:		mov		temp, [array]				; temp = array[0]
		mov		[array], sum				; array[0] = sum
		add		sum, temp					; sum += temp
		add		array, 8					; array++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
DscOrder_ui:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
sum		equ		rax							; sum value
temp	equ		rdx							; temporary register
;------------------------------------------
		xor		sum, sum					; sum = 0
		add		array, 256 * 8				; array += 256
		mov		size, 256					; size = 256 (partial key range)
;---[Address calculating loop]-------------
@@:		sub		array, 8					; array--
		mov		temp, [array]				; temp = array[0]
		mov		[array], sum				; array[0] = sum
		add		sum, temp					; sum += temp
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
AscOrder_si:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
sum		equ		rax							; sum value
temp	equ		rdx							; temporary register
;------------------------------------------
		xor		sum, sum					; sum = 0
		add		array, 128 * 8				; array += 128
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		mov		temp, [array]				; temp = array[0]
		mov		[array], sum				; array[0] = sum
		add		sum, temp					; sum += temp
		add		array, 8					; array++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		sub		array, 256 * 8				; array -= 256
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		mov		temp, [array]				; temp = array[0]
		mov		[array], sum				; array[0] = sum
		add		sum, temp					; sum += temp
		add		array, 8					; array++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
DscOrder_si:
;---[Parameters]---------------------------
array	equ		rdi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
sum		equ		rax							; sum value
temp	equ		rdx							; temporary register
;------------------------------------------
		xor		sum, sum					; sum = 0
		add		array, 128 * 8				; array += 128
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		sub		array, 8					; array--
		mov		temp, [array]				; temp = array[0]
		mov		[array], sum				; array[0] = sum
		add		sum, temp					; sum += temp
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		add		array, 256 * 8				; array += 256
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		sub		array, 8					; array--
		mov		temp, [array]				; temp = array[0]
		mov		[array], sum				; array[0] = sum
		add		sum, temp					; sum += temp
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	STAT	scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
sarray	equ		rdx							; pointer to statistics array
;---[Internal variables]-------------------
count	equ		rcx							; count of vector elements in stat array
ptr		equ		rax							; temporarry pointer to stat array
key		equ		ptr							; key register (is used to compute adress)
zero	equ		xmm0						; 0
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
len		= 256 * 8							; len of stat array row
;------------------------------------------
		pxor	zero, zero					; zero = 0
		mov		ptr, sarray					; ptr = sarray
		mov		count, len shr (bscale - scale)
;---[Stat initialization loop]-------------
.init:	movdqa	[ptr + 0x00], zero			; ptr[0] = 0
		movdqa	[ptr + 0x10], zero			; ptr[16] = 0
		movdqa	[ptr + 0x20], zero			; ptr[32] = 0
		movdqa	[ptr + 0x30], zero			; ptr[48] = 0
		add		ptr, block					; ptr += block
		sub		count, 1					; count--
		jnz		.init						; do while (count != 0)
;---[Statistics loop]----------------------
.stat:
repeat	bytes
		movzx	key, byte [array + (%-1)]	; get partial key
		add		qword [sarray + (%-1) * len + key * 8], 1
end repeat
		add		array, bytes				; move to next element
		sub		size, 1						; size--
		jnz		.stat						; do while (count != 0)
;------------------------------------------
		ret
}
Stat8:	STAT	0
Stat16:	STAT	1
Stat32:	STAT	2
Stat64:	STAT	3

;==============================================================================;
;       Regular array sorting                                                  ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Sorting stage                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SORTSTAGE	temp, scale
{
;---[Parameters]---------------------------
tkey	equ		rdi							; pointer to target keys array
skey	equ		rsi							; pointer to source keys array
size	equ		rdx							; array size (count of elements)
sarray	equ		rcx							; pointer to statistics array
index	equ		r8							; index of partial key
;---[Internal variables]-------------------
pos		equ		r11							; address where element should be copied
key		equ		rax							; key register (is used to compute adress)
bytes	= 1 shl scale						; size of array element (bytes)
;---[Sorting loop]-------------------------
.loop:	movzx	key, byte [skey + index]	; get partial key
		mov		pos, [sarray + key * 8]		; pos = sarray[key]
		add		qword [sarray + key * 8], 1	; sarray[key]++
		mov		temp, [skey]				; temp = skey[0]
		mov		[tkey + pos * bytes], temp	; tkey[pos] = temp
		add		skey, bytes					; skey++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
		ret
}
Stage8:		SORTSTAGE	al, 0
Stage16:	SORTSTAGE	ax, 1
Stage32:	SORTSTAGE	eax, 2
Stage64:	SORTSTAGE	rax, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Radix sort core                                                        ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	RADIXSORT	Order1, Order2, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to source array
temp	equ		rsi							; pointer to temporary array
size	equ		rdx							; size of array
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
bytes	= 1 shl scale						; size of array element (bytes)
stat_sz	= bytes * 256 * 8					; size of statistics array (bytes)
s_array	equ		stack + stat_sz + 0 * 8		; stack position of "array" variable
s_temp	equ		stack + stat_sz + 1 * 8		; stack position of "temp" variable
s_size	equ		stack + stat_sz + 2 * 8		; stack position of "size" variable
if scale = 0
Stat	= Stat8								; stat function
Stage	= Stage8							; stage function
else if scale = 1
Stat	= Stat16							; stat function
Stage	= Stage16							; stage function
else if scale = 2
Stat	= Stat32							; stat function
Stage	= Stage32							; stage function
else if scale = 3
Stat	= Stat64							; stat function
Stage	= Stage64							; stage function
end if
space	= stat_sz + 3 * 8					; stack size required by the procedure
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Collect statistics]-------------------
		mov		param2, size
		mov		param3, stack
		call	Stat						; call Stat (array, size, stack);
;---[Sort partial keys]--------------------
if bytes = 1
		mov		param1, [s_temp]
		mov		param2, [s_array]
		mov		param3, [s_size]
		call	CopyFwd8					; call Copy (temp, array, size)
end if
i = 0
while i < bytes - 1
	if i mod 2 = 0
		lea		param1, [stack + i * 256 * 8]
		call	Order1						; call Order1 (stack[i])
		mov		param1, [s_temp]
		mov		param2, [s_array]
		mov		param3, [s_size]
		lea		param4, [stack + i * 256 * 8]
		mov		param5, i
		call	Stage						; call Stage (temp, array, size, stack[i], i)
	else
		lea		param1, [stack + i * 256 * 8]
		call	Order1						; call Order1 (stack[i])
		mov		param1, [s_array]
		mov		param2, [s_temp]
		mov		param3, [s_size]
		lea		param4, [stack + i * 256 * 8]
		mov		param5, i
		call	Stage						; call Stage (array, temp, size, stack[i], i)
	end if
	i = i + 1
end while
		lea		param1, [stack + i * 256 * 8]
		call	Order2						; call Order2 (stack[i])
		mov		param1, [s_array]
		mov		param2, [s_temp]
		mov		param3, [s_size]
		lea		param4, [stack + i * 256 * 8]
		mov		param5, i
		call	Stage						; call Stage (array, temp, size, stack[i], i)
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
RadixSortAsc_uint8:		RADIXSORT	AscOrder_ui, AscOrder_ui, 0
RadixSortAsc_uint16:	RADIXSORT	AscOrder_ui, AscOrder_ui, 1
RadixSortAsc_uint32:	RADIXSORT	AscOrder_ui, AscOrder_ui, 2
RadixSortAsc_uint64:	RADIXSORT	AscOrder_ui, AscOrder_ui, 3

; Signed integer types
RadixSortAsc_sint8:		RADIXSORT	AscOrder_ui, AscOrder_si, 0
RadixSortAsc_sint16:	RADIXSORT	AscOrder_ui, AscOrder_si, 1
RadixSortAsc_sint32:	RADIXSORT	AscOrder_ui, AscOrder_si, 2
RadixSortAsc_sint64:	RADIXSORT	AscOrder_ui, AscOrder_si, 3

; Floating-point types
RadixSortAsc_flt32:		SORT2		RadixSortAsc_sint32, s
RadixSortAsc_flt64:		SORT2		RadixSortAsc_sint64, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
RadixSortDsc_uint8:		RADIXSORT	DscOrder_ui, DscOrder_ui, 0
RadixSortDsc_uint16:	RADIXSORT	DscOrder_ui, DscOrder_ui, 1
RadixSortDsc_uint32:	RADIXSORT	DscOrder_ui, DscOrder_ui, 2
RadixSortDsc_uint64:	RADIXSORT	DscOrder_ui, DscOrder_ui, 3

; Signed integer types
RadixSortDsc_sint8:		RADIXSORT	DscOrder_ui, DscOrder_si, 0
RadixSortDsc_sint16:	RADIXSORT	DscOrder_ui, DscOrder_si, 1
RadixSortDsc_sint32:	RADIXSORT	DscOrder_ui, DscOrder_si, 2
RadixSortDsc_sint64:	RADIXSORT	DscOrder_ui, DscOrder_si, 3

; Floating-point types
RadixSortDsc_flt32:		SORT2		RadixSortDsc_sint32, s
RadixSortDsc_flt64:		SORT2		RadixSortDsc_sint64, d

;==============================================================================;
;       Key array sorting                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Sorting stage                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SORTSTAGE_KEY	temp, scale
{
;---[Parameters]---------------------------
tkey	equ		rdi							; pointer to target keys array
skey	equ		rsi							; pointer to source keys array
tptr	equ		rdx							; pointer to target array of pointers to data
sptr	equ		rcx							; pointer to source array of pointers to data
size	equ		r8							; array size (count of elements)
sarray	equ		r9							; pointer to statistics array
index	equ		r10							; index of partial key
;---[Internal variables]-------------------
pos		equ		r11							; address where element should be copied
key		equ		rax							; key register (is used to compute adress)
ptr		equ		key							; temporary ptr
bytes	= 1 shl scale						; size of array element (bytes)
;---[Sorting loop]-------------------------
.loop:	movzx	key, byte [skey + index]	; get partial key
		mov		pos, [sarray + key * 8]		; pos = sarray[key]
		add		qword [sarray + key * 8], 1	; sarray[key]++
		mov		temp, [skey]				; temp = skey[0]
		mov		[tkey + pos * bytes], temp	; tkey[pos] = temp
		mov		ptr, [sptr]					; ptr = sptr[0]
		mov		[tptr + pos * 8], ptr		; tptr[pos] = ptr
		add		skey, bytes					; skey++
		add		sptr, 8						; sptr++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
		ret
}
StageKey8:	SORTSTAGE_KEY	al, 0
StageKey16:	SORTSTAGE_KEY	ax, 1
StageKey32:	SORTSTAGE_KEY	eax, 2
StageKey64:	SORTSTAGE_KEY	rax, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Radix sort core                                                        ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	RADIXSORT_KEY	Order1, Order2, scale
{
;---[Parameters]---------------------------
key		equ		rdi							; pointer to key array
ptr		equ		rsi							; pointer to array of pointers to data
tkey	equ		rdx							; pointer to temporary key array
tptr	equ		rcx							; pointer to temporarys array of pointers to data
size	equ		r8							; size of array
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
bytes	= 1 shl scale						; size of array element (bytes)
stat_sz	= bytes * 256 * 8					; size of statistics array (bytes)
s_key	equ		stack + stat_sz + 0 * 8		; stack position of "key" variable
s_ptr	equ		stack + stat_sz + 1 * 8		; stack position of "ptr" variable
s_tkey	equ		stack + stat_sz + 2 * 8		; stack position of "tkey" variable
s_tptr	equ		stack + stat_sz + 3 * 8		; stack position of "tptr" variable
s_size	equ		stack + stat_sz + 4 * 8		; stack position of "size" variable
if scale = 0
Stat	= Stat8								; stat function
Stage	= StageKey8							; stage function
else if scale = 1
Stat	= Stat16							; stat function
Stage	= StageKey16						; stage function
else if scale = 2
Stat	= Stat32							; stat function
Stage	= StageKey32						; stage function
else if scale = 3
Stat	= Stat64							; stat function
Stage	= StageKey64						; stage function
end if
space	= stat_sz + 5 * 8					; stack size required by the procedure
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
;---[Normal execution branch]--------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_tkey], tkey				; save "tkey" variable into the stack
		mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Collect statistics]-------------------
		mov		param1, key
		mov		param2, size
		mov		param3, stack
		call	Stat						; call Stat (key, size, stack)
;---[Sort partial keys]--------------------
if bytes = 1
		mov		param1, [s_tkey]
		mov		param2, [s_key]
		mov		param3, [s_size]
		call	CopyFwd8					; call Copy (tkey, key, size)
		mov		param1, [s_tptr]
		mov		param2, [s_ptr]
		mov		param3, [s_size]
		call	CopyFwd64					; call Copy (tptr, ptr, size)
end if
i = 0
while i < bytes - 1
	if i mod 2 = 0
		lea		param1, [stack + i * 256 * 8]
		call	Order1						; call Order1 (stack[i])
		mov		param1, [s_tkey]
		mov		param2, [s_key]
		mov		param3, [s_tptr]
		mov		param4, [s_ptr]
		mov		param5, [s_size]
		lea		param6, [stack + i * 256 * 8]
		mov		param7, i
		call	Stage						; call Stage (tkey, key, tptr, ptr, size, stack[i], i)
	else
		lea		param1, [stack + i * 256 * 8]
		call	Order1						; call Order1 (stack[i])
		mov		param1, [s_key]
		mov		param2, [s_tkey]
		mov		param3, [s_ptr]
		mov		param4, [s_tptr]
		mov		param5, [s_size]
		lea		param6, [stack + i * 256 * 8]
		mov		param7, i
		call	Stage						; call Stage (key, tkey, ptr, tptr, size, stack[i], i)
	end if
	i = i + 1
end while
		lea		param1, [stack + i * 256 * 8]
		call	Order2						; call Order2 (stack[i])
		mov		param1, [s_key]
		mov		param2, [s_tkey]
		mov		param3, [s_ptr]
		mov		param4, [s_tptr]
		mov		param5, [s_size]
		lea		param6, [stack + i * 256 * 8]
		mov		param7, i
		call	Stage						; call Stage (key, tkey, ptr, tptr, size, stack[i], i)
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
RadixSortKeyAsc_uint8:	RADIXSORT_KEY	AscOrder_ui, AscOrder_ui, 0
RadixSortKeyAsc_uint16:	RADIXSORT_KEY	AscOrder_ui, AscOrder_ui, 1
RadixSortKeyAsc_uint32:	RADIXSORT_KEY	AscOrder_ui, AscOrder_ui, 2
RadixSortKeyAsc_uint64:	RADIXSORT_KEY	AscOrder_ui, AscOrder_ui, 3

; Signed integer types
RadixSortKeyAsc_sint8:	RADIXSORT_KEY	AscOrder_ui, AscOrder_si, 0
RadixSortKeyAsc_sint16:	RADIXSORT_KEY	AscOrder_ui, AscOrder_si, 1
RadixSortKeyAsc_sint32:	RADIXSORT_KEY	AscOrder_ui, AscOrder_si, 2
RadixSortKeyAsc_sint64:	RADIXSORT_KEY	AscOrder_ui, AscOrder_si, 3

; Floating-point types
RadixSortKeyAsc_flt32:	SORT2_KEY		RadixSortKeyAsc_sint32, s
RadixSortKeyAsc_flt64:	SORT2_KEY		RadixSortKeyAsc_sint64, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
RadixSortKeyDsc_uint8:	RADIXSORT_KEY	DscOrder_ui, DscOrder_ui, 0
RadixSortKeyDsc_uint16:	RADIXSORT_KEY	DscOrder_ui, DscOrder_ui, 1
RadixSortKeyDsc_uint32:	RADIXSORT_KEY	DscOrder_ui, DscOrder_ui, 2
RadixSortKeyDsc_uint64:	RADIXSORT_KEY	DscOrder_ui, DscOrder_ui, 3

; Signed integer types
RadixSortKeyDsc_sint8:	RADIXSORT_KEY	DscOrder_ui, DscOrder_si, 0
RadixSortKeyDsc_sint16:	RADIXSORT_KEY	DscOrder_ui, DscOrder_si, 1
RadixSortKeyDsc_sint32:	RADIXSORT_KEY	DscOrder_ui, DscOrder_si, 2
RadixSortKeyDsc_sint64:	RADIXSORT_KEY	DscOrder_ui, DscOrder_si, 3

; Floating-point types
RadixSortKeyDsc_flt32:	SORT2_KEY		RadixSortKeyDsc_sint32, s
RadixSortKeyDsc_flt64:	SORT2_KEY		RadixSortKeyDsc_sint64, d

;******************************************************************************;
;       Merging of sorted arrays                                               ;
;******************************************************************************;

;==============================================================================;
;       Regular array merging                                                  ;
;==============================================================================;
macro	MERGE	key, key1, key2, cond, flt, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
src1	equ		rsi							; pointer to first source array
size1	equ		rdx							; size of first array
src2	equ		rcx							; pointer to second source array
size2	equ		r8							; size of second array
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
value	equ		r9							; source key
value1	equ		r10							; source key #1
value2	equ		r11							; source key #2
stack	equ		rsp							; stack pointer
s_src1p	equ		stack - 4 * 8				; stack position of "src1p" variable
s_sz1m	equ		stack - 3 * 8				; stack position of "size1m" variable
s_src2p	equ		stack - 2 * 8				; stack position of "src2p" variable
s_sz2m	equ		stack - 1 * 8				; stack position of "size2m" variable
if scale = 0
Copy	= CopyFwd8							; copy function
else if scale = 1
Copy	= CopyFwd16							; copy function
else if scale = 2
Copy	= CopyFwd32							; copy function
shift	= 30								; shift value
else if scale = 3
Copy	= CopyFwd64							; copy function
shift	= 62								; shift value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size1, size1				; if (size1 == 0)
		jz		.copy1						;     then go to copy1 branch
		test	size2, size2				; if (size2 == 0)
		jz		.copy2						;     then go to copy2 branch
;---[Merging loop]-------------------------
.loop:	lea		temp, [src1 + bytes]		; src1p = src1 + 1
		mov		[s_src1p], temp				; save "src1p" variable into the stack
		lea		temp, [size1 - 1]			; size1m = size1 - 1
		mov		[s_sz1m], temp				; save "size1m" variable into the stack
		lea		temp, [src2 + bytes]		; src2p = src2 + 1
		mov		[s_src2p], temp				; save "src2p" variable into the stack
		lea		temp, [size2 - 1]			; size2m = size2 - 1
		mov		[s_sz2m], temp				; save "size2m" variable into the stack
		mov		key1, [src1]				; key1 = src1[0]
		mov		key2, [src2]				; key2 = src2[0]
if flt
;---[Map first key to signed int]----------
		mov		key, key1					; key = key1
		sar		key, shift
		shr		key, 1						; key = (unsigned) (key1 >> shift) >> 1
		xor		key1, key					; key1 = key1 ^ key
;---[Map second key to signed int]---------
		mov		key, key2					; key = key2
		sar		key, shift
		shr		key, 1						; key = (unsigned) (key2 >> shift) >> 1
		xor		key2, key					; key2 = key2 ^ key
end if
		cmp		key1, key2
if flt
		mov		key1, [src1]				; key1 = src1[0]
		mov		key2, [src2]				; key2 = src2[0]
end if
	cmov#cond	value, value1				; if (key1 cond key2), then key = key1
	cmovn#cond	value, value2				; if (key1 !cond key2), then key = key2
	cmov#cond	src1, [s_src1p]				; if (key1 cond key2), then src1 = src1 + 1
	cmovn#cond	src2, [s_src2p]				; if (key1 !cond key2), then src2 = src2 + 1
	cmov#cond	size1, [s_sz1m]				; if (key1 cond key2), then size1 = size1 - 1
	cmovn#cond	size2, [s_sz2m]				; if (key1 !cond key2), then size2 = size2 - 1
		mov		[target], key				; target[0] = key
		add		target, bytes				; target++
		test	size1, size1				; if (size1 == 0)
		jz		.copy1						;     then go to copy1 branch
		test	size2, size2				; if (size2 == 0)
		jz		.copy2						;     then go to copy2 branch
		jmp		.loop						; do while (true)
;---[End of merging loop]------------------
.copy1:	mov		param1, target
		mov		param2, src2
		mov		param3, size2
		jmp		Copy						; return Copy (target, src2, size2)
.copy2:	mov		param1, target
		mov		param2, src1
		mov		param3, size1
		jmp		Copy						; return Copy (target, src1, size1)
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeAsc_uint8:		MERGE	r9b, r10b, r11b, be, 0, 0
MergeAsc_uint16:	MERGE	r9w, r10w, r11w, be, 0, 1
MergeAsc_uint32:	MERGE	r9d, r10d, r11d, be, 0, 2
MergeAsc_uint64:	MERGE	r9, r10, r11, be, 0, 3

; Signed integer types
MergeAsc_sint8:		MERGE	r9b, r10b, r11b, le, 0, 0
MergeAsc_sint16:	MERGE	r9w, r10w, r11w, le, 0, 1
MergeAsc_sint32:	MERGE	r9d, r10d, r11d, le, 0, 2
MergeAsc_sint64:	MERGE	r9, r10, r11, le, 0, 3

; Floating-point types
MergeAsc_flt32:		MERGE	r9d, r10d, r11d, le, 1, 2
MergeAsc_flt64:		MERGE	r9, r10, r11, le, 1, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeDsc_uint8:		MERGE	r9b, r10b, r11b, ae, 0, 0
MergeDsc_uint16:	MERGE	r9w, r10w, r11w, ae, 0, 1
MergeDsc_uint32:	MERGE	r9d, r10d, r11d, ae, 0, 2
MergeDsc_uint64:	MERGE	r9, r10, r11, ae, 0, 3

; Signed integer types
MergeDsc_sint8:		MERGE	r9b, r10b, r11b, ge, 0, 0
MergeDsc_sint16:	MERGE	r9w, r10w, r11w, ge, 0, 1
MergeDsc_sint32:	MERGE	r9d, r10d, r11d, ge, 0, 2
MergeDsc_sint64:	MERGE	r9, r10, r11, ge, 0, 3

; Floating-point types
MergeDsc_flt32:		MERGE	r9d, r10d, r11d, ge, 1, 2
MergeDsc_flt64:		MERGE	r9, r10, r11, ge, 1, 3

;==============================================================================;
;       Key array merging                                                      ;
;==============================================================================;
macro	MERGE_KEY_CORE	key, key1, key2, cond, flt, scale
{
;---[Parameters]---------------------------
tkey	equ		rdi							; pointer to target key array
tptr	equ		rsi							; pointer to target array of pointers to data
skey1	equ		rdx							; pointer to first source key array
sptr1	equ		rcx							; pointer to first source array of pointers to data
size1	equ		r8							; size of first array
skey2	equ		r9							; pointer to second source key array
sptr2	equ		r10							; pointer to second source array of pointers to data
size2	equ		r11							; size of second array
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
value	equ		r12							; source key
value1	equ		r13							; source key #1
value2	equ		r14							; source key #2
ptr		equ		r15							; pointer to assigned data
stack	equ		rsp							; stack pointer
s_val	equ		stack + 0 * 8				; stack position of "value" variable
s_val1	equ		stack + 1 * 8				; stack position of "value1" variable
s_val2	equ		stack + 2 * 8				; stack position of "value2" variable
s_ptr	equ		stack + 3 * 8				; stack position of "ptr" variable
s_sk1p	equ		stack + 4 * 8				; stack position of "skey1p" variable
s_sp1p	equ		stack + 5 * 8				; stack position of "sptr1p" variable
s_sz1m	equ		stack + 6 * 8				; stack position of "size1m" variable
s_sk2p	equ		stack + 7 * 8				; stack position of "skey2p" variable
s_sp2p	equ		stack + 8 * 8				; stack position of "sptr2p" variable
s_sz2m	equ		stack + 9 * 8				; stack position of "size2m" variable
s_tptr	equ		stack + 10 * 8				; stack position of "tptr" variable
s_sptr1	equ		stack + 11 * 8				; stack position of "sptr1" variable
s_size1	equ		stack + 12 * 8				; stack position of "size1" variable
s_sptr2	equ		stack + 13 * 8				; stack position of "sptr2" variable
s_size2	equ		stack + 14 * 8				; stack position of "size2" variable
if scale = 0
Copy	= CopyFwd8							; copy function
else if scale = 1
Copy	= CopyFwd16							; copy function
else if scale = 2
Copy	= CopyFwd32							; copy function
shift	= 30								; shift value
else if scale = 3
Copy	= CopyFwd64							; copy function
shift	= 62								; shift value
end if
space	= 15 * 8							; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_val], value				; save old value of "value" variable
		mov		[s_val1], value1			; save old value of "value1" variable
		mov		[s_val2], value2			; save old value of "value2" variable
		mov		[s_ptr], ptr				; save old value of "ptr" variable
		test	size1, size1				; if (size1 == 0)
		jz		.copy1						;     then go to copy1 branch
		test	size2, size2				; if (size2 == 0)
		jz		.copy2						;     then go to copy2 branch
;---[Merging loop]-------------------------
.loop:	lea		temp, [skey1 + bytes]		; skey1p = skey1 + 1
		mov		[s_sk1p], temp				; save "skey1p" variable into the stack
		lea		temp, [sptr1 + 8]			; sptr1p = sptr1 + 1
		mov		[s_sp1p], temp				; save "sptr1p" variable into the stack
		lea		temp, [size1 - 1]			; size1m = size1 - 1
		mov		[s_sz1m], temp				; save "size1m" variable into the stack
		lea		temp, [skey2 + bytes]		; skey2p = skey2 + 1
		mov		[s_sk2p], temp				; save "skey2p" variable into the stack
		lea		temp, [sptr2 + 8]			; sptr2p = sptr2 + 1
		mov		[s_sp2p], temp				; save "sptr2p" variable into the stack
		lea		temp, [size2 - 1]			; size2m = size2 - 1
		mov		[s_sz2m], temp				; save "size2m" variable into the stack
		mov		key1, [skey1]				; key1 = skey1[0]
		mov		key2, [skey2]				; key2 = skey2[0]
if flt
;---[Map first key to signed int]----------
		mov		key, key1					; key = key1
		sar		key, shift
		shr		key, 1						; key = (unsigned) (key1 >> shift) >> 1
		xor		key1, key					; key1 = key1 ^ key
;---[Map second key to signed int]---------
		mov		key, key2					; key = key2
		sar		key, shift
		shr		key, 1						; key = (unsigned) (key2 >> shift) >> 1
		xor		key2, key					; key2 = key2 ^ key
end if
		cmp		key1, key2
if flt
		mov		key1, [skey1]				; key1 = skey1[0]
		mov		key2, [skey2]				; key2 = skey2[0]
end if
	cmov#cond	value, value1				; if (key1 cond key2), then key = key1
	cmovn#cond	value, value2				; if (key1 !cond key2), then key = key2
	cmov#cond	ptr, [sptr1]				; if (key1 cond key2), then ptr = sptr1[0]
	cmovn#cond	ptr, [sptr2]				; if (key1 !cond key2), then ptr = sptr2[0]
	cmov#cond	skey1, [s_sk1p]				; if (key1 cond key2), then skey1 = skey1 + 1
	cmovn#cond	skey2, [s_sk2p]				; if (key1 !cond key2), then skey2 = skey2 + 1
	cmov#cond	sptr1, [s_sp1p]				; if (key1 cond key2), then sptr1 = sptr1 + 1
	cmovn#cond	sptr2, [s_sp2p]				; if (key1 !cond key2), then sptr2 = sptr2 + 1
	cmov#cond	size1, [s_sz1m]				; if (key1 cond key2), then size1 = size1 - 1
	cmovn#cond	size2, [s_sz2m]				; if (key1 !cond key2), then size2 = size2 - 1
		mov		[tkey], key					; tkey[0] = key
		add		tkey, bytes					; tkey++
		mov		[tptr], ptr					; tptr[0] = ptr
		add		tptr, 8						; tptr++
		test	size1, size1				; if (size1 == 0)
		jz		.copy1						;     then go to copy1 branch
		test	size2, size2				; if (size2 == 0)
		jz		.copy2						;     then go to copy2 branch
		jmp		.loop						; do while (true)
;---[End of merging loop]------------------
.copy1:	mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_sptr2], sptr2			; save "sptr2" variable into the stack
		mov		[s_size2], size2			; save "size2" variable into the stack
		mov		param1, tkey
		mov		param2, skey2
		mov		param3, size2
		call	Copy						; call Copy (tkey, skey2, size2)
		mov		param1, [s_tptr]
		mov		param2, [s_sptr2]
		mov		param3, [s_size2]
		mov		value, [s_val]				; restore old value of "value" variable
		mov		value1, [s_val1]			; restore old value of "value1" variable
		mov		value2, [s_val2]			; restore old value of "value2" variable
		mov		ptr, [s_ptr]				; restore old value of "ptr" variable
		add		stack, space				; restoring back the stack pointe
		jmp		CopyFwd64					; return Copy (tptr, sptr2, size2)
.copy2:	mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_sptr1], sptr1			; save "sptr1" variable into the stack
		mov		[s_size1], size1			; save "size1" variable into the stack
		mov		param1, tkey
		mov		param2, skey1
		mov		param3, size1
		call	Copy						; call Copy (tkey, skey1, size1)
		mov		param1, [s_tptr]
		mov		param2, [s_sptr1]
		mov		param3, [s_size1]
		mov		value, [s_val]				; restore old value of "value" variable
		mov		value1, [s_val1]			; restore old value of "value1" variable
		mov		value2, [s_val2]			; restore old value of "value2" variable
		mov		ptr, [s_ptr]				; restore old value of "ptr" variable
		add		stack, space				; restoring back the stack pointe
		jmp		CopyFwd64					; return Copy (tptr, sptr1, size1)
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MERGE_KEY	MergeFunc
{
;---[Parameters]---------------------------
sptr2	equ		r10							; pointer to second source array of pointers to data
size2	equ		r11							; size of second array
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_sptr2	equ		stack + 1 * 8				; stack position of "sptr2" variable
s_size2	equ		stack + 2 * 8				; stack position of "size2" variable
;------------------------------------------
		mov		sptr2, [s_sptr2]			; get "sptr2" variable from the stack
		mov		size2, [s_size2]			; get "size2" variable from the stack
		jmp		MergeFunc					; return MergeFunc (tkey, tptr, skey1, sptr1, size1, skey2, sptr2, size2)
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeKeyCoreAsc_uint8:	MERGE_KEY_CORE	r12b, r13b, r14b, be, 0, 0
MergeKeyCoreAsc_uint16:	MERGE_KEY_CORE	r12w, r13w, r14w, be, 0, 1
MergeKeyCoreAsc_uint32:	MERGE_KEY_CORE	r12d, r13d, r14d, be, 0, 2
MergeKeyCoreAsc_uint64:	MERGE_KEY_CORE	r12, r13, r14, be, 0, 3
MergeKeyAsc_uint8:		MERGE_KEY		MergeKeyCoreAsc_uint8
MergeKeyAsc_uint16:		MERGE_KEY		MergeKeyCoreAsc_uint16
MergeKeyAsc_uint32:		MERGE_KEY		MergeKeyCoreAsc_uint32
MergeKeyAsc_uint64:		MERGE_KEY		MergeKeyCoreAsc_uint64

; Signed integer types
MergeKeyCoreAsc_sint8:	MERGE_KEY_CORE	r12b, r13b, r14b, le, 0, 0
MergeKeyCoreAsc_sint16:	MERGE_KEY_CORE	r12w, r13w, r14w, le, 0, 1
MergeKeyCoreAsc_sint32:	MERGE_KEY_CORE	r12d, r13d, r14d, le, 0, 2
MergeKeyCoreAsc_sint64:	MERGE_KEY_CORE	r12, r13, r14, le, 0, 3
MergeKeyAsc_sint8:		MERGE_KEY		MergeKeyCoreAsc_sint8
MergeKeyAsc_sint16:		MERGE_KEY		MergeKeyCoreAsc_sint16
MergeKeyAsc_sint32:		MERGE_KEY		MergeKeyCoreAsc_sint32
MergeKeyAsc_sint64:		MERGE_KEY		MergeKeyCoreAsc_sint64

; Floating-point types
MergeKeyCoreAsc_flt32:	MERGE_KEY_CORE	r12d, r13d, r14d, le, 1, 2
MergeKeyCoreAsc_flt64:	MERGE_KEY_CORE	r12, r13, r14, le, 1, 3
MergeKeyAsc_flt32:		MERGE_KEY		MergeKeyCoreAsc_flt32
MergeKeyAsc_flt64:		MERGE_KEY		MergeKeyCoreAsc_flt64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeKeyCoreDsc_uint8:	MERGE_KEY_CORE	r12b, r13b, r14b, ae, 0, 0
MergeKeyCoreDsc_uint16:	MERGE_KEY_CORE	r12w, r13w, r14w, ae, 0, 1
MergeKeyCoreDsc_uint32:	MERGE_KEY_CORE	r12d, r13d, r14d, ae, 0, 2
MergeKeyCoreDsc_uint64:	MERGE_KEY_CORE	r12, r13, r14, ae, 0, 3
MergeKeyDsc_uint8:		MERGE_KEY		MergeKeyCoreDsc_uint8
MergeKeyDsc_uint16:		MERGE_KEY		MergeKeyCoreDsc_uint16
MergeKeyDsc_uint32:		MERGE_KEY		MergeKeyCoreDsc_uint32
MergeKeyDsc_uint64:		MERGE_KEY		MergeKeyCoreDsc_uint64

; Signed integer types
MergeKeyCoreDsc_sint8:	MERGE_KEY_CORE	r12b, r13b, r14b, ge, 0, 0
MergeKeyCoreDsc_sint16:	MERGE_KEY_CORE	r12w, r13w, r14w, ge, 0, 1
MergeKeyCoreDsc_sint32:	MERGE_KEY_CORE	r12d, r13d, r14d, ge, 0, 2
MergeKeyCoreDsc_sint64:	MERGE_KEY_CORE	r12, r13, r14, ge, 0, 3
MergeKeyDsc_sint8:		MERGE_KEY		MergeKeyCoreDsc_sint8
MergeKeyDsc_sint16:		MERGE_KEY		MergeKeyCoreDsc_sint16
MergeKeyDsc_sint32:		MERGE_KEY		MergeKeyCoreDsc_sint32
MergeKeyDsc_sint64:		MERGE_KEY		MergeKeyCoreDsc_sint64

; Floating-point types
MergeKeyCoreDsc_flt32:	MERGE_KEY_CORE	r12d, r13d, r14d, ge, 1, 2
MergeKeyCoreDsc_flt64:	MERGE_KEY_CORE	r12, r13, r14, ge, 1, 3
MergeKeyDsc_flt32:		MERGE_KEY		MergeKeyCoreDsc_flt32
MergeKeyDsc_flt64:		MERGE_KEY		MergeKeyCoreDsc_flt64

;==============================================================================;
;       Object array merging                                                   ;
;==============================================================================;
macro	MERGE	cond
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
value	equ		r10							; pointer to source value
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
.loop:	lea		temp, [src1 + 8]			; src1p = src1 + 1
		mov		[s_src1p], temp				; save "src1p" variable into the stack
		lea		temp, [size1 - 1]			; size1m = size1 - 1
		mov		[s_sz1m], temp				; save "size1m" variable into the stack
		lea		temp, [src2 + 8]			; src2p = src2 + 1
		mov		[s_src2p], temp				; save "src2p" variable into the stack
		lea		temp, [size2 - 1]			; size2m = size2 - 1
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
		jmp		CopyFwd64					; return Copy (target, src2, size2)
.copy2:	mov		param1, [s_tgt]
		mov		param2, [s_src1]
		mov		param3, [s_size1]
		add		stack, space				; restoring back the stack pointe
		jmp		CopyFwd64					; return Copy (target, src1, size1)
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
MergeAsc:	MERGE	le

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
MergeDsc:	MERGE	ge

;******************************************************************************;
;       Comparison of arrays                                                   ;
;******************************************************************************;

;==============================================================================;
;       Regular array comparison                                               ;
;==============================================================================;
macro	COMPARE	DiffFunc, value1, value2, temp1, temp2, c1, c2, flt, scale
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
result	equ		rax							; result register
res1	equ		cl							; result of comparison #1
res2	equ		dl							; result of comparison #2
stack	equ		rsp							; stack pointer
s_arr1	equ		stack + 0 * 8				; stack position of "array1" variable
s_arr2	equ		stack + 1 * 8				; stack position of "array2" variable
if scale = 2
shift	= 30								; shift value
else if scale = 3
shift	= 62								; shift value
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		je		.equal						;     then go to equal branch
;---[Find different elements]--------------
		mov		[s_arr1], array1			; save "array1" variable into the stack
		mov		[s_arr2], array2			; save "array2" variable into the stack
		call	DiffFunc					; result = DiffFunc (array1, array2, size)
		cmp		result, NOT_FOUND			; if (result == NOT_FOUND)
		je		.exit						;     return 0
;---[Check elements relation]--------------
		mov		array1, [s_arr1]			; get "array1" variable from the stack
		mov		array2, [s_arr2]			; get "array2" variable from the stack
		mov		value1, [array1 + result * scale]
		mov		value2, [array2 + result * scale]
if flt
;---[Map first value to signed int]--------
		mov		temp1, value1				; temp1 = value1
		sar		temp1, shift
		shr		temp1, 1					; temp1 = (unsigned) (value1 >> shift) >> 1
		xor		value1, temp1				; value1 = value1 ^ temp1
;---[Map second value to signed int]-------
		mov		temp2, value2				; temp2 = value2
		sar		temp2, shift
		shr		temp2, 1					; temp2 = (unsigned) (value2 >> shift) >> 1
		xor		value2, temp2				; value2 = value2 ^ temp2
end if
		cmp		value1, value2
;---[Normal exit]--------------------------
.exit:	set#c1	res1						; if (array1[result] > array2[result]), then res1 = 1
		set#c2	res2						; if (array1[result] < array2[result]), then res2 = 1
		sub		res1, res2
		movsx	result, res1				; return res1 - res2
		add		stack, space				; restoring back the stack pointer
		ret
;---[Equal branch]-------------------------
.equal:	xor		result, result				; return 0
		add		stack, space				; restoring back the stack pointer
		ret
}

; Unsigned integer types
Compare_uint8:	COMPARE	CheckDiff8, cl, dl, dil, sil, a, b, 0, 1
Compare_uint16:	COMPARE	CheckDiff16, cx, dx, di, si, a, b, 0, 2
Compare_uint32:	COMPARE	CheckDiff32, ecx, edx, edi, esi, a, b, 0, 4
Compare_uint64:	COMPARE	CheckDiff64, rcx, rdx, rdi, rsi, a, b, 0, 8

; Signed integer types
Compare_sint8:	COMPARE	CheckDiff8, cl, dl, dil, sil, g, l, 0, 1
Compare_sint16:	COMPARE	CheckDiff16, cx, dx, di, si, g, l, 0, 2
Compare_sint32:	COMPARE	CheckDiff32, ecx, edx, edi, esi, g, l, 0, 4
Compare_sint64:	COMPARE	CheckDiff64, rcx, rdx, rdi, rsi, g, l, 0, 8

; Floating-point types
Compare_flt32:	COMPARE	CheckDiff32, ecx, edx, edi, esi, g, l, 1, 4
Compare_flt64:	COMPARE	CheckDiff64, rcx, rdx, rdi, rsi, g, l, 1, 8

;==============================================================================;
;       Object array comparison                                                ;
;==============================================================================;
Compare:
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
func	equ		rcx							; pointer to compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
stack	equ		rsp							; stack pointer
s_arr1	equ		stack + 0 * 8				; stack position of "array1" variable
s_arr2	equ		stack + 1 * 8				; stack position of "array2" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.equal						;     then go to equal branch
;---[Normal execution branch]--------------
		mov		[s_arr1], array1			; save "array1" variable into the stack
		mov		[s_arr2], array2			; save "array2" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
;---[Compare loop]-------------------------
.loop:	mov		param1, [array1]
		mov		param2, [array2]
		call	qword [s_func]				; call func (array1[0], array2[0])
		test	result, result				; if (result != 0)
		jnz		.exit						;     then go to exit
		mov		array1, [s_arr1]			; get "array1" variable from the stack
		mov		array2, [s_arr2]			; get "array2" variable from the stack
		add		array1, 8					; array1++
		add		array2, 8					; array2++
		mov		[s_arr1], array1			; save "array1" variable into the stack
		mov		[s_arr2], array2			; save "array2" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[End of compare loop]------------------
.exit:	add		stack, space				; restoring back the stack pointer
		ret
;---[Equal branch]-------------------------
.equal:	xor		result, result				; return 0
		add		stack, space				; restoring back the stack pointer
		ret

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for differences                                                  ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Regular array check                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CHECK_DIFF	value, x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
fmask	equ		r9							; compare result
ptr1	equ		r10							; temporary pointer to array1
ptr2	equ		r11							; temporary pointer to array2
temp1	equ		xmm0						; array1 data register #1
temp2	equ		xmm1						; array1 data register #2
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array2]					; prefetch data
	prefetchnta	[array1]					; prefetch data
		test	size, size					; if (size == 0)
		jz		.equal						;     then go to equal branch
		xor		index, index				; index = 0
if scale
		test	array2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	array1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		cmp		size, VSIZE / bytes			; if (size < VSIZE / bytes)
		jb		.sloop						;     then skip vector code
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		ptr2, array2				; ptr2 = array2
		mov		ptr1, array1				; ptr1 = array1
		mov		index, array1
		and		index, VMASK				; get array offset from vector boundary
		sub		ptr2, index					; ptr2 = array2 - index
		sub		ptr1, index					; ptr1 = array1 - index
;---[Unaligned operation]------------------
		add		size, index					; size += index
		neg		index						; index = -index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check array tails
		movdqu	temp2, [array2]				; temp2 = array2[0]
		movdqu	temp1, [array1]				; temp1 = array1[0]
	pcmpeq#x	temp1, temp2				; check if array1[0] == array2[0]
	pmovmskb	fmask, temp1				; save check results to fmask
		xor		fmask, VBITS				; if (array1[0] != array2[0])
		jnz		.brk0						;     then break the loop
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check array tails
		movdqu	temp2, [ptr2 + % * VSIZE]	; temp2 = ptr2[i]
		movdqa	temp1, [ptr1 + % * VSIZE]	; temp1 = ptr1[i]
	pcmpeq#x	temp1, temp2				; check if ptr1[i] == ptr2[i]
	pmovmskb	fmask, temp1				; save check results to fmask
		xor		fmask, VBITS				; if (ptr1[i] != ptr2[i])
		jnz		.brk1						;     then break the loop
end repeat
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of data
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of data
		add		ptr2, CLINE					; ptr2 += CLINE
		add		ptr1, CLINE					; ptr1 += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk0:	bsf		index, fmask				; find index of first different element
		shftr	index, scale				; return index
		ret
;---[Compare tails branch]-----------------
.tail:	add		index, size
		movdqu	temp2, [array2 + index]		; temp2 = array2[index]
		movdqu	temp1, [array1 + index]		; temp1 = array1[index]
	pcmpeq#x	temp1, temp2				; check if array1[index] == array2[index]
	pmovmskb	fmask, temp1				; save check results to fmask
		xor		fmask, VBITS				; if (array1[index] == array2[index])
		jz		.equal						;     then go to equal branch
.brk1:	bsf		fmask, fmask				; find index of first different element
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
;---[Scalar loop]--------------------------
.sloop:	mov		value, [array2]
		cmp		[array1], value				; if (array1[0] != array2[0])
		jne		.exit						;     then go to exit
		add		array2, bytes				; array2++
		add		array1, bytes				; array1++
		add		index, 1					; index++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Equal branch]-------------------------
.equal:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}
CheckDiff8:		CHECK_DIFF	cl, b
CheckDiff16:	CHECK_DIFF	cx, w
CheckDiff32:	CHECK_DIFF	ecx, d
CheckDiff64:	CHECK_DIFF	rcx, q

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Object array check                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
CheckDiff:
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
func	equ		rcx							; pointer to compare function
;---[Internal variables]-------------------
result	equ		rax							; result register
index	equ		rax							; index of first occurence of pattern
stack	equ		rsp							; stack pointer
s_arr1	equ		stack + 0 * 8				; stack position of "array1" variable
s_arr2	equ		stack + 1 * 8				; stack position of "array2" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_func	equ		stack + 3 * 8				; stack position of "func" variable
s_index	equ		stack + 4 * 8				; stack position of "index" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		test	size, size					; if (size == 0)
		jz		.equal						;     then go to equal branch
;---[Normal execution branch]--------------
		xor		index, index				; index = 0
		mov		[s_arr1], array1			; save "array1" variable into the stack
		mov		[s_arr2], array2			; save "array2" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		mov		[s_func], func				; save "func" variable into the stack
		mov		[s_index], index			; save "index" variable into the stack
;---[Compare loop]-------------------------
.loop:	mov		param1, [array1]
		mov		param2, [array2]
		call	qword [s_func]				; call func (array1[0], array2[0])
		test	result, result				; if (result != 0)
		jnz		.exit						;     then go to exit
		mov		array1, [s_arr1]			; get "array1" variable from the stack
		mov		array2, [s_arr2]			; get "array2" variable from the stack
		add		array1, 8					; array1++
		add		array2, 8					; array2++
		mov		[s_arr1], array1			; save "array1" variable into the stack
		mov		[s_arr2], array2			; save "array2" variable into the stack
		sub		qword [s_size], 1			; size--
		jnz		.loop						; do while (size != 0)
;---[Equal branch]-------------------------
.equal:	mov		index, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Normal exit branch]-------------------
.exit:	mov		index, [s_index]			; get "index" variable from the stack
		add		stack, space				; restoring back the stack pointer
		ret

;==============================================================================;
;       Check for duplicate values                                             ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Regular array check                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CHECK_DUP	elem1, elem2, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of duplicates search
temp1	equ		xmm0						; temporary register #1
temp2	equ		xmm1						; temporary register #2
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		sub		size, 1						; if (--size <= 0)
		jbe		.ntfnd						;     return NOT_FOUND
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sclr						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
;---[Unaligned operation]------------------
		add		size, index					; size += index
		mov		shft, index					; shft = index
		neg		index						; index = -index
		mov		cmask, VBITS
		shl		cmask, low					; adjust cmask for unaligned search
		movdqa	temp1, [array]
		sub		size, VSIZE					; if (size < VSIZE)
		jb		.tail0						;     then check array tail
		movdqu	temp2, [array + bytes]
	pcmpeq#x	temp1, temp2				; check elements for duplicates
	pmovmskb	fmask, temp1				; save check results to fmask
		and		fmask, cmask				; if duplicates are found
		jnz		.brk						;     then break the loop
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movdqa	temp1, [array + % * VSIZE]
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size < VSIZE)
		jb		.tail1						;     then check array tail
		movdqu	temp2, [array + % * VSIZE + bytes]
	pcmpeq#x	temp1, temp2				; check elements for duplicates
	pmovmskb	fmask, temp1				; save check results to fmask
		and		fmask, fmask				; if duplicates are found
		jnz		.brk						;     then break the loop
end repeat
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, CLINE				; array += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		fmask, fmask				; find index of first occurence of duplicate
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
;---[Tail 0 branch]------------------------
.tail0:	movdqa	temp2, temp1
		psrldq	temp2, bytes				; shift vector right to one position
	pcmpeq#x	temp1, temp2				; check elements for duplicates
	pmovmskb	fmask, temp1				; save check results to fmask
		and		fmask, cmask				; if duplicates are not found
		jz		.ntfnd						;     return NOT_FOUND
		bsf		fmask, fmask				; find index of first occurence of duplicate
		add		size, VSIZE					; size += VSIZE
		cmp		size, fmask					; if (size <= fmask)
		jbe		.ntfnd						;     return NOT_FOUND
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
;---[Tail 1 branch]------------------------
.tail1:	movdqa	temp2, temp1
		psrldq	temp2, bytes				; shift vector right to one position
	pcmpeq#x	temp1, temp2				; check elements for duplicates
	pmovmskb	fmask, temp1				; save check results to fmask
		and		fmask, fmask				; if duplicates are not found
		jz		.ntfnd						;     return NOT_FOUND
		bsf		fmask, fmask				; find index of first occurence of duplicate
		add		size, VSIZE					; size += VSIZE
		cmp		size, fmask					; if (size <= fmask)
		jbe		.ntfnd						;     return NOT_FOUND
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
if scale
;---[Scalar branch]------------------------
.sclr:	xor		index, index				; index = 0
;---[Scalar loop]--------------------------
.sloop:	mov		elem1, [array]				; element1 = array[0]
		mov		elem2, [array + bytes]		; element2 = array[1]
		cmp		elem1, elem2				; if (array[0] == array[1])
		je		.exit						;     then go to exit
		add		array, bytes				; array++
		add		index, 1					; index++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}
CheckDup8:	CHECK_DUP	dl, cl, b
CheckDup16:	CHECK_DUP	dx, cx, w
CheckDup32:	CHECK_DUP	edx, ecx, d
CheckDup64:	CHECK_DUP	rdx, rcx, q

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Object array check                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	CHECK_SORT_OBJ	c, sort
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
func	equ		rdx							; pointer to compare function
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
.exit:	mov		result, NOT_FOUND			; return NOT_FOUND
		add		stack, space				; restoring back the stack pointer
		ret
;---[Found branch]---------------------
.found:	mov		result, [s_ptr]				; get "ptr" variable from the stack
if sort
		add		result, 8
end if
		sub		result, [s_array]
		shr		result, 3					; return ptr - array
		add		stack, space				; restoring back the stack pointer
		ret
}
CheckDup:	CHECK_SORT_OBJ	e, 0

;==============================================================================;
;       Check for sort order                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Regular array check                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	VCHECK	type, dsc, x
{
if type = 0
		padd#x	temp1, mask					; map unsigned int to signed int
		padd#x	temp2, mask					; map unsigned int to signed int
else if type = 2
		pxor	temp3, temp3				; temp3 = 0
		pxor	temp4, temp4				; temp4 = 0
	pcmpgt#x	temp3, temp1				; if (temp1 < 0), then temp3 = dmask
	pcmpgt#x	temp4, temp2				; if (temp2 < 0), then temp4 = dmask
		pand	temp3, mask
		pand	temp4, mask
		pxor	temp1, temp3				; map float to signed int
		pxor	temp2, temp4				; map float to signed int
end if
if dsc
	pcmpgt#x	temp2, temp1				; check elements sort order
	pmovmskb	fmask, temp2				; save check results to fmask
else
	pcmpgt#x	temp1, temp2				; check elements sort order
	pmovmskb	fmask, temp1				; save check results to fmask
end if
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SCHECK	elem1, elem2, mask1, mask2, type, dsc
{
if type = 0
	if dsc
		cmp		elem1, elem2				; if (array[0] > array[1])
		jb		.exit						;     then go to exit
	else
		cmp		elem1, elem2				; if (array[0] > array[1])
		ja		.exit						;     then go to exit
	end if
else if type = 1
	if dsc
		cmp		elem1, elem2				; if (array[0] > array[1])
		jl		.exit						;     then go to exit
	else
		cmp		elem1, elem2				; if (array[0] > array[1])
		jg		.exit						;     then go to exit
	end if
else if type = 2
		mov		mask1, elem1				; mask1 = elem1
		mov		mask2, elem2				; mask2 = elem2
		sar		elem1, shift
		sar		elem2, shift
		shr		elem1, 1
		shr		elem2, 1
		xor		elem1, mask1				; map float to signed int
		xor		elem2, mask2				; map float to signed int
	if dsc
		cmp		elem1, elem2				; if (array[0] > array[1])
		jl		.exit						;     then go to exit
	else
		cmp		elem1, elem2				; if (array[0] > array[1])
		jg		.exit						;     then go to exit
	end if
end if
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CHECK_SORT	elem1, elem2, mask1, mask2, type, dsc, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of sort order check
temp1	equ		xmm0						; temporary register #1
temp2	equ		xmm1						; temporary register #2
temp3	equ		xmm2						; temporary register #3
temp4	equ		xmm3						; temporary register #4
mask	equ		xmm4						; mask to map numbers to signed int
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
dmask	= DMASK_FLT32						; data mask
scale	= 2									; scale value
else if x eq q
dmask	= DMASK_FLT64						; data mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
shift	= bytes * 8 - 1						; bit shift to extend number sign
biasval	= 1 shl (shift)						; bias to map unsigned int numbers to signed
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		sub		size, 1						; if (--size <= 0)
		jbe		.ntfnd						;     return NOT_FOUND
if scale
		test	array, bmask				; if elements have wrong alignment
		jnz		.sclr						;     then skip vector code
end if
		shftl	size, scale					; convert size to bytes
;---[Normal execution branch]--------------
if type = 0
		initreg	mask, index, biasval		; mask = biasval
		clone	mask, scale					; duplicate value through the entire register
else if type = 2
		initreg	mask, index, dmask			; mask = dmask
		clone	mask, scale					; duplicate value through the entire register
end if
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
;---[Unaligned operation]------------------
		add		size, index					; size += index
		mov		shft, index					; shft = index
		neg		index						; index = -index
		mov		cmask, VBITS
		shl		cmask, low					; adjust cmask for unaligned search
		movdqa	temp1, [array]
		sub		size, VSIZE					; if (size < VSIZE)
		jb		.tail0						;     then check array tail
		movdqu	temp2, [array + bytes]
		VCHECK	type, dsc, x				; check elements sort order
		and		fmask, cmask				; if sort order is broken
		jnz		.brk						;     then break the loop
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movdqa	temp1, [array + % * VSIZE]
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size < VSIZE)
		jb		.tail1						;     then check array tail
		movdqu	temp2, [array + % * VSIZE + bytes]
		VCHECK	type, dsc, x				; check elements sort order
		and		fmask, fmask				; if sort order is broken
		jnz		.brk						;     then break the loop
end repeat
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, CLINE				; array += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		fmask, fmask				; find index of element which broke sort order
		add		index, fmask				; index += fmask
		shftr	index, scale
		add		index, 1					; return index + 1
		ret
;---[Tail 0 branch]------------------------
.tail0:	movdqa	temp2, temp1
		psrldq	temp2, bytes				; shift vector right to one position
		VCHECK	type, dsc, x				; check elements sort order
		and		fmask, cmask				; if sort order is correct
		jz		.ntfnd						;     return NOT_FOUND
		bsf		fmask, fmask				; find index of element which broke sort order
		add		size, VSIZE					; size += VSIZE
		cmp		size, fmask					; if (size <= fmask)
		jbe		.ntfnd						;     return NOT_FOUND
		add		index, fmask				; index += fmask
		shftr	index, scale
		add		index, 1					; return index + 1
		ret
;---[Tail 1 branch]------------------------
.tail1:	movdqa	temp2, temp1
		psrldq	temp2, bytes				; shift vector right to one position
		VCHECK	type, dsc, x				; check elements sort order
		and		fmask, fmask				; if sort order is correct
		jz		.ntfnd						;     return NOT_FOUND
		bsf		fmask, fmask				; find index of element which broke sort order
		add		size, VSIZE					; size += VSIZE
		cmp		size, fmask					; if (size <= fmask)
		jbe		.ntfnd						;     return NOT_FOUND
		add		index, fmask				; index += fmask
		shftr	index, scale
		add		index, 1					; return index + 1
		ret
if scale
;---[Scalar branch]------------------------
.sclr:	xor		index, index				; index = 0
;---[Scalar loop]--------------------------
.sloop:	mov		elem1, [array]				; element1 = array[0]
		mov		elem2, [array + bytes]		; element2 = array[1]
		SCHECK	elem1, elem2, mask1, mask2, type, dsc
		add		array, bytes				; array++
		add		index, 1					; index++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
		ret
;---[Found branch]-------------------------
.exit:	add		index, 1					; return index + 1
		ret
}

;------------------------------------------------------------------------------;
;       Check for ascending sort order                                         ;
;------------------------------------------------------------------------------;

; Unsigned integer types
CheckSortAsc_uint8:		CHECK_SORT	dl, cl, r8b, r9b, 0, 0, b
CheckSortAsc_uint16:	CHECK_SORT	dx, cx, r8w, r9w, 0, 0, w
CheckSortAsc_uint32:	CHECK_SORT	edx, ecx, r8d, r9d, 0, 0, d
CheckSortAsc_uint64:	CHECK_SORT	rdx, rcx, r8, r9, 0, 0, q

; Signed integer types
CheckSortAsc_sint8:		CHECK_SORT	dl, cl, r8b, r9b, 1, 0, b
CheckSortAsc_sint16:	CHECK_SORT	dx, cx, r8w, r9w, 1, 0, w
CheckSortAsc_sint32:	CHECK_SORT	edx, ecx, r8d, r9d, 1, 0, d
CheckSortAsc_sint64:	CHECK_SORT	rdx, rcx, r8, r9, 1, 0, q

; Floating-point types
CheckSortAsc_flt32:		CHECK_SORT	edx, ecx, r8d, r9d, 2, 0, d
CheckSortAsc_flt64:		CHECK_SORT	rdx, rcx, r8, r9, 2, 0, q

;------------------------------------------------------------------------------;
;       Check for descending sort order                                        ;
;------------------------------------------------------------------------------;

; Unsigned integer types
CheckSortDsc_uint8:		CHECK_SORT	dl, cl, r8b, r9b, 0, 1, b
CheckSortDsc_uint16:	CHECK_SORT	dx, cx, r8w, r9w, 0, 1, w
CheckSortDsc_uint32:	CHECK_SORT	edx, ecx, r8d, r9d, 0, 1, d
CheckSortDsc_uint64:	CHECK_SORT	rdx, rcx, r8, r9, 0, 1, q

; Signed integer types
CheckSortDsc_sint8:		CHECK_SORT	dl, cl, r8b, r9b, 1, 1, b
CheckSortDsc_sint16:	CHECK_SORT	dx, cx, r8w, r9w, 1, 1, w
CheckSortDsc_sint32:	CHECK_SORT	edx, ecx, r8d, r9d, 1, 1, d
CheckSortDsc_sint64:	CHECK_SORT	rdx, rcx, r8, r9, 1, 1, q

; Floating-point types
CheckSortDsc_flt32:		CHECK_SORT	edx, ecx, r8d, r9d, 2, 1, d
CheckSortDsc_flt64:		CHECK_SORT	rdx, rcx, r8, r9, 2, 1, q

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Object array check                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
CheckSortAsc:			CHECK_SORT_OBJ	g, 1
CheckSortDsc:			CHECK_SORT_OBJ	l, 1

;==============================================================================;
;       Check for infinite values                                              ;
;==============================================================================;
macro	CHECK	patt, value, amask, cond1, cond2, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
shft	equ		rcx							; shift value
low		equ		cl							; low part of shift value
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of pattern search
flags	equ		xmm0						; pattern check flags
mask	equ		xmm1						; mask to get absolute value
pattern	equ		xmm2						; pattern to find
if x eq d
dmask	= DMASK_FLT32						; data mask
infval	= PINF_FLT32						; +Inf
scale	= 2									; scale value
else if x eq q
dmask	= DMASK_FLT64						; data mask
infval	= PINF_FLT64						; +Inf
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     return NOT_FOUND
		test	array, bmask				; if elements have wrong alignment
		jnz		.sclr						;     then skip vector code
		shl		size, scale					; convert size to bytes
;---[Normal execution branch]--------------
		mov		amask, dmask				; load amask
		mov#x	mask, amask					; mask = amask
		clone	mask, scale					; duplicate value through the entire register
		mov		patt, infval				; load pattern
		mov#x	pattern, patt				; pattern = patt
		clone	pattern, scale				; duplicate value through the entire register
		mov		index, array
		and		index, VMASK				; get array offset from vector boundary
		sub		array, index				; align pointer to vector boundary
;---[Unaligned operation]------------------
		add		size, index					; size += index
		mov		shft, index					; shft = index
		neg		index						; index = -index
		mov		cmask, VBITS
		shl		cmask, low					; adjust cmask for unaligned search
		movdqa	flags, [array]
		pand	flags, mask					; flags = Abs (array[0])
		cond1#x	flags, pattern				; check array[0] for infinity
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, cmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     return NOT_FOUND
;---[Vector loop]--------------------------
.vloop:
repeat	CLINE / VSIZE
		movdqa	flags, [array + % * VSIZE]
		pand	flags, mask					; flags = Abs (array[i])
		cond1#x	flags, pattern				; check array[i] for infinity
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     return NOT_FOUND
end repeat
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, CLINE				; array += CLINE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		fmask, fmask				; find index of first occurence of pattern
		cmp		size, fmask					; if (size <= fmask)
		jbe		.ntfnd						;     return NOT_FOUND
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
;---[Scalar branch]------------------------
.sclr:	xor		index, index				; index = 0
;---[Scalar loop]--------------------------
.sloop:	mov		value, [array]
		and		value, amask				; value = abs (array[0])
		cmp		value, patt					; if (value condition pattern)
		cond2	.exit						;     then go to exit
		add		array, bytes				; array++
		add		index, 1					; index++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}
CheckInf_flt32:	CHECK	edx, r8d, r9d, pcmpeq, je, d
CheckInf_flt64:	CHECK	rdx, r8, r9, pcmpeq, je, q

;==============================================================================;
;       Check for NaN values                                                   ;
;==============================================================================;
CheckNaN_flt32:	CHECK	edx, r8d, r9d, pcmpgt, jg, d
CheckNaN_flt64:	CHECK	rdx, r8, r9, pcmpgt, jg, q

;==============================================================================;
;       Check for overlap                                                      ;
;==============================================================================;
macro	OVERLAP	scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
tsize	equ		rsi							; target array size
source	equ		rdx							; pointer to source array
ssize	equ		rcx							; source array size
;---[Internal variables]-------------------
result	equ		al							; result register
max		equ		r8							; max value
min		equ		r9							; max value
;---[Compute max address]------------------
		shl		tsize, scale				; convert tsize to bytes
		shl		ssize, scale				; convert ssize to bytes
		cmp		target, source
		cmova	max, target					; if (target > source), max = target
		cmovna	max, source					; if (target <= source), max = source
;---[Compute min address]------------------
		add		target, tsize				; taget += tsize
		add		source, ssize				; source += ssize
		cmp		target, source
		cmovb	min, target					; if (target < source), min = target
		cmovnb	min, source					; if (target >= source), min = source
;---[Check if addresses overlap]-----------
		cmp		max, min					; if (max < min)
		setb	result						;     return true
		ret
}
Overlap8:	OVERLAP	0
Overlap16:	OVERLAP	1
Overlap32:	OVERLAP	2
Overlap64:	OVERLAP	3

;******************************************************************************;
;       Array hashing                                                          ;
;******************************************************************************;
macro	HASH	result, temp, value, const, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		value, const				; value = const
		xor		result, result				; result = 0
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Hashing loop]-------------------------
.loop:
repeat	bytes
		movzx	temp, byte [array + (%-1)]	; temp = array[i]
		add		result, temp				; result += temp
		imul	result, value				; result *= value
end repeat
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[End of hashing loop]------------------
.exit:	ret
}

;==============================================================================;
;       32-bit hash functions                                                  ;
;==============================================================================;
Hash32_bit8:	HASH	eax, edx, ecx, 2654435769, 0
Hash32_bit16:	HASH	eax, edx, ecx, 2654435769, 1
Hash32_bit32:	HASH	eax, edx, ecx, 2654435769, 2
Hash32_bit64:	HASH	eax, edx, ecx, 2654435769, 3

;==============================================================================;
;       64-bit hash functions                                                  ;
;==============================================================================;
Hash64_bit8:	HASH	rax, rdx, rcx, 11400714819323198485, 0
Hash64_bit16:	HASH	rax, rdx, rcx, 11400714819323198485, 1
Hash64_bit32:	HASH	rax, rdx, rcx, 11400714819323198485, 2
Hash64_bit64:	HASH	rax, rdx, rcx, 11400714819323198485, 3

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

;******************************************************************************;
;       Array of blend mask for scalar operations                              ;
;******************************************************************************;
align 16
maskS1		dq	0x0000000000000000, 0x0000000000000000
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
maskS2		dq	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF

;******************************************************************************;
;       Array of blend mask for vector operations                              ;
;******************************************************************************;
align 16
maskV1		dq	0x0000000000000000, 0x0000000000000000
			dq	0x0000000000000000, 0xFF00000000000000
			dq	0x0000000000000000, 0xFFFF000000000000
			dq	0x0000000000000000, 0xFFFFFF0000000000
			dq	0x0000000000000000, 0xFFFFFFFF00000000
			dq	0x0000000000000000, 0xFFFFFFFFFF000000
			dq	0x0000000000000000, 0xFFFFFFFFFFFF0000
			dq	0x0000000000000000, 0xFFFFFFFFFFFFFF00
			dq	0x0000000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFF00000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFF000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFF0000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFF00000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFF000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFFFF0000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFFFFFF00, 0xFFFFFFFFFFFFFFFF
maskV2		dq	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF

;******************************************************************************;
;       Shufle masks for bytes swaping                                         ;
;******************************************************************************;
align 16
smask8		dq	0x0706050403020100, 0x0F0E0D0C0B0A0908	; Mask for bit8_t values
smask16		dq	0x0607040502030001, 0x0E0F0C0D0A0B0809	; Mask for bit16_t values
smask32		dq	0x0405060700010203, 0x0C0D0E0F08090A0B	; Mask for bit32_t values
smask64		dq	0x0001020304050607, 0x08090A0B0C0D0E0F	; Mask for bit64_t values

;******************************************************************************;
;       Shufle masks for elements reversing                                    ;
;******************************************************************************;
align 16
rmask8		dq	0x08090A0B0C0D0E0F, 0x0001020304050607	; Mask for bit8_t values
rmask16		dq	0x09080B0A0D0C0F0E, 0x0100030205040706	; Mask for bit16_t values
rmask32		dq	0x0B0A09080F0E0D0C, 0x0302010007060504	; Mask for bit32_t values
rmask64		dq	0x0F0E0D0C0B0A0908, 0x0706050403020100	; Mask for bit64_t values

;******************************************************************************;
;       Bit selection masks for bit manipulations                              ;
;******************************************************************************;
align 16
bmask11		dq	2 dup (0x5555555555555555)				; Const #1 for stage 1
bmask12		dq	2 dup (0xAAAAAAAAAAAAAAAA)				; Const #2 for stage 1
bmask21		dq	2 dup (0x3333333333333333)				; Const #1 for stage 2
bmask22		dq	2 dup (0xCCCCCCCCCCCCCCCC)				; Const #2 for stage 2
bmask31		dq	2 dup (0x0F0F0F0F0F0F0F0F)				; Const #1 for stage 3
bmask32		dq	2 dup (0xF0F0F0F0F0F0F0F0)				; Const #2 for stage 3
bmask41		dq	2 dup (0x00FF00FF00FF00FF)				; Const #1 for stage 4
bmask42		dq	2 dup (0xFF00FF00FF00FF00)				; Const #2 for stage 4
bmask51		dq	2 dup (0x0000FFFF0000FFFF)				; Const #1 for stage 5
bmask52		dq	2 dup (0xFFFF0000FFFF0000)				; Const #2 for stage 5
bmask61		dq	2 dup (0x00000000FFFFFFFF)				; Const #1 for stage 6
bmask62		dq	2 dup (0xFFFFFFFF00000000)				; Const #2 for stage 6

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
