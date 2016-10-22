/*                                                                        Math.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                             FAST MATH FUNCTIONS                              #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
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
//      Bitwise operations                                                    //
//****************************************************************************//

//============================================================================//
//      Byte swap                                                             //
//============================================================================//

// Unsigned integer types
static uint8_t ByteSwap (uint8_t value);
static uint16_t ByteSwap (uint16_t value);
static uint32_t ByteSwap (uint32_t value);
static uint64_t ByteSwap (uint64_t value);
static uint8v16_t ByteSwap (uint8v16_t value);
static uint16v8_t ByteSwap (uint16v8_t value);
static uint32v4_t ByteSwap (uint32v4_t value);
static uint64v2_t ByteSwap (uint64v2_t value);

// Signed integer types
static sint8_t ByteSwap (sint8_t value);
static sint16_t ByteSwap (sint16_t value);
static sint32_t ByteSwap (sint32_t value);
static sint64_t ByteSwap (sint64_t value);
static sint8v16_t ByteSwap (sint8v16_t value);
static sint16v8_t ByteSwap (sint16v8_t value);
static sint32v4_t ByteSwap (sint32v4_t value);
static sint64v2_t ByteSwap (sint64v2_t value);

//============================================================================//
//      Bit reversal permutation                                              //
//============================================================================//

// Unsigned integer types
static uint8_t BitReverse (uint8_t value);
static uint16_t BitReverse (uint16_t value);
static uint32_t BitReverse (uint32_t value);
static uint64_t BitReverse (uint64_t value);
static uint8v16_t BitReverse (uint8v16_t value);
static uint16v8_t BitReverse (uint16v8_t value);
static uint32v4_t BitReverse (uint32v4_t value);
static uint64v2_t BitReverse (uint64v2_t value);

// Signed integer types
static sint8_t BitReverse (sint8_t value);
static sint16_t BitReverse (sint16_t value);
static sint32_t BitReverse (sint32_t value);
static sint64_t BitReverse (sint64_t value);
static sint8v16_t BitReverse (sint8v16_t value);
static sint16v8_t BitReverse (sint16v8_t value);
static sint32v4_t BitReverse (sint32v4_t value);
static sint64v2_t BitReverse (sint64v2_t value);

//============================================================================//
//      Bit scan                                                              //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Bit scan forward                                                      //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static uint8_t ScanForward (uint8_t value);
static uint16_t ScanForward (uint16_t value);
static uint32_t ScanForward (uint32_t value);
static uint64_t ScanForward (uint64_t value);

// Unsigned integer types
static sint8_t ScanForward (sint8_t value);
static sint16_t ScanForward (sint16_t value);
static sint32_t ScanForward (sint32_t value);
static sint64_t ScanForward (sint64_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Bit scan backward                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static uint8_t ScanBackward (uint8_t value);
static uint16_t ScanBackward (uint16_t value);
static uint32_t ScanBackward (uint32_t value);
static uint64_t ScanBackward (uint64_t value);

// Unsigned integer types
static sint8_t ScanBackward (sint8_t value);
static sint16_t ScanBackward (sint16_t value);
static sint32_t ScanBackward (sint32_t value);
static sint64_t ScanBackward (sint64_t value);

//============================================================================//
//      Circular rotation                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Circular rotation to the left                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static uint8_t RotateLeft (uint8_t value, uint8_t shift);
static uint16_t RotateLeft (uint16_t value, uint8_t shift);
static uint32_t RotateLeft (uint32_t value, uint8_t shift);
static uint64_t RotateLeft (uint64_t value, uint8_t shift);

// Signed integer types
static sint8_t RotateLeft (sint8_t value, uint8_t shift);
static sint16_t RotateLeft (sint16_t value, uint8_t shift);
static sint32_t RotateLeft (sint32_t value, uint8_t shift);
static sint64_t RotateLeft (sint64_t value, uint8_t shift);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Circular rotation to the right                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static uint8_t RotateRight (uint8_t value, uint8_t shift);
static uint16_t RotateRight (uint16_t value, uint8_t shift);
static uint32_t RotateRight (uint32_t value, uint8_t shift);
static uint64_t RotateRight (uint64_t value, uint8_t shift);

// Signed integer types
static sint8_t RotateRight (sint8_t value, uint8_t shift);
static sint16_t RotateRight (sint16_t value, uint8_t shift);
static sint32_t RotateRight (sint32_t value, uint8_t shift);
static sint64_t RotateRight (sint64_t value, uint8_t shift);

//============================================================================//
//      Population count                                                      //
//============================================================================//

// Unsigned integer types
static uint8_t PopCount (uint8_t value);
static uint16_t PopCount (uint16_t value);
static uint32_t PopCount (uint32_t value);
static uint64_t PopCount (uint64_t value);
static uint8v16_t PopCount (uint8v16_t value);
static uint16v8_t PopCount (uint16v8_t value);
static uint32v4_t PopCount (uint32v4_t value);
static uint64v2_t PopCount (uint64v2_t value);

// Signed integer types
static sint8_t PopCount (sint8_t value);
static sint16_t PopCount (sint16_t value);
static sint32_t PopCount (sint32_t value);
static sint64_t PopCount (sint64_t value);
static sint8v16_t PopCount (sint8v16_t value);
static sint16v8_t PopCount (sint16v8_t value);
static sint32v4_t PopCount (sint32v4_t value);
static sint64v2_t PopCount (sint64v2_t value);

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Absolute value                                                        //
//============================================================================//

// Signed integer types
static uint8_t Abs (sint8_t value);
static uint16_t Abs (sint16_t value);
static uint32_t Abs (sint32_t value);
static uint64_t Abs (sint64_t value);
static uint8v16_t Abs (sint8v16_t value);
static uint16v8_t Abs (sint16v8_t value);
static uint32v4_t Abs (sint32v4_t value);
static uint64v2_t Abs (sint64v2_t value);

// Floating-point types
static flt32_t Abs (flt32_t value);
static flt64_t Abs (flt64_t value);
static flt32v4_t Abs (flt32v4_t value);
static flt64v2_t Abs (flt64v2_t value);

//============================================================================//
//      Negative absolute value                                               //
//============================================================================//

// Signed integer types
static sint8_t NegAbs (sint8_t value);
static sint16_t NegAbs (sint16_t value);
static sint32_t NegAbs (sint32_t value);
static sint64_t NegAbs (sint64_t value);
static sint8v16_t NegAbs (sint8v16_t value);
static sint16v8_t NegAbs (sint16v8_t value);
static sint32v4_t NegAbs (sint32v4_t value);
static sint64v2_t NegAbs (sint64v2_t value);

// Floating-point types
static flt32_t NegAbs (flt32_t value);
static flt64_t NegAbs (flt64_t value);
static flt32v4_t NegAbs (flt32v4_t value);
static flt64v2_t NegAbs (flt64v2_t value);

//============================================================================//
//      Number sign                                                           //
//============================================================================//

// Signed integer types
static sint8_t Sign (sint8_t value);
static sint16_t Sign (sint16_t value);
static sint32_t Sign (sint32_t value);
static sint64_t Sign (sint64_t value);
static sint8v16_t Sign (sint8v16_t value);
static sint16v8_t Sign (sint16v8_t value);
static sint32v4_t Sign (sint32v4_t value);
static sint64v2_t Sign (sint64v2_t value);

// Floating-point types
static flt32_t Sign (flt32_t value);
static flt64_t Sign (flt64_t value);
static flt32v4_t Sign (flt32v4_t value);
static flt64v2_t Sign (flt64v2_t value);

//============================================================================//
//      Square root                                                           //
//============================================================================//

// Unsigned integer types
static uint8_t Sqrt (uint8_t value);
static uint16_t Sqrt (uint16_t value);
static uint32_t Sqrt (uint32_t value);
static uint64_t Sqrt (uint64_t value);

// Floating-point types
static flt32_t Sqrt (flt32_t value);
static flt64_t Sqrt (flt64_t value);
static flt32v4_t Sqrt (flt32v4_t value);
static flt64v2_t Sqrt (flt64v2_t value);

//============================================================================//
//      Square value                                                          //
//============================================================================//

// Unsigned integer types
static uint8_t Sqr (uint8_t value);
static uint16_t Sqr (uint16_t value);
static uint32_t Sqr (uint32_t value);
static uint64_t Sqr (uint64_t value);

// Signed integer types
static sint8_t Sqr (sint8_t value);
static sint16_t Sqr (sint16_t value);
static sint32_t Sqr (sint32_t value);
static sint64_t Sqr (sint64_t value);

// Floating-point types
static flt32_t Sqr (flt32_t value);
static flt64_t Sqr (flt64_t value);
static flt32v4_t Sqr (flt32v4_t value);
static flt64v2_t Sqr (flt64v2_t value);

//============================================================================//
//      Cube value                                                            //
//============================================================================//

// Unsigned integer types
static uint8_t Cube (uint8_t value);
static uint16_t Cube (uint16_t value);
static uint32_t Cube (uint32_t value);
static uint64_t Cube (uint64_t value);

// Signed integer types
static sint8_t Cube (sint8_t value);
static sint16_t Cube (sint16_t value);
static sint32_t Cube (sint32_t value);
static sint64_t Cube (sint64_t value);

// Floating-point types
static flt32_t Cube (flt32_t value);
static flt64_t Cube (flt64_t value);
static flt32v4_t Cube (flt32v4_t value);
static flt64v2_t Cube (flt64v2_t value);

//============================================================================//
//      Inverse value                                                         //
//============================================================================//
static flt32_t InverseValue (flt32_t value);
static flt64_t InverseValue (flt64_t value);
static flt32v4_t InverseValue (flt32v4_t value);
static flt64v2_t InverseValue (flt64v2_t value);

//============================================================================//
//      Inverse square value                                                  //
//============================================================================//
static flt32_t InverseSquare (flt32_t value);
static flt64_t InverseSquare (flt64_t value);
static flt32v4_t InverseSquare (flt32v4_t value);
static flt64v2_t InverseSquare (flt64v2_t value);

//============================================================================//
//      Inverse cube value                                                    //
//============================================================================//
static flt32_t InverseCube (flt32_t value);
static flt64_t InverseCube (flt64_t value);
static flt32v4_t InverseCube (flt32v4_t value);
static flt64v2_t InverseCube (flt64v2_t value);

//============================================================================//
//      Three-state comparison                                                //
//============================================================================//

// Unsigned integer types
static sint8_t Compare (uint8_t value1, uint8_t value2);
static sint16_t Compare (uint16_t value1, uint16_t value2);
static sint32_t Compare (uint32_t value1, uint32_t value2);
static sint64_t Compare (uint64_t value1, uint64_t value2);
static sint8v16_t Compare (uint8v16_t value1, uint8v16_t value2);
static sint16v8_t Compare (uint16v8_t value1, uint16v8_t value2);
static sint32v4_t Compare (uint32v4_t value1, uint32v4_t value2);
static sint64v2_t Compare (uint64v2_t value1, uint64v2_t value2);

// Signed integer types
static sint8_t Compare (sint8_t value1, sint8_t value2);
static sint16_t Compare (sint16_t value1, sint16_t value2);
static sint32_t Compare (sint32_t value1, sint32_t value2);
static sint64_t Compare (sint64_t value1, sint64_t value2);
static sint8v16_t Compare (sint8v16_t value1, sint8v16_t value2);
static sint16v8_t Compare (sint16v8_t value1, sint16v8_t value2);
static sint32v4_t Compare (sint32v4_t value1, sint32v4_t value2);
static sint64v2_t Compare (sint64v2_t value1, sint64v2_t value2);

// Floating-point types
static flt32_t Compare (flt32_t value1, flt32_t value2);
static flt64_t Compare (flt64_t value1, flt64_t value2);
static flt32v4_t Compare (flt32v4_t value1, flt32v4_t value2);
static flt64v2_t Compare (flt64v2_t value1, flt64v2_t value2);

//============================================================================//
//      Minimum and maximum absolute value                                    //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Minimum absolute value                                                //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Signed integer types
static uint8_t MinAbs (sint8_t value1, sint8_t value2);
static uint16_t MinAbs (sint16_t value1, sint16_t value2);
static uint32_t MinAbs (sint32_t value1, sint32_t value2);
static uint64_t MinAbs (sint64_t value1, sint64_t value2);
static uint8v16_t MinAbs (sint8v16_t value1, sint8v16_t value2);
static uint16v8_t MinAbs (sint16v8_t value1, sint16v8_t value2);
static uint32v4_t MinAbs (sint32v4_t value1, sint32v4_t value2);

// Floating-point types
static flt32_t MinAbs (flt32_t value1, flt32_t value2);
static flt64_t MinAbs (flt64_t value1, flt64_t value2);
static flt32v4_t MinAbs (flt32v4_t value1, flt32v4_t value2);
static flt64v2_t MinAbs (flt64v2_t value1, flt64v2_t value2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Maximum absolute value                                                //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Signed integer types
static uint8_t MaxAbs (sint8_t value1, sint8_t value2);
static uint16_t MaxAbs (sint16_t value1, sint16_t value2);
static uint32_t MaxAbs (sint32_t value1, sint32_t value2);
static uint64_t MaxAbs (sint64_t value1, sint64_t value2);
static uint8v16_t MaxAbs (sint8v16_t value1, sint8v16_t value2);
static uint16v8_t MaxAbs (sint16v8_t value1, sint16v8_t value2);
static uint32v4_t MaxAbs (sint32v4_t value1, sint32v4_t value2);

// Floating-point types
static flt32_t MaxAbs (flt32_t value1, flt32_t value2);
static flt64_t MaxAbs (flt64_t value1, flt64_t value2);
static flt32v4_t MaxAbs (flt32v4_t value1, flt32v4_t value2);
static flt64v2_t MaxAbs (flt64v2_t value1, flt64v2_t value2);

//============================================================================//
//      Minimum and maximum value                                             //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Minimum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static uint8_t Min (uint8_t value1, uint8_t value2);
static uint16_t Min (uint16_t value1, uint16_t value2);
static uint32_t Min (uint32_t value1, uint32_t value2);
static uint64_t Min (uint64_t value1, uint64_t value2);
static uint8v16_t Min (uint8v16_t value1, uint8v16_t value2);
static uint16v8_t Min (uint16v8_t value1, uint16v8_t value2);
static uint32v4_t Min (uint32v4_t value1, uint32v4_t value2);

// Signed integer types
static sint8_t Min (sint8_t value1, sint8_t value2);
static sint16_t Min (sint16_t value1, sint16_t value2);
static sint32_t Min (sint32_t value1, sint32_t value2);
static sint64_t Min (sint64_t value1, sint64_t value2);
static sint8v16_t Min (sint8v16_t value1, sint8v16_t value2);
static sint16v8_t Min (sint16v8_t value1, sint16v8_t value2);
static sint32v4_t Min (sint32v4_t value1, sint32v4_t value2);

// Floating-point types
static flt32_t Min (flt32_t value1, flt32_t value2);
static flt64_t Min (flt64_t value1, flt64_t value2);
static flt32v4_t Min (flt32v4_t value1, flt32v4_t value2);
static flt64v2_t Min (flt64v2_t value1, flt64v2_t value2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Maximum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static uint8_t Max (uint8_t value1, uint8_t value2);
static uint16_t Max (uint16_t value1, uint16_t value2);
static uint32_t Max (uint32_t value1, uint32_t value2);
static uint64_t Max (uint64_t value1, uint64_t value2);
static uint8v16_t Max (uint8v16_t value1, uint8v16_t value2);
static uint16v8_t Max (uint16v8_t value1, uint16v8_t value2);
static uint32v4_t Max (uint32v4_t value1, uint32v4_t value2);

// Signed integer types
static sint8_t Max (sint8_t value1, sint8_t value2);
static sint16_t Max (sint16_t value1, sint16_t value2);
static sint32_t Max (sint32_t value1, sint32_t value2);
static sint64_t Max (sint64_t value1, sint64_t value2);
static sint8v16_t Max (sint8v16_t value1, sint8v16_t value2);
static sint16v8_t Max (sint16v8_t value1, sint16v8_t value2);
static sint32v4_t Max (sint32v4_t value1, sint32v4_t value2);

// Floating-point types
static flt32_t Max (flt32_t value1, flt32_t value2);
static flt64_t Max (flt64_t value1, flt64_t value2);
static flt32v4_t Max (flt32v4_t value1, flt32v4_t value2);
static flt64v2_t Max (flt64v2_t value1, flt64v2_t value2);

//============================================================================//
//      Greatest common divisor                                               //
//============================================================================//

// Unsigned integer types
static uint8_t GCD (uint8_t value1, uint8_t value2);
static uint16_t GCD (uint16_t value1, uint16_t value2);
static uint32_t GCD (uint32_t value1, uint32_t value2);
static uint64_t GCD (uint64_t value1, uint64_t value2);

// Signed integer types
static uint8_t GCD (sint8_t value1, sint8_t value2);
static uint16_t GCD (sint16_t value1, sint16_t value2);
static uint32_t GCD (sint32_t value1, sint32_t value2);
static uint64_t GCD (sint64_t value1, sint64_t value2);

//============================================================================//
//      Least common multiple                                                 //
//============================================================================//

// Unsigned integer types
static uint8_t LCM (uint8_t value1, uint8_t value2);
static uint16_t LCM (uint16_t value1, uint16_t value2);
static uint32_t LCM (uint32_t value1, uint32_t value2);
static uint64_t LCM (uint64_t value1, uint64_t value2);

// Signed integer types
static uint8_t LCM (sint8_t value1, sint8_t value2);
static uint16_t LCM (sint16_t value1, sint16_t value2);
static uint32_t LCM (sint32_t value1, sint32_t value2);
static uint64_t LCM (sint64_t value1, sint64_t value2);

//============================================================================//
//      Cancellation                                                          //
//============================================================================//

// Unsigned integer types
static void Cancel (uint8_t *value1, uint8_t *value2);
static void Cancel (uint16_t *value1, uint16_t *value2);
static void Cancel (uint32_t *value1, uint32_t *value2);
static void Cancel (uint64_t *value1, uint64_t *value2);

// Signed integer types
static void Cancel (sint8_t *value1, sint8_t *value2);
static void Cancel (sint16_t *value1, sint16_t *value2);
static void Cancel (sint32_t *value1, sint32_t *value2);
static void Cancel (sint64_t *value1, sint64_t *value2);

//****************************************************************************//
//      Observational error                                                   //
//****************************************************************************//

//============================================================================//
//      Absolute error                                                        //
//============================================================================//
static flt32_t AbsError (flt32_t approximate, flt32_t accurate);
static flt64_t AbsError (flt64_t approximate, flt64_t accurate);
static flt32v4_t AbsError (flt32v4_t approximate, flt32v4_t accurate);
static flt64v2_t AbsError (flt64v2_t approximate, flt64v2_t accurate);

//============================================================================//
//      Relative error                                                        //
//============================================================================//
static flt32_t RelError (flt32_t approximate, flt32_t accurate);
static flt64_t RelError (flt64_t approximate, flt64_t accurate);
static flt32v4_t RelError (flt32v4_t approximate, flt32v4_t accurate);
static flt64v2_t RelError (flt64v2_t approximate, flt64v2_t accurate);

//****************************************************************************//
//      Scale functions                                                       //
//****************************************************************************//

// Scale by power of 2
static flt32_t Scale2 (flt32_t value, sint16_t exp);
static flt64_t Scale2 (flt64_t value, sint16_t exp);

// Scale by power of 10
static flt32_t Scale10 (flt32_t value, sint16_t exp);
static flt64_t Scale10 (flt64_t value, sint16_t exp);

//****************************************************************************//
//      Exponentiation functions                                              //
//****************************************************************************//

//============================================================================//
//      Exponentiation by base 2                                              //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Integer exponentiation by base 2                                      //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static uint64_t Exp2i (uint8_t exp);
static flt32_t Exp2i (sint8_t exp);
static flt64_t Exp2i (sint16_t exp);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Real exponentiation by base 2                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static flt32_t Exp2 (flt32_t exp);
static flt64_t Exp2 (flt64_t exp);
static flt32_t Exp2m1 (flt32_t exp);
static flt64_t Exp2m1 (flt64_t exp);
static flt32v4_t Exp2 (flt32v4_t exp);
static flt64v2_t Exp2 (flt64v2_t exp);
static flt32v4_t Exp2m1 (flt32v4_t exp);
static flt64v2_t Exp2m1 (flt64v2_t exp);

//============================================================================//
//      Exponentiation by base 10                                             //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Integer exponentiation by base 10                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static uint64_t Exp10i (uint8_t exp);
static flt32_t Exp10i (sint8_t exp);
static flt64_t Exp10i (sint16_t exp);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Real exponentiation by base 10                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static flt32_t Exp10 (flt32_t exp);
static flt64_t Exp10 (flt64_t exp);
static flt32_t Exp10m1 (flt32_t exp);
static flt64_t Exp10m1 (flt64_t exp);
static flt32v4_t Exp10 (flt32v4_t exp);
static flt64v2_t Exp10 (flt64v2_t exp);
static flt32v4_t Exp10m1 (flt32v4_t exp);
static flt64v2_t Exp10m1 (flt64v2_t exp);

//============================================================================//
//      Exponentiation by base E (natural logarithm)                          //
//============================================================================//
static flt32_t Exp (flt32_t exp);
static flt64_t Exp (flt64_t exp);
static flt32_t Expm1 (flt32_t exp);
static flt64_t Expm1 (flt64_t exp);
static flt32v4_t Exp (flt32v4_t exp);
static flt64v2_t Exp (flt64v2_t exp);
static flt32v4_t Expm1 (flt32v4_t exp);
static flt64v2_t Expm1 (flt64v2_t exp);

//============================================================================//
//      Exponentiation by custom base                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Integer exponentiation by custom base                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static uint8_t ExpBi (uint8_t base, uint8_t exp);
static uint16_t ExpBi (uint16_t base, uint8_t exp);
static uint32_t ExpBi (uint32_t base, uint8_t exp);
static uint64_t ExpBi (uint64_t base, uint8_t exp);

// Signed integer types
static sint8_t ExpBi (sint8_t base, uint8_t exp);
static sint16_t ExpBi (sint16_t base, uint8_t exp);
static sint32_t ExpBi (sint32_t base, uint8_t exp);
static sint64_t ExpBi (sint64_t base, uint8_t exp);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Real exponentiation by custom base                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static flt32_t ExpB (flt32_t base, flt32_t exp);
static flt64_t ExpB (flt64_t base, flt64_t exp);
static flt32_t ExpBm1 (flt32_t base, flt32_t exp);
static flt64_t ExpBm1 (flt64_t base, flt64_t exp);
static flt32v4_t ExpB (flt32v4_t base, flt32v4_t exp);
static flt64v2_t ExpB (flt64v2_t base, flt64v2_t exp);
static flt32v4_t ExpBm1 (flt32v4_t base, flt32v4_t exp);
static flt64v2_t ExpBm1 (flt64v2_t base, flt64v2_t exp);

//****************************************************************************//
//      Logarithmic functions                                                 //
//****************************************************************************//

//============================================================================//
//      Logarithm to base 2                                                   //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Integer logarithm to base 2                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static uint8_t Log2i (uint8_t value);
static uint8_t Log2i (uint16_t value);
static uint8_t Log2i (uint32_t value);
static uint8_t Log2i (uint64_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Real logarithm to base 2                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static flt32_t Log2 (flt32_t value);
static flt64_t Log2 (flt64_t value);
static flt32_t Log2p1 (flt32_t value);
static flt64_t Log2p1 (flt64_t value);
static flt32v4_t Log2 (flt32v4_t value);
static flt64v2_t Log2 (flt64v2_t value);
static flt32v4_t Log2p1 (flt32v4_t value);
static flt64v2_t Log2p1 (flt64v2_t value);

//============================================================================//
//      Logarithm to base 10                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Integer logarithm to base 10                                          //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static uint8_t Log10i (uint8_t value);
static uint8_t Log10i (uint16_t value);
static uint8_t Log10i (uint32_t value);
static uint8_t Log10i (uint64_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Real logarithm to base 10                                             //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static flt32_t Log10 (flt32_t value);
static flt64_t Log10 (flt64_t value);
static flt32_t Log10p1 (flt32_t value);
static flt64_t Log10p1 (flt64_t value);
static flt32v4_t Log10 (flt32v4_t value);
static flt64v2_t Log10 (flt64v2_t value);
static flt32v4_t Log10p1 (flt32v4_t value);
static flt64v2_t Log10p1 (flt64v2_t value);

//============================================================================//
//      Logarithm to base E (natural logarithm)                               //
//============================================================================//
static flt32_t Log (flt32_t value);
static flt64_t Log (flt64_t value);
static flt32_t Logp1 (flt32_t value);
static flt64_t Logp1 (flt64_t value);
static flt32v4_t Log (flt32v4_t value);
static flt64v2_t Log (flt64v2_t value);
static flt32v4_t Logp1 (flt32v4_t value);
static flt64v2_t Logp1 (flt64v2_t value);

//****************************************************************************//
//      Trigonometric functions                                               //
//****************************************************************************//

//============================================================================//
//      Hypotenuse                                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      2 dimensional hypotenuse                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static flt32_t Hypot2D (flt32_t cath1, flt32_t cath2);
static flt64_t Hypot2D (flt64_t cath1, flt64_t cath2);
static flt32v4_t Hypot2D (flt32v4_t cath1, flt32v4_t cath2);
static flt64v2_t Hypot2D (flt64v2_t cath1, flt64v2_t cath2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      3 dimensional hypotenuse                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static flt32_t Hypot3D (flt32_t cath1, flt32_t cath2, flt32_t cath3);
static flt64_t Hypot3D (flt64_t cath1, flt64_t cath2, flt64_t cath3);
static flt32v4_t Hypot3D (flt32v4_t cath1, flt32v4_t cath2, flt32v4_t cath3);
static flt64v2_t Hypot3D (flt64v2_t cath1, flt64v2_t cath2, flt64v2_t cath3);

//============================================================================//
//      Cathetus                                                              //
//============================================================================//
static flt32_t Cath (flt32_t hypot, flt32_t cath);
static flt64_t Cath (flt64_t hypot, flt64_t cath);
static flt32v4_t Cath (flt32v4_t hypot, flt32v4_t cath);
static flt64v2_t Cath (flt64v2_t hypot, flt64v2_t cath);

//============================================================================//
//      Trigonometric sine                                                    //
//============================================================================//
static flt32_t Sin (flt32_t value);
static flt64_t Sin (flt64_t value);
static flt32v4_t Sin (flt32v4_t value);
static flt64v2_t Sin (flt64v2_t value);

//============================================================================//
//      Trigonometric cosine                                                  //
//============================================================================//
static flt32_t Cos (flt32_t value);
static flt64_t Cos (flt64_t value);
static flt32v4_t Cos (flt32v4_t value);
static flt64v2_t Cos (flt64v2_t value);

//============================================================================//
//      Trigonometric sine and cosine                                         //
//============================================================================//
static void SinCos (flt32_t *sin, flt32_t *cos, flt32_t value);
static void SinCos (flt64_t *sin, flt64_t *cos, flt64_t value);
static void SinCos (flt32v4_t *sin, flt32v4_t *cos, flt32v4_t value);
static void SinCos (flt64v2_t *sin, flt64v2_t *cos, flt64v2_t value);

//============================================================================//
//      Trigonometric tangent                                                 //
//============================================================================//
static flt32_t Tan (flt32_t value);
static flt64_t Tan (flt64_t value);
static flt32v4_t Tan (flt32v4_t value);
static flt64v2_t Tan (flt64v2_t value);

//****************************************************************************//
//      Inverse trigonometric functions                                       //
//****************************************************************************//

//============================================================================//
//      Inverse trigonometric sine                                            //
//============================================================================//
static flt32_t ArcSin (flt32_t value);
static flt64_t ArcSin (flt64_t value);
static flt32v4_t ArcSin (flt32v4_t value);
static flt64v2_t ArcSin (flt64v2_t value);

//============================================================================//
//      Inverse trigonometric cosine                                          //
//============================================================================//
static flt32_t ArcCos (flt32_t value);
static flt64_t ArcCos (flt64_t value);
static flt32v4_t ArcCos (flt32v4_t value);
static flt64v2_t ArcCos (flt64v2_t value);

//============================================================================//
//      Inverse trigonometric tangent                                         //
//============================================================================//
static flt32_t ArcTan (flt32_t value);
static flt64_t ArcTan (flt64_t value);
static flt32_t ArcTan2 (flt32_t sin, flt32_t cos);
static flt64_t ArcTan2 (flt64_t sin, flt64_t cos);
static flt32v4_t ArcTan (flt32v4_t value);
static flt64v2_t ArcTan (flt64v2_t value);
static flt32v4_t ArcTan2 (flt32v4_t sin, flt32v4_t cos);
static flt64v2_t ArcTan2 (flt64v2_t sin, flt64v2_t cos);

//****************************************************************************//
//      Hyperbolic functions                                                  //
//****************************************************************************//

//============================================================================//
//      Hyperbolic sine                                                       //
//============================================================================//
static flt32_t SinH (flt32_t value);
static flt64_t SinH (flt64_t value);
static flt32v4_t SinH (flt32v4_t value);
static flt64v2_t SinH (flt64v2_t value);

//============================================================================//
//      Hyperbolic cosine                                                     //
//============================================================================//
static flt32_t CosH (flt32_t value);
static flt64_t CosH (flt64_t value);
static flt32v4_t CosH (flt32v4_t value);
static flt64v2_t CosH (flt64v2_t value);

//============================================================================//
//      Hyperbolic tangent                                                    //
//============================================================================//
static flt32_t TanH (flt32_t value);
static flt64_t TanH (flt64_t value);
static flt32v4_t TanH (flt32v4_t value);
static flt64v2_t TanH (flt64v2_t value);

//****************************************************************************//
//      Inverse hyperbolic functions                                          //
//****************************************************************************//

//============================================================================//
//      Inverse hyperbolic sine                                               //
//============================================================================//
static flt32_t ArcSinH (flt32_t value);
static flt64_t ArcSinH (flt64_t value);
static flt32v4_t ArcSinH (flt32v4_t value);
static flt64v2_t ArcSinH (flt64v2_t value);

//============================================================================//
//      Inverse hyperbolic cosine                                             //
//============================================================================//
static flt32_t ArcCosH (flt32_t value);
static flt64_t ArcCosH (flt64_t value);
static flt32v4_t ArcCosH (flt32v4_t value);
static flt64v2_t ArcCosH (flt64v2_t value);

//============================================================================//
//      Inverse hyperbolic tangent                                            //
//============================================================================//
static flt32_t ArcTanH (flt32_t value);
static flt64_t ArcTanH (flt64_t value);
static flt32v4_t ArcTanH (flt32v4_t value);
static flt64v2_t ArcTanH (flt64v2_t value);

//****************************************************************************//
//      Rounding                                                              //
//****************************************************************************//

// Round down (floor)
static flt32_t RoundDown (flt32_t value);
static flt64_t RoundDown (flt64_t value);
static flt32v4_t RoundDown (flt32v4_t value);
static flt64v2_t RoundDown (flt64v2_t value);

// Round up (ceil)
static flt32_t RoundUp (flt32_t value);
static flt64_t RoundUp (flt64_t value);
static flt32v4_t RoundUp (flt32v4_t value);
static flt64v2_t RoundUp (flt64v2_t value);

// Round to nearest even integer
static flt32_t RoundInt (flt32_t value);
static flt64_t RoundInt (flt64_t value);
static flt32v4_t RoundInt (flt32v4_t value);
static flt64v2_t RoundInt (flt64v2_t value);

// Round to nearest integer, away from zero
static flt32_t Round (flt32_t value);
static flt64_t Round (flt64_t value);
static flt32v4_t Round (flt32v4_t value);
static flt64v2_t Round (flt64v2_t value);

// Round to nearest integer, toward zero (truncation)
static flt32_t Truncate (flt32_t value);
static flt64_t Truncate (flt64_t value);
static flt32v4_t Truncate (flt32v4_t value);
static flt64v2_t Truncate (flt64v2_t value);

// Fractional part
static flt32_t Frac (flt32_t value);
static flt64_t Frac (flt64_t value);
static flt32v4_t Frac (flt32v4_t value);
static flt64v2_t Frac (flt64v2_t value);

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
//      Bitwise operations                                                    //
//****************************************************************************//

//============================================================================//
//      Byte swap                                                             //
//============================================================================//

// Unsigned integer types
uint8_t Math_ByteSwap_uint8 (uint8_t value);
uint16_t Math_ByteSwap_uint16 (uint16_t value);
uint32_t Math_ByteSwap_uint32 (uint32_t value);
uint64_t Math_ByteSwap_uint64 (uint64_t value);
uint8v16_t Math_ByteSwap_uint8v16 (uint8v16_t value);
uint16v8_t Math_ByteSwap_uint16v8 (uint16v8_t value);
uint32v4_t Math_ByteSwap_uint32v4 (uint32v4_t value);
uint64v2_t Math_ByteSwap_uint64v2 (uint64v2_t value);

// Signed integer types
sint8_t Math_ByteSwap_sint8 (sint8_t value);
sint16_t Math_ByteSwap_sint16 (sint16_t value);
sint32_t Math_ByteSwap_sint32 (sint32_t value);
sint64_t Math_ByteSwap_sint64 (sint64_t value);
sint8v16_t Math_ByteSwap_sint8v16 (sint8v16_t value);
sint16v8_t Math_ByteSwap_sint16v8 (sint16v8_t value);
sint32v4_t Math_ByteSwap_sint32v4 (sint32v4_t value);
sint64v2_t Math_ByteSwap_sint64v2 (sint64v2_t value);

//============================================================================//
//      Bit reversal permutation                                              //
//============================================================================//

// Unsigned integer types
uint8_t Math_BitReverse_uint8 (uint8_t value);
uint16_t Math_BitReverse_uint16 (uint16_t value);
uint32_t Math_BitReverse_uint32 (uint32_t value);
uint64_t Math_BitReverse_uint64 (uint64_t value);
uint8v16_t Math_BitReverse_uint8v16 (uint8v16_t value);
uint16v8_t Math_BitReverse_uint16v8 (uint16v8_t value);
uint32v4_t Math_BitReverse_uint32v4 (uint32v4_t value);
uint64v2_t Math_BitReverse_uint64v2 (uint64v2_t value);

// Signed integer types
sint8_t Math_BitReverse_sint8 (sint8_t value);
sint16_t Math_BitReverse_sint16 (sint16_t value);
sint32_t Math_BitReverse_sint32 (sint32_t value);
sint64_t Math_BitReverse_sint64 (sint64_t value);
sint8v16_t Math_BitReverse_sint8v16 (sint8v16_t value);
sint16v8_t Math_BitReverse_sint16v8 (sint16v8_t value);
sint32v4_t Math_BitReverse_sint32v4 (sint32v4_t value);
sint64v2_t Math_BitReverse_sint64v2 (sint64v2_t value);

//============================================================================//
//      Bit scan                                                              //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Bit scan forward                                                      //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
uint8_t Math_ScanForward_uint8 (uint8_t value);
uint16_t Math_ScanForward_uint16 (uint16_t value);
uint32_t Math_ScanForward_uint32 (uint32_t value);
uint64_t Math_ScanForward_uint64 (uint64_t value);

// Signed integer types
sint8_t Math_ScanForward_sint8 (sint8_t value);
sint16_t Math_ScanForward_sint16 (sint16_t value);
sint32_t Math_ScanForward_sint32 (sint32_t value);
sint64_t Math_ScanForward_sint64 (sint64_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Bit scan backward                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
uint8_t Math_ScanBackward_uint8 (uint8_t value);
uint16_t Math_ScanBackward_uint16 (uint16_t value);
uint32_t Math_ScanBackward_uint32 (uint32_t value);
uint64_t Math_ScanBackward_uint64 (uint64_t value);

// Signed integer types
sint8_t Math_ScanBackward_sint8 (sint8_t value);
sint16_t Math_ScanBackward_sint16 (sint16_t value);
sint32_t Math_ScanBackward_sint32 (sint32_t value);
sint64_t Math_ScanBackward_sint64 (sint64_t value);

//============================================================================//
//      Circular rotation                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Circular rotation to the left                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
uint8_t Math_RotateLeft_uint8 (uint8_t value, uint8_t shift);
uint16_t Math_RotateLeft_uint16 (uint16_t value, uint8_t shift);
uint32_t Math_RotateLeft_uint32 (uint32_t value, uint8_t shift);
uint64_t Math_RotateLeft_uint64 (uint64_t value, uint8_t shift);

// Signed integer types
sint8_t Math_RotateLeft_sint8 (sint8_t value, uint8_t shift);
sint16_t Math_RotateLeft_sint16 (sint16_t value, uint8_t shift);
sint32_t Math_RotateLeft_sint32 (sint32_t value, uint8_t shift);
sint64_t Math_RotateLeft_sint64 (sint64_t value, uint8_t shift);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Circular rotation to the right                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
uint8_t Math_RotateRight_uint8 (uint8_t value, uint8_t shift);
uint16_t Math_RotateRight_uint16 (uint16_t value, uint8_t shift);
uint32_t Math_RotateRight_uint32 (uint32_t value, uint8_t shift);
uint64_t Math_RotateRight_uint64 (uint64_t value, uint8_t shift);

// Signed integer types
sint8_t Math_RotateRight_sint8 (sint8_t value, uint8_t shift);
sint16_t Math_RotateRight_sint16 (sint16_t value, uint8_t shift);
sint32_t Math_RotateRight_sint32 (sint32_t value, uint8_t shift);
sint64_t Math_RotateRight_sint64 (sint64_t value, uint8_t shift);

//============================================================================//
//      Population count                                                      //
//============================================================================//

// Unsigned integer types
uint8_t Math_PopCount_uint8 (uint8_t value);
uint16_t Math_PopCount_uint16 (uint16_t value);
uint32_t Math_PopCount_uint32 (uint32_t value);
uint64_t Math_PopCount_uint64 (uint64_t value);
uint8v16_t Math_PopCount_uint8v16 (uint8v16_t value);
uint16v8_t Math_PopCount_uint16v8 (uint16v8_t value);
uint32v4_t Math_PopCount_uint32v4 (uint32v4_t value);
uint64v2_t Math_PopCount_uint64v2 (uint64v2_t value);

// Signed integer types
sint8_t Math_PopCount_sint8 (sint8_t value);
sint16_t Math_PopCount_sint16 (sint16_t value);
sint32_t Math_PopCount_sint32 (sint32_t value);
sint64_t Math_PopCount_sint64 (sint64_t value);
sint8v16_t Math_PopCount_sint8v16 (sint8v16_t value);
sint16v8_t Math_PopCount_sint16v8 (sint16v8_t value);
sint32v4_t Math_PopCount_sint32v4 (sint32v4_t value);
sint64v2_t Math_PopCount_sint64v2 (sint64v2_t value);

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Absolute value                                                        //
//============================================================================//

// Signed integer types
uint8_t Math_Abs_sint8 (sint8_t value);
uint16_t Math_Abs_sint16 (sint16_t value);
uint32_t Math_Abs_sint32 (sint32_t value);
uint64_t Math_Abs_sint64 (sint64_t value);
uint8v16_t Math_Abs_sint8v16 (sint8v16_t value);
uint16v8_t Math_Abs_sint16v8 (sint16v8_t value);
uint32v4_t Math_Abs_sint32v4 (sint32v4_t value);
uint64v2_t Math_Abs_sint64v2 (sint64v2_t value);

// Floating-point types
flt32_t Math_Abs_flt32 (flt32_t value);
flt64_t Math_Abs_flt64 (flt64_t value);
flt32v4_t Math_Abs_flt32v4 (flt32v4_t value);
flt64v2_t Math_Abs_flt64v2 (flt64v2_t value);

//============================================================================//
//      Negative absolute value                                               //
//============================================================================//

// Signed integer types
sint8_t Math_NegAbs_sint8 (sint8_t value);
sint16_t Math_NegAbs_sint16 (sint16_t value);
sint32_t Math_NegAbs_sint32 (sint32_t value);
sint64_t Math_NegAbs_sint64 (sint64_t value);
sint8v16_t Math_NegAbs_sint8v16 (sint8v16_t value);
sint16v8_t Math_NegAbs_sint16v8 (sint16v8_t value);
sint32v4_t Math_NegAbs_sint32v4 (sint32v4_t value);
sint64v2_t Math_NegAbs_sint64v2 (sint64v2_t value);

// Floating-point types
flt32_t Math_NegAbs_flt32 (flt32_t value);
flt64_t Math_NegAbs_flt64 (flt64_t value);
flt32v4_t Math_NegAbs_flt32v4 (flt32v4_t value);
flt64v2_t Math_NegAbs_flt64v2 (flt64v2_t value);

//============================================================================//
//      Number sign                                                           //
//============================================================================//

// Signed integer types
sint8_t Math_Sign_sint8 (sint8_t value);
sint16_t Math_Sign_sint16 (sint16_t value);
sint32_t Math_Sign_sint32 (sint32_t value);
sint64_t Math_Sign_sint64 (sint64_t value);
sint8v16_t Math_Sign_sint8v16 (sint8v16_t value);
sint16v8_t Math_Sign_sint16v8 (sint16v8_t value);
sint32v4_t Math_Sign_sint32v4 (sint32v4_t value);
sint64v2_t Math_Sign_sint64v2 (sint64v2_t value);

// Floating-point types
flt32_t Math_Sign_flt32 (flt32_t value);
flt64_t Math_Sign_flt64 (flt64_t value);
flt32v4_t Math_Sign_flt32v4 (flt32v4_t value);
flt64v2_t Math_Sign_flt64v2 (flt64v2_t value);

//============================================================================//
//      Square root                                                           //
//============================================================================//

// Unsigned integer types
uint8_t Math_Sqrt_uint8 (uint8_t value);
uint16_t Math_Sqrt_uint16 (uint16_t value);
uint32_t Math_Sqrt_uint32 (uint32_t value);
uint64_t Math_Sqrt_uint64 (uint64_t value);

// Floating-point types
flt32_t Math_Sqrt_flt32 (flt32_t value);
flt64_t Math_Sqrt_flt64 (flt64_t value);
flt32v4_t Math_Sqrt_flt32v4 (flt32v4_t value);
flt64v2_t Math_Sqrt_flt64v2 (flt64v2_t value);

//============================================================================//
//      Square value                                                          //
//============================================================================//

// Unsigned integer types
uint8_t Math_Sqr_uint8 (uint8_t value);
uint16_t Math_Sqr_uint16 (uint16_t value);
uint32_t Math_Sqr_uint32 (uint32_t value);
uint64_t Math_Sqr_uint64 (uint64_t value);

// Signed integer types
sint8_t Math_Sqr_sint8 (sint8_t value);
sint16_t Math_Sqr_sint16 (sint16_t value);
sint32_t Math_Sqr_sint32 (sint32_t value);
sint64_t Math_Sqr_sint64 (sint64_t value);

// Floating-point types
flt32_t Math_Sqr_flt32 (flt32_t value);
flt64_t Math_Sqr_flt64 (flt64_t value);
flt32v4_t Math_Sqr_flt32v4 (flt32v4_t value);
flt64v2_t Math_Sqr_flt64v2 (flt64v2_t value);

//============================================================================//
//      Cube value                                                            //
//============================================================================//

// Unsigned integer types
uint8_t Math_Cube_uint8 (uint8_t value);
uint16_t Math_Cube_uint16 (uint16_t value);
uint32_t Math_Cube_uint32 (uint32_t value);
uint64_t Math_Cube_uint64 (uint64_t value);

// Signed integer types
sint8_t Math_Cube_sint8 (sint8_t value);
sint16_t Math_Cube_sint16 (sint16_t value);
sint32_t Math_Cube_sint32 (sint32_t value);
sint64_t Math_Cube_sint64 (sint64_t value);

// Floating-point types
flt32_t Math_Cube_flt32 (flt32_t value);
flt64_t Math_Cube_flt64 (flt64_t value);
flt32v4_t Math_Cube_flt32v4 (flt32v4_t value);
flt64v2_t Math_Cube_flt64v4 (flt64v2_t value);

//============================================================================//
//      Inverse value                                                         //
//============================================================================//
flt32_t Math_InverseValue_flt32 (flt32_t value);
flt64_t Math_InverseValue_flt64 (flt64_t value);
flt32v4_t Math_InverseValue_flt32v4 (flt32v4_t value);
flt64v2_t Math_InverseValue_flt64v2 (flt64v2_t value);

//============================================================================//
//      Inverse square value                                                  //
//============================================================================//
flt32_t Math_InverseSquare_flt32 (flt32_t value);
flt64_t Math_InverseSquare_flt64 (flt64_t value);
flt32v4_t Math_InverseSquare_flt32v4 (flt32v4_t value);
flt64v2_t Math_InverseSquare_flt64v2 (flt64v2_t value);

//============================================================================//
//      Inverse cube value                                                    //
//============================================================================//
flt32_t Math_InverseCube_flt32 (flt32_t value);
flt64_t Math_InverseCube_flt64 (flt64_t value);
flt32v4_t Math_InverseCube_flt32v4 (flt32v4_t value);
flt64v2_t Math_InverseCube_flt64v2 (flt64v2_t value);

//============================================================================//
//      Three-state comparison                                                //
//============================================================================//

// Unsigned integer types
sint8_t Math_Compare_uint8 (uint8_t value1, uint8_t value2);
sint16_t Math_Compare_uint16 (uint16_t value1, uint16_t value2);
sint32_t Math_Compare_uint32 (uint32_t value1, uint32_t value2);
sint64_t Math_Compare_uint64 (uint64_t value1, uint64_t value2);
sint8v16_t Math_Compare_uint8v16 (uint8v16_t value1, uint8v16_t value2);
sint16v8_t Math_Compare_uint16v8 (uint16v8_t value1, uint16v8_t value2);
sint32v4_t Math_Compare_uint32v4 (uint32v4_t value1, uint32v4_t value2);
sint64v2_t Math_Compare_uint64v2 (uint64v2_t value1, uint64v2_t value2);

// Signed integer types
sint8_t Math_Compare_sint8 (sint8_t value1, sint8_t value2);
sint16_t Math_Compare_sint16 (sint16_t value1, sint16_t value2);
sint32_t Math_Compare_sint32 (sint32_t value1, sint32_t value2);
sint64_t Math_Compare_sint64 (sint64_t value1, sint64_t value2);
sint8v16_t Math_Compare_sint8v16 (sint8v16_t value1, sint8v16_t value2);
sint16v8_t Math_Compare_sint16v8 (sint16v8_t value1, sint16v8_t value2);
sint32v4_t Math_Compare_sint32v4 (sint32v4_t value1, sint32v4_t value2);
sint64v2_t Math_Compare_sint64v2 (sint64v2_t value1, sint64v2_t value2);

// Floating-point types
flt32_t Math_Compare_flt32 (flt32_t value1, flt32_t value2);
flt64_t Math_Compare_flt64 (flt64_t value1, flt64_t value2);
flt32v4_t Math_Compare_flt32v4 (flt32v4_t value1, flt32v4_t value2);
flt64v2_t Math_Compare_flt64v2 (flt64v2_t value1, flt64v2_t value2);

//============================================================================//
//      Minimum and maximum absolute value                                    //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Minimum absolute value                                                //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Signed integer types
uint8_t Math_MinAbs_sint8 (sint8_t value1, sint8_t value2);
uint16_t Math_MinAbs_sint16 (sint16_t value1, sint16_t value2);
uint32_t Math_MinAbs_sint32 (sint32_t value1, sint32_t value2);
uint64_t Math_MinAbs_sint64 (sint64_t value1, sint64_t value2);
uint8v16_t Math_MinAbs_sint8v16 (sint8v16_t value1, sint8v16_t value2);
uint16v8_t Math_MinAbs_sint16v8 (sint16v8_t value1, sint16v8_t value2);
uint32v4_t Math_MinAbs_sint32v4 (sint32v4_t value1, sint32v4_t value2);

// Floating-point types
flt32_t Math_MinAbs_flt32 (flt32_t value1, flt32_t value2);
flt64_t Math_MinAbs_flt64 (flt64_t value1, flt64_t value2);
flt32v4_t Math_MinAbs_flt32v4 (flt32v4_t value1, flt32v4_t value2);
flt64v2_t Math_MinAbs_flt64v2 (flt64v2_t value1, flt64v2_t value2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Maximum absolute value                                                //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Signed integer types
uint8_t Math_MaxAbs_sint8 (sint8_t value1, sint8_t value2);
uint16_t Math_MaxAbs_sint16 (sint16_t value1, sint16_t value2);
uint32_t Math_MaxAbs_sint32 (sint32_t value1, sint32_t value2);
uint64_t Math_MaxAbs_sint64 (sint64_t value1, sint64_t value2);
uint8v16_t Math_MaxAbs_sint8v16 (sint8v16_t value1, sint8v16_t value2);
uint16v8_t Math_MaxAbs_sint16v8 (sint16v8_t value1, sint16v8_t value2);
uint32v4_t Math_MaxAbs_sint32v4 (sint32v4_t value1, sint32v4_t value2);

// Floating-point types
flt32_t Math_MaxAbs_flt32 (flt32_t value1, flt32_t value2);
flt64_t Math_MaxAbs_flt64 (flt64_t value1, flt64_t value2);
flt32v4_t Math_MaxAbs_flt32v4 (flt32v4_t value1, flt32v4_t value2);
flt64v2_t Math_MaxAbs_flt64v2 (flt64v2_t value1, flt64v2_t value2);

//============================================================================//
//      Minimum and maximum value                                             //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Minimum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
uint8_t Math_Min_uint8 (uint8_t value1, uint8_t value2);
uint16_t Math_Min_uint16 (uint16_t value1, uint16_t value2);
uint32_t Math_Min_uint32 (uint32_t value1, uint32_t value2);
uint64_t Math_Min_uint64 (uint64_t value1, uint64_t value2);
uint8v16_t Math_Min_uint8v16 (uint8v16_t value1, uint8v16_t value2);
uint16v8_t Math_Min_uint16v8 (uint16v8_t value1, uint16v8_t value2);
uint32v4_t Math_Min_uint32v4 (uint32v4_t value1, uint32v4_t value2);

// Signed integer types
sint8_t Math_Min_sint8 (sint8_t value1, sint8_t value2);
sint16_t Math_Min_sint16 (sint16_t value1, sint16_t value2);
sint32_t Math_Min_sint32 (sint32_t value1, sint32_t value2);
sint64_t Math_Min_sint64 (sint64_t value1, sint64_t value2);
sint8v16_t Math_Min_sint8v16 (sint8v16_t value1, sint8v16_t value2);
sint16v8_t Math_Min_sint16v8 (sint16v8_t value1, sint16v8_t value2);
sint32v4_t Math_Min_sint32v4 (sint32v4_t value1, sint32v4_t value2);

// Floating-point types
flt32_t Math_Min_flt32 (flt32_t value1, flt32_t value2);
flt64_t Math_Min_flt64 (flt64_t value1, flt64_t value2);
flt32v4_t Math_Min_flt32v4 (flt32v4_t value1, flt32v4_t value2);
flt64v2_t Math_Min_flt64v2 (flt64v2_t value1, flt64v2_t value2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Maximum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
uint8_t Math_Max_uint8 (uint8_t value1, uint8_t value2);
uint16_t Math_Max_uint16 (uint16_t value1, uint16_t value2);
uint32_t Math_Max_uint32 (uint32_t value1, uint32_t value2);
uint64_t Math_Max_uint64 (uint64_t value1, uint64_t value2);
uint8v16_t Math_Max_uint8v16 (uint8v16_t value1, uint8v16_t value2);
uint16v8_t Math_Max_uint16v8 (uint16v8_t value1, uint16v8_t value2);
uint32v4_t Math_Max_uint32v4 (uint32v4_t value1, uint32v4_t value2);

// Signed integer types
sint8_t Math_Max_sint8 (sint8_t value1, sint8_t value2);
sint16_t Math_Max_sint16 (sint16_t value1, sint16_t value2);
sint32_t Math_Max_sint32 (sint32_t value1, sint32_t value2);
sint64_t Math_Max_sint64 (sint64_t value1, sint64_t value2);
sint8v16_t Math_Max_sint8v16 (sint8v16_t value1, sint8v16_t value2);
sint16v8_t Math_Max_sint16v8 (sint16v8_t value1, sint16v8_t value2);
sint32v4_t Math_Max_sint32v4 (sint32v4_t value1, sint32v4_t value2);

// Floating-point types
flt32_t Math_Max_flt32 (flt32_t value1, flt32_t value2);
flt64_t Math_Max_flt64 (flt64_t value1, flt64_t value2);
flt32v4_t Math_Max_flt32v4 (flt32v4_t value1, flt32v4_t value2);
flt64v2_t Math_Max_flt64v2 (flt64v2_t value1, flt64v2_t value2);

//============================================================================//
//      Greatest common divisor                                               //
//============================================================================//

// Unsigned integer types
uint8_t Math_GCD_uint8 (uint8_t value1, uint8_t value2);
uint16_t Math_GCD_uint16 (uint16_t value1, uint16_t value2);
uint32_t Math_GCD_uint32 (uint32_t value1, uint32_t value2);
uint64_t Math_GCD_uint64 (uint64_t value1, uint64_t value2);

// Signed integer types
uint8_t Math_GCD_sint8 (sint8_t value1, sint8_t value2);
uint16_t Math_GCD_sint16 (sint16_t value1, sint16_t value2);
uint32_t Math_GCD_sint32 (sint32_t value1, sint32_t value2);
uint64_t Math_GCD_sint64 (sint64_t value1, sint64_t value2);

//============================================================================//
//      Least common multiple                                                 //
//============================================================================//

// Unsigned integer types
uint8_t Math_LCM_uint8 (uint8_t value1, uint8_t value2);
uint16_t Math_LCM_uint16 (uint16_t value1, uint16_t value2);
uint32_t Math_LCM_uint32 (uint32_t value1, uint32_t value2);
uint64_t Math_LCM_uint64 (uint64_t value1, uint64_t value2);

// Signed integer types
uint8_t Math_LCM_sint8 (sint8_t value1, sint8_t value2);
uint16_t Math_LCM_sint16 (sint16_t value1, sint16_t value2);
uint32_t Math_LCM_sint32 (sint32_t value1, sint32_t value2);
uint64_t Math_LCM_sint64 (sint64_t value1, sint64_t value2);

//============================================================================//
//      Cancellation                                                          //
//============================================================================//

// Unsigned integer types
void Math_Cancel_uint8 (uint8_t *value1, uint8_t *value2);
void Math_Cancel_uint16 (uint16_t *value1, uint16_t *value2);
void Math_Cancel_uint32 (uint32_t *value1, uint32_t *value2);
void Math_Cancel_uint64 (uint64_t *value1, uint64_t *value2);

// Signed integer types
void Math_Cancel_sint8 (sint8_t *value1, sint8_t *value2);
void Math_Cancel_sint16 (sint16_t *value1, sint16_t *value2);
void Math_Cancel_sint32 (sint32_t *value1, sint32_t *value2);
void Math_Cancel_sint64 (sint64_t *value1, sint64_t *value2);

//****************************************************************************//
//      Observational error                                                   //
//****************************************************************************//

//============================================================================//
//      Absolute error                                                        //
//============================================================================//
flt32_t Math_AbsError_flt32 (flt32_t approximate, flt32_t accurate);
flt64_t Math_AbsError_flt64 (flt64_t approximate, flt64_t accurate);
flt32v4_t Math_AbsError_flt32v4 (flt32v4_t approximate, flt32v4_t accurate);
flt64v2_t Math_AbsError_flt64v2 (flt64v2_t approximate, flt64v2_t accurate);

//============================================================================//
//      Relative error                                                        //
//============================================================================//
flt32_t Math_RelError_flt32 (flt32_t approximate, flt32_t accurate);
flt64_t Math_RelError_flt64 (flt64_t approximate, flt64_t accurate);
flt32v4_t Math_RelError_flt32v4 (flt32v4_t approximate, flt32v4_t accurate);
flt64v2_t Math_RelError_flt64v2 (flt64v2_t approximate, flt64v2_t accurate);

//****************************************************************************//
//      Scale functions                                                       //
//****************************************************************************//

// Scale by power of 2
flt32_t Math_Scale2_flt32 (flt32_t value, sint16_t exp);
flt64_t Math_Scale2_flt64 (flt64_t value, sint16_t exp);

// Scale by power of 10
flt32_t Math_Scale10_flt32 (flt32_t value, sint16_t exp);
flt64_t Math_Scale10_flt64 (flt64_t value, sint16_t exp);

//****************************************************************************//
//      Exponentiation functions                                              //
//****************************************************************************//

//============================================================================//
//      Exponentiation by base 2                                              //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Integer exponentiation by base 2                                      //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
uint64_t Math_Exp2i_uint64 (uint8_t exp);
flt32_t Math_Exp2i_flt32 (sint8_t exp);
flt64_t Math_Exp2i_flt64 (sint16_t exp);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Real exponentiation by base 2                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
flt32_t Math_Exp2_flt32 (flt32_t exp);
flt64_t Math_Exp2_flt64 (flt64_t exp);
flt32_t Math_Exp2m1_flt32 (flt32_t exp);
flt64_t Math_Exp2m1_flt64 (flt64_t exp);
flt32v4_t Math_Exp2_flt32v4 (flt32v4_t exp);
flt64v2_t Math_Exp2_flt64v2 (flt64v2_t exp);
flt32v4_t Math_Exp2m1_flt32v4 (flt32v4_t exp);
flt64v2_t Math_Exp2m1_flt64v2 (flt64v2_t exp);

//============================================================================//
//      Exponentiation by base 10                                             //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Integer exponentiation by base 10                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
uint64_t Math_Exp10i_uint64 (uint8_t exp);
flt32_t Math_Exp10i_flt32 (sint8_t exp);
flt64_t Math_Exp10i_flt64 (sint16_t exp);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Real exponentiation by base 10                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
flt32_t Math_Exp10_flt32 (flt32_t exp);
flt64_t Math_Exp10_flt64 (flt64_t exp);
flt32_t Math_Exp10m1_flt32 (flt32_t exp);
flt64_t Math_Exp10m1_flt64 (flt64_t exp);
flt32v4_t Math_Exp10_flt32v4 (flt32v4_t exp);
flt64v2_t Math_Exp10_flt64v2 (flt64v2_t exp);
flt32v4_t Math_Exp10m1_flt32v4 (flt32v4_t exp);
flt64v2_t Math_Exp10m1_flt64v2 (flt64v2_t exp);

//============================================================================//
//      Exponentiation by base E (natural logarithm)                          //
//============================================================================//
flt32_t Math_Exp_flt32 (flt32_t exp);
flt64_t Math_Exp_flt64 (flt64_t exp);
flt32_t Math_Expm1_flt32 (flt32_t exp);
flt64_t Math_Expm1_flt64 (flt64_t exp);
flt32v4_t Math_Exp_flt32v4 (flt32v4_t exp);
flt64v2_t Math_Exp_flt64v2 (flt64v2_t exp);
flt32v4_t Math_Expm1_flt32v4 (flt32v4_t exp);
flt64v2_t Math_Expm1_flt64v2 (flt64v2_t exp);

//============================================================================//
//      Exponentiation by custom base                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Integer exponentiation by custom base                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
uint8_t Math_ExpBi_uint8 (uint8_t base, uint8_t exp);
uint16_t Math_ExpBi_uint16 (uint16_t base, uint8_t exp);
uint32_t Math_ExpBi_uint32 (uint32_t base, uint8_t exp);
uint64_t Math_ExpBi_uint64 (uint64_t base, uint8_t exp);

// Signed integer types
sint8_t Math_ExpBi_sint8 (sint8_t base, uint8_t exp);
sint16_t Math_ExpBi_sint16 (sint16_t base, uint8_t exp);
sint32_t Math_ExpBi_sint32 (sint32_t base, uint8_t exp);
sint64_t Math_ExpBi_sint64 (sint64_t base, uint8_t exp);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Real exponentiation by custom base                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
flt32_t Math_ExpB_flt32 (flt32_t base, flt32_t exp);
flt64_t Math_ExpB_flt64 (flt64_t base, flt64_t exp);
flt32_t Math_ExpBm1_flt32 (flt32_t base, flt32_t exp);
flt64_t Math_ExpBm1_flt64 (flt64_t base, flt64_t exp);
flt32v4_t Math_ExpB_flt32v4 (flt32v4_t base, flt32v4_t exp);
flt64v2_t Math_ExpB_flt64v2 (flt64v2_t base, flt64v2_t exp);
flt32v4_t Math_ExpBm1_flt32v4 (flt32v4_t base, flt32v4_t exp);
flt64v2_t Math_ExpBm1_flt64v2 (flt64v2_t base, flt64v2_t exp);

//****************************************************************************//
//      Logarithmic functions                                                 //
//****************************************************************************//

//============================================================================//
//      Logarithm to base 2                                                   //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Integer logarithm to base 2                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
uint8_t Math_Log2i_uint8 (uint8_t value);
uint8_t Math_Log2i_uint16 (uint16_t value);
uint8_t Math_Log2i_uint32 (uint32_t value);
uint8_t Math_Log2i_uint64 (uint64_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Real logarithm to base 2                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
flt32_t Math_Log2_flt32 (flt32_t value);
flt64_t Math_Log2_flt64 (flt64_t value);
flt32_t Math_Log2p1_flt32 (flt32_t value);
flt64_t Math_Log2p1_flt64 (flt64_t value);
flt32v4_t Math_Log2_flt32v4 (flt32v4_t value);
flt64v2_t Math_Log2_flt64v2 (flt64v2_t value);
flt32v4_t Math_Log2p1_flt32v4 (flt32v4_t value);
flt64v2_t Math_Log2p1_flt64v2 (flt64v2_t value);

//============================================================================//
//      Logarithm to base 10                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Integer logarithm to base 10                                          //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
uint8_t Math_Log10i_uint8 (uint8_t value);
uint8_t Math_Log10i_uint16 (uint16_t value);
uint8_t Math_Log10i_uint32 (uint32_t value);
uint8_t Math_Log10i_uint64 (uint64_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Real logarithm to base 10                                             //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
flt32_t Math_Log10_flt32 (flt32_t value);
flt64_t Math_Log10_flt64 (flt64_t value);
flt32_t Math_Log10p1_flt32 (flt32_t value);
flt64_t Math_Log10p1_flt64 (flt64_t value);
flt32v4_t Math_Log10_flt32v4 (flt32v4_t value);
flt64v2_t Math_Log10_flt64v2 (flt64v2_t value);
flt32v4_t Math_Log10p1_flt32v4 (flt32v4_t value);
flt64v2_t Math_Log10p1_flt64v2 (flt64v2_t value);

//============================================================================//
//      Logarithm to base E (natural logarithm)                               //
//============================================================================//
flt32_t Math_Log_flt32 (flt32_t value);
flt64_t Math_Log_flt64 (flt64_t value);
flt32_t Math_Logp1_flt32 (flt32_t value);
flt64_t Math_Logp1_flt64 (flt64_t value);
flt32v4_t Math_Log_flt32v4 (flt32v4_t value);
flt64v2_t Math_Log_flt64v2 (flt64v2_t value);
flt32v4_t Math_Logp1_flt32v4 (flt32v4_t value);
flt64v2_t Math_Logp1_flt64v2 (flt64v2_t value);

//****************************************************************************//
//      Trigonometric functions                                               //
//****************************************************************************//

//============================================================================//
//      Hypotenuse                                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      2 dimensional hypotenuse                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
flt32_t Math_Hypot2D_flt32 (flt32_t cath1, flt32_t cath2);
flt64_t Math_Hypot2D_flt64 (flt64_t cath1, flt64_t cath2);
flt32v4_t Math_Hypot2D_flt32v4 (flt32v4_t cath1, flt32v4_t cath2);
flt64v2_t Math_Hypot2D_flt64v2 (flt64v2_t cath1, flt64v2_t cath2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      3 dimensional hypotenuse                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
flt32_t Math_Hypot3D_flt32 (flt32_t cath1, flt32_t cath2, flt32_t cath3);
flt64_t Math_Hypot3D_flt64 (flt64_t cath1, flt64_t cath2, flt64_t cath3);
flt32v4_t Math_Hypot3D_flt32v4 (flt32v4_t cath1, flt32v4_t cath2, flt32v4_t cath3);
flt64v2_t Math_Hypot3D_flt64v2 (flt64v2_t cath1, flt64v2_t cath2, flt64v2_t cath3);

//============================================================================//
//      Cathetus                                                              //
//============================================================================//
flt32_t Math_Cath_flt32 (flt32_t hypot, flt32_t cath);
flt64_t Math_Cath_flt64 (flt64_t hypot, flt64_t cath);
flt32v4_t Math_Cath_flt32v4 (flt32v4_t hypot, flt32v4_t cath);
flt64v2_t Math_Cath_flt64v2 (flt64v2_t hypot, flt64v2_t cath);

//============================================================================//
//      Trigonometric sine                                                    //
//============================================================================//
flt32_t Math_Sin_flt32 (flt32_t value);
flt64_t Math_Sin_flt64 (flt64_t value);
flt32v4_t Math_Sin_flt32v4 (flt32v4_t value);
flt64v2_t Math_Sin_flt64v2 (flt64v2_t value);

//============================================================================//
//      Trigonometric cosine                                                  //
//============================================================================//
flt32_t Math_Cos_flt32 (flt32_t value);
flt64_t Math_Cos_flt64 (flt64_t value);
flt32v4_t Math_Cos_flt32v4 (flt32v4_t value);
flt64v2_t Math_Cos_flt64v2 (flt64v2_t value);

//============================================================================//
//      Trigonometric sine and cosine                                         //
//============================================================================//
void Math_SinCos_flt32 (flt32_t *sin, flt32_t *cos, flt32_t value);
void Math_SinCos_flt64 (flt64_t *sin, flt64_t *cos, flt64_t value);
void Math_SinCos_flt32v4 (flt32v4_t *sin, flt32v4_t *cos, flt32v4_t value);
void Math_SinCos_flt64v2 (flt64v2_t *sin, flt64v2_t *cos, flt64v2_t value);

//============================================================================//
//      Trigonometric tangent                                                 //
//============================================================================//
flt32_t Math_Tan_flt32 (flt32_t value);
flt64_t Math_Tan_flt64 (flt64_t value);
flt32v4_t Math_Tan_flt32v4 (flt32v4_t value);
flt64v2_t Math_Tan_flt64v2 (flt64v2_t value);

//****************************************************************************//
//      Inverse trigonometric functions                                       //
//****************************************************************************//

//============================================================================//
//      Inverse trigonometric sine                                            //
//============================================================================//
flt32_t Math_ArcSin_flt32 (flt32_t value);
flt64_t Math_ArcSin_flt64 (flt64_t value);
flt32v4_t Math_ArcSin_flt32v4 (flt32v4_t value);
flt64v2_t Math_ArcSin_flt64v2 (flt64v2_t value);

//============================================================================//
//      Inverse trigonometric cosine                                          //
//============================================================================//
flt32_t Math_ArcCos_flt32 (flt32_t value);
flt64_t Math_ArcCos_flt64 (flt64_t value);
flt32v4_t Math_ArcCos_flt32v4 (flt32v4_t value);
flt64v2_t Math_ArcCos_flt64v2 (flt64v2_t value);

//============================================================================//
//      Inverse trigonometric tangent                                         //
//============================================================================//
flt32_t Math_ArcTan_flt32 (flt32_t value);
flt64_t Math_ArcTan_flt64 (flt64_t value);
flt32_t Math_ArcTan2_flt32 (flt32_t sin, flt32_t cos);
flt64_t Math_ArcTan2_flt64 (flt64_t sin, flt64_t cos);
flt32v4_t Math_ArcTan_flt32v4 (flt32v4_t value);
flt64v2_t Math_ArcTan_flt64v2 (flt64v2_t value);
flt32v4_t Math_ArcTan2_flt32v4 (flt32v4_t sin, flt32v4_t cos);
flt64v2_t Math_ArcTan2_flt64v2 (flt64v2_t sin, flt64v2_t cos);

//****************************************************************************//
//      Hyperbolic functions                                                  //
//****************************************************************************//

//============================================================================//
//      Hyperbolic sine                                                       //
//============================================================================//
flt32_t Math_SinH_flt32 (flt32_t value);
flt64_t Math_SinH_flt64 (flt64_t value);
flt32v4_t Math_SinH_flt32v4 (flt32v4_t value);
flt64v2_t Math_SinH_flt64v2 (flt64v2_t value);

//============================================================================//
//      Hyperbolic cosine                                                     //
//============================================================================//
flt32_t Math_CosH_flt32 (flt32_t value);
flt64_t Math_CosH_flt64 (flt64_t value);
flt32v4_t Math_CosH_flt32v4 (flt32v4_t value);
flt64v2_t Math_CosH_flt64v2 (flt64v2_t value);

//============================================================================//
//      Hyperbolic tangent                                                    //
//============================================================================//
flt32_t Math_TanH_flt32 (flt32_t value);
flt64_t Math_TanH_flt64 (flt64_t value);
flt32v4_t Math_TanH_flt32v4 (flt32v4_t value);
flt64v2_t Math_TanH_flt64v2 (flt64v2_t value);

//****************************************************************************//
//      Inverse hyperbolic functions                                          //
//****************************************************************************//

//============================================================================//
//      Inverse hyperbolic sine                                               //
//============================================================================//
flt32_t Math_ArcSinH_flt32 (flt32_t value);
flt64_t Math_ArcSinH_flt64 (flt64_t value);
flt32v4_t Math_ArcSinH_flt32v4 (flt32v4_t value);
flt64v2_t Math_ArcSinH_flt64v2 (flt64v2_t value);

//============================================================================//
//      Inverse hyperbolic cosine                                             //
//============================================================================//
flt32_t Math_ArcCosH_flt32 (flt32_t value);
flt64_t Math_ArcCosH_flt64 (flt64_t value);
flt32v4_t Math_ArcCosH_flt32v4 (flt32v4_t value);
flt64v2_t Math_ArcCosH_flt64v2 (flt64v2_t value);

//============================================================================//
//      Inverse hyperbolic tangent                                            //
//============================================================================//
flt32_t Math_ArcTanH_flt32 (flt32_t value);
flt64_t Math_ArcTanH_flt64 (flt64_t value);
flt32v4_t Math_ArcTanH_flt32v4 (flt32v4_t value);
flt64v2_t Math_ArcTanH_flt64v2 (flt64v2_t value);

//****************************************************************************//
//      Rounding                                                              //
//****************************************************************************//

// Round down (floor)
flt32_t Math_RoundDown_flt32 (flt32_t value);
flt64_t Math_RoundDown_flt64 (flt64_t value);
flt32v4_t Math_RoundDown_flt32v4 (flt32v4_t value);
flt64v2_t Math_RoundDown_flt64v2 (flt64v2_t value);

// Round up (ceil)
flt32_t Math_RoundUp_flt32 (flt32_t value);
flt64_t Math_RoundUp_flt64 (flt64_t value);
flt32v4_t Math_RoundUp_flt32v4 (flt32v4_t value);
flt64v2_t Math_RoundUp_flt64v2 (flt64v2_t value);

// Round to nearest even integer
flt32_t Math_RoundInt_flt32 (flt32_t value);
flt64_t Math_RoundInt_flt64 (flt64_t value);
flt32v4_t Math_RoundInt_flt32v4 (flt32v4_t value);
flt64v2_t Math_RoundInt_flt64v2 (flt64v2_t value);

// Round to nearest integer, away from zero
flt32_t Math_Round_flt32 (flt32_t value);
flt64_t Math_Round_flt64 (flt64_t value);
flt32v4_t Math_Round_flt32v4 (flt32v4_t value);
flt64v2_t Math_Round_flt64v2 (flt64v2_t value);

// Round to nearest integer, toward zero (truncation)
flt32_t Math_Truncate_flt32 (flt32_t value);
flt64_t Math_Truncate_flt64 (flt64_t value);
flt32v4_t Math_Truncate_flt32v4 (flt32v4_t value);
flt64v2_t Math_Truncate_flt64v2 (flt64v2_t value);

// Fractional part
flt32_t Math_Frac_flt32 (flt32_t value);
flt64_t Math_Frac_flt64 (flt64_t value);
flt32v4_t Math_Frac_flt32v4 (flt32v4_t value);
flt64v2_t Math_Frac_flt64v2 (flt64v2_t value);

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
