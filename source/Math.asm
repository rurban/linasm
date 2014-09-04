;                                                                       Math.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                             FAST MATH FUNCTIONS                             #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2014, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Bitwise operations                                                     ;
;******************************************************************************;

;==============================================================================;
;       Byte swap                                                              ;
;==============================================================================;

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

;==============================================================================;
;       Bit reversal permutation                                               ;
;==============================================================================;

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

;==============================================================================;
;       Bit scan                                                               ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Bit scan forward                                                       ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	ScanFwd8			as	'Math_ScanForward_uint8'
public	ScanFwd16			as	'Math_ScanForward_uint16'
public	ScanFwd32			as	'Math_ScanForward_uint32'
public	ScanFwd64			as	'Math_ScanForward_uint64'
public	ScanFwd8			as	'_ZN4Math11ScanForwardEh'
public	ScanFwd16			as	'_ZN4Math11ScanForwardEt'
public	ScanFwd32			as	'_ZN4Math11ScanForwardEj'
public	ScanFwd64			as	'_ZN4Math11ScanForwardEy'

; Signed integer types
public	ScanFwd8			as	'Math_ScanForward_sint8'
public	ScanFwd16			as	'Math_ScanForward_sint16'
public	ScanFwd32			as	'Math_ScanForward_sint32'
public	ScanFwd64			as	'Math_ScanForward_sint64'
public	ScanFwd8			as	'_ZN4Math11ScanForwardEa'
public	ScanFwd16			as	'_ZN4Math11ScanForwardEs'
public	ScanFwd32			as	'_ZN4Math11ScanForwardEi'
public	ScanFwd64			as	'_ZN4Math11ScanForwardEx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Bit scan backward                                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	ScanBwd8			as	'Math_ScanBackward_uint8'
public	ScanBwd16			as	'Math_ScanBackward_uint16'
public	ScanBwd32			as	'Math_ScanBackward_uint32'
public	ScanBwd64			as	'Math_ScanBackward_uint64'
public	ScanBwd8			as	'_ZN4Math12ScanBackwardEh'
public	ScanBwd16			as	'_ZN4Math12ScanBackwardEt'
public	ScanBwd32			as	'_ZN4Math12ScanBackwardEj'
public	ScanBwd64			as	'_ZN4Math12ScanBackwardEy'

; Signed integer types
public	ScanBwd8			as	'Math_ScanBackward_sint8'
public	ScanBwd16			as	'Math_ScanBackward_sint16'
public	ScanBwd32			as	'Math_ScanBackward_sint32'
public	ScanBwd64			as	'Math_ScanBackward_sint64'
public	ScanBwd8			as	'_ZN4Math12ScanBackwardEa'
public	ScanBwd16			as	'_ZN4Math12ScanBackwardEs'
public	ScanBwd32			as	'_ZN4Math12ScanBackwardEi'
public	ScanBwd64			as	'_ZN4Math12ScanBackwardEx'

;==============================================================================;
;       Circular rotation                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Circular rotation to the left                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	RotateLeft8			as	'Math_RotateLeft_uint8'
public	RotateLeft16		as	'Math_RotateLeft_uint16'
public	RotateLeft32		as	'Math_RotateLeft_uint32'
public	RotateLeft64		as	'Math_RotateLeft_uint64'
public	RotateLeft8			as	'_ZN4Math10RotateLeftEhh'
public	RotateLeft16		as	'_ZN4Math10RotateLeftEth'
public	RotateLeft32		as	'_ZN4Math10RotateLeftEjh'
public	RotateLeft64		as	'_ZN4Math10RotateLeftEyh'

; Signed integer types
public	RotateLeft8			as	'Math_RotateLeft_sint8'
public	RotateLeft16		as	'Math_RotateLeft_sint16'
public	RotateLeft32		as	'Math_RotateLeft_sint32'
public	RotateLeft64		as	'Math_RotateLeft_sint64'
public	RotateLeft8			as	'_ZN4Math10RotateLeftEah'
public	RotateLeft16		as	'_ZN4Math10RotateLeftEsh'
public	RotateLeft32		as	'_ZN4Math10RotateLeftEih'
public	RotateLeft64		as	'_ZN4Math10RotateLeftExh'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Circular rotation to the right                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	RotateRight8		as	'Math_RotateRight_uint8'
public	RotateRight16		as	'Math_RotateRight_uint16'
public	RotateRight32		as	'Math_RotateRight_uint32'
public	RotateRight64		as	'Math_RotateRight_uint64'
public	RotateRight8		as	'_ZN4Math11RotateRightEhh'
public	RotateRight16		as	'_ZN4Math11RotateRightEth'
public	RotateRight32		as	'_ZN4Math11RotateRightEjh'
public	RotateRight64		as	'_ZN4Math11RotateRightEyh'

; Signed integer types
public	RotateRight8		as	'Math_RotateRight_sint8'
public	RotateRight16		as	'Math_RotateRight_sint16'
public	RotateRight32		as	'Math_RotateRight_sint32'
public	RotateRight64		as	'Math_RotateRight_sint64'
public	RotateRight8		as	'_ZN4Math11RotateRightEah'
public	RotateRight16		as	'_ZN4Math11RotateRightEsh'
public	RotateRight32		as	'_ZN4Math11RotateRightEih'
public	RotateRight64		as	'_ZN4Math11RotateRightExh'

;==============================================================================;
;       Population count                                                       ;
;==============================================================================;

; Unsigned integer types
public	PopCount8			as	'Math_PopCount_uint8'
public	PopCount16			as	'Math_PopCount_uint16'
public	PopCount32			as	'Math_PopCount_uint32'
public	PopCount64			as	'Math_PopCount_uint64'
public	PopCount8			as	'_ZN4Math8PopCountEh'
public	PopCount16			as	'_ZN4Math8PopCountEt'
public	PopCount32			as	'_ZN4Math8PopCountEj'
public	PopCount64			as	'_ZN4Math8PopCountEy'

; Signed integer types
public	PopCount8			as	'Math_PopCount_sint8'
public	PopCount16			as	'Math_PopCount_sint16'
public	PopCount32			as	'Math_PopCount_sint32'
public	PopCount64			as	'Math_PopCount_sint64'
public	PopCount8			as	'_ZN4Math8PopCountEa'
public	PopCount16			as	'_ZN4Math8PopCountEs'
public	PopCount32			as	'_ZN4Math8PopCountEi'
public	PopCount64			as	'_ZN4Math8PopCountEx'

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Absolute value                                                         ;
;==============================================================================;

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

;==============================================================================;
;       Negative absolute value                                                ;
;==============================================================================;

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

;==============================================================================;
;       Number sign                                                            ;
;==============================================================================;

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

;==============================================================================;
;       Square root                                                            ;
;==============================================================================;

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

;==============================================================================;
;       Three-state comparison                                                 ;
;==============================================================================;

; Unsigned integer types
public	Compare_uint8		as	'Math_Compare_uint8'
public	Compare_uint16		as	'Math_Compare_uint16'
public	Compare_uint32		as	'Math_Compare_uint32'
public	Compare_uint64		as	'Math_Compare_uint64'
public	Compare_uint8		as	'_ZN4Math7CompareEhh'
public	Compare_uint16		as	'_ZN4Math7CompareEtt'
public	Compare_uint32		as	'_ZN4Math7CompareEjj'
public	Compare_uint64		as	'_ZN4Math7CompareEyy'
public	Compare_uint8		as	'CmpUint8'
public	Compare_uint16		as	'CmpUint16'
public	Compare_uint32		as	'CmpUint32'
public	Compare_uint64		as	'CmpUint64'
public	Compare_uint8		as	'_Z8CmpUint85adt_tS_'
public	Compare_uint16		as	'_Z9CmpUint165adt_tS_'
public	Compare_uint32		as	'_Z9CmpUint325adt_tS_'
public	Compare_uint64		as	'_Z9CmpUint645adt_tS_'

; Signed integer types
public	Compare_sint8		as	'Math_Compare_sint8'
public	Compare_sint16		as	'Math_Compare_sint16'
public	Compare_sint32		as	'Math_Compare_sint32'
public	Compare_sint64		as	'Math_Compare_sint64'
public	Compare_sint8		as	'_ZN4Math7CompareEaa'
public	Compare_sint16		as	'_ZN4Math7CompareEss'
public	Compare_sint32		as	'_ZN4Math7CompareEii'
public	Compare_sint64		as	'_ZN4Math7CompareExx'
public	Compare_sint8		as	'CmpSint8'
public	Compare_sint16		as	'CmpSint16'
public	Compare_sint32		as	'CmpSint32'
public	Compare_sint64		as	'CmpSint64'
public	Compare_sint8		as	'_Z8CmpSint85adt_tS_'
public	Compare_sint16		as	'_Z9CmpSint165adt_tS_'
public	Compare_sint32		as	'_Z9CmpSint325adt_tS_'
public	Compare_sint64		as	'_Z9CmpSint645adt_tS_'

; Floating-point types
public	Compare_flt32		as	'Math_Compare_flt32'
public	Compare_flt64		as	'Math_Compare_flt64'
public	Compare_flt32		as	'_ZN4Math7CompareEff'
public	Compare_flt64		as	'_ZN4Math7CompareEdd'
public	Compare_raw32		as	'CmpFlt32'
public	Compare_raw64		as	'CmpFlt64'
public	Compare_raw32		as	'_Z8CmpFlt325adt_tS_'
public	Compare_raw64		as	'_Z8CmpFlt645adt_tS_'

;==============================================================================;
;       Minimum and maximum absolute value                                     ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum absolute value                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
public	MinAbs_sint8		as	'Math_MinAbs_sint8'
public	MinAbs_sint16		as	'Math_MinAbs_sint16'
public	MinAbs_sint32		as	'Math_MinAbs_sint32'
public	MinAbs_sint64		as	'Math_MinAbs_sint64'
public	MinAbs_sint8		as	'_ZN4Math6MinAbsEaa'
public	MinAbs_sint16		as	'_ZN4Math6MinAbsEss'
public	MinAbs_sint32		as	'_ZN4Math6MinAbsEii'
public	MinAbs_sint64		as	'_ZN4Math6MinAbsExx'

; Floating-point types
public	MinAbs_flt32		as	'Math_MinAbs_flt32'
public	MinAbs_flt64		as	'Math_MinAbs_flt64'
public	MinAbs_flt32		as	'_ZN4Math6MinAbsEff'
public	MinAbs_flt64		as	'_ZN4Math6MinAbsEdd'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum absolute value                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
public	MaxAbs_sint8		as	'Math_MaxAbs_sint8'
public	MaxAbs_sint16		as	'Math_MaxAbs_sint16'
public	MaxAbs_sint32		as	'Math_MaxAbs_sint32'
public	MaxAbs_sint64		as	'Math_MaxAbs_sint64'
public	MaxAbs_sint8		as	'_ZN4Math6MaxAbsEaa'
public	MaxAbs_sint16		as	'_ZN4Math6MaxAbsEss'
public	MaxAbs_sint32		as	'_ZN4Math6MaxAbsEii'
public	MaxAbs_sint64		as	'_ZN4Math6MaxAbsExx'

; Floating-point types
public	MaxAbs_flt32		as	'Math_MaxAbs_flt32'
public	MaxAbs_flt64		as	'Math_MaxAbs_flt64'
public	MaxAbs_flt32		as	'_ZN4Math6MaxAbsEff'
public	MaxAbs_flt64		as	'_ZN4Math6MaxAbsEdd'

;==============================================================================;
;       Minimum and maximum value                                              ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

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

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

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

;==============================================================================;
;       Greatest common divisor                                                ;
;==============================================================================;

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

;==============================================================================;
;       Least common multiple                                                  ;
;==============================================================================;

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

;==============================================================================;
;       Cancellation                                                           ;
;==============================================================================;

; Unsigned integer types
public	Cancel_uint8		as	'Math_Cancel_uint8'
public	Cancel_uint16		as	'Math_Cancel_uint16'
public	Cancel_uint32		as	'Math_Cancel_uint32'
public	Cancel_uint64		as	'Math_Cancel_uint64'
public	Cancel_uint8		as	'_ZN4Math6CancelEPhS0_'
public	Cancel_uint16		as	'_ZN4Math6CancelEPtS0_'
public	Cancel_uint32		as	'_ZN4Math6CancelEPjS0_'
public	Cancel_uint64		as	'_ZN4Math6CancelEPyS0_'

; Signed integer types
public	Cancel_sint8		as	'Math_Cancel_sint8'
public	Cancel_sint16		as	'Math_Cancel_sint16'
public	Cancel_sint32		as	'Math_Cancel_sint32'
public	Cancel_sint64		as	'Math_Cancel_sint64'
public	Cancel_sint8		as	'_ZN4Math6CancelEPaS0_'
public	Cancel_sint16		as	'_ZN4Math6CancelEPsS0_'
public	Cancel_sint32		as	'_ZN4Math6CancelEPiS0_'
public	Cancel_sint64		as	'_ZN4Math6CancelEPxS0_'

;******************************************************************************;
;       Observational error                                                    ;
;******************************************************************************;

;==============================================================================;
;       Absolute error                                                         ;
;==============================================================================;
public	AbsError_flt32		as	'Math_AbsError_flt32'
public	AbsError_flt64		as	'Math_AbsError_flt64'
public	AbsError_flt32		as	'_ZN4Math8AbsErrorEff'
public	AbsError_flt64		as	'_ZN4Math8AbsErrorEdd'

;==============================================================================;
;       Relative error                                                         ;
;==============================================================================;
public	RelError_flt32		as	'Math_RelError_flt32'
public	RelError_flt64		as	'Math_RelError_flt64'
public	RelError_flt32		as	'_ZN4Math8RelErrorEff'
public	RelError_flt64		as	'_ZN4Math8RelErrorEdd'

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

;******************************************************************************;
;       Exponentiation functions                                               ;
;******************************************************************************;

;==============================================================================;
;       Exponentiation by base 2                                               ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer exponentiation by base 2                                       ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Exp2i_int			as	'Math_Exp2i_uint64'
public	Exp2i_flt32			as	'Math_Exp2i_flt32'
public	Exp2i_flt64			as	'Math_Exp2i_flt64'
public	Exp2i_int			as	'_ZN4Math5Exp2iEh'
public	Exp2i_flt32			as	'_ZN4Math5Exp2iEa'
public	Exp2i_flt64			as	'_ZN4Math5Exp2iEs'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real exponentiation by base 2                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Exp2_flt32			as	'Math_Exp2_flt32'
public	Exp2_flt64			as	'Math_Exp2_flt64'
public	Exp2m1_flt32		as	'Math_Exp2m1_flt32'
public	Exp2m1_flt64		as	'Math_Exp2m1_flt64'
public	Exp2_flt32			as	'_ZN4Math4Exp2Ef'
public	Exp2_flt64			as	'_ZN4Math4Exp2Ed'
public	Exp2m1_flt32		as	'_ZN4Math6Exp2m1Ef'
public	Exp2m1_flt64		as	'_ZN4Math6Exp2m1Ed'

;==============================================================================;
;       Exponentiation by base 10                                              ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer exponentiation by base 10                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Exp10i_int			as	'Math_Exp10i_uint64'
public	Exp10i_flt32		as	'Math_Exp10i_flt32'
public	Exp10i_flt64		as	'Math_Exp10i_flt64'
public	Exp10i_int			as	'_ZN4Math6Exp10iEh'
public	Exp10i_flt32		as	'_ZN4Math6Exp10iEa'
public	Exp10i_flt64		as	'_ZN4Math6Exp10iEs'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real exponentiation by base 10                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Exp10_flt32			as	'Math_Exp10_flt32'
public	Exp10_flt64			as	'Math_Exp10_flt64'
public	Exp10m1_flt32		as	'Math_Exp10m1_flt32'
public	Exp10m1_flt64		as	'Math_Exp10m1_flt64'
public	Exp10_flt32			as	'_ZN4Math5Exp10Ef'
public	Exp10_flt64			as	'_ZN4Math5Exp10Ed'
public	Exp10m1_flt32		as	'_ZN4Math7Exp10m1Ef'
public	Exp10m1_flt64		as	'_ZN4Math7Exp10m1Ed'

;==============================================================================;
;       Exponentiation by base E (natural logarithm)                           ;
;==============================================================================;
public	ExpE_flt32			as	'Math_Exp_flt32'
public	ExpE_flt64			as	'Math_Exp_flt64'
public	ExpEm1_flt32		as	'Math_Expm1_flt32'
public	ExpEm1_flt64		as	'Math_Expm1_flt64'
public	ExpE_flt32			as	'_ZN4Math3ExpEf'
public	ExpE_flt64			as	'_ZN4Math3ExpEd'
public	ExpEm1_flt32		as	'_ZN4Math5Expm1Ef'
public	ExpEm1_flt64		as	'_ZN4Math5Expm1Ed'

;==============================================================================;
;       Exponentiation by custom base                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer exponentiation by custom base                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	ExpBi_uint8			as	'Math_ExpBi_uint8'
public	ExpBi_uint16		as	'Math_ExpBi_uint16'
public	ExpBi_uint32		as	'Math_ExpBi_uint32'
public	ExpBi_uint64		as	'Math_ExpBi_uint64'
public	ExpBi_uint8			as	'_ZN4Math5ExpBiEhh'
public	ExpBi_uint16		as	'_ZN4Math5ExpBiEth'
public	ExpBi_uint32		as	'_ZN4Math5ExpBiEjh'
public	ExpBi_uint64		as	'_ZN4Math5ExpBiEyh'

; Signed integer types
public	ExpBi_sint8			as	'Math_ExpBi_sint8'
public	ExpBi_sint16		as	'Math_ExpBi_sint16'
public	ExpBi_sint32		as	'Math_ExpBi_sint32'
public	ExpBi_sint64		as	'Math_ExpBi_sint64'
public	ExpBi_sint8			as	'_ZN4Math5ExpBiEah'
public	ExpBi_sint16		as	'_ZN4Math5ExpBiEsh'
public	ExpBi_sint32		as	'_ZN4Math5ExpBiEih'
public	ExpBi_sint64		as	'_ZN4Math5ExpBiExh'

; Floating-point types
public	ExpBi_flt32			as	'Math_ExpBi_flt32'
public	ExpBi_flt64			as	'Math_ExpBi_flt64'
public	ExpBi_flt32			as	'_ZN4Math5ExpBiEfa'
public	ExpBi_flt64			as	'_ZN4Math5ExpBiEds'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real exponentiation by custom base                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	ExpB_flt32			as	'Math_ExpB_flt32'
public	ExpB_flt64			as	'Math_ExpB_flt64'
public	ExpBm1_flt32		as	'Math_ExpBm1_flt32'
public	ExpBm1_flt64		as	'Math_ExpBm1_flt64'
public	ExpB_flt32			as	'_ZN4Math4ExpBEff'
public	ExpB_flt64			as	'_ZN4Math4ExpBEdd'
public	ExpBm1_flt32		as	'_ZN4Math6ExpBm1Eff'
public	ExpBm1_flt64		as	'_ZN4Math6ExpBm1Edd'

;******************************************************************************;
;       Logarithmic functions                                                  ;
;******************************************************************************;

;==============================================================================;
;       Logarithm to base 2                                                    ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer logarithm to base 2                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Log2i_uint8			as	'Math_Log2i_uint8'
public	Log2i_uint16		as	'Math_Log2i_uint16'
public	Log2i_uint32		as	'Math_Log2i_uint32'
public	Log2i_uint64		as	'Math_Log2i_uint64'
public	Log2i_uint8			as	'_ZN4Math5Log2iEh'
public	Log2i_uint16		as	'_ZN4Math5Log2iEt'
public	Log2i_uint32		as	'_ZN4Math5Log2iEj'
public	Log2i_uint64		as	'_ZN4Math5Log2iEy'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real logarithm to base 2                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Log2_flt32			as	'Math_Log2_flt32'
public	Log2_flt64			as	'Math_Log2_flt64'
public	Log2p1_flt32		as	'Math_Log2p1_flt32'
public	Log2p1_flt64		as	'Math_Log2p1_flt64'
public	Log2_flt32			as	'_ZN4Math4Log2Ef'
public	Log2_flt64			as	'_ZN4Math4Log2Ed'
public	Log2p1_flt32		as	'_ZN4Math6Log2p1Ef'
public	Log2p1_flt64		as	'_ZN4Math6Log2p1Ed'

;==============================================================================;
;       Logarithm to base 10                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer logarithm to base 10                                           ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Log10i_uint8		as	'Math_Log10i_uint8'
public	Log10i_uint16		as	'Math_Log10i_uint16'
public	Log10i_uint32		as	'Math_Log10i_uint32'
public	Log10i_uint64		as	'Math_Log10i_uint64'
public	Log10i_uint8		as	'_ZN4Math6Log10iEh'
public	Log10i_uint16		as	'_ZN4Math6Log10iEt'
public	Log10i_uint32		as	'_ZN4Math6Log10iEj'
public	Log10i_uint64		as	'_ZN4Math6Log10iEy'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real logarithm to base 10                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Log10_flt32			as	'Math_Log10_flt32'
public	Log10_flt64			as	'Math_Log10_flt64'
public	Log10p1_flt32		as	'Math_Log10p1_flt32'
public	Log10p1_flt64		as	'Math_Log10p1_flt64'
public	Log10_flt32			as	'_ZN4Math5Log10Ef'
public	Log10_flt64			as	'_ZN4Math5Log10Ed'
public	Log10p1_flt32		as	'_ZN4Math7Log10p1Ef'
public	Log10p1_flt64		as	'_ZN4Math7Log10p1Ed'

;==============================================================================;
;       Logarithm to base E (natural logarithm)                                ;
;==============================================================================;
public	LogE_flt32			as	'Math_Log_flt32'
public	LogE_flt64			as	'Math_Log_flt64'
public	LogEp1_flt32		as	'Math_Logp1_flt32'
public	LogEp1_flt64		as	'Math_Logp1_flt64'
public	LogE_flt32			as	'_ZN4Math3LogEf'
public	LogE_flt64			as	'_ZN4Math3LogEd'
public	LogEp1_flt32		as	'_ZN4Math5Logp1Ef'
public	LogEp1_flt64		as	'_ZN4Math5Logp1Ed'

;==============================================================================;
;       Logarithm to custom base                                               ;
;==============================================================================;
public	LogB_flt32			as	'Math_LogB_flt32'
public	LogB_flt64			as	'Math_LogB_flt64'
public	LogBp1_flt32		as	'Math_LogBp1_flt32'
public	LogBp1_flt64		as	'Math_LogBp1_flt64'
public	LogB_flt32			as	'_ZN4Math4LogBEff'
public	LogB_flt64			as	'_ZN4Math4LogBEdd'
public	LogBp1_flt32		as	'_ZN4Math6LogBp1Eff'
public	LogBp1_flt64		as	'_ZN4Math6LogBp1Edd'

;******************************************************************************;
;       Trigonometric functions                                                ;
;******************************************************************************;

;==============================================================================;
;       Hypotenuse                                                             ;
;==============================================================================;
public	Hypot_flt32			as	'Math_Hypot_flt32'
public	Hypot_flt64			as	'Math_Hypot_flt64'
public	Hypot_flt32			as	'_ZN4Math5HypotEff'
public	Hypot_flt64			as	'_ZN4Math5HypotEdd'

;==============================================================================;
;       Cathetus                                                               ;
;==============================================================================;
public	Cath_flt32			as	'Math_Cath_flt32'
public	Cath_flt64			as	'Math_Cath_flt64'
public	Cath_flt32			as	'_ZN4Math4CathEff'
public	Cath_flt64			as	'_ZN4Math4CathEdd'

;==============================================================================;
;       Sine                                                                   ;
;==============================================================================;
public	Sin_flt32			as	'Math_Sin_flt32'
public	Sin_flt64			as	'Math_Sin_flt64'
public	Sin_flt32			as	'_ZN4Math3SinEf'
public	Sin_flt64			as	'_ZN4Math3SinEd'

;==============================================================================;
;       Cosine                                                                 ;
;==============================================================================;
public	Cos_flt32			as	'Math_Cos_flt32'
public	Cos_flt64			as	'Math_Cos_flt64'
public	Cos_flt32			as	'_ZN4Math3CosEf'
public	Cos_flt64			as	'_ZN4Math3CosEd'

;==============================================================================;
;       Sine and cosine                                                        ;
;==============================================================================;
public	SinCos_flt32		as	'Math_SinCos_flt32'
public	SinCos_flt64		as	'Math_SinCos_flt64'
public	SinCos_flt32		as	'_ZN4Math6SinCosEPfS0_f'
public	SinCos_flt64		as	'_ZN4Math6SinCosEPdS0_d'

;==============================================================================;
;       Tangent                                                                ;
;==============================================================================;
public	Tan_flt32			as	'Math_Tan_flt32'
public	Tan_flt64			as	'Math_Tan_flt64'
public	Tan_flt32			as	'_ZN4Math3TanEf'
public	Tan_flt64			as	'_ZN4Math3TanEd'

;******************************************************************************;
;       Inverse trigonometric functions                                        ;
;******************************************************************************;

;==============================================================================;
;       Inverse sine                                                           ;
;==============================================================================;
public	ArcSin_flt32		as	'Math_ArcSin_flt32'
public	ArcSin_flt64		as	'Math_ArcSin_flt64'
public	ArcSin_flt32		as	'_ZN4Math6ArcSinEf'
public	ArcSin_flt64		as	'_ZN4Math6ArcSinEd'

;==============================================================================;
;       Inverse cosine                                                         ;
;==============================================================================;
public	ArcCos_flt32		as	'Math_ArcCos_flt32'
public	ArcCos_flt64		as	'Math_ArcCos_flt64'
public	ArcCos_flt32		as	'_ZN4Math6ArcCosEf'
public	ArcCos_flt64		as	'_ZN4Math6ArcCosEd'

;==============================================================================;
;       Inverse tangent                                                        ;
;==============================================================================;
public	ArcTan_flt32		as	'Math_ArcTan_flt32'
public	ArcTan_flt64		as	'Math_ArcTan_flt64'
public	ArcTan2_flt32		as	'Math_ArcTan2_flt32'
public	ArcTan2_flt64		as	'Math_ArcTan2_flt64'
public	ArcTan_flt32		as	'_ZN4Math6ArcTanEf'
public	ArcTan_flt64		as	'_ZN4Math6ArcTanEd'
public	ArcTan2_flt32		as	'_ZN4Math7ArcTan2Eff'
public	ArcTan2_flt64		as	'_ZN4Math7ArcTan2Edd'

;******************************************************************************;
;       Hyperbolic functions                                                   ;
;******************************************************************************;

;==============================================================================;
;       Sine                                                                   ;
;==============================================================================;
public	SinH_flt32			as	'Math_SinH_flt32'
public	SinH_flt64			as	'Math_SinH_flt64'
public	SinH_flt32			as	'_ZN4Math4SinHEf'
public	SinH_flt64			as	'_ZN4Math4SinHEd'

;==============================================================================;
;       Cosine                                                                 ;
;==============================================================================;
public	CosH_flt32			as	'Math_CosH_flt32'
public	CosH_flt64			as	'Math_CosH_flt64'
public	CosHm1_flt32		as	'Math_CosHm1_flt32'
public	CosHm1_flt64		as	'Math_CosHm1_flt64'
public	CosH_flt32			as	'_ZN4Math4CosHEf'
public	CosH_flt64			as	'_ZN4Math4CosHEd'
public	CosHm1_flt32		as	'_ZN4Math6CosHm1Ef'
public	CosHm1_flt64		as	'_ZN4Math6CosHm1Ed'

;==============================================================================;
;       Tangent                                                                ;
;==============================================================================;
public	TanH_flt32			as	'Math_TanH_flt32'
public	TanH_flt64			as	'Math_TanH_flt64'
public	TanH_flt32			as	'_ZN4Math4TanHEf'
public	TanH_flt64			as	'_ZN4Math4TanHEd'

;******************************************************************************;
;       Inverse hyperbolic functions                                           ;
;******************************************************************************;

;==============================================================================;
;       Inverse sine                                                           ;
;==============================================================================;
public	ArcSinH_flt32		as	'Math_ArcSinH_flt32'
public	ArcSinH_flt64		as	'Math_ArcSinH_flt64'
public	ArcSinH_flt32		as	'_ZN4Math7ArcSinHEf'
public	ArcSinH_flt64		as	'_ZN4Math7ArcSinHEd'

;==============================================================================;
;       Inverse cosine                                                         ;
;==============================================================================;
public	ArcCosH_flt32		as	'Math_ArcCosH_flt32'
public	ArcCosH_flt64		as	'Math_ArcCosH_flt64'
public	ArcCosH_flt32		as	'_ZN4Math7ArcCosHEf'
public	ArcCosH_flt64		as	'_ZN4Math7ArcCosHEd'
public	ArcCosHp1_flt32		as	'Math_ArcCosHp1_flt32'
public	ArcCosHp1_flt64		as	'Math_ArcCosHp1_flt64'
public	ArcCosHp1_flt32		as	'_ZN4Math9ArcCosHp1Ef'
public	ArcCosHp1_flt64		as	'_ZN4Math9ArcCosHp1Ed'

;==============================================================================;
;       Inverse tangent                                                        ;
;==============================================================================;
public	ArcTanH_flt32		as	'Math_ArcTanH_flt32'
public	ArcTanH_flt64		as	'Math_ArcTanH_flt64'
public	ArcTanH_flt32		as	'_ZN4Math7ArcTanHEf'
public	ArcTanH_flt64		as	'_ZN4Math7ArcTanHEd'

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

; flt32_t
LOG2_2_FLT32	= 0x3F800000				; log2 (2)
LOG2_E_FLT32	= 0x3FB8AA3B				; log2 (e)
LOG10_2_FLT32	= 0x3E9A209B				; log10 (2)
LOG10_E_FLT32	= 0x3EDE5BD9				; log10 (e)
LOGE_2_FLT32	= 0x3F317218				; logE (2)
LOGE_E_FLT32	= 0x3F800000				; logE (e)
RMAGIC_FLT32	= 0x5F400000				; magic number to round value to int

; flt64_t
LOG2_2_FLT64	= 0x3FF0000000000000		; log2 (2)
LOG2_E_FLT64	= 0x3FF71547652B82FE		; log2 (e)
LOG10_2_FLT64	= 0x3FD34413509F79FF		; log10 (2)
LOG10_E_FLT64	= 0x3FDBCB7B1526E50E		; log10 (e)
LOGE_2_FLT64	= 0x3FE62E42FEFA39EF		; logE (2)
LOGE_E_FLT64	= 0x3FF0000000000000		; logE (e)
RMAGIC_FLT64	= 0x43E8000000000000		; magic number to round value to int

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
;       Move value from integer register into vector register                  ;
;******************************************************************************;
macro	movint	reg1, reg2, x
{
if x eq s
		movd	reg1, reg2					; reg1 = reg2
else if x eq d
		movq	reg1, reg2					; reg1 = reg2
end if
}

;******************************************************************************;
;       Bitwise operations                                                     ;
;******************************************************************************;

;==============================================================================;
;       Byte swap                                                              ;
;==============================================================================;
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

;==============================================================================;
;       Bit reversal permutation                                               ;
;==============================================================================;
macro	BIT_REVERSE		result, value, temp1, temp2, scale
{
;---[Internal variables]-------------------
if scale = 0
const11	= 0x55								; const #1 for first stage
const12	= 0x33								; const #1 for second stage
const13	= 0x0F								; const #1 for third stage
const21	= 0xAA								; const #2 for first stage
const22	= 0xCC								; const #2 for second stage
const23	= 0xF0								; const #2 for third stage
else if scale = 1
const11	= 0x5555							; const #1 for first stage
const12	= 0x3333							; const #1 for second stage
const13	= 0x0F0F							; const #1 for third stage
const21	= 0xAAAA							; const #2 for first stage
const22	= 0xCCCC							; const #2 for second stage
const23	= 0xF0F0							; const #2 for third stage
else if scale = 2
const11	= 0x55555555						; const #1 for first stage
const12	= 0x33333333						; const #1 for second stage
const13	= 0x0F0F0F0F						; const #1 for third stage
const21	= 0xAAAAAAAA						; const #2 for first stage
const22	= 0xCCCCCCCC						; const #2 for second stage
const23	= 0xF0F0F0F0						; const #2 for third stage
else if scale = 3
const11	= 0x5555555555555555				; const #1 for first stage
const12	= 0x3333333333333333				; const #1 for second stage
const13	= 0x0F0F0F0F0F0F0F0F				; const #1 for third stage
const21	= 0xAAAAAAAAAAAAAAAA				; const #2 for first stage
const22	= 0xCCCCCCCCCCCCCCCC				; const #2 for second stage
const23	= 0xF0F0F0F0F0F0F0F0				; const #2 for third stage
end if
;---[First stage]--------------------------
		mov		temp1, const11				; temp1 = const11
		mov		temp2, const21				; temp2 = const21
		and		temp1, value
		and		temp2, value
		shl		temp1, 1					; temp1 = (value & temp1) << 1
		shr		temp2, 1					; temp2 = (value & temp2) >> 1
		mov		value, temp1
		or		value, temp2				; value = temp1 | temp2
;---[Second stage]-------------------------
		mov		temp1, const12				; temp1 = const12
		mov		temp2, const22				; temp2 = const22
		and		temp1, value
		and		temp2, value
		shl		temp1, 2					; temp1 = (value & temp1) << 2
		shr		temp2, 2					; temp2 = (value & temp2) >> 2
		mov		value, temp1
		or		value, temp2				; value = temp1 | temp2
;---[Third stage]--------------------------
		mov		temp1, const13				; temp1 = const13
		mov		temp2, const23				; temp2 = const23
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

;==============================================================================;
;       Bit scan                                                               ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Bit scan forward                                                       ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SCAN_FWD	result, value, error, scale
{
;---[Internal variables]-------------------
if scale = 0
mask	= 0xFF								; mask to clear unrequired bits
else if scale = 1
mask	= 0xFFFF							; mask to clear unrequired bits
else if scale = 2
mask	= 0xFFFFFFFF						; mask to clear unrequired bits
else if scale = 3
mask	= 0xFFFFFFFFFFFFFFFF				; mask to clear unrequired bits
end if
;------------------------------------------
		and		value, mask					; clear unrequired bits
		mov		error, mask					; error = -1
		bsf		result, value				; result = least significant set bit
		cmovz	result, error				; if value = 0, then result = error
		ret									; return result
}
ScanFwd8:	SCAN_FWD	ax, di, si, 0
ScanFwd16:	SCAN_FWD	ax, di, si, 1
ScanFwd32:	SCAN_FWD	eax, edi, esi, 2
ScanFwd64:	SCAN_FWD	rax, rdi, rsi, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Bit scan backward                                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SCAN_BWD	result, value, error, scale
{
;---[Internal variables]-------------------
if scale = 0
mask	= 0xFF								; mask to clear unrequired bits
else if scale = 1
mask	= 0xFFFF							; mask to clear unrequired bits
else if scale = 2
mask	= 0xFFFFFFFF						; mask to clear unrequired bits
else if scale = 3
mask	= 0xFFFFFFFFFFFFFFFF				; mask to clear unrequired bits
end if
;------------------------------------------
		and		value, mask					; clear unrequired bits
		mov		error, mask					; error = -1
		bsr		result, value				; result = most significant set bit
		cmovz	result, error				; if value = 0, then result = error
		ret									; return result
}
ScanBwd8:	SCAN_BWD	ax, di, si, 0
ScanBwd16:	SCAN_BWD	ax, di, si, 1
ScanBwd32:	SCAN_BWD	eax, edi, esi, 2
ScanBwd64:	SCAN_BWD	rax, rdi, rsi, 3

;==============================================================================;
;       Circular rotation                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Circular rotation to the left                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	ROTATE_LEFT		result, value, shift
{
;---[Internal variables]-------------------
rot		equ		cl							; rotation value
;------------------------------------------
		mov		rot, shift					; rot = shift
		rol		value, rot					; rotate value left to rot bits
		mov		result, value				; return RotateLeft (value, shift)
		ret
}
RotateLeft8:	ROTATE_LEFT		al, dil, sil
RotateLeft16:	ROTATE_LEFT		ax, di, sil
RotateLeft32:	ROTATE_LEFT		eax, edi, sil
RotateLeft64:	ROTATE_LEFT		rax, rdi, sil

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Circular rotation to the right                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	ROTATE_RIGHT		result, value, shift
{
;---[Internal variables]-------------------
rot		equ		cl							; rotation value
;------------------------------------------
		mov		rot, shift					; rot = shift
		ror		value, rot					; rotate value right to rot bits
		mov		result, value				; return RotateRight (value, shift)
		ret
}
RotateRight8:	ROTATE_RIGHT	al, dil, sil
RotateRight16:	ROTATE_RIGHT	ax, di, sil
RotateRight32:	ROTATE_RIGHT	eax, edi, sil
RotateRight64:	ROTATE_RIGHT	rax, rdi, sil

;==============================================================================;
;       Population count                                                       ;
;==============================================================================;
macro	POP_COUNT	result, value, scale
{
;---[Internal variables]-------------------
if scale = 0
mask	= 0xFF								; mask to clear unrequired bits
else if scale = 1
mask	= 0xFFFF							; mask to clear unrequired bits
else if scale = 2
mask	= 0xFFFFFFFF						; mask to clear unrequired bits
else if scale = 3
mask	= 0xFFFFFFFFFFFFFFFF				; mask to clear unrequired bits
end if
;------------------------------------------
		and		value, mask					; clear unrequired bits
		popcnt	result, value				; result = least significant set bit
		ret									; return result
}
PopCount8:	POP_COUNT	ax, di, 0
PopCount16:	POP_COUNT	ax, di, 1
PopCount32:	POP_COUNT	eax, edi, 2
PopCount64:	POP_COUNT	rax, rdi, 3

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Absolute value                                                         ;
;==============================================================================;
macro	ABS_INT	result, value, scale, negative
{
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		mov		result, value				; result = value
		sar		value, bytes * 8 - 1		; value >>= 8 * sizeof(x) - 1
if negative
		xor		value, result				; value ^= result
else
		xor		result, value				; result ^= value
end if
		sub		result, value				; return (result -= value)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ABS_FLT	negative, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
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
		initreg	mask, treg, smask			; load sign mask
		orp#x	value, mask					; value = -Abs (value)
else
		initreg	mask, treg, dmask			; load data mask
		andp#x	value, mask					; value = Abs (value)
end if
		ret
}

; Signed integer types
Abs_sint8:		ABS_INT		al, dil, 0, 0
Abs_sint16:		ABS_INT		ax, di, 1, 0
Abs_sint32:		ABS_INT		eax, edi, 2, 0
Abs_sint64:		ABS_INT		rax, rdi, 3, 0

; Floating-point types
Abs_flt32:		ABS_FLT		0, s
Abs_flt64:		ABS_FLT		0, d

;==============================================================================;
;       Negative absolute value                                                ;
;==============================================================================;

; Signed integer types
NegAbs_sint8:	ABS_INT		al, dil, 0, 1
NegAbs_sint16:	ABS_INT		ax, di, 1, 1
NegAbs_sint32:	ABS_INT		eax, edi, 2, 1
NegAbs_sint64:	ABS_INT		rax, rdi, 3, 1

; Floating-point types
NegAbs_flt32:	ABS_FLT		1, s
NegAbs_flt64:	ABS_FLT		1, d

;==============================================================================;
;       Number sign                                                            ;
;==============================================================================;
macro	SIGN_INT	value1, value2, c1, c2
{
;---[Internal variables]-------------------
result	equ		rax							; result register
pone	equ		rdx							; +1
mone	equ		rcx							; -1
;------------------------------------------
		xor		result, result				; result = 0
		mov		pone, +1					; pone = +1
		mov		mone, -1					; mone = -1
		cmp		value1, value2				; compare values
		cmov#c1	result, pone				; if (value1 > value2), return +1
		cmov#c2	result, mone				; if (value1 < value2), return -1
		ret									; if (value1 == value2), return 0
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SIGN_FLT	reg, pone, mone, nan, x, sign
{
;---[Parameters]---------------------------
value1	equ		xmm0						; first value
value2	equ		xmm1						; second value
;---[Internal variables]-------------------
if x eq s
nanval	= PNAN_FLT32						; +NaN
poneval	= PONE_FLT32						; +1.0
moneval	= MONE_FLT32						; -1.0
else if x eq d
nanval	= PNAN_FLT64						; +NaN
poneval	= PONE_FLT64						; +1.0
moneval	= MONE_FLT64						; -1.0
end if
;------------------------------------------
		mov		pone, poneval				; pone = +1
		mov		mone, moneval				; mone = -1
		mov		nan, nanval					; nan = +NaN
if sign
		xorp#x	value2, value2				; value2 = 0
end if
		xor		reg, reg					; reg = 0
		comis#x	value1, value2				; compare values
		cmova	reg, pone					; if (value1 > value2), return +1
		cmovb	reg, mone					; if (value1 < value1), return -1
		cmovp	reg, nan					; if NaN is detected, then return NaN
		movint	value1, reg, x				; value1 = reg
		ret
}

; Signed integer types
Sign_sint8:		SIGN_INT	dil, 0, g, l
Sign_sint16:	SIGN_INT	di, 0, g, l
Sign_sint32:	SIGN_INT	edi, 0, g, l
Sign_sint64:	SIGN_INT	rdi, 0, g, l

; Floating-point types
Sign_flt32:		SIGN_FLT	eax, edx, ecx, edi, s, 1
Sign_flt64:		SIGN_FLT	rax, rdx, rcx, rdi, d, 1

;==============================================================================;
;       Square root                                                            ;
;==============================================================================;
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

;==============================================================================;
;       Three-state comparison                                                 ;
;==============================================================================;
macro	SIGN_RAW	value1, value2, temp1, temp2, x
{
;---[Internal variables]-------------------
result	equ		rax							; result register
pone	equ		rdx							; +1
mone	equ		rcx							; -1
if x eq s
shift	= 30								; shift value
else if x eq d
shift	= 62								; shift value
end if
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
;---[Compare values]-----------------------
		xor		result, result				; result = 0
		mov		pone, +1					; pone = +1
		mov		mone, -1					; mone = -1
		cmp		value1, value2				; compare values
		cmovg	result, pone				; if (value1 > value2), return +1
		cmovl	result, mone				; if (value1 < value2), return -1
		ret									; if (value1 == value2), return 0
}

; Unsigned integer types
Compare_uint8:	SIGN_INT	dil, sil, a, b
Compare_uint16:	SIGN_INT	di, si, a, b
Compare_uint32:	SIGN_INT	edi, esi, a, b
Compare_uint64:	SIGN_INT	rdi, rsi, a, b

; Signed integer types
Compare_sint8:	SIGN_INT	dil, sil, g, l
Compare_sint16:	SIGN_INT	di, si, g, l
Compare_sint32:	SIGN_INT	edi, esi, g, l
Compare_sint64:	SIGN_INT	rdi, rsi, g, l

; Floating-point types
Compare_flt32:	SIGN_FLT	eax, edx, ecx, edi, s, 0
Compare_flt64:	SIGN_FLT	rax, rdx, rcx, rdi, d, 0
Compare_raw32:	SIGN_RAW	edi, esi, r8d, r9d, s
Compare_raw64:	SIGN_RAW	rdi, rsi, r8, r9, d

;==============================================================================;
;       Minimum and maximum absolute value                                     ;
;==============================================================================;
macro	MINMAX_INT	value1, value2, temp1, temp2, x, scale, abs
{
;---[Internal variables]-------------------
v1		equ		rdi							; register which holds value1
v2		equ		rsi							; register which holds value2
result	equ		rax							; regiser that holds min/max value
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
if abs
		mov		temp1, value1
		mov		temp2, value2
		sar		value1, bytes * 8 - 1
		sar		value2, bytes * 8 - 1
		add		temp1, value1
		add		temp2, value2
		xor		value1, temp1				; value1 = Abs (value1)
		xor		value2, temp2				; value2 = Abs (value2)
end if
		cmp		value1, value2				; if (value1 cond value2)
		cmov#x	result, v1					;     then result = value1
		cmovn#x	result, v2					;     else result = value2
		ret									; return result
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MINMAX_FLT	cmd, x, abs
{
;---[Parameters]---------------------------
value1	equ		xmm0						; first value
value2	equ		xmm1						; second value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
mask	equ		xmm1						; data mask to get absolute value
if x eq s
dmask	= DMASK_FLT32						; data mask
else if x eq d
dmask	= DMASK_FLT64						; data mask
end if
;------------------------------------------
if abs
		initreg	mask, treg, dmask			; load data mask
		andp#x	value1, mask				; value1 = Abs (value1)
		andp#x	value2, mask				; value2 = Abs (value2)
end if
		comis#x	value1, value1
		jp		@f
		cmd#x	value1, value2				; return minmax (value1, value2)
@@:		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum absolute value                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
MinAbs_sint8:	MINMAX_INT	dil, sil, al, dl, l, 0, 1
MinAbs_sint16:	MINMAX_INT	di, si, ax, dx, l, 1, 1
MinAbs_sint32:	MINMAX_INT	edi, esi, eax, edx, l, 2, 1
MinAbs_sint64:	MINMAX_INT	rdi, rsi, rax, rdx, l, 3, 1

; Floating-point types
MinAbs_flt32:	MINMAX_FLT	mins, s, 1
MinAbs_flt64:	MINMAX_FLT	mins, d, 1

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum absolute value                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
MaxAbs_sint8:	MINMAX_INT	dil, sil, al, dl, g, 0, 1
MaxAbs_sint16:	MINMAX_INT	di, si, ax, dx, g, 1, 1
MaxAbs_sint32:	MINMAX_INT	edi, esi, eax, edx, g, 2, 1
MaxAbs_sint64:	MINMAX_INT	rdi, rsi, rax, rdx, g, 3, 1

; Floating-point types
MaxAbs_flt32:	MINMAX_FLT	maxs, s, 1
MaxAbs_flt64:	MINMAX_FLT	maxs, d, 1

;==============================================================================;
;       Minimum and maximum value                                              ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
Min_uint8:		MINMAX_INT	dil, sil, al, dl, b, 0, 0
Min_uint16:		MINMAX_INT	di, si, ax, dx, b, 1, 0
Min_uint32:		MINMAX_INT	edi, esi, eax, edx, b, 2, 0
Min_uint64:		MINMAX_INT	rdi, rsi, rax, rdx, b, 3, 0

; Signed integer types
Min_sint8:		MINMAX_INT	dil, sil, al, dl, l, 0, 0
Min_sint16:		MINMAX_INT	di, si, ax, dx, l, 1, 0
Min_sint32:		MINMAX_INT	edi, esi, eax, edx, l, 2, 0
Min_sint64:		MINMAX_INT	rdi, rsi, rax, rdx, l, 3, 0

; Floating-point types
Min_flt32:		MINMAX_FLT	mins, s, 0
Min_flt64:		MINMAX_FLT	mins, d, 0

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
Max_uint8:		MINMAX_INT	dil, sil, al, dl, a, 0, 0
Max_uint16:		MINMAX_INT	di, si, ax, dx, a, 1, 0
Max_uint32:		MINMAX_INT	edi, esi, eax, edx, a, 2, 0
Max_uint64:		MINMAX_INT	rdi, rsi, rax, rdx, a, 3, 0

; Signed integer types
Max_sint8:		MINMAX_INT	dil, sil, al, dl, g, 0, 0
Max_sint16:		MINMAX_INT	di, si, ax, dx, g, 1, 0
Max_sint32:		MINMAX_INT	edi, esi, eax, edx, g, 2, 0
Max_sint64:		MINMAX_INT	rdi, rsi, rax, rdx, g, 3, 0

; Floating-point types
Max_flt32:		MINMAX_FLT	maxs, s, 0
Max_flt64:		MINMAX_FLT	maxs, d, 0

;==============================================================================;
;       Greatest common divisor                                                ;
;==============================================================================;
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

;==============================================================================;
;       Least common multiple                                                  ;
;==============================================================================;
macro	LCM		Func, value1, value2, temp, quot, remain, sign, scale
{
;------------------------------------------
		call	Func						; quot = GCD (value1, value2)
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

;==============================================================================;
;       Cancellation                                                           ;
;==============================================================================;
macro	CANCEL	Func, ptr1, ptr2, temp, result, high, sign, scale
{
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_ptr1	equ		stack + 0 * 8				; stack position of "ptr1" variable
s_ptr2	equ		stack + 1 * 8				; stack position of "ptr2" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_ptr1], ptr1				; save "ptr1" variable into the stack
		mov		[s_ptr2], ptr2				; save "ptr2" variable into the stack
		mov		param1, [ptr1]
		mov		param2, [ptr2]
		call	Func
		mov		temp, result				; temp = GCD (ptr1[0], ptr2[0])
		mov		ptr1, [s_ptr1]				; get "ptr1" variable from the stack
		mov		ptr2, [s_ptr2]				; get "ptr2" variable from the stack
		mov		result, [ptr1]				; result = ptr1[0]
if sign
		esign	scale
		idiv	temp						; ptr1[0] /= temp
else
		xor		high, high
		div		temp						; ptr1[0] /= temp
end if
		mov		[ptr1], result				; ptr1[0] = result
		mov		result, [ptr2]				; result = ptr2[0]
if sign
		esign	scale
		idiv	temp						; ptr2[0] /= temp
else
		xor		high, high
		div		temp						; ptr2[0] /= temp
end if
		mov		[ptr2], result				; ptr2[0] = result
		add		stack, space				; restoring back the stack pointer
		ret
}

; Unsigned integer types
Cancel_uint8:	CANCEL	GCD_uint8, rdi, rsi, cl, al, ah, 0, 0
Cancel_uint16:	CANCEL	GCD_uint16, rdi, rsi, cx, ax, dx, 0, 1
Cancel_uint32:	CANCEL	GCD_uint32, rdi, rsi, ecx, eax, edx, 0, 2
Cancel_uint64:	CANCEL	GCD_uint64, rdi, rsi, rcx, rax, rdx, 0, 3

; Signed integer types
Cancel_sint8:	CANCEL	GCD_sint8, rdi, rsi, cl, al, ah, 1, 0
Cancel_sint16:	CANCEL	GCD_sint16, rdi, rsi, cx, ax, dx, 1, 1
Cancel_sint32:	CANCEL	GCD_sint32, rdi, rsi, ecx, eax, edx, 1, 2
Cancel_sint64:	CANCEL	GCD_sint64, rdi, rsi, rcx, rax, rdx, 1, 3

;******************************************************************************;
;       Observational error                                                    ;
;******************************************************************************;

;==============================================================================;
;       Absolute error                                                         ;
;==============================================================================;
macro	ABS_ERROR	x
{
;---[Parameters]---------------------------
approx	equ		xmm0						; approximate value
accur	equ		xmm1						; accurate value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
mask	equ		xmm2						; data mask to get absolute value
if x eq s
dmask	= DMASK_FLT32						; data mask
else if x eq d
dmask	= DMASK_FLT64						; data mask
end if
;------------------------------------------
		initreg	mask, treg, dmask			; load data mask
		subs#x	approx, accur
		andp#x	approx, mask				; return Abs (approx - accur)
		ret
}
AbsError_flt32:	ABS_ERROR	s
AbsError_flt64:	ABS_ERROR	d

;==============================================================================;
;       Relative error                                                         ;
;==============================================================================;
macro	REL_ERROR	x
{
;---[Parameters]---------------------------
approx	equ		xmm0						; approximate value
accur	equ		xmm1						; accurate value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
mask	equ		xmm2						; data mask to get absolute value
if x eq s
dmask	= DMASK_FLT32						; data mask
else if x eq d
dmask	= DMASK_FLT64						; data mask
end if
;------------------------------------------
		initreg	mask, treg, dmask			; load data mask
		subs#x	approx, accur
		divs#x	approx, accur
		andp#x	approx, mask				; return Abs ((approx - accur) / accur)
		ret
}
RelError_flt32:	REL_ERROR	s
RelError_flt64:	REL_ERROR	d

;******************************************************************************;
;       Scale functions                                                        ;
;******************************************************************************;

;==============================================================================;
;       Scale by power of 2                                                    ;
;==============================================================================;
macro	SCALE2	temp, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to scale
exp		equ		di							; exponent value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
scale	equ		xmm1						; scale value
if x eq s
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= EBIAS_FLT32						; exponent bias
sclval1	= 0x7F000000						; 2^+127
sclval2	= 0x00800000						; 2^-126
else if x eq d
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= EBIAS_FLT64						; exponent bias
sclval1	= 0x7FE0000000000000				; 2^+1023
sclval2	= 0x0008000000000000				; 2^-1022
end if
minpow	= 1 - bias							; min power of 2
maxpow	= bias								; max power of 2
;------------------------------------------
		movsx	temp, exp					; temp = exp
		test	temp, temp					; if (temp < 0)
		js		.neg						;     then go to negative exponent branch
;---[Positive exponent branch]-------------
		cmp		temp, maxpow				; if (temp > maxpow)
		jg		.pcorr						;     then correct the exponent
@@:		add		temp, bias					; temp = exp + bias
		shl		temp, mbits					; temp <<= mbits
		movint	scale, temp, x				; scale = 2^exp
		muls#x	value, scale				; return (value * scale)
		ret
;---[Correcting positive power]------------
.pcorr:	initreg	scale, treg, sclval1		; scale = sclval1
		sub		temp, maxpow				; temp -= maxpow
		muls#x	value, scale				; value *= scale
		cmp		temp, maxpow				; if (temp <= maxpow)
		jle		@b							;     then exp is correct now
		sub		temp, maxpow				; temp -= maxpow
		muls#x	value, scale				; value *= scale
		cmp		temp, maxpow				; if (temp <= maxpow)
		jle		@b							;     then exp is correct now
		muls#x	value, scale				; return (value * scale)
		ret
;---[Negative exponent branch]-------------
.neg:	cmp		temp, minpow				; if (temp < minpow)
		jl		.ncorr						;     then correct the exponent
@@:		add		temp, bias					; temp = exp + bias
		shl		temp, mbits					; temp <<= mbits
		movint	scale, temp, x				; scale = 2^exp
		muls#x	value, scale				; return (value * scale)
		ret
;---[Correcting negative power]------------
.ncorr:	initreg	scale, treg, sclval2		; scale = sclval2
		sub		temp, minpow				; temp -= minpow
		muls#x	value, scale				; value *= scale
		cmp		temp, minpow				; if (temp >= minpow)
		jge		@b							;     then exp is correct now
		sub		temp, minpow				; temp -= minpow
		muls#x	value, scale				; value *= scale
		cmp		temp, minpow				; if (temp >= minpow)
		jge		@b							;     then exp is correct now
		muls#x	value, scale				; return (value * scale)
		ret
}
Scale2_flt32:	SCALE2	edx, s
Scale2_flt64:	SCALE2	rdx, d

;==============================================================================;
;       Scale by power of 10                                                   ;
;==============================================================================;
macro	SCALE10		x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to scale
exp		equ		di							; exponent value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
table	equ		rdx							; pointer to table of 10 powers
index	equ		rcx							; index register
scale	equ		xmm1						; scale value
if x eq s
tent	= ten_flt32							; table of integer powers of 10^x
sclval1	= 0x7E967699						; 10^+38
sclval2	= 0x02081CEA						; 10^-37
shift	= 46								; shift value
minpow	= -37								; min power of 10
maxpow	= +38								; max power of 10
bytes	= 4									; array element size (bytes)
else if x eq d
tent	= ten_flt64							; table of integer powers of 10^x
sclval1	= 0x7FE1CCF385EBC8A0				; 10^+308
sclval2	= 0x0031FA182C40C60D				; 10^-307
shift	= 324								; shift value
minpow	= -307								; min power of 10
maxpow	= +308								; max power of 10
bytes	= 8									; array element size (bytes)
end if
;------------------------------------------
		lea		table, [tent]				; set pointer to table of 10 powers
		movsx	index, exp					; index = exp
		test	index, index				; if (index < 0)
		js		.neg						;     then go to negative exponent branch
;---[Positive exponent branch]-------------
		cmp		index, maxpow				; if (index > maxpow)
		jg		.pcorr						;     then correct the exponent
@@:		movs#x	scale, [table + index * bytes + shift * bytes]
		muls#x	value, scale				; return (value * scale)
		ret
;---[Correcting positive power]------------
.pcorr:	initreg	scale, treg, sclval1		; scale = sclval1
		sub		index, maxpow				; index -= maxpow
		muls#x	value, scale				; value *= scale
		cmp		index, maxpow				; if (index <= maxpow)
		jle		@b							;     then exp is correct now
		sub		index, maxpow				; index -= maxpow
		muls#x	value, scale				; value *= scale
		cmp		index, maxpow				; if (index <= maxpow)
		jle		@b							;     then exp is correct now
		muls#x	value, scale				; return (value * scale)
		ret
;---[Negative exponent branch]-------------
.neg:	cmp		index, minpow				; if (index < minpow)
		jl		.ncorr						;     then correct the exponent
@@:		movs#x	scale, [table + index * bytes + shift * bytes]
		muls#x	value, scale				; return (value * scale)
		ret
;---[Correcting negative power]------------
.ncorr:	initreg	scale, treg, sclval2		; scale = sclval2
		sub		index, minpow				; index -= minpow
		muls#x	value, scale				; value *= scale
		cmp		index, minpow				; if (index >= minpow)
		jge		@b							;     then exp is correct now
		sub		index, minpow				; index -= minpow
		muls#x	value, scale				; value *= scale
		cmp		index, minpow				; if (index >= minpow)
		jge		@b							;     then exp is correct now
		muls#x	value, scale				; return (value * scale)
		ret
}
Scale10_flt32:	SCALE10	s
Scale10_flt64:	SCALE10	d

;******************************************************************************;
;       Exponentiation functions                                               ;
;******************************************************************************;
macro	EXP		cmd, mant, exp, shiftval, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; exponent value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
expl	equ		cl							; low part of exp register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
iscale	equ		xmm5						; iscale value
scale	equ		xmm6						; scale value
base	equ		xmm7						; base value
shift	equ		xmm8						; shift value
result	equ		xmm0						; result register
table	equ		treg						; pointer to array of coefficients
stack	equ		rsp							; stack pointer
fpart	equ		stack - 1 * 8				; stack position of "fpart" variable
ipart	equ		stack - 2 * 8				; stack position of "ipart" variable
emin	equ		stack - 3 * 8				; stack position of "emin" variable
emax	equ		stack - 4 * 8				; stack position of "emax" variable
magic	equ		stack - 5 * 8				; stack position of "magic" variable
if x eq s
nanval	= PNAN_FLT32						; +NaN
infval	= PINF_FLT32						; +Inf
logval	= LOGE_2_FLT32						; ln(2)
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= EBIAS_FLT32						; exponent bias
rmagic	= RMAGIC_FLT32						; magic number to round value to int
expt	= exp_flt32							; pointer to array of exp coefficients
else if x eq d
nanval	= PNAN_FLT64						; +NaN
infval	= PINF_FLT64						; +Inf
logval	= LOGE_2_FLT64						; ln(2)
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= EBIAS_FLT64						; exponent bias
rmagic	= RMAGIC_FLT64						; magic number to round value to int
expt	= exp_flt64							; pointer to array of exp coefficients
end if
minpow	= 1 - bias							; min power of 2
maxpow	= bias								; max power of 2
;---[Compute integer and fraction parts]---
		comis#x	value, value				; if (value == NaN)
		jp		.error						;     then return NaN
		mov		mant, rmagic
		movs#x	[fpart], value
		mov		word [emin], minpow - mbits - 1
		mov		word [emax], maxpow + 1
		mov		[magic], mant
if x eq s
		fld		dword [fpart]				; load value into FPU stack
		cmd									; load logarithm value
		fmulp	st1, st0					; multiply value and logarithm
		fild 	word [emin]					; load min exponent value
		fcomip	st0, st1					; if (emin >= value * log2 (base))
		jae		.min						;     then go to min exponent branch
		fild 	word [emax]					; load max exponent value
		fcomip	st0, st1					; if (emax <= value * log2 (base))
		jbe		.max						;     then go to max exponent branch
		fld		st0
		fadd	dword [magic]
		fsub	dword [magic]
		fsub	st1, st0
		fistp	dword [ipart]				; ipart = int (value * log2 (base))
		fstp	dword [fpart]				; fpart = frac (value * log2 (base))
else if x eq d
		fld		qword [fpart]				; load value into FPU stack
		cmd									; load logarithm value
		fmulp	st1, st0					; multiply value and logarithm
		fild 	word [emin]					; load min exponent value
		fcomip	st0, st1					; if (emin >= value * log2 (base))
		jae		.min						;     then go to min exponent branch
		fild 	word [emax]					; load max exponent value
		fcomip	st0, st1					; if (emax <= value * log2 (base))
		jbe		.max						;     then go to max exponent branch
		fld		st0
		fadd	qword [magic]
		fsub	qword [magic]
		fsub	st1, st0
		fistp	qword [ipart]				; ipart = int (value * log2 (base))
		fstp	qword [fpart]				; fpart = frac (value * log2 (base))
end if
;---[Compute exponent]---------------------
		initreg	shift, treg, shiftval		; shift = shiftval
		initreg	scale, treg, logval			; scale = ln(2)
		mov		exp, [ipart]				; exp = ipart
		cmp		exp, minpow					; if (exp < minpow)
		jl		.sub						;     then go to subnormal branch
		add		exp, bias					; exp += bias
		shl		exp, mbits					; exp <<= mbits
		movint	iscale, exp, x				; reinterpret exp as floating-point value
.back:	adds#x	shift, iscale				; shift += iscale
		movs#x	result, [fpart]				; result = fpart
		muls#x	result, scale				; result *= ln(2)
		movap#x	scale, result
		muls#x	scale, scale				; scale = result * result
		movap#x	base, result				; base = result
		lea		table, [expt]				; set pointer to array of coefficients
if x eq s
	SINGLE8		table, result, x			; compute single polynomial value
else if x eq d
	SINGLE16	table, result, x			; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		muls#x	temp1, iscale
		adds#x	temp1, shift				; temp1 = temp1 * iscale + shift
		movap#x	result, temp1				; return temp1
		ret
;---[Subnormal branch]---------------------
.sub:	neg		exp
		add		exp, minpow					; exp = minpow - exp
		mov		mant, mbits + 1
		cmp		exp, mbits + 1				; if (exp > mbits + 1)
		cmovg	exp, mant					;     exp = mbits + 1
		mov		mant, 1 shl mbits			; mant = 1 << mbits
		shr		mant, expl					; mant >>= exp
		movint	iscale, mant, x				; reinterpret mant as floating-point value
		jmp		.back						; go back
;---[Min exponent branch]------------------
if x eq s
.min:	fstp	dword [fpart]				; pop value frop FPU stack
else if x eq d
.min:	fstp	qword [fpart]				; pop value frop FPU stack
end if
		initreg	result, treg, shiftval		; return shiftval
		ret
;---[Max exponent branch]------------------
if x eq s
.max:	fstp	dword [fpart]				; pop value frop FPU stack
else if x eq d
.max:	fstp	qword [fpart]				; pop value frop FPU stack
end if
		initreg	result, treg, infval		; return +Inf
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nanval		; return NaN
		ret
}

;==============================================================================;
;       Exponentiation by base 2                                               ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer exponentiation by base 2                                       ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
Exp2i_int:
;---[Parameters]---------------------------
exp		equ		dil							; exponent value
;---[Internal variables]-------------------
shift	equ		cl							; binary shift value
result	equ		rax							; result register
maxval	= 64								; max exponent value
;------------------------------------------
		mov		shift, exp					; shift = exp
		cmp		exp, maxval					; if (shift >= maxval)
		jae		.ovfl						;     then go to overflow branch
		mov		result, 1					; result = 1
		shl		result, shift				; return (1 <<= shift)
		ret
;---[Overflow branch]----------------------
.ovfl:	xor		result, result				; return 0 (means result overflow)
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXP2I	exp, shift, temp, x
{
;---[Internal variables]-------------------
result	equ		xmm0						; result register
shiftl	equ		cl							; low part of shift register
if x eq s
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= EBIAS_FLT32						; exponent bias
else if x eq d
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= EBIAS_FLT64						; exponent bias
end if
minpow	= 1 - bias							; min power of 2
maxpow	= bias								; max power of 2
;------------------------------------------
		movsx	shift, exp					; shift = exp
		cmp		shift, minpow				; if (shift < minpow)
		jl		.sub						;     then go to subnormal branch
		mov		temp, maxpow + 1
		cmp		shift, maxpow				; if (shift > maxpow)
		cmovg	shift, temp					;     shift = maxpow + 1
		add		shift, bias					; shift += bias
		shl		shift, mbits				; shift <<= mbits
		movint	result, shift, x			; reinterpret shift as floating-point value
		ret									; return shift
;---[Subnormal branch]---------------------
.sub:	neg		shift
		add		shift, minpow				; shift = minpow - shift
		mov		temp, mbits + 1
		cmp		shift, mbits + 1			; if (shift > mbits + 1)
		cmovg	shift, temp					;     shift = mbits + 1
		mov		temp, 1 shl mbits			; temp = 1 << mbits
		shr		temp, shiftl				; temp >>= shift
		movint	result, temp, x				; reinterpret temp as floating-point value
		ret									; return temp
}
Exp2i_flt32:	EXP2I	dil, ecx, eax, s
Exp2i_flt64:	EXP2I	di, rcx, rax, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real exponentiation by base 2                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
Exp2_flt32:		EXP		fld1, edx, ecx, PZERO_FLT32, s
Exp2_flt64:		EXP		fld1, rdx, rcx, PZERO_FLT64, d
Exp2m1_flt32:	EXP		fld1, edx, ecx, MONE_FLT32, s
Exp2m1_flt64:	EXP		fld1, rdx, rcx, MONE_FLT64, d

;==============================================================================;
;       Exponentiation by base 10                                              ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer exponentiation by base 10                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
Exp10i_int:
;---[Parameters]---------------------------
exp		equ		dil							; exponent value
;---[Internal variables]-------------------
result	equ		rax							; result register
table	equ		rdx							; pointer to table of 10 powers
index	equ		rcx							; index register
temp	equ		rax							; temporary register
maxval	= 20								; max exponent value
;------------------------------------------
		lea		table, [ten_int]			; set pointer to table of 10 powers
		movzx	index, exp					; index = exp
		mov		temp, maxval				; temp = max exponent value
		cmp		index, maxval				; if (index > max)
		cmova	index, temp					;     index = max
		mov		result, [table + index * 8]	; return exp [index]
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXP10I	exp, x
{
;---[Internal variables]-------------------
result	equ		xmm0						; result register
table	equ		rdx							; pointer to table of 10 powers
index	equ		rcx							; index register
temp	equ		rax							; temporary register
if x eq s
tent	= ten_flt32							; table of integer powers of 10^x
minpow	= -46								; min power of 10
maxpow	= +39								; max power of 10
bytes	= 4									; array element size (bytes)
else if x eq d
tent	= ten_flt64							; table of integer powers of 10^x
minpow	= -324								; min power of 10
maxpow	= +309								; max power of 10
bytes	= 8									; array element size (bytes)
end if
;------------------------------------------
		lea		table, [tent]				; set pointer to table of 10 powers
		movsx	index, exp					; index = exp
		mov		temp, maxpow
		cmp		index, maxpow				; if (index > maxpow)
		cmovg	index, temp					;     index = maxpow
		mov		temp, minpow
		cmp		index, minpow				; if (index > minpow)
		cmovl	index, temp					;     index = minpow
		movs#x	result, [table + index * bytes - minpow * bytes]
		ret									; result = exp[index]
}
Exp10i_flt32:	EXP10I	dil, s
Exp10i_flt64:	EXP10I	di, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real exponentiation by base 10                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
Exp10_flt32:	EXP		fldl2t, edx, ecx, PZERO_FLT32, s
Exp10_flt64:	EXP		fldl2t, rdx, rcx, PZERO_FLT64, d
Exp10m1_flt32:	EXP		fldl2t, edx, ecx, MONE_FLT32, s
Exp10m1_flt64:	EXP		fldl2t, rdx, rcx, MONE_FLT64, d

;==============================================================================;
;       Exponentiation by base E (natural logarithm)                           ;
;==============================================================================;
ExpE_flt32:		EXP		fldl2e, edx, ecx, PZERO_FLT32, s
ExpE_flt64:		EXP		fldl2e, rdx, rcx, PZERO_FLT64, d
ExpEm1_flt32:	EXP		fldl2e, edx, ecx, MONE_FLT32, s
ExpEm1_flt64:	EXP		fldl2e, rdx, rcx, MONE_FLT64, d

;==============================================================================;
;       Exponentiation by custom base                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer exponentiation by custom base                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	EXPBI_INT	cmd, result, base
{
;---[Parameters]---------------------------
exp		equ		sil							; exponent value
;------------------------------------------
		test	base, base					; if (base == 0)
		jz		.ovrfl						;     then go to overflow branch
		mov		result, 1					; result = 1
		shr		exp, 1
		jnc		@f							; if (exp & 0x1)
		mov		result, base				;     result = base
@@:		jz		.exit						; if (exp == 0), then got to exit
;---[Exponentiation loop]------------------
.loop:	xchg	result, base
		cmd		result						; base *= base
		jc		.ovrfl						; if (overflow), then go to overflow branch
		xchg	result, base
		shr		exp, 1
		ja		.loop						; if (exp & 0x1 == 0 && exp != 0), then continue
		cmd		base						;     result *= base
		jc		.ovrfl						; if (overflow), then go to overflow branch
		test	exp, exp
		jnz		.loop						; do while (exp != 0)
;---[End of exponentiation loop]-----------
.exit:	ret									; return result
;---[Overflow branch]----------------------
.ovrfl:	xor		result, result				; return 0 (means result overflow)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXPBI_FLT	ivalue, mant, exp, x
{
;---[Parameters]---------------------------
base	equ		xmm0						; power base
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
result	equ		xmm0						; result register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
if x eq s
dmask	= DMASK_FLT32						; data mask
nanval	= PNAN_FLT32						; +NaN
infval	= PINF_FLT32						; +Inf
oneval	= PONE_FLT32						; +1.0
else if x eq d
dmask	= DMASK_FLT64						; data mask
nanval	= PNAN_FLT64						; +NaN
infval	= PINF_FLT64						; +Inf
oneval	= PONE_FLT64						; +1.0
end if
;------------------------------------------
		movap#x	temp1, base					; temp = base
		initreg	result, treg, oneval		; result = 1.0
		cmp		exp, 0
		jg		.pos						; if (exp > 0), then go to positive branch
		jl		.neg						; if (exp < 0), then go to negative branch
;---[Zero exponent branch]-----------------
		movint	ivalue, temp1, x			; ivalue = temp1
		mov		mant, dmask					; load data mask
		and		ivalue, mant				; ivalue = Abs (temp1)
		xor		mant, mant
		cmp		ivalue, mant				; if (ivalue == 0)
		je		.error						;     then return NaN
		mov		mant, infval
		cmp		ivalue, mant				; if (ivalue >= Inf)
		jae		.error						;     then return NaN
		ret									; return result
;---[Positive exponent branch]-------------
.pos:	shr		exp, 1
		jnc		@f							; if (exp & 0x1)
		movap#x	result, temp1				;     result = temp1
@@:		jz		.exit1						; if (exp == 0), then got to exit
;---[Exponentiation loop]------------------
.loop1:	muls#x	temp1, temp1				; temp1 *= temp1
		shr		exp, 1
		ja		.loop1						; if (exp & 0x1 == 0 && exp != 0), then continue
		muls#x	result, temp1				;     result *= temp1
		jnz		.loop1						; do while (exp != 0)
;---[End of exponentiation loop]-----------
.exit1:	ret
;---[Negative exponent branch]-------------
.neg:	initreg	temp2, treg, oneval
		neg		exp							; exp = -exp
		divs#x	temp2, temp1
		movap#x	temp1, temp2				; temp1 = 1.0 / temp1
		shr		exp, 1
		jnc		@f							; if (exp & 0x1)
		movap#x	result, temp1				;     result = temp1
@@:		jz		.exit2						; if (exp == 0), then got to exit
;---[Exponentiation loop]------------------
.loop2:	muls#x	temp1, temp1				; temp1 *= temp1
		shr		exp, 1
		ja		.loop2						; if (exp & 0x1 == 0 && exp != 0), then continue
		muls#x	result, temp1				;     result *= temp1
		jnz		.loop2						; do while (exp != 0)
;---[End of exponentiation loop]-----------
.exit2:	ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nanval		; return NaN
		ret
}

; Unsigned integer types
ExpBi_uint8:	EXPBI_INT	mul, al, dil
ExpBi_uint16:	EXPBI_INT	mul, ax, di
ExpBi_uint32:	EXPBI_INT	mul, eax, edi
ExpBi_uint64:	EXPBI_INT	mul, rax, rdi

; Signed integer types
ExpBi_sint8:	EXPBI_INT	imul, al, dil
ExpBi_sint16:	EXPBI_INT	imul, ax, di
ExpBi_sint32:	EXPBI_INT	imul, eax, edi
ExpBi_sint64:	EXPBI_INT	imul, rax, rdi

; Floating-point types
ExpBi_flt32:	EXPBI_FLT	eax, edx, dil, s
ExpBi_flt64:	EXPBI_FLT	rax, rdx, di, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real exponentiation by custom base                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	EXPB	mant, exp, res, val1, val2, shiftval, x
{
;---[Parameters]---------------------------
ebase	equ		xmm0						; exponentiation base
value	equ		xmm1						; exponent value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
expl	equ		cl							; low part of exp register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
iscale	equ		xmm5						; iscale value
scale	equ		xmm6						; scale value
base	equ		xmm7						; base value
shift	equ		xmm8						; shift value
result	equ		xmm0						; result register
table	equ		treg						; pointer to array of coefficients
stack	equ		rsp							; stack pointer
fpart	equ		stack - 1 * 8				; stack position of "fpart" variable
ipart	equ		stack - 2 * 8				; stack position of "ipart" variable
emin	equ		stack - 3 * 8				; stack position of "emin" variable
emax	equ		stack - 4 * 8				; stack position of "emax" variable
magic	equ		stack - 5 * 8				; stack position of "magic" variable
if x eq s
nanval	= PNAN_FLT32						; +NaN
infval	= PINF_FLT32						; +Inf
oneval	= PONE_FLT32						; +1.0
logval	= LOGE_2_FLT32						; ln(2)
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= EBIAS_FLT32						; exponent bias
rmagic	= RMAGIC_FLT32						; magic number to round value to int
expt	= exp_flt32							; pointer to array of exp coefficients
else if x eq d
nanval	= PNAN_FLT64						; +NaN
infval	= PINF_FLT64						; +Inf
oneval	= PONE_FLT64						; +1.0
logval	= LOGE_2_FLT64						; ln(2)
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= EBIAS_FLT64						; exponent bias
rmagic	= RMAGIC_FLT64						; magic number to round value to int
expt	= exp_flt64							; pointer to array of exp coefficients
end if
minpow	= 1 - bias							; min power of 2
maxpow	= bias								; max power of 2
;---[Check base value]---------------------
		movint	exp, ebase, x
		xor		mant, mant
		cmp		exp, mant
		jl		.error						; if (ebase < 0.0), then return NaN
		je		.spec						; if (ebase == 0.0), then go to special branch
		mov		mant, infval
		cmp		exp, mant
		ja		.error						; if (ebase > Inf), then return NaN
		je		.spec						; if (ebase == Inf), then go to special branch
;---[Compute integer and fraction parts]---
		comis#x	value, value				; if (value == NaN)
		jp		.error						;     then return NaN
		mov		mant, rmagic
		movs#x	[fpart], value
		movs#x	[ipart], ebase
		mov		word [emin], minpow - mbits - 1
		mov		word [emax], maxpow + 1
		mov		[magic], mant
if x eq s
		fld		dword [fpart]				; load value into FPU stack
		fld1
		fld		dword [ipart]				; load base into FPU stack
		fyl2x								; compute log2 (base)
		fmulp	st1, st0					; multiply value and logarithm
		fild 	word [emin]					; load min exponent value
		fcomip	st0, st1					; if (emin >= value * log2 (base))
		jae		.min						;     then go to min exponent branch
		fild 	word [emax]					; load max exponent value
		fcomip	st0, st1					; if (emax <= value * log2 (base))
		jbe		.max						;     then go to max exponent branch
		fld		st0
		fadd	dword [magic]
		fsub	dword [magic]
		fsub	st1, st0
		fistp	dword [ipart]				; ipart = int (value * log2 (base))
		fstp	dword [fpart]				; fpart = frac (value * log2 (base))
else if x eq d
		fld		qword [fpart]				; load value into FPU stack
		fld1
		fld		qword [ipart]				; load base into FPU stack
		fyl2x								; compute log2 (base)
		fmulp	st1, st0					; multiply value and logarithm
		fild 	word [emin]					; load min exponent value
		fcomip	st0, st1					; if (emin >= value * log2 (base))
		jae		.min						;     then go to min exponent branch
		fild 	word [emax]					; load max exponent value
		fcomip	st0, st1					; if (emax <= value * log2 (base))
		jbe		.max						;     then go to max exponent branch
		fld		st0
		fadd	qword [magic]
		fsub	qword [magic]
		fsub	st1, st0
		fistp	qword [ipart]				; ipart = int (value * log2 (base))
		fstp	qword [fpart]				; fpart = frac (value * log2 (base))
end if
;---[Compute exponent]---------------------
		initreg	shift, treg, shiftval		; shift = shiftval
		initreg	scale, treg, logval			; scale = ln(2)
		mov		exp, [ipart]				; exp = ipart
		cmp		exp, minpow					; if (exp < minpow)
		jl		.sub						;     then go to subnormal branch
		add		exp, bias					; exp += bias
		shl		exp, mbits					; exp <<= mbits
		movint	iscale, exp, x				; reinterpret exp as floating-point value
.back:	adds#x	shift, iscale				; shift += iscale
		movs#x	result, [fpart]				; result = fpart
		muls#x	result, scale				; result *= ln(2)
		movap#x	scale, result
		muls#x	scale, scale				; scale = result * result
		movap#x	base, result				; base = result
		lea		table, [expt]				; set pointer to array of coefficients
if x eq s
	SINGLE8		table, result, x			; compute single polynomial value
else if x eq d
	SINGLE16	table, result, x			; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		muls#x	temp1, iscale
		adds#x	temp1, shift				; temp1 = temp1 * iscale + shift
		movap#x	result, temp1				; return temp1
		ret
;---[Subnormal branch]---------------------
.sub:	neg		exp
		add		exp, minpow					; exp = minpow - exp
		mov		mant, mbits + 1
		cmp		exp, mbits + 1				; if (exp > mbits + 1)
		cmovg	exp, mant					;     exp = mbits + 1
		mov		mant, 1 shl mbits			; mant = 1 << mbits
		shr		mant, expl					; mant >>= exp
		movint	iscale, mant, x				; reinterpret mant as floating-point value
		jmp		.back						; go back
;---[Min exponent branch]------------------
if x eq s
.min:	fstp	dword [fpart]				; pop value frop FPU stack
else if x eq d
.min:	fstp	qword [fpart]				; pop value frop FPU stack
end if
.smin:	mov		val1, shiftval				; val1 = shiftval
		mov		val2, infval				; val2 = +Inf
		mov		res, nanval					; res = NaN
		movint	exp, ebase, x
		mov		mant, oneval
		cmp		exp, mant
		cmova	res, val1					; if (ebase > 1.0), then res = shiftval
		cmovb	res, val2					; if (ebase < 1.0), then res = +Inf
		movint	result, res, x				; return res
		ret
;---[Max exponent branch]------------------
if x eq s
.max:	fstp	dword [fpart]				; pop value frop FPU stack
else if x eq d
.max:	fstp	qword [fpart]				; pop value frop FPU stack
end if
.smax:	mov		val1, infval				; val1 = +Inf
		mov		val2, shiftval				; val2 = shiftval
		mov		res, nanval					; res = NaN
		movint	exp, ebase, x
		mov		mant, oneval
		cmp		exp, mant
		cmova	res, val1					; if (ebase > 1.0), then res = +Inf
		cmovb	res, val2					; if (ebase < 1.0), then res = shiftval
		movint	result, res, x				; return res
		ret
;---[Special branch]-----------------------
.spec:	xorp#x	base, base					; base = 0.0
		comis#x	value, base
		jp		.error						; if (value == NaN), then return NaN
		jb		.smin						; if (value < 0), then go to min exponent branch
		ja		.smax						; if (value > 0), then go to max exponent branch
;---[Error branch]-------------------------
.error:	initreg	result, treg, nanval		; return NaN
		ret
}
ExpB_flt32:		EXPB	edx, ecx, eax, edi, esi, PZERO_FLT32, s
ExpB_flt64:		EXPB	rdx, rcx, rax, rdi, rsi, PZERO_FLT64, d
ExpBm1_flt32:	EXPB	edx, ecx, eax, edi, esi, MONE_FLT32, s
ExpBm1_flt64:	EXPB	rdx, rcx, rax, rdi, rsi, MONE_FLT64, d

;******************************************************************************;
;       Logarithmic functions                                                  ;
;******************************************************************************;
macro	LOG		ivalue, temp, exp, mantscale, expscale, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; logarithm value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
mscale	equ		xmm9						; mantisa scale value
scale	equ		xmm10						; scale value
base	equ		xmm11						; base value
shift	equ		xmm12						; shift value
result	equ		xmm0						; result register
escale	equ		temp1						; exponent scale value
cscale	equ		temp2						; correction scale value
mask1	equ		temp3						; mask value #1
mask2	equ		temp4						; mask value #2
max		equ		temp5						; max value
half	equ		temp6						; 0.5
one		equ		temp7						; 1.0
table	equ		treg						; pointer to array of coefficients
if x eq s
emask	= EMASK_FLT32						; exponent mask
mmask	= MMASK_FLT32						; mantissa mask
normval	= NORM_FLT32						; min normal value
nanval	= PNAN_FLT32						; +NaN
pinfval	= PINF_FLT32						; +Inf
minfval	= MINF_FLT32						; -Inf
halfval	= PHALF_FLT32						; 0.5
oneval	= PONE_FLT32						; 1.0
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= EBIAS_FLT32						; exponent bias
maxval	= 0x3FAAAAAB						; max value
corrval	= 0x4B000000						; correction value
logt	= log_flt32							; pointer to array of log coefficients
else if x eq d
emask	= EMASK_FLT64						; exponent mask
mmask	= MMASK_FLT64						; mantissa mask
normval	= NORM_FLT64						; min normal value
nanval	= PNAN_FLT64						; +NaN
pinfval	= PINF_FLT64						; +Inf
minfval	= MINF_FLT64						; -Inf
halfval	= PHALF_FLT64						; 0.5
oneval	= PONE_FLT64						; 1.0
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= EBIAS_FLT64						; exponent bias
maxval	= 0x3FF5555555555555				; max value
corrval	= 0x4330000000000000				; correction value
logt	= log_flt64							; pointer to array of log coefficients
end if
;---[Check logarithm value]----------------
		movint	ivalue, value, x			; ivalue = value
		xor		temp, temp
		cmp		ivalue, temp
		jl		.error						; if (ivalue < 0.0), then return NaN
		je		.min						; if (ivalue == 0.0), then return -Inf
		mov		temp, pinfval
		cmp		ivalue, temp
		ja		.error						; if (ivalue > Inf), then return NaN
		je		.max						; if (ivalue == Inf), then return +Inf
;---[Loading scale values]-----------------
		initreg	mscale, treg, mantscale		; mscale = mantscale
		initreg	escale, treg, expscale		; escale = expscale
;---[Loading consts]-----------------------
		initreg	mask1, treg, mmask			; mask1 = mmask
		initreg	mask2, treg, bias shl mbits	; mask = bias << mbits
		initreg	max, treg, maxval			; max = maxval
		initreg	half, treg, halfval			; half = 0.5
		initreg	one, treg, oneval			; one = 1.0
		initreg	cscale, treg, corrval		; cscale = correction value
;---[Exponent extraction]------------------
		mov		exp, emask
		and		exp, ivalue					; exp = ivalue & emask
		shr		exp, mbits					; exp >>= mbits
		sub		exp, bias					; exp -= bias
		mov		temp, normval
		cmp		ivalue, temp				; if (ivalue < min normal value)
		jb		.corr						;     then correct value
;---[Mantissa extraction]------------------
.back:cvtsi2s#x	shift, exp					; shift = exp
		andp#x	result, mask1				; result &= mmask
		orp#x	result, mask2				; result |= bias << mbits
		comis#x	result, max					; if (result > max)
		jbe		@f							; {
		muls#x	result, half				;     result *= 0.5
		adds#x	shift, one					;     shift += 1.0
;---[Computing logarithm]------------------	; }
@@:		subs#x	result, one					; result -= 1.0
		movap#x	base, result				; base = result
		muls#x	shift, escale				; shift *= escale
		movap#x	scale, result
		muls#x	scale, scale				; scale = result * result
		lea		table, [logt]				; set pointer to array of coefficients
if x eq s
	SINGLE16	table, result, x			; compute single polynomial value
else if x eq d
	SINGLE32	table, result, x			; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		muls#x	temp1, mscale				; temp1 *= mscale
		adds#x	temp1, shift				; temp1 += shift
		movap#x	result, temp1				; return mscale * log (value) + shift
		ret
;---[Mantissa correction branch]-----------
.corr:	muls#x	result, cscale				; result *= cscale
		sub		exp, mbits					; exp -= mbits
		jmp		.back						; go back
;---[Min value branch]---------------------
.min:	initreg	result, treg, minfval		; return -Inf
		ret
;---[Max value branch]---------------------
.max:	initreg	result, treg, pinfval		; return +Inf
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nanval		; return NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	LOG1P	Func, ivalue, temp, mantscale, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; logarithm value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
mscale	equ		xmm5						; mantisa scale value
scale1	equ		xmm6						; scale value #1
scale2	equ		xmm7						; scale value #2
base	equ		xmm8						; base value
origin	equ		xmm9						; origin value
result	equ		xmm0						; result register
two		equ		temp1						; 2.0
half	equ		temp2						; 0.5
table	equ		treg						; pointer to array of coefficients
if x eq s
oneval	= PONE_FLT32						; +1.0
twoval	= PTWO_FLT32						; +2.0
phlfval	= PHALF_FLT32						; +0.5
mhlfval	= MHALF_FLT32						; -0.5
logt	= log1p_flt32						; pointer to array of log coefficients
else if x eq d
oneval	= PONE_FLT64						; +1.0
twoval	= PTWO_FLT64						; +2.0
phlfval	= PHALF_FLT64						; +0.5
mhlfval	= MHALF_FLT64						; -0.5
logt	= log1p_flt64						; pointer to array of log coefficients
end if
;---[Check logarithm value]----------------
		movint	ivalue, value, x			; ivalue = value
		mov		temp, mhlfval
		cmp		ivalue, temp				; if (ivalue < -0.5)
		ja		.log						;     then go to log branch
		mov		temp, oneval
		cmp		ivalue, temp				; if (ivalue > +1.0)
		jg		.log						;     then go to log branch
;---[Loading scale values]-----------------
		initreg	mscale, treg, mantscale		; mscale = mantscale
;---[Loading consts]-----------------------
		initreg	two, treg, twoval			; two = 2.0
		initreg	half, treg, phlfval			; half = 0.5
;---[Normal execution branch]--------------
		movap#x	origin, result				; origin = result
		movap#x	base, result
		movap#x	scale1, result
		movap#x	scale2, result
		muls#x	base, result
		adds#x	scale2, two
		muls#x	base, half					; base = 0.5 * result * result
		divs#x	scale1, scale2				; scale1 = result / (result + 2)
		movap#x	scale2, scale1
		muls#x	scale2, scale2				; scale2 = scale1 * scale1
		movap#x	result, scale2				; result = scale2
		lea		table, [logt]				; set pointer to array of coefficients
if x eq s
	SINGLE8		table, result, x			; compute single polynomial value
else if x eq d
	SINGLE16	table, result, x			; compute single polynomial value
end if
		muls#x	temp1, scale2
		adds#x	temp1, base
		muls#x	temp1, scale1
		subs#x	temp1, base
		adds#x	temp1, origin				; temp1 = origin + (scale1 * (base + scale2 * temp1) - base)
		muls#x	temp1, mscale				; temp1 *= mscale
		movap#x	result, temp1				; return mscale * log1p (value)
		ret
;---[Log branch]---------------------------
.log:	initreg	mscale, treg, oneval
		adds#x	value, mscale
		jmp		Func						; call Func (value + 1.0)
}

;==============================================================================;
;       Logarithm to base 2                                                    ;
;==============================================================================;
macro	LOG2I	val, scale
{
;---[Parameters]---------------------------
value	equ		rdi							; value to operate
;---[Internal variables]-------------------
result	equ		rax							; result register
;------------------------------------------
if scale < 2
		movzx	value, val					; zero extend value to 64-bit value
end if
		test	value, value				; if (value == 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		bsr		result, value				; return index of most significant bit
		ret
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		ret
}

; Integer logarithm to base 2
Log2i_uint8:	LOG2I	dil, 0
Log2i_uint16:	LOG2I	di, 1
Log2i_uint32:	LOG2I	edi, 2
Log2i_uint64:	LOG2I	rdi, 3

; Real logarithm to base 2
Log2_flt32:		LOG		edi, edx, ecx, LOG2_E_FLT32, LOG2_2_FLT32, s
Log2_flt64:		LOG		rdi, rdx, rcx, LOG2_E_FLT64, LOG2_2_FLT64, d
Log2p1_flt32:	LOG1P	Log2_flt32, edi, edx, LOG2_E_FLT32, s
Log2p1_flt64:	LOG1P	Log2_flt64, rdi, rdx, LOG2_E_FLT64, d

;==============================================================================;
;       Logarithm to base 10                                                   ;
;==============================================================================;
macro	LOG10I	val, index, scale
{
;---[Parameters]---------------------------
value	equ		rdi							; value to operate
;---[Internal variables]-------------------
result	equ		rax							; result register
table	equ		rdx							; pointer to table of 10 powers
;------------------------------------------
		lea		table, [ten_int]			; set pointer to table of 10 powers
if scale < 2
		movzx	value, val					; zero extend value to 64-bit value
end if
		test	value, value				; if (value == 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		mov		result, index				; result = index
;---[Search loop]--------------------------
.loop:	sub		result, 1					; result--
		cmp		value, [table + result * 8]
		jb		.loop						; do while (value < exp[resul])
;---[End of search loop]-------------------
		ret									; return result
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		ret
}

; Integer logarithm to base 10
Log10i_uint8:	LOG10I	dil, 3, 0
Log10i_uint16:	LOG10I	di, 5, 1
Log10i_uint32:	LOG10I	edi, 10, 2
Log10i_uint64:	LOG10I	rdi, 20, 3

; Real logarithm to base 10
Log10_flt32:	LOG		edi, edx, ecx, LOG10_E_FLT32, LOG10_2_FLT32, s
Log10_flt64:	LOG		rdi, rdx, rcx, LOG10_E_FLT64, LOG10_2_FLT64, d
Log10p1_flt32:	LOG1P	Log10_flt32, edi, edx, LOG10_E_FLT32, s
Log10p1_flt64:	LOG1P	Log10_flt64, rdi, rdx, LOG10_E_FLT64, d

;==============================================================================;
;       Logarithm to base E (natural logarithm)                                ;
;==============================================================================;
LogE_flt32:		LOG		edi, edx, ecx, LOGE_E_FLT32, LOGE_2_FLT32, s
LogE_flt64:		LOG		rdi, rdx, rcx, LOGE_E_FLT64, LOGE_2_FLT64, d
LogEp1_flt32:	LOG1P	LogE_flt32, edi, edx, LOGE_E_FLT32, s
LogEp1_flt64:	LOG1P	LogE_flt64, rdi, rdx, LOGE_E_FLT64, d

;==============================================================================;
;       Logarithm to custom base                                               ;
;==============================================================================;
macro	LOGB	Log, ivalue, temp, exp, res, val1, val2, x
{
;---[Parameters]---------------------------
lbase	equ		xmm0						; logarithm base value
value	equ		xmm1						; logarithm value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
mscale	equ		xmm9						; mantisa scale value
scale	equ		xmm10						; scale value #1
base	equ		xmm11						; base value
shift	equ		xmm12						; shift value
result	equ		xmm0						; result register
escale	equ		temp1						; exponent scale value
cscale	equ		temp2						; correction scale value
mask1	equ		temp3						; mask value #1
mask2	equ		temp4						; mask value #2
max		equ		temp5						; max value
half	equ		temp6						; 0.5
one		equ		temp7						; 1.0
table	equ		treg						; pointer to array of coefficients
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
if x eq s
emask	= EMASK_FLT32						; exponent mask
mmask	= MMASK_FLT32						; mantissa mask
normval	= NORM_FLT32						; min normal value
nanval	= PNAN_FLT32						; +NaN
pinfval	= PINF_FLT32						; +Inf
minfval	= MINF_FLT32						; -Inf
halfval	= PHALF_FLT32						; 0.5
oneval	= PONE_FLT32						; 1.0
logval	= LOGE_2_FLT32						; ln(2)
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= EBIAS_FLT32						; exponent bias
maxval	= 0x3FAAAAAB						; max value
corrval	= 0x4B000000						; correction value
logt	= log_flt32							; pointer to array of log coefficients
else if x eq d
emask	= EMASK_FLT64						; exponent mask
mmask	= MMASK_FLT64						; mantissa mask
normval	= NORM_FLT64						; min normal value
nanval	= PNAN_FLT64						; +NaN
pinfval	= PINF_FLT64						; +Inf
minfval	= MINF_FLT64						; -Inf
halfval	= PHALF_FLT64						; 0.5
oneval	= PONE_FLT64						; 1.0
logval	= LOGE_2_FLT64						; ln(2)
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= EBIAS_FLT64						; exponent bias
maxval	= 0x3FF5555555555555				; max value
corrval	= 0x4330000000000000				; correction value
logt	= log_flt64							; pointer to array of log coefficients
end if
space	= 1 * 8								; stack size required by the procedure
;---[Check base value]---------------------
		movint	exp, lbase, x
		mov		temp, oneval
		cmp		exp, temp					; if (lbase == 1.0)
		je		.error						;     return NaN
		xor		temp, temp
		cmp		exp, temp					; if (lbase <= 0.0)
		jle		.error						;     then return NaN
		mov		temp, pinfval
		cmp		exp, temp					; if (lbase >= Inf)
		jae		.error						;     then return NaN
;---[Check logarithm value]----------------
		movint	ivalue, value, x			; ivalue = value
		xor		temp, temp
		cmp		ivalue, temp
		jl		.error						; if (ivalue < 0.0), then return NaN
		je		.min						; if (ivalue == 0.0), then return correct Inf
		mov		temp, pinfval
		cmp		ivalue, temp
		ja		.error						; if (ivalue > Inf), then return NaN
		je		.max						; if (ivalue == Inf), then return correct Inf
;---[Loading scale values]-----------------
		sub		stack, space				; reserving stack size for local vars
		movs#x	[s_value], value			; save "value" variable into the stack
		call	Log							; call Log (lbase)
		initreg	mscale, treg, oneval
		divs#x	mscale, result				; mscale = 1.0 / ln (lbase)
		initreg	escale, treg, logval
		divs#x	escale, result				; escale = ln(2) / ln (lbase)
		movs#x	result, [s_value]			; get "value" variable from the stack
		mov		ivalue, [s_value]			; ivalue = value
		add		stack, space				; restoring back the stack pointer
;---[Loading consts]-----------------------
		initreg	mask1, treg, mmask			; mask1 = mmask
		initreg	mask2, treg, bias shl mbits	; mask = bias << mbits
		initreg	max, treg, maxval			; max = maxval
		initreg	half, treg, halfval			; half = 0.5
		initreg	one, treg, oneval			; one = 1.0
		initreg	cscale, treg, corrval		; cscale = correction value
;---[Exponent extraction]------------------
		mov		exp, emask
		and		exp, ivalue					; exp = ivalue & emask
		shr		exp, mbits					; exp >>= mbits
		sub		exp, bias					; exp -= bias
		mov		temp, normval
		cmp		ivalue, temp				; if (ivalue < min normal value)
		jb		.corr						;     then correct value
;---[Mantissa extraction]------------------
.back:cvtsi2s#x	shift, exp					; shift = exp
		andp#x	result, mask1				; result &= mmask
		orp#x	result, mask2				; result |= bias << mbits
		comis#x	result, max					; if (result > max)
		jbe		@f							; {
		muls#x	result, half				;     result *= 0.5
		adds#x	shift, one					;     shift += 1.0
;---[Computing logarithm]------------------	; }
@@:		subs#x	result, one					; result -= 1.0
		movap#x	base, result				; base = result
		muls#x	shift, escale				; shift *= escale
		movap#x	scale, result
		muls#x	scale, scale				; scale = result * result
		lea		table, [logt]				; set pointer to array of coefficients
if x eq s
	SINGLE16	table, result, x			; compute single polynomial value
else if x eq d
	SINGLE32	table, result, x			; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		muls#x	temp1, mscale				; temp1 *= mscale
		adds#x	temp1, shift				; temp1 += shift
		movap#x	result, temp1				; return mscale * log (value) + shift
		ret
;---[Mantissa correction branch]-----------
.corr:	muls#x	result, cscale				; result *= cscale
		sub		exp, mbits					; exp -= mbits
		jmp		.back						; go back
;---[Min value branch]---------------------
.min:	mov		val1, minfval				; val1 = -Inf
		mov		val2, pinfval				; val2 = +Inf
		movint	exp, lbase, x
		mov		temp, oneval
		cmp		exp, temp
		cmova	res, val1					; if (lbase > 1.0), then res = -Inf
		cmovb	res, val2					; if (lbase < 1.0), then res = +Inf
		movint	result, res, x				; return res
		ret
;---[Max value branch]---------------------
.max:	mov		val1, pinfval				; val1 = +Inf
		mov		val2, minfval				; val2 = -Inf
		movint	exp, lbase, x
		mov		temp, oneval
		cmp		exp, temp
		cmova	res, val1					; if (lbase > 1.0), then res = +Inf
		cmovb	res, val2					; if (lbase < 1.0), then res = -Inf
		movint	result, res, x				; return res
		ret
;---[Error branch]-------------------------
.error:	initreg	result, treg, nanval		; return NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	LOGB1P	Log, Func, ivalue, temp, x
{
;---[Parameters]---------------------------
lbase	equ		xmm0						; logarithm base value
value	equ		xmm1						; logarithm value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
mscale	equ		xmm5						; mantisa scale value
scale1	equ		xmm6						; scale value #1
scale2	equ		xmm7						; scale value #2
base	equ		xmm8						; base value
origin	equ		xmm9						; origin value
result	equ		xmm0						; result register
two		equ		temp1						; 2.0
half	equ		temp2						; 0.5
table	equ		treg						; pointer to array of coefficients
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
if x eq s
nanval	= PNAN_FLT32						; +NaN
infval	= PINF_FLT32						; +Inf
oneval	= PONE_FLT32						; +1.0
twoval	= PTWO_FLT32						; +2.0
phlfval	= PHALF_FLT32						; +0.5
mhlfval	= MHALF_FLT32						; -0.5
logt	= log1p_flt32						; pointer to array of log coefficients
else if x eq d
nanval	= PNAN_FLT64						; +NaN
infval	= PINF_FLT64						; +Inf
oneval	= PONE_FLT64						; +1.0
twoval	= PTWO_FLT64						; +2.0
phlfval	= PHALF_FLT64						; +0.5
mhlfval	= MHALF_FLT64						; -0.5
logt	= log1p_flt64						; pointer to array of log coefficients
end if
space	= 1 * 8								; stack size required by the procedure
;---[Check base value]---------------------
		movint	ivalue, lbase, x			; ivalue = lbase
		mov		temp, oneval
		cmp		ivalue, temp				; if (ivalue == 1.0)
		je		.error						;     return NaN
		xor		temp, temp
		cmp		ivalue, temp				; if (ivalue <= 0.0)
		jle		.error						;     then return NaN
		mov		temp, infval
		cmp		ivalue, temp				; if (ivalue >= Inf)
		jae		.error						;     then return NaN
;---[Check logarithm value]----------------
		movint	ivalue, value, x			; ivalue = value
		mov		temp, mhlfval
		cmp		ivalue, temp				; if (ivalue < -0.5)
		ja		.log						;     then go to log branch
		mov		temp, oneval
		cmp		ivalue, temp				; if (ivalue > +1.0)
		jg		.log						;     then go to log branch
;---[Loading scale values]-----------------
		sub		stack, space				; reserving stack size for local vars
		movs#x	[s_value], value			; save "value" variable into the stack
		call	Log							; call Log (lbase)
		initreg	mscale, treg, oneval
		divs#x	mscale, result				; mscale = 1.0 / ln (lbase)
		movs#x	result, [s_value]			; get "value" variable from the stack
		add		stack, space				; restoring back the stack pointer
;---[Loading consts]-----------------------
		initreg	two, treg, twoval			; two = 2.0
		initreg	half, treg, phlfval			; half = 0.5
;---[Computing logarithm]------------------
		movap#x	origin, result				; origin = result
		movap#x	base, result
		movap#x	scale1, result
		movap#x	scale2, result
		muls#x	base, result
		adds#x	scale2, two
		muls#x	base, half					; base = 0.5 * result * result
		divs#x	scale1, scale2				; scale1 = result / (result + 2)
		movap#x	scale2, scale1
		muls#x	scale2, scale2				; scale2 = scale1 * scale1
		movap#x	result, scale2				; result = scale2
		lea		table, [logt]				; set pointer to array of coefficients
if x eq s
	SINGLE8		table, result, x			; compute single polynomial value
else if x eq d
	SINGLE16	table, result, x			; compute single polynomial value
end if
		muls#x	temp1, scale2
		adds#x	temp1, base
		muls#x	temp1, scale1
		subs#x	temp1, base
		adds#x	temp1, origin				; temp1 = origin + (scale1 * (base + scale2 * temp1) - base)
		muls#x	temp1, mscale				; temp1 *= mscale
		movap#x	result, temp1				; return mscale * log1p (value)
		ret
;---[Log branch]---------------------------
.log:	initreg	mscale, treg, oneval
		adds#x	value, mscale
		jmp		Func						; call Func (base, value + 1.0)
;---[Error branch]-------------------------
.error:	initreg	result, treg, nanval		; return NaN
		ret
}
LogB_flt32:		LOGB	LogE_flt32, edi, edx, ecx, eax, edi, esi, s
LogB_flt64:		LOGB	LogE_flt64, rdi, rdx, rcx, rax, rdi, rsi, d
LogBp1_flt32:	LOGB1P	LogE_flt32, LogB_flt32, edi, edx, s
LogBp1_flt64:	LOGB1P	LogE_flt64, LogB_flt64, rdi, rdx, d

;******************************************************************************;
;       Trigonometric functions                                                ;
;******************************************************************************;
macro	TRIG1	Func, ivalue, mant, exp, ipart, res0, res1, temp0, temp1, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; angle value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
table	equ		r8							; pointer to array of coefficients
index	equ		r10							; first index for long mul operation
max		equ		r11							; last index for long mul operation
expl	equ		cl							; low part of exponent value
value1	equ		xmm0						; angle value #1
value2	equ		xmm1						; angle value #2
scale1	equ		xmm2						; high part of scale value
scale2	equ		xmm3						; low part of scale value
sign	equ		xmm4						; sign bit
fpart1	equ		temp0						; fraction part of result #1
fpart2	equ		temp1						; fraction part of result #2
stack	equ		rsp							; stack pointer
array	equ		stack + 0 * 8				; stack position of "array" variable
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
emask	= EMASK_FLT32						; exponent mask
mmask	= MMASK_FLT32						; mantissa mask
nanval	= PNAN_FLT32						; +NaN
infval	= PINF_FLT32						; +Inf
pi4val	= PI_FOUR_FLT32						; +Pi/4
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= EBIAS_FLT32						; exponent bias
range	= range_flt32						; pointer to range reduction constant
sclval1	= 0x2FC90FDB						; Pi/2 * 2^-32
sclval2	= 0x20490FDB						; Pi/2 * 2^-63
cbits	= 192								; count of bits into long mul constant
bscale	= 5									; bits scale value
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
emask	= EMASK_FLT64						; exponent mask
mmask	= MMASK_FLT64						; mantissa mask
nanval	= PNAN_FLT64						; +NaN
infval	= PINF_FLT64						; +Inf
pi4val	= PI_FOUR_FLT64						; +Pi/4
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= EBIAS_FLT64						; exponent bias
range	= range_flt64						; pointer to range reduction constant
sclval1	= 0x3BF921FB54442D18				; Pi/2 * 2^-64
sclval2	= 0x380921FB54442D18				; Pi/2 * 2^-127
cbits	= 1152								; count of bits into long mul constant
bscale	= 6									; bits scale value
end if
bits	= 1 shl bscale						; block size (bits)
bytes	= 1 shl (bscale - 3)				; block size (bytes)
space	= 19 * 8							; stack size required by the procedure
;---[Check angle value]--------------------
		movint	ivalue, value, x
		mov		mant, dmask					; load data mask
		and		mant, ivalue				; mant = Abs (value)
		mov		ipart, infval
		cmp		mant, ipart					; if (mant >= Inf)
		jae		.ovrfl						;     then go to overflow branch
		mov		ipart, pi4val
		cmp		mant, ipart					; if (mant <= Pi/4)
		jbe		.skip						;     then skip following code
;---[Set correct sign to scale values]-----
		sub		stack, space				; reserving stack size for local vars
		initreg	sign, treg, smask			; sign = smask
		initreg	scale1, treg, sclval1		; scale1 = sclval1
		initreg	scale2, treg, sclval2		; scale2 = sclval2
		andp#x	sign, value					; get angle sign
		orp#x	scale1, sign				; set angle sign to scale value #1
		orp#x	scale2, sign				; set angle sign to scale value #2
;---[Extract exponent]---------------------
		mov		exp, emask
		and		exp, ivalue					; exp = value & emask
		shr		exp, mbits					; exp >>= mbits
		sub		exp, bias					; exp -= bias
		neg		exp
		add		exp, cbits + mbits			; exp = cbits + mbits - exp
;---[Extract mantissa]---------------------
		mov		ipart, mmask + 1
		mov		mant, mmask
		and		mant, ivalue				; mant = value & mmask
		or		mant, ipart					; mant |= 1 << mbits
;---[Long mul operation]-------------------
		lea		table, [range]				; set pointer to array of coefficients
		xor		treg, treg					; treg = 0
		lea		index, [exp - 2 * bits]
		shr		index, bscale
		sub		index, 1					; index = (exp - 2 * bits) / bits - 1
		cmp		index, treg					; if (index < treg)
		cmovl	index, treg					;     index = treg
		mov		treg, cbits / bits			; treg = cbits / bits
		lea		max, [exp + 1]
		shr		max, bscale
		add		max, 1						; max = (exp + 1) / bits + 1
		cmp		max, treg					; if (max > treg)
		cmovg	max, treg					;     max = treg
		xor		temp0, temp0				; temp0 = 0
		xor		temp1, temp1				; temp1 = 0
;---[Multiplication loop]------------------
.loop:	mov		res0, [table+index*bytes]	; res0 = low (table[index] * mant)
		mul		mant						; res1 = high (table[index] * mant)
		add		res0, temp0					; res0 += temp0
		adc		res1, temp1					; res1 += temp1
		mov		[array+index*bytes], res0	; array[index] = res0
		mov		temp0, res1					; temp0 = res1
		add		index, 1					; index++
		cmp		index, max
		jb		.loop						; do while (index < max)
;---[End of multiplication loop------------
		mov		[array+index*bytes], temp0	; array[0] = temp0
		lea		index, [exp]
		shr		index, 3					; index = exp / 8
		and		exp, 0x7					; exp %= 8
		mov		fpart2, [array + index - 2 * bytes]
		mov		fpart1, [array + index - 1 * bytes]
		movzx	ipart, word [array + index]
		shrd	fpart2, fpart1, expl		; extract fraction part #2
		shrd	fpart1, ipart, expl			; extract fraction part #1
		shr		ipart, expl					; extract integer part
		shr		fpart2, 1					; correct fraction part
;---[Correct angle quadrant]---------------
		mov		temp1, fpart1
		shr		temp1, bits - 1				; if (fpart1 < 0)
		add		ipart, temp1				;     then ipart++
		mov		temp1, ipart
		neg		temp1
		xorp#x	sign, sign					; sign = 0
		comis#x	value, sign					; if (value < 0)
		cmovb	ipart, temp1				;     then ipart = -ipart
;---[Compute angle]------------------------
	cvtsi2s#x	value1, fpart1
	cvtsi2s#x	value2, fpart2
		muls#x	value1, scale1				; value1 = fpart1 * scale1
		muls#x	value2, scale2				; value2 = fpart2 * scale2
		adds#x	value1, value2				; value1 += value2
;---[Call function]------------------------
		lea		param1, [ipart]
		add		stack, space				; restoring back the stack pointer
		jmp		Func						; call Func (value1 + value2, ipart)
;---[Skip branch]--------------------------
.skip:	xor		param1, param1
		jmp		Func						; call Func (value, 0)
;---[Overflow branch]----------------------
.ovrfl:	initreg	value, treg, nanval			; return NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRIG2	Func, ivalue, mant, exp, ipart, res0, res1, temp0, temp1, x
{
;---[Parameters]---------------------------
sin		equ		rdi							; pointer to place where to store sin value
cos		equ		rsi							; pointer to place where to store cos value
value	equ		xmm0						; angle value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
table	equ		r8							; pointer to array of coefficients
index	equ		r10							; first index for long mul operation
max		equ		r11							; last index for long mul operation
expl	equ		cl							; low part of exponent value
value1	equ		xmm0						; angle value #1
value2	equ		xmm1						; angle value #2
scale1	equ		xmm2						; high part of scale value
scale2	equ		xmm3						; low part of scale value
sign	equ		xmm4						; sign bit
fpart1	equ		temp0						; fraction part of result #1
fpart2	equ		temp1						; fraction part of result #2
stack	equ		rsp							; stack pointer
array	equ		stack + 0 * 8				; stack position of "array" variable
s_sin	equ		stack + 19 * 8				; stack position of "sin" variable
s_cos	equ		stack + 20 * 8				; stack position of "cos" variable
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
emask	= EMASK_FLT32						; exponent mask
mmask	= MMASK_FLT32						; mantissa mask
nanval	= PNAN_FLT32						; +NaN
infval	= PINF_FLT32						; +Inf
pi4val	= PI_FOUR_FLT32						; +Pi/4
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= EBIAS_FLT32						; exponent bias
range	= range_flt32						; pointer to range reduction constant
sclval1	= 0x2FC90FDB						; Pi/2 * 2^-32
sclval2	= 0x20490FDB						; Pi/2 * 2^-63
cbits	= 192								; count of bits into long mul constant
bscale	= 5									; bits scale value
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
emask	= EMASK_FLT64						; exponent mask
mmask	= MMASK_FLT64						; mantissa mask
nanval	= PNAN_FLT64						; +NaN
infval	= PINF_FLT64						; +Inf
pi4val	= PI_FOUR_FLT64						; +Pi/4
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= EBIAS_FLT64						; exponent bias
range	= range_flt64						; pointer to range reduction constant
sclval1	= 0x3BF921FB54442D18				; Pi/2 * 2^-64
sclval2	= 0x380921FB54442D18				; Pi/2 * 2^-127
cbits	= 1152								; count of bits into long mul constant
bscale	= 6									; bits scale value
end if
bits	= 1 shl bscale						; block size (bits)
bytes	= 1 shl (bscale - 3)				; block size (bytes)
space	= 21 * 8							; stack size required by the procedure
;---[Check angle value]--------------------
		movint	ivalue, value, x
		mov		mant, dmask					; load data mask
		and		mant, ivalue				; mant = Abs (value)
		mov		ipart, infval
		cmp		mant, ipart					; if (mant >= Inf)
		jae		.ovrfl						;     then go to overflow branch
		mov		ipart, pi4val
		cmp		mant, ipart					; if (mant <= Pi/4)
		jbe		.skip						;     then skip following code
;---[Set correct sign to scale values]-----
		sub		stack, space				; reserving stack size for local vars
		initreg	sign, treg, smask			; sign = smask
		initreg	scale1, treg, sclval1		; scale1 = sclval1
		initreg	scale2, treg, sclval2		; scale2 = sclval2
		andp#x	sign, value					; get angle sign
		orp#x	scale1, sign				; set angle sign to scale value #1
		orp#x	scale2, sign				; set angle sign to scale value #2
		mov		[s_sin], sin				; save "sin" variable into the stack
		mov		[s_cos], cos				; save "cos" variable into the stack
;---[Extract exponent]---------------------
		mov		exp, emask
		and		exp, ivalue					; exp = value & emask
		shr		exp, mbits					; exp >>= mbits
		sub		exp, bias					; exp -= bias
		neg		exp
		add		exp, cbits + mbits			; exp = cbits + mbits - exp
;---[Extract mantissa]---------------------
		mov		ipart, mmask + 1
		mov		mant, mmask
		and		mant, ivalue				; mant = value & mmask
		or		mant, ipart					; mant |= 1 << mbits
;---[Long mul operation]-------------------
		lea		table, [range]				; set pointer to array of coefficients
		xor		treg, treg					; treg = 0
		lea		index, [exp - 2 * bits]
		shr		index, bscale
		sub		index, 1					; index = (exp - 2 * bits) / bits - 1
		cmp		index, treg					; if (index < treg)
		cmovl	index, treg					;     index = treg
		mov		treg, cbits / bits			; treg = cbits / bits
		lea		max, [exp + 1]
		shr		max, bscale
		add		max, 1						; max = (exp + 1) / bits + 1
		cmp		max, treg					; if (max > treg)
		cmovg	max, treg					;     max = treg
		xor		temp0, temp0				; temp0 = 0
		xor		temp1, temp1				; temp1 = 0
;---[Multiplication loop]------------------
.loop:	mov		res0, [table+index*bytes]	; res0 = low (table[index] * mant)
		mul		mant						; res1 = high (table[index] * mant)
		add		res0, temp0					; res0 += temp0
		adc		res1, temp1					; res1 += temp1
		mov		[array+index*bytes], res0	; array[index] = res0
		mov		temp0, res1					; temp0 = res1
		add		index, 1					; index++
		cmp		index, max
		jb		.loop						; do while (index < max)
;---[End of multiplication loop------------
		mov		[array+index*bytes], temp0	; array[0] = temp0
		lea		index, [exp]
		shr		index, 3					; index = exp / 8
		and		exp, 0x7					; exp %= 8
		mov		fpart2, [array + index - 2 * bytes]
		mov		fpart1, [array + index - 1 * bytes]
		movzx	ipart, word [array + index]
		shrd	fpart2, fpart1, expl		; extract fraction part #2
		shrd	fpart1, ipart, expl			; extract fraction part #1
		shr		ipart, expl					; extract integer part
		shr		fpart2, 1					; correct fraction part
;---[Correct angle quadrant]---------------
		mov		temp1, fpart1
		shr		temp1, bits - 1				; if (fpart1 < 0)
		add		ipart, temp1				;     then ipart++
		mov		temp1, ipart
		neg		temp1
		xorp#x	sign, sign					; sign = 0
		comis#x	value, sign					; if (value < 0)
		cmovb	ipart, temp1				;     then ipart = -ipart
;---[Compute angle]------------------------
	cvtsi2s#x	value1, fpart1
	cvtsi2s#x	value2, fpart2
		muls#x	value1, scale1				; value1 = fpart1 * scale1
		muls#x	value2, scale2				; value2 = fpart2 * scale2
		adds#x	value1, value2				; value1 += value2
;---[Call function]------------------------
		lea		param3, [ipart]
		mov		sin, [s_sin]				; get "sin" variable from the stack
		mov		cos, [s_cos]				; get "cos" variable from the stack
		add		stack, space				; restoring back the stack pointer
		jmp		Func						; call Func (&sin, &cos, value1 + value2, ipart)
;---[Skip branch]--------------------------
.skip:	xor		param3, param3
		jmp		Func						; call Func (&sin, &cos, value, 0)
;---[Overflow branch]----------------------
.ovrfl:	mov		mant, nanval
		mov		[sin], mant					; sin[0] = NaN
		mov		[cos], mant					; cos[0] = NaN
		ret
}

;==============================================================================;
;       Hypotenuse                                                             ;
;==============================================================================;
macro	HYPOT	x
{
;---[Parameters]---------------------------
val1	equ		xmm0						; first cathetus
val2	equ		xmm1						; second cathetus
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
mask	equ		xmm2						; data mask to get absolute value
max		equ		xmm3						; max value
barier1	equ		xmm4						; first barier
barier2	equ		xmm5						; second barier
scale1	equ		xmm6						; first scale factor
scale2	equ		xmm7						; second scale factor
if x eq s
dmask	= DMASK_FLT32						; data mask
const1	= 0x5F800000						; 2^+64
const2	= 0x20000000						; 2^-63
sclval1	= 0x1F800000						; 2^-64
sclval2	= 0x5F800000						; 2^+64
sclval3	= 0x6A800000						; 2^+86
sclval4	= 0x14800000						; 2^-86
else if x eq d
dmask	= DMASK_FLT64						; data mask
const1	= 0x5FF0000000000000				; 2^+512
const2	= 0x2000000000000000				; 2^-511
sclval1	= 0x1FF0000000000000				; 2^-512
sclval2	= 0x5FF0000000000000				; 2^+512
sclval3	= 0x6330000000000000				; 2^+564
sclval4	= 0x1CB0000000000000				; 2^-564
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	barier1, treg, const1		; barier1 = const1
		initreg	barier2, treg, const2		; barier2 = const2
		andp#x	val1, mask					; val1 = Abs(val1)
		andp#x	val2, mask					; val2 = Abs(val2)
		movap#x	max, val1
		maxs#x	max, val2					; max = Max (val1, val2)
		comis#x	max, barier1				; if (max >= barier1)
		jae		.over						;     then go to overflow prevention branch
		comis#x	max, barier2				; if (max < barier2)
		jb		.under						;     then go to underflow prevention branch
;---[Normal execution branch]--------------
		muls#x	val1, val1					; val1 = val1^2
		muls#x	val2, val2					; val2 = val2^2
		adds#x	val1, val2					; val1 = val1^2 + val2^2
		sqrts#x	val1, val1					; return sqrt (val1)
		ret
;---[Overflow prevention branch]-----------
.over:	initreg	scale1, treg, sclval1		; scale1 = sclval1
		initreg	scale2, treg, sclval2		; scale2 = sclval2
		muls#x	val1, scale1				; val1 *= scale1
		muls#x	val2, scale1				; val2 *= scale1
		muls#x	val1, val1					; val1 = val1^2
		muls#x	val2, val2					; val2 = val2^2
		adds#x	val1, val2					; val1 = val1^2 + val2^2
		sqrts#x	val1, val1
		muls#x	val1, scale2				; return scale2 * sqrt (val1)
		ret
;---[Underflow prevention branch]----------
.under:	initreg	scale1, treg, sclval3		; scale1 = sclval3
		initreg	scale2, treg, sclval4		; scale2 = sclval4
		muls#x	val1, scale1				; val1 *= scale1
		muls#x	val2, scale1				; val2 *= scale1
		muls#x	val1, val1					; val1 = val1^2
		muls#x	val2, val2					; val2 = val2^2
		adds#x	val1, val2					; val1 = val1^2 + val2^2
		sqrts#x	val1, val1
		muls#x	val1, scale2				; return scale2 * sqrt (val1)
		ret
}
Hypot_flt32:	HYPOT	s
Hypot_flt64:	HYPOT	d

;==============================================================================;
;       Cathetus                                                               ;
;==============================================================================;
macro	CATH	x
{
;---[Parameters]---------------------------
hypot	equ		xmm0						; hypotenuse
cath	equ		xmm1						; cathetus
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp	equ		xmm2						; temporary register
mask	equ		xmm3						; data mask to get absolute value
max		equ		xmm4						; max value
barier1	equ		xmm5						; first barier
barier2	equ		xmm6						; second barier
scale1	equ		xmm7						; first scale factor
scale2	equ		xmm8						; second scale factor
if x eq s
dmask	= DMASK_FLT32						; data mask
const1	= 0x5F800000						; 2^+64
const2	= 0x20000000						; 2^-63
sclval1	= 0x1F800000						; 2^-64
sclval2	= 0x5F800000						; 2^+64
sclval3	= 0x6A800000						; 2^+86
sclval4	= 0x14800000						; 2^-86
else if x eq d
dmask	= DMASK_FLT64						; data mask
const1	= 0x5FF0000000000000				; 2^+512
const2	= 0x2000000000000000				; 2^-511
sclval1	= 0x1FF0000000000000				; 2^-512
sclval2	= 0x5FF0000000000000				; 2^+512
sclval3	= 0x6330000000000000				; 2^+564
sclval4	= 0x1CB0000000000000				; 2^-564
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	barier1, treg, const1		; barier1 = const1
		initreg	barier2, treg, const2		; barier2 = const2
		andp#x	hypot, mask					; hypot = Abs(hypot)
		andp#x	cath, mask					; cath = Abs(cath)
		movap#x	max, hypot
		maxs#x	max, cath					; max = Max (hypot, cath)
		comis#x	max, barier1				; if (max >= barier1)
		jae		.over						;     then go to overflow prevention branch
		comis#x	max, barier2				; if (max < barier2)
		jb		.under						;     then go to underflow prevention branch
;---[Normal execution branch]--------------
		movap#x	temp, hypot
		adds#x	hypot, cath
		subs#x	temp, cath
		muls#x	hypot, temp					; hypot = (hypot + cath) * (hypot - cath)
		sqrts#x	hypot, hypot				; return sqrt (hypot)
		ret
;---[Overflow prevention branch]-----------
.over:	initreg	scale1, treg, sclval1		; scale1 = sclval1
		initreg	scale2, treg, sclval2		; scale2 = sclval2
		muls#x	hypot, scale1				; hypot *= scale1
		muls#x	cath, scale1				; cath *= scale1
		movap#x	temp, hypot
		adds#x	hypot, cath
		subs#x	temp, cath
		muls#x	hypot, temp					; hypot = (hypot + cath) * (hypot - cath)
		sqrts#x	hypot, hypot
		muls#x	hypot, scale2				; return scale2 * sqrt (hypot)
		ret
;---[Underflow prevention branch]----------
.under:	initreg	scale1, treg, sclval3		; scale1 = sclval3
		initreg	scale2, treg, sclval4		; scale2 = sclval4
		muls#x	hypot, scale1				; hypot *= scale1
		muls#x	cath, scale1				; cath *= scale1
		movap#x	temp, hypot
		adds#x	hypot, cath
		subs#x	temp, cath
		muls#x	hypot, temp					; hypot = (hypot + cath) * (hypot - cath)
		sqrts#x	hypot, hypot
		muls#x	hypot, scale2				; return scale2 * sqrt (hypot)
		ret
}
Cath_flt32:	CATH	s
Cath_flt64:	CATH	d

;==============================================================================;
;       Sine                                                                   ;
;==============================================================================;
macro	SIN	sval, sreg, x
{
;---[Parameters]---------------------------
quadr	equ		rdi							; quadrant
value	equ		xmm0						; angle value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
scale	equ		xmm3						; scale value
base	equ		xmm4						; base value
sign	equ		xmm5						; sign bit
one		equ		xmm6						; 1.0
result	equ		xmm0						; result register
mask	equ		temp1						; data mask
pi		equ		temp2						; Pi/4
half	equ		scale						; 0.5
table	equ		treg						; pointer to array of coefficients
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
nanval	= PNAN_FLT32						; +NaN
oneval	= PONE_FLT32						; +1.0
halfval	= MHALF_FLT32						; -0.5
pi4val	= PI_FOUR_FLT32						; +Pi/4
sint	= sin_flt32							; pointer to array of sine coefficients
cost	= cos_flt32							; pointer to array of cosine coefficients
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
nanval	= PNAN_FLT64						; +NaN
oneval	= PONE_FLT64						; +1.0
halfval	= MHALF_FLT64						; -0.5
pi4val	= PI_FOUR_FLT64						; +Pi/4
sint	= sin_flt64							; pointer to array of sine coefficients
cost	= cos_flt64							; pointer to array of cosine coefficients
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	pi, treg, pi4val			; pi = Pi/4
		initreg	one, treg, oneval			; one = +1.0
		initreg	half, treg, halfval			; half = -0.5
		mov		sval, smask					; set sign mask
		movint	sreg, value, x				; sreg = value
		and		sreg, sval					; extract sign bit from angle value
		andp#x	value, mask					; value = Abs (value)
		comis#x	value, pi					; if (value > Pi/4)
		ja		.ovrfl						;     then go to overflow branch
		test	quadr, 0x1					; if (quadr & 0x1)
		jnz		.cos						;     then compute cos value
;---[Computing sin value]------------------
		xor		sval, sreg
		test	quadr, 0x2					; if (quadr & 0x2 != 0)
		cmovnz	sreg, sval					;     sign = -sign
		movap#x	base, value					; base = value
		muls#x	value, value				; value *= value
		movap#x	scale, value
		muls#x	scale, base					; scale = value * base
		movint	sign, sreg, x				; sign = sign bit
		lea		table, [sint]				; set pointer to array of coefficients
if x eq s
		SINGLE4	table, value, x				; compute single polynomial value
else if x eq d
		SINGLE8	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		orp#x	temp1, sign					; set correct sign to the result
		movap#x	result, temp1				; return sign * Sin (Abs (value))
		ret
;---[Computing cos value]------------------
.cos:	xor		sreg, sreg					; sign = +1.0
		test	quadr, 0x2					; if (quadr & 0x2 != 0)
		cmovnz	sreg, sval					;     sign = -1.0
		movap#x	base, half					; base = -0.5
		muls#x	value, value				; value *= value
		movap#x	scale, value
		muls#x	scale, scale				; scale = value * value
		muls#x	base, value					; base *= value
		movint	sign, sreg, x				; sign = sign bit
		lea		table, [cost]				; set pointer to array of coefficients
if x eq s
		SINGLE4	table, value, x				; compute single polynomial value
else if x eq d
		SINGLE8	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		adds#x	temp1, one					; temp1 += 1.0
		orp#x	temp1, sign					; set correct sign to the result
		movap#x	result, temp1				; return sign * Cos (Abs (value))
		ret
;---[Overflow branch]----------------------
.ovrfl:	initreg	result, treg, nanval		; return NaN
		ret
}
SinQ_flt32:	SIN		edx, ecx, s
SinQ_flt64:	SIN		rdx, rcx, d
Sin_flt32:	TRIG1	SinQ_flt32, r8d, r9d, ecx, edx, eax, edx, edi, esi, s
Sin_flt64:	TRIG1	SinQ_flt64, r8, r9, rcx, rdx, rax, rdx, rdi, rsi, d

;==============================================================================;
;       Cosine                                                                 ;
;==============================================================================;
macro	COS	sval, sreg, x
{
;---[Parameters]---------------------------
quadr	equ		rdi							; quadrant
value	equ		xmm0						; angle value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
scale	equ		xmm3						; scale value
base	equ		xmm4						; base value
sign	equ		xmm5						; sign bit
one		equ		xmm6						; 1.0
result	equ		xmm0						; result register
mask	equ		temp1						; data mask
pi		equ		temp2						; Pi/4
half	equ		scale						; 0.5
table	equ		treg						; pointer to array of coefficients
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
nanval	= PNAN_FLT32						; +NaN
oneval	= PONE_FLT32						; +1.0
halfval	= MHALF_FLT32						; -0.5
pi4val	= PI_FOUR_FLT32						; +Pi/4
sint	= sin_flt32							; pointer to array of sine coefficients
cost	= cos_flt32							; pointer to array of cosine coefficients
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
nanval	= PNAN_FLT64						; +NaN
oneval	= PONE_FLT64						; +1.0
halfval	= MHALF_FLT64						; -0.5
pi4val	= PI_FOUR_FLT64						; +Pi/4
sint	= sin_flt64							; pointer to array of sine coefficients
cost	= cos_flt64							; pointer to array of cosine coefficients
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	pi, treg, pi4val			; pi = Pi/4
		initreg	one, treg, oneval			; one = +1.0
		initreg	half, treg, halfval			; half = -0.5
		mov		sval, smask					; set sign mask
		movint	sreg, value, x				; sreg = value
		and		sreg, sval					; extract sign bit from angle value
		andp#x	value, mask					; value = Abs (value)
		comis#x	value, pi					; if (value > Pi/4)
		ja		.ovrfl						;     then go to overflow branch
		test	quadr, 0x1					; if (quadr & 0x1)
		jnz		.sin						;     then compute sin value
;---[Computing cos value]------------------
		xor		sreg, sreg					; sign = +1.0
		test	quadr, 0x2					; if (quadr & 0x2 != 0)
		cmovnz	sreg, sval					;     sign = -1.0
		movap#x	base, half					; base = -0.5
		muls#x	value, value				; value *= value
		movap#x	scale, value
		muls#x	scale, scale				; scale = value * value
		muls#x	base, value					; base *= value
		movint	sign, sreg, x				; sign = sign bit
		lea		table, [cost]				; set pointer to array of coefficients
if x eq s
		SINGLE4	table, value, x				; compute single polynomial value
else if x eq d
		SINGLE8	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		adds#x	temp1, one					; temp1 += 1.0
		orp#x	temp1, sign					; set correct sign to the result
		movap#x	result, temp1				; return sign * Cos (Abs (value))
		ret
;---[Computing sin value]------------------
.sin:	xor		sval, sreg
		test	quadr, 0x2					; if (quadr & 0x2 == 0)
		cmovz	sreg, sval					;     sign = -sign
		movap#x	base, value					; base = value
		muls#x	value, value				; value *= value
		movap#x	scale, value
		muls#x	scale, base					; scale = value * base
		movint	sign, sreg, x				; sign = sign bit
		lea		table, [sint]				; set pointer to array of coefficients
if x eq s
		SINGLE4	table, value, x				; compute single polynomial value
else if x eq d
		SINGLE8	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		orp#x	temp1, sign					; set correct sign to the result
		movap#x	result, temp1				; return sign * Sin (Abs (value))
		ret
;---[Overflow branch]----------------------
.ovrfl:	initreg	result, treg, nanval		; return NaN
		ret
}
CosQ_flt32:	COS		edx, ecx, s
CosQ_flt64:	COS		rdx, rcx, d
Cos_flt32:	TRIG1	CosQ_flt32, r8d, r9d, ecx, edx, eax, edx, edi, esi, s
Cos_flt64:	TRIG1	CosQ_flt64, r8, r9, rcx, rdx, rax, rdx, rdi, rsi, d

;==============================================================================;
;       Sine and cosine                                                        ;
;==============================================================================;
macro	SINCOS	sval1, sval2, sreg1, sreg2, x
{
;---[Parameters]---------------------------
sin		equ		rdi							; pointer to place where to store sin value
cos		equ		rsi							; pointer to place where to store cos value
quadr	equ		rdx							; quadrant
value	equ		xmm0						; angle value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
scale1	equ		xmm5						; scale value #1
scale2	equ		xmm6						; scale value #2
base1	equ		xmm7						; base value #1
base2	equ		xmm8						; base value #2
sign1	equ		xmm9						; sign bit #1
sign2	equ		xmm10						; sign bit #2
one		equ		xmm11						; 1.0
result	equ		xmm0						; result register
mask	equ		temp1						; data mask
pi		equ		temp2						; Pi/4
half	equ		scale						; 0.5
table	equ		treg						; pointer to array of coefficients
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
nanval	= PNAN_FLT32						; +NaN
oneval	= PONE_FLT32						; +1.0
halfval	= MHALF_FLT32						; -0.5
pi4val	= PI_FOUR_FLT32						; +Pi/4
sincost	= sincos_flt32						; pointer to array of sine and cosine coefficients
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
nanval	= PNAN_FLT64						; +NaN
oneval	= PONE_FLT64						; +1.0
halfval	= MHALF_FLT64						; -0.5
pi4val	= PI_FOUR_FLT64						; +Pi/4
sincost	= sincos_flt64						; pointer to array of sine and cosine coefficients
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	pi, treg, pi4val			; pi = Pi/4
		initreg	one, treg, oneval			; one = +1.0
		initreg	half, treg, halfval			; half = -0.5
		mov		sval1, smask				; set sign mask
		mov		sval2, smask				; set sign mask
		movint	sreg1, value, x				; sreg1 = value
		movint	sreg2, value, x				; sreg1 = value
		and		sreg1, sval1				; extract sign bit from angle value
		and		sreg2, sval2				; extract sign bit from angle value
		andp#x	value, mask					; value = Abs (value)
		comis#x	value, pi					; if (value > Pi/4)
		ja		.ovrfl						;     then go to overflow branch
		test	quadr, 0x1					; if (quadr & 0x1)
		jnz		.xchng						;     then exchange sin and cos values
;---[Computing sin and cos value]----------
		xor		sval1, sreg1
		xor		sreg2, sreg2				; sign2 = +1.0
		test	quadr, 0x2
		cmovnz	sreg1, sval1				; if (quadr & 0x2 != 0), then sign1 = -sign1
		cmovnz	sreg2, sval2				; if (quadr & 0x2 != 0), then sign2 = -1.0
		movap#x	base1, value				; base1 = value
		movap#x	base2, half					; base2 = 0.5
		muls#x	value, value				; value *= value
		movap#x	scale1, value
		muls#x	scale1, base1				; scale1 = value * base1
		movap#x	scale2, value
		muls#x	scale2, scale2				; scale2 = value * value
		muls#x	base2, value				; base2 *= value
		movint	sign1, sreg1, x				; sign1 = sign bit of sine
		movint	sign2, sreg2, x				; sign2 = sign bit of cosine
		lea		table, [sincost]			; set pointer to array of coefficients
if x eq s
		PAIR4	table, value, x				; compute single polynomial value
else if x eq d
		PAIR8	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale1
		adds#x	temp1, base1				; temp1 = base1 + scale1 * temp1
		muls#x	temp2, scale2
		adds#x	temp2, base2				; temp2 = base2 + scale2 * temp2
		adds#x	temp2, one					; temp2 += 1.0
		orp#x	temp1, sign1				; set correct sign to the sine result
		orp#x	temp2, sign2				; set correct sign to the cosine result
		movs#x	[sin], temp1				; sin[0] = sign1 * Sin (Abs(value))
		movs#x	[cos], temp2				; cos[0] = sign2 * Cos (Abs(value))
		ret
;---[Computing cos and sin value]----------
.xchng:	xor		sval1, sreg1
		xor		sreg2, sreg2				; sign1 = +1.0
		test	quadr, 0x2
		cmovz	sreg1, sval1				; if (quadr & 0x2 == 0), then sign1 = -sign2
		cmovnz	sreg2, sval2				; if (quadr & 0x2 != 0), then sign2 = -1.0
		movap#x	base1, value				; base1 = value
		movap#x	base2, half					; base2 = -0.5
		muls#x	value, value				; value *= value
		movap#x	scale1, value
		muls#x	scale1, base1				; scale1 = value * base1
		movap#x	scale2, value
		muls#x	scale2, scale2				; scale2 = value * value
		muls#x	base2, value				; base2 *= value
		movint	sign1, sreg1, x				; sign1 = sign bit of sine
		movint	sign2, sreg2, x				; sign2 = sign bit of cosine
		lea		table, [sincost]			; set pointer to array of coefficients
if x eq s
		PAIR4	table, value, x				; compute pair polynomial value
else if x eq d
		PAIR8	table, value, x				; compute pair polynomial value
end if
		muls#x	temp1, scale1
		adds#x	temp1, base1				; temp1 = base1 + scale1 * temp1
		muls#x	temp2, scale2
		adds#x	temp2, base2				; temp2 = base2 + scale2 * temp2
		adds#x	temp2, one					; temp2 += 1.0
		orp#x	temp1, sign1				; set correct sign to the sine result
		orp#x	temp2, sign2				; set correct sign to the cosine result
		movs#x	[sin], temp2				; sin[0] = sign2 * Cos (Abs(value))
		movs#x	[cos], temp1				; cos[0] = sign1 * Sin (Abs(value))
		ret
;---[Overflow branch]----------------------
.ovrfl:	initreg	result, treg, nanval
		movs#x	[sin], result				; sin[0] = NaN
		movs#x	[cos], result				; cos[0] = NaN
		ret
}
SinCosQ_flt32:	SINCOS	r8d, r9d, r10d, r11d, s
SinCosQ_flt64:	SINCOS	r8, r9, r10, r11, d
SinCos_flt32:	TRIG2	SinCosQ_flt32, r8d, r9d, ecx, edx, eax, edx, edi, esi, s
SinCos_flt64:	TRIG2	SinCosQ_flt64, r8, r9, rcx, rdx, rax, rdx, rdi, rsi, d

;==============================================================================;
;       Tangent                                                                ;
;==============================================================================;
macro	TAN	sval, sreg, x
{
;---[Parameters]---------------------------
quadr	equ		rdi							; quadrant
value	equ		xmm0						; angle value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
scale	equ		xmm9						; scale value
base	equ		xmm10						; base value
sign	equ		xmm11						; sign bit
one		equ		xmm12						; 1.0
result	equ		xmm0						; result register
mask	equ		temp1						; data mask
pi		equ		temp2						; Pi/4
table	equ		treg						; pointer to array of coefficients
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
nanval	= PNAN_FLT32						; +NaN
oneval	= PONE_FLT32						; +1.0
pi4val	= PI_FOUR_FLT32						; +Pi/4
tant	= tan_flt32							; pointer to array of tangent coefficients
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
nanval	= PNAN_FLT64						; +NaN
oneval	= PONE_FLT64						; +1.0
pi4val	= PI_FOUR_FLT64						; +Pi/4
tant	= tan_flt64							; pointer to array of tangent coefficients
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	pi, treg, pi4val			; pi = Pi/4
		initreg	one, treg, oneval			; one = +1.0
		mov		sval, smask					; set sign mask
		movint	sreg, value, x				; sreg = value
		and		sreg, sval					; extract sign bit from angle value
		andp#x	value, mask					; value = Abs (value)
		comis#x	value, pi					; if (value > Pi/4)
		ja		.ovrfl						;     then go to overflow branch
		test	quadr, 0x1					; if (quadr & 0x1)
		jnz		.cot						;     then compute cot value
;---[Computing tan value]------------------
		movap#x	base, value					; base = value
		muls#x	value, value				; value *= value
		movap#x	scale, value
		muls#x	scale, base					; scale = value * base
		movint	sign, sreg, x				; sign = sign bit
		lea		table, [tant]				; set pointer to array of coefficients
if x eq s
	SINGLE16	table, value, x				; compute single polynomial value
else if x eq d
	SINGLE32	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		orp#x	temp1, sign					; set correct sign to the result
		movap#x	result, temp1				; return sign * Tan (Abs (value))
		ret
;---[Computing cot value]------------------
.cot:	xor		sreg, sval					; sign = -sign
		movap#x	base, value					; base = value
		muls#x	value, value				; value *= value
		movap#x	scale, value
		muls#x	scale, base					; scale = value * base
		movint	sign, sreg, x				; sign = sign bit
		lea		table, [tant]				; set pointer to array of coefficients
if x eq s
	SINGLE16	table, value, x				; compute single polynomial value
else if x eq d
	SINGLE32	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		orp#x	temp1, sign					; set correct sign to the result
		movap#x	result, one
		divs#x	result, temp1				; return sign * 1.0 / Tan (Abs (value))
		ret
;---[Overflow branch]----------------------
.ovrfl:	initreg	result, treg, nanval		; return NaN
		ret
}
TanQ_flt32:	TAN		edx, ecx, s
TanQ_flt64:	TAN		rdx, rcx, d
Tan_flt32:	TRIG1	TanQ_flt32, r8d, r9d, ecx, edx, eax, edx, edi, esi, s
Tan_flt64:	TRIG1	TanQ_flt64, r8, r9, rcx, rdx, rax, rdx, rdi, rsi, d

;******************************************************************************;
;       Inverse trigonometric functions                                        ;
;******************************************************************************;

;==============================================================================;
;       Inverse sine                                                           ;
;==============================================================================;
macro	ASIN	sval, sreg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; sine value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
scale	equ		xmm9						; scale value
base	equ		xmm10						; base value
sign	equ		xmm11						; sign bit
shift	equ		xmm12						; shift value
result	equ		xmm0						; result register
mask	equ		temp1						; data mask
phalf	equ		temp2						; +0.5
mhalf	equ		temp3						; -0.5
one		equ		temp4						; +1.0
table	equ		treg						; pointer to array of coefficients
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
nanval	= PNAN_FLT32						; +NaN
phlfval	= PHALF_FLT32						; +0.5
mhlfval	= MHALF_FLT32						; -0.5
oneval	= PONE_FLT32						; +1.0
pi2val	= PI_HALF_FLT32						; +Pi/2
asint	= asin_flt32						; pointer to array of asin coefficients
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
nanval	= PNAN_FLT64						; +NaN
phlfval	= PHALF_FLT64						; +0.5
mhlfval	= MHALF_FLT64						; -0.5
oneval	= PONE_FLT64						; +1.0
pi2val	= PI_HALF_FLT64						; +Pi/2
asint	= asin_flt64						; pointer to array of asin coefficients
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	phalf, treg, phlfval		; phalf = +0.5
		initreg	mhalf, treg, mhlfval		; mhalf = -0.5
		initreg	one, treg, oneval			; one = 1.0
		initreg	shift, treg, pi2val			; shift = Pi/2
		mov		sval, smask					; set sign mask
		movint	sreg, value, x				; sreg = value
		and		sreg, sval					; extract sign bit from value
		andp#x	value, mask					; value = Abs (value)
		comis#x	value, one					; if (value > 1.0)
		ja		.ovrfl						;     then go to overflow branch
		comis#x	value, phalf				; if (value > 0.5)
		ja		.else						;     then go to else branch
;---[if value <= 0.5]----------------------
		movap#x	base, value					; base = value
		muls#x	value, value				; value *= value
		movap#x	scale, value
		muls#x	scale, base					; scale = value * base
		movint	sign, sreg, x				; sign = sign bit
		lea		table, [asint]				; set pointer to array of coefficients
if x eq s
	SINGLE16	table, value, x				; compute single polynomial value
else if x eq d
	SINGLE32	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		orp#x	temp1, sign					; set correct sign to the result
		movap#x	result, temp1				; return sign * ArcSin (Abs (value))
		ret
;---[else]---------------------------------
.else:	xor		sreg, sval					; sign = -sign
		subs#x	value, one					; value -= 1.0
		muls#x	value, mhalf				; value *= -0.5
		sqrts#x	base, value					; base = sqrt (value)
		movap#x	scale, value
		muls#x	scale, base					; scale = value * base
		movint	sign, sreg, x				; sign = sign bit
		lea		table, [asint]				; set pointer to array of coefficients
if x eq s
	SINGLE16	table, value, x				; compute single polynomial value
else if x eq d
	SINGLE32	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		adds#x	temp1, temp1				; temp1 += temp1
		subs#x	temp1, shift				; temp1 -= Pi/2
		xorp#x	temp1, sign					; set correct sign to the result
		movap#x	result, temp1				; return sign * (ArcSin (Abs (value)) - Pi/2)
		ret
;---[Overflow branch]----------------------
.ovrfl:	initreg	result, treg, nanval		; return NaN
		ret
}
ArcSin_flt32:	ASIN	edx, ecx, s
ArcSin_flt64:	ASIN	rdx, rcx, d

;==============================================================================;
;       Inverse cosine                                                         ;
;==============================================================================;
macro	ACOS	sval, sreg, shreg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; cosine value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
scale	equ		xmm9						; scale value
base	equ		xmm10						; base value
sign	equ		xmm11						; sign bit
shift	equ		xmm12						; shift value
result	equ		xmm0						; result register
mask	equ		temp1						; data mask
phalf	equ		temp2						; +0.5
mhalf	equ		temp3						; -0.5
one		equ		temp4						; +1.0
table	equ		treg						; pointer to array of coefficients
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
nanval	= PNAN_FLT32						; +NaN
phlfval	= PHALF_FLT32						; +0.5
mhlfval	= MHALF_FLT32						; -0.5
oneval	= PONE_FLT32						; +1.0
pi2val	= PI_HALF_FLT32						; +Pi/2
pival	= PPI_FLT32							; +Pi
asint	= asin_flt32						; pointer to array of asin coefficients
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
nanval	= PNAN_FLT64						; +NaN
phlfval	= PHALF_FLT64						; +0.5
mhlfval	= MHALF_FLT64						; -0.5
oneval	= PONE_FLT64						; +1.0
pi2val	= PI_HALF_FLT64						; +Pi/2
pival	= PPI_FLT64							; +Pi
asint	= asin_flt64						; pointer to array of asin coefficients
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	phalf, treg, phlfval		; phalf = +0.5
		initreg	mhalf, treg, mhlfval		; mhalf = -0.5
		initreg	one, treg, oneval			; one = 1.0
		mov		sval, smask					; set sign mask
		movint	sreg, value, x				; sreg = value
		and		sreg, sval					; extract sign bit from value
		andp#x	value, mask					; value = Abs (value)
		comis#x	value, one					; if (value > 1.0)
		ja		.ovrfl						;     then go to overflow branch
		comis#x	value, phalf				; if (value > 0.5)
		ja		.else						;     then go to else branch
;---[if value <= 0.5]----------------------
		xor		sreg, sval					; sign = -sign
		mov		shreg, pi2val				; shreg = Pi/2
		movap#x	base, value					; base = value
		muls#x	value, value				; value *= value
		movap#x	scale, value
		muls#x	scale, base					; scale = value * base
		movint	sign, sreg, x				; sign = sign bit
		movint	shift, shreg, x				; shift = shift value
		lea		table, [asint]				; set pointer to array of coefficients
if x eq s
	SINGLE16	table, value, x				; compute single polynomial value
else if x eq d
	SINGLE32	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		orp#x	temp1, sign					; set correct sign to the result
		adds#x	temp1, shift
		movap#x	result, temp1				; return sign * ArcSin (Abs (value)) + shift
		ret
;---[else]---------------------------------
.else:	mov		sval, pival
		xor		shreg, shreg				; shreg = 0
		test	sreg, sreg					; if (sreg)
		cmovnz	shreg, sval					;     shreg = Pi
		subs#x	value, one					; value -= 1.0
		muls#x	value, mhalf				; value *= -0.5
		sqrts#x	base, value					; base = sqrt (value)
		movap#x	scale, value
		muls#x	scale, base					; scale = value * base
		movint	sign, sreg, x				; sign = sign bit
		movint	shift, shreg, x				; shift = shift value
		lea		table, [asint]				; set pointer to array of coefficients
if x eq s
	SINGLE16	table, value, x				; compute single polynomial value
else if x eq d
	SINGLE32	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		adds#x	temp1, temp1				; temp1 += temp1
		orp#x	temp1, sign					; set correct sign to the result
		adds#x	temp1, shift
		movap#x	result, temp1				; return sign * ArcSin (Abs (value)) + shift
		ret
;---[Overflow branch]----------------------
.ovrfl:	initreg	result, treg, nanval		; return NaN
		ret
}
ArcCos_flt32:	ACOS	edx, ecx, edi, s
ArcCos_flt64:	ACOS	rdx, rcx, rdi, d

;==============================================================================;
;       Inverse tangent                                                        ;
;==============================================================================;
macro	ATAN	sval, sreg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; tangent value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
scale	equ		xmm9						; scale value
base	equ		xmm10						; base value
sign	equ		xmm11						; sign bit
shift	equ		xmm12						; shift value
result	equ		xmm0						; result register
mask	equ		temp1						; data mask
one		equ		temp2						; +1.0
table	equ		treg						; pointer to array of coefficients
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
oneval	= PONE_FLT32						; +1.0
pi2val	= PI_HALF_FLT32						; +Pi/2
atant	= atan_flt32						; pointer to array of atan coefficients
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
oneval	= PONE_FLT64						; +1.0
pi2val	= PI_HALF_FLT64						; +Pi/2
atant	= atan_flt64						; pointer to array of atan coefficients
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	one, treg, oneval			; one = 1.0
		initreg	shift, treg, pi2val			; shift = Pi/2
		mov		sval, smask					; set sign mask
		movint	sreg, value, x				; sreg = value
		and		sreg, sval					; extract sign bit from value
		andp#x	value, mask					; value = Abs (value)
		comis#x	value, one					; if (value > 1.0)
		ja		.else						;     then go to else branch
;---[if value <= 1.0]----------------------
		movap#x	scale, one					; scale = 1.0
		movap#x	base, value					; base = value
		muls#x	value, value
		adds#x	value, one					; value = 1.0 + value * value
		divs#x	scale, value				; scale = 1.0 / (1.0 + value * value)
		muls#x	base, scale					; base = value / (1.0 + value * value)
		movap#x	value, one
		subs#x	value, scale				; value = 1.0 - 1.0 / (1.0 + value * value)
		movap#x	scale, value
		muls#x	scale, base					; scale = value * base
		movint	sign, sreg, x				; sign = sign bit
		lea		table, [atant]				; set pointer to array of coefficients
if x eq s
	SINGLE32	table, value, x				; compute single polynomial value
else if x eq d
	SINGLE64	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		orp#x	temp1, sign					; set correct sign to the result
		movap#x	result, temp1				; return sign * ArcTan (Abs (value))
		ret
;---[else]---------------------------------
.else:	xor		sreg, sval					; sign = -sign
		movap#x	scale, one					; scale = 1.0
		movap#x	base, value					; base = value
		muls#x	value, value
		adds#x	value, one					; value = 1.0 + value * value
		divs#x	scale, value				; scale = 1.0 / (1.0 + value * value)
		muls#x	base, scale					; base = value / (1.0 + value * value)
		movap#x	value, scale				; value = 1.0 / (1.0 + value * value)
		muls#x	scale, base					; scale = value * base
		movint	sign, sreg, x				; sign = sign bit
		lea		table, [atant]				; set pointer to array of coefficients
if x eq s
	SINGLE32	table, value, x				; compute single polynomial value
else if x eq d
	SINGLE64	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		subs#x	temp1, shift				; temp1 -= Pi/2
		xorp#x	temp1, sign					; set correct sign to the result
		movap#x	result, temp1				; return sign * (ArcTan (Abs (value)) - Pi/2)
		ret
}
ArcTan_flt32:	ATAN	edx, ecx, s
ArcTan_flt64:	ATAN	rdx, rcx, d
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ATAN2	sval, sreg, x
{
;---[Parameters]---------------------------
sin		equ		xmm0						; sine value
cos		equ		xmm1						; cosine value
;---[Internal variables]-------------------
zero	equ		xmm2						; 0.0
result	equ		xmm0						; result register
stack	equ		rsp							; stack pointer
s_shift	equ		stack + 0 * 8				; stack position of "shift" variable
if x eq s
ArcTan	= ArcTan_flt32						; Inverse tangent function
smask	= SMASK_FLT32						; sign mask
pival	= PPI_FLT32							; +Pi
else if x eq d
ArcTan	= ArcTan_flt64						; Inverse tangent function
smask	= SMASK_FLT64						; sign mask
pival	= PPI_FLT64							; +Pi
end if
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		xorps	zero, zero					; zero = 0
		mov		sval, pival
		xor		sreg, sreg					; sreg = 0
		comis#x	cos, zero					; if (cos < 0.0)
		cmovb	sreg, sval					;     sreg = Pi
		mov		sval, smask
		xor		sval, sreg
		comis#x	sin, zero					; if (sin < 0.0)
		cmovb	sreg, sval					;     sreg = -sreg
		mov		[s_shift], sreg				; save "shift" variable into the stack
		divs#x	sin, cos
		call	ArcTan
		adds#x	result, [s_shift]			; result = ArcTan (sin / cos) + shift
		add		stack, space				; restoring back the stack pointer
		ret
}
ArcTan2_flt32:	ATAN2	edx, ecx, s
ArcTan2_flt64:	ATAN2	rdx, rcx, d

;******************************************************************************;
;       Hyperbolic functions                                                   ;
;******************************************************************************;
macro	EXP2		mant, exp1, exp2, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; exponent value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
iscale1	equ		xmm9						; iscale value #1
iscale2	equ		xmm10						; iscale value #2
scale	equ		xmm11						; scale value
base1	equ		xmm12						; base value #1
base2	equ		xmm13						; base value #2
shift1	equ		xmm14						; shift value #1
shift2	equ		xmm15						; shift value #2
result1	equ		xmm0						; result register #1
result2	equ		xmm1						; result register #2
table	equ		treg						; pointer to array of coefficients
stack	equ		rsp							; stack pointer
fpart	equ		stack - 1 * 8				; stack position of "fpart" variable
ipart	equ		stack - 2 * 8				; stack position of "ipart" variable
emax	equ		stack - 3 * 8				; stack position of "emax" variable
magic	equ		stack - 4 * 8				; stack position of "magic" variable
if x eq s
infval	= PINF_FLT32						; +Inf
oneval	= MONE_FLT32						; -1.0
logval	= LOGE_2_FLT32						; ln(2)
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= EBIAS_FLT32						; exponent bias
rmagic	= RMAGIC_FLT32						; magic number to round value to int
expt	= exp2_flt32						; pointer to array of exp coefficients
else if x eq d
infval	= PINF_FLT64						; +Inf
oneval	= MONE_FLT64						; -1.0
logval	= LOGE_2_FLT64						; ln(2)
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= EBIAS_FLT64						; exponent bias
rmagic	= RMAGIC_FLT64						; magic number to round value to int
expt	= exp2_flt64						; pointer to array of exp coefficients
end if
maxpow	= bias								; max power of 2
;---[Compute integer and fraction parts]---
		mov		mant, rmagic
		movs#x	[fpart], value
		mov		word [emax], maxpow + 1
		mov		[magic], mant
if x eq s
		fld		dword [fpart]				; load value into FPU stack
		fldl2e								; load logarithm value
		fmulp	st1, st0					; multiply value and logarithm
		fild 	word [emax]					; load max exponent value
		fcomip	st0, st1					; if (emax <= value * log2(E))
		jbe		.ovrfl						;     then go to overflow branch
		fld		st0
		fadd	dword [magic]
		fsub	dword [magic]
		fsub	st1, st0
		fistp	dword [ipart]				; ipart = int (value * log2(E))
		fstp	dword [fpart]				; fpart = frac (value * log2(E))
else if x eq d
		fld		qword [fpart]				; load value into FPU stack
		fldl2e								; load logarithm value
		fmulp	st1, st0					; multiply value and logarithm
		fild 	word [emax]					; load max exponent value
		fcomip	st0, st1					; if (emax <= value * log2(E))
		jbe		.ovrfl						;     then go to overflow branch
		fld		st0
		fadd	qword [magic]
		fsub	qword [magic]
		fsub	st1, st0
		fistp	qword [ipart]				; ipart = int (value * log2(E))
		fstp	qword [fpart]				; fpart = frac (value * log2(E))
end if
;---[Compute exponent]---------------------
		initreg	shift1, treg, oneval		; shift1 = -1.0
		initreg	shift2, treg, oneval		; shift2 = -1.0
		initreg	scale, treg, logval			; scale = ln(2)
		mov		exp1, [ipart]				; exp1 = ipart
		mov		exp2, [ipart]
		neg		exp2						; exp2 = -ipart
		add		exp1, bias					; exp1 += bias
		add		exp2, bias					; exp2 += bias
		shl		exp1, mbits					; exp1 <<= mbits
		shl		exp2, mbits					; exp2 <<= mbits
		movint	iscale1, exp1, x			; reinterpret exp1 as floating-point value
		movint	iscale2, exp2, x			; reinterpret exp2 as floating-point value
		adds#x	shift1, iscale1				; shift1 += iscale1
		adds#x	shift2, iscale2				; shift2 += iscale2
		movs#x	value, [fpart]				; value = fpart
		muls#x	value, scale				; value *= ln(2)
		movap#x	scale, value
		muls#x	scale, scale				; scale = value * value
		xorp#x	base2, base2
		movap#x	base1, value				; base1 = +value
		subs#x	base2, value				; base2 = -value
		lea		table, [expt]				; set pointer to array of coefficients
if x eq s
		PAIR8	table, value, x				; compute pair polynomial value
else if x eq d
		PAIR16	table, value, x				; compute pair polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base1				; temp1 = base1 + scale * temp1
		muls#x	temp2, scale
		adds#x	temp2, base2				; temp2 = base2 + scale * temp2
		muls#x	temp1, iscale1
		adds#x	temp1, shift1				; temp1 = temp1 * iscale1 + shift1
		muls#x	temp2, iscale2
		adds#x	temp2, shift2				; temp2 = temp2 * iscale2 + shift2
		movap#x	result1, temp1
		movap#x	result2, temp2				; return {temp1, temp2}
		ret
;---[Overflow branch]----------------------
if x eq s
.ovrfl:	fstp	dword [fpart]				; pop value frop FPU stack
else if x eq d
.ovrfl:	fstp	qword [fpart]				; pop value frop FPU stack
end if
		initreg	result1, treg, infval
		xorp#x	result2, result2			; return {Inf, 0}
		ret
}
ExpCore_flt32:	EXP2	edx, ecx, eax, s
ExpCore_flt64:	EXP2	rdx, rcx, rax, d

;==============================================================================;
;       Sine                                                                   ;
;==============================================================================;
macro	SINH	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; argument value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
scale	equ		xmm3						; scale value
base	equ		xmm4						; base value
sign	equ		xmm5						; sign bit
result	equ		xmm0						; result register
res1	equ		xmm0						; result register #1
res2	equ		xmm1						; result register #2
mask	equ		temp1						; data mask
pi		equ		temp2						; Pi/4
half	equ		scale						; 0.5
table	equ		treg						; pointer to array of coefficients
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
if x eq s
Exp2	= ExpCore_flt32						; exp pair function
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
halfval	= PHALF_FLT32						; +0.5
pi4val	= PI_FOUR_FLT32						; +Pi/4
sint	= sinh_flt32						; pointer to array of sine coefficients
else if x eq d
Exp2	= ExpCore_flt64						; exp pair function
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
halfval	= PHALF_FLT64						; +0.5
pi4val	= PI_FOUR_FLT64						; +Pi/4
sint	= sinh_flt64						; pointer to array of sine coefficients
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		initreg	sign, treg, smask			; sign = smaks
		initreg	mask, treg, dmask			; mask = dmask
		initreg	pi, treg, pi4val			; pi = Pi/4
		andp#x	sign, value					; extract sign bit from value
		andp#x	value, mask					; value = Abs (value)
		comis#x	value, pi					; if (value > Pi/4)
		ja		.else						;     then go to else branch
;---[if value <= Pi/4]---------------------
		movap#x	base, value					; base = value
		muls#x	value, value				; value *= value
		movap#x	scale, value
		muls#x	scale, base					; scale = value * base
		lea		table, [sint]				; set pointer to array of coefficients
if x eq s
		SINGLE4	table, value, x				; compute single polynomial value
else if x eq d
		SINGLE8	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		orp#x	temp1, sign					; set correct sign to the result
		movap#x	result, temp1				; return sign * SinH (Abs (value))
		ret
;---[else]---------------------------------
.else:	sub		stack, space				; reserving stack size for local vars
		movap#x	[s_sign], sign				; save "sign" variable into the stack
		call	Exp2						; result = Exp2 (value)
		initreg	half, treg, halfval			; half = 0.5
		subs#x	res1, res2
		muls#x	res1, half
		orp#x	res1, [s_sign]				; return sign * 0.5 * (res1 - res2)
		add		stack, space				; restoring back the stack pointer
		ret
}
SinH_flt32:	SINH	s
SinH_flt64:	SINH	d

;==============================================================================;
;       Cosine                                                                 ;
;==============================================================================;
macro	COSH	shiftval, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; argument value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
scale	equ		xmm3						; scale value
base	equ		xmm4						; base value
shift	equ		xmm5						; shift value
result	equ		xmm0						; result register
res1	equ		xmm0						; result register #1
res2	equ		xmm1						; result register #2
mask	equ		temp1						; data mask
pi		equ		temp2						; Pi/4
half	equ		scale						; 0.5
table	equ		treg						; pointer to array of coefficients
if x eq s
Exp2	= ExpCore_flt32						; exp pair function
dmask	= DMASK_FLT32						; data mask
halfval	= PHALF_FLT32						; +0.5
pi4val	= PI_FOUR_FLT32						; +Pi/4
cost	= cosh_flt32						; pointer to array of cosine coefficients
else if x eq d
Exp2	= ExpCore_flt64						; exp pair function
dmask	= DMASK_FLT64						; data mask
halfval	= PHALF_FLT64						; +0.5
pi4val	= PI_FOUR_FLT64						; +Pi/4
cost	= cosh_flt64						; pointer to array of cosine coefficients
end if
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	pi, treg, pi4val			; pi = Pi/4
		initreg	half, treg, halfval			; half = -0.5
		initreg	shift, treg, shiftval		; shift = 1.0
		andp#x	value, mask					; value = Abs (value)
		comis#x	value, pi					; if (value > Pi/4)
		ja		.else						;     then go to else branch
;---[if value <= Pi/4]---------------------
		movap#x	base, half					; base = 0.5
		muls#x	value, value				; value *= value
		movap#x	scale, value
		muls#x	scale, scale				; scale = value * value
		muls#x	base, value					; base *= value
		lea		table, [cost]				; set pointer to array of coefficients
if x eq s
		SINGLE4	table, value, x				; compute single polynomial value
else if x eq d
		SINGLE8	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		adds#x	temp1, shift				; return CosH (Abs (value)) - 1 + shift
		movap#x	result, temp1				; return sign * CosH (Abs (value))
		ret
;---[else]---------------------------------
.else:	call	Exp2						; result = Exp2 (value)
		initreg	half, treg, halfval			; half = 0.5
	initreg	shift, treg, shiftval			; shift = 1.0
		adds#x	res1, res2
		muls#x	res1, half
		adds#x	res1, shift					; return 0.5 * (res1 + res2) + shift
		ret
}
CosH_flt32:		COSH	PONE_FLT32, s
CosH_flt64:		COSH	PONE_FLT64, d
CosHm1_flt32:	COSH	PZERO_FLT32, s
CosHm1_flt64:	COSH	PZERO_FLT64, d

;==============================================================================;
;       Tangent                                                                ;
;==============================================================================;
macro	TANH	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; argument value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
temp4	equ		xmm4						; temporary register #4
temp5	equ		xmm5						; temporary register #5
temp6	equ		xmm6						; temporary register #6
temp7	equ		xmm7						; temporary register #7
temp8	equ		xmm8						; temporary register #8
scale	equ		xmm9						; scale value
base	equ		xmm10						; base value
sign	equ		xmm11						; sign bit
result	equ		xmm0						; result register
mask	equ		temp1						; data mask
max		equ		temp2						; max value
pi		equ		temp3						; Pi/4
two		equ		scale						; 2.0
table	equ		treg						; pointer to array of coefficients
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
if x eq s
Expm1	= ExpEm1_flt32						; exp function
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
oneval	= PONE_FLT32						; +1.0
twoval	= PTWO_FLT32						; +2.0
pi4val	= PI_FOUR_FLT32						; +Pi/4
maxval	= 0x41200000						; max value
tant	= tanh_flt32						; pointer to array of tangent coefficients
else if x eq d
Expm1	= ExpEm1_flt64						; exp function
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
oneval	= PONE_FLT64						; +1.0
twoval	= PTWO_FLT64						; +2.0
pi4val	= PI_FOUR_FLT64						; +Pi/4
maxval	= 0x4034000000000000				; max value
tant	= tanh_flt64						; pointer to array of tangent coefficients
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		initreg	sign, treg, smask			; sign = smaks
		initreg	mask, treg, dmask			; mask = dmask
		initreg	max, treg, maxval			; max = maxval
		initreg	pi, treg, pi4val			; pi = Pi/4
		andp#x	sign, value					; extract sign bit from value
		andp#x	value, mask					; value = Abs (value)
		comis#x	value, max					; if (value > max)
		ja		.ovrfl						;     then go to overflow branch
		comis#x	value, pi					; if (value > Pi/4)
		ja		.else						;     then go to else branch
;---[if value <= Pi/4]---------------------
		movap#x	base, value					; base = value
		muls#x	value, value				; value *= value
		movap#x	scale, value
		muls#x	scale, base					; scale = value * base
		lea		table, [tant]				; set pointer to array of coefficients
if x eq s
	SINGLE16	table, value, x				; compute single polynomial value
else if x eq d
	SINGLE32	table, value, x				; compute single polynomial value
end if
		muls#x	temp1, scale
		adds#x	temp1, base					; temp1 = base + scale * temp1
		orp#x	temp1, sign					; set correct sign to the result
		movap#x	result, temp1				; return sign * TanH (Abs (value))
		ret
;---[else]---------------------------------
.else:	sub		stack, space				; reserving stack size for local vars
		movap#x	[s_sign], sign				; save "sign" variable into the stack
		initreg	two, treg, twoval			; two = 2.0
		muls#x	value, two
		call	Expm1						; result = Expm1 (2 * value)
		initreg	two, treg, twoval			; two = 2.0
		adds#x	two, result
		divs#x	result, two
		orp#x	result, [s_sign]			; return sign * result / (result + 2.0)
		add		stack, space				; restoring back the stack pointer
		ret
;---[Overflow branch]----------------------
.ovrfl:	initreg	result, treg, oneval
		orp#x	result, sign				; return sign * 1.0
		ret
}
TanH_flt32:	TANH	s
TanH_flt64:	TANH	d

;******************************************************************************;
;       Inverse hyperbolic functions                                           ;
;******************************************************************************;

;==============================================================================;
;       Inverse sine                                                           ;
;==============================================================================;
macro	ASINH	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; hyperbolic sine value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
sign	equ		xmm1						; sign bit
mask	equ		xmm2						; data mask
one		equ		xmm3						; +1.0
barier	equ		xmm4						; barier value
origin	equ		xmm5						; origin value
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
if x eq s
Logp1	= LogEp1_flt32						; log function
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
oneval	= PONE_FLT32						; +1.0
barval	= 0x5F800000						; 2^+64
else if x eq d
Logp1	= LogEp1_flt64						; log function
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
oneval	= PONE_FLT64						; +1.0
barval	= 0x5FF0000000000000				; 2^+512
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		initreg	sign, treg, smask			; sign = smaks
		initreg	mask, treg, dmask			; mask = dmask
		initreg	one, treg, oneval			; one = 1.0
		initreg	barier, treg, barval		; barier = barval
		andp#x	sign, value					; extract sign bit from value
		andp#x	value, mask					; value = Abs (value)
		movap#x	origin, value				; origin = value
;---[Computing sqrt value]-----------------
		comis#x	value, barier				; if (value >= barier)
		jae		.over						;     then go to overflow prevention branch
		muls#x	value, value
		adds#x	value, one					; value = value * value + one
		sqrts#x	value, value				; value = sqrt (value)
;---[Computing logarithm value]------------
		adds#x	one, value					; one = 1.0 + hypot (value, 1.0)
		movap#x	value, origin
		divs#x	value, one					; value = origin / (1.0 + hypot (value, 1.0))
		muls#x	value, origin
		adds#x	value, origin				; value = value * origin + origin
		sub		stack, space				; reserving stack size for local vars
		movap#x	[s_sign], sign				; save "sign" variable into the stack
		call	Logp1						; value = Logp1 (value)
		orp#x	value, [s_sign]				; return sign * Logp1 (value)
		add		stack, space				; restoring back the stack pointer
		ret
;---[Overflow prevention branch]-----------
.over:	adds#x	value, value				; value = 2 * value
		jmp		Logp1						; return Logp1 (value)
}
ArcSinH_flt32:	ASINH	s
ArcSinH_flt64:	ASINH	d

;==============================================================================;
;       Inverse cosine                                                         ;
;==============================================================================;
macro	ACOSH	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; hyperbolic sine value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
one		equ		xmm1						; +1.0
barier	equ		xmm2						; barier value
origin	equ		xmm3						; origin value
if x eq s
Logp1	= LogEp1_flt32						; log function
nanval	= PNAN_FLT32						; +NaN
oneval	= PONE_FLT32						; +1.0
barval	= 0x5F800000						; 2^+64
else if x eq d
Logp1	= LogEp1_flt64						; log function
nanval	= PNAN_FLT64						; +NaN
oneval	= PONE_FLT64						; +1.0
barval	= 0x5FF0000000000000				; 2^+512
end if
;------------------------------------------
		initreg	one, treg, oneval			; one = 1.0
		initreg	barier, treg, barval		; barier = barval
		comis#x	value, one					; if (value < 1.0)
		jb		.error						;     then go to error branch
		movap#x	origin, value				; origin = value
;---[Computing sqrt value]-----------------
		comis#x	value, barier				; if (value >= barier)
		jae		.over						;     then go to overflow prevention branch
		movap#x	barier, value
		adds#x	value, one
		subs#x	barier, one
		muls#x	value, barier				; value = (value + one) * (value - one)
		sqrts#x	value, value				; value = sqrt (value)
;---[Computing logarithm value]------------
		subs#x	origin, one					; origin = origin - 1.0
		adds#x	value, origin				; value = value + origin
		jmp		Logp1						; return Logp1 (value)
;---[Overflow prevention branch]-----------
.over:	adds#x	value, value				; value = 2 * value
		jmp		Logp1						; return Logp1 (value)
;---[Error branch]-------------------------
.error:	initreg	value, treg, nanval			; return NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ACOSH1P		x
{
;---[Parameters]---------------------------
value	equ		xmm0						; hyperbolic sine value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
two		equ		xmm1						; +2.0
barier	equ		xmm2						; barier value
origin	equ		xmm3						; origin value
zero	equ		origin						; 0.0
if x eq s
Logp1	= LogEp1_flt32						; log function
nanval	= PNAN_FLT32						; +NaN
twoval	= PTWO_FLT32						; +2.0
barval	= 0x5F800000						; 2^+64
else if x eq d
Logp1	= LogEp1_flt64						; log function
nanval	= PNAN_FLT64						; +NaN
twoval	= PTWO_FLT64						; +2.0
barval	= 0x5FF0000000000000				; 2^+512
end if
;------------------------------------------
		xorp#x	zero, zero					; zero = 0.0
		initreg	barier, treg, barval		; barier = barval
		initreg	two, treg, twoval			; two = 2.0
		comis#x	value, zero					; if (value < 0.0)
		jb		.error						;     then go to error branch
		movap#x	origin, value				; origin = value
;---[Computing sqrt value]-----------------
		comis#x	value, barier				; if (value >= barier)
		jae		.over						;     then go to overflow prevention branch
		movap#x	barier, value
		muls#x	value, value
		muls#x	barier, two
		adds#x	value, barier				; value = value * value + value * 2.0
		sqrts#x	value, value				; value = sqrt (value)
;---[Computing logarithm value]------------
		adds#x	value, origin				; value = value + origin
		jmp		Logp1						; return Logp1 (value)
;---[Overflow prevention branch]-----------
.over:	adds#x	value, value				; value = 2 * value
		jmp		Logp1						; return Logp1 (value)
;---[Error branch]-------------------------
.error:	initreg	value, treg, nanval			; return NaN
		ret
}
ArcCosH_flt32:		ACOSH	s
ArcCosH_flt64:		ACOSH	d
ArcCosHp1_flt32:	ACOSH1P	s
ArcCosHp1_flt64:	ACOSH1P	d

;==============================================================================;
;       Inverse tangent                                                        ;
;==============================================================================;
macro	ATANH	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; hyperbolic sine value
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
sign	equ		xmm1						; sign bit
mask	equ		xmm2						; data mask
one		equ		xmm3						; +1.0
half	equ		xmm4						; +0.5
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
if x eq s
Logp1	= LogEp1_flt32						; log function
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
oneval	= PONE_FLT32						; +1.0
halfval	= PHALF_FLT32						; +0.5
else if x eq d
Logp1	= LogEp1_flt64						; log function
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
oneval	= PONE_FLT64						; +1.0
halfval	= PHALF_FLT64						; +0.5
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		initreg	sign, treg, smask			; sign = smaks
		initreg	mask, treg, dmask			; mask = dmask
		initreg	one, treg, oneval			; one = 1.0
		andp#x	sign, value					; extract sign bit from value
		andp#x	value, mask					; value = Abs (value)
;---[Computing logarithm value]------------
		subs#x	one, value
		adds#x	value, value
		divs#x	value, one					; value = 2 * value / (1.0 - value)
		sub		stack, space				; reserving stack size for local vars
		movap#x	[s_sign], sign				; save "sign" variable into the stack
		call	Logp1						; value = Logp1 (value)
		initreg	half, treg, halfval			; half = 0.5
		muls#x	value, half
		orp#x	value, [s_sign]				; return sign * 0.5 * Logp1 (value)
		add		stack, space				; restoring back the stack pointer
		ret
}
ArcTanH_flt32:	ATANH	s
ArcTanH_flt64:	ATANH	d

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
		movap#x	temp, value
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
normval	= NORM_FLT32						; min normal value
infval	= PINF_FLT32						; +Inf
else if x eq q
dmask	= DMASK_FLT64						; data mask
normval	= NORM_FLT64						; min normal value
infval	= PINF_FLT64						; +Inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		mov		mask, dmask					; mask = dmask
		mov		norm, normval				; norm = normval
		mov		inf, infval - normval		; inf = infval - normval
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
normval	= NORM_FLT32						; min normal value
else if x eq q
dmask	= DMASK_FLT64						; data mask
normval	= NORM_FLT64						; min normal value
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		mov		mask, dmask					; mask = dmask
		mov		norm, normval				; norm = normval
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
infval	= PINF_FLT32						; +Inf
else if x eq q
dmask	= DMASK_FLT64						; data mask
infval	= PINF_FLT64						; +Inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		mov		mask, dmask					; mask = dmask
		mov		inf, infval					; inf = infval
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
infval	= PINF_FLT32						; +Inf
else if x eq q
dmask	= DMASK_FLT64						; data mask
infval	= PINF_FLT64						; +Inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		mov		mask, dmask					; mask = dmask
		mov		inf, infval					; inf = infval
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
infval	= PINF_FLT32						; +Inf
else if x eq q
dmask	= DMASK_FLT64						; data mask
infval	= PINF_FLT64						; +Inf
end if
;------------------------------------------
		mov#x	temp, value					; temp = bit snapshot of value
		mov		mask, dmask					; mask = dmask
		mov		inf, infval					; inf = infval
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

;******************************************************************************;
;       Power of 10                                                            ;
;******************************************************************************;
align 16
ten_int			dq	1						; 10^00
				dq	10						; 10^01
				dq	100						; 10^02
				dq	1000					; 10^03
				dq	10000					; 10^04
				dq	100000					; 10^05
				dq	1000000					; 10^06
				dq	10000000				; 10^07
				dq	100000000				; 10^08
				dq	1000000000				; 10^09
				dq	10000000000				; 10^10
				dq	100000000000			; 10^11
				dq	1000000000000			; 10^12
				dq	10000000000000			; 10^13
				dq	100000000000000			; 10^14
				dq	1000000000000000		; 10^15
				dq	10000000000000000		; 10^16
				dq	100000000000000000		; 10^17
				dq	1000000000000000000		; 10^18
				dq	10000000000000000000	; 10^19
				dq	0						; 0 (overflow value)

;******************************************************************************;
;       flt32_t consts                                                         ;
;******************************************************************************;

;==============================================================================;
;       Coefficients to compute exp(x) for flt32_t type                        ;
;==============================================================================;
align 16
exp_flt32		dd	0x3638EF1D				; 1 / 9!
				dd	0x3C088889				; 1 / 5!
				dd	0x39500D01				; 1 / 7!
				dd	0x3E2AAAAB				; 1 / 3!
				dd	0x37D00D01				; 1 / 8!
				dd	0x3D2AAAAB				; 1 / 4!
				dd	0x3AB60B61				; 1 / 6!
				dd	0x3F000000				; 1 / 2!

;==============================================================================;
;       Coefficients to compute log(x) for flt32_t type                        ;
;==============================================================================;
align 16
log_flt32		dd	0x3D70F0F1				; +1 / 17
				dd	0x3DE38E39				; +1 / 09
				dd	0x3D9D89D9				; +1 / 13
				dd	0x3E4CCCCD				; +1 / 05
				dd	0x3D888889				; +1 / 15
				dd	0x3E124925				; +1 / 07
				dd	0x3DBA2E8C				; +1 / 11
				dd	0x3EAAAAAB				; +1 / 03
				dd	0xBD800000				; -1 / 16
				dd	0xBE000000				; -1 / 08
				dd	0xBDAAAAAB				; -1 / 12
				dd	0xBE800000				; -1 / 04
				dd	0xBD924925				; -1 / 14
				dd	0xBE2AAAAB				; -1 / 06
				dd	0xBDCCCCCD				; -1 / 10
				dd	0xBF000000				; -1 / 02

;==============================================================================;
;       Coefficients to compute log(1+x) for flt32_t type                      ;
;==============================================================================;
align 16
log1p_flt32		dd	0x3DF0F0F1				; 2 / 17
				dd	0x3E638E39				; 2 / 09
				dd	0x3E1D89D9				; 2 / 13
				dd	0x3ECCCCCD				; 2 / 05
				dd	0x3E088889				; 2 / 15
				dd	0x3E924925				; 2 / 07
				dd	0x3E3A2E8C				; 2 / 11
				dd	0x3F2AAAAB				; 2 / 03

;==============================================================================;
;       Range reduction constant for trigonometric functions                   ;
;==============================================================================;
align 16
range_flt32		dd	0x3C439041
				dd	0xDB629599
				dd	0xF534DDC0
				dd	0xFC2757D1
				dd	0x4E441529
				dd	0xA2F9836E

;==============================================================================;
;       Coefficients to compute sincos(x) for flt32_t type                     ;
;==============================================================================;
align 16
sincos_flt32	dd	0x3638EF1D				; +1 / 09!
				dd	0x3C088889				; +1 / 05!
				dd	0xB9500D01				; -1 / 07!
				dd	0xBE2AAAAB				; -1 / 03!
				dd	0xB493F27E				; -1 / 10!
				dd	0xBAB60B61				; -1 / 06!
				dd	0x37D00D01				; +1 / 08!
				dd	0x3D2AAAAB				; +1 / 04!

;==============================================================================;
;       Coefficients to compute sin(x) for flt32_t type                        ;
;==============================================================================;
align 16
sin_flt32		dd	0x3638EF1D				; +1 / 09!
				dd	0x3C088889				; +1 / 05!
				dd	0xB9500D01				; -1 / 07!
				dd	0xBE2AAAAB				; -1 / 03!

;==============================================================================;
;       Coefficients to compute cos(x) for flt32_t type                        ;
;==============================================================================;
align 16
cos_flt32		dd	0xB493F27E				; -1 / 10!
				dd	0xBAB60B61				; -1 / 06!
				dd	0x37D00D01				; +1 / 08!
				dd	0x3D2AAAAB				; +1 / 04!

;==============================================================================;
;       Coefficients to compute tan(x) for flt32_t type                        ;
;==============================================================================;
align 16
tan_flt32		dd	0x34E694CF
				dd	0x3A1AAC12
				dd	0x37858997
				dd	0x3CB327A4
				dd	0x362F796D
				dd	0x3B6B69E8
				dd	0x38CB3F0C
				dd	0x3E088889
				dd	0x358E3BF0
				dd	0x3ABED1B2
				dd	0x3824BEC7
				dd	0x3D5D0DD1
				dd	0x36D87B97
				dd	0x3C11371B
				dd	0x397ABEBC
				dd	0x3EAAAAAB

;==============================================================================;
;       Coefficients to compute arcsin(x) for flt32_t type                     ;
;==============================================================================;
align 16
asin_flt32		dd	0x3B8AF74F				; (31)!! / (32)!! / 33
				dd	0x3C3D43C4				; (15)!! / (16)!! / 17
				dd	0x3BD3431F				; (23)!! / (24)!! / 25
				dd	0x3CF8E38E				; (07)!! / (08)!! / 09
				dd	0x3BA8DD18				; (27)!! / (28)!! / 29
				dd	0x3C8E2762				; (11)!! / (12)!! / 13
				dd	0x3C09779E				; (19)!! / (20)!! / 21
				dd	0x3D99999A				; (03)!! / (04)!! / 05
				dd	0x3B98B41E				; (29)!! / (30)!! / 31
				dd	0x3C64CCCD				; (13)!! / (14)!! / 15
				dd	0x3BEF9DEA				; (21)!! / (22)!! / 23
				dd	0x3D36DB6E				; (05)!! / (06)!! / 07
				dd	0x3BBC16ED				; (25)!! / (26)!! / 27
				dd	0x3CB745D1				; (09)!! / (10)!! / 11
				dd	0x3C1FEF28				; (17)!! / (18)!! / 19
				dd	0x3E2AAAAB				; (01)!! / (02)!! / 03

;==============================================================================;
;       Coefficients to compute arctan(x) for flt32_t type                     ;
;==============================================================================;
align 16
atan_flt32		dd	0x3E1E9308				; 2^64 * (32!)^2 / (65)!
				dd	0x3E5DB96D				; 2^32 * (16!)^2 / (33)!
				dd	0x3E3668B3				; 2^48 * (24!)^2 / (49)!
				dd	0x3E995D18				; 2^16 * (08!)^2 / (17)!
				dd	0x3E293EE9				; 2^56 * (28!)^2 / (57)!
				dd	0x3E7E201B				; 2^24 * (12!)^2 / (25)!
				dd	0x3E4736D0				; 2^40 * (20!)^2 / (41)!
				dd	0x3ED00D01				; 2^08 * (04!)^2 / (09)!
				dd	0x3E23A651				; 2^60 * (30!)^2 / (61)!
				dd	0x3E6C4665				; 2^28 * (14!)^2 / (29)!
				dd	0x3E3E41D8				; 2^44 * (22!)^2 / (45)!
				dd	0x3EAE968C				; 2^12 * (06!)^2 / (13)!
				dd	0x3E2F7549				; 2^52 * (26!)^2 / (53)!
				dd	0x3E8A5F8B				; 2^20 * (10!)^2 / (21)!
				dd	0x3E519168				; 2^36 * (18!)^2 / (37)!
				dd	0x3F088889				; 2^04 * (02!)^2 / (05)!
				dd	0x3E210D54				; 2^62 * (31!)^2 / (63)!
				dd	0x3E64A738				; 2^30 * (15!)^2 / (31)!
				dd	0x3E3A358C				; 2^46 * (23!)^2 / (47)!
				dd	0x3EA2F2E9				; 2^14 * (07!)^2 / (15)!
				dd	0x3E2C449B				; 2^54 * (27!)^2 / (55)!
				dd	0x3E845B64				; 2^22 * (11!)^2 / (23)!
				dd	0x3E4C31C8				; 2^38 * (19!)^2 / (39)!
				dd	0x3EEA0EA1				; 2^06 * (03!)^2 / (07)!
				dd	0x3E26608F				; 2^58 * (29!)^2 / (59)!
				dd	0x3E74B69F				; 2^26 * (13!)^2 / (27)!
				dd	0x3E4294CB				; 2^42 * (21!)^2 / (43)!
				dd	0x3EBD2318				; 2^10 * (05!)^2 / (11)!
				dd	0x3E32D514				; 2^50 * (25!)^2 / (51)!
				dd	0x3E914AB8				; 2^18 * (09!)^2 / (19)!
				dd	0x3E5763AB				; 2^34 * (17!)^2 / (35)!
				dd	0x3F2AAAAB				; 2^02 * (01!)^2 / (03)!

;==============================================================================;
;       Coefficients to compute exp2(x) for flt32_t type                       ;
;==============================================================================;
align 16
exp2_flt32		dd	0x3638EF1D				; +1 / 9!
				dd	0x3C088889				; +1 / 5!
				dd	0x39500D01				; +1 / 7!
				dd	0x3E2AAAAB				; +1 / 3!
				dd	0x37D00D01				; +1 / 8!
				dd	0x3D2AAAAB				; +1 / 4!
				dd	0x3AB60B61				; +1 / 6!
				dd	0x3F000000				; +1 / 2!
				dd	0xB638EF1D				; -1 / 9!
				dd	0xBC088889				; -1 / 5!
				dd	0xB9500D01				; -1 / 7!
				dd	0xBE2AAAAB				; -1 / 3!
				dd	0x37D00D01				; +1 / 8!
				dd	0x3D2AAAAB				; +1 / 4!
				dd	0x3AB60B61				; +1 / 6!
				dd	0x3F000000				; +1 / 2!

;==============================================================================;
;       Coefficients to compute sinh(x) for flt32_t type                       ;
;==============================================================================;
align 16
sinh_flt32		dd	0x3638EF1D				; 1 / 09!
				dd	0x3C088889				; 1 / 05!
				dd	0x39500D01				; 1 / 07!
				dd	0x3E2AAAAB				; 1 / 03!

;==============================================================================;
;       Coefficients to compute cosh(x) for flt32_t type                       ;
;==============================================================================;
align 16
cosh_flt32		dd	0x3493F27E				; 1 / 10!
				dd	0x3AB60B61				; 1 / 06!
				dd	0x37D00D01				; 1 / 08!
				dd	0x3D2AAAAB				; 1 / 04!

;==============================================================================;
;       Coefficients to compute tanh(x) for flt32_t type                       ;
;==============================================================================;
align 16
tanh_flt32		dd	0x34E694CF
				dd	0x3A1AAC12
				dd	0x37858997
				dd	0x3CB327A4
				dd	0x362F796D
				dd	0x3B6B69E8
				dd	0x38CB3F0C
				dd	0x3E088889
				dd	0xB58E3BF0
				dd	0xBABED1B2
				dd	0xB824BEC7
				dd	0xBD5D0DD1
				dd	0xB6D87B97
				dd	0xBC11371B
				dd	0xB97ABEBC
				dd	0xBEAAAAAB

;==============================================================================;
;       Table of integer powers of 10^x for flt32_t type                       ;
;==============================================================================;
align 16
ten_flt32		dd	0x00000000				; 10^-46
				dd	0x00000001				; 10^-45
				dd	0x00000007				; 10^-44
				dd	0x00000047				; 10^-43
				dd	0x000002CA				; 10^-42
				dd	0x00001BE0				; 10^-41
				dd	0x000116C2				; 10^-40
				dd	0x000AE398				; 10^-39
				dd	0x006CE3EE				; 10^-38
				dd	0x02081CEA				; 10^-37
				dd	0x03AA2425				; 10^-36
				dd	0x0554AD2E				; 10^-35
				dd	0x0704EC3D				; 10^-34
				dd	0x08A6274C				; 10^-33
				dd	0x0A4FB11F				; 10^-32
				dd	0x0C01CEB3				; 10^-31
				dd	0x0DA24260				; 10^-30
				dd	0x0F4AD2F8				; 10^-29
				dd	0x10FD87B6				; 10^-28
				dd	0x129E74D2				; 10^-27
				dd	0x14461206				; 10^-26
				dd	0x15F79688				; 10^-25
				dd	0x179ABE15				; 10^-24
				dd	0x19416D9A				; 10^-23
				dd	0x1AF1C901				; 10^-22
				dd	0x1C971DA0				; 10^-21
				dd	0x1E3CE508				; 10^-20
				dd	0x1FEC1E4A				; 10^-19
				dd	0x219392EF				; 10^-18
				dd	0x233877AA				; 10^-17
				dd	0x24E69595				; 10^-16
				dd	0x26901D7D				; 10^-15
				dd	0x283424DC				; 10^-14
				dd	0x29E12E13				; 10^-13
				dd	0x2B8CBCCC				; 10^-12
				dd	0x2D2FEBFF				; 10^-11
				dd	0x2EDBE6FF				; 10^-10
				dd	0x3089705F				; 10^-09
				dd	0x322BCC77				; 10^-08
				dd	0x33D6BF95				; 10^-07
				dd	0x358637BD				; 10^-06
				dd	0x3727C5AC				; 10^-05
				dd	0x38D1B717				; 10^-04
				dd	0x3A83126F				; 10^-03
				dd	0x3C23D70A				; 10^-02
				dd	0x3DCCCCCD				; 10^-01
				dd	0x3F800000				; 10^+00
				dd	0x41200000				; 10^+01
				dd	0x42C80000				; 10^+02
				dd	0x447A0000				; 10^+03
				dd	0x461C4000				; 10^+04
				dd	0x47C35000				; 10^+05
				dd	0x49742400				; 10^+06
				dd	0x4B189680				; 10^+07
				dd	0x4CBEBC20				; 10^+08
				dd	0x4E6E6B28				; 10^+09
				dd	0x501502F9				; 10^+10
				dd	0x51BA43B7				; 10^+11
				dd	0x5368D4A5				; 10^+12
				dd	0x551184E7				; 10^+13
				dd	0x56B5E621				; 10^+14
				dd	0x58635FA9				; 10^+15
				dd	0x5A0E1BCA				; 10^+16
				dd	0x5BB1A2BC				; 10^+17
				dd	0x5D5E0B6B				; 10^+18
				dd	0x5F0AC723				; 10^+19
				dd	0x60AD78EC				; 10^+20
				dd	0x6258D727				; 10^+21
				dd	0x64078678				; 10^+22
				dd	0x65A96816				; 10^+23
				dd	0x6753C21C				; 10^+24
				dd	0x69045951				; 10^+25
				dd	0x6AA56FA6				; 10^+26
				dd	0x6C4ECB8F				; 10^+27
				dd	0x6E013F39				; 10^+28
				dd	0x6FA18F08				; 10^+29
				dd	0x7149F2CA				; 10^+30
				dd	0x72FC6F7C				; 10^+31
				dd	0x749DC5AE				; 10^+32
				dd	0x76453719				; 10^+33
				dd	0x77F684DF				; 10^+34
				dd	0x799A130C				; 10^+35
				dd	0x7B4097CE				; 10^+36
				dd	0x7CF0BDC2				; 10^+37
				dd	0x7E967699				; 10^+38
				dd	0x7F800000				; 10^+39

;******************************************************************************;
;       flt64_t consts                                                         ;
;******************************************************************************;

;==============================================================================;
;       Coefficients to compute exp(x) for flt64_t type                        ;
;==============================================================================;
align 16
exp_flt64		dq	0x3CE952C77030AD4A		; 1 / 17!
				dq	0x3EC71DE3A556C734		; 1 / 09!
				dq	0x3DE6124613A86D09		; 1 / 13!
				dq	0x3F81111111111111		; 1 / 05!
				dq	0x3D6AE7F3E733B81F		; 1 / 15!
				dq	0x3F2A01A01A01A01A		; 1 / 07!
				dq	0x3E5AE64567F544E4		; 1 / 11!
				dq	0x3FC5555555555555		; 1 / 03!
				dq	0x3D2AE7F3E733B81F		; 1 / 16!
				dq	0x3EFA01A01A01A01A		; 1 / 08!
				dq	0x3E21EED8EFF8D898		; 1 / 12!
				dq	0x3FA5555555555555		; 1 / 04!
				dq	0x3DA93974A8C07C9D		; 1 / 14!
				dq	0x3F56C16C16C16C17		; 1 / 06!
				dq	0x3E927E4FB7789F5C		; 1 / 10!
				dq	0x3FE0000000000000		; 1 / 02!

;==============================================================================;
;       Coefficients to compute log(x) for flt64_t type                        ;
;==============================================================================;
align 16
log_flt64		dq	0x3F9F07C1F07C1F08		; +1 / 33
				dq	0x3FAE1E1E1E1E1E1E		; +1 / 17
				dq	0x3FA47AE147AE147B		; +1 / 25
				dq	0x3FBC71C71C71C71C		; +1 / 09
				dq	0x3FA1A7B9611A7B96		; +1 / 29
				dq	0x3FB3B13B13B13B14		; +1 / 13
				dq	0x3FA8618618618618		; +1 / 21
				dq	0x3FC999999999999A		; +1 / 05
				dq	0x3FA0842108421084		; +1 / 31
				dq	0x3FB1111111111111		; +1 / 15
				dq	0x3FA642C8590B2164		; +1 / 23
				dq	0x3FC2492492492492		; +1 / 07
				dq	0x3FA2F684BDA12F68		; +1 / 27
				dq	0x3FB745D1745D1746		; +1 / 11
				dq	0x3FAAF286BCA1AF28		; +1 / 19
				dq	0x3FD5555555555555		; +1 / 03
				dq	0xBFA0000000000000		; -1 / 32
				dq	0xBFB0000000000000		; -1 / 16
				dq	0xBFA5555555555555		; -1 / 24
				dq	0xBFC0000000000000		; -1 / 08
				dq	0xBFA2492492492492		; -1 / 28
				dq	0xBFB5555555555555		; -1 / 12
				dq	0xBFA999999999999A		; -1 / 20
				dq	0xBFD0000000000000		; -1 / 04
				dq	0xBFA1111111111111		; -1 / 30
				dq	0xBFB2492492492492		; -1 / 14
				dq	0xBFA745D1745D1746		; -1 / 22
				dq	0xBFC5555555555555		; -1 / 06
				dq	0xBFA3B13B13B13B14		; -1 / 26
				dq	0xBFB999999999999A		; -1 / 10
				dq	0xBFAC71C71C71C71C		; -1 / 18
				dq	0xBFE0000000000000		; -1 / 02

;==============================================================================;
;       Coefficients to compute log(1+x) for flt64_t type                      ;
;==============================================================================;
align 16
log1p_flt64		dq	0x3FAF07C1F07C1F08		; 2 / 33
				dq	0x3FBE1E1E1E1E1E1E		; 2 / 17
				dq	0x3FB47AE147AE147B		; 2 / 25
				dq	0x3FCC71C71C71C71C		; 2 / 09
				dq	0x3FB1A7B9611A7B96		; 2 / 29
				dq	0x3FC3B13B13B13B14		; 2 / 13
				dq	0x3FB8618618618618		; 2 / 21
				dq	0x3FD999999999999A		; 2 / 05
				dq	0x3FB0842108421084		; 2 / 31
				dq	0x3FC1111111111111		; 2 / 15
				dq	0x3FB642C8590B2164		; 2 / 23
				dq	0x3FD2492492492492		; 2 / 07
				dq	0x3FB2F684BDA12F68		; 2 / 27
				dq	0x3FC745D1745D1746		; 2 / 11
				dq	0x3FBAF286BCA1AF28		; 2 / 19
				dq	0x3FE5555555555555		; 2 / 03

;==============================================================================;
;       Range reduction constant for trigonometric functions                   ;
;==============================================================================;
align 16
range_flt64		dq	0x6BFB5FB11F8D5D08
				dq	0x3D0739F78A5292EA
				dq	0x7527BAC7EBE5F17B
				dq	0x4F463F669E5FEA2D
				dq	0x6D367ECF27CB09B7
				dq	0xEF2F118B5A0A6D1F
				dq	0x1FF897FFDE05980F
				dq	0x9C845F8BBDF9283B
				dq	0x3991D639835339F4
				dq	0xE99C7026B45F7E41
				dq	0xE88235F52EBB4484
				dq	0xFE1DEB1CB129A73E
				dq	0x06492EEA09D1921C
				dq	0xB7246E3A424DD2E0
				dq	0xFE5163ABDEBBC561
				dq	0xDB6295993C439041
				dq	0xFC2757D1F534DDC0
				dq	0xA2F9836E4E441529

;==============================================================================;
;       Coefficients to compute sincos(x) for flt64_t type                     ;
;==============================================================================;
align 16
sincos_flt64	dq	0x3CE952C77030AD4A		; +1 / 17!
				dq	0x3EC71DE3A556C734		; +1 / 09!
				dq	0x3DE6124613A86D09		; +1 / 13!
				dq	0x3F81111111111111		; +1 / 05!
				dq	0xBD6AE7F3E733B81F		; -1 / 15!
				dq	0xBF2A01A01A01A01A		; -1 / 07!
				dq	0xBE5AE64567F544E4		; -1 / 11!
				dq	0xBFC5555555555555		; -1 / 03!
				dq	0xBCA6827863B97D97		; -1 / 18!
				dq	0xBE927E4FB7789F5C		; -1 / 10!
				dq	0xBDA93974A8C07C9D		; -1 / 14!
				dq	0xBF56C16C16C16C17		; -1 / 06!
				dq	0x3D2AE7F3E733B81F		; +1 / 16!
				dq	0x3EFA01A01A01A01A		; +1 / 08!
				dq	0x3E21EED8EFF8D898		; +1 / 12!
				dq	0x3FA5555555555555		; +1 / 04!

;==============================================================================;
;       Coefficients to compute sin(x) for flt64_t type                        ;
;==============================================================================;
align 16
sin_flt64		dq	0x3CE952C77030AD4A		; +1 / 17!
				dq	0x3EC71DE3A556C734		; +1 / 09!
				dq	0x3DE6124613A86D09		; +1 / 13!
				dq	0x3F81111111111111		; +1 / 05!
				dq	0xBD6AE7F3E733B81F		; -1 / 15!
				dq	0xBF2A01A01A01A01A		; -1 / 07!
				dq	0xBE5AE64567F544E4		; -1 / 11!
				dq	0xBFC5555555555555		; -1 / 03!

;==============================================================================;
;       Coefficients to compute cos(x) for flt64_t type                        ;
;==============================================================================;
align 16
cos_flt64		dq	0xBCA6827863B97D97		; -1 / 18!
				dq	0xBE927E4FB7789F5C		; -1 / 10!
				dq	0xBDA93974A8C07C9D		; -1 / 14!
				dq	0xBF56C16C16C16C17		; -1 / 06!
				dq	0x3D2AE7F3E733B81F		; +1 / 16!
				dq	0x3EFA01A01A01A01A		; +1 / 08!
				dq	0x3E21EED8EFF8D898		; +1 / 12!
				dq	0x3FA5555555555555		; +1 / 04!

;==============================================================================;
;       Coefficients to compute tan(x) for flt64_t type                        ;
;==============================================================================;
align 16
tan_flt64		dq	0x3D500390E238ECB8
				dq	0x3E9CD299DE4AE6BB
				dq	0x3DF57BEA2950F11E
				dq	0x3F43558248036744
				dq	0x3DA28C65557EA2A5
				dq	0x3EF0B132D39A6050
				dq	0x3E48E25FF9327E2C
				dq	0x3F9664F4882C10FA
				dq	0x3D785F9BF8D6B2B2
				dq	0x3EC5EF2DA474E5B7
				dq	0x3E20597B61CB3092
				dq	0x3F6D6D3D0E157DE0
				dq	0x3DCC3B23B05E39F9
				dq	0x3F1967E18AFCAFAD
				dq	0x3E72EFE8DB3AFF1F
				dq	0x3FC1111111111111
				dq	0x3D63C1A3035E663D
				dq	0x3EB1C77DF95C1C0D
				dq	0x3E0A813F6EAA7058
				dq	0x3F57DA36452B75E3
				dq	0x3DB6E2193AE496D5
				dq	0x3F0497D8EEA25259
				dq	0x3E5EB3229047434C
				dq	0x3FABA1BA1BA1BA1C
				dq	0x3D8E11CF33C632A8
				dq	0x3EDB0F72D3EE24E9
				dq	0x3E342BA1A349B490
				dq	0x3F8226E355E6C23D
				dq	0x3DE16A101C5FDE96
				dq	0x3F2F57D7734D1664
				dq	0x3E875CDE6563FED9
				dq	0x3FD5555555555555

;==============================================================================;
;       Coefficients to compute arcsin(x) for flt64_t type                     ;
;==============================================================================;
align 16
asin_flt64		dq	0x3F590A9F747DB95D		; (63)!! / (64)!! / 65
				dq	0x3F715EE9D45D1746		; (31)!! / (32)!! / 33
				dq	0x3F63275586C5F2F0		; (47)!! / (48)!! / 49
				dq	0x3F87A87878787878		; (15)!! / (16)!! / 17
				dq	0x3F5E82BE60D9127E		; (55)!! / (56)!! / 57
				dq	0x3F7A6863D70A3D71		; (23)!! / (24)!! / 25
				dq	0x3F690CB77F60C7CE		; (39)!! / (40)!! / 41
				dq	0x3F9F1C71C71C71C7		; (07)!! / (08)!! / 09
				dq	0x3F5B8D2E5667CE6C		; (59)!! / (60)!! / 61
				dq	0x3F751BA308D3DCB1		; (27)!! / (28)!! / 29
				dq	0x3F65C5F56EFAAAAB		; (43)!! / (44)!! / 45
				dq	0x3F91C4EC4EC4EC4F		; (11)!! / (12)!! / 13
				dq	0x3F61052BC5FA960A		; (51)!! / (52)!! / 53
				dq	0x3F812EF3CF3CF3CF		; (19)!! / (20)!! / 21
				dq	0x3F6D3D2A8E0DD67D		; (35)!! / (36)!! / 37
				dq	0x3FB3333333333333		; (03)!! / (04)!! / 05
				dq	0x3F5A3F1EF82137EE		; (61)!! / (62)!! / 63
				dq	0x3F731683BDEF7BDF		; (29)!! / (30)!! / 31
				dq	0x3F6464C0950F7D47		; (45)!! / (46)!! / 47
				dq	0x3F8C99999999999A		; (13)!! / (14)!! / 15
				dq	0x3F6018F963C229BF		; (53)!! / (54)!! / 55
				dq	0x3F7DF3BD37A6F4DF		; (21)!! / (22)!! / 23
				dq	0x3F6B026F57B13B14		; (37)!! / (38)!! / 39
				dq	0x3FA6DB6DB6DB6DB7		; (05)!! / (06)!! / 07
				dq	0x3F5CF7DEA5B6E830		; (57)!! / (58)!! / 59
				dq	0x3F7782DDA12F684C		; (25)!! / (26)!! / 27
				dq	0x3F6750DE64D7D05F		; (41)!! / (42)!! / 43
				dq	0x3F96E8BA2E8BA2E9		; (09)!! / (10)!! / 11
				dq	0x3F6208D3570AE5A6		; (49)!! / (50)!! / 51
				dq	0x3F83FDE50D79435E		; (17)!! / (18)!! / 19
				dq	0x3F6FCAF8FB6DB6DB		; (33)!! / (34)!! / 35
				dq	0x3FC5555555555555		; (01)!! / (02)!! / 03

;==============================================================================;
;       Coefficients to compute arctan(x) for flt64_t type                     ;
;==============================================================================;
align 16
atan_flt64		dq	0x3FBC31C683947AA9		; 2^128 * (64!)^2 / (129)!
				dq	0x3FC3D261037F0936		; 2^064 * (32!)^2 / (065)!
				dq	0x3FC03F26B61999C3		; 2^096 * (48!)^2 / (097)!
				dq	0x3FCBB72D930C5D8D		; 2^032 * (16!)^2 / (033)!
				dq	0x3FBE1DBDE3EFE843		; 2^112 * (56!)^2 / (113)!
				dq	0x3FC6CD166260E987		; 2^048 * (24!)^2 / (049)!
				dq	0x3FC1C51D9ECB4AF3		; 2^080 * (40!)^2 / (081)!
				dq	0x3FD32BA2FBE5D188		; 2^016 * (08!)^2 / (017)!
				dq	0x3FBD1B9B2B9C6149		; 2^120 * (60!)^2 / (121)!
				dq	0x3FC527DD294B0054		; 2^056 * (28!)^2 / (057)!
				dq	0x3FC0F50D4259EA3B		; 2^088 * (44!)^2 / (089)!
				dq	0x3FCFC403679615EB		; 2^024 * (12!)^2 / (025)!
				dq	0x3FBF3CB512808855		; 2^104 * (52!)^2 / (105)!
				dq	0x3FC8E6D9F9E68B50		; 2^040 * (20!)^2 / (041)!
				dq	0x3FC2B64878F29FFB		; 2^072 * (36!)^2 / (073)!
				dq	0x3FDA01A01A01A01A		; 2^008 * (04!)^2 / (009)!
				dq	0x3FBCA3E551C1721F		; 2^124 * (62!)^2 / (125)!
				dq	0x3FC474CA2EE60150		; 2^060 * (30!)^2 / (061)!
				dq	0x3FC0972ED24B728D		; 2^092 * (46!)^2 / (093)!
				dq	0x3FCD88CC90B2C6E4		; 2^028 * (14!)^2 / (029)!
				dq	0x3FBEA94B080ACB93		; 2^108 * (54!)^2 / (109)!
				dq	0x3FC7C83AF10BCE7A		; 2^044 * (22!)^2 / (045)!
				dq	0x3FC23907DA1A12A5		; 2^076 * (38!)^2 / (077)!
				dq	0x3FD5D2D18A2FE8D0		; 2^012 * (06!)^2 / (013)!
				dq	0x3FBD9960D842D58D		; 2^116 * (58!)^2 / (117)!
				dq	0x3FC5EEA916BEC52A		; 2^052 * (26!)^2 / (053)!
				dq	0x3FC1596ED13F3DD2		; 2^084 * (42!)^2 / (085)!
				dq	0x3FD14BF15E76D04C		; 2^020 * (10!)^2 / (021)!
				dq	0x3FBFD8C06CB5931A		; 2^100 * (50!)^2 / (101)!
				dq	0x3FCA322D0D750D80		; 2^036 * (18!)^2 / (037)!
				dq	0x3FC33E32A7DBD86F		; 2^068 * (34!)^2 / (069)!
				dq	0x3FE1111111111111		; 2^004 * (02!)^2 / (005)!
				dq	0x3FBC6A2A109BA39E		; 2^126 * (63!)^2 / (127)!
				dq	0x3FC421AA878D055B		; 2^062 * (31!)^2 / (063)!
				dq	0x3FC06A79C7FF335D		; 2^094 * (47!)^2 / (095)!
				dq	0x3FCC94E6FFA4C079		; 2^030 * (15!)^2 / (031)!
				dq	0x3FBE629428420CA0		; 2^110 * (55!)^2 / (111)!
				dq	0x3FC746B1846D990F		; 2^046 * (23!)^2 / (047)!
				dq	0x3FC1FDFACA6108B0		; 2^078 * (39!)^2 / (079)!
				dq	0x3FD45E5D2BA42EA0		; 2^014 * (07!)^2 / (015)!
				dq	0x3FBD59B3EE1B8CC3		; 2^118 * (59!)^2 / (119)!
				dq	0x3FC5889365757BC3		; 2^054 * (27!)^2 / (055)!
				dq	0x3FC12661C603A9FB		; 2^086 * (43!)^2 / (087)!
				dq	0x3FD08B6C709E2B6A		; 2^022 * (11!)^2 / (023)!
				dq	0x3FBF8999465F4E91		; 2^102 * (51!)^2 / (103)!
				dq	0x3FC98639068C4ECB		; 2^038 * (19!)^2 / (039)!
				dq	0x3FC2F8D09712706D		; 2^070 * (35!)^2 / (071)!
				dq	0x3FDD41D41D41D41D		; 2^006 * (03!)^2 / (007)!
				dq	0x3FBCDF0622EE5C55		; 2^122 * (61!)^2 / (123)!
				dq	0x3FC4CC11D1D03D11		; 2^058 * (29!)^2 / (059)!
				dq	0x3FC0C55911CC447E		; 2^090 * (45!)^2 / (091)!
				dq	0x3FCE96D3DF024DFE		; 2^026 * (13!)^2 / (027)!
				dq	0x3FBEF1F8C3603A7F		; 2^106 * (53!)^2 / (107)!
				dq	0x3FC852995F407042		; 2^042 * (21!)^2 / (043)!
				dq	0x3FC27669A3B55CFF		; 2^074 * (37!)^2 / (075)!
				dq	0x3FD7A463005E918C		; 2^010 * (05!)^2 / (011)!
				dq	0x3FBDDAB355B62B41		; 2^114 * (57!)^2 / (115)!
				dq	0x3FC65AA27E913543		; 2^050 * (25!)^2 / (051)!
				dq	0x3FC18E4E9CE184A6		; 2^082 * (41!)^2 / (083)!
				dq	0x3FD2295709965AB6		; 2^018 * (09!)^2 / (019)!
				dq	0x3FC01523BC04A7BA		; 2^098 * (49!)^2 / (099)!
				dq	0x3FCAEC756A4686C4		; 2^034 * (17!)^2 / (035)!
				dq	0x3FC386A45780F5F8		; 2^066 * (33!)^2 / (067)!
				dq	0x3FE5555555555555		; 2^002 * (01!)^2 / (003)!

;==============================================================================;
;       Coefficients to compute exp2(x) for flt64_t type                       ;
;==============================================================================;
align 16
exp2_flt64		dq	0x3CE952C77030AD4A		; +1 / 17!
				dq	0x3EC71DE3A556C734		; +1 / 09!
				dq	0x3DE6124613A86D09		; +1 / 13!
				dq	0x3F81111111111111		; +1 / 05!
				dq	0x3D6AE7F3E733B81F		; +1 / 15!
				dq	0x3F2A01A01A01A01A		; +1 / 07!
				dq	0x3E5AE64567F544E4		; +1 / 11!
				dq	0x3FC5555555555555		; +1 / 03!
				dq	0x3D2AE7F3E733B81F		; +1 / 16!
				dq	0x3EFA01A01A01A01A		; +1 / 08!
				dq	0x3E21EED8EFF8D898		; +1 / 12!
				dq	0x3FA5555555555555		; +1 / 04!
				dq	0x3DA93974A8C07C9D		; +1 / 14!
				dq	0x3F56C16C16C16C17		; +1 / 06!
				dq	0x3E927E4FB7789F5C		; +1 / 10!
				dq	0x3FE0000000000000		; +1 / 02!
				dq	0xBCE952C77030AD4A		; -1 / 17!
				dq	0xBEC71DE3A556C734		; -1 / 09!
				dq	0xBDE6124613A86D09		; -1 / 13!
				dq	0xBF81111111111111		; -1 / 05!
				dq	0xBD6AE7F3E733B81F		; -1 / 15!
				dq	0xBF2A01A01A01A01A		; -1 / 07!
				dq	0xBE5AE64567F544E4		; -1 / 11!
				dq	0xBFC5555555555555		; -1 / 03!
				dq	0x3D2AE7F3E733B81F		; +1 / 16!
				dq	0x3EFA01A01A01A01A		; +1 / 08!
				dq	0x3E21EED8EFF8D898		; +1 / 12!
				dq	0x3FA5555555555555		; +1 / 04!
				dq	0x3DA93974A8C07C9D		; +1 / 14!
				dq	0x3F56C16C16C16C17		; +1 / 06!
				dq	0x3E927E4FB7789F5C		; +1 / 10!
				dq	0x3FE0000000000000		; +1 / 02!

;==============================================================================;
;       Coefficients to compute sinh(x) for flt64_t type                       ;
;==============================================================================;
align 16
sinh_flt64		dq	0x3CE952C77030AD4A		; 1 / 17!
				dq	0x3EC71DE3A556C734		; 1 / 09!
				dq	0x3DE6124613A86D09		; 1 / 13!
				dq	0x3F81111111111111		; 1 / 05!
				dq	0x3D6AE7F3E733B81F		; 1 / 15!
				dq	0x3F2A01A01A01A01A		; 1 / 07!
				dq	0x3E5AE64567F544E4		; 1 / 11!
				dq	0x3FC5555555555555		; 1 / 03!

;==============================================================================;
;       Coefficients to compute cosh(x) for flt64_t type                       ;
;==============================================================================;
align 16
cosh_flt64		dq	0x3CA6827863B97D97		; 1 / 18!
				dq	0x3E927E4FB7789F5C		; 1 / 10!
				dq	0x3DA93974A8C07C9D		; 1 / 14!
				dq	0x3F56C16C16C16C17		; 1 / 06!
				dq	0x3D2AE7F3E733B81F		; 1 / 16!
				dq	0x3EFA01A01A01A01A		; 1 / 08!
				dq	0x3E21EED8EFF8D898		; 1 / 12!
				dq	0x3FA5555555555555		; 1 / 04!

;==============================================================================;
;       Coefficients to compute tanh(x) for flt64_t type                       ;
;==============================================================================;
align 16
tanh_flt64		dq	0x3D500390E238ECB8
				dq	0x3E9CD299DE4AE6BB
				dq	0x3DF57BEA2950F11E
				dq	0x3F43558248036744
				dq	0x3DA28C65557EA2A5
				dq	0x3EF0B132D39A6050
				dq	0x3E48E25FF9327E2C
				dq	0x3F9664F4882C10FA
				dq	0x3D785F9BF8D6B2B2
				dq	0x3EC5EF2DA474E5B7
				dq	0x3E20597B61CB3092
				dq	0x3F6D6D3D0E157DE0
				dq	0x3DCC3B23B05E39F9
				dq	0x3F1967E18AFCAFAD
				dq	0x3E72EFE8DB3AFF1F
				dq	0x3FC1111111111111
				dq	0xBD63C1A3035E663D
				dq	0xBEB1C77DF95C1C0D
				dq	0xBE0A813F6EAA7058
				dq	0xBF57DA36452B75E3
				dq	0xBDB6E2193AE496D5
				dq	0xBF0497D8EEA25259
				dq	0xBE5EB3229047434C
				dq	0xBFABA1BA1BA1BA1C
				dq	0xBD8E11CF33C632A8
				dq	0xBEDB0F72D3EE24E9
				dq	0xBE342BA1A349B490
				dq	0xBF8226E355E6C23D
				dq	0xBDE16A101C5FDE96
				dq	0xBF2F57D7734D1664
				dq	0xBE875CDE6563FED9
				dq	0xBFD5555555555555

;==============================================================================;
;       Table of integer powers of 10^x for flt64_t type                       ;
;==============================================================================;
align 16
ten_flt64		dq	0x0000000000000000		; 10^-324
				dq	0x0000000000000002		; 10^-323
				dq	0x0000000000000014		; 10^-322
				dq	0x00000000000000CA		; 10^-321
				dq	0x00000000000007E8		; 10^-320
				dq	0x0000000000004F10		; 10^-319
				dq	0x00000000000316A2		; 10^-318
				dq	0x00000000001EE257		; 10^-317
				dq	0x000000000134D761		; 10^-316
				dq	0x000000000C1069CD		; 10^-315
				dq	0x0000000078A42205		; 10^-314
				dq	0x00000004B6695433		; 10^-313
				dq	0x0000002F201D49FB		; 10^-312
				dq	0x000001D74124E3D1		; 10^-311
				dq	0x000012688B70E62B		; 10^-310
				dq	0x0000B8157268FDAF		; 10^-309
				dq	0x000730D67819E8D2		; 10^-308
				dq	0x0031FA182C40C60D		; 10^-307
				dq	0x0066789E3750F791		; 10^-306
				dq	0x009C16C5C5253575		; 10^-305
				dq	0x00D18E3B9B374169		; 10^-304
				dq	0x0105F1CA820511C3		; 10^-303
				dq	0x013B6E3D22865634		; 10^-302
				dq	0x017124E63593F5E1		; 10^-301
				dq	0x01A56E1FC2F8F359		; 10^-300
				dq	0x01DAC9A7B3B7302F		; 10^-299
				dq	0x0210BE08D0527E1D		; 10^-298
				dq	0x0244ED8B04671DA5		; 10^-297
				dq	0x027A28EDC580E50E		; 10^-296
				dq	0x02B059949B708F29		; 10^-295
				dq	0x02E46FF9C24CB2F3		; 10^-294
				dq	0x03198BF832DFDFB0		; 10^-293
				dq	0x034FEEF63F97D79C		; 10^-292
				dq	0x0383F559E7BEE6C1		; 10^-291
				dq	0x03B8F2B061AEA072		; 10^-290
				dq	0x03EF2F5C7A1A488E		; 10^-289
				dq	0x04237D99CC506D59		; 10^-288
				dq	0x04585D003F6488AF		; 10^-287
				dq	0x048E74404F3DAADB		; 10^-286
				dq	0x04C308A831868AC9		; 10^-285
				dq	0x04F7CAD23DE82D7B		; 10^-284
				dq	0x052DBD86CD6238D9		; 10^-283
				dq	0x05629674405D6388		; 10^-282
				dq	0x05973C115074BC6A		; 10^-281
				dq	0x05CD0B15A491EB84		; 10^-280
				dq	0x060226ED86DB3333		; 10^-279
				dq	0x0636B0A8E891FFFF		; 10^-278
				dq	0x066C5CD322B67FFF		; 10^-277
				dq	0x06A1BA03F5B21000		; 10^-276
				dq	0x06D62884F31E93FF		; 10^-275
				dq	0x070BB2A62FE638FF		; 10^-274
				dq	0x07414FA7DDEFE3A0		; 10^-273
				dq	0x0775A391D56BDC87		; 10^-272
				dq	0x07AB0C764AC6D3A9		; 10^-271
				dq	0x07E0E7C9EEBC444A		; 10^-270
				dq	0x081521BC6A6B555C		; 10^-269
				dq	0x084A6A2B85062AB3		; 10^-268
				dq	0x0880825B3323DAB0		; 10^-267
				dq	0x08B4A2F1FFECD15C		; 10^-266
				dq	0x08E9CBAE7FE805B3		; 10^-265
				dq	0x09201F4D0FF10390		; 10^-264
				dq	0x0954272053ED4474		; 10^-263
				dq	0x098930E868E89591		; 10^-262
				dq	0x09BF7D228322BAF5		; 10^-261
				dq	0x09F3AE3591F5B4D9		; 10^-260
				dq	0x0A2899C2F6732210		; 10^-259
				dq	0x0A5EC033B40FEA93		; 10^-258
				dq	0x0A9338205089F29C		; 10^-257
				dq	0x0AC8062864AC6F43		; 10^-256
				dq	0x0AFE07B27DD78B14		; 10^-255
				dq	0x0B32C4CF8EA6B6EC		; 10^-254
				dq	0x0B677603725064A8		; 10^-253
				dq	0x0B9D53844EE47DD1		; 10^-252
				dq	0x0BD25432B14ECEA3		; 10^-251
				dq	0x0C06E93F5DA2824C		; 10^-250
				dq	0x0C3CA38F350B22DF		; 10^-249
				dq	0x0C71E6398126F5CB		; 10^-248
				dq	0x0CA65FC7E170B33E		; 10^-247
				dq	0x0CDBF7B9D9CCE00D		; 10^-246
				dq	0x0D117AD428200C08		; 10^-245
				dq	0x0D45D98932280F0A		; 10^-244
				dq	0x0D7B4FEB7EB212CD		; 10^-243
				dq	0x0DB111F32F2F4BC0		; 10^-242
				dq	0x0DE5566FFAFB1EB0		; 10^-241
				dq	0x0E1AAC0BF9B9E65C		; 10^-240
				dq	0x0E50AB877C142FFA		; 10^-239
				dq	0x0E84D6695B193BF8		; 10^-238
				dq	0x0EBA0C03B1DF8AF6		; 10^-237
				dq	0x0EF047824F2BB6DA		; 10^-236
				dq	0x0F245962E2F6A490		; 10^-235
				dq	0x0F596FBB9BB44DB4		; 10^-234
				dq	0x0F8FCBAA82A16121		; 10^-233
				dq	0x0FC3DF4A91A4DCB5		; 10^-232
				dq	0x0FF8D71D360E13E2		; 10^-231
				dq	0x102F0CE4839198DB		; 10^-230
				dq	0x1063680ED23AFF89		; 10^-229
				dq	0x1098421286C9BF6B		; 10^-228
				dq	0x10CE5297287C2F45		; 10^-227
				dq	0x1102F39E794D9D8B		; 10^-226
				dq	0x1137B08617A104EE		; 10^-225
				dq	0x116D9CA79D89462A		; 10^-224
				dq	0x11A281E8C275CBDA		; 10^-223
				dq	0x11D72262F3133ED1		; 10^-222
				dq	0x120CEAFBAFD80E85		; 10^-221
				dq	0x124212DD4DE70913		; 10^-220
				dq	0x12769794A160CB58		; 10^-219
				dq	0x12AC3D79C9B8FE2E		; 10^-218
				dq	0x12E1A66C1E139EDD		; 10^-217
				dq	0x1316100725988694		; 10^-216
				dq	0x134B9408EEFEA839		; 10^-215
				dq	0x13813C85955F2923		; 10^-214
				dq	0x13B58BA6FAB6F36C		; 10^-213
				dq	0x13EAEE90B964B047		; 10^-212
				dq	0x1420D51A73DEEE2D		; 10^-211
				dq	0x14550A6110D6A9B8		; 10^-210
				dq	0x148A4CF9550C5426		; 10^-209
				dq	0x14C0701BD527B498		; 10^-208
				dq	0x14F48C22CA71A1BD		; 10^-207
				dq	0x1529AF2B7D0E0A2D		; 10^-206
				dq	0x15600D7B2E28C65C		; 10^-205
				dq	0x159410D9F9B2F7F3		; 10^-204
				dq	0x15C91510781FB5F0		; 10^-203
				dq	0x15FF5A549627A36C		; 10^-202
				dq	0x16339874DDD8C623		; 10^-201
				dq	0x16687E92154EF7AC		; 10^-200
				dq	0x169E9E369AA2B597		; 10^-199
				dq	0x16D322E220A5B17E		; 10^-198
				dq	0x1707EB9AA8CF1DDE		; 10^-197
				dq	0x173DE6815302E556		; 10^-196
				dq	0x1772B010D3E1CF56		; 10^-195
				dq	0x17A75C1508DA432B		; 10^-194
				dq	0x17DD331A4B10D3F6		; 10^-193
				dq	0x18123FF06EEA847A		; 10^-192
				dq	0x1846CFEC8AA52598		; 10^-191
				dq	0x187C83E7AD4E6EFE		; 10^-190
				dq	0x18B1D270CC51055F		; 10^-189
				dq	0x18E6470CFF6546B6		; 10^-188
				dq	0x191BD8D03F3E9864		; 10^-187
				dq	0x1951678227871F3E		; 10^-186
				dq	0x1985C162B168E70E		; 10^-185
				dq	0x19BB31BB5DC320D2		; 10^-184
				dq	0x19F0FF151A99F483		; 10^-183
				dq	0x1A253EDA614071A4		; 10^-182
				dq	0x1A5A8E90F9908E0D		; 10^-181
				dq	0x1A90991A9BFA58C8		; 10^-180
				dq	0x1AC4BF6142F8EEFA		; 10^-179
				dq	0x1AF9EF3993B72AB8		; 10^-178
				dq	0x1B303583FC527AB3		; 10^-177
				dq	0x1B6442E4FB671960		; 10^-176
				dq	0x1B99539E3A40DFB8		; 10^-175
				dq	0x1BCFA885C8D117A6		; 10^-174
				dq	0x1C03C9539D82AEC8		; 10^-173
				dq	0x1C38BBA884E35A7A		; 10^-172
				dq	0x1C6EEA92A61C3118		; 10^-171
				dq	0x1CA3529BA7D19EAF		; 10^-170
				dq	0x1CD8274291C6065B		; 10^-169
				dq	0x1D0E3113363787F2		; 10^-168
				dq	0x1D42DEAC01E2B4F7		; 10^-167
				dq	0x1D779657025B6235		; 10^-166
				dq	0x1DAD7BECC2F23AC2		; 10^-165
				dq	0x1DE26D73F9D764B9		; 10^-164
				dq	0x1E1708D0F84D3DE7		; 10^-163
				dq	0x1E4CCB0536608D61		; 10^-162
				dq	0x1E81FEE341FC585D		; 10^-161
				dq	0x1EB67E9C127B6E74		; 10^-160
				dq	0x1EEC1E43171A4A11		; 10^-159
				dq	0x1F2192E9EE706E4B		; 10^-158
				dq	0x1F55F7A46A0C89DD		; 10^-157
				dq	0x1F8B758D848FAC55		; 10^-156
				dq	0x1FC1297872D9CBB5		; 10^-155
				dq	0x1FF573D68F903EA2		; 10^-154
				dq	0x202AD0CC33744E4B		; 10^-153
				dq	0x2060C27FA028B0EF		; 10^-152
				dq	0x2094F31F8832DD2A		; 10^-151
				dq	0x20CA2FE76A3F9475		; 10^-150
				dq	0x21005DF0A267BCC9		; 10^-149
				dq	0x2134756CCB01ABFB		; 10^-148
				dq	0x216992C7FDC216FA		; 10^-147
				dq	0x219FF779FD329CB9		; 10^-146
				dq	0x21D3FAAC3E3FA1F3		; 10^-145
				dq	0x2208F9574DCF8A70		; 10^-144
				dq	0x223F37AD21436D0C		; 10^-143
				dq	0x227382CC34CA2428		; 10^-142
				dq	0x22A8637F41FCAD32		; 10^-141
				dq	0x22DE7C5F127BD87E		; 10^-140
				dq	0x23130DBB6B8D674F		; 10^-139
				dq	0x2347D12A4670C123		; 10^-138
				dq	0x237DC574D80CF16B		; 10^-137
				dq	0x23B29B69070816E3		; 10^-136
				dq	0x23E7424348CA1C9C		; 10^-135
				dq	0x241D12D41AFCA3C3		; 10^-134
				dq	0x24522BC490DDE65A		; 10^-133
				dq	0x2486B6B5B5155FF0		; 10^-132
				dq	0x24BC6463225AB7EC		; 10^-131
				dq	0x24F1BEBDF578B2F4		; 10^-130
				dq	0x25262E6D72D6DFB0		; 10^-129
				dq	0x255BBA08CF8C979D		; 10^-128
				dq	0x2591544581B7DEC2		; 10^-127
				dq	0x25C5A956E225D672		; 10^-126
				dq	0x25FB13AC9AAF4C0F		; 10^-125
				dq	0x2630EC4BE0AD8F89		; 10^-124
				dq	0x2665275ED8D8F36C		; 10^-123
				dq	0x269A71368F0F3047		; 10^-122
				dq	0x26D086C219697E2C		; 10^-121
				dq	0x2704A8729FC3DDB7		; 10^-120
				dq	0x2739D28F47B4D525		; 10^-119
				dq	0x277023998CD10537		; 10^-118
				dq	0x27A42C7FF0054685		; 10^-117
				dq	0x27D9379FEC069826		; 10^-116
				dq	0x280F8587E7083E30		; 10^-115
				dq	0x2843B374F06526DE		; 10^-114
				dq	0x2878A0522C7E7095		; 10^-113
				dq	0x28AEC866B79E0CBA		; 10^-112
				dq	0x28E33D4032C2C7F5		; 10^-111
				dq	0x29180C903F7379F2		; 10^-110
				dq	0x294E0FB44F50586E		; 10^-109
				dq	0x2982C9D0B1923745		; 10^-108
				dq	0x29B77C44DDF6C516		; 10^-107
				dq	0x29ED5B561574765B		; 10^-106
				dq	0x2A225915CD68C9F9		; 10^-105
				dq	0x2A56EF5B40C2FC77		; 10^-104
				dq	0x2A8CAB3210F3BB95		; 10^-103
				dq	0x2AC1EAFF4A98553D		; 10^-102
				dq	0x2AF665BF1D3E6A8D		; 10^-101
				dq	0x2B2BFF2EE48E0530		; 10^-100
				dq	0x2B617F7D4ED8C33E		; 10^-099
				dq	0x2B95DF5CA28EF40D		; 10^-098
				dq	0x2BCB5733CB32B111		; 10^-097
				dq	0x2C0116805EFFAEAA		; 10^-096
				dq	0x2C355C2076BF9A55		; 10^-095
				dq	0x2C6AB328946F80EA		; 10^-094
				dq	0x2CA0AFF95CC5B092		; 10^-093
				dq	0x2CD4DBF7B3F71CB7		; 10^-092
				dq	0x2D0A12F5A0F4E3E5		; 10^-091
				dq	0x2D404BD984990E6F		; 10^-090
				dq	0x2D745ECFE5BF520B		; 10^-089
				dq	0x2DA97683DF2F268D		; 10^-088
				dq	0x2DDFD424D6FAF031		; 10^-087
				dq	0x2E13E497065CD61F		; 10^-086
				dq	0x2E48DDBCC7F40BA6		; 10^-085
				dq	0x2E7F152BF9F10E90		; 10^-084
				dq	0x2EB36D3B7C36A91A		; 10^-083
				dq	0x2EE8488A5B445360		; 10^-082
				dq	0x2F1E5AACF2156838		; 10^-081
				dq	0x2F52F8AC174D6123		; 10^-080
				dq	0x2F87B6D71D20B96C		; 10^-079
				dq	0x2FBDA48CE468E7C7		; 10^-078
				dq	0x2FF286D80EC190DC		; 10^-077
				dq	0x3027288E1271F513		; 10^-076
				dq	0x305CF2B1970E7258		; 10^-075
				dq	0x309217AEFE690777		; 10^-074
				dq	0x30C69D9ABE034955		; 10^-073
				dq	0x30FC45016D841BAA		; 10^-072
				dq	0x3131AB20E472914A		; 10^-071
				dq	0x316615E91D8F359D		; 10^-070
				dq	0x319B9B6364F30304		; 10^-069
				dq	0x31D1411E1F17E1E3		; 10^-068
				dq	0x32059165A6DDDA5B		; 10^-067
				dq	0x323AF5BF109550F2		; 10^-066
				dq	0x3270D9976A5D5297		; 10^-065
				dq	0x32A50FFD44F4A73D		; 10^-064
				dq	0x32DA53FC9631D10D		; 10^-063
				dq	0x3310747DDDDF22A8		; 10^-062
				dq	0x3344919D5556EB52		; 10^-061
				dq	0x3379B604AAACA626		; 10^-060
				dq	0x33B011C2EAABE7D8		; 10^-059
				dq	0x33E41633A556E1CE		; 10^-058
				dq	0x34191BC08EAC9A41		; 10^-057
				dq	0x344F62B0B257C0D2		; 10^-056
				dq	0x34839DAE6F76D883		; 10^-055
				dq	0x34B8851A0B548EA4		; 10^-054
				dq	0x34EEA6608E29B24D		; 10^-053
				dq	0x352327FC58DA0F70		; 10^-052
				dq	0x3557F1FB6F10934C		; 10^-051
				dq	0x358DEE7A4AD4B81F		; 10^-050
				dq	0x35C2B50C6EC4F313		; 10^-049
				dq	0x35F7624F8A762FD8		; 10^-048
				dq	0x362D3AE36D13BBCE		; 10^-047
				dq	0x366244CE242C5561		; 10^-046
				dq	0x3696D601AD376AB9		; 10^-045
				dq	0x36CC8B8218854567		; 10^-044
				dq	0x3701D7314F534B61		; 10^-043
				dq	0x37364CFDA3281E39		; 10^-042
				dq	0x376BE03D0BF225C7		; 10^-041
				dq	0x37A16C262777579C		; 10^-040
				dq	0x37D5C72FB1552D83		; 10^-039
				dq	0x380B38FB9DAA78E4		; 10^-038
				dq	0x3841039D428A8B8F		; 10^-037
				dq	0x38754484932D2E72		; 10^-036
				dq	0x38AA95A5B7F87A0F		; 10^-035
				dq	0x38E09D8792FB4C49		; 10^-034
				dq	0x3914C4E977BA1F5C		; 10^-033
				dq	0x3949F623D5A8A733		; 10^-032
				dq	0x398039D665896880		; 10^-031
				dq	0x39B4484BFEEBC2A0		; 10^-030
				dq	0x39E95A5EFEA6B347		; 10^-029
				dq	0x3A1FB0F6BE506019		; 10^-028
				dq	0x3A53CE9A36F23C10		; 10^-027
				dq	0x3A88C240C4AECB14		; 10^-026
				dq	0x3ABEF2D0F5DA7DD9		; 10^-025
				dq	0x3AF357C299A88EA7		; 10^-024
				dq	0x3B282DB34012B251		; 10^-023
				dq	0x3B5E392010175EE6		; 10^-022
				dq	0x3B92E3B40A0E9B4F		; 10^-021
				dq	0x3BC79CA10C924223		; 10^-020
				dq	0x3BFD83C94FB6D2AC		; 10^-019
				dq	0x3C32725DD1D243AC		; 10^-018
				dq	0x3C670EF54646D497		; 10^-017
				dq	0x3C9CD2B297D889BC		; 10^-016
				dq	0x3CD203AF9EE75616		; 10^-015
				dq	0x3D06849B86A12B9B		; 10^-014
				dq	0x3D3C25C268497682		; 10^-013
				dq	0x3D719799812DEA11		; 10^-012
				dq	0x3DA5FD7FE1796495		; 10^-011
				dq	0x3DDB7CDFD9D7BDBB		; 10^-010
				dq	0x3E112E0BE826D695		; 10^-009
				dq	0x3E45798EE2308C3A		; 10^-008
				dq	0x3E7AD7F29ABCAF48		; 10^-007
				dq	0x3EB0C6F7A0B5ED8D		; 10^-006
				dq	0x3EE4F8B588E368F1		; 10^-005
				dq	0x3F1A36E2EB1C432D		; 10^-004
				dq	0x3F50624DD2F1A9FC		; 10^-003
				dq	0x3F847AE147AE147B		; 10^-002
				dq	0x3FB999999999999A		; 10^-001
				dq	0x3FF0000000000000		; 10^+000
				dq	0x4024000000000000		; 10^+001
				dq	0x4059000000000000		; 10^+002
				dq	0x408F400000000000		; 10^+003
				dq	0x40C3880000000000		; 10^+004
				dq	0x40F86A0000000000		; 10^+005
				dq	0x412E848000000000		; 10^+006
				dq	0x416312D000000000		; 10^+007
				dq	0x4197D78400000000		; 10^+008
				dq	0x41CDCD6500000000		; 10^+009
				dq	0x4202A05F20000000		; 10^+010
				dq	0x42374876E8000000		; 10^+011
				dq	0x426D1A94A2000000		; 10^+012
				dq	0x42A2309CE5400000		; 10^+013
				dq	0x42D6BCC41E900000		; 10^+014
				dq	0x430C6BF526340000		; 10^+015
				dq	0x4341C37937E08000		; 10^+016
				dq	0x4376345785D8A000		; 10^+017
				dq	0x43ABC16D674EC800		; 10^+018
				dq	0x43E158E460913D00		; 10^+019
				dq	0x4415AF1D78B58C40		; 10^+020
				dq	0x444B1AE4D6E2EF50		; 10^+021
				dq	0x4480F0CF064DD592		; 10^+022
				dq	0x44B52D02C7E14AF6		; 10^+023
				dq	0x44EA784379D99DB4		; 10^+024
				dq	0x45208B2A2C280291		; 10^+025
				dq	0x4554ADF4B7320335		; 10^+026
				dq	0x4589D971E4FE8402		; 10^+027
				dq	0x45C027E72F1F1281		; 10^+028
				dq	0x45F431E0FAE6D721		; 10^+029
				dq	0x46293E5939A08CEA		; 10^+030
				dq	0x465F8DEF8808B024		; 10^+031
				dq	0x4693B8B5B5056E17		; 10^+032
				dq	0x46C8A6E32246C99C		; 10^+033
				dq	0x46FED09BEAD87C03		; 10^+034
				dq	0x4733426172C74D82		; 10^+035
				dq	0x476812F9CF7920E3		; 10^+036
				dq	0x479E17B84357691B		; 10^+037
				dq	0x47D2CED32A16A1B1		; 10^+038
				dq	0x48078287F49C4A1D		; 10^+039
				dq	0x483D6329F1C35CA5		; 10^+040
				dq	0x48725DFA371A19E7		; 10^+041
				dq	0x48A6F578C4E0A061		; 10^+042
				dq	0x48DCB2D6F618C879		; 10^+043
				dq	0x4911EFC659CF7D4C		; 10^+044
				dq	0x49466BB7F0435C9E		; 10^+045
				dq	0x497C06A5EC5433C6		; 10^+046
				dq	0x49B18427B3B4A05C		; 10^+047
				dq	0x49E5E531A0A1C873		; 10^+048
				dq	0x4A1B5E7E08CA3A8F		; 10^+049
				dq	0x4A511B0EC57E649A		; 10^+050
				dq	0x4A8561D276DDFDC0		; 10^+051
				dq	0x4ABABA4714957D30		; 10^+052
				dq	0x4AF0B46C6CDD6E3E		; 10^+053
				dq	0x4B24E1878814C9CE		; 10^+054
				dq	0x4B5A19E96A19FC41		; 10^+055
				dq	0x4B905031E2503DA9		; 10^+056
				dq	0x4BC4643E5AE44D13		; 10^+057
				dq	0x4BF97D4DF19D6057		; 10^+058
				dq	0x4C2FDCA16E04B86D		; 10^+059
				dq	0x4C63E9E4E4C2F344		; 10^+060
				dq	0x4C98E45E1DF3B015		; 10^+061
				dq	0x4CCF1D75A5709C1B		; 10^+062
				dq	0x4D03726987666191		; 10^+063
				dq	0x4D384F03E93FF9F5		; 10^+064
				dq	0x4D6E62C4E38FF872		; 10^+065
				dq	0x4DA2FDBB0E39FB47		; 10^+066
				dq	0x4DD7BD29D1C87A19		; 10^+067
				dq	0x4E0DAC74463A989F		; 10^+068
				dq	0x4E428BC8ABE49F64		; 10^+069
				dq	0x4E772EBAD6DDC73D		; 10^+070
				dq	0x4EACFA698C95390C		; 10^+071
				dq	0x4EE21C81F7DD43A7		; 10^+072
				dq	0x4F16A3A275D49491		; 10^+073
				dq	0x4F4C4C8B1349B9B5		; 10^+074
				dq	0x4F81AFD6EC0E1411		; 10^+075
				dq	0x4FB61BCCA7119916		; 10^+076
				dq	0x4FEBA2BFD0D5FF5B		; 10^+077
				dq	0x502145B7E285BF99		; 10^+078
				dq	0x50559725DB272F7F		; 10^+079
				dq	0x508AFCEF51F0FB5F		; 10^+080
				dq	0x50C0DE1593369D1B		; 10^+081
				dq	0x50F5159AF8044462		; 10^+082
				dq	0x512A5B01B605557B		; 10^+083
				dq	0x516078E111C3556D		; 10^+084
				dq	0x5194971956342AC8		; 10^+085
				dq	0x51C9BCDFABC1357A		; 10^+086
				dq	0x5200160BCB58C16C		; 10^+087
				dq	0x52341B8EBE2EF1C7		; 10^+088
				dq	0x526922726DBAAE39		; 10^+089
				dq	0x529F6B0F092959C7		; 10^+090
				dq	0x52D3A2E965B9D81D		; 10^+091
				dq	0x53088BA3BF284E24		; 10^+092
				dq	0x533EAE8CAEF261AD		; 10^+093
				dq	0x53732D17ED577D0C		; 10^+094
				dq	0x53A7F85DE8AD5C4F		; 10^+095
				dq	0x53DDF67562D8B363		; 10^+096
				dq	0x5412BA095DC7701E		; 10^+097
				dq	0x5447688BB5394C25		; 10^+098
				dq	0x547D42AEA2879F2E		; 10^+099
				dq	0x54B249AD2594C37D		; 10^+100
				dq	0x54E6DC186EF9F45C		; 10^+101
				dq	0x551C931E8AB87173		; 10^+102
				dq	0x5551DBF316B346E8		; 10^+103
				dq	0x558652EFDC6018A2		; 10^+104
				dq	0x55BBE7ABD3781ECA		; 10^+105
				dq	0x55F170CB642B133F		; 10^+106
				dq	0x5625CCFE3D35D80E		; 10^+107
				dq	0x565B403DCC834E12		; 10^+108
				dq	0x569108269FD210CB		; 10^+109
				dq	0x56C54A3047C694FE		; 10^+110
				dq	0x56FA9CBC59B83A3D		; 10^+111
				dq	0x5730A1F5B8132466		; 10^+112
				dq	0x5764CA732617ED80		; 10^+113
				dq	0x5799FD0FEF9DE8E0		; 10^+114
				dq	0x57D03E29F5C2B18C		; 10^+115
				dq	0x58044DB473335DEF		; 10^+116
				dq	0x583961219000356B		; 10^+117
				dq	0x586FB969F40042C5		; 10^+118
				dq	0x58A3D3E2388029BB		; 10^+119
				dq	0x58D8C8DAC6A0342A		; 10^+120
				dq	0x590EFB1178484135		; 10^+121
				dq	0x59435CEAEB2D28C1		; 10^+122
				dq	0x59783425A5F872F1		; 10^+123
				dq	0x59AE412F0F768FAD		; 10^+124
				dq	0x59E2E8BD69AA19CC		; 10^+125
				dq	0x5A17A2ECC414A040		; 10^+126
				dq	0x5A4D8BA7F519C84F		; 10^+127
				dq	0x5A827748F9301D32		; 10^+128
				dq	0x5AB7151B377C247E		; 10^+129
				dq	0x5AECDA62055B2D9E		; 10^+130
				dq	0x5B22087D4358FC82		; 10^+131
				dq	0x5B568A9C942F3BA3		; 10^+132
				dq	0x5B8C2D43B93B0A8C		; 10^+133
				dq	0x5BC19C4A53C4E697		; 10^+134
				dq	0x5BF6035CE8B6203D		; 10^+135
				dq	0x5C2B843422E3A84D		; 10^+136
				dq	0x5C6132A095CE4930		; 10^+137
				dq	0x5C957F48BB41DB7C		; 10^+138
				dq	0x5CCADF1AEA12525B		; 10^+139
				dq	0x5D00CB70D24B7379		; 10^+140
				dq	0x5D34FE4D06DE5057		; 10^+141
				dq	0x5D6A3DE04895E46D		; 10^+142
				dq	0x5DA066AC2D5DAEC4		; 10^+143
				dq	0x5DD4805738B51A75		; 10^+144
				dq	0x5E09A06D06E26112		; 10^+145
				dq	0x5E400444244D7CAB		; 10^+146
				dq	0x5E7405552D60DBD6		; 10^+147
				dq	0x5EA906AA78B912CC		; 10^+148
				dq	0x5EDF485516E7577F		; 10^+149
				dq	0x5F138D352E5096AF		; 10^+150
				dq	0x5F48708279E4BC5B		; 10^+151
				dq	0x5F7E8CA3185DEB72		; 10^+152
				dq	0x5FB317E5EF3AB327		; 10^+153
				dq	0x5FE7DDDF6B095FF1		; 10^+154
				dq	0x601DD55745CBB7ED		; 10^+155
				dq	0x6052A5568B9F52F4		; 10^+156
				dq	0x60874EAC2E8727B1		; 10^+157
				dq	0x60BD22573A28F19D		; 10^+158
				dq	0x60F2357684599702		; 10^+159
				dq	0x6126C2D4256FFCC3		; 10^+160
				dq	0x615C73892ECBFBF4		; 10^+161
				dq	0x6191C835BD3F7D78		; 10^+162
				dq	0x61C63A432C8F5CD6		; 10^+163
				dq	0x61FBC8D3F7B3340C		; 10^+164
				dq	0x62315D847AD00087		; 10^+165
				dq	0x6265B4E5998400A9		; 10^+166
				dq	0x629B221EFFE500D4		; 10^+167
				dq	0x62D0F5535FEF2084		; 10^+168
				dq	0x630532A837EAE8A5		; 10^+169
				dq	0x633A7F5245E5A2CF		; 10^+170
				dq	0x63708F936BAF85C1		; 10^+171
				dq	0x63A4B378469B6732		; 10^+172
				dq	0x63D9E056584240FE		; 10^+173
				dq	0x64102C35F729689F		; 10^+174
				dq	0x6444374374F3C2C6		; 10^+175
				dq	0x647945145230B378		; 10^+176
				dq	0x64AF965966BCE056		; 10^+177
				dq	0x64E3BDF7E0360C36		; 10^+178
				dq	0x6518AD75D8438F43		; 10^+179
				dq	0x654ED8D34E547314		; 10^+180
				dq	0x6583478410F4C7EC		; 10^+181
				dq	0x65B819651531F9E8		; 10^+182
				dq	0x65EE1FBE5A7E7861		; 10^+183
				dq	0x6622D3D6F88F0B3D		; 10^+184
				dq	0x665788CCB6B2CE0C		; 10^+185
				dq	0x668D6AFFE45F818F		; 10^+186
				dq	0x66C262DFEEBBB0F9		; 10^+187
				dq	0x66F6FB97EA6A9D38		; 10^+188
				dq	0x672CBA7DE5054486		; 10^+189
				dq	0x6761F48EAF234AD4		; 10^+190
				dq	0x679671B25AEC1D89		; 10^+191
				dq	0x67CC0E1EF1A724EB		; 10^+192
				dq	0x680188D357087713		; 10^+193
				dq	0x6835EB082CCA94D7		; 10^+194
				dq	0x686B65CA37FD3A0D		; 10^+195
				dq	0x68A11F9E62FE4448		; 10^+196
				dq	0x68D56785FBBDD55A		; 10^+197
				dq	0x690AC1677AAD4AB1		; 10^+198
				dq	0x6940B8E0ACAC4EAF		; 10^+199
				dq	0x6974E718D7D7625A		; 10^+200
				dq	0x69AA20DF0DCD3AF1		; 10^+201
				dq	0x69E0548B68A044D6		; 10^+202
				dq	0x6A1469AE42C8560C		; 10^+203
				dq	0x6A498419D37A6B8F		; 10^+204
				dq	0x6A7FE52048590673		; 10^+205
				dq	0x6AB3EF342D37A408		; 10^+206
				dq	0x6AE8EB0138858D0A		; 10^+207
				dq	0x6B1F25C186A6F04C		; 10^+208
				dq	0x6B537798F4285630		; 10^+209
				dq	0x6B88557F31326BBB		; 10^+210
				dq	0x6BBE6ADEFD7F06AA		; 10^+211
				dq	0x6BF302CB5E6F642A		; 10^+212
				dq	0x6C27C37E360B3D35		; 10^+213
				dq	0x6C5DB45DC38E0C82		; 10^+214
				dq	0x6C9290BA9A38C7D1		; 10^+215
				dq	0x6CC734E940C6F9C6		; 10^+216
				dq	0x6CFD022390F8B837		; 10^+217
				dq	0x6D3221563A9B7323		; 10^+218
				dq	0x6D66A9ABC9424FEB		; 10^+219
				dq	0x6D9C5416BB92E3E6		; 10^+220
				dq	0x6DD1B48E353BCE70		; 10^+221
				dq	0x6E0621B1C28AC20C		; 10^+222
				dq	0x6E3BAA1E332D728F		; 10^+223
				dq	0x6E714A52DFFC6799		; 10^+224
				dq	0x6EA59CE797FB817F		; 10^+225
				dq	0x6EDB04217DFA61DF		; 10^+226
				dq	0x6F10E294EEBC7D2C		; 10^+227
				dq	0x6F451B3A2A6B9C76		; 10^+228
				dq	0x6F7A6208B5068394		; 10^+229
				dq	0x6FB07D457124123D		; 10^+230
				dq	0x6FE49C96CD6D16CC		; 10^+231
				dq	0x7019C3BC80C85C7F		; 10^+232
				dq	0x70501A55D07D39CF		; 10^+233
				dq	0x708420EB449C8843		; 10^+234
				dq	0x70B9292615C3AA54		; 10^+235
				dq	0x70EF736F9B3494E9		; 10^+236
				dq	0x7123A825C100DD11		; 10^+237
				dq	0x7158922F31411456		; 10^+238
				dq	0x718EB6BAFD91596B		; 10^+239
				dq	0x71C33234DE7AD7E3		; 10^+240
				dq	0x71F7FEC216198DDC		; 10^+241
				dq	0x722DFE729B9FF153		; 10^+242
				dq	0x7262BF07A143F6D4		; 10^+243
				dq	0x72976EC98994F489		; 10^+244
				dq	0x72CD4A7BEBFA31AB		; 10^+245
				dq	0x73024E8D737C5F0B		; 10^+246
				dq	0x7336E230D05B76CD		; 10^+247
				dq	0x736C9ABD04725481		; 10^+248
				dq	0x73A1E0B622C774D0		; 10^+249
				dq	0x73D658E3AB795204		; 10^+250
				dq	0x740BEF1C9657A686		; 10^+251
				dq	0x74417571DDF6C814		; 10^+252
				dq	0x7475D2CE55747A18		; 10^+253
				dq	0x74AB4781EAD1989E		; 10^+254
				dq	0x74E10CB132C2FF63		; 10^+255
				dq	0x75154FDD7F73BF3C		; 10^+256
				dq	0x754AA3D4DF50AF0B		; 10^+257
				dq	0x7580A6650B926D67		; 10^+258
				dq	0x75B4CFFE4E7708C0		; 10^+259
				dq	0x75EA03FDE214CAF1		; 10^+260
				dq	0x7620427EAD4CFED6		; 10^+261
				dq	0x7654531E58A03E8C		; 10^+262
				dq	0x768967E5EEC84E2F		; 10^+263
				dq	0x76BFC1DF6A7A61BB		; 10^+264
				dq	0x76F3D92BA28C7D15		; 10^+265
				dq	0x7728CF768B2F9C5A		; 10^+266
				dq	0x775F03542DFB8370		; 10^+267
				dq	0x779362149CBD3226		; 10^+268
				dq	0x77C83A99C3EC7EB0		; 10^+269
				dq	0x77FE494034E79E5C		; 10^+270
				dq	0x7832EDC82110C2F9		; 10^+271
				dq	0x7867A93A2954F3B8		; 10^+272
				dq	0x789D9388B3AA30A5		; 10^+273
				dq	0x78D27C35704A5E67		; 10^+274
				dq	0x79071B42CC5CF601		; 10^+275
				dq	0x793CE2137F743382		; 10^+276
				dq	0x79720D4C2FA8A031		; 10^+277
				dq	0x79A6909F3B92C83D		; 10^+278
				dq	0x79DC34C70A777A4D		; 10^+279
				dq	0x7A11A0FC668AAC70		; 10^+280
				dq	0x7A46093B802D578C		; 10^+281
				dq	0x7A7B8B8A6038AD6F		; 10^+282
				dq	0x7AB137367C236C65		; 10^+283
				dq	0x7AE585041B2C477F		; 10^+284
				dq	0x7B1AE64521F7595E		; 10^+285
				dq	0x7B50CFEB353A97DB		; 10^+286
				dq	0x7B8503E602893DD2		; 10^+287
				dq	0x7BBA44DF832B8D46		; 10^+288
				dq	0x7BF06B0BB1FB384C		; 10^+289
				dq	0x7C2485CE9E7A065F		; 10^+290
				dq	0x7C59A742461887F6		; 10^+291
				dq	0x7C9008896BCF54FA		; 10^+292
				dq	0x7CC40AABC6C32A38		; 10^+293
				dq	0x7CF90D56B873F4C7		; 10^+294
				dq	0x7D2F50AC6690F1F8		; 10^+295
				dq	0x7D63926BC01A973B		; 10^+296
				dq	0x7D987706B0213D0A		; 10^+297
				dq	0x7DCE94C85C298C4C		; 10^+298
				dq	0x7E031CFD3999F7B0		; 10^+299
				dq	0x7E37E43C8800759C		; 10^+300
				dq	0x7E6DDD4BAA009303		; 10^+301
				dq	0x7EA2AA4F4A405BE2		; 10^+302
				dq	0x7ED754E31CD072DA		; 10^+303
				dq	0x7F0D2A1BE4048F90		; 10^+304
				dq	0x7F423A516E82D9BA		; 10^+305
				dq	0x7F76C8E5CA239029		; 10^+306
				dq	0x7FAC7B1F3CAC7433		; 10^+307
				dq	0x7FE1CCF385EBC8A0		; 10^+308
				dq	0x7FF0000000000000		; 10^+309

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
