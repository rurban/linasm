;                                                                       Math.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                             FAST MATH FUNCTIONS                             #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2013, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Byte swap                                                              ;
;******************************************************************************;

; Unsigned integer types
public	ByteSwap8			as	'Math_ByteSwap_uint8'
public	ByteSwap16			as	'Math_ByteSwap_uint16'
public	ByteSwap32			as	'Math_ByteSwap_uint32'
public	ByteSwap64			as	'Math_ByteSwap_uint64'
public	ByteSwap8			as	'_ZN4Math8ByteSwapEh'
public	ByteSwap16			as	'_ZN4Math8ByteSwapEt'
public	ByteSwap32			as	'_ZN4Math8ByteSwapEj'
public	ByteSwap64			as	'_ZN4Math8ByteSwapEy'

; Signed integer types
public	ByteSwap8			as	'Math_ByteSwap_sint8'
public	ByteSwap16			as	'Math_ByteSwap_sint16'
public	ByteSwap32			as	'Math_ByteSwap_sint32'
public	ByteSwap64			as	'Math_ByteSwap_sint64'
public	ByteSwap8			as	'_ZN4Math8ByteSwapEa'
public	ByteSwap16			as	'_ZN4Math8ByteSwapEs'
public	ByteSwap32			as	'_ZN4Math8ByteSwapEi'
public	ByteSwap64			as	'_ZN4Math8ByteSwapEx'

;******************************************************************************;
;       Bit-reversal permutation                                               ;
;******************************************************************************;

; Unsigned integer types
public	BitReverse8			as	'Math_BitReverse_uint8'
public	BitReverse16		as	'Math_BitReverse_uint16'
public	BitReverse32		as	'Math_BitReverse_uint32'
public	BitReverse64		as	'Math_BitReverse_uint64'
public	BitReverse8			as	'_ZN4Math10BitReverseEh'
public	BitReverse16		as	'_ZN4Math10BitReverseEt'
public	BitReverse32		as	'_ZN4Math10BitReverseEj'
public	BitReverse64		as	'_ZN4Math10BitReverseEy'

; Signed integer types
public	BitReverse8			as	'Math_BitReverse_sint8'
public	BitReverse16		as	'Math_BitReverse_sint16'
public	BitReverse32		as	'Math_BitReverse_sint32'
public	BitReverse64		as	'Math_BitReverse_sint64'
public	BitReverse8			as	'_ZN4Math10BitReverseEa'
public	BitReverse16		as	'_ZN4Math10BitReverseEs'
public	BitReverse32		as	'_ZN4Math10BitReverseEi'
public	BitReverse64		as	'_ZN4Math10BitReverseEx'

;******************************************************************************;
;       Absolute value                                                         ;
;******************************************************************************;

; Signed integer types
public	Abs_sint8			as	'Math_Abs_sint8'
public	Abs_sint16			as	'Math_Abs_sint16'
public	Abs_sint32			as	'Math_Abs_sint32'
public	Abs_sint64			as	'Math_Abs_sint64'
public	Abs_sint8			as	'_ZN4Math3AbsEa'
public	Abs_sint16			as	'_ZN4Math3AbsEs'
public	Abs_sint32			as	'_ZN4Math3AbsEi'
public	Abs_sint64			as	'_ZN4Math3AbsEx'

; Floating-point types
public	Abs_flt32			as	'Math_Abs_flt32'
public	Abs_flt64			as	'Math_Abs_flt64'
public	Abs_flt32			as	'_ZN4Math3AbsEf'
public	Abs_flt64			as	'_ZN4Math3AbsEd'

;******************************************************************************;
;       Negative absolute value                                                ;
;******************************************************************************;

; Signed integer types
public	NegAbs_sint8		as	'Math_NegAbs_sint8'
public	NegAbs_sint16		as	'Math_NegAbs_sint16'
public	NegAbs_sint32		as	'Math_NegAbs_sint32'
public	NegAbs_sint64		as	'Math_NegAbs_sint64'
public	NegAbs_sint8		as	'_ZN4Math6NegAbsEa'
public	NegAbs_sint16		as	'_ZN4Math6NegAbsEs'
public	NegAbs_sint32		as	'_ZN4Math6NegAbsEi'
public	NegAbs_sint64		as	'_ZN4Math6NegAbsEx'

; Floating-point types
public	NegAbs_flt32		as	'Math_NegAbs_flt32'
public	NegAbs_flt64		as	'Math_NegAbs_flt64'
public	NegAbs_flt32		as	'_ZN4Math6NegAbsEf'
public	NegAbs_flt64		as	'_ZN4Math6NegAbsEd'

;******************************************************************************;
;       Number sign                                                            ;
;******************************************************************************;

; Signed integer types
public	Sign_sint8			as	'Math_Sign_sint8'
public	Sign_sint16			as	'Math_Sign_sint16'
public	Sign_sint32			as	'Math_Sign_sint32'
public	Sign_sint64			as	'Math_Sign_sint64'
public	Sign_sint8			as	'_ZN4Math4SignEa'
public	Sign_sint16			as	'_ZN4Math4SignEs'
public	Sign_sint32			as	'_ZN4Math4SignEi'
public	Sign_sint64			as	'_ZN4Math4SignEx'

; Floating-point types
public	Sign_flt32			as	'Math_Sign_flt32'
public	Sign_flt64			as	'Math_Sign_flt64'
public	Sign_flt32			as	'_ZN4Math4SignEf'
public	Sign_flt64			as	'_ZN4Math4SignEd'

;******************************************************************************;
;       Square root                                                            ;
;******************************************************************************;

; Unsigned integer types
public	Sqrt_uint8			as	'Math_Sqrt_uint8'
public	Sqrt_uint16			as	'Math_Sqrt_uint16'
public	Sqrt_uint32			as	'Math_Sqrt_uint32'
public	Sqrt_uint64			as	'Math_Sqrt_uint64'
public	Sqrt_uint8			as	'_ZN4Math4SqrtEh'
public	Sqrt_uint16			as	'_ZN4Math4SqrtEt'
public	Sqrt_uint32			as	'_ZN4Math4SqrtEj'
public	Sqrt_uint64			as	'_ZN4Math4SqrtEy'

; Floating-point types
public	Sqrt_flt32			as	'Math_Sqrt_flt32'
public	Sqrt_flt64			as	'Math_Sqrt_flt64'
public	Sqrt_flt32			as	'_ZN4Math4SqrtEf'
public	Sqrt_flt64			as	'_ZN4Math4SqrtEd'

;******************************************************************************;
;       Trigonometric functions                                                ;
;******************************************************************************;

; Hypotenuse
public	Hypot_flt32			as	'Math_Hypot_flt32'
public	Hypot_flt64			as	'Math_Hypot_flt64'
public	Hypot_flt32			as	'_ZN4Math5HypotEff'
public	Hypot_flt64			as	'_ZN4Math5HypotEdd'

; Cathetus
public	Cath_flt32			as	'Math_Cath_flt32'
public	Cath_flt64			as	'Math_Cath_flt64'
public	Cath_flt32			as	'_ZN4Math4CathEff'
public	Cath_flt64			as	'_ZN4Math4CathEdd'

; Sine
public	Sin_flt32			as	'Math_SinQ_flt32'
public	Sin_flt64			as	'Math_SinQ_flt64'
public	Sin_flt32			as	'_ZN4Math4SinQEfx'
public	Sin_flt64			as	'_ZN4Math4SinQEdx'

; Cosine
public	Cos_flt32			as	'Math_CosQ_flt32'
public	Cos_flt64			as	'Math_CosQ_flt64'
public	Cos_flt32			as	'_ZN4Math4CosQEfx'
public	Cos_flt64			as	'_ZN4Math4CosQEdx'

; Tangent
public	Tan_flt32			as	'Math_TanQ_flt32'
public	Tan_flt64			as	'Math_TanQ_flt64'
public	Tan_flt32			as	'_ZN4Math4TanQEfx'
public	Tan_flt64			as	'_ZN4Math4TanQEdx'

; Cotangent
public	Cot_flt32			as	'Math_CotQ_flt32'
public	Cot_flt64			as	'Math_CotQ_flt64'
public	Cot_flt32			as	'_ZN4Math4CotQEfx'
public	Cot_flt64			as	'_ZN4Math4CotQEdx'

; Sine and cosine
public	SinCos_flt32		as	'Math_SinCosQ_flt32'
public	SinCos_flt64		as	'Math_SinCosQ_flt64'
public	SinCos_flt32		as	'_ZN4Math7SinCosQEPfS0_fx'
public	SinCos_flt64		as	'_ZN4Math7SinCosQEPdS0_dx'

;******************************************************************************;
;       Minimum value                                                          ;
;******************************************************************************;

; Unsigned integer types
public	Min_uint8			as	'Math_Min_uint8'
public	Min_uint16			as	'Math_Min_uint16'
public	Min_uint32			as	'Math_Min_uint32'
public	Min_uint64			as	'Math_Min_uint64'
public	Min_uint8			as	'_ZN4Math3MinEhh'
public	Min_uint16			as	'_ZN4Math3MinEtt'
public	Min_uint32			as	'_ZN4Math3MinEjj'
public	Min_uint64			as	'_ZN4Math3MinEyy'

; Signed integer types
public	Min_sint8			as	'Math_Min_sint8'
public	Min_sint16			as	'Math_Min_sint16'
public	Min_sint32			as	'Math_Min_sint32'
public	Min_sint64			as	'Math_Min_sint64'
public	Min_sint8			as	'_ZN4Math3MinEaa'
public	Min_sint16			as	'_ZN4Math3MinEss'
public	Min_sint32			as	'_ZN4Math3MinEii'
public	Min_sint64			as	'_ZN4Math3MinExx'

; Floating-point types
public	Min_flt32			as	'Math_Min_flt32'
public	Min_flt64			as	'Math_Min_flt64'
public	Min_flt32			as	'_ZN4Math3MinEff'
public	Min_flt64			as	'_ZN4Math3MinEdd'

; Other types
public	Min_uint64			as	'Math_Min_size'
public	Min_uint64			as	'_ZN4Math3MinEmm'

;******************************************************************************;
;       Maximum value                                                          ;
;******************************************************************************;

; Unsigned integer types
public	Max_uint8			as	'Math_Max_uint8'
public	Max_uint16			as	'Math_Max_uint16'
public	Max_uint32			as	'Math_Max_uint32'
public	Max_uint64			as	'Math_Max_uint64'
public	Max_uint8			as	'_ZN4Math3MaxEhh'
public	Max_uint16			as	'_ZN4Math3MaxEtt'
public	Max_uint32			as	'_ZN4Math3MaxEjj'
public	Max_uint64			as	'_ZN4Math3MaxEyy'

; Signed integer types
public	Max_sint8			as	'Math_Max_sint8'
public	Max_sint16			as	'Math_Max_sint16'
public	Max_sint32			as	'Math_Max_sint32'
public	Max_sint64			as	'Math_Max_sint64'
public	Max_sint8			as	'_ZN4Math3MaxEaa'
public	Max_sint16			as	'_ZN4Math3MaxEss'
public	Max_sint32			as	'_ZN4Math3MaxEii'
public	Max_sint64			as	'_ZN4Math3MaxExx'

; Floating-point types
public	Max_flt32			as	'Math_Max_flt32'
public	Max_flt64			as	'Math_Max_flt64'
public	Max_flt32			as	'_ZN4Math3MaxEff'
public	Max_flt64			as	'_ZN4Math3MaxEdd'

; Other types
public	Max_uint64			as	'Math_Max_size'
public	Max_uint64			as	'_ZN4Math3MaxEmm'

;******************************************************************************;
;       Greatest common divisor                                                ;
;******************************************************************************;

; Unsigned integer types
public	GCD_uint8			as	'Math_GCD_uint8'
public	GCD_uint16			as	'Math_GCD_uint16'
public	GCD_uint32			as	'Math_GCD_uint32'
public	GCD_uint64			as	'Math_GCD_uint64'
public	GCD_uint8			as	'_ZN4Math3GCDEhh'
public	GCD_uint16			as	'_ZN4Math3GCDEtt'
public	GCD_uint32			as	'_ZN4Math3GCDEjj'
public	GCD_uint64			as	'_ZN4Math3GCDEyy'

; Signed integer types
public	GCD_sint8			as	'Math_GCD_sint8'
public	GCD_sint16			as	'Math_GCD_sint16'
public	GCD_sint32			as	'Math_GCD_sint32'
public	GCD_sint64			as	'Math_GCD_sint64'
public	GCD_uint8			as	'_ZN4Math3GCDEaa'
public	GCD_uint16			as	'_ZN4Math3GCDEss'
public	GCD_uint32			as	'_ZN4Math3GCDEii'
public	GCD_uint64			as	'_ZN4Math3GCDExx'

;******************************************************************************;
;       Least common multiple                                                  ;
;******************************************************************************;

; Unsigned integer types
public	LCM_uint8			as	'Math_LCM_uint8'
public	LCM_uint16			as	'Math_LCM_uint16'
public	LCM_uint32			as	'Math_LCM_uint32'
public	LCM_uint64			as	'Math_LCM_uint64'
public	LCM_uint8			as	'_ZN4Math3LCMEhh'
public	LCM_uint16			as	'_ZN4Math3LCMEtt'
public	LCM_uint32			as	'_ZN4Math3LCMEjj'
public	LCM_uint64			as	'_ZN4Math3LCMEyy'

; Signed integer types
public	LCM_sint8			as	'Math_LCM_sint8'
public	LCM_sint16			as	'Math_LCM_sint16'
public	LCM_sint32			as	'Math_LCM_sint32'
public	LCM_sint64			as	'Math_LCM_sint64'
public	LCM_uint8			as	'_ZN4Math3LCMEaa'
public	LCM_uint16			as	'_ZN4Math3LCMEss'
public	LCM_uint32			as	'_ZN4Math3LCMEii'
public	LCM_uint64			as	'_ZN4Math3LCMExx'

;******************************************************************************;
;       Exponentiation functions                                               ;
;******************************************************************************;

;==============================================================================;
;       Power of 2                                                             ;
;==============================================================================;

; Integer power of 2
public	Exp2_int			as	'Math_Exp2_uint64'
public	Exp2i_flt32			as	'Math_Exp2i_flt32'
public	Exp2i_flt64			as	'Math_Exp2i_flt64'
public	Exp2_int			as	'_ZN4Math4Exp2Eh'
public	Exp2i_flt32			as	'_ZN4Math4Exp2Ea'
public	Exp2i_flt64			as	'_ZN4Math4Exp2Es'

; Real power of 2
public	Exp2_flt32			as	'Math_Exp2_flt32'
public	Exp2_flt64			as	'Math_Exp2_flt64'
public	Exp2m1_flt32		as	'Math_Exp2m1_flt32'
public	Exp2m1_flt64		as	'Math_Exp2m1_flt64'
public	Exp2_flt32			as	'_ZN4Math4Exp2Ef'
public	Exp2_flt64			as	'_ZN4Math4Exp2Ed'
public	Exp2m1_flt32		as	'_ZN4Math6Exp2m1Ef'
public	Exp2m1_flt64		as	'_ZN4Math6Exp2m1Ed'

;==============================================================================;
;       Power of 10                                                            ;
;==============================================================================;

; Integer power of 10
public	Exp10_int			as	'Math_Exp10_uint64'
public	Exp10i_flt32		as	'Math_Exp10i_flt32'
public	Exp10i_flt64		as	'Math_Exp10i_flt64'
public	Exp10_int			as	'_ZN4Math5Exp10Eh'
public	Exp10i_flt32		as	'_ZN4Math5Exp10Ea'
public	Exp10i_flt64		as	'_ZN4Math5Exp10Es'

; Real power of 10
public	Exp10_flt32			as	'Math_Exp10_flt32'
public	Exp10_flt64			as	'Math_Exp10_flt64'
public	Exp10m1_flt32		as	'Math_Exp10m1_flt32'
public	Exp10m1_flt64		as	'Math_Exp10m1_flt64'
public	Exp10_flt32			as	'_ZN4Math5Exp10Ef'
public	Exp10_flt64			as	'_ZN4Math5Exp10Ed'
public	Exp10m1_flt32		as	'_ZN4Math7Exp10m1Ef'
public	Exp10m1_flt64		as	'_ZN4Math7Exp10m1Ed'

;==============================================================================;
;       Power of E                                                             ;
;==============================================================================;

; Integer power of E
public	ExpEi_flt32			as	'Math_Expi_flt32'
public	ExpEi_flt64			as	'Math_Expi_flt64'
public	ExpEi_flt32			as	'_ZN4Math3ExpEa'
public	ExpEi_flt64			as	'_ZN4Math3ExpEs'

; Real power of E
public	ExpE_flt32			as	'Math_Exp_flt32'
public	ExpE_flt64			as	'Math_Exp_flt64'
public	ExpEm1_flt32		as	'Math_Expm1_flt32'
public	ExpEm1_flt64		as	'Math_Expm1_flt64'
public	ExpE_flt32			as	'_ZN4Math3ExpEf'
public	ExpE_flt64			as	'_ZN4Math3ExpEd'
public	ExpEm1_flt32		as	'_ZN4Math5Expm1Ef'
public	ExpEm1_flt64		as	'_ZN4Math5Expm1Ed'

;******************************************************************************;
;       Scale functions                                                        ;
;******************************************************************************;

; Scale by power of 2
public	Scale2_flt32		as	'Math_Scale2_flt32'
public	Scale2_flt64		as	'Math_Scale2_flt64'
public	Scale2_flt32		as	'_ZN4Math6Scale2Efs'
public	Scale2_flt64		as	'_ZN4Math6Scale2Eds'

; Scale by power of 10
public	Scale10_flt32		as	'Math_Scale10_flt32'
public	Scale10_flt64		as	'Math_Scale10_flt64'
public	Scale10_flt32		as	'_ZN4Math7Scale10Efs'
public	Scale10_flt64		as	'_ZN4Math7Scale10Eds'

; Scale by power of E
public	ScaleE_flt32		as	'Math_Scale_flt32'
public	ScaleE_flt64		as	'Math_Scale_flt64'
public	ScaleE_flt32		as	'_ZN4Math5ScaleEfs'
public	ScaleE_flt64		as	'_ZN4Math5ScaleEds'

;******************************************************************************;
;       Power                                                                  ;
;******************************************************************************;

; Unsigned integer types
public	Power_uint8			as	'Math_Power_uint8'
public	Power_uint16		as	'Math_Power_uint16'
public	Power_uint32		as	'Math_Power_uint32'
public	Power_uint64		as	'Math_Power_uint64'
public	Power_uint8			as	'_ZN4Math5PowerEhh'
public	Power_uint16		as	'_ZN4Math5PowerEth'
public	Power_uint32		as	'_ZN4Math5PowerEjh'
public	Power_uint64		as	'_ZN4Math5PowerEyh'

; Signed integer types
public	Power_sint8			as	'Math_Power_sint8'
public	Power_sint16		as	'Math_Power_sint16'
public	Power_sint32		as	'Math_Power_sint32'
public	Power_sint64		as	'Math_Power_sint64'
public	Power_sint8			as	'_ZN4Math5PowerEah'
public	Power_sint16		as	'_ZN4Math5PowerEsh'
public	Power_sint32		as	'_ZN4Math5PowerEih'
public	Power_sint64		as	'_ZN4Math5PowerExh'

; Floating-point types
public	Power_flt32			as	'Math_Poweri_flt32'
public	Power_flt64			as	'Math_Poweri_flt64'
public	Power_flt32			as	'_ZN4Math5PowerEfa'
public	Power_flt64			as	'_ZN4Math5PowerEds'

;******************************************************************************;
;       Rounding                                                               ;
;******************************************************************************;

; Round down (floor)
public	RoundDown_flt32		as	'Math_RoundDown_flt32'
public	RoundDown_flt64		as	'Math_RoundDown_flt64'
public	RoundDown_flt32		as	'_ZN4Math9RoundDownEf'
public	RoundDown_flt64		as	'_ZN4Math9RoundDownEd'

; Round up (ceil)
public	RoundUp_flt32		as	'Math_RoundUp_flt32'
public	RoundUp_flt64		as	'Math_RoundUp_flt64'
public	RoundUp_flt32		as	'_ZN4Math7RoundUpEf'
public	RoundUp_flt64		as	'_ZN4Math7RoundUpEd'

; Round to nearest even integer
public	RoundInt_flt32		as	'Math_RoundInt_flt32'
public	RoundInt_flt64		as	'Math_RoundInt_flt64'
public	RoundInt_flt32		as	'_ZN4Math8RoundIntEf'
public	RoundInt_flt64		as	'_ZN4Math8RoundIntEd'

; Round to nearest integer, away from zero
public	RoundRound_flt32	as	'Math_Round_flt32'
public	RoundRound_flt64	as	'Math_Round_flt64'
public	RoundRound_flt32	as	'_ZN4Math5RoundEf'
public	RoundRound_flt64	as	'_ZN4Math5RoundEd'

; Round to nearest integer, toward zero (truncation)
public	RoundTrunc_flt32	as	'Math_Truncate_flt32'
public	RoundTrunc_flt64	as	'Math_Truncate_flt64'
public	RoundTrunc_flt32	as	'_ZN4Math8TruncateEf'
public	RoundTrunc_flt64	as	'_ZN4Math8TruncateEd'

; Fractional part
public	RoundFrac_flt32		as	'Math_Frac_flt32'
public	RoundFrac_flt64		as	'Math_Frac_flt64'
public	RoundFrac_flt32		as	'_ZN4Math4FracEf'
public	RoundFrac_flt64		as	'_ZN4Math4FracEd'

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

; Check for normal value
public	IsNorm_flt32		as	'Math_IsNormal_flt32'
public	IsNorm_flt64		as	'Math_IsNormal_flt64'
public	IsNorm_flt32		as	'_ZN4Math8IsNormalEf'
public	IsNorm_flt64		as	'_ZN4Math8IsNormalEd'

; Check for subnormal value
public	IsSub_flt32			as	'Math_IsSubnormal_flt32'
public	IsSub_flt64			as	'Math_IsSubnormal_flt64'
public	IsSub_flt32			as	'_ZN4Math11IsSubnormalEf'
public	IsSub_flt64			as	'_ZN4Math11IsSubnormalEd'

; Check for finite value
public	IsFin_flt32			as	'Math_IsFinite_flt32'
public	IsFin_flt64			as	'Math_IsFinite_flt64'
public	IsFin_flt32			as	'_ZN4Math8IsFiniteEf'
public	IsFin_flt64			as	'_ZN4Math8IsFiniteEd'

; Check for infinite value
public	IsInf_flt32			as	'Math_IsInfinite_flt32'
public	IsInf_flt64			as	'Math_IsInfinite_flt64'
public	IsInf_flt32			as	'_ZN4Math10IsInfiniteEf'
public	IsInf_flt64			as	'_ZN4Math10IsInfiniteEd'

; Check for NaN value
public	IsNaN_flt32			as	'Math_IsNaN_flt32'
public	IsNaN_flt64			as	'Math_IsNaN_flt64'
public	IsNaN_flt32			as	'_ZN4Math5IsNaNEf'
public	IsNaN_flt64			as	'_ZN4Math5IsNaNEd'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;
CLINE		= 64							; Size of cache line
NOT_FOUND	= -1							; Pattern is not found

; flt32_t
ONE_FLT32	= 0x3F800000					; 1.0
TWO_FLT32	= 0x40000000					; 2.0
MONE_FLT32	= 0xBF800000					; -1.0
MHALF_FLT32	= 0xBF000000					; -0.5
INF_FLT32	= 0x7F800000					; +inf
NORM_FLT32	= 0x00800000					; min normal value
PI4_FLT32	= 0x3F490FDB					; PI / 4
MAGIC_FLT32	= 0x4B400000					; magic number for flt32_t to int conversion

; flt64_t
ONE_FLT64	= 0x3FF0000000000000			; 1.0
TWO_FLT64	= 0x4000000000000000			; 2.0
MONE_FLT64	= 0xBFF0000000000000			; -1.0
MHALF_FLT64	= 0xBFE0000000000000			; -0.5
INF_FLT64	= 0x7FF0000000000000			; +inf
NORM_FLT64	= 0x0010000000000000			; min normal value
PI4_FLT64	= 0x3FE921FB54442D18			; PI / 4
MAGIC_FLT64	= 0x4338000000000000			; magic number for flt64_t to int conversion

;******************************************************************************;
;       Expansion of sign bit                                                  ;
;******************************************************************************;
macro	esign	scale
{
if scale = 0
		cbw
else if scale = 1
		cwd
else if scale = 2
		cdq
else if scale = 3
		cqo
end if
}

;******************************************************************************;
;       Init XMM register with const                                           ;
;******************************************************************************;
macro	initreg	reg, treg, value, x
{
		mov		treg, value
if x eq s
		movd	reg, treg					; reg = value
else if x eq d
		movq	reg, treg					; reg = value
end if
}

;******************************************************************************;
;       Byte swap                                                              ;
;******************************************************************************;
macro	BYTE_SWAP	result, value, scale
{
		mov		result, value
if scale = 1
		rol		ax, 8
else if scale > 1
		bswap	result
end if
		ret
}
ByteSwap8:	BYTE_SWAP	al, dil, 0
ByteSwap16:	BYTE_SWAP	ax, di, 1
ByteSwap32:	BYTE_SWAP	eax, edi, 2
ByteSwap64:	BYTE_SWAP	rax, rdi, 3

;******************************************************************************;
;       Bit-reversal permutation                                               ;
;******************************************************************************;
macro	BIT_REVERSE		result, value, temp1, temp2, scale
{
;---[Internal variables]-------------------
if scale = 0
const11	= 0x55								; Const #1 for first stage
const12	= 0xAA								; Const #2 for first stage
const21	= 0x33								; Const #1 for second stage
const22	= 0xCC								; Const #2 for second stage
const31	= 0x0F								; Const #1 for third stage
const32	= 0xF0								; Const #2 for third stage
else if scale = 1
const11	= 0x5555							; Const #1 for first stage
const12	= 0xAAAA							; Const #2 for first stage
const21	= 0x3333							; Const #1 for second stage
const22	= 0xCCCC							; Const #2 for second stage
const31	= 0x0F0F							; Const #1 for third stage
const32	= 0xF0F0							; Const #2 for third stage
else if scale = 2
const11	= 0x55555555
const12	= 0xAAAAAAAA
const21	= 0x33333333
const22	= 0xCCCCCCCC
const31	= 0x0F0F0F0F
const32	= 0xF0F0F0F0
else if scale = 3
const11	= 0x5555555555555555
const12	= 0xAAAAAAAAAAAAAAAA
const21	= 0x3333333333333333
const22	= 0xCCCCCCCCCCCCCCCC
const31	= 0x0F0F0F0F0F0F0F0F
const32	= 0xF0F0F0F0F0F0F0F0
end if
;---[First stage]--------------------------
		mov		temp1, const11				; temp1 = const11
		mov		temp2, const12				; temp2 = const12
		and		temp1, value
		and		temp2, value
		shl		temp1, 1					; temp1 = (value & temp1) << 1
		shr		temp2, 1					; temp2 = (value & temp2) >> 1
		mov		value, temp1
		or		value, temp2				; value = temp1 | temp2
;---[Second stage]-------------------------
		mov		temp1, const21				; temp1 = const21
		mov		temp2, const22				; temp2 = const22
		and		temp1, value
		and		temp2, value
		shl		temp1, 2					; temp1 = (value & temp1) << 2
		shr		temp2, 2					; temp2 = (value & temp2) >> 2
		mov		value, temp1
		or		value, temp2				; value = temp1 | temp2
;---[Third stage]--------------------------
		mov		temp1, const31				; temp1 = const31
		mov		temp2, const32				; temp2 = const32
		and		temp1, value
		and		temp2, value
		shl		temp1, 4					; temp1 = (value & temp1) << 4
		shr		temp2, 4					; temp2 = (value & temp2) >> 4
		mov		value, temp1
		or		value, temp2				; value = temp1 | temp2
;---[Swap bytes if required]---------------
	BYTE_SWAP	result, value, scale		; return ByteSwap (value)
}
BitReverse8:	BIT_REVERSE		al, dil, dl, cl, 0
BitReverse16:	BIT_REVERSE		ax, di, dx, cx, 1
BitReverse32:	BIT_REVERSE		eax, edi, edx, ecx, 2
BitReverse64:	BIT_REVERSE		rax, rdi, rdx, rcx, 3

;******************************************************************************;
;       Absolute value                                                         ;
;******************************************************************************;
macro	ABS_INT	value, temp, scale, negative
{
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		mov		temp, value					; temp = value
		sar		value, bytes * 8 - 1		; value >>= 8 * sizeof(x) - 1
if negative
		xor		value, temp					; value ^= temp
else
		xor		temp, value					; temp ^= value
end if
		sub		temp, value					; return (temp -= value)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ABS_FLT	treg, negative, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
;---[Internal variables]-------------------
mask	equ		xmm1						; data mask to get absolute value
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
end if
;------------------------------------------
if negative
		initreg	mask, treg, smask, x
		orp#x	value, mask					; value = -Abs (value)
else
		initreg	mask, treg, dmask, x
		andp#x	value, mask					; value = Abs (value)
end if
		ret
}

; Signed integer types
Abs_sint8:		ABS_INT		dil, al, 0, 0
Abs_sint16:		ABS_INT		di, ax, 1, 0
Abs_sint32:		ABS_INT		edi, eax, 2, 0
Abs_sint64:		ABS_INT		rdi, rax, 3, 0

; Floating-point types
Abs_flt32:		ABS_FLT		eax, 0, s
Abs_flt64:		ABS_FLT		rax, 0, d

;******************************************************************************;
;       Negative absolute value                                                ;
;******************************************************************************;

; Signed integer types
NegAbs_sint8:	ABS_INT		dil, al, 0, 1
NegAbs_sint16:	ABS_INT		di, ax, 1, 1
NegAbs_sint32:	ABS_INT		edi, eax, 2, 1
NegAbs_sint64:	ABS_INT		rdi, rax, 3, 1

; Floating-point types
NegAbs_flt32:	ABS_FLT		eax, 1, s
NegAbs_flt64:	ABS_FLT		rax, 1, d

;******************************************************************************;
;       Number sign                                                            ;
;******************************************************************************;
macro	SIGN_INT	value
{
;---[Internal variables]-------------------
temp	equ		rcx							; temporary register
cond1	equ		rax							; first conditional register
cond2	equ		rdx							; second conditional register
;------------------------------------------
		mov		temp, 1						; temp = 1
		xor		cond1, cond1				; cond1 = 0
		xor		cond2, cond2				; cond2 = 0
		cmp		value, 0
		cmovg	cond1, temp					; if (value > 0), cond1 = 1
		cmovl	cond2, temp					; if (value < 0), cond2 = 1
		sub		cond1, cond2				; return cond1 - cond2
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SIGN_FLT	treg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
;---[Internal variables]-------------------
mask	equ		xmm1						; sign mask to get sign bit
one		equ		xmm2						; 1.0
zero	equ		xmm3						; 0.0
if x eq s
smask	= SMASK_FLT32						; sign mask
oneval	= 0x3F800000						; 1.0
else if x eq d
smask	= SMASK_FLT64						; sign mask
oneval	= 0x3FF0000000000000				; 1.0
end if
;------------------------------------------
		xorp#x	zero, zero					; zero = 0
		initreg	mask, treg, smask, x		; mask = smask
		initreg	one, treg, oneval, x		; one = 1.0
		comis#x	value, zero					; compare value with 0.0
		jp		@f							; if (value == NAN || value == 0)
		jz		@f							;     then return value
		andp#x	value, mask					; else
		orp#x	value, one					;     return sign (value)
@@:		ret
}

; Signed integer types
Sign_sint8:		SIGN_INT	dil
Sign_sint16:	SIGN_INT	di
Sign_sint32:	SIGN_INT	edi
Sign_sint64:	SIGN_INT	rdi

; Floating-point types
Sign_flt32:		SIGN_FLT	eax, s
Sign_flt64:		SIGN_FLT	rax, d

;******************************************************************************;
;       Square root                                                            ;
;******************************************************************************;
macro	SQRT_INT	root, value, mask, temp, size
{
		xor		root, root					; root = 0
		mov		mask, 1 shl (size * 8 - 2)	; mask = 1 << (sizeof(value) - 2)
;---[Loop]---------------------------------
.loop:	mov		temp, root
		add		temp, mask					; temp = root + mask
		shr		root, 1						; root >>= 1
		cmp		value, temp					; if (value >= temp)
		jb		@f							; {
		add		root, mask					;     root += mask
		sub		value, temp					;     value -= temp }
@@:		shr		mask, 2						; mask >>= 2
		jnz		.loop						; while (mask != 0)
;---[End of loop]--------------------------
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SQRT_FLT	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
;------------------------------------------
		sqrts#x	value, value				; ret sqrt (value)
		ret
}

; Unsigned integer types
Sqrt_uint8:		SQRT_INT	al, dil, cl, dl, 1
Sqrt_uint16:	SQRT_INT	ax, di, cx, dx, 2
Sqrt_uint32:	SQRT_INT	eax, edi, ecx, edx, 4
Sqrt_uint64:	SQRT_INT	rax, rdi, rcx, rdx, 8

; Floating-point types
Sqrt_flt32:		SQRT_FLT	s
Sqrt_flt64:		SQRT_FLT	d

;******************************************************************************;
;       Trigonometric functions                                                ;
;******************************************************************************;
macro	TRIANGLE	treg, hypot, x
{
;---[Parameters]---------------------------
val1	equ		xmm0						; first cathetus
val2	equ		xmm1						; second cathetus
;---[Internal variables]-------------------
scale1	equ		xmm2						; first scale factor
scale2	equ		xmm3						; second scale factor
barier1	equ		scale1						; first barier
barier2	equ		xmm4						; second barier
mask	equ		xmm5						; data mask to get absolute value
maxval	equ		mask						; max value
if x eq s
dmask	= DMASK_FLT32						; data mask
const1	= 0x5F800000						; 2^64
const2	= 0x1F800000						; 2^-64
const3	= 0x20000000						; 2^-63
else if x eq d
dmask	= DMASK_FLT64						; data mask
const1	= 0x5FF0000000000000				; 2^512
const2	= 0x1FF0000000000000				; 2^-512
const3	= 0x2000000000000000				; 2^-511
end if
;------------------------------------------
		initreg	mask, treg, dmask, x		; mask = dmask
		initreg	scale1, treg, const1, x		; scale1 = const1
		initreg	scale2, treg, const2, x		; scale2 = const2
		initreg	barier2, treg, const3, x	; barier2 = const3
		andp#x	val1, mask					; val1 = Abs(val1)
		andp#x	val2, mask					; val2 = Abs(val2)
		movap#x	maxval, val1
		maxs#x	maxval, val2				; maxval = Max (val1, val2)
		comis#x	maxval, barier1				; if (maxval >= barier1)
		jae		.over						;     then go to overflow prevention branch
		comis#x	maxval, barier2				; if (maxval < barier2)
		jb		.under						;     then go to underflow prevention branch
;---[Normal execution branch]--------------
		muls#x	val1, val1					; val1 = val1^2
		muls#x	val2, val2					; val2 = val2^2
if hypot
		adds#x	val1, val2					; val1 = val1^2 + val2^2
else
		subs#x	val1, val2					; val1 = val1^2 - val2^2
end if
		sqrts#x	val1, val1					; return sqrt (val1)
		ret
;---[Overflow prevention branch]-----------
.over:	muls#x	val1, scale2				; val1 *= scale2
		muls#x	val2, scale2				; val2 *= scale2
		muls#x	val1, val1					; val1 = val1^2
		muls#x	val2, val2					; val2 = val2^2
if hypot
		adds#x	val1, val2					; val1 = val1^2 + val2^2
else
		subs#x	val1, val2					; val1 = val1^2 - val2^2
end if
		sqrts#x	val1, val1
		muls#x	val1, scale1				; return scale1 * sqrt (val1)
		ret
;---[Underflow prevention branch]----------
.under:	muls#x	val1, scale1				; val1 *= scale1
		muls#x	val2, scale1				; val2 *= scale1
		muls#x	val1, val1					; val1 = val1^2
		muls#x	val2, val2					; val2 = val2^2
if hypot
		adds#x	val1, val2					; val1 = val1^2 + val2^2
else
		subs#x	val1, val2					; val1 = val1^2 - val2^2
end if
		sqrts#x	val1, val1
		muls#x	val1, scale2				; return scale2 * sqrt (val1)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SIN32
{
;---[Internal variables]-------------------
array	= sin_flt32							; pointer to array of coefficients
bytes	= 4									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		movaps	scale, angle				; scale = angle
		mulss	angle, angle				; angle *= angle
		movaps	origin, angle				; origin = angle ^ 2
;---[Stage 1]------------------------------
		movss	temp1, [array + 0 * bytes]	; temp1 = array[0]
		movss	temp2, [array + 1 * bytes]	; temp2 = array[1]
		mulss	temp1, angle
		addss	temp1, [array + 2 * bytes]	; temp1 = array[2] + array[0] * angle
		mulss	temp2, angle
		addss	temp2, [array + 3 * bytes]	; temp2 = array[3] + array[1] * angle
		mulss	angle, angle				; angle *= angle
;---[Stage 2]------------------------------
		mulss	angle, temp2
		addss	angle, temp1				; angle = temp1 + temp2 * angle
;---[Stage 3]------------------------------
		mulss	angle, origin
		mulss	angle, scale
		addss	angle, scale				; angle = scale + angle * origin * scale
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	COS32	treg
{
;---[Internal variables]-------------------
array	= cos_flt32							; pointer to array of coefficients
bytes	= 4									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		mulss	angle, angle				; angle *= angle
		movaps	scale, angle				; scale = angle ^ 2
		movaps	origin, angle				; origin = angle ^ 2
;---[Stage 1]------------------------------
		movss	temp1, [array + 0 * bytes]	; temp1 = array[0]
		movss	temp2, [array + 1 * bytes]	; temp2 = array[1]
		mulss	temp1, angle
		addss	temp1, [array + 2 * bytes]	; temp1 = array[2] + array[0] * angle
		mulss	temp2, angle
		addss	temp2, [array + 3 * bytes]	; temp2 = array[3] + array[1] * angle
		mulss	angle, angle				; angle *= angle
;---[Stage 2]------------------------------
		mulss	angle, temp2
		addss	angle, temp1				; angle = temp1 + temp2 * angle
;---[Stage 3]------------------------------
		initreg	temp2, treg, MHALF_FLT32, s	; temp2 = -0.5
		mulss	temp2, scale
		initreg	temp1, treg, ONE_FLT32, s	; temp1 = 1.0
		mulss	angle, origin
		mulss	angle, scale
		addss	angle, temp2
		addss	angle, temp1				; angle = 1 - 0.5 * scale + angle * origin * scale
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SINCOS32	treg
{
;---[Internal variables]-------------------
array1	= cos_flt32							; pointer to array of cos coefficients
array2	= sin_flt32							; pointer to array of sin coefficients
bytes	= 4									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array1]					; prefetch data
	prefetchnta	[array2]					; prefetch data
		movaps	hsin, angle					; hsin = angle
		mulss	angle, angle				; angle *= angle
		movaps	scale, angle				; scale = angle ^ 2
		movaps	origin, angle				; origin = angle ^ 2
;---[Stage 1]------------------------------
		movss	temp2, [array1 + 0 * bytes]	; temp2 = array1[0]
		movss	temp4, [array1 + 1 * bytes]	; temp4 = array1[1]
		movss	temp3, [array2 + 0 * bytes]	; temp3 = array2[0]
		movss	temp5, [array2 + 1 * bytes]	; temp5 = array2[1]
		mulss	temp2, angle
		addss	temp2, [array1 + 2 * bytes]	; temp2 = array1[2] + array1[0] * angle
		mulss	temp4, angle
		addss	temp4, [array1 + 3 * bytes]	; temp4 = array1[3] + array1[1] * angle
		mulss	temp3, angle
		addss	temp3, [array2 + 2 * bytes]	; temp3 = array2[2] + array2[0] * angle
		mulss	temp5, angle
		addss	temp5, [array2 + 3 * bytes]	; temp5 = array2[3] + array2[1] * angle
		mulss	angle, angle				; angle *= angle
;---[Stage 2]------------------------------
		mulss	temp4, angle
		addss	temp2, temp4				; temp2 = temp2 + temp4 * angle
		mulss	temp5, angle
		addss	temp3, temp5				; temp3 = temp5 + temp5 * angle
;---[Stage 3]------------------------------
		initreg	hcos, treg, MHALF_FLT32, s
		mulss	hcos, scale					; hcos = -0.5 * scale
		mulss	lcos, origin
		mulss	lsin, origin
		mulss	lcos, scale					; lcos = temp2 * origin * scale
		mulss	lsin, hsin					; temp3 = temp3 * origin * hsin
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SIN64
{
;---[Internal variables]-------------------
array	= sin_flt64							; pointer to array of coefficients
bytes	= 8									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		movapd	scale, angle				; scale = angle
		mulsd	angle, angle				; angle *= angle
		movapd	origin, angle				; origin = angle ^ 2
;---[Stage 1]------------------------------
		movsd	temp1, [array + 0 * bytes]	; temp1 = array[0]
		movsd	temp2, [array + 1 * bytes]	; temp2 = array[1]
		movsd	temp3, [array + 2 * bytes]	; temp3 = array[2]
		movsd	temp4, [array + 3 * bytes]	; temp4 = array[3]
		mulsd	temp1, angle
		addsd	temp1, [array + 4 * bytes]	; temp1 = array[4] + array[0] * angle
		mulsd	temp2, angle
		addsd	temp2, [array + 5 * bytes]	; temp2 = array[5] + array[1] * angle
		mulsd	temp3, angle
		addsd	temp3, [array + 6 * bytes]	; temp3 = array[6] + array[2] * angle
		mulsd	angle, angle				; angle *= angle
;---[Stage 2]------------------------------
		mulsd	temp2, angle
		addsd	temp1, temp2				; temp1 = temp1 + temp2 * angle
		mulsd	temp4, angle
		addsd	temp3, temp4				; temp3 = temp3 + temp4 * angle
		mulsd	angle, angle				; angle *= angle
;---[Stage 3]------------------------------
		mulsd	angle, temp3
		addsd	angle, temp1				; angle = temp1 + temp3 * angle
;---[Stage 4]------------------------------
		mulsd	angle, origin
		mulsd	angle, scale
		addsd	angle, scale				; angle = scale + angle * origin * scale
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	COS64	treg
{
;---[Internal variables]-------------------
array	= cos_flt64							; pointer to array of coefficients
bytes	= 8									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		mulsd	angle, angle				; angle *= angle
		movapd	scale, angle				; scale = angle ^ 2
		movapd	origin, angle				; origin = angle ^ 2
;---[Stage 1]------------------------------
		movsd	temp1, [array + 0 * bytes]	; temp1 = array[0]
		movsd	temp2, [array + 1 * bytes]	; temp2 = array[1]
		movsd	temp3, [array + 2 * bytes]	; temp3 = array[2]
		movsd	temp4, [array + 3 * bytes]	; temp4 = array[3]
		mulsd	temp1, angle
		addsd	temp1, [array + 4 * bytes]	; temp1 = array[4] + array[0] * angle
		mulsd	temp2, angle
		addsd	temp2, [array + 5 * bytes]	; temp2 = array[5] + array[1] * angle
		mulsd	temp3, angle
		addsd	temp3, [array + 6 * bytes]	; temp3 = array[6] + array[2] * angle
		mulsd	angle, angle				; angle *= angle
;---[Stage 2]------------------------------
		mulsd	temp2, angle
		addsd	temp1, temp2				; temp1 = temp1 + temp2 * angle
		mulsd	temp4, angle
		addsd	temp3, temp4				; temp3 = temp3 + temp4 * angle
		mulsd	angle, angle				; angle *= angle
;---[Stage 3]------------------------------
		mulsd	angle, temp3
		addsd	angle, temp1				; angle = temp1 + temp3 * angle
;---[Stage 4]------------------------------
		initreg	temp2, treg, MHALF_FLT64, d	; temp2 = -0.5
		mulsd	temp2, scale
		initreg	temp1, treg, ONE_FLT64, d	; temp1 = 1.0
		mulsd	angle, origin
		mulsd	angle, scale
		addsd	angle, temp2
		addsd	angle, temp1				; angle = 1 - 0.5 * scale + angle * origin * scale
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SINCOS64	treg
{
;---[Internal variables]-------------------
array1	= cos_flt64							; pointer to array of cos coefficients
array2	= sin_flt64							; pointer to array of sin coefficients
bytes	= 8									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array1]					; prefetch data
	prefetchnta	[array2]					; prefetch data
		movapd	hsin, angle					; hsin = angle
		mulsd	angle, angle				; angle *= angle
		movapd	scale, angle				; scale = angle ^ 2
		movapd	origin, angle				; origin = angle ^ 2
;---[Stage 1]------------------------------
		movsd	temp2, [array1 + 0 * bytes]	; temp2 = array1[0]
		movsd	temp4, [array1 + 1 * bytes]	; temp4 = array1[1]
		movsd	temp6, [array1 + 2 * bytes]	; temp6 = array1[2]
		movsd	temp8, [array1 + 3 * bytes]	; temp8 = array1[3]
		movsd	temp3, [array2 + 0 * bytes]	; temp3 = array2[0]
		movsd	temp5, [array2 + 1 * bytes]	; temp5 = array2[1]
		movsd	temp7, [array2 + 2 * bytes]	; temp7 = array2[2]
		movsd	temp9, [array2 + 3 * bytes]	; temp9 = array2[3]
		mulsd	temp2, angle
		addsd	temp2, [array1 + 4 * bytes]	; temp2 = array1[4] + array1[0] * angle
		mulsd	temp4, angle
		addsd	temp4, [array1 + 5 * bytes]	; temp4 = array1[5] + array1[1] * angle
		mulsd	temp6, angle
		addsd	temp6, [array1 + 6 * bytes]	; temp6 = array1[6] + array1[2] * angle
		mulsd	temp3, angle
		addsd	temp3, [array2 + 4 * bytes]	; temp3 = array2[4] + array2[0] * angle
		mulsd	temp5, angle
		addsd	temp5, [array2 + 5 * bytes]	; temp5 = array2[5] + array2[1] * angle
		mulsd	temp7, angle
		addsd	temp7, [array2 + 6 * bytes]	; temp7 = array2[6] + array2[2] * angle
		mulsd	angle, angle				; angle *= angle
;---[Stage 2]------------------------------
		mulsd	temp4, angle
		addsd	temp2, temp4				; temp2 = temp2 + temp4 * angle
		mulsd	temp8, angle
		addsd	temp6, temp8				; temp6 = temp6 + temp8 * angle
		mulsd	temp5, angle
		addsd	temp3, temp5				; temp3 = temp5 + temp5 * angle
		mulsd	temp9, angle
		addsd	temp7, temp9				; temp7 = temp7 + temp9 * angle
		mulsd	angle, angle				; angle *= angle
;---[Stage 3]------------------------------
		mulsd	temp6, angle
		addsd	temp2, temp6				; temp2 = temp2 + temp6 * angle
		mulsd	temp7, angle
		addsd	temp3, temp7				; temp3 = temp3 + temp7 * angle
;---[Stage 4]------------------------------
		initreg	hcos, treg, MHALF_FLT64, d
		mulsd	hcos, scale					; hcos = -0.5 * scale
		mulsd	lcos, origin
		mulsd	lsin, origin
		mulsd	lcos, scale					; lcos = temp2 * origin * scale
		mulsd	lsin, hsin					; temp3 = temp3 * origin * hsin
}

;==============================================================================;
;       Hypotenuse                                                             ;
;==============================================================================;
Hypot_flt32:	TRIANGLE	eax, 1, s
Hypot_flt64:	TRIANGLE	rax, 1, d

;==============================================================================;
;       Cathetus                                                               ;
;==============================================================================;
Cath_flt32:		TRIANGLE	eax, 0, s
Cath_flt64:		TRIANGLE	rax, 0, d

;==============================================================================;
;       Sine                                                                   ;
;==============================================================================;
macro	SIN	sval, sreg, treg, x
{
;---[Parameters]---------------------------
angle	equ		xmm0						; angle value
quadr	equ		rdi							; quadrant
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
origin	equ		xmm5						; original value
scale	equ		xmm6						; scale value
sign	equ		xmm7						; sign bit
mask	equ		temp1						; data mask
barier	equ		temp2						; PI / 4
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
pi		= PI4_FLT32							; PI / 4
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
pi		= PI4_FLT64							; PI / 4
end if
;------------------------------------------
		initreg	mask, treg, dmask, x		; mask = dmask
		mov		sval, smask					; set sign mask
		initreg	barier, treg, pi, x			; barier = PI / 4
if x eq s
		movd	sreg, angle					; sreg = angle
else if x eq d
		movq	sreg, angle					; sreg = angle
end if
		andp#x	angle, mask					; angle = Abs (angle)
		and		sreg, sval					; extract sign bit from angle value
		comis#x	angle, barier				; if (angle > PI / 4)
		ja		.ovrfl						;     then go to overflow branch
		test	quadr, 0x1					; if (quadr & 0x1)
		jnz		.cos						;     then compute cos value
;---[Computing sin value]------------------
		xor		treg, treg
		test	quadr, 0x2					; if (quadr & 0x2)
		cmovnz	treg, sval					;     sign = -sign
		xor		sreg, treg					;
if x eq s
		movd	sign, sreg					; sign = sign bit
		SIN32								; computing sin value
else if x eq d
		movq	sign, sreg					; sign = sign bit
		SIN64								; computing sin value
end if
		orp#x	angle, sign					; set correct sign to the result
		ret									; return sign * Sin (Abs(angle))
;---[Computing cos value]------------------
.cos:	xor		sreg, sreg					; sign = +1.0
		test	quadr, 0x2					; if (quadr & 0x2)
		cmovnz	sreg, sval					;     sign = -1.0
if x eq s
		movd	sign, sreg					; sign = sign bit
		COS32	treg						; computing cos value
else if x eq d
		movq	sign, sreg					; sign = sign bit
		COS64	treg						; computing cos value
end if
		orp#x	angle, sign					; set correct sign to the result
		ret									; return sign * Cos (Abs(angle))
;---[Overflow branch]----------------------
.ovrfl:	initreg	angle, treg, dmask, x		; return NaN
		ret
}
Sin_flt32:	SIN	ecx, edx, eax, s
Sin_flt64:	SIN	rcx, rdx, rax, d

;==============================================================================;
;       Cosine                                                                 ;
;==============================================================================;
macro	COS	sval, sreg, treg, x
{
;---[Parameters]---------------------------
angle	equ		xmm0						; angle value
quadr	equ		rdi							; quadrant
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
origin	equ		xmm5						; original value
scale	equ		xmm6						; scale value
sign	equ		xmm7						; sign bit
mask	equ		temp1						; data mask
barier	equ		temp2						; PI / 4
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
pi		= PI4_FLT32							; PI / 4
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
pi		= PI4_FLT64							; PI / 4
end if
;------------------------------------------
		initreg	mask, treg, dmask, x		; mask = dmask
		mov		sval, smask					; set sign mask
		initreg	barier, treg, pi, x			; barier = PI / 4
if x eq s
		movd	sreg, angle					; sreg = angle
else if x eq d
		movq	sreg, angle					; sreg = angle
end if
		andp#x	angle, mask					; angle = Abs (angle)
		and		sreg, sval					; extract sign bit from angle value
		comis#x	angle, barier				; if (angle > PI / 4)
		ja		.ovrfl						;     then go to overflow branch
		test	quadr, 0x1					; if (quadr & 0x1)
		jnz		.sin						;     then compute sin value
;---[Computing cos value]------------------
		xor		sreg, sreg					; sign = +1.0
		test	quadr, 0x2					; if (quadr & 0x2)
		cmovnz	sreg, sval					;     sign = -1.0
if x eq s
		movd	sign, sreg					; sign = sign bit
		COS32	treg						; computing cos value
else if x eq d
		movq	sign, sreg					; sign = sign bit
		COS64	treg						; computing cos value
end if
		orp#x	angle, sign					; set correct sign to the result
		ret									; return sign * Cos (Abs(angle))
;---[Computing sin value]------------------
.sin:	xor		treg, treg
		test	quadr, 0x2					; if (quadr & 0x2 == 0)
		cmovz	treg, sval					;     sign = -sign
		xor		sreg, treg					;
if x eq s
		movd	sign, sreg					; sign = sign bit
		SIN32								; computing sin value
else if x eq d
		movq	sign, sreg					; sign = sign bit
		SIN64								; computing sin value
end if
		orp#x	angle, sign					; set correct sign to the result
		ret									; return sign * Sin (Abs(angle))
;---[Overflow branch]----------------------
.ovrfl:	initreg	angle, treg, dmask, x		; return NaN
		ret
}
Cos_flt32:	COS	ecx, edx, eax, s
Cos_flt64:	COS	rcx, rdx, rax, d

;==============================================================================;
;       Tangent                                                                ;
;==============================================================================;
macro	TAN	sval, sreg, treg, x
{
;---[Parameters]---------------------------
angle	equ		xmm0						; angle value
quadr	equ		rdi							; quadrant
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
temp9	equ		xmm9						; temporary register #9
origin	equ		xmm10						; original value
scale	equ		xmm11						; scale value
sign	equ		xmm12						; sign bit
mask	equ		temp1						; data mask
barier	equ		temp2						; PI / 4
hcos	equ		angle						; high significant bits of cos value
hsin	equ		temp1						; high significant bits of sin value
lcos	equ		temp2						; low significant bits of cos value
lsin	equ		temp3						; low significant bits of sin value
one		equ		temp4						; 1.0
reg		equ		rax							; temporary register to init xmm register
stack	equ		rsp							; stack pointer
s_res	equ		stack - 5 * 8				; stack position of "result" variable
s_hcos	equ		stack - 4 * 8				; stack position of "hcos" variable
s_lcos	equ		stack - 3 * 8				; stack position of "lcos" variable
s_hsin	equ		stack - 2 * 8				; stack position of "hsin" variable
s_lsin	equ		stack - 1 * 8				; stack position of "lsin" variable
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
oneval	= ONE_FLT64							; 1.0 (flt64_t)
pi		= PI4_FLT32							; PI / 4
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
pi		= PI4_FLT64							; PI / 4
end if
;------------------------------------------
		initreg	mask, treg, dmask, x		; mask = dmask
		mov		sval, smask					; set sign mask
		initreg	barier, treg, pi, x			; barier = PI / 4
if x eq s
		movd	sreg, angle					; sreg = angle
else if x eq d
		movq	sreg, angle					; sreg = angle
end if
		andp#x	angle, mask					; angle = Abs (angle)
		and		sreg, sval					; extract sign bit from angle value
		comis#x	angle, barier				; if (angle > PI / 4)
		ja		.ovrfl						;     then go to overflow branch
		test	quadr, 0x1					; if (quadr & 0x1)
		jnz		.cot						;     then compute cot value
;---[Computing tan value]------------------
if x eq s
		movd	sign, sreg					; sign = sign bit of tan
	SINCOS32	treg						; computing sine and cosine value
	cvtss2sd	hcos, hcos					; convert hcos to flt64_t type
	cvtss2sd	hsin, hsin					; convert hsin to flt64_t type
	cvtss2sd	lcos, lcos					; convert lcos to flt64_t type
	cvtss2sd	lsin, lsin					; convert lsin to flt64_t type
		initreg	one, reg, oneval, d			; one = 1.0
		addsd	hcos, lcos					; hcos += lcos
		addsd	hsin, lsin					; hsin += lsin
		addsd	hcos, one					; hcos += 1.0
		divsd	hsin, hcos
		movapd	angle, hsin					; angle = sin / cos
	cvtsd2ss	angle, angle				; convert angle to flt32_t type
		orps	angle, sign					; set correct sign to the tan value
		ret
else if x eq d
		movq	sign, sreg					; sign = sign bit of tan
	SINCOS64	treg						; computing sine and cosine value
		movsd	[s_hcos], hcos				; save "hcos" variable into the stack
		movsd	[s_hsin], hsin				; save "hsin" variable into the stack
		movsd	[s_lcos], lcos				; save "lcos" variable into the stack
		movsd	[s_lsin], lsin				; save "lsin" variable into the stack
		fld		qword [s_hsin]
		fadd	qword [s_lsin]				; sin = hsin + lsin
		fld		qword [s_hcos]
		fadd	qword [s_lcos]
		fld1
		faddp								; cos = hcos + lcos + 1
		fdivp
		fstp	qword [s_res]
		movsd	angle, [s_res]				; return (sin / cos)
		orpd	angle, sign					; set correct sign to the tan value
		ret
end if
;---[Computing cot value]------------------
.cot:	xor		sreg, sval					; sign = -sign
if x eq s
		movd	sign, sreg					; sign = sign bit of tan
	SINCOS32	treg						; computing sine and cosine value
	cvtss2sd	hcos, hcos					; convert hcos to flt64_t type
	cvtss2sd	hsin, hsin					; convert hsin to flt64_t type
	cvtss2sd	lcos, lcos					; convert lcos to flt64_t type
	cvtss2sd	lsin, lsin					; convert lsin to flt64_t type
		initreg	one, reg, oneval, d			; one = 1.0
		addsd	hcos, lcos					; hcos += lcos
		addsd	hsin, lsin					; hsin += lsin
		addsd	hcos, one					; hcos += 1.0
		divsd	hcos, hsin					; angle = cos / sin
	cvtsd2ss	angle, angle				; convert angle to flt32_t type
		orps	angle, sign					; set correct sign to the tan value
		ret
else if x eq d
		movq	sign, sreg					; sign = sign bit of tan
	SINCOS64	treg						; computing sine and cosine value
		movsd	[s_hcos], hcos				; save "hcos" variable into the stack
		movsd	[s_hsin], hsin				; save "hsin" variable into the stack
		movsd	[s_lcos], lcos				; save "lcos" variable into the stack
		movsd	[s_lsin], lsin				; save "lsin" variable into the stack
		fld		qword [s_hsin]
		fadd	qword [s_lsin]				; sin = hsin + lsin
		fld		qword [s_hcos]
		fadd	qword [s_lcos]
		fld1
		faddp								; cos = hcos + lcos + 1
		fdivrp
		fstp	qword [s_res]
		movsd	angle, [s_res]				; return (cos / sin)
		orpd	angle, sign					; set correct sign to the tan value
		ret
end if
;---[Overflow branch]----------------------
.ovrfl:	initreg	angle, treg, dmask, x		; return NaN
		ret
}
Tan_flt32:	TAN	ecx, edx, eax, s
Tan_flt64:	TAN	rcx, rdx, rax, d

;==============================================================================;
;       Cotangent                                                              ;
;==============================================================================;
macro	COT	sval, sreg, treg, x
{
;---[Parameters]---------------------------
angle	equ		xmm0						; angle value
quadr	equ		rdi							; quadrant
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
temp9	equ		xmm9						; temporary register #9
origin	equ		xmm10						; original value
scale	equ		xmm11						; scale value
sign	equ		xmm12						; sign bit
mask	equ		temp1						; data mask
barier	equ		temp2						; PI / 4
hcos	equ		angle						; high significant bits of cos value
hsin	equ		temp1						; high significant bits of sin value
lcos	equ		temp2						; low significant bits of cos value
lsin	equ		temp3						; low significant bits of sin value
one		equ		temp4						; 1.0
reg		equ		rax							; temporary register to init xmm register
stack	equ		rsp							; stack pointer
s_res	equ		stack - 5 * 8				; stack position of "result" variable
s_hcos	equ		stack - 4 * 8				; stack position of "hcos" variable
s_lcos	equ		stack - 3 * 8				; stack position of "lcos" variable
s_hsin	equ		stack - 2 * 8				; stack position of "hsin" variable
s_lsin	equ		stack - 1 * 8				; stack position of "lsin" variable
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
oneval	= ONE_FLT64							; 1.0 (flt64_t)
pi		= PI4_FLT32							; PI / 4
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
pi		= PI4_FLT64							; PI / 4
end if
;------------------------------------------
		initreg	mask, treg, dmask, x		; mask = dmask
		mov		sval, smask					; set sign mask
		initreg	barier, treg, pi, x			; barier = PI / 4
if x eq s
		movd	sreg, angle					; sreg = angle
else if x eq d
		movq	sreg, angle					; sreg = angle
end if
		andp#x	angle, mask					; angle = Abs (angle)
		and		sreg, sval					; extract sign bit from angle value
		comis#x	angle, barier				; if (angle > PI / 4)
		ja		.ovrfl						;     then go to overflow branch
		test	quadr, 0x1					; if (quadr & 0x1)
		jnz		.tan						;     then compute tan value
;---[Computing cot value]------------------
if x eq s
		movd	sign, sreg					; sign = sign bit of tan
	SINCOS32	treg						; computing sine and cosine value
	cvtss2sd	hcos, hcos					; convert hcos to flt64_t type
	cvtss2sd	hsin, hsin					; convert hsin to flt64_t type
	cvtss2sd	lcos, lcos					; convert lcos to flt64_t type
	cvtss2sd	lsin, lsin					; convert lsin to flt64_t type
		initreg	one, reg, oneval, d			; one = 1.0
		addsd	hcos, lcos					; hcos += lcos
		addsd	hsin, lsin					; hsin += lsin
		addsd	hcos, one					; hcos += 1.0
		divsd	hcos, hsin					; angle = cos / sin
	cvtsd2ss	angle, angle				; convert angle to flt32_t type
		orps	angle, sign					; set correct sign to the tan value
		ret
else if x eq d
		movq	sign, sreg					; sign = sign bit of tan
	SINCOS64	treg						; computing sine and cosine value
		movsd	[s_hcos], hcos				; save "hcos" variable into the stack
		movsd	[s_hsin], hsin				; save "hsin" variable into the stack
		movsd	[s_lcos], lcos				; save "lcos" variable into the stack
		movsd	[s_lsin], lsin				; save "lsin" variable into the stack
		fld		qword [s_hsin]
		fadd	qword [s_lsin]				; sin = hsin + lsin
		fld		qword [s_hcos]
		fadd	qword [s_lcos]
		fld1
		faddp								; cos = hcos + lcos + 1
		fdivrp
		fstp	qword [s_res]
		movsd	angle, [s_res]				; return (cos / sin)
		orpd	angle, sign					; set correct sign to the tan value
		ret
end if
;---[Computing tan value]------------------
.tan:	xor		sreg, sval					; sign = -sign
if x eq s
		movd	sign, sreg					; sign = sign bit of tan
	SINCOS32	treg						; computing sine and cosine value
	cvtss2sd	hcos, hcos					; convert hcos to flt64_t type
	cvtss2sd	hsin, hsin					; convert hsin to flt64_t type
	cvtss2sd	lcos, lcos					; convert lcos to flt64_t type
	cvtss2sd	lsin, lsin					; convert lsin to flt64_t type
		initreg	one, reg, oneval, d			; one = 1.0
		addsd	hcos, lcos					; hcos += lcos
		addsd	hsin, lsin					; hsin += lsin
		addsd	hcos, one					; hcos += 1.0
		divsd	hsin, hcos
		movapd	angle, hsin					; angle = sin / cos
	cvtsd2ss	angle, angle				; convert angle to flt32_t type
		orps	angle, sign					; set correct sign to the tan value
		ret
else if x eq d
		movq	sign, sreg					; sign = sign bit of tan
	SINCOS64	treg						; computing sine and cosine value
		movsd	[s_hcos], hcos				; save "hcos" variable into the stack
		movsd	[s_hsin], hsin				; save "hsin" variable into the stack
		movsd	[s_lcos], lcos				; save "lcos" variable into the stack
		movsd	[s_lsin], lsin				; save "lsin" variable into the stack
		fld		qword [s_hsin]
		fadd	qword [s_lsin]				; sin = hsin + lsin
		fld		qword [s_hcos]
		fadd	qword [s_lcos]
		fld1
		faddp								; cos = hcos + lcos + 1
		fdivp
		fstp	qword [s_res]
		movsd	angle, [s_res]				; return (sin / cos)
		orpd	angle, sign					; set correct sign to the tan value
		ret
end if
;---[Overflow branch]----------------------
.ovrfl:	initreg	angle, treg, dmask, x		; return NaN
		ret
}
Cot_flt32:	COT	ecx, edx, eax, s
Cot_flt64:	COT	rcx, rdx, rax, d

;==============================================================================;
;       Sine and cosine                                                        ;
;==============================================================================;
macro	SINCOS	sval, sreg1, sreg2, treg, x
{
;---[Parameters]---------------------------
sin		equ		rdi							; pointer to place where to store sin value
cos		equ		rsi							; pointer to place where to store cos value
angle	equ		xmm0						; angle value
quadr	equ		rdx							; quadrant
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
temp9	equ		xmm9						; temporary register #9
origin	equ		xmm10						; original value
scale	equ		xmm11						; scale value
sign1	equ		xmm12						; sign bit of sine
sign2	equ		xmm12						; sign bit of cosine
mask	equ		temp1						; data mask
barier	equ		temp2						; PI / 4
hcos	equ		angle						; high significant bits of cos value
hsin	equ		temp1						; high significant bits of sin value
lcos	equ		temp2						; low significant bits of cos value
lsin	equ		temp3						; low significant bits of sin value
one		equ		temp4						; 1.0
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
oneval	= ONE_FLT32							; 1.0
pi		= PI4_FLT32							; PI / 4
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
oneval	= ONE_FLT64							; 1.0
pi		= PI4_FLT64							; PI / 4
end if
;------------------------------------------
		initreg	mask, treg, dmask, x		; mask = dmask
		mov		sval, smask					; set sign mask
		initreg	barier, treg, pi, x			; barier = PI / 4
if x eq s
		movd	sreg1, angle				; sreg1 = angle
else if x eq d
		movq	sreg1, angle				; sreg1 = angle
end if
		andp#x	angle, mask					; angle = Abs (angle)
		and		sreg1, sval					; extract sign bit from angle value
		comis#x	angle, barier				; if (angle > PI / 4)
		ja		.ovrfl						;     then go to overflow branch
		test	quadr, 0x1					; if (quadr & 0x1)
		jnz		.xchng						;     then exchange sin and cos values
;---[Computing sin and cos value]----------
		xor		treg, treg
		xor		sreg2, sreg2				; sign2 = +1.0
		test	quadr, 0x2					; if (quadr & 0x2)
		cmovnz	treg, sval					; {
		cmovnz	sreg2, sval					;     sign2 = -1.0
		xor		sreg1, treg					;     sign1 = -sign1
if x eq s									; }
		movd	sign1, sreg1				; sign1 = sign bit of sine
		movd	sign2, sreg2				; sign2 = sign bit of cosine
	SINCOS32	treg						; computing sine and cosine value
else if x eq d
		movq	sign1, sreg1				; sign1 = sign bit of sine
		movq	sign2, sreg2				; sign2 = sign bit of cosine
	SINCOS64	treg						; computing sine and cosine value
end if
		initreg	one, treg, oneval, x		; one = 1.0
		adds#x	hcos, lcos					; hcos += lcos
		adds#x	hsin, lsin					; hsin += lsin
		adds#x	hcos, one					; hcos += 1.0
		orp#x	hsin, sign1					; set correct sign to the sine value
		orp#x	hcos, sign2					; set correct sign to the cosine value
		movs#x	[sin], hsin					; sin[0] = sign1 * Sin (Abs(angle))
		movs#x	[cos], hcos					; cos[0] = sign2 * Cos (Abs(angle))
		ret
;---[Computing cos and sin value]----------
.xchng:	xor		treg, treg
		xor		sreg2, sreg2				; sign2 = +1.0
		test	quadr, 0x2					;
		cmovz	treg, sval					; if (quadr & 0x2 == 0), then sign1 = -sign1
		cmovnz	sreg2, sval					; if (quadr & 0x2), then sign2 = -1.0
		xor		sreg1, treg
if x eq s									; }
		movd	sign1, sreg1				; sign1 = sign bit of sine
		movd	sign2, sreg2				; sign2 = sign bit of cosine
	SINCOS32	treg						; computing sine and cosine value
else if x eq d
		movq	sign1, sreg1				; sign1 = sign bit of sine
		movq	sign2, sreg2				; sign2 = sign bit of cosine
	SINCOS64	treg						; computing sine and cosine value
end if
		initreg	one, treg, oneval, x		; one = 1.0
		adds#x	hcos, lcos					; hcos += lcos
		adds#x	hsin, lsin					; hsin += lsin
		adds#x	hcos, one					; hcos += 1.0
		orp#x	hsin, sign1					; set correct sign to the sine value
		orp#x	hcos, sign2					; set correct sign to the cosine value
		movs#x	[sin], hcos					; sin[0] = sign2 * Cos (Abs(angle))
		movs#x	[cos], hsin					; cos[0] = sign1 * Sin (Abs(angle))
		ret
;---[Overflow branch]----------------------
.ovrfl:	mov		treg, dmask
		mov		[sin], treg					; sin[0] = NaN
		mov		[cos], treg					; cos[0] = NaN
		ret
}
SinCos_flt32:	SINCOS	ecx, r8d, r9d, eax, s
SinCos_flt64:	SINCOS	rcx, r8, r9, rax, d

;******************************************************************************;
;       Minimum value                                                          ;
;******************************************************************************;
macro	MINMAX_INT	value1, value2, c
{
;---[Internal variables]-------------------
v1		equ		rdi							; register which holds value1
v2		equ		rsi							; register which holds value2
result	equ		rax							; regiser that holds min/max value
;------------------------------------------
		cmp		value1, value2				; if (value1 cond value2)
		cmov#c	result, v1					;     then result = value1
		cmovn#c	result, v2					;     else result = value2
		ret									; return result
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MINMAX_FLT	cmd, x
{
;---[Parameters]---------------------------
value1	equ		xmm0						; first value
value2	equ		xmm1						; second value
;------------------------------------------
		comis#x	value1, value1
		jp		@f
		cmd#x	value1, value2
@@:		ret
}

; Unsigned integer types
Min_uint8:		MINMAX_INT	dil, sil, b
Min_uint16:		MINMAX_INT	di, si, b
Min_uint32:		MINMAX_INT	edi, esi, b
Min_uint64:		MINMAX_INT	rdi, rsi, b

; Signed integer types
Min_sint8:		MINMAX_INT	dil, sil, l
Min_sint16:		MINMAX_INT	di, si, l
Min_sint32:		MINMAX_INT	edi, esi, l
Min_sint64:		MINMAX_INT	rdi, rsi, l

; Floating-point types
Min_flt32:		MINMAX_FLT	mins, s
Min_flt64:		MINMAX_FLT	mins, d

;******************************************************************************;
;       Maximum value                                                          ;
;******************************************************************************;

; Unsigned integer types
Max_uint8:		MINMAX_INT	dil, sil, a
Max_uint16:		MINMAX_INT	di, si, a
Max_uint32:		MINMAX_INT	edi, esi, a
Max_uint64:		MINMAX_INT	rdi, rsi, a

; Signed integer types
Max_sint8:		MINMAX_INT	dil, sil, g
Max_sint16:		MINMAX_INT	di, si, g
Max_sint32:		MINMAX_INT	edi, esi, g
Max_sint64:		MINMAX_INT	rdi, rsi, g

; Floating-point types
Max_flt32:		MINMAX_FLT	maxs, s
Max_flt64:		MINMAX_FLT	maxs, d

;******************************************************************************;
;       Greatest common divisor                                                ;
;******************************************************************************;
macro	GCD		value1, value2, temp, quot, remain, sign, scale
{
;------------------------------------------
		mov		temp, value2				; temp = value2
		mov		quot, value1				; quot = value1
		test	temp, temp					; if (temp != 0)
		jz		.exit						; {
;---[Dividing loop]------------------------
@@:											;      do {
if sign
		esign	scale
		idiv	temp						;          remain = quot / temp
else
		xor		remain, remain
		div		temp						;          remain = quot / temp
end if
		test	remain, remain				;          quot = temp
		mov		quot, temp					;          temp = remain
		mov		temp, remain				;      } while (temp != 0)
		jnz		@b							; }
;---[End of loop]--------------------------
.exit:	ret									; return quot
}

; Unsigned integer types
GCD_uint8:	GCD	dil, sil, cl, al, ah, 0, 0
GCD_uint16:	GCD	di, si, cx, ax, dx, 0, 1
GCD_uint32:	GCD	edi, esi, ecx, eax, edx, 0, 2
GCD_uint64:	GCD	rdi, rsi, rcx, rax, rdx, 0, 3

; Signed integer types
GCD_sint8:	GCD	dil, sil, cl, al, ah, 1, 0
GCD_sint16:	GCD	di, si, cx, ax, dx, 1, 1
GCD_sint32:	GCD	edi, esi, ecx, eax, edx, 1, 2
GCD_sint64:	GCD	rdi, rsi, rcx, rax, rdx, 1, 3

;******************************************************************************;
;       Least common multiple                                                  ;
;******************************************************************************;
macro	LCM		func, value1, value2, temp, quot, remain, sign, scale
{
;------------------------------------------
		call	func						; quot = GCD (value1, value2)
		test	quot, quot					; if (quot == 0)
		jz		.ovfl						;     then go to overflow branch
		mov		temp, quot					; temp = quot
		mov		quot, value2				; quot = value2
if sign
		esign	scale
		idiv	temp						; value2 /= temp
else
		xor		remain, remain
		div		temp						; value2 /= temp
end if
		mul		value1						; value1 *= value2 / GCD (value1, value2)
		jc		.ovfl						; if (overflow), then go to overflow branch
		ret
;---[Overflow branch]----------------------
.ovfl:	xor		quot, quot					; return 0 (means result overflow)
		ret
}

; Unsigned integer types
LCM_uint8:	LCM	GCD_uint8, dil, sil, cl, al, ah, 0, 0
LCM_uint16:	LCM	GCD_uint16, di, si, cx, ax, dx, 0, 1
LCM_uint32:	LCM	GCD_uint32, edi, esi, ecx, eax, edx, 0, 2
LCM_uint64:	LCM	GCD_uint64, rdi, rsi, rcx, rax, rdx, 0, 3

; Signed integer types
LCM_sint8:	LCM	GCD_sint8, dil, sil, cl, al, ah, 1, 0
LCM_sint16:	LCM	GCD_sint16, di, si, cx, ax, dx, 1, 1
LCM_sint32:	LCM	GCD_sint32, edi, esi, ecx, eax, edx, 1, 2
LCM_sint64:	LCM	GCD_sint64, rdi, rsi, rcx, rax, rdx, 1, 3

;******************************************************************************;
;       Exponentiation functions                                               ;
;******************************************************************************;
macro	EXPI	exp, treg, exp_min, exp_max, table, x
{
;---[Internal variables]-------------------
result	equ		xmm0						; result register
index	equ		rdi							; index register
if x eq s
inf		= INF_FLT32							; +inf
bytes	= 4									; array element size (bytes)
else if x eq d
inf		= INF_FLT64							; +inf
bytes	= 8									; array element size (bytes)
end if
;------------------------------------------
		movsx	index, exp					; index = exp
		cmp		index, exp_max				; if (index > exp_max)
		jg		.inf						;     then go to infinity branch
		cmp		index, exp_min				; if (index < exp_min)
		jl		.zero						;     then go to zero branch
		movs#x	result, [table + index*bytes - exp_min*bytes]	; result = exp[index]
		ret
;---[Infinity branch]----------------------
.inf:	initreg	result, treg, inf, x		; return +inf
		ret
;---[Zero branch]--------------------------
.zero:	xorp#x	result, result				; return 0.0
		ret
}

;==============================================================================;
;       Power of 2                                                             ;
;==============================================================================;
macro	EXP2_FLT32	iexp
{
;---[Internal variables]-------------------
min		equ		edi							; min exponent value
underfl	equ		esi							; count of underflow digits
shift	equ		ecx							; shift value to form subnormal number
shiftl	equ		cl							; low part of shift register
array	= exp2_flt32						; pointer to array of coefficients
bias	= 127								; exponent bias
digits	= 23								; precission of mantissa
bytes	= 4									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		movaps	origin, value
;---[Stage 1]------------------------------
		movss	temp1, [array + 0 * bytes]	; temp1 = array[0]
		movss	temp2, [array + 1 * bytes]	; temp2 = array[1]
		movss	temp3, [array + 2 * bytes]	; temp3 = array[2]
		movss	temp4, [array + 3 * bytes]	; temp4 = array[3]
		add		iexp, bias					; iexp += bias
		mov		underfl, 1
		mov		min, 1						; min = 1
		sub		underfl, iexp				; underfl = 1 - iexp
		xor		shift, shift				; shift = 0
		cmp		iexp, 1						; if (iexp < min)
		cmovl	iexp, min					;     iexp = min
		cmovl	shift, underfl				;     shift = underfl
		shl		iexp, digits				; iexp << digits
		shr		iexp, shiftl				; iexp >> shift
		movd	sfactor, iexp				; reinterpret iexp as flt32_t
		mulss	temp1, value
		addss	temp1, [array + 4 * bytes]	; temp1 = array[4] + array[0] * value
		mulss	temp2, value
		addss	temp2, [array + 5 * bytes]	; temp2 = array[5] + array[1] * value
		mulss	value, value				; value *= value
;---[Stage 2]------------------------------
		mulss	temp2, value
		addss	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulss	value, value				; value *= value
;---[Stage 3]------------------------------
		mulss	value, temp3
		addss	value, temp1				; value = temp1 + temp3 * value
;------------------------------------------
		mulss	value, origin				; value *= origin
		addss	value, temp4				; value += temp4
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXP2_FLT64	iexp
{
;---[Internal variables]-------------------
min		equ		rdi							; min exponent value
underfl	equ		rsi							; count of underflow digits
shift	equ		rcx							; shift value to form subnormal number
shiftl	equ		cl							; low part of shift register
array	= exp2_flt64						; pointer to array of coefficients
bias	= 1023								; exponent bias
digits	= 52								; precission of mantissa
bytes	= 8									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
	prefetchnta	[array + CLINE]				; prefetch data
		movapd	origin, value
;---[Stage 1]------------------------------
		movsd	temp1, [array + 0 * bytes]	; temp1 = array[0]
		movsd	temp2, [array + 1 * bytes]	; temp2 = array[1]
		movsd	temp3, [array + 2 * bytes]	; temp3 = array[2]
		movsd	temp4, [array + 3 * bytes]	; temp4 = array[3]
		movsd	temp5, [array + 4 * bytes]	; temp5 = array[4]
		movsd	temp6, [array + 5 * bytes]	; temp6 = array[5]
		movsd	temp7, [array + 6 * bytes]	; temp7 = array[6]
		add		iexp, bias					; iexp += bias
		mov		underfl, 1
		mov		min, 1						; min = 1
		sub		underfl, iexp				; underfl = 1 - iexp
		xor		shift, shift				; shift = 0
		cmp		iexp, 1						; if (iexp < min)
		cmovl	iexp, min					;     iexp = min
		cmovl	shift, underfl				;     shift = underfl
		shl		iexp, digits				; iexp << digits
		shr		iexp, shiftl				; iexp >> shift
		movq	sfactor, iexp				; reinterpret iexp as flt64_t
		mulsd	temp1, value
		addsd	temp1, [array + 7 * bytes]	; temp1 = array[7] + array[0] * value
		mulsd	temp2, value
		addsd	temp2, [array + 8 * bytes]	; temp2 = array[8] + array[1] * value
		mulsd	temp3, value
		addsd	temp3, [array + 9 * bytes]	; temp3 = array[9] + array[2] * value
		mulsd	temp4, value
		addsd	temp4, [array + 10 * bytes]	; temp4 = array[10] + array[3] * value
		mulsd	temp5, value
		addsd	temp5, [array + 11 * bytes]	; temp5 = array[11] + array[4] * value
		mulsd	value, value				; value *= value
;---[Stage 2]------------------------------
		mulsd	temp2, value
		addsd	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulsd	temp4, value
		addsd	temp3, temp4				; temp3 = temp3 + temp4 * value
		mulsd	temp6, value
		addsd	temp5, temp6				; temp5 = temp5 + temp6 * value
		mulsd	value, value				; value *= value
;---[Stage 3]------------------------------
		mulsd	temp3, value
		addsd	temp1, temp3				; temp1 = temp1 + temp3 * value
		mulsd	value, value				; value *= value
;---[Stage 4]------------------------------
		mulsd	value, temp5
		addsd	value, temp1				; value = temp1 + temp5 * value
;------------------------------------------
		mulsd	value, origin				; value *= origin
		addsd	value, temp7				; value += temp7
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXP2I	exp, temp, shift, x
{
;---[Internal variables]-------------------
result	equ		xmm0						; result register
shiftl	equ		cl							; low part of shift register
if x eq s
inf		= INF_FLT32							; +inf
bias	= 127								; exponent bias
digits	= 23								; count of bits into mantissa
else if x eq d
inf		= INF_FLT64							; +inf
bias	= 1023								; exponent bias
digits	= 52								; count of bits into mantissa
end if
exp_max	= bias								; max exponent
exp_min	= 1 - bias							; min exponent
exp_zer	= exp_min - digits					; min exponent of subnormal value
;------------------------------------------
		movsx	temp, exp					; temp = exp
		cmp		temp, exp_max				; if (temp > exp_max)
		jg		.inf						;     then go to infinity branch
		cmp		temp, exp_min				; if (temp < exp_min)
		jl		.sub						;     then go to subnormal branch
		add		temp, bias					; temp = exp + bias
		shl		temp, digits				; temp <<= digits
if x eq s
		movd	result, temp				; reinterpret temp as flt32_t
else if x eq d
		movq	result, temp				; reinterpret temp as flt64_t
end if
		ret									; return temp
;---[Infinity branch]----------------------
.inf:	initreg	result, temp, inf, x		; return +inf
		ret
;---[Subnormal branch]---------------------
.sub:	sub		temp, exp_zer				; if (index < exp_zer)
		jl		.zero						;     then go to zero branch
		mov		shift, temp					; shift = temp
		mov		temp, 1
		shl		temp, shiftl				; produce subnormal value
if x eq s
		movd	result, temp				; reinterpret temp as flt32_t
else if x eq d
		movq	result, temp				; reinterpret temp as flt64_t
end if
		ret									; return temp
;---[Zero branch]--------------------------
.zero:	xorp#x	result, result				; return 0.0
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXP2	iexp, treg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to compute exponent function
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
origin	equ		xmm8						; original value
sfactor	equ		xmm9						; scale factor
val1	equ		xmm10						; temporary register #1 that hold value
val2	equ		xmm11						; temporary register #2 that hold value
magic	equ		temp1						; magic number to get integer part
ipart	equ		temp2						; integer part of value
max		equ		temp3						; max exponent value
min		equ		temp4						; max exponent value
log		equ		temp5						; ln(2)
reg		equ		rdx							; temporary register to init xmm register
stack	equ		rsp							; stack pointer
s_value	equ		stack - 2 * 8				; stack position of "value" variable
s_scale	equ		stack - 1 * 8				; stack position of "scale" variable
if x eq s
mvalue	= MAGIC_FLT32						; magic number to get integer part from value
inf		= INF_FLT32							; infinity
moneval	= MONE_FLT32						; -1.0
exp_min	= 0xC3150000						; min exponent value
exp_max	= 0x42FE0000						; max exponent value
else if x eq d
mvalue	= MAGIC_FLT64						; magic number to get integer part from value
inf		= INF_FLT64							; infinity
moneval	= MONE_FLT64						; -1.0
exp_min	= 0xC090C80000000000				; min exponent value
exp_max	= 0x408FF80000000000				; max exponent value
end if
ln2		= 0x3FE62E42FEFA39EF				; ln(2)
;------------------------------------------
		initreg	max, treg, exp_max, x		; load max exponent value
		initreg	min, treg, exp_min, x		; load max exponent value
		initreg	magic, treg, mvalue, x		; load magic number
		movap#x	ipart, value				; ipart = value
		comis#x	value, max					; if (value > max)
		ja		.inf						;     return inf
		comis#x	value, min					; if (value < min)
		jb		.zero						;     return 0.0
		adds#x	ipart, magic
if x eq s
		movd	iexp, ipart					; iexp = rint (value)
		cwde
else if x eq d
		movq	iexp, ipart					; iexp = rint (value)
		cdqe
end if
		subs#x	ipart, magic				; ipart = rint (value)
		subs#x	value, ipart				; value = fractional_part (value)
if x eq s
;---[Single precision code]----------------
		initreg	log, reg, ln2, d			; log = ln(2)
	cvtss2sd	val1, value
		mulsd	val1, log					; val1 = value * ln(2)
		movapd	val2, val1
		mulsd	val2, val2					; val2 = val1 ^ 2
	EXP2_FLT32	iexp						; compute exp(value) and sfactor
	cvtss2sd	value, value
	cvtss2sd	sfactor, sfactor
		mulsd	val2, value
		addsd	val1, val2					; val1 = value + value ^ 2 * R
		mulsd	val1, sfactor				; val1 *= scale
		addsd	val1, sfactor				; val1 = val1 * sfactor + sfactor
	cvtsd2ss	value, val1					; return val1
		ret
else if x eq d
;---[Double precision code]----------------
		fldln2								; log = ln(2)
		movsd	[s_value], value
		fmul	qword [s_value]				; val1 = value * ln(2)
		fld		st0
		fmul	st0, st0					; val2 = val1 ^ 2
	EXP2_FLT64	iexp						; compute exp(value) and sfactor
		movsd	[s_value], value
		movsd	[s_scale], sfactor
		fld		qword [s_value]
		fmulp	st1, st0
		faddp	st1, st0					; val1 = value + value ^ 2 * R
		fld		qword [s_scale]
		fmul	st1, st0					; val1 *= scale
		faddp	st1, st0					; val1 = val1 * sfactor + sfactor
		fstp	qword [s_value]
		movsd	value, [s_value]			; return val1
		ret
end if
;----[Return inf]--------------------------
.inf:	initreg	value, treg, inf, x			; return +inf
		ret
;----[Return zero]-------------------------
.zero:	xorp#x	value, value				; return 0.0
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXP2M1	iexp, treg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to compute exponent function
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
origin	equ		xmm8						; original value
sfactor	equ		xmm9						; scale factor
val1	equ		xmm10						; temporary register #1 that hold value
val2	equ		xmm11						; temporary register #2 that hold value
magic	equ		temp1						; magic number to get integer part
ipart	equ		temp2						; integer part of value
max		equ		temp3						; max exponent value
min		equ		temp4						; max exponent value
log		equ		temp5						; ln(2)
one		equ		temp6						; 1.0
reg		equ		rdx							; temporary register to init xmm register
stack	equ		rsp							; stack pointer
s_value	equ		stack - 2 * 8				; stack position of "value" variable
s_scale	equ		stack - 1 * 8				; stack position of "scale" variable
if x eq s
mvalue	= MAGIC_FLT32						; magic number to get integer part from value
inf		= INF_FLT32							; infinity
moneval	= MONE_FLT32						; -1.0
exp_min	= 0xC3150000						; min exponent value
exp_max	= 0x42FE0000						; max exponent value
else if x eq d
mvalue	= MAGIC_FLT64						; magic number to get integer part from value
inf		= INF_FLT64							; infinity
moneval	= MONE_FLT64						; -1.0
exp_min	= 0xC090C80000000000				; min exponent value
exp_max	= 0x408FF80000000000				; max exponent value
end if
oneval	= ONE_FLT64							; 1.0
ln2		= 0x3FE62E42FEFA39EF				; ln(2)
;------------------------------------------
		initreg	max, treg, exp_max, x		; load max exponent value
		initreg	min, treg, exp_min, x		; load max exponent value
		initreg	magic, treg, mvalue, x		; load magic number
		movap#x	ipart, value				; ipart = value
		comis#x	value, max					; if (value > max)
		ja		.inf						;     return inf
		comis#x	value, min					; if (value < min)
		jb		.mone						;     return -1.0
		adds#x	ipart, magic
if x eq s
		movd	iexp, ipart					; iexp = rint (value)
		cwde
else if x eq d
		movq	iexp, ipart					; iexp = rint (value)
		cdqe
end if
		subs#x	ipart, magic				; ipart = rint (value)
		subs#x	value, ipart				; value = fractional_part (value)
if x eq s
;---[Single precision code]----------------
		initreg	log, reg, ln2, d			; log = ln(2)
	cvtss2sd	val1, value
		mulsd	val1, log					; val1 = value * ln(2)
		movapd	val2, val1
		mulsd	val2, val2					; val2 = val1 ^ 2
	EXP2_FLT32	iexp						; compute exp(value) and sfactor
	cvtss2sd	value, value
	cvtss2sd	sfactor, sfactor
		mulsd	val2, value
		addsd	val1, val2					; val1 = value + value ^ 2 * R
		initreg	one, reg, oneval, d			; one = 1.0
		mulsd	val1, sfactor				; val1 *= scale
		subsd	sfactor, one				; sfactor -= 1.0
		addsd	val1, sfactor				; val1 = val1 * sfactor + (sfactor - 1)
	cvtsd2ss	value, val1					; return val1
		ret
else if x eq d
;---[Double precision code]----------------
		fldln2								; log = ln(2)
		movsd	[s_value], value
		fmul	qword [s_value]				; val1 = value * ln(2)
		fld		st0
		fmul	st0, st0					; val2 = val1 ^ 2
	EXP2_FLT64	iexp						; compute exp(value) and sfactor
		movsd	[s_value], value
		movsd	[s_scale], sfactor
		fld		qword [s_value]
		fmulp	st1, st0
		faddp	st1, st0					; val1 = value + value ^ 2 * R
		fld1
		fld		qword [s_scale]
		fmul	st2, st0					; val1 *= scale
		fsubrp	st1, st0					; sfactor -= 1.0
		faddp	st1, st0					; val1 = val1 * sfactor + (sfactor - 1)
		fstp	qword [s_value]
		movsd	value, [s_value]			; return val1
		ret
end if
;----[Return inf]--------------------------
.inf:	initreg	value, treg, inf, x			; return +inf
		ret
;----[Return minus one]--------------------
.mone:	initreg	value, treg, moneval, x		; return -1.0
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Exp2_int:
;---[Parameters]---------------------------
exp		equ		dil							; exponent value
;---[Internal variables]-------------------
shift	equ		cl							; binary shift value
result	equ		rax							; result register
max		= 64								; max exponent value
;------------------------------------------
		mov		shift, exp					; shift = exp
		cmp		exp, max					; if (shift >= max)
		jae		.ovfl						;     then go to overflow branch
		mov		result, 1					; result = 1
		shl		result, shift				; return (1 <<= shift)
		ret
;---[Overflow branch]----------------------
.ovfl:	xor		result, result				; return 0 (means result overflow)
		ret

; Integer power of 2
Exp2i_flt32:	EXP2I	dil, eax, ecx, s
Exp2i_flt64:	EXP2I	di, rax, rcx, d

; Real power of 2
Exp2_flt32:		EXP2	eax, edx, s
Exp2_flt64:		EXP2	rax, rdx, d
Exp2m1_flt32:	EXP2M1	eax, edx, s
Exp2m1_flt64:	EXP2M1	rax, rdx, d

;==============================================================================;
;       Power of 10                                                            ;
;==============================================================================;
macro	EXP10_FLT32	iexp
{
;---[Internal variables]-------------------
array	= exp10_flt32						; pointer to array of coefficients
offst	= 46								; offset of 10^0 from the beginning of table
bytes	= 4									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		movaps	origin, value
;---[Stage 1]------------------------------
		movss	temp1, [array + 0 * bytes]	; temp1 = array[0]
		movss	temp2, [array + 1 * bytes]	; temp2 = array[1]
		movss	temp3, [array + 2 * bytes]	; temp3 = array[2]
		movss	temp4, [array + 3 * bytes]	; temp4 = array[3]
		movss	sfactor, [ten_table_flt32 + iexp * bytes + offst * bytes]
		mulss	temp1, value
		addss	temp1, [array + 4 * bytes]	; temp1 = array[4] + array[0] * value
		mulss	temp2, value
		addss	temp2, [array + 5 * bytes]	; temp2 = array[5] + array[1] * value
		mulss	temp3, value
		addss	temp3, [array + 6 * bytes]	; temp3 = array[6] + array[2] * value
		mulss	value, value				; value *= value
;---[Stage 2]------------------------------
		mulss	temp2, value
		addss	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulss	value, value				; value *= value
;---[Stage 3]------------------------------
		mulss	value, temp3
		addss	value, temp1				; value = temp1 + temp3 * value
;------------------------------------------
		mulss	value, origin				; value *= origin
		addss	value, temp4				; value += temp4
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXP10_FLT64	iexp
{
;---[Internal variables]-------------------
array	= exp10_flt64						; pointer to array of coefficients
offst	= 324								; offset of 10^0 from the beginning of table
bytes	= 8									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
	prefetchnta	[array + CLINE]				; prefetch data
		movapd	origin, value
;---[Stage 1]------------------------------
		movsd	temp1, [array + 0 * bytes]	; temp1 = array[0]
		movsd	temp2, [array + 1 * bytes]	; temp2 = array[1]
		movsd	temp3, [array + 2 * bytes]	; temp3 = array[2]
		movsd	temp4, [array + 3 * bytes]	; temp4 = array[3]
		movsd	temp5, [array + 4 * bytes]	; temp5 = array[4]
		movsd	temp6, [array + 5 * bytes]	; temp6 = array[5]
		movsd	temp7, [array + 6 * bytes]	; temp7 = array[6]
		movsd	temp8, [array + 7 * bytes]	; temp8 = array[7]
		movsd	sfactor, [ten_table_flt64 + iexp * bytes + offst * bytes]
		mulsd	temp1, value
		addsd	temp1, [array + 8 * bytes]	; temp1 = array[8] + array[0] * value
		mulsd	temp2, value
		addsd	temp2, [array + 9 * bytes]	; temp2 = array[9] + array[1] * value
		mulsd	temp3, value
		addsd	temp3, [array + 10 * bytes]	; temp3 = array[10] + array[2] * value
		mulsd	temp4, value
		addsd	temp4, [array + 11 * bytes]	; temp4 = array[11] + array[3] * value
		mulsd	temp5, value
		addsd	temp5, [array + 12 * bytes]	; temp5 = array[12] + array[4] * value
		mulsd	temp6, value
		addsd	temp6, [array + 13 * bytes]	; temp6 = array[13] + array[5] * value
		mulsd	value, value				; value *= value
;---[Stage 2]------------------------------
		mulsd	temp2, value
		addsd	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulsd	temp4, value
		addsd	temp3, temp4				; temp3 = temp3 + temp4 * value
		mulsd	temp6, value
		addsd	temp5, temp6				; temp5 = temp5 + temp6 * value
		mulsd	value, value				; value *= value
;---[Stage 3]------------------------------
		mulsd	temp3, value
		addsd	temp1, temp3				; temp1 = temp1 + temp3 * value
		mulsd	temp7, value
		addsd	temp5, temp7				; temp5 = temp5 + temp7 * value
		mulsd	value, value				; value *= value
;---[Stage 4]------------------------------
		mulsd	value, temp5
		addsd	value, temp1				; value = temp1 + temp5 * value
;------------------------------------------
		mulsd	value, origin				; value *= origin
		addsd	value, temp8				; value += temp8
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXP10	iexp, treg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to compute exponent function
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
origin	equ		xmm9						; original value
sfactor	equ		xmm10						; scale factor
val1	equ		xmm11						; temporary register #1 that hold value
val2	equ		xmm12						; temporary register #2 that hold value
magic	equ		temp1						; magic number to get integer part
ipart	equ		temp2						; integer part of value
max		equ		temp3						; max exponent value
min		equ		temp4						; max exponent value
log		equ		temp5						; ln(10) / 2
reg		equ		rdx							; temporary register to init xmm register
stack	equ		rsp							; stack pointer
s_value	equ		stack - 2 * 8				; stack position of "value" variable
s_scale	equ		stack - 1 * 8				; stack position of "scale" variable
if x eq s
mvalue	= MAGIC_FLT32						; magic number to get integer part from value
inf		= INF_FLT32							; infinity
moneval	= MONE_FLT32						; -1.0
exp_min	= 0xC2380000						; min exponent value
exp_max	= 0x421C0000						; max exponent value
else if x eq d
mvalue	= MAGIC_FLT64						; magic number to get integer part from value
inf		= INF_FLT64							; infinity
moneval	= MONE_FLT64						; -1.0
exp_min	= 0xC074400000000000				; min exponent value
exp_max	= 0x4073500000000000				; max exponent value
end if
ln10	= 0x3FF26BB1BBB55516				; ln(10) / 2
;------------------------------------------
		initreg	max, treg, exp_max, x		; load max exponent value
		initreg	min, treg, exp_min, x		; load max exponent value
		initreg	magic, treg, mvalue, x		; load magic number
		movap#x	ipart, value				; ipart = value
		comis#x	value, max					; if (value > max)
		ja		.inf						;     return inf
		comis#x	value, min					; if (value < min)
		jb		.zero						;     return 0.0
		adds#x	ipart, magic
if x eq s
		movd	iexp, ipart					; iexp = rint (value)
		cwde
else if x eq d
		movq	iexp, ipart					; iexp = rint (value)
		cdqe
end if
		subs#x	ipart, magic				; ipart = rint (value)
		subs#x	value, ipart				; value = fractional_part (value)
if x eq s
;---[Single precision code]----------------
		initreg	log, reg, ln10, d			; log = ln(10) / 2
	cvtss2sd	val1, value
		mulsd	val1, log					; val1 = value * ln(10) / 2
		movapd	val2, val1
		mulsd	val2, val2					; val2 = val1 ^ 2
	EXP10_FLT32	iexp						; compute exp(value) and sfactor
	cvtss2sd	value, value
	cvtss2sd	sfactor, sfactor
		mulsd	val2, value
		addsd	val1, val2					; val1 = value + value ^ 2 * R
		movapd	val2, val1
		mulsd	val1, val1
		addsd	val2, val2
		addsd	val1, val2					; val1 = val1 ^ 2 + val1 * 2
		mulsd	val1, sfactor				; val1 *= scale
		addsd	val1, sfactor				; val1 = val1 * sfactor + sfactor
	cvtsd2ss	value, val1					; return val1
		ret
else if x eq d
;---[Double precision code]----------------
		fld		tbyte [.logt]				; log = ln(10) / 2
		movsd	[s_value], value
		fmul	qword [s_value]				; val1 = value * ln(10) / 2
		fld		st0
		fmul	st0, st0					; val2 = val1 ^ 2
	EXP10_FLT64	iexp						; compute exp(value) and sfactor
		movsd	[s_value], value
		movsd	[s_scale], sfactor
		fld		qword [s_value]
		fmulp	st1, st0
		faddp	st1, st0					; val1 = value + value ^ 2 * R
		fld		st0
		fmul	st1, st0
		fadd	st0, st0
		faddp	st1, st0					; val1 = val1 ^ 2 + val1 * 2
		fld		qword [s_scale]
		fmul	st1, st0					; val1 *= scale
		faddp	st1, st0					; val1 = val1 * sfactor + sfactor
		fstp	qword [s_value]
		movsd	value, [s_value]			; return val1
		ret
end if
;----[Return inf]--------------------------
.inf:	initreg	value, treg, inf, x			; return +inf
		ret
;----[Return zero]-------------------------
.zero:	xorp#x	value, value				; return 0.0
		ret
.logt:	dt		1.1512925464970228420089957	; ln(10) / 2
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXP10M1	iexp, treg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to compute exponent function
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
origin	equ		xmm9						; original value
sfactor	equ		xmm10						; scale factor
val1	equ		xmm11						; temporary register #1 that hold value
val2	equ		xmm12						; temporary register #2 that hold value
magic	equ		temp1						; magic number to get integer part
ipart	equ		temp2						; integer part of value
max		equ		temp3						; max exponent value
min		equ		temp4						; max exponent value
log		equ		temp5						; ln(10) / 2
one		equ		temp6						; 1.0
reg		equ		rdx							; temporary register to init xmm register
stack	equ		rsp							; stack pointer
s_value	equ		stack - 2 * 8				; stack position of "value" variable
s_scale	equ		stack - 1 * 8				; stack position of "scale" variable
if x eq s
mvalue	= MAGIC_FLT32						; magic number to get integer part from value
inf		= INF_FLT32							; infinity
moneval	= MONE_FLT32						; -1.0
exp_min	= 0xC2380000						; min exponent value
exp_max	= 0x421C0000						; max exponent value
else if x eq d
mvalue	= MAGIC_FLT64						; magic number to get integer part from value
inf		= INF_FLT64							; infinity
moneval	= MONE_FLT64						; -1.0
exp_min	= 0xC074400000000000				; min exponent value
exp_max	= 0x4073500000000000				; max exponent value
end if
oneval	= ONE_FLT64							; 1.0
ln10	= 0x3FF26BB1BBB55516				; ln(10) / 2
;------------------------------------------
		initreg	max, treg, exp_max, x		; load max exponent value
		initreg	min, treg, exp_min, x		; load max exponent value
		initreg	magic, treg, mvalue, x		; load magic number
		movap#x	ipart, value				; ipart = value
		comis#x	value, max					; if (value > max)
		ja		.inf						;     return inf
		comis#x	value, min					; if (value < min)
		jb		.mone						;     return -1.0
		adds#x	ipart, magic
if x eq s
		movd	iexp, ipart					; iexp = rint (value)
		cwde
else if x eq d
		movq	iexp, ipart					; iexp = rint (value)
		cdqe
end if
		subs#x	ipart, magic				; ipart = rint (value)
		subs#x	value, ipart				; value = fractional_part (value)
if x eq s
;---[Single precision code]----------------
		initreg	log, reg, ln10, d			; log = ln(10) / 2
	cvtss2sd	val1, value
		mulsd	val1, log					; val1 = value * ln(10) / 2
		movapd	val2, val1
		mulsd	val2, val2					; val2 = val1 ^ 2
	EXP10_FLT32	iexp						; compute exp(value) and sfactor
	cvtss2sd	value, value
	cvtss2sd	sfactor, sfactor
		mulsd	val2, value
		addsd	val1, val2					; val1 = value + value ^ 2 * R
		movapd	val2, val1
		mulsd	val1, val1
		addsd	val2, val2
		addsd	val1, val2					; val1 = val1 ^ 2 + val1 * 2
		initreg	one, reg, oneval, d			; one = 1.0
		mulsd	val1, sfactor				; val1 *= scale
		subsd	sfactor, one				; sfactor -= 1.0
		addsd	val1, sfactor				; val1 = val1 * sfactor + (sfactor - 1)
	cvtsd2ss	value, val1					; return val1
		ret
else if x eq d
;---[Double precision code]----------------
		fld		tbyte [.logt]				; log = ln(10) / 2
		movsd	[s_value], value
		fmul	qword [s_value]				; val1 = value * ln(10) / 2
		fld		st0
		fmul	st0, st0					; val2 = val1 ^ 2
	EXP10_FLT64	iexp						; compute exp(value) and sfactor
		movsd	[s_value], value
		movsd	[s_scale], sfactor
		fld		qword [s_value]
		fmulp	st1, st0
		faddp	st1, st0					; val1 = value + value ^ 2 * R
		fld		st0
		fmul	st1, st0
		fadd	st0, st0
		faddp	st1, st0					; val1 = val1 ^ 2 + val1 * 2
		fld1
		fld		qword [s_scale]
		fmul	st2, st0					; val1 *= scale
		fsubrp	st1, st0					; sfactor -= 1.0
		faddp	st1, st0					; val1 = val1 * sfactor + (sfactor - 1)
		fstp	qword [s_value]
		movsd	value, [s_value]			; return val1
		ret
end if
;----[Return inf]--------------------------
.inf:	initreg	value, treg, inf, x			; return +inf
		ret
;----[Return minus one]--------------------
.mone:	initreg	value, treg, moneval, x		; return -1.0
		ret
.logt:	dt		1.1512925464970228420089957	; ln(10) / 2
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Exp10_int:
;---[Parameters]---------------------------
exp		equ		dil							; exponent value
;---[Internal variables]-------------------
result	equ		rax							; result register
index	equ		rdi							; index register
max		equ		rsi							; register which holds max exponent value
exp_max	= 20								; max exponent value
;------------------------------------------
	prefetchnta	[ten_table_int]				; prefetch data
		movsx	index, exp					; index = exp
		mov		max, exp_max				; max = max exponent value
		cmp		index, exp_max				; if (index > exp_max)
		cmova	index, max					;     index = exp_max
		mov		result, [ten_table_int+index*8]; return ten_table [index]
		ret

; Integer power of 10
Exp10i_flt32:	EXPI	dil, eax, -46, +39, ten_table_flt32, s
Exp10i_flt64:	EXPI	di, rax, -324, +309, ten_table_flt64, d

; Real power of 10
Exp10_flt32:	EXP10	eax, edx, s
Exp10_flt64:	EXP10	rax, rdx, d
Exp10m1_flt32:	EXP10M1	eax, edx, s
Exp10m1_flt64:	EXP10M1	rax, rdx, d

;==============================================================================;
;       Power of E                                                             ;
;==============================================================================;
macro	EXPE_FLT32	iexp
{
;---[Internal variables]-------------------
array	= exp_flt32							; pointer to array of coefficients
offst	= 104								; offset of e^0 from the beginning of table
bytes	= 4									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		movaps	origin, value
;---[Stage 1]------------------------------
		movss	temp1, [array + 0 * bytes]	; temp1 = array[0]
		movss	temp2, [array + 1 * bytes]	; temp2 = array[1]
		movss	temp3, [array + 2 * bytes]	; temp3 = array[2]
		movss	temp4, [array + 3 * bytes]	; temp4 = array[3]
		movss	sfactor, [exp_table_flt32 + iexp * bytes + offst * bytes]
		mulss	temp1, value
		addss	temp1, [array + 4 * bytes]	; temp1 = array[4] + array[0] * value
		mulss	temp2, value
		addss	temp2, [array + 5 * bytes]	; temp2 = array[5] + array[1] * value
		mulss	temp3, value
		addss	temp3, [array + 6 * bytes]	; temp3 = array[6] + array[2] * value
		mulss	value, value				; value *= value
;---[Stage 2]------------------------------
		mulss	temp2, value
		addss	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulss	value, value				; value *= value
;---[Stage 3]------------------------------
		mulss	value, temp3
		addss	value, temp1				; value = temp1 + temp3 * value
;------------------------------------------
		mulss	value, origin				; value *= origin
		addss	value, temp4				; value += temp4
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXPE_FLT64	iexp
{
;---[Internal variables]-------------------
array	= exp_flt64							; pointer to array of coefficients
offst	= 746								; offset of e^0 from the beginning of table
bytes	= 8									; size of array element (bytes)
;------------------------------------------
	prefetchnta	[array]						; prefetch data
	prefetchnta	[array + CLINE]				; prefetch data
		movapd	origin, value
;---[Stage 1]------------------------------
		movsd	temp1, [array + 0 * bytes]	; temp1 = array[0]
		movsd	temp2, [array + 1 * bytes]	; temp2 = array[1]
		movsd	temp3, [array + 2 * bytes]	; temp3 = array[2]
		movsd	temp4, [array + 3 * bytes]	; temp4 = array[3]
		movsd	temp5, [array + 4 * bytes]	; temp5 = array[4]
		movsd	temp6, [array + 5 * bytes]	; temp6 = array[5]
		movsd	temp7, [array + 6 * bytes]	; temp7 = array[6]
		movsd	temp8, [array + 7 * bytes]	; temp8 = array[7]
		movsd	sfactor, [exp_table_flt64 + iexp * bytes + offst * bytes]
		mulsd	temp1, value
		addsd	temp1, [array + 8 * bytes]	; temp1 = array[8] + array[0] * value
		mulsd	temp2, value
		addsd	temp2, [array + 9 * bytes]	; temp2 = array[9] + array[1] * value
		mulsd	temp3, value
		addsd	temp3, [array + 10 * bytes]	; temp3 = array[10] + array[2] * value
		mulsd	temp4, value
		addsd	temp4, [array + 11 * bytes]	; temp4 = array[11] + array[3] * value
		mulsd	temp5, value
		addsd	temp5, [array + 12 * bytes]	; temp5 = array[12] + array[4] * value
		mulsd	temp6, value
		addsd	temp6, [array + 13 * bytes]	; temp6 = array[13] + array[5] * value
		mulsd	value, value				; value *= value
;---[Stage 2]------------------------------
		mulsd	temp2, value
		addsd	temp1, temp2				; temp1 = temp1 + temp2 * value
		mulsd	temp4, value
		addsd	temp3, temp4				; temp3 = temp3 + temp4 * value
		mulsd	temp6, value
		addsd	temp5, temp6				; temp5 = temp5 + temp6 * value
		mulsd	value, value				; value *= value
;---[Stage 3]------------------------------
		mulsd	temp3, value
		addsd	temp1, temp3				; temp1 = temp1 + temp3 * value
		mulsd	temp7, value
		addsd	temp5, temp7				; temp5 = temp5 + temp7 * value
		mulsd	value, value				; value *= value
;---[Stage 4]------------------------------
		mulsd	value, temp5
		addsd	value, temp1				; value = temp1 + temp5 * value
;------------------------------------------
		mulsd	value, origin				; value *= origin
		addsd	value, temp8				; value += temp8
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXPE	iexp, treg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to compute exponent function
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
origin	equ		xmm9						; original value
sfactor	equ		xmm10						; scale factor
val1	equ		xmm11						; temporary register #1 that hold value
val2	equ		xmm12						; temporary register #2 that hold value
magic	equ		temp1						; magic number to get integer part
ipart	equ		temp2						; integer part of value
max		equ		temp3						; max exponent value
min		equ		temp4						; max exponent value
reg		equ		rdx							; temporary register to init xmm register
stack	equ		rsp							; stack pointer
s_value	equ		stack - 2 * 8				; stack position of "value" variable
s_scale	equ		stack - 1 * 8				; stack position of "scale" variable
if x eq s
mvalue	= MAGIC_FLT32						; magic number to get integer part from value
inf		= INF_FLT32							; infinity
moneval	= MONE_FLT32						; -1.0
exp_min	= 0xC2D00000						; min exponent value
exp_max	= 0x42B20000						; max exponent value
else if x eq d
mvalue	= MAGIC_FLT64						; magic number to get integer part from value
inf		= INF_FLT64							; infinity
moneval	= MONE_FLT64						; -1.0
exp_min	= 0xC087500000000000				; min exponent value
exp_max	= 0x4086300000000000				; max exponent value
end if
;------------------------------------------
		initreg	max, treg, exp_max, x		; load max exponent value
		initreg	min, treg, exp_min, x		; load max exponent value
		initreg	magic, treg, mvalue, x		; load magic number
		movap#x	ipart, value				; ipart = value
		comis#x	value, max					; if (value > max)
		ja		.inf						;     return inf
		comis#x	value, min					; if (value < min)
		jb		.zero						;     return 0.0
		adds#x	ipart, magic
if x eq s
		movd	iexp, ipart					; iexp = rint (value)
		cwde
else if x eq d
		movq	iexp, ipart					; iexp = rint (value)
		cdqe
end if
		subs#x	ipart, magic				; ipart = rint (value)
		subs#x	value, ipart				; value = fractional_part (value)
if x eq s
;---[Single precision code]----------------
	cvtss2sd	val1, value					; val1 = value
		movapd	val2, val1
		mulsd	val2, val2					; val2 = val1 ^ 2
	EXPE_FLT32	iexp						; compute exp(value) and sfactor
	cvtss2sd	value, value
	cvtss2sd	sfactor, sfactor
		mulsd	val2, value
		addsd	val1, val2					; val1 = value + value ^ 2 * R
		mulsd	val1, sfactor				; val1 *= scale
		addsd	val1, sfactor				; val1 = val1 * sfactor + sfactor
	cvtsd2ss	value, val1					; return val1
		ret
else if x eq d
;---[Double precision code]----------------
		movsd	[s_value], value
		fld		qword [s_value]				; val1 = value
		fld		st0
		fmul	st0, st0					; val2 = val1 ^ 2
	EXPE_FLT64	iexp						; compute exp(value) and sfactor
		movsd	[s_value], value
		movsd	[s_scale], sfactor
		fld		qword [s_value]
		fmulp	st1, st0
		faddp	st1, st0					; val1 = value + value ^ 2 * R
		fld		qword [s_scale]
		fmul	st1, st0					; val1 *= scale
		faddp	st1, st0					; val1 = val1 * sfactor + sfactor
		fstp	qword [s_value]
		movsd	value, [s_value]			; return val1
		ret
end if
;----[Return inf]--------------------------
.inf:	initreg	value, treg, inf, x			; return +inf
		ret
;----[Return zero]-------------------------
.zero:	xorp#x	value, value				; return 0.0
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXPEM1	iexp, treg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to compute exponent function
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
origin	equ		xmm9						; original value
sfactor	equ		xmm10						; scale factor
val1	equ		xmm11						; temporary register #1 that hold value
val2	equ		xmm12						; temporary register #2 that hold value
magic	equ		temp1						; magic number to get integer part
ipart	equ		temp2						; integer part of value
max		equ		temp3						; max exponent value
min		equ		temp4						; max exponent value
one		equ		temp5						; 1.0
reg		equ		rdx							; temporary register to init xmm register
stack	equ		rsp							; stack pointer
s_value	equ		stack - 2 * 8				; stack position of "value" variable
s_scale	equ		stack - 1 * 8				; stack position of "scale" variable
if x eq s
mvalue	= MAGIC_FLT32						; magic number to get integer part from value
inf		= INF_FLT32							; infinity
moneval	= MONE_FLT32						; -1.0
exp_min	= 0xC2D00000						; min exponent value
exp_max	= 0x42B20000						; max exponent value
else if x eq d
mvalue	= MAGIC_FLT64						; magic number to get integer part from value
inf		= INF_FLT64							; infinity
moneval	= MONE_FLT64						; -1.0
exp_min	= 0xC087500000000000				; min exponent value
exp_max	= 0x4086300000000000				; max exponent value
end if
oneval	= ONE_FLT64							; 1.0
;------------------------------------------
		initreg	max, treg, exp_max, x		; load max exponent value
		initreg	min, treg, exp_min, x		; load max exponent value
		initreg	magic, treg, mvalue, x		; load magic number
		movap#x	ipart, value				; ipart = value
		comis#x	value, max					; if (value > max)
		ja		.inf						;     return inf
		comis#x	value, min					; if (value < min)
		jb		.mone						;     return -1.0
		adds#x	ipart, magic
if x eq s
		movd	iexp, ipart					; iexp = rint (value)
		cwde
else if x eq d
		movq	iexp, ipart					; iexp = rint (value)
		cdqe
end if
		subs#x	ipart, magic				; ipart = rint (value)
		subs#x	value, ipart				; value = fractional_part (value)
if x eq s
;---[Single precision code]----------------
	cvtss2sd	val1, value					; val1 = value
		movapd	val2, val1
		mulsd	val2, val2					; val2 = val1 ^ 2
	EXPE_FLT32	iexp						; compute exp(value) and sfactor
	cvtss2sd	value, value
	cvtss2sd	sfactor, sfactor
		mulsd	val2, value
		addsd	val1, val2					; val1 = value + value ^ 2 * R
		initreg	one, reg, oneval, d			; one = 1.0
		mulsd	val1, sfactor				; val1 *= scale
		subsd	sfactor, one				; sfactor -= 1.0
		addsd	val1, sfactor				; val1 = val1 * sfactor + (sfactor - 1)
	cvtsd2ss	value, val1					; return val1
		ret
else if x eq d
;---[Double precision code]----------------
		movsd	[s_value], value
		fld		qword [s_value]				; val1 = value
		fld		st0
		fmul	st0, st0					; val2 = val1 ^ 2
	EXPE_FLT64	iexp						; compute exp(value) and sfactor
		movsd	[s_value], value
		movsd	[s_scale], sfactor
		fld		qword [s_value]
		fmulp	st1, st0
		faddp	st1, st0					; val1 = value + value ^ 2 * R
		fld1
		fld		qword [s_scale]
		fmul	st2, st0					; val1 *= scale
		fsubrp	st1, st0					; sfactor -= 1.0
		faddp	st1, st0					; val1 = val1 * sfactor + (sfactor - 1)
		fstp	qword [s_value]
		movsd	value, [s_value]			; return val1
		ret
end if
;----[Return inf]--------------------------
.inf:	initreg	value, treg, inf, x			; return +inf
		ret
;----[Return minus one]--------------------
.mone:	initreg	value, treg, moneval, x		; return -1.0
		ret
}

; Integer power of E
ExpEi_flt32:	EXPI	dil, eax, -104, +89, exp_table_flt32, s
ExpEi_flt64:	EXPI	di, rax, -746, +710, exp_table_flt64, d

; Real power of E
ExpE_flt32:		EXPE	eax, edx, s
ExpE_flt64:		EXPE	rax, rdx, d
ExpEm1_flt32:	EXPEM1	eax, edx, s
ExpEm1_flt64:	EXPEM1	rax, rdx, d

;******************************************************************************;
;       Scale functions                                                        ;
;******************************************************************************;
macro	SCALE	treg, shift, exp_min, exp_max, svalue1, svalue2, table, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to scale
exp		equ		di							; exponent value
;---[Internal variables]-------------------
index	equ		rdi							; index register
scale	equ		xmm1						; scale value
if x eq s
bytes	= 4									; array element size (bytes)
else if x eq d
bytes	= 8									; array element size (bytes)
end if
;------------------------------------------
		movsx	index, exp					; index = exp
		test	index, index				; if (index < 0)
		js		.neg						;     then go to negative exponent branch
;---[Positive exponent branch]-------------
		cmp		index, exp_max				; if (index > exp_max)
		jg		.pcorr						;     then correct the exponent
@@:		movs#x	scale, [table + index*bytes + shift*bytes]	; scale = exp[index]
		muls#x	value, scale				; return (value * scale)
		ret
;---[Correcting positive power]------------
.pcorr:	initreg	scale, treg, svalue1, x		; scale = svalue1
		sub		index, exp_max				; index -= exp_max
		muls#x	value, scale				; value *= scale
		cmp		index, exp_max				; if (index <= exp_max)
		jle		@b							;     then exp is correct now
		sub		index, exp_max				; index -= exp_max
		muls#x	value, scale				; value *= scale
		cmp		index, exp_max				; if (index <= exp_max)
		jle		@b							;     then exp is correct now
		muls#x	value, scale				; return (value * scale)
		ret
;---[Negative exponent branch]-------------
.neg:	cmp		index, exp_min				; if (index < exp_min)
		jl		.ncorr						;     then correct the exponent
@@:		movs#x	scale, [table + index*bytes + shift*bytes]	; scale = exp[index]
		muls#x	value, scale				; return (value * scale)
		ret
;---[Correcting negative power]------------
.ncorr:	initreg	scale, treg, svalue2, x		; scale = svalue2
		sub		index, exp_min				; index -= exp_min
		muls#x	value, scale				; value *= scale
		cmp		index, exp_min				; if (index >= exp_min)
		jge		@b							;     then exp is correct now
		sub		index, exp_min				; index -= exp_min
		muls#x	value, scale				; value *= scale
		cmp		index, exp_min				; if (index >= exp_min)
		jge		@b							;     then exp is correct now
		muls#x	value, scale				; return (value * scale)
		ret
}

;==============================================================================;
;       Scale by power of 2                                                    ;
;==============================================================================;
macro	SCALE2	temp, treg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to scale
exp		equ		di							; exponent value
;---[Internal variables]-------------------
scale	equ		xmm1						; scale value
if x eq s
bias	= 127								; exponent bias
digits	= 23								; count of bits into mantissa
svalue1	= 0x7F000000						; 2^+127
svalue2	= 0x00800000						; 2^-126
else if x eq d
bias	= 1023								; exponent bias
digits	= 52								; count of bits into mantissa
svalue1	= 0x7FE0000000000000				; 2^+1023
svalue2	= 0x0008000000000000				; 2^-1022
end if
exp_max	= bias								; max exponent
exp_min	= 1 - bias							; min exponent
;------------------------------------------
		movsx	temp, exp					; temp = exp
		test	temp, temp					; if (temp < 0)
		js		.neg						;     then go to negative exponent branch
;---[Positive exponent branch]-------------
		cmp		temp, exp_max				; if (temp > exp_max)
		jg		.pcorr						;     then correct the exponent
@@:		add		temp, bias					; temp = exp + bias
		shl		temp, digits				; temp <<= digits
if x eq s
		movd	scale, temp					; scale = 2^exp
else if x eq d
		movq	scale, temp					; scale = 2^exp
end if
		muls#x	value, scale				; return (value * scale)
		ret
;---[Correcting positive power]------------
.pcorr:	initreg	scale, treg, svalue1, x		; scale = svalue1
		sub		temp, exp_max				; temp -= exp_max
		muls#x	value, scale				; value *= scale
		cmp		temp, exp_max				; if (temp <= exp_max)
		jle		@b							;     then exp is correct now
		sub		temp, exp_max				; temp -= exp_max
		muls#x	value, scale				; value *= scale
		cmp		temp, exp_max				; if (temp <= exp_max)
		jle		@b							;     then exp is correct now
		muls#x	value, scale				; return (value * scale)
		ret
;---[Negative exponent branch]-------------
.neg:	cmp		temp, exp_min				; if (temp < exp_min)
		jl		.ncorr						;     then correct the exponent
@@:		add		temp, bias					; temp = exp + bias
		shl		temp, digits				; temp <<= digits
if x eq s
		movd	scale, temp					; scale = 2^exp
else if x eq d
		movq	scale, temp					; scale = 2^exp
end if
		muls#x	value, scale				; return (value * scale)
		ret
;---[Correcting negative power]------------
.ncorr:	initreg	scale, treg, svalue2, x		; scale = svalue2
		sub		temp, exp_min				; temp -= exp_min
		muls#x	value, scale				; value *= scale
		cmp		temp, exp_min				; if (temp >= exp_min)
		jge		@b							;     then exp is correct now
		sub		temp, exp_min				; temp -= exp_min
		muls#x	value, scale				; value *= scale
		cmp		temp, exp_min				; if (temp >= exp_min)
		jge		@b							;     then exp is correct now
		muls#x	value, scale				; return (value * scale)
		ret
}
Scale2_flt32:	SCALE2	eax, edx, s
Scale2_flt64:	SCALE2	rax, rdx, d

;==============================================================================;
;       Scale by power of 10                                                   ;
;==============================================================================;
Scale10_flt32:	SCALE	eax, 46, -37, 38, 0x7E967699, 0x02081CEA, ten_table_flt32, s
Scale10_flt64:	SCALE	rax, 324, -307, 308, 0x7FE1CCF385EBC8A0, 0x0031FA182C40C60D, ten_table_flt64, d

;==============================================================================;
;       Scale by power of E                                                    ;
;==============================================================================;
ScaleE_flt32:	SCALE	eax, 104, -87, 88, 0x7EF882B7 ,0x00B33687, exp_table_flt32, s
ScaleE_flt64:	SCALE	rax, 746, -708, 709, 0x7FDD422D2BE5DC9B, 0x0017C8AB2288C9AB, exp_table_flt64, d

;******************************************************************************;
;       Power                                                                  ;
;******************************************************************************;
macro	POWER_UINT	base, pow, temp, temph
{
;---[Parameters]---------------------------
exp		equ		sil							; exponent value
;---[Internal variables]-------------------
powd	equ		ecx							; double word register which holds result
one		equ		r10d						; 1
;------------------------------------------
		test	base, base					; if (base == 0)
		jz		.ovfl						;     then return 0
		mov		one, 1						; one = 1
		mov		pow, base					; pow = base
		shr		exp, 1						; if (exp & 0x1 == 0), then
		cmovnc	powd, one					;     pow = 1
		jz		.skip						; if ((exp >>= 1) == 0), then skip loop
;---[Exponentiation loop]------------------
.loop:	mov		temp, base					; temp = base
		mul		temp						; temp = base * base
		test	temph, temph				; if overflow is detected, then
		jnz		.ovfl						;     go to overflow branch
		mov		base, temp					; base = base * base
		shr		exp, 1						; exp >>= 1
		ja		.loop						; if (exp & 0x1 == 0 && exp != 0), then continue
		mul		pow							; temp = pow * base
		test	temph, temph				; if overflow is detected, then
		jnz		.ovfl						;     go to overflow branch
		mov		pow, temp					; pow = pow * base
		test	exp, exp
		jnz		.loop						; do while (exp != 0)
;---[End of loop]--------------------------
.skip:	mov		temp, pow					; return pow
		ret
;---[Overflow branch]----------------------
.ovfl:	xor		temp, temp					; return 0 (means result overflow)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	POWER_SINT	base, sign, pow, max, temp, temph, scale
{
;---[Parameters]---------------------------
exp		equ		sil							; exponent value
;---[Internal variables]-------------------
powd	equ		ecx							; double word register which holds result
signq	equ		r8							; quad word register which base sign
one		equ		r10d						; 1
zero	equ		r11							; 0
shft	= (1 shl scale) * 8 - 1				; shift value
;------------------------------------------
		test	base, base					; if (base == 0)
		jz		.ovfl						;     then return 0
		mov		sign, base					; sign = base
		mov		max, 1 shl shft				; max value that can be represented
		sar		sign, shft					; next 3 lines are hacker trick
		xor		base, sign					; to get absolute value of base
		sub		base, sign					; base = Abs (base)
		mov		one, 1						; one = 1
		xor		zero, zero					; zero = 0
		mov		pow, base					; pow = base
		shr		exp, 1						; if (exp & 0x1 == 0), then
		cmovnc	powd, one					;     pow = 1
		cmovnc	signq, zero					;     sign = 0
		jz		.skip						; if ((exp >>= 1) == 0), then skip loop
;---[Exponentiation loop]------------------
.loop:	mov		temp, base					; temp = base
		mul		temp						; temp = base * base
		test	temph, temph				; if overflow is detected, then
		jnz		.ovfl						;     go to overflow branch
		mov		base, temp					; base = base * base
		shr		exp, 1						; exp >>= 1
		ja		.loop						; if (exp & 0x1 == 0 && exp != 0), then continue
		mul		pow							; temp = pow * base
		test	temph, temph				; if overflow is detected, then
		jnz		.ovfl						;     go to overflow branch
		cmp		temp, max					; if (temp > max)
		ja		.ovfl						;     go to overflow branch
		mov		pow, temp					; pow = pow * base }
		test	exp, exp
		jnz		.loop						; do while (exp != 0)
;---[End of loop]--------------------------
.skip:	xor		pow, sign
		sub		pow, sign					; corect result sign
		mov		temp, pow					; return pow
		ret
;---[Overflow branch]----------------------
.ovfl:	xor		temp, temp					; return 0 (means result overflow)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	POWER_FLT	exp, treg, x
{
;---[Parameters]---------------------------
base	equ		xmm0						; power base
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary variable
zero	equ		xmm2						; 0.0
one		equ		xmm3						; 1.0
if x eq s
oneval	= ONE_FLT32							; 1.0
nan		= DMASK_FLT32						; NaN
else if x eq d
oneval	= ONE_FLT64							; 1.0
nan		= DMASK_FLT64						; NaN
end if
;------------------------------------------
		xorp#x	zero, zero					; zero = 0.0
		initreg	one, treg, oneval, x		; one = 1.0
		comis#x	base, zero					; if (base == 0)
		je		.zero						;     then go to zero base branch
		movap#x	temp, base					; temp = base
		cmp		exp, 0						; if (exp < 0)
		jge		@f							; {
		movap#x	temp, one					;     temp = 1 / base
		neg		exp							;     exp = -exp
		divs#x	temp, base					; }
@@:		shr		exp, 1						; exp >>= 1
		movap#x	base, temp					; base = temp
		jc		@f							; if (exp & 0x1 == 0)
		movap#x	base, one					;     base = 1
@@:		jz		.skip						; if (exp == 0), then skip loop
;---[Exponentiation loop]------------------
.loop:	muls#x	temp, temp					; temp *= temp
		shr		exp, 1						; exp >>= 1
		ja		.loop						; if (exp & 0x1 == 0 && exp != 0), then continue
		muls#x	base, temp					; base *= temp
		jnz		.loop						; do while (exp != 0)
;---[End of loop]--------------------------
.skip:	ret
;---[Zero base branch]---------------------
.zero:	test	exp, exp					; if (exp != 0)
		jz		@f							; then
		ret									;     return 0
@@:		initreg	base, treg, nan, x			; else
		ret									;     return NaN
}

; Unsigned integer types
Power_uint8:	POWER_UINT	dil, cl, al, ah
Power_uint16:	POWER_UINT	di, cx, ax, dx
Power_uint32:	POWER_UINT	edi, ecx, eax, edx
Power_uint64:	POWER_UINT	rdi, rcx, rax, rdx

; Signed integer types
Power_sint8:	POWER_SINT	dil, r8b, cl, r9b, al, ah, 0
Power_sint16:	POWER_SINT	di, r8w, cx, r9w, ax, dx, 1
Power_sint32:	POWER_SINT	edi, r8d, ecx, r9d, eax, edx, 2
Power_sint64:	POWER_SINT	rdi, r8, rcx, r9, rax, rdx, 3

; Floating-point types
Power_flt32:	POWER_FLT	dil, eax, s
Power_flt64:	POWER_FLT	di, rax, d

;******************************************************************************;
;       Rounding                                                               ;
;******************************************************************************;
macro	ROUND	type, mode, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to compute exponent function
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
mask	equ		xmm2						; data mask
half	equ		xmm3						; 0.5
;------------------------------------------
if type = 1
		movs#x	temp, value
		andp#x	temp, mask
		orp#x	temp, half					; temp = 0.5 * Sign (value)
		adds#x	value, temp					; value += temp
	rounds#x	value, value, mode			; value = Round (value)
else if type = 2
	rounds#x	temp, value, mode			; temp = Round (value)
		subs#x	value, temp					; value -= temp
else
	rounds#x	value, value, mode			; value = Round (value)
end if
		ret
}

; Round down (floor)
RoundDown_flt32:	ROUND	0, 0x1, s
RoundDown_flt64:	ROUND	0, 0x1, d

; Round up (ceil)
RoundUp_flt32:		ROUND	0, 0x2, s
RoundUp_flt64:		ROUND	0, 0x2, d

; Round to nearest even integer
RoundInt_flt32:		ROUND	0, 0x0, s
RoundInt_flt64:		ROUND	0, 0x0, d

; Round to nearest integer, away from zero
RoundRound_flt32:	ROUND	1, 0x3, s
RoundRound_flt64:	ROUND	1, 0x3, d

; Round to nearest integer, toward zero (truncation)
RoundTrunc_flt32:	ROUND	0, 0x3, s
RoundTrunc_flt64:	ROUND	0, 0x3, d

; Fractional part
RoundFrac_flt32:	ROUND	2, 0x3, s
RoundFrac_flt64:	ROUND	2, 0x3, d

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;
macro	ISNORM	temp, mask, norm, inf, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
result	equ		al							; result register
if x eq d
dmask	= DMASK_FLT32						; data mask
nvalue	= NORM_FLT32						; min normal value
ivalue	= INF_FLT32							; inf
else if x eq d
dmask	= DMASK_FLT64						; data mask
nvalue	= NORM_FLT64						; min normal value
ivalue	= INF_FLT64							; inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		mov		mask, dmask					; mask = dmask
		mov		norm, nvalue				; norm = nvalue
		mov		inf, ivalue - nvalue		; inf = ivalue - nvalue
		and		temp, mask					; temp = Abs (temp)
		sub		temp, norm					; temp -= norm
		cmp		temp, inf					; if (temp < inf)
		setb	result						;     then return true
		ret									;     else return false
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ISSUB	temp, mask, norm, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
result	equ		al							; result register
if x eq d
dmask	= DMASK_FLT32						; data mask
nvalue	= NORM_FLT32						; min normal value
else if x eq d
dmask	= DMASK_FLT64						; data mask
nvalue	= NORM_FLT64						; min normal value
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		mov		mask, dmask					; mask = dmask
		mov		norm, nvalue				; norm = nvalue
		and		temp, mask					; temp = Abs (temp)
		cmp		temp, norm					; if (temp < norm)
		setb	result						;     then return true
		ret									;     else return false
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ISFIN	temp, mask, inf, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
result	equ		al							; result register
if x eq d
dmask	= DMASK_FLT32						; data mask
ivalue	= INF_FLT32							; inf
else if x eq d
dmask	= DMASK_FLT64						; data mask
ivalue	= INF_FLT64							; inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		mov		mask, dmask					; mask = dmask
		mov		inf, ivalue					; inf = ivalue
		and		temp, mask					; temp = Abs (temp)
		cmp		temp, inf					; if (temp < inf)
		setb	result						;     then return true
		ret									;     else return false
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ISINF	temp, mask, inf, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
result	equ		al							; result register
if x eq d
dmask	= DMASK_FLT32						; data mask
ivalue	= INF_FLT32							; inf
else if x eq d
dmask	= DMASK_FLT64						; data mask
ivalue	= INF_FLT64							; inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		mov		mask, dmask					; mask = dmask
		mov		inf, ivalue					; inf = ivalue
		and		temp, mask					; temp = Abs (temp)
		cmp		temp, inf					; if (temp == inf)
		sete	result						;     then return true
		ret									;     else return false
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ISNAN	temp, mask, inf, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
result	equ		al							; result register
if x eq d
dmask	= DMASK_FLT32						; data mask
ivalue	= INF_FLT32							; inf
else if x eq d
dmask	= DMASK_FLT64						; data mask
ivalue	= INF_FLT64							; inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		mov		mask, dmask					; mask = dmask
		mov		inf, ivalue					; inf = ivalue
		and		temp, mask					; temp = Abs (temp)
		cmp		temp, inf					; if (temp > inf)
		seta	result						;     then return true
		ret									;     else return false
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

; Check for normal value
IsNorm_flt32:	ISNORM	eax, ecx, edx, edi, d
IsNorm_flt64:	ISNORM	rax, rcx, rdx, rdi, q

; Check for subnormal value
IsSub_flt32:	ISSUB	eax, ecx, edx, d
IsSub_flt64:	ISSUB	rax, rcx, rdx, q

; Check for finite value
IsFin_flt32:	ISFIN	eax, ecx, edx, d
IsFin_flt64:	ISFIN	rax, rcx, rdx, q

; Check for infinite value
IsInf_flt32:	ISINF	eax, ecx, edx, d
IsInf_flt64:	ISINF	rax, rcx, rdx, q

; Check for NaN value
IsNaN_flt32:	ISNAN	eax, ecx, edx, d
IsNaN_flt64:	ISNAN	rax, rcx, rdx, q

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

align 16
ten_table_int	dq	1							; 10^0
				dq	10							; 10^1
				dq	100							; 10^2
				dq	1000						; 10^3
				dq	10000						; 10^4
				dq	100000						; 10^5
				dq	1000000						; 10^6
				dq	10000000					; 10^7
				dq	100000000					; 10^8
				dq	1000000000					; 10^9
				dq	10000000000					; 10^10
				dq	100000000000				; 10^11
				dq	1000000000000				; 10^12
				dq	10000000000000				; 10^13
				dq	100000000000000				; 10^14
				dq	1000000000000000			; 10^15
				dq	10000000000000000			; 10^16
				dq	100000000000000000			; 10^17
				dq	1000000000000000000			; 10^18
				dq	10000000000000000000		; 10^19
				dq	0							; 0 (overflow)

; Coefficients to compute cos(x) for flt64_t type
align 16
cos_flt64		dq	0xBF56C16C16C16C17			; -1 / 6!
				dq	0xBE927E4FB7789F5C			; -1 / 10!
				dq	0xBDA93974A8C07C9D			; -1 / 14!
				dq	0x3D2AE7F3E733B81F			; +1 / 16!
				dq	0x3FA5555555555555			; +1 / 4!
				dq	0x3EFA01A01A01A01A			; +1 / 8!
				dq	0x3E21EED8EFF8D898			; +1 / 12!

; Coefficients to compute sin(x) for flt64_t type
align 16
sin_flt64		dq	0x3F81111111111111			; +1 / 5!
				dq	0x3EC71DE3A556C734			; +1 / 9!
				dq	0x3DE6124613A86D09			; +1 / 13!
				dq	0xBD6AE7F3E733B81F			; -1 / 15!
				dq	0xBFC5555555555555			; -1 / 3!
				dq	0xBF2A01A01A01A01A			; -1 / 7!
				dq	0xBE5AE64567F544E4			; -1 / 11!

; Coefficients to compute exp2(x) for flt64_t type
align 16
exp2_flt64		dq	0x3F947FD3FFAC83B4			; ln(2)^2 / 4!
				dq	0x3F3502D8FFB5A908			; ln(2)^4 / 6!
				dq	0x3EC712EF11BE9AE4			; ln(2)^6 / 8!
				dq	0x3E4F888B9368EF22			; ln(2)^8 / 10!
				dq	0x3DCD61E5E658C886			; ln(2)^10 / 12!
				dq	0x3D8910F686016B9B			; ln(2)^11 / 13!
				dq	0x3FE0000000000000			; ln(2)^0 / 2!
				dq	0x3FBD9303FEA2F7EA			; ln(2)^1 / 3!
				dq	0x3F66BC07126A1A33			; ln(2)^3 / 5!
				dq	0x3F00A4F3BC9A363E			; ln(2)^5 / 7!
				dq	0x3E8C6EE35A409D22			; ln(2)^7 / 9!
				dq	0x3E0FCADA8FCF0462			; ln(2)^9 / 11!

; Coefficients to compute exp10(x) for flt64_t type
align 16
exp10_flt64		dq	0x3FAC46DBB451388B			; (ln(10) / 2)^2 / 4!
				dq	0x3F63FD4AB552C516			; (ln(10) / 2)^4 / 6!
				dq	0x3F0E47D12E08E562			; (ln(10) / 2)^6 / 8!
				dq	0x3EAC8A8CD552035C			; (ln(10) / 2)^8 / 10!
				dq	0x3E42579602BBA583			; (ln(10) / 2)^10 / 12!
				dq	0x3DD1193BE810E96B			; (ln(10) / 2)^12 / 14!
				dq	0x3D94FF7127F17B2A			; (ln(10) / 2)^13 / 15!
				dq	0x3FE0000000000000			; (ln(10) / 2)^0 / 2!
				dq	0x3FC88F97A4F1C6C7			; (ln(10) / 2)^1 / 3!
				dq	0x3F8A0B3C1C96ADD4			; (ln(10) / 2)^3 / 5!
				dq	0x3F3A4D248DE3823A			; (ln(10) / 2)^5 / 7!
				dq	0x3EDEFCFC6B05BD61			; (ln(10) / 2)^7 / 9!
				dq	0x3E77E5CD1E140F6D			; (ln(10) / 2)^9 / 11!
				dq	0x3E09FD87AF3B94D5			; (ln(10) / 2)^11 / 13!

; Coefficients to compute exp(x) for flt64_t type
align 16
exp_flt64		dq	0x3FA5555555555555			; 1 / 4!
				dq	0x3F56C16C16C16C17			; 1 / 6!
				dq	0x3EFA01A01A01A01A			; 1 / 8!
				dq	0x3E927E4FB7789F5C			; 1 / 10!
				dq	0x3E21EED8EFF8D898			; 1 / 12!
				dq	0x3DA93974A8C07C9D			; 1 / 14!
				dq	0x3D6AE7F3E733B81F			; 1 / 15!
				dq	0x3FE0000000000000			; 1 / 2!
				dq	0x3FC5555555555555			; 1 / 3!
				dq	0x3F81111111111111			; 1 / 5!
				dq	0x3F2A01A01A01A01A			; 1 / 7!
				dq	0x3EC71DE3A556C734			; 1 / 9!
				dq	0x3E5AE64567F544E4			; 1 / 11!
				dq	0x3DE6124613A86D09			; 1 / 13!

; Table of integer powers of 10^x for flt64_t type
align 16
ten_table_flt64	dq	0x0000000000000000			; 10^-324
				dq	0x0000000000000002			; 10^-323
				dq	0x0000000000000014			; 10^-322
				dq	0x00000000000000CA			; 10^-321
				dq	0x00000000000007E8			; 10^-320
				dq	0x0000000000004F10			; 10^-319
				dq	0x00000000000316A2			; 10^-318
				dq	0x00000000001EE257			; 10^-317
				dq	0x000000000134D761			; 10^-316
				dq	0x000000000C1069CD			; 10^-315
				dq	0x0000000078A42205			; 10^-314
				dq	0x00000004B6695433			; 10^-313
				dq	0x0000002F201D49FB			; 10^-312
				dq	0x000001D74124E3D1			; 10^-311
				dq	0x000012688B70E62B			; 10^-310
				dq	0x0000B8157268FDAF			; 10^-309
				dq	0x000730D67819E8D2			; 10^-308
				dq	0x0031FA182C40C60D			; 10^-307
				dq	0x0066789E3750F791			; 10^-306
				dq	0x009C16C5C5253575			; 10^-305
				dq	0x00D18E3B9B374169			; 10^-304
				dq	0x0105F1CA820511C3			; 10^-303
				dq	0x013B6E3D22865634			; 10^-302
				dq	0x017124E63593F5E1			; 10^-301
				dq	0x01A56E1FC2F8F359			; 10^-300
				dq	0x01DAC9A7B3B7302F			; 10^-299
				dq	0x0210BE08D0527E1D			; 10^-298
				dq	0x0244ED8B04671DA5			; 10^-297
				dq	0x027A28EDC580E50E			; 10^-296
				dq	0x02B059949B708F29			; 10^-295
				dq	0x02E46FF9C24CB2F3			; 10^-294
				dq	0x03198BF832DFDFB0			; 10^-293
				dq	0x034FEEF63F97D79C			; 10^-292
				dq	0x0383F559E7BEE6C1			; 10^-291
				dq	0x03B8F2B061AEA072			; 10^-290
				dq	0x03EF2F5C7A1A488E			; 10^-289
				dq	0x04237D99CC506D59			; 10^-288
				dq	0x04585D003F6488AF			; 10^-287
				dq	0x048E74404F3DAADB			; 10^-286
				dq	0x04C308A831868AC9			; 10^-285
				dq	0x04F7CAD23DE82D7B			; 10^-284
				dq	0x052DBD86CD6238D9			; 10^-283
				dq	0x05629674405D6388			; 10^-282
				dq	0x05973C115074BC6A			; 10^-281
				dq	0x05CD0B15A491EB84			; 10^-280
				dq	0x060226ED86DB3333			; 10^-279
				dq	0x0636B0A8E891FFFF			; 10^-278
				dq	0x066C5CD322B67FFF			; 10^-277
				dq	0x06A1BA03F5B21000			; 10^-276
				dq	0x06D62884F31E93FF			; 10^-275
				dq	0x070BB2A62FE638FF			; 10^-274
				dq	0x07414FA7DDEFE3A0			; 10^-273
				dq	0x0775A391D56BDC87			; 10^-272
				dq	0x07AB0C764AC6D3A9			; 10^-271
				dq	0x07E0E7C9EEBC444A			; 10^-270
				dq	0x081521BC6A6B555C			; 10^-269
				dq	0x084A6A2B85062AB3			; 10^-268
				dq	0x0880825B3323DAB0			; 10^-267
				dq	0x08B4A2F1FFECD15C			; 10^-266
				dq	0x08E9CBAE7FE805B3			; 10^-265
				dq	0x09201F4D0FF10390			; 10^-264
				dq	0x0954272053ED4474			; 10^-263
				dq	0x098930E868E89591			; 10^-262
				dq	0x09BF7D228322BAF5			; 10^-261
				dq	0x09F3AE3591F5B4D9			; 10^-260
				dq	0x0A2899C2F6732210			; 10^-259
				dq	0x0A5EC033B40FEA93			; 10^-258
				dq	0x0A9338205089F29C			; 10^-257
				dq	0x0AC8062864AC6F43			; 10^-256
				dq	0x0AFE07B27DD78B14			; 10^-255
				dq	0x0B32C4CF8EA6B6EC			; 10^-254
				dq	0x0B677603725064A8			; 10^-253
				dq	0x0B9D53844EE47DD1			; 10^-252
				dq	0x0BD25432B14ECEA3			; 10^-251
				dq	0x0C06E93F5DA2824C			; 10^-250
				dq	0x0C3CA38F350B22DF			; 10^-249
				dq	0x0C71E6398126F5CB			; 10^-248
				dq	0x0CA65FC7E170B33E			; 10^-247
				dq	0x0CDBF7B9D9CCE00D			; 10^-246
				dq	0x0D117AD428200C08			; 10^-245
				dq	0x0D45D98932280F0A			; 10^-244
				dq	0x0D7B4FEB7EB212CD			; 10^-243
				dq	0x0DB111F32F2F4BC0			; 10^-242
				dq	0x0DE5566FFAFB1EB0			; 10^-241
				dq	0x0E1AAC0BF9B9E65C			; 10^-240
				dq	0x0E50AB877C142FFA			; 10^-239
				dq	0x0E84D6695B193BF8			; 10^-238
				dq	0x0EBA0C03B1DF8AF6			; 10^-237
				dq	0x0EF047824F2BB6DA			; 10^-236
				dq	0x0F245962E2F6A490			; 10^-235
				dq	0x0F596FBB9BB44DB4			; 10^-234
				dq	0x0F8FCBAA82A16121			; 10^-233
				dq	0x0FC3DF4A91A4DCB5			; 10^-232
				dq	0x0FF8D71D360E13E2			; 10^-231
				dq	0x102F0CE4839198DB			; 10^-230
				dq	0x1063680ED23AFF89			; 10^-229
				dq	0x1098421286C9BF6B			; 10^-228
				dq	0x10CE5297287C2F45			; 10^-227
				dq	0x1102F39E794D9D8B			; 10^-226
				dq	0x1137B08617A104EE			; 10^-225
				dq	0x116D9CA79D89462A			; 10^-224
				dq	0x11A281E8C275CBDA			; 10^-223
				dq	0x11D72262F3133ED1			; 10^-222
				dq	0x120CEAFBAFD80E85			; 10^-221
				dq	0x124212DD4DE70913			; 10^-220
				dq	0x12769794A160CB58			; 10^-219
				dq	0x12AC3D79C9B8FE2E			; 10^-218
				dq	0x12E1A66C1E139EDD			; 10^-217
				dq	0x1316100725988694			; 10^-216
				dq	0x134B9408EEFEA839			; 10^-215
				dq	0x13813C85955F2923			; 10^-214
				dq	0x13B58BA6FAB6F36C			; 10^-213
				dq	0x13EAEE90B964B047			; 10^-212
				dq	0x1420D51A73DEEE2D			; 10^-211
				dq	0x14550A6110D6A9B8			; 10^-210
				dq	0x148A4CF9550C5426			; 10^-209
				dq	0x14C0701BD527B498			; 10^-208
				dq	0x14F48C22CA71A1BD			; 10^-207
				dq	0x1529AF2B7D0E0A2D			; 10^-206
				dq	0x15600D7B2E28C65C			; 10^-205
				dq	0x159410D9F9B2F7F3			; 10^-204
				dq	0x15C91510781FB5F0			; 10^-203
				dq	0x15FF5A549627A36C			; 10^-202
				dq	0x16339874DDD8C623			; 10^-201
				dq	0x16687E92154EF7AC			; 10^-200
				dq	0x169E9E369AA2B597			; 10^-199
				dq	0x16D322E220A5B17E			; 10^-198
				dq	0x1707EB9AA8CF1DDE			; 10^-197
				dq	0x173DE6815302E556			; 10^-196
				dq	0x1772B010D3E1CF56			; 10^-195
				dq	0x17A75C1508DA432B			; 10^-194
				dq	0x17DD331A4B10D3F6			; 10^-193
				dq	0x18123FF06EEA847A			; 10^-192
				dq	0x1846CFEC8AA52598			; 10^-191
				dq	0x187C83E7AD4E6EFE			; 10^-190
				dq	0x18B1D270CC51055F			; 10^-189
				dq	0x18E6470CFF6546B6			; 10^-188
				dq	0x191BD8D03F3E9864			; 10^-187
				dq	0x1951678227871F3E			; 10^-186
				dq	0x1985C162B168E70E			; 10^-185
				dq	0x19BB31BB5DC320D2			; 10^-184
				dq	0x19F0FF151A99F483			; 10^-183
				dq	0x1A253EDA614071A4			; 10^-182
				dq	0x1A5A8E90F9908E0D			; 10^-181
				dq	0x1A90991A9BFA58C8			; 10^-180
				dq	0x1AC4BF6142F8EEFA			; 10^-179
				dq	0x1AF9EF3993B72AB8			; 10^-178
				dq	0x1B303583FC527AB3			; 10^-177
				dq	0x1B6442E4FB671960			; 10^-176
				dq	0x1B99539E3A40DFB8			; 10^-175
				dq	0x1BCFA885C8D117A6			; 10^-174
				dq	0x1C03C9539D82AEC8			; 10^-173
				dq	0x1C38BBA884E35A7A			; 10^-172
				dq	0x1C6EEA92A61C3118			; 10^-171
				dq	0x1CA3529BA7D19EAF			; 10^-170
				dq	0x1CD8274291C6065B			; 10^-169
				dq	0x1D0E3113363787F2			; 10^-168
				dq	0x1D42DEAC01E2B4F7			; 10^-167
				dq	0x1D779657025B6235			; 10^-166
				dq	0x1DAD7BECC2F23AC2			; 10^-165
				dq	0x1DE26D73F9D764B9			; 10^-164
				dq	0x1E1708D0F84D3DE7			; 10^-163
				dq	0x1E4CCB0536608D61			; 10^-162
				dq	0x1E81FEE341FC585D			; 10^-161
				dq	0x1EB67E9C127B6E74			; 10^-160
				dq	0x1EEC1E43171A4A11			; 10^-159
				dq	0x1F2192E9EE706E4B			; 10^-158
				dq	0x1F55F7A46A0C89DD			; 10^-157
				dq	0x1F8B758D848FAC55			; 10^-156
				dq	0x1FC1297872D9CBB5			; 10^-155
				dq	0x1FF573D68F903EA2			; 10^-154
				dq	0x202AD0CC33744E4B			; 10^-153
				dq	0x2060C27FA028B0EF			; 10^-152
				dq	0x2094F31F8832DD2A			; 10^-151
				dq	0x20CA2FE76A3F9475			; 10^-150
				dq	0x21005DF0A267BCC9			; 10^-149
				dq	0x2134756CCB01ABFB			; 10^-148
				dq	0x216992C7FDC216FA			; 10^-147
				dq	0x219FF779FD329CB9			; 10^-146
				dq	0x21D3FAAC3E3FA1F3			; 10^-145
				dq	0x2208F9574DCF8A70			; 10^-144
				dq	0x223F37AD21436D0C			; 10^-143
				dq	0x227382CC34CA2428			; 10^-142
				dq	0x22A8637F41FCAD32			; 10^-141
				dq	0x22DE7C5F127BD87E			; 10^-140
				dq	0x23130DBB6B8D674F			; 10^-139
				dq	0x2347D12A4670C123			; 10^-138
				dq	0x237DC574D80CF16B			; 10^-137
				dq	0x23B29B69070816E3			; 10^-136
				dq	0x23E7424348CA1C9C			; 10^-135
				dq	0x241D12D41AFCA3C3			; 10^-134
				dq	0x24522BC490DDE65A			; 10^-133
				dq	0x2486B6B5B5155FF0			; 10^-132
				dq	0x24BC6463225AB7EC			; 10^-131
				dq	0x24F1BEBDF578B2F4			; 10^-130
				dq	0x25262E6D72D6DFB0			; 10^-129
				dq	0x255BBA08CF8C979D			; 10^-128
				dq	0x2591544581B7DEC2			; 10^-127
				dq	0x25C5A956E225D672			; 10^-126
				dq	0x25FB13AC9AAF4C0F			; 10^-125
				dq	0x2630EC4BE0AD8F89			; 10^-124
				dq	0x2665275ED8D8F36C			; 10^-123
				dq	0x269A71368F0F3047			; 10^-122
				dq	0x26D086C219697E2C			; 10^-121
				dq	0x2704A8729FC3DDB7			; 10^-120
				dq	0x2739D28F47B4D525			; 10^-119
				dq	0x277023998CD10537			; 10^-118
				dq	0x27A42C7FF0054685			; 10^-117
				dq	0x27D9379FEC069826			; 10^-116
				dq	0x280F8587E7083E30			; 10^-115
				dq	0x2843B374F06526DE			; 10^-114
				dq	0x2878A0522C7E7095			; 10^-113
				dq	0x28AEC866B79E0CBA			; 10^-112
				dq	0x28E33D4032C2C7F5			; 10^-111
				dq	0x29180C903F7379F2			; 10^-110
				dq	0x294E0FB44F50586E			; 10^-109
				dq	0x2982C9D0B1923745			; 10^-108
				dq	0x29B77C44DDF6C516			; 10^-107
				dq	0x29ED5B561574765B			; 10^-106
				dq	0x2A225915CD68C9F9			; 10^-105
				dq	0x2A56EF5B40C2FC77			; 10^-104
				dq	0x2A8CAB3210F3BB95			; 10^-103
				dq	0x2AC1EAFF4A98553D			; 10^-102
				dq	0x2AF665BF1D3E6A8D			; 10^-101
				dq	0x2B2BFF2EE48E0530			; 10^-100
				dq	0x2B617F7D4ED8C33E			; 10^-99
				dq	0x2B95DF5CA28EF40D			; 10^-98
				dq	0x2BCB5733CB32B111			; 10^-97
				dq	0x2C0116805EFFAEAA			; 10^-96
				dq	0x2C355C2076BF9A55			; 10^-95
				dq	0x2C6AB328946F80EA			; 10^-94
				dq	0x2CA0AFF95CC5B092			; 10^-93
				dq	0x2CD4DBF7B3F71CB7			; 10^-92
				dq	0x2D0A12F5A0F4E3E5			; 10^-91
				dq	0x2D404BD984990E6F			; 10^-90
				dq	0x2D745ECFE5BF520B			; 10^-89
				dq	0x2DA97683DF2F268D			; 10^-88
				dq	0x2DDFD424D6FAF031			; 10^-87
				dq	0x2E13E497065CD61F			; 10^-86
				dq	0x2E48DDBCC7F40BA6			; 10^-85
				dq	0x2E7F152BF9F10E90			; 10^-84
				dq	0x2EB36D3B7C36A91A			; 10^-83
				dq	0x2EE8488A5B445360			; 10^-82
				dq	0x2F1E5AACF2156838			; 10^-81
				dq	0x2F52F8AC174D6123			; 10^-80
				dq	0x2F87B6D71D20B96C			; 10^-79
				dq	0x2FBDA48CE468E7C7			; 10^-78
				dq	0x2FF286D80EC190DC			; 10^-77
				dq	0x3027288E1271F513			; 10^-76
				dq	0x305CF2B1970E7258			; 10^-75
				dq	0x309217AEFE690777			; 10^-74
				dq	0x30C69D9ABE034955			; 10^-73
				dq	0x30FC45016D841BAA			; 10^-72
				dq	0x3131AB20E472914A			; 10^-71
				dq	0x316615E91D8F359D			; 10^-70
				dq	0x319B9B6364F30304			; 10^-69
				dq	0x31D1411E1F17E1E3			; 10^-68
				dq	0x32059165A6DDDA5B			; 10^-67
				dq	0x323AF5BF109550F2			; 10^-66
				dq	0x3270D9976A5D5297			; 10^-65
				dq	0x32A50FFD44F4A73D			; 10^-64
				dq	0x32DA53FC9631D10D			; 10^-63
				dq	0x3310747DDDDF22A8			; 10^-62
				dq	0x3344919D5556EB52			; 10^-61
				dq	0x3379B604AAACA626			; 10^-60
				dq	0x33B011C2EAABE7D8			; 10^-59
				dq	0x33E41633A556E1CE			; 10^-58
				dq	0x34191BC08EAC9A41			; 10^-57
				dq	0x344F62B0B257C0D2			; 10^-56
				dq	0x34839DAE6F76D883			; 10^-55
				dq	0x34B8851A0B548EA4			; 10^-54
				dq	0x34EEA6608E29B24D			; 10^-53
				dq	0x352327FC58DA0F70			; 10^-52
				dq	0x3557F1FB6F10934C			; 10^-51
				dq	0x358DEE7A4AD4B81F			; 10^-50
				dq	0x35C2B50C6EC4F313			; 10^-49
				dq	0x35F7624F8A762FD8			; 10^-48
				dq	0x362D3AE36D13BBCE			; 10^-47
				dq	0x366244CE242C5561			; 10^-46
				dq	0x3696D601AD376AB9			; 10^-45
				dq	0x36CC8B8218854567			; 10^-44
				dq	0x3701D7314F534B61			; 10^-43
				dq	0x37364CFDA3281E39			; 10^-42
				dq	0x376BE03D0BF225C7			; 10^-41
				dq	0x37A16C262777579C			; 10^-40
				dq	0x37D5C72FB1552D83			; 10^-39
				dq	0x380B38FB9DAA78E4			; 10^-38
				dq	0x3841039D428A8B8F			; 10^-37
				dq	0x38754484932D2E72			; 10^-36
				dq	0x38AA95A5B7F87A0F			; 10^-35
				dq	0x38E09D8792FB4C49			; 10^-34
				dq	0x3914C4E977BA1F5C			; 10^-33
				dq	0x3949F623D5A8A733			; 10^-32
				dq	0x398039D665896880			; 10^-31
				dq	0x39B4484BFEEBC2A0			; 10^-30
				dq	0x39E95A5EFEA6B347			; 10^-29
				dq	0x3A1FB0F6BE506019			; 10^-28
				dq	0x3A53CE9A36F23C10			; 10^-27
				dq	0x3A88C240C4AECB14			; 10^-26
				dq	0x3ABEF2D0F5DA7DD9			; 10^-25
				dq	0x3AF357C299A88EA7			; 10^-24
				dq	0x3B282DB34012B251			; 10^-23
				dq	0x3B5E392010175EE6			; 10^-22
				dq	0x3B92E3B40A0E9B4F			; 10^-21
				dq	0x3BC79CA10C924223			; 10^-20
				dq	0x3BFD83C94FB6D2AC			; 10^-19
				dq	0x3C32725DD1D243AC			; 10^-18
				dq	0x3C670EF54646D497			; 10^-17
				dq	0x3C9CD2B297D889BC			; 10^-16
				dq	0x3CD203AF9EE75616			; 10^-15
				dq	0x3D06849B86A12B9B			; 10^-14
				dq	0x3D3C25C268497682			; 10^-13
				dq	0x3D719799812DEA11			; 10^-12
				dq	0x3DA5FD7FE1796495			; 10^-11
				dq	0x3DDB7CDFD9D7BDBB			; 10^-10
				dq	0x3E112E0BE826D695			; 10^-9
				dq	0x3E45798EE2308C3A			; 10^-8
				dq	0x3E7AD7F29ABCAF48			; 10^-7
				dq	0x3EB0C6F7A0B5ED8D			; 10^-6
				dq	0x3EE4F8B588E368F1			; 10^-5
				dq	0x3F1A36E2EB1C432D			; 10^-4
				dq	0x3F50624DD2F1A9FC			; 10^-3
				dq	0x3F847AE147AE147B			; 10^-2
				dq	0x3FB999999999999A			; 10^-1
				dq	0x3FF0000000000000			; 10^0
				dq	0x4024000000000000			; 10^+1
				dq	0x4059000000000000			; 10^+2
				dq	0x408F400000000000			; 10^+3
				dq	0x40C3880000000000			; 10^+4
				dq	0x40F86A0000000000			; 10^+5
				dq	0x412E848000000000			; 10^+6
				dq	0x416312D000000000			; 10^+7
				dq	0x4197D78400000000			; 10^+8
				dq	0x41CDCD6500000000			; 10^+9
				dq	0x4202A05F20000000			; 10^+10
				dq	0x42374876E8000000			; 10^+11
				dq	0x426D1A94A2000000			; 10^+12
				dq	0x42A2309CE5400000			; 10^+13
				dq	0x42D6BCC41E900000			; 10^+14
				dq	0x430C6BF526340000			; 10^+15
				dq	0x4341C37937E08000			; 10^+16
				dq	0x4376345785D8A000			; 10^+17
				dq	0x43ABC16D674EC800			; 10^+18
				dq	0x43E158E460913D00			; 10^+19
				dq	0x4415AF1D78B58C40			; 10^+20
				dq	0x444B1AE4D6E2EF50			; 10^+21
				dq	0x4480F0CF064DD592			; 10^+22
				dq	0x44B52D02C7E14AF6			; 10^+23
				dq	0x44EA784379D99DB4			; 10^+24
				dq	0x45208B2A2C280291			; 10^+25
				dq	0x4554ADF4B7320335			; 10^+26
				dq	0x4589D971E4FE8402			; 10^+27
				dq	0x45C027E72F1F1281			; 10^+28
				dq	0x45F431E0FAE6D721			; 10^+29
				dq	0x46293E5939A08CEA			; 10^+30
				dq	0x465F8DEF8808B024			; 10^+31
				dq	0x4693B8B5B5056E17			; 10^+32
				dq	0x46C8A6E32246C99C			; 10^+33
				dq	0x46FED09BEAD87C03			; 10^+34
				dq	0x4733426172C74D82			; 10^+35
				dq	0x476812F9CF7920E3			; 10^+36
				dq	0x479E17B84357691B			; 10^+37
				dq	0x47D2CED32A16A1B1			; 10^+38
				dq	0x48078287F49C4A1D			; 10^+39
				dq	0x483D6329F1C35CA5			; 10^+40
				dq	0x48725DFA371A19E7			; 10^+41
				dq	0x48A6F578C4E0A061			; 10^+42
				dq	0x48DCB2D6F618C879			; 10^+43
				dq	0x4911EFC659CF7D4C			; 10^+44
				dq	0x49466BB7F0435C9E			; 10^+45
				dq	0x497C06A5EC5433C6			; 10^+46
				dq	0x49B18427B3B4A05C			; 10^+47
				dq	0x49E5E531A0A1C873			; 10^+48
				dq	0x4A1B5E7E08CA3A8F			; 10^+49
				dq	0x4A511B0EC57E649A			; 10^+50
				dq	0x4A8561D276DDFDC0			; 10^+51
				dq	0x4ABABA4714957D30			; 10^+52
				dq	0x4AF0B46C6CDD6E3E			; 10^+53
				dq	0x4B24E1878814C9CE			; 10^+54
				dq	0x4B5A19E96A19FC41			; 10^+55
				dq	0x4B905031E2503DA9			; 10^+56
				dq	0x4BC4643E5AE44D13			; 10^+57
				dq	0x4BF97D4DF19D6057			; 10^+58
				dq	0x4C2FDCA16E04B86D			; 10^+59
				dq	0x4C63E9E4E4C2F344			; 10^+60
				dq	0x4C98E45E1DF3B015			; 10^+61
				dq	0x4CCF1D75A5709C1B			; 10^+62
				dq	0x4D03726987666191			; 10^+63
				dq	0x4D384F03E93FF9F5			; 10^+64
				dq	0x4D6E62C4E38FF872			; 10^+65
				dq	0x4DA2FDBB0E39FB47			; 10^+66
				dq	0x4DD7BD29D1C87A19			; 10^+67
				dq	0x4E0DAC74463A989F			; 10^+68
				dq	0x4E428BC8ABE49F64			; 10^+69
				dq	0x4E772EBAD6DDC73D			; 10^+70
				dq	0x4EACFA698C95390C			; 10^+71
				dq	0x4EE21C81F7DD43A7			; 10^+72
				dq	0x4F16A3A275D49491			; 10^+73
				dq	0x4F4C4C8B1349B9B5			; 10^+74
				dq	0x4F81AFD6EC0E1411			; 10^+75
				dq	0x4FB61BCCA7119916			; 10^+76
				dq	0x4FEBA2BFD0D5FF5B			; 10^+77
				dq	0x502145B7E285BF99			; 10^+78
				dq	0x50559725DB272F7F			; 10^+79
				dq	0x508AFCEF51F0FB5F			; 10^+80
				dq	0x50C0DE1593369D1B			; 10^+81
				dq	0x50F5159AF8044462			; 10^+82
				dq	0x512A5B01B605557B			; 10^+83
				dq	0x516078E111C3556D			; 10^+84
				dq	0x5194971956342AC8			; 10^+85
				dq	0x51C9BCDFABC1357A			; 10^+86
				dq	0x5200160BCB58C16C			; 10^+87
				dq	0x52341B8EBE2EF1C7			; 10^+88
				dq	0x526922726DBAAE39			; 10^+89
				dq	0x529F6B0F092959C7			; 10^+90
				dq	0x52D3A2E965B9D81D			; 10^+91
				dq	0x53088BA3BF284E24			; 10^+92
				dq	0x533EAE8CAEF261AD			; 10^+93
				dq	0x53732D17ED577D0C			; 10^+94
				dq	0x53A7F85DE8AD5C4F			; 10^+95
				dq	0x53DDF67562D8B363			; 10^+96
				dq	0x5412BA095DC7701E			; 10^+97
				dq	0x5447688BB5394C25			; 10^+98
				dq	0x547D42AEA2879F2E			; 10^+99
				dq	0x54B249AD2594C37D			; 10^+100
				dq	0x54E6DC186EF9F45C			; 10^+101
				dq	0x551C931E8AB87173			; 10^+102
				dq	0x5551DBF316B346E8			; 10^+103
				dq	0x558652EFDC6018A2			; 10^+104
				dq	0x55BBE7ABD3781ECA			; 10^+105
				dq	0x55F170CB642B133F			; 10^+106
				dq	0x5625CCFE3D35D80E			; 10^+107
				dq	0x565B403DCC834E12			; 10^+108
				dq	0x569108269FD210CB			; 10^+109
				dq	0x56C54A3047C694FE			; 10^+110
				dq	0x56FA9CBC59B83A3D			; 10^+111
				dq	0x5730A1F5B8132466			; 10^+112
				dq	0x5764CA732617ED80			; 10^+113
				dq	0x5799FD0FEF9DE8E0			; 10^+114
				dq	0x57D03E29F5C2B18C			; 10^+115
				dq	0x58044DB473335DEF			; 10^+116
				dq	0x583961219000356B			; 10^+117
				dq	0x586FB969F40042C5			; 10^+118
				dq	0x58A3D3E2388029BB			; 10^+119
				dq	0x58D8C8DAC6A0342A			; 10^+120
				dq	0x590EFB1178484135			; 10^+121
				dq	0x59435CEAEB2D28C1			; 10^+122
				dq	0x59783425A5F872F1			; 10^+123
				dq	0x59AE412F0F768FAD			; 10^+124
				dq	0x59E2E8BD69AA19CC			; 10^+125
				dq	0x5A17A2ECC414A040			; 10^+126
				dq	0x5A4D8BA7F519C84F			; 10^+127
				dq	0x5A827748F9301D32			; 10^+128
				dq	0x5AB7151B377C247E			; 10^+129
				dq	0x5AECDA62055B2D9E			; 10^+130
				dq	0x5B22087D4358FC82			; 10^+131
				dq	0x5B568A9C942F3BA3			; 10^+132
				dq	0x5B8C2D43B93B0A8C			; 10^+133
				dq	0x5BC19C4A53C4E697			; 10^+134
				dq	0x5BF6035CE8B6203D			; 10^+135
				dq	0x5C2B843422E3A84D			; 10^+136
				dq	0x5C6132A095CE4930			; 10^+137
				dq	0x5C957F48BB41DB7C			; 10^+138
				dq	0x5CCADF1AEA12525B			; 10^+139
				dq	0x5D00CB70D24B7379			; 10^+140
				dq	0x5D34FE4D06DE5057			; 10^+141
				dq	0x5D6A3DE04895E46D			; 10^+142
				dq	0x5DA066AC2D5DAEC4			; 10^+143
				dq	0x5DD4805738B51A75			; 10^+144
				dq	0x5E09A06D06E26112			; 10^+145
				dq	0x5E400444244D7CAB			; 10^+146
				dq	0x5E7405552D60DBD6			; 10^+147
				dq	0x5EA906AA78B912CC			; 10^+148
				dq	0x5EDF485516E7577F			; 10^+149
				dq	0x5F138D352E5096AF			; 10^+150
				dq	0x5F48708279E4BC5B			; 10^+151
				dq	0x5F7E8CA3185DEB72			; 10^+152
				dq	0x5FB317E5EF3AB327			; 10^+153
				dq	0x5FE7DDDF6B095FF1			; 10^+154
				dq	0x601DD55745CBB7ED			; 10^+155
				dq	0x6052A5568B9F52F4			; 10^+156
				dq	0x60874EAC2E8727B1			; 10^+157
				dq	0x60BD22573A28F19D			; 10^+158
				dq	0x60F2357684599702			; 10^+159
				dq	0x6126C2D4256FFCC3			; 10^+160
				dq	0x615C73892ECBFBF4			; 10^+161
				dq	0x6191C835BD3F7D78			; 10^+162
				dq	0x61C63A432C8F5CD6			; 10^+163
				dq	0x61FBC8D3F7B3340C			; 10^+164
				dq	0x62315D847AD00087			; 10^+165
				dq	0x6265B4E5998400A9			; 10^+166
				dq	0x629B221EFFE500D4			; 10^+167
				dq	0x62D0F5535FEF2084			; 10^+168
				dq	0x630532A837EAE8A5			; 10^+169
				dq	0x633A7F5245E5A2CF			; 10^+170
				dq	0x63708F936BAF85C1			; 10^+171
				dq	0x63A4B378469B6732			; 10^+172
				dq	0x63D9E056584240FE			; 10^+173
				dq	0x64102C35F729689F			; 10^+174
				dq	0x6444374374F3C2C6			; 10^+175
				dq	0x647945145230B378			; 10^+176
				dq	0x64AF965966BCE056			; 10^+177
				dq	0x64E3BDF7E0360C36			; 10^+178
				dq	0x6518AD75D8438F43			; 10^+179
				dq	0x654ED8D34E547314			; 10^+180
				dq	0x6583478410F4C7EC			; 10^+181
				dq	0x65B819651531F9E8			; 10^+182
				dq	0x65EE1FBE5A7E7861			; 10^+183
				dq	0x6622D3D6F88F0B3D			; 10^+184
				dq	0x665788CCB6B2CE0C			; 10^+185
				dq	0x668D6AFFE45F818F			; 10^+186
				dq	0x66C262DFEEBBB0F9			; 10^+187
				dq	0x66F6FB97EA6A9D38			; 10^+188
				dq	0x672CBA7DE5054486			; 10^+189
				dq	0x6761F48EAF234AD4			; 10^+190
				dq	0x679671B25AEC1D89			; 10^+191
				dq	0x67CC0E1EF1A724EB			; 10^+192
				dq	0x680188D357087713			; 10^+193
				dq	0x6835EB082CCA94D7			; 10^+194
				dq	0x686B65CA37FD3A0D			; 10^+195
				dq	0x68A11F9E62FE4448			; 10^+196
				dq	0x68D56785FBBDD55A			; 10^+197
				dq	0x690AC1677AAD4AB1			; 10^+198
				dq	0x6940B8E0ACAC4EAF			; 10^+199
				dq	0x6974E718D7D7625A			; 10^+200
				dq	0x69AA20DF0DCD3AF1			; 10^+201
				dq	0x69E0548B68A044D6			; 10^+202
				dq	0x6A1469AE42C8560C			; 10^+203
				dq	0x6A498419D37A6B8F			; 10^+204
				dq	0x6A7FE52048590673			; 10^+205
				dq	0x6AB3EF342D37A408			; 10^+206
				dq	0x6AE8EB0138858D0A			; 10^+207
				dq	0x6B1F25C186A6F04C			; 10^+208
				dq	0x6B537798F4285630			; 10^+209
				dq	0x6B88557F31326BBB			; 10^+210
				dq	0x6BBE6ADEFD7F06AA			; 10^+211
				dq	0x6BF302CB5E6F642A			; 10^+212
				dq	0x6C27C37E360B3D35			; 10^+213
				dq	0x6C5DB45DC38E0C82			; 10^+214
				dq	0x6C9290BA9A38C7D1			; 10^+215
				dq	0x6CC734E940C6F9C6			; 10^+216
				dq	0x6CFD022390F8B837			; 10^+217
				dq	0x6D3221563A9B7323			; 10^+218
				dq	0x6D66A9ABC9424FEB			; 10^+219
				dq	0x6D9C5416BB92E3E6			; 10^+220
				dq	0x6DD1B48E353BCE70			; 10^+221
				dq	0x6E0621B1C28AC20C			; 10^+222
				dq	0x6E3BAA1E332D728F			; 10^+223
				dq	0x6E714A52DFFC6799			; 10^+224
				dq	0x6EA59CE797FB817F			; 10^+225
				dq	0x6EDB04217DFA61DF			; 10^+226
				dq	0x6F10E294EEBC7D2C			; 10^+227
				dq	0x6F451B3A2A6B9C76			; 10^+228
				dq	0x6F7A6208B5068394			; 10^+229
				dq	0x6FB07D457124123D			; 10^+230
				dq	0x6FE49C96CD6D16CC			; 10^+231
				dq	0x7019C3BC80C85C7F			; 10^+232
				dq	0x70501A55D07D39CF			; 10^+233
				dq	0x708420EB449C8843			; 10^+234
				dq	0x70B9292615C3AA54			; 10^+235
				dq	0x70EF736F9B3494E9			; 10^+236
				dq	0x7123A825C100DD11			; 10^+237
				dq	0x7158922F31411456			; 10^+238
				dq	0x718EB6BAFD91596B			; 10^+239
				dq	0x71C33234DE7AD7E3			; 10^+240
				dq	0x71F7FEC216198DDC			; 10^+241
				dq	0x722DFE729B9FF153			; 10^+242
				dq	0x7262BF07A143F6D4			; 10^+243
				dq	0x72976EC98994F489			; 10^+244
				dq	0x72CD4A7BEBFA31AB			; 10^+245
				dq	0x73024E8D737C5F0B			; 10^+246
				dq	0x7336E230D05B76CD			; 10^+247
				dq	0x736C9ABD04725481			; 10^+248
				dq	0x73A1E0B622C774D0			; 10^+249
				dq	0x73D658E3AB795204			; 10^+250
				dq	0x740BEF1C9657A686			; 10^+251
				dq	0x74417571DDF6C814			; 10^+252
				dq	0x7475D2CE55747A18			; 10^+253
				dq	0x74AB4781EAD1989E			; 10^+254
				dq	0x74E10CB132C2FF63			; 10^+255
				dq	0x75154FDD7F73BF3C			; 10^+256
				dq	0x754AA3D4DF50AF0B			; 10^+257
				dq	0x7580A6650B926D67			; 10^+258
				dq	0x75B4CFFE4E7708C0			; 10^+259
				dq	0x75EA03FDE214CAF1			; 10^+260
				dq	0x7620427EAD4CFED6			; 10^+261
				dq	0x7654531E58A03E8C			; 10^+262
				dq	0x768967E5EEC84E2F			; 10^+263
				dq	0x76BFC1DF6A7A61BB			; 10^+264
				dq	0x76F3D92BA28C7D15			; 10^+265
				dq	0x7728CF768B2F9C5A			; 10^+266
				dq	0x775F03542DFB8370			; 10^+267
				dq	0x779362149CBD3226			; 10^+268
				dq	0x77C83A99C3EC7EB0			; 10^+269
				dq	0x77FE494034E79E5C			; 10^+270
				dq	0x7832EDC82110C2F9			; 10^+271
				dq	0x7867A93A2954F3B8			; 10^+272
				dq	0x789D9388B3AA30A5			; 10^+273
				dq	0x78D27C35704A5E67			; 10^+274
				dq	0x79071B42CC5CF601			; 10^+275
				dq	0x793CE2137F743382			; 10^+276
				dq	0x79720D4C2FA8A031			; 10^+277
				dq	0x79A6909F3B92C83D			; 10^+278
				dq	0x79DC34C70A777A4D			; 10^+279
				dq	0x7A11A0FC668AAC70			; 10^+280
				dq	0x7A46093B802D578C			; 10^+281
				dq	0x7A7B8B8A6038AD6F			; 10^+282
				dq	0x7AB137367C236C65			; 10^+283
				dq	0x7AE585041B2C477F			; 10^+284
				dq	0x7B1AE64521F7595E			; 10^+285
				dq	0x7B50CFEB353A97DB			; 10^+286
				dq	0x7B8503E602893DD2			; 10^+287
				dq	0x7BBA44DF832B8D46			; 10^+288
				dq	0x7BF06B0BB1FB384C			; 10^+289
				dq	0x7C2485CE9E7A065F			; 10^+290
				dq	0x7C59A742461887F6			; 10^+291
				dq	0x7C9008896BCF54FA			; 10^+292
				dq	0x7CC40AABC6C32A38			; 10^+293
				dq	0x7CF90D56B873F4C7			; 10^+294
				dq	0x7D2F50AC6690F1F8			; 10^+295
				dq	0x7D63926BC01A973B			; 10^+296
				dq	0x7D987706B0213D0A			; 10^+297
				dq	0x7DCE94C85C298C4C			; 10^+298
				dq	0x7E031CFD3999F7B0			; 10^+299
				dq	0x7E37E43C8800759C			; 10^+300
				dq	0x7E6DDD4BAA009303			; 10^+301
				dq	0x7EA2AA4F4A405BE2			; 10^+302
				dq	0x7ED754E31CD072DA			; 10^+303
				dq	0x7F0D2A1BE4048F90			; 10^+304
				dq	0x7F423A516E82D9BA			; 10^+305
				dq	0x7F76C8E5CA239029			; 10^+306
				dq	0x7FAC7B1F3CAC7433			; 10^+307
				dq	0x7FE1CCF385EBC8A0			; 10^+308
				dq	0x7FF0000000000000			; 10^+309

; Table of integer powers of e^x for flt64_t type
align 16
exp_table_flt64	dq	0x0000000000000000			; e^-746
				dq	0x0000000000000001			; e^-745
				dq	0x0000000000000002			; e^-744
				dq	0x0000000000000004			; e^-743
				dq	0x000000000000000B			; e^-742
				dq	0x000000000000001F			; e^-741
				dq	0x0000000000000055			; e^-740
				dq	0x00000000000000E6			; e^-739
				dq	0x0000000000000272			; e^-738
				dq	0x00000000000006A7			; e^-737
				dq	0x0000000000001215			; e^-736
				dq	0x0000000000003127			; e^-735
				dq	0x000000000000859B			; e^-734
				dq	0x0000000000016B2E			; e^-733
				dq	0x000000000003DB39			; e^-732
				dq	0x00000000000A7B8C			; e^-731
				dq	0x00000000001C7EA3			; e^-730
				dq	0x00000000004D74E0			; e^-729
				dq	0x0000000000D28C78			; e^-728
				dq	0x00000000023C54AB			; e^-727
				dq	0x000000000613C199			; e^-726
				dq	0x000000001084FBE1			; e^-725
				dq	0x000000002CE791F3			; e^-724
				dq	0x000000007A103308			; e^-723
				dq	0x000000014BCD6996			; e^-722
				dq	0x0000000385EEB2AB			; e^-721
				dq	0x0000000993B4DC95			; e^-720
				dq	0x0000001A086DE03B			; e^-719
				dq	0x00000046C3CBFB01			; e^-718
				dq	0x000000C05BD75BEA			; e^-717
				dq	0x0000020AE2A389EA			; e^-716
				dq	0x0000058D59816822			; e^-715
				dq	0x00000F17A0FDD8E1			; e^-714
				dq	0x000029066EA1F013			; e^-713
				dq	0x00006F84920BB2D4			; e^-712
				dq	0x00012F230F75FE3F			; e^-711
				dq	0x00033802FD28B3C3			; e^-710
				dq	0x0008BFE55DE02338			; e^-709
				dq	0x0017C8AB2288C9AB			; e^-708
				dq	0x003029ADE2342558			; e^-707
				dq	0x0045F7B06B2C0FE5			; e^-706
				dq	0x005DDB62D06B3019			; e^-705
				dq	0x00744A3824E5285F			; e^-704
				dq	0x008B93AD0D66DEFD			; e^-703
				dq	0x00A2BD8C17B493DC			; e^-702
				dq	0x00B9788AF0D610E6			; e^-701
				dq	0x00D14F2B0FB9307F			; e^-700
				dq	0x00E78694FE9F73CC			; e^-699
				dq	0x00FFF989A16D0DBB			; e^-698
				dq	0x0115BAA6485E5782			; e^-697
				dq	0x012D886CB184CAE4			; e^-696
				dq	0x014411D758400B4D			; e^-695
				dq	0x015B470CD81CA546			; e^-694
				dq	0x017289797F3EB1AF			; e^-693
				dq	0x018931C4C86F15C5			; e^-692
				dq	0x01A11F127F22EEA9			; e^-691
				dq	0x01B745367BEACEC7			; e^-690
				dq	0x01CFA0B112945ED6			; e^-689
				dq	0x01E57E45C0C5B59D			; e^-688
				dq	0x01FD365D1770A040			; e^-687
				dq	0x0213DA1332F99EDE			; e^-686
				dq	0x022AFB418CF3E80F			; e^-685
				dq	0x024255F7978A67A0			; e^-684
				dq	0x0258EBC347A39184			; e^-683
				dq	0x0270EF7F9293E5DA			; e^-682
				dq	0x0287048D9C2DCB01			; e^-681
				dq	0x029F48CF6261D064			; e^-680
				dq	0x02B5428CFD1C5F1E			; e^-679
				dq	0x02CCE53181A80DE5			; e^-678
				dq	0x02E3A2EA01C991EE			; e^-677
				dq	0x02FAB048DC506EC0			; e^-676
				dq	0x03122304CE8D412E			; e^-675
				dq	0x0328A6844C05657D			; e^-674
				dq	0x0340C070D6B59CA4			; e^-673
				dq	0x0356C49866B51C22			; e^-672
				dq	0x036EF1E1E2DFE53B			; e^-671
				dq	0x0385077A2B3A069B			; e^-670
				dq	0x039C94E7769839F2			; e^-669
				dq	0x03B36C5A1621103F			; e^-668
				dq	0x03CA66207D01DE07			; e^-667
				dq	0x03E1F09F9699E8FA			; e^-666
				dq	0x03F86205B914C66C			; e^-665
				dq	0x041091E4DC3968C8			; e^-664
				dq	0x04268554E847D59B			; e^-663
				dq	0x043E9BE5ED8B2664			; e^-662
				dq	0x0454CD0B7E05A5C6			; e^-661
				dq	0x046C457C838EC18B			; e^-660
				dq	0x04833661C61DA1B7			; e^-659
				dq	0x049A1CC62C31E026			; e^-658
				dq	0x04B1BEC6665408BB			; e^-657
				dq	0x04C81E45782FC195			; e^-656
				dq	0x04E063DA37CD3C33			; e^-655
				dq	0x04F646C133183202			; e^-654
				dq	0x050E46D8E33D72F8			; e^-653
				dq	0x0524933F2D676E53			; e^-652
				dq	0x053BF6EE3CA69D34			; e^-651
				dq	0x055300FF6C7C2E28			; e^-650
				dq	0x0569D437AD527EDA			; e^-649
				dq	0x05818D77B8A44AD7			; e^-648
				dq	0x0597DB417881EFAD			; e^-647
				dq	0x05B0364F82109118			; e^-646
				dq	0x05C608DB5EB484AD			; e^-645
				dq	0x05DDF2B82C19897E			; e^-644
				dq	0x05F45A13763AE1F1			; e^-643
				dq	0x060BA93A3CB53A35			; e^-642
				dq	0x0622CC31688C252A			; e^-641
				dq	0x06398C72CA0CAE46			; e^-640
				dq	0x06515CB20CAC7D62			; e^-639
				dq	0x066798F7AEF4551C			; e^-638
				dq	0x06800943578974D3			; e^-637
				dq	0x0695CBA187F85526			; e^-636
				dq	0x06AD9F813776CA1F			; e^-635
				dq	0x06C421869A4110E5			; e^-634
				dq	0x06DB5C5E2537C88E			; e^-633
				dq	0x06F297F61E22C99D			; e^-632
				dq	0x07094575522F0869			; e^-631
				dq	0x07212C73E5BBD5FC			; e^-630
				dq	0x07375766161D6EFA			; e^-629
				dq	0x074FB968B133627C			; e^-628
				dq	0x07658F11D0FDA401			; e^-627
				dq	0x077D4D317BCD311C			; e^-626
				dq	0x0793E996E012FEE2			; e^-625
				dq	0x07AB10579E40BCD8			; e^-624
				dq	0x07C2644BF58EA085			; e^-623
				dq	0x07D8FF3D1B9CB882			; e^-622
				dq	0x07F0FCBBCB435662			; e^-621
				dq	0x0807168AAE316C71			; e^-620
				dq	0x081F614252E8284B			; e^-619
				dq	0x0835532A610E58A3			; e^-618
				dq	0x084CFBC676A188E2			; e^-617
				dq	0x0863B24293142DAB			; e^-616
				dq	0x087AC5245665858A			; e^-615
				dq	0x089231315B8B02C6			; e^-614
				dq	0x08A8B9C8023C95F8			; e^-613
				dq	0x08C0CD8848CA512E			; e^-612
				dq	0x08D6D6637CF293E3			; e^-611
				dq	0x08EF0A10E423A904			; e^-610
				dq	0x090517E96495D782			; e^-609
				dq	0x091CAB3DAC71D32F			; e^-608
				dq	0x09337B8803654D1B			; e^-607
				dq	0x094A7AC202AC7312			; e^-606
				dq	0x0961FEA4C133D172			; e^-605
				dq	0x09787513E7E86E26			; e^-604
				dq	0x09909ED7EDE30E86			; e^-603
				dq	0x09A696EE8DA1D378			; e^-602
				dq	0x09BEB3D1BC502A62			; e^-601
				dq	0x09D4DD4D0D12C071			; e^-600
				dq	0x09EC5B94A8A1E898			; e^-599
				dq	0x0A03456585D7102A			; e^-598
				dq	0x0A1A312E5E7AD231			; e^-597
				dq	0x0A31CCA49BF94C40			; e^-596
				dq	0x0A48311EB45C7CA5			; e^-595
				dq	0x0A6070A94E1F9059			; e^-594
				dq	0x0A765829F0EF7C8F			; e^-593
				dq	0x0A8E5E823A3B0994			; e^-592
				dq	0x0AA4A3539108D490			; e^-591
				dq	0x0ABC0CC8FD684DF1			; e^-590
				dq	0x0AD30FD973DD2691			; e^-589
				dq	0x0AE9E8672B833817			; e^-588
				dq	0x0B019B2F659409CA			; e^-587
				dq	0x0B17EDE655271177			; e^-586
				dq	0x0B3042FB010675D2			; e^-585
				dq	0x0B461A13BCEC2990			; e^-584
				dq	0x0B5E0A1FC40034A2			; e^-583
				dq	0x0B7469FB2BF30362			; e^-582
				dq	0x0B8BBED843BB3EF0			; e^-581
				dq	0x0BA2DAE22B815A8F			; e^-580
				dq	0x0BB9A06A31B3FFAD			; e^-579
				dq	0x0BD16A439BF9113A			; e^-578
				dq	0x0BE7AB68BD9864AA			; e^-577
				dq	0x0C0015CBA207FDA9			; e^-576
				dq	0x0C15DCAA0CF9CDC5			; e^-575
				dq	0x0C2DB6A7C6F5DCCD			; e^-574
				dq	0x0C4431421E359EAD			; e^-573
				dq	0x0C5B71C01B3DED84			; e^-572
				dq	0x0C72A67E0F56D28A			; e^-571
				dq	0x0C8959353F25F783			; e^-570
				dq	0x0CA139DFC14E1511			; e^-569
				dq	0x0CB769A3E6B296E5			; e^-568
				dq	0x0CCFD233A0E64E00			; e^-567
				dq	0x0CE59FEB01BCEEA9			; e^-566
				dq	0x0CFD6417B798615D			; e^-565
				dq	0x0D13F926AD10B4A7			; e^-564
				dq	0x0D2B257E2A2DF540			; e^-563
				dq	0x0D4272AB866D760E			; e^-562
				dq	0x0D5912C6280B3FE7			; e^-561
				dq	0x0D710A025BDDCE90			; e^-560
				dq	0x0D872895CF19DE71			; e^-559
				dq	0x0D9F79C85ED5E0EC			; e^-558
				dq	0x0DB563D4C10E0648			; e^-557
				dq	0x0DCD126D11767245			; e^-556
				dq	0x0DE3C1A72292901E			; e^-555
				dq	0x0DFADA101D510258			; e^-554
				dq	0x0E123F68FC4575DB			; e^-553
				dq	0x0E28CD1AC69E588E			; e^-552
				dq	0x0E40DAA9F60C798E			; e^-551
				dq	0x0E56E83C7B04E02F			; e^-550
				dq	0x0E6F2252CBB76A33			; e^-549
				dq	0x0E85286575EB0E41			; e^-548
				dq	0x0E9CC1A5571D69E9			; e^-547
				dq	0x0EB38AC1CD8A5E11			; e^-546
				dq	0x0ECA8F73A7E2AB8F			; e^-545
				dq	0x0EE20CB4E0C2F693			; e^-544
				dq	0x0EF88830FB115D59			; e^-543
				dq	0x0F10ABD51E4C7042			; e^-542
				dq	0x0F26A895F42D3418			; e^-541
				dq	0x0F3ECBD03CE14DD8			; e^-540
				dq	0x0F54ED9B506932EF			; e^-539
				dq	0x0F6C71BE1205DD8D			; e^-538
				dq	0x0F835475017AF871			; e^-537
				dq	0x0F9A45A683827EA0			; e^-536
				dq	0x0FB1DA8DA821DDAD			; e^-535
				dq	0x0FC84406AB7D71AE			; e^-534
				dq	0x0FE07D826712E6B6			; e^-533
				dq	0x0FF669A049C014B6			; e^-532
				dq	0x100E763E0F12CD39			; e^-531
				dq	0x1024B37485A6AE4A			; e^-530
				dq	0x103C22B4D28063BD			; e^-529
				dq	0x10531EBF168DD58E			; e^-528
				dq	0x1069FCA670223E80			; e^-527
				dq	0x1081A8F1CAE9C04F			; e^-526
				dq	0x10980099C3D259DE			; e^-525
				dq	0x10B04FB066CCC58F			; e^-524
				dq	0x10C62B59904F3938			; e^-523
				dq	0x10DE2199A65F706A			; e^-522
				dq	0x10F479EF4FBCCA24			; e^-521
				dq	0x110BD4872FA2901F			; e^-520
				dq	0x1122E99E69861BD4			; e^-519
				dq	0x1139B47133F452F4			; e^-518
				dq	0x115177DFC5E1F3B3			; e^-517
				dq	0x1167BDE835C64224			; e^-516
				dq	0x1180225DB7D3A3C5			; e^-515
				dq	0x1195EDBFE1C1D991			; e^-514
				dq	0x11ADCDE06E1AA8B3			; e^-513
				dq	0x11C44109EDB20931			; e^-512
				dq	0x11DB8732C7342422			; e^-511
				dq	0x11F2B5115BB3D972			; e^-510
				dq	0x12096D049B5A68FF			; e^-509
				dq	0x122147561A05BEB0			; e^-508
				dq	0x12377BEFF8C5B2B3			; e^-507
				dq	0x124FEB11F0C5BE05			; e^-506
				dq	0x1265B0D15D45DC40			; e^-505
				dq	0x127D7B0FD8C3ABB6			; e^-504
				dq	0x129408C2A36C769C			; e^-503
				dq	0x12AB3AB53D9C73EB			; e^-502
				dq	0x12C2811652E75F7D			; e^-501
				dq	0x12D9265E78D4438D			; e^-500
				dq	0x12F117534C78AC15			; e^-499
				dq	0x13073AAF09E3B05D			; e^-498
				dq	0x131F92619519A49B			; e^-497
				dq	0x1335748C27412D46			; e^-496
				dq	0x134D29255FF1867D			; e^-495
				dq	0x1363D117B9A41B90			; e^-494
				dq	0x137AEF0C3DCFFEFB			; e^-493
				dq	0x13924DABB964C046			; e^-492
				dq	0x13A8E07CA4EEBBE2			; e^-491
				dq	0x13C0E7D5E67AFD77			; e^-490
				dq	0x13D6FA236BCA0954			; e^-489
				dq	0x13EF3AA7A8605559			; e^-488
				dq	0x140538EE69433DD8			; e^-487
				dq	0x141CD81E843F67F6			; e^-486
				dq	0x14339A077DD59A6E			; e^-485
				dq	0x144AA435793E3BEE			; e^-484
				dq	0x14621ACFFDD7705B			; e^-483
				dq	0x14789B5CFE32F146			; e^-482
				dq	0x1490B8DC755E3E18			; e^-481
				dq	0x14A6BA4B26A9CD8A			; e^-480
				dq	0x14BEE3E17DDAB2DD			; e^-479
				dq	0x14D4FDF651F6AC5A			; e^-478
				dq	0x14EC87F8CD392224			; e^-477
				dq	0x150363904234EF34			; e^-476
				dq	0x151A5A2EA7BF96DD			; e^-475
				dq	0x1531E881934609FB			; e^-474
				dq	0x154856FD6915A764			; e^-473
				dq	0x15608A658A79F58B			; e^-472
				dq	0x15767B24482BF236			; e^-471
				dq	0x158E8E0C7038478F			; e^-470
				dq	0x15A4C3A215131439			; e^-469
				dq	0x15BC38B1C947E18A			; e^-468
				dq	0x15D32DB05DA054BB			; e^-467
				dq	0x15EA10F58783A1BE			; e^-466
				dq	0x1601B6BEF106327D			; e^-465
				dq	0x1618135BCFE6D2E6			; e^-464
				dq	0x16305C6FBB2079C6			; e^-463
				dq	0x16463CACE362200E			; e^-462
				dq	0x165E3925E1829EDA			; e^-461
				dq	0x167489EFEB4F052E			; e^-460
				dq	0x168BEA470D9F1A19			; e^-459
				dq	0x16A2F8662B934E56			; e^-458
				dq	0x16B9C887DCFF7642			; e^-457
				dq	0x16D1858692B0A160			; e^-456
				dq	0x16E7D07622C153BF			; e^-455
				dq	0x17002EF9A093E03C			; e^-454
				dq	0x1715FEE310B7ABB4			; e^-453
				dq	0x172DE52B3B08D7C9			; e^-452
				dq	0x174450DE12522184			; e^-451
				dq	0x175B9CB63629A932			; e^-450
				dq	0x1772C3B00C19D57A			; e^-449
				dq	0x178980E372DC48AD			; e^-448
				dq	0x17A154D6F815489C			; e^-447
				dq	0x17B78E4A577ADCB4			; e^-446
				dq	0x17D00201D7FB0DB5			; e^-445
				dq	0x17E5C1C4EDE2B7E9			; e^-444
				dq	0x17FD9219ED4B7068			; e^-443
				dq	0x1814186ACCA762E8			; e^-442
				dq	0x182B4FFCE5772C07			; e^-441
				dq	0x18428F8C63C3AB07			; e^-440
				dq	0x18593A0619E62B15			; e^-439
				dq	0x187124AEA52F9DDC			; e^-438
				dq	0x18874CD669940799			; e^-437
				dq	0x189FAB0E04ADC91C			; e^-436
				dq	0x18B585509DD58108			; e^-435
				dq	0x18CD3FEF6FE84946			; e^-434
				dq	0x18E3E09461AF856E			; e^-433
				dq	0x18FB0418C4A989D9			; e^-432
				dq	0x19125BF99B97CBCC			; e^-431
				dq	0x1928F3EDA8FB0088			; e^-430
				dq	0x1940F50C221B0447			; e^-429
				dq	0x19570C185A2895CC			; e^-428
				dq	0x196F530F88EF2209			; e^-427
				dq	0x1985498448AFD169			; e^-426
				dq	0x199CEEA94186E084			; e^-425
				dq	0x19B3A9591D939844			; e^-424
				dq	0x19CAB9078362B189			; e^-423
				dq	0x19E228F6210807EB			; e^-422
				dq	0x19F8AE97FCF99F91			; e^-421
				dq	0x1A10C5EDFB075673			; e^-420
				dq	0x1A26CC0E2FDFDC75			; e^-419
				dq	0x1A3EFC058DE3E67A			; e^-418
				dq	0x1A550E5E1BB09E26			; e^-417
				dq	0x1A6C9E44E7C4C3CF			; e^-416
				dq	0x1A8372B75137B3C5			; e^-415
				dq	0x1A9A6EC6D7B289DD			; e^-414
				dq	0x1AB1F68065E4BCB1			; e^-413
				dq	0x1AC86A02F8B1239C			; e^-412
				dq	0x1AE09752C02D903D			; e^-411
				dq	0x1AF68CB5F6DD5C08			; e^-410
				dq	0x1B0EA5ED6C2A4D75			; e^-409
				dq	0x1B24D3DC4927CBDA			; e^-408
				dq	0x1B3C4EBFEF2238B1			; e^-407
				dq	0x1B533CAD522DD473			; e^-406
				dq	0x1B6A25547E0513F7			; e^-405
				dq	0x1B81C496E050B08F			; e^-404
				dq	0x1B98262C84D06CB5			; e^-403
				dq	0x1BB0693905C49814			; e^-402
				dq	0x1BC64E0DC0B1829F			; e^-401
				dq	0x1BDE50C483C04DCD			; e^-400
				dq	0x1BF499FD08681AF2			; e^-399
				dq	0x1C0C0017EAEF1AA2			; e^-398
				dq	0x1C2307397AA8DA7C			; e^-397
				dq	0x1C39DCAE3910BF72			; e^-396
				dq	0x1C5193380AB510C9			; e^-395
				dq	0x1C67E3128FD5CD18			; e^-394
				dq	0x1C803B9F63F62777			; e^-393
				dq	0x1C961013A44A98A8			; e^-392
				dq	0x1CADFC883BEF20CE			; e^-391
				dq	0x1CC460BE95B93B11			; e^-390
				dq	0x1CDBB24A7537EE42			; e^-389
				dq	0x1CF2D25A296FAD56			; e^-388
				dq	0x1D0994D1D1C4EF99			; e^-387
				dq	0x1D21626263B5908B			; e^-386
				dq	0x1D37A0B30DFEE42C			; e^-385
				dq	0x1D500E8476D3D23E			; e^-384
				dq	0x1D65D2C5BDE5D77A			; e^-383
				dq	0x1D7DA9360336FDCE			; e^-382
				dq	0x1D94281F324A0531			; e^-381
				dq	0x1DAB65552EB32927			; e^-380
				dq	0x1DC29E0DC1D08325			; e^-379
				dq	0x1DD94DBD1738B12B			; e^-378
				dq	0x1DF132146E24A8F9			; e^-377
				dq	0x1E075F0BF938A647			; e^-376
				dq	0x1E1FC3CDBC9858C5			; e^-375
				dq	0x1E3596222F00A953			; e^-374
				dq	0x1E4D56CB4F3B0E14			; e^-373
				dq	0x1E63F01D2422DC00			; e^-372
				dq	0x1E7B1935BEAEADB3			; e^-371
				dq	0x1E926A52AB944B6C			; e^-370
				dq	0x1EA9076DDE99A035			; e^-369
				dq	0x1EC1024CB0F7F9E9			; e^-368
				dq	0x1ED71E1B510F90E2			; e^-367
				dq	0x1EEF6B8A7C401BE2			; e^-366
				dq	0x1F055A271E4A125D			; e^-365
				dq	0x1F1D05459CAD9872			; e^-364
				dq	0x1F33B8B6B6183219			; e^-363
				dq	0x1F4ACDE9D2FD7A56			; e^-362
				dq	0x1F62372752F23CC1			; e^-361
				dq	0x1F78C1E2031AFD5F			; e^-360
				dq	0x1F90D309B73CCAE2			; e^-359
				dq	0x1FA6DDDF1AA00AA3			; e^-358
				dq	0x1FBF143C7BAFE995			; e^-357
				dq	0x1FD51ED2B794422F			; e^-356
				dq	0x1FECB4A26F3C63F6			; e^-355
				dq	0x200381EA37BD35B3			; e^-354
				dq	0x201A836F1FE58BBE			; e^-353
				dq	0x2032048A2883850B			; e^-352
				dq	0x20487D1765E4F251			; e^-351
				dq	0x2060A44A100CAC19			; e^-350
				dq	0x20769E556086EEE2			; e^-349
				dq	0x208EBDE1117307D4			; e^-348
				dq	0x20A4E4232BC64D77			; e^-347
				dq	0x20BC64DF517D5120			; e^-346
				dq	0x20D34BB5FD56A155			; e^-345
				dq	0x20EA39C3600DF153			; e^-344
				dq	0x2101D279A1371C02			; e^-343
				dq	0x2118390BEE040482			; e^-342
				dq	0x2130760C4E8236F6			; e^-341
				dq	0x21465F7C32D2440B			; e^-340
				dq	0x215E68759B7A3FAE			; e^-339
				dq	0x2174AA16B0CE0F41			; e^-338
				dq	0x218C15F9D4DB28FE			; e^-337
				dq	0x21A316185FCDB131			; e^-336
				dq	0x21B9F0E4546D1388			; e^-335
				dq	0x21D1A0F43645B77A			; e^-334
				dq	0x21E7F5BD8858B612			; e^-333
				dq	0x2200484F09ADEDE8			; e^-332
				dq	0x22162151A6F21C90			; e^-331
				dq	0x222E13F77F074FF1			; e^-330
				dq	0x224470AB81923181			; e^-329
				dq	0x225BC7EF9182A19B			; e^-328
				dq	0x2272E10FBCA33CB4			; e^-327
				dq	0x2289A8CFC4372B65			; e^-326
				dq	0x22A16FF86525E12C			; e^-325
				dq	0x22B7B32A2787541B			; e^-324
				dq	0x22D01B10DC8B3B1D			; e^-323
				dq	0x22E5E3D3D7A9A1CD			; e^-322
				dq	0x22FDC064289898E4			; e^-321
				dq	0x231437DFDDE45C6A			; e^-320
				dq	0x232B7ABE264F972D			; e^-319
				dq	0x2342AC9A75E2F3FA			; e^-318
				dq	0x235961837CCCEACD			; e^-317
				dq	0x23713F84AF802D9D			; e^-316
				dq	0x2387714FC3E7F204			; e^-315
				dq	0x239FDCA0CBEB1B9C			; e^-314
				dq	0x23B5A700E5004888			; e^-313
				dq	0x23CD6DB90BD50085			; e^-312
				dq	0x23E3FFB20A738C27			; e^-311
				dq	0x23FB2E6338BA7970			; e^-310
				dq	0x241278B6F216C0AD			; e^-309
				dq	0x24291AFD51AA54F3			; e^-308
				dq	0x24410F979B2393BD			; e^-307
				dq	0x2457302C5B769158			; e^-306
				dq	0x246F8418913B2B95			; e^-305
				dq	0x24856AD6F4332E86			; e^-304
				dq	0x249D1BF3A3780EA3			; e^-303
				dq	0x24B3C82050BE8C92			; e^-302
				dq	0x24CAE2DC74C5EC9D			; e^-301
				dq	0x24E245639C3A49F7			; e^-300
				dq	0x24F8D53B1C55C677			; e^-299
				dq	0x2510E02FB1F9E4EF			; e^-298
				dq	0x2526EFBDF1C3759B			; e^-297
				dq	0x253F2C8655FD39E2			; e^-296
				dq	0x25552F542FA6A0CE			; e^-295
				dq	0x256CCB11713E403A			; e^-294
				dq	0x25839128FF069A6E			; e^-293
				dq	0x259A98278CEC9D6A			; e^-292
				dq	0x25B2129EE3AE9B2D			; e^-291
				dq	0x25C8903ABC4F2CB1			; e^-290
				dq	0x25E0B14B81FC651F			; e^-289
				dq	0x25F6B0028FE3A3B8			; e^-288
				dq	0x260ED5E76EA7FC79			; e^-287
				dq	0x2624F476C6D7CA24			; e^-286
				dq	0x263C7B0FFDD19182			; e^-285
				dq	0x26535ACA684229D8			; e^-284
				dq	0x266A4E423A0F478C			; e^-283
				dq	0x2681E0673C2DECBD			; e^-282
				dq	0x26984BFA16FF6B94			; e^-281
				dq	0x26B082E99D288282			; e^-280
				dq	0x26C670F844618C78			; e^-279
				dq	0x26DE8039371D7439			; e^-278
				dq	0x26F4BA3CEE4E8949			; e^-277
				dq	0x270C2BECD8B63E07			; e^-276
				dq	0x27232502E40FD165			; e^-275
				dq	0x273A052A3B62EE2A			; e^-274
				dq	0x2751AEBB1DBF8F18			; e^-273
				dq	0x2768087717A7F1BB			; e^-272
				dq	0x278055089974ACB1			; e^-271
				dq	0x2796329D232DE199			; e^-270
				dq	0x27AE2B7912964F75			; e^-269
				dq	0x27C480A4DF8F6E9C			; e^-268
				dq	0x27DBDDA59837B646			; e^-267
				dq	0x27F2EFD0CEA959AA			; e^-266
				dq	0x2809BCDD565F45B5			; e^-265
				dq	0x28217D9904ABF72C			; e^-264
				dq	0x2837C5AFAF527A12			; e^-263
				dq	0x285027A710C54ACD			; e^-262
				dq	0x2865F4EF4590950A			; e^-261
				dq	0x287DD7A46B8D85D6			; e^-260
				dq	0x289447ACD90DE0A6			; e^-259
				dq	0x28AB9037D955CA2E			; e^-258
				dq	0x28C2BB3288D6F0AD			; e^-257
				dq	0x28D9755956AD4E9C			; e^-256
				dq	0x28F14CFF7170EC0D			; e^-255
				dq	0x290783A1D4C0FAA7			; e^-254
				dq	0x291FF58741C3A08D			; e^-253
				dq	0x2935B7ECCA1A01D7			; e^-252
				dq	0x294D84B8B3AC2CDB			; e^-251
				dq	0x29640F531E1E6723			; e^-250
				dq	0x297B43A13FB207F5			; e^-249
				dq	0x2992872677E280EB			; e^-248
				dq	0x29A92E9C0E16205F			; e^-247
				dq	0x29C11CECE8B5D57F			; e^-246
				dq	0x29D7424B845DC019			; e^-245
				dq	0x29EF9CB9D6D3DFFE			; e^-244
				dq	0x2A057B93D4943E4D			; e^-243
				dq	0x2A1D32B363B58467			; e^-242
				dq	0x2A33D795F6E91C26			; e^-241
				dq	0x2A4AF7DF757D4EB7			; e^-240
				dq	0x2A6253AB058B2B8A			; e^-239
				dq	0x2A78E8A35471E469			; e^-238
				dq	0x2A90ED5FF3402AFB			; e^-237
				dq	0x2AA701AAC02BB536			; e^-236
				dq	0x2ABF44E32B95DAE1			; e^-235
				dq	0x2AD53FE28DF496F2			; e^-234
				dq	0x2AECE191FB733AC4			; e^-233
				dq	0x2B03A073B05C42E7			; e^-232
				dq	0x2B1AACF02B65943F			; e^-231
				dq	0x2B3220BE9FF8E556			; e^-230
				dq	0x2B48A36D07970034			; e^-229
				dq	0x2B60BE571DE802D5			; e^-228
				dq	0x2B76C1BD8FB6D644			; e^-227
				dq	0x2B8EEE00926A16FA			; e^-226
				dq	0x2BA504D7244D31C8			; e^-225
				dq	0x2BBC915201A1E776			; e^-224
				dq	0x2BD369EA9C1F03D9			; e^-223
				dq	0x2BEA62D11883DD7F			; e^-222
				dq	0x2C01EE5FB9B0362F			; e^-221
				dq	0x2C185EF70B496E3E			; e^-220
				dq	0x2C308FD0F98CC130			; e^-219
				dq	0x2C4682820004CF81			; e^-218
				dq	0x2C5E980F65223146			; e^-217
				dq	0x2C74CA6FCABED982			; e^-216
				dq	0x2C8C41F103DDBC48			; e^-215
				dq	0x2CA333F910844D90			; e^-214
				dq	0x2CBA197FFA4A691E			; e^-213
				dq	0x2CD1BC8CC9861A79			; e^-212
				dq	0x2CE81B3F492A453B			; e^-211
				dq	0x2D0061CC1B09E660			; e^-210
				dq	0x2D1643F62385C65C			; e^-209
				dq	0x2D2E430D04EC3068			; e^-208
				dq	0x2D4490AAB96AF02F			; e^-207
				dq	0x2D5BF36C968F6C0E			; e^-206
				dq	0x2D72FE9D687DDA2E			; e^-205
				dq	0x2D89D0FA94730B8E			; e^-204
				dq	0x2DA18B444A94063D			; e^-203
				dq	0x2DB7D843B0A76D0D			; e^-202
				dq	0x2DD034471B2BFC6C			; e^-201
				dq	0x2DE6061812054CFA			; e^-200
				dq	0x2DFDEEF6DA3E109F			; e^-199
				dq	0x2E1457862D6588F1			; e^-198
				dq	0x2E2BA5C254D94663			; e^-197
				dq	0x2E42C9D6038F58D1			; e^-196
				dq	0x2E59893EB0EDBC2F			; e^-195
				dq	0x2E715A84BC2C099D			; e^-194
				dq	0x2E87960236EB8104			; e^-193
				dq	0x2EA0074096A5A34C			; e^-192
				dq	0x2EB5C8E5E89B7F87			; e^-191
				dq	0x2ECD9BCA54C1887C			; e^-190
				dq	0x2EE41F0068A7A854			; e^-189
				dq	0x2EFB58EFE08487FC			; e^-188
				dq	0x2F1295A145C1BAB3			; e^-187
				dq	0x2F29424A1FCF52E8			; e^-186
				dq	0x2F412A4CA1CD1638			; e^-185
				dq	0x2F575478D6CDDEE7			; e^-184
				dq	0x2F6FB56E5C09773B			; e^-183
				dq	0x2F858C5DC99E4AE4			; e^-182
				dq	0x2F9D4984EB4005E2			; e^-181
				dq	0x2FB3E717B201AAD5			; e^-180
				dq	0x2FCB0CF2E1EEDED3			; e^-179
				dq	0x2FE261FD9796A399			; e^-178
				dq	0x2FF8FC1AB74075B7			; e^-177
				dq	0x3010FA9A8317651F			; e^-176
				dq	0x302713A590C2E245			; e^-175
				dq	0x303F5D530B4F5EDD			; e^-174
				dq	0x3055507DDC92DC42			; e^-173
				dq	0x306CF8241B8EE293			; e^-172
				dq	0x3083AFCA550DD136			; e^-171
				dq	0x309AC1C907F821BE			; e^-170
				dq	0x30B22EE965FBFD1B			; e^-169
				dq	0x30C8B6AE536CB5AF			; e^-168
				dq	0x30E0CB6CEBC0FD13			; e^-167
				dq	0x30F6D3866ACC4B97			; e^-166
				dq	0x310F062C8B65B198			; e^-165
				dq	0x312515444E1F3930			; e^-164
				dq	0x313CA7A56A7BCFC8			; e^-163
				dq	0x31537916A222F236			; e^-162
				dq	0x316A777007F03AC8			; e^-161
				dq	0x3181FC63223FAC81			; e^-160
				dq	0x31987202D671DAE5			; e^-159
				dq	0x31B09CC26B8A5898			; e^-158
				dq	0x31C694197069D2BB			; e^-157
				dq	0x31DEAFF8340C0B95			; e^-156
				dq	0x31F4DAAF4FFBFFB3			; e^-155
				dq	0x320C580663B97826			; e^-154
				dq	0x322342FAEE475139			; e^-153
				dq	0x323A2DE59D8543CC			; e^-152
				dq	0x3251CA6942036ABB			; e^-151
				dq	0x32682E16284F5EC5			; e^-150
				dq	0x32806E9996332BA1			; e^-149
				dq	0x3296555CB289E44B			; e^-148
				dq	0x32AE5AB364643354			; e^-147
				dq	0x32C4A0BD18E64DF7			; e^-146
				dq	0x32DC094499CC578E			; e^-145
				dq	0x32F30D759323998C			; e^-144
				dq	0x3309E5278AB1D4CF			; e^-143
				dq	0x332198FA3F30BE25			; e^-142
				dq	0x3337EAE636D6144E			; e^-141
				dq	0x335040F1036F4863			; e^-140
				dq	0x3366174E477A895F			; e^-139
				dq	0x337E065B82DD95A0			; e^-138
				dq	0x3394676BE491D129			; e^-137
				dq	0x33ABBB5DA5F7C823			; e^-136
				dq	0x33C2D884EEF5FDCB			; e^-135
				dq	0x33D99D3397AB8371			; e^-134
				dq	0x33F1681497ED15B3			; e^-133
				dq	0x3407A870F597FDBD			; e^-132
				dq	0x342013C74EDBA307			; e^-131
				dq	0x3435D9EC4ADA7938			; e^-130
				dq	0x344DB2EDFD20FA7C			; e^-129
				dq	0x34642EB9F39AFB0B			; e^-128
				dq	0x347B6E4F282B43F4			; e^-127
				dq	0x3492A42764857B19			; e^-126
				dq	0x34A9560792D19314			; e^-125
				dq	0x34C137B6CE8E052C			; e^-124
				dq	0x34D766B45DD84F18			; e^-123
				dq	0x34EFCE362FE6E7D0			; e^-122
				dq	0x35059D34DD8A5473			; e^-121
				dq	0x351D606847FC727A			; e^-120
				dq	0x3533F6A58B795DE3			; e^-119
				dq	0x354B2216C6EFDAC1			; e^-118
				dq	0x3562705B5B153FB8			; e^-117
				dq	0x35790FA1509BD50D			; e^-116
				dq	0x359107DF698DA211			; e^-115
				dq	0x35A725AE6E7B9D35			; e^-114
				dq	0x35BF75D6040AEFF6			; e^-113
				dq	0x35D56126259E093C			; e^-112
				dq	0x35ED0EC7DF4F7BD4			; e^-111
				dq	0x3603BF2CF6722E46			; e^-110
				dq	0x361AD6B22F55DB42			; e^-109
				dq	0x36323D1F3E5834A0			; e^-108
				dq	0x3648C9FEAB89B876			; e^-107
				dq	0x3660D88CF37F00DD			; e^-106
				dq	0x3676E55D2BF838A7			; e^-105
				dq	0x368F1E6B68529E33			; e^-104
				dq	0x36A525BE4E4E601D			; e^-103
				dq	0x36BCBE0A45F75EB1			; e^-102
				dq	0x36D3884E838AEA68			; e^-101
				dq	0x36EA8C1F14E2AF5D			; e^-100
				dq	0x37020A717E64A9BD			; e^-99
				dq	0x3718851D84118908			; e^-98
				dq	0x3730A9BDFB02D240			; e^-97
				dq	0x3746A5BEA046B42E			; e^-96
				dq	0x375EC7F3B269EFA8			; e^-95
				dq	0x3774EAFB87EAB0F2			; e^-94
				dq	0x378C6E2D05BBC000			; e^-93
				dq	0x37A35208867C2683			; e^-92
				dq	0x37BA425B317EEACD			; e^-91
				dq	0x37D1D8508FA8246A			; e^-90
				dq	0x37E840FBC08FDC8A			; e^-89
				dq	0x38007B7112BC1FFE			; e^-88
				dq	0x381666D0DAD2961D			; e^-87
				dq	0x382E726C3F64D0FE			; e^-86
				dq	0x3844B0DC07CABF98			; e^-85
				dq	0x385C1F2DAF3B6A46			; e^-84
				dq	0x38731C5957A47DE2			; e^-83
				dq	0x3889F96445648B9F			; e^-82
				dq	0x38A1A6BAEADB4FD1			; e^-81
				dq	0x38B7FD974D372E45			; e^-80
				dq	0x38D04DA4D1452919			; e^-79
				dq	0x38E62891F06B3450			; e^-78
				dq	0x38FE1DD273AA8A4A			; e^-77
				dq	0x3914775E0840BFDD			; e^-76
				dq	0x392BD109D9D94BDA			; e^-75
				dq	0x3942E73F53FBA844			; e^-74
				dq	0x3959B138170D6BFE			; e^-73
				dq	0x397175AF0CF60EC5			; e^-72
				dq	0x3987BAEE1BFFA80B			; e^-71
				dq	0x39A02057D1245CEB			; e^-70
				dq	0x39B5EAFFFB34BA31			; e^-69
				dq	0x39CDCA23BAE16424			; e^-68
				dq	0x39E43E7FC88B8056			; e^-67
				dq	0x39FB83BF23A9A9EB			; e^-66
				dq	0x3A12B2B8DD05B318			; e^-65
				dq	0x3A2969D47321E4CC			; e^-64
				dq	0x3A41452B7723AED2			; e^-63
				dq	0x3A5778FE2497184C			; e^-62
				dq	0x3A6FE7116182E9CC			; e^-61
				dq	0x3A85AE191A99585A			; e^-60
				dq	0x3A9D775D87DA854D			; e^-59
				dq	0x3AB4063F8CC8BB98			; e^-58
				dq	0x3ACB374B315F87C1			; e^-57
				dq	0x3AE27EC458C65E3C			; e^-56
				dq	0x3AF923372C67A074			; e^-55
				dq	0x3B11152EAEB73C08			; e^-54
				dq	0x3B2737C5645114B5			; e^-53
				dq	0x3B3F8E6C24B5592E			; e^-52
				dq	0x3B5571DB733A9D61			; e^-51
				dq	0x3B6D257D547E083F			; e^-50
				dq	0x3B83CE9B9DE78F85			; e^-49
				dq	0x3B9AEBABAE3A41B5			; e^-48
				dq	0x3BB24B6031B49BDA			; e^-47
				dq	0x3BC8DD5E1BB09D7E			; e^-46
				dq	0x3BE0E5B73D1FF53D			; e^-45
				dq	0x3BF6F741DE1748EC			; e^-44
				dq	0x3C0F36BD37F42F3E			; e^-43
				dq	0x3C2536452EE2F75C			; e^-42
				dq	0x3C3CD480A1B74820			; e^-41
				dq	0x3C539792499B1A24			; e^-40
				dq	0x3C6AA0DE4BF35B38			; e^-39
				dq	0x3C82188AD6AE3303			; e^-38
				dq	0x3C9898471FCA6055			; e^-37
				dq	0x3CB0B6C3AFDDE064			; e^-36
				dq	0x3CC6B7719A59F0E0			; e^-35
				dq	0x3CDEE001EED62AA0			; e^-34
				dq	0x3CF4FB547C775DA8			; e^-33
				dq	0x3D0C8464F7616468			; e^-32
				dq	0x3D236121E24D3BBA			; e^-31
				dq	0x3D3A56E0C2AC7F75			; e^-30
				dq	0x3D51E642BAEB84A0			; e^-29
				dq	0x3D6853F01D6D53BA			; e^-28
				dq	0x3D80885298767E9A			; e^-27
				dq	0x3D967852A7007E42			; e^-26
				dq	0x3DAE8A37A45FC32E			; e^-25
				dq	0x3DC4C1078FE9228A			; e^-24
				dq	0x3DDC3527E433FAB1			; e^-23
				dq	0x3DF32B48BF117DA2			; e^-22
				dq	0x3E0A0DB0D0DDB3EC			; e^-21
				dq	0x3E21B48655F37267			; e^-20
				dq	0x3E381056FF2C5772			; e^-19
				dq	0x3E505A628C699FA1			; e^-18
				dq	0x3E6639E3175A689D			; e^-17
				dq	0x3E7E355BBAEE85CB			; e^-16
				dq	0x3E94875CA227EC38			; e^-15
				dq	0x3EABE6C6FDB01612			; e^-14
				dq	0x3EC2F6053B981D98			; e^-13
				dq	0x3ED9C54C3B43BC8B			; e^-12
				dq	0x3EF18354238F6764			; e^-11
				dq	0x3F07CD79B5647C9B			; e^-10
				dq	0x3F202CF22526545A			; e^-9
				dq	0x3F35FC21041027AD			; e^-8
				dq	0x3F4DE16B9C24A98F			; e^-7
				dq	0x3F644E51F113D4D6			; e^-6
				dq	0x3F7B993FE00D5376			; e^-5
				dq	0x3F92C155B8213CF4			; e^-4
				dq	0x3FA97DB0CCCEB0AF			; e^-3
				dq	0x3FC152AAA3BF81CC			; e^-2
				dq	0x3FD78B56362CEF38			; e^-1
				dq	0x3FF0000000000000			; e^0
				dq	0x4005BF0A8B145769			; e^+1
				dq	0x401D8E64B8D4DDAE			; e^+2
				dq	0x403415E5BF6FB106			; e^+3
				dq	0x404B4C902E273A58			; e^+4
				dq	0x40628D389970338F			; e^+5
				dq	0x407936DC5690C08F			; e^+6
				dq	0x409122885AAEDDAA			; e^+7
				dq	0x40A749EA7D470C6E			; e^+8
				dq	0x40BFA7157C470F82			; e^+9
				dq	0x40D5829DCF950560			; e^+10
				dq	0x40ED3C4488EE4F7F			; e^+11
				dq	0x4103DE1654D37C9A			; e^+12
				dq	0x411B00B5916AC955			; e^+13
				dq	0x413259AC48BF05D7			; e^+14
				dq	0x4148F0CCAFAD2A87			; e^+15
				dq	0x4160F2EBD0A80020			; e^+16
				dq	0x417709348C0EA4F9			; e^+17
				dq	0x418F4F22091940BD			; e^+18
				dq	0x41A546D8F9ED26E1			; e^+19
				dq	0x41BCEB088B68E804			; e^+20
				dq	0x41D3A6E1FD9EECFD			; e^+21
				dq	0x41EAB5ADB9C43600			; e^+22
				dq	0x420226AF33B1FDC1			; e^+23
				dq	0x4218AB7FB5475FB7			; e^+24
				dq	0x4230C3D3920962C9			; e^+25
				dq	0x4246C932696A6B5D			; e^+26
				dq	0x425EF822F7F6731D			; e^+27
				dq	0x42750BBA3796379A			; e^+28
				dq	0x428C9AAE4631C056			; e^+29
				dq	0x42A370470AEC28ED			; e^+30
				dq	0x42BA6B765D8CDF6D			; e^+31
				dq	0x42D1F43FCC4B662C			; e^+32
				dq	0x42E866F34A725782			; e^+33
				dq	0x4300953E2F3A1EF7			; e^+34
				dq	0x431689E221BC8D5B			; e^+35
				dq	0x432EA215A1D20D76			; e^+36
				dq	0x4344D13FBB1A001A			; e^+37
				dq	0x435C4B334617CC67			; e^+38
				dq	0x43733A43D282A519			; e^+39
				dq	0x438A220D397972EB			; e^+40
				dq	0x43A1C25C88DF6862			; e^+41
				dq	0x43B8232558201159			; e^+42
				dq	0x43D0672A3C9EB871			; e^+43
				dq	0x43E64B41C6D37832			; e^+44
				dq	0x43FE4CF766FE49BE			; e^+45
				dq	0x44149767BC0483E3			; e^+46
				dq	0x442BFC951EB8BB76			; e^+47
				dq	0x444304D6AECA254B			; e^+48
				dq	0x4459D97010884251			; e^+49
				dq	0x44719103E4080B45			; e^+50
				dq	0x4487E013CD114461			; e^+51
				dq	0x44A03996528E074C			; e^+52
				dq	0x44B60D4F6FDAC731			; e^+53
				dq	0x44CDF8C5AF17BA3B			; e^+54
				dq	0x44E45E3076D61699			; e^+55
				dq	0x44FBAED16A6E0DA7			; e^+56
				dq	0x4512CFFDFEBDE1A1			; e^+57
				dq	0x4529919CABEFCB69			; e^+58
				dq	0x454160345C9953E3			; e^+59
				dq	0x45579DBC9DC53C66			; e^+60
				dq	0x45700C810D464097			; e^+61
				dq	0x4585D009394C5C27			; e^+62
				dq	0x459DA57DE8F107A8			; e^+63
				dq	0x45B425982CF597CD			; e^+64
				dq	0x45CB61E5CA3A5E31			; e^+65
				dq	0x45E29BB825DFCF87			; e^+66
				dq	0x45F94A90DB0D6FE2			; e^+67
				dq	0x46112FEC759586FD			; e^+68
				dq	0x46275C1DC469E3AF			; e^+69
				dq	0x463FBFD219C43B04			; e^+70
				dq	0x4655936D44E1A146			; e^+71
				dq	0x466D531D8A7EE79C			; e^+72
				dq	0x4683ED9D24A2D51B			; e^+73
				dq	0x469B15CFE5B6E17B			; e^+74
				dq	0x46B268038C2C0E00			; e^+75
				dq	0x46C9044A73545D48			; e^+76
				dq	0x46E1002AB6218B38			; e^+77
				dq	0x46F71B3540CBF921			; e^+78
				dq	0x470F6799EA9C414A			; e^+79
				dq	0x47255779B984F3EB			; e^+80
				dq	0x473D01A210C44AA4			; e^+81
				dq	0x4753B63DA8E91210			; e^+82
				dq	0x476ACA8D6B0116B8			; e^+83
				dq	0x478234DE9E0C74E9			; e^+84
				dq	0x4798BEC7503CA477			; e^+85
				dq	0x47B0D0EDA9796B90			; e^+86
				dq	0x47C6DB0118477245			; e^+87
				dq	0x47DF1056DC7BF22D			; e^+88
				dq	0x47F51C2CC3433801			; e^+89
				dq	0x480CB108FFBEC164			; e^+90
				dq	0x48237F780991B584			; e^+91
				dq	0x483A801C0EA8AC4D			; e^+92
				dq	0x48520247CC4C46C1			; e^+93
				dq	0x48687A0553328015			; e^+94
				dq	0x4880A233DEE4F9BB			; e^+95
				dq	0x48969B7F55B808BA			; e^+96
				dq	0x48AEBA064644060A			; e^+97
				dq	0x48C4E184933D9364			; e^+98
				dq	0x48DC614FE2531841			; e^+99
				dq	0x48F3494A9B171BF5			; e^+100
				dq	0x490A36798B9D969B			; e^+101
				dq	0x4921D03D8C0C04AF			; e^+102
				dq	0x493836026385C974			; e^+103
				dq	0x495073FBE9AC901D			; e^+104
				dq	0x49665CAE0969F286			; e^+105
				dq	0x497E64A58639CAE8			; e^+106
				dq	0x4994A77F5F9B50F9			; e^+107
				dq	0x49AC12744A3A28E3			; e^+108
				dq	0x49C313B3B6978E85			; e^+109
				dq	0x49D9EDA3A31E587E			; e^+110
				dq	0x49F19EBE56B56453			; e^+111
				dq	0x4A07F2BC6E599B7E			; e^+112
				dq	0x4A204644610DF2FF			; e^+113
				dq	0x4A361E8B490AC4E6			; e^+114
				dq	0x4A4E103201F299B3			; e^+115
				dq	0x4A646E1B637BEAF5			; e^+116
				dq	0x4A7BC473CFEDE104			; e^+117
				dq	0x4A92DEB1B9C85E2D			; e^+118
				dq	0x4AA9A5981CA67D10			; e^+119
				dq	0x4AC16DC8A9EF670B			; e^+120
				dq	0x4AD7B03166942309			; e^+121
				dq	0x4AF0190BE03150A7			; e^+122
				dq	0x4B05E1152F9A8119			; e^+123
				dq	0x4B1DBCA9263F8487			; e^+124
				dq	0x4B343556DEE93BEE			; e^+125
				dq	0x4B4B774C12967DFA			; e^+126
				dq	0x4B62AA4306E922C2			; e^+127
				dq	0x4B795E54C5DD4217			; e^+128
				dq	0x4B913D5B07929253			; e^+129
				dq	0x4BA76E5F44CE9C2F			; e^+130
				dq	0x4BBFD8A20C3CC006			; e^+131
				dq	0x4BD5A449DD5CCAB9			; e^+132
				dq	0x4BED6A0867193D6C			; e^+133
				dq	0x4C03FD3016C9D64C			; e^+134
				dq	0x4C1B2AFAB7F7FC66			; e^+135
				dq	0x4C32766604B71D6D			; e^+136
				dq	0x4C4917D7728472A7			; e^+137
				dq	0x4C610D73F59D48DF			; e^+138
				dq	0x4C772D4407457C1D			; e^+139
				dq	0x4C8F8024EB633B1D			; e^+140
				dq	0x4CA5682777CA4725			; e^+141
				dq	0x4CBD184D3F8C34F5			; e^+142
				dq	0x4CD3C5A554D381AF			; e^+143
				dq	0x4CEADF7D6C5FBB7A			; e^+144
				dq	0x4D0243191E60BE32			; e^+145
				dq	0x4D18D21DFC67715A			; e^+146
				dq	0x4D30DE11FE284410			; e^+147
				dq	0x4D46ECDDB1C8C6E7			; e^+148
				dq	0x4D5F289DAB234C40			; e^+149
				dq	0x4D752CAC29822593			; e^+150
				dq	0x4D8CC77531A4F011			; e^+151
				dq	0x4DA38EB4E77DDDDD			; e^+152
				dq	0x4DBA94D1E2925340			; e^+153
				dq	0x4DD2105AC3794C20			; e^+154
				dq	0x4DE88D26434A71B6			; e^+155
				dq	0x4E00AF33AF5B2D7A			; e^+156
				dq	0x4E16AD2A4DAC90E3			; e^+157
				dq	0x4E2ED209A0495E91			; e^+158
				dq	0x4E44F1D6223BCF5A			; e^+159
				dq	0x4E5C777DC65C9488			; e^+160
				dq	0x4E73585D21F52AD4			; e^+161
				dq	0x4E8A4AF5D3B99D59			; e^+162
				dq	0x4EA1DE2967ECAFCC			; e^+163
				dq	0x4EB848EE2CD9E02A			; e^+164
				dq	0x4ED080D79B61580F			; e^+165
				dq	0x4EE66E27E9B9AB09			; e^+166
				dq	0x4EFE7C66270C39F4			; e^+167
				dq	0x4F14B7A396B8BFF6			; e^+168
				dq	0x4F2C28648D85AB83			; e^+169
				dq	0x4F43229C5C0D358F			; e^+170
				dq	0x4F5A01E6FF52EFB1			; e^+171
				dq	0x4F71AC8383F35FBD			; e^+172
				dq	0x4F880573A499F824			; e^+173
				dq	0x4FA052FC585E98A2			; e^+174
				dq	0x4FB62FD49A1E79F8			; e^+175
				dq	0x4FCE27B0A2F86833			; e^+176
				dq	0x4FE47E12C0B6846F			; e^+177
				dq	0x4FFBDA271DB91986			; e^+178
				dq	0x5012ED70F2346931			; e^+179
				dq	0x5029B9A32B1D8885			; e^+180
				dq	0x50417B6794066E66			; e^+181
				dq	0x5057C2B49BD687CA			; e^+182
				dq	0x507025A080643D67			; e^+183
				dq	0x5085F22E785FF70E			; e^+184
				dq	0x509DD3E67EDBD369			; e^+185
				dq	0x50B44521DEE0E199			; e^+186
				dq	0x50CB8CC314434B52			; e^+187
				dq	0x50E2B8D945670408			; e^+188
				dq	0x50F9722823092B4D			; e^+189
				dq	0x51114AD418D3B94C			; e^+190
				dq	0x512780AF0992E0C5			; e^+191
				dq	0x513FF18562CC483E			; e^+192
				dq	0x5155B533A34ADB32			; e^+193
				dq	0x516D81052CB19D0C			; e^+194
				dq	0x51840CCF34C420DE			; e^+195
				dq	0x519B40361511970E			; e^+196
				dq	0x51B284D3BB227032			; e^+197
				dq	0x51C92B73B924EDF1			; e^+198
				dq	0x51E11AC797323903			; e^+199
				dq	0x51F73F60EA79F5B9			; e^+200
				dq	0x520F98C31A5FDD25			; e^+201
				dq	0x522578E23EE4F2D2			; e^+202
				dq	0x523D2F0A258E2D01			; e^+203
				dq	0x5253D5190ABF8313			; e^+204
				dq	0x526AF47DCA9FD133			; e^+205
				dq	0x5282515EBD58BF5C			; e^+206
				dq	0x5298E583C58E35C4			; e^+207
				dq	0x52B0EB40981671AC			; e^+208
				dq	0x52C6FEC840CEA3D5			; e^+209
				dq	0x52DF40F772B4AA1B			; e^+210
				dq	0x52F53D38745E9AA6			; e^+211
				dq	0x530CDDF2E98B780D			; e^+212
				dq	0x53239DFDADF7D8F2			; e^+213
				dq	0x533AA997E5E614A7			; e^+214
				dq	0x53521E78BA644953			; e^+215
				dq	0x5368A056265FE3CE			; e^+216
				dq	0x5380BC3DA8870386			; e^+217
				dq	0x5396BEE3145C2812			; e^+218
				dq	0x53AEEA1FBE812D0F			; e^+219
				dq	0x53C50234720464C9			; e^+220
				dq	0x53DC8DBCFFB57D24			; e^+221
				dq	0x53F3677B704A40D8			; e^+222
				dq	0x540A5F821E46BD6C			; e^+223
				dq	0x5421EC2024FB6CEF			; e^+224
				dq	0x54385BE8BFA1AFCE			; e^+225
				dq	0x54508DBD59915B4F			; e^+226
				dq	0x54667FAF7266BF9B			; e^+227
				dq	0x547E943957EC0C43			; e^+228
				dq	0x5494C7D46B30E5B0			; e^+229
				dq	0x54AC3E65F5F6F8E0			; e^+230
				dq	0x54C33190A83F0958			; e^+231
				dq	0x54DA163A317C9571			; e^+232
				dq	0x54F1BA5374247313			; e^+233
				dq	0x550818397B37B180			; e^+234
				dq	0x55205FBE403E820D			; e^+235
				dq	0x5536412B6D9C72F9			; e^+236
				dq	0x554E3F41A0776B59			; e^+237
				dq	0x55648E16983EA89A			; e^+238
				dq	0x557BEFEB61064EA1			; e^+239
				dq	0x5592FC3BB0FCB841			; e^+240
				dq	0x55A9CDBDE38932E0			; e^+241
				dq	0x55C189112329934D			; e^+242
				dq	0x55D7D54648D217A1			; e^+243
				dq	0x55F0323EF5880BF3			; e^+244
				dq	0x560603551E060B72			; e^+245
				dq	0x561DEB3600EC79D4			; e^+246
				dq	0x563454F9367A4B04			; e^+247
				dq	0x564BA24ADC52A6B6			; e^+248
				dq	0x5662C77AEA3B35AC			; e^+249
				dq	0x5679860AFEA3876D			; e^+250
				dq	0x56915857B18D19C4			; e^+251
				dq	0x56A7930D1DDD0C34			; e^+252
				dq	0x56C0053E164D25FF			; e^+253
				dq	0x56D5C62AA0F8323A			; e^+254
				dq	0x56ED9813E9473A60			; e^+255
				dq	0x57041C7A8814BEBA			; e^+256
				dq	0x571B558209F140FD			; e^+257
				dq	0x5732934CB8371AB4			; e^+258
				dq	0x57493F1F5326A019			; e^+259
				dq	0x57612825A2FDAE13			; e^+260
				dq	0x5777518BF570C588			; e^+261
				dq	0x578FB174868F8418			; e^+262
				dq	0x57A589AA1904B8FD			; e^+263
				dq	0x57BD45D8D0A28247			; e^+264
				dq	0x57D3E498D415B213			; e^+265
				dq	0x57EB098E928AFB64			; e^+266
				dq	0x58025FAF83A52372			; e^+267
				dq	0x5818F8F8B78094E9			; e^+268
				dq	0x5830F8797F4ABAB9			; e^+269
				dq	0x584710C0D041C387			; e^+270
				dq	0x585F59644203C1DE			; e^+271
				dq	0x58754DD1ADEC0B48			; e^+272
				dq	0x588CF48235243089			; e^+273
				dq	0x58A3AD52664E1DF7			; e^+274
				dq	0x58BABE6E254A0BCA			; e^+275
				dq	0x58D22CA1B9A5C3DF			; e^+276
				dq	0x58E8B3950821A800			; e^+277
				dq	0x5900C951D258F4BF			; e^+278
				dq	0x5916D0A9B49138CB			; e^+279
				dq	0x592F0248AF95F4C5			; e^+280
				dq	0x5945129F8C8EC869			; e^+281
				dq	0x595CA40D9BE99BD8			; e^+282
				dq	0x597376A58F4AF93B			; e^+283
				dq	0x598A741E77C7EC9D			; e^+284
				dq	0x59A1FA21CBB8DF30			; e^+285
				dq	0x59B86EF2276B93A5			; e^+286
				dq	0x59D09AAD2C170340			; e^+287
				dq	0x59E69144AE1D9F07			; e^+288
				dq	0x59FEAC1F275B04AF			; e^+289
				dq	0x5A14D811E6DF8552			; e^+290
				dq	0x5A2C547890F4370C			; e^+291
				dq	0x5A434090A44810F8			; e^+292
				dq	0x5A5A2A9D45FB7BB3			; e^+293
				dq	0x5A71C82E2FB1A15B			; e^+294
				dq	0x5A882B0DFDA106AA			; e^+295
				dq	0x5AA06C8A20724675			; e^+296
				dq	0x5AB6528FCE13764B			; e^+297
				dq	0x5ACE56E508C916D8			; e^+298
				dq	0x5AE49E26F3D4B60A			; e^+299
				dq	0x5AFC05C0A7166B4A			; e^+300
				dq	0x5B130B11FF23056A			; e^+301
				dq	0x5B29E1E852274ADB			; e^+302
				dq	0x5B4196C55FAA7A5C			; e^+303
				dq	0x5B57E7E678D54EB5			; e^+304
				dq	0x5B703EE7474BBDF2			; e^+305
				dq	0x5B8614892AFE2EA5			; e^+306
				dq	0x5B9E0297BAA30C57			; e^+307
				dq	0x5BB464DCEF5ABE49			; e^+308
				dq	0x5BCBB7E377E0A776			; e^+309
				dq	0x5BE2D627FE4E6AF9			; e^+310
				dq	0x5BF999FD64C82181			; e^+311
				dq	0x5C1165E5D9F93ADE			; e^+312
				dq	0x5C27A5798CDC2FF0			; e^+313
				dq	0x5C4011C33C6D0DB8			; e^+314
				dq	0x5C55D72EE0B93BB4			; e^+315
				dq	0x5C6DAF34AAE43996			; e^+316
				dq	0x5C842C321A4628C7			; e^+317
				dq	0x5C9B6ADEA38EA430			; e^+318
				dq	0x5CB2A1D104C50F06			; e^+319
				dq	0x5CC952DA4C83AF00			; e^+320
				dq	0x5CE1358E212351EF			; e^+321
				dq	0x5CF763C53339E998			; e^+322
				dq	0x5D0FCA393EFB439C			; e^+323
				dq	0x5D259A7F106151AC			; e^+324
				dq	0x5D3D5CB94EAC5631			; e^+325
				dq	0x5D53F424BA4604DF			; e^+326
				dq	0x5D6B1EAFD0F4DBEE			; e^+327
				dq	0x5D826E0B79FD6017			; e^+328
				dq	0x5D990C7CDE176CFA			; e^+329
				dq	0x5DB105BCBBD22B5D			; e^+330
				dq	0x5DC722C76B1366FE			; e^+331
				dq	0x5DDF71E427EFE008			; e^+332
				dq	0x5DF55E77E045CB62			; e^+333
				dq	0x5E0D0B23222BA489			; e^+334
				dq	0x5E23BCB319D66A0E			; e^+335
				dq	0x5E3AD354AD6E368F			; e^+336
				dq	0x5E523AD5C9DCF903			; e^+337
				dq	0x5E68C6E2F447B147			; e^+338
				dq	0x5E80D67034C7AE68			; e^+339
				dq	0x5E96E27E391E9C6C			; e^+340
				dq	0x5EAF1A84823DAF20			; e^+341
				dq	0x5EC523177BDA38EC			; e^+342
				dq	0x5EDCBA6FA88F5082			; e^+343
				dq	0x5EF385DB883320EE			; e^+344
				dq	0x5F0A88CAECC9E7DB			; e^+345
				dq	0x5F22082E64AC4EB5			; e^+346
				dq	0x5F38820A6FCEEEED			; e^+347
				dq	0x5F50A7A71AD2DC6D			; e^+348
				dq	0x5F66A2E7A7930F81			; e^+349
				dq	0x5F7EC417A3E63C6A			; e^+350
				dq	0x5F94E85C13A81660			; e^+351
				dq	0x5FAC6A9C6BEE04C8			; e^+352
				dq	0x5FC34F9C594A7140			; e^+353
				dq	0x5FDA3F1049398066			; e^+354
				dq	0x5FF1D613BF0A8036			; e^+355
				dq	0x60083DF1374D259D			; e^+356
				dq	0x6020796000C48F27			; e^+357
				dq	0x60366401C61A8A8A			; e^+358
				dq	0x604E6E9AEA52153A			; e^+359
				dq	0x6064AE43DD40AA42			; e^+360
				dq	0x607C1BA6FD34B612			; e^+361
				dq	0x609319F3E5B014A7			; e^+362
				dq	0x60A9F622833F3047			; e^+363
				dq	0x60C1A48451E14885			; e^+364
				dq	0x60D7FA9537377F3C			; e^+365
				dq	0x60F04B997D645645			; e^+366
				dq	0x610625CAA9C1FA57			; e^+367
				dq	0x611E1A0BBA3C3728			; e^+368
				dq	0x613474CD132F0B40			; e^+369
				dq	0x614BCD8CF413A3B1			; e^+370
				dq	0x6162E4E08A904D9A			; e^+371
				dq	0x6179ADFF619C3B18			; e^+372
				dq	0x6191737E9A5911FE			; e^+373
				dq	0x61A7B7F461C81AEE			; e^+374
				dq	0x61C01E522B6573E7			; e^+375
				dq	0x61D5E8406CEA7625			; e^+376
				dq	0x61EDC6677F9DB7B8			; e^+377
				dq	0x62043BF5F4EA4CBB			; e^+378
				dq	0x621B804BEEEB8CFA			; e^+379
				dq	0x6232B060A9A32244			; e^+380
				dq	0x624966A4B13F9CBC			; e^+381
				dq	0x6261430119CD2ADB			; e^+382
				dq	0x6277760CAEEE052E			; e^+383
				dq	0x628FE31152B7EF6B			; e^+384
				dq	0x62A5AB612F3A7119			; e^+385
				dq	0x62BD73ABAD99A482			; e^+386
				dq	0x62D403BCC6C7D1BC			; e^+387
				dq	0x62EB33E192BB1ADE			; e^+388
				dq	0x63027C72A91FBAD6			; e^+389
				dq	0x631920104534DE5E			; e^+390
				dq	0x6331130A55C01A76			; e^+391
				dq	0x634734DC1C3D5C6C			; e^+392
				dq	0x635F8A773363F085			; e^+393
				dq	0x63756F2B158F14E4			; e^+394
				dq	0x638D21D5BE691B49			; e^+395
				dq	0x63A3CC1FD1EDC5F0			; e^+396
				dq	0x63BAE84B8B0C7D2A			; e^+397
				dq	0x63D24914F3AFE2F6			; e^+398
				dq	0x63E8DA3FF6931B1B			; e^+399
				dq	0x6400E398D7D01704			; e^+400
				dq	0x6416F460ACDFA1C0			; e^+401
				dq	0x642F32D34539D4B2			; e^+402
				dq	0x6445339C49EDC516			; e^+403
				dq	0x645CD0E33347995C			; e^+404
				dq	0x6473951D6445BC31			; e^+405
				dq	0x648A9D8789E33ADB			; e^+406
				dq	0x64A21645F863ADE5			; e^+407
				dq	0x64B89531A46C33ED			; e^+408
				dq	0x64D0B4AB2DAB9B53			; e^+409
				dq	0x64E6B4986984352D			; e^+410
				dq	0x64FEDC22DC262BD7			; e^+411
				dq	0x6514F8B2FB75CAB5			; e^+412
				dq	0x652C80D1945F81B6			; e^+413
				dq	0x65435EB3D06F7247			; e^+414
				dq	0x655A539347AA34FD			; e^+415
				dq	0x6571E4042AA53CFD			; e^+416
				dq	0x658850E333BC3230			; e^+417
				dq	0x65A0863FE9061C49			; e^+418
				dq	0x65B675816050FD04			; e^+419
				dq	0x65CE86635382509D			; e^+420
				dq	0x65E4BE6D5E5227A4			; e^+421
				dq	0x65FC319E70B6D934			; e^+422
				dq	0x661328E16DB3B964			; e^+423
				dq	0x662A0A6C8321DB88			; e^+424
				dq	0x6641B24E022CA821			; e^+425
				dq	0x66580D528F58D861			; e^+426
				dq	0x667058559F8CDDBD			; e^+427
				dq	0x66863719A4D337E8			; e^+428
				dq	0x669E31920DFFC6D5			; e^+429
				dq	0x66B484C9ABAB9169			; e^+430
				dq	0x66CBE3475E1C3855			; e^+431
				dq	0x66E2F3A497F7830C			; e^+432
				dq	0x66F9C211014E93A7			; e^+433
				dq	0x67118121FAF407D4			; e^+434
				dq	0x6727CA7DA7E1607C			; e^+435
				dq	0x67402AEAEADBE65C			; e^+436
				dq	0x6755F95F4FF07902			; e^+437
				dq	0x676DDDAC7593D338			; e^+438
				dq	0x67844BC6219A92EF			; e^+439
				dq	0x679B95C9F913F1F2			; e^+440
				dq	0x67B2BEFBAFAF11F3			; e^+441
				dq	0x67C97A7E8D674EEE			; e^+442
				dq	0x67E1507E952BA07A			; e^+443
				dq	0x67F7886273AE678C			; e^+444
				dq	0x680FFBFCD0E62482			; e^+445
				dq	0x6825BC507FD7CDEF			; e^+446
				dq	0x683D8AAFFB634BD5			; e^+447
				dq	0x685413610319D4CC			; e^+448
				dq	0x686B4923E4C56E4A			; e^+449
				dq	0x68828AE519D14E71			; e^+450
				dq	0x689933B2F8C452EC			; e^+451
				dq	0x68B12062552E2E87			; e^+452
				dq	0x68C746FEEEC205E9			; e^+453
				dq	0x68DFA31D735687C6			; e^+454
				dq	0x68F57FEB57F30DEA			; e^+455
				dq	0x690D389A17AEA099			; e^+456
				dq	0x6923DB9897F88BA3			; e^+457
				dq	0x693AFD52CAE8B9E7			; e^+458
				dq	0x6952575F3FCB3E2D			; e^+459
				dq	0x6968EDAC1ACE3095			; e^+460
				dq	0x6980F0CBC375532D			; e^+461
				dq	0x699706511AB813A2			; e^+462
				dq	0x69AF4B350757662A			; e^+463
				dq	0x69C5442E00D851D5			; e^+464
				dq	0x69DCE76849BE1B4F			; e^+465
				dq	0x69F3A46B2CCD0C40			; e^+466
				dq	0x6A0AB2545BB447C1			; e^+467
				dq	0x6A2224688F739E9B			; e^+468
				dq	0x6A38A867D0ECEB08			; e^+469
				dq	0x6A50C1B96C8E2131			; e^+470
				dq	0x6A66C656FEB698A8			; e^+471
				dq	0x6A7EF440DEBEB36B			; e^+472
				dq	0x6A950916A83B9497			; e^+473
				dq	0x6AAC971817CE5687			; e^+474
				dq	0x6AC36DD712E784FD			; e^+475
				dq	0x6ADA68264DCAE606			; e^+476
				dq	0x6AF1F1FF7AFEA1EC			; e^+477
				dq	0x6B0863E3FE774D18			; e^+478
				dq	0x6B209329E10DC999			; e^+479
				dq	0x6B36870EA75E682D			; e^+480
				dq	0x6B4E9E3E52D4FB85			; e^+481
				dq	0x6B64CEA380E07B71			; e^+482
				dq	0x6B7C47A70EFCEABA			; e^+483
				dq	0x6B9337DAA044DC04			; e^+484
				dq	0x6BAA1EC65E29E512			; e^+485
				dq	0x6BC1C02278F1CE0F			; e^+486
				dq	0x6BD8201E8CA26D36			; e^+487
				dq	0x6BF0651BB58667C7			; e^+488
				dq	0x6C06487626BBE6CD			; e^+489
				dq	0x6C1E492AC440B0F6			; e^+490
				dq	0x6C3494D2C28C45D0			; e^+491
				dq	0x6C4BF912C335512C			; e^+492
				dq	0x6C6302742F81B217			; e^+493
				dq	0x6C79D63250176FF6			; e^+494
				dq	0x6C918ED00417FD64			; e^+495
				dq	0x6CA7DD156A715F16			; e^+496
				dq	0x6CC0378D827BECBD			; e^+497
				dq	0x6CD60A8B9437FB07			; e^+498
				dq	0x6CEDF5039AF1B491			; e^+499
				dq	0x6D045BA2A9F7E439			; e^+500
				dq	0x6D1BAB58CF1DFBE2			; e^+501
				dq	0x6D32CDA21FCD896D			; e^+502
				dq	0x6D498E67ED111611			; e^+503
				dq	0x6D615E069B7580CA			; e^+504
				dq	0x6D779AC68CA512B5			; e^+505
				dq	0x6D900A7DE459292B			; e^+506
				dq	0x6DA5CD4D0C89278C			; e^+507
				dq	0x6DBDA1C6460D161E			; e^+508
				dq	0x6DD4231178C235D2			; e^+509
				dq	0x6DEB5E76D405A221			; e^+510
				dq	0x6E029962D4DE103D			; e^+511
				dq	0x6E19476504BA852E			; e^+512
				dq	0x6E312DC4C23C62A5			; e^+513
				dq	0x6E47592FEDAC601F			; e^+514
				dq	0x6E5FBBD6F6C9EBDB			; e^+515
				dq	0x6E7590B8B1A4CEF4			; e^+516
				dq	0x6E8D4F703BD90D4D			; e^+517
				dq	0x6EA3EB1D75626C30			; e^+518
				dq	0x6EBB126A79D0C0EA			; e^+519
				dq	0x6ED265B4B6E28EA1			; e^+520
				dq	0x6EE901276CCC73A1			; e^+521
				dq	0x6F00FE08FFC0CA7A			; e^+522
				dq	0x6F17184F8D943F98			; e^+523
				dq	0x6F2F63A9D76EF559			; e^+524
				dq	0x6F4554CCAAB0A066			; e^+525
				dq	0x6F5CFDFEF9A92A43			; e^+526
				dq	0x6F73B3C4EB1A94F3			; e^+527
				dq	0x6F8AC7316EE74ED5			; e^+528
				dq	0x6FA2329632777761			; e^+529
				dq	0x6FB8BBAD0103B9D8			; e^+530
				dq	0x6FD0CED1DF6D80DD			; e^+531
				dq	0x6FE6D82371F82D97			; e^+532
				dq	0x6FFF0C71BA5F2499			; e^+533
				dq	0x7015198723F42CBE			; e^+534
				dq	0x702CAD7003CABD3E			; e^+535
				dq	0x70437D0629EA48C6			; e^+536
				dq	0x705A7CC96822A2C7			; e^+537
				dq	0x70720005B89A1B4E			; e^+538
				dq	0x708876F3A3109AEE			; e^+539
				dq	0x70A0A01DF0B89337			; e^+540
				dq	0x70B698A9A5F2BA1D			; e^+541
				dq	0x70CEB62BF6D099A4			; e^+542
				dq	0x70E4DEE64ECAA3C2			; e^+543
				dq	0x70FC5DC0E57174A2			; e^+544
				dq	0x711346DF86817F67			; e^+545
				dq	0x712A333020BB8CF2			; e^+546
				dq	0x7141CE01BE9C7EC8			; e^+547
				dq	0x715832F93A863BA1			; e^+548
				dq	0x717071EBC718172C			; e^+549
				dq	0x718659E03A0E42FE			; e^+550
				dq	0x719E60D5EB5D1CE2			; e^+551
				dq	0x71B4A4E86194B8FD			; e^+552
				dq	0x71CC0EEF30A430E4			; e^+553
				dq	0x71E3114F5A338843			; e^+554
				dq	0x71F9EA635A38A191			; e^+555
				dq	0x72119C88BE195116			; e^+556
				dq	0x7227EFBBB4CA4749			; e^+557
				dq	0x72404439F9F70D32			; e^+558
				dq	0x72561BC54435D88C			; e^+559
				dq	0x726E0C6CFDED96E2			; e^+560
				dq	0x72846B8B97AAAFC3			; e^+561
				dq	0x729BC0F87E2A0DC0			; e^+562
				dq	0x72B2DC5402EA2744			; e^+563
				dq	0x72C9A260DC5CB4DD			; e^+564
				dq	0x72E16B9934E80525			; e^+565
				dq	0x72F7AD390504C236			; e^+566
				dq	0x7310170724AA620B			; e^+567
				dq	0x7325DE56DFA64C4A			; e^+568
				dq	0x733DB8EE9BA5C134			; e^+569
				dq	0x735432CE314E8E01			; e^+570
				dq	0x736B73DA6D77A018			; e^+571
				dq	0x7382A7EBE318D57A			; e^+572
				dq	0x73995B26751587AC			; e^+573
				dq	0x73B13B31A5110B69			; e^+574
				dq	0x73C76B6F24100909			; e^+575
				dq	0x73DFD4A3CCCC1D98			; e^+576
				dq	0x73F5A1932CDF6917			; e^+577
				dq	0x740D665838D00FAB			; e^+578
				dq	0x7423FAAE739E7564			; e^+579
				dq	0x743B2792A49C67FC			; e^+580
				dq	0x7452741561B0251F			; e^+581
				dq	0x746914B1F86AA42E			; e^+582
				dq	0x74810B5094C22C64			; e^+583
				dq	0x74972A5C1068FC7E			; e^+584
				dq	0x74AF7C31C464AE3D			; e^+585
				dq	0x74C5657851955475			; e^+586
				dq	0x74DD14A750C9D177			; e^+587
				dq	0x74F3C32AA887226F			; e^+588
				dq	0x750ADC1ED0307635			; e^+589
				dq	0x752240CEEA1148AE			; e^+590
				dq	0x7538CF01406C6A50			; e^+591
				dq	0x7550DBF48E430396			; e^+592
				dq	0x7566E9FDCE1F593A			; e^+593
				dq	0x757F24B57DC24AC4			; e^+594
				dq	0x75952A0478A2186A			; e^+595
				dq	0x75ACC3D965EF8971			; e^+596
				dq	0x75C38C411EB69117			; e^+597
				dq	0x75DA917CA34244DC			; e^+598
				dq	0x75F20E16EC01BCA6			; e^+599
				dq	0x76088A122D234B39			; e^+600
				dq	0x7620AD1C1FE99A69			; e^+601
				dq	0x7636AA5266C63B13			; e^+602
				dq	0x764ECE2C4E0708BD			; e^+603
				dq	0x7664EF35D1F7558F			; e^+604
				dq	0x767C73EC01897D05			; e^+605
				dq	0x769355F0298EC67C			; e^+606
				dq	0x76AA47A9D744C255			; e^+607
				dq	0x76C1DBEBDB9F1388			; e^+608
				dq	0x76D845E2A47F335B			; e^+609
				dq	0x76F07EC5DC0F22CC			; e^+610
				dq	0x77066B57E964CB61			; e^+611
				dq	0x771E789391BE6C6F			; e^+612
				dq	0x7734B50A92901CE5			; e^+613
				dq	0x774C24DCB3B87927			; e^+614
				dq	0x776320362118BF56			; e^+615
				dq	0x7779FEA42BFD8E3D			; e^+616
				dq	0x7791AA4C3152E3C8			; e^+617
				dq	0x77A8027092472297			; e^+618
				dq	0x77C050F05904D117			; e^+619
				dq	0x77D62D0C6A6719E7			; e^+620
				dq	0x77EE23E8ACC8D097			; e^+621
				dq	0x78047B80F462F0F4			; e^+622
				dq	0x781BD6A91362CCAD			; e^+623
				dq	0x7832EB1161F782B7			; e^+624
				dq	0x7849B669677367A7			; e^+625
				dq	0x7861793669C6D744			; e^+626
				dq	0x7877BFB9E808F200			; e^+627
				dq	0x7890239A3108D4F3			; e^+628
				dq	0x78A5EF6E038F1FC9			; e^+629
				dq	0x78BDD0290A47075C			; e^+630
				dq	0x78D442973653EDCD			; e^+631
				dq	0x78EB894EBE21778C			; e^+632
				dq	0x7902B6804D5B58B3			; e^+633
				dq	0x79196EF755DCCC33			; e^+634
				dq	0x793148A905D8DBEA			; e^+635
				dq	0x79477DBC9D0946AF			; e^+636
				dq	0x795FED840476E1BE			; e^+637
				dq	0x7975B27AD3E5EC3A			; e^+638
				dq	0x798D7D521C8633E3			; e^+639
				dq	0x79A40A4B9C27178A			; e^+640
				dq	0x79BB3CCB582D8E5D			; e^+641
				dq	0x79D2828148F52492			; e^+642
				dq	0x79E9284BC98EC768			; e^+643
				dq	0x7A0118A28A8F752B			; e^+644
				dq	0x7A173C76AE33B12E			; e^+645
				dq	0x7A2F94CCDD28600F			; e^+646
				dq	0x7A457630FFACFA49			; e^+647
				dq	0x7A5D2B615CEBDBE2			; e^+648
				dq	0x7A73D29C6E72CED5			; e^+649
				dq	0x7A8AF11C8C4DD193			; e^+650
				dq	0x7AA24F12BEE9E227			; e^+651
				dq	0x7AB8E2649AEBF1DA			; e^+652
				dq	0x7AD0E921810E2DE5			; e^+653
				dq	0x7AE6FBE61E0AF908			; e^+654
				dq	0x7AFF3D0C37AE7434			; e^+655
				dq	0x7B153A8EB04FAF7C			; e^+656
				dq	0x7B2CDA544BE2308C			; e^+657
				dq	0x7B439B87FA926B13			; e^+658
				dq	0x7B5AA6400BC477DC			; e^+659
				dq	0x7B721C331DC645E8			; e^+660
				dq	0x7B889D3FA8539F82			; e^+661
				dq	0x7BA0BA24768A2A6F			; e^+662
				dq	0x7BB6BC08F49993F9			; e^+663
				dq	0x7BCEE63F67158979			; e^+664
				dq	0x7BE4FF92145502B2			; e^+665
				dq	0x7BFC8A2870C48E4E			; e^+666
				dq	0x7C13650C9298F9CA			; e^+667
				dq	0x7C2A5C338E3D2B1E			; e^+668
				dq	0x7C41E9E0D8727F6B			; e^+669
				dq	0x7C5858DAD6113CE5			; e^+670
				dq	0x7C708BA9FC3EDA5B			; e^+671
				dq	0x7C867CDD3F624846			; e^+672
				dq	0x7C9E9063C5D944BE			; e^+673
				dq	0x7CB4C5395F514AE2			; e^+674
				dq	0x7CCC3ADB59CC32B6			; e^+675
				dq	0x7CE32F288D4422DA			; e^+676
				dq	0x7CFA12F4D1BB3776			; e^+677
				dq	0x7D11B81A66261DE4			; e^+678
				dq	0x7D2815340E4BDA5E			; e^+679
				dq	0x7D405DB0A762C9AC			; e^+680
				dq	0x7D563E611150F9CC			; e^+681
				dq	0x7D6E3B76B5CFDC19			; e^+682
				dq	0x7D848B82C9D83550			; e^+683
				dq	0x7D9BEC6A9BFD27F8			; e^+684
				dq	0x7DB2F9DA45EF311F			; e^+685
				dq	0x7DC9CA819A87EBC5			; e^+686
				dq	0x7DE186DE425C1646			; e^+687
				dq	0x7DF7D24940F5E537			; e^+688
				dq	0x7E103037111C911B			; e^+689
				dq	0x7E26009282ABA144			; e^+690
				dq	0x7E3DE775A015A7E4			; e^+691
				dq	0x7E54526C916EE2BF			; e^+692
				dq	0x7E6B9ED3D3136570			; e^+693
				dq	0x7E82C5201C863F21			; e^+694
				dq	0x7E9982D7B3212B2C			; e^+695
				dq	0x7EB1562AECC6EAB2			; e^+696
				dq	0x7EC7901863BD0DEC			; e^+697
				dq	0x7EE0033BD677E517			; e^+698
				dq	0x7EF5C36FB1036D55			; e^+699
				dq	0x7F0D945DF4F8EC8E			; e^+700
				dq	0x7F2419F4F87E2B37			; e^+701
				dq	0x7F3B5214A170249D			; e^+702
				dq	0x7F5290F875798760			; e^+703
				dq	0x7F693BF4EC282EFB			; e^+704
				dq	0x7F8125FEE944F2C3			; e^+705
				dq	0x7F974E9F71FA5B35			; e^+706
				dq	0x7FAFAD7B30B5865E			; e^+707
				dq	0x7FC586F6BF260CF1			; e^+708
				dq	0x7FDD422D2BE5DC9B			; e^+709
				dq	0x7FF0000000000000			; e^+710

; Coefficients to compute cos(x) for flt32_t type
align 16
cos_flt32		dd	0xBAB60B61					; -1 / 6!
				dd	0xB493F27E					; -1 / 10!
				dd	0x3D2AAAAB					; +1 / 4!
				dd	0x37D00D01					; +1 / 8!

; Coefficients to compute sin(x) for flt32_t type
align 16
sin_flt32		dd	0x3C088889					; +1 / 5!
				dd	0x3638EF1D					; +1 / 9!
				dd	0xBE2AAAAB					; -1 / 3!
				dd	0xB9500D01					; -1 / 7!

; Coefficients to compute exp2(x) for flt32_t type
align 16
exp2_flt32		dd	0x3CA3FEA0					; ln(2)^2 / 4!
				dd	0x39A816C8					; ln(2)^4 / 6!
				dd	0x3805279E					; ln(2)^5 / 7!
				dd	0x3F000000					; ln(2)^0 / 2!
				dd	0x3DEC9820					; ln(2)^1 / 3!
				dd	0x3B35E039					; ln(2)^3 / 5!

; Coefficients to compute exp10(x) for flt32_t type
align 16
exp10_flt32		dd	0x3D6236DE					; (ln(10) / 2)^2 / 4!
				dd	0x3B1FEA56					; (ln(10) / 2)^4 / 6!
				dd	0x38723E89					; (ln(10) / 2)^6 / 8!
				dd	0x3F000000					; (ln(10) / 2)^0 / 2!
				dd	0x3E447CBD					; (ln(10) / 2)^1 / 3!
				dd	0x3C5059E1					; (ln(10) / 2)^3 / 5!
				dd	0x39D26924					; (ln(10) / 2)^5 / 7!

; Coefficients to compute exp(x) for flt32_t type
align 16
exp_flt32		dd	0x3D2AAAAB					; 1 / 4!
				dd	0x3AB60B61					; 1 / 6!
				dd	0x37D00D01					; 1 / 8!
				dd	0x3F000000					; 1 / 2!
				dd	0x3E2AAAAB					; 1 / 3!
				dd	0x3C088889					; 1 / 5!
				dd	0x39500D01					; 1 / 7!

; Table of integer powers of 10^x for flt32_t type
align 16
ten_table_flt32	dd	0x00000000					; 10^-46
				dd	0x00000001					; 10^-45
				dd	0x00000007					; 10^-44
				dd	0x00000047					; 10^-43
				dd	0x000002CA					; 10^-42
				dd	0x00001BE0					; 10^-41
				dd	0x000116C2					; 10^-40
				dd	0x000AE398					; 10^-39
				dd	0x006CE3EE					; 10^-38
				dd	0x02081CEA					; 10^-37
				dd	0x03AA2425					; 10^-36
				dd	0x0554AD2E					; 10^-35
				dd	0x0704EC3D					; 10^-34
				dd	0x08A6274C					; 10^-33
				dd	0x0A4FB11F					; 10^-32
				dd	0x0C01CEB3					; 10^-31
				dd	0x0DA24260					; 10^-30
				dd	0x0F4AD2F8					; 10^-29
				dd	0x10FD87B6					; 10^-28
				dd	0x129E74D2					; 10^-27
				dd	0x14461206					; 10^-26
				dd	0x15F79688					; 10^-25
				dd	0x179ABE15					; 10^-24
				dd	0x19416D9A					; 10^-23
				dd	0x1AF1C901					; 10^-22
				dd	0x1C971DA0					; 10^-21
				dd	0x1E3CE508					; 10^-20
				dd	0x1FEC1E4A					; 10^-19
				dd	0x219392EF					; 10^-18
				dd	0x233877AA					; 10^-17
				dd	0x24E69595					; 10^-16
				dd	0x26901D7D					; 10^-15
				dd	0x283424DC					; 10^-14
				dd	0x29E12E13					; 10^-13
				dd	0x2B8CBCCC					; 10^-12
				dd	0x2D2FEBFF					; 10^-11
				dd	0x2EDBE6FF					; 10^-10
				dd	0x3089705F					; 10^-9
				dd	0x322BCC77					; 10^-8
				dd	0x33D6BF95					; 10^-7
				dd	0x358637BD					; 10^-6
				dd	0x3727C5AC					; 10^-5
				dd	0x38D1B717					; 10^-4
				dd	0x3A83126F					; 10^-3
				dd	0x3C23D70A					; 10^-2
				dd	0x3DCCCCCD					; 10^-1
				dd	0x3F800000					; 10^0
				dd	0x41200000					; 10^+1
				dd	0x42C80000					; 10^+2
				dd	0x447A0000					; 10^+3
				dd	0x461C4000					; 10^+4
				dd	0x47C35000					; 10^+5
				dd	0x49742400					; 10^+6
				dd	0x4B189680					; 10^+7
				dd	0x4CBEBC20					; 10^+8
				dd	0x4E6E6B28					; 10^+9
				dd	0x501502F9					; 10^+10
				dd	0x51BA43B7					; 10^+11
				dd	0x5368D4A5					; 10^+12
				dd	0x551184E7					; 10^+13
				dd	0x56B5E621					; 10^+14
				dd	0x58635FA9					; 10^+15
				dd	0x5A0E1BCA					; 10^+16
				dd	0x5BB1A2BC					; 10^+17
				dd	0x5D5E0B6B					; 10^+18
				dd	0x5F0AC723					; 10^+19
				dd	0x60AD78EC					; 10^+20
				dd	0x6258D727					; 10^+21
				dd	0x64078678					; 10^+22
				dd	0x65A96816					; 10^+23
				dd	0x6753C21C					; 10^+24
				dd	0x69045951					; 10^+25
				dd	0x6AA56FA6					; 10^+26
				dd	0x6C4ECB8F					; 10^+27
				dd	0x6E013F39					; 10^+28
				dd	0x6FA18F08					; 10^+29
				dd	0x7149F2CA					; 10^+30
				dd	0x72FC6F7C					; 10^+31
				dd	0x749DC5AE					; 10^+32
				dd	0x76453719					; 10^+33
				dd	0x77F684DF					; 10^+34
				dd	0x799A130C					; 10^+35
				dd	0x7B4097CE					; 10^+36
				dd	0x7CF0BDC2					; 10^+37
				dd	0x7E967699					; 10^+38
				dd	0x7F800000					; 10^+39

; Table of integer powers of e^x for flt32_t type
align 16
exp_table_flt32	dd	0x00000000					; e^-104
				dd	0x00000001					; e^-103
				dd	0x00000004					; e^-102
				dd	0x0000000A					; e^-101
				dd	0x0000001B					; e^-100
				dd	0x00000048					; e^-99
				dd	0x000000C4					; e^-98
				dd	0x00000215					; e^-97
				dd	0x000005A9					; e^-96
				dd	0x00000F64					; e^-95
				dd	0x000029D6					; e^-94
				dd	0x000071B9					; e^-93
				dd	0x00013521					; e^-92
				dd	0x0003484B					; e^-91
				dd	0x0008EC28					; e^-90
				dd	0x001840FC					; e^-89
				dd	0x0041EDC4					; e^-88
				dd	0x00B33687					; e^-87
				dd	0x01739362					; e^-86
				dd	0x022586E0					; e^-85
				dd	0x02E0F96D					; e^-84
				dd	0x0398E2CB					; e^-83
				dd	0x044FCB22					; e^-82
				dd	0x050D35D7					; e^-81
				dd	0x05BFECBA					; e^-80
				dd	0x06826D27					; e^-79
				dd	0x07314490					; e^-78
				dd	0x07F0EE94					; e^-77
				dd	0x08A3BAF0					; e^-76
				dd	0x095E884F					; e^-75
				dd	0x0A1739FB					; e^-74
				dd	0x0ACD89C1					; e^-73
				dd	0x0B8BAD78					; e^-72
				dd	0x0C3DD771					; e^-71
				dd	0x0D0102BF					; e^-70
				dd	0x0DAF5800					; e^-69
				dd	0x0E6E511E					; e^-68
				dd	0x0F21F3FE					; e^-67
				dd	0x0FDC1DF9					; e^-66
				dd	0x109595C7					; e^-65
				dd	0x114B4EA4					; e^-64
				dd	0x120A295C					; e^-63
				dd	0x12BBC7F1					; e^-62
				dd	0x137F388B					; e^-61
				dd	0x142D70C9					; e^-60
				dd	0x14EBBAEC					; e^-59
				dd	0x15A031FC					; e^-58
				dd	0x1659BA5A					; e^-57
				dd	0x1713F623					; e^-56
				dd	0x17C919B9					; e^-55
				dd	0x1888A975					; e^-54
				dd	0x1939BE2B					; e^-53
				dd	0x19FC7361					; e^-52
				dd	0x1AAB8EDC					; e^-51
				dd	0x1B692BEB					; e^-50
				dd	0x1C1E74DD					; e^-49
				dd	0x1CD75D5D					; e^-48
				dd	0x1D925B02					; e^-47
				dd	0x1E46EAF1					; e^-46
				dd	0x1F072DBA					; e^-45
				dd	0x1FB7BA0F					; e^-44
				dd	0x2079B5EA					; e^-43
				dd	0x2129B229					; e^-42
				dd	0x21E6A405					; e^-41
				dd	0x229CBC92					; e^-40
				dd	0x235506F2					; e^-39
				dd	0x2410C457					; e^-38
				dd	0x24C4C239					; e^-37
				dd	0x2585B61D					; e^-36
				dd	0x2635BB8D					; e^-35
				dd	0x26F7000F					; e^-34
				dd	0x27A7DAA4					; e^-33
				dd	0x28642328					; e^-32
				dd	0x291B090F					; e^-31
				dd	0x29D2B706					; e^-30
				dd	0x2A8F3216					; e^-29
				dd	0x2B429F81					; e^-28
				dd	0x2C044295					; e^-27
				dd	0x2CB3C295					; e^-26
				dd	0x2D7451BD					; e^-25
				dd	0x2E26083C					; e^-24
				dd	0x2EE1A93F					; e^-23
				dd	0x2F995A46					; e^-22
				dd	0x30506D87					; e^-21
				dd	0x310DA433					; e^-20
				dd	0x31C082B8					; e^-19
				dd	0x3282D314					; e^-18
				dd	0x3331CF19					; e^-17
				dd	0x33F1AADE					; e^-16
				dd	0x34A43AE5					; e^-15
				dd	0x355F3638					; e^-14
				dd	0x3617B02A					; e^-13
				dd	0x36CE2A62					; e^-12
				dd	0x378C1AA1					; e^-11
				dd	0x383E6BCE					; e^-10
				dd	0x39016791					; e^-9
				dd	0x39AFE108					; e^-8
				dd	0x3A6F0B5D					; e^-7
				dd	0x3B227290					; e^-6
				dd	0x3BDCC9FF					; e^-5
				dd	0x3C960AAE					; e^-4
				dd	0x3D4BED86					; e^-3
				dd	0x3E0A9555					; e^-2
				dd	0x3EBC5AB2					; e^-1
				dd	0x3F800000					; e^0
				dd	0x402DF854					; e^+1
				dd	0x40EC7326					; e^+2
				dd	0x41A0AF2E					; e^+3
				dd	0x425A6481					; e^+4
				dd	0x431469C5					; e^+5
				dd	0x43C9B6E3					; e^+6
				dd	0x44891443					; e^+7
				dd	0x453A4F54					; e^+8
				dd	0x45FD38AC					; e^+9
				dd	0x46AC14EE					; e^+10
				dd	0x4769E224					; e^+11
				dd	0x481EF0B3					; e^+12
				dd	0x48D805AD					; e^+13
				dd	0x4992CD62					; e^+14
				dd	0x4A478665					; e^+15
				dd	0x4B07975F					; e^+16
				dd	0x4BB849A4					; e^+17
				dd	0x4C7A7910					; e^+18
				dd	0x4D2A36C8					; e^+19
				dd	0x4DE75844					; e^+20
				dd	0x4E9D3710					; e^+21
				dd	0x4F55AD6E					; e^+22
				dd	0x5011357A					; e^+23
				dd	0x50C55BFE					; e^+24
				dd	0x51861E9D					; e^+25
				dd	0x52364993					; e^+26
				dd	0x52F7C118					; e^+27
				dd	0x53A85DD2					; e^+28
				dd	0x5464D572					; e^+29
				dd	0x551B8238					; e^+30
				dd	0x55D35BB3					; e^+31
				dd	0x568FA1FE					; e^+32
				dd	0x5743379A					; e^+33
				dd	0x5804A9F1					; e^+34
				dd	0x58B44F11					; e^+35
				dd	0x597510AD					; e^+36
				dd	0x5A2689FE					; e^+37
				dd	0x5AE2599A					; e^+38
				dd	0x5B99D21F					; e^+39
				dd	0x5C51106A					; e^+40
				dd	0x5D0E12E4					; e^+41
				dd	0x5DC1192B					; e^+42
				dd	0x5E833952					; e^+43
				dd	0x5F325A0E					; e^+44
				dd	0x5FF267BB					; e^+45
				dd	0x60A4BB3E					; e^+46
				dd	0x615FE4A9					; e^+47
				dd	0x621826B5					; e^+48
				dd	0x62CECB81					; e^+49
				dd	0x638C881F					; e^+50
				dd	0x643F009E					; e^+51
				dd	0x6501CCB3					; e^+52
				dd	0x65B06A7B					; e^+53
				dd	0x666FC62D					; e^+54
				dd	0x6722F184					; e^+55
				dd	0x67DD768B					; e^+56
				dd	0x68967FF0					; e^+57
				dd	0x694C8CE5					; e^+58
				dd	0x6A0B01A3					; e^+59
				dd	0x6ABCEDE5					; e^+60
				dd	0x6B806408					; e^+61
				dd	0x6C2E804A					; e^+62
				dd	0x6CED2BEF					; e^+63
				dd	0x6DA12CC1					; e^+64
				dd	0x6E5B0F2E					; e^+65
				dd	0x6F14DDC1					; e^+66
				dd	0x6FCA5487					; e^+67
				dd	0x70897F64					; e^+68
				dd	0x713AE0EE					; e^+69
				dd	0x71FDFE91					; e^+70
				dd	0x72AC9B6A					; e^+71
				dd	0x736A98EC					; e^+72
				dd	0x741F6CE9					; e^+73
				dd	0x74D8AE7F					; e^+74
				dd	0x7593401C					; e^+75
				dd	0x76482254					; e^+76
				dd	0x77080156					; e^+77
				dd	0x77B8D9AA					; e^+78
				dd	0x787B3CCF					; e^+79
				dd	0x792ABBCE					; e^+80
				dd	0x79E80D11					; e^+81
				dd	0x7A9DB1ED					; e^+82
				dd	0x7B56546B					; e^+83
				dd	0x7C11A6F5					; e^+84
				dd	0x7CC5F63B					; e^+85
				dd	0x7D86876D					; e^+86
				dd	0x7E36D809					; e^+87
				dd	0x7EF882B7					; e^+88
				dd	0x7F800000					; e^+89

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
