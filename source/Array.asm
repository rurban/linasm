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
public	Copy8					as	'Array_Copy_uint8'
public	Copy16					as	'Array_Copy_uint16'
public	Copy32					as	'Array_Copy_uint32'
public	Copy64					as	'Array_Copy_uint64'
public	Copy8					as	'_ZN5Array4CopyEPhPKhm'
public	Copy16					as	'_ZN5Array4CopyEPtPKtm'
public	Copy32					as	'_ZN5Array4CopyEPjPKjm'
public	Copy64					as	'_ZN5Array4CopyEPyPKym'

; Signed integer types
public	Copy8					as	'Array_Copy_sint8'
public	Copy16					as	'Array_Copy_sint16'
public	Copy32					as	'Array_Copy_sint32'
public	Copy64					as	'Array_Copy_sint64'
public	Copy8					as	'_ZN5Array4CopyEPaPKam'
public	Copy16					as	'_ZN5Array4CopyEPsPKsm'
public	Copy32					as	'_ZN5Array4CopyEPiPKim'
public	Copy64					as	'_ZN5Array4CopyEPxPKxm'

; Floating-point types
public	Copy32					as	'Array_Copy_flt32'
public	Copy64					as	'Array_Copy_flt64'
public	Copy32					as	'_ZN5Array4CopyEPfPKfm'
public	Copy64					as	'_ZN5Array4CopyEPdPKdm'

; Other types
public	Copy64					as	'Array_Copy_size'
public	Copy8					as	'Array_Copy'
public	Copy64					as	'_ZN5Array4CopyEPmPKmm'
public	Copy8					as	'_ZN5Array4CopyEPvPKvm'

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
public	ConvertFlt_flt32		as	'Array_Convert_flt32_flt64'
public	ConvertFlt_flt64		as	'Array_Convert_flt64_flt32'
public	ConvertFlt_flt32		as	'_ZN5Array7ConvertEPfPKdm'
public	ConvertFlt_flt64		as	'_ZN5Array7ConvertEPdPKfm'

; Conversion from signed integer to floating-point
public	ConvertInt_flt32		as	'Array_Convert_flt32_sint32'
public	ConvertInt_flt64		as	'Array_Convert_flt64_sint32'
public	ConvertInt_flt32		as	'_ZN5Array7ConvertEPfPKim'
public	ConvertInt_flt64		as	'_ZN5Array7ConvertEPdPKim'

; Conversion from floating-point to signed integer
public	Convert_flt32			as	'Array_Convert_sint32_flt32'
public	Convert_flt64			as	'Array_Convert_sint32_flt64'
public	Convert_flt32			as	'_ZN5Array7ConvertEPiPKfm'
public	Convert_flt64			as	'_ZN5Array7ConvertEPiPKdm'

; Truncating from floating-point to signed integer
public	Truncate_flt32			as	'Array_Truncate_sint32_flt32'
public	Truncate_flt32			as	'Array_Truncate_sint32_flt64'
public	Truncate_flt32			as	'_ZN5Array8TruncateEPiPKfm'
public	Truncate_flt64			as	'_ZN5Array8TruncateEPiPKdm'

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

; Unsigned integer types
public	And8					as	'Array_And_uint8'
public	And16					as	'Array_And_uint16'
public	And32					as	'Array_And_uint32'
public	And64					as	'Array_And_uint64'
public	And8					as	'_ZN5Array3AndEPhPKhm'
public	And16					as	'_ZN5Array3AndEPtPKtm'
public	And32					as	'_ZN5Array3AndEPjPKjm'
public	And64					as	'_ZN5Array3AndEPyPKym'

; Signed integer types
public	And8					as	'Array_And_sint8'
public	And16					as	'Array_And_sint16'
public	And32					as	'Array_And_sint32'
public	And64					as	'Array_And_sint64'
public	And8					as	'_ZN5Array3AndEPaPKam'
public	And16					as	'_ZN5Array3AndEPsPKsm'
public	And32					as	'_ZN5Array3AndEPiPKim'
public	And64					as	'_ZN5Array3AndEPxPKxm'

;==============================================================================;
;       Bitwise OR                                                             ;
;==============================================================================;

; Unsigned integer types
public	Or8						as	'Array_Or_uint8'
public	Or16					as	'Array_Or_uint16'
public	Or32					as	'Array_Or_uint32'
public	Or64					as	'Array_Or_uint64'
public	Or8						as	'_ZN5Array2OrEPhPKhm'
public	Or16					as	'_ZN5Array2OrEPtPKtm'
public	Or32					as	'_ZN5Array2OrEPjPKjm'
public	Or64					as	'_ZN5Array2OrEPyPKym'

; Signed integer types
public	Or8						as	'Array_Or_sint8'
public	Or16					as	'Array_Or_sint16'
public	Or32					as	'Array_Or_sint32'
public	Or64					as	'Array_Or_sint64'
public	Or8						as	'_ZN5Array2OrEPaPKam'
public	Or16					as	'_ZN5Array2OrEPsPKsm'
public	Or32					as	'_ZN5Array2OrEPiPKim'
public	Or64					as	'_ZN5Array2OrEPxPKxm'

;==============================================================================;
;       Bitwise XOR                                                            ;
;==============================================================================;

; Unsigned integer types
public	Xor8					as	'Array_Xor_uint8'
public	Xor16					as	'Array_Xor_uint16'
public	Xor32					as	'Array_Xor_uint32'
public	Xor64					as	'Array_Xor_uint64'
public	Xor8					as	'_ZN5Array3XorEPhPKhm'
public	Xor16					as	'_ZN5Array3XorEPtPKtm'
public	Xor32					as	'_ZN5Array3XorEPjPKjm'
public	Xor64					as	'_ZN5Array3XorEPyPKym'

; Signed integer types
public	Xor8					as	'Array_Xor_sint8'
public	Xor16					as	'Array_Xor_sint16'
public	Xor32					as	'Array_Xor_sint32'
public	Xor64					as	'Array_Xor_sint64'
public	Xor8					as	'_ZN5Array3XorEPaPKam'
public	Xor16					as	'_ZN5Array3XorEPsPKsm'
public	Xor32					as	'_ZN5Array3XorEPiPKim'
public	Xor64					as	'_ZN5Array3XorEPxPKxm'

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
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for NAN values                                                   ;
;==============================================================================;
public	HasNAN_flt32			as	'Array_HasNAN_flt32'
public	HasNAN_flt64			as	'Array_HasNAN_flt64'
public	HasNAN_flt32			as	'_ZN5Array6HasNANEPKfm'
public	HasNAN_flt64			as	'_ZN5Array6HasNANEPKdm'

;==============================================================================;
;       Check for overlap                                                      ;
;==============================================================================;

; Unsigned integer types
public	Intersect8				as	'Array_Overlap_uint8'
public	Intersect16				as	'Array_Overlap_uint16'
public	Intersect32				as	'Array_Overlap_uint32'
public	Intersect64				as	'Array_Overlap_uint64'
public	Intersect8				as	'_ZN5Array9IntersectEPKhmS1_m'
public	Intersect16				as	'_ZN5Array9IntersectEPKtmS1_m'
public	Intersect32				as	'_ZN5Array9IntersectEPKjmS1_m'
public	Intersect64				as	'_ZN5Array9IntersectEPKymS1_m'

; Signed integer types
public	Intersect8				as	'Array_Overlap_sint8'
public	Intersect16				as	'Array_Overlap_sint16'
public	Intersect32				as	'Array_Overlap_sint32'
public	Intersect64				as	'Array_Overlap_sint64'
public	Intersect8				as	'_ZN5Array9IntersectEPKamS1_m'
public	Intersect16				as	'_ZN5Array9IntersectEPKsmS1_m'
public	Intersect32				as	'_ZN5Array9IntersectEPKimS1_m'
public	Intersect64				as	'_ZN5Array9IntersectEPKxmS1_m'

; Floating-point types
public	Intersect32				as	'Array_Overlap_flt32'
public	Intersect64				as	'Array_Overlap_flt64'
public	Intersect32				as	'_ZN5Array9IntersectEPKfmS1_m'
public	Intersect64				as	'_ZN5Array9IntersectEPKdmS1_m'

; Other types
public	Intersect64				as	'Array_Overlap_size'
public	Intersect64				as	'_ZN5Array9IntersectEPKmmS1_m'

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
public	FindFwdWr8				as	'Array_FindFwd_uint8'
public	FindFwdWr16				as	'Array_FindFwd_uint16'
public	FindFwdWr32				as	'Array_FindFwd_uint32'
public	FindFwdWr64				as	'Array_FindFwd_uint64'
public	FindFwdRo8				as	'Array_FindFwdc_uint8'
public	FindFwdRo16				as	'Array_FindFwdc_uint16'
public	FindFwdRo32				as	'Array_FindFwdc_uint32'
public	FindFwdRo64				as	'Array_FindFwdc_uint64'
public	FindFwdWr8				as	'_ZN5Array7FindFwdEPhmh'
public	FindFwdWr16				as	'_ZN5Array7FindFwdEPtmt'
public	FindFwdWr32				as	'_ZN5Array7FindFwdEPjmj'
public	FindFwdWr64				as	'_ZN5Array7FindFwdEPymy'
public	FindFwdRo8				as	'_ZN5Array7FindFwdEPKhmh'
public	FindFwdRo16				as	'_ZN5Array7FindFwdEPKtmt'
public	FindFwdRo32				as	'_ZN5Array7FindFwdEPKjmj'
public	FindFwdRo64				as	'_ZN5Array7FindFwdEPKymy'

; Signed integer types
public	FindFwdWr8				as	'Array_FindFwd_sint8'
public	FindFwdWr16				as	'Array_FindFwd_sint16'
public	FindFwdWr32				as	'Array_FindFwd_sint32'
public	FindFwdWr64				as	'Array_FindFwd_sint64'
public	FindFwdRo8				as	'Array_FindFwdc_sint8'
public	FindFwdRo16				as	'Array_FindFwdc_sint16'
public	FindFwdRo32				as	'Array_FindFwdc_sint32'
public	FindFwdRo64				as	'Array_FindFwdc_sint64'
public	FindFwdWr8				as	'_ZN5Array7FindFwdEPama'
public	FindFwdWr16				as	'_ZN5Array7FindFwdEPsms'
public	FindFwdWr32				as	'_ZN5Array7FindFwdEPimi'
public	FindFwdWr64				as	'_ZN5Array7FindFwdEPxmx'
public	FindFwdRo8				as	'_ZN5Array7FindFwdEPKama'
public	FindFwdRo16				as	'_ZN5Array7FindFwdEPKsms'
public	FindFwdRo32				as	'_ZN5Array7FindFwdEPKimi'
public	FindFwdRo64				as	'_ZN5Array7FindFwdEPKxmx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	FindBwdWr8				as	'Array_FindBwd_uint8'
public	FindBwdWr16				as	'Array_FindBwd_uint16'
public	FindBwdWr32				as	'Array_FindBwd_uint32'
public	FindBwdWr64				as	'Array_FindBwd_uint64'
public	FindBwdRo8				as	'Array_FindBwdc_uint8'
public	FindBwdRo16				as	'Array_FindBwdc_uint16'
public	FindBwdRo32				as	'Array_FindBwdc_uint32'
public	FindBwdRo64				as	'Array_FindBwdc_uint64'
public	FindBwdWr8				as	'_ZN5Array7FindBwdEPhmh'
public	FindBwdWr16				as	'_ZN5Array7FindBwdEPtmt'
public	FindBwdWr32				as	'_ZN5Array7FindBwdEPjmj'
public	FindBwdWr64				as	'_ZN5Array7FindBwdEPymy'
public	FindBwdRo8				as	'_ZN5Array7FindBwdEPKhmh'
public	FindBwdRo16				as	'_ZN5Array7FindBwdEPKtmt'
public	FindBwdRo32				as	'_ZN5Array7FindBwdEPKjmj'
public	FindBwdRo64				as	'_ZN5Array7FindBwdEPKymy'

; Signed integer types
public	FindBwdWr8				as	'Array_FindBwd_sint8'
public	FindBwdWr16				as	'Array_FindBwd_sint16'
public	FindBwdWr32				as	'Array_FindBwd_sint32'
public	FindBwdWr64				as	'Array_FindBwd_sint64'
public	FindBwdRo8				as	'Array_FindBwdc_sint8'
public	FindBwdRo16				as	'Array_FindBwdc_sint16'
public	FindBwdRo32				as	'Array_FindBwdc_sint32'
public	FindBwdRo64				as	'Array_FindBwdc_sint64'
public	FindBwdWr8				as	'_ZN5Array7FindBwdEPama'
public	FindBwdWr16				as	'_ZN5Array7FindBwdEPsms'
public	FindBwdWr32				as	'_ZN5Array7FindBwdEPimi'
public	FindBwdWr64				as	'_ZN5Array7FindBwdEPxmx'
public	FindBwdRo8				as	'_ZN5Array7FindBwdEPKama'
public	FindBwdRo16				as	'_ZN5Array7FindBwdEPKsms'
public	FindBwdRo32				as	'_ZN5Array7FindBwdEPKimi'
public	FindBwdRo64				as	'_ZN5Array7FindBwdEPKxmx'

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
NOT_FOUND	= -1							; Pattern is not found

; flt32_t
DMASK_FLT32	= 0x7FFFFFFF					; data mask and NaN value
SMASK_FLT32	= 0x80000000					; sign mask
PINF_FLT32	= 0x7F800000					; +inf
MINF_FLT32	= 0xFF800000					; -inf

; flt64_t
DMASK_FLT64	= 0x7FFFFFFFFFFFFFFF			; data mask and NaN value
SMASK_FLT64	= 0x8000000000000000			; sign mask
PINF_FLT64	= 0x7FF0000000000000			; +inf
MINF_FLT64	= 0xFFF0000000000000			; -inf

;******************************************************************************;
;       Clone value through the entire register                                ;
;******************************************************************************;
macro	clone	reg, scale
{
if scale < 1
	punpcklbw	reg, reg
end if
if scale < 2
	punpcklwd	reg, reg
end if
if scale < 3
	punpckldq	reg, reg
end if
	punpcklqdq	reg, reg
}

;******************************************************************************;
;       Scalar sum of values inside the entire register                        ;
;******************************************************************************;
macro	summa	reg, x
{
if x eq s
		haddp#x	reg, reg
end if
		haddp#x	reg, reg
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
		mov		[array], temp2				; array[0] = temp2
		mov		[ptr], temp1				; ptr[0] = temp1
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
temp	equ		xmm0						; temporary register for vector loop
bytes	= 1 shl scale						; size of array element (bytes)
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
		movq	temp, reg					; temp = value
		clone	temp, scale					; duplicate value through the entire register
;---[Vector loop]--------------------------
.vloop:	movdqu	[array], temp				; array[0] = temp
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; go to exit from the procedure
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
value	equ		xmm0						; value to initialize array
;---[Internal variables]-------------------
if x eq s
bytes	= 4									; array element size (bytes)
else
bytes	= 8									; array element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
		shufp#x	value, value, 0x0			; duplicate value through the entire register
;---[Vector loop]--------------------------
.vloop:	movup#x	[array], value				; array[0] = value
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop							; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; go to exit from the procedure
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
macro	COPY	temp, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ 	rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
value	equ		xmm0						; temporary register
bytes	= 1 shl scale						; size of array element (bytes)
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	lddqu	value, [source]				; value = source[0]
		movdqu	[target], value				; target[0] = value
		add		source, 16					; source++
		add		target, 16					; target++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	mov		temp, [source]				; temp = source[0]
		mov		[target], temp				; target[0] = temp
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
Copy8:	COPY	al, 0
Copy16:	COPY	ax, 1
Copy32:	COPY	eax, 2
Copy64:	COPY	rax, 3

;******************************************************************************;
;       Moving                                                                 ;
;******************************************************************************;
macro	MOVE	temp, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ 	rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
value	equ		xmm0						; temporary register
bytes	= 1 shl scale						; size of array element (bytes)
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		cmp		target, source
		je		.exit						; if (target == source), then exit
		ja		.bkwrd						; if (target > source), then go to backward branch
;---[Copy array in forward direction]------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	lddqu	value, [source]				; value = source[0]
		movdqu	[target], value				; target[0] = value
		add		source, 16					; source++
		add		target, 16					; target++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	mov		temp, [source]				; temp = source[0]
		mov		[target], temp				; target[0] = temp
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
		ret
;---[Copy array in backward direction]-----
.bkwrd	lea		source, [source+size*bytes]	; source += size
		lea		target, [source+size*bytes]	; target += size
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	sub		source, 16					; source--
		sub		target, 16					; target--
		lddqu	value, [source]				; value = source[0]
		movdqu	[target], value				; target[0] = value
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	sub		source, bytes				; source--
		sub		target, bytes				; target--
		mov		temp, [source]				; temp = source[0]
		mov		[target], temp				; target[0] = temp
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
Move8:	COPY	al, 0
Move16:	COPY	ax, 1
Move32:	COPY	eax, 2
Move64:	COPY	rax, 3

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
value	equ		xmm0						; temporary register
ptr		equ 	psize						; pointer to first element after pattern
bytes	= 1 shl scale						; size of array element (bytes)
step	= 16 / bytes						; step size (in bytes)
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
macro	CONVERT	cmd1, cmd2, mov1, mov2, mov3, temp, bytes1, bytes2
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ 	rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
value	equ		xmm0						; value to process with
if bytes1 >= bytes2
step	= 16 / bytes1						; step size (in bytes)
else
step	= 16 / bytes2						; step size (in bytes)
end if
step1	= bytes1 * step						; step size for source array
step2	= bytes2 * step						; step size for target array
;------------------------------------------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	mov1	value, [source]				; value = source[0]
		cmd1	value, value				; value = convert (value)
		mov2	[target], value				; target[0] = value
		add		source, step1				; source++
		add		target, step2				; target++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	cmd2	temp, [source]				; temp = convert (source[0])
		mov3	[target], temp				; target[0] = temp
		add		source, bytes1				; source++
		add		target, bytes2				; target++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}

; Conversion between floating-point types
ConvertFlt_flt32:	CONVERT	cvtpd2ps, cvtsd2ss, movupd, movlps, movss, xmm0, 8, 4
ConvertFlt_flt64:	CONVERT	cvtps2pd, cvtss2sd, movlps, movupd, movsd, xmm0, 4, 8

; Conversion from signed integer to floating-point
ConvertInt_flt32:	CONVERT	cvtdq2ps, cvtsi2ss, movdqu, movups, movss, xmm0, 4, 4
ConvertInt_flt64:	CONVERT	cvtdq2pd, cvtsi2sd, movq, movupd, movsd, xmm0, 8, 4

; Conversion from floating-point to signed integer
Convert_flt32:	CONVERT	cvtps2dq, cvtss2si, movups, movdqu, mov, eax, 4, 4
Convert_flt64:	CONVERT	cvtpd2dq, cvtsd2si, movupd, movq, mov, rax, 8, 4

; Truncating from floating-point to signed integer
Truncate_flt32:	CONVERT	cvttps2dq, cvttss2si, movups, movdqu, mov, eax, 4, 4
Truncate_flt64:	CONVERT	cvttpd2dq, cvttsd2si, movupd, movq, mov, rax, 8, 4

;******************************************************************************;
;       Bitwise operations                                                     ;
;******************************************************************************;

;==============================================================================;
;       Bitwise NOT                                                            ;
;==============================================================================;
macro	NOT	scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
treg	equ		eax							; temporary register to init xmm reg
temp	equ		xmm0						; temporary register
mask	equ		xmm1						; bit mask
bytes	= 1 shl scale						; size of array element (bytes)
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
		initreg	mask, treg, 0xFFFFFFFF, 4	; mask = 111...111
		pshufd	mask, mask, 0x0				; duplicate mask through the entire register
;---[Vector loop]--------------------------
.vloop:	movdqu	temp, [array]				; temp = array[0]
		pandn	temp, mask					; temp = ~temp
		movdqu	[array], temp				; array[0] = temp
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
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
macro	BIT	cmd1, cmd2, temp, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ 	rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
temp1	equ		xmm0						; temporary register #1
temp2	equ		xmm1						; temporary register #2
bytes	= 1 shl scale						; size of array element (bytes)
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	movdqu	temp1, [source]				; temp1 = source[0]
		movdqu	temp2, [target]				; temp2 = target[0]
		cmd1	temp2, temp1				; temp2 = temp2 cmd temp1
		movdqu	[target], temp2				; target[0] = temp2
		add		source, 16					; source++
		add		target, 16					; target++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	mov		temp, [source]				; temp = source[0]
		cmd2	[target], temp				; target = target cmd temp
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
And8:	BIT	pand, and, al, 0
And16:	BIT	pand, and, ax, 1
And32:	BIT	pand, and, eax, 2
And64:	BIT	pand, and, rax, 3

;==============================================================================;
;       Bitwise OR                                                             ;
;==============================================================================;
Or8:	BIT	por, or, al, 0
Or16:	BIT	por, or, ax, 1
Or32:	BIT	por, or, eax, 2
Or64:	BIT	por, or, rax, 3

;==============================================================================;
;       Bitwise XOR                                                            ;
;==============================================================================;
Xor8:	BIT	pxor, xor, al, 0
Xor16:	BIT	pxor, xor, ax, 1
Xor32:	BIT	pxor, xor, eax, 2
Xor64:	BIT	pxor, xor, rax, 3

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unitary operations                                                     ;
;==============================================================================;
macro	SIGN	treg, negative, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
temp	equ		xmm0						; temp value
mask	equ		xmm1						; bit mask to apply to all elements
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
bytes	= 4									; array element size (bytes)
else
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
bytes	= 8									; array element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
if negative
		initreg	mask, treg, smask, bytes	; mask = smask
else
		initreg	mask, treg, dmask, bytes	; mask = dmask
end if
		shufp#x	mask, mask, 0x0				; duplicate mask through the entire register
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	movup#x	temp, [array]				; temp = array[0]
if negative
		xorp#x	temp, mask					; temp ^= mask
else
		andp#x	temp, mask					; temp &= mask
end if
		movup#x	[array], temp				; array[0] = temp
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
if negative
		xorp#x	temp, mask					; temp ^= mask
else
		andp#x	temp, mask					; temp &= mask
end if
		movs#x	[array], temp				; array[0] = temp
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SQR		op1, op2, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
temp	equ		xmm0						; temp value
if x eq s
bytes	= 4									; array element size (bytes)
else
bytes	= 8									; array element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	movup#x	temp, [array]				; temp = array[0]
		op1#x	temp, temp					; do operation to temp value
		movup#x	[array], temp				; array[0] = temp
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		op2#x	temp, temp					; do operation to temp value
		movs#x	[array], temp				; array[0] = temp
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}

; Negative value
Neg_flt32:		SIGN	eax, 1, s
Neg_flt64:		SIGN	rax, 1, d

; Absolute value
Abs_flt32:		SIGN	eax, 0, s
Abs_flt64:		SIGN	rax, 0, d

; Square
Sqr_flt32:		SQR		mulp, muls, s
Sqr_flt64:		SQR		mulp, muls, d

; Square root
Sqrt_flt32:		SQR		sqrtp, sqrts, s
Sqrt_flt64:		SQR		sqrtp, sqrts, d

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
temp	equ		xmm1						; temp value
if x eq s
bytes	= 4									; array element size (bytes)
else
bytes	= 8									; array element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
		shufp#x	value, value, 0x0			; duplicate value through the entire register
;---[Vector loop]--------------------------
.vloop:	movup#x	temp, [array]				; temp = array[0]
		op#p#x	temp, value					; do operation to temp value
		movup#x	[array], temp				; array[0] = temp
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		op#s#x	temp, value					; do operation to temp value
		movs#x	[array], temp				; array[0] = temp
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
source	equ 	rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
value	equ		xmm0						; value to process with
temp	equ		xmm1						; temp value
if x eq s
bytes	= 4									; array element size (bytes)
else
bytes	= 8									; array element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	movup#x	value, [source]				; value = source[0]
		movup#x	temp, [target]				; temp = target[0]
		op#p#x	temp, value					; do operation to temp value
		movup#x	[target], temp				; target[0] = temp
		add		source, 16					; source++
		add		target, 16					; target++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [target]				; temp = target[0]
		op#s#x	temp, [source]				; do operation to temp value
		movs#x	[target], temp				; target[0] = temp
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

;==============================================================================;
;       Sum of elements                                                        ;
;==============================================================================;
macro	SUM		x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
sum		equ		xmm0						; result sum
temp	equ		xmm1						; temp value
if x eq s
bytes	= 4									; array element size (bytes)
else
bytes	= 8									; array element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		xorp#x	sum, sum					; sum = 0
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	movup#x	temp, [array]				; temp = array[0]
		addp#x	sum, temp					; sum += temp
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
		summa	sum, x						; get all parallel sums
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	adds#x	sum, [array]				; sum += array[0]
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
Sum_flt32:	SUM		s
Sum_flt64:	SUM		d

;==============================================================================;
;       Sum of squares                                                         ;
;==============================================================================;
macro	SUM_SQR		x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
sum		equ		xmm0						; result sum
temp	equ		xmm1						; temp value
if x eq s
bytes	= 4									; array element size (bytes)
else
bytes	= 8									; array element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		xorp#x	sum, sum					; sum = 0
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	movup#x	temp, [array]				; temp = array[0]
		mulp#x	temp, temp					; temp *= temp
		addp#x	sum, temp					; sum += temp
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
		summa	sum, x						; get all parallel sums
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		muls#x	temp, temp					; temp *= temp
		adds#x	sum, temp					; sum += temp
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
SumSqr_flt32:	SUM_SQR	s
SumSqr_flt64:	SUM_SQR	d

;==============================================================================;
;       Sum of multiplied elements                                             ;
;==============================================================================;
macro	SUM_MUL		x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
sum		equ		xmm0						; result sum
temp1	equ		xmm1						; temp1 value
temp2	equ		xmm2						; temp2 value
if x eq s
bytes	= 4									; array element size (bytes)
else
bytes	= 8									; array element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		xorp#x	sum, sum					; sum = 0
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	movup#x	temp1, [array1]				; temp1 = array1[0]
		movup#x	temp2, [array2]				; temp2 = array2[0]
		mulp#x	temp1, temp2				; temp1 *= temp2
		addp#x	sum, temp1					; sum += temp1
		add		array1, 16					; array1++
		add		array2, 16					; array2++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
		summa	sum, x						; get all parallel sums
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp1, [array1]				; temp1 = array1[0]
		muls#x	temp1, [array2]				; temp1 *= array2[0]
		adds#x	sum, temp1					; sum += temp1
		add		array1, bytes				; array1++
		add		array2, bytes				; array2++
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
result	equ		xmm0						; result value
temp	equ		xmm1						; temporary value
accum	equ		xmm2						; checks accumulator
mask	equ		xmm3						; bit mask
cmask	equ		eax							; masks of comparison results
if x eq s
dmask	= DMASK_FLT32						; data mask
bytes	= 4									; array element size (bytes)
else
dmask	= DMASK_FLT64						; data mask
bytes	= 8									; array element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		initreg	result, treg, value, bytes	; result = value
		initreg	mask, treg, dmask, bytes	; mask = dmask
		shufp#x	result, result, 0x0			; duplicate value through the entire register
		shufp#x	mask, mask, 0x0				; duplicate mask through the entire register
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
		xorp#x	accum, accum				; accum = 0
;---[Vector loop]--------------------------
.vloop:	movup#x	temp, [array]				; temp = array[0]
		cmpp#x	accum, temp, 3				; check values for NANs
	movmskp#x	cmask, accum				; save compare result to cmask
		test	cmask, cmask				; if NAN is detected,
		jnz		.nan						;     then go to NaN detected branch
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#p#x	result, temp				; find min or max values
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
if x eq s
		movhlps	temp, result				; temp = upper half of result
		op#p#x	result, temp				; find min or max values
end if
		movap#x	temp, result				; temp = result
		shufp#x	temp, temp, 0x1				; shuffle values in temp register
		op#s#x	result, temp				; find min or max value
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		comis#x	temp, temp					; check value for NAN
		jp		.nan						; if NAN is detected, then break the loop
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#s#x	result, temp				; find min or max value
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
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for NAN values                                                   ;
;==============================================================================;
macro	HAS_NAN	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
result	equ		al							; result register
cmask	equ		eax							; masks of comparison results
temp	equ		xmm0						; temporary value
if x eq s
bytes	= 4									; array element size (bytes)
else
bytes	= 8									; array element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
;---[Vector loop]--------------------------
.vloop:	movup#x	temp, [array]				; temp = array[0]
		cmpp#x	temp, temp, 3				; check values for NANs
	movmskp#x	cmask, temp					; save compare result to mask
		test	cmask, cmask				; if NAN is detected,
		jnz		.nan						;     then go to NaN detected branch
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; If no scalar code is required, then exit
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		comis#x	temp, temp					; check value for NAN
		jp		.nan						; if NAN is detected, then break the loop
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit branch]-------------------
.exit:	xor		result, result				; return false (do normal exit)
		ret
;---[NaN detected branch]------------------
.nan:	mov		result, 1					; return true (NaN is detected)
		ret
}
HasNAN_flt32:	HAS_NAN	s
HasNAN_flt64:	HAS_NAN	d

;==============================================================================;
;       Check for overlap                                                      ;
;==============================================================================;
macro	INTERSECT	scale
{
;---[Parameters]---------------------------
target	equ 	rdi							; pointer to target array
t_size	equ		rsi							; target array size
source	equ 	rdx							; pointer to source array
s_size	equ 	rcx							; source array size
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		target, source				; if (target >= source)
		jb		@f
;------------------------------------------
		lea		source, [source+s_size*bytes]; then source += s_size
		cmp		target, source				; return target >= source
		setb	al
		ret
;------------------------------------------
@@:		lea		target, [target+t_size*bytes]; else target += t_size
		cmp		source, target				; return (source >= target)
		setb	al
		ret
}
Intersect8:		INTERSECT	0
Intersect16:	INTERSECT	1
Intersect32:	INTERSECT	2
Intersect64:	INTERSECT	3

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Linear search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_FWD_WR		element, temp, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to current element
last	equ		rsi							; pointer to last element
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						; then go to exit
;---[If size != 0]-------------------------
		lea		ptr, [array - bytes]		; ptr = array - 1
		lea		last, [ptr + size * bytes]	; last = array + size - 1
		mov		temp, [last]				; temp = last[0]
		mov		[last], element				; last[0] = element
;---[Loop]---------------------------------
@@:		add		ptr, bytes					; ptr++
		cmp		element, [ptr]
		jne		@b							; do while (element != ptr[0])
;---[end of loop]--------------------------
		mov		[last], temp				; last = temp
		cmp		element, [ptr]				; if (element == ptr[0])
		jne		.exit						; {
		sub		ptr, array					;     return ptr - array
if scale > 0
		shr		ptr, scale					; }
end if
		ret
;---[Not found]----------------------------
.exit:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_FWD_RO		element, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to current element
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		mov		ptr, array					; ptr = array
		test	size, size					; if (size)
		jmp		@f
;---[Loop]---------------------------------
.loop:	cmp		element, [ptr]				; if (element == ptr[0])
		je		.exit						; then element is found
		add		ptr, bytes					; ptr++
		sub		size, 1						; size--
@@:		jnz		.loop						; do while (size != 0)
;------------------------------------------
		mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
;------------------------------------------
.exit:	sub		ptr, array					; return ptr - array
if scale > 0
		shr		ptr, scale
end if
		ret
}

; Writable memory
FindFwdWr8:		FIND_FWD_WR		dl, cl, 0
FindFwdWr16:	FIND_FWD_WR		dx, cx, 1
FindFwdWr32:	FIND_FWD_WR		edx, ecx, 2
FindFwdWr64:	FIND_FWD_WR		rdx, rcx, 3

; Read only memory
FindFwdRo8:		FIND_FWD_RO		dl, 0
FindFwdRo16:	FIND_FWD_RO		dx, 1
FindFwdRo32:	FIND_FWD_RO		edx, 2
FindFwdRo64:	FIND_FWD_RO		rdx, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_BWD_WR		element, temp, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to current element
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						; then go to exit
;---[If size != 0]-------------------------
		lea		ptr, [array + size * bytes]	; ptr = array + size
		mov		temp, [array]				; temp = array[0]
		mov		[array], element			; array[0] = element
;---[Loop]---------------------------------
@@:		sub		ptr, bytes					; ptr--
		cmp		element, [ptr]
		jne		@b							; do while (element != ptr[0])
;---[end of loop]--------------------------
		mov		[array], temp				; array[0] = temp
		cmp		element, [ptr]				; if (element == ptr[0])
		jne		.exit						; {
		sub		ptr, array					;     return ptr - array
if scale > 0
		shr		ptr, scale					; }
end if
		ret
;---[Not found]----------------------------
.exit:	mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FIND_BWD_RO		element, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to current element
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		lea		ptr, [array + size * bytes]	; ptr = array + size
		test	size, size					; if (size)
		jmp		@f
;---[Loop]---------------------------------
.loop:	sub		ptr, bytes					; ptr--
		cmp		element, [ptr]				; if (element == ptr[0])
		je		.exit						; then element is found
		sub		size, 1						; size--
@@:		jnz		.loop						; do while (size != 0)
;---[end of loop]--------------------------
		mov		ptr, NOT_FOUND				; return NOT_FOUND
		ret
;------------------------------------------
.exit:	sub		ptr, array					; return ptr - array
if scale > 0
		shr		ptr, scale
end if
		ret
}

; Writable memory
FindBwdWr8:		FIND_BWD_WR		dl, cl, 0
FindBwdWr16:	FIND_BWD_WR		dx, cx, 1
FindBwdWr32:	FIND_BWD_WR		edx, ecx, 2
FindBwdWr64:	FIND_BWD_WR		rdx, rcx, 3

; Read only memory
FindBwdRo8:		FIND_BWD_RO		dl, 0
FindBwdRo16:	FIND_BWD_RO		dx, 1
FindBwdRo32:	FIND_BWD_RO		edx, 2
FindBwdRo64:	FIND_BWD_RO		rdx, 3

;==============================================================================;
;       Binary search                                                          ;
;==============================================================================;
macro	FIND_BIN	element, op, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
left	equ		rax							; pointer to start of the data array
right	equ		size						; pointer to end of the data array
median	equ		rcx							; pointer to median element of the data array
medianl	equ		cl							; lower part of median pointer
temp	equ		r8							; temporary variable
templ	equ		r8b							; lower part of temporary variable
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.ntfnd						; then go to not found branch
;---[If size != 0]-------------------------
		mov		left, array					; left = array
		sub		size, 1						; if (--size == 0)
		jz		.skip						; then skip searching
;---[If --size != 0]-----------------------
		shl		size, scale
		add		right, array				; right = array + size
		xor		temp, temp					; temp = 0
		mov		median, right
		sub		median, left
;---[Loop]---------------------------------
@@:		shr		median, 1					; {
if scale > 1
		and		medianl, -bytes
end if
		add		median, left				; median = left + (right - left) / 2
		cmp		element, [median]			; if (element condition median[0])
		set#op	templ						;     left = median + 1
		cmov#op	left, median				; else
	cmovn#op	right, median				;     right = median
if scale < 4
		lea		left, [left + temp * bytes]
else
		shl		temp, scale
		add		left, temp
end if
		mov		median, right
		sub		median, left
		ja		@b							; } do while (right > left)
;---[end of loop]--------------------------
.skip:	cmp		element, [left]				; if (element == left[0])
		jne		.ntfnd						; {
		sub		left, array					;     return left - array
if scale > 0
		shr		left, scale					; }
end if
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
macro	REPLACE	pattern, val, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		rcx							; value that replace pattern
;---[Internal variables]-------------------
temp	equ		rax							; temporary register to hold element value
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						; then go to exit
;---[Loop]---------------------------------
@@:		mov		val, [array]				; val = array[0]
		cmp		val, pattern				; if (val == pattern)
		cmove	temp, value					;     val = value
		mov		[array], val				; array[0] = val
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
.exit:	ret
}
Replace8:	REPLACE		dl, al, 0
Replace16:	REPLACE		dx, ax, 1
Replace32:	REPLACE		edx, eax, 2
Replace64:	REPLACE		rdx, rax, 3

;******************************************************************************;
;       Sorting algorithms                                                     ;
;******************************************************************************;

;==============================================================================;
;       Mapping floating-point values to signed integer values                 ;
;==============================================================================;
macro	MAP	val, treg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
value	equ		xmm0						; value of array element
temp	equ		xmm1						; temporary register
temp1	equ		xmm2						; temporary register to hold 1
temp2	equ		xmm3						; temporary register to hold mask
if x eq s
dmask	= DMASK_FLT32						; data mask
bytes	= 4									; array element size (bytes)
else
dmask	= DMASK_FLT64						; data mask
bytes	= 8									; array element size (bytes)
end if
step	= 16 / bytes						; step size (in bytes)
;------------------------------------------
		sub		size, step					; size -= step
		jb		.sclr						; if (size < step) then skip vector code
		initreg	temp1, treg, 1, bytes		; temp1 = 1
		initreg	temp2, treg, dmask, bytes	; temp2 = dmask
		shufp#x	temp1, temp1, 0x0			; duplicate 1 through the entire register
		shufp#x	temp2, temp2, 0x0			; duplicate mask through the entire register
;---[Vector loop]--------------------------
.vloop:	movdqu	value, [array]				; value = array[0]
		movdqa	temp, value					; temp = value
if x eq s
		psrld	temp, bytes * 8 - 1			; temp >>= sizeof (type) - 1
		psubd	temp, temp1					; temp -= 1
else
		psrlq	temp, bytes * 8 - 1			; temp >>= sizeof (type) - 1
		psubq	temp, temp1					; temp -= 1
end if
		pandn	temp, temp2					; temp = !temp & mask
		pxor	value, temp					; value ^= temp
		movdqu	[array], value				; array[0] = value
		add		array, 16					; array++
		sub		size, step					; size -= step
		jae		.vloop						; do while (size >= step)
;------------------------------------------
.sclr:	add		size, step					; size += step
		jz		.exit						; go to exit from the procedure
;---[Scalar loop]--------------------------
.sloop:	mov		val, [array]				; val = array[0]
		sar		val, bytes * 8 - 2			; val >>= sizeof (type) - 2
		shr		val, 1						; val >>= 1
		xor		[array], val				; array[0] ^= val
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.sloop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
Map_flt32:	MAP	eax, edx, s
Map_flt64:	MAP	rax, rdx, d
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MAP_KEY	temp, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size, size					; If size = 0
		jz		.exit						; then go to exit
;---[Loop]---------------------------------
@@:		mov		temp, [array]				; temp = array[0]
		sar		temp, bytes * 8 - 2			; temp >>= sizeof (type) - 2
		shr		temp, 1						; temp >>= 1
		xor		[array], temp				; array[0] ^= temp
		add		array, 16					; array++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
.exit:	ret
}
MapKey_flt32:	MAP_KEY	eax, 2
MapKey_flt64:	MAP_KEY	rax, 3

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
sizel	equ		al							; lower part of size variable
l_ptr	equ		r8							; left pointer to split data array
r_ptr	equ		r9							; right pointer to split data array
l_size	equ		rcx							; size of left part of array
r_size	equ		rdx							; size of right part of array
stack	equ		rsp							; stack pointer
s_ptr1	equ		stack +  0 * 8				; stack position of ptr1
s_ptr2	equ		stack +  1 * 8				; stack position of ptr2
N		= 32								; Max array size aceptable for Insert sort
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;---[QUICK SORT]---------------------------
		jmp		.start
.qloop:	shr		size, 1						; size /= 2
		mov		l_ptr, left					; l_ptr = left
if scale > 1
		and		sizel, -bytes
end if
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
s_array	equ		stack +  0 * 8				; stack position of array variable
s_size	equ		stack +  1 * 8				; stack position of size variable
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
temp	equ		rdx							; temporary register
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
temp	equ		rdx							; temporary register
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
temp	equ		rdx							; temporary register
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
temp	equ		rdx							; temporary register
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
ptr		equ		rcx							; temporarry pointer to stat array
count	equ		rax							; count of vector elements is stat array
key		equ		rax							; key register (is used to compute adress)
keyl	equ		al							; low part of key register
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		pxor	zero, zero					; zero = 0
		mov		ptr, stat					; ptr = stat
		mov		count, 256 * bytes / 2		; calculating count
;---[Stat initialization loop]-------------
@@:		movdqu	[ptr], zero					; ptr[0] = 0
		add		ptr, 16						; ptr++
		sub		count, 1					; count--
		jnz		@b							; do while (count != 0)
;------------------------------------------
		xor		key, key					; clearing key register
;---[Statistics loop]----------------------
@@:
i = 0
while i < bytes
		mov		keyl, [array + i]			; get partial key
		add		qword [stat + i * 256 * 8 + key * 8], step
	i = i + 1
end while
		add		array, step					; move to next partial key
		sub		size, 1						; size--
		jnz		@b							; do while (count != 0)
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
addr	equ		r8							; address where element should be copied
key		equ		rax							; key register (is used to compute adress)
keyl	equ		al							; low part of key register
;------------------------------------------
		xor		key, key					; clearing key register
;---[Sorting loop]-------------------------
@@:		mov		keyl, [array + index]		; get partial key
		cmd		temp, [array]				; temp = aray[0]
		mov		addr, [stat + key * 8]		; addr = stat[key]
		cmd		[addr], temp				; addr[0] = temp
		add		array, step					; array++
		add		qword [stat + key * 8], step; stat[key]++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
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
s_array	equ		stack +  stat_sz + 0 * 8	; stack position of array variable
s_temp	equ		stack +  stat_sz + 1 * 8	; stack position of temp variable
s_size	equ		stack +  stat_sz + 2 * 8	; stack position of size variable
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
		call	Copy8						; call Copy (temp, array, size)
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
s_array	equ		stack +  0 * 8				; stack position of array variable
s_temp	equ		stack +  1 * 8				; stack position of temp array variable
s_size	equ		stack +  2 * 8				; stack position of size variable
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
source	equ 	r8							; pointer to unique source sequnce
step	equ		rcx							; temporary register compute step value
stepl	equ		cl							; low part of step value
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		size, 1						; if (size > 1)
		jbe		.skip						; {
		lea		source, [array + bytes]		;     source = array + 1
		mov		target, array				;     target = array
		xor		step, step					;     size--;
;---[Unique separation loop]---------------
@@:		mov		element, [source]			;     do { element = source[0]
		cmp		[target], element			;         if (target[0] != element)
		setne	stepl						;             target++
		lea		target, [target + step * bytes]
		add		source, bytes				;         source++
		mov		[target], element			;         target[0] = element
		sub		size, 1						;         size--
		jnz		@b							;     } while (size)
;---[Adjusting size of unique array]-------
		sub		target, array				;     target -= array
		shr		target, scale				;     return target + 1
		add		target, 1					; }
		ret
;---[Skip branch]--------------------------
.skip:	lea		target, [size + 1]			; else
		ret									;     return size
}
Unique8:	UNIQUE	dl, 0
Unique16:	UNIQUE	dx, 1
Unique32:	UNIQUE	edx, 2
Unique64:	UNIQUE	rdx, 3

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
