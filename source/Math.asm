;                                                                       Math.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                             FAST MATH FUNCTIONS                             #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Export section                                                         #
;###############################################################################

; Sine coefficients
public	sin_flt32				as	'sin_flt32'
public	sin_flt64				as	'sin_flt64'

; Coine coefficients
public	cos_flt32				as	'cos_flt32'
public	cos_flt64				as	'cos_flt64'

;******************************************************************************;
;       Bitwise operations                                                     ;
;******************************************************************************;

;==============================================================================;
;       Byte swap                                                              ;
;==============================================================================;

; Unsigned integer types
public	ByteSwap8				as	'Math_ByteSwap_uint8'
public	ByteSwap16				as	'Math_ByteSwap_uint16'
public	ByteSwap32				as	'Math_ByteSwap_uint32'
public	ByteSwap64				as	'Math_ByteSwap_uint64'
public	ByteSwap8v16			as	'Math_ByteSwap_uint8v16'
public	ByteSwap16v8			as	'Math_ByteSwap_uint16v8'
public	ByteSwap32v4			as	'Math_ByteSwap_uint32v4'
public	ByteSwap64v2			as	'Math_ByteSwap_uint64v2'
public	ByteSwap8				as	'_ZN4Math8ByteSwapEh'
public	ByteSwap16				as	'_ZN4Math8ByteSwapEt'
public	ByteSwap32				as	'_ZN4Math8ByteSwapEj'
public	ByteSwap64				as	'_ZN4Math8ByteSwapEy'
public	ByteSwap8v16			as	'_ZN4Math8ByteSwapEDv16_h'
public	ByteSwap16v8			as	'_ZN4Math8ByteSwapEDv8_t'
public	ByteSwap32v4			as	'_ZN4Math8ByteSwapEDv4_j'
public	ByteSwap64v2			as	'_ZN4Math8ByteSwapEDv2_y'

; Signed integer types
public	ByteSwap8				as	'Math_ByteSwap_sint8'
public	ByteSwap16				as	'Math_ByteSwap_sint16'
public	ByteSwap32				as	'Math_ByteSwap_sint32'
public	ByteSwap64				as	'Math_ByteSwap_sint64'
public	ByteSwap8v16			as	'Math_ByteSwap_sint8v16'
public	ByteSwap16v8			as	'Math_ByteSwap_sint16v8'
public	ByteSwap32v4			as	'Math_ByteSwap_sint32v4'
public	ByteSwap64v2			as	'Math_ByteSwap_sint64v2'
public	ByteSwap8				as	'_ZN4Math8ByteSwapEa'
public	ByteSwap16				as	'_ZN4Math8ByteSwapEs'
public	ByteSwap32				as	'_ZN4Math8ByteSwapEi'
public	ByteSwap64				as	'_ZN4Math8ByteSwapEx'
public	ByteSwap8v16			as	'_ZN4Math8ByteSwapEDv16_a'
public	ByteSwap16v8			as	'_ZN4Math8ByteSwapEDv8_s'
public	ByteSwap32v4			as	'_ZN4Math8ByteSwapEDv4_i'
public	ByteSwap64v2			as	'_ZN4Math8ByteSwapEDv2_x'


;==============================================================================;
;       Bit reversal permutation                                               ;
;==============================================================================;

; Unsigned integer types
public	BitReverse8				as	'Math_BitReverse_uint8'
public	BitReverse16			as	'Math_BitReverse_uint16'
public	BitReverse32			as	'Math_BitReverse_uint32'
public	BitReverse64			as	'Math_BitReverse_uint64'
public	BitReverse8v16			as	'Math_BitReverse_uint8v16'
public	BitReverse16v8			as	'Math_BitReverse_uint16v8'
public	BitReverse32v4			as	'Math_BitReverse_uint32v4'
public	BitReverse64v2			as	'Math_BitReverse_uint64v2'
public	BitReverse8				as	'_ZN4Math10BitReverseEh'
public	BitReverse16			as	'_ZN4Math10BitReverseEt'
public	BitReverse32			as	'_ZN4Math10BitReverseEj'
public	BitReverse64			as	'_ZN4Math10BitReverseEy'
public	BitReverse8v16			as	'_ZN4Math10BitReverseEDv16_h'
public	BitReverse16v8			as	'_ZN4Math10BitReverseEDv8_t'
public	BitReverse32v4			as	'_ZN4Math10BitReverseEDv4_j'
public	BitReverse64v2			as	'_ZN4Math10BitReverseEDv2_y'

; Signed integer types
public	BitReverse8				as	'Math_BitReverse_sint8'
public	BitReverse16			as	'Math_BitReverse_sint16'
public	BitReverse32			as	'Math_BitReverse_sint32'
public	BitReverse64			as	'Math_BitReverse_sint64'
public	BitReverse8v16			as	'Math_BitReverse_sint8v16'
public	BitReverse16v8			as	'Math_BitReverse_sint16v8'
public	BitReverse32v4			as	'Math_BitReverse_sint32v4'
public	BitReverse64v2			as	'Math_BitReverse_sint64v2'
public	BitReverse8				as	'_ZN4Math10BitReverseEa'
public	BitReverse16			as	'_ZN4Math10BitReverseEs'
public	BitReverse32			as	'_ZN4Math10BitReverseEi'
public	BitReverse64			as	'_ZN4Math10BitReverseEx'
public	BitReverse8v16			as	'_ZN4Math10BitReverseEDv16_a'
public	BitReverse16v8			as	'_ZN4Math10BitReverseEDv8_s'
public	BitReverse32v4			as	'_ZN4Math10BitReverseEDv4_i'
public	BitReverse64v2			as	'_ZN4Math10BitReverseEDv2_x'

;==============================================================================;
;       Bit scan                                                               ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Bit scan forward                                                       ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	ScanFwd8				as	'Math_ScanForward_uint8'
public	ScanFwd16				as	'Math_ScanForward_uint16'
public	ScanFwd32				as	'Math_ScanForward_uint32'
public	ScanFwd64				as	'Math_ScanForward_uint64'
public	ScanFwd8				as	'_ZN4Math11ScanForwardEh'
public	ScanFwd16				as	'_ZN4Math11ScanForwardEt'
public	ScanFwd32				as	'_ZN4Math11ScanForwardEj'
public	ScanFwd64				as	'_ZN4Math11ScanForwardEy'

; Signed integer types
public	ScanFwd8				as	'Math_ScanForward_sint8'
public	ScanFwd16				as	'Math_ScanForward_sint16'
public	ScanFwd32				as	'Math_ScanForward_sint32'
public	ScanFwd64				as	'Math_ScanForward_sint64'
public	ScanFwd8				as	'_ZN4Math11ScanForwardEa'
public	ScanFwd16				as	'_ZN4Math11ScanForwardEs'
public	ScanFwd32				as	'_ZN4Math11ScanForwardEi'
public	ScanFwd64				as	'_ZN4Math11ScanForwardEx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Bit scan backward                                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	ScanBwd8				as	'Math_ScanBackward_uint8'
public	ScanBwd16				as	'Math_ScanBackward_uint16'
public	ScanBwd32				as	'Math_ScanBackward_uint32'
public	ScanBwd64				as	'Math_ScanBackward_uint64'
public	ScanBwd8				as	'_ZN4Math12ScanBackwardEh'
public	ScanBwd16				as	'_ZN4Math12ScanBackwardEt'
public	ScanBwd32				as	'_ZN4Math12ScanBackwardEj'
public	ScanBwd64				as	'_ZN4Math12ScanBackwardEy'

; Signed integer types
public	ScanBwd8				as	'Math_ScanBackward_sint8'
public	ScanBwd16				as	'Math_ScanBackward_sint16'
public	ScanBwd32				as	'Math_ScanBackward_sint32'
public	ScanBwd64				as	'Math_ScanBackward_sint64'
public	ScanBwd8				as	'_ZN4Math12ScanBackwardEa'
public	ScanBwd16				as	'_ZN4Math12ScanBackwardEs'
public	ScanBwd32				as	'_ZN4Math12ScanBackwardEi'
public	ScanBwd64				as	'_ZN4Math12ScanBackwardEx'

;==============================================================================;
;       Circular rotation                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Circular rotation to the left                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	RotateLeft8				as	'Math_RotateLeft_uint8'
public	RotateLeft16			as	'Math_RotateLeft_uint16'
public	RotateLeft32			as	'Math_RotateLeft_uint32'
public	RotateLeft64			as	'Math_RotateLeft_uint64'
public	RotateLeft8				as	'_ZN4Math10RotateLeftEhh'
public	RotateLeft16			as	'_ZN4Math10RotateLeftEth'
public	RotateLeft32			as	'_ZN4Math10RotateLeftEjh'
public	RotateLeft64			as	'_ZN4Math10RotateLeftEyh'

; Signed integer types
public	RotateLeft8				as	'Math_RotateLeft_sint8'
public	RotateLeft16			as	'Math_RotateLeft_sint16'
public	RotateLeft32			as	'Math_RotateLeft_sint32'
public	RotateLeft64			as	'Math_RotateLeft_sint64'
public	RotateLeft8				as	'_ZN4Math10RotateLeftEah'
public	RotateLeft16			as	'_ZN4Math10RotateLeftEsh'
public	RotateLeft32			as	'_ZN4Math10RotateLeftEih'
public	RotateLeft64			as	'_ZN4Math10RotateLeftExh'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Circular rotation to the right                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	RotateRight8			as	'Math_RotateRight_uint8'
public	RotateRight16			as	'Math_RotateRight_uint16'
public	RotateRight32			as	'Math_RotateRight_uint32'
public	RotateRight64			as	'Math_RotateRight_uint64'
public	RotateRight8			as	'_ZN4Math11RotateRightEhh'
public	RotateRight16			as	'_ZN4Math11RotateRightEth'
public	RotateRight32			as	'_ZN4Math11RotateRightEjh'
public	RotateRight64			as	'_ZN4Math11RotateRightEyh'

; Signed integer types
public	RotateRight8			as	'Math_RotateRight_sint8'
public	RotateRight16			as	'Math_RotateRight_sint16'
public	RotateRight32			as	'Math_RotateRight_sint32'
public	RotateRight64			as	'Math_RotateRight_sint64'
public	RotateRight8			as	'_ZN4Math11RotateRightEah'
public	RotateRight16			as	'_ZN4Math11RotateRightEsh'
public	RotateRight32			as	'_ZN4Math11RotateRightEih'
public	RotateRight64			as	'_ZN4Math11RotateRightExh'

;==============================================================================;
;       Population count                                                       ;
;==============================================================================;

; Unsigned integer types
public	PopCount8				as	'Math_PopCount_uint8'
public	PopCount16				as	'Math_PopCount_uint16'
public	PopCount32				as	'Math_PopCount_uint32'
public	PopCount64				as	'Math_PopCount_uint64'
public	PopCount8v16			as	'Math_PopCount_uint8v16'
public	PopCount16v8			as	'Math_PopCount_uint16v8'
public	PopCount32v4			as	'Math_PopCount_uint32v4'
public	PopCount64v2			as	'Math_PopCount_uint64v2'
public	PopCount8				as	'_ZN4Math8PopCountEh'
public	PopCount16				as	'_ZN4Math8PopCountEt'
public	PopCount32				as	'_ZN4Math8PopCountEj'
public	PopCount64				as	'_ZN4Math8PopCountEy'
public	PopCount8v16			as	'_ZN4Math8PopCountEDv16_h'
public	PopCount16v8			as	'_ZN4Math8PopCountEDv8_t'
public	PopCount32v4			as	'_ZN4Math8PopCountEDv4_j'
public	PopCount64v2			as	'_ZN4Math8PopCountEDv2_y'

; Signed integer types
public	PopCount8				as	'Math_PopCount_sint8'
public	PopCount16				as	'Math_PopCount_sint16'
public	PopCount32				as	'Math_PopCount_sint32'
public	PopCount64				as	'Math_PopCount_sint64'
public	PopCount8v16			as	'Math_PopCount_sint8v16'
public	PopCount16v8			as	'Math_PopCount_sint16v8'
public	PopCount32v4			as	'Math_PopCount_sint32v4'
public	PopCount64v2			as	'Math_PopCount_sint64v2'
public	PopCount8				as	'_ZN4Math8PopCountEa'
public	PopCount16				as	'_ZN4Math8PopCountEs'
public	PopCount32				as	'_ZN4Math8PopCountEi'
public	PopCount64				as	'_ZN4Math8PopCountEx'
public	PopCount8v16			as	'_ZN4Math8PopCountEDv16_a'
public	PopCount16v8			as	'_ZN4Math8PopCountEDv8_s'
public	PopCount32v4			as	'_ZN4Math8PopCountEDv4_i'
public	PopCount64v2			as	'_ZN4Math8PopCountEDv2_x'

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Absolute value                                                         ;
;==============================================================================;

; Signed integer types
public	Abs_sint8				as	'Math_Abs_sint8'
public	Abs_sint16				as	'Math_Abs_sint16'
public	Abs_sint32				as	'Math_Abs_sint32'
public	Abs_sint64				as	'Math_Abs_sint64'
public	Abs_sint8v16			as	'Math_Abs_sint8v16'
public	Abs_sint16v8			as	'Math_Abs_sint16v8'
public	Abs_sint32v4			as	'Math_Abs_sint32v4'
public	Abs_sint64v2			as	'Math_Abs_sint64v2'
public	Abs_sint8				as	'_ZN4Math3AbsEa'
public	Abs_sint16				as	'_ZN4Math3AbsEs'
public	Abs_sint32				as	'_ZN4Math3AbsEi'
public	Abs_sint64				as	'_ZN4Math3AbsEx'
public	Abs_sint8v16			as	'_ZN4Math3AbsEDv16_a'
public	Abs_sint16v8			as	'_ZN4Math3AbsEDv8_s'
public	Abs_sint32v4			as	'_ZN4Math3AbsEDv4_i'
public	Abs_sint64v2			as	'_ZN4Math3AbsEDv2_x'

; Floating-point types
public	Abs_flt32				as	'Math_Abs_flt32'
public	Abs_flt64				as	'Math_Abs_flt64'
public	Abs_flt32				as	'Math_Abs_flt32v4'
public	Abs_flt64				as	'Math_Abs_flt64v2'
public	Abs_flt32				as	'_ZN4Math3AbsEf'
public	Abs_flt64				as	'_ZN4Math3AbsEd'
public	Abs_flt32				as	'_ZN4Math3AbsEDv4_f'
public	Abs_flt64				as	'_ZN4Math3AbsEDv2_d'

;==============================================================================;
;       Negative absolute value                                                ;
;==============================================================================;

; Signed integer types
public	NegAbs_sint8			as	'Math_NegAbs_sint8'
public	NegAbs_sint16			as	'Math_NegAbs_sint16'
public	NegAbs_sint32			as	'Math_NegAbs_sint32'
public	NegAbs_sint64			as	'Math_NegAbs_sint64'
public	NegAbs_sint8v16			as	'Math_NegAbs_sint8v16'
public	NegAbs_sint16v8			as	'Math_NegAbs_sint16v8'
public	NegAbs_sint32v4			as	'Math_NegAbs_sint32v4'
public	NegAbs_sint64v2			as	'Math_NegAbs_sint64v2'
public	NegAbs_sint8			as	'_ZN4Math6NegAbsEa'
public	NegAbs_sint16			as	'_ZN4Math6NegAbsEs'
public	NegAbs_sint32			as	'_ZN4Math6NegAbsEi'
public	NegAbs_sint64			as	'_ZN4Math6NegAbsEx'
public	NegAbs_sint8v16			as	'_ZN4Math6NegAbsEDv16_a'
public	NegAbs_sint16v8			as	'_ZN4Math6NegAbsEDv8_s'
public	NegAbs_sint32v4			as	'_ZN4Math6NegAbsEDv4_i'
public	NegAbs_sint64v2			as	'_ZN4Math6NegAbsEDv2_x'

; Floating-point types
public	NegAbs_flt32			as	'Math_NegAbs_flt32'
public	NegAbs_flt64			as	'Math_NegAbs_flt64'
public	NegAbs_flt32			as	'Math_NegAbs_flt32v4'
public	NegAbs_flt64			as	'Math_NegAbs_flt64v2'
public	NegAbs_flt32			as	'_ZN4Math6NegAbsEf'
public	NegAbs_flt64			as	'_ZN4Math6NegAbsEd'
public	NegAbs_flt32			as	'_ZN4Math6NegAbsEDv4_f'
public	NegAbs_flt64			as	'_ZN4Math6NegAbsEDv2_d'

;==============================================================================;
;       Number sign                                                            ;
;==============================================================================;

; Signed integer types
public	Sign_sint8				as	'Math_Sign_sint8'
public	Sign_sint16				as	'Math_Sign_sint16'
public	Sign_sint32				as	'Math_Sign_sint32'
public	Sign_sint64				as	'Math_Sign_sint64'
public	Sign_sint8v16			as	'Math_Sign_sint8v16'
public	Sign_sint16v8			as	'Math_Sign_sint16v8'
public	Sign_sint32v4			as	'Math_Sign_sint32v4'
public	Sign_sint64v2			as	'Math_Sign_sint64v2'
public	Sign_sint8				as	'_ZN4Math4SignEa'
public	Sign_sint16				as	'_ZN4Math4SignEs'
public	Sign_sint32				as	'_ZN4Math4SignEi'
public	Sign_sint64				as	'_ZN4Math4SignEx'
public	Sign_sint8v16			as	'_ZN4Math4SignEDv16_a'
public	Sign_sint16v8			as	'_ZN4Math4SignEDv8_s'
public	Sign_sint32v4			as	'_ZN4Math4SignEDv4_i'
public	Sign_sint64v2			as	'_ZN4Math4SignEDv2_x'

; Floating-point types
public	Sign_flt32				as	'Math_Sign_flt32'
public	Sign_flt64				as	'Math_Sign_flt64'
public	Sign_flt32v4			as	'Math_Sign_flt32v4'
public	Sign_flt64v2			as	'Math_Sign_flt64v2'
public	Sign_flt32				as	'_ZN4Math4SignEf'
public	Sign_flt64				as	'_ZN4Math4SignEd'
public	Sign_flt32v4			as	'_ZN4Math4SignEDv4_f'
public	Sign_flt64v2			as	'_ZN4Math4SignEDv2_d'

;==============================================================================;
;       Square root                                                            ;
;==============================================================================;

; Unsigned integer types
public	Sqrt_uint8				as	'Math_Sqrt_uint8'
public	Sqrt_uint16				as	'Math_Sqrt_uint16'
public	Sqrt_uint32				as	'Math_Sqrt_uint32'
public	Sqrt_uint64				as	'Math_Sqrt_uint64'
public	Sqrt_uint8				as	'_ZN4Math4SqrtEh'
public	Sqrt_uint16				as	'_ZN4Math4SqrtEt'
public	Sqrt_uint32				as	'_ZN4Math4SqrtEj'
public	Sqrt_uint64				as	'_ZN4Math4SqrtEy'

; Floating-point types
public	Sqrt_flt32				as	'Math_Sqrt_flt32'
public	Sqrt_flt64				as	'Math_Sqrt_flt64'
public	Sqrt_flt32v4			as	'Math_Sqrt_flt32v4'
public	Sqrt_flt64v2			as	'Math_Sqrt_flt64v2'
public	Sqrt_flt32				as	'_ZN4Math4SqrtEf'
public	Sqrt_flt64				as	'_ZN4Math4SqrtEd'
public	Sqrt_flt32v4			as	'_ZN4Math4SqrtEDv4_f'
public	Sqrt_flt64v2			as	'_ZN4Math4SqrtEDv2_d'

;==============================================================================;
;       Square value                                                           ;
;==============================================================================;

; Unsigned integer types
public	Sqr_uint8				as	'Math_Sqr_uint8'
public	Sqr_uint16				as	'Math_Sqr_uint16'
public	Sqr_uint32				as	'Math_Sqr_uint32'
public	Sqr_uint64				as	'Math_Sqr_uint64'
public	Sqr_uint8				as	'_ZN4Math3SqrEh'
public	Sqr_uint16				as	'_ZN4Math3SqrEt'
public	Sqr_uint32				as	'_ZN4Math3SqrEj'
public	Sqr_uint64				as	'_ZN4Math3SqrEy'

; Signed integer types
public	Sqr_sint8				as	'Math_Sqr_sint8'
public	Sqr_sint16				as	'Math_Sqr_sint16'
public	Sqr_sint32				as	'Math_Sqr_sint32'
public	Sqr_sint64				as	'Math_Sqr_sint64'
public	Sqr_sint8				as	'_ZN4Math3SqrEa'
public	Sqr_sint16				as	'_ZN4Math3SqrEs'
public	Sqr_sint32				as	'_ZN4Math3SqrEi'
public	Sqr_sint64				as	'_ZN4Math3SqrEx'

; Floating-point types
public	Sqr_flt32				as	'Math_Sqr_flt32'
public	Sqr_flt64				as	'Math_Sqr_flt64'
public	Sqr_flt32v4				as	'Math_Sqr_flt32v4'
public	Sqr_flt64v2				as	'Math_Sqr_flt64v2'
public	Sqr_flt32				as	'_ZN4Math3SqrEf'
public	Sqr_flt64				as	'_ZN4Math3SqrEd'
public	Sqr_flt32v4				as	'_ZN4Math3SqrEDv4_f'
public	Sqr_flt64v2				as	'_ZN4Math3SqrEDv2_d'

;==============================================================================;
;       Cube value                                                             ;
;==============================================================================;

; Unsigned integer types
public	Cube_uint8				as	'Math_Cube_uint8'
public	Cube_uint16				as	'Math_Cube_uint16'
public	Cube_uint32				as	'Math_Cube_uint32'
public	Cube_uint64				as	'Math_Cube_uint64'
public	Cube_uint8				as	'_ZN4Math4CubeEh'
public	Cube_uint16				as	'_ZN4Math4CubeEt'
public	Cube_uint32				as	'_ZN4Math4CubeEj'
public	Cube_uint64				as	'_ZN4Math4CubeEy'

; Signed integer types
public	Cube_sint8				as	'Math_Cube_sint8'
public	Cube_sint16				as	'Math_Cube_sint16'
public	Cube_sint32				as	'Math_Cube_sint32'
public	Cube_sint64				as	'Math_Cube_sint64'
public	Cube_sint8				as	'_ZN4Math4CubeEa'
public	Cube_sint16				as	'_ZN4Math4CubeEs'
public	Cube_sint32				as	'_ZN4Math4CubeEi'
public	Cube_sint64				as	'_ZN4Math4CubeEx'

; Floating-point types
public	Cube_flt32				as	'Math_Cube_flt32'
public	Cube_flt64				as	'Math_Cube_flt64'
public	Cube_flt32v4			as	'Math_Cube_flt32v4'
public	Cube_flt64v2			as	'Math_Cube_flt64v2'
public	Cube_flt32				as	'_ZN4Math4CubeEf'
public	Cube_flt64				as	'_ZN4Math4CubeEd'
public	Cube_flt32v4			as	'_ZN4Math4CubeEDv4_f'
public	Cube_flt64v2			as	'_ZN4Math4CubeEDv2_d'

;==============================================================================;
;       Inverse value                                                          ;
;==============================================================================;
public	InverseValue_flt32		as	'Math_InverseValue_flt32'
public	InverseValue_flt64		as	'Math_InverseValue_flt64'
public	InverseValue_flt32v4	as	'Math_InverseValue_flt32v4'
public	InverseValue_flt64v2	as	'Math_InverseValue_flt64v2'
public	InverseValue_flt32		as	'_ZN4Math12InverseValueEf'
public	InverseValue_flt64		as	'_ZN4Math12InverseValueEd'
public	InverseValue_flt32v4	as	'_ZN4Math12InverseValueEDv4_f'
public	InverseValue_flt64v2	as	'_ZN4Math12InverseValueEDv2_d'

;==============================================================================;
;       Inverse square value                                                   ;
;==============================================================================;
public	InverseSquare_flt32		as	'Math_InverseSquare_flt32'
public	InverseSquare_flt64		as	'Math_InverseSquare_flt64'
public	InverseSquare_flt32v4	as	'Math_InverseSquare_flt32v4'
public	InverseSquare_flt64v2	as	'Math_InverseSquare_flt64v2'
public	InverseSquare_flt32		as	'_ZN4Math13InverseSquareEf'
public	InverseSquare_flt64		as	'_ZN4Math13InverseSquareEd'
public	InverseSquare_flt32v4	as	'_ZN4Math13InverseSquareEDv4_f'
public	InverseSquare_flt64v2	as	'_ZN4Math13InverseSquareEDv2_d'

;==============================================================================;
;       Inverse cube value                                                     ;
;==============================================================================;
public	InverseCube_flt32		as	'Math_InverseCube_flt32'
public	InverseCube_flt64		as	'Math_InverseCube_flt64'
public	InverseCube_flt32v4		as	'Math_InverseCube_flt32v4'
public	InverseCube_flt64v2		as	'Math_InverseCube_flt64v2'
public	InverseCube_flt32		as	'_ZN4Math11InverseCubeEf'
public	InverseCube_flt64		as	'_ZN4Math11InverseCubeEd'
public	InverseCube_flt32v4		as	'_ZN4Math11InverseCubeEDv4_f'
public	InverseCube_flt64v2		as	'_ZN4Math11InverseCubeEDv2_d'

;==============================================================================;
;       Three-state comparison                                                 ;
;==============================================================================;

; Unsigned integer types
public	Compare_uint8			as	'Math_Compare_uint8'
public	Compare_uint16			as	'Math_Compare_uint16'
public	Compare_uint32			as	'Math_Compare_uint32'
public	Compare_uint64			as	'Math_Compare_uint64'
public	Compare_uint8v16		as	'Math_Compare_uint8v16'
public	Compare_uint16v8		as	'Math_Compare_uint16v8'
public	Compare_uint32v4		as	'Math_Compare_uint32v4'
public	Compare_uint64v2		as	'Math_Compare_uint64v2'
public	Compare_uint8			as	'_ZN4Math7CompareEhh'
public	Compare_uint16			as	'_ZN4Math7CompareEtt'
public	Compare_uint32			as	'_ZN4Math7CompareEjj'
public	Compare_uint64			as	'_ZN4Math7CompareEyy'
public	Compare_uint8v16		as	'_ZN4Math7CompareEDv16_hS0_'
public	Compare_uint16v8		as	'_ZN4Math7CompareEDv8_tS0_'
public	Compare_uint32v4		as	'_ZN4Math7CompareEDv4_jS0_'
public	Compare_uint64v2		as	'_ZN4Math7CompareEDv2_yS0_'
public	Compare_uint8			as	'CmpUint8'
public	Compare_uint16			as	'CmpUint16'
public	Compare_uint32			as	'CmpUint32'
public	Compare_uint64			as	'CmpUint64'
public	Compare_uint8			as	'_Z8CmpUint85adt_tS_'
public	Compare_uint16			as	'_Z9CmpUint165adt_tS_'
public	Compare_uint32			as	'_Z9CmpUint325adt_tS_'
public	Compare_uint64			as	'_Z9CmpUint645adt_tS_'

; Signed integer types
public	Compare_sint8			as	'Math_Compare_sint8'
public	Compare_sint16			as	'Math_Compare_sint16'
public	Compare_sint32			as	'Math_Compare_sint32'
public	Compare_sint64			as	'Math_Compare_sint64'
public	Compare_sint8v16		as	'Math_Compare_sint8v16'
public	Compare_sint16v8		as	'Math_Compare_sint16v8'
public	Compare_sint32v4		as	'Math_Compare_sint32v4'
public	Compare_sint64v2		as	'Math_Compare_sint64v2'
public	Compare_sint8			as	'_ZN4Math7CompareEaa'
public	Compare_sint16			as	'_ZN4Math7CompareEss'
public	Compare_sint32			as	'_ZN4Math7CompareEii'
public	Compare_sint64			as	'_ZN4Math7CompareExx'
public	Compare_sint8v16		as	'_ZN4Math7CompareEDv16_aS0_'
public	Compare_sint16v8		as	'_ZN4Math7CompareEDv8_sS0_'
public	Compare_sint32v4		as	'_ZN4Math7CompareEDv4_iS0_'
public	Compare_sint64v2		as	'_ZN4Math7CompareEDv2_xS0_'
public	Compare_sint8			as	'CmpSint8'
public	Compare_sint16			as	'CmpSint16'
public	Compare_sint32			as	'CmpSint32'
public	Compare_sint64			as	'CmpSint64'
public	Compare_sint8			as	'_Z8CmpSint85adt_tS_'
public	Compare_sint16			as	'_Z9CmpSint165adt_tS_'
public	Compare_sint32			as	'_Z9CmpSint325adt_tS_'
public	Compare_sint64			as	'_Z9CmpSint645adt_tS_'

; Floating-point types
public	Compare_flt32			as	'Math_Compare_flt32'
public	Compare_flt64			as	'Math_Compare_flt64'
public	Compare_flt32v4			as	'Math_Compare_flt32v4'
public	Compare_flt64v2			as	'Math_Compare_flt64v2'
public	Compare_flt32			as	'_ZN4Math7CompareEff'
public	Compare_flt64			as	'_ZN4Math7CompareEdd'
public	Compare_flt32v4			as	'_ZN4Math7CompareEDv4_fS0_'
public	Compare_flt64v2			as	'_ZN4Math7CompareEDv2_dS0_'
public	Compare_raw32			as	'CmpFlt32'
public	Compare_raw64			as	'CmpFlt64'
public	Compare_raw32			as	'_Z8CmpFlt325adt_tS_'
public	Compare_raw64			as	'_Z8CmpFlt645adt_tS_'

; Other types
public	Compare_uint64			as	'CmpSize'
public	Compare_sint64			as	'CmpTime'
public	Compare_uint64			as	'_Z7CmpSize5adt_tS_'
public	Compare_sint64			as	'_Z7CmpTime5adt_tS_'

;==============================================================================;
;       Minimum and maximum absolute value                                     ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum absolute value                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
public	MinAbs_sint8			as	'Math_MinAbs_sint8'
public	MinAbs_sint16			as	'Math_MinAbs_sint16'
public	MinAbs_sint32			as	'Math_MinAbs_sint32'
public	MinAbs_sint64			as	'Math_MinAbs_sint64'
public	MinAbs_sint8v16			as	'Math_MinAbs_sint8v16'
public	MinAbs_sint16v8			as	'Math_MinAbs_sint16v8'
public	MinAbs_sint32v4			as	'Math_MinAbs_sint32v4'
public	MinAbs_sint8			as	'_ZN4Math6MinAbsEaa'
public	MinAbs_sint16			as	'_ZN4Math6MinAbsEss'
public	MinAbs_sint32			as	'_ZN4Math6MinAbsEii'
public	MinAbs_sint64			as	'_ZN4Math6MinAbsExx'
public	MinAbs_sint8v16			as	'_ZN4Math6MinAbsEDv16_aS0_'
public	MinAbs_sint16v8			as	'_ZN4Math6MinAbsEDv8_sS0_'
public	MinAbs_sint32v4			as	'_ZN4Math6MinAbsEDv4_iS0_'

; Floating-point types
public	MinAbs_flt32			as	'Math_MinAbs_flt32'
public	MinAbs_flt64			as	'Math_MinAbs_flt64'
public	MinAbs_flt32v4			as	'Math_MinAbs_flt32v4'
public	MinAbs_flt64v2			as	'Math_MinAbs_flt64v2'
public	MinAbs_flt32			as	'_ZN4Math6MinAbsEff'
public	MinAbs_flt64			as	'_ZN4Math6MinAbsEdd'
public	MinAbs_flt32v4			as	'_ZN4Math6MinAbsEDv4_fS0_'
public	MinAbs_flt64v2			as	'_ZN4Math6MinAbsEDv2_dS0_'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum absolute value                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
public	MaxAbs_sint8			as	'Math_MaxAbs_sint8'
public	MaxAbs_sint16			as	'Math_MaxAbs_sint16'
public	MaxAbs_sint32			as	'Math_MaxAbs_sint32'
public	MaxAbs_sint64			as	'Math_MaxAbs_sint64'
public	MaxAbs_sint8v16			as	'Math_MaxAbs_sint8v16'
public	MaxAbs_sint16v8			as	'Math_MaxAbs_sint16v8'
public	MaxAbs_sint32v4			as	'Math_MaxAbs_sint32v4'
public	MaxAbs_sint8			as	'_ZN4Math6MaxAbsEaa'
public	MaxAbs_sint16			as	'_ZN4Math6MaxAbsEss'
public	MaxAbs_sint32			as	'_ZN4Math6MaxAbsEii'
public	MaxAbs_sint64			as	'_ZN4Math6MaxAbsExx'
public	MaxAbs_sint8v16			as	'_ZN4Math6MaxAbsEDv16_aS0_'
public	MaxAbs_sint16v8			as	'_ZN4Math6MaxAbsEDv8_sS0_'
public	MaxAbs_sint32v4			as	'_ZN4Math6MaxAbsEDv4_iS0_'

; Floating-point types
public	MaxAbs_flt32			as	'Math_MaxAbs_flt32'
public	MaxAbs_flt64			as	'Math_MaxAbs_flt64'
public	MaxAbs_flt32v4			as	'Math_MaxAbs_flt32v4'
public	MaxAbs_flt64v2			as	'Math_MaxAbs_flt64v2'
public	MaxAbs_flt32			as	'_ZN4Math6MaxAbsEff'
public	MaxAbs_flt64			as	'_ZN4Math6MaxAbsEdd'
public	MaxAbs_flt32v4			as	'_ZN4Math6MaxAbsEDv4_fS0_'
public	MaxAbs_flt64v2			as	'_ZN4Math6MaxAbsEDv2_dS0_'

;==============================================================================;
;       Minimum and maximum value                                              ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	Min_uint8				as	'Math_Min_uint8'
public	Min_uint16				as	'Math_Min_uint16'
public	Min_uint32				as	'Math_Min_uint32'
public	Min_uint64				as	'Math_Min_uint64'
public	Min_uint8v16			as	'Math_Min_uint8v16'
public	Min_uint16v8			as	'Math_Min_uint16v8'
public	Min_uint32v4			as	'Math_Min_uint32v4'
public	Min_uint8				as	'_ZN4Math3MinEhh'
public	Min_uint16				as	'_ZN4Math3MinEtt'
public	Min_uint32				as	'_ZN4Math3MinEjj'
public	Min_uint64				as	'_ZN4Math3MinEyy'
public	Min_uint8v16			as	'_ZN4Math3MinEDv16_hS0_'
public	Min_uint16v8			as	'_ZN4Math3MinEDv8_tS0_'
public	Min_uint32v4			as	'_ZN4Math3MinEDv4_jS0_'

; Signed integer types
public	Min_sint8				as	'Math_Min_sint8'
public	Min_sint16				as	'Math_Min_sint16'
public	Min_sint32				as	'Math_Min_sint32'
public	Min_sint64				as	'Math_Min_sint64'
public	Min_sint8v16			as	'Math_Min_sint8v16'
public	Min_sint16v8			as	'Math_Min_sint16v8'
public	Min_sint32v4			as	'Math_Min_sint32v4'
public	Min_sint8				as	'_ZN4Math3MinEaa'
public	Min_sint16				as	'_ZN4Math3MinEss'
public	Min_sint32				as	'_ZN4Math3MinEii'
public	Min_sint64				as	'_ZN4Math3MinExx'
public	Min_sint8v16			as	'_ZN4Math3MinEDv16_aS0_'
public	Min_sint16v8			as	'_ZN4Math3MinEDv8_sS0_'
public	Min_sint32v4			as	'_ZN4Math3MinEDv4_iS0_'

; Floating-point types
public	Min_flt32				as	'Math_Min_flt32'
public	Min_flt64				as	'Math_Min_flt64'
public	Min_flt32v4				as	'Math_Min_flt32v4'
public	Min_flt64v2				as	'Math_Min_flt64v2'
public	Min_flt32				as	'_ZN4Math3MinEff'
public	Min_flt64				as	'_ZN4Math3MinEdd'
public	Min_flt32v4				as	'_ZN4Math3MinEDv4_fS0_'
public	Min_flt64v2				as	'_ZN4Math3MinEDv2_dS0_'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	Max_uint8				as	'Math_Max_uint8'
public	Max_uint16				as	'Math_Max_uint16'
public	Max_uint32				as	'Math_Max_uint32'
public	Max_uint64				as	'Math_Max_uint64'
public	Max_uint8v16			as	'Math_Max_uint8v16'
public	Max_uint16v8			as	'Math_Max_uint16v8'
public	Max_uint32v4			as	'Math_Max_uint32v4'
public	Max_uint8				as	'_ZN4Math3MaxEhh'
public	Max_uint16				as	'_ZN4Math3MaxEtt'
public	Max_uint32				as	'_ZN4Math3MaxEjj'
public	Max_uint64				as	'_ZN4Math3MaxEyy'
public	Max_uint8v16			as	'_ZN4Math3MaxEDv16_hS0_'
public	Max_uint16v8			as	'_ZN4Math3MaxEDv8_tS0_'
public	Max_uint32v4			as	'_ZN4Math3MaxEDv4_jS0_'

; Signed integer types
public	Max_sint8				as	'Math_Max_sint8'
public	Max_sint16				as	'Math_Max_sint16'
public	Max_sint32				as	'Math_Max_sint32'
public	Max_sint64				as	'Math_Max_sint64'
public	Max_sint8v16			as	'Math_Max_sint8v16'
public	Max_sint16v8			as	'Math_Max_sint16v8'
public	Max_sint32v4			as	'Math_Max_sint32v4'
public	Max_sint8				as	'_ZN4Math3MaxEaa'
public	Max_sint16				as	'_ZN4Math3MaxEss'
public	Max_sint32				as	'_ZN4Math3MaxEii'
public	Max_sint64				as	'_ZN4Math3MaxExx'
public	Max_sint8v16			as	'_ZN4Math3MaxEDv16_aS0_'
public	Max_sint16v8			as	'_ZN4Math3MaxEDv8_sS0_'
public	Max_sint32v4			as	'_ZN4Math3MaxEDv4_iS0_'

; Floating-point types
public	Max_flt32				as	'Math_Max_flt32'
public	Max_flt64				as	'Math_Max_flt64'
public	Max_flt32v4				as	'Math_Max_flt32v4'
public	Max_flt64v2				as	'Math_Max_flt64v2'
public	Max_flt32				as	'_ZN4Math3MaxEff'
public	Max_flt64				as	'_ZN4Math3MaxEdd'
public	Max_flt32v4				as	'_ZN4Math3MaxEDv4_fS0_'
public	Max_flt64v2				as	'_ZN4Math3MaxEDv2_dS0_'

;==============================================================================;
;       Greatest common divisor                                                ;
;==============================================================================;

; Unsigned integer types
public	GCD_uint8				as	'Math_GCD_uint8'
public	GCD_uint16				as	'Math_GCD_uint16'
public	GCD_uint32				as	'Math_GCD_uint32'
public	GCD_uint64				as	'Math_GCD_uint64'
public	GCD_uint8				as	'_ZN4Math3GCDEhh'
public	GCD_uint16				as	'_ZN4Math3GCDEtt'
public	GCD_uint32				as	'_ZN4Math3GCDEjj'
public	GCD_uint64				as	'_ZN4Math3GCDEyy'

; Signed integer types
public	GCD_sint8				as	'Math_GCD_sint8'
public	GCD_sint16				as	'Math_GCD_sint16'
public	GCD_sint32				as	'Math_GCD_sint32'
public	GCD_sint64				as	'Math_GCD_sint64'
public	GCD_sint8				as	'_ZN4Math3GCDEaa'
public	GCD_sint16				as	'_ZN4Math3GCDEss'
public	GCD_sint32				as	'_ZN4Math3GCDEii'
public	GCD_sint64				as	'_ZN4Math3GCDExx'

;==============================================================================;
;       Least common multiple                                                  ;
;==============================================================================;

; Unsigned integer types
public	LCM_uint8				as	'Math_LCM_uint8'
public	LCM_uint16				as	'Math_LCM_uint16'
public	LCM_uint32				as	'Math_LCM_uint32'
public	LCM_uint64				as	'Math_LCM_uint64'
public	LCM_uint8				as	'_ZN4Math3LCMEhh'
public	LCM_uint16				as	'_ZN4Math3LCMEtt'
public	LCM_uint32				as	'_ZN4Math3LCMEjj'
public	LCM_uint64				as	'_ZN4Math3LCMEyy'

; Signed integer types
public	LCM_sint8				as	'Math_LCM_sint8'
public	LCM_sint16				as	'Math_LCM_sint16'
public	LCM_sint32				as	'Math_LCM_sint32'
public	LCM_sint64				as	'Math_LCM_sint64'
public	LCM_sint8				as	'_ZN4Math3LCMEaa'
public	LCM_sint16				as	'_ZN4Math3LCMEss'
public	LCM_sint32				as	'_ZN4Math3LCMEii'
public	LCM_sint64				as	'_ZN4Math3LCMExx'

;==============================================================================;
;       Cancellation                                                           ;
;==============================================================================;

; Unsigned integer types
public	Cancel_uint8			as	'Math_Cancel_uint8'
public	Cancel_uint16			as	'Math_Cancel_uint16'
public	Cancel_uint32			as	'Math_Cancel_uint32'
public	Cancel_uint64			as	'Math_Cancel_uint64'
public	Cancel_uint8			as	'_ZN4Math6CancelEPhS0_'
public	Cancel_uint16			as	'_ZN4Math6CancelEPtS0_'
public	Cancel_uint32			as	'_ZN4Math6CancelEPjS0_'
public	Cancel_uint64			as	'_ZN4Math6CancelEPyS0_'

; Signed integer types
public	Cancel_sint8			as	'Math_Cancel_sint8'
public	Cancel_sint16			as	'Math_Cancel_sint16'
public	Cancel_sint32			as	'Math_Cancel_sint32'
public	Cancel_sint64			as	'Math_Cancel_sint64'
public	Cancel_sint8			as	'_ZN4Math6CancelEPaS0_'
public	Cancel_sint16			as	'_ZN4Math6CancelEPsS0_'
public	Cancel_sint32			as	'_ZN4Math6CancelEPiS0_'
public	Cancel_sint64			as	'_ZN4Math6CancelEPxS0_'

;******************************************************************************;
;       Observational error                                                    ;
;******************************************************************************;

;==============================================================================;
;       Absolute error                                                         ;
;==============================================================================;
public	AbsError_flt32			as	'Math_AbsError_flt32'
public	AbsError_flt64			as	'Math_AbsError_flt64'
public	AbsError_flt32			as	'Math_AbsError_flt32v4'
public	AbsError_flt64			as	'Math_AbsError_flt64v2'
public	AbsError_flt32			as	'_ZN4Math8AbsErrorEff'
public	AbsError_flt64			as	'_ZN4Math8AbsErrorEdd'
public	AbsError_flt32			as	'_ZN4Math8AbsErrorEDv4_fS0_'
public	AbsError_flt64			as	'_ZN4Math8AbsErrorEDv2_dS0_'

;==============================================================================;
;       Relative error                                                         ;
;==============================================================================;
public	RelError_flt32			as	'Math_RelError_flt32'
public	RelError_flt64			as	'Math_RelError_flt64'
public	RelError_flt32v4		as	'Math_RelError_flt32v4'
public	RelError_flt64v2		as	'Math_RelError_flt64v2'
public	RelError_flt32			as	'_ZN4Math8RelErrorEff'
public	RelError_flt64			as	'_ZN4Math8RelErrorEdd'
public	RelError_flt32v4		as	'_ZN4Math8RelErrorEDv4_fS0_'
public	RelError_flt64v2		as	'_ZN4Math8RelErrorEDv2_dS0_'

;******************************************************************************;
;       Scale functions                                                        ;
;******************************************************************************;

; Scale by power of 2
public	Scale2_flt32			as	'Math_Scale2_flt32'
public	Scale2_flt64			as	'Math_Scale2_flt64'
public	Scale2_flt32			as	'_ZN4Math6Scale2Efs'
public	Scale2_flt64			as	'_ZN4Math6Scale2Eds'

; Scale by power of 10
public	Scale10_flt32			as	'Math_Scale10_flt32'
public	Scale10_flt64			as	'Math_Scale10_flt64'
public	Scale10_flt32			as	'_ZN4Math7Scale10Efs'
public	Scale10_flt64			as	'_ZN4Math7Scale10Eds'

;******************************************************************************;
;       Exponentiation functions                                               ;
;******************************************************************************;

;==============================================================================;
;       Exponentiation by base 2                                               ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer exponentiation by base 2                                       ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Exp2i_int				as	'Math_Exp2i_uint64'
public	Exp2i_flt32				as	'Math_Exp2i_flt32'
public	Exp2i_flt64				as	'Math_Exp2i_flt64'
public	Exp2i_int				as	'_ZN4Math5Exp2iEh'
public	Exp2i_flt32				as	'_ZN4Math5Exp2iEa'
public	Exp2i_flt64				as	'_ZN4Math5Exp2iEs'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real exponentiation by base 2                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Exp2_flt32				as	'Math_Exp2_flt32'
public	Exp2_flt64				as	'Math_Exp2_flt64'
public	Exp2m1_flt32			as	'Math_Exp2m1_flt32'
public	Exp2m1_flt64			as	'Math_Exp2m1_flt64'
public	Exp2_flt32v4			as	'Math_Exp2_flt32v4'
public	Exp2_flt64v2			as	'Math_Exp2_flt64v2'
public	Exp2m1_flt32v4			as	'Math_Exp2m1_flt32v4'
public	Exp2m1_flt64v2			as	'Math_Exp2m1_flt64v2'
public	Exp2_flt32				as	'_ZN4Math4Exp2Ef'
public	Exp2_flt64				as	'_ZN4Math4Exp2Ed'
public	Exp2m1_flt32			as	'_ZN4Math6Exp2m1Ef'
public	Exp2m1_flt64			as	'_ZN4Math6Exp2m1Ed'
public	Exp2_flt32v4			as	'_ZN4Math4Exp2EDv4_f'
public	Exp2_flt64v2			as	'_ZN4Math4Exp2EDv2_d'
public	Exp2m1_flt32v4			as	'_ZN4Math6Exp2m1EDv4_f'
public	Exp2m1_flt64v2			as	'_ZN4Math6Exp2m1EDv2_d'

;==============================================================================;
;       Exponentiation by base 10                                              ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer exponentiation by base 10                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Exp10i_int				as	'Math_Exp10i_uint64'
public	Exp10i_flt32			as	'Math_Exp10i_flt32'
public	Exp10i_flt64			as	'Math_Exp10i_flt64'
public	Exp10i_int				as	'_ZN4Math6Exp10iEh'
public	Exp10i_flt32			as	'_ZN4Math6Exp10iEa'
public	Exp10i_flt64			as	'_ZN4Math6Exp10iEs'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real exponentiation by base 10                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Exp10_flt32				as	'Math_Exp10_flt32'
public	Exp10_flt64				as	'Math_Exp10_flt64'
public	Exp10m1_flt32			as	'Math_Exp10m1_flt32'
public	Exp10m1_flt64			as	'Math_Exp10m1_flt64'
public	Exp10_flt32v4			as	'Math_Exp10_flt32v4'
public	Exp10_flt64v2			as	'Math_Exp10_flt64v2'
public	Exp10m1_flt32v4			as	'Math_Exp10m1_flt32v4'
public	Exp10m1_flt64v2			as	'Math_Exp10m1_flt64v2'
public	Exp10_flt32				as	'_ZN4Math5Exp10Ef'
public	Exp10_flt64				as	'_ZN4Math5Exp10Ed'
public	Exp10m1_flt32			as	'_ZN4Math7Exp10m1Ef'
public	Exp10m1_flt64			as	'_ZN4Math7Exp10m1Ed'
public	Exp10_flt32v4			as	'_ZN4Math5Exp10EDv4_f'
public	Exp10_flt64v2			as	'_ZN4Math5Exp10EDv2_d'
public	Exp10m1_flt32v4			as	'_ZN4Math7Exp10m1EDv4_f'
public	Exp10m1_flt64v2			as	'_ZN4Math7Exp10m1EDv2_d'

;==============================================================================;
;       Exponentiation by base E (natural logarithm)                           ;
;==============================================================================;
public	ExpE_flt32				as	'Math_Exp_flt32'
public	ExpE_flt64				as	'Math_Exp_flt64'
public	ExpEm1_flt32			as	'Math_Expm1_flt32'
public	ExpEm1_flt64			as	'Math_Expm1_flt64'
public	ExpE_flt32v4			as	'Math_Exp_flt32v4'
public	ExpE_flt64v2			as	'Math_Exp_flt64v2'
public	ExpEm1_flt32v4			as	'Math_Expm1_flt32v4'
public	ExpEm1_flt64v2			as	'Math_Expm1_flt64v2'
public	ExpE_flt32				as	'_ZN4Math3ExpEf'
public	ExpE_flt64				as	'_ZN4Math3ExpEd'
public	ExpEm1_flt32			as	'_ZN4Math5Expm1Ef'
public	ExpEm1_flt64			as	'_ZN4Math5Expm1Ed'
public	ExpE_flt32v4			as	'_ZN4Math3ExpEDv4_f'
public	ExpE_flt64v2			as	'_ZN4Math3ExpEDv2_d'
public	ExpEm1_flt32v4			as	'_ZN4Math5Expm1EDv4_f'
public	ExpEm1_flt64v2			as	'_ZN4Math5Expm1EDv2_d'

;==============================================================================;
;       Exponentiation by custom base                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer exponentiation by custom base                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	ExpBi_uint8				as	'Math_ExpBi_uint8'
public	ExpBi_uint16			as	'Math_ExpBi_uint16'
public	ExpBi_uint32			as	'Math_ExpBi_uint32'
public	ExpBi_uint64			as	'Math_ExpBi_uint64'
public	ExpBi_uint8				as	'_ZN4Math5ExpBiEhh'
public	ExpBi_uint16			as	'_ZN4Math5ExpBiEth'
public	ExpBi_uint32			as	'_ZN4Math5ExpBiEjh'
public	ExpBi_uint64			as	'_ZN4Math5ExpBiEyh'

; Signed integer types
public	ExpBi_sint8				as	'Math_ExpBi_sint8'
public	ExpBi_sint16			as	'Math_ExpBi_sint16'
public	ExpBi_sint32			as	'Math_ExpBi_sint32'
public	ExpBi_sint64			as	'Math_ExpBi_sint64'
public	ExpBi_sint8				as	'_ZN4Math5ExpBiEah'
public	ExpBi_sint16			as	'_ZN4Math5ExpBiEsh'
public	ExpBi_sint32			as	'_ZN4Math5ExpBiEih'
public	ExpBi_sint64			as	'_ZN4Math5ExpBiExh'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real exponentiation by custom base                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	ExpB_flt32				as	'Math_ExpB_flt32'
public	ExpB_flt64				as	'Math_ExpB_flt64'
public	ExpBm1_flt32			as	'Math_ExpBm1_flt32'
public	ExpBm1_flt64			as	'Math_ExpBm1_flt64'
public	ExpB_flt32v4			as	'Math_ExpB_flt32v4'
public	ExpB_flt64v2			as	'Math_ExpB_flt64v2'
public	ExpBm1_flt32v4			as	'Math_ExpBm1_flt32v4'
public	ExpBm1_flt64v2			as	'Math_ExpBm1_flt64v2'
public	ExpB_flt32				as	'_ZN4Math4ExpBEff'
public	ExpB_flt64				as	'_ZN4Math4ExpBEdd'
public	ExpBm1_flt32			as	'_ZN4Math6ExpBm1Eff'
public	ExpBm1_flt64			as	'_ZN4Math6ExpBm1Edd'
public	ExpB_flt32v4			as	'_ZN4Math4ExpBEDv4_fS0_'
public	ExpB_flt64v2			as	'_ZN4Math4ExpBEDv2_dS0_'
public	ExpBm1_flt32v4			as	'_ZN4Math6ExpBm1EDv4_fS0_'
public	ExpBm1_flt64v2			as	'_ZN4Math6ExpBm1EDv2_dS0_'

;******************************************************************************;
;       Logarithmic functions                                                  ;
;******************************************************************************;

;==============================================================================;
;       Logarithm to base 2                                                    ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer logarithm to base 2                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Log2i_uint8				as	'Math_Log2i_uint8'
public	Log2i_uint16			as	'Math_Log2i_uint16'
public	Log2i_uint32			as	'Math_Log2i_uint32'
public	Log2i_uint64			as	'Math_Log2i_uint64'
public	Log2i_uint8				as	'_ZN4Math5Log2iEh'
public	Log2i_uint16			as	'_ZN4Math5Log2iEt'
public	Log2i_uint32			as	'_ZN4Math5Log2iEj'
public	Log2i_uint64			as	'_ZN4Math5Log2iEy'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real logarithm to base 2                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Log2_flt32				as	'Math_Log2_flt32'
public	Log2_flt64				as	'Math_Log2_flt64'
public	Log2p1_flt32			as	'Math_Log2p1_flt32'
public	Log2p1_flt64			as	'Math_Log2p1_flt64'
public	Log2_flt32v4			as	'Math_Log2_flt32v4'
public	Log2_flt64v2			as	'Math_Log2_flt64v2'
public	Log2p1_flt32v4			as	'Math_Log2p1_flt32v4'
public	Log2p1_flt64v2			as	'Math_Log2p1_flt64v2'
public	Log2_flt32				as	'_ZN4Math4Log2Ef'
public	Log2_flt64				as	'_ZN4Math4Log2Ed'
public	Log2p1_flt32			as	'_ZN4Math6Log2p1Ef'
public	Log2p1_flt64			as	'_ZN4Math6Log2p1Ed'
public	Log2_flt32v4			as	'_ZN4Math4Log2EDv4_f'
public	Log2_flt64v2			as	'_ZN4Math4Log2EDv2_d'
public	Log2p1_flt32v4			as	'_ZN4Math6Log2p1EDv4_f'
public	Log2p1_flt64v2			as	'_ZN4Math6Log2p1EDv2_d'

;==============================================================================;
;       Logarithm to base 10                                                   ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Integer logarithm to base 10                                           ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Log10i_uint8			as	'Math_Log10i_uint8'
public	Log10i_uint16			as	'Math_Log10i_uint16'
public	Log10i_uint32			as	'Math_Log10i_uint32'
public	Log10i_uint64			as	'Math_Log10i_uint64'
public	Log10i_uint8			as	'_ZN4Math6Log10iEh'
public	Log10i_uint16			as	'_ZN4Math6Log10iEt'
public	Log10i_uint32			as	'_ZN4Math6Log10iEj'
public	Log10i_uint64			as	'_ZN4Math6Log10iEy'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real logarithm to base 10                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Log10_flt32				as	'Math_Log10_flt32'
public	Log10_flt64				as	'Math_Log10_flt64'
public	Log10p1_flt32			as	'Math_Log10p1_flt32'
public	Log10p1_flt64			as	'Math_Log10p1_flt64'
public	Log10_flt32v4			as	'Math_Log10_flt32v4'
public	Log10_flt64v2			as	'Math_Log10_flt64v2'
public	Log10p1_flt32v4			as	'Math_Log10p1_flt32v4'
public	Log10p1_flt64v2			as	'Math_Log10p1_flt64v2'
public	Log10_flt32				as	'_ZN4Math5Log10Ef'
public	Log10_flt64				as	'_ZN4Math5Log10Ed'
public	Log10p1_flt32			as	'_ZN4Math7Log10p1Ef'
public	Log10p1_flt64			as	'_ZN4Math7Log10p1Ed'
public	Log10_flt32v4			as	'_ZN4Math5Log10EDv4_f'
public	Log10_flt64v2			as	'_ZN4Math5Log10EDv2_d'
public	Log10p1_flt32v4			as	'_ZN4Math7Log10p1EDv4_f'
public	Log10p1_flt64v2			as	'_ZN4Math7Log10p1EDv2_d'

;==============================================================================;
;       Logarithm to base E (natural logarithm)                                ;
;==============================================================================;
public	LogE_flt32				as	'Math_Log_flt32'
public	LogE_flt64				as	'Math_Log_flt64'
public	LogEp1_flt32			as	'Math_Logp1_flt32'
public	LogEp1_flt64			as	'Math_Logp1_flt64'
public	LogE_flt32v4			as	'Math_Log_flt32v4'
public	LogE_flt64v2			as	'Math_Log_flt64v2'
public	LogEp1_flt32v4			as	'Math_Logp1_flt32v4'
public	LogEp1_flt64v2			as	'Math_Logp1_flt64v2'
public	LogE_flt32				as	'_ZN4Math3LogEf'
public	LogE_flt64				as	'_ZN4Math3LogEd'
public	LogEp1_flt32			as	'_ZN4Math5Logp1Ef'
public	LogEp1_flt64			as	'_ZN4Math5Logp1Ed'
public	LogE_flt32v4			as	'_ZN4Math3LogEDv4_f'
public	LogE_flt64v2			as	'_ZN4Math3LogEDv2_d'
public	LogEp1_flt32v4			as	'_ZN4Math5Logp1EDv4_f'
public	LogEp1_flt64v2			as	'_ZN4Math5Logp1EDv2_d'

;******************************************************************************;
;       Trigonometric functions                                                ;
;******************************************************************************;

;==============================================================================;
;       Hypotenuse                                                             ;
;==============================================================================;
public	Hypot2D_flt32			as	'Math_Hypot2D_flt32'
public	Hypot2D_flt64			as	'Math_Hypot2D_flt64'
public	Hypot3D_flt32			as	'Math_Hypot3D_flt32'
public	Hypot3D_flt64			as	'Math_Hypot3D_flt64'
public	Hypot2D_flt32v4			as	'Math_Hypot2D_flt32v4'
public	Hypot2D_flt64v2			as	'Math_Hypot2D_flt64v2'
public	Hypot3D_flt32v4			as	'Math_Hypot3D_flt32v4'
public	Hypot3D_flt64v2			as	'Math_Hypot3D_flt64v2'
public	Hypot2D_flt32			as	'_ZN4Math7Hypot2DEff'
public	Hypot2D_flt64			as	'_ZN4Math7Hypot2DEdd'
public	Hypot3D_flt32			as	'_ZN4Math7Hypot3DEfff'
public	Hypot3D_flt64			as	'_ZN4Math7Hypot3DEddd'
public	Hypot2D_flt32v4			as	'_ZN4Math7Hypot2DEDv4_fS0_'
public	Hypot2D_flt64v2			as	'_ZN4Math7Hypot2DEDv2_dS0_'
public	Hypot3D_flt32v4			as	'_ZN4Math7Hypot3DEDv4_fS0_S0_'
public	Hypot3D_flt64v2			as	'_ZN4Math7Hypot3DEDv2_dS0_S0_'

;==============================================================================;
;       Cathetus                                                               ;
;==============================================================================;
public	Cath_flt32				as	'Math_Cath_flt32'
public	Cath_flt64				as	'Math_Cath_flt64'
public	Cath_flt32v4			as	'Math_Cath_flt32v4'
public	Cath_flt64v2			as	'Math_Cath_flt64v2'
public	Cath_flt32				as	'_ZN4Math4CathEff'
public	Cath_flt64				as	'_ZN4Math4CathEdd'
public	Cath_flt32v4			as	'_ZN4Math4CathEDv4_fS0_'
public	Cath_flt64v2			as	'_ZN4Math4CathEDv2_dS0_'

;==============================================================================;
;       Trigonometric sine                                                     ;
;==============================================================================;
public	Sin_flt32				as	'Math_Sin_flt32'
public	Sin_flt64				as	'Math_Sin_flt64'
public	Sin_flt32v4				as	'Math_Sin_flt32v4'
public	Sin_flt64v2				as	'Math_Sin_flt64v2'
public	Sin_flt32				as	'_ZN4Math3SinEf'
public	Sin_flt64				as	'_ZN4Math3SinEd'
public	Sin_flt32v4				as	'_ZN4Math3SinEDv4_f'
public	Sin_flt64v2				as	'_ZN4Math3SinEDv2_d'

;==============================================================================;
;       Trigonometric cosine                                                   ;
;==============================================================================;
public	Cos_flt32				as	'Math_Cos_flt32'
public	Cos_flt64				as	'Math_Cos_flt64'
public	Cos_flt32v4				as	'Math_Cos_flt32v4'
public	Cos_flt64v2				as	'Math_Cos_flt64v2'
public	Cos_flt32				as	'_ZN4Math3CosEf'
public	Cos_flt64				as	'_ZN4Math3CosEd'
public	Cos_flt32v4				as	'_ZN4Math3CosEDv4_f'
public	Cos_flt64v2				as	'_ZN4Math3CosEDv2_d'

;==============================================================================;
;       Trigonometric sine and cosine                                          ;
;==============================================================================;
public	SinCos_flt32			as	'Math_SinCos_flt32'
public	SinCos_flt64			as	'Math_SinCos_flt64'
public	SinCos_flt32v4			as	'Math_SinCos_flt32v4'
public	SinCos_flt64v2			as	'Math_SinCos_flt64v2'
public	SinCos_flt32			as	'_ZN4Math6SinCosEPfS0_f'
public	SinCos_flt64			as	'_ZN4Math6SinCosEPdS0_d'
public	SinCos_flt32v4			as	'_ZN4Math6SinCosEPDv4_fS1_S0_'
public	SinCos_flt64v2			as	'_ZN4Math6SinCosEPDv2_dS1_S0_'

;==============================================================================;
;       Trigonometric tangent                                                  ;
;==============================================================================;
public	Tan_flt32				as	'Math_Tan_flt32'
public	Tan_flt64				as	'Math_Tan_flt64'
public	Tan_flt32v4				as	'Math_Tan_flt32v4'
public	Tan_flt64v2				as	'Math_Tan_flt64v2'
public	Tan_flt32				as	'_ZN4Math3TanEf'
public	Tan_flt64				as	'_ZN4Math3TanEd'
public	Tan_flt32v4				as	'_ZN4Math3TanEDv4_f'
public	Tan_flt64v2				as	'_ZN4Math3TanEDv2_d'

;******************************************************************************;
;       Inverse trigonometric functions                                        ;
;******************************************************************************;

;==============================================================================;
;       Inverse trigonometric sine                                             ;
;==============================================================================;
public	ArcSin_flt32			as	'Math_ArcSin_flt32'
public	ArcSin_flt64			as	'Math_ArcSin_flt64'
public	ArcSin_flt32v4			as	'Math_ArcSin_flt32v4'
public	ArcSin_flt64v2			as	'Math_ArcSin_flt64v2'
public	ArcSin_flt32			as	'_ZN4Math6ArcSinEf'
public	ArcSin_flt64			as	'_ZN4Math6ArcSinEd'
public	ArcSin_flt32v4			as	'_ZN4Math6ArcSinEDv4_f'
public	ArcSin_flt64v2			as	'_ZN4Math6ArcSinEDv2_d'

;==============================================================================;
;       Inverse trigonometric cosine                                           ;
;==============================================================================;
public	ArcCos_flt32			as	'Math_ArcCos_flt32'
public	ArcCos_flt64			as	'Math_ArcCos_flt64'
public	ArcCos_flt32v4			as	'Math_ArcCos_flt32v4'
public	ArcCos_flt64v2			as	'Math_ArcCos_flt64v2'
public	ArcCos_flt32			as	'_ZN4Math6ArcCosEf'
public	ArcCos_flt64			as	'_ZN4Math6ArcCosEd'
public	ArcCos_flt32v4			as	'_ZN4Math6ArcCosEDv4_f'
public	ArcCos_flt64v2			as	'_ZN4Math6ArcCosEDv2_d'

;==============================================================================;
;       Inverse trigonometric tangent                                          ;
;==============================================================================;
public	ArcTan_flt32			as	'Math_ArcTan_flt32'
public	ArcTan_flt64			as	'Math_ArcTan_flt64'
public	ArcTan2_flt32			as	'Math_ArcTan2_flt32'
public	ArcTan2_flt64			as	'Math_ArcTan2_flt64'
public	ArcTan_flt32v4			as	'Math_ArcTan_flt32v4'
public	ArcTan_flt64v2			as	'Math_ArcTan_flt64v2'
public	ArcTan2_flt32v4			as	'Math_ArcTan2_flt32v4'
public	ArcTan2_flt64v2			as	'Math_ArcTan2_flt64v2'
public	ArcTan_flt32			as	'_ZN4Math6ArcTanEf'
public	ArcTan_flt64			as	'_ZN4Math6ArcTanEd'
public	ArcTan2_flt32			as	'_ZN4Math7ArcTan2Eff'
public	ArcTan2_flt64			as	'_ZN4Math7ArcTan2Edd'
public	ArcTan_flt32v4			as	'_ZN4Math6ArcTanEDv4_f'
public	ArcTan_flt64v2			as	'_ZN4Math6ArcTanEDv2_d'
public	ArcTan2_flt32v4			as	'_ZN4Math7ArcTan2EDv4_fS0_'
public	ArcTan2_flt64v2			as	'_ZN4Math7ArcTan2EDv2_dS0_'

;******************************************************************************;
;       Hyperbolic functions                                                   ;
;******************************************************************************;

;==============================================================================;
;       Hyperbolic sine                                                        ;
;==============================================================================;
public	SinH_flt32				as	'Math_SinH_flt32'
public	SinH_flt64				as	'Math_SinH_flt64'
public	SinH_flt32v4			as	'Math_SinH_flt32v4'
public	SinH_flt64v2			as	'Math_SinH_flt64v2'
public	SinH_flt32				as	'_ZN4Math4SinHEf'
public	SinH_flt64				as	'_ZN4Math4SinHEd'
public	SinH_flt32v4			as	'_ZN4Math4SinHEDv4_f'
public	SinH_flt64v2			as	'_ZN4Math4SinHEDv2_d'

;==============================================================================;
;       Hyperbolic cosine                                                      ;
;==============================================================================;
public	CosH_flt32				as	'Math_CosH_flt32'
public	CosH_flt64				as	'Math_CosH_flt64'
public	CosH_flt32v4			as	'Math_CosH_flt32v4'
public	CosH_flt64v2			as	'Math_CosH_flt64v2'
public	CosH_flt32				as	'_ZN4Math4CosHEf'
public	CosH_flt64				as	'_ZN4Math4CosHEd'
public	CosH_flt32v4			as	'_ZN4Math4CosHEDv4_f'
public	CosH_flt64v2			as	'_ZN4Math4CosHEDv2_d'

;==============================================================================;
;       Hyperbolic tangent                                                     ;
;==============================================================================;
public	TanH_flt32				as	'Math_TanH_flt32'
public	TanH_flt64				as	'Math_TanH_flt64'
public	TanH_flt32v4			as	'Math_TanH_flt32v4'
public	TanH_flt64v2			as	'Math_TanH_flt64v2'
public	TanH_flt32				as	'_ZN4Math4TanHEf'
public	TanH_flt64				as	'_ZN4Math4TanHEd'
public	TanH_flt32v4			as	'_ZN4Math4TanHEDv4_f'
public	TanH_flt64v2			as	'_ZN4Math4TanHEDv2_d'

;******************************************************************************;
;       Inverse hyperbolic functions                                           ;
;******************************************************************************;

;==============================================================================;
;       Inverse hyperbolic sine                                                ;
;==============================================================================;
public	ArcSinH_flt32			as	'Math_ArcSinH_flt32'
public	ArcSinH_flt64			as	'Math_ArcSinH_flt64'
public	ArcSinH_flt32v4			as	'Math_ArcSinH_flt32v4'
public	ArcSinH_flt64v2			as	'Math_ArcSinH_flt64v2'
public	ArcSinH_flt32			as	'_ZN4Math7ArcSinHEf'
public	ArcSinH_flt64			as	'_ZN4Math7ArcSinHEd'
public	ArcSinH_flt32v4			as	'_ZN4Math7ArcSinHEDv4_f'
public	ArcSinH_flt64v2			as	'_ZN4Math7ArcSinHEDv2_d'

;==============================================================================;
;       Inverse hyperbolic cosine                                              ;
;==============================================================================;
public	ArcCosH_flt32			as	'Math_ArcCosH_flt32'
public	ArcCosH_flt64			as	'Math_ArcCosH_flt64'
public	ArcCosH_flt32v4			as	'Math_ArcCosH_flt32v4'
public	ArcCosH_flt64v2			as	'Math_ArcCosH_flt64v2'
public	ArcCosH_flt32			as	'_ZN4Math7ArcCosHEf'
public	ArcCosH_flt64			as	'_ZN4Math7ArcCosHEd'
public	ArcCosH_flt32v4			as	'_ZN4Math7ArcCosHEDv4_f'
public	ArcCosH_flt64v2			as	'_ZN4Math7ArcCosHEDv2_d'

;==============================================================================;
;       Inverse hyperbolic tangent                                             ;
;==============================================================================;
public	ArcTanH_flt32			as	'Math_ArcTanH_flt32'
public	ArcTanH_flt64			as	'Math_ArcTanH_flt64'
public	ArcTanH_flt32v4			as	'Math_ArcTanH_flt32v4'
public	ArcTanH_flt64v2			as	'Math_ArcTanH_flt64v2'
public	ArcTanH_flt32			as	'_ZN4Math7ArcTanHEf'
public	ArcTanH_flt64			as	'_ZN4Math7ArcTanHEd'
public	ArcTanH_flt32v4			as	'_ZN4Math7ArcTanHEDv4_f'
public	ArcTanH_flt64v2			as	'_ZN4Math7ArcTanHEDv2_d'

;******************************************************************************;
;       Rounding                                                               ;
;******************************************************************************;

; Round down (floor)
public	RoundDown_flt32			as	'Math_RoundDown_flt32'
public	RoundDown_flt64			as	'Math_RoundDown_flt64'
public	RoundDown_flt32v4		as	'Math_RoundDown_flt32v4'
public	RoundDown_flt64v2		as	'Math_RoundDown_flt64v2'
public	RoundDown_flt32			as	'_ZN4Math9RoundDownEf'
public	RoundDown_flt64			as	'_ZN4Math9RoundDownEd'
public	RoundDown_flt32v4		as	'_ZN4Math9RoundDownEDv4_f'
public	RoundDown_flt64v2		as	'_ZN4Math9RoundDownEDv2_d'

; Round up (ceil)
public	RoundUp_flt32			as	'Math_RoundUp_flt32'
public	RoundUp_flt64			as	'Math_RoundUp_flt64'
public	RoundUp_flt32v4			as	'Math_RoundUp_flt32v4'
public	RoundUp_flt64v2			as	'Math_RoundUp_flt64v2'
public	RoundUp_flt32			as	'_ZN4Math7RoundUpEf'
public	RoundUp_flt64			as	'_ZN4Math7RoundUpEd'
public	RoundUp_flt32v4			as	'_ZN4Math7RoundUpEDv4_f'
public	RoundUp_flt64v2			as	'_ZN4Math7RoundUpEDv2_d'

; Round to nearest even integer
public	RoundInt_flt32			as	'Math_RoundInt_flt32'
public	RoundInt_flt64			as	'Math_RoundInt_flt64'
public	RoundInt_flt32v4		as	'Math_RoundInt_flt32v4'
public	RoundInt_flt64v2		as	'Math_RoundInt_flt64v2'
public	RoundInt_flt32			as	'_ZN4Math8RoundIntEf'
public	RoundInt_flt64			as	'_ZN4Math8RoundIntEd'
public	RoundInt_flt32v4		as	'_ZN4Math8RoundIntEDv4_f'
public	RoundInt_flt64v2		as	'_ZN4Math8RoundIntEDv2_d'

; Round to nearest integer, away from zero
public	RoundRound_flt32		as	'Math_Round_flt32'
public	RoundRound_flt64		as	'Math_Round_flt64'
public	RoundRound_flt32v4		as	'Math_Round_flt32v4'
public	RoundRound_flt64v2		as	'Math_Round_flt64v2'
public	RoundRound_flt32		as	'_ZN4Math5RoundEf'
public	RoundRound_flt64		as	'_ZN4Math5RoundEd'
public	RoundRound_flt32v4		as	'_ZN4Math5RoundEDv4_f'
public	RoundRound_flt64v2		as	'_ZN4Math5RoundEDv2_d'

; Round to nearest integer, toward zero (truncation)
public	RoundTrunc_flt32		as	'Math_Truncate_flt32'
public	RoundTrunc_flt64		as	'Math_Truncate_flt64'
public	RoundTrunc_flt32v4		as	'Math_Truncate_flt32v4'
public	RoundTrunc_flt64v2		as	'Math_Truncate_flt64v2'
public	RoundTrunc_flt32		as	'_ZN4Math8TruncateEf'
public	RoundTrunc_flt64		as	'_ZN4Math8TruncateEd'
public	RoundTrunc_flt32v4		as	'_ZN4Math8TruncateEDv4_f'
public	RoundTrunc_flt64v2		as	'_ZN4Math8TruncateEDv2_d'

; Fractional part
public	RoundFrac_flt32			as	'Math_Frac_flt32'
public	RoundFrac_flt64			as	'Math_Frac_flt64'
public	RoundFrac_flt32v4		as	'Math_Frac_flt32v4'
public	RoundFrac_flt64v2		as	'Math_Frac_flt64v2'
public	RoundFrac_flt32			as	'_ZN4Math4FracEf'
public	RoundFrac_flt64			as	'_ZN4Math4FracEd'
public	RoundFrac_flt32v4		as	'_ZN4Math4FracEDv4_f'
public	RoundFrac_flt64v2		as	'_ZN4Math4FracEDv2_d'

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

; Check for normal value
public	IsNorm_flt32			as	'Math_IsNormal_flt32'
public	IsNorm_flt64			as	'Math_IsNormal_flt64'
public	IsNorm_flt32			as	'_ZN4Math8IsNormalEf'
public	IsNorm_flt64			as	'_ZN4Math8IsNormalEd'

; Check for subnormal value
public	IsSub_flt32				as	'Math_IsSubnormal_flt32'
public	IsSub_flt64				as	'Math_IsSubnormal_flt64'
public	IsSub_flt32				as	'_ZN4Math11IsSubnormalEf'
public	IsSub_flt64				as	'_ZN4Math11IsSubnormalEd'

; Check for finite value
public	IsFin_flt32				as	'Math_IsFinite_flt32'
public	IsFin_flt64				as	'Math_IsFinite_flt64'
public	IsFin_flt32				as	'_ZN4Math8IsFiniteEf'
public	IsFin_flt64				as	'_ZN4Math8IsFiniteEd'

; Check for infinite value
public	IsInf_flt32				as	'Math_IsInfinite_flt32'
public	IsInf_flt64				as	'Math_IsInfinite_flt64'
public	IsInf_flt32				as	'_ZN4Math10IsInfiniteEf'
public	IsInf_flt64				as	'_ZN4Math10IsInfiniteEd'

; Check for NaN value
public	IsNaN_flt32				as	'Math_IsNaN_flt32'
public	IsNaN_flt64				as	'Math_IsNaN_flt64'
public	IsNaN_flt32				as	'_ZN4Math5IsNaNEf'
public	IsNaN_flt64				as	'_ZN4Math5IsNaNEd'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

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
macro	BYTE_SWAP_SCLR	result, value, scale
{
		mov		result, value
if scale = 1
		rol		result, 8
else if scale > 1
		bswap	result
end if
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	BYTE_SWAP_VCTR	mpos, scale
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to process
;------------------------------------------
if scale
		pshufb	value, dqword [mpos]		; swap bytes order in value
end if
		ret
}
ByteSwap8:		BYTE_SWAP_SCLR	al, dil, 0
ByteSwap16:		BYTE_SWAP_SCLR	ax, di, 1
ByteSwap32:		BYTE_SWAP_SCLR	eax, edi, 2
ByteSwap64:		BYTE_SWAP_SCLR	rax, rdi, 3
ByteSwap8v16:	BYTE_SWAP_VCTR	mask8, 0
ByteSwap16v8:	BYTE_SWAP_VCTR	mask16, 1
ByteSwap32v4:	BYTE_SWAP_VCTR	mask32, 2
ByteSwap64v2:	BYTE_SWAP_VCTR	mask64, 3

;==============================================================================;
;       Bit reversal permutation                                               ;
;==============================================================================;
macro	BIT_REVERSE_SCLR	result, value, temp1, temp2, scale
{
;---[Internal variables]-------------------
if scale = 0
const11	= 0x55								; const #1 for stage 1
const12	= 0xAA								; const #2 for stage 1
const21	= 0x33								; const #1 for stage 2
const22	= 0xCC								; const #2 for stage 2
const31	= 0x0F								; const #1 for stage 3
const32	= 0xF0								; const #2 for stage 3
else if scale = 1
const11	= 0x5555							; const #1 for stage 1
const12	= 0xAAAA							; const #2 for stage 1
const21	= 0x3333							; const #1 for stage 2
const22	= 0xCCCC							; const #2 for stage 2
const31	= 0x0F0F							; const #1 for stage 3
const32	= 0xF0F0							; const #2 for stage 3
else if scale = 2
const11	= 0x55555555						; const #1 for stage 1
const12	= 0xAAAAAAAA						; const #2 for stage 1
const21	= 0x33333333						; const #1 for stage 2
const22	= 0xCCCCCCCC						; const #2 for stage 2
const31	= 0x0F0F0F0F						; const #1 for stage 3
const32	= 0xF0F0F0F0						; const #2 for stage 3
else if scale = 3
const11	= 0x5555555555555555				; const #1 for stage 1
const12	= 0xAAAAAAAAAAAAAAAA				; const #2 for stage 1
const21	= 0x3333333333333333				; const #1 for stage 2
const22	= 0xCCCCCCCCCCCCCCCC				; const #2 for stage 2
const31	= 0x0F0F0F0F0F0F0F0F				; const #1 for stage 3
const32	= 0xF0F0F0F0F0F0F0F0				; const #2 for stage 3
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
;---[Swap bytes if required]---------------
BYTE_SWAP_SCLR	result, temp1, scale		; return ByteSwap (value)
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	BIT_REVERSE_VCTR	mpos, scale
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to process
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
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
;---[Swap bytes if required]---------------
BYTE_SWAP_VCTR	mpos, scale					; return ByteSwap (value)
}
BitReverse8:	BIT_REVERSE_SCLR	al, dil, dl, cl, 0
BitReverse16:	BIT_REVERSE_SCLR	ax, di, dx, cx, 1
BitReverse32:	BIT_REVERSE_SCLR	eax, edi, edx, ecx, 2
BitReverse64:	BIT_REVERSE_SCLR	rax, rdi, rdx, rcx, 3
BitReverse8v16:	BIT_REVERSE_VCTR	mask8, 0
BitReverse16v8:	BIT_REVERSE_VCTR	mask16, 1
BitReverse32v4:	BIT_REVERSE_VCTR	mask32, 2
BitReverse64v2:	BIT_REVERSE_VCTR	mask64, 3

;==============================================================================;
;       Bit scan                                                               ;
;==============================================================================;
macro	SCAN_BIT	cmd, result, value, error, scale
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
if scale = 0
		and		value, mask					; clear unrequired bits
end if
		mov		error, mask					; error = -1
		cmd		result, value				; result = required set bit
		cmovz	result, error				; if (value = 0), then result = error
		ret									; return result
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Bit scan forward                                                       ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
ScanFwd8:	SCAN_BIT	bsf, ax, di, si, 0
ScanFwd16:	SCAN_BIT	bsf, ax, di, si, 1
ScanFwd32:	SCAN_BIT	bsf, eax, edi, esi, 2
ScanFwd64:	SCAN_BIT	bsf, rax, rdi, rsi, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Bit scan backward                                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
ScanBwd8:	SCAN_BIT	bsr, ax, di, si, 0
ScanBwd16:	SCAN_BIT	bsr, ax, di, si, 1
ScanBwd32:	SCAN_BIT	bsr, eax, edi, esi, 2
ScanBwd64:	SCAN_BIT	bsr, rax, rdi, rsi, 3

;==============================================================================;
;       Circular rotation                                                      ;
;==============================================================================;
macro	ROTATE	cmd, result, value, shift
{
;---[Internal variables]-------------------
rot		equ		cl							; rotation value
;------------------------------------------
		mov		rot, shift					; rot = shift
		cmd		value, rot					; rotate value to rot bits
		mov		result, value				; return Rotate (value, shift)
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Circular rotation to the left                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
RotateLeft8:	ROTATE	rol, al, dil, sil
RotateLeft16:	ROTATE	rol, ax, di, sil
RotateLeft32:	ROTATE	rol, eax, edi, sil
RotateLeft64:	ROTATE	rol, rax, rdi, sil

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Circular rotation to the right                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
RotateRight8:	ROTATE	ror, al, dil, sil
RotateRight16:	ROTATE	ror, ax, di, sil
RotateRight32:	ROTATE	ror, eax, edi, sil
RotateRight64:	ROTATE	ror, rax, rdi, sil

;==============================================================================;
;       Population count                                                       ;
;==============================================================================;
macro	POP_COUNT_SCLR	result, value, scale
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
if scale = 0
		and		value, mask					; clear unrequired bits
end if
		popcnt	result, value				; result = count of set bits
		ret									; return result
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	POP_COUNT_VCTR	scale
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to process
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
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
		ret									; return value
}
PopCount8:		POP_COUNT_SCLR	ax, di, 0
PopCount16:		POP_COUNT_SCLR	ax, di, 1
PopCount32:		POP_COUNT_SCLR	eax, edi, 2
PopCount64:		POP_COUNT_SCLR	rax, rdi, 3
PopCount8v16:	POP_COUNT_VCTR	0
PopCount16v8:	POP_COUNT_VCTR	1
PopCount32v4:	POP_COUNT_VCTR	2
PopCount64v2:	POP_COUNT_VCTR	3

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Absolute value                                                         ;
;==============================================================================;
macro	ABS_INT_SCLR	result, value, negative, scale
{
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		mov		result, value				; result = value
if negative
		sar		result, bytes * 8 - 1		; result >>= 8 * sizeof(x) - 1
		xor		value, result				; value ^= result
else
		sar		value, bytes * 8 - 1		; value >>= 8 * sizeof(x) - 1
		xor		result, value				; result ^= value
end if
		sub		result, value				; return result - value
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ABS_INT_VCTR1	negative, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
;------------------------------------------
if negative
		pabs#x	temp, value					; temp = Abs (value)
		pxor	value, value				; value = 0
		psub#x	value, temp					; value -= temp
else
		pabs#x	value, value				; value = Abs (value)
end if
		ret									; return value
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ABS_INT_VCTR2	negative
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
;------------------------------------------
		pxor	temp, temp					; temp = 0
		pcmpgtq	temp, value					; get sign mask for all numbers
		pxor	value, temp					; value ^= temp
if negative
		psubq	temp, value
		movdqa	value, temp					; return temp - value
else
		psubq	value, temp					; return value - temp
end if
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ABS_FLT		negative, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
if x eq s
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
else if x eq d
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
end if
;------------------------------------------
if negative
		orp#x	value, [smask]				; value = -Abs (value)
else
		andp#x	value, [dmask]				; value = Abs (value)
end if
		ret
}

; Signed integer types
Abs_sint8:			ABS_INT_SCLR	al, dil, 0, 0
Abs_sint16:			ABS_INT_SCLR	ax, di, 0, 1
Abs_sint32:			ABS_INT_SCLR	eax, edi, 0, 2
Abs_sint64:			ABS_INT_SCLR	rax, rdi, 0, 3
Abs_sint8v16:		ABS_INT_VCTR1	0, b
Abs_sint16v8:		ABS_INT_VCTR1	0, w
Abs_sint32v4:		ABS_INT_VCTR1	0, d
Abs_sint64v2:		ABS_INT_VCTR2	0

; Floating-point types
Abs_flt32:			ABS_FLT		0, s
Abs_flt64:			ABS_FLT		0, d

;==============================================================================;
;       Negative absolute value                                                ;
;==============================================================================;

; Signed integer types
NegAbs_sint8:		ABS_INT_SCLR	al, dil, 1, 0
NegAbs_sint16:		ABS_INT_SCLR	ax, di, 1, 1
NegAbs_sint32:		ABS_INT_SCLR	eax, edi, 1, 2
NegAbs_sint64:		ABS_INT_SCLR	rax, rdi, 1, 3
NegAbs_sint8v16:	ABS_INT_VCTR1	1, b
NegAbs_sint16v8:	ABS_INT_VCTR1	1, w
NegAbs_sint32v4:	ABS_INT_VCTR1	1, d
NegAbs_sint64v2:	ABS_INT_VCTR2	1

; Floating-point types
NegAbs_flt32:		ABS_FLT		1, s
NegAbs_flt64:		ABS_FLT		1, d

;==============================================================================;
;       Number sign                                                            ;
;==============================================================================;
macro	SIGN_INT_SCLR	value1, value2, c1, c2
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
macro	SIGN_INT_VCTR	bias, type, x
{
;---[Parameters]---------------------------
value1	equ		xmm0						; first value
value2	equ		xmm1						; second value
;---[Internal variables]-------------------
temp	equ		xmm2						; temporary register
;------------------------------------------
if type = 1
		pxor	value2, value2				; value2 = 0
else if type = 2
		psub#x	value1, dqword [bias]		; value1 -= bias
		psub#x	value2, dqword [bias]		; value2 -= bias
end if
		movdqa	temp, value1				; temp = value1
	pcmpgt#x	temp, value2				; set bits if value1 > 0
	pcmpgt#x	value2, value1				; set bits if value1 < 0
		psub#x	value2, temp				; value2 -= temp
		movdqa	value1, value2				; return value2
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SIGN_FLT_SCLR	reg, pone, mone, nan, sign, x
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
		movint	value1, reg, x				; return reg
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SIGN_FLT_VCTR	sign, x
{
;---[Parameters]---------------------------
value1	equ		xmm0						; first value
value2	equ		xmm1						; second value
;---[Internal variables]-------------------
less	equ		xmm2						; less condition
great	equ		xmm3						; great condition
if x eq s
nanval	= pnan_flt32						; +NaN
oneval	= pone_flt32						; +1.0
else if x eq d
nanval	= pnan_flt64						; +NaN
oneval	= pone_flt64						; +1.0
end if
;------------------------------------------
if sign
		xorp#x	value2, value2				; value2 = 0
end if
		movap#x	less, value1				; less = value1
		movap#x	great, value2				; great = value2
	cmpltp#x	great, value1				; great = (value2 < value1)
		andp#x	great, [oneval]				; great &= one
	cmpltp#x	less, value2				; less = (value1 < value2)
		andp#x	less, [oneval]				; less &= one
	cmpunordp#x	value1, value2				; value1 = (value1 != value2)
		andp#x	value1, [nanval]			; value1 &= nan
		subp#x	great, less					; great -= less
		orp#x	value1, great				; value1 |= great
		ret									; return value1
}

; Signed integer types
Sign_sint8:		SIGN_INT_SCLR	dil, 0, g, l
Sign_sint16:	SIGN_INT_SCLR	di, 0, g, l
Sign_sint32:	SIGN_INT_SCLR	edi, 0, g, l
Sign_sint64:	SIGN_INT_SCLR	rdi, 0, g, l
Sign_sint8v16:	SIGN_INT_VCTR	sbias8, 1, b
Sign_sint16v8:	SIGN_INT_VCTR	sbias16, 1, w
Sign_sint32v4:	SIGN_INT_VCTR	sbias32, 1, d
Sign_sint64v2:	SIGN_INT_VCTR	sbias64, 1, q

; Floating-point types
Sign_flt32:		SIGN_FLT_SCLR	eax, edx, ecx, edi, 1, s
Sign_flt64:		SIGN_FLT_SCLR	rax, rdx, rcx, rdi, 1, d
Sign_flt32v4:	SIGN_FLT_VCTR	1, s
Sign_flt64v2:	SIGN_FLT_VCTR	1, d

;==============================================================================;
;       Square root                                                            ;
;==============================================================================;
macro	SQRT_INT	root, value, mask, temp, size
{
;------------------------------------------
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
macro	SQRT_FLT	p, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
;------------------------------------------
	sqrt#p#x	value, value				; ret Sqrt (value)
		ret
}

; Unsigned integer types
Sqrt_uint8:		SQRT_INT	al, dil, cl, dl, 1
Sqrt_uint16:	SQRT_INT	ax, di, cx, dx, 2
Sqrt_uint32:	SQRT_INT	eax, edi, ecx, edx, 4
Sqrt_uint64:	SQRT_INT	rax, rdi, rcx, rdx, 8

; Floating-point types
Sqrt_flt32:		SQRT_FLT	s, s
Sqrt_flt64:		SQRT_FLT	s, d
Sqrt_flt32v4:	SQRT_FLT	p, s
Sqrt_flt64v2:	SQRT_FLT	p, d

;==============================================================================;
;       Square value                                                           ;
;==============================================================================;
macro	SQR_INT		cmd, result, value
{
		mov		result, value				; result = value
		cmd		value						; result *= value
		ret									; return result
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SQR_FLT		p, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
;------------------------------------------
	mul#p#x	value, value					; value *= value
		ret									; return value
}

; Unsigned integer types
Sqr_uint8:		SQR_INT		mul, al, dil
Sqr_uint16:		SQR_INT		mul, ax, di
Sqr_uint32:		SQR_INT		mul, eax, edi
Sqr_uint64:		SQR_INT		mul, rax, rdi

; Signed integer types
Sqr_sint8:		SQR_INT		imul, al, dil
Sqr_sint16:		SQR_INT		imul, ax, di
Sqr_sint32:		SQR_INT		imul, eax, edi
Sqr_sint64:		SQR_INT		imul, rax, rdi

; Floating-point types
Sqr_flt32:		SQR_FLT		s, s
Sqr_flt64:		SQR_FLT		s, d
Sqr_flt32v4:	SQR_FLT		p, s
Sqr_flt64v2:	SQR_FLT		p, d

;==============================================================================;
;       Cube value                                                             ;
;==============================================================================;
macro	CUBE_INT	cmd, result, value
{
		mov		result, value				; result = value
		cmd		value						; result *= value
		cmd		value						; result *= value
		ret									; return result
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CUBE_FLT	p, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
temp	equ		xmm1						; temporary register
;------------------------------------------
		movap#x	temp, value					; temp = value
		mul#p#x	value, value				; value *= value
		mul#p#x	value, temp					; value *= temp
		ret									; return value
}

; Unsigned integer types
Cube_uint8:		CUBE_INT	mul, al, dil
Cube_uint16:	CUBE_INT	mul, ax, di
Cube_uint32:	CUBE_INT	mul, eax, edi
Cube_uint64:	CUBE_INT	mul, rax, rdi

; Signed integer types
Cube_sint8:		CUBE_INT	imul, al, dil
Cube_sint16:	CUBE_INT	imul, ax, di
Cube_sint32:	CUBE_INT	imul, eax, edi
Cube_sint64:	CUBE_INT	imul, rax, rdi

; Floating-point types
Cube_flt32:		CUBE_FLT	s, s
Cube_flt64:		CUBE_FLT	s, d
Cube_flt32v4:	CUBE_FLT	p, s
Cube_flt64v2:	CUBE_FLT	p, d

;==============================================================================;
;       Inverse value                                                          ;
;==============================================================================;
macro	INVERSE		type, p, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
if x eq s
oneval	= pone_flt32						; +1.0
else if x eq d
oneval	= pone_flt64						; +1.0
end if
;------------------------------------------
		movap#x	temp, value					; temp = value
if type > 0
		mul#p#x	temp, temp					; temp *= temp
end if
if type > 1
		mul#p#x	temp, value					; temp *= value
end if
		movap#x	value, [oneval]				; value = 1.0
		div#p#x	value, temp					; return 1.0 / temp
		ret
}
InverseValue_flt32:		INVERSE	0, s, s
InverseValue_flt64:		INVERSE	0, s, d
InverseValue_flt32v4:	INVERSE	0, p, s
InverseValue_flt64v2:	INVERSE	0, p, d

;==============================================================================;
;       Inverse square value                                                   ;
;==============================================================================;
InverseSquare_flt32:	INVERSE	1, s, s
InverseSquare_flt64:	INVERSE	1, s, d
InverseSquare_flt32v4:	INVERSE	1, p, s
InverseSquare_flt64v2:	INVERSE	1, p, d

;==============================================================================;
;       Inverse cube value                                                     ;
;==============================================================================;
InverseCube_flt32:		INVERSE	2, s, s
InverseCube_flt64:		INVERSE	2, s, d
InverseCube_flt32v4:	INVERSE	2, p, s
InverseCube_flt64v2:	INVERSE	2, p, d

;==============================================================================;
;       Three-state comparison                                                 ;
;==============================================================================;
macro	SIGN_RAW	value1, value2, temp1, temp2, x
{
;---[Internal variables]-------------------
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
SIGN_INT_SCLR	value1, value2, g, l		; return comparison result
}

; Unsigned integer types
Compare_uint8:		SIGN_INT_SCLR	dil, sil, a, b
Compare_uint16:		SIGN_INT_SCLR	di, si, a, b
Compare_uint32:		SIGN_INT_SCLR	edi, esi, a, b
Compare_uint64:		SIGN_INT_SCLR	rdi, rsi, a, b
Compare_uint8v16:	SIGN_INT_VCTR	sbias8, 2, b
Compare_uint16v8:	SIGN_INT_VCTR	sbias16, 2, w
Compare_uint32v4:	SIGN_INT_VCTR	sbias32, 2, d
Compare_uint64v2:	SIGN_INT_VCTR	sbias64, 2, q

; Signed integer types
Compare_sint8:		SIGN_INT_SCLR	dil, sil, g, l
Compare_sint16:		SIGN_INT_SCLR	di, si, g, l
Compare_sint32:		SIGN_INT_SCLR	edi, esi, g, l
Compare_sint64:		SIGN_INT_SCLR	rdi, rsi, g, l
Compare_sint8v16:	SIGN_INT_VCTR	sbias8, 0, b
Compare_sint16v8:	SIGN_INT_VCTR	sbias16, 0, w
Compare_sint32v4:	SIGN_INT_VCTR	sbias32, 0, d
Compare_sint64v2:	SIGN_INT_VCTR	sbias64, 0, q

; Floating-point types
Compare_flt32:		SIGN_FLT_SCLR	eax, edx, ecx, edi, 0, s
Compare_flt64:		SIGN_FLT_SCLR	rax, rdx, rcx, rdi, 0, d
Compare_flt32v4:	SIGN_FLT_VCTR	0, s
Compare_flt64v2:	SIGN_FLT_VCTR	0, d
Compare_raw32:		SIGN_RAW		edi, esi, r8d, r9d, s
Compare_raw64:		SIGN_RAW		rdi, rsi, r8, r9, d

;==============================================================================;
;       Minimum and maximum absolute value                                     ;
;==============================================================================;
macro	MINMAX_INT_SCLR	value1, value2, temp1, temp2, cond, abs, scale
{
;---[Internal variables]-------------------
res1	equ		rax							; result register #1
res2	equ		rdx							; result register #2
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		mov		temp1, value1				; temp1 = value1
		mov		temp2, value2				; temp2 = value2
if abs
;---[Get first absolute value]-------------
		sar		value1, bytes * 8 - 1		; value1 >>= 8 * sizeof(x) - 1
		xor		temp1, value1				; temp1 ^= value1
		sub		temp1, value1				; temp1 = Abs (value1)
;---[Get second absolute value]------------
		sar		value2, bytes * 8 - 1		; value1 >>= 8 * sizeof(x) - 1
		xor		temp2, value2				; temp2 ^= value2
		sub		temp2, value2				; temp2 = Abs (value2)
end if
;---[Find min or max value]----------------
		cmp		temp1, temp2				; if (temp1 cond temp2)
	cmov#cond	res1, res2					;     res1 = res2
		ret									; return res1
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MINMAX_INT_VCTR	cmd, abs, x
{
;---[Parameters]---------------------------
value1	equ		xmm0						; first value
value2	equ		xmm1						; second value
;------------------------------------------
if abs
;---[Get absolute values]------------------
		pabs#x	value1, value1				; value1 = Abs (value1)
		pabs#x	value2, value2				; value2 = Abs (value2)
end if
;---[Find min or max value]----------------
		cmd#x	value1, value2				; return minmax (value1, value2)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MINMAX_FLT_SCLR	cmd, abs, x
{
;---[Parameters]---------------------------
value1	equ		xmm0						; first value
value2	equ		xmm1						; second value
;---[Internal variables]-------------------
if x eq s
dmask	= dmask_flt32						; data mask
else if x eq d
dmask	= dmask_flt64						; data mask
end if
;------------------------------------------
if abs
		andp#x	value1, [dmask]				; value1 = Abs (value1)
		andp#x	value2, [dmask]				; value2 = Abs (value2)
end if
		comis#x	value1, value1				; if (value1 == NaN)
		jp		.exit						;     return NaN
		cmd#x	value1, value2				; return minmax (value1, value2)
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	MINMAX_FLT_VCTR	cmd, abs, x
{
;---[Parameters]---------------------------
value1	equ		xmm0						; first value
value2	equ		xmm1						; second value
;---[Internal variables]-------------------
temp	equ		xmm2						; temporary register
if x eq s
dmask	= dmask_flt32						; data mask
else if x eq d
dmask	= dmask_flt64						; data mask
end if
;------------------------------------------
if abs
		andp#x	value1, [dmask]				; value1 = Abs (value1)
		andp#x	value2, [dmask]				; value2 = Abs (value2)
end if
		movap#x	temp, value1
	cmpunordp#x	value1, value1
	blendvp#x	value2, temp				; insert NaN values from value1
		movap#x	value1, temp
		cmd#x	value1, value2				; return minmax (value1, value2)
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum absolute value                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
MinAbs_sint8:		MINMAX_INT_SCLR		dil, sil, al, dl, a, 1, 0
MinAbs_sint16:		MINMAX_INT_SCLR		di, si, ax, dx, a, 1, 1
MinAbs_sint32:		MINMAX_INT_SCLR		edi, esi, eax, edx, a, 1, 2
MinAbs_sint64:		MINMAX_INT_SCLR		rdi, rsi, rax, rdx, a, 1, 3
MinAbs_sint8v16:	MINMAX_INT_VCTR		pminu, 1, b
MinAbs_sint16v8:	MINMAX_INT_VCTR		pminu, 1, w
MinAbs_sint32v4:	MINMAX_INT_VCTR		pminu, 1, d

; Floating-point types
MinAbs_flt32:		MINMAX_FLT_SCLR		mins, 1, s
MinAbs_flt64:		MINMAX_FLT_SCLR		mins, 1, d
MinAbs_flt32v4:		MINMAX_FLT_VCTR		minp, 1, s
MinAbs_flt64v2:		MINMAX_FLT_VCTR		minp, 1, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum absolute value                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Signed integer types
MaxAbs_sint8:		MINMAX_INT_SCLR		dil, sil, al, dl, b, 1, 0
MaxAbs_sint16:		MINMAX_INT_SCLR		di, si, ax, dx, b, 1, 1
MaxAbs_sint32:		MINMAX_INT_SCLR		edi, esi, eax, edx, b, 1, 2
MaxAbs_sint64:		MINMAX_INT_SCLR		rdi, rsi, rax, rdx, b, 1, 3
MaxAbs_sint8v16:	MINMAX_INT_VCTR		pmaxu, 1, b
MaxAbs_sint16v8:	MINMAX_INT_VCTR		pmaxu, 1, w
MaxAbs_sint32v4:	MINMAX_INT_VCTR		pmaxu, 1, d

; Floating-point types
MaxAbs_flt32:		MINMAX_FLT_SCLR		maxs, 1, s
MaxAbs_flt64:		MINMAX_FLT_SCLR		maxs, 1, d
MaxAbs_flt32v4:		MINMAX_FLT_VCTR		maxp, 1, s
MaxAbs_flt64v2:		MINMAX_FLT_VCTR		maxp, 1, d

;==============================================================================;
;       Minimum and maximum value                                              ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Minimum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
Min_uint8:		MINMAX_INT_SCLR		dil, sil, al, dl, a, 0, 0
Min_uint16:		MINMAX_INT_SCLR		di, si, ax, dx, a, 0, 1
Min_uint32:		MINMAX_INT_SCLR		edi, esi, eax, edx, a, 0, 2
Min_uint64:		MINMAX_INT_SCLR		rdi, rsi, rax, rdx, a, 0, 3
Min_uint8v16:	MINMAX_INT_VCTR		pminu, 0, b
Min_uint16v8:	MINMAX_INT_VCTR		pminu, 0, w
Min_uint32v4:	MINMAX_INT_VCTR		pminu, 0, d

; Signed integer types
Min_sint8:		MINMAX_INT_SCLR		dil, sil, al, dl, g, 0, 0
Min_sint16:		MINMAX_INT_SCLR		di, si, ax, dx, g, 0, 1
Min_sint32:		MINMAX_INT_SCLR		edi, esi, eax, edx, g, 0, 2
Min_sint64:		MINMAX_INT_SCLR		rdi, rsi, rax, rdx, g, 0, 3
Min_sint8v16:	MINMAX_INT_VCTR		pmins, 0, b
Min_sint16v8:	MINMAX_INT_VCTR		pmins, 0, w
Min_sint32v4:	MINMAX_INT_VCTR		pmins, 0, d

; Floating-point types
Min_flt32:		MINMAX_FLT_SCLR		mins, 0, s
Min_flt64:		MINMAX_FLT_SCLR		mins, 0, d
Min_flt32v4:	MINMAX_FLT_VCTR		minp, 0, s
Min_flt64v2:	MINMAX_FLT_VCTR		minp, 0, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Maximum value                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
Max_uint8:		MINMAX_INT_SCLR		dil, sil, al, dl, b, 0, 0
Max_uint16:		MINMAX_INT_SCLR		di, si, ax, dx, b, 0, 1
Max_uint32:		MINMAX_INT_SCLR		edi, esi, eax, edx, b, 0, 2
Max_uint64:		MINMAX_INT_SCLR		rdi, rsi, rax, rdx, b, 0, 3
Max_uint8v16:	MINMAX_INT_VCTR		pmaxu, 0, b
Max_uint16v8:	MINMAX_INT_VCTR		pmaxu, 0, w
Max_uint32v4:	MINMAX_INT_VCTR		pmaxu, 0, d

; Signed integer types
Max_sint8:		MINMAX_INT_SCLR		dil, sil, al, dl, l, 0, 0
Max_sint16:		MINMAX_INT_SCLR		di, si, ax, dx, l, 0, 1
Max_sint32:		MINMAX_INT_SCLR		edi, esi, eax, edx, l, 0, 2
Max_sint64:		MINMAX_INT_SCLR		rdi, rsi, rax, rdx, l, 0, 3
Max_sint8v16:	MINMAX_INT_VCTR		pmaxs, 0, b
Max_sint16v8:	MINMAX_INT_VCTR		pmaxs, 0, w
Max_sint32v4:	MINMAX_INT_VCTR		pmaxs, 0, d

; Floating-point types
Max_flt32:		MINMAX_FLT_SCLR		maxs, 0, s
Max_flt64:		MINMAX_FLT_SCLR		maxs, 0, d
Max_flt32v4:	MINMAX_FLT_VCTR		maxp, 0, s
Max_flt64v2:	MINMAX_FLT_VCTR		maxp, 0, d

;==============================================================================;
;       Greatest common divisor                                                ;
;==============================================================================;
macro	GCD		value1, value2, temp, result, remain, sign, scale
{
;---[Internal variables]-------------------
bytes	= 1 shl scale						; size of element (bytes)
;------------------------------------------
		mov		result, value1				; result = value1
		mov		temp, value2				; temp = value2
if sign
;---[Compute first absolute value]---------
		sar		value1, bytes * 8 - 1		; value1 >>= 8 * sizeof(x) - 1
		xor		result, value1				; result ^= value1
		sub		result, value1				; result = Abs (value1)
;---[Compute second absolute value]--------
		sar		value2, bytes * 8 - 1		; value2 >>= 8 * sizeof(x) - 1
		xor		temp, value2				; temp ^= value2
		sub		temp, value2				; temp = Abs (value2)
end if
		test	temp, temp					; if (temp == 0)
		jz		.exit						;     the go to exit
;---[Dividing loop]------------------------
.loop:	xor		remain, remain				; do {
		div		temp						;    remain = result % temp
		mov		result, temp				;    result = temp
		mov		temp, remain				;    temp = remain
		test	remain, remain				;
		jnz		.loop						; } while (remain != 0)
;---[End of loop]--------------------------
.exit:	ret									; return result
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
macro	LCM		CoreFunc, value1, value2, temp, result, remain, sign, scale
{
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_val1	equ		stack + 0 * 8				; stack position of "value1" variable
s_val2	equ		stack + 1 * 8				; stack position of "value2" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
if sign
;---[Compute first absolute value]---------
		mov		result, value1				; result = value1
		sar		result, bytes * 8 - 1		; result >>= 8 * sizeof(x) - 1
		xor		value1, result				; value1 ^= result
		sub		value1, result				; value1 = Abs (value1)
;---[Compute second absolute value]--------
		mov		temp, value2				; temp = value2
		sar		temp, bytes * 8 - 1			; temp >>= 8 * sizeof(x) - 1
		xor		value2, temp				; value2 ^= temp
		sub		value2, temp				; value2 = Abs (value2)
end if
		mov		[s_val1], value1			; save "value1" variable into the stack
		mov		[s_val2], value2			; save "value2" variable into the stack
		call	CoreFunc					; result = GCD (value1, value2)
		test	result, result				; if (result == 0)
		jz		.ovfl						;     then go to overflow branch
;---[Normal execution branch]--------------
		mov		value1, [s_val1]			; get "value1" variable from the stack
		mov		value2, [s_val2]			; get "value2" variable from the stack
		mov		temp, result				; temp = GCD (value1, value2)
		mov		result, value2				; result = value2
		xor		remain, remain
		div		temp						; value2 /= temp
		mul		value1						; value1 *= value2 / GCD (value1, value2)
		jc		.ovfl						; if (overflow), then go to overflow branch
		add		stack, space				; restoring back the stack pointer
		ret
;---[Overflow branch]----------------------
.ovfl:	xor		result, result				; return 0 (means result overflow)
		add		stack, space				; restoring back the stack pointer
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
macro	CANCEL	CoreFunc, temp, result, high, sign, scale
{
;---[Parameters]---------------------------
ptr1	equ		rdi							; pointer to first variable
ptr2	equ		rsi							; pointer to second variable
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
		call	CoreFunc
		test	result, result				; if (result == 0)
		jz		.exit						;     then go to exit
;---[Normal execution branch]--------------
		mov		ptr1, [s_ptr1]				; get "ptr1" variable from the stack
		mov		ptr2, [s_ptr2]				; get "ptr2" variable from the stack
		mov		temp, result				; temp = GCD (ptr1[0], ptr2[0])
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
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}

; Unsigned integer types
Cancel_uint8:	CANCEL	GCD_uint8, cl, al, ah, 0, 0
Cancel_uint16:	CANCEL	GCD_uint16, cx, ax, dx, 0, 1
Cancel_uint32:	CANCEL	GCD_uint32, ecx, eax, edx, 0, 2
Cancel_uint64:	CANCEL	GCD_uint64, rcx, rax, rdx, 0, 3

; Signed integer types
Cancel_sint8:	CANCEL	GCD_sint8, cl, al, ah, 1, 0
Cancel_sint16:	CANCEL	GCD_sint16, cx, ax, dx, 1, 1
Cancel_sint32:	CANCEL	GCD_sint32, ecx, eax, edx, 1, 2
Cancel_sint64:	CANCEL	GCD_sint64, rcx, rax, rdx, 1, 3

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
if x eq s
dmask	= dmask_flt32						; data mask
else if x eq d
dmask	= dmask_flt64						; data mask
end if
;------------------------------------------
		subp#x	approx, accur
		andp#x	approx, [dmask]				; return Abs (approx - accur)
		ret
}
AbsError_flt32:		ABS_ERROR	s
AbsError_flt64:		ABS_ERROR	d

;==============================================================================;
;       Relative error                                                         ;
;==============================================================================;
macro	REL_ERROR_SCLR	x
{
;---[Parameters]---------------------------
approx	equ		xmm0						; approximate value
accur	equ		xmm1						; accurate value
;---[Internal variables]-------------------
zero	equ		xmm2						; 0.0
if x eq s
dmask	= dmask_flt32						; data mask
nanval	= pnan_flt32						; +NaN
else if x eq d
dmask	= dmask_flt64						; data mask
nanval	= pnan_flt64						; +NaN
end if
;------------------------------------------
		xorp#x	zero, zero					; zero = 0
		comis#x	accur, zero					; if (accur == 0)
		jz		.error						;     then return NaN
		subs#x	approx, accur
		divs#x	approx, accur
		andp#x	approx, [dmask]				; return Abs ((approx - accur) / accur)
		ret
;---[Error branch]-------------------------
.error:	movap#x	approx, [nanval]			; retrun NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	REL_ERROR_VCTR	x
{
;---[Parameters]---------------------------
approx	equ		xmm0						; approximate value
accur	equ		xmm1						; accurate value
;---[Internal variables]-------------------
temp	equ		xmm2						; temporary register
if x eq s
dmask	= dmask_flt32						; data mask
nanval	= pnan_flt32						; +NaN
else if x eq d
dmask	= dmask_flt64						; data mask
nanval	= pnan_flt64						; +NaN
end if
;------------------------------------------
		movap#x	temp, approx				; temp = approx
		xorp#x	approx, approx				; approx = 0.0
	cmpeqp#x	approx, accur				; set bit mask if approx == 0
		subp#x	temp, accur
		divp#x	temp, accur
		andp#x	temp, [dmask]				; temp = Abs ((approx - accur) / accur)
	blendvp#x	temp, [nanval]				; insert NaN values where accur == 0
		movap#x	approx, temp				; return Abs ((approx - accur) / accur)
		ret
}
RelError_flt32:		REL_ERROR_SCLR	s
RelError_flt64:		REL_ERROR_SCLR	d
RelError_flt32v4:	REL_ERROR_VCTR	s
RelError_flt64v2:	REL_ERROR_VCTR	d

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
svalue	equ		xmm1						; scale value
if x eq s
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= EBIAS_FLT32						; exponent bias
sclval1	= 0x7F000000						; 2^+127
sclval2	= 0x00800000						; 2^-126
else if x eq d
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= EBIAS_FLT64						; exponent bias
sclval1	= 0x7FE0000000000000				; 2^+1023
sclval2	= 0x0010000000000000				; 2^-1022
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
		movint	svalue, temp, x				; svalue = 2^exp
		muls#x	value, svalue				; return (value * svalue)
		ret
;---[Correcting positive power]------------
.pcorr:	initreg	svalue, treg, sclval1		; svalue = sclval1
		sub		temp, maxpow				; temp -= maxpow
		muls#x	value, svalue				; value *= svalue
		cmp		temp, maxpow				; if (temp <= maxpow)
		jle		@b							;     then exp is correct now
		sub		temp, maxpow				; temp -= maxpow
		muls#x	value, svalue				; value *= svalue
		cmp		temp, maxpow				; if (temp <= maxpow)
		jle		@b							;     then exp is correct now
		muls#x	value, svalue				; return (value * svalue)
		ret
;---[Negative exponent branch]-------------
.neg:	cmp		temp, minpow				; if (temp < minpow)
		jl		.ncorr						;     then correct the exponent
@@:		add		temp, bias					; temp = exp + bias
		shl		temp, mbits					; temp <<= mbits
		movint	svalue, temp, x				; svalue = 2^exp
		muls#x	value, svalue				; return (value * svalue)
		ret
;---[Correcting negative power]------------
.ncorr:	initreg	svalue, treg, sclval2		; svalue = sclval2
		sub		temp, minpow				; temp -= minpow
		muls#x	value, svalue				; value *= svalue
		cmp		temp, minpow				; if (temp >= minpow)
		jge		@b							;     then exp is correct now
		sub		temp, minpow				; temp -= minpow
		muls#x	value, svalue				; value *= svalue
		cmp		temp, minpow				; if (temp >= minpow)
		jge		@b							;     then exp is correct now
		muls#x	value, svalue				; return (value * svalue)
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
svalue	equ		xmm1						; scale value
if x eq s
sclval1	= 0x7E967699						; 10^+38
sclval2	= 0x02081CEA						; 10^-37
shift	= 46								; shift value
minpow	= -37								; min power of 10
maxpow	= +38								; max power of 10
bytes	= 4									; array element size (bytes)
tent	= ten_flt32							; table of integer powers of 10^x
else if x eq d
sclval1	= 0x7FE1CCF385EBC8A0				; 10^+308
sclval2	= 0x0031FA182C40C60D				; 10^-307
shift	= 324								; shift value
minpow	= -307								; min power of 10
maxpow	= +308								; max power of 10
bytes	= 8									; array element size (bytes)
tent	= ten_flt64							; table of integer powers of 10^x
end if
;------------------------------------------
		lea		table, [tent]				; set pointer to table of 10 powers
		movsx	index, exp					; index = exp
		test	index, index				; if (index < 0)
		js		.neg						;     then go to negative exponent branch
;---[Positive exponent branch]-------------
		cmp		index, maxpow				; if (index > maxpow)
		jg		.pcorr						;     then correct the exponent
@@:		movs#x	svalue, [table + index * bytes + shift * bytes]
		muls#x	value, svalue				; return (value * svalue)
		ret
;---[Correcting positive power]------------
.pcorr:	initreg	svalue, treg, sclval1		; svalue = sclval1
		sub		index, maxpow				; index -= maxpow
		muls#x	value, svalue				; value *= svalue
		cmp		index, maxpow				; if (index <= maxpow)
		jle		@b							;     then exp is correct now
		sub		index, maxpow				; index -= maxpow
		muls#x	value, svalue				; value *= svalue
		cmp		index, maxpow				; if (index <= maxpow)
		jle		@b							;     then exp is correct now
		muls#x	value, svalue				; return (value * svalue)
		ret
;---[Negative exponent branch]-------------
.neg:	cmp		index, minpow				; if (index < minpow)
		jl		.ncorr						;     then correct the exponent
@@:		movs#x	svalue, [table + index * bytes + shift * bytes]
		muls#x	value, svalue				; return (value * svalue)
		ret
;---[Correcting negative power]------------
.ncorr:	initreg	svalue, treg, sclval2		; svalue = sclval2
		sub		index, minpow				; index -= minpow
		muls#x	value, svalue				; value *= svalue
		cmp		index, minpow				; if (index >= minpow)
		jge		@b							;     then exp is correct now
		sub		index, minpow				; index -= minpow
		muls#x	value, svalue				; value *= svalue
		cmp		index, minpow				; if (index >= minpow)
		jge		@b							;     then exp is correct now
		muls#x	value, svalue				; return (value * svalue)
		ret
}
Scale10_flt32:	SCALE10	s
Scale10_flt64:	SCALE10	d

;******************************************************************************;
;       Exponentiation functions                                               ;
;******************************************************************************;
macro	EXP_CORE_SCLR	ival, temp, minus, i, x
{
;---[Parameters]---------------------------
fpart	equ		xmm0						; fractional part of exponent value
;---[Internal variables]-------------------
table	equ		rax							; pointer to array of coefficients
ipart	equ		xmm1						; integer part of exponent value
svalue	equ		xmm2						; scale value
value	equ		xmm3						; value to process
temp1	equ		xmm4						; temporary register #1
temp2	equ		xmm5						; temporary register #2
temp3	equ		xmm6						; temporary register #3
temp4	equ		xmm7						; temporary register #4
temp5	equ		xmm8						; temporary register #5
temp6	equ		xmm9						; temporary register #6
temp7	equ		xmm10						; temporary register #7
temp8	equ		xmm11						; temporary register #8
if x eq s
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= EBIAS_FLT32 * 2					; exponent double bias value
poneval	= pone_flt32						; +1.0
moneval	= mone_flt32						; -1.0
expt	= exp_flt32							; pointer to array of exp coefficients
else if x eq d
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= EBIAS_FLT64 * 2					; exponent double bias value
poneval	= pone_flt64						; +1.0
moneval	= mone_flt64						; -1.0
expt	= exp_flt64							; pointer to array of exp coefficients
end if
;---[Split integer part]-------------------
		add		ival, bias					; ival += bias
		mov		temp, ival
		shr		temp, 1						; temp = ival >> 1
		sub		ival, temp					; ival -= temp
;---[Compute scale value]------------------
		shl		ival, mbits					; ival <<= mbits
		shl		temp, mbits					; temp <<= mbits
		mov#i	ipart, ival					; ipart = ival
		mov#i	value, temp					; value = temp
		muls#x	ipart, value				; ipart = Exp2 (ival)
;---[Compute polynomial value]-------------
		lea		table, [expt]				; set pointer to array of coefficients
		movap#x	value, fpart				; value = fpart
if x eq s
	POLYNOM8	table, fpart, svalue, value, s, s, x
else if x eq d
	POLYNOM16	table, fpart, svalue, value, s, s, x
end if
;---[Compute final result]-----------------
if minus
		movap#x	value, [moneval]
		adds#x	value, ipart				; value = ipart - 1.0
		muls#x	fpart, ipart				; fpart *= ipart
		adds#x	fpart, value				; return (fpart * ipart) + (ipart - 1.0)
else
		adds#x	fpart, [poneval]			; fpart += 1.0
		muls#x	fpart, ipart				; return fpart * ipart
end if
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXP_CORE_VCTR	minus, i, x
{
;---[Parameters]---------------------------
fpart	equ		xmm0						; fractional part of exponent value
ipart	equ		xmm1						; integer part of exponent value
;---[Internal variables]-------------------
table	equ		rax							; pointer to array of coefficients
svalue	equ		xmm2						; scale value
value	equ		xmm3						; value to process
temp1	equ		xmm4						; temporary register #1
temp2	equ		xmm5						; temporary register #2
temp3	equ		xmm6						; temporary register #3
temp4	equ		xmm7						; temporary register #4
temp5	equ		xmm8						; temporary register #5
temp6	equ		xmm9						; temporary register #6
temp7	equ		xmm10						; temporary register #7
temp8	equ		xmm11						; temporary register #8
if x eq s
mbits	= MBITS_FLT32						; count of bits into mantissa
bias	= dbias_flt32						; exponent double bias value
poneval	= pone_flt32						; +1.0
moneval	= mone_flt32						; -1.0
expt	= exp_flt32							; pointer to array of exp coefficients
else if x eq d
mbits	= MBITS_FLT64						; count of bits into mantissa
bias	= dbias_flt64						; exponent double bias value
poneval	= pone_flt64						; +1.0
moneval	= mone_flt64						; -1.0
expt	= exp_flt64							; pointer to array of exp coefficients
end if
;---[Split integer part]-------------------
		padd#i	ipart, [bias]				; ipart += bias
		movdqa	value, ipart
		psrl#i	value, 1					; value = ipart >> 1
		psub#i	ipart, value				; ipart -= value
;---[Compute scale value]------------------
		psll#i	ipart, mbits				; ipart <<= mbits
		psll#i	value, mbits				; value <<= mbits
		mulp#x	ipart, value				; ipart = Exp2 (ipart)
;---[Compute polynomial value]-------------
		lea		table, [expt]				; set pointer to array of coefficients
		movap#x	value, fpart				; value = fpart
if x eq s
	POLYNOM8	table, fpart, svalue, value, ap, p, x
else if x eq d
	POLYNOM16	table, fpart, svalue, value, ap, p, x
end if
;---[Compute final result]-----------------
if minus
		movap#x	value, [moneval]
		addp#x	value, ipart				; value = ipart - 1.0
		mulp#x	fpart, ipart				; fpart *= ipart
		addp#x	fpart, value				; return (fpart * ipart) + (ipart - 1.0)
else
		addp#x	fpart, [poneval]			; fpart += 1.0
		mulp#x	fpart, ipart				; return fpart * ipart
end if
		ret
}
Exp2Core_flt32:		EXP_CORE_SCLR	edi, esi, 0, d, s
Exp2Core_flt64:		EXP_CORE_SCLR	rdi, rsi, 0, q, d
Exp2m1Core_flt32:	EXP_CORE_SCLR	edi, esi, 1, d, s
Exp2m1Core_flt64:	EXP_CORE_SCLR	rdi, rsi, 1, q, d
Exp2Core_flt32v4:	EXP_CORE_VCTR	0, d, s
Exp2Core_flt64v2:	EXP_CORE_VCTR	0, q, d
Exp2m1Core_flt32v4:	EXP_CORE_VCTR	1, d, s
Exp2m1Core_flt64v2:	EXP_CORE_VCTR	1, q, d

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
;---[Normal execution branch]--------------
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
macro	EXP_SCLR	Func, iexp, min, prefix, type, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; exponent value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_fpart	equ		stack - 1 * 8				; stack position of "fpart" value
s_ipart	equ		stack - 2 * 8				; stack position of "ipart" value
if x eq s
pinfval	= pinf_flt32						; +Inf
else if x eq d
pinfval	= pinf_flt64						; +Inf
end if
if type = 1
if x eq s
logval	= log2_10_flt32						; log2 (10)
minexp	= min10_flt32						; min exponent value
maxexp	= max10_flt32						; max exponent value
else if x eq d
logval	= log2_10_flt64						; log2 (10)
minexp	= min10_flt64						; min exponent value
maxexp	= max10_flt64						; max exponent value
end if
else if type = 2
if x eq s
logval	= log2_E_flt32						; log2 (E)
minexp	= minE_flt32						; min exponent value
maxexp	= maxE_flt32						; max exponent value
else if x eq d
logval	= log2_E_flt64						; log2 (E)
minexp	= minE_flt64						; min exponent value
maxexp	= maxE_flt64						; max exponent value
end if
else
if x eq s
minexp	= min2_flt32						; min exponent value
maxexp	= max2_flt32						; max exponent value
else if x eq d
minexp	= min2_flt64						; min exponent value
maxexp	= max2_flt64						; max exponent value
end if
end if
;---[Check exponent range]-----------------
		movs#x	[s_fpart], value			; save "value" variable into the stack
		comis#x	value, [minexp]
		jp		.exit						; if (value == NaN), then go to exit
		jb		.min						; if (value < minexp), return min value
		comis#x	value, [maxexp]				; if (value > maxexp)
		ja		.inf						;     return +Inf
;---[Set fpart and ipart values]-----------
if type
		muls#x	value, [logval]				; value *= log2 (base)
	cvtts#x#2si	iexp, value					; iexp = Trunc (value)
		mov		[s_ipart], iexp
		fld		prefix [s_fpart]			; push value into FPU stack
if type = 1
		fldl2t								; push log2 (10) into FPU stack
else if type = 2
		fldl2e								; push log2 (E) into FPU stack
end if
		fmulp								; exp = value * log2 (base)
		fisub	word [s_ipart]				; compute fraction part of exponent
		fstp	prefix [s_fpart]			; store fpart
		mov		iexp, [s_ipart]
		movs#x	value, [s_fpart]
else
	rounds#x	temp, value, 0x3
		subs#x	value, temp					; value = Frac (value)
	cvtts#x#2si	iexp, temp					; iexp = Trunc (value)
end if
;---[Call exponentiation function]---------
		jmp		Func						; return Func (fpart, ipart)
;---[Min value branch ]--------------------
.min:	movap#x	value, dqword [min]			; return min value
		ret
;---[Infinity branch ]---------------------
.inf:	movap#x	value, [pinfval]			; return +Inf
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXP_VCTR	Func, type, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; exponent value
;---[Internal variables]-------------------
ipart	equ		xmm1						; integer part of exponent value
hval	equ		xmm2						; high part of exponent value
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
temp3	equ		xmm5						; temporary register #3
temp4	equ		xmm6						; temporary register #4
temp5	equ		xmm7						; temporary register #5
if x eq s
hmask	= hmask_flt32						; high part mask
else if x eq d
hmask	= hmask_flt64						; high part mask
end if
if type = 1
if x eq s
hpart	= log2_10h_flt32					; high part of log2 (10)
lpart	= log2_10l_flt32					; low part of log2 (10)
minexp	= min10_flt32						; min exponent value
maxexp	= max10_flt32						; max exponent value
else if x eq d
hpart	= log2_10h_flt64					; high part of log2 (10)
lpart	= log2_10l_flt64					; low part of log2 (10)
minexp	= min10_flt64						; min exponent value
maxexp	= max10_flt64						; max exponent value
end if
else if type = 2
if x eq s
hpart	= log2_Eh_flt32						; high part of log2 (E)
lpart	= log2_El_flt32						; low part of log2 (E)
minexp	= minE_flt32						; min exponent value
maxexp	= maxE_flt32						; max exponent value
else if x eq d
hpart	= log2_Eh_flt64						; high part of log2 (E)
lpart	= log2_El_flt64						; low part of log2 (E)
minexp	= minE_flt64						; min exponent value
maxexp	= maxE_flt64						; max exponent value
end if
else
if x eq s
minexp	= min2_flt32						; min exponent value
maxexp	= max2_flt32						; max exponent value
else if x eq d
minexp	= min2_flt64						; min exponent value
maxexp	= max2_flt64						; max exponent value
end if
end if
;---[Check exponent range]-----------------
		movap#x	ipart, value				; ipart = value
		movap#x	hval, [maxexp]				; hval = maxexp
		movap#x	value, [maxexp]				; value = maxexp
	cmpnlep#x	value, ipart				; if (hval > value)
	blendvp#x	hval, ipart					;     hval = value
		movap#x	value, hval					; value = hval
	cmpltp#x	value, [minexp]				; if (hval < minmexp)
	blendvp#x	hval, [minexp]				;     hval = minexp
		movap#x	value, hval					; value = hval
;---[Set fpart and ipart vectors]----------
if type
		movap#x	temp1, [hpart]				; temp1 = hpart
		movap#x	temp2, [hpart]				; temp2 = hpart
		movap#x	temp3, [lpart]				; temp3 = lpart
		movap#x	temp4, [lpart]				; temp4 = lpart
		andp#x	hval, [hmask]				; hval = HighPart (value)
		subp#x	value, hval					; value = LowPart (value)
		mulp#x	temp1, hval					; temp1 = hpart * hval
		mulp#x	temp2, value				; temp2 = hpart * value
		mulp#x	temp3, hval					; temp3 = lpart * hval
		mulp#x	temp4, value				; temp4 = lpart * value
	roundp#x	temp5, temp1, 0x3			; temp5 = Trunc (temp1)
		subp#x	temp1, temp5				; temp1 = Frac (temp1)
		addp#x	temp2, temp4
		addp#x	temp2, temp3
		addp#x	temp1, temp2				; temp1 = temp1 + temp2 + temp3 + temp4
		movap#x	value, temp1				; value = Frac (value * log2 (base))
	cvttp#x#2dq	ipart, temp5				; ipart = Trunc (value * log2 (base))
else
	roundp#x	hval, hval, 0x3
		subp#x	value, hval					; value = Frac (value)
	cvttp#x#2dq	ipart, hval					; ipart = Trunc (value)
end if
if x eq d
	pmovsxdq	ipart, ipart				; convert sint32_t to sint64_t
end if
;---[Call exponentiation function]---------
		jmp		Func						; return Func (fpart, ipart)
}
Exp2_flt32:			EXP_SCLR	Exp2Core_flt32, edi, pzero_flt32, dword, 0, s
Exp2_flt64:			EXP_SCLR	Exp2Core_flt64, rdi, pzero_flt64, qword, 0, d
Exp2m1_flt32:		EXP_SCLR	Exp2m1Core_flt32, edi, mone_flt32, dword, 0, s
Exp2m1_flt64:		EXP_SCLR	Exp2m1Core_flt64, rdi, mone_flt64, qword, 0, d
Exp2_flt32v4:		EXP_VCTR	Exp2Core_flt32v4, 0, s
Exp2_flt64v2:		EXP_VCTR	Exp2Core_flt64v2, 0, d
Exp2m1_flt32v4:		EXP_VCTR	Exp2m1Core_flt32v4, 0, s
Exp2m1_flt64v2:		EXP_VCTR	Exp2m1Core_flt64v2, 0, d

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
minpow	= -46								; min power of 10
maxpow	= +39								; max power of 10
bytes	= 4									; array element size (bytes)
tent	= ten_flt32							; table of integer powers of 10^x
else if x eq d
minpow	= -324								; min power of 10
maxpow	= +309								; max power of 10
bytes	= 8									; array element size (bytes)
tent	= ten_flt64							; table of integer powers of 10^x
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
Exp10_flt32:		EXP_SCLR	Exp2Core_flt32, edi, pzero_flt32, dword, 1, s
Exp10_flt64:		EXP_SCLR	Exp2Core_flt64, rdi, pzero_flt64, qword, 1, d
Exp10m1_flt32:		EXP_SCLR	Exp2m1Core_flt32, edi, mone_flt32, dword, 1, s
Exp10m1_flt64:		EXP_SCLR	Exp2m1Core_flt64, rdi, mone_flt64, qword, 1, d
Exp10_flt32v4:		EXP_VCTR	Exp2Core_flt32v4, 1, s
Exp10_flt64v2:		EXP_VCTR	Exp2Core_flt64v2, 1, d
Exp10m1_flt32v4:	EXP_VCTR	Exp2m1Core_flt32v4, 1, s
Exp10m1_flt64v2:	EXP_VCTR	Exp2m1Core_flt64v2, 1, d

;==============================================================================;
;       Exponentiation by base E (natural logarithm)                           ;
;==============================================================================;
ExpE_flt32:			EXP_SCLR	Exp2Core_flt32, edi, pzero_flt32, dword, 2, s
ExpE_flt64:			EXP_SCLR	Exp2Core_flt64, rdi, pzero_flt64, qword, 2, d
ExpEm1_flt32:		EXP_SCLR	Exp2m1Core_flt32, edi, mone_flt32, dword, 2, s
ExpEm1_flt64:		EXP_SCLR	Exp2m1Core_flt64, rdi, mone_flt64, qword, 2, d
ExpE_flt32v4:		EXP_VCTR	Exp2Core_flt32v4, 2, s
ExpE_flt64v2:		EXP_VCTR	Exp2Core_flt64v2, 2, d
ExpEm1_flt32v4:		EXP_VCTR	Exp2m1Core_flt32v4, 2, s
ExpEm1_flt64v2:		EXP_VCTR	Exp2m1Core_flt64v2, 2, d

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

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Real exponentiation by custom base                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	EXPB_SCLR	Func, iexp, prefix, x
{
;---[Parameters]---------------------------
base	equ		xmm0						; power base
value	equ		xmm1						; exponent value
;---[Internal variables]-------------------
zero	equ		xmm2						; 0.0
stack	equ		rsp							; stack pointer
fpart	equ		stack - 1 * 8				; stack position of "fpart" value
ipart	equ		stack - 2 * 8				; stack position of "ipart" value
ebase	equ		stack - 3 * 8				; stack position of "base" value
if x eq s
nanval	= pnan_flt32						; NaN
minexp	= min2_flt32						; min exponent value
maxexp	= max2_flt32						; max exponent value
else if x eq d
nanval	= pnan_flt64						; NaN
minexp	= min2_flt64						; min exponent value
maxexp	= max2_flt64						; max exponent value
end if
;------------------------------------------
		movs#x	[fpart], value				; save "value" variable into the stack
		movs#x	[ebase], base				; save "base" variable into the stack
		xorp#x	zero, zero					; zero = 0.0
		comis#x	base, zero
		jp		.exit						; if (base == NaN), then go to exit
		jb		.error						; if (base < 0), return NaN
;---[Set fpart and ipart values]-----------
		fld		prefix [maxexp]				; push maxexp into FPU stack
		fld		prefix [fpart]				; push value into FPU stack
		fld		prefix [ebase]				; push base into FPU stack
		fyl2x								; exp = value * log2 (base)
		fcomi	st1							; if (exp > maxexp)
	fcmovnbe	st1							;     exp = maxexp
		fld		prefix [minexp]				; push minexp into FPU stack
		fcomi	st1							; if (minexp < exp)
		fcmovb	st1							;     minexp = exp
		fst		st1							; exp = minexp
		fisttp	prefix [ipart]				; store ipart
		fisub	word [ipart]				; compute fraction part of exponent
		fstp	prefix [fpart]				; store fpart
		ffree	st0							; free FPU stack top register
;---[Call exponentiation function]---------
		mov		iexp, [ipart]
		movs#x	base, [fpart]
		jmp		Func						; return Func (fpart, ipart)
;---[Error branch ]------------------------
.error:	movap#x	base, [nanval]				; return NaN
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	EXPB_VCTR	Func, prefix, x
{
;---[Parameters]---------------------------
base	equ		xmm0						; power base
value	equ		xmm1						; exponent value
;---[Internal variables]-------------------
temp	equ		xmm2						; temporary register
stack	equ		rsp							; stack pointer
fpart	equ		stack - 3 * 8				; stack position of "fpart" vector
ipart	equ		stack - 5 * 8				; stack position of "ipart" vector
ebase	equ		stack - 7 * 8				; stack position of "base" vector
if x eq s
nanval	= pnan_flt32						; NaN
oneval	= pone_flt32						; +1.0
minexp	= min2_flt32						; min exponent value
maxexp	= max2_flt32						; max exponent value
scale	= 2									; scale value
else if x eq d
nanval	= pnan_flt64						; NaN
oneval	= pone_flt64						; +1.0
minexp	= min2_flt64						; min exponent value
maxexp	= max2_flt64						; max exponent value
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		movap#x	temp, base					; temp = base
		xorp#x	base, base					; base = 0.0
	cmpnlep#x	base, temp					; if (temp < 0)
	blendvp#x	temp, [oneval]				;     temp = 1.0
		movap#x	[fpart], value				; save "value" variable into the stack
		movap#x	[ebase], temp				; save "base" variable into the stack
;---[Set fpart and ipart vectors]----------
		fld		prefix [maxexp]				; push maxexp into FPU stack
repeat	VSIZE / bytes
		fld		prefix [fpart + (%-1)*bytes]; push value into FPU stack
		fld		prefix [ebase + (%-1)*bytes]; push base into FPU stack
		fyl2x								; exp = value * log2 (base)
		fcomi	st1							; if (exp > maxexp)
	fcmovnbe	st1							;     exp = maxexp
		fld		prefix [minexp]				; push minexp into FPU stack
		fcomi	st1							; if (minexp < exp)
		fcmovb	st1							;     minexp = exp
		fst		st1							; exp = minexp
		fisttp	prefix [ipart + (%-1)*bytes]; store ipart
		fisub	word [ipart + (%-1)*bytes]	; compute fraction part of exponent
		fstp	prefix [fpart + (%-1)*bytes]; store fpart
end repeat
		ffree	st0							; free FPU stack top register
;---[Call exponentiation function]---------
		movdqa	value, [ipart]
		movap#x	temp, [fpart]				; base = fpart
	blendvp#x	temp, [nanval]				; if (value == NaN)
		movap#x	base, temp					;     base = NaN
		jmp		Func						; return Func (fpart, ipart)
}
ExpB_flt32:			EXPB_SCLR	Exp2Core_flt32, edi, dword, s
ExpB_flt64:			EXPB_SCLR	Exp2Core_flt64, rdi, qword, d
ExpBm1_flt32:		EXPB_SCLR	Exp2m1Core_flt32, edi, dword, s
ExpBm1_flt64:		EXPB_SCLR	Exp2m1Core_flt64, rdi, qword, d
ExpB_flt32v4:		EXPB_VCTR	Exp2Core_flt32v4, dword,s
ExpB_flt64v2:		EXPB_VCTR	Exp2Core_flt64v2, qword, d
ExpBm1_flt32v4:		EXPB_VCTR	Exp2m1Core_flt32v4, dword,s
ExpBm1_flt64v2:		EXPB_VCTR	Exp2m1Core_flt64v2, qword, d

;******************************************************************************;
;       Logarithmic functions                                                  ;
;******************************************************************************;
macro	LOG_CORE_SCLR	x
{
;---[Parameters]---------------------------
fpart	equ		xmm0						; fractional part of logarithm value
ipart	equ		xmm1						; integer part of logarithm value
lscale	equ		xmm2						; log scale value
;---[Internal variables]-------------------
table	equ		rax							; pointer to array of coefficients
svalue	equ		xmm3						; scale value
value	equ		xmm4						; value to process
temp1	equ		xmm5						; temporary register #1
temp2	equ		xmm6						; temporary register #2
temp3	equ		xmm7						; temporary register #3
temp4	equ		xmm8						; temporary register #4
temp5	equ		xmm9						; temporary register #5
temp6	equ		xmm10						; temporary register #6
temp7	equ		xmm11						; temporary register #7
temp8	equ		xmm12						; temporary register #8
if x eq s
logt	= log_flt32							; pointer to array of log coefficients
else if x eq d
logt	= log_flt64							; pointer to array of log coefficients
end if
;---[Compute polynomial value]-------------
		lea		table, [logt]				; set pointer to array of coefficients
		movap#x	value, fpart
		muls#x	value, value				; value = fpart * fpart
		muls#x	fpart, lscale				; fpart *= lscale
		muls#x	ipart, lscale				; ipart *= lscale
if x eq s
	POLYNOM8	table, fpart, svalue, value, s, s, x
else if x eq d
	POLYNOM16	table, fpart, svalue, value, s, s, x
end if
		adds#x	fpart, ipart				; return fpart + ipart
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	LOG_CORE_VCTR	x
{
;---[Parameters]---------------------------
fpart	equ		xmm0						; fractional part of logarithm value
ipart	equ		xmm1						; integer part of logarithm value
lscale	equ		xmm2						; log scale value
;---[Internal variables]-------------------
table	equ		rax							; pointer to array of coefficients
svalue	equ		xmm3						; scale value
value	equ		xmm4						; value to process
temp1	equ		xmm5						; temporary register #1
temp2	equ		xmm6						; temporary register #2
temp3	equ		xmm7						; temporary register #3
temp4	equ		xmm8						; temporary register #4
temp5	equ		xmm9						; temporary register #5
temp6	equ		xmm10						; temporary register #6
temp7	equ		xmm11						; temporary register #7
temp8	equ		xmm12						; temporary register #8
if x eq s
logt	= log_flt32							; pointer to array of log coefficients
else if x eq d
logt	= log_flt64							; pointer to array of log coefficients
end if
;---[Compute polynomial value]-------------
		lea		table, [logt]				; set pointer to array of coefficients
		movap#x	value, fpart
		mulp#x	value, value				; value = fpart * fpart
		mulp#x	fpart, lscale				; fpart *= lscale
		mulp#x	ipart, lscale				; ipart *= lscale
if x eq s
	POLYNOM8	table, fpart, svalue, value, ap, p, x
else if x eq d
	POLYNOM16	table, fpart, svalue, value, ap, p, x
end if
		addp#x	fpart, ipart				; return fpart + ipart
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	LOG_SCLR	Func, exp, sval, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; logarithm value
;---[Internal variables]-------------------
ipart	equ		xmm1						; integer part of logarithm value
lscale	equ		xmm2						; log scale value
temp1	equ		xmm4						; temporary register #1
temp2	equ		xmm5						; temporary register #2
if x eq s
mmask	= mmask_flt32						; mantissa mask
nanval	= pnan_flt32						; +NaN
pinfval	= pinf_flt32						; +Inf
minfval	= minf_flt32						; -Inf
twoval	= ptwo_flt32						; +2.0
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
minnorm	= min_norm_flt32					; min normal value
vscale	= underS_flt32						; scale value to correct subnormal value
vshift	= vshift_flt32						; exponent shift value
bias	= EBIAS_FLT32						; exponent bias
mbits	= MBITS_FLT32						; count of bits into mantissa
else if x eq d
mmask	= mmask_flt64						; mantissa mask
nanval	= pnan_flt64						; +NaN
pinfval	= pinf_flt64						; +Inf
minfval	= minf_flt64						; -Inf
twoval	= ptwo_flt64						; +2.0
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
minnorm	= min_norm_flt64					; min normal value
vscale	= underS_flt64						; scale value to correct subnormal value
vshift	= vshift_flt64						; exponent shift value
bias	= EBIAS_FLT64						; exponent bias
mbits	= MBITS_FLT64						; count of bits into mantissa
end if
;------------------------------------------
		movap#x	temp1, value				; temp1 = value
		xorp#x	ipart, ipart				; ipart = 0.0
;---[Check if value is negative or zero]---
		comis#x	temp1, ipart				; if (temp1 != value || temp1 < 0)
		jp		.error						;     then return NaN
		jb		.error						; if (temp1 == 0.0)
		je		.min						;     then return -Inf
;---[Check if value is infinity]-----------
		comis#x	temp1, [pinfval]			; if (temp1 == Inf)
		je		.max						;     then return +Inf
;---[Check value range]--------------------
		comis#x	temp1, [twoval]				; if (temp1 > 2)
		ja		.else						;     then go to else branch
		comis#x	temp1, [halfval]			; if (temp1 < 0.5)
		jb		.else						;     then go to else branch
;---[Compute logarithm value]--------------
		subs#x	value, [oneval]				; value = temp1 - 1.0
		adds#x	temp1, [oneval]				; temp1 = temp1 + 1.0
		divs#x	value, temp1				; value = (temp1 - 1.0) / (temp1 + 1.0)
		movs#x	lscale, [sval]
		jmp		Func						; return Func (fpart, 0, lscale)
;---[Else branch]--------------------------
.else:	comis#x	temp1, [minnorm]			; if (temp1 < minnorm)
		jb		.corr						;     then correct subnormal value
;---[Extract exp value and mantissa]-------
.back:	movint	exp, temp1, x				; exp = temp1
		shr		exp, mbits					; exp = temp1 >> mbits
		sub		exp, bias					; exp -= bias
	cvtsi2s#x	temp2, exp					; convert exp to floating-point value
		adds#x	ipart, temp2				; ipart += exp
		andp#x	temp1, [mmask]				; temp1 &= mmask
		orp#x	temp1, [oneval]				; temp1 |= 1.0
;---[Compute logarithm value]--------------
		movap#x	value, temp1
		subs#x	value, [oneval]				; value = temp1 - 1.0
		adds#x	temp1, [oneval]				; temp1 = temp1 + 1.0
		divs#x	value, temp1				; value = (temp1 - 1.0) / (temp1 + 1.0)
		movs#x	lscale, [sval]
		jmp		Func						; return Func (fpart, ipart + exp, lscale)
;---[Correct subnormal value]--------------
.corr:	muls#x	temp1, [vscale]				; temp1 *= scale
		subs#x	ipart, [vshift]				; ipart -= shift
		jmp		.back
;---[Min value branch]---------------------
.min:	movap#x	value, [minfval]			; retrun -Inf
		ret
;---[Max value branch]---------------------
.max:	movap#x	value, [pinfval]			; retrun +Inf
		ret
;---[Error branch]-------------------------
.error:	movap#x	value, [nanval]				; retrun NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	LOGP1_SCLR	Func, exp, sval, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; logarithm value
;---[Internal variables]-------------------
ipart	equ		xmm1						; integer part of logarithm value
lscale	equ		xmm2						; log scale value
temp1	equ		xmm4						; temporary register #1
temp2	equ		xmm5						; temporary register #2
if x eq s
mmask	= mmask_flt32						; mantissa mask
nanval	= pnan_flt32						; +NaN
pinfval	= pinf_flt32						; +Inf
minfval	= minf_flt32						; -Inf
twoval	= ptwo_flt32						; +2.0
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
bias	= EBIAS_FLT32						; exponent bias
mbits	= MBITS_FLT32						; count of bits into mantissa
else if x eq d
mmask	= mmask_flt64						; mantissa mask
nanval	= pnan_flt64						; +NaN
pinfval	= pinf_flt64						; +Inf
minfval	= minf_flt64						; -Inf
twoval	= ptwo_flt64						; +2.0
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
bias	= EBIAS_FLT64						; exponent bias
mbits	= MBITS_FLT64						; count of bits into mantissa
end if
;------------------------------------------
		movap#x	temp1, [oneval]
		adds#x	temp1, value				; temp1 = value + 1.0
		xorp#x	ipart, ipart				; ipart = 0.0
;---[Check if value is negative or zero]---
		comis#x	temp1, ipart				; if (temp1 != value || temp1 < 0)
		jp		.error						;     then return NaN
		jb		.error						; if (temp1 == 0.0)
		je		.min						;     then return -Inf
;---[Check if value is infinity]-----------
		comis#x	temp1, [pinfval]			; if (temp1 == Inf)
		je		.max						;     then return +Inf
;---[Check value range]--------------------
		comis#x	temp1, [twoval]				; if (temp1 > 2)
		ja		.else						;     then go to else branch
		comis#x	temp1, [halfval]			; if (temp1 < 0.5)
		jb		.else						;     then go to else branch
;---[Compute logarithm value]--------------
		adds#x	temp1, [oneval]				; temp1 = value + 2.0
		divs#x	value, temp1				; value = value / (value + 2.0)
		movs#x	lscale, [sval]
		jmp		Func						; return Func (fpart, 0, lscale)
;---[Extract exp value and mantissa]-------
.else:	movint	exp, temp1, x				; exp = temp1
		shr		exp, mbits					; exp = temp1 >> mbits
		sub		exp, bias					; exp -= bias
	cvtsi2s#x	temp2, exp					; convert exp to floating-point value
		adds#x	ipart, temp2				; ipart += exp
		andp#x	temp1, [mmask]				; temp1 &= mmask
		orp#x	temp1, [oneval]				; temp1 |= 1.0
;---[Compute logarithm value]--------------
		movap#x	value, temp1
		subs#x	value, [oneval]				; value = temp1 - 1.0
		adds#x	temp1, [oneval]				; temp1 = temp1 + 1.0
		divs#x	value, temp1				; value = (temp1 - 1.0) / (temp1 + 1.0)
		movs#x	lscale, [sval]
		jmp		Func						; return Func (fpart, ipart + exp, lscale)
;---[Min value branch]---------------------
.min:	movap#x	value, [minfval]			; retrun -Inf
		ret
;---[Max value branch]---------------------
.max:	movap#x	value, [pinfval]			; retrun +Inf
		ret
;---[Error branch]-------------------------
.error:	movap#x	value, [nanval]				; retrun NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	LOG_VCTR	Func, sval, i, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; logarithm value
;---[Internal variables]-------------------
ipart	equ		xmm1						; integer part of logarithm value
lscale	equ		xmm2						; log scale value
shift	equ		xmm3						; shift value
temp1	equ		xmm4						; temporary register #1
temp2	equ		xmm5						; temporary register #2
temp3	equ		xmm6						; temporary register #3
if x eq s
mmask	= mmask_flt32						; mantissa mask
nanval	= pnan_flt32						; +NaN
pinfval	= pinf_flt32						; +Inf
minfval	= minf_flt32						; -Inf
twoval	= ptwo_flt32						; +2.0
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
minnorm	= min_norm_flt32					; min normal value
vscale	= underS_flt32						; scale value to correct subnormal values
vshift	= vshift_flt32						; exponent shift value
bias	= ebias_flt32						; exponent bias
mbits	= MBITS_FLT32						; count of bits into mantissa
else if x eq d
mmask	= mmask_flt64						; mantissa mask
nanval	= pnan_flt64						; +NaN
pinfval	= pinf_flt64						; +Inf
minfval	= minf_flt64						; -Inf
twoval	= ptwo_flt64						; +2.0
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
minnorm	= min_norm_flt64					; min normal value
vscale	= underS_flt64						; scale value to correct subnormal values
vshift	= vshift_flt64						; exponent shift value
bias	= ebias_flt64						; exponent bias
mbits	= MBITS_FLT64						; count of bits into mantissa
end if
;------------------------------------------
		movap#x	temp1, value				; temp1 = value
		xorp#x	ipart, ipart				; ipart = 0.0
;---[Check if value is negative]-----------
		xorp#x	value, value
	cmpnlep#x	value, temp1				; if (temp1 != temp1 || temp1 < 0)
	blendvp#x	ipart, [nanval]				;     ipart = NaN
;---[Check if value is zero]---------------
		xorp#x	value, value
	cmpeqp#x	value, temp1				; if (temp1 == 0)
	blendvp#x	ipart, [minfval]			;     ipart = -Inf
;---[Check if value is infinity]-----------
		movap#x	value, [pinfval]
	cmpeqp#x	value, temp1				; if (temp1 == Inf)
	blendvp#x	ipart, [pinfval]			;     ipart = +Inf
;---[Correct subnormal values]-------------
		movap#x	value, temp1
		movap#x	lscale, [oneval]			; lscale = 1.0
		xorp#x	shift, shift				; shift = 0.0
	cmpltp#x	value, [minnorm]			; if (value < minnorm)
	blendvp#x	lscale, [vscale]			;     lscale = vscale
	blendvp#x	shift, [vshift]				;     shift = vshift
		mulp#x	temp1, lscale				; temp1 *= lscale
		subp#x	ipart, shift				; ipart -= shift
;---[Extract exp value and mantissa]-------
		movdqa	temp2, temp1
		psrl#i	temp2, mbits				; temp2 = temp1 >> mbits
		psub#i	temp2, [bias]				; temp2 -= bias
if x eq s
	cvtdq2ps	temp2, temp2				; convert sint32_t to flt32_t
else if x eq d
		pshufd	temp2, temp2, 0xD8			; pack sint64_t ot sint32_t
	cvtdq2pd	temp2, temp2				; convert sint32_t to flt64_t
end if
		movap#x	temp3, temp1				; temp3 = temp1
		andp#x	temp3, [mmask]				; temp3 &= mmask
		orp#x	temp3, [oneval]				; temp3 |= 1.0
;---[Check value range]--------------------
		xorp#x	shift, shift				; shift = 0.0
		movap#x	value, temp1				; if (temp1 > 2 || temp1 < 0.5)
	cmpnlep#x	value, [twoval]				; {
		movap#x	lscale, value
		movap#x	value, temp1
	cmpltp#x	value, [halfval]
		orp#x	value, lscale				;     shift = temp2
	blendvp#x	shift, temp2				;     temp1 = temp3
	blendvp#x	temp1, temp3				; }
		addp#x	ipart, shift				; ipart += shift
;---[Compute logarithm value]--------------
		movap#x	value, temp1
		subp#x	value, [oneval]				; value = temp1 - 1.0
		addp#x	temp1, [oneval]				; temp1 = temp1 + 1.0
		divp#x	value, temp1				; value = (temp1 - 1.0) / (temp1 + 1.0)
		movap#x	lscale, dqword [sval]
		jmp		Func						; return Func (fpart, ipart, lscale)
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	LOGP1_VCTR	Func, sval, i, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; logarithm value
;---[Internal variables]-------------------
ipart	equ		xmm1						; integer part of logarithm value
lscale	equ		xmm2						; log scale value
shift	equ		xmm3						; shift value
shift1	equ		xmm4						; temporary shift value #1
shift2	equ		xmm5						; temporary shift value #2
temp1	equ		xmm6						; temporary register #1
temp2	equ		xmm7						; temporary register #2
temp3	equ		xmm8						; temporary register #3
temp4	equ		xmm9						; temporary register #4
if x eq s
mmask	= mmask_flt32						; mantissa mask
nanval	= pnan_flt32						; +NaN
pinfval	= pinf_flt32						; +Inf
minfval	= minf_flt32						; -Inf
twoval	= ptwo_flt32						; +2.0
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
bias	= ebias_flt32						; exponent bias
mbits	= MBITS_FLT32						; count of bits into mantissa
else if x eq d
mmask	= mmask_flt64						; mantissa mask
nanval	= pnan_flt64						; +NaN
pinfval	= pinf_flt64						; +Inf
minfval	= minf_flt64						; -Inf
twoval	= ptwo_flt64						; +2.0
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
bias	= ebias_flt64						; exponent bias
mbits	= MBITS_FLT64						; count of bits into mantissa
end if
;------------------------------------------
		movap#x	temp4, value				; temp4 = value
		movap#x	temp1, [oneval]
		addp#x	temp1, value				; temp1 = value + 1.0
		xorp#x	ipart, ipart				; ipart = 0.0
;---[Check if value is negative]-----------
		xorp#x	value, value
	cmpnlep#x	value, temp1				; if (temp1 != temp1 || temp1 < 0)
	blendvp#x	ipart, [nanval]				;     ipart = NaN
;---[Check if value is zero]---------------
		xorp#x	value, value
	cmpeqp#x	value, temp1				; if (temp1 == 0)
	blendvp#x	ipart, [minfval]			;     ipart = -Inf
;---[Check if value is infinity]-----------
		movap#x	value, [pinfval]
	cmpeqp#x	value, temp1				; if (temp1 == Inf)
	blendvp#x	ipart, [pinfval]			;     ipart = +Inf
;---[Extract exp value and mantissa]-------
		movdqa	temp2, temp1
		psrl#i	temp2, mbits				; temp2 = temp1 >> mbits
		psub#i	temp2, [bias]				; temp2 -= bias
if x eq s
	cvtdq2ps	temp2, temp2				; convert sint32_t to flt32_t
else if x eq d
		pshufd	temp2, temp2, 0xD8			; pack sint64_t ot sint32_t
	cvtdq2pd	temp2, temp2				; convert sint32_t to flt64_t
end if
		movap#x	temp3, temp1				; temp3 = temp1
		andp#x	temp3, [mmask]				; temp3 &= mmask
		orp#x	temp3, [oneval]				; temp3 |= 1.0
;---[Check value range]--------------------
		xorp#x	shift, shift				; shift = 0.0
		xorp#x	shift1, shift1				; shift1 = 0.0
		movap#x	shift2, [twoval]			; shift2 = 2.0
		movap#x	value, temp1				; if (temp1 > 2 || temp1 < 0.5)
	cmpnlep#x	value, [twoval]				; {
		movap#x	lscale, value
		movap#x	value, temp1
	cmpltp#x	value, [halfval]
		orp#x	value, lscale				;     shift = temp2
	blendvp#x	shift, temp2				;     shift1 = 1.0
	blendvp#x	shift1, [oneval]			;     shift2 = 1.0
	blendvp#x	shift2, [oneval]			;     temp4 = temp3
	blendvp#x	temp4, temp3				; }
		addp#x	ipart, shift				; ipart += shift
;---[Compute logarithm value]--------------
		movap#x	value, temp4
		subp#x	value, shift1				; value = temp4 - shift1
		addp#x	temp4, shift2				; temp4 = temp4 + shift2
		divp#x	value, temp4				; value = (temp4 - shift1) / (temp4 + shift2)
		movap#x	lscale, dqword [sval]
		jmp		Func						; return Func (fpart, ipart, lscale)
}
Log2Core_flt32:		LOG_CORE_SCLR	s
Log2Core_flt64:		LOG_CORE_SCLR	d
Log2Core_flt32v4:	LOG_CORE_VCTR	s
Log2Core_flt64v2:	LOG_CORE_VCTR	d

;==============================================================================;
;       Logarithm to base 2                                                    ;
;==============================================================================;
macro	LOG2I	scale
{
;---[Parameters]---------------------------
value	equ		rdi							; value to operate
;---[Internal variables]-------------------
result	equ		rax							; result register
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
		mov		result, mask				; result = mask
		and		value, result				; if (value & mask == 0)
		jz		.error						;     then go to error branch
;---[Normal execution branch]--------------
		bsr		result, value				; return index of most significant bit
		ret
;---[Error branch]-------------------------
.error:	mov		result, ERROR				; return ERROR
		ret
}

; Integer logarithm to base 2
Log2i_uint8:	LOG2I	0
Log2i_uint16:	LOG2I	1
Log2i_uint32:	LOG2I	2
Log2i_uint64:	LOG2I	3

; Real logarithm to base 2
Log2_flt32:		LOG_SCLR	Log2Core_flt32, eax, pone_flt32, s
Log2_flt64:		LOG_SCLR	Log2Core_flt64, rax, pone_flt64, d
Log2p1_flt32:	LOGP1_SCLR	Log2Core_flt32, eax, pone_flt32, s
Log2p1_flt64:	LOGP1_SCLR	Log2Core_flt64, rax, pone_flt64, d
Log2_flt32v4:	LOG_VCTR	Log2Core_flt32v4, pone_flt32, d, s
Log2_flt64v2:	LOG_VCTR	Log2Core_flt64v2, pone_flt64, q, d
Log2p1_flt32v4:	LOGP1_VCTR	Log2Core_flt32v4, pone_flt32, d, s
Log2p1_flt64v2:	LOGP1_VCTR	Log2Core_flt64v2, pone_flt64, q, d

;==============================================================================;
;       Logarithm to base 10                                                   ;
;==============================================================================;
macro	LOG10I	index, scale
{
;---[Parameters]---------------------------
value	equ		rdi							; value to operate
;---[Internal variables]-------------------
result	equ		rax							; result register
table	equ		rdx							; pointer to table of 10 powers
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
		lea		table, [ten_int]			; set pointer to table of 10 powers
		mov		result, mask				; result = mask
		and		value, result				; if (value & mask == 0)
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
Log10i_uint8:	LOG10I	3, 0
Log10i_uint16:	LOG10I	5, 1
Log10i_uint32:	LOG10I	10, 2
Log10i_uint64:	LOG10I	20, 3

; Real logarithm to base 10
Log10_flt32:		LOG_SCLR	Log2Core_flt32, eax, log10_2_flt32, s
Log10_flt64:		LOG_SCLR	Log2Core_flt64, rax, log10_2_flt64, d
Log10p1_flt32:		LOGP1_SCLR	Log2Core_flt32, eax, log10_2_flt32, s
Log10p1_flt64:		LOGP1_SCLR	Log2Core_flt64, rax, log10_2_flt64, d
Log10_flt32v4:		LOG_VCTR	Log2Core_flt32v4, log10_2_flt32, d, s
Log10_flt64v2:		LOG_VCTR	Log2Core_flt64v2, log10_2_flt64, q, d
Log10p1_flt32v4:	LOGP1_VCTR	Log2Core_flt32v4, log10_2_flt32, d, s
Log10p1_flt64v2:	LOGP1_VCTR	Log2Core_flt64v2, log10_2_flt64, q, d

;==============================================================================;
;       Logarithm to base E (natural logarithm)                                ;
;==============================================================================;
LogE_flt32:			LOG_SCLR	Log2Core_flt32, eax, logE_2_flt32, s
LogE_flt64:			LOG_SCLR	Log2Core_flt64, rax, logE_2_flt64, d
LogEp1_flt32:		LOGP1_SCLR	Log2Core_flt32, eax, logE_2_flt32, s
LogEp1_flt64:		LOGP1_SCLR	Log2Core_flt64, rax, logE_2_flt64, d
LogE_flt32v4:		LOG_VCTR	Log2Core_flt32v4, logE_2_flt32, d, s
LogE_flt64v2:		LOG_VCTR	Log2Core_flt64v2, logE_2_flt64, q, d
LogEp1_flt32v4:		LOGP1_VCTR	Log2Core_flt32v4, logE_2_flt32, d, s
LogEp1_flt64v2:		LOGP1_VCTR	Log2Core_flt64v2, logE_2_flt64, q, d

;******************************************************************************;
;       Trigonometric functions                                                ;
;******************************************************************************;
macro	TRIG1_SCLR	ipart, prefix, cos, x
{
;---[Parameters]---------------------------
angle	equ		xmm0						; angle value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_angle	equ		stack - 1 * 8				; stack position of "angle" variable
s_ipart	equ		stack - 2 * 8				; stack position of "ipart" variable
if x eq s
SinQ	= SinQ_flt32						; Sine core function
dmask	= dmask_flt32						; data mask
nanval	= pnan_flt32						; +NaN
maxangl	= maxangl_flt32						; max angle value
pifour	= pi_four_flt32						; Pi / 4
else if x eq d
SinQ	= SinQ_flt64						; Sine core function
dmask	= dmask_flt64						; data mask
nanval	= pnan_flt64						; +NaN
maxangl	= maxangl_flt64						; max angle value
pifour	= pi_four_flt64						; Pi / 4
end if
;------------------------------------------
		movap#x	temp, angle
		andp#x	temp, [dmask]				; temp = Abs (angle)
;---[Check for angle overflow]-------------
		comis#x	temp, [maxangl]				; if (temp >= maxangl)
		jae		.error						;     return NaN
		xor		ipart, ipart				; ipart = 0
;---[Check for correct range]--------------
		comis#x	temp, [pifour]				; if (temp > Pi / 4)
		ja		.rdc						;     then do range reduction
;---[Compute sine value]-------------------
if cos
		add		ipart, 1
end if
		jmp		SinQ						; return SinQ (angle, ipart)
;---[Range reduction branch]---------------
.rdc:	movs#x	[s_angle], angle			; save "angle" variable into the stack
		fld		tbyte [pi_half]				; push Pi / 2 into FPU stack
		fld		tbyte [two_pi]				; push 2 / Pi into FPU stack
		fmul	prefix [s_angle]
		frndint								; ipart = rint (angle * 2 / Pi)
		fistp	qword [s_ipart]				; store ipart
		fld		prefix [s_angle]			; push angle into FPU stack
		fprem1								; angle = remainder (angle, Pi / 2)
		fstp	prefix [s_angle]			; store angle
		ffree	st0							; free FPU stack top register
;---[Compute sine value]-------------------
		mov		ipart, [s_ipart]
if cos
		add		ipart, 1
end if
		movs#x	angle, [s_angle]
		jmp		SinQ						; return SinQ (angle, ipart)
;---[Error branch]-------------------------
.error:	movap#x	angle, [nanval]				; retrun NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRIG1_VCTR	prefix, cos, i, x
{
;---[Parameters]---------------------------
angle	equ		xmm0						; angle value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_angle	equ		stack - 3 * 8				; stack position of "angle" variable
s_ipart	equ		stack - 7 * 8				; stack position of "ipart" variable
if x eq s
SinCosQ	= SinCosQ_flt32v4					; Sine and cosine core function
dmask	= dmask_flt32						; data mask
nanval	= pnan_flt32						; +NaN
maxangl	= maxangl_flt32						; max angle value
scale	= 2									; scale value
else if x eq d
SinCosQ	= SinCosQ_flt64v2					; Sine and cosine core function
dmask	= dmask_flt64						; data mask
nanval	= pnan_flt64						; +NaN
maxangl	= maxangl_flt64						; max angle value
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		movap#x	temp, angle					; temp = angle
		andp#x	angle, [dmask]				; angle = Abs (angle)
;---[Check for angle overflow]-------------
	cmpnltp#x	angle, [maxangl]			; if (angle >= maxangl)
	blendvp#x	temp, [nanval]				;     temp = NaN
;---[Do range reduction]-------------------
		movap#x	[s_angle], temp				; save "angle" variable into the stack
		fld		tbyte [pi_half]				; push Pi / 2 into FPU stack
repeat	VSIZE / bytes
		fld		tbyte [two_pi]				; push 2 / Pi into FPU stack
		fmul	prefix [s_angle+(%-1)*bytes]
		frndint								; ipart = rint (angle * 2 / Pi)
		fistp	qword [s_ipart+(%-1)*bytes]	; store ipart
		fld		prefix [s_angle+(%-1)*bytes]; push angle into FPU stack
		fprem1								; angle = remainder (angle, Pi / 2)
		fstp	prefix [s_angle+(%-1)*bytes]; store angle
end repeat
		ffree	st0							; free FPU stack top register
;---[Compute sine and cosine values]-------
		movap#x	temp, [s_ipart]
		movap#x	angle, [s_angle]
		call	SinCosQ						; call SinCosQ (angle, ipart)
if cos
		movap#x	angle, temp					; return sine or cosine value
end if
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRIG2_SCLR	ipart, prefix, x
{
;---[Parameters]---------------------------
angle	equ		xmm0						; angle value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_angle	equ		stack - 1 * 8				; stack position of "angle" variable
s_ipart	equ		stack - 2 * 8				; stack position of "ipart" variable
if x eq s
SinCosQ	= SinCosQ_flt32						; Sine and cosine core function
dmask	= dmask_flt32						; data mask
nanval	= pnan_flt32						; +NaN
maxangl	= maxangl_flt32						; max angle value
pifour	= pi_four_flt32						; Pi / 4
else if x eq d
SinCosQ	= SinCosQ_flt64						; Sine and cosine core function
dmask	= dmask_flt64						; data mask
nanval	= pnan_flt64						; +NaN
maxangl	= maxangl_flt64						; max angle value
pifour	= pi_four_flt64						; Pi / 4
end if
;------------------------------------------
		movap#x	temp, angle
		andp#x	temp, [dmask]				; temp = Abs (angle)
;---[Check for angle overflow]-------------
		comis#x	temp, [maxangl]				; if (temp >= maxangl)
		jae		.error						;     return NaN
		xor		ipart, ipart				; ipart = 0
;---[Check for correct range]--------------
		comis#x	temp, [pifour]				; if (temp > Pi / 4)
		ja		.rdc						;     then do range reduction
;---[Compute sine and cosine values]-------
		call	SinCosQ						; call SinCosQ (angle, ipart)
		divs#x	angle, temp					; return sin / cos
		ret
;---[Range reduction branch]---------------
.rdc:	movs#x	[s_angle], angle			; save "angle" variable into the stack
		fld		tbyte [pi_half]				; push Pi / 2 into FPU stack
		fld		tbyte [two_pi]				; push 2 / Pi into FPU stack
		fmul	prefix [s_angle]
		frndint								; ipart = rint (angle * 2 / Pi)
		fistp	qword [s_ipart]				; store ipart
		fld		prefix [s_angle]			; push angle into FPU stack
		fprem1								; angle = remainder (angle, Pi / 2)
		fstp	prefix [s_angle]			; store angle
		ffree	st0							; free FPU stack top register
;---[Compute sine and cosine values]-------
		mov		ipart, [s_ipart]
		movs#x	angle, [s_angle]
		call	SinCosQ						; call SinCosQ (angle, ipart)
		divs#x	angle, temp					; return sin / cos
		ret
;---[Error branch]-------------------------
.error:	movap#x	angle, [nanval]				; retrun NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRIG2_VCTR	prefix, i, x
{
;---[Parameters]---------------------------
angle	equ		xmm0						; angle value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_angle	equ		stack - 3 * 8				; stack position of "angle" variable
s_ipart	equ		stack - 7 * 8				; stack position of "ipart" variable
if x eq s
SinCosQ	= SinCosQ_flt32v4					; Sine and cosine core function
dmask	= dmask_flt32						; data mask
nanval	= pnan_flt32						; +NaN
maxangl	= maxangl_flt32						; max angle value
scale	= 2									; scale value
else if x eq d
SinCosQ	= SinCosQ_flt64v2					; Sine and cosine core function
dmask	= dmask_flt64						; data mask
nanval	= pnan_flt64						; +NaN
maxangl	= maxangl_flt64						; max angle value
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		movap#x	temp, angle					; temp = angle
		andp#x	angle, [dmask]				; angle = Abs (angle)
;---[Check for angle overflow]-------------
	cmpnltp#x	angle, [maxangl]			; if (angle >= maxangl)
	blendvp#x	temp, [nanval]				;     temp = NaN
;---[Do range reduction]-------------------
		movap#x	[s_angle], temp				; save "angle" variable into the stack
		fld		tbyte [pi_half]				; push Pi / 2 into FPU stack
repeat	VSIZE / bytes
		fld		tbyte [two_pi]				; push 2 / Pi into FPU stack
		fmul	prefix [s_angle+(%-1)*bytes]
		frndint								; ipart = rint (angle * 2 / Pi)
		fistp	qword [s_ipart+(%-1)*bytes]	; store ipart
		fld		prefix [s_angle+(%-1)*bytes]; push angle into FPU stack
		fprem1								; angle = remainder (angle, Pi / 2)
		fstp	prefix [s_angle+(%-1)*bytes]; store angle
end repeat
		ffree	st0							; free FPU stack top register
;---[Compute sine and cosine values]-------
		movap#x	temp, [s_ipart]
		movap#x	angle, [s_angle]
		call	SinCosQ						; call SinCosQ (angle, ipart)
		divp#x	angle, temp					; return sin / cos
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRIG3_SCLR	ipart, prefix, x
{
;---[Parameters]---------------------------
sin		equ		rdi							; pointer to sine value
cos		equ		rsi							; pointer to cosine value
angle	equ		xmm0						; angle value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_sin	equ		stack + 0 * 8				; stack position of "sin" variable
s_cos	equ		stack + 1 * 8				; stack position of "cos" variable
s_angle	equ		stack + 2 * 8				; stack position of "angle" variable
s_ipart	equ		stack + 3 * 8				; stack position of "ipart" variable
if x eq s
SinCosQ	= SinCosQ_flt32						; Sine and cosine core function
dmask	= dmask_flt32						; data mask
nanval	= pnan_flt32						; +NaN
maxangl	= maxangl_flt32						; max angle value
pifour	= pi_four_flt32						; Pi / 4
else if x eq d
SinCosQ	= SinCosQ_flt64						; Sine and cosine core function
dmask	= dmask_flt64						; data mask
nanval	= pnan_flt64						; +NaN
maxangl	= maxangl_flt64						; max angle value
pifour	= pi_four_flt64						; Pi / 4
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_sin], sin				; save "sin" variable into the stack
		mov		[s_cos], cos				; save "cos" variable into the stack
		movap#x	temp, angle
		andp#x	temp, [dmask]				; temp = Abs (angle)
;---[Check for angle overflow]-------------
		comis#x	temp, [maxangl]				; if (temp >= maxangl)
		jae		.error						;     return NaN
		xor		ipart, ipart				; ipart = 0
;---[Check for correct range]--------------
		comis#x	temp, [pifour]				; if (temp > Pi / 4)
		ja		.rdc						;     then do range reduction
;---[Compute sine and cosine values]-------
		call	SinCosQ						; call SinCosQ (angle, ipart)
		mov		sin, [s_sin]				; get "sin" variable from the stack
		mov		cos, [s_cos]				; get "cos" variable from the stack
		movs#x	[sin], angle				; store sine value
		movs#x	[cos], temp					; store cosine value
		add		stack, space				; restoring back the stack pointer
		ret
;---[Range reduction branch]---------------
.rdc:	movs#x	[s_angle], angle			; save "angle" variable into the stack
		fld		tbyte [pi_half]				; push Pi / 2 into FPU stack
		fld		tbyte [two_pi]				; push 2 / Pi into FPU stack
		fmul	prefix [s_angle]
		frndint								; ipart = rint (angle * 2 / Pi)
		fistp	qword [s_ipart]				; store ipart
		fld		prefix [s_angle]			; push angle into FPU stack
		fprem1								; angle = remainder (angle, Pi / 2)
		fstp	prefix [s_angle]			; store angle
		ffree	st0							; free FPU stack top register
;---[Compute sine and cosine values]-------
		mov		ipart, [s_ipart]
		movs#x	angle, [s_angle]
		call	SinCosQ						; call SinCosQ (angle, ipart)
		mov		sin, [s_sin]				; get "sin" variable from the stack
		mov		cos, [s_cos]				; get "cos" variable from the stack
		movs#x	[sin], angle				; store sine value
		movs#x	[cos], temp					; store cosine value
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	movap#x	angle, [nanval]				; retrun NaN
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRIG3_VCTR	prefix, i, x
{
;---[Parameters]---------------------------
sin		equ		rdi							; pointer to sine value
cos		equ		rsi							; pointer to cosine value
angle	equ		xmm0						; angle value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_sin	equ		stack + 0 * 8				; stack position of "sin" variable
s_cos	equ		stack + 1 * 8				; stack position of "cos" variable
s_angle	equ		stack + 3 * 8				; stack position of "angle" variable
s_ipart	equ		stack + 5 * 8				; stack position of "ipart" variable
if x eq s
SinCosQ	= SinCosQ_flt32v4					; Sine and cosine core function
dmask	= dmask_flt32						; data mask
nanval	= pnan_flt32						; +NaN
maxangl	= maxangl_flt32						; max angle value
scale	= 2									; scale value
else if x eq d
SinCosQ	= SinCosQ_flt64v2					; Sine and cosine core function
dmask	= dmask_flt64						; data mask
nanval	= pnan_flt64						; +NaN
maxangl	= maxangl_flt64						; max angle value
scale	= 3									; scale value
end if
space	= 8 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_sin], sin				; save "sin" variable into the stack
		mov		[s_cos], cos				; save "cos" variable into the stack
		movap#x	temp, angle					; temp = angle
		andp#x	angle, [dmask]				; angle = Abs (angle)
;---[Check for angle overflow]-------------
	cmpnltp#x	angle, [maxangl]			; if (angle >= maxangl)
	blendvp#x	temp, [nanval]				;     temp = NaN
;---[Do range reduction]-------------------
		movap#x	[s_angle], temp				; save "angle" variable into the stack
		fld		tbyte [pi_half]				; push Pi / 2 into FPU stack
repeat	VSIZE / bytes
		fld		tbyte [two_pi]				; push 2 / Pi into FPU stack
		fmul	prefix [s_angle+(%-1)*bytes]
		frndint								; ipart = rint (angle * 2 / Pi)
		fistp	qword [s_ipart+(%-1)*bytes]	; store ipart
		fld		prefix [s_angle+(%-1)*bytes]; push angle into FPU stack
		fprem1								; angle = remainder (angle, Pi / 2)
		fstp	prefix [s_angle+(%-1)*bytes]; store angle
end repeat
		ffree	st0							; free FPU stack top register
;---[Compute sine and cosine values]-------
		movap#x	temp, [s_ipart]
		movap#x	angle, [s_angle]
		call	SinCosQ						; call SinCosQ (angle, ipart)
		mov		sin, [s_sin]				; get "sin" variable from the stack
		mov		cos, [s_cos]				; get "cos" variable from the stack
		movap#x	[sin], angle				; store sine value
		movap#x	[cos], temp					; store cosine value
		add		stack, space				; restoring back the stack pointer
		ret
}

;==============================================================================;
;       Hypotenuse                                                             ;
;==============================================================================;
macro	HYPOT_SCLR	dim, x
{
;---[Parameters]---------------------------
cath1	equ		xmm0						; first cathetus
cath2	equ		xmm1						; second cathetus
cath3	equ		xmm2						; third cathetus
;---[Internal variables]-------------------
mask	equ		xmm3						; data mask to get absolute value
max		equ		xmm4						; max value
scale1	equ		xmm5						; first scale factor
scale2	equ		xmm6						; second scale factor
if x eq s
dmask	= dmask_flt32						; data mask
overB	= overB_flt32						; Overflow prevention barier
overS	= overS_flt32						; Overflow prevention const
overR	= overR_flt32						; Range restoration const
underB	= underB_flt32						; Underflow prevention barier
underS	= underS_flt32						; Underflow prevention const
underR	= underR_flt32						; Range restoration const
else if x eq d
dmask	= dmask_flt64						; data mask
overB	= overB_flt64						; Overflow prevention barier
overS	= overS_flt64						; Overflow prevention const
overR	= overR_flt64						; Range restoration const
underB	= underB_flt64						; Underflow prevention barier
underS	= underS_flt64						; Underflow prevention const
underR	= underR_flt64						; Range restoration const
end if
;------------------------------------------
		movap#x	mask, [dmask]				; mask = dmask
		andp#x	cath1, mask					; cath1 = Abs (cath1)
		andp#x	cath2, mask					; cath2 = Abs (cath2)
if dim = 3
		andp#x	cath3, mask					; cath3 = Abs (cath3)
end if
		movap#x	max, cath1
		maxs#x	max, cath2					; max = Max (cath1, cath2)
if dim = 3
		maxs#x	max, cath3					; max = Max (cath1, cath3)
end if
		comis#x	max, [overB]				; if (max > overB)
		ja		.over						;     then go to overflow prevention branch
		comis#x	max, [underB]				; if (max < underB)
		jb		.under						;     then go to underflow prevention branch
;---[Normal execution branch]--------------
		muls#x	cath1, cath1				; cath1 = cath1^2
		muls#x	cath2, cath2				; cath2 = cath2^2
if dim = 3
		muls#x	cath3, cath3				; cath3 = cath3^2
end if
		adds#x	cath1, cath2				; cath1 += cath2^2
if dim = 3
		adds#x	cath1, cath3				; cath1 += cath3^2
end if
		sqrts#x	cath1, cath1				; return Sqrt (cath1)
		ret
;---[Overflow prevention branch]-----------
.over:	movap#x	scale1, [overS]				; scale1 = overflow prevention const
		movap#x	scale2, [overR]				; scale2 = range restoration const
		muls#x	cath1, scale1				; cath1 *= scale1
		muls#x	cath2, scale1				; cath2 *= scale1
if dim = 3
		muls#x	cath3, scale1				; cath3 *= scale1
end if
		muls#x	cath1, cath1				; cath1 = cath1^2
		muls#x	cath2, cath2				; cath2 = cath2^2
if dim = 3
		muls#x	cath3, cath3				; cath3 = cath3^2
end if
		adds#x	cath1, cath2				; cath1 += cath2^2
if dim = 3
		adds#x	cath1, cath3				; cath1 += cath3^2
end if
		sqrts#x	cath1, cath1
		muls#x	cath1, scale2				; return Sqrt (cath1) * scale2
		ret
;---[Underflow prevention branch]----------
.under:	movap#x	scale1, [underS]			; scale1 = underflow prevention const
		movap#x	scale2, [underR]			; scale2 = range restoration const
		muls#x	cath1, scale1				; cath1 *= scale1
		muls#x	cath2, scale1				; cath2 *= scale1
if dim = 3
		muls#x	cath3, scale1				; cath3 *= scale1
end if
		muls#x	cath1, cath1				; cath1 = cath1^2
		muls#x	cath2, cath2				; cath2 = cath2^2
if dim = 3
		muls#x	cath3, cath3				; cath3 = cath3^2
end if
		adds#x	cath1, cath2				; cath1 += cath2^2
if dim = 3
		adds#x	cath1, cath3				; cath1 += cath3^2
end if
		sqrts#x	cath1, cath1
		muls#x	cath1, scale2				; return Sqrt (cath1) * scale2
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	HYPOT_VCTR	dim, x
{
;---[Parameters]---------------------------
cath1	equ		xmm0						; first cathetus
cath2	equ		xmm1						; second cathetus
cath3	equ		xmm2						; third cathetus
;---[Internal variables]-------------------
temp	equ		xmm3						; temporary register
mask	equ		xmm4						; data mask to get absolute value
max		equ		xmm5						; max value
scale1	equ		xmm6						; first scale factor
scale2	equ		xmm7						; second scale factor
if x eq s
dmask	= dmask_flt32						; data mask
one		= pone_flt32						; +1.0
overB	= overB_flt32						; Overflow prevention barier
overS	= overS_flt32						; Overflow prevention const
overR	= overR_flt32						; Range restoration const
underB	= underB_flt32						; Underflow prevention barier
underS	= underS_flt32						; Underflow prevention const
underR	= underR_flt32						; Range restoration const
else if x eq d
dmask	= dmask_flt64						; data mask
one		= pone_flt64						; +1.0
overB	= overB_flt64						; Overflow prevention barier
overS	= overS_flt64						; Overflow prevention const
overR	= overR_flt64						; Range restoration const
underB	= underB_flt64						; Underflow prevention barier
underS	= underS_flt64						; Underflow prevention const
underR	= underR_flt64						; Range restoration const
end if
;------------------------------------------
		movap#x	mask, [dmask]				; mask = dmask
		movap#x	scale1, [one]				; scale1 = +1.0
		movap#x	scale2, [one]				; scale2 = +1.0
		andp#x	cath1, mask					; cath1 = Abs (cath1)
		andp#x	cath2, mask					; cath2 = Abs (cath2)
if dim = 3
		andp#x	cath3, mask					; cath3 = Abs (cath3)
end if
		movap#x	max, cath1
		maxp#x	max, cath2					; max = Max (cath1, cath2)
if dim = 3
		maxp#x	max, cath3					; max = Max (cath1, cath3)
end if
		movap#x	temp, cath1					; temp = cath1
;---[Prevent value overflow]---------------
		movap#x	cath1, max
	cmpnlep#x	cath1, [overB]				; if (max > overB)
	blendvp#x	scale1, [overS]				;     scale1 = overflow prevention const
	blendvp#x	scale2, [overR]				;     scale2 = range restoration const
;---[Prevent value underflow]--------------
		movap#x	cath1, max
	cmpltp#x	cath1, [underB]				; if (max < underB)
	blendvp#x	scale1, [underS]			;     scale1 = underflow prevention const
	blendvp#x	scale2, [underR]			;     scale2 = range restoration const
		movap#x	cath1, temp					; cath1 = temp
;---[Normal execution branch]--------------
		mulp#x	cath1, scale1				; cath1 *= scale1
		mulp#x	cath2, scale1				; cath2 *= scale1
if dim = 3
		mulp#x	cath3, scale1				; cath3 *= scale1
end if
		mulp#x	cath1, cath1				; cath1 = cath1^2
		mulp#x	cath2, cath2				; cath2 = cath2^2
if dim = 3
		mulp#x	cath3, cath3				; cath3 = cath3^2
end if
		addp#x	cath1, cath2				; cath1 += cath2^2
if dim = 3
		addp#x	cath1, cath3				; cath1 += cath3^2
end if
		sqrtp#x	cath1, cath1
		mulp#x	cath1, scale2				; return Sqrt (cath1) * scale2
		ret
}
Hypot2D_flt32:		HYPOT_SCLR	2, s
Hypot2D_flt64:		HYPOT_SCLR	2, d
Hypot3D_flt32:		HYPOT_SCLR	3, s
Hypot3D_flt64:		HYPOT_SCLR	3, d
Hypot2D_flt32v4:	HYPOT_VCTR	2, s
Hypot2D_flt64v2:	HYPOT_VCTR	2, d
Hypot3D_flt32v4:	HYPOT_VCTR	3, s
Hypot3D_flt64v2:	HYPOT_VCTR	3, d

;==============================================================================;
;       Cathetus                                                               ;
;==============================================================================;
macro	CATH_SCLR	x
{
;---[Parameters]---------------------------
hypot	equ		xmm0						; hypotenuse
cath	equ		xmm1						; cathetus
;---[Internal variables]-------------------
temp	equ		xmm2						; temporary register
mask	equ		xmm3						; data mask to get absolute value
scale1	equ		xmm4						; first scale factor
scale2	equ		xmm5						; second scale factor
if x eq s
dmask	= dmask_flt32						; data mask
overB	= overB_flt32						; Overflow prevention barier
overS	= overS_flt32						; Overflow prevention const
overR	= overR_flt32						; Range restoration const
underB	= underB_flt32						; Underflow prevention barier
underS	= underS_flt32						; Underflow prevention const
underR	= underR_flt32						; Range restoration const
else if x eq d
dmask	= dmask_flt64						; data mask
overB	= overB_flt64						; Overflow prevention barier
overS	= overS_flt64						; Overflow prevention const
overR	= overR_flt64						; Range restoration const
underB	= underB_flt64						; Underflow prevention barier
underS	= underS_flt64						; Underflow prevention const
underR	= underR_flt64						; Range restoration const
end if
;------------------------------------------
		movap#x	mask, [dmask]				; mask = dmask
		andp#x	hypot, mask					; hypot = Abs (hypot)
		andp#x	cath, mask					; cath = Abs (cath)
		comis#x	hypot, [overB]				; if (hypot > overB)
		ja		.over						;     then go to overflow prevention branch
		comis#x	hypot, [underB]				; if (hypot < underB)
		jb		.under						;     then go to underflow prevention branch
;---[Normal execution branch]--------------
		movap#x	temp, hypot
		adds#x	hypot, cath
		subs#x	temp, cath
		muls#x	hypot, temp					; hypot = (hypot + cath) * (hypot - cath)
		sqrts#x	hypot, hypot				; return Sqrt (hypot)
		ret
;---[Overflow prevention branch]-----------
.over:	movap#x	scale1, [overS]				; scale1 = overflow prevention const
		movap#x	scale2, [overR]				; scale2 = range restoration const
		muls#x	hypot, scale1				; hypot *= scale1
		muls#x	cath, scale1				; cath *= scale1
		movap#x	temp, hypot
		adds#x	hypot, cath
		subs#x	temp, cath
		muls#x	hypot, temp					; hypot = (hypot + cath) * (hypot - cath)
		sqrts#x	hypot, hypot
		muls#x	hypot, scale2				; return scale2 * Sqrt (hypot)
		ret
;---[Underflow prevention branch]----------
.under:	movap#x	scale1, [underS]			; scale1 = underflow prevention const
		movap#x	scale2, [underR]			; scale2 = range restoration const
		muls#x	hypot, scale1				; hypot *= scale1
		muls#x	cath, scale1				; cath *= scale1
		movap#x	temp, hypot
		adds#x	hypot, cath
		subs#x	temp, cath
		muls#x	hypot, temp					; hypot = (hypot + cath) * (hypot - cath)
		sqrts#x	hypot, hypot
		muls#x	hypot, scale2				; return scale2 * Sqrt (hypot)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CATH_VCTR	x
{
;---[Parameters]---------------------------
hypot	equ		xmm0						; hypotenuse
cath	equ		xmm1						; cathetus
;---[Internal variables]-------------------
temp	equ		xmm2						; temporary register
mask	equ		xmm3						; data mask to get absolute value
scale1	equ		xmm4						; first scale factor
scale2	equ		xmm5						; second scale factor
if x eq s
dmask	= dmask_flt32						; data mask
oneval	= pone_flt32						; +1.0
overB	= overB_flt32						; Overflow prevention barier
overS	= overS_flt32						; Overflow prevention const
overR	= overR_flt32						; Range restoration const
underB	= underB_flt32						; Underflow prevention barier
underS	= underS_flt32						; Underflow prevention const
underR	= underR_flt32						; Range restoration const
else if x eq d
dmask	= dmask_flt64						; data mask
oneval	= pone_flt64						; +1.0
overB	= overB_flt64						; Overflow prevention barier
overS	= overS_flt64						; Overflow prevention const
overR	= overR_flt64						; Range restoration const
underB	= underB_flt64						; Underflow prevention barier
underS	= underS_flt64						; Underflow prevention const
underR	= underR_flt64						; Range restoration const
end if
;------------------------------------------
		movap#x	mask, [dmask]				; mask = dmask
		movap#x	scale1, [oneval]			; scale1 = +1.0
		movap#x	scale2, [oneval]			; scale2 = +1.0
		andp#x	hypot, mask					; hypot = Abs (hypot)
		andp#x	cath, mask					; cath = Abs (cath)
		movap#x	temp, hypot					; temp = hypot
;---[Prevent value overflow]---------------
	cmpnlep#x	hypot, [overB]				; if (hypot > overB)
	blendvp#x	scale1, [overS]				;     scale1 = overflow prevention const
	blendvp#x	scale2, [overR]				;     scale2 = range restoration const
;---[Prevent value underflow]--------------
		movap#x	hypot, temp
	cmpltp#x	hypot, [underB]				; if (hypot < underB)
	blendvp#x	scale1, [underS]			;     scale1 = underflow prevention const
	blendvp#x	scale2, [underR]			;     scale2 = range restoration const
		movap#x	hypot, temp					; hypot = temp
;---[Normal execution branch]--------------
		mulp#x	hypot, scale1				; hypot *= scale1
		mulp#x	cath, scale1				; cath *= scale1
		movap#x	temp, hypot
		addp#x	hypot, cath
		subp#x	temp, cath
		mulp#x	hypot, temp					; hypot = (hypot + cath) * (hypot - cath)
		sqrtp#x	hypot, hypot
		mulp#x	hypot, scale2				; return Sqrt (hypot) * scale2
		ret
}
Cath_flt32:		CATH_SCLR	s
Cath_flt64:		CATH_SCLR	d
Cath_flt32v4:	CATH_VCTR	s
Cath_flt64v2:	CATH_VCTR	d

;==============================================================================;
;       Trigonometric sine                                                     ;
;==============================================================================;
macro	SIN_CORE	quadr, sreg, treg, x
{
;---[Parameters]---------------------------
angle	equ		xmm0						; angle value
;---[Internal variables]-------------------
table	equ		rax							; pointer to array of coefficients
svalue	equ		xmm1						; scale value
value	equ		xmm2						; value to process
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
temp3	equ		xmm5						; temporary register #3
temp4	equ		xmm6						; temporary register #4
sign	equ		xmm7						; sign bit
if x eq s
smask	= SMASK_FLT32						; sign mask
oneval	= pone_flt32						; +1.0
sint	= sin_flt32							; pointer to array of sine coefficients
cost	= cos_flt32							; pointer to array of cosine coefficients
else if x eq d
smask	= SMASK_FLT64						; sign mask
oneval	= pone_flt64						; +1.0
sint	= sin_flt64							; pointer to array of sine coefficients
cost	= cos_flt64							; pointer to array of cosine coefficients
end if
;---[Clear non required bits]--------------
		and		quadr, 0x3					; quadr &= 0x3
;---[Set correct sign]---------------------
		xor		sreg, sreg					; sign = +1.0
		mov		treg, smask					; if (quadr > 0x1)
		cmp		quadr, 0x1					; {
		cmova	sreg, treg					;     sign = -1.0
		movint	sign, sreg, x				; }
		test	quadr, 0x1					; if (quadr & 0x1)
		jnz		.cos						;     then compute cosine value
;---[Compute sine value]-------------------
		lea		table, [sint]				; set pointer to array of coefficients
		movap#x	value, angle
		muls#x	value, value				; value = angle * angle
if x eq s
	POLYNOM4	table, angle, svalue, value, s, s, x
else if x eq d
	POLYNOM8	table, angle, svalue, value, s, s, x
end if
		xorp#x	angle, sign					; set correct sign to sine value
		ret
;---[Compute cosine value]-----------------
.cos:	lea		table, [cost]				; set pointer to array of coefficients
		movap#x	value, angle
		muls#x	value, value				; value = angle * angle
		movap#x	angle, [oneval]				; angle = 1.0
if x eq s
	POLYNOM4	table, angle, svalue, value, s, s, x
else if x eq d
	POLYNOM8	table, angle, svalue, value, s, s, x
end if
		xorp#x	angle, sign					; set correct sign to cosine value
		ret
}
SinQ_flt32:		SIN_CORE	edi, esi, ecx, s
SinQ_flt64:		SIN_CORE	rdi, rsi, rcx, d
Sin_flt32:		TRIG1_SCLR	edi, dword, 0, s
Sin_flt64:		TRIG1_SCLR	rdi, qword, 0, d
Sin_flt32v4:	TRIG1_VCTR	dword, 0, d, s
Sin_flt64v2:	TRIG1_VCTR	qword, 0, q, d

;==============================================================================;
;       Trigonometric cosine                                                   ;
;==============================================================================;
Cos_flt32:		TRIG1_SCLR	edi, dword, 1, s
Cos_flt64:		TRIG1_SCLR	rdi, qword, 1, d
Cos_flt32v4:	TRIG1_VCTR	dword, 1, d, s
Cos_flt64v2:	TRIG1_VCTR	qword, 1, q, d

;==============================================================================;
;       Trigonometric sine and cosine                                          ;
;==============================================================================;
macro	SINCOS_CORE_SCLR	quadr1, quadr2, sreg, treg, x
{
;---[Parameters]---------------------------
angle	equ		xmm0						; angle value
;---[Internal variables]-------------------
table1	equ		rax							; pointer to array of coefficients
table2	equ		rdx							; pointer to array of coefficients
res1	equ		xmm0						; result value #1
res2	equ		xmm1						; result value #2
svalue1	equ		xmm2						; scale value #1
svalue2	equ		xmm3						; scale value #2
value	equ		xmm4						; value to process
temp1	equ		xmm5						; temporary register #1
temp2	equ		xmm6						; temporary register #2
temp3	equ		xmm7						; temporary register #3
temp4	equ		xmm8						; temporary register #4
temp5	equ		xmm9						; temporary register #5
temp6	equ		xmm10						; temporary register #6
temp7	equ		xmm11						; temporary register #7
temp8	equ		xmm12						; temporary register #8
sign1	equ		xmm13						; sign bit #1
sign2	equ		xmm14						; sign bit #2
if x eq s
smask	= SMASK_FLT32						; sign mask
oneval	= pone_flt32						; +1.0
sint	= sin_flt32							; pointer to array of sine coefficients
cost	= cos_flt32							; pointer to array of cosine coefficients
else if x eq d
smask	= SMASK_FLT64						; sign mask
oneval	= pone_flt64						; +1.0
sint	= sin_flt64							; pointer to array of sine coefficients
cost	= cos_flt64							; pointer to array of cosine coefficients
end if
;------------------------------------------
		lea		quadr2, [quadr1 + 1]		; quadr2 = quadr1 + 1
;---[Clear non required bits]--------------
		and		quadr1, 0x3					; quadr1 &= 0x3
		and		quadr2, 0x3					; quadr2 &= 0x3
;---[Set correct signs]--------------------
		xor		sreg, sreg					; sign1 = +1.0
		mov		treg, smask					; if (quadr1 > 0x1)
		cmp		quadr1, 0x1					; {
		cmova	sreg, treg					;     sign1 = -1.0
		movint	sign1, sreg, x				; }
		xor		sreg, sreg					; sign2 = +1.0
		mov		treg, smask					; if (quadr2 > 0x1)
		cmp		quadr2, 0x1					; {
		cmova	sreg, treg					;     sign2 = -1.0
		movint	sign2, sreg, x				; }
;---[Compute sine and cosine values]-------
		lea		table1, [sint]				; set pointer to array of coefficients
		lea		table2, [cost]				; set pointer to array of coefficients
		movap#x	value, angle
		muls#x	value, value				; value = angle * angle
		movap#x	res2, [oneval]				; res2 = 1.0
if x eq s
		PAIR4	table1, table2, res1, res2, svalue1, svalue2, value, s, s, x
else if x eq d
		PAIR8	table1, table2, res1, res2, svalue1, svalue2, value, s, s, x
end if
		test	quadr1, 0x1					; if (quadr1 & 0x1) {
		jz		.skip						;     value = res1
		movap#x	value, res1					;     res1 = res2
		movap#x	res1, res2					;     res2 = res1
		movap#x	res2, value					; }
.skip:	xorp#x	res1, sign1					; set correct sign to sine value
		xorp#x	res2, sign2					; set correct sign to cosine value
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SINCOS_CORE_VCTR	i, x
{
;---[Parameters]---------------------------
angle	equ		xmm0						; angle value
quadr	equ		xmm1						; quadrant value
;---[Internal variables]-------------------
table1	equ		rax							; pointer to array of coefficients
table2	equ		rdx							; pointer to array of coefficients
res1	equ		xmm0						; result value #1
res2	equ		xmm1						; result value #2
tres1	equ		xmm2						; temporary result #1
tres2	equ		xmm3						; temporary result #2
svalue1	equ		xmm4						; scale value #1
svalue2	equ		xmm5						; scale value #2
value	equ		xmm6						; value to process
temp1	equ		xmm7						; temporary register #1
temp2	equ		xmm8						; temporary register #2
temp3	equ		xmm9						; temporary register #3
temp4	equ		xmm10						; temporary register #4
temp5	equ		xmm11						; temporary register #5
temp6	equ		xmm12						; temporary register #6
temp7	equ		xmm13						; temporary register #7
temp8	equ		xmm14						; temporary register #8
sign1	equ		temp7						; sign bit #1
sign2	equ		temp8						; sign bit #2
stack	equ		rsp							; stack pointer
s_sign1	equ		stack - 2 * 8				; stack position of "array1" variable
s_sign2	equ		stack - 4 * 8				; stack position of "rank1" variable
if x eq s
ione	= ione_uint32						; 0x1
qmask	= qmask_uint32						; quadrant mask
smask	= smask_flt32						; sign mask
oneval	= pone_flt32						; +1.0
sint	= sin_flt32							; pointer to array of sine coefficients
cost	= cos_flt32							; pointer to array of cosine coefficients
else if x eq d
ione	= ione_uint64						; 0x1
qmask	= qmask_uint64						; quadrant mask
smask	= smask_flt64						; sign mask
oneval	= pone_flt64						; +1.0
sint	= sin_flt64							; pointer to array of sine coefficients
cost	= cos_flt64							; pointer to array of cosine coefficients
end if
;------------------------------------------
		movap#x	value, angle				; value = angle
		movdqa	temp1, [ione]				; temp1 = 0x1
		movdqa	temp2, [qmask]				; temp2 = 0x3
		movap#x	temp3, [smask]				; temp3 = smask
		movdqa	svalue1, quadr				; svalue1 = quadr
		movdqa	svalue2, quadr
		padd#i	svalue2, temp1				; svalue2 = quadr + 0x1
;---[Clear non required bits]--------------
		pand	quadr, temp1				; quadr1 &= 0x1
		pand	svalue1, temp2				; svalue1 &= 0x3
		pand	svalue2, temp2				; svalue2 &= 0x3
;---[Set correct signs]--------------------
		xorp#x	sign1, sign1				; sign1 = +1.0
		movdqa	angle, svalue1
	pcmpgt#i	angle, temp1				; if (quadr > 0x1)
	blendvp#x	sign1, temp3				;     sign1 = -1.0
		movap#x	[s_sign1], sign1			; save "sign1" variable into the stack
		xorp#x	sign2, sign2				; sign2 = +1.0
		movdqa	angle, svalue2
	pcmpgt#i	angle, temp1				; if (quadr + 1 > 0x1)
	blendvp#x	sign2, temp3				;     sign2 = -1.0
		movap#x	[s_sign2], sign2			; save "sign2" variable into the stack
;---[Compute sine and cosine values]-------
		lea		table1, [sint]				; set pointer to array of coefficients
		lea		table2, [cost]				; set pointer to array of coefficients
		movap#x	tres1, value				; tres1 = angle
		movap#x	tres2, [oneval]				; tres2 = 1.0
		mulp#x	value, value				; value = angle * angle
if x eq s
		PAIR4	table1, table2, tres1, tres2, svalue1, svalue2, value, ap, p, x
else if x eq d
		PAIR8	table1, table2, tres1, tres2, svalue1, svalue2, value, ap, p, x
end if
		movap#x	temp1, tres1				; temp1 = tres1
		movap#x	temp2, tres2				; temp2 = tres2
		movdqa	angle, quadr				; angle = quadr
		pxor	value, value				; value = 0
	pcmpgt#i	angle, value				; if (quadr > 0)
	blendvp#x	tres1, temp2				;     tres1 = temp2
	blendvp#x	tres2, temp1				;     tres2 = temp1
		xorp#x	tres1, [s_sign1]			; set correct sign to sine value
		xorp#x	tres2, [s_sign2]			; set correct sign to cosine value
		movap#x	res1, tres1					; res1 = tres1 * sign1
		movap#x	res2, tres2					; res2 = tres2 * sign2
		ret
}
SinCosQ_flt32:		SINCOS_CORE_SCLR	edi, esi, r8d, r9d, s
SinCosQ_flt64:		SINCOS_CORE_SCLR	rdi, rsi, r8, r9, d
SinCosQ_flt32v4:	SINCOS_CORE_VCTR	d, s
SinCosQ_flt64v2:	SINCOS_CORE_VCTR	q, d
SinCos_flt32:		TRIG3_SCLR	edi, dword, s
SinCos_flt64:		TRIG3_SCLR	rdi, qword, d
SinCos_flt32v4:		TRIG3_VCTR	dword, d, s
SinCos_flt64v2:		TRIG3_VCTR	qword, q, d

;==============================================================================;
;       Trigonometric tangent                                                  ;
;==============================================================================;
Tan_flt32:			TRIG2_SCLR	edi, dword, s
Tan_flt64:			TRIG2_SCLR	rdi, qword, d
Tan_flt32v4:		TRIG2_VCTR	dword, d, s
Tan_flt64v2:		TRIG2_VCTR	qword, q, d

;******************************************************************************;
;       Inverse trigonometric functions                                        ;
;******************************************************************************;

;==============================================================================;
;       Inverse trigonometric sine                                             ;
;==============================================================================;
macro	ASIN_SCLR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; sine value
;---[Internal variables]-------------------
table	equ		rax							; pointer to array of coefficients
orig	equ		xmm1						; original value
svalue	equ		xmm2						; scale value
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
temp3	equ		xmm5						; temporary register #3
temp4	equ		xmm6						; temporary register #4
temp5	equ		xmm7						; temporary register #5
temp6	equ		xmm8						; temporary register #6
temp7	equ		xmm9						; temporary register #7
temp8	equ		xmm10						; temporary register #8
shift	equ		xmm11						; shift value
sign	equ		xmm12						; sign bit
if x eq s
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
nanval	= pnan_flt32						; NaN
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
pihalf	= pi_half_flt32						; Pi / 2
asint	= asin_flt32						; pointer to array of inverse sine coefficients
else if x eq d
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
nanval	= pnan_flt64						; NaN
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
pihalf	= pi_half_flt64						; Pi / 2
asint	= asin_flt64						; pointer to array of inverse sine coefficients
end if
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	svalue, value				; svalue = value
;---[Check for value overflow]-------------
		comis#x	value, [oneval]				; if (value > 1.0)
		ja		.error						;     return NaN
		comis#x	value, [halfval]			; if (value > 0.5)
		ja		.else						;     then go to else branch
;---[If value <= 0.5]----------------------
		lea		table, [asint]				; set pointer to array of coefficients
		movap#x	orig, value					; orig = value
		muls#x	value, value				; value *= value
if x eq s
	POLYNOM16	table, orig, svalue, value, s, s, x
else if x eq d
	POLYNOM32	table, orig, svalue, value, s, s, x
end if
		orp#x	orig, sign					; set correct sign to inverse sine value
		movap#x	value, orig					; return ArcSin (value)
		ret
;---[If value > 0.5]-----------------------
.else:	lea		table, [asint]				; set pointer to array of coefficients
		movap#x	orig, [oneval]
		subs#x	orig, value
		muls#x	orig, [halfval]
		movap#x	value, orig					; value = 0.5 * (1.0 - value)
		sqrts#x	orig, value					; orig = sqrt (value)
if x eq s
	POLYNOM16	table, orig, svalue, value, s, s, x
else if x eq d
	POLYNOM32	table, orig, svalue, value, s, s, x
end if
		movap#x	shift, [pihalf]				; shift = Pi / 2
		adds#x	orig, orig					; orig *= 2.0
		subs#x	shift, orig					; shift -= orig
		orp#x	shift, sign					; set correct sign to inverse sine value
		movap#x	value, shift				; return ArcSin (value)
		ret
;---[Error branch]-------------------------
.error:	movap#x	value, [nanval]				; retrun NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ASIN_VCTR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; sine value
;---[Internal variables]-------------------
table	equ		rax							; pointer to array of coefficients
orig	equ		xmm1						; original value
svalue	equ		xmm2						; scale value
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
temp3	equ		xmm5						; temporary register #3
temp4	equ		xmm6						; temporary register #4
temp5	equ		xmm7						; temporary register #5
temp6	equ		xmm8						; temporary register #6
temp7	equ		xmm9						; temporary register #7
temp8	equ		xmm10						; temporary register #8
shift	equ		xmm11						; shift value
scale	equ		xmm12						; scale value
sign	equ		xmm13						; sign bit
if x eq s
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
nanval	= pnan_flt32						; NaN
twoval	= mtwo_flt32						; -2.0
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
zeroval	= pzero_flt32						; +0.0
sqrt12	= sqrt12_flt32						; 1 / sqrt (2)
pihalf	= pi_half_flt32						; Pi / 2
asint	= asin_flt32						; pointer to array of inverse sine coefficients
else if x eq d
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
nanval	= pnan_flt64						; NaN
twoval	= mtwo_flt64						; -2.0
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
zeroval	= pzero_flt64						; +0.0
sqrt12	= sqrt12_flt64						; 1 / sqrt (2)
pihalf	= pi_half_flt64						; Pi / 2
asint	= asin_flt64						; pointer to array of inverse sine coefficients
end if
;------------------------------------------
		movap#x	shift, [pihalf]				; shift = Pi / 2
		movap#x	scale, [twoval]				; scale = -2.0
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	svalue, value				; svalue = value
;---[Check for value overflow]-------------
	cmpnlep#x	value, [oneval]				; if (value > 1.0)
	blendvp#x	svalue, [nanval]			;     svalue = NaN
;---[Assume that value >= 0.5]-------------
		movap#x	orig, [oneval]
		subp#x	orig, svalue
		sqrtp#x	orig, orig
		mulp#x	orig, [sqrt12]				; orig = Sqrt (0.5) * Sqrt (1.0 - value)
;---[If value < 0.5]-----------------------
		movap#x	value, svalue				; value = svalue
	cmpltp#x	value, [halfval]			; if (value < 0.5)
	blendvp#x	orig, svalue				;     orig = svalue
	blendvp#x	shift, [zeroval]			;     shift = 0.0
	blendvp#x	scale, [oneval]				;     scale = 1.0
;---[Compute polynomial value]-------------
		lea		table, [asint]				; set pointer to array of coefficients
		movap#x	value, orig
		mulp#x	value, value				; value = orig * orig
if x eq s
	POLYNOM16	table, orig, svalue, value, ap, p, x
else if x eq d
	POLYNOM32	table, orig, svalue, value, ap, p, x
end if
		mulp#x	orig, scale					; orig *= scale
		addp#x	orig, shift					; orig += shift
		orp#x	orig, sign					; set correct sign to inverse sine value
		movap#x	value, orig					; return ArcSin (value)
		ret
}
ArcSin_flt32:	ASIN_SCLR	s
ArcSin_flt64:	ASIN_SCLR	d
ArcSin_flt32v4:	ASIN_VCTR	s
ArcSin_flt64v2:	ASIN_VCTR	d

;==============================================================================;
;       Inverse trigonometric cosine                                           ;
;==============================================================================;
macro	ACOS_SCLR	sreg, treg, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; cosine value
;---[Internal variables]-------------------
table	equ		rax							; pointer to array of coefficients
orig	equ		xmm1						; original value
svalue	equ		xmm2						; scale value
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
temp3	equ		xmm5						; temporary register #3
temp4	equ		xmm6						; temporary register #4
temp5	equ		xmm7						; temporary register #5
temp6	equ		xmm8						; temporary register #6
temp7	equ		xmm9						; temporary register #7
temp8	equ		xmm10						; temporary register #8
shift	equ		xmm11						; shift value
sign	equ		xmm12						; sign bit
if x eq s
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
nanval	= pnan_flt32						; NaN
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
pival	= PPI_FLT32							; +Pi
pihalf	= pi_half_flt32						; Pi / 2
asint	= asin_flt32						; pointer to array of inverse sine coefficients
else if x eq d
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
nanval	= pnan_flt64						; NaN
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
pival	= PPI_FLT64							; +Pi
pihalf	= pi_half_flt64						; Pi / 2
asint	= asin_flt64						; pointer to array of inverse sine coefficients
end if
;------------------------------------------
		xor		sreg, sreg					; shift = 0.0
		mov		treg, pival					; treg = Pi
;---[Set correct shift]--------------------
		xorp#x	svalue, svalue				; svalue = 0
		comis#x	value, svalue				; if (value < 0)
		cmovb	sreg, treg					;     shift = Pi
		movint	shift, sreg, x
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	svalue, value				; svalue = value
;---[Check for value overflow]-------------
		comis#x	value, [oneval]				; if (value > 1.0)
		ja		.error						;     return NaN
		comis#x	value, [halfval]			; if (value > 0.5)
		ja		.else						;     then go to else branch
;---[If value <= 0.5]----------------------
		lea		table, [asint]				; set pointer to array of coefficients
		movap#x	orig, value					; orig = value
		muls#x	value, value				; value *= value
if x eq s
	POLYNOM16	table, orig, svalue, value, s, s, x
else if x eq d
	POLYNOM32	table, orig, svalue, value, s, s, x
end if
		movap#x	shift, [pihalf]				; shift = Pi / 2
		orp#x	orig, sign					; set correct sign to inverse cosine value
		subs#x	shift, orig					; shift -= orig
		movap#x	value, shift				; return ArcCos (value)
		ret
;---[If value > 0.5]-----------------------
.else:	lea		table, [asint]				; set pointer to array of coefficients
		movap#x	orig, [oneval]
		subs#x	orig, value
		muls#x	orig, [halfval]
		movap#x	value, orig					; value = 0.5 * (1.0 - value)
		sqrts#x	orig, value					; orig = sqrt (value)
if x eq s
	POLYNOM16	table, orig, svalue, value, s, s, x
else if x eq d
	POLYNOM32	table, orig, svalue, value, s, s, x
end if
		adds#x	orig, orig					; orig *= 2.0
		orp#x	orig, sign					; set correct sign to inverse cosine value
		adds#x	shift, orig					; shift += orig
		movap#x	value, shift				; return ArcCos (value)
		ret
;---[Error branch]-------------------------
.error:	movap#x	value, [nanval]				; retrun NaN
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ACOS_VCTR	i, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; cosine value
;---[Internal variables]-------------------
table	equ		rax							; pointer to array of coefficients
orig	equ		xmm1						; original value
svalue	equ		xmm2						; scale value
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
temp3	equ		xmm5						; temporary register #3
temp4	equ		xmm6						; temporary register #4
temp5	equ		xmm7						; temporary register #5
temp6	equ		xmm8						; temporary register #6
temp7	equ		xmm9						; temporary register #7
temp8	equ		xmm10						; temporary register #8
shift	equ		xmm11						; shift value
scale	equ		xmm12						; scale value
sign	equ		xmm13						; sign bit
if x eq s
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
nanval	= pnan_flt32						; NaN
twoval	= ptwo_flt32						; +2.0
poneval	= pone_flt32						; +1.0
moneval	= mone_flt32						; -1.0
halfval	= phalf_flt32						; +0.5
zeroval	= pzero_flt32						; +0.0
sqrt12	= sqrt12_flt32						; 1 / sqrt (2)
ppi		= ppi_flt32							; Pi
pihalf	= pi_half_flt32						; Pi / 2
asint	= asin_flt32						; pointer to array of inverse sine coefficients
else if x eq d
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
nanval	= pnan_flt64						; NaN
twoval	= ptwo_flt64						; +2.0
poneval	= pone_flt64						; +1.0
moneval	= mone_flt64						; -1.0
halfval	= phalf_flt64						; +0.5
zeroval	= pzero_flt64						; +0.0
sqrt12	= sqrt12_flt64						; 1 / sqrt (2)
ppi		= ppi_flt64							; Pi
pihalf	= pi_half_flt64						; Pi / 2
asint	= asin_flt64						; pointer to array of inverse sine coefficients
end if
;------------------------------------------
		xorp#x	shift, shift				; shift = 0
		movap#x	scale, [twoval]				; scale = 2.0
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	svalue, value				; svalue = value
;---[Check for value overflow]-------------
	cmpnlep#x	value, [poneval]			; if (value > 1.0)
	blendvp#x	svalue, [nanval]			;     svalue = NaN
;---[Correct shift for negative values]----
		pxor	value, value				; value = 0
	pcmpgt#i	value, sign					; if sign bit is set
	blendvp#x	shift, [ppi]				;     then shift = Pi
;---[Assume that value >= 0.5]-------------
		movap#x	orig, [poneval]
		subp#x	orig, svalue
		sqrtp#x	orig, orig
		mulp#x	orig, [sqrt12]				; orig = Sqrt (0.5) * Sqrt (1.0 - value)
;---[If value < 0.5]-----------------------
		movap#x	value, svalue				; value = svalue
	cmpltp#x	value, [halfval]			; if (value < 0.5)
	blendvp#x	orig, svalue				;     orig = svalue
	blendvp#x	shift, [pihalf]				;     shift = Pi / 2
	blendvp#x	scale, [moneval]			;     scale = -1.0
;---[Compute polynomial value]-------------
		lea		table, [asint]				; set pointer to array of coefficients
		movap#x	value, orig
		mulp#x	value, value				; value = orig * orig
		orp#x	orig, sign					; set correct sign to orig value
if x eq s
	POLYNOM16	table, orig, svalue, value, ap, p, x
else if x eq d
	POLYNOM32	table, orig, svalue, value, ap, p, x
end if
		mulp#x	orig, scale					; orig *= scale
		addp#x	orig, shift					; orig += shift
		movap#x	value, orig					; return ArcCos (value)
		ret
}
ArcCos_flt32:	ACOS_SCLR	eax, edx, s
ArcCos_flt64:	ACOS_SCLR	rax, rdx, d
ArcCos_flt32v4:	ACOS_VCTR	d, s
ArcCos_flt64v2:	ACOS_VCTR	q, d

;==============================================================================;
;       Inverse trigonometric tangent                                          ;
;==============================================================================;
macro	ATAN_SCLR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; tangent value
;---[Internal variables]-------------------
table	equ		rax							; pointer to array of coefficients
orig	equ		xmm1						; original value
svalue	equ		xmm2						; scale value
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
temp3	equ		xmm5						; temporary register #3
temp4	equ		xmm6						; temporary register #4
temp5	equ		xmm7						; temporary register #5
temp6	equ		xmm8						; temporary register #6
temp7	equ		xmm9						; temporary register #7
temp8	equ		xmm10						; temporary register #8
shift	equ		xmm11						; shift value
sign	equ		xmm12						; sign bit
torig	equ		xmm13						; temporary register to hold original value
tvalue	equ		xmm14						; temporary register to hold squared value
if x eq s
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
oneval	= pone_flt32						; +1.0
sqrt2p1	= sqrt2p1_flt32						; Sqrt (2) + 1
sqrt2m1	= sqrt2m1_flt32						; Sqrt (2) - 1
pihalf	= pi_half_flt32						; Pi / 2
pifour	= pi_four_flt32						; Pi / 4
atant	= atan_flt32						; pointer to array of inverse tangent coefficients
else if x eq d
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
oneval	= pone_flt64						; +1.0
sqrt2p1	= sqrt2p1_flt64						; Sqrt (2) + 1
sqrt2m1	= sqrt2m1_flt64						; Sqrt (2) - 1
pihalf	= pi_half_flt64						; Pi / 2
pifour	= pi_four_flt64						; Pi / 4
atant	= atan_flt64						; pointer to array of inverse tangent coefficients
end if
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		comis#x	value, [sqrt2p1]			; if (value > Sqrt(2) + 1.0)
		ja		.else1						;     then go to branch #1
		comis#x	value, [sqrt2m1]			; if (value > Sqrt(2) - 1.0)
		ja		.else2						;     then go to branch #2
;---[If value <= sqrt(2) - 1]--------------
		lea		table, [atant]				; set pointer to array of coefficients
		movap#x	orig, value					; orig = value
		movap#x	torig, value				; torig = value
		muls#x	value, value				; value = value * value
		movap#x	tvalue, value				; tvalue = value
if x eq s
	POLYNOM8	table, orig, svalue, value, s, s, x
else if x eq d
	POLYNOM16	table, orig, svalue, value, s, s, x
end if
		muls#x	orig, tvalue				; orig += tvalue
		adds#x	orig, torig					; orig += torig
		orp#x	orig, sign					; set correct sign to inverse tangent value
		movap#x	value, orig					; return ArcTan (value)
		ret
;---[If value > sqrt(2) + 1]---------------
.else1:	lea		table, [atant]				; set pointer to array of coefficients
		movap#x	orig, [oneval]
		divs#x	orig, value					; orig = 1.0 / value
		movap#x	value, orig
		muls#x	value, value				; value = orig * orig
		movap#x	torig, orig					; torig = orig
		movap#x	tvalue, value				; tvalue = value
if x eq s
	POLYNOM8	table, orig, svalue, value, s, s, x
else if x eq d
	POLYNOM16	table, orig, svalue, value, s, s, x
end if
		movap#x	shift, [pihalf]				; shift = Pi / 2
		muls#x	orig, tvalue				; orig += tvalue
		adds#x	orig, torig					; orig += torig
		subs#x	shift, orig					; shift -= orig
		orp#x	shift, sign					; set correct sign to inverse tangent value
		movap#x	value, shift				; return ArcTan (value)
		ret
;---[If value > sqrt(2) - 1]---------------
.else2:	lea		table, [atant]				; set pointer to array of coefficients
		movap#x	orig, value
		movap#x	svalue, value
		subs#x	orig, [oneval]
		adds#x	svalue, [oneval]
		divs#x	orig, svalue				; orig = (value - 1.0) / (value + 1.0)
		movap#x	value, orig
		muls#x	value, value				; value = orig * orig
		movap#x	torig, orig					; torig = orig
		movap#x	tvalue, value				; tvalue = value
if x eq s
	POLYNOM8	table, orig, svalue, value, s, s, x
else if x eq d
	POLYNOM16	table, orig, svalue, value, s, s, x
end if
		movap#x	shift, [pifour]				; shift = Pi / 4
		muls#x	orig, tvalue				; orig += tvalue
		adds#x	orig, torig					; orig += torig
		adds#x	shift, orig					; shift -= orig
		orp#x	shift, sign					; set correct sign to inverse tangent value
		movap#x	value, shift				; return ArcTan (value)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ATAN_VCTR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; tangent value
;---[Internal variables]-------------------
table	equ		rax							; pointer to array of coefficients
orig	equ		xmm1						; original value
svalue	equ		xmm2						; scale value
temp1	equ		xmm3						; temporary register #1
temp2	equ		xmm4						; temporary register #2
temp3	equ		xmm5						; temporary register #3
temp4	equ		xmm6						; temporary register #4
temp5	equ		xmm7						; temporary register #5
temp6	equ		xmm8						; temporary register #6
temp7	equ		xmm9						; temporary register #7
temp8	equ		xmm10						; temporary register #8
shift	equ		xmm11						; shift value
sign	equ		xmm12						; sign bit
torig	equ		xmm13						; temporary register to hold original value
tvalue	equ		xmm14						; temporary register to hold squared value
if x eq s
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
oneval	= pone_flt32						; +1.0
zeroval	= pzero_flt32						; +0.0
sqrt2p1	= sqrt2p1_flt32						; Sqrt (2) + 1
sqrt2m1	= sqrt2m1_flt32						; Sqrt (2) - 1
pihalf	= pi_half_flt32						; Pi / 2
pifour	= pi_four_flt32						; Pi / 4
atant	= atan_flt32						; pointer to array of inverse tangent coefficients
else if x eq d
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
oneval	= pone_flt64						; +1.0
zeroval	= pzero_flt64						; +0.0
sqrt2p1	= sqrt2p1_flt64						; Sqrt (2) + 1
sqrt2m1	= sqrt2m1_flt64						; Sqrt (2) - 1
pihalf	= pi_half_flt64						; Pi / 2
pifour	= pi_four_flt64						; Pi / 4
atant	= atan_flt64						; pointer to array of inverse tangent coefficients
end if
;------------------------------------------
		movap#x	shift, [pihalf]				; shift = Pi / 2
		xorp#x	temp1, temp1				; temp1 = 0.0
		xorp#x	temp2, temp2				; temp2 = 0.0
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	svalue, value				; svalue = value
;---[If value < sqrt(2) + 1]---------------
	cmpltp#x	value, [sqrt2p1]			; if (value < Sqrt(2) + 1.0)
	blendvp#x	temp1, svalue				;     temp1 = svalue
	blendvp#x	temp2, [oneval]				;     temp2 = 1.0
	blendvp#x	shift, [pifour]				;     shift = Pi / 4
;---[Reduce range of tangent value]--------
		subp#x	temp1, [oneval]				; temp1 = temp1 - 1.0
		addp#x	temp2, svalue				; temp2 = temp2 + value
		divp#x	temp1, temp2
		movap#x	orig, temp1					; orig = temp1 / temp2
;---[If value < sqrt(2) - 1]---------------
		movap#x	value, svalue				; value = svalue
	cmpltp#x	value, [sqrt2m1]			; if (value < Sqrt(2) - 1.0)
	blendvp#x	orig, svalue				;     orig = svalue
	blendvp#x	shift, [zeroval]			;     shift = 0.0
;---[Compute polynomial value]-------------
		lea		table, [atant]				; set pointer to array of coefficients
		movap#x	value, orig
		mulp#x	value, value				; value = orig * orig
		movap#x	torig, orig					; torig = orig
		movap#x	tvalue, value				; tvalue = value
if x eq s
	POLYNOM8	table, orig, svalue, value, ap, p, x
else if x eq d
	POLYNOM16	table, orig, svalue, value, ap, p, x
end if
		mulp#x	orig, tvalue				; orig += tvalue
		addp#x	orig, torig					; orig += torig
		addp#x	orig, shift					; orig += shift
		orp#x	orig, sign					; set correct sign to inverse tangent value
		movap#x	value, orig					; return ArcTan (value)
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ATAN2_SCLR	sreg, treg, x
{
;---[Parameters]---------------------------
sin		equ		xmm0						; sine value
cos		equ		xmm1						; cosine value
;---[Internal variables]-------------------
temp	equ		xmm2						; temporary register
shift	equ		xmm3						; shift value
sign	equ		xmm4						; sign bit
stack	equ		rsp							; stack pointer
s_shift	equ		stack + 0 * 8				; stack position of "shift" variable
if x eq s
ArcTan	= ArcTan_flt32						; Inverse tangent function
smask	= smask_flt32						; sign mask
pival	= PPI_FLT32							; +Pi
else if x eq d
ArcTan	= ArcTan_flt64						; Inverse tangent function
smask	= smask_flt64						; sign mask
pival	= PPI_FLT64							; +Pi
end if
space	= 1 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		xor		sreg, sreg					; shift = 0.0
		mov		treg, pival					; treg = Pi
;---[Get sine sign]------------------------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, sin					; sign = SignBit (sin)
;---[Set correct shift]--------------------
		xorp#x	temp, temp					; temp = 0.0
		comis#x	cos, temp					; if (cos < 0)
		cmovb	sreg, treg					;     shift = Pi
		movint	shift, sreg, x
;---[Set correct sign to shift]------------
		orp#x	shift, sign					; set correct sign to shift value
		movs#x	[s_shift], shift			; save "shift" variable into the stack
;---[Compute inverse tangent value]--------
		divs#x	sin, cos
		call	ArcTan
		adds#x	sin, [s_shift]				; return ArcTan (sin / cos) + shift
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ATAN2_VCTR	x
{
;---[Parameters]---------------------------
sin		equ		xmm0						; sine value
cos		equ		xmm1						; cosine value
;---[Internal variables]-------------------
temp	equ		xmm2						; temporary register
shift	equ		xmm3						; shift value
sign	equ		xmm4						; sign bit
stack	equ		rsp							; stack pointer
s_shift	equ		stack + 0 * 8				; stack position of "shift" variable
if x eq s
ArcTan	= ArcTan_flt32v4					; Inverse tangent function
smask	= smask_flt32						; sign mask
zeroval	= pzero_flt32						; +0.0
pival	= ppi_flt32							; +Pi
else if x eq d
ArcTan	= ArcTan_flt64v2					; Inverse tangent function
smask	= smask_flt64						; sign mask
zeroval	= pzero_flt64						; +0.0
pival	= ppi_flt64							; +Pi
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		movap#x	temp, sin					; temp = sin
		xorp#x	shift, shift				; shift = 0.0
;---[Get sine sign]------------------------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, sin					; sign = SignBit (sin)
;---[Set correct shift]--------------------
		movap#x	sin, cos
	cmpltp#x	sin, [zeroval]				; if (cos < 0)
	blendvp#x	shift, [pival]				;     shift = Pi
;---[Set correct sign to shift]------------
		orp#x	shift, sign					; set correct sign to shift value
		movap#x	[s_shift], shift			; save "shift" variable into the stack
;---[Compute inverse tangent value]--------
		divp#x	temp, cos
		movap#x	sin, temp
		call	ArcTan
		addp#x	sin, [s_shift]				; return ArcTan (sin / cos) + shift
		add		stack, space				; restoring back the stack pointer
		ret
}
ArcTan_flt32:		ATAN_SCLR	s
ArcTan_flt64:		ATAN_SCLR	d
ArcTan2_flt32:		ATAN2_SCLR	eax, edx, s
ArcTan2_flt64:		ATAN2_SCLR	rax, rdx, d
ArcTan_flt32v4:		ATAN_VCTR	s
ArcTan_flt64v2:		ATAN_VCTR	d
ArcTan2_flt32v4:	ATAN2_VCTR	s
ArcTan2_flt64v2:	ATAN2_VCTR	d

;******************************************************************************;
;       Hyperbolic functions                                                   ;
;******************************************************************************;

;==============================================================================;
;       Hyperbolic sine                                                        ;
;==============================================================================;
macro	SINH_SCLR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; sine value
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
sign	equ		xmm4						; sign bit
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
if x eq s
Expm1	= ExpEm1_flt32v4					; Exponent function
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
infval	= pinf_flt32						; +Inf
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
else if x eq d
Expm1	= ExpEm1_flt64v2					; Exponent function
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
infval	= pinf_flt64						; +Inf
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	[s_sign], sign				; save "sign" variable into the stack
;---[Compute exponent value]---------------
		call	Expm1						; value = Expm1 (value)
;---[Compute sine value]-------------------
		comis#x	value, [infval]				; if (value == Inf)
		je		.exit						;     then go to exit
		movap#x	temp3, value				; temp3 = value
		movap#x	temp2, value				; temp2 = value
		movap#x	temp1, value				; temp1 = value
		adds#x	temp3, [oneval]				; temp3 = value + 1.0
		divs#x	temp2, temp3				; temp2 = value / (value + 1.0)
		adds#x	temp1, temp2				; temp1 = value + value / (value + 1.0)
		muls#x	temp1, [halfval]			; temp1 = 0.5 * (value + value / (value + 1.0))
		movap#x	value, temp1				; value = temp1
.exit:	orp#x	value, [s_sign]				; set correct sign to sine value
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SINH_VCTR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; sine value
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
sign	equ		xmm4						; sign bit
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
if x eq s
Expm1	= ExpEm1_flt32v4					; Exponent function
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
infval	= pinf_flt32						; +Inf
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
else if x eq d
Expm1	= ExpEm1_flt64v2					; Exponent function
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
infval	= pinf_flt64						; +Inf
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	[s_sign], sign				; save "sign" variable into the stack
;---[Compute exponent value]---------------
		call	Expm1						; value = Expm1 (value)
;---[Compute sine value]-------------------
		movap#x	temp3, value				; temp3 = value
		movap#x	temp2, value				; temp2 = value
		movap#x	temp1, value				; temp1 = value
		addp#x	temp3, [oneval]				; temp3 = value + 1.0
		divp#x	temp2, temp3				; temp2 = value / (value + 1.0)
		addp#x	temp1, temp2				; temp1 = value + value / (value + 1.0)
		mulp#x	temp1, [halfval]			; temp1 = 0.5 * (value + value / (value + 1.0))
	cmpeqp#x	value, [infval]				; if (value == Inf)
	blendvp#x	temp1, [infval]				;     temp1 = Inf
		movap#x	value, temp1				; value = temp1
		orp#x	value, [s_sign]				; set correct sign to sine value
		add		stack, space				; restoring back the stack pointer
		ret
}
SinH_flt32:		SINH_SCLR	s
SinH_flt64:		SINH_SCLR	d
SinH_flt32v4:	SINH_VCTR	s
SinH_flt64v2:	SINH_VCTR	d

;==============================================================================;
;       Hyperbolic cosine                                                      ;
;==============================================================================;
macro	COSH_SCLR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; cosine value
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
if x eq s
Expm1	= ExpEm1_flt32v4					; Exponent function
dmask	= dmask_flt32						; data mask
infval	= pinf_flt32						; +Inf
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
else if x eq d
Expm1	= ExpEm1_flt64v2					; Exponent function
dmask	= dmask_flt64						; data mask
infval	= pinf_flt64						; +Inf
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
end if
;---[Get absolute value]-------------------
		andp#x	value, [dmask]				; value = Abs (value)
;---[Compute exponent value]---------------
		call	Expm1						; value = Expm1 (value)
;---[Compute cosine value]-----------------
		comis#x	value, [infval]				; if (value == Inf)
		je		.exit						;     then go to exit
		movap#x	temp3, value				; temp3 = value
		movap#x	temp2, value				; temp2 = value
		movap#x	temp1, value				; temp1 = value
		adds#x	temp3, [oneval]				; temp3 = value + 1.0
		divs#x	temp2, temp3				; temp2 = value / (value + 1.0)
		muls#x	temp1, temp2				; temp1 = value * (value / (value + 1.0))
		muls#x	temp1, [halfval]			; temp1 = 0.5 * value * (value / (value + 1.0))
		adds#x	temp1, [oneval]				; temp1 = 1.0 + 0.5 * value * (value / (value + 1.0))
		movap#x	value, temp1				; return temp1
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	COSH_VCTR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; cosine value
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
if x eq s
Expm1	= ExpEm1_flt32v4					; Exponent function
dmask	= dmask_flt32						; data mask
infval	= pinf_flt32						; +Inf
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
else if x eq d
Expm1	= ExpEm1_flt64v2					; Exponent function
dmask	= dmask_flt64						; data mask
infval	= pinf_flt64						; +Inf
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
end if
;---[Get absolute value]-------------------
		andp#x	value, [dmask]				; value = Abs (value)
;---[Compute exponent value]---------------
		call	Expm1						; value = Expm1 (value)
;---[Compute cosine value]-----------------
		movap#x	temp3, value				; temp3 = value
		movap#x	temp2, value				; temp2 = value
		movap#x	temp1, value				; temp1 = value
		addp#x	temp3, [oneval]				; temp3 = value + 1.0
		divp#x	temp2, temp3				; temp2 = value / (value + 1.0)
		mulp#x	temp1, temp2				; temp1 = value * (value / (value + 1.0))
		mulp#x	temp1, [halfval]			; temp1 = 0.5 * value * (value / (value + 1.0))
		addp#x	temp1, [oneval]				; temp1 = 1.0 + 0.5 * value * (value / (value + 1.0))
	cmpeqp#x	value, [infval]				; if (value == Inf)
	blendvp#x	temp1, [infval]				;     temp1 = Inf
		movap#x	value, temp1				; return temp1
		ret
}
CosH_flt32:		COSH_SCLR	s
CosH_flt64:		COSH_SCLR	d
CosH_flt32v4:	COSH_VCTR	s
CosH_flt64v2:	COSH_VCTR	d

;==============================================================================;
;       Hyperbolic tangent                                                     ;
;==============================================================================;
macro	TANH_SCLR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; tangent value
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
sign	equ		xmm3						; sign bit
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
if x eq s
Expm1	= ExpEm1_flt32v4					; Exponent function
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
infval	= pinf_flt32						; +Inf
twoval	= ptwo_flt32						; +2.0
oneval	= pone_flt32						; +1.0
else if x eq d
Expm1	= ExpEm1_flt64v2					; Exponent function
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
infval	= pinf_flt64						; +Inf
twoval	= ptwo_flt64						; +2.0
oneval	= pone_flt64						; +1.0
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	[s_sign], sign				; save "sign" variable into the stack
;---[Compute exponent value]---------------
		adds#x	value, value
		call	Expm1						; value = Expm1 (2.0 * value)
;---[Compute tangent value]----------------
		comis#x	value, [infval]				; if (value == NaN)
		jp		.exit						;     then go to exit
		je		.one						; if (value == Inf) return 1.0 * sign
		movap#x	temp2, value				; temp2 = value
		movap#x	temp1, value				; temp1 = value
		adds#x	temp2, [twoval]				; temp2 = value + 2.0
		divs#x	temp1, temp2				; temp1 = value / (value + 2.0)
		movap#x	value, temp1				; value = temp1
		orp#x	value, [s_sign]				; set correct sign to tangent value
		add		stack, space				; restoring back the stack pointer
		ret
;---[Overflow branch]----------------------
.one:	movap#x	value, [oneval]				; value = 1.0
		orp#x	value, [s_sign]				; set correct sign to tangent value
.exit:	add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TANH_VCTR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; tangent value
;---[Internal variables]-------------------
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
sign	equ		xmm3						; sign bit
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
if x eq s
Expm1	= ExpEm1_flt32v4					; Exponent function
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
infval	= pinf_flt32						; +Inf
twoval	= ptwo_flt32						; +2.0
oneval	= pone_flt32						; +1.0
else if x eq d
Expm1	= ExpEm1_flt64v2					; Exponent function
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
infval	= pinf_flt64						; +Inf
twoval	= ptwo_flt64						; +2.0
oneval	= pone_flt64						; +1.0
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	[s_sign], sign				; save "sign" variable into the stack
;---[Compute exponent value]---------------
		addp#x	value, value
		call	Expm1						; value = Expm1 (2.0 * value)
;---[Compute tangent value]----------------
		movap#x	temp2, value				; temp2 = value
		movap#x	temp1, value				; temp1 = value
		addp#x	temp2, [twoval]				; temp2 = value + 2.0
		divp#x	temp1, temp2				; temp1 = value / (value + 2.0)
	cmpeqp#x	value, [infval]				; if (value == Inf)
	blendvp#x	temp1, [oneval]				;     temp1 = 1.0
		movap#x	value, temp1				; value = temp1
		orp#x	value, [s_sign]				; set correct sign to tangent value
		add		stack, space				; restoring back the stack pointer
		ret
}
TanH_flt32:		TANH_SCLR	s
TanH_flt64:		TANH_SCLR	d
TanH_flt32v4:	TANH_VCTR	s
TanH_flt64v2:	TANH_VCTR	d

;******************************************************************************;
;       Inverse hyperbolic functions                                           ;
;******************************************************************************;

;==============================================================================;
;       Inverse hyperbolic sine                                                ;
;==============================================================================;
macro	ASINH_SCLR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; sine value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
sign	equ		xmm2						; sign bit
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
if x eq s
Hypot	= Hypot2D_flt32						; Hypot function
Log		= LogEp1_flt32						; Logarithm function
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
infval	= pinf_flt32						; +Inf
oneval	= pone_flt32						; +1.0
else if x eq d
Hypot	= Hypot2D_flt64						; Hypot function
Log		= LogEp1_flt64						; Logarithm function
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
infval	= pinf_flt64						; +Inf
oneval	= pone_flt64						; +1.0
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	[s_sign], sign				; save "sign" variable into the stack
		movap#x	[s_value], value			; save "value" variable into the stack
;---[Compute hypot value]------------------
		comis#x	value, [infval]				; if (value == Inf)
		je		.exit						;     then go to exit
		movap#x	temp, [oneval]
		call	Hypot						; value = Hypot (value, 1.0)
;---[Compute logarithm value]--------------
		movap#x	temp, [s_value]
		adds#x	value, [oneval]
		divs#x	temp, value					; temp = value / (Hypot (value, 1.0) + 1.0)
		movap#x	value, [s_value]
		muls#x	temp, value
		adds#x	value, temp					; value = value + temp * value
		call	Log							; value = Log (value + temp * value)
.exit:	orp#x	value, [s_sign]				; set correct sign to sine value
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ASINH_VCTR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; sine value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
sign	equ		xmm2						; sign bit
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
s_value	equ		stack + 2 * 8				; stack position of "value" variable
if x eq s
Hypot	= Hypot2D_flt32v4					; Hypot function
Log		= LogEp1_flt32v4						; Logarithm function
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
infval	= pinf_flt32						; +Inf
oneval	= pone_flt32						; +1.0
else if x eq d
Hypot	= Hypot2D_flt64v2					; Hypot function
Log		= LogEp1_flt64v2						; Logarithm function
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
infval	= pinf_flt64						; +Inf
oneval	= pone_flt64						; +1.0
end if
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	[s_sign], sign				; save "sign" variable into the stack
		movap#x	[s_value], value			; save "value" variable into the stack
;---[Compute hypot value]------------------
		movap#x	temp, [oneval]
		call	Hypot						; value = Hypot (value, 1.0)
;---[Compute logarithm value]--------------
		movap#x	temp, [s_value]
		addp#x	value, [oneval]
		divp#x	temp, value					; temp = value / (Hypot (value, 1.0) + 1.0)
	cmpeqp#x	value, [infval]				; if (value == Inf)
	blendvp#x	temp, [infval]				;     temp = Inf
		movap#x	value, [s_value]
		mulp#x	temp, value
		addp#x	value, temp					; value = value + temp * value
		call	Log							; value = Log (value + temp * value)
		orp#x	value, [s_sign]				; set correct sign to sine value
		add		stack, space				; restoring back the stack pointer
		ret
}
ArcSinH_flt32:		ASINH_SCLR	s
ArcSinH_flt64:		ASINH_SCLR	d
ArcSinH_flt32v4:	ASINH_VCTR	s
ArcSinH_flt64v2:	ASINH_VCTR	d

;==============================================================================;
;       Inverse hyperbolic cosine                                              ;
;==============================================================================;
macro	ACOSH_SCLR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; cosine value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
if x eq s
Cath	= Cath_flt32						; Cath function
Log		= LogEp1_flt32						; Logarithm function
nanval	= pnan_flt32						; +NaN
oneval	= pone_flt32						; +1.0
else if x eq d
Cath	= Cath_flt64						; Cath function
Log		= LogEp1_flt64						; Logarithm function
nanval	= pnan_flt64						; +NaN
oneval	= pone_flt64						; +1.0
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		comis#x	value, [oneval]				; if (value < 1.0)
		jb		.error						;     then return NaN
		movap#x	[s_value], value			; save "value" variable into the stack
;---[Compute cath value]-------------------
		movap#x	temp, [oneval]
		call	Cath						; value = Cath (value, 1.0)
;---[Compute logarithm value]--------------
		movap#x	temp, [s_value]
		subs#x	temp, [oneval]				; temp = value - 1.0
		adds#x	value, temp					; value = value - 1.0 + Cath (value, 1.0)
		call	Log							; value = Log (value - 1.0 + Cath (value, 1.0))
		add		stack, space				; restoring back the stack pointer
		ret
;---[Error branch]-------------------------
.error:	movap#x	value, [nanval]				; retrun NaN
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ACOSH_VCTR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; cosine value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
stack	equ		rsp							; stack pointer
s_value	equ		stack + 0 * 8				; stack position of "value" variable
if x eq s
Cath	= Cath_flt32v4						; Cath function
Log		= LogEp1_flt32v4					; Logarithm function
nanval	= pnan_flt32						; +NaN
oneval	= pone_flt32						; +1.0
else if x eq d
Cath	= Cath_flt64v2						; Cath function
Log		= LogEp1_flt64v2					; Logarithm function
nanval	= pnan_flt64						; +NaN
oneval	= pone_flt64						; +1.0
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		movap#x	temp, value					; temp = value
	cmpltp#x	value, [oneval]				; if (value < 1.0)
	blendvp#x	temp, [nanval]				;     temp = NaN
		movap#x	value, temp					; value = temp
		movap#x	[s_value], temp				; save "value" variable into the stack
;---[Compute cath value]-------------------
		movap#x	temp, [oneval]
		call	Cath						; value = Cath (value, 1.0)
;---[Compute logarithm value]--------------
		movap#x	temp, [s_value]
		subp#x	temp, [oneval]				; temp = value - 1.0
		addp#x	value, temp					; value = value - 1.0 + Cath (value, 1.0)
		call	Log							; value = Log (value - 1.0 + Cath (value, 1.0))
		add		stack, space				; restoring back the stack pointer
		ret
}
ArcCosH_flt32:		ACOSH_SCLR	s
ArcCosH_flt64:		ACOSH_SCLR	d
ArcCosH_flt32v4:	ACOSH_VCTR	s
ArcCosH_flt64v2:	ACOSH_VCTR	d

;==============================================================================;
;       Inverse hyperbolic tangent                                             ;
;==============================================================================;
macro	ATANH_SCLR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; tangent value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
sign	equ		xmm3						; sign bit
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
if x eq s
Log		= LogEp1_flt32						; Logarithm function
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
else if x eq d
Log		= LogEp1_flt64						; Logarithm function
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	[s_sign], sign				; save "sign" variable into the stack
;---[Compute logarithm value]--------------
		movap#x	temp, [oneval]
		subs#x	temp, value					; temp = 1.0 - value
		adds#x	value, value				; value = 2.0 * value
		divs#x	value, temp					; value = 2.0 * value / (1.0 - value)
		call	Log							; value = Log (value + temp * value)
		muls#x	value, [halfval]			; value *= 0.5
		orp#x	value, [s_sign]				; set correct sign to tangent value
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ATANH_VCTR	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; tangent value
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
sign	equ		xmm3						; sign bit
stack	equ		rsp							; stack pointer
s_sign	equ		stack + 0 * 8				; stack position of "sign" variable
if x eq s
Log		= LogEp1_flt32v4						; Logarithm function
dmask	= dmask_flt32						; data mask
smask	= smask_flt32						; sign mask
oneval	= pone_flt32						; +1.0
halfval	= phalf_flt32						; +0.5
else if x eq d
Log		= LogEp1_flt64v2						; Logarithm function
dmask	= dmask_flt64						; data mask
smask	= smask_flt64						; sign mask
oneval	= pone_flt64						; +1.0
halfval	= phalf_flt64						; +0.5
end if
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
;---[Get sign and absolute value]----------
		movap#x	sign, [smask]				; load sign mask
		andp#x	sign, value					; sign = SignBit (value)
		andp#x	value, [dmask]				; value = Abs (value)
		movap#x	[s_sign], sign				; save "sign" variable into the stack
;---[Compute logarithm value]--------------
		movap#x	temp, [oneval]
		subp#x	temp, value					; temp = 1.0 - value
		addp#x	value, value				; value = 2.0 * value
		divp#x	value, temp					; value = 2.0 * value / (1.0 - value)
		call	Log							; value = Log (value + temp * value)
		mulp#x	value, [halfval]			; value *= 0.5
		orp#x	value, [s_sign]				; set correct sign to tangent value
		add		stack, space				; restoring back the stack pointer
		ret
}
ArcTanH_flt32:		ATANH_SCLR	s
ArcTanH_flt64:		ATANH_SCLR	d
ArcTanH_flt32v4:	ATANH_VCTR	s
ArcTanH_flt64v2:	ATANH_VCTR	d

;******************************************************************************;
;       Rounding                                                               ;
;******************************************************************************;
macro	ROUND	type, mode, p, x
{
;---[Parameters]---------------------------
value	equ		xmm0						; value to round
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
if x eq s
smask	= smask_flt32						; sign mask
bias	= rbias_flt32						; +0.499(9)
else if x eq d
smask	= smask_flt64						; sign mask
bias	= rbias_flt64						; +0.499(9)
end if
;------------------------------------------
if type = 1
		movap#x	temp, value
		andp#x	temp, [smask]
		orp#x	temp, [bias]				; temp = 0.499(9) * Sign (value)
		add#p#x	value, temp					; value += temp
	round#p#x	value, value, mode			; value = Round (value)
else if type = 2
	round#p#x	temp, value, mode			; temp = Round (value)
		sub#p#x	value, temp					; value -= temp
else
	round#p#x	value, value, mode			; value = Round (value)
end if
		ret
}

; Round down (floor)
RoundDown_flt32:	ROUND	0, 0x1, s, s
RoundDown_flt64:	ROUND	0, 0x1, s, d
RoundDown_flt32v4:	ROUND	0, 0x1, p, s
RoundDown_flt64v2:	ROUND	0, 0x1, p, d

; Round up (ceil)
RoundUp_flt32:		ROUND	0, 0x2, s, s
RoundUp_flt64:		ROUND	0, 0x2, s, d
RoundUp_flt32v4:	ROUND	0, 0x2, p, s
RoundUp_flt64v2:	ROUND	0, 0x2, p, d

; Round to nearest even integer
RoundInt_flt32:		ROUND	0, 0x0, s, s
RoundInt_flt64:		ROUND	0, 0x0, s, d
RoundInt_flt32v4:	ROUND	0, 0x0, p, s
RoundInt_flt64v2:	ROUND	0, 0x0, p, d

; Round to nearest integer, away from zero
RoundRound_flt32:	ROUND	1, 0x3, s, s
RoundRound_flt64:	ROUND	1, 0x3, s, d
RoundRound_flt32v4:	ROUND	1, 0x3, p, s
RoundRound_flt64v2:	ROUND	1, 0x3, p, d

; Round to nearest integer, toward zero (truncation)
RoundTrunc_flt32:	ROUND	0, 0x3, s, s
RoundTrunc_flt64:	ROUND	0, 0x3, s, d
RoundTrunc_flt32v4:	ROUND	0, 0x3, p, s
RoundTrunc_flt64v2:	ROUND	0, 0x3, p, d

; Fractional part
RoundFrac_flt32:	ROUND	2, 0x3, s, s
RoundFrac_flt64:	ROUND	2, 0x3, s, d
RoundFrac_flt32v4:	ROUND	2, 0x3, p, s
RoundFrac_flt64v2:	ROUND	2, 0x3, p, d

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
normval	= MIN_NORM_FLT32					; min normal value
infval	= PINF_FLT32						; +Inf
else if x eq q
dmask	= DMASK_FLT64						; data mask
normval	= MIN_NORM_FLT64					; min normal value
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
macro	ISSUB	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
result	equ		al							; result register
if x eq s
dmask	= dmask_flt32						; data mask
minnorm	= min_norm_flt32					; min normal value
else if x eq d
dmask	= dmask_flt64						; data mask
minnorm	= min_norm_flt64					; min normal value
end if
;------------------------------------------
		movap#x	temp, [minnorm]				; temp = minnorm
		andp#x	value, [dmask]				; value = Abs (value)
		comis#x	temp, value					; if (minnorm > value)
		seta	result						;     return true
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ISFIN	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
temp	equ		xmm1						; temporary register
result	equ		al							; result register
if x eq s
dmask	= dmask_flt32						; data mask
infval	= pinf_flt32						; +Inf
else if x eq d
dmask	= dmask_flt64						; data mask
infval	= pinf_flt64						; +Inf
end if
;------------------------------------------
		movap#x	temp, [infval]				; temp = Inf
		andp#x	value, [dmask]				; value = Abs (value)
		comis#x	temp, value					; if (Inf > value)
		seta	result						;     return true
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ISINF	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
result	equ		al							; result register
if x eq s
dmask	= dmask_flt32						; data mask
maxnorm	= max_norm_flt32					; max normal value
else if x eq d
dmask	= dmask_flt64						; data mask
maxnorm	= max_norm_flt64					; max normal value
end if
;------------------------------------------
		andp#x	value, [dmask]				; value = Abs (value)
		comis#x	value, [maxnorm]			; if (value > maxnorm)
		seta	result						;     return true
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	ISNAN	x
{
;---[Parameters]---------------------------
value	equ		xmm0						; floating-point value to check
;---[Internal variables]-------------------
result	equ		al							; result register
;------------------------------------------
		comis#x	value, value				; if (value != value)
		setp	result						;     return true
		ret
}

; Check for normal value
IsNorm_flt32:	ISNORM	eax, ecx, edx, edi, d
IsNorm_flt64:	ISNORM	rax, rcx, rdx, rdi, q

; Check for subnormal value
IsSub_flt32:	ISSUB	s
IsSub_flt64:	ISSUB	d

; Check for finite value
IsFin_flt32:	ISFIN	s
IsFin_flt64:	ISFIN	d

; Check for infinite value
IsInf_flt32:	ISINF	s
IsInf_flt64:	ISINF	d

; Check for NaN value
IsNaN_flt32:	ISNAN	s
IsNaN_flt64:	ISNAN	d

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

;******************************************************************************;
;       Shufle masks for bytes swaping                                         ;
;******************************************************************************;
align 16
mask8			dq	0x0706050403020100, 0x0F0E0D0C0B0A0908	; Mask for bit8_t values
mask16			dq	0x0607040502030001, 0x0E0F0C0D0A0B0809	; Mask for bit16_t values
mask32			dq	0x0405060700010203, 0x0C0D0E0F08090A0B	; Mask for bit32_t values
mask64			dq	0x0001020304050607, 0x08090A0B0C0D0E0F	; Mask for bit64_t values

;******************************************************************************;
;       Bit selection masks for bit manipulations                              ;
;******************************************************************************;
align 16
bmask11			dq	2 dup (0x5555555555555555)	; Const #1 for stage 1
bmask12			dq	2 dup (0xAAAAAAAAAAAAAAAA)	; Const #2 for stage 1
bmask21			dq	2 dup (0x3333333333333333)	; Const #1 for stage 2
bmask22			dq	2 dup (0xCCCCCCCCCCCCCCCC)	; Const #2 for stage 2
bmask31			dq	2 dup (0x0F0F0F0F0F0F0F0F)	; Const #1 for stage 3
bmask32			dq	2 dup (0xF0F0F0F0F0F0F0F0)	; Const #2 for stage 3
bmask41			dq	2 dup (0x00FF00FF00FF00FF)	; Const #1 for stage 4
bmask42			dq	2 dup (0xFF00FF00FF00FF00)	; Const #2 for stage 4
bmask51			dq	2 dup (0x0000FFFF0000FFFF)	; Const #1 for stage 5
bmask52			dq	2 dup (0xFFFF0000FFFF0000)	; Const #2 for stage 5
bmask61			dq	2 dup (0x00000000FFFFFFFF)	; Const #1 for stage 6
bmask62			dq	2 dup (0xFFFFFFFF00000000)	; Const #2 for stage 6

;******************************************************************************;
;       Integer range shift consts                                             ;
;******************************************************************************;
align 16
sbias8			dq	2 dup (0x8080808080808080)	; Value to map uint8_t to sint8_t
sbias16			dq	2 dup (0x8000800080008000)	; Value to map uint16_t to sint16_t
sbias32			dq	2 dup (0x8000000080000000)	; Value to map uint32_t to sint32_t
sbias64			dq	2 dup (0x8000000000000000)	; Value to map uint64_t to sint64_t

;******************************************************************************;
;       Integer power of 10                                                    ;
;******************************************************************************;
align 16
ten_int			dq	1							; 10^00
				dq	10							; 10^01
				dq	100							; 10^02
				dq	1000						; 10^03
				dq	10000						; 10^04
				dq	100000						; 10^05
				dq	1000000						; 10^06
				dq	10000000					; 10^07
				dq	100000000					; 10^08
				dq	1000000000					; 10^09
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
				dq	0							; 0 (overflow value)

;******************************************************************************;
;       Wide used math consts                                                  ;
;******************************************************************************;
two_pi			dt	0.636619772367581343075		; 2 / Pi
pi_half			dt	1.570796326794896619231		; Pi / 2

;==============================================================================;
;       flt32_t consts                                                         ;
;==============================================================================;
align 16

; Masks
dmask_flt32		dd	4 dup (DMASK_FLT32)			; Data mask
smask_flt32		dd	4 dup (SMASK_FLT32)			; Sign mask
mmask_flt32		dd	4 dup (MMASK_FLT32)			; Mantissa mask

; Not a number
pnan_flt32		dd	4 dup (PNAN_FLT32)			; +NaN
mnan_flt32		dd	4 dup (MNAN_FLT32)			; -NaN

; Infinity
pinf_flt32		dd	4 dup (PINF_FLT32)			; +Inf
minf_flt32		dd	4 dup (MINF_FLT32)			; -Inf

; Two
ptwo_flt32		dd	4 dup (PTWO_FLT32)			; +2.0
mtwo_flt32		dd	4 dup (MTWO_FLT32)			; -2.0

; One
pone_flt32		dd	4 dup (PONE_FLT32)			; +1.0
mone_flt32		dd	4 dup (MONE_FLT32)			; -1.0

; Half
phalf_flt32		dd	4 dup (PHALF_FLT32)			; +0.5
mhalf_flt32		dd	4 dup (MHALF_FLT32)			; -0.5

; Zero
pzero_flt32		dd	4 dup (PZERO_FLT32)			; +0.0
mzero_flt32		dd	4 dup (MZERO_FLT32)			; -0.0

; Sqrt
sqrt2_flt32		dd	4 dup (SQRT2_FLT32)			; Sqrt (2)
sqrt2p1_flt32	dd	4 dup (SQRT2P1_FLT32)		; Sqrt (2) + 1
sqrt2m1_flt32	dd	4 dup (SQRT2M1_FLT32)		; Sqrt (2) - 1
sqrt12_flt32	dd	4 dup (SQRT12_FLT32)		; 1 / Sqrt (2)

; Pi
ppi_flt32		dd	4 dup (PPI_FLT32)			; +Pi
mpi_flt32		dd	4 dup (MPI_FLT32)			; -Pi
pi_half_flt32	dd	4 dup (PI_HALF_FLT32)		; Pi / 2
pi_four_flt32	dd	4 dup (PI_FOUR_FLT32)		; Pi / 4

; Misc
min_norm_flt32	dd	4 dup (MIN_NORM_FLT32)		; Min normal value
max_norm_flt32	dd	4 dup (MAX_NORM_FLT32)		; Max normal value
ebias_flt32		dd	4 dup (EBIAS_FLT32)			; Exponent bias

; Bias for round operation
rbias_flt32		dd	4 dup (PHALF_FLT32-1)		; Bias value to round away from zero

; Exponent double bias for fast exponentation
dbias_flt32		dd	4 dup (EBIAS_FLT32*2)		; Exponent double bias value

; Range reduction mask
hmask_flt32		dd	4 dup (0xFFFFF000)			; Mask to extract high part from flt32_t value

;==============================================================================;
;       flt64_t consts                                                         ;
;==============================================================================;
align 16

; Masks
dmask_flt64		dq	2 dup (DMASK_FLT64)			; Data mask
smask_flt64		dq	2 dup (SMASK_FLT64)			; Sign mask
mmask_flt64		dq	2 dup (MMASK_FLT64)			; Mantissa mask

; Not a number
pnan_flt64		dq	2 dup (PNAN_FLT64)			; +NaN
mnan_flt64		dq	2 dup (MNAN_FLT64)			; -NaN

; Infinity
pinf_flt64		dq	2 dup (PINF_FLT64)			; +Inf
minf_flt64		dq	2 dup (MINF_FLT64)			; -Inf

; Two
ptwo_flt64		dq	2 dup (PTWO_FLT64)			; +2.0
mtwo_flt64		dq	2 dup (MTWO_FLT64)			; -2.0

; One
pone_flt64		dq	2 dup (PONE_FLT64)			; +1.0
mone_flt64		dq	2 dup (MONE_FLT64)			; -1.0

; Half
phalf_flt64		dq	2 dup (PHALF_FLT64)			; +0.5
mhalf_flt64		dq	2 dup (MHALF_FLT64)			; -0.5

; Zero
pzero_flt64		dq	2 dup (PZERO_FLT64)			; +0.0
mzero_flt64		dq	2 dup (MZERO_FLT64)			; -0.0

; Sqrt
sqrt2_flt64		dq	2 dup (SQRT2_FLT64)			; Sqrt (2)
sqrt2p1_flt64	dq	2 dup (SQRT2P1_FLT64)		; Sqrt (2) + 1
sqrt2m1_flt64	dq	2 dup (SQRT2M1_FLT64)		; Sqrt (2) - 1
sqrt12_flt64	dq	2 dup (SQRT12_FLT64)		; 1 / Sqrt (2)

; Pi
ppi_flt64		dq	2 dup (PPI_FLT64)			; +Pi
mpi_flt64		dq	2 dup (MPI_FLT64)			; -Pi
pi_half_flt64	dq	2 dup (PI_HALF_FLT64)		; Pi / 2
pi_four_flt64	dq	2 dup (PI_FOUR_FLT64)		; Pi / 4

; Misc
min_norm_flt64	dq	2 dup (MIN_NORM_FLT64)		; Min normal value
max_norm_flt64	dq	2 dup (MAX_NORM_FLT64)		; Max normal value
ebias_flt64		dq	2 dup (EBIAS_FLT64)			; Exponent bias

; Bias for round operation
rbias_flt64		dq	2 dup (PHALF_FLT64-1)		; Bias value to round away from zero

; Exponent double bias for fast exponentation
dbias_flt64		dq	2 dup (EBIAS_FLT64*2)		; Exponent double bias value

; Range reduction mask
hmask_flt64		dq	2 dup (0xFFFFFFFFF8000000)	; Mask to extract high part from flt64_t value

;******************************************************************************;
;       flt32_t consts                                                         ;
;******************************************************************************;

;==============================================================================;
;       Coefficients to compute exp(x) for flt32_t type                        ;
;==============================================================================;
align 16
exp_flt32		dd	4 dup (0x33DA929F)			; ln(2)^9 / 9!
				dd	4 dup (0x35B16011)			; ln(2)^8 / 8!
				dd	4 dup (0x377FE5FE)			; ln(2)^7 / 7!
				dd	4 dup (0x39218489)			; ln(2)^6 / 6!
				dd	4 dup (0x3AAEC3FF)			; ln(2)^5 / 5!
				dd	4 dup (0x3C1D955B)			; ln(2)^4 / 4!
				dd	4 dup (0x3D635847)			; ln(2)^3 / 3!
				dd	4 dup (0x3E75FDF0)			; ln(2)^2 / 2!
				dd	4 dup (0x3F317218)			; ln(2)^1 / 1!

; Exponent rangle
min2_flt32		dd	4 dup (0xC3160001)			; Min exponent value by base 2
max2_flt32		dd	4 dup (0x43000001)			; Max exponent value by base 2
min10_flt32		dd	4 dup (0xC2380000)			; Min exponent value by base 10
max10_flt32		dd	4 dup (0x421C0000)			; Max exponent value by base 10
minE_flt32		dd	4 dup (0xC2D00000)			; Min exponent value by base E
maxE_flt32		dd	4 dup (0x42B20000)			; Max exponent value by base E

;==============================================================================;
;       Coefficients to compute log(x) for flt32_t type                        ;
;==============================================================================;
align 16
log_flt32		dd	4 dup (0x3E2DCD65)			; 2 / (17 * ln(2))
				dd	4 dup (0x3E44F9D9)			; 2 / (15 * ln(2))
				dd	4 dup (0x3E6347AB)			; 2 / (13 * ln(2))
				dd	4 dup (0x3E864D42)			; 2 / (11 * ln(2))
				dd	4 dup (0x3EA4258A)			; 2 / (09 * ln(2))
				dd	4 dup (0x3ED30BB1)			; 2 / (07 * ln(2))
				dd	4 dup (0x3F13BB63)			; 2 / (05 * ln(2))
				dd	4 dup (0x3F76384F)			; 2 / (03 * ln(2))
				dd	4 dup (0x4038AA3B)			; 2 / (01 * ln(2))

; Logarithms
log2_10h_flt32	dd	4 dup (0x40549000)			; high part of log2 (10)
log2_10l_flt32	dd	4 dup (0x3A2784BD)			; low part of log2 (10)
log2_Eh_flt32	dd	4 dup (0x3FB8A000)			; high part of log2 (E)
log2_El_flt32	dd	4 dup (0x39A3B296)			; low part of log2 (E)
log2_10_flt32	dd	4 dup (0x40549A78)			; log2 (10)
log2_E_flt32	dd	4 dup (0x3FB8AA3B)			; log2 (e)
log10_2_flt32	dd	4 dup (0x3E9A209B)			; log10 (2)
logE_2_flt32	dd	4 dup (0x3F317218)			; logE (2)
vshift_flt32	dd	4 dup (0x42AC0000)			; exponent shift value

;==============================================================================;
;       Scale values for hypot and cath functions for flt32_t type             ;
;==============================================================================;

; Overflow prevention consts
overB_flt32		dd	4 dup (0x5F000000)			; 2^+63
overS_flt32		dd	4 dup (0x1F800000)			; 2^-64
overR_flt32		dd	4 dup (0x5F800000)			; 2^+64

; Underflow prevention consts
underB_flt32	dd	4 dup (0x20000000)			; 2^-63
underS_flt32	dd	4 dup (0x6A800000)			; 2^+86
underR_flt32	dd	4 dup (0x14800000)			; 2^-86

;==============================================================================;
;       Range reduction constant for trigonometric functions                   ;
;==============================================================================;
qmask_uint32	dd	4 dup (0x00000003)			; quadrant mask
ione_uint32		dd	4 dup (0x00000001)			; 0x1
maxangl_flt32	dd	4 dup (0x5F000000)			; max angle value

;==============================================================================;
;       Coefficients to compute sin(x) for flt32_t type                        ;
;==============================================================================;
align 16
sin_flt32		dd	4 dup (0x3638EF1D)			; +1 / 9!
				dd	4 dup (0xB9500D01)			; -1 / 7!
				dd	4 dup (0x3C088889)			; +1 / 5!
				dd	4 dup (0xBE2AAAAB)			; -1 / 3!
				dd	4 dup (0x3F800000)			; +1 / 1!

;==============================================================================;
;       Coefficients to compute cos(x) for flt32_t type                        ;
;==============================================================================;
align 16
cos_flt32		dd	4 dup (0x37D00D01)			; +1 / 8!
				dd	4 dup (0xBAB60B61)			; -1 / 6!
				dd	4 dup (0x3D2AAAAB)			; +1 / 4!
				dd	4 dup (0xBF000000)			; -1 / 2!
				dd	4 dup (0x3F800000)			; +1 / 1!

;==============================================================================;
;       Coefficients to compute arcsin(x) for flt32_t type                     ;
;==============================================================================;
align 16
asin_flt32		dd	4 dup (0x3B8AF74F)			; (31)!! / (32)!! / 33
				dd	4 dup (0x3B98B41E)			; (29)!! / (30)!! / 31
				dd	4 dup (0x3BA8DD18)			; (27)!! / (28)!! / 29
				dd	4 dup (0x3BBC16ED)			; (25)!! / (26)!! / 27
				dd	4 dup (0x3BD3431F)			; (23)!! / (24)!! / 25
				dd	4 dup (0x3BEF9DEA)			; (21)!! / (22)!! / 23
				dd	4 dup (0x3C09779E)			; (19)!! / (20)!! / 21
				dd	4 dup (0x3C1FEF28)			; (17)!! / (18)!! / 19
				dd	4 dup (0x3C3D43C4)			; (15)!! / (16)!! / 17
				dd	4 dup (0x3C64CCCD)			; (13)!! / (14)!! / 15
				dd	4 dup (0x3C8E2762)			; (11)!! / (12)!! / 13
				dd	4 dup (0x3CB745D1)			; (09)!! / (10)!! / 11
				dd	4 dup (0x3CF8E38E)			; (07)!! / (08)!! / 09
				dd	4 dup (0x3D36DB6E)			; (05)!! / (06)!! / 07
				dd	4 dup (0x3D99999A)			; (03)!! / (04)!! / 05
				dd	4 dup (0x3E2AAAAB)			; (01)!! / (02)!! / 03
				dd	4 dup (0x3F800000)			; (00)!! / (00)!! / 01

;==============================================================================;
;       Coefficients to compute arctan(x) for flt32_t type                     ;
;==============================================================================;
align 16
atan_flt32		dd	4 dup (0xBD579436)			; -1/19
				dd	4 dup (0x3D70F0F1)			; +1/17
				dd	4 dup (0xBD888889)			; -1/15
				dd	4 dup (0x3D9D89D9)			; +1/13
				dd	4 dup (0xBDBA2E8C)			; -1/11
				dd	4 dup (0x3DE38E39)			; +1/09
				dd	4 dup (0xBE124925)			; -1/07
				dd	4 dup (0x3E4CCCCD)			; +1/05
				dd	4 dup (0xBEAAAAAB)			; -1/03

;==============================================================================;
;       Table of integer powers of 10^x for flt32_t type                       ;
;==============================================================================;
align 16
ten_flt32		dd	0x00000000					; 10^-46
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
				dd	0x3089705F					; 10^-09
				dd	0x322BCC77					; 10^-08
				dd	0x33D6BF95					; 10^-07
				dd	0x358637BD					; 10^-06
				dd	0x3727C5AC					; 10^-05
				dd	0x38D1B717					; 10^-04
				dd	0x3A83126F					; 10^-03
				dd	0x3C23D70A					; 10^-02
				dd	0x3DCCCCCD					; 10^-01
				dd	0x3F800000					; 10^+00
				dd	0x41200000					; 10^+01
				dd	0x42C80000					; 10^+02
				dd	0x447A0000					; 10^+03
				dd	0x461C4000					; 10^+04
				dd	0x47C35000					; 10^+05
				dd	0x49742400					; 10^+06
				dd	0x4B189680					; 10^+07
				dd	0x4CBEBC20					; 10^+08
				dd	0x4E6E6B28					; 10^+09
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

;******************************************************************************;
;       flt64_t consts                                                         ;
;******************************************************************************;

;==============================================================================;
;       Coefficients to compute exp(x) for flt64_t type                        ;
;==============================================================================;
align 16
exp_flt64		dq	2 dup (0x3C598444B41C25A8)	; ln(2)^17 / 17!
				dq	2 dup (0x3CA38E89AE79F8B4)	; ln(2)^16 / 16!
				dq	2 dup (0x3CEC36E843B04022)	; ln(2)^15 / 15!
				dq	2 dup (0x3D3314964D5878A9)	; ln(2)^14 / 14!
				dq	2 dup (0x3D7816193166D0F9)	; ln(2)^13 / 13!
				dq	2 dup (0x3DBC3BD650FC2986)	; ln(2)^12 / 12!
				dq	2 dup (0x3DFE8CAC7351BB25)	; ln(2)^11 / 11!
				dq	2 dup (0x3E3E4CF5158B8ECA)	; ln(2)^10 / 10!
				dq	2 dup (0x3E7B5253D395E7C4)	; ln(2)^09 / 09!
				dq	2 dup (0x3EB62C0223A5C824)	; ln(2)^08 / 08!
				dq	2 dup (0x3EEFFCBFC588B0C7)	; ln(2)^07 / 07!
				dq	2 dup (0x3F2430912F86C787)	; ln(2)^06 / 06!
				dq	2 dup (0x3F55D87FE78A6731)	; ln(2)^05 / 05!
				dq	2 dup (0x3F83B2AB6FBA4E77)	; ln(2)^04 / 04!
				dq	2 dup (0x3FAC6B08D704A0C0)	; ln(2)^03 / 03!
				dq	2 dup (0x3FCEBFBDFF82C58F)	; ln(2)^02 / 02!
				dq	2 dup (0x3FE62E42FEFA39EF)	; ln(2)^01 / 01!

; Exponent rangle
min2_flt64		dq	2 dup (0xC090CC0000000001)	; Min exponent value by base 2
max2_flt64		dq	2 dup (0x4090000000000001)	; Max exponent value by base 2
min10_flt64		dq	2 dup (0xC074400000000000)	; Min exponent value by base 10
max10_flt64		dq	2 dup (0x4073500000000000)	; Max exponent value by base 10
minE_flt64		dq	2 dup (0xC087500000000000)	; Min exponent value by base E
maxE_flt64		dq	2 dup (0x4086300000000000)	; Max exponent value by base E

;==============================================================================;
;       Coefficients to compute log(x) for flt64_t type                        ;
;==============================================================================;
align 16
log_flt64		dq	2 dup (0x3FB66235B77002E7)	; 2 / (33 * ln(2))
				dq	2 dup (0x3FB7D3E699FB5DEE)	; 2 / (31 * ln(2))
				dq	2 dup (0x3FB9789566CEE8D2)	; 2 / (29 * ln(2))
				dq	2 dup (0x3FBB5B96FCA558E1)	; 2 / (27 * ln(2))
				dq	2 dup (0x3FBD8BE0817F5FFE)	; 2 / (25 * ln(2))
				dq	2 dup (0x3FC00ECD7E080215)	; 2 / (23 * ln(2))
				dq	2 dup (0x3FC1964EC6FC9491)	; 2 / (21 * ln(2))
				dq	2 dup (0x3FC3703C1F4D0FFE)	; 2 / (19 * ln(2))
				dq	2 dup (0x3FC5B9AC9B743F0D)	; 2 / (17 * ln(2))
				dq	2 dup (0x3FC89F3B1694CFFE)	; 2 / (15 * ln(2))
				dq	2 dup (0x3FCC68F568D31760)	; 2 / (13 * ln(2))
				dq	2 dup (0x3FD0C9A84994022D)	; 2 / (11 * ln(2))
				dq	2 dup (0x3FD484B13D7C02A9)	; 2 / (09 * ln(2))
				dq	2 dup (0x3FDA61762A7ADED9)	; 2 / (07 * ln(2))
				dq	2 dup (0x3FE2776C50EF9BFE)	; 2 / (05 * ln(2))
				dq	2 dup (0x3FEEC709DC3A03FD)	; 2 / (03 * ln(2))
				dq	2 dup (0x40071547652B82FE)	; 2 / (01 * ln(2))

; Logarithms
log2_10h_flt64	dq	2 dup (0x400A934F08000000)	; high part of log2 (10)
log2_10l_flt64	dq	2 dup (0x3E479A3715FC0000)	; low part of log2 (10)
log2_Eh_flt64	dq	2 dup (0x3FF7154760000000)	; high part of log2 (E)
log2_El_flt64	dq	2 dup (0x3E54AE0BF85E0000)	; low part of log2 (E)
log2_10_flt64	dq	2 dup (0x400A934F0979A371)	; log2 (10)
log2_E_flt64	dq	2 dup (0x3FF71547652B82FE)	; log2 (e)
log10_2_flt64	dq	2 dup (0x3FD34413509F79FF)	; log10 (2)
logE_2_flt64	dq	2 dup (0x3FE62E42FEFA39EF)	; logE (2)
vshift_flt64	dq	2 dup (0x4081A00000000000)	; exponent shift value

;==============================================================================;
;       Scale values for hypot and cath functions for flt64_t type             ;
;==============================================================================;

; Overflow prevention consts
overB_flt64		dq	2 dup (0x5FE0000000000000)	; 2^+511
overS_flt64		dq	2 dup (0x1FF0000000000000)	; 2^-512
overR_flt64		dq	2 dup (0x5FF0000000000000)	; 2^+512

; Underflow prevention consts
underB_flt64	dq	2 dup (0x2000000000000000)	; 2^-511
underS_flt64	dq	2 dup (0x6330000000000000)	; 2^+564
underR_flt64	dq	2 dup (0x1CB0000000000000)	; 2^-564

;==============================================================================;
;       Range reduction constant for trigonometric functions                   ;
;==============================================================================;
qmask_uint64	dq	2 dup (0x0000000000000003)	; quadrant mask
ione_uint64		dq	2 dup (0x0000000000000001)	; 0x1
maxangl_flt64	dq	2 dup (0x43E0000000000000)	; max angle value

;==============================================================================;
;       Coefficients to compute sin(x) for flt64_t type                        ;
;==============================================================================;
align 16
sin_flt64		dq	2 dup (0x3CE952C77030AD4A)	; +1 / 17!
				dq	2 dup (0xBD6AE7F3E733B81F)	; -1 / 15!
				dq	2 dup (0x3DE6124613A86D09)	; +1 / 13!
				dq	2 dup (0xBE5AE64567F544E4)	; -1 / 11!
				dq	2 dup (0x3EC71DE3A556C734)	; +1 / 09!
				dq	2 dup (0xBF2A01A01A01A01A)	; -1 / 07!
				dq	2 dup (0x3F81111111111111)	; +1 / 05!
				dq	2 dup (0xBFC5555555555555)	; -1 / 03!
				dq	2 dup (0x3FF0000000000000)	; +1 / 01!

;==============================================================================;
;       Coefficients to compute cos(x) for flt64_t type                        ;
;==============================================================================;
align 16
cos_flt64		dq	2 dup (0x3D2AE7F3E733B81F)	; +1 / 16!
				dq	2 dup (0xBDA93974A8C07C9D)	; -1 / 14!
				dq	2 dup (0x3E21EED8EFF8D898)	; +1 / 12!
				dq	2 dup (0xBE927E4FB7789F5C)	; -1 / 10!
				dq	2 dup (0x3EFA01A01A01A01A)	; +1 / 08!
				dq	2 dup (0xBF56C16C16C16C17)	; -1 / 06!
				dq	2 dup (0x3FA5555555555555)	; +1 / 04!
				dq	2 dup (0xBFE0000000000000)	; -1 / 02!
				dq	2 dup (0x3FF0000000000000)	; +1 / 01!

;==============================================================================;
;       Coefficients to compute arcsin(x) for flt64_t type                     ;
;==============================================================================;
align 16
asin_flt64		dq	2 dup (0x3F590A9F747DB95D)	; (63)!! / (64)!! / 65
				dq	2 dup (0x3F5A3F1EF82137EE)	; (61)!! / (62)!! / 63
				dq	2 dup (0x3F5B8D2E5667CE6C)	; (59)!! / (60)!! / 61
				dq	2 dup (0x3F5CF7DEA5B6E830)	; (57)!! / (58)!! / 59
				dq	2 dup (0x3F5E82BE60D9127E)	; (55)!! / (56)!! / 57
				dq	2 dup (0x3F6018F963C229BF)	; (53)!! / (54)!! / 55
				dq	2 dup (0x3F61052BC5FA960A)	; (51)!! / (52)!! / 53
				dq	2 dup (0x3F6208D3570AE5A6)	; (49)!! / (50)!! / 51
				dq	2 dup (0x3F63275586C5F2F0)	; (47)!! / (48)!! / 49
				dq	2 dup (0x3F6464C0950F7D47)	; (45)!! / (46)!! / 47
				dq	2 dup (0x3F65C5F56EFAAAAB)	; (43)!! / (44)!! / 45
				dq	2 dup (0x3F6750DE64D7D05F)	; (41)!! / (42)!! / 43
				dq	2 dup (0x3F690CB77F60C7CE)	; (39)!! / (40)!! / 41
				dq	2 dup (0x3F6B026F57B13B14)	; (37)!! / (38)!! / 39
				dq	2 dup (0x3F6D3D2A8E0DD67D)	; (35)!! / (36)!! / 37
				dq	2 dup (0x3F6FCAF8FB6DB6DB)	; (33)!! / (34)!! / 35
				dq	2 dup (0x3F715EE9D45D1746)	; (31)!! / (32)!! / 33
				dq	2 dup (0x3F731683BDEF7BDF)	; (29)!! / (30)!! / 31
				dq	2 dup (0x3F751BA308D3DCB1)	; (27)!! / (28)!! / 29
				dq	2 dup (0x3F7782DDA12F684C)	; (25)!! / (26)!! / 27
				dq	2 dup (0x3F7A6863D70A3D71)	; (23)!! / (24)!! / 25
				dq	2 dup (0x3F7DF3BD37A6F4DF)	; (21)!! / (22)!! / 23
				dq	2 dup (0x3F812EF3CF3CF3CF)	; (19)!! / (20)!! / 21
				dq	2 dup (0x3F83FDE50D79435E)	; (17)!! / (18)!! / 19
				dq	2 dup (0x3F87A87878787878)	; (15)!! / (16)!! / 17
				dq	2 dup (0x3F8C99999999999A)	; (13)!! / (14)!! / 15
				dq	2 dup (0x3F91C4EC4EC4EC4F)	; (11)!! / (12)!! / 13
				dq	2 dup (0x3F96E8BA2E8BA2E9)	; (09)!! / (10)!! / 11
				dq	2 dup (0x3F9F1C71C71C71C7)	; (07)!! / (08)!! / 09
				dq	2 dup (0x3FA6DB6DB6DB6DB7)	; (05)!! / (06)!! / 07
				dq	2 dup (0x3FB3333333333333)	; (03)!! / (04)!! / 05
				dq	2 dup (0x3FC5555555555555)	; (01)!! / (02)!! / 03
				dq	2 dup (0x3FF0000000000000)	; (00)!! / (00)!! / 01

;==============================================================================;
;       Coefficients to compute arctan(x) for flt64_t type                     ;
;==============================================================================;
align 16
atan_flt64		dq	2 dup (0xBF9D41D41D41D41D)	; -1/35
				dq	2 dup (0x3F9F07C1F07C1F08)	; +1/33
				dq	2 dup (0xBFA0842108421084)	; -1/31
				dq	2 dup (0x3FA1A7B9611A7B96)	; +1/29
				dq	2 dup (0xBFA2F684BDA12F68)	; -1/27
				dq	2 dup (0x3FA47AE147AE147B)	; +1/25
				dq	2 dup (0xBFA642C8590B2164)	; -1/23
				dq	2 dup (0x3FA8618618618618)	; +1/21
				dq	2 dup (0xBFAAF286BCA1AF28)	; -1/19
				dq	2 dup (0x3FAE1E1E1E1E1E1E)	; +1/17
				dq	2 dup (0xBFB1111111111111)	; -1/15
				dq	2 dup (0x3FB3B13B13B13B14)	; +1/13
				dq	2 dup (0xBFB745D1745D1746)	; -1/11
				dq	2 dup (0x3FBC71C71C71C71C)	; +1/09
				dq	2 dup (0xBFC2492492492492)	; -1/07
				dq	2 dup (0x3FC999999999999A)	; +1/05
				dq	2 dup (0xBFD5555555555555)	; -1/03

;==============================================================================;
;       Table of integer powers of 10^x for flt64_t type                       ;
;==============================================================================;
align 16
ten_flt64		dq	0x0000000000000000			; 10^-324
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
				dq	0x2B617F7D4ED8C33E			; 10^-099
				dq	0x2B95DF5CA28EF40D			; 10^-098
				dq	0x2BCB5733CB32B111			; 10^-097
				dq	0x2C0116805EFFAEAA			; 10^-096
				dq	0x2C355C2076BF9A55			; 10^-095
				dq	0x2C6AB328946F80EA			; 10^-094
				dq	0x2CA0AFF95CC5B092			; 10^-093
				dq	0x2CD4DBF7B3F71CB7			; 10^-092
				dq	0x2D0A12F5A0F4E3E5			; 10^-091
				dq	0x2D404BD984990E6F			; 10^-090
				dq	0x2D745ECFE5BF520B			; 10^-089
				dq	0x2DA97683DF2F268D			; 10^-088
				dq	0x2DDFD424D6FAF031			; 10^-087
				dq	0x2E13E497065CD61F			; 10^-086
				dq	0x2E48DDBCC7F40BA6			; 10^-085
				dq	0x2E7F152BF9F10E90			; 10^-084
				dq	0x2EB36D3B7C36A91A			; 10^-083
				dq	0x2EE8488A5B445360			; 10^-082
				dq	0x2F1E5AACF2156838			; 10^-081
				dq	0x2F52F8AC174D6123			; 10^-080
				dq	0x2F87B6D71D20B96C			; 10^-079
				dq	0x2FBDA48CE468E7C7			; 10^-078
				dq	0x2FF286D80EC190DC			; 10^-077
				dq	0x3027288E1271F513			; 10^-076
				dq	0x305CF2B1970E7258			; 10^-075
				dq	0x309217AEFE690777			; 10^-074
				dq	0x30C69D9ABE034955			; 10^-073
				dq	0x30FC45016D841BAA			; 10^-072
				dq	0x3131AB20E472914A			; 10^-071
				dq	0x316615E91D8F359D			; 10^-070
				dq	0x319B9B6364F30304			; 10^-069
				dq	0x31D1411E1F17E1E3			; 10^-068
				dq	0x32059165A6DDDA5B			; 10^-067
				dq	0x323AF5BF109550F2			; 10^-066
				dq	0x3270D9976A5D5297			; 10^-065
				dq	0x32A50FFD44F4A73D			; 10^-064
				dq	0x32DA53FC9631D10D			; 10^-063
				dq	0x3310747DDDDF22A8			; 10^-062
				dq	0x3344919D5556EB52			; 10^-061
				dq	0x3379B604AAACA626			; 10^-060
				dq	0x33B011C2EAABE7D8			; 10^-059
				dq	0x33E41633A556E1CE			; 10^-058
				dq	0x34191BC08EAC9A41			; 10^-057
				dq	0x344F62B0B257C0D2			; 10^-056
				dq	0x34839DAE6F76D883			; 10^-055
				dq	0x34B8851A0B548EA4			; 10^-054
				dq	0x34EEA6608E29B24D			; 10^-053
				dq	0x352327FC58DA0F70			; 10^-052
				dq	0x3557F1FB6F10934C			; 10^-051
				dq	0x358DEE7A4AD4B81F			; 10^-050
				dq	0x35C2B50C6EC4F313			; 10^-049
				dq	0x35F7624F8A762FD8			; 10^-048
				dq	0x362D3AE36D13BBCE			; 10^-047
				dq	0x366244CE242C5561			; 10^-046
				dq	0x3696D601AD376AB9			; 10^-045
				dq	0x36CC8B8218854567			; 10^-044
				dq	0x3701D7314F534B61			; 10^-043
				dq	0x37364CFDA3281E39			; 10^-042
				dq	0x376BE03D0BF225C7			; 10^-041
				dq	0x37A16C262777579C			; 10^-040
				dq	0x37D5C72FB1552D83			; 10^-039
				dq	0x380B38FB9DAA78E4			; 10^-038
				dq	0x3841039D428A8B8F			; 10^-037
				dq	0x38754484932D2E72			; 10^-036
				dq	0x38AA95A5B7F87A0F			; 10^-035
				dq	0x38E09D8792FB4C49			; 10^-034
				dq	0x3914C4E977BA1F5C			; 10^-033
				dq	0x3949F623D5A8A733			; 10^-032
				dq	0x398039D665896880			; 10^-031
				dq	0x39B4484BFEEBC2A0			; 10^-030
				dq	0x39E95A5EFEA6B347			; 10^-029
				dq	0x3A1FB0F6BE506019			; 10^-028
				dq	0x3A53CE9A36F23C10			; 10^-027
				dq	0x3A88C240C4AECB14			; 10^-026
				dq	0x3ABEF2D0F5DA7DD9			; 10^-025
				dq	0x3AF357C299A88EA7			; 10^-024
				dq	0x3B282DB34012B251			; 10^-023
				dq	0x3B5E392010175EE6			; 10^-022
				dq	0x3B92E3B40A0E9B4F			; 10^-021
				dq	0x3BC79CA10C924223			; 10^-020
				dq	0x3BFD83C94FB6D2AC			; 10^-019
				dq	0x3C32725DD1D243AC			; 10^-018
				dq	0x3C670EF54646D497			; 10^-017
				dq	0x3C9CD2B297D889BC			; 10^-016
				dq	0x3CD203AF9EE75616			; 10^-015
				dq	0x3D06849B86A12B9B			; 10^-014
				dq	0x3D3C25C268497682			; 10^-013
				dq	0x3D719799812DEA11			; 10^-012
				dq	0x3DA5FD7FE1796495			; 10^-011
				dq	0x3DDB7CDFD9D7BDBB			; 10^-010
				dq	0x3E112E0BE826D695			; 10^-009
				dq	0x3E45798EE2308C3A			; 10^-008
				dq	0x3E7AD7F29ABCAF48			; 10^-007
				dq	0x3EB0C6F7A0B5ED8D			; 10^-006
				dq	0x3EE4F8B588E368F1			; 10^-005
				dq	0x3F1A36E2EB1C432D			; 10^-004
				dq	0x3F50624DD2F1A9FC			; 10^-003
				dq	0x3F847AE147AE147B			; 10^-002
				dq	0x3FB999999999999A			; 10^-001
				dq	0x3FF0000000000000			; 10^+000
				dq	0x4024000000000000			; 10^+001
				dq	0x4059000000000000			; 10^+002
				dq	0x408F400000000000			; 10^+003
				dq	0x40C3880000000000			; 10^+004
				dq	0x40F86A0000000000			; 10^+005
				dq	0x412E848000000000			; 10^+006
				dq	0x416312D000000000			; 10^+007
				dq	0x4197D78400000000			; 10^+008
				dq	0x41CDCD6500000000			; 10^+009
				dq	0x4202A05F20000000			; 10^+010
				dq	0x42374876E8000000			; 10^+011
				dq	0x426D1A94A2000000			; 10^+012
				dq	0x42A2309CE5400000			; 10^+013
				dq	0x42D6BCC41E900000			; 10^+014
				dq	0x430C6BF526340000			; 10^+015
				dq	0x4341C37937E08000			; 10^+016
				dq	0x4376345785D8A000			; 10^+017
				dq	0x43ABC16D674EC800			; 10^+018
				dq	0x43E158E460913D00			; 10^+019
				dq	0x4415AF1D78B58C40			; 10^+020
				dq	0x444B1AE4D6E2EF50			; 10^+021
				dq	0x4480F0CF064DD592			; 10^+022
				dq	0x44B52D02C7E14AF6			; 10^+023
				dq	0x44EA784379D99DB4			; 10^+024
				dq	0x45208B2A2C280291			; 10^+025
				dq	0x4554ADF4B7320335			; 10^+026
				dq	0x4589D971E4FE8402			; 10^+027
				dq	0x45C027E72F1F1281			; 10^+028
				dq	0x45F431E0FAE6D721			; 10^+029
				dq	0x46293E5939A08CEA			; 10^+030
				dq	0x465F8DEF8808B024			; 10^+031
				dq	0x4693B8B5B5056E17			; 10^+032
				dq	0x46C8A6E32246C99C			; 10^+033
				dq	0x46FED09BEAD87C03			; 10^+034
				dq	0x4733426172C74D82			; 10^+035
				dq	0x476812F9CF7920E3			; 10^+036
				dq	0x479E17B84357691B			; 10^+037
				dq	0x47D2CED32A16A1B1			; 10^+038
				dq	0x48078287F49C4A1D			; 10^+039
				dq	0x483D6329F1C35CA5			; 10^+040
				dq	0x48725DFA371A19E7			; 10^+041
				dq	0x48A6F578C4E0A061			; 10^+042
				dq	0x48DCB2D6F618C879			; 10^+043
				dq	0x4911EFC659CF7D4C			; 10^+044
				dq	0x49466BB7F0435C9E			; 10^+045
				dq	0x497C06A5EC5433C6			; 10^+046
				dq	0x49B18427B3B4A05C			; 10^+047
				dq	0x49E5E531A0A1C873			; 10^+048
				dq	0x4A1B5E7E08CA3A8F			; 10^+049
				dq	0x4A511B0EC57E649A			; 10^+050
				dq	0x4A8561D276DDFDC0			; 10^+051
				dq	0x4ABABA4714957D30			; 10^+052
				dq	0x4AF0B46C6CDD6E3E			; 10^+053
				dq	0x4B24E1878814C9CE			; 10^+054
				dq	0x4B5A19E96A19FC41			; 10^+055
				dq	0x4B905031E2503DA9			; 10^+056
				dq	0x4BC4643E5AE44D13			; 10^+057
				dq	0x4BF97D4DF19D6057			; 10^+058
				dq	0x4C2FDCA16E04B86D			; 10^+059
				dq	0x4C63E9E4E4C2F344			; 10^+060
				dq	0x4C98E45E1DF3B015			; 10^+061
				dq	0x4CCF1D75A5709C1B			; 10^+062
				dq	0x4D03726987666191			; 10^+063
				dq	0x4D384F03E93FF9F5			; 10^+064
				dq	0x4D6E62C4E38FF872			; 10^+065
				dq	0x4DA2FDBB0E39FB47			; 10^+066
				dq	0x4DD7BD29D1C87A19			; 10^+067
				dq	0x4E0DAC74463A989F			; 10^+068
				dq	0x4E428BC8ABE49F64			; 10^+069
				dq	0x4E772EBAD6DDC73D			; 10^+070
				dq	0x4EACFA698C95390C			; 10^+071
				dq	0x4EE21C81F7DD43A7			; 10^+072
				dq	0x4F16A3A275D49491			; 10^+073
				dq	0x4F4C4C8B1349B9B5			; 10^+074
				dq	0x4F81AFD6EC0E1411			; 10^+075
				dq	0x4FB61BCCA7119916			; 10^+076
				dq	0x4FEBA2BFD0D5FF5B			; 10^+077
				dq	0x502145B7E285BF99			; 10^+078
				dq	0x50559725DB272F7F			; 10^+079
				dq	0x508AFCEF51F0FB5F			; 10^+080
				dq	0x50C0DE1593369D1B			; 10^+081
				dq	0x50F5159AF8044462			; 10^+082
				dq	0x512A5B01B605557B			; 10^+083
				dq	0x516078E111C3556D			; 10^+084
				dq	0x5194971956342AC8			; 10^+085
				dq	0x51C9BCDFABC1357A			; 10^+086
				dq	0x5200160BCB58C16C			; 10^+087
				dq	0x52341B8EBE2EF1C7			; 10^+088
				dq	0x526922726DBAAE39			; 10^+089
				dq	0x529F6B0F092959C7			; 10^+090
				dq	0x52D3A2E965B9D81D			; 10^+091
				dq	0x53088BA3BF284E24			; 10^+092
				dq	0x533EAE8CAEF261AD			; 10^+093
				dq	0x53732D17ED577D0C			; 10^+094
				dq	0x53A7F85DE8AD5C4F			; 10^+095
				dq	0x53DDF67562D8B363			; 10^+096
				dq	0x5412BA095DC7701E			; 10^+097
				dq	0x5447688BB5394C25			; 10^+098
				dq	0x547D42AEA2879F2E			; 10^+099
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

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
