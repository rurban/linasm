/*                                                                        Math.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                             FAST MATH FUNCTIONS                              #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2012, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

//****************************************************************************//
//      Mathematical constants                                                //
//****************************************************************************//

// Basic constants
# define	M_E			2.7182818284590452353602874713526625L	// Base of natural logarithm
# define	M_PI		3.1415926535897932384626433832795029L	// Pi const
# define	M_FI		1.6180339887498948482045868343656381L	// The "Golden Ratio"
# define	M_1_FI		0.6180339887498948482045868343656381L	// The inverse "Golden Ratio"

// Logarithmic constants
# define	M_LN_2		0.6931471805599453094172321214581766L	// Natural logarithm of 2
# define	M_LN_10		2.3025850929940456840179914546843642L	// Natural logarithm of 10
# define	M_LOG2_10	3.3219280948873623478703194294893902L	// Binary logarithm of 10
# define	M_LOG2_E	1.4426950408889634073599246810018921L	// Binary logarithm of e
# define	M_LOG10_2	0.3010299956639811952137388947244930L	// Decimal logarithm of 2
# define	M_LOG10_E	0.4342944819032518276511289189166051L	// Decimal logarithm of e

// Square root constants
# define	M_SQRT2		1.4142135623730950488016887242096981L	// Square root of 2
# define	M_SQRT1_2	0.7071067811865475244008443621048490L	// Square root of 1/2

// Special constants
# define	M_INF		(1.0 / 0.0)								// Infinity
# define	M_NAN		(0.0 / 0.0)								// Not a Number

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
class Math
{
public:

//****************************************************************************//
//      Byte swap                                                             //
//****************************************************************************//

// Unsigned integer types
static uint16_t ByteSwap (uint16_t value);
static uint32_t ByteSwap (uint32_t value);
static uint64_t ByteSwap (uint64_t value);

// Signed integer types
static sint16_t ByteSwap (sint16_t value);
static sint32_t ByteSwap (sint32_t value);
static sint64_t ByteSwap (sint64_t value);

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//

// Signed integer types
static uint8_t Abs (sint8_t value);
static uint16_t Abs (sint16_t value);
static uint32_t Abs (sint32_t value);
static uint64_t Abs (sint64_t value);

// Floating-point types
static flt32_t Abs (flt32_t value);
static flt64_t Abs (flt64_t value);

//****************************************************************************//
//      Negative absolute value                                               //
//****************************************************************************//

// Signed integer types
static uint8_t NegAbs (sint8_t value);
static uint16_t NegAbs (sint16_t value);
static uint32_t NegAbs (sint32_t value);
static uint64_t NegAbs (sint64_t value);

// Floating-point types
static flt32_t NegAbs (flt32_t value);
static flt64_t NegAbs (flt64_t value);

//****************************************************************************//
//      Number sign                                                           //
//****************************************************************************//

// Signed integer types
static sint8_t Sign (sint8_t value);
static sint16_t Sign (sint16_t value);
static sint32_t Sign (sint32_t value);
static sint64_t Sign (sint64_t value);

// Floating-point types
static flt32_t Sign (flt32_t value);
static flt64_t Sign (flt64_t value);

//****************************************************************************//
//      Square root                                                           //
//****************************************************************************//

// Unsigned integer types
static uint8_t Sqrt (uint8_t value);
static uint16_t Sqrt (uint16_t value);
static uint32_t Sqrt (uint32_t value);
static uint64_t Sqrt (uint64_t value);

// Floating-point types
static flt32_t Sqrt (flt32_t value);
static flt64_t Sqrt (flt64_t value);

//****************************************************************************//
//      Trigonometric functions                                               //
//****************************************************************************//

// Hypotenuse
static flt32_t Hypot (flt32_t cath1, flt32_t cath2);
static flt64_t Hypot (flt64_t cath1, flt64_t cath2);

// Cathetus
static flt32_t Cath (flt32_t hypot, flt32_t cath);
static flt64_t Cath (flt64_t hypot, flt64_t cath);

// Sine
static flt32_t SinQ (flt32_t angle, sint64_t quadrant);
static flt64_t SinQ (flt64_t angle, sint64_t quadrant);

// Cosine
static flt32_t CosQ (flt32_t angle, sint64_t quadrant);
static flt64_t CosQ (flt64_t angle, sint64_t quadrant);

// Tangent
static flt32_t TanQ (flt32_t angle, sint64_t quadrant);
static flt64_t TanQ (flt64_t angle, sint64_t quadrant);

// Cotangent
static flt32_t CotQ (flt32_t angle, sint64_t quadrant);
static flt64_t CotQ (flt64_t angle, sint64_t quadrant);

// Sine and cosine
static flt32_t SinCosQ (flt32_t *sin, flt32_t *cos, flt32_t angle, sint64_t quadrant);
static flt64_t SinCosQ (flt64_t *sin, flt64_t *cos, flt64_t angle, sint64_t quadrant);

//****************************************************************************//
//      Minimum value                                                         //
//****************************************************************************//

// Unsigned integer types
static uint8_t Min (uint8_t x, uint8_t y);
static uint16_t Min (uint16_t x, uint16_t y);
static uint32_t Min (uint32_t x, uint32_t y);
static uint64_t Min (uint64_t x, uint64_t y);

// Signed integer types
static sint8_t Min (sint8_t x, sint8_t y);
static sint16_t Min (sint16_t x, sint16_t y);
static sint32_t Min (sint32_t x, sint32_t y);
static sint64_t Min (sint64_t x, sint64_t y);

// Floating-point types
static flt32_t Min (flt32_t x, flt32_t y);
static flt64_t Min (flt64_t x, flt64_t y);

// Other types
static size_t Min (size_t x, size_t y);

//****************************************************************************//
//      Maximum value                                                         //
//****************************************************************************//

// Unsigned integer types
static uint8_t Max (uint8_t x, uint8_t y);
static uint16_t Max (uint16_t x, uint16_t y);
static uint32_t Max (uint32_t x, uint32_t y);
static uint64_t Max (uint64_t x, uint64_t y);

// Signed integer types
static sint8_t Max (sint8_t x, sint8_t y);
static sint16_t Max (sint16_t x, sint16_t y);
static sint32_t Max (sint32_t x, sint32_t y);
static sint64_t Max (sint64_t x, sint64_t y);

// Floating-point types
static flt32_t Max (flt32_t x, flt32_t y);
static flt64_t Max (flt64_t x, flt64_t y);

// Other types
static size_t Max (size_t x, size_t y);

//****************************************************************************//
//      Greatest common divisor                                               //
//****************************************************************************//

// Unsigned integer types
static uint8_t GCD (uint8_t x, uint8_t y);
static uint16_t GCD (uint16_t x, uint16_t y);
static uint32_t GCD (uint32_t x, uint32_t y);
static uint64_t GCD (uint64_t x, uint64_t y);

// Signed integer types
static sint8_t GCD (sint8_t x, sint8_t y);
static sint16_t GCD (sint16_t x, sint16_t y);
static sint32_t GCD (sint32_t x, sint32_t y);
static sint64_t GCD (sint64_t x, sint64_t y);

//****************************************************************************//
//      Least common multiple                                                 //
//****************************************************************************//

// Unsigned integer types
static uint8_t LCM (uint8_t x, uint8_t y);
static uint16_t LCM (uint16_t x, uint16_t y);
static uint32_t LCM (uint32_t x, uint32_t y);
static uint64_t LCM (uint64_t x, uint64_t y);

// Signed integer types
static sint8_t LCM (sint8_t x, sint8_t y);
static sint16_t LCM (sint16_t x, sint16_t y);
static sint32_t LCM (sint32_t x, sint32_t y);
static sint64_t LCM (sint64_t x, sint64_t y);

//****************************************************************************//
//      Exponentiation functions                                              //
//****************************************************************************//

//============================================================================//
//      Power of 2                                                            //
//============================================================================//

// Integer power of 2
static uint64_t Exp2 (uint8_t exp);
static flt32_t Exp2 (sint8_t exp);
static flt64_t Exp2 (sint16_t exp);

// Real power of 2
static flt32_t Exp2 (flt32_t exp);
static flt64_t Exp2 (flt64_t exp);
static flt32_t Exp2m1 (flt32_t exp);
static flt64_t Exp2m1 (flt64_t exp);

//============================================================================//
//      Power of 10                                                           //
//============================================================================//

// Integer power of 10
static uint64_t Exp10 (uint8_t exp);
static flt32_t Exp10 (sint8_t exp);
static flt64_t Exp10 (sint16_t exp);

// Real power of 10
static flt32_t Exp10 (flt32_t exp);
static flt64_t Exp10 (flt64_t exp);
static flt32_t Exp10m1 (flt32_t exp);
static flt64_t Exp10m1 (flt64_t exp);

//============================================================================//
//      Power of E                                                            //
//============================================================================//

// Integer power of E
static flt32_t Exp (sint8_t exp);
static flt64_t Exp (sint16_t exp);

// Real power of E
static flt32_t Exp (flt32_t exp);
static flt64_t Exp (flt64_t exp);
static flt32_t Expm1 (flt32_t exp);
static flt64_t Expm1 (flt64_t exp);

//****************************************************************************//
//      Scale functions                                                       //
//****************************************************************************//

// Scale by power of 2
static flt32_t Scale2 (flt32_t value, sint16_t exp);
static flt64_t Scale2 (flt64_t value, sint16_t exp);

// Scale by power of 10
static flt32_t Scale10 (flt32_t value, sint16_t exp);
static flt64_t Scale10 (flt64_t value, sint16_t exp);

// Scale by power of E
static flt32_t Scale (flt32_t value, sint16_t exp);
static flt64_t Scale (flt64_t value, sint16_t exp);

//****************************************************************************//
//      Power                                                                 //
//****************************************************************************//

// Unsigned integer types
static uint8_t Power (uint8_t base, uint8_t exp);
static uint16_t Power (uint16_t base, uint8_t exp);
static uint32_t Power (uint32_t base, uint8_t exp);
static uint64_t Power (uint64_t base, uint8_t exp);

// Signed integer types
static sint8_t Power (sint8_t base, uint8_t exp);
static sint16_t Power (sint16_t base, uint8_t exp);
static sint32_t Power (sint32_t base, uint8_t exp);
static sint64_t Power (sint64_t base, uint8_t exp);

// Floating-point types
static flt32_t Power (flt32_t base, sint8_t exp);
static flt64_t Power (flt64_t base, sint16_t exp);

//****************************************************************************//
//      Rounding                                                              //
//****************************************************************************//

// Round to nearest integer
static flt32_t RoundInt (flt32_t value);
static flt64_t RoundInt (flt64_t value);

// Round to nearest integer, toward zero (truncation)
static flt32_t Truncate (flt32_t value);
static flt64_t Truncate (flt64_t value);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for normal value
static bool IsNormal (flt32_t value);
static bool IsNormal (flt64_t value);

// Check for subnormal value
static bool IsSubnormal (flt32_t value);
static bool IsSubnormal (flt64_t value);

// Check for finite value
static bool IsFinite (flt32_t value);
static bool IsFinite (flt64_t value);

// Check for infinite value
static bool IsInfinite (flt32_t value);
static bool IsInfinite (flt64_t value);

// Check for NaN value
static bool IsNaN (flt32_t value);
static bool IsNaN (flt64_t value);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Byte swap                                                             //
//****************************************************************************//

// Unsigned integer types
uint16_t Math_ByteSwap_uint16 (uint16_t value);
uint32_t Math_ByteSwap_uint32 (uint32_t value);
uint64_t Math_ByteSwap_uint64 (uint64_t value);

// Signed integer types
sint16_t Math_ByteSwap_sint16 (sint16_t value);
sint32_t Math_ByteSwap_sint32 (sint32_t value);
sint64_t Math_ByteSwap_sint64 (sint64_t value);

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//

// Signed integer types
uint8_t Math_Abs_sint8 (sint8_t value);
uint16_t Math_Abs_sint16 (sint16_t value);
uint32_t Math_Abs_sint32 (sint32_t value);
uint64_t Math_Abs_sint64 (sint64_t value);

// Floating-point types
flt32_t Math_Abs_flt32 (flt32_t value);
flt64_t Math_Abs_flt64 (flt64_t value);

//****************************************************************************//
//      Negative absolute value                                               //
//****************************************************************************//

// Signed integer types
uint8_t Math_NegAbs_sint8 (sint8_t value);
uint16_t Math_NegAbs_sint16 (sint16_t value);
uint32_t Math_NegAbs_sint32 (sint32_t value);
uint64_t Math_NegAbs_sint64 (sint64_t value);

// Floating-point types
flt32_t Math_NegAbs_flt32 (flt32_t value);
flt64_t Math_NegAbs_flt64 (flt64_t value);

//****************************************************************************//
//      Number sign                                                           //
//****************************************************************************//

// Signed integer types
sint8_t Math_Sign_sint8 (sint8_t value);
sint16_t Math_Sign_sint16 (sint16_t value);
sint32_t Math_Sign_sint32 (sint32_t value);
sint64_t Math_Sign_sint64 (sint64_t value);

// Floating-point types
flt32_t Math_Sign_flt32 (flt32_t value);
flt64_t Math_Sign_flt64 (flt64_t value);

//****************************************************************************//
//      Square root                                                           //
//****************************************************************************//

// Unsigned integer types
uint8_t Math_Sqrt_uint8 (uint8_t value);
uint16_t Math_Sqrt_uint16 (uint16_t value);
uint32_t Math_Sqrt_uint32 (uint32_t value);
uint64_t Math_Sqrt_uint64 (uint64_t value);

// Floating-point types
flt32_t Math_Sqrt_flt32 (flt32_t value);
flt64_t Math_Sqrt_flt64 (flt64_t value);

//****************************************************************************//
//      Trigonometric functions                                               //
//****************************************************************************//

// Hypotenuse
flt32_t Math_Hypot_flt32 (flt32_t cath1, flt32_t cath2);
flt64_t Math_Hypot_flt64 (flt64_t cath1, flt64_t cath2);

// Cathetus
flt32_t Math_Cath_flt32 (flt32_t hypot, flt32_t cath);
flt64_t Math_Cath_flt64 (flt64_t hypot, flt64_t cath);

// Sine
flt32_t Math_SinQ_flt32 (flt32_t angle, sint64_t quadrant);
flt64_t Math_SinQ_flt64 (flt64_t angle, sint64_t quadrant);

// Cosine
flt32_t Math_CosQ_flt32 (flt32_t angle, sint64_t quadrant);
flt64_t Math_CosQ_flt64 (flt64_t angle, sint64_t quadrant);

// Tangent
flt32_t Math_TanQ_flt32 (flt32_t angle, sint64_t quadrant);
flt64_t Math_TanQ_flt64 (flt64_t angle, sint64_t quadrant);

// Cotangent
flt32_t Math_CotQ_flt32 (flt32_t angle, sint64_t quadrant);
flt64_t Math_CotQ_flt64 (flt64_t angle, sint64_t quadrant);

// Sine and cosine
flt32_t Math_SinCosQ_flt32 (flt32_t *sin, flt32_t *cos, flt32_t angle, sint64_t quadrant);
flt64_t Math_SinCosQ_flt64 (flt64_t *sin, flt64_t *cos, flt64_t angle, sint64_t quadrant);

//****************************************************************************//
//      Minimum value                                                         //
//****************************************************************************//

// Unsigned integer types
uint8_t Math_Min_uint8 (uint8_t x, uint8_t y);
uint16_t Math_Min_uint16 (uint16_t x, uint16_t y);
uint32_t Math_Min_uint32 (uint32_t x, uint32_t y);
uint64_t Math_Min_uint64 (uint64_t x, uint64_t y);

// Signed integer types
sint8_t Math_Min_sint8 (sint8_t x, sint8_t y);
sint16_t Math_Min_sint16 (sint16_t x, sint16_t y);
sint32_t Math_Min_sint32 (sint32_t x, sint32_t y);
sint64_t Math_Min_sint64 (sint64_t x, sint64_t y);

// Floating-point types
flt32_t Math_Min_flt32 (flt32_t x, flt32_t y);
flt64_t Math_Min_flt64 (flt64_t x, flt64_t y);

// Other types
size_t Math_Min_size (size_t x, size_t y);

//****************************************************************************//
//      Maximum value                                                         //
//****************************************************************************//

// Unsigned integer types
uint8_t Math_Max_uint8 (uint8_t x, uint8_t y);
uint16_t Math_Max_uint16 (uint16_t x, uint16_t y);
uint32_t Math_Max_uint32 (uint32_t x, uint32_t y);
uint64_t Math_Max_uint64 (uint64_t x, uint64_t y);

// Signed integer types
sint8_t Math_Max_sint8 (sint8_t x, sint8_t y);
sint16_t Math_Max_sint16 (sint16_t x, sint16_t y);
sint32_t Math_Max_sint32 (sint32_t x, sint32_t y);
sint64_t Math_Max_sint64 (sint64_t x, sint64_t y);

// Floating-point types
flt32_t Math_Max_flt32 (flt32_t x, flt32_t y);
flt64_t Math_Max_flt64 (flt64_t x, flt64_t y);

// Other types
size_t Math_Max_size (size_t x, size_t y);

//****************************************************************************//
//      Greatest common divisor                                               //
//****************************************************************************//

// Unsigned integer types
uint8_t Math_GCD_uint8 (uint8_t x, uint8_t y);
uint16_t Math_GCD_uint16 (uint16_t x, uint16_t y);
uint32_t Math_GCD_uint32 (uint32_t x, uint32_t y);
uint64_t Math_GCD_uint64 (uint64_t x, uint64_t y);

// Signed integer types
sint8_t Math_GCD_sint8 (sint8_t x, sint8_t y);
sint16_t Math_GCD_sint16 (sint16_t x, sint16_t y);
sint32_t Math_GCD_sint32 (sint32_t x, sint32_t y);
sint64_t Math_GCD_sint64 (sint64_t x, sint64_t y);

//****************************************************************************//
//      Least common multiple                                                 //
//****************************************************************************//

// Unsigned integer types
uint8_t Math_LCM_uint8 (uint8_t x, uint8_t y);
uint16_t Math_LCM_uint16 (uint16_t x, uint16_t y);
uint32_t Math_LCM_uint32 (uint32_t x, uint32_t y);
uint64_t Math_LCM_uint64 (uint64_t x, uint64_t y);

// Signed integer types
sint8_t Math_LCM_sint8 (sint8_t x, sint8_t y);
sint16_t Math_LCM_sint16 (sint16_t x, sint16_t y);
sint32_t Math_LCM_sint32 (sint32_t x, sint32_t y);
sint64_t Math_LCM_sint64 (sint64_t x, sint64_t y);

//****************************************************************************//
//      Exponentiation functions                                              //
//****************************************************************************//

//============================================================================//
//      Power of 2                                                            //
//============================================================================//

// Integer power of 2
uint64_t Math_Exp2_uint64 (uint8_t exp);
flt32_t Math_Exp2i_flt32 (sint8_t exp);
flt64_t Math_Exp2i_flt64 (sint16_t exp);

// Real power of 2
flt32_t Math_Exp2_flt32 (flt32_t exp);
flt64_t Math_Exp2_flt64 (flt64_t exp);
flt32_t Math_Exp2m1_flt32 (flt32_t exp);
flt64_t Math_Exp2m1_flt64 (flt64_t exp);

//============================================================================//
//      Power of 10                                                           //
//============================================================================//

// Integer power of 10
uint64_t Math_Exp10_uint64 (uint8_t exp);
flt32_t Math_Exp10i_flt32 (sint8_t exp);
flt64_t Math_Exp10i_flt64 (sint16_t exp);

// Real power of 10
flt32_t Math_Exp10_flt32 (flt32_t exp);
flt64_t Math_Exp10_flt64 (flt64_t exp);
flt32_t Math_Exp10m1_flt32 (flt32_t exp);
flt64_t Math_Exp10m1_flt64 (flt64_t exp);

//============================================================================//
//      Power of E                                                            //
//============================================================================//

// Integer power of E
flt32_t Math_Expi_flt32 (sint8_t exp);
flt64_t Math_Expi_flt64 (sint16_t exp);

// Real power of E
flt32_t Math_Exp_flt32 (flt32_t exp);
flt64_t Math_Exp_flt64 (flt64_t exp);
flt32_t Math_Expm1_flt32 (flt32_t exp);
flt64_t Math_Expm1_flt64 (flt64_t exp);

//****************************************************************************//
//      Scale functions                                                       //
//****************************************************************************//

// Scale by power of 2
flt32_t Math_Scale2_flt32 (flt32_t value, sint16_t exp);
flt64_t Math_Scale2_flt64 (flt64_t value, sint16_t exp);

// Scale by power of 10
flt32_t Math_Scale10_flt32 (flt32_t value, sint16_t exp);
flt64_t Math_Scale10_flt64 (flt64_t value, sint16_t exp);

// Scale by power of E
flt32_t Math_Scale_flt32 (flt32_t value, sint16_t exp);
flt64_t Math_Scale_flt64 (flt64_t value, sint16_t exp);

//****************************************************************************//
//      Power                                                                 //
//****************************************************************************//

// Unsigned integer types
uint8_t Math_Power_uint8 (uint8_t base, uint8_t exp);
uint16_t Math_Power_uint16 (uint16_t base, uint8_t exp);
uint32_t Math_Power_uint32 (uint32_t base, uint8_t exp);
uint64_t Math_Power_uint64 (uint64_t base, uint8_t exp);

// Signed integer types
sint8_t Math_Power_sint8 (sint8_t base, uint8_t exp);
sint16_t Math_Power_sint16 (sint16_t base, uint8_t exp);
sint32_t Math_Power_sint32 (sint32_t base, uint8_t exp);
sint64_t Math_Power_sint64 (sint64_t base, uint8_t exp);

// Floating-point types
flt32_t Math_Poweri_flt32 (flt32_t base, sint8_t exp);
flt64_t Math_Poweri_flt64 (flt64_t base, sint16_t exp);

//****************************************************************************//
//      Rounding                                                              //
//****************************************************************************//

// Round to nearest integer
flt32_t Math_RoundInt_flt32 (flt32_t value);
flt64_t Math_RoundInt_flt64 (flt64_t value);

// Round to nearest integer, toward zero (truncation)
flt32_t Math_Truncate_flt32 (flt32_t value);
flt64_t Math_Truncate_flt64 (flt64_t value);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for normal value
bool Math_IsNormal_flt32 (flt32_t value);
bool Math_IsNormal_flt64 (flt64_t value);

// Check for subnormal value
bool Math_IsSubnormal_flt32 (flt32_t value);
bool Math_IsSubnormal_flt64 (flt64_t value);

// Check for finite value
bool Math_IsFinite_flt32 (flt32_t value);
bool Math_IsFinite_flt64 (flt64_t value);

// Check for infinite value
bool Math_IsInfinite_flt32 (flt32_t value);
bool Math_IsInfinite_flt64 (flt64_t value);

// Check for NaN value
bool Math_IsNaN_flt32 (flt32_t value);
bool Math_IsNaN_flt64 (flt64_t value);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
