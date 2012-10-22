;                                                                      Array.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                 COMMON ROUTINES THAT ARE USEFUL FOR ARRAYS                  #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2012, Jack Black #
;###############################################################################
format	ELF64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Order reversing                                                        ;
;******************************************************************************;

; Unsigned integer types
public	Reverse8				as	'Array_Reverse_uint8'
public	Reverse16				as	'Array_Reverse_uint16'
public	Reverse32				as	'Array_Reverse_uint32'
public	Reverse64				as	'Array_Reverse_uint64'
public	Reverse8				as	'_ZN5Array7ReverseEPhm'
public	Reverse16				as	'_ZN5Array7ReverseEPtm'
public	Reverse32				as	'_ZN5Array7ReverseEPjm'
public	Reverse64				as	'_ZN5Array7ReverseEPym'

; Signed integer types
public	Reverse8				as	'Array_Reverse_sint8'
public	Reverse16				as	'Array_Reverse_sint16'
public	Reverse32				as	'Array_Reverse_sint32'
public	Reverse64				as	'Array_Reverse_sint64'
public	Reverse8				as	'_ZN5Array7ReverseEPam'
public	Reverse16				as	'_ZN5Array7ReverseEPsm'
public	Reverse32				as	'_ZN5Array7ReverseEPim'
public	Reverse64				as	'_ZN5Array7ReverseEPxm'

; Floating-point types
public	Reverse32				as	'Array_Reverse_flt32'
public	Reverse64				as	'Array_Reverse_flt64'
public	Reverse32				as	'_ZN5Array7ReverseEPfm'
public	Reverse64				as	'_ZN5Array7ReverseEPdm'

; Other types
public	Reverse64				as	'Array_Reverse_size'
public	Reverse64				as	'_ZN5Array7ReverseEPmm'

;******************************************************************************;
;       Initialization                                                         ;
;******************************************************************************;

; Unsigned integer types
public	Init_int8				as	'Array_Init_uint8'
public	Init_int16				as	'Array_Init_uint16'
public	Init_int32				as	'Array_Init_uint32'
public	Init_int64				as	'Array_Init_uint64'
public	Init_int8				as	'_ZN5Array4InitEPhmh'
public	Init_int16				as	'_ZN5Array4InitEPtmt'
public	Init_int32				as	'_ZN5Array4InitEPjmj'
public	Init_int64				as	'_ZN5Array4InitEPymy'

; Signed integer types
public	Init_int8				as	'Array_Init_sint8'
public	Init_int16				as	'Array_Init_sint16'
public	Init_int32				as	'Array_Init_sint32'
public	Init_int64				as	'Array_Init_sint64'
public	Init_int8				as	'_ZN5Array4InitEPama'
public	Init_int16				as	'_ZN5Array4InitEPsms'
public	Init_int32				as	'_ZN5Array4InitEPimi'
public	Init_int64				as	'_ZN5Array4InitEPxmx'

; Floating-point types
public	Init_int32				as	'Array_Init_flt32'
public	Init_int64				as	'Array_Init_flt64'
public	Init_flt32				as	'_ZN5Array4InitEPfmf'
public	Init_flt64				as	'_ZN5Array4InitEPdmd'

; Other types
public	Init_int64				as	'Array_Init_size'
public	Init_int64				as	'_ZN5Array4InitEPmmm'

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;

; Unsigned integer types
public	CopyFwd8				as	'Array_Copy_uint8'
public	CopyFwd16				as	'Array_Copy_uint16'
public	CopyFwd32				as	'Array_Copy_uint32'
public	CopyFwd64				as	'Array_Copy_uint64'
public	CopyFwd8				as	'_ZN5Array4CopyEPhPKhm'
public	CopyFwd16				as	'_ZN5Array4CopyEPtPKtm'
public	CopyFwd32				as	'_ZN5Array4CopyEPjPKjm'
public	CopyFwd64				as	'_ZN5Array4CopyEPyPKym'

; Signed integer types
public	CopyFwd8				as	'Array_Copy_sint8'
public	CopyFwd16				as	'Array_Copy_sint16'
public	CopyFwd32				as	'Array_Copy_sint32'
public	CopyFwd64				as	'Array_Copy_sint64'
public	CopyFwd8				as	'_ZN5Array4CopyEPaPKam'
public	CopyFwd16				as	'_ZN5Array4CopyEPsPKsm'
public	CopyFwd32				as	'_ZN5Array4CopyEPiPKim'
public	CopyFwd64				as	'_ZN5Array4CopyEPxPKxm'

; Floating-point types
public	CopyFwd32				as	'Array_Copy_flt32'
public	CopyFwd64				as	'Array_Copy_flt64'
public	CopyFwd32				as	'_ZN5Array4CopyEPfPKfm'
public	CopyFwd64				as	'_ZN5Array4CopyEPdPKdm'

; Other types
public	CopyFwd64				as	'Array_Copy_size'
public	CopyFwd8				as	'Array_Copy'
public	CopyFwd64				as	'_ZN5Array4CopyEPmPKmm'
public	CopyFwd8				as	'_ZN5Array4CopyEPvPKvm'

;******************************************************************************;
;       Moving                                                                 ;
;******************************************************************************;

; Unsigned integer types
public	Move8					as	'Array_Move_uint8'
public	Move16					as	'Array_Move_uint16'
public	Move32					as	'Array_Move_uint32'
public	Move64					as	'Array_Move_uint64'
public	Move8					as	'_ZN5Array4MoveEPhPKhm'
public	Move16					as	'_ZN5Array4MoveEPtPKtm'
public	Move32					as	'_ZN5Array4MoveEPjPKjm'
public	Move64					as	'_ZN5Array4MoveEPyPKym'

; Signed integer types
public	Move8					as	'Array_Move_sint8'
public	Move16					as	'Array_Move_sint16'
public	Move32					as	'Array_Move_sint32'
public	Move64					as	'Array_Move_sint64'
public	Move8					as	'_ZN5Array4MoveEPaPKam'
public	Move16					as	'_ZN5Array4MoveEPsPKsm'
public	Move32					as	'_ZN5Array4MoveEPiPKim'
public	Move64					as	'_ZN5Array4MoveEPxPKxm'

; Floating-point types
public	Move32					as	'Array_Move_flt32'
public	Move64					as	'Array_Move_flt64'
public	Move32					as	'_ZN5Array4MoveEPfPKfm'
public	Move64					as	'_ZN5Array4MoveEPdPKdm'

; Other types
public	Move64					as	'Array_Move_size'
public	Move8					as	'Array_Move'
public	Move64					as	'_ZN5Array4MoveEPmPKmm'
public	Move8					as	'_ZN5Array4MoveEPvPKvm'

;******************************************************************************;
;       Pattern cloning                                                        ;
;******************************************************************************;

; Unsigned integer types
public	Clone8					as	'Array_Clone_uint8'
public	Clone16					as	'Array_Clone_uint16'
public	Clone32					as	'Array_Clone_uint32'
public	Clone64					as	'Array_Clone_uint64'
public	Clone8					as	'_ZN5Array5CloneEPhmm'
public	Clone16					as	'_ZN5Array5CloneEPtmm'
public	Clone32					as	'_ZN5Array5CloneEPjmm'
public	Clone64					as	'_ZN5Array5CloneEPymm'

; Signed integer types
public	Clone8					as	'Array_Clone_sint8'
public	Clone16					as	'Array_Clone_sint16'
public	Clone32					as	'Array_Clone_sint32'
public	Clone64					as	'Array_Clone_sint64'
public	Clone8					as	'_ZN5Array5CloneEPamm'
public	Clone16					as	'_ZN5Array5CloneEPsmm'
public	Clone32					as	'_ZN5Array5CloneEPimm'
public	Clone64					as	'_ZN5Array5CloneEPxmm'

; Floating-point types
public	Clone32					as	'Array_Clone_flt32'
public	Clone64					as	'Array_Clone_flt64'
public	Clone32					as	'_ZN5Array5CloneEPfmm'
public	Clone64					as	'_ZN5Array5CloneEPdmm'

; Other types
public	Clone64					as	'Array_Clone_size'
public	Clone8					as	'Array_Clone'
public	Clone64					as	'_ZN5Array5CloneEPmmm'
public	Clone8					as	'_ZN5Array5CloneEPvmm'

;******************************************************************************;
;       Data conversion                                                        ;
;******************************************************************************;

; Conversion between floating-point types
public	ConvertFlt32ToFlt64		as	'Array_ConvertFlt32ToFlt64'
public	ConvertFlt64ToFlt32		as	'Array_ConvertFlt64ToFlt32'
public	ConvertFlt32ToFlt64		as	'_ZN5Array7ConvertEPdPKfm'
public	ConvertFlt64ToFlt32		as	'_ZN5Array7ConvertEPfPKdm'

; Conversion from signed integer types to floating-point types
public	ConvertSint32ToFlt32	as	'Array_ConvertSint32ToFlt32'
public	ConvertSint32ToFlt64	as	'Array_ConvertSint32ToFlt64'
public	ConvertSint64ToFlt32	as	'Array_ConvertSint64ToFlt32'
public	ConvertSint64ToFlt64	as	'Array_ConvertSint64ToFlt64'
public	ConvertSint32ToFlt32	as	'_ZN5Array7ConvertEPfPKim'
public	ConvertSint32ToFlt64	as	'_ZN5Array7ConvertEPdPKim'
public	ConvertSint64ToFlt32	as	'_ZN5Array7ConvertEPfPKxm'
public	ConvertSint64ToFlt64	as	'_ZN5Array7ConvertEPdPKxm'

; Conversion from floating-point types to signed integer types
public	ConvertFlt32ToSint32	as	'Array_ConvertFlt32ToSint32'
public	ConvertFlt32ToSint64	as	'Array_ConvertFlt32ToSint64'
public	ConvertFlt64ToSint32	as	'Array_ConvertFlt64ToSint32'
public	ConvertFlt64ToSint64	as	'Array_ConvertFlt64ToSint64'
public	ConvertFlt32ToSint32	as	'_ZN5Array7ConvertEPiPKfm'
public	ConvertFlt32ToSint64	as	'_ZN5Array7ConvertEPxPKfm'
public	ConvertFlt64ToSint32	as	'_ZN5Array7ConvertEPiPKdm'
public	ConvertFlt64ToSint64	as	'_ZN5Array7ConvertEPxPKdm'

; Truncating from floating-point types to signed integer types
public	TruncateFlt32ToSint32	as	'Array_TruncateFlt32ToSint32'
public	TruncateFlt32ToSint64	as	'Array_TruncateFlt32ToSint64'
public	TruncateFlt64ToSint32	as	'Array_TruncateFlt64ToSint32'
public	TruncateFlt64ToSint64	as	'Array_TruncateFlt64ToSint64'
public	TruncateFlt32ToSint32	as	'_ZN5Array8TruncateEPiPKfm'
public	TruncateFlt32ToSint64	as	'_ZN5Array8TruncateEPxPKfm'
public	TruncateFlt64ToSint32	as	'_ZN5Array8TruncateEPiPKdm'
public	TruncateFlt64ToSint64	as	'_ZN5Array8TruncateEPxPKdm'

;******************************************************************************;
;       Bitwise operations                                                     ;
;******************************************************************************;

;==============================================================================;
;       Bitwise NOT                                                            ;
;==============================================================================;

; Unsigned integer types
public	Not8					as	'Array_Not_uint8'
public	Not16					as	'Array_Not_uint16'
public	Not32					as	'Array_Not_uint32'
public	Not64					as	'Array_Not_uint64'
public	Not8					as	'_ZN5Array3NotEPhm'
public	Not16					as	'_ZN5Array3NotEPtm'
public	Not32					as	'_ZN5Array3NotEPjm'
public	Not64					as	'_ZN5Array3NotEPym'

; Signed integer types
public	Not8					as	'Array_Not_sint8'
public	Not16					as	'Array_Not_sint16'
public	Not32					as	'Array_Not_sint32'
public	Not64					as	'Array_Not_sint64'
public	Not8					as	'_ZN5Array3NotEPam'
public	Not16					as	'_ZN5Array3NotEPsm'
public	Not32					as	'_ZN5Array3NotEPim'
public	Not64					as	'_ZN5Array3NotEPxm'

;==============================================================================;
;       Bitwise AND                                                            ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Scalar bitwise AND                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	AndS8					as	'Array_AndScalar_uint8'
public	AndS16					as	'Array_AndScalar_uint16'
public	AndS32					as	'Array_AndScalar_uint32'
public	AndS64					as	'Array_AndScalar_uint64'
public	AndS8					as	'_ZN5Array3AndEPhmh'
public	AndS16					as	'_ZN5Array3AndEPtmt'
public	AndS32					as	'_ZN5Array3AndEPjmj'
public	AndS64					as	'_ZN5Array3AndEPymy'

; Signed integer types
public	AndS8					as	'Array_AndScalar_sint8'
public	AndS16					as	'Array_AndScalar_sint16'
public	AndS32					as	'Array_AndScalar_sint32'
public	AndS64					as	'Array_AndScalar_sint64'
public	AndS8					as	'_ZN5Array3AndEPama'
public	AndS16					as	'_ZN5Array3AndEPsms'
public	AndS32					as	'_ZN5Array3AndEPimi'
public	AndS64					as	'_ZN5Array3AndEPxmx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Vector bitwise AND                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	AndV8					as	'Array_AndVector_uint8'
public	AndV16					as	'Array_AndVector_uint16'
public	AndV32					as	'Array_AndVector_uint32'
public	AndV64					as	'Array_AndVector_uint64'
public	AndV8					as	'_ZN5Array3AndEPhPKhm'
public	AndV16					as	'_ZN5Array3AndEPtPKtm'
public	AndV32					as	'_ZN5Array3AndEPjPKjm'
public	AndV64					as	'_ZN5Array3AndEPyPKym'

; Signed integer types
public	AndV8					as	'Array_AndVector_sint8'
public	AndV16					as	'Array_AndVector_sint16'
public	AndV32					as	'Array_AndVector_sint32'
public	AndV64					as	'Array_AndVector_sint64'
public	AndV8					as	'_ZN5Array3AndEPaPKam'
public	AndV16					as	'_ZN5Array3AndEPsPKsm'
public	AndV32					as	'_ZN5Array3AndEPiPKim'
public	AndV64					as	'_ZN5Array3AndEPxPKxm'

;==============================================================================;
;       Bitwise OR                                                             ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Scalar bitwise OR                                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	OrS8					as	'Array_OrScalar_uint8'
public	OrS16					as	'Array_OrScalar_uint16'
public	OrS32					as	'Array_OrScalar_uint32'
public	OrS64					as	'Array_OrScalar_uint64'
public	OrS8					as	'_ZN5Array2OrEPhmh'
public	OrS16					as	'_ZN5Array2OrEPtmt'
public	OrS32					as	'_ZN5Array2OrEPjmj'
public	OrS64					as	'_ZN5Array2OrEPymy'

; Signed integer types
public	OrS8					as	'Array_OrScalar_sint8'
public	OrS16					as	'Array_OrScalar_sint16'
public	OrS32					as	'Array_OrScalar_sint32'
public	OrS64					as	'Array_OrScalar_sint64'
public	OrS8					as	'_ZN5Array2OrEPama'
public	OrS16					as	'_ZN5Array2OrEPsms'
public	OrS32					as	'_ZN5Array2OrEPimi'
public	OrS64					as	'_ZN5Array2OrEPxmx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Vector bitwise OR                                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	OrV8					as	'Array_OrVector_uint8'
public	OrV16					as	'Array_OrVector_uint16'
public	OrV32					as	'Array_OrVector_uint32'
public	OrV64					as	'Array_OrVector_uint64'
public	OrV8					as	'_ZN5Array2OrEPhPKhm'
public	OrV16					as	'_ZN5Array2OrEPtPKtm'
public	OrV32					as	'_ZN5Array2OrEPjPKjm'
public	OrV64					as	'_ZN5Array2OrEPyPKym'

; Signed integer types
public	OrV8					as	'Array_OrVector_sint8'
public	OrV16					as	'Array_OrVector_sint16'
public	OrV32					as	'Array_OrVector_sint32'
public	OrV64					as	'Array_OrVector_sint64'
public	OrV8					as	'_ZN5Array2OrEPaPKam'
public	OrV16					as	'_ZN5Array2OrEPsPKsm'
public	OrV32					as	'_ZN5Array2OrEPiPKim'
public	OrV64					as	'_ZN5Array2OrEPxPKxm'

;==============================================================================;
;       Bitwise XOR                                                            ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Scalar bitwise XOR                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	XorS8					as	'Array_XorScalar_uint8'
public	XorS16					as	'Array_XorScalar_uint16'
public	XorS32					as	'Array_XorScalar_uint32'
public	XorS64					as	'Array_XorScalar_uint64'
public	XorS8					as	'_ZN5Array3XorEPhmh'
public	XorS16					as	'_ZN5Array3XorEPtmt'
public	XorS32					as	'_ZN5Array3XorEPjmj'
public	XorS64					as	'_ZN5Array3XorEPymy'

; Signed integer types
public	XorS8					as	'Array_XorScalar_sint8'
public	XorS16					as	'Array_XorScalar_sint16'
public	XorS32					as	'Array_XorScalar_sint32'
public	XorS64					as	'Array_XorScalar_sint64'
public	XorS8					as	'_ZN5Array3XorEPama'
public	XorS16					as	'_ZN5Array3XorEPsms'
public	XorS32					as	'_ZN5Array3XorEPimi'
public	XorS64					as	'_ZN5Array3XorEPxmx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Vector bitwise XOR                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	XorV8					as	'Array_XorVector_uint8'
public	XorV16					as	'Array_XorVector_uint16'
public	XorV32					as	'Array_XorVector_uint32'
public	XorV64					as	'Array_XorVector_uint64'
public	XorV8					as	'_ZN5Array3XorEPhPKhm'
public	XorV16					as	'_ZN5Array3XorEPtPKtm'
public	XorV32					as	'_ZN5Array3XorEPjPKjm'
public	XorV64					as	'_ZN5Array3XorEPyPKym'

; Signed integer types
public	XorV8					as	'Array_XorVector_sint8'
public	XorV16					as	'Array_XorVector_sint16'
public	XorV32					as	'Array_XorVector_sint32'
public	XorV64					as	'Array_XorVector_sint64'
public	XorV8					as	'_ZN5Array3XorEPaPKam'
public	XorV16					as	'_ZN5Array3XorEPsPKsm'
public	XorV32					as	'_ZN5Array3XorEPiPKim'
public	XorV64					as	'_ZN5Array3XorEPxPKxm'

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unitary operations                                                     ;
;==============================================================================;

; Negative value
public	Neg_flt32				as	'Array_Neg_flt32'
public	Neg_flt64				as	'Array_Neg_flt64'
public	Neg_flt32				as	'_ZN5Array3NegEPfm'
public	Neg_flt64				as	'_ZN5Array3NegEPdm'

; Absolute value
public	Abs_flt32				as	'Array_Abs_flt32'
public	Abs_flt64				as	'Array_Abs_flt64'
public	Abs_flt32				as	'_ZN5Array3AbsEPfm'
public	Abs_flt64				as	'_ZN5Array3AbsEPdm'

; Square
public	Sqr_flt32				as	'Array_Sqr_flt32'
public	Sqr_flt64				as	'Array_Sqr_flt64'
public	Sqr_flt32				as	'_ZN5Array3SqrEPfm'
public	Sqr_flt64				as	'_ZN5Array3SqrEPdm'

; Square root
public	Sqrt_flt32				as	'Array_Sqrt_flt32'
public	Sqrt_flt64				as	'Array_Sqrt_flt64'
public	Sqrt_flt32				as	'_ZN5Array4SqrtEPfm'
public	Sqrt_flt64				as	'_ZN5Array4SqrtEPdm'

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Addition                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Scalar addition
public	AddS_flt32				as	'Array_AddScalar_flt32'
public	AddS_flt64				as	'Array_AddScalar_flt64'
public	AddS_flt32				as	'_ZN5Array3AddEPfmf'
public	AddS_flt64				as	'_ZN5Array3AddEPdmd'

; Vector addition
public	AddV_flt32				as	'Array_AddVector_flt32'
public	AddV_flt64				as	'Array_AddVector_flt64'
public	AddV_flt32				as	'_ZN5Array3AddEPfPKfm'
public	AddV_flt64				as	'_ZN5Array3AddEPdPKdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Subtraction                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Scalar subtraction
public	SubS_flt32				as	'Array_SubScalar_flt32'
public	SubS_flt64				as	'Array_SubScalar_flt64'
public	SubS_flt32				as	'_ZN5Array3SubEPfmf'
public	SubS_flt64				as	'_ZN5Array3SubEPdmd'

; Vector subtraction
public	SubV_flt32				as	'Array_SubVector_flt32'
public	SubV_flt64				as	'Array_SubVector_flt64'
public	SubV_flt32				as	'_ZN5Array3SubEPfPKfm'
public	SubV_flt64				as	'_ZN5Array3SubEPdPKdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Scalar multiplication
public	MulS_flt32				as	'Array_MulScalar_flt32'
public	MulS_flt64				as	'Array_MulScalar_flt64'
public	MulS_flt32				as	'_ZN5Array3MulEPfmf'
public	MulS_flt64				as	'_ZN5Array3MulEPdmd'

; Vector multiplication
public	MulV_flt32				as	'Array_MulVector_flt32'
public	MulV_flt64				as	'Array_MulVector_flt64'
public	MulV_flt32				as	'_ZN5Array3MulEPfPKfm'
public	MulV_flt64				as	'_ZN5Array3MulEPdPKdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Scalar division
public	DivS_flt32				as	'Array_DivScalar_flt32'
public	DivS_flt64				as	'Array_DivScalar_flt64'
public	DivS_flt32				as	'_ZN5Array3DivEPfmf'
public	DivS_flt64				as	'_ZN5Array3DivEPdmd'

; Vector division
public	DivV_flt32				as	'Array_DivVector_flt32'
public	DivV_flt64				as	'Array_DivVector_flt64'
public	DivV_flt32				as	'_ZN5Array3DivEPfPKfm'
public	DivV_flt64				as	'_ZN5Array3DivEPdPKdm'

;******************************************************************************;
;       Numerical integration                                                  ;
;******************************************************************************;

; Sum of elements
public	Sum_flt32				as	'Array_Sum_flt32'
public	Sum_flt64				as	'Array_Sum_flt64'
public	Sum_flt32				as	'_ZN5Array3SumEPKfm'
public	Sum_flt64				as	'_ZN5Array3SumEPKdm'

; Sum of squares
public	SumSqr_flt32			as	'Array_SumSqr_flt32'
public	SumSqr_flt64			as	'Array_SumSqr_flt64'
public	SumSqr_flt32			as	'_ZN5Array6SumSqrEPKfm'
public	SumSqr_flt64			as	'_ZN5Array6SumSqrEPKdm'

; Sum of multiplied elements
public	SumMul_flt32			as	'Array_SumMul_flt32'
public	SumMul_flt64			as	'Array_SumMul_flt64'
public	SumMul_flt32			as	'_ZN5Array6SumMulEPKfS1_m'
public	SumMul_flt64			as	'_ZN5Array6SumMulEPKdS1_m'

;******************************************************************************;
;       Minimum and maximum values                                             ;
;******************************************************************************;

; Minimum value
public	Min_flt32				as	'Array_Min_flt32'
public	Min_flt64				as	'Array_Min_flt64'
public	Min_flt32				as	'_ZN5Array3MinEPKfm'
public	Min_flt64				as	'_ZN5Array3MinEPKdm'

; Minimum absolute value
public	MinAbs_flt32			as	'Array_MinAbs_flt32'
public	MinAbs_flt64			as	'Array_MinAbs_flt64'
public	MinAbs_flt32			as	'_ZN5Array6MinAbsEPKfm'
public	MinAbs_flt64			as	'_ZN5Array6MinAbsEPKdm'

; Maximum value
public	Max_flt32				as	'Array_Max_flt32'
public	Max_flt64				as	'Array_Max_flt64'
public	Max_flt32				as	'_ZN5Array3MaxEPKfm'
public	Max_flt64				as	'_ZN5Array3MaxEPKdm'

; Maximum absolute value
public	MaxAbs_flt32			as	'Array_MaxAbs_flt32'
public	MaxAbs_flt64			as	'Array_MaxAbs_flt64'
public	MaxAbs_flt32			as	'_ZN5Array6MaxAbsEPKfm'
public	MaxAbs_flt64			as	'_ZN5Array6MaxAbsEPKdm'

;******************************************************************************;
;       Rounding                                                               ;
;******************************************************************************;

; Round down (floor)
public	RoundDown_flt32			as	'Array_RoundDown_flt32'
public	RoundDown_flt64			as	'Array_RoundDown_flt64'
public	RoundDown_flt32			as	'_ZN5Array9RoundDownEPfm'
public	RoundDown_flt64			as	'_ZN5Array9RoundDownEPdm'

; Round up (ceil)
public	RoundUp_flt32			as	'Array_RoundUp_flt32'
public	RoundUp_flt64			as	'Array_RoundUp_flt64'
public	RoundUp_flt32			as	'_ZN5Array7RoundUpEPfm'
public	RoundUp_flt64			as	'_ZN5Array7RoundUpEPdm'

; Round to nearest integer
public	RoundInt_flt32			as	'Array_RoundInt_flt32'
public	RoundInt_flt64			as	'Array_RoundInt_flt64'
public	RoundInt_flt32			as	'_ZN5Array8RoundIntEPfm'
public	RoundInt_flt64			as	'_ZN5Array8RoundIntEPdm'

; Round to nearest integer, toward zero (truncation)
public	RoundTrunc_flt32		as	'Array_Truncate_flt32'
public	RoundTrunc_flt64		as	'Array_Truncate_flt64'
public	RoundTrunc_flt32		as	'_ZN5Array8TruncateEPfm'
public	RoundTrunc_flt64		as	'_ZN5Array8TruncateEPdm'

; Fractional part
public	RoundFrac_flt32			as	'Array_Frac_flt32'
public	RoundFrac_flt64			as	'Array_Frac_flt64'
public	RoundFrac_flt32			as	'_ZN5Array4FracEPfm'
public	RoundFrac_flt64			as	'_ZN5Array4FracEPdm'

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for infinite values                                              ;
;==============================================================================;
public	HasINF_flt32			as	'Array_HasInf_flt32'
public	HasINF_flt64			as	'Array_HasInf_flt64'
public	HasINF_flt32			as	'_ZN5Array6HasInfEPKfm'
public	HasINF_flt64			as	'_ZN5Array6HasInfEPKdm'

;==============================================================================;
;       Check for NaN values                                                   ;
;==============================================================================;
public	HasNAN_flt32			as	'Array_HasNaN_flt32'
public	HasNAN_flt64			as	'Array_HasNaN_flt64'
public	HasNAN_flt32			as	'_ZN5Array6HasNaNEPKfm'
public	HasNAN_flt64			as	'_ZN5Array6HasNaNEPKdm'

;==============================================================================;
;       Check for overlap                                                      ;
;==============================================================================;

; Unsigned integer types
public	Overlap8				as	'Array_Overlap_uint8'
public	Overlap16				as	'Array_Overlap_uint16'
public	Overlap32				as	'Array_Overlap_uint32'
public	Overlap64				as	'Array_Overlap_uint64'
public	Overlap8				as	'_ZN5Array7OverlapEPKhmS1_m'
public	Overlap16				as	'_ZN5Array7OverlapEPKtmS1_m'
public	Overlap32				as	'_ZN5Array7OverlapEPKjmS1_m'
public	Overlap64				as	'_ZN5Array7OverlapEPKymS1_m'

; Signed integer types
public	Overlap8				as	'Array_Overlap_sint8'
public	Overlap16				as	'Array_Overlap_sint16'
public	Overlap32				as	'Array_Overlap_sint32'
public	Overlap64				as	'Array_Overlap_sint64'
public	Overlap8				as	'_ZN5Array7OverlapEPKamS1_m'
public	Overlap16				as	'_ZN5Array7OverlapEPKsmS1_m'
public	Overlap32				as	'_ZN5Array7OverlapEPKimS1_m'
public	Overlap64				as	'_ZN5Array7OverlapEPKxmS1_m'

; Floating-point types
public	Overlap32				as	'Array_Overlap_flt32'
public	Overlap64				as	'Array_Overlap_flt64'
public	Overlap32				as	'_ZN5Array7OverlapEPKfmS1_m'
public	Overlap64				as	'_ZN5Array7OverlapEPKdmS1_m'

; Other types
public	Overlap64				as	'Array_Overlap_size'
public	Overlap64				as	'_ZN5Array7OverlapEPKmmS1_m'

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Linear search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	FindFwd8				as	'Array_FindFwd_uint8'
public	FindFwd16				as	'Array_FindFwd_uint16'
public	FindFwd32				as	'Array_FindFwd_uint32'
public	FindFwd64				as	'Array_FindFwd_uint64'
public	FindFwd8				as	'_ZN5Array7FindFwdEPKhmh'
public	FindFwd16				as	'_ZN5Array7FindFwdEPKtmt'
public	FindFwd32				as	'_ZN5Array7FindFwdEPKjmj'
public	FindFwd64				as	'_ZN5Array7FindFwdEPKymy'

; Signed integer types
public	FindFwd8				as	'Array_FindFwd_sint8'
public	FindFwd16				as	'Array_FindFwd_sint16'
public	FindFwd32				as	'Array_FindFwd_sint32'
public	FindFwd64				as	'Array_FindFwd_sint64'
public	FindFwd8				as	'_ZN5Array7FindFwdEPKama'
public	FindFwd16				as	'_ZN5Array7FindFwdEPKsms'
public	FindFwd32				as	'_ZN5Array7FindFwdEPKimi'
public	FindFwd64				as	'_ZN5Array7FindFwdEPKxmx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	FindBwd8				as	'Array_FindBwd_uint8'
public	FindBwd16				as	'Array_FindBwd_uint16'
public	FindBwd32				as	'Array_FindBwd_uint32'
public	FindBwd64				as	'Array_FindBwd_uint64'
public	FindBwd8				as	'_ZN5Array7FindBwdEPKhmh'
public	FindBwd16				as	'_ZN5Array7FindBwdEPKtmt'
public	FindBwd32				as	'_ZN5Array7FindBwdEPKjmj'
public	FindBwd64				as	'_ZN5Array7FindBwdEPKymy'

; Signed integer types
public	FindBwd8				as	'Array_FindBwd_sint8'
public	FindBwd16				as	'Array_FindBwd_sint16'
public	FindBwd32				as	'Array_FindBwd_sint32'
public	FindBwd64				as	'Array_FindBwd_sint64'
public	FindBwd8				as	'_ZN5Array7FindBwdEPKama'
public	FindBwd16				as	'_ZN5Array7FindBwdEPKsms'
public	FindBwd32				as	'_ZN5Array7FindBwdEPKimi'
public	FindBwd64				as	'_ZN5Array7FindBwdEPKxmx'

;==============================================================================;
;       Binary search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Array searching                                                        ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending order sorted array                                           ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindAsc_uint8			as	'Array_FindAsc_uint8'
public	FindAsc_uint16			as	'Array_FindAsc_uint16'
public	FindAsc_uint32			as	'Array_FindAsc_uint32'
public	FindAsc_uint64			as	'Array_FindAsc_uint64'
public	FindAsc_uint8			as	'_ZN5Array7FindAscEPKhmh'
public	FindAsc_uint16			as	'_ZN5Array7FindAscEPKtmt'
public	FindAsc_uint32			as	'_ZN5Array7FindAscEPKjmj'
public	FindAsc_uint64			as	'_ZN5Array7FindAscEPKymy'

; Signed integer types
public	FindAsc_sint8			as	'Array_FindAsc_sint8'
public	FindAsc_sint16			as	'Array_FindAsc_sint16'
public	FindAsc_sint32			as	'Array_FindAsc_sint32'
public	FindAsc_sint64			as	'Array_FindAsc_sint64'
public	FindAsc_sint8			as	'_ZN5Array7FindAscEPKama'
public	FindAsc_sint16			as	'_ZN5Array7FindAscEPKsms'
public	FindAsc_sint32			as	'_ZN5Array7FindAscEPKimi'
public	FindAsc_sint64			as	'_ZN5Array7FindAscEPKxmx'

;------------------------------------------------------------------------------;
;       Descending order sorted array                                          ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindDsc_uint8			as	'Array_FindDsc_uint8'
public	FindDsc_uint16			as	'Array_FindDsc_uint16'
public	FindDsc_uint32			as	'Array_FindDsc_uint32'
public	FindDsc_uint64			as	'Array_FindDsc_uint64'
public	FindDsc_uint8			as	'_ZN5Array7FindDscEPKhmh'
public	FindDsc_uint16			as	'_ZN5Array7FindDscEPKtmt'
public	FindDsc_uint32			as	'_ZN5Array7FindDscEPKjmj'
public	FindDsc_uint64			as	'_ZN5Array7FindDscEPKymy'

; Signed integer types
public	FindDsc_sint8			as	'Array_FindDsc_sint8'
public	FindDsc_sint16			as	'Array_FindDsc_sint16'
public	FindDsc_sint32			as	'Array_FindDsc_sint32'
public	FindDsc_sint64			as	'Array_FindDsc_sint64'
public	FindDsc_sint8			as	'_ZN5Array7FindDscEPKama'
public	FindDsc_sint16			as	'_ZN5Array7FindDscEPKsms'
public	FindDsc_sint32			as	'_ZN5Array7FindDscEPKimi'
public	FindDsc_sint64			as	'_ZN5Array7FindDscEPKxmx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Key searching                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending order sorted array                                           ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindAscKey_uint8		as	'Array_FindAsc_uint8key'
public	FindAscKey_uint16		as	'Array_FindAsc_uint16key'
public	FindAscKey_uint32		as	'Array_FindAsc_uint32key'
public	FindAscKey_uint64		as	'Array_FindAsc_uint64key'
public	FindAscKey_uint8		as	'_ZN5Array7FindAscEPK9uint8_keymh'
public	FindAscKey_uint16		as	'_ZN5Array7FindAscEPK10uint16_keymt'
public	FindAscKey_uint32		as	'_ZN5Array7FindAscEPK10uint32_keymj'
public	FindAscKey_uint64		as	'_ZN5Array7FindAscEPK10uint64_keymy'

; Signed integer types
public	FindAscKey_sint8		as	'Array_FindAsc_sint8key'
public	FindAscKey_sint16		as	'Array_FindAsc_sint16key'
public	FindAscKey_sint32		as	'Array_FindAsc_sint32key'
public	FindAscKey_sint64		as	'Array_FindAsc_sint64key'
public	FindAscKey_uint8		as	'_ZN5Array7FindAscEPK9uint8_keyma'
public	FindAscKey_uint16		as	'_ZN5Array7FindAscEPK10uint16_keyms'
public	FindAscKey_uint32		as	'_ZN5Array7FindAscEPK10uint32_keymi'
public	FindAscKey_uint64		as	'_ZN5Array7FindAscEPK10uint64_keymx'

;------------------------------------------------------------------------------;
;       Descending order sorted array                                          ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	FindDscKey_uint8		as	'Array_FindDsc_uint8key'
public	FindDscKey_uint16		as	'Array_FindDsc_uint16key'
public	FindDscKey_uint32		as	'Array_FindDsc_uint32key'
public	FindDscKey_uint64		as	'Array_FindDsc_uint64key'
public	FindDscKey_uint8		as	'_ZN5Array7FindDscEPK9uint8_keymh'
public	FindDscKey_uint16		as	'_ZN5Array7FindDscEPK10uint16_keymt'
public	FindDscKey_uint32		as	'_ZN5Array7FindDscEPK10uint32_keymj'
public	FindDscKey_uint64		as	'_ZN5Array7FindDscEPK10uint64_keymy'

; Signed integer types
public	FindDscKey_sint8		as	'Array_FindDsc_sint8key'
public	FindDscKey_sint16		as	'Array_FindDsc_sint16key'
public	FindDscKey_sint32		as	'Array_FindDsc_sint32key'
public	FindDscKey_sint64		as	'Array_FindDsc_sint64key'
public	FindDscKey_uint8		as	'_ZN5Array7FindDscEPK9uint8_keyma'
public	FindDscKey_uint16		as	'_ZN5Array7FindDscEPK10uint16_keyms'
public	FindDscKey_uint32		as	'_ZN5Array7FindDscEPK10uint32_keymi'
public	FindDscKey_uint64		as	'_ZN5Array7FindDscEPK10uint64_keymx'

;******************************************************************************;
;       Value replacement                                                      ;
;******************************************************************************;

; Unsigned integer types
public	Replace8				as	'Array_Replace_uint8'
public	Replace16				as	'Array_Replace_uint16'
public	Replace32				as	'Array_Replace_uint32'
public	Replace64				as	'Array_Replace_uint64'
public	Replace8				as	'_ZN5Array7ReplaceEPhmhh'
public	Replace16				as	'_ZN5Array7ReplaceEPtmtt'
public	Replace32				as	'_ZN5Array7ReplaceEPjmjj'
public	Replace64				as	'_ZN5Array7ReplaceEPymyy'

; Signed integer types
public	Replace8				as	'Array_Replace_sint8'
public	Replace16				as	'Array_Replace_sint16'
public	Replace32				as	'Array_Replace_sint32'
public	Replace64				as	'Array_Replace_sint64'
public	Replace8				as	'_ZN5Array7ReplaceEPamaa'
public	Replace16				as	'_ZN5Array7ReplaceEPsmss'
public	Replace32				as	'_ZN5Array7ReplaceEPimii'
public	Replace64				as	'_ZN5Array7ReplaceEPxmxx'

;******************************************************************************;
;       Sorting algorithms                                                     ;
;******************************************************************************;

;==============================================================================;
;       Mapping functions                                                      ;
;==============================================================================;
public	Map_flt32				as	'_Map_flt32'
public	Map_flt64				as	'_Map_flt64'

;==============================================================================;
;       Quick sort                                                             ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Array sorting                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	QuickSortAsc_uint8		as	'Array_QuickSortAsc_uint8'
public	QuickSortAsc_uint16		as	'Array_QuickSortAsc_uint16'
public	QuickSortAsc_uint32		as	'Array_QuickSortAsc_uint32'
public	QuickSortAsc_uint64		as	'Array_QuickSortAsc_uint64'
public	QuickSortAsc_uint8		as	'_ZN5Array12QuickSortAscEPhm'
public	QuickSortAsc_uint16		as	'_ZN5Array12QuickSortAscEPtm'
public	QuickSortAsc_uint32		as	'_ZN5Array12QuickSortAscEPjm'
public	QuickSortAsc_uint64		as	'_ZN5Array12QuickSortAscEPym'

; Signed integer types
public	QuickSortAsc_sint8		as	'Array_QuickSortAsc_sint8'
public	QuickSortAsc_sint16		as	'Array_QuickSortAsc_sint16'
public	QuickSortAsc_sint32		as	'Array_QuickSortAsc_sint32'
public	QuickSortAsc_sint64		as	'Array_QuickSortAsc_sint64'
public	QuickSortAsc_sint8		as	'_ZN5Array12QuickSortAscEPam'
public	QuickSortAsc_sint16		as	'_ZN5Array12QuickSortAscEPsm'
public	QuickSortAsc_sint32		as	'_ZN5Array12QuickSortAscEPim'
public	QuickSortAsc_sint64		as	'_ZN5Array12QuickSortAscEPxm'

; Floating-point types
public	QuickSortAsc_flt32		as	'Array_QuickSortAsc_flt32'
public	QuickSortAsc_flt64		as	'Array_QuickSortAsc_flt64'
public	QuickSortAsc_flt32		as	'_ZN5Array12QuickSortAscEPfm'
public	QuickSortAsc_flt64		as	'_ZN5Array12QuickSortAscEPdm'

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	QuickSortDsc_uint8		as	'Array_QuickSortDsc_uint8'
public	QuickSortDsc_uint16		as	'Array_QuickSortDsc_uint16'
public	QuickSortDsc_uint32		as	'Array_QuickSortDsc_uint32'
public	QuickSortDsc_uint64		as	'Array_QuickSortDsc_uint64'
public	QuickSortDsc_uint8		as	'_ZN5Array12QuickSortDscEPhm'
public	QuickSortDsc_uint16		as	'_ZN5Array12QuickSortDscEPtm'
public	QuickSortDsc_uint32		as	'_ZN5Array12QuickSortDscEPjm'
public	QuickSortDsc_uint64		as	'_ZN5Array12QuickSortDscEPym'

; Signed integer types
public	QuickSortDsc_sint8		as	'Array_QuickSortDsc_sint8'
public	QuickSortDsc_sint16		as	'Array_QuickSortDsc_sint16'
public	QuickSortDsc_sint32		as	'Array_QuickSortDsc_sint32'
public	QuickSortDsc_sint64		as	'Array_QuickSortDsc_sint64'
public	QuickSortDsc_sint8		as	'_ZN5Array12QuickSortDscEPam'
public	QuickSortDsc_sint16		as	'_ZN5Array12QuickSortDscEPsm'
public	QuickSortDsc_sint32		as	'_ZN5Array12QuickSortDscEPim'
public	QuickSortDsc_sint64		as	'_ZN5Array12QuickSortDscEPxm'

; Floating-point types
public	QuickSortDsc_flt32		as	'Array_QuickSortDsc_flt32'
public	QuickSortDsc_flt64		as	'Array_QuickSortDsc_flt64'
public	QuickSortDsc_flt32		as	'_ZN5Array12QuickSortDscEPfm'
public	QuickSortDsc_flt64		as	'_ZN5Array12QuickSortDscEPdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Key sorting                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	QuickSortAscKey_uint8	as	'Array_QuickSortAsc_uint8key'
public	QuickSortAscKey_uint16	as	'Array_QuickSortAsc_uint16key'
public	QuickSortAscKey_uint32	as	'Array_QuickSortAsc_uint32key'
public	QuickSortAscKey_uint64	as	'Array_QuickSortAsc_uint64key'
public	QuickSortAscKey_uint8	as	'_ZN5Array12QuickSortAscEP9uint8_keym'
public	QuickSortAscKey_uint16	as	'_ZN5Array12QuickSortAscEP10uint16_keym'
public	QuickSortAscKey_uint32	as	'_ZN5Array12QuickSortAscEP10uint32_keym'
public	QuickSortAscKey_uint64	as	'_ZN5Array12QuickSortAscEP10uint64_keym'

; Signed integer types
public	QuickSortAscKey_sint8	as	'Array_QuickSortAsc_sint8key'
public	QuickSortAscKey_sint16	as	'Array_QuickSortAsc_sint16key'
public	QuickSortAscKey_sint32	as	'Array_QuickSortAsc_sint32key'
public	QuickSortAscKey_sint64	as	'Array_QuickSortAsc_sint64key'
public	QuickSortAscKey_sint8	as	'_ZN5Array12QuickSortAscEP9sint8_keym'
public	QuickSortAscKey_sint16	as	'_ZN5Array12QuickSortAscEP10sint16_keym'
public	QuickSortAscKey_sint32	as	'_ZN5Array12QuickSortAscEP10sint32_keym'
public	QuickSortAscKey_sint64	as	'_ZN5Array12QuickSortAscEP10sint64_keym'

; Floating-point types
public	QuickSortAscKey_flt32	as	'Array_QuickSortAsc_flt32key'
public	QuickSortAscKey_flt64	as	'Array_QuickSortAsc_flt64key'
public	QuickSortAscKey_flt32	as	'_ZN5Array12QuickSortAscEP9flt32_keym'
public	QuickSortAscKey_flt64	as	'_ZN5Array12QuickSortAscEP9flt64_keym'

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	QuickSortDscKey_uint8	as	'Array_QuickSortDsc_uint8key'
public	QuickSortDscKey_uint16	as	'Array_QuickSortDsc_uint16key'
public	QuickSortDscKey_uint32	as	'Array_QuickSortDsc_uint32key'
public	QuickSortDscKey_uint64	as	'Array_QuickSortDsc_uint64key'
public	QuickSortDscKey_uint8	as	'_ZN5Array12QuickSortDscEP9uint8_keym'
public	QuickSortDscKey_uint16	as	'_ZN5Array12QuickSortDscEP10uint16_keym'
public	QuickSortDscKey_uint32	as	'_ZN5Array12QuickSortDscEP10uint32_keym'
public	QuickSortDscKey_uint64	as	'_ZN5Array12QuickSortDscEP10uint64_keym'

; Signed integer types
public	QuickSortDscKey_sint8	as	'Array_QuickSortDsc_sint8key'
public	QuickSortDscKey_sint16	as	'Array_QuickSortDsc_sint16key'
public	QuickSortDscKey_sint32	as	'Array_QuickSortDsc_sint32key'
public	QuickSortDscKey_sint64	as	'Array_QuickSortDsc_sint64key'
public	QuickSortDscKey_sint8	as	'_ZN5Array12QuickSortDscEP9sint8_keym'
public	QuickSortDscKey_sint16	as	'_ZN5Array12QuickSortDscEP10sint16_keym'
public	QuickSortDscKey_sint32	as	'_ZN5Array12QuickSortDscEP10sint32_keym'
public	QuickSortDscKey_sint64	as	'_ZN5Array12QuickSortDscEP10sint64_keym'

; Floating-point types
public	QuickSortDscKey_flt32	as	'Array_QuickSortDsc_flt32key'
public	QuickSortDscKey_flt64	as	'Array_QuickSortDsc_flt64key'
public	QuickSortDscKey_flt32	as	'_ZN5Array12QuickSortDscEP9flt32_keym'
public	QuickSortDscKey_flt64	as	'_ZN5Array12QuickSortDscEP9flt64_keym'

;==============================================================================;
;       Radix sort                                                             ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Array sorting                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	RadixSortAsc_uint8		as	'Array_RadixSortAsc_uint8'
public	RadixSortAsc_uint16		as	'Array_RadixSortAsc_uint16'
public	RadixSortAsc_uint32		as	'Array_RadixSortAsc_uint32'
public	RadixSortAsc_uint64		as	'Array_RadixSortAsc_uint64'
public	RadixSortAsc_uint8		as	'_ZN5Array12RadixSortAscEPhS0_m'
public	RadixSortAsc_uint16		as	'_ZN5Array12RadixSortAscEPtS0_m'
public	RadixSortAsc_uint32		as	'_ZN5Array12RadixSortAscEPjS0_m'
public	RadixSortAsc_uint64		as	'_ZN5Array12RadixSortAscEPyS0_m'

; Signed integer types
public	RadixSortAsc_sint8		as	'Array_RadixSortAsc_sint8'
public	RadixSortAsc_sint16		as	'Array_RadixSortAsc_sint16'
public	RadixSortAsc_sint32		as	'Array_RadixSortAsc_sint32'
public	RadixSortAsc_sint64		as	'Array_RadixSortAsc_sint64'
public	RadixSortAsc_sint8		as	'_ZN5Array12RadixSortAscEPaS0_m'
public	RadixSortAsc_sint16		as	'_ZN5Array12RadixSortAscEPsS0_m'
public	RadixSortAsc_sint32		as	'_ZN5Array12RadixSortAscEPiS0_m'
public	RadixSortAsc_sint64		as	'_ZN5Array12RadixSortAscEPxS0_m'

; Floating-point types
public	RadixSortAsc_flt32		as	'Array_RadixSortAsc_flt32'
public	RadixSortAsc_flt64		as	'Array_RadixSortAsc_flt64'
public	RadixSortAsc_flt32		as	'_ZN5Array12RadixSortAscEPfS0_m'
public	RadixSortAsc_flt64		as	'_ZN5Array12RadixSortAscEPdS0_m'

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	RadixSortDsc_uint8		as	'Array_RadixSortDsc_uint8'
public	RadixSortDsc_uint16		as	'Array_RadixSortDsc_uint16'
public	RadixSortDsc_uint32		as	'Array_RadixSortDsc_uint32'
public	RadixSortDsc_uint64		as	'Array_RadixSortDsc_uint64'
public	RadixSortDsc_uint8		as	'_ZN5Array12RadixSortDscEPhS0_m'
public	RadixSortDsc_uint16		as	'_ZN5Array12RadixSortDscEPtS0_m'
public	RadixSortDsc_uint32		as	'_ZN5Array12RadixSortDscEPjS0_m'
public	RadixSortDsc_uint64		as	'_ZN5Array12RadixSortDscEPyS0_m'

; Signed integer types
public	RadixSortDsc_sint8		as	'Array_RadixSortDsc_sint8'
public	RadixSortDsc_sint16		as	'Array_RadixSortDsc_sint16'
public	RadixSortDsc_sint32		as	'Array_RadixSortDsc_sint32'
public	RadixSortDsc_sint64		as	'Array_RadixSortDsc_sint64'
public	RadixSortDsc_sint8		as	'_ZN5Array12RadixSortDscEPaS0_m'
public	RadixSortDsc_sint16		as	'_ZN5Array12RadixSortDscEPsS0_m'
public	RadixSortDsc_sint32		as	'_ZN5Array12RadixSortDscEPiS0_m'
public	RadixSortDsc_sint64		as	'_ZN5Array12RadixSortDscEPxS0_m'

; Floating-point types
public	RadixSortDsc_flt32		as	'Array_RadixSortDsc_flt32'
public	RadixSortDsc_flt64		as	'Array_RadixSortDsc_flt64'
public	RadixSortDsc_flt32		as	'_ZN5Array12RadixSortDscEPfS0_m'
public	RadixSortDsc_flt64		as	'_ZN5Array12RadixSortDscEPdS0_m'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Key sorting                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	RadixSortAscKey_uint8	as	'Array_RadixSortAsc_uint8key'
public	RadixSortAscKey_uint16	as	'Array_RadixSortAsc_uint16key'
public	RadixSortAscKey_uint32	as	'Array_RadixSortAsc_uint32key'
public	RadixSortAscKey_uint64	as	'Array_RadixSortAsc_uint64key'
public	RadixSortAscKey_uint8	as	'_ZN5Array12RadixSortAscEP9uint8_keyS1_m'
public	RadixSortAscKey_uint16	as	'_ZN5Array12RadixSortAscEP10uint16_keyS1_m'
public	RadixSortAscKey_uint32	as	'_ZN5Array12RadixSortAscEP10uint32_keyS1_m'
public	RadixSortAscKey_uint64	as	'_ZN5Array12RadixSortAscEP10uint64_keyS1_m'

; Signed integer types
public	RadixSortAscKey_sint8	as	'Array_RadixSortAsc_sint8key'
public	RadixSortAscKey_sint16	as	'Array_RadixSortAsc_sint16key'
public	RadixSortAscKey_sint32	as	'Array_RadixSortAsc_sint32key'
public	RadixSortAscKey_sint64	as	'Array_RadixSortAsc_sint64key'
public	RadixSortAscKey_sint8	as	'_ZN5Array12RadixSortAscEP9sint8_keyS1_m'
public	RadixSortAscKey_sint16	as	'_ZN5Array12RadixSortAscEP10sint16_keyS1_m'
public	RadixSortAscKey_sint32	as	'_ZN5Array12RadixSortAscEP10sint32_keyS1_m'
public	RadixSortAscKey_sint64	as	'_ZN5Array12RadixSortAscEP10sint64_keyS1_m'

; Floating-point types
public	RadixSortAscKey_flt32	as	'Array_RadixSortAsc_flt32key'
public	RadixSortAscKey_flt64	as	'Array_RadixSortAsc_flt64key'
public	RadixSortAscKey_flt32	as	'_ZN5Array12RadixSortAscEP9flt32_keyS1_m'
public	RadixSortAscKey_flt64	as	'_ZN5Array12RadixSortAscEP9flt64_keyS1_m'

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	RadixSortDscKey_uint8	as	'Array_RadixSortDsc_uint8key'
public	RadixSortDscKey_uint16	as	'Array_RadixSortDsc_uint16key'
public	RadixSortDscKey_uint32	as	'Array_RadixSortDsc_uint32key'
public	RadixSortDscKey_uint64	as	'Array_RadixSortDsc_uint64key'
public	RadixSortDscKey_uint8	as	'_ZN5Array12RadixSortDscEP9uint8_keyS1_m'
public	RadixSortDscKey_uint16	as	'_ZN5Array12RadixSortDscEP10uint16_keyS1_m'
public	RadixSortDscKey_uint32	as	'_ZN5Array12RadixSortDscEP10uint32_keyS1_m'
public	RadixSortDscKey_uint64	as	'_ZN5Array12RadixSortDscEP10uint64_keyS1_m'

; Signed integer types
public	RadixSortDscKey_sint8	as	'Array_RadixSortDsc_sint8key'
public	RadixSortDscKey_sint16	as	'Array_RadixSortDsc_sint16key'
public	RadixSortDscKey_sint32	as	'Array_RadixSortDsc_sint32key'
public	RadixSortDscKey_sint64	as	'Array_RadixSortDsc_sint64key'
public	RadixSortDscKey_sint8	as	'_ZN5Array12RadixSortDscEP9sint8_keyS1_m'
public	RadixSortDscKey_sint16	as	'_ZN5Array12RadixSortDscEP10sint16_keyS1_m'
public	RadixSortDscKey_sint32	as	'_ZN5Array12RadixSortDscEP10sint32_keyS1_m'
public	RadixSortDscKey_sint64	as	'_ZN5Array12RadixSortDscEP10sint64_keyS1_m'

; Floating-point types
public	RadixSortDscKey_flt32	as	'Array_RadixSortDsc_flt32key'
public	RadixSortDscKey_flt64	as	'Array_RadixSortDsc_flt64key'
public	RadixSortDscKey_flt32	as	'_ZN5Array12RadixSortDscEP9flt32_keyS1_m'
public	RadixSortDscKey_flt64	as	'_ZN5Array12RadixSortDscEP9flt64_keyS1_m'

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;

; Unsigned integer types
public	Unique8					as	'Array_Unique_uint8'
public	Unique16				as	'Array_Unique_uint16'
public	Unique32				as	'Array_Unique_uint32'
public	Unique64				as	'Array_Unique_uint64'
public	Unique8					as	'_ZN5Array6UniqueEPhm'
public	Unique16				as	'_ZN5Array6UniqueEPtm'
public	Unique32				as	'_ZN5Array6UniqueEPjm'
public	Unique64				as	'_ZN5Array6UniqueEPym'

; Signed integer types
public	Unique8					as	'Array_Unique_sint8'
public	Unique16				as	'Array_Unique_sint16'
public	Unique32				as	'Array_Unique_sint32'
public	Unique64				as	'Array_Unique_sint64'
public	Unique8					as	'_ZN5Array6UniqueEPam'
public	Unique16				as	'_ZN5Array6UniqueEPsm'
public	Unique32				as	'_ZN5Array6UniqueEPim'
public	Unique64				as	'_ZN5Array6UniqueEPxm'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
CACHE_SIZE	= 2097152						; Cache size
PSTEP		= 512							; Prefetch step
NOT_FOUND	= -1							; Pattern is not found

; flt32_t
DMASK_FLT32	= 0x7FFFFFFF					; data mask and NaN value
SMASK_FLT32	= 0x80000000					; sign mask
PINF_FLT32	= 0x7F800000					; +inf
MINF_FLT32	= 0xFF800000					; -inf
MAGIC_FLT32	= 0x4B400000					; magic number for flt32_t to int conversion

; flt64_t
DMASK_FLT64	= 0x7FFFFFFFFFFFFFFF			; data mask and NaN value
SMASK_FLT64	= 0x8000000000000000			; sign mask
PINF_FLT64	= 0x7FF0000000000000			; +inf
MINF_FLT64	= 0xFFF0000000000000			; -inf
MAGIC_FLT64	= 0x4338000000000000			; magic number for flt64_t to int conversion

;******************************************************************************;
;       Clone value through the entire register                                ;
;******************************************************************************;
macro	clone	reg, scale
{
if scale = 0
	punpcklbw	reg, reg
	punpcklbw	reg, reg
	punpcklbw	reg, reg
	punpcklbw	reg, reg
else if scale = 1
	punpcklwd	reg, reg
	punpcklwd	reg, reg
	punpcklwd	reg, reg
else if scale = 2
	punpckldq	reg, reg
	punpckldq	reg, reg
else if scale = 3
	punpcklqdq	reg, reg
end if
}

;******************************************************************************;
;       Scalar sum of values inside the entire register                        ;
;******************************************************************************;
macro	summa	reg, x
{
if x eq s
		haddp#x	reg, reg
		haddp#x	reg, reg
else
		haddp#x	reg, reg
end if
}

;******************************************************************************;
;       Init XMM register with const                                           ;
;******************************************************************************;
macro	initreg	reg, treg, value, bytes
{
		mov		treg, value
if bytes = 4
		movd	reg, treg
else
		movq	reg, treg
end if
}

;******************************************************************************;
;       Order reversing                                                        ;
;******************************************************************************;
macro	REVERSE	temp1, temp2, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ 	rax							; pointer to last element of array
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		lea		ptr, [array + size * bytes]	; ptr = array + size
		shr		size, 1						; size >>= 1
		jz		.exit						; if (size == 0), then go to exit
;---[Swap loop]----------------------------
@@:		sub		ptr, bytes					; ptr--
		mov		temp1, [array]				; temp1 = array[0]
		mov		temp2, [ptr]				; temp2 = ptr[0]
		xchg	temp1, temp2				; exchange temp1 and temp2
		mov		[array], temp1				; array[0] = temp2
		mov		[ptr], temp2				; ptr[0] = temp1
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
.exit:	ret
}
Reverse8:	REVERSE		cl, dl, 0
Reverse16:	REVERSE		cx, dx, 1
Reverse32:	REVERSE		ecx, edx, 2
Reverse64:	REVERSE		rcx, rdx, 3

;******************************************************************************;
;       Initialization                                                         ;
;******************************************************************************;
macro	INIT_INT	value, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
reg		equ		rdx							; register that holds value
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
vector	equ		xmm0						; vector value to process with
amask	= 16 - 1							; aligning mask
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		movq	vector, reg					; vector = value
		clone	vector, scale				; duplicate value through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	mov		[array], value				; array[0] = value
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movdqa	[array + 0x00], vector		; array[0] = vector
		movdqa	[array + 0x10], vector		; array[16] = vector
		movdqa	[array + 0x20], vector		; array[32] = vector
		movdqa	[array + 0x30], vector		; array[48] = vector
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	mov		[array], value				; array[0] = value
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INIT_FLT	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		xmm0						; value to process with
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
amask	= 16 - 1							; aligning mask
if x eq s
scale	= 2									; scale value
else
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	movs#x	[array], value				; array[0] = value
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movap#x	[array + 0x00], value		; array[0] = value
		movap#x	[array + 0x10], value		; array[16] = value
		movap#x	[array + 0x20], value		; array[32] = value
		movap#x	[array + 0x30], value		; array[48] = value
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	[array], value				; array[0] = value
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}

; Integer types
Init_int8:	INIT_INT	dl, 0
Init_int16:	INIT_INT	dx, 1
Init_int32:	INIT_INT	edx, 2
Init_int64:	INIT_INT	rdx, 3

; Floating-point types
Init_flt32:	INIT_FLT	s
Init_flt64:	INIT_FLT	d

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;
macro	COPY_FWD	scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ 	rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align target
temp	equ		r8							; temporary register
element	equ		al							; register to hold byte element
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
amask	= 16 - 1							; aligning mask
bscale	= 6									; block scale factor
block	= 1 shl bscale						; block size (bytes)
;------------------------------------------
		cmp		target, source				; if (target == source)
		je		.exit						;     then go to exit
	prefetchnta	[source]					; prefetch data
		shl		size, scale					; size <<= scale
		mov		count, target
		neg		count
		and		count, amask				; count = -target & amask
		lea		temp, [count + block]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale				; size = size / block
		and		temp, block - 1				; temp = size % block
		test	count, count				; if (count == 0)
		jz		.vctr						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	mov		element, [source]			; element = source[0]
		mov		[target], element			; target[0] = element
		add		source, 1					; source++
		add		target, 1					; target++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;------------------------------------------
.vctr:	cmp		size, CACHE_SIZE / 2		; if (size > CACHE_SIZE / 2)
		ja		.fast						;     then invoke fast copy cycle
;---[Vector loop]--------------------------
.vloop:	movdqu	temp0, [source + 0x00]		; temp0 = source[0]
		movdqu	temp1, [source + 0x10]		; temp1 = source[16]
		movdqu	temp2, [source + 0x20]		; temp2 = source[32]
		movdqu	temp3, [source + 0x30]		; temp3 = source[48]
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movdqa	[target + 0x00], temp0		; target[0] = temp0
		movdqa	[target + 0x10], temp1		; target[16] = temp1
		movdqa	[target + 0x20], temp2		; target[32] = temp2
		movdqa	[target + 0x30], temp3		; target[48] = temp3
		add		source, block				; source += block
		add		target, block				; target += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	mov		element, [source]			; element = source[0]
		mov		[target], element			; target[0] = element
		add		source, 1					; source++
		add		target, 1					; target++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
;---[Fast copy loop]-----------------------
.fast:	lddqu	temp0, [source + 0x00]		; temp0 = source[0]
		lddqu	temp1, [source + 0x10]		; temp1 = source[16]
		lddqu	temp2, [source + 0x20]		; temp2 = source[32]
		lddqu	temp3, [source + 0x30]		; temp3 = source[48]
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movntdq	[target + 0x00], temp0		; target[0] = temp0
		movntdq	[target + 0x10], temp1		; target[16] = temp1
		movntdq	[target + 0x20], temp2		; target[32] = temp2
		movntdq	[target + 0x30], temp3		; target[48] = temp3
		add		source, block				; source += block
		add		target, block				; target += block
		sub		size, 1						; size--
		jnz		.fast						; do while (size != 0)
;------------------------------------------
		sfence								; serialize memory stores
		mov		size, temp					; size = temp
		jmp		.sclr						; invoke scalar code
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	COPY_BWD	scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ 	rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align target
temp	equ		r8							; temporary register
element	equ		al							; register to hold byte element
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
amask	= 16 - 1							; aligning mask
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
;------------------------------------------
		cmp		target, source				; if (target == source)
		je		.exit						;     then go to exit
		lea		source, [source + size * bytes]
		lea		target, [target + size * bytes]
	prefetchnta	[source - bytes]			; prefetch data
		shl		size, scale					; size <<= scale
		mov		count, target
		and		count, amask				; count = target & amask
		lea		temp, [count + block]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale				; size = size / block
		and		temp, block - 1				; temp = size % block
		test	count, count				; if (count == 0)
		jz		.vctr						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	sub		source, 1					; source--
		sub		target, 1					; target--
		mov		element, [source]			; element = source[0]
		mov		[target], element			; target[0] = element
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;------------------------------------------
.vctr:	cmp		size, CACHE_SIZE / 2		; if (size > CACHE_SIZE / 2)
		ja		.fast						;     then invoke fast copy cycle
;---[Vector loop]--------------------------
.vloop:	sub		source, block				; source -= block
		sub		target, block				; target -= block
		movdqu	temp0, [source + 0x00]		; temp0 = source[0]
		movdqu	temp1, [source + 0x10]		; temp1 = source[16]
		movdqu	temp2, [source + 0x20]		; temp2 = source[32]
		movdqu	temp3, [source + 0x30]		; temp3 = source[48]
	prefetchnta	[source - PSTEP]			; prefetch next portion of data
		movdqa	[target + 0x00], temp0		; target[0] = temp0
		movdqa	[target + 0x10], temp1		; target[16] = temp1
		movdqa	[target + 0x20], temp2		; target[32] = temp2
		movdqa	[target + 0x30], temp3		; target[48] = temp3
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	sub		source, 1					; source--
		sub		target, 1					; target--
		mov		element, [source]			; element = source[0]
		mov		[target], element			; target[0] = element
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
;---[Fast copy loop]-----------------------
.fast:	sub		source, block				; source -= block
		sub		target, block				; target -= block
		lddqu	temp0, [source + 0x00]		; temp0 = source[0]
		lddqu	temp1, [source + 0x10]		; temp1 = source[16]
		lddqu	temp2, [source + 0x20]		; temp2 = source[32]
		lddqu	temp3, [source + 0x30]		; temp3 = source[48]
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movntdq	[target + 0x00], temp0		; target[0] = temp0
		movntdq	[target + 0x10], temp1		; target[16] = temp1
		movntdq	[target + 0x20], temp2		; target[32] = temp2
		movntdq	[target + 0x30], temp3		; target[48] = temp3
		sub		size, 1						; size--
		jnz		.fast						; do while (size != 0)
;------------------------------------------
		sfence								; serialize memory stores
		mov		size, temp					; size = temp
		jmp		.sclr						; invoke scalar code
}

; Copying arrays in forward direction
CopyFwd8:	COPY_FWD	0
CopyFwd16:	COPY_FWD	1
CopyFwd32:	COPY_FWD	2
CopyFwd64:	COPY_FWD	3

; Copying arrays in backward direction
CopyBwd8:	COPY_BWD	0
CopyBwd16:	COPY_BWD	1
CopyBwd32:	COPY_BWD	2
CopyBwd64:	COPY_BWD	3

;******************************************************************************;
;       Moving                                                                 ;
;******************************************************************************;
macro	MOVE	func1, func2
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ 	rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;------------------------------------------
		cmp		target, source				; if (target == source)
		jbe		func1						; if (target <= source), then copy in forward direction
		ja		func2						; if (target > source), then copy in backward direction
}
Move8:	MOVE	CopyFwd8, CopyBwd8
Move16:	MOVE	CopyFwd16, CopyBwd16
Move32:	MOVE	CopyFwd32, CopyBwd32
Move64:	MOVE	CopyFwd64, CopyBwd64

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
ptr		equ 	psize						; pointer to first element after pattern
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	psize, psize				; if (psize == 0)
		jz		.exit						;     then go to exit
		sub		size, psize					; size -= psize
		jbe		.exit						; if (size <= psize), then go to exit
		lea		ptr, [array+psize*bytes]	; ptr = array + psize
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
macro	CONVERT_VECTOR_FLT32_TO_FLT64
{
;---[Loop]---------------------------------
@@:		movlps	temp0, [source + 0x00]		; temp0 = source[0]
	cvtps2pd	temp0, temp0				; convert flt32_t to flt64_t
		movlps	temp1, [source + 0x08]		; temp1 = source[8]
	cvtps2pd	temp1, temp1				; convert flt32_t to flt64_t
		movlps	temp2, [source + 0x10]		; temp2 = source[16]
	cvtps2pd	temp2, temp2				; convert flt32_t to flt64_t
		movlps	temp3, [source + 0x18]		; temp3 = source[24]
	cvtps2pd	temp3, temp3				; convert flt32_t to flt64_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movapd	[target + 0x00], temp0		; target[0] = temp0
		movapd	[target + 0x10], temp1		; target[16] = temp1
		movapd	[target + 0x20], temp2		; target[32] = temp2
		movapd	[target + 0x30], temp3		; target[48] = temp3
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_VECTOR_FLT64_TO_FLT32
{
;---[Loop]---------------------------------
@@:		movupd	temp0, [source + 0x00]		; temp0 = source[0]
	cvtpd2ps	temp0, temp0				; convert flt64_t to flt32_t
		movupd	temp1, [source + 0x10]		; temp1 = source[16]
	cvtpd2ps	temp1, temp1				; convert flt64_t to flt32_t
		movupd	temp2, [source + 0x20]		; temp2 = source[32]
	cvtpd2ps	temp2, temp2				; convert flt64_t to flt32_t
		movupd	temp3, [source + 0x30]		; temp3 = source[48]
	cvtpd2ps	temp3, temp3				; convert flt64_t to flt32_t
		movupd	temp4, [source + 0x40]		; temp4 = source[64]
	cvtpd2ps	temp4, temp4				; convert flt64_t to flt32_t
		movupd	temp5, [source + 0x50]		; temp5 = source[80]
	cvtpd2ps	temp5, temp5				; convert flt64_t to flt32_t
		movupd	temp6, [source + 0x60]		; temp6 = source[96]
	cvtpd2ps	temp6, temp6				; convert flt64_t to flt32_t
		movupd	temp7, [source + 0x70]		; temp7 = source[112]
	cvtpd2ps	temp7, temp7				; convert flt64_t to flt32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movlps	[target + 0x00], temp0		; target[0] = temp0
		movlps	[target + 0x08], temp1		; target[8] = temp1
		movlps	[target + 0x10], temp2		; target[16] = temp2
		movlps	[target + 0x18], temp3		; target[24] = temp3
		movlps	[target + 0x20], temp4		; target[32] = temp4
		movlps	[target + 0x28], temp5		; target[40] = temp5
		movlps	[target + 0x30], temp6		; target[48] = temp6
		movlps	[target + 0x38], temp7		; target[56] = temp7
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_VECTOR_SINT32_TO_FLT32
{
;---[Loop]---------------------------------
@@:		movdqu	temp0, [source + 0x00]		; temp0 = source[0]
	cvtdq2ps	temp0, temp0				; convert sint32_t to flt32_t
		movdqu	temp1, [source + 0x10]		; temp1 = source[16]
	cvtdq2ps	temp1, temp1				; convert sint32_t to flt32_t
		movdqu	temp2, [source + 0x20]		; temp2 = source[32]
	cvtdq2ps	temp2, temp2				; convert sint32_t to flt32_t
		movdqu	temp3, [source + 0x30]		; temp3 = source[48]
	cvtdq2ps	temp3, temp3				; convert sint32_t to flt32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movaps	[target + 0x00], temp0		; target[0] = temp0
		movaps	[target + 0x10], temp1		; target[16] = temp1
		movaps	[target + 0x20], temp2		; target[32] = temp2
		movaps	[target + 0x30], temp3		; target[48] = temp3
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_VECTOR_SINT32_TO_FLT64
{
;---[Loop]---------------------------------
@@:		movq	temp0, [source + 0x00]		; temp0 = source[0]
	cvtdq2pd	temp0, temp0				; convert sint32_t to flt64_t
		movq	temp1, [source + 0x08]		; temp1 = source[8]
	cvtdq2pd	temp1, temp1				; convert sint32_t to flt64_t
		movq	temp2, [source + 0x10]		; temp2 = source[16]
	cvtdq2pd	temp2, temp2				; convert sint32_t to flt64_t
		movq	temp3, [source + 0x18]		; temp3 = source[24]
	cvtdq2pd	temp3, temp3				; convert sint32_t to flt64_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movapd	[target + 0x00], temp0		; target[0] = temp0
		movapd	[target + 0x10], temp1		; target[16] = temp1
		movapd	[target + 0x20], temp2		; target[32] = temp2
		movapd	[target + 0x30], temp3		; target[48] = temp3
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_VECTOR_FLT32_TO_SINT32
{
;---[Loop]---------------------------------
@@:		movups	temp0, [source + 0x00]		; temp0 = source[0]
	cvtps2dq	temp0, temp0				; convert flt32_t to sint32_t
		movups	temp1, [source + 0x10]		; temp1 = source[16]
	cvtps2dq	temp1, temp1				; convert flt32_t to sint32_t
		movups	temp2, [source + 0x20]		; temp2 = source[32]
	cvtps2dq	temp2, temp2				; convert flt32_t to sint32_t
		movups	temp3, [source + 0x30]		; temp3 = source[48]
	cvtps2dq	temp3, temp3				; convert flt32_t to sint32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movdqa	[target + 0x00], temp0		; target[0] = temp0
		movdqa	[target + 0x10], temp1		; target[16] = temp1
		movdqa	[target + 0x20], temp2		; target[32] = temp2
		movdqa	[target + 0x30], temp3		; target[48] = temp3
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_VECTOR_FLT64_TO_SINT32
{
;---[Loop]---------------------------------
@@:		movupd	temp0, [source + 0x00]		; temp0 = source[0]
	cvtpd2dq	temp0, temp0				; convert flt64_t to sint32_t
		movupd	temp1, [source + 0x10]		; temp1 = source[16]
	cvtpd2dq	temp1, temp1				; convert flt64_t to sint32_t
		movupd	temp2, [source + 0x20]		; temp2 = source[32]
	cvtpd2dq	temp2, temp2				; convert flt64_t to sint32_t
		movupd	temp3, [source + 0x30]		; temp3 = source[48]
	cvtpd2dq	temp3, temp3				; convert flt64_t to sint32_t
		movupd	temp4, [source + 0x40]		; temp4 = source[64]
	cvtpd2dq	temp4, temp4				; convert flt64_t to sint32_t
		movupd	temp5, [source + 0x50]		; temp5 = source[80]
	cvtpd2dq	temp5, temp5				; convert flt64_t to sint32_t
		movupd	temp6, [source + 0x60]		; temp6 = source[96]
	cvtpd2dq	temp6, temp6				; convert flt64_t to sint32_t
		movupd	temp7, [source + 0x70]		; temp7 = source[112]
	cvtpd2dq	temp7, temp7				; convert flt64_t to sint32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movq	[target + 0x00], temp0		; target[0] = temp0
		movq	[target + 0x08], temp1		; target[8] = temp1
		movq	[target + 0x10], temp2		; target[16] = temp2
		movq	[target + 0x18], temp3		; target[24] = temp3
		movq	[target + 0x20], temp4		; target[32] = temp4
		movq	[target + 0x28], temp5		; target[40] = temp5
		movq	[target + 0x30], temp6		; target[48] = temp6
		movq	[target + 0x38], temp7		; target[56] = temp7
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRUNCATE_VECTOR_FLT32_TO_SINT32
{
;---[Loop]---------------------------------
@@:		movups	temp0, [source + 0x00]		; temp0 = source[0]
	cvttps2dq	temp0, temp0				; truncate flt32_t to sint32_t
		movups	temp1, [source + 0x10]		; temp1 = source[16]
	cvttps2dq	temp1, temp1				; truncate flt32_t to sint32_t
		movups	temp2, [source + 0x20]		; temp2 = source[32]
	cvttps2dq	temp2, temp2				; truncate flt32_t to sint32_t
		movups	temp3, [source + 0x30]		; temp3 = source[48]
	cvttps2dq	temp3, temp3				; truncate flt32_t to sint32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movdqa	[target + 0x00], temp0		; target[0] = temp0
		movdqa	[target + 0x10], temp1		; target[16] = temp1
		movdqa	[target + 0x20], temp2		; target[32] = temp2
		movdqa	[target + 0x30], temp3		; target[48] = temp3
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRUNCATE_VECTOR_FLT64_TO_SINT32
{
;---[Loop]---------------------------------
@@:		movupd	temp0, [source + 0x00]		; temp0 = source[0]
	cvttpd2dq	temp0, temp0				; truncate flt64_t to sint32_t
		movupd	temp1, [source + 0x10]		; temp1 = source[16]
	cvttpd2dq	temp1, temp1				; truncate flt64_t to sint32_t
		movupd	temp2, [source + 0x20]		; temp2 = source[32]
	cvttpd2dq	temp2, temp2				; truncate flt64_t to sint32_t
		movupd	temp3, [source + 0x30]		; temp3 = source[48]
	cvttpd2dq	temp3, temp3				; truncate flt64_t to sint32_t
		movupd	temp4, [source + 0x40]		; temp4 = source[64]
	cvttpd2dq	temp4, temp4				; truncate flt64_t to sint32_t
		movupd	temp5, [source + 0x50]		; temp5 = source[80]
	cvttpd2dq	temp5, temp5				; truncate flt64_t to sint32_t
		movupd	temp6, [source + 0x60]		; temp6 = source[96]
	cvttpd2dq	temp6, temp6				; truncate flt64_t to sint32_t
		movupd	temp7, [source + 0x70]		; temp7 = source[112]
	cvttpd2dq	temp7, temp7				; truncate flt64_t to sint32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movq	[target + 0x00], temp0		; target[0] = temp0
		movq	[target + 0x08], temp1		; target[8] = temp1
		movq	[target + 0x10], temp2		; target[16] = temp2
		movq	[target + 0x18], temp3		; target[24] = temp3
		movq	[target + 0x20], temp4		; target[32] = temp4
		movq	[target + 0x28], temp5		; target[40] = temp5
		movq	[target + 0x30], temp6		; target[48] = temp6
		movq	[target + 0x38], temp7		; target[56] = temp7
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_FLT32_TO_FLT64	counter
{
;---[Internal variables]-------------------
reg		equ		xmm0						; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtss2sd	reg, [source]				; reg = convert (source[0])
		movsd	[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_FLT64_TO_FLT32	counter
{
;---[Internal variables]-------------------
reg		equ		xmm0						; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtsd2ss	reg, [source]				; reg = convert (source[0])
		movss	[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_SINT32_TO_FLT32	counter
{
;---[Internal variables]-------------------
reg		equ		xmm0						; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtsi2ss	reg, dword [source]			; reg = convert (source[0])
		movss	[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_SINT32_TO_FLT64	counter
{
;---[Internal variables]-------------------
reg		equ		xmm0						; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtsi2sd	reg, dword [source]			; reg = convert (source[0])
		movsd	[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_FLT32_TO_SINT32	counter
{
;---[Internal variables]-------------------
reg		equ		eax							; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtss2si	reg, [source]				; reg = convert (source[0])
		mov		[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_FLT64_TO_SINT32	counter
{
;---[Internal variables]-------------------
reg		equ		eax							; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtsd2si	reg, [source]				; reg = convert (source[0])
		mov		[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRUNCATE_SCALAR_FLT32_TO_SINT32	counter
{
;---[Internal variables]-------------------
reg		equ		eax							; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvttss2si	reg, [source]				; reg = truncate (source[0])
		mov		[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRUNCATE_SCALAR_FLT64_TO_SINT32	counter
{
;---[Internal variables]-------------------
reg		equ		eax							; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvttsd2si	reg, [source]				; reg = truncate (source[0])
		mov		[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT1	vector, scalar, scale1, scale2, bscale1, bscale2
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align target
temp	equ		r8							; temporary register
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
amask	= 16 - 1							; aligning mask
bytes1	= 1 shl scale1						; size of target array element (bytes)
bytes2	= 1 shl scale2						; size of source array element (bytes)
block1	= 1 shl bscale1						; block size of target array (bytes)
block2	= 1 shl bscale2						; block size of source array (bytes)
step	= 1 shl (bscale1 - scale1)			; step size (bytes)
;------------------------------------------
	prefetchnta	[source]					; prefetch data
		test	target, bytes1 - 1			; if (target & (bytes1 - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, target
		neg		count
		and		count, amask
		shr		count, scale1				; count = (-target & amask) >> scale1
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale1 - scale1		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
		scalar	count						; invoke aligning code
;---[Vector loop]--------------------------
.vloop:	vector								; invoke vector code
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
		scalar	size						; invoke scalar code
;------------------------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT2	convert, move, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
temp	equ		xmm0						; temporary register
bytes	= 1 shl scale						; size of target array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Loop]---------------------------------
.loop:	convert	temp, qword [source]		; temp = convert (source[0])
		move	[target], temp				; target[0] = temp
		add		source, 8					; source++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT3	convert, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
bytes	= 1 shl scale						; size of source array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Loop]---------------------------------
.loop:	convert	temp, [source]				; temp = convert (source[0])
		mov		[target], temp				; target[0] = temp
		add		source, bytes				; source++
		add		target, 8					; target++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}

; Conversion between floating-point types
ConvertFlt32ToFlt64:	CONVERT1	CONVERT_VECTOR_FLT32_TO_FLT64, CONVERT_SCALAR_FLT32_TO_FLT64, 3, 2, 6, 5
ConvertFlt64ToFlt32:	CONVERT1	CONVERT_VECTOR_FLT64_TO_FLT32, CONVERT_SCALAR_FLT64_TO_FLT32, 2, 3, 6, 7

; Conversion from signed integer types to floating-point types
ConvertSint32ToFlt32:	CONVERT1	CONVERT_VECTOR_SINT32_TO_FLT32, CONVERT_SCALAR_SINT32_TO_FLT32, 2, 2, 6, 6
ConvertSint32ToFlt64:	CONVERT1	CONVERT_VECTOR_SINT32_TO_FLT64, CONVERT_SCALAR_SINT32_TO_FLT64, 3, 2, 6, 5
ConvertSint64ToFlt32:	CONVERT2	cvtsi2ss, movss, 2
ConvertSint64ToFlt64:	CONVERT2	cvtsi2sd, movsd, 3

; Conversion from floating-point types to signed integer types
ConvertFlt32ToSint32:	CONVERT1	CONVERT_VECTOR_FLT32_TO_SINT32, CONVERT_SCALAR_FLT32_TO_SINT32, 2, 2, 6, 6
ConvertFlt32ToSint64:	CONVERT3	cvtss2si, 2
ConvertFlt64ToSint32:	CONVERT1	CONVERT_VECTOR_FLT64_TO_SINT32, CONVERT_SCALAR_FLT64_TO_SINT32, 2, 3, 6, 7
ConvertFlt64ToSint64:	CONVERT3	cvtsd2si, 3

; Truncating from floating-point types to signed integer types
TruncateFlt32ToSint32:	CONVERT1	TRUNCATE_VECTOR_FLT32_TO_SINT32, TRUNCATE_SCALAR_FLT32_TO_SINT32, 2, 2, 6, 6
TruncateFlt32ToSint64:	CONVERT3	cvttss2si, 2
TruncateFlt64ToSint32:	CONVERT1	TRUNCATE_VECTOR_FLT64_TO_SINT32, TRUNCATE_SCALAR_FLT64_TO_SINT32, 2, 3, 6, 7
TruncateFlt64ToSint64:	CONVERT3	cvttsd2si, 3

;******************************************************************************;
;       Bitwise operations                                                     ;
;******************************************************************************;
macro	BIT_SCALAR	op, value, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
reg		equ		rdx							; register that holds value
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
vector	equ		xmm0						; vector value to process with
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
temp3	equ		xmm4						; temporary register #4
amask	= 16 - 1							; aligning mask
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		movq	vector, reg					; vector = value
		clone	vector, scale				; duplicate value through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	op		[array], value				; do operation between array[0] and value
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movdqa	temp0, [array + 0x00]		; temp0 = array[0]
		p#op	temp0, vector				; do operation to temp0 value
		movdqa	temp1, [array + 0x10]		; temp1 = array[16]
		p#op	temp1, vector				; do operation to temp1 value
		movdqa	temp2, [array + 0x20]		; temp2 = array[32]
		p#op	temp2, vector				; do operation to temp2 value
		movdqa	temp3, [array + 0x30]		; temp3 = array[48]
		p#op	temp3, vector				; do operation to temp3 value
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		movdqa	[array + 0x00], temp0		; array[0] = temp0
		movdqa	[array + 0x10], temp1		; array[16] = temp1
		movdqa	[array + 0x20], temp2		; array[32] = temp2
		movdqa	[array + 0x30], temp3		; array[48] = temp3
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	op		[array], value				; do operation between array[0] and value
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	BIT_VECTOR	op, treg, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align target
temp	equ		r8							; temporary register
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
amask	= 16 - 1							; aligning mask
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[source]					; prefetch data
	prefetchnta	[target]					; prefetch data
		test	target, bytes - 1			; if (target & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, target
		neg		count
		and		count, amask
		shr		count, scale				; count = (-target & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	mov		treg, [source]				; treg = source[0]
		op		[target], treg				; do operation between target[0] and source[0]
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movdqu	temp4, [source + 0x00]		; temp4 = source[0]
		movdqu	temp5, [source + 0x10]		; temp5 = source[16]
		movdqu	temp6, [source + 0x20]		; temp6 = source[32]
		movdqu	temp7, [source + 0x30]		; temp7 = source[48]
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movdqa	temp0, [target + 0x00]		; temp0 = target[0]
		p#op	temp0, temp4				; do operation to temp0 value
		movdqa	temp1, [target + 0x10]		; temp1 = target[16]
		p#op	temp1, temp5				; do operation to temp1 value
		movdqa	temp2, [target + 0x20]		; temp2 = target[32]
		p#op	temp2, temp6				; do operation to temp2 value
		movdqa	temp3, [target + 0x30]		; temp3 = target[48]
		p#op	temp3, temp7				; do operation to temp3 value
	prefetchnta	[target + PSTEP]			; prefetch next portion of data
		movdqa	[target + 0x00], temp0		; target[0] = temp0
		movdqa	[target + 0x10], temp1		; target[16] = temp1
		movdqa	[target + 0x20], temp2		; target[32] = temp2
		movdqa	[target + 0x30], temp3		; target[48] = temp3
		add		source, block				; source += block
		add		target, block				; target += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	mov		treg, [source]				; treg = source[0]
		op		[target], treg				; do operation between target[0] and source[0]
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}

;==============================================================================;
;       Bitwise NOT                                                            ;
;==============================================================================;
macro	NOT	scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
treg	equ		rax							; temporary register to init xmm register
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
mask	equ		xmm4						; bit mask to invert bits
amask	= 16 - 1							; aligning mask
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		initreg	mask, treg, 0xFFFFFFFFFFFFFFFF, 8
	punpcklqdq	mask, mask					; duplicate 111...111 through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:
if scale = 0
		not		byte [array]				; array[0] = ~array[0]
else if scale = 1
		not		word [array]				; array[0] = ~array[0]
else if scale = 2
		not		dword [array]				; array[0] = ~array[0]
else if scale = 3
		not		qword [array]				; array[0] = ~array[0]
end if
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movdqa	temp0, [array + 0x00]		; temp0 = array[0]
		pxor	temp0, mask					; temp0 = ~temp0
		movdqa	temp1, [array + 0x10]		; temp1 = array[16]
		pxor	temp1, mask					; temp1 = ~temp1
		movdqa	temp2, [array + 0x20]		; temp2 = array[32]
		pxor	temp2, mask					; temp2 = ~temp2
		movdqa	temp3, [array + 0x30]		; temp3 = array[48]
		pxor	temp3, mask					; temp3 = ~temp3
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		movdqa	[array + 0x00], temp0		; array[0] = temp0
		movdqa	[array + 0x10], temp1		; array[16] = temp1
		movdqa	[array + 0x20], temp2		; array[32] = temp2
		movdqa	[array + 0x30], temp3		; array[48] = temp3
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:
if scale = 0
		not		byte [array]				; array[0] = ~array[0]
else if scale = 1
		not		word [array]				; array[0] = ~array[0]
else if scale = 2
		not		dword [array]				; array[0] = ~array[0]
else if scale = 3
		not		qword [array]				; array[0] = ~array[0]
end if
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
Not8:	NOT	0
Not16:	NOT	1
Not32:	NOT	2
Not64:	NOT	3

;==============================================================================;
;       Bitwise AND                                                            ;
;==============================================================================;

; Scalar bitwise AND
AndS8:	BIT_SCALAR	and, dl, 0
AndS16:	BIT_SCALAR	and, dx, 1
AndS32:	BIT_SCALAR	and, edx, 2
AndS64:	BIT_SCALAR	and, rdx, 3

; Vector bitwise AND
AndV8:	BIT_VECTOR	and, al, 0
AndV16:	BIT_VECTOR	and, ax, 1
AndV32:	BIT_VECTOR	and, eax, 2
AndV64:	BIT_VECTOR	and, rax, 3

;==============================================================================;
;       Bitwise OR                                                             ;
;==============================================================================;

; Scalar bitwise OR
OrS8:	BIT_SCALAR	or, dl, 0
OrS16:	BIT_SCALAR	or, dx, 1
OrS32:	BIT_SCALAR	or, edx, 2
OrS64:	BIT_SCALAR	or, rdx, 3

; Vector bitwise OR
OrV8:	BIT_VECTOR	or, al, 0
OrV16:	BIT_VECTOR	or, ax, 1
OrV32:	BIT_VECTOR	or, eax, 2
OrV64:	BIT_VECTOR	or, rax, 3

;==============================================================================;
;       Bitwise XOR                                                            ;
;==============================================================================;

; Scalar bitwise XOR
XorS8:	BIT_SCALAR	xor, dl, 0
XorS16:	BIT_SCALAR	xor, dx, 1
XorS32:	BIT_SCALAR	xor, edx, 2
XorS64:	BIT_SCALAR	xor, rdx, 3

; Vector bitwise XOR
XorV8:	BIT_VECTOR	xor, al, 0
XorV16:	BIT_VECTOR	xor, ax, 1
XorV32:	BIT_VECTOR	xor, eax, 2
XorV64:	BIT_VECTOR	xor, rax, 3

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unitary operations                                                     ;
;==============================================================================;
macro	SIGN	func, mask, value
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;------------------------------------------
		mov		mask, value
		jmp		func
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SQR		op, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
amask	= 16 - 1							; aligning mask
if x eq s
scale	= 2									; scale value
else
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	movs#x	temp0, [array]				; temp0 = array[0]
		op#p#x	temp0, temp0				; do operation to temp0 value
		movs#x	[array], temp0				; array[0] = temp0
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movap#x	temp0, [array + 0x00]		; temp0 = array[0]
		op#p#x	temp0, temp0				; do operation to temp0 value
		movap#x	temp1, [array + 0x10]		; temp1 = array[16]
		op#p#x	temp1, temp1				; do operation to temp1 value
		movap#x	temp2, [array + 0x20]		; temp2 = array[32]
		op#p#x	temp2, temp2				; do operation to temp2 value
		movap#x	temp3, [array + 0x30]		; temp3 = array[48]
		op#p#x	temp3, temp3				; do operation to temp3 value
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		movap#x	[array + 0x00], temp0		; array[0] = temp0
		movap#x	[array + 0x10], temp1		; array[16] = temp1
		movap#x	[array + 0x20], temp2		; array[32] = temp2
		movap#x	[array + 0x30], temp3		; array[48] = temp3
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [array]				; temp0 = array[0]
		op#s#x	temp0, temp0				; do operation to temp0 value
		movs#x	[array], temp0				; array[0] = temp0
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}

; Negative value
Neg_flt32:		SIGN	XorS32, edx, SMASK_FLT32
Neg_flt64:		SIGN	XorS64, rdx, SMASK_FLT64

; Absolute value
Abs_flt32:		SIGN	AndS32, edx, DMASK_FLT32
Abs_flt64:		SIGN	AndS64, rdx, DMASK_FLT64

; Square
Sqr_flt32:		SQR		mul, s
Sqr_flt64:		SQR		mul, d

; Square root
Sqrt_flt32:		SQR		sqrt, s
Sqrt_flt64:		SQR		sqrt, d

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;
macro	SCALAR	op, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		xmm0						; value to process with
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
temp3	equ		xmm4						; temporary register #4
amask	= 16 - 1							; aligning mask
if x eq s
scale	= 2									; scale value
else
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		shufp#x	value, value, 0x0			; duplicate value through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	movs#x	temp0, [array]				; temp0 = array[0]
		op#s#x	temp0, value				; do operation to temp0 value
		movs#x	[array], temp0				; array[0] = temp0
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movap#x	temp0, [array + 0x00]		; temp0 = array[0]
		op#p#x	temp0, value				; do operation to temp0 value
		movap#x	temp1, [array + 0x10]		; temp1 = array[16]
		op#p#x	temp1, value				; do operation to temp1 value
		movap#x	temp2, [array + 0x20]		; temp2 = array[32]
		op#p#x	temp2, value				; do operation to temp2 value
		movap#x	temp3, [array + 0x30]		; temp3 = array[48]
		op#p#x	temp3, value				; do operation to temp3 value
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		movap#x	[array + 0x00], temp0		; array[0] = temp0
		movap#x	[array + 0x10], temp1		; array[16] = temp1
		movap#x	[array + 0x20], temp2		; array[32] = temp2
		movap#x	[array + 0x30], temp3		; array[48] = temp3
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [array]				; temp0 = array[0]
		op#s#x	temp0, value				; do operation to temp0 value
		movs#x	[array], temp0				; array[0] = temp0
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	VECTOR	op, x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align target
temp	equ		r8							; temporary register
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
amask	= 16 - 1							; aligning mask
if x eq s
scale	= 2									; scale value
else
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[source]					; prefetch data
	prefetchnta	[target]					; prefetch data
		test	target, bytes - 1			; if (target & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, target
		neg		count
		and		count, amask
		shr		count, scale				; count = (-target & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	movs#x	temp1, [source]				; temp1 = source[0]
		movs#x	temp0, [target]				; temp0 = target[0]
		op#s#x	temp0, temp1				; do operation to temp0 value
		movs#x	[target], temp0				; target[0] = temp0
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movup#x	temp4, [source + 0x00]		; temp4 = source[0]
		movup#x	temp5, [source + 0x10]		; temp5 = source[16]
		movup#x	temp6, [source + 0x20]		; temp6 = source[32]
		movup#x	temp7, [source + 0x30]		; temp7 = source[48]
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movap#x	temp0, [target + 0x00]		; temp0 = target[0]
		op#p#x	temp0, temp4				; do operation to temp0 value
		movap#x	temp1, [target + 0x10]		; temp1 = target[16]
		op#p#x	temp1, temp5				; do operation to temp1 value
		movap#x	temp2, [target + 0x20]		; temp2 = target[32]
		op#p#x	temp2, temp6				; do operation to temp2 value
		movap#x	temp3, [target + 0x30]		; temp3 = target[48]
		op#p#x	temp3, temp7				; do operation to temp3 value
	prefetchnta	[target + PSTEP]			; prefetch next portion of data
		movap#x	[target + 0x00], temp0		; target[0] = temp0
		movap#x	[target + 0x10], temp1		; target[16] = temp1
		movap#x	[target + 0x20], temp2		; target[32] = temp2
		movap#x	[target + 0x30], temp3		; target[48] = temp3
		add		source, block				; source += block
		add		target, block				; target += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp1, [source]				; temp1 = source[0]
		movs#x	temp0, [target]				; temp0 = target[0]
		op#s#x	temp0, temp1				; do operation to temp0 value
		movs#x	[target], temp0				; target[0] = temp0
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Addition                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Scalar addition
AddS_flt32:		SCALAR	add, s
AddS_flt64:		SCALAR	add, d

; Vector addition
AddV_flt32:		VECTOR	add, s
AddV_flt64:		VECTOR	add, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Subtraction                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Scalar subtraction
SubS_flt32:		SCALAR	sub, s
SubS_flt64:		SCALAR	sub, d

; Vector subtraction
SubV_flt32:		VECTOR	sub, s
SubV_flt64:		VECTOR	sub, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Scalar multiplication
MulS_flt32:		SCALAR	mul, s
MulS_flt64:		SCALAR	mul, d

; Vector multiplication
MulV_flt32:		VECTOR	mul, s
MulV_flt64:		VECTOR	mul, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Scalar division
DivS_flt32:		SCALAR	div, s
DivS_flt64:		SCALAR	div, d

; Vector division
DivV_flt32:		VECTOR	div, s
DivV_flt64:		VECTOR	div, d

;******************************************************************************;
;       Numerical integration                                                  ;
;******************************************************************************;
macro	SUM		square, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
sum		equ		xmm0						; result sum
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
temp3	equ		xmm4						; temporary register #4
amask	= 16 - 1							; aligning mask
if x eq s
scale	= 2									; scale value
else
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		xorp#x	sum, sum					; sum = 0
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	movs#x	temp0, [array]				; temp0 = array[0]
if square
		muls#x	temp0, temp0				; temp0 = temp0 ^ 2
end if
		adds#x	sum, temp0					; sum += temp0
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movap#x	temp0, [array + 0x00]		; temp0 = array[0]
if square
		mulp#x	temp0, temp0				; temp0 = temp0 ^ 2
end if
		addp#x	sum, temp0					; sum += temp0
		movap#x	temp1, [array + 0x10]		; temp1 = array[16]
if square
		mulp#x	temp1, temp1				; temp1 = temp1 ^ 2
end if
		addp#x	sum, temp1					; sum += temp1
		movap#x	temp2, [array + 0x20]		; temp2 = array[32]
if square
		mulp#x	temp2, temp2				; temp2 = temp2 ^ 2
end if
		addp#x	sum, temp2					; sum += temp2
		movap#x	temp3, [array + 0x30]		; temp3 = array[48]
if square
		mulp#x	temp3, temp3				; temp3 = temp3 ^ 2
end if
		addp#x	sum, temp3					; sum += temp3
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		summa	sum, x						; get all parallel sums
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [array]				; temp0 = array[0]
if square
		muls#x	temp0, temp0				; temp0 = temp0 ^ 2
end if
		adds#x	sum, temp0					; sum += temp0
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}

;==============================================================================;
;       Sum of elements                                                        ;
;==============================================================================;
Sum_flt32:		SUM		0, s
Sum_flt64:		SUM		0, d

;==============================================================================;
;       Sum of squares                                                         ;
;==============================================================================;
SumSqr_flt32:	SUM		1, s
SumSqr_flt64:	SUM		1, d

;==============================================================================;
;       Sum of multiplied elements                                             ;
;==============================================================================;
macro	SUM_MUL	x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align array1
temp	equ		r8							; temporary register
sum		equ		xmm0						; result sum
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
temp3	equ		xmm4						; temporary register #4
amask	= 16 - 1							; aligning mask
if x eq s
scale	= 2									; scale value
else
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[array2]					; prefetch data
	prefetchnta	[array1]					; prefetch data
		xorp#x	sum, sum					; sum = 0
		test	array1, bytes - 1			; if (array1 & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array1
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array1 & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	movs#x	temp0, [array2]				; temp0 = array2[0]
		muls#x	temp0, [array1]				; temp0 *= array1[0]
		adds#x	sum, temp0					; sum += temp0
		add		array2, bytes				; array2++
		add		array1, bytes				; array1++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movup#x	temp0, [array2 + 0x00]		; temp0 = array2[0]
		movup#x	temp1, [array2 + 0x10]		; temp1 = array2[16]
		movup#x	temp2, [array2 + 0x20]		; temp2 = array2[32]
		movup#x	temp3, [array2 + 0x30]		; temp3 = array2[48]
	prefetchnta	[array2 + PSTEP]			; prefetch next portion of data
		mulp#x	temp0, [array1 + 0x00]		; temp0 *= array1[0]
		addp#x	sum, temp0					; sum += temp0
		mulp#x	temp1, [array1 + 0x10]		; temp1 *= array1[16]
		addp#x	sum, temp1					; sum += temp1
		mulp#x	temp2, [array1 + 0x20]		; temp2 *= array1[32]
		addp#x	sum, temp2					; sum += temp2
		mulp#x	temp3, [array1 + 0x30]		; temp3 *= array1[48]
		addp#x	sum, temp3					; sum += temp3
	prefetchnta	[array1 + PSTEP]			; prefetch next portion of data
		add		array2, block				; array2 += block
		add		array1, block				; array1 += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		summa	sum, x						; get all parallel sums
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [array2]				; temp0 = array2[0]
		muls#x	temp0, [array1]				; temp0 *= array1[0]
		adds#x	sum, temp0					; sum += temp0
		add		array2, bytes				; array2++
		add		array1, bytes				; array1++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
SumMul_flt32:	SUM_MUL	s
SumMul_flt64:	SUM_MUL	d

;******************************************************************************;
;       Minimum and maximum values                                             ;
;******************************************************************************;
macro	MINMAX	op, treg, value, abs, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
fmask	equ		eax							; mask of comparison results
result	equ		xmm0						; result value
temp0	equ		xmm1						; temporary register #1
temp1	equ		xmm2						; temporary register #2
temp2	equ		xmm3						; temporary register #3
temp3	equ		xmm4						; temporary register #4
flags	equ		xmm5						; checks accumulator
mask	equ		xmm6						; bit mask
amask	= 16 - 1							; aligning mask
if x eq s
dmask	= DMASK_FLT32						; data mask
scale	= 2									; scale value
else
dmask	= DMASK_FLT64						; data mask
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
if abs
		initreg	mask, treg, dmask, bytes	; mask = dmask
end if
		initreg	result, treg, value, bytes	; result = value
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
if abs
		shufp#x	mask, mask, 0x0				; duplicate mask through the entire register
end if
		shufp#x	result, result, 0x0			; duplicate value through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vctr						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	movs#x	temp0, [array]				; temp0 = array[0]
if abs
		andp#x	temp0, mask					; temp0 = Abs (temp0)
end if
		op#s#x	result, temp0				; find min or max values
		comis#x	temp0, temp0				; if NAN is detected,
		jp		.nan						;     then go to NaN detected branch
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;------------------------------------------
.vctr:	xorp#x	flags, flags				; flags = 0
;---[Vector loop]--------------------------
.vloop:	movap#x	temp0, [array + 0x00]		; temp0 = array[0]
if abs
		andp#x	temp0, mask					; temp0 = Abs (temp0)
end if
		op#p#x	result, temp0				; find min or max values
		cmpp#x	temp0, temp0, 3				; check values for NANs
		orp#x	flags, temp0				; accumulate check results
		movap#x	temp1, [array + 0x10]		; temp1 = array[16]
if abs
		andp#x	temp1, mask					; temp1 = Abs (temp1)
end if
		op#p#x	result, temp1				; find min or max values
		cmpp#x	temp1, temp1, 3				; check values for NANs
		orp#x	flags, temp1				; accumulate check results
		movap#x	temp2, [array + 0x20]		; temp2 = array[32]
if abs
		andp#x	temp2, mask					; temp2 = Abs (temp2)
end if
		op#p#x	result, temp2				; find min or max values
		cmpp#x	temp2, temp2, 3				; check values for NANs
		orp#x	flags, temp2				; accumulate check results
		movap#x	temp3, [array + 0x30]		; temp3 = array[48]
if abs
		andp#x	temp3, mask					; temp3 = Abs (temp3)
end if
		op#p#x	result, temp3				; find min or max values
		cmpp#x	temp3, temp3, 3				; check values for NANs
		orp#x	flags, temp3				; accumulate check results
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
	movmskp#x	fmask, flags				; save check results to fmask
		test	fmask, fmask				; if NAN is detected,
		jnz		.nan						;     then go to NaN detected branch
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
if x eq s
		movhlps	temp0, result				; temp0 = upper half of result
		op#p#x	result, temp0				; find min or max values
end if
		movap#x	temp0, result				; temp0 = result
		shufp#x	temp0, temp0, 0x1			; shuffle values in temp0 register
		op#s#x	result, temp0				; find min or max value
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [array]				; temp0 = array[0]
if abs
		andp#x	temp0, mask					; temp0 = Abs (temp0)
end if
		op#s#x	result, temp0				; find min or max values
		comis#x	temp0, temp0				; if NAN is detected,
		jp		.nan						;     then go to NaN detected branch
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit branch]-------------------
.exit:	ret
;---[NaN detected branch]------------------
.nan:	initreg	result, treg, dmask, bytes	; return true (NaN is detected)
		ret
}

; Minimum value
Min_flt32:		MINMAX	min, edx, PINF_FLT32, 0, s
Min_flt64:		MINMAX	min, rdx, PINF_FLT64, 0, d

; Minimum absolute value
MinAbs_flt32:	MINMAX	min, edx, PINF_FLT32, 1, s
MinAbs_flt64:	MINMAX	min, rdx, PINF_FLT64, 1, d

; Maximum value
Max_flt32:		MINMAX	max, edx, MINF_FLT32, 0, s
Max_flt64:		MINMAX	max, rdx, MINF_FLT64, 0, d

; Maximum absolute value
MaxAbs_flt32:	MINMAX	max, edx, MINF_FLT32, 1, s
MaxAbs_flt64:	MINMAX	max, rdx, MINF_FLT64, 1, d

;******************************************************************************;
;       Rounding                                                               ;
;******************************************************************************;
macro	ROUND	treg, mode, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
magic	equ		xmm4						; magic number to get integer part
stack	equ		rsp							; stack pointer
s_mxcsr	equ		stack - 2 * 8				; stack position of mxcsr mask
s_back	equ		stack - 1 * 8				; stack position of original mxcsr value
amask	= 16 - 1							; aligning mask
if x eq s
mvalue	= MAGIC_FLT32						; magic number to get integer part from value
scale	= 2									; scale value
else
mvalue	= MAGIC_FLT64						; magic number to get integer part from value
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		mov		dword [s_mxcsr], mode		; copy rounding mode mask to the stack
		stmxcsr	[s_back]					; save original mxcsr value
		ldmxcsr	[s_mxcsr]					; set new rounding mode
		initreg	magic, treg, mvalue, bytes	; load magic number
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		shufp#x	magic, magic, 0x0			; duplicate value through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	movs#x	temp0, [array]				; temp0 = array[0]
		adds#x	temp0, magic				; temp0 += magic
		subs#x	temp0, magic				; temp0 -= magic
		movs#x	[array], temp0				; array[0] = temp0
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movap#x	temp0, [array + 0x00]		; temp0 = array[0]
		addp#x	temp0, magic				; temp0 += magic
		subp#x	temp0, magic				; temp0 -= magic
		movap#x	temp1, [array + 0x10]		; temp1 = array[16]
		addp#x	temp1, magic				; temp1 += magic
		subp#x	temp1, magic				; temp1 -= magic
		movap#x	temp2, [array + 0x20]		; temp2 = array[32]
		addp#x	temp2, magic				; temp2 += magic
		subp#x	temp2, magic				; temp2 -= magic
		movap#x	temp3, [array + 0x30]		; temp3 = array[48]
		addp#x	temp3, magic				; temp3 += magic
		subp#x	temp3, magic				; temp3 -= magic
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		movap#x	[array + 0x00], temp0		; array[0] = temp0
		movap#x	[array + 0x10], temp1		; array[16] = temp1
		movap#x	[array + 0x20], temp2		; array[32] = temp2
		movap#x	[array + 0x30], temp3		; array[48] = temp3
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [array]				; temp0 = array[0]
		adds#x	temp0, magic				; temp0 += magic
		subs#x	temp0, magic				; temp0 -= magic
		movs#x	[array], temp0				; array[0] = temp0
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ldmxcsr	[s_back]					; restore original mxcsr value
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FRAC	treg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
int0	equ		xmm4						; integer part of number #1
int1	equ		xmm5						; integer part of number #2
int2	equ		xmm6						; integer part of number #3
int3	equ		xmm7						; integer part of number #4
magic	equ		xmm8						; magic number to get integer part
stack	equ		rsp							; stack pointer
s_mxcsr	equ		stack - 2 * 8				; stack position of mxcsr mask
s_back	equ		stack - 1 * 8				; stack position of original mxcsr value
amask	= 16 - 1							; aligning mask
if x eq s
mvalue	= MAGIC_FLT32						; magic number to get integer part from value
scale	= 2									; scale value
else
mvalue	= MAGIC_FLT64						; magic number to get integer part from value
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		mov		dword [s_mxcsr], 0x7F80		; copy rounding mode mask to the stack
		stmxcsr	[s_back]					; save original mxcsr value
		ldmxcsr	[s_mxcsr]					; set new rounding mode
		initreg	magic, treg, mvalue, bytes	; load magic number
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		shufp#x	magic, magic, 0x0			; duplicate value through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	movs#x	temp0, [array]				; temp0 = array[0]
		movap#x	int0, temp0					; int0 = array[0]
		adds#x	int0, magic					; int0 += magic
		subs#x	int0, magic					; int0 -= magic
		subs#x	temp0, int0					; temp0 = temp0 - trunc (temp0)
		movs#x	[array], temp0				; array[0] = temp0
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;---[Vector loop]--------------------------
.vloop:	movap#x	temp0, [array + 0x00]		; temp0 = array[0]
		movap#x	int0, temp0					; int0 = array[0]
		addp#x	int0, magic					; int0 += magic
		subp#x	int0, magic					; int0 -= magic
		subp#x	temp0, int0					; temp0 = temp0 - trunc (temp0)
		movap#x	temp1, [array + 0x10]		; temp1 = array[16]
		movap#x	int1, temp1					; int1 = array[16]
		addp#x	int1, magic					; int1 += magic
		subp#x	int1, magic					; int1 -= magic
		subp#x	temp1, int1					; temp1 = temp1 - trunc (temp1)
		movap#x	temp2, [array + 0x20]		; temp2 = array[32]
		movap#x	int2, temp2					; int2 = array[32]
		addp#x	int2, magic					; int2 += magic
		subp#x	int2, magic					; int2 -= magic
		subp#x	temp2, int2					; temp2 = temp2 - trunc (temp2)
		movap#x	temp3, [array + 0x30]		; temp3 = array[48]
		movap#x	int3, temp3					; int3 = array[48]
		addp#x	int3, magic					; int3 += magic
		subp#x	int3, magic					; int3 -= magic
		subp#x	temp3, int3					; temp3 = temp3 - trunc (temp3)
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		movap#x	[array + 0x00], temp0		; array[0] = temp0
		movap#x	[array + 0x10], temp1		; array[16] = temp1
		movap#x	[array + 0x20], temp2		; array[32] = temp2
		movap#x	[array + 0x30], temp3		; array[48] = temp3
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp0, [array]				; temp0 = array[0]
		movap#x	int0, temp0					; int0 = array[0]
		adds#x	int0, magic					; int0 += magic
		subs#x	int0, magic					; int0 -= magic
		subs#x	temp0, int0					; temp0 = temp0 - trunc (temp0)
		movs#x	[array], temp0				; array[0] = temp0
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ldmxcsr	[s_back]					; restore original mxcsr value
		ret
}

; Round down (floor)
RoundDown_flt32:	ROUND	eax, 0x3F80, s
RoundDown_flt64:	ROUND	rax, 0x3F80, d

; Round up (ceil)
RoundUp_flt32:		ROUND	eax, 0x5F80, s
RoundUp_flt64:		ROUND	rax, 0x5F80, d

; Round to nearest integer
RoundInt_flt32:		ROUND	eax, 0x1F80, s
RoundInt_flt64:		ROUND	rax, 0x1F80, d

; Round to nearest integer, toward zero (truncation)
RoundTrunc_flt32:	ROUND	eax, 0x7F80, s
RoundTrunc_flt64:	ROUND	rax, 0x7F80, d

; Fractional part
RoundFrac_flt32:	FRAC	eax, s
RoundFrac_flt64:	FRAC	rax, d

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for subnormal values                                             ;
;==============================================================================;

;==============================================================================;
;       Check for infinite values                                              ;
;==============================================================================;
macro	HAS_INF	treg, mask, value, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
result	equ		al							; result register
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
fmask	equ		eax							; mask of comparison results
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
flags	equ		xmm4						; checks accumulator
vector	equ		xmm5						; vector value to process with
vmask	equ		xmm6						; bit mask
amask	= 16 - 1							; aligning mask
if x eq d
dmask	= DMASK_FLT32						; data mask
inf		= 0x7F800000						; inf
scale	= 2									; scale value
else
dmask	= DMASK_FLT64						; data mask
inf		= 0x7FF0000000000000				; inf
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		initreg	vmask, treg, dmask, bytes	; vmask = dmask
		clone	vmask, scale				; duplicate value through the entire register
		initreg	vector, treg, inf, bytes	; vector = Inf
		clone	vector, scale				; duplicate value through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vctr						;     then skip aligning loop
		mov		mask, dmask					; mask = dmask
		mov		value, inf					; value = Inf
;---[Aligning loop]------------------------
.aloop:	mov		treg, [array]				; treg = source[0]
		and		treg, mask					; treg = Abs(treg)
		cmp		treg, value					; if (treg == value)
		je		.found						;     then go to found branch
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;------------------------------------------
.vctr:	pxor	flags, flags				; flags = 0
;---[Vector loop]--------------------------
.vloop:	movdqa	temp0, [array + 0x00]		; temp0 = array[0]
		pand	temp0, vmask				; temp0 = Abs (temp0)
	pcmpeq#x	temp0, vector				; check for temp0 == value
		por		flags, temp0				; accumulate check results
		movdqa	temp1, [array + 0x10]		; temp1 = array[16]
		pand	temp1, vmask				; temp1 = Abs (temp1)
	pcmpeq#x	temp1, vector				; check for temp1 == value
		por		flags, temp1				; accumulate check results
		movdqa	temp2, [array + 0x20]		; temp2 = array[32]
		pand	temp2, vmask				; temp2 = Abs (temp2)
	pcmpeq#x	temp2, vector				; check for temp2 == value
		por		flags, temp2				; accumulate check results
		movdqa	temp3, [array + 0x30]		; temp3 = array[48]
		pand	temp3, vmask				; temp3 = Abs (temp3)
	pcmpeq#x	temp3, vector				; check for temp3 == value
		por		flags, temp3				; accumulate check results
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
	pmovmskb	fmask, flags				; save check results to fmask
		test	fmask, fmask				; if condition is met,
		jnz		.found						;     then go to found branch
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		mask, dmask					; mask = dmask
		mov		value, inf					; value = Inf
;---[Scalar loop]--------------------------
.sloop:	mov		treg, [array]				; treg = array[0]
		and		treg, mask					; treg = Abs(treg)
		cmp		treg, value					; if (treg == value)
		je		.found						;     then go to found branch
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit branch]-------------------
.exit:	xor		result, result				; return false
		ret
;---[Element has been found]---------------
.found:	mov		result, 1					; return true (array has required value)
		ret
}
HasINF_flt32:	HAS_INF	eax, edx, r9d, d
HasINF_flt64:	HAS_INF	rax, rdx, r9, q

;==============================================================================;
;       Check for NaN values                                                   ;
;==============================================================================;
macro	HAS_NAN	treg, mask, value, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
result	equ		al							; result register
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
fmask	equ		eax							; mask of comparison results
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
flags	equ		xmm4						; checks accumulator
vector	equ		xmm5						; vector value to process with
vmask	equ		xmm6						; bit mask
amask	= 16 - 1							; aligning mask
if x eq d
dmask	= DMASK_FLT32						; data mask
inf		= 0x7F800000						; inf
scale	= 2									; scale value
else
dmask	= DMASK_FLT64						; data mask
inf		= 0x7FF0000000000000				; inf
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		test	array, bytes - 1			; if (array & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, array
		neg		count
		and		count, amask
		shr		count, scale				; count = (-array & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		initreg	vmask, treg, dmask, bytes	; vmask = dmask
		clone	vmask, scale				; duplicate value through the entire register
		initreg	vector, treg, inf, bytes	; vector = Inf
		clone	vector, scale				; duplicate value through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vctr						;     then skip aligning loop
		mov		mask, dmask					; mask = dmask
		mov		value, inf					; value = Inf
;---[Aligning loop]------------------------
.aloop:	mov		treg, [array]				; treg = source[0]
		and		treg, mask					; treg = Abs(treg)
		cmp		treg, value					; if (treg > value)
		jg		.found						;     then go to found branch
		add		array, bytes				; array++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;------------------------------------------
.vctr:	pxor	flags, flags				; flags = 0
;---[Vector loop]--------------------------
.vloop:	movdqa	temp0, [array + 0x00]		; temp0 = array[0]
		pand	temp0, vmask				; temp0 = Abs (temp0)
	pcmpgt#x	temp0, vector				; check for temp0 > value
		por		flags, temp0				; accumulate check results
		movdqa	temp1, [array + 0x10]		; temp1 = array[16]
		pand	temp1, vmask				; temp1 = Abs (temp1)
	pcmpgt#x	temp1, vector				; check for temp1 > value
		por		flags, temp1				; accumulate check results
		movdqa	temp2, [array + 0x20]		; temp2 = array[32]
		pand	temp2, vmask				; temp2 = Abs (temp2)
	pcmpgt#x	temp2, vector				; check for temp2 > value
		por		flags, temp2				; accumulate check results
		movdqa	temp3, [array + 0x30]		; temp3 = array[48]
		pand	temp3, vmask				; temp3 = Abs (temp3)
	pcmpgt#x	temp3, vector				; check for temp3 > value
		por		flags, temp3				; accumulate check results
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
	pmovmskb	fmask, flags				; save check results to fmask
		test	fmask, fmask				; if condition is met,
		jnz		.found						;     then go to found branch
		add		array, block				; array += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		mask, dmask					; mask = dmask
		mov		value, inf					; value = Inf
;---[Scalar loop]--------------------------
.sloop:	mov		treg, [array]				; treg = array[0]
		and		treg, mask					; treg = Abs(treg)
		cmp		treg, value					; if (treg > value)
		jg		.found						;     then go to found branch
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit branch]-------------------
.exit:	xor		result, result				; return false
		ret
;---[Element has been found]---------------
.found:	mov		result, 1					; return true (array has required value)
		ret
}
HasNAN_flt32:	HAS_NAN	eax, edx, r9d, d
HasNAN_flt64:	HAS_NAN	rax, rdx, r9, q

;==============================================================================;
;       Check for overlap                                                      ;
;==============================================================================;
macro	OVERLAP	scale
{
;---[Parameters]---------------------------
target	equ 	rdi							; pointer to target array
t_size	equ		rsi							; target array size
source	equ 	rdx							; pointer to source array
s_size	equ 	rcx							; source array size
;---[Internal variables]-------------------
result	equ		al							; result register
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		target, source				; if (target >= source)
		jb		@f
;------------------------------------------
		lea		source, [source+s_size*bytes]; then source += s_size
		cmp		target, source				; return target >= source
		setb	result
		ret
;------------------------------------------
@@:		lea		target, [target+t_size*bytes]; else target += t_size
		cmp		source, target				; return (source >= target)
		setb	result
		ret
}
Overlap8:	OVERLAP	0
Overlap16:	OVERLAP	1
Overlap32:	OVERLAP	2
Overlap64:	OVERLAP	3

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Linear search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_FWD	value, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
reg		equ		rdx							; register that holds value
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to current element
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
fmask	equ		count						; mask of comparison results
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
flags	equ		xmm4						; checks accumulator
vector	equ		xmm5						; vector value to process with
amask	= 16 - 1							; aligning mask
if x eq b
dmask	= 0xFFFF							; data mask
scale	= 0									; scale value
else if x eq w
dmask	= 0x5555							; data mask
scale	= 1									; scale value
else if x eq d
dmask	= 0x1111							; data mask
scale	= 2									; scale value
else if x eq q
dmask	= 0x0101							; data mask
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
		mov		ptr, array					; ptr = array
	prefetchnta	[ptr]						; prefetch data
		test	ptr, bytes - 1				; if (ptr & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, ptr
		neg		count
		and		count, amask
		shr		count, scale				; count = (-ptr & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		movq	vector, reg					; vector = value
		clone	vector, scale				; duplicate value through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vctr						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	cmp		[ptr], value				; if (ptr[0] == value)
		je		.fnd2						;     then go to found branch
		add		ptr, bytes					; ptr++
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;------------------------------------------
.vctr:	pxor	flags, flags				; flags = 0
;---[Vector loop]--------------------------
.vloop:	movdqa	temp0, [ptr + 0x00]			; temp0 = ptr[0]
	pcmpeq#x	temp0, vector				; check for temp0 == value
		por		flags, temp0				; accumulate check results
		movdqa	temp1, [ptr + 0x10]			; temp1 = ptr[16]
	pcmpeq#x	temp1, vector				; check for temp1 == value
		por		flags, temp1				; accumulate check results
		movdqa	temp2, [ptr + 0x20]			; temp2 = ptr[32]
	pcmpeq#x	temp2, vector				; check for temp2 == value
		por		flags, temp2				; accumulate check results
		movdqa	temp3, [ptr + 0x30]			; temp3 = ptr[48]
	pcmpeq#x	temp3, vector				; check for temp3 == value
		por		flags, temp3				; accumulate check results
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
	pmovmskb	fmask, flags				; save check results to fmask
		test	fmask, fmask				; if condition is met,
		jnz		.fnd1						;     then go to found branch
		add		ptr, block					; ptr += block
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	cmp		[ptr], value				; if (ptr[0] == value)
		je		.fnd2						;     then go to found branch
		add		ptr, bytes					; ptr++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit branch]-------------------
.exit:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
;---[Found branch #1]----------------------
.fnd1:
	pmovmskb	fmask, temp0				; save check results to fmask
		and		fmask, dmask				; fmask &= dmask
		bsf		fmask, fmask				; find first occurence of value
		jnz		@f							; if value is met, then skip following code
		add		ptr, block / 4				; ptr += block / 4
	pmovmskb	fmask, temp1				; save check results to fmask
		and		fmask, dmask				; fmask &= dmask
		bsf		fmask, fmask				; find first occurence of value
		jnz		@f							; if value is met, then skip following code
		add		ptr, block / 4				; ptr += block / 4
	pmovmskb	fmask, temp2				; save check results to fmask
		and		fmask, dmask				; fmask &= dmask
		bsf		fmask, fmask				; find first occurence of value
		jnz		@f							; if value is met, then skip following code
		add		ptr, block / 4				; ptr += block / 4
	pmovmskb	fmask, temp3				; save check results to fmask
		and		fmask, dmask				; fmask &= dmask
		bsf		fmask, fmask				; find first occurence of value
@@:		add		ptr, fmask
;---[Found branch #2]----------------------
.fnd2:	sub		ptr, array					; return ptr - array
		shr		ptr, scale
		ret
}
FindFwd8:	FIND_FWD	dl, b
FindFwd16:	FIND_FWD	dx, w
FindFwd32:	FIND_FWD	edx, d
FindFwd64:	FIND_FWD	rdx, q

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_BWD	value, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
reg		equ		rdx							; register that holds value
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to current element
count	equ		rcx							; count of elements to align array
temp	equ		r8							; temporary register
fmask	equ		count						; mask of comparison results
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
flags	equ		xmm4						; checks accumulator
vector	equ		xmm5						; vector value to process with
amask	= 16 - 1							; aligning mask
if x eq b
dmask	= 0xFFFF							; data mask
scale	= 0									; scale value
else if x eq w
dmask	= 0x5555							; data mask
scale	= 1									; scale value
else if x eq d
dmask	= 0x1111							; data mask
scale	= 2									; scale value
else if x eq q
dmask	= 0x0101							; data mask
scale	= 3									; scale value
end if
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
step	= 1 shl (bscale - scale)			; step size (bytes)
;------------------------------------------
		lea		ptr, [array + size * bytes]	; ptr = array + size
	prefetchnta	[ptr - bytes]				; prefetch data
		test	ptr, bytes - 1				; if (ptr & (bytes - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, ptr
		and		count, amask
		shr		count, scale				; count = (ptr & amask) >> scale
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		movq	vector, reg					; vector = value
		clone	vector, scale				; duplicate value through the entire register
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale - scale		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vctr						;     then skip aligning loop
;---[Aligning loop]------------------------
.aloop:	sub		ptr, bytes					; ptr--
		cmp		[ptr], value				; if (ptr[0] == value)
		je		.fnd2						;     then go to found branch
		sub		count, 1					; count--
		jnz		.aloop						; do while (count != 0)
;------------------------------------------
.vctr:	pxor	flags, flags				; flags = 0
;---[Vector loop]--------------------------
.vloop:	sub		ptr, block					; ptr -= block
		movdqa	temp0, [ptr + 0x00]			; temp0 = ptr[0]
	pcmpeq#x	temp0, vector				; check for temp0 == value
		por		flags, temp0				; accumulate check results
		movdqa	temp1, [ptr + 0x10]			; temp1 = ptr[16]
	pcmpeq#x	temp1, vector				; check for temp1 == value
		por		flags, temp1				; accumulate check results
		movdqa	temp2, [ptr + 0x20]			; temp2 = ptr[32]
	pcmpeq#x	temp2, vector				; check for temp2 == value
		por		flags, temp2				; accumulate check results
		movdqa	temp3, [ptr + 0x30]			; temp3 = ptr[48]
	pcmpeq#x	temp3, vector				; check for temp3 == value
		por		flags, temp3				; accumulate check results
	prefetchnta	[ptr - PSTEP]				; prefetch next portion of data
	pmovmskb	fmask, flags				; save check results to fmask
		test	fmask, fmask				; if condition is met,
		jnz		.fnd1						;     then go to found branch
		sub		size, 1						; size--
		jnz		.vloop						; do while (size != 0)
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
.sloop:	sub		ptr, bytes					; ptr--
		cmp		[ptr], value				; if (ptr[0] == value)
		je		.fnd2						;     then go to found branch
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit branch]-------------------
.exit:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
;---[Found branch #1]----------------------
.fnd1:	add		ptr, 3 * block / 4			; ptr + 3 * block / 4
	pmovmskb	fmask, temp3				; save check results to fmask
		and		fmask, dmask				; fmask &= dmask
		bsf		fmask, fmask				; find first occurence of value
		jnz		@f							; if value is met, then skip following code
		sub		ptr, block / 4				; ptr -= block / 4
	pmovmskb	fmask, temp2				; save check results to fmask
		and		fmask, dmask				; fmask &= dmask
		bsf		fmask, fmask				; find first occurence of value
		jnz		@f							; if value is met, then skip following code
		sub		ptr, block / 4				; ptr -= block / 4
	pmovmskb	fmask, temp1				; save check results to fmask
		and		fmask, dmask				; fmask &= dmask
		bsf		fmask, fmask				; find first occurence of value
		jnz		@f							; if value is met, then skip following code
		sub		ptr, block / 4				; ptr -= block / 4
	pmovmskb	fmask, temp0				; save check results to fmask
		and		fmask, dmask				; fmask &= dmask
		bsf		fmask, fmask				; find first occurence of value
@@:		add		ptr, fmask
;---[Found branch #2]----------------------
.fnd2:	sub		ptr, array					; return ptr - array
		shr		ptr, scale
		ret
}
FindBwd8:	FIND_BWD	dl, b
FindBwd16:	FIND_BWD	dx, w
FindBwd32:	FIND_BWD	edx, d
FindBwd64:	FIND_BWD	rdx, q

;==============================================================================;
;       Binary search                                                          ;
;==============================================================================;
macro	FIND_BIN	pattern, x, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
median	equ		r8							; median value
median1	equ		r9							; median + 1
offst	equ		rcx							; offset from the beginning of array
left	equ		rax							; pointer to start of the data array
right	equ		size						; pointer to end of the data array
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     then go to not found branch
		xor		left, left					; left = 0
		sub		size, 1						; if (--size == 0)
		jz		.skip						;     then skip binary search loop
;---[Binary search loop]-------------------
.loop:	lea		median, [left + right]
		shr		median, 1					; median = (left + right) / 2
		mov		offst, median
		mov		median1, 1
		shl		offst, scale				; offst = median * bytes
		add		median1, median				; median1 = medan + 1
		cmp		pattern, [array + offst]	; if (pattern condition array[median])
		cmov#x	left, median1				;     then left = median + 1
		cmovn#x	right, median				;     else right = median
		cmp		right, left
		ja		.loop						; do while (right > left)
;------------------------------------------
.skip:	mov		right, left
		shl		right, scale				; if (pattern == array[left])
		cmp		pattern, [array + right]	;     then return left
		jne		.ntfnd						;     else return NOT_FOUND
		ret
;---[Not found]----------------------------
.ntfnd:	mov		left, NOT_FOUND				; return NOT_FOUND
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Array searching                                                        ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending order sorted array                                           ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindAsc_uint8:	FIND_BIN	dl, a, 0
FindAsc_uint16:	FIND_BIN	dx, a, 1
FindAsc_uint32:	FIND_BIN	edx, a, 2
FindAsc_uint64:	FIND_BIN	rdx, a, 3

; Signed integer types
FindAsc_sint8:	FIND_BIN	dl, g, 0
FindAsc_sint16:	FIND_BIN	dx, g, 1
FindAsc_sint32:	FIND_BIN	edx, g, 2
FindAsc_sint64:	FIND_BIN	rdx, g, 3

;------------------------------------------------------------------------------;
;       Descending order sorted array                                          ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindDsc_uint8:	FIND_BIN	dl, b, 0
FindDsc_uint16:	FIND_BIN	dx, b, 1
FindDsc_uint32:	FIND_BIN	edx, b, 2
FindDsc_uint64:	FIND_BIN	rdx, b, 3

; Signed integer types
FindDsc_sint8:	FIND_BIN	dl, l, 0
FindDsc_sint16:	FIND_BIN	dx, l, 1
FindDsc_sint32:	FIND_BIN	edx, l, 2
FindDsc_sint64:	FIND_BIN	rdx, l, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Key searching                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending order sorted array                                           ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindAscKey_uint8:	FIND_BIN	dl, a, 4
FindAscKey_uint16:	FIND_BIN	dx, a, 4
FindAscKey_uint32:	FIND_BIN	edx, a, 4
FindAscKey_uint64:	FIND_BIN	rdx, a, 4

; Signed integer types
FindAscKey_sint8:	FIND_BIN	dl, g, 4
FindAscKey_sint16:	FIND_BIN	dx, g, 4
FindAscKey_sint32:	FIND_BIN	edx, g, 4
FindAscKey_sint64:	FIND_BIN	rdx, g, 4

;------------------------------------------------------------------------------;
;       Descending order sorted array                                          ;
;------------------------------------------------------------------------------;

; Unsigned integer types
FindDscKey_uint8:	FIND_BIN	dl, b, 4
FindDscKey_uint16:	FIND_BIN	dx, b, 4
FindDscKey_uint32:	FIND_BIN	edx, b, 4
FindDscKey_uint64:	FIND_BIN	rdx, b, 4

; Signed integer types
FindDscKey_sint8:	FIND_BIN	dl, l, 4
FindDscKey_sint16:	FIND_BIN	dx, l, 4
FindDscKey_sint32:	FIND_BIN	edx, l, 4
FindDscKey_sint64:	FIND_BIN	rdx, l, 4

;******************************************************************************;
;       Value replacement                                                      ;
;******************************************************************************;
macro	REPLACE	pattern, value, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Loop]---------------------------------
.loop:	cmp		[array], pattern			; if (array[0] == pattern) {
		jne		@f							;     array[0] = value
		mov		[array], value				; }
@@:		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
Replace8:	REPLACE		dl, cl, 0
Replace16:	REPLACE		dx, cx, 1
Replace32:	REPLACE		edx, ecx, 2
Replace64:	REPLACE		rdx, rcx, 3

;******************************************************************************;
;       Sorting algorithms                                                     ;
;******************************************************************************;

;==============================================================================;
;       Mapping floating-point values to signed integer values                 ;
;==============================================================================;
macro	MAP	temp0, temp1, value, step
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Loop]---------------------------------
.loop:	mov		temp0, [array]				; temp0 = array[0]
		mov		temp1, value				; temp1 = temp0 ^ value
		xor		temp1, temp0				; if (temp0 < 0)
		cmovs	temp0, temp1				;     temp0 = temp1
		mov		[array], temp0				; array[0] = temp0
		add		array, step					; array += step
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}

; Mapping arrays
Map_flt32:		MAP	eax, edx, 0x7FFFFFFF, 4
Map_flt64:		MAP	rax, rdx, 0x7FFFFFFFFFFFFFFF, 8

; Mapping keys
MapKey_flt32:	MAP	eax, edx, 0x7FFFFFFF, 16
MapKey_flt64:	MAP	rax, rdx, 0x7FFFFFFFFFFFFFFF, 16

;==============================================================================;
;       Quick sort                                                             ;
;==============================================================================;
macro	QUICK_SORT_CORE	median, swap1, swap2, op1, op2, scale
{
;---[Parameters]---------------------------
left	equ		rdi							; pointer to start of the data array
right	equ		rsi							; pointer to end of the data array
;---[Internal variables]-------------------
size	equ		rax							; data array size
l_ptr	equ		r8							; left pointer to split data array
r_ptr	equ		r9							; right pointer to split data array
l_size	equ		rcx							; size of left part of array
r_size	equ		rdx							; size of right part of array
stack	equ		rsp							; stack pointer
s_ptr1	equ		stack + 0 * 8				; stack position of "ptr1"
s_ptr2	equ		stack + 1 * 8				; stack position of "ptr2"
N		= 32								; Max array size aceptable for Insert sort
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;---[QUICK SORT]---------------------------
		jmp		.start
.qloop:	shr		size, 1						; size /= 2
		and		size, -bytes
		mov		l_ptr, left					; l_ptr = left
		mov		r_ptr, right				; r_ptr = right
		mov		median, [left + size]		; median = left [size]
		jmp		@f							; skip swap section
;---[Swap loop]----------------------------
if bytes = 16
.swap:	movdqu	swap1, [l_ptr]				; swap1 = l_ptr[0]
		movdqu	swap2, [r_ptr]				; swap2 = r_ptr[0]
		movdqu	[l_ptr], swap2				; l_ptr[0] = swap2
		movdqu	[r_ptr], swap1				; r_ptr[0] = swap1
else
.swap:	mov		swap1, [l_ptr]				; swap1 = l_ptr[0]
		mov		swap2, [r_ptr]				; swap2 = r_ptr[0]
		mov		[l_ptr], swap2				; l_ptr[0] = swap2
		mov		[r_ptr], swap1				; r_ptr[0] = swap1
end if
;---[Internal loop 1]----------------------
@@:		add		l_ptr, bytes				; l_ptr++
		cmp		[l_ptr], median
		j#op1	@b							; do while (l_ptr[0] condition median)
;---[Internal loop 2]----------------------
@@:		sub		r_ptr, bytes				; r_ptr--
		cmp		[r_ptr], median
		j#op2	@b							; do while (r_ptr[0] condition median)
;------------------------------------------
		cmp		l_ptr, r_ptr
		jb		.swap						; do while (l_ptr < r_ptr)
;---[Swap loop end]------------------------
		mov		l_size, l_ptr
		mov		r_size, right
		sub		l_size, left				; l_size = l_ptr - left
		sub		r_size, r_ptr				; r_size = right - r_ptr
		cmp		l_size, r_size				; if (l_size <= r_size), then do the
		ja		.else						; first section, else the second one
;---[if]-----------------------------------
		sub		stack, space				; Preserving stack space for variables
		mov		[s_ptr2], right				; save "right" variable into the stack
		mov		[s_ptr1], r_ptr				; save "r_ptr" variable into the stack
		cmp		l_size, 2 * bytes			; if (l_size > 2)
		jbe		@f							; then do recursive call
		mov		right, l_ptr
		call	.start
@@:		mov		left, [s_ptr1]				; left = r_ptr
		mov		right, [s_ptr2]				; restore "right" variable from the stack
		add		stack, space				; Restoring stack space back
		jmp		.start
;---[else]---------------------------------
.else:	sub		stack, space				; Preserving stack space for variables
		mov		[s_ptr2], left				; save "left" variable into the stack
		mov		[s_ptr1], l_ptr				; save "l_ptr" variable into the stack
		cmp		r_size, 2 * bytes			; if (r_size > 2)
		jbe		@f							; then do recursive call
		mov		left, r_ptr
		call	.start
@@:		mov		right, [s_ptr1]				; right = l_ptr
		mov		left, [s_ptr2]				; restore "left" variable from the stack
		add		stack, space				; Restoring stack space back
;---[end if]-------------------------------
.start:	mov		size, right
		sub		size, left					; size = right - left
		cmp		size, N * bytes
		ja		.qloop						; do while (size > N)
;---[INSERT SORT]--------------------------
.ins:	add		left, bytes
		lea		l_ptr, [left + bytes]
;---[Insert sort loop]---------------------
.iloop:	mov		median, [l_ptr]
if bytes = 16
		movdqu	swap1, [l_ptr]
end if
		mov		r_ptr, l_ptr
;---[Internal loop]------------------------
@@:		cmp		median, [r_ptr - bytes]
		jn#op1	@f
if bytes = 16
		movdqu	swap2, [r_ptr - bytes]
		movdqu	[r_ptr], swap2
else
		mov		swap2, [r_ptr - bytes]
		mov		[r_ptr], swap2
end if
		sub		r_ptr, bytes
		cmp		r_ptr, left
		ja		@b
;---[Internal loop end]--------------------
@@:		add		l_ptr, bytes
if bytes = 16
		movdqu	[r_ptr], swap1
else
		mov		[r_ptr], median
end if
		cmp		l_ptr, right
		jb		.iloop
;---[Insert sort loop end]-----------------
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	QUICK_SORT_INT	sort_func, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						; then go to exit from the procedure
;---[Call sort function]-------------------
		shl		size, scale
		add		size, array					; size = array + size
		sub		array, bytes				; array--
		jmp		sort_func					; call sorting function
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	QUICK_SORT_FLT	sort_func, convert_func, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						; then go to exit from the procedure
		sub		stack, space				; reserving stack size for local vars
;---[Convert array]------------------------
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
		call	convert_func				; call converting function
;---[Sort array]---------------------------
		mov		size, [s_size]				; get "size" variable from the stack
		mov		array, [s_array]			; get "array" variable from the stack
		shl		size, scale
		add		size, array					; size = array + size
		sub		array, bytes				; array--
		call	sort_func					; call sorting function
;---[Convert array]------------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	convert_func				; call converting function
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Array sorting                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
QuickSortCoreAsc_uint8:		QUICK_SORT_CORE	al, cl, dl, b, a, 0
QuickSortCoreAsc_uint16:	QUICK_SORT_CORE	ax, cx, dx, b, a, 1
QuickSortCoreAsc_uint32:	QUICK_SORT_CORE	eax, ecx, edx, b, a, 2
QuickSortCoreAsc_uint64:	QUICK_SORT_CORE	rax, rcx, rdx, b, a, 3
QuickSortAsc_uint8:			QUICK_SORT_INT	QuickSortCoreAsc_uint8, 0
QuickSortAsc_uint16:		QUICK_SORT_INT	QuickSortCoreAsc_uint16, 1
QuickSortAsc_uint32:		QUICK_SORT_INT	QuickSortCoreAsc_uint32, 2
QuickSortAsc_uint64:		QUICK_SORT_INT	QuickSortCoreAsc_uint64, 3

; Signed integer types
QuickSortCoreAsc_sint8:		QUICK_SORT_CORE	al, cl, dl, l, g, 0
QuickSortCoreAsc_sint16:	QUICK_SORT_CORE	ax, cx, dx, l, g, 1
QuickSortCoreAsc_sint32:	QUICK_SORT_CORE	eax, ecx, edx, l, g,2
QuickSortCoreAsc_sint64:	QUICK_SORT_CORE	rax, rcx, rdx, l, g, 3
QuickSortAsc_sint8:			QUICK_SORT_INT	QuickSortCoreAsc_sint8, 0
QuickSortAsc_sint16:		QUICK_SORT_INT	QuickSortCoreAsc_sint16, 1
QuickSortAsc_sint32:		QUICK_SORT_INT	QuickSortCoreAsc_sint32, 2
QuickSortAsc_sint64:		QUICK_SORT_INT	QuickSortCoreAsc_sint64, 3

; Floating-point types
QuickSortAsc_flt32:			QUICK_SORT_FLT	QuickSortCoreAsc_sint32, Map_flt32, 2
QuickSortAsc_flt64:			QUICK_SORT_FLT	QuickSortCoreAsc_sint64, Map_flt64, 3

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
QuickSortCoreDsc_uint8:		QUICK_SORT_CORE	al, cl, dl, a, b, 0
QuickSortCoreDsc_uint16:	QUICK_SORT_CORE	ax, cx, dx, a, b, 1
QuickSortCoreDsc_uint32:	QUICK_SORT_CORE	eax, ecx, edx, a, b, 2
QuickSortCoreDsc_uint64:	QUICK_SORT_CORE	rax, rcx, rdx, a, b, 3
QuickSortDsc_uint8:			QUICK_SORT_INT	QuickSortCoreDsc_uint8, 0
QuickSortDsc_uint16:		QUICK_SORT_INT	QuickSortCoreDsc_uint16, 1
QuickSortDsc_uint32:		QUICK_SORT_INT	QuickSortCoreDsc_uint32, 2
QuickSortDsc_uint64:		QUICK_SORT_INT	QuickSortCoreDsc_uint64, 3

; Signed integer types
QuickSortCoreDsc_sint8:		QUICK_SORT_CORE	al, cl, dl, g, l, 0
QuickSortCoreDsc_sint16:	QUICK_SORT_CORE	ax, cx, dx, g, l, 1
QuickSortCoreDsc_sint32:	QUICK_SORT_CORE	eax, ecx, edx, g, l, 2
QuickSortCoreDsc_sint64:	QUICK_SORT_CORE	rax, rcx, rdx, g, l, 3
QuickSortDsc_sint8:			QUICK_SORT_INT	QuickSortCoreDsc_sint8, 0
QuickSortDsc_sint16:		QUICK_SORT_INT	QuickSortCoreDsc_sint16, 1
QuickSortDsc_sint32:		QUICK_SORT_INT	QuickSortCoreDsc_sint32, 2
QuickSortDsc_sint64:		QUICK_SORT_INT	QuickSortCoreDsc_sint64, 3

; Floating-point types
QuickSortDsc_flt32:			QUICK_SORT_FLT	QuickSortCoreDsc_sint32, Map_flt32, 2
QuickSortDsc_flt64:			QUICK_SORT_FLT	QuickSortCoreDsc_sint64, Map_flt64, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Key sorting                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
QuickSortCoreAscKey_uint8:	QUICK_SORT_CORE	al, xmm0, xmm1, b, a, 4
QuickSortCoreAscKey_uint16:	QUICK_SORT_CORE	ax, xmm0, xmm1, b, a, 4
QuickSortCoreAscKey_uint32:	QUICK_SORT_CORE	eax, xmm0, xmm1, b, a, 4
QuickSortCoreAscKey_uint64:	QUICK_SORT_CORE	rax, xmm0, xmm1, b, a, 4
QuickSortAscKey_uint8:		QUICK_SORT_INT	QuickSortCoreAscKey_uint8, 4
QuickSortAscKey_uint16:		QUICK_SORT_INT	QuickSortCoreAscKey_uint16, 4
QuickSortAscKey_uint32:		QUICK_SORT_INT	QuickSortCoreAscKey_uint32, 4
QuickSortAscKey_uint64:		QUICK_SORT_INT	QuickSortCoreAscKey_uint64, 4

; Signed integer types
QuickSortCoreAscKey_sint8:	QUICK_SORT_CORE	al, xmm0, xmm1, l, g, 4
QuickSortCoreAscKey_sint16:	QUICK_SORT_CORE	ax, xmm0, xmm1, l, g, 4
QuickSortCoreAscKey_sint32:	QUICK_SORT_CORE	eax, xmm0, xmm1, l, g, 4
QuickSortCoreAscKey_sint64:	QUICK_SORT_CORE	rax, xmm0, xmm1, l, g, 4
QuickSortAscKey_sint8:		QUICK_SORT_INT	QuickSortCoreAscKey_sint8, 4
QuickSortAscKey_sint16:		QUICK_SORT_INT	QuickSortCoreAscKey_sint16, 4
QuickSortAscKey_sint32:		QUICK_SORT_INT	QuickSortCoreAscKey_sint32, 4
QuickSortAscKey_sint64:		QUICK_SORT_INT	QuickSortCoreAscKey_sint64, 4

; Floating-point types
QuickSortAscKey_flt32:		QUICK_SORT_FLT	QuickSortCoreAscKey_sint32, MapKey_flt32, 4
QuickSortAscKey_flt64:		QUICK_SORT_FLT	QuickSortCoreAscKey_sint64, MapKey_flt64, 4

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
QuickSortCoreDscKey_uint8:	QUICK_SORT_CORE	al, xmm0, xmm1, a, b, 4
QuickSortCoreDscKey_uint16:	QUICK_SORT_CORE	ax, xmm0, xmm1, a, b, 4
QuickSortCoreDscKey_uint32:	QUICK_SORT_CORE	eax, xmm0, xmm1, a, b, 4
QuickSortCoreDscKey_uint64:	QUICK_SORT_CORE	rax, xmm0, xmm1, a, b, 4
QuickSortDscKey_uint8:		QUICK_SORT_INT	QuickSortCoreDscKey_uint8, 4
QuickSortDscKey_uint16:		QUICK_SORT_INT	QuickSortCoreDscKey_uint16, 4
QuickSortDscKey_uint32:		QUICK_SORT_INT	QuickSortCoreDscKey_uint32, 4
QuickSortDscKey_uint64:		QUICK_SORT_INT	QuickSortCoreDscKey_uint64, 4

; Signed integer types
QuickSortCoreDscKey_sint8:	QUICK_SORT_CORE	al, xmm0, xmm1, g, l, 4
QuickSortCoreDscKey_sint16:	QUICK_SORT_CORE	ax, xmm0, xmm1, g, l, 4
QuickSortCoreDscKey_sint32:	QUICK_SORT_CORE	eax, xmm0, xmm1, g, l, 4
QuickSortCoreDscKey_sint64:	QUICK_SORT_CORE	rax, xmm0, xmm1, g, l, 4
QuickSortDscKey_sint8:		QUICK_SORT_INT	QuickSortCoreDscKey_sint8, 4
QuickSortDscKey_sint16:		QUICK_SORT_INT	QuickSortCoreDscKey_sint16, 4
QuickSortDscKey_sint32:		QUICK_SORT_INT	QuickSortCoreDscKey_sint32, 4
QuickSortDscKey_sint64:		QUICK_SORT_INT	QuickSortCoreDscKey_sint64, 4

; Floating-point types
QuickSortDscKey_flt32:		QUICK_SORT_FLT	QuickSortCoreDscKey_sint32, MapKey_flt32, 4
QuickSortDscKey_flt64:		QUICK_SORT_FLT	QuickSortCoreDscKey_sint64, MapKey_flt64, 4

;==============================================================================;
;       Radix sort                                                             ;
;==============================================================================;
AscOrder_ui:
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
stat	equ		rsi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
temp	equ		rax							; temporary register
;------------------------------------------
		mov		size, 256					; size = 256 (partial key range)
;---[Address calculating loop]-------------
@@:		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], target				; stat[0] = target
		add		target, temp				; target += temp
		add		stat, 8						; stat++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
DscOrder_ui:
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
stat	equ		rsi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
temp	equ		rax							; temporary register
;------------------------------------------
		add		stat, 256 * 8				; stat += 256
		mov		size, 256					; size = 256 (partial key range)
;---[Address calculating loop]-------------
@@:		sub		stat, 8						; stat--
		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], target				; stat[0] = target
		add		target, temp				; target += temp
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
AscOrder_si:
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
stat	equ		rsi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
temp	equ		rax							; temporary register
;------------------------------------------
		add		stat, 128 * 8				; stat += 128
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], target				; stat[0] = target
		add		target, temp				; target += temp
		add		stat, 8						; stat++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		sub		stat, 256 * 8				; stat -= 256
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], target				; stat[0] = target
		add		target, temp				; target += temp
		add		stat, 8						; stat++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
DscOrder_si:
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
stat	equ		rsi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
temp	equ		rax							; temporary register
;------------------------------------------
		add		stat, 128 * 8				; stat += 128
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		sub		stat, 8						; stat--
		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], target				; stat[0] = target
		add		target, temp				; target += temp
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		add		stat, 256 * 8				; stat += 256
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		sub		stat, 8						; stat--
		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], target				; stat[0] = target
		add		target, temp				; target += temp
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	STAT	scale, step
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
stat	equ		rdx							; pointer to statistics array
;---[Internal variables]-------------------
zero	equ		xmm0						; zero value (vector register)
count	equ		rcx							; count of vector elements in stat array
ptr		equ		rax							; temporarry pointer to stat array
key		equ		ptr							; key register (is used to compute adress)
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
;------------------------------------------
		pxor	zero, zero					; zero = 0
		mov		ptr, stat					; ptr = stat
		mov		count, (256 * 8) shr (bscale - scale)
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
i = 0
while i < bytes
		movzx	key, byte [array + i]		; get partial key
		add		qword [stat + i * 256 * 8 + key * 8], step
	i = i + 1
end while
		add		array, step					; move to next element
		sub		size, 1						; size--
		jnz		.stat						; do while (count != 0)
;------------------------------------------
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SORTSTAGE	cmd, temp, step
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to source array
size	equ		rsi							; array size (count of elements)
stat	equ		rdx							; pointer to statistics array
index	equ		rcx							; index of partial key
;---[Internal variables]-------------------
key		equ		rax							; key register (is used to compute adress)
addr	equ		r8							; address where element should be copied
;---[Sorting loop]-------------------------
.loop:	cmd		temp, [array]				; temp = array[0]
		movzx	key, byte [array + index]	; get partial key
		mov		addr, [stat + key * 8]		; addr = stat[key]
		cmd		[addr], temp				; addr[0] = temp
		add		array, step					; array++
		add		addr, step					; addr++
		mov		[stat + key * 8], addr		; stat[key] = addr
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	RADIX_SORT_CORE	order1, order2, stat, stage, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to source array
temp	equ		rsi							; pointer to temporary array
size	equ		rdx							; size of array
;---[Internal variables]-------------------
param1	equ		rdi							; register to pass 1 parameter to function
param2	equ		rsi							; register to pass 2 parameter to function
param3	equ		rdx							; register to pass 3 parameter to function
param4	equ		rcx							; register to pass 4 parameter to function
stack	equ		rsp							; stack pointer
bytes	= 1 shl scale						; size of array element (bytes)
stat_sz	= bytes * 256 * 8					; size of statistics array (bytes)
space	= stat_sz + 3 * 8					; stack size required by the procedure
s_array	equ		stack +  stat_sz + 0 * 8	; stack position of "array" variable
s_temp	equ		stack +  stat_sz + 1 * 8	; stack position of "temp" variable
s_size	equ		stack +  stat_sz + 2 * 8	; stack position of "size" variable
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Collect statistics]-------------------
		mov		param2, size
		mov		param3, stack
		call	stat						; call Statistics (array, size, stack);
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
		mov		param1, [s_temp]
		lea		param2, [stack + i * 256 * 8]
		call	order1						; call order1 (temp, stack[i])
		mov		param1, [s_array]
		mov		param2, [s_size]
		lea		param3, [stack + i * 256 * 8]
		mov		param4, i
		call	stage						; call stage (array, size, stack[i], i)
	else
		mov		param1, [s_array]
		lea		param2, [stack + i * 256 * 8]
		call	order1						; call order1 (array, stack[i])
		mov		param1, [s_temp]
		mov		param2, [s_size]
		lea		param3, [stack + i * 256 * 8]
		mov		param4, i
		call	stage						; call stage (temp, size, stack[i], i)
	end if
	i = i + 1
end while
		mov		param1, [s_array]
		lea		param2, [stack + i * 256 * 8]
		call	order2						; call order2 (array, stack)
		mov		param1, [s_temp]
		mov		param2, [s_size]
		lea		param3, [stack + i * 256 * 8]
		mov		param4, i
		call	stage						; call stage (temp, size, stack[i], i)
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	RADIX_SORT_INT	sort_func
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to source array
temp	equ		rsi							; pointer to temporary array
size	equ		rdx							; size of array
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						; then go to exit from the procedure
;---[Call sort function]-------------------
		jmp		sort_func					; call sorting function
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	RADIX_SORT_FLT	sort_func, convert_func
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to source array
temp	equ		rsi							; pointer to temporary array
size	equ		rdx							; size of array
;---[Internal variables]-------------------
param1	equ		rdi							; register to pass 1 parameter to function
param2	equ		rsi							; register to pass 2 parameter to function
param3	equ		rdx							; register to pass 3 parameter to function
stack	equ		rsp							; stack pointer
s_array	equ		stack +  0 * 8				; stack position of "array" variable
s_temp	equ		stack +  1 * 8				; stack position of "temp" array variable
s_size	equ		stack +  2 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						; then go to exit from the procedure
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Convert array]------------------------
		mov		param2, size				; save "size" variable into the stack
		call	convert_func				; call converting function
;---[Sort array]---------------------------
		mov		param1, [s_array]			; get "array" variable from the stack
		mov		param2, [s_temp]			; get "temp" variable from the stack
		mov		param3, [s_size]			; get "size" variable from the stack
		call	sort_func					; call sorting function
;---[Convert array]------------------------
		mov		param1, [s_array]			; get "array" variable from the stack
		mov		param2, [s_size]			; get "size" variable from the stack
		call	convert_func				; call converting function
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Array sorting                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Statistic functions                                                    ;
;------------------------------------------------------------------------------;
Stat8:		STAT	0, 1
Stat16:		STAT	1, 2
Stat32:		STAT	2, 4
Stat64:		STAT	3, 8

;------------------------------------------------------------------------------;
;       Sorting stage functions                                                ;
;------------------------------------------------------------------------------;
Stage8:		SORTSTAGE	mov, r9b, 1
Stage16:	SORTSTAGE	mov, r9w, 2
Stage32:	SORTSTAGE	mov, r9d, 4
Stage64:	SORTSTAGE	mov, r9, 8

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
RadixSortCoreAsc_uint8:		RADIX_SORT_CORE	AscOrder_ui, AscOrder_ui, Stat8, Stage8, 0
RadixSortCoreAsc_uint16:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_ui, Stat16, Stage16, 1
RadixSortCoreAsc_uint32:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_ui, Stat32, Stage32, 2
RadixSortCoreAsc_uint64:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_ui, Stat64, Stage64, 3
RadixSortAsc_uint8:			RADIX_SORT_INT	RadixSortCoreAsc_uint8
RadixSortAsc_uint16:		RADIX_SORT_INT	RadixSortCoreAsc_uint16
RadixSortAsc_uint32:		RADIX_SORT_INT	RadixSortCoreAsc_uint32
RadixSortAsc_uint64:		RADIX_SORT_INT	RadixSortCoreAsc_uint64

; Signed integer types
RadixSortCoreAsc_sint8:		RADIX_SORT_CORE	AscOrder_ui, AscOrder_si, Stat8, Stage8, 0
RadixSortCoreAsc_sint16:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_si, Stat16, Stage16, 1
RadixSortCoreAsc_sint32:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_si, Stat32, Stage32, 2
RadixSortCoreAsc_sint64:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_si, Stat64, Stage64, 3
RadixSortAsc_sint8:			RADIX_SORT_INT	RadixSortCoreAsc_sint8
RadixSortAsc_sint16:		RADIX_SORT_INT	RadixSortCoreAsc_sint16
RadixSortAsc_sint32:		RADIX_SORT_INT	RadixSortCoreAsc_sint32
RadixSortAsc_sint64:		RADIX_SORT_INT	RadixSortCoreAsc_sint64

; Floating-point types
RadixSortAsc_flt32:			RADIX_SORT_FLT	RadixSortCoreAsc_sint32, Map_flt32
RadixSortAsc_flt64:			RADIX_SORT_FLT	RadixSortCoreAsc_sint64, Map_flt64

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
RadixSortCoreDsc_uint8:		RADIX_SORT_CORE	DscOrder_ui, DscOrder_ui, Stat8, Stage8, 0
RadixSortCoreDsc_uint16:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_ui, Stat16, Stage16, 1
RadixSortCoreDsc_uint32:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_ui, Stat32, Stage32, 2
RadixSortCoreDsc_uint64:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_ui, Stat64, Stage64, 3
RadixSortDsc_uint8:			RADIX_SORT_INT	RadixSortCoreDsc_uint8
RadixSortDsc_uint16:		RADIX_SORT_INT	RadixSortCoreDsc_uint16
RadixSortDsc_uint32:		RADIX_SORT_INT	RadixSortCoreDsc_uint32
RadixSortDsc_uint64:		RADIX_SORT_INT	RadixSortCoreDsc_uint64

; Signed integer types
RadixSortCoreDsc_sint8:		RADIX_SORT_CORE	DscOrder_ui, DscOrder_si, Stat8, Stage8, 0
RadixSortCoreDsc_sint16:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_si, Stat16, Stage16, 1
RadixSortCoreDsc_sint32:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_si, Stat32, Stage32, 2
RadixSortCoreDsc_sint64:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_si, Stat64, Stage64, 3
RadixSortDsc_sint8:			RADIX_SORT_INT	RadixSortCoreDsc_sint8
RadixSortDsc_sint16:		RADIX_SORT_INT	RadixSortCoreDsc_sint16
RadixSortDsc_sint32:		RADIX_SORT_INT	RadixSortCoreDsc_sint32
RadixSortDsc_sint64:		RADIX_SORT_INT	RadixSortCoreDsc_sint64

; Floating-point types
RadixSortDsc_flt32:			RADIX_SORT_FLT	RadixSortCoreDsc_sint32, Map_flt32
RadixSortDsc_flt64:			RADIX_SORT_FLT	RadixSortCoreDsc_sint64, Map_flt64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Key sorting                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Statistic functions                                                    ;
;------------------------------------------------------------------------------;
StatKey8:	STAT	0, 16
StatKey16:	STAT	1, 16
StatKey32:	STAT	2, 16
StatKey64:	STAT	3, 16

;------------------------------------------------------------------------------;
;       Sorting stage functions                                                ;
;------------------------------------------------------------------------------;
StageKey:	SORTSTAGE	movdqu, xmm0, 16

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
RadixSortCoreAscKey_uint8:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_ui, StatKey8, StageKey, 0
RadixSortCoreAscKey_uint16:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_ui, StatKey16, StageKey, 1
RadixSortCoreAscKey_uint32:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_ui, StatKey32, StageKey, 2
RadixSortCoreAscKey_uint64:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_ui, StatKey64, StageKey, 3
RadixSortAscKey_uint8:		RADIX_SORT_INT	RadixSortCoreAscKey_uint8
RadixSortAscKey_uint16:		RADIX_SORT_INT	RadixSortCoreAscKey_uint16
RadixSortAscKey_uint32:		RADIX_SORT_INT	RadixSortCoreAscKey_uint32
RadixSortAscKey_uint64:		RADIX_SORT_INT	RadixSortCoreAscKey_uint64

; Signed integer types
RadixSortCoreAscKey_sint8:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_si, StatKey8, StageKey, 0
RadixSortCoreAscKey_sint16:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_si, StatKey16, StageKey, 1
RadixSortCoreAscKey_sint32:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_si, StatKey32, StageKey, 2
RadixSortCoreAscKey_sint64:	RADIX_SORT_CORE	AscOrder_ui, AscOrder_si, StatKey64, StageKey, 3
RadixSortAscKey_sint8:		RADIX_SORT_INT	RadixSortCoreAscKey_sint8
RadixSortAscKey_sint16:		RADIX_SORT_INT	RadixSortCoreAscKey_sint16
RadixSortAscKey_sint32:		RADIX_SORT_INT	RadixSortCoreAscKey_sint32
RadixSortAscKey_sint64:		RADIX_SORT_INT	RadixSortCoreAscKey_sint64

; Floating-point types
RadixSortAscKey_flt32:		RADIX_SORT_FLT	RadixSortCoreAscKey_sint32, MapKey_flt32
RadixSortAscKey_flt64:		RADIX_SORT_FLT	RadixSortCoreAscKey_sint64, MapKey_flt64

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
RadixSortCoreDscKey_uint8:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_ui, StatKey8, StageKey, 0
RadixSortCoreDscKey_uint16:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_ui, StatKey16, StageKey, 1
RadixSortCoreDscKey_uint32:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_ui, StatKey32, StageKey, 2
RadixSortCoreDscKey_uint64:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_ui, StatKey64, StageKey, 3
RadixSortDscKey_uint8:		RADIX_SORT_INT	RadixSortCoreDscKey_uint8
RadixSortDscKey_uint16:		RADIX_SORT_INT	RadixSortCoreDscKey_uint16
RadixSortDscKey_uint32:		RADIX_SORT_INT	RadixSortCoreDscKey_uint32
RadixSortDscKey_uint64:		RADIX_SORT_INT	RadixSortCoreDscKey_uint64

; Signed integer types
RadixSortCoreDscKey_sint8:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_si, StatKey8, StageKey, 0
RadixSortCoreDscKey_sint16:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_si, StatKey16, StageKey, 1
RadixSortCoreDscKey_sint32:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_si, StatKey32, StageKey, 2
RadixSortCoreDscKey_sint64:	RADIX_SORT_CORE	DscOrder_ui, DscOrder_si, StatKey64, StageKey, 3
RadixSortDscKey_sint8:		RADIX_SORT_INT	RadixSortCoreDscKey_sint8
RadixSortDscKey_sint16:		RADIX_SORT_INT	RadixSortCoreDscKey_sint16
RadixSortDscKey_sint32:		RADIX_SORT_INT	RadixSortCoreDscKey_sint32
RadixSortDscKey_sint64:		RADIX_SORT_INT	RadixSortCoreDscKey_sint64

; Floating-point types
RadixSortDscKey_flt32:		RADIX_SORT_FLT	RadixSortCoreDscKey_sint32, MapKey_flt32
RadixSortDscKey_flt64:		RADIX_SORT_FLT	RadixSortCoreDscKey_sint64, MapKey_flt64

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
macro	UNIQUE	element, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
target	equ		rax							; pointer to unique sequnce
source	equ 	rcx							; pointer to source sequnce
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		lea		source, [array + bytes]		; source = array + 1
		lea		target, [array + bytes]		; target = array + 1
		sub		size, 1						; if (--size <= 0)
		jbe		.skip						;     then skip the loop
;---[Unique separation loop]---------------
.loop:	mov		element, [source]			; do { element = source[0]
		cmp		[target - bytes], element	;     if (target[-1] != element)
		je		@f							;     {
		mov		[target], element			;         target[0] = element
		add		target, bytes				;         target++ }
@@:		add		source, bytes				;     source++
		sub		size, 1						;     size--
		jnz		.loop						; } while (size)
;---[Adjusting size of unique array]-------
.skip:	sub		target, array				; target -= array
		shr		target, scale
		add		target, size				; target += size
		ret									; return target
}
Unique8:	UNIQUE	dl, 0
Unique16:	UNIQUE	dx, 1
Unique32:	UNIQUE	edx, 2
Unique64:	UNIQUE	rdx, 3

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
