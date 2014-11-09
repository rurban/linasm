/*                                                                       Array.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                  COMMON ROUTINES THAT ARE USEFUL FOR ARRAYS                  #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2014, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

//****************************************************************************//
//      Key compare function prototype                                        //
//****************************************************************************//
typedef sint64_t (*Cmp) (const void *key1, const void *key2);

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
class Array
{
public:

//****************************************************************************//
//      Initialization                                                        //
//****************************************************************************//

// Unsigned integer types
static void Init (uint8_t array[], size_t size, uint8_t value);
static void Init (uint16_t array[], size_t size, uint16_t value);
static void Init (uint32_t array[], size_t size, uint32_t value);
static void Init (uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static void Init (sint8_t array[], size_t size, sint8_t value);
static void Init (sint16_t array[], size_t size, sint16_t value);
static void Init (sint32_t array[], size_t size, sint32_t value);
static void Init (sint64_t array[], size_t size, sint64_t value);

// Floating-point types
static void Init (flt32_t array[], size_t size, flt32_t value);
static void Init (flt64_t array[], size_t size, flt64_t value);

// Other types
static void Init (size_t array[], size_t size, size_t value);

//****************************************************************************//
//      Copying                                                               //
//****************************************************************************//

// Unsigned integer types
static void Copy (uint8_t target[], const uint8_t source[], size_t size);
static void Copy (uint16_t target[], const uint16_t source[], size_t size);
static void Copy (uint32_t target[], const uint32_t source[], size_t size);
static void Copy (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
static void Copy (sint8_t target[], const sint8_t source[], size_t size);
static void Copy (sint16_t target[], const sint16_t source[], size_t size);
static void Copy (sint32_t target[], const sint32_t source[], size_t size);
static void Copy (sint64_t target[], const sint64_t source[], size_t size);

// Floating-point types
static void Copy (flt32_t target[], const flt32_t source[], size_t size);
static void Copy (flt64_t target[], const flt64_t source[], size_t size);

// Other types
static void Copy (size_t target[], const size_t source[], size_t size);
static void Copy (void *target, const void *source, size_t size);

//****************************************************************************//
//      Moving                                                                //
//****************************************************************************//

// Unsigned integer types
static void Move (uint8_t target[], const uint8_t source[], size_t size);
static void Move (uint16_t target[], const uint16_t source[], size_t size);
static void Move (uint32_t target[], const uint32_t source[], size_t size);
static void Move (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
static void Move (sint8_t target[], const sint8_t source[], size_t size);
static void Move (sint16_t target[], const sint16_t source[], size_t size);
static void Move (sint32_t target[], const sint32_t source[], size_t size);
static void Move (sint64_t target[], const sint64_t source[], size_t size);

// Floating-point types
static void Move (flt32_t target[], const flt32_t source[], size_t size);
static void Move (flt64_t target[], const flt64_t source[], size_t size);

// Other types
static void Move (size_t target[], const size_t source[], size_t size);
static void Move (void *target, const void *source, size_t size);

//****************************************************************************//
//      Pattern cloning                                                       //
//****************************************************************************//

// Unsigned integer types
static void Clone (uint8_t array[], size_t size, size_t psize);
static void Clone (uint16_t array[], size_t size, size_t psize);
static void Clone (uint32_t array[], size_t size, size_t psize);
static void Clone (uint64_t array[], size_t size, size_t psize);

// Signed integer types
static void Clone (sint8_t array[], size_t size, size_t psize);
static void Clone (sint16_t array[], size_t size, size_t psize);
static void Clone (sint32_t array[], size_t size, size_t psize);
static void Clone (sint64_t array[], size_t size, size_t psize);

// Floating-point types
static void Clone (flt32_t array[], size_t size, size_t psize);
static void Clone (flt64_t array[], size_t size, size_t psize);

// Other types
static void Clone (size_t array[], size_t size, size_t psize);
static void Clone (void *array, size_t size, size_t psize);

//****************************************************************************//
//      Data conversion                                                       //
//****************************************************************************//

// Conversion between floating-point types
static void Convert (flt64_t target[], const flt32_t source[], size_t size);
static void Convert (flt32_t target[], const flt64_t source[], size_t size);

// Conversion from signed integer types to floating-point types
static void Convert (flt32_t target[], const sint32_t source[], size_t size);
static void Convert (flt64_t target[], const sint32_t source[], size_t size);
static void Convert (flt32_t target[], const sint64_t source[], size_t size);
static void Convert (flt64_t target[], const sint64_t source[], size_t size);

// Conversion from floating-point types to signed integer types
static void Convert (sint32_t target[], const flt32_t source[], size_t size);
static void Convert (sint64_t target[], const flt32_t source[], size_t size);
static void Convert (sint32_t target[], const flt64_t source[], size_t size);
static void Convert (sint64_t target[], const flt64_t source[], size_t size);

// Truncating from floating-point types to signed integer types
static void Truncate (sint32_t target[], const flt32_t source[], size_t size);
static void Truncate (sint64_t target[], const flt32_t source[], size_t size);
static void Truncate (sint32_t target[], const flt64_t source[], size_t size);
static void Truncate (sint64_t target[], const flt64_t source[], size_t size);

//****************************************************************************//
//      Bitwise operations                                                    //
//****************************************************************************//

//============================================================================//
//      Bitwise NOT                                                           //
//============================================================================//

// Unsigned integer types
static void Not (uint8_t array[], size_t size);
static void Not (uint16_t array[], size_t size);
static void Not (uint32_t array[], size_t size);
static void Not (uint64_t array[], size_t size);

// Signed integer types
static void Not (sint8_t array[], size_t size);
static void Not (sint16_t array[], size_t size);
static void Not (sint32_t array[], size_t size);
static void Not (sint64_t array[], size_t size);

// Other types
static void Not (size_t array[], size_t size);

//============================================================================//
//      Bitwise AND                                                           //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Scalar bitwise AND                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void AndScalar (uint8_t target[], size_t size, uint8_t value);
static void AndScalar (uint16_t target[], size_t size, uint16_t value);
static void AndScalar (uint32_t target[], size_t size, uint32_t value);
static void AndScalar (uint64_t target[], size_t size, uint64_t value);

// Signed integer types
static void AndScalar (sint8_t target[], size_t size, sint8_t value);
static void AndScalar (sint16_t target[], size_t size, sint16_t value);
static void AndScalar (sint32_t target[], size_t size, sint32_t value);
static void AndScalar (sint64_t target[], size_t size, sint64_t value);

// Other types
static void AndScalar (size_t target[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Vector bitwise AND                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void AndVector (uint8_t target[], const uint8_t source[], size_t size);
static void AndVector (uint16_t target[], const uint16_t source[], size_t size);
static void AndVector (uint32_t target[], const uint32_t source[], size_t size);
static void AndVector (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
static void AndVector (sint8_t target[], const sint8_t source[], size_t size);
static void AndVector (sint16_t target[], const sint16_t source[], size_t size);
static void AndVector (sint32_t target[], const sint32_t source[], size_t size);
static void AndVector (sint64_t target[], const sint64_t source[], size_t size);

// Other types
static void AndVector (size_t target[], const size_t source[], size_t size);

//============================================================================//
//      Bitwise OR                                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Scalar bitwise OR                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void OrScalar (uint8_t target[], size_t size, uint8_t value);
static void OrScalar (uint16_t target[], size_t size, uint16_t value);
static void OrScalar (uint32_t target[], size_t size, uint32_t value);
static void OrScalar (uint64_t target[], size_t size, uint64_t value);

// Signed integer types
static void OrScalar (sint8_t target[], size_t size, sint8_t value);
static void OrScalar (sint16_t target[], size_t size, sint16_t value);
static void OrScalar (sint32_t target[], size_t size, sint32_t value);
static void OrScalar (sint64_t target[], size_t size, sint64_t value);

// Other types
static void OrScalar (size_t target[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Vector bitwise OR                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void OrVector (uint8_t target[], const uint8_t source[], size_t size);
static void OrVector (uint16_t target[], const uint16_t source[], size_t size);
static void OrVector (uint32_t target[], const uint32_t source[], size_t size);
static void OrVector (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
static void OrVector (sint8_t target[], const sint8_t source[], size_t size);
static void OrVector (sint16_t target[], const sint16_t source[], size_t size);
static void OrVector (sint32_t target[], const sint32_t source[], size_t size);
static void OrVector (sint64_t target[], const sint64_t source[], size_t size);

// Other types
static void OrVector (size_t target[], const size_t source[], size_t size);

//============================================================================//
//      Bitwise XOR                                                           //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Scalar bitwise XOR                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void XorScalar (uint8_t target[], size_t size, uint8_t value);
static void XorScalar (uint16_t target[], size_t size, uint16_t value);
static void XorScalar (uint32_t target[], size_t size, uint32_t value);
static void XorScalar (uint64_t target[], size_t size, uint64_t value);

// Signed integer types
static void XorScalar (sint8_t target[], size_t size, sint8_t value);
static void XorScalar (sint16_t target[], size_t size, sint16_t value);
static void XorScalar (sint32_t target[], size_t size, sint32_t value);
static void XorScalar (sint64_t target[], size_t size, sint64_t value);

// Other types
static void XorScalar (size_t target[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Vector bitwise XOR                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void XorVector (uint8_t target[], const uint8_t source[], size_t size);
static void XorVector (uint16_t target[], const uint16_t source[], size_t size);
static void XorVector (uint32_t target[], const uint32_t source[], size_t size);
static void XorVector (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
static void XorVector (sint8_t target[], const sint8_t source[], size_t size);
static void XorVector (sint16_t target[], const sint16_t source[], size_t size);
static void XorVector (sint32_t target[], const sint32_t source[], size_t size);
static void XorVector (sint64_t target[], const sint64_t source[], size_t size);

// Other types
static void XorVector (size_t target[], const size_t source[], size_t size);

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unitary operations                                                    //
//============================================================================//

// Negative value
static void Neg (flt32_t array[], size_t size);
static void Neg (flt64_t array[], size_t size);

// Absolute value
static void Abs (flt32_t array[], size_t size);
static void Abs (flt64_t array[], size_t size);

// Negative absolute value
static void NegAbs (flt32_t array[], size_t size);
static void NegAbs (flt64_t array[], size_t size);

// Number sign
static void Sign (flt32_t array[], size_t size);
static void Sign (flt64_t array[], size_t size);

// Square
static void Sqr (flt32_t array[], size_t size);
static void Sqr (flt64_t array[], size_t size);

// Square root
static void Sqrt (flt32_t array[], size_t size);
static void Sqrt (flt64_t array[], size_t size);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Addition                                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Scalar addition                                                       //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void AddScalar (uint8_t array[], size_t size, uint8_t value);
static void AddScalar (uint16_t array[], size_t size, uint16_t value);
static void AddScalar (uint32_t array[], size_t size, uint32_t value);
static void AddScalar (uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static void AddScalar (sint8_t array[], size_t size, sint8_t value);
static void AddScalar (sint16_t array[], size_t size, sint16_t value);
static void AddScalar (sint32_t array[], size_t size, sint32_t value);
static void AddScalar (sint64_t array[], size_t size, sint64_t value);

// Floating-point types
static void AddScalar (flt32_t array[], size_t size, flt32_t value);
static void AddScalar (flt64_t array[], size_t size, flt64_t value);

// Other types
static void AddScalar (size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Vector addition                                                       //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void AddVector (uint8_t target[], const uint8_t source[], size_t size);
static void AddVector (uint16_t target[], const uint16_t source[], size_t size);
static void AddVector (uint32_t target[], const uint32_t source[], size_t size);
static void AddVector (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
static void AddVector (sint8_t target[], const sint8_t source[], size_t size);
static void AddVector (sint16_t target[], const sint16_t source[], size_t size);
static void AddVector (sint32_t target[], const sint32_t source[], size_t size);
static void AddVector (sint64_t target[], const sint64_t source[], size_t size);

// Floating-point types
static void AddVector (flt32_t target[], const flt32_t source[], size_t size);
static void AddVector (flt64_t target[], const flt64_t source[], size_t size);

// Other types
static void AddVector (size_t target[], const size_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Subtraction                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Scalar subtraction                                                    //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void SubScalar (uint8_t array[], size_t size, uint8_t value);
static void SubScalar (uint16_t array[], size_t size, uint16_t value);
static void SubScalar (uint32_t array[], size_t size, uint32_t value);
static void SubScalar (uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static void SubScalar (sint8_t array[], size_t size, sint8_t value);
static void SubScalar (sint16_t array[], size_t size, sint16_t value);
static void SubScalar (sint32_t array[], size_t size, sint32_t value);
static void SubScalar (sint64_t array[], size_t size, sint64_t value);

// Floating-point types
static void SubScalar (flt32_t array[], size_t size, flt32_t value);
static void SubScalar (flt64_t array[], size_t size, flt64_t value);

// Other types
static void SubScalar (size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Vector subtraction                                                    //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void SubVector (uint8_t target[], const uint8_t source[], size_t size);
static void SubVector (uint16_t target[], const uint16_t source[], size_t size);
static void SubVector (uint32_t target[], const uint32_t source[], size_t size);
static void SubVector (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
static void SubVector (sint8_t target[], const sint8_t source[], size_t size);
static void SubVector (sint16_t target[], const sint16_t source[], size_t size);
static void SubVector (sint32_t target[], const sint32_t source[], size_t size);
static void SubVector (sint64_t target[], const sint64_t source[], size_t size);

// Floating-point types
static void SubVector (flt32_t target[], const flt32_t source[], size_t size);
static void SubVector (flt64_t target[], const flt64_t source[], size_t size);

// Other types
static void SubVector (size_t target[], const size_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Multiplication                                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Scalar multiplication                                                 //
//----------------------------------------------------------------------------//
static void MulScalar (flt32_t array[], size_t size, flt32_t value);
static void MulScalar (flt64_t array[], size_t size, flt64_t value);

//----------------------------------------------------------------------------//
//      Vector multiplication                                                 //
//----------------------------------------------------------------------------//
static void MulVector (flt32_t target[], const flt32_t source[], size_t size);
static void MulVector (flt64_t target[], const flt64_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Division                                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Scalar division                                                       //
//----------------------------------------------------------------------------//
static void DivScalar (flt32_t array[], size_t size, flt32_t value);
static void DivScalar (flt64_t array[], size_t size, flt64_t value);

//----------------------------------------------------------------------------//
//      Vector division                                                       //
//----------------------------------------------------------------------------//
static void DivVector (flt32_t target[], const flt32_t source[], size_t size);
static void DivVector (flt64_t target[], const flt64_t source[], size_t size);

//****************************************************************************//
//      Rounding                                                              //
//****************************************************************************//

// Round down (floor)
static void RoundDown (flt32_t array[], size_t size);
static void RoundDown (flt64_t array[], size_t size);

// Round up (ceil)
static void RoundUp (flt32_t array[], size_t size);
static void RoundUp (flt64_t array[], size_t size);

// Round to nearest even integer
static void RoundInt (flt32_t array[], size_t size);
static void RoundInt (flt64_t array[], size_t size);

// Round to nearest integer, away from zero
static void Round (flt32_t array[], size_t size);
static void Round (flt64_t array[], size_t size);

// Round to nearest integer, toward zero (truncation)
static void Trunc (flt32_t array[], size_t size);
static void Trunc (flt64_t array[], size_t size);

// Fractional part
static void Frac (flt32_t array[], size_t size);
static void Frac (flt64_t array[], size_t size);

//****************************************************************************//
//      Numerical integration                                                 //
//****************************************************************************//

// Sum of elements
static flt32_t Sum (const flt32_t array[], size_t size);
static flt64_t Sum (const flt64_t array[], size_t size);

// Sum of squares
static flt32_t SumSqr (const flt32_t array[], size_t size);
static flt64_t SumSqr (const flt64_t array[], size_t size);

// Sum of absolute values
static flt32_t SumAbs (const flt32_t array[], size_t size);
static flt64_t SumAbs (const flt64_t array[], size_t size);

// Sum of multiplied values
static flt32_t SumMul (const flt32_t array1[], const flt32_t array2[], size_t size);
static flt64_t SumMul (const flt64_t array1[], const flt64_t array2[], size_t size);

// Sum of squared differences
static flt32_t SumSqrDiff (const flt32_t array1[], const flt32_t array2[], size_t size);
static flt64_t SumSqrDiff (const flt64_t array1[], const flt64_t array2[], size_t size);

// Sum of absolute differences
static flt32_t SumAbsDiff (const flt32_t array1[], const flt32_t array2[], size_t size);
static flt64_t SumAbsDiff (const flt64_t array1[], const flt64_t array2[], size_t size);

//****************************************************************************//
//      Minimum and maximum absolute value                                    //
//****************************************************************************//

//============================================================================//
//      Minimum absolute value                                                //
//============================================================================//
static flt32_t MinAbs (const flt32_t array[], size_t size);
static flt64_t MinAbs (const flt64_t array[], size_t size);

//============================================================================//
//      Maximum absolute value                                                //
//============================================================================//
static flt32_t MaxAbs (const flt32_t array[], size_t size);
static flt64_t MaxAbs (const flt64_t array[], size_t size);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

//============================================================================//
//      Regular array search                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Minimum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static uint8_t Min (const uint8_t array[], size_t size);
static uint16_t Min (const uint16_t array[], size_t size);
static uint32_t Min (const uint32_t array[], size_t size);

// Signed integer types
static sint8_t Min (const sint8_t array[], size_t size);
static sint16_t Min (const sint16_t array[], size_t size);
static sint32_t Min (const sint32_t array[], size_t size);

// Floating-point types
static flt32_t Min (const flt32_t array[], size_t size);
static flt64_t Min (const flt64_t array[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Maximum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static uint8_t Max (const uint8_t array[], size_t size);
static uint16_t Max (const uint16_t array[], size_t size);
static uint32_t Max (const uint32_t array[], size_t size);

// Signed integer types
static sint8_t Max (const sint8_t array[], size_t size);
static sint16_t Max (const sint16_t array[], size_t size);
static sint32_t Max (const sint32_t array[], size_t size);

// Floating-point types
static flt32_t Max (const flt32_t array[], size_t size);
static flt64_t Max (const flt64_t array[], size_t size);

//============================================================================//
//      Object array search                                                   //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Minimum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static size_t MinFwd (const void* array[], size_t size, Cmp func);
static size_t MinBwd (const void* array[], size_t size, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Maximum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static size_t MaxFwd (const void* array[], size_t size, Cmp func);
static size_t MaxBwd (const void* array[], size_t size, Cmp func);

//****************************************************************************//
//      Linear search                                                         //
//****************************************************************************//

//============================================================================//
//      Regular array search                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Forward direction search                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static size_t FindFwd (const uint8_t array[], size_t size, uint8_t value);
static size_t FindFwd (const uint16_t array[], size_t size, uint16_t value);
static size_t FindFwd (const uint32_t array[], size_t size, uint32_t value);
static size_t FindFwd (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindFwd (const sint8_t array[], size_t size, sint8_t value);
static size_t FindFwd (const sint16_t array[], size_t size, sint16_t value);
static size_t FindFwd (const sint32_t array[], size_t size, sint32_t value);
static size_t FindFwd (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindFwd (const size_t array[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Backward direction search                                             //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static size_t FindBwd (const uint8_t array[], size_t size, uint8_t value);
static size_t FindBwd (const uint16_t array[], size_t size, uint16_t value);
static size_t FindBwd (const uint32_t array[], size_t size, uint32_t value);
static size_t FindBwd (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindBwd (const sint8_t array[], size_t size, sint8_t value);
static size_t FindBwd (const sint16_t array[], size_t size, sint16_t value);
static size_t FindBwd (const sint32_t array[], size_t size, sint32_t value);
static size_t FindBwd (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindBwd (const size_t array[], size_t size, size_t value);

//============================================================================//
//      Object array search                                                   //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Forward direction search                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static size_t FindFwd (const void* array[], size_t size, const void *value, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Backward direction search                                             //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static size_t FindBwd (const void* array[], size_t size, const void *value, Cmp func);

//****************************************************************************//
//      Binary search                                                         //
//****************************************************************************//

//============================================================================//
//      Regular array search                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Searching for equal element                                           //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t FindFirstEqualAsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindFirstEqualAsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindFirstEqualAsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindFirstEqualAsc (const uint64_t array[], size_t size, uint64_t value);
static size_t FindLastEqualAsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindLastEqualAsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindLastEqualAsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindLastEqualAsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindFirstEqualAsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindFirstEqualAsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindFirstEqualAsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindFirstEqualAsc (const sint64_t array[], size_t size, sint64_t value);
static size_t FindLastEqualAsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindLastEqualAsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindLastEqualAsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindLastEqualAsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindFirstEqualAsc (const size_t array[], size_t size, size_t value);
static size_t FindLastEqualAsc (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for greater element                                         //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t FindGreatAsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindGreatAsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindGreatAsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindGreatAsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindGreatAsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindGreatAsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindGreatAsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindGreatAsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindGreatAsc (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for greater or equal element                                //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t FindGreatOrEqualAsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindGreatOrEqualAsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindGreatOrEqualAsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindGreatOrEqualAsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindGreatOrEqualAsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindGreatOrEqualAsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindGreatOrEqualAsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindGreatOrEqualAsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindGreatOrEqualAsc (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for less element                                            //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t FindLessAsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindLessAsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindLessAsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindLessAsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindLessAsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindLessAsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindLessAsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindLessAsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindLessAsc (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for less or equal element                                   //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t FindLessOrEqualAsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindLessOrEqualAsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindLessOrEqualAsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindLessOrEqualAsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindLessOrEqualAsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindLessOrEqualAsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindLessOrEqualAsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindLessOrEqualAsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindLessOrEqualAsc (const size_t array[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Searching for equal element                                           //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t FindFirstEqualDsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindFirstEqualDsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindFirstEqualDsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindFirstEqualDsc (const uint64_t array[], size_t size, uint64_t value);
static size_t FindLastEqualDsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindLastEqualDsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindLastEqualDsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindLastEqualDsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindFirstEqualDsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindFirstEqualDsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindFirstEqualDsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindFirstEqualDsc (const sint64_t array[], size_t size, sint64_t value);
static size_t FindLastEqualDsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindLastEqualDsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindLastEqualDsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindLastEqualDsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindFirstEqualDsc (const size_t array[], size_t size, size_t value);
static size_t FindLastEqualDsc (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for less element                                            //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t FindLessDsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindLessDsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindLessDsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindLessDsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindLessDsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindLessDsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindLessDsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindLessDsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindLessDsc (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for less or equal element                                   //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t FindLessOrEqualDsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindLessOrEqualDsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindLessOrEqualDsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindLessOrEqualDsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindLessOrEqualDsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindLessOrEqualDsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindLessOrEqualDsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindLessOrEqualDsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindLessOrEqualDsc (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for greater element                                         //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t FindGreatDsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindGreatDsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindGreatDsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindGreatDsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindGreatDsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindGreatDsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindGreatDsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindGreatDsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindGreatDsc (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for greater or equal element                                //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t FindGreatOrEqualDsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindGreatOrEqualDsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindGreatOrEqualDsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindGreatOrEqualDsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindGreatOrEqualDsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindGreatOrEqualDsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindGreatOrEqualDsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindGreatOrEqualDsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindGreatOrEqualDsc (const size_t array[], size_t size, size_t value);

//============================================================================//
//      Object array search                                                   //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Searching for equal element                                           //
//----------------------------------------------------------------------------//
static size_t FindFirstEqualAsc (const void* array[], size_t size, const void *value, Cmp func);
static size_t FindLastEqualAsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for greater element                                         //
//----------------------------------------------------------------------------//
static size_t FindGreatAsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for greater or equal element                                //
//----------------------------------------------------------------------------//
static size_t FindGreatOrEqualAsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for less element                                            //
//----------------------------------------------------------------------------//
static size_t FindLessAsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for less or equal element                                   //
//----------------------------------------------------------------------------//
static size_t FindLessOrEqualAsc (const void* array[], size_t size, const void *value, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Searching for equal element                                           //
//----------------------------------------------------------------------------//
static size_t FindFirstEqualDsc (const void* array[], size_t size, const void *value, Cmp func);
static size_t FindLastEqualDsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for less element                                            //
//----------------------------------------------------------------------------//
static size_t FindLessDsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for less or equal element                                   //
//----------------------------------------------------------------------------//
static size_t FindLessOrEqualDsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for greater element                                         //
//----------------------------------------------------------------------------//
static size_t FindGreatDsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for greater or equal element                                //
//----------------------------------------------------------------------------//
static size_t FindGreatOrEqualDsc (const void* array[], size_t size, const void *value, Cmp func);

//****************************************************************************//
//      Linear counting                                                       //
//****************************************************************************//

//============================================================================//
//      Element counting                                                      //
//============================================================================//

// Unsigned integer types
static size_t Count (const uint8_t array[], size_t size, uint8_t value);
static size_t Count (const uint16_t array[], size_t size, uint16_t value);
static size_t Count (const uint32_t array[], size_t size, uint32_t value);
static size_t Count (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t Count (const sint8_t array[], size_t size, sint8_t value);
static size_t Count (const sint16_t array[], size_t size, sint16_t value);
static size_t Count (const sint32_t array[], size_t size, sint32_t value);
static size_t Count (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t Count (const size_t array[], size_t size, size_t value);

//============================================================================//
//      Object counting                                                       //
//============================================================================//
static size_t Count (const void* array[], size_t size, const void *value, Cmp func);

//****************************************************************************//
//      Binary counting                                                       //
//****************************************************************************//

//============================================================================//
//      Element counting                                                      //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static size_t CountAsc (const uint8_t array[], size_t size, uint8_t value);
static size_t CountAsc (const uint16_t array[], size_t size, uint16_t value);
static size_t CountAsc (const uint32_t array[], size_t size, uint32_t value);
static size_t CountAsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t CountAsc (const sint8_t array[], size_t size, sint8_t value);
static size_t CountAsc (const sint16_t array[], size_t size, sint16_t value);
static size_t CountAsc (const sint32_t array[], size_t size, sint32_t value);
static size_t CountAsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t CountAsc (const size_t array[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static size_t CountDsc (const uint8_t array[], size_t size, uint8_t value);
static size_t CountDsc (const uint16_t array[], size_t size, uint16_t value);
static size_t CountDsc (const uint32_t array[], size_t size, uint32_t value);
static size_t CountDsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t CountDsc (const sint8_t array[], size_t size, sint8_t value);
static size_t CountDsc (const sint16_t array[], size_t size, sint16_t value);
static size_t CountDsc (const sint32_t array[], size_t size, sint32_t value);
static size_t CountDsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t CountDsc (const size_t array[], size_t size, size_t value);

//============================================================================//
//      Object counting                                                       //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static size_t CountAsc (const void* array[], size_t size, const void *value, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static size_t CountDsc (const void* array[], size_t size, const void *value, Cmp func);

//****************************************************************************//
//      Replacing                                                             //
//****************************************************************************//

//============================================================================//
//      Element replacing                                                     //
//============================================================================//

// Unsigned integer types
static void Replace (uint8_t array[], size_t size, uint8_t pattern, uint8_t value);
static void Replace (uint16_t array[], size_t size, uint16_t pattern, uint16_t value);
static void Replace (uint32_t array[], size_t size, uint32_t pattern, uint32_t value);
static void Replace (uint64_t array[], size_t size, uint64_t pattern, uint64_t value);

// Signed integer types
static void Replace (sint8_t array[], size_t size, sint8_t pattern, sint8_t value);
static void Replace (sint16_t array[], size_t size, sint16_t pattern, sint16_t value);
static void Replace (sint32_t array[], size_t size, sint32_t pattern, sint32_t value);
static void Replace (sint64_t array[], size_t size, sint64_t pattern, sint64_t value);

// Other types
static void Replace (size_t array[], size_t size, size_t pattern, size_t value);

//============================================================================//
//      Object replacing                                                      //
//============================================================================//
static void Replace (const void* array[], size_t size, const void *pattern, const void *value, Cmp func);

//****************************************************************************//
//      Order reversing                                                       //
//****************************************************************************//

//============================================================================//
//      Regular array reversing                                               //
//============================================================================//

// Unsigned integer types
static void Reverse (uint8_t array[], size_t size);
static void Reverse (uint16_t array[], size_t size);
static void Reverse (uint32_t array[], size_t size);
static void Reverse (uint64_t array[], size_t size);

// Signed integer types
static void Reverse (sint8_t array[], size_t size);
static void Reverse (sint16_t array[], size_t size);
static void Reverse (sint32_t array[], size_t size);
static void Reverse (sint64_t array[], size_t size);

// Floating-point types
static void Reverse (flt32_t array[], size_t size);
static void Reverse (flt64_t array[], size_t size);

// Other types
static void Reverse (size_t array[], size_t size);

//============================================================================//
//      Object array reversing                                                //
//============================================================================//
static void Reverse (const void* array[], size_t size);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//

//============================================================================//
//      Unique elements                                                       //
//============================================================================//

// Unsigned integer types
static size_t Unique (uint8_t unique[], const uint8_t array[], size_t size);
static size_t Unique (uint16_t unique[], const uint16_t array[], size_t size);
static size_t Unique (uint32_t unique[], const uint32_t array[], size_t size);
static size_t Unique (uint64_t unique[], const uint64_t array[], size_t size);

// Signed integer types
static size_t Unique (sint8_t unique[], const sint8_t array[], size_t size);
static size_t Unique (sint16_t unique[], const sint16_t array[], size_t size);
static size_t Unique (sint32_t unique[], const sint32_t array[], size_t size);
static size_t Unique (sint64_t unique[], const sint64_t array[], size_t size);

// Other types
static size_t Unique (size_t unique[], const size_t array[], size_t size);

//============================================================================//
//      Unique objects                                                        //
//============================================================================//
static size_t Unique (const void* unique[], const void* array[], size_t size, Cmp func);

//****************************************************************************//
//      Duplicate values                                                      //
//****************************************************************************//

//============================================================================//
//      Duplicate elements                                                    //
//============================================================================//

// Unsigned integer types
static size_t Duplicates (uint8_t unique[], size_t count[], const uint8_t array[], size_t size);
static size_t Duplicates (uint16_t unique[], size_t count[], const uint16_t array[], size_t size);
static size_t Duplicates (uint32_t unique[], size_t count[], const uint32_t array[], size_t size);
static size_t Duplicates (uint64_t unique[], size_t count[], const uint64_t array[], size_t size);

// Signed integer types
static size_t Duplicates (sint8_t unique[], size_t count[], const sint8_t array[], size_t size);
static size_t Duplicates (sint16_t unique[], size_t count[], const sint16_t array[], size_t size);
static size_t Duplicates (sint32_t unique[], size_t count[], const sint32_t array[], size_t size);
static size_t Duplicates (sint64_t unique[], size_t count[], const sint64_t array[], size_t size);

// Other types
static size_t Duplicates (size_t unique[], size_t count[], const size_t array[], size_t size);

//============================================================================//
//      Duplicate objects                                                     //
//============================================================================//
static size_t Duplicates (const void* unique[], size_t count[], const void* array[], size_t size, Cmp func);

//****************************************************************************//
//      Insertion sort                                                        //
//****************************************************************************//

//============================================================================//
//      Regular array sorting                                                 //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void InsertSortAsc (uint8_t array[], size_t size);
static void InsertSortAsc (uint16_t array[], size_t size);
static void InsertSortAsc (uint32_t array[], size_t size);
static void InsertSortAsc (uint64_t array[], size_t size);

// Signed integer types
static void InsertSortAsc (sint8_t array[], size_t size);
static void InsertSortAsc (sint16_t array[], size_t size);
static void InsertSortAsc (sint32_t array[], size_t size);
static void InsertSortAsc (sint64_t array[], size_t size);

// Floating-point types
static void InsertSortAsc (flt32_t array[], size_t size);
static void InsertSortAsc (flt64_t array[], size_t size);

// Other types
static void InsertSortAsc (size_t array[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void InsertSortDsc (uint8_t array[], size_t size);
static void InsertSortDsc (uint16_t array[], size_t size);
static void InsertSortDsc (uint32_t array[], size_t size);
static void InsertSortDsc (uint64_t array[], size_t size);

// Signed integer types
static void InsertSortDsc (sint8_t array[], size_t size);
static void InsertSortDsc (sint16_t array[], size_t size);
static void InsertSortDsc (sint32_t array[], size_t size);
static void InsertSortDsc (sint64_t array[], size_t size);

// Floating-point types
static void InsertSortDsc (flt32_t array[], size_t size);
static void InsertSortDsc (flt64_t array[], size_t size);

// Other types
static void InsertSortDsc (size_t array[], size_t size);

//============================================================================//
//      Key array sorting                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void InsertSortKeyAsc (uint8_t key[], const void* ptr[], size_t size);
static void InsertSortKeyAsc (uint16_t key[], const void* ptr[], size_t size);
static void InsertSortKeyAsc (uint32_t key[], const void* ptr[], size_t size);
static void InsertSortKeyAsc (uint64_t key[], const void* ptr[], size_t size);

// Signed integer types
static void InsertSortKeyAsc (sint8_t key[], const void* ptr[], size_t size);
static void InsertSortKeyAsc (sint16_t key[], const void* ptr[], size_t size);
static void InsertSortKeyAsc (sint32_t key[], const void* ptr[], size_t size);
static void InsertSortKeyAsc (sint64_t key[], const void* ptr[], size_t size);

// Floating-point types
static void InsertSortKeyAsc (flt32_t key[], const void* ptr[], size_t size);
static void InsertSortKeyAsc (flt64_t key[], const void* ptr[], size_t size);

// Other types
static void InsertSortKeyAsc (size_t key[], const void* ptr[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void InsertSortKeyDsc (uint8_t key[], const void* ptr[], size_t size);
static void InsertSortKeyDsc (uint16_t key[], const void* ptr[], size_t size);
static void InsertSortKeyDsc (uint32_t key[], const void* ptr[], size_t size);
static void InsertSortKeyDsc (uint64_t key[], const void* ptr[], size_t size);

// Signed integer types
static void InsertSortKeyDsc (sint8_t key[], const void* ptr[], size_t size);
static void InsertSortKeyDsc (sint16_t key[], const void* ptr[], size_t size);
static void InsertSortKeyDsc (sint32_t key[], const void* ptr[], size_t size);
static void InsertSortKeyDsc (sint64_t key[], const void* ptr[], size_t size);

// Floating-point types
static void InsertSortKeyDsc (flt32_t key[], const void* ptr[], size_t size);
static void InsertSortKeyDsc (flt64_t key[], const void* ptr[], size_t size);

// Other types
static void InsertSortKeyDsc (size_t key[], const void* ptr[], size_t size);

//============================================================================//
//      Object array sorting                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void InsertSortAsc (const void* array[], size_t size, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void InsertSortDsc (const void* array[], size_t size, Cmp func);

//****************************************************************************//
//      Quick sort                                                            //
//****************************************************************************//

//============================================================================//
//      Regular array sorting                                                 //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void QuickSortAsc (uint8_t array[], size_t size);
static void QuickSortAsc (uint16_t array[], size_t size);
static void QuickSortAsc (uint32_t array[], size_t size);
static void QuickSortAsc (uint64_t array[], size_t size);

// Signed integer types
static void QuickSortAsc (sint8_t array[], size_t size);
static void QuickSortAsc (sint16_t array[], size_t size);
static void QuickSortAsc (sint32_t array[], size_t size);
static void QuickSortAsc (sint64_t array[], size_t size);

// Floating-point types
static void QuickSortAsc (flt32_t array[], size_t size);
static void QuickSortAsc (flt64_t array[], size_t size);

// Other types
static void QuickSortAsc (size_t array[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void QuickSortDsc (uint8_t array[], size_t size);
static void QuickSortDsc (uint16_t array[], size_t size);
static void QuickSortDsc (uint32_t array[], size_t size);
static void QuickSortDsc (uint64_t array[], size_t size);

// Signed integer types
static void QuickSortDsc (sint8_t array[], size_t size);
static void QuickSortDsc (sint16_t array[], size_t size);
static void QuickSortDsc (sint32_t array[], size_t size);
static void QuickSortDsc (sint64_t array[], size_t size);

// Floating-point types
static void QuickSortDsc (flt32_t array[], size_t size);
static void QuickSortDsc (flt64_t array[], size_t size);

// Other types
static void QuickSortDsc (size_t array[], size_t size);

//============================================================================//
//      Key array sorting                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void QuickSortKeyAsc (uint8_t key[], const void* ptr[], size_t size);
static void QuickSortKeyAsc (uint16_t key[], const void* ptr[], size_t size);
static void QuickSortKeyAsc (uint32_t key[], const void* ptr[], size_t size);
static void QuickSortKeyAsc (uint64_t key[], const void* ptr[], size_t size);

// Signed integer types
static void QuickSortKeyAsc (sint8_t key[], const void* ptr[], size_t size);
static void QuickSortKeyAsc (sint16_t key[], const void* ptr[], size_t size);
static void QuickSortKeyAsc (sint32_t key[], const void* ptr[], size_t size);
static void QuickSortKeyAsc (sint64_t key[], const void* ptr[], size_t size);

// Floating-point types
static void QuickSortKeyAsc (flt32_t key[], const void* ptr[], size_t size);
static void QuickSortKeyAsc (flt64_t key[], const void* ptr[], size_t size);

// Other types
static void QuickSortKeyAsc (size_t key[], const void* ptr[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void QuickSortKeyDsc (uint8_t key[], const void* ptr[], size_t size);
static void QuickSortKeyDsc (uint16_t key[], const void* ptr[], size_t size);
static void QuickSortKeyDsc (uint32_t key[], const void* ptr[], size_t size);
static void QuickSortKeyDsc (uint64_t key[], const void* ptr[], size_t size);

// Signed integer types
static void QuickSortKeyDsc (sint8_t key[], const void* ptr[], size_t size);
static void QuickSortKeyDsc (sint16_t key[], const void* ptr[], size_t size);
static void QuickSortKeyDsc (sint32_t key[], const void* ptr[], size_t size);
static void QuickSortKeyDsc (sint64_t key[], const void* ptr[], size_t size);

// Floating-point types
static void QuickSortKeyDsc (flt32_t key[], const void* ptr[], size_t size);
static void QuickSortKeyDsc (flt64_t key[], const void* ptr[], size_t size);

// Other types
static void QuickSortKeyDsc (size_t key[], const void* ptr[], size_t size);

//============================================================================//
//      Object array sorting                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void QuickSortAsc (const void* array[], size_t size, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void QuickSortDsc (const void* array[], size_t size, Cmp func);

//****************************************************************************//
//      Merge sort                                                            //
//****************************************************************************//

//============================================================================//
//      Regular array sorting                                                 //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void MergeSortAsc (uint8_t array[], uint8_t temp[], size_t size);
static void MergeSortAsc (uint16_t array[], uint16_t temp[], size_t size);
static void MergeSortAsc (uint32_t array[], uint32_t temp[], size_t size);
static void MergeSortAsc (uint64_t array[], uint64_t temp[], size_t size);

// Signed integer types
static void MergeSortAsc (sint8_t array[], sint8_t temp[], size_t size);
static void MergeSortAsc (sint16_t array[], sint16_t temp[], size_t size);
static void MergeSortAsc (sint32_t array[], sint32_t temp[], size_t size);
static void MergeSortAsc (sint64_t array[], sint64_t temp[], size_t size);

// Floating-point types
static void MergeSortAsc (flt32_t array[], flt32_t temp[], size_t size);
static void MergeSortAsc (flt64_t array[], flt64_t temp[], size_t size);

// Other types
static void MergeSortAsc (size_t array[], size_t temp[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void MergeSortDsc (uint8_t array[], uint8_t temp[], size_t size);
static void MergeSortDsc (uint16_t array[], uint16_t temp[], size_t size);
static void MergeSortDsc (uint32_t array[], uint32_t temp[], size_t size);
static void MergeSortDsc (uint64_t array[], uint64_t temp[], size_t size);

// Signed integer types
static void MergeSortDsc (sint8_t array[], sint8_t temp[], size_t size);
static void MergeSortDsc (sint16_t array[], sint16_t temp[], size_t size);
static void MergeSortDsc (sint32_t array[], sint32_t temp[], size_t size);
static void MergeSortDsc (sint64_t array[], sint64_t temp[], size_t size);

// Floating-point types
static void MergeSortDsc (flt32_t array[], flt32_t temp[], size_t size);
static void MergeSortDsc (flt64_t array[], flt64_t temp[], size_t size);

// Other types
static void MergeSortDsc (size_t array[], size_t temp[], size_t size);

//============================================================================//
//      Key array sorting                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void MergeSortKeyAsc (uint8_t key[], uint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyAsc (uint16_t key[], uint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyAsc (uint32_t key[], uint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyAsc (uint64_t key[], uint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Signed integer types
static void MergeSortKeyAsc (sint8_t key[], sint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyAsc (sint16_t key[], sint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyAsc (sint32_t key[], sint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyAsc (sint64_t key[], sint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Floating-point types
static void MergeSortKeyAsc (flt32_t key[], flt32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyAsc (flt64_t key[], flt64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Other types
static void MergeSortKeyAsc (size_t key[], size_t tkey[], const void* ptr[], const void* tptr[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void MergeSortKeyDsc (uint8_t key[], uint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyDsc (uint16_t key[], uint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyDsc (uint32_t key[], uint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyDsc (uint64_t key[], uint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Signed integer types
static void MergeSortKeyDsc (sint8_t key[], sint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyDsc (sint16_t key[], sint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyDsc (sint32_t key[], sint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyDsc (sint64_t key[], sint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Floating-point types
static void MergeSortKeyDsc (flt32_t key[], flt32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void MergeSortKeyDsc (flt64_t key[], flt64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Other types
static void MergeSortKeyDsc (size_t key[], size_t tkey[], const void* ptr[], const void* tptr[], size_t size);

//============================================================================//
//      Object array sorting                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void MergeSortAsc (const void* array[], const void* temp[], size_t size, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void MergeSortDsc (const void* array[], const void* temp[], size_t size, Cmp func);

//****************************************************************************//
//      Radix sort                                                            //
//****************************************************************************//

//============================================================================//
//      Regular array sorting                                                 //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void RadixSortAsc (uint8_t array[], uint8_t temp[], size_t size);
static void RadixSortAsc (uint16_t array[], uint16_t temp[], size_t size);
static void RadixSortAsc (uint32_t array[], uint32_t temp[], size_t size);
static void RadixSortAsc (uint64_t array[], uint64_t temp[], size_t size);

// Signed integer types
static void RadixSortAsc (sint8_t array[], sint8_t temp[], size_t size);
static void RadixSortAsc (sint16_t array[], sint16_t temp[], size_t size);
static void RadixSortAsc (sint32_t array[], sint32_t temp[], size_t size);
static void RadixSortAsc (sint64_t array[], sint64_t temp[], size_t size);

// Floating-point types
static void RadixSortAsc (flt32_t array[], flt32_t temp[], size_t size);
static void RadixSortAsc (flt64_t array[], flt64_t temp[], size_t size);

// Other types
static void RadixSortAsc (size_t array[], size_t temp[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void RadixSortDsc (uint8_t array[], uint8_t temp[], size_t size);
static void RadixSortDsc (uint16_t array[], uint16_t temp[], size_t size);
static void RadixSortDsc (uint32_t array[], uint32_t temp[], size_t size);
static void RadixSortDsc (uint64_t array[], uint64_t temp[], size_t size);

// Signed integer types
static void RadixSortDsc (sint8_t array[], sint8_t temp[], size_t size);
static void RadixSortDsc (sint16_t array[], sint16_t temp[], size_t size);
static void RadixSortDsc (sint32_t array[], sint32_t temp[], size_t size);
static void RadixSortDsc (sint64_t array[], sint64_t temp[], size_t size);

// Floating-point types
static void RadixSortDsc (flt32_t array[], flt32_t temp[], size_t size);
static void RadixSortDsc (flt64_t array[], flt64_t temp[], size_t size);

// Other types
static void RadixSortDsc (size_t array[], size_t temp[], size_t size);

//============================================================================//
//      Key array sorting                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void RadixSortKeyAsc (uint8_t key[], uint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyAsc (uint16_t key[], uint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyAsc (uint32_t key[], uint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyAsc (uint64_t key[], uint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Signed integer types
static void RadixSortKeyAsc (sint8_t key[], sint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyAsc (sint16_t key[], sint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyAsc (sint32_t key[], sint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyAsc (sint64_t key[], sint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Floating-point types
static void RadixSortKeyAsc (flt32_t key[], flt32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyAsc (flt64_t key[], flt64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Other types
static void RadixSortKeyAsc (size_t key[], size_t tkey[], const void* ptr[], const void* tptr[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void RadixSortKeyDsc (uint8_t key[], uint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyDsc (uint16_t key[], uint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyDsc (uint32_t key[], uint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyDsc (uint64_t key[], uint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Signed integer types
static void RadixSortKeyDsc (sint8_t key[], sint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyDsc (sint16_t key[], sint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyDsc (sint32_t key[], sint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyDsc (sint64_t key[], sint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Floating-point types
static void RadixSortKeyDsc (flt32_t key[], flt32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
static void RadixSortKeyDsc (flt64_t key[], flt64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Other types
static void RadixSortKeyDsc (size_t key[], size_t tkey[], const void* ptr[], const void* tptr[], size_t size);

//****************************************************************************//
//      Merging of sorted arrays                                              //
//****************************************************************************//

//============================================================================//
//      Regular array merging                                                 //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void MergeAsc (uint8_t target[], const uint8_t source1[], size_t size1, const uint8_t source2[], size_t size2);
static void MergeAsc (uint16_t target[], const uint16_t source1[], size_t size1, const uint16_t source2[], size_t size2);
static void MergeAsc (uint32_t target[], const uint32_t source1[], size_t size1, const uint32_t source2[], size_t size2);
static void MergeAsc (uint64_t target[], const uint64_t source1[], size_t size1, const uint64_t source2[], size_t size2);

// Signed integer types
static void MergeAsc (sint8_t target[], const sint8_t source1[], size_t size1, const sint8_t source2[], size_t size2);
static void MergeAsc (sint16_t target[], const sint16_t source1[], size_t size1, const sint16_t source2[], size_t size2);
static void MergeAsc (sint32_t target[], const sint32_t source1[], size_t size1, const sint32_t source2[], size_t size2);
static void MergeAsc (sint64_t target[], const sint64_t source1[], size_t size1, const sint64_t source2[], size_t size2);

// Other types
static void MergeAsc (size_t target[], const size_t source1[], size_t size1, const size_t source2[], size_t size2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void MergeDsc (uint8_t target[], const uint8_t source1[], size_t size1, const uint8_t source2[], size_t size2);
static void MergeDsc (uint16_t target[], const uint16_t source1[], size_t size1, const uint16_t source2[], size_t size2);
static void MergeDsc (uint32_t target[], const uint32_t source1[], size_t size1, const uint32_t source2[], size_t size2);
static void MergeDsc (uint64_t target[], const uint64_t source1[], size_t size1, const uint64_t source2[], size_t size2);

// Signed integer types
static void MergeDsc (sint8_t target[], const sint8_t source1[], size_t size1, const sint8_t source2[], size_t size2);
static void MergeDsc (sint16_t target[], const sint16_t source1[], size_t size1, const sint16_t source2[], size_t size2);
static void MergeDsc (sint32_t target[], const sint32_t source1[], size_t size1, const sint32_t source2[], size_t size2);
static void MergeDsc (sint64_t target[], const sint64_t source1[], size_t size1, const sint64_t source2[], size_t size2);

// Other types
static void MergeDsc (size_t target[], const size_t source1[], size_t size1, const size_t source2[], size_t size2);

//============================================================================//
//      Key array merging                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void MergeKeyAsc (uint8_t tkey[], void* tptr[], const uint8_t skey1[], const void* sptr1[], size_t size1, const uint8_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyAsc (uint16_t tkey[], void* tptr[], const uint16_t skey1[], const void* sptr1[], size_t size1, const uint16_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyAsc (uint32_t tkey[], void* tptr[], const uint32_t skey1[], const void* sptr1[], size_t size1, const uint32_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyAsc (uint64_t tkey[], void* tptr[], const uint64_t skey1[], const void* sptr1[], size_t size1, const uint64_t skey2[], const void* sptr2[], size_t size2);

// Signed integer types
static void MergeKeyAsc (sint8_t tkey[], void* tptr[], const sint8_t skey1[], const void* sptr1[], size_t size1, const sint8_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyAsc (sint16_t tkey[], void* tptr[], const sint16_t skey1[], const void* sptr1[], size_t size1, const sint16_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyAsc (sint32_t tkey[], void* tptr[], const sint32_t skey1[], const void* sptr1[], size_t size1, const sint32_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyAsc (sint64_t tkey[], void* tptr[], const sint64_t skey1[], const void* sptr1[], size_t size1, const sint64_t skey2[], const void* sptr2[], size_t size2);

// Other types
static void MergeKeyAsc (size_t tkey[], void* tptr[], const size_t skey1[], const void* sptr1[], size_t size1, const size_t skey2[], const void* sptr2[], size_t size2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void MergeKeyDsc (uint8_t tkey[], void* tptr[], const uint8_t skey1[], const void* sptr1[], size_t size1, const uint8_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyDsc (uint16_t tkey[], void* tptr[], const uint16_t skey1[], const void* sptr1[], size_t size1, const uint16_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyDsc (uint32_t tkey[], void* tptr[], const uint32_t skey1[], const void* sptr1[], size_t size1, const uint32_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyDsc (uint64_t tkey[], void* tptr[], const uint64_t skey1[], const void* sptr1[], size_t size1, const uint64_t skey2[], const void* sptr2[], size_t size2);

// Signed integer types
static void MergeKeyDsc (sint8_t tkey[], void* tptr[], const sint8_t skey1[], const void* sptr1[], size_t size1, const sint8_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyDsc (sint16_t tkey[], void* tptr[], const sint16_t skey1[], const void* sptr1[], size_t size1, const sint16_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyDsc (sint32_t tkey[], void* tptr[], const sint32_t skey1[], const void* sptr1[], size_t size1, const sint32_t skey2[], const void* sptr2[], size_t size2);
static void MergeKeyDsc (sint64_t tkey[], void* tptr[], const sint64_t skey1[], const void* sptr1[], size_t size1, const sint64_t skey2[], const void* sptr2[], size_t size2);

// Other types
static void MergeKeyDsc (size_t tkey[], void* tptr[], const size_t skey1[], const void* sptr1[], size_t size1, const size_t skey2[], const void* sptr2[], size_t size2);

//============================================================================//
//      Object array merging                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void MergeAsc (const void* target[], const void* source1[], size_t size1, const void* source2[], size_t size2, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void MergeDsc (const void* target[], const void* source1[], size_t size1, const void* source2[], size_t size2, Cmp func);

//****************************************************************************//
//      Comparison of arrays                                                  //
//****************************************************************************//

// Unsigned integer types
static sint64_t Compare (const uint8_t array1[], const uint8_t array2[], size_t size);
static sint64_t Compare (const uint16_t array1[], const uint16_t array2[], size_t size);
static sint64_t Compare (const uint32_t array1[], const uint32_t array2[], size_t size);
static sint64_t Compare (const uint64_t array1[], const uint64_t array2[], size_t size);

// Signed integer types
static sint64_t Compare (const sint8_t array1[], const sint8_t array2[], size_t size);
static sint64_t Compare (const sint16_t array1[], const sint16_t array2[], size_t size);
static sint64_t Compare (const sint32_t array1[], const sint32_t array2[], size_t size);
static sint64_t Compare (const sint64_t array1[], const sint64_t array2[], size_t size);

// Other types
static sint64_t Compare (const size_t array1[], const size_t array2[], size_t size);
static sint64_t Compare (const void *array1, const void *array2, size_t size);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

//============================================================================//
//      Check for sort order                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Regular array check                                                   //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Check for ascending sort order                                        //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t CheckSortAsc (const uint8_t array[], size_t size);
static size_t CheckSortAsc (const uint16_t array[], size_t size);
static size_t CheckSortAsc (const uint32_t array[], size_t size);
static size_t CheckSortAsc (const uint64_t array[], size_t size);

// Signed integer types
static size_t CheckSortAsc (const sint8_t array[], size_t size);
static size_t CheckSortAsc (const sint16_t array[], size_t size);
static size_t CheckSortAsc (const sint32_t array[], size_t size);
static size_t CheckSortAsc (const sint64_t array[], size_t size);

// Floating-point types
static size_t CheckSortAsc (const flt32_t array[], size_t size);
static size_t CheckSortAsc (const flt64_t array[], size_t size);

// Other types
static size_t CheckSortAsc (const size_t array[], size_t size);

//----------------------------------------------------------------------------//
//      Check for descending sort order                                       //
//----------------------------------------------------------------------------//

// Unsigned integer types
static size_t CheckSortDsc (const uint8_t array[], size_t size);
static size_t CheckSortDsc (const uint16_t array[], size_t size);
static size_t CheckSortDsc (const uint32_t array[], size_t size);
static size_t CheckSortDsc (const uint64_t array[], size_t size);

// Signed integer types
static size_t CheckSortDsc (const sint8_t array[], size_t size);
static size_t CheckSortDsc (const sint16_t array[], size_t size);
static size_t CheckSortDsc (const sint32_t array[], size_t size);
static size_t CheckSortDsc (const sint64_t array[], size_t size);

// Floating-point types
static size_t CheckSortDsc (const flt32_t array[], size_t size);
static size_t CheckSortDsc (const flt64_t array[], size_t size);

// Other types
static size_t CheckSortDsc (const size_t array[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Object array check                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Check for ascending sort order                                        //
//----------------------------------------------------------------------------//
static size_t CheckSortAsc (const void* array[], size_t size, Cmp func);

//----------------------------------------------------------------------------//
//      Check for descending sort order                                       //
//----------------------------------------------------------------------------//
static size_t CheckSortDsc (const void* array[], size_t size, Cmp func);

//============================================================================//
//      Check for duplicate values                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Regular array check                                                   //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static size_t CheckDup (const uint8_t array[], size_t size);
static size_t CheckDup (const uint16_t array[], size_t size);
static size_t CheckDup (const uint32_t array[], size_t size);
static size_t CheckDup (const uint64_t array[], size_t size);

// Signed integer types
static size_t CheckDup (const sint8_t array[], size_t size);
static size_t CheckDup (const sint16_t array[], size_t size);
static size_t CheckDup (const sint32_t array[], size_t size);
static size_t CheckDup (const sint64_t array[], size_t size);

// Other types
static size_t CheckDup (const size_t array[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Object array check                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static size_t CheckDup (const void* array[], size_t size, Cmp func);

//============================================================================//
//      Check for infinite values                                             //
//============================================================================//
static size_t CheckInf (const flt32_t array[], size_t size);
static size_t CheckInf (const flt64_t array[], size_t size);

//============================================================================//
//      Check for NaN values                                                  //
//============================================================================//
static size_t CheckNaN (const flt32_t array[], size_t size);
static size_t CheckNaN (const flt64_t array[], size_t size);

//============================================================================//
//      Check for differences                                                 //
//============================================================================//

// Unsigned integer types
static size_t CheckDiff (const uint8_t array1[], const uint8_t array2[], size_t size);
static size_t CheckDiff (const uint16_t array1[], const uint16_t array2[], size_t size);
static size_t CheckDiff (const uint32_t array1[], const uint32_t array2[], size_t size);
static size_t CheckDiff (const uint64_t array1[], const uint64_t array2[], size_t size);

// Signed integer types
static size_t CheckDiff (const sint8_t array1[], const sint8_t array2[], size_t size);
static size_t CheckDiff (const sint16_t array1[], const sint16_t array2[], size_t size);
static size_t CheckDiff (const sint32_t array1[], const sint32_t array2[], size_t size);
static size_t CheckDiff (const sint64_t array1[], const sint64_t array2[], size_t size);

// Other types
static size_t CheckDiff (const size_t array1[], const size_t array2[], size_t size);
static size_t CheckDiff (const void *array1, const void *array2, size_t size);

//============================================================================//
//      Check for overlap                                                     //
//============================================================================//

// Unsigned integer types
static bool Overlap (const uint8_t array1[], size_t size1, const uint8_t array2[], size_t size2);
static bool Overlap (const uint16_t array1[], size_t size1, const uint16_t array2[], size_t size2);
static bool Overlap (const uint32_t array1[], size_t size1, const uint32_t array2[], size_t size2);
static bool Overlap (const uint64_t array1[], size_t size1, const uint64_t array2[], size_t size2);

// Signed integer types
static bool Overlap (const sint8_t array1[], size_t size1, const sint8_t array2[], size_t size2);
static bool Overlap (const sint16_t array1[], size_t size1, const sint16_t array2[], size_t size2);
static bool Overlap (const sint32_t array1[], size_t size1, const sint32_t array2[], size_t size2);
static bool Overlap (const sint64_t array1[], size_t size1, const sint64_t array2[], size_t size2);

// Floating-point types
static bool Overlap (const flt32_t array1[], size_t size1, const flt32_t array2[], size_t size2);
static bool Overlap (const flt64_t array1[], size_t size1, const flt64_t array2[], size_t size2);

// Other types
static bool Overlap (const size_t array1[], size_t size1, const size_t array2[], size_t size2);
static bool Overlap (const void *array1, size_t size1, const void *array2, size_t size2);

//****************************************************************************//
//      Array hashing                                                         //
//****************************************************************************//

//============================================================================//
//      32-bit hash functions                                                 //
//============================================================================//

// Unsigned integer types
static uint32_t Hash32 (const uint8_t array[], size_t size);
static uint32_t Hash32 (const uint16_t array[], size_t size);
static uint32_t Hash32 (const uint32_t array[], size_t size);
static uint32_t Hash32 (const uint64_t array[], size_t size);

// Unsigned integer types
static uint32_t Hash32 (const sint8_t array[], size_t size);
static uint32_t Hash32 (const sint16_t array[], size_t size);
static uint32_t Hash32 (const sint32_t array[], size_t size);
static uint32_t Hash32 (const sint64_t array[], size_t size);

// Floating-point types
static uint32_t Hash32 (const flt32_t array[], size_t size);
static uint32_t Hash32 (const flt64_t array[], size_t size);

// Other types
static uint32_t Hash32 (const size_t array[], size_t size);
static uint32_t Hash32 (const void *array, size_t size);

//============================================================================//
//      64-bit hash functions                                                 //
//============================================================================//

// Unsigned integer types
static uint64_t Hash64 (const uint8_t array[], size_t size);
static uint64_t Hash64 (const uint16_t array[], size_t size);
static uint64_t Hash64 (const uint32_t array[], size_t size);
static uint64_t Hash64 (const uint64_t array[], size_t size);

// Unsigned integer types
static uint64_t Hash64 (const sint8_t array[], size_t size);
static uint64_t Hash64 (const sint16_t array[], size_t size);
static uint64_t Hash64 (const sint32_t array[], size_t size);
static uint64_t Hash64 (const sint64_t array[], size_t size);

// Floating-point types
static uint64_t Hash64 (const flt32_t array[], size_t size);
static uint64_t Hash64 (const flt64_t array[], size_t size);

// Other types
static uint64_t Hash64 (const size_t array[], size_t size);
static uint64_t Hash64 (const void *array, size_t size);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Initialization                                                        //
//****************************************************************************//

// Unsigned integer types
void Array_Init_uint8 (uint8_t array[], size_t size, uint8_t value);
void Array_Init_uint16 (uint16_t array[], size_t size, uint16_t value);
void Array_Init_uint32 (uint32_t array[], size_t size, uint32_t value);
void Array_Init_uint64 (uint64_t array[], size_t size, uint64_t value);

// Signed integer types
void Array_Init_sint8 (sint8_t array[], size_t size, sint8_t value);
void Array_Init_sint16 (sint16_t array[], size_t size, sint16_t value);
void Array_Init_sint32 (sint32_t array[], size_t size, sint32_t value);
void Array_Init_sint64 (sint64_t array[], size_t size, sint64_t value);

// Floating-point types
void Array_Init_flt32 (flt32_t array[], size_t size, flt32_t value);
void Array_Init_flt64 (flt64_t array[], size_t size, flt64_t value);

// Other types
void Array_Init_size (size_t array[], size_t size, size_t value);

//****************************************************************************//
//      Copying                                                               //
//****************************************************************************//

// Unsigned integer types
void Array_Copy_uint8 (uint8_t target[], const uint8_t source[], size_t size);
void Array_Copy_uint16 (uint16_t target[], const uint16_t source[], size_t size);
void Array_Copy_uint32 (uint32_t target[], const uint32_t source[], size_t size);
void Array_Copy_uint64 (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
void Array_Copy_sint8 (sint8_t target[], const sint8_t source[], size_t size);
void Array_Copy_sint16 (sint16_t target[], const sint16_t source[], size_t size);
void Array_Copy_sint32 (sint32_t target[], const sint32_t source[], size_t size);
void Array_Copy_sint64 (sint64_t target[], const sint64_t source[], size_t size);

// Floating-point types
void Array_Copy_flt32 (flt32_t target[], const flt32_t source[], size_t size);
void Array_Copy_flt64 (flt64_t target[], const flt64_t source[], size_t size);

// Other types
void Array_Copy_size (size_t target[], const size_t source[], size_t size);
void Array_Copy (void *target, const void *source, size_t size);

//****************************************************************************//
//      Moving                                                                //
//****************************************************************************//

// Unsigned integer types
void Array_Move_uint8 (uint8_t target[], const uint8_t source[], size_t size);
void Array_Move_uint16 (uint16_t target[], const uint16_t source[], size_t size);
void Array_Move_uint32 (uint32_t target[], const uint32_t source[], size_t size);
void Array_Move_uint64 (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
void Array_Move_sint8 (sint8_t target[], const sint8_t source[], size_t size);
void Array_Move_sint16 (sint16_t target[], const sint16_t source[], size_t size);
void Array_Move_sint32 (sint32_t target[], const sint32_t source[], size_t size);
void Array_Move_sint64 (sint64_t target[], const sint64_t source[], size_t size);

// Floating-point types
void Array_Move_flt32 (flt32_t target[], const flt32_t source[], size_t size);
void Array_Move_flt64 (flt64_t target[], const flt64_t source[], size_t size);

// Other types
void Array_Move_size (size_t target[], const size_t source[], size_t size);
void Array_Move (void *target, const void *source, size_t size);

//****************************************************************************//
//      Pattern cloning                                                       //
//****************************************************************************//

// Unsigned integer types
void Array_Clone_uint8 (uint8_t array[], size_t size, size_t psize);
void Array_Clone_uint16 (uint16_t array[], size_t size, size_t psize);
void Array_Clone_uint32 (uint32_t array[], size_t size, size_t psize);
void Array_Clone_uint64 (uint64_t array[], size_t size, size_t psize);

// Signed integer types
void Array_Clone_sint8 (sint8_t array[], size_t size, size_t psize);
void Array_Clone_sint16 (sint16_t array[], size_t size, size_t psize);
void Array_Clone_sint32 (sint32_t array[], size_t size, size_t psize);
void Array_Clone_sint64 (sint64_t array[], size_t size, size_t psize);

// Floating-point types
void Array_Clone_flt32 (flt32_t array[], size_t size, size_t psize);
void Array_Clone_flt64 (flt64_t array[], size_t size, size_t psize);

// Other types
void Array_Clone_size (size_t array[], size_t size, size_t psize);
void Array_Clone (void *array, size_t size, size_t psize);

//****************************************************************************//
//      Data conversion                                                       //
//****************************************************************************//

// Conversion between floating-point types
void Array_ConvertFlt32ToFlt64 (flt64_t target[], const flt32_t source[], size_t size);
void Array_ConvertFlt64ToFlt32 (flt32_t target[], const flt64_t source[], size_t size);

// Conversion from signed integer types to floating-point types
void Array_ConvertSint32ToFlt32 (flt32_t target[], const sint32_t source[], size_t size);
void Array_ConvertSint32ToFlt64 (flt64_t target[], const sint32_t source[], size_t size);
void Array_ConvertSint64ToFlt32 (flt32_t target[], const sint64_t source[], size_t size);
void Array_ConvertSint64ToFlt64 (flt64_t target[], const sint64_t source[], size_t size);

// Conversion from floating-point types to signed integer types
void Array_ConvertFlt32ToSint32 (sint32_t target[], const flt32_t source[], size_t size);
void Array_ConvertFlt32ToSint64 (sint64_t target[], const flt32_t source[], size_t size);
void Array_ConvertFlt64ToSint32 (sint32_t target[], const flt64_t source[], size_t size);
void Array_ConvertFlt64ToSint64 (sint64_t target[], const flt64_t source[], size_t size);

// Truncating from floating-point types to signed integer types
void Array_TruncateFlt32ToSint32 (sint32_t target[], const flt32_t source[], size_t size);
void Array_TruncateFlt32ToSint64 (sint64_t target[], const flt32_t source[], size_t size);
void Array_TruncateFlt64ToSint32 (sint32_t target[], const flt64_t source[], size_t size);
void Array_TruncateFlt64ToSint64 (sint64_t target[], const flt64_t source[], size_t size);

//****************************************************************************//
//      Bitwise operations                                                    //
//****************************************************************************//

//============================================================================//
//      Bitwise NOT                                                           //
//============================================================================//

// Unsigned integer types
void Array_Not_uint8 (uint8_t array[], size_t size);
void Array_Not_uint16 (uint16_t array[], size_t size);
void Array_Not_uint32 (uint32_t array[], size_t size);
void Array_Not_uint64 (uint64_t array[], size_t size);

// Signed integer types
void Array_Not_sint8 (sint8_t array[], size_t size);
void Array_Not_sint16 (sint16_t array[], size_t size);
void Array_Not_sint32 (sint32_t array[], size_t size);
void Array_Not_sint64 (sint64_t array[], size_t size);

// Other types
void Array_Not_size (size_t array[], size_t size);

//============================================================================//
//      Bitwise AND                                                           //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Scalar bitwise AND                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_AndScalar_uint8 (uint8_t target[], size_t size, uint8_t value);
void Array_AndScalar_uint16 (uint16_t target[], size_t size, uint16_t value);
void Array_AndScalar_uint32 (uint32_t target[], size_t size, uint32_t value);
void Array_AndScalar_uint64 (uint64_t target[], size_t size, uint64_t value);

// Signed integer types
void Array_AndScalar_sint8 (sint8_t target[], size_t size, sint8_t value);
void Array_AndScalar_sint16 (sint16_t target[], size_t size, sint16_t value);
void Array_AndScalar_sint32 (sint32_t target[], size_t size, sint32_t value);
void Array_AndScalar_sint64 (sint64_t target[], size_t size, sint64_t value);

// Other types
void Array_AndScalar_size (size_t target[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Vector bitwise AND                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_AndVector_uint8 (uint8_t target[], const uint8_t source[], size_t size);
void Array_AndVector_uint16 (uint16_t target[], const uint16_t source[], size_t size);
void Array_AndVector_uint32 (uint32_t target[], const uint32_t source[], size_t size);
void Array_AndVector_uint64 (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
void Array_AndVector_sint8 (sint8_t target[], const sint8_t source[], size_t size);
void Array_AndVector_sint16 (sint16_t target[], const sint16_t source[], size_t size);
void Array_AndVector_sint32 (sint32_t target[], const sint32_t source[], size_t size);
void Array_AndVector_sint64 (sint64_t target[], const sint64_t source[], size_t size);

// Other types
void Array_AndVector_size (size_t target[], const size_t source[], size_t size);

//============================================================================//
//      Bitwise OR                                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Scalar bitwise OR                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_OrScalar_uint8 (uint8_t target[], size_t size, uint8_t value);
void Array_OrScalar_uint16 (uint16_t target[], size_t size, uint16_t value);
void Array_OrScalar_uint32 (uint32_t target[], size_t size, uint32_t value);
void Array_OrScalar_uint64 (uint64_t target[], size_t size, uint64_t value);

// Signed integer types
void Array_OrScalar_sint8 (sint8_t target[], size_t size, sint8_t value);
void Array_OrScalar_sint16 (sint16_t target[], size_t size, sint16_t value);
void Array_OrScalar_sint32 (sint32_t target[], size_t size, sint32_t value);
void Array_OrScalar_sint64 (sint64_t target[], size_t size, sint64_t value);

// Other types
void Array_OrScalar_size (size_t target[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Vector bitwise OR                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_OrVector_uint8 (uint8_t target[], const uint8_t source[], size_t size);
void Array_OrVector_uint16 (uint16_t target[], const uint16_t source[], size_t size);
void Array_OrVector_uint32 (uint32_t target[], const uint32_t source[], size_t size);
void Array_OrVector_uint64 (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
void Array_OrVector_sint8 (sint8_t target[], const sint8_t source[], size_t size);
void Array_OrVector_sint16 (sint16_t target[], const sint16_t source[], size_t size);
void Array_OrVector_sint32 (sint32_t target[], const sint32_t source[], size_t size);
void Array_OrVector_sint64 (sint64_t target[], const sint64_t source[], size_t size);

// Other types
void Array_OrVector_size (size_t target[], const size_t source[], size_t size);

//============================================================================//
//      Bitwise XOR                                                           //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Scalar bitwise XOR                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_XorScalar_uint8 (uint8_t target[], size_t size, uint8_t value);
void Array_XorScalar_uint16 (uint16_t target[], size_t size, uint16_t value);
void Array_XorScalar_uint32 (uint32_t target[], size_t size, uint32_t value);
void Array_XorScalar_uint64 (uint64_t target[], size_t size, uint64_t value);

// Signed integer types
void Array_XorScalar_sint8 (sint8_t target[], size_t size, sint8_t value);
void Array_XorScalar_sint16 (sint16_t target[], size_t size, sint16_t value);
void Array_XorScalar_sint32 (sint32_t target[], size_t size, sint32_t value);
void Array_XorScalar_sint64 (sint64_t target[], size_t size, sint64_t value);

// Other types
void Array_XorScalar_size (size_t target[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Vector bitwise XOR                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_XorVector_uint8 (uint8_t target[], const uint8_t source[], size_t size);
void Array_XorVector_uint16 (uint16_t target[], const uint16_t source[], size_t size);
void Array_XorVector_uint32 (uint32_t target[], const uint32_t source[], size_t size);
void Array_XorVector_uint64 (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
void Array_XorVector_sint8 (sint8_t target[], const sint8_t source[], size_t size);
void Array_XorVector_sint16 (sint16_t target[], const sint16_t source[], size_t size);
void Array_XorVector_sint32 (sint32_t target[], const sint32_t source[], size_t size);
void Array_XorVector_sint64 (sint64_t target[], const sint64_t source[], size_t size);

// Other types
void Array_XorVector_size (size_t target[], const size_t source[], size_t size);

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unitary operations                                                    //
//============================================================================//

// Negative value
void Array_Neg_flt32 (flt32_t array[], size_t size);
void Array_Neg_flt64 (flt64_t array[], size_t size);

// Absolute value
void Array_Abs_flt32 (flt32_t array[], size_t size);
void Array_Abs_flt64 (flt64_t array[], size_t size);

// Negative absolute value
void Array_NegAbs_flt32 (flt32_t array[], size_t size);
void Array_NegAbs_flt64 (flt64_t array[], size_t size);

// Number sign
void Array_Sign_flt32 (flt32_t array[], size_t size);
void Array_Sign_flt64 (flt64_t array[], size_t size);

// Square
void Array_Sqr_flt32 (flt32_t array[], size_t size);
void Array_Sqr_flt64 (flt64_t array[], size_t size);

// Square root
void Array_Sqrt_flt32 (flt32_t array[], size_t size);
void Array_Sqrt_flt64 (flt64_t array[], size_t size);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Addition                                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Scalar addition                                                       //
//----------------------------------------------------------------------------//

// Unsigned integer types
void Array_AddScalar_uint8 (uint8_t array[], size_t size, uint8_t value);
void Array_AddScalar_uint16 (uint16_t array[], size_t size, uint16_t value);
void Array_AddScalar_uint32 (uint32_t array[], size_t size, uint32_t value);
void Array_AddScalar_uint64 (uint64_t array[], size_t size, uint64_t value);

// Signed integer types
void Array_AddScalar_sint8 (sint8_t array[], size_t size, sint8_t value);
void Array_AddScalar_sint16 (sint16_t array[], size_t size, sint16_t value);
void Array_AddScalar_sint32 (sint32_t array[], size_t size, sint32_t value);
void Array_AddScalar_sint64 (sint64_t array[], size_t size, sint64_t value);

// Floating-point types
void Array_AddScalar_flt32 (flt32_t array[], size_t size, flt32_t value);
void Array_AddScalar_flt64 (flt64_t array[], size_t size, flt64_t value);

// Other types
void Array_AddScalar_size (size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Vector addition                                                       //
//----------------------------------------------------------------------------//

// Unsigned integer types
void Array_AddVector_uint8 (uint8_t target[], const uint8_t source[], size_t size);
void Array_AddVector_uint16 (uint16_t target[], const uint16_t source[], size_t size);
void Array_AddVector_uint32 (uint32_t target[], const uint32_t source[], size_t size);
void Array_AddVector_uint64 (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
void Array_AddVector_sint8 (sint8_t target[], const sint8_t source[], size_t size);
void Array_AddVector_sint16 (sint16_t target[], const sint16_t source[], size_t size);
void Array_AddVector_sint32 (sint32_t target[], const sint32_t source[], size_t size);
void Array_AddVector_sint64 (sint64_t target[], const sint64_t source[], size_t size);

// Floating-point types
void Array_AddVector_flt32 (flt32_t target[], const flt32_t source[], size_t size);
void Array_AddVector_flt64 (flt64_t target[], const flt64_t source[], size_t size);

// Other types
void Array_AddVector_size (size_t target[], const size_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Subtraction                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Scalar subtraction                                                    //
//----------------------------------------------------------------------------//

// Unsigned integer types
void Array_SubScalar_uint8 (uint8_t array[], size_t size, uint8_t value);
void Array_SubScalar_uint16 (uint16_t array[], size_t size, uint16_t value);
void Array_SubScalar_uint32 (uint32_t array[], size_t size, uint32_t value);
void Array_SubScalar_uint64 (uint64_t array[], size_t size, uint64_t value);

// Signed integer types
void Array_SubScalar_sint8 (sint8_t array[], size_t size, sint8_t value);
void Array_SubScalar_sint16 (sint16_t array[], size_t size, sint16_t value);
void Array_SubScalar_sint32 (sint32_t array[], size_t size, sint32_t value);
void Array_SubScalar_sint64 (sint64_t array[], size_t size, sint64_t value);

// Floating-point types
void Array_SubScalar_flt32 (flt32_t array[], size_t size, flt32_t value);
void Array_SubScalar_flt64 (flt64_t array[], size_t size, flt64_t value);

// Other types
void Array_SubScalar_size (size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Vector subtraction                                                    //
//----------------------------------------------------------------------------//

// Unsigned integer types
void Array_SubVector_uint8 (uint8_t target[], const uint8_t source[], size_t size);
void Array_SubVector_uint16 (uint16_t target[], const uint16_t source[], size_t size);
void Array_SubVector_uint32 (uint32_t target[], const uint32_t source[], size_t size);
void Array_SubVector_uint64 (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
void Array_SubVector_sint8 (sint8_t target[], const sint8_t source[], size_t size);
void Array_SubVector_sint16 (sint16_t target[], const sint16_t source[], size_t size);
void Array_SubVector_sint32 (sint32_t target[], const sint32_t source[], size_t size);
void Array_SubVector_sint64 (sint64_t target[], const sint64_t source[], size_t size);

// Floating-point types
void Array_SubVector_flt32 (flt32_t target[], const flt32_t source[], size_t size);
void Array_SubVector_flt64 (flt64_t target[], const flt64_t source[], size_t size);

// Other types
void Array_SubVector_size (size_t target[], const size_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Multiplication                                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Scalar multiplication                                                 //
//----------------------------------------------------------------------------//
void Array_MulScalar_flt32 (flt32_t array[], size_t size, flt32_t value);
void Array_MulScalar_flt64 (flt64_t array[], size_t size, flt64_t value);

//----------------------------------------------------------------------------//
//      Vector multiplication                                                 //
//----------------------------------------------------------------------------//
void Array_MulVector_flt32 (flt32_t target[], const flt32_t source[], size_t size);
void Array_MulVector_flt64 (flt64_t target[], const flt64_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Division                                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Scalar division                                                       //
//----------------------------------------------------------------------------//
void Array_DivScalar_flt32 (flt32_t array[], size_t size, flt32_t value);
void Array_DivScalar_flt64 (flt64_t array[], size_t size, flt64_t value);

//----------------------------------------------------------------------------//
//      Vector division                                                       //
//----------------------------------------------------------------------------//
void Array_DivVector_flt32 (flt32_t target[], const flt32_t source[], size_t size);
void Array_DivVector_flt64 (flt64_t target[], const flt64_t source[], size_t size);

//****************************************************************************//
//      Rounding                                                              //
//****************************************************************************//

// Round down (floor)
void Array_RoundDown_flt32 (flt32_t array[], size_t size);
void Array_RoundDown_flt64 (flt64_t array[], size_t size);

// Round up (ceil)
void Array_RoundUp_flt32 (flt32_t array[], size_t size);
void Array_RoundUp_flt64 (flt64_t array[], size_t size);

// Round to nearest even integer
void Array_RoundInt_flt32 (flt32_t array[], size_t size);
void Array_RoundInt_flt64 (flt64_t array[], size_t size);

// Round to nearest integer, away from zero
void Array_Round_flt32 (flt32_t array[], size_t size);
void Array_Round_flt64 (flt64_t array[], size_t size);

// Round to nearest integer, toward zero (truncation)
void Array_Trunc_flt32 (flt32_t array[], size_t size);
void Array_Trunc_flt64 (flt64_t array[], size_t size);

// Fractional part
void Array_Frac_flt32 (flt32_t array[], size_t size);
void Array_Frac_flt64 (flt64_t array[], size_t size);

//****************************************************************************//
//      Numerical integration                                                 //
//****************************************************************************//

// Sum of elements
flt32_t Array_Sum_flt32 (const flt32_t array[], size_t size);
flt64_t Array_Sum_flt64 (const flt64_t array[], size_t size);

// Sum of squares
flt32_t Array_SumSqr_flt32 (const flt32_t array[], size_t size);
flt64_t Array_SumSqr_flt64 (const flt64_t array[], size_t size);

// Sum of absolute values
flt32_t Array_SumAbs_flt32 (const flt32_t array[], size_t size);
flt64_t Array_SumAbs_flt32 (const flt64_t array[], size_t size);

// Sum of multiplied values
flt32_t Array_SumMul_flt32 (const flt32_t array1[], const flt32_t array2[], size_t size);
flt64_t Array_SumMul_flt64 (const flt64_t array1[], const flt64_t array2[], size_t size);

// Sum of squared differences
flt32_t Array_SumSqrDiff_flt32 (const flt32_t array1[], const flt32_t array2[], size_t size);
flt64_t Array_SumSqrDiff_flt64 (const flt64_t array1[], const flt64_t array2[], size_t size);

// Sum of absolute differences
flt32_t Array_SumAbsDiff_flt32 (const flt32_t array1[], const flt32_t array2[], size_t size);
flt64_t Array_SumAbsDiff_flt64 (const flt64_t array1[], const flt64_t array2[], size_t size);

//****************************************************************************//
//      Minimum and maximum absolute value                                    //
//****************************************************************************//

//============================================================================//
//      Minimum absolute value                                                //
//============================================================================//
flt32_t Array_MinAbs_flt32 (const flt32_t array[], size_t size);
flt64_t Array_MinAbs_flt64 (const flt64_t array[], size_t size);

//============================================================================//
//      Maximum absolute value                                                //
//============================================================================//
flt32_t Array_MaxAbs_flt32 (const flt32_t array[], size_t size);
flt64_t Array_MaxAbs_flt64 (const flt64_t array[], size_t size);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

//============================================================================//
//      Regular array search                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Minimum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
uint8_t Array_Min_uint8 (const uint8_t array[], size_t size);
uint16_t Array_Min_uint16 (const uint16_t array[], size_t size);
uint32_t Array_Min_uint32 (const uint32_t array[], size_t size);

// Signed integer types
sint8_t Array_Min_sint8 (const sint8_t array[], size_t size);
sint16_t Array_Min_sint16 (const sint16_t array[], size_t size);
sint32_t Array_Min_sint32 (const sint32_t array[], size_t size);

// Floating-point types
flt32_t Array_Min_flt32 (const flt32_t array[], size_t size);
flt64_t Array_Min_flt64 (const flt64_t array[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Maximum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
uint8_t Array_Max_uint8 (const uint8_t array[], size_t size);
uint16_t Array_Max_uint16 (const uint16_t array[], size_t size);
uint32_t Array_Max_uint32 (const uint32_t array[], size_t size);

// Signed integer types
sint8_t Array_Max_sint8 (const sint8_t array[], size_t size);
sint16_t Array_Max_sint16 (const sint16_t array[], size_t size);
sint32_t Array_Max_sint32 (const sint32_t array[], size_t size);

// Floating-point types
flt32_t Array_Max_flt32 (const flt32_t array[], size_t size);
flt64_t Array_Max_flt64 (const flt64_t array[], size_t size);

//============================================================================//
//      Object array search                                                   //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Minimum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
size_t Array_MinFwd (const void* array[], size_t size, Cmp func);
size_t Array_MinBwd (const void* array[], size_t size, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Maximum value                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
size_t Array_MaxFwd (const void* array[], size_t size, Cmp func);
size_t Array_MaxBwd (const void* array[], size_t size, Cmp func);

//****************************************************************************//
//      Linear search                                                         //
//****************************************************************************//

//============================================================================//
//      Regular array search                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Forward direction search                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
size_t Array_FindFwd_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindFwd_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindFwd_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindFwd_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindFwd_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindFwd_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindFwd_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindFwd_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindFwd_size (const size_t array[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Backward direction search                                             //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
size_t Array_FindBwd_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindBwd_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindBwd_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindBwd_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindBwd_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindBwd_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindBwd_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindBwd_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindBwd_size (const size_t array[], size_t size, size_t value);

//============================================================================//
//      Object array search                                                   //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Forward direction search                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
size_t Array_FindFwd (const void* array[], size_t size, const void *value, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Backward direction search                                             //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
size_t Array_FindBwd (const void* array[], size_t size, const void *value, Cmp func);

//****************************************************************************//
//      Binary search                                                         //
//****************************************************************************//

//============================================================================//
//      Regular array search                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Searching for equal element                                           //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_FindFirstEqualAsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindFirstEqualAsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindFirstEqualAsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindFirstEqualAsc_uint64 (const uint64_t array[], size_t size, uint64_t value);
size_t Array_FindLastEqualAsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindLastEqualAsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindLastEqualAsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindLastEqualAsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindFirstEqualAsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindFirstEqualAsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindFirstEqualAsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindFirstEqualAsc_sint64 (const sint64_t array[], size_t size, sint64_t value);
size_t Array_FindLastEqualAsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindLastEqualAsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindLastEqualAsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindLastEqualAsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindFirstEqualAsc_size (const size_t array[], size_t size, size_t value);
size_t Array_FindLastEqualAsc_size (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for greater element                                         //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_FindGreatAsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindGreatAsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindGreatAsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindGreatAsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindGreatAsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindGreatAsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindGreatAsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindGreatAsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindGreatAsc_size (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for greater or equal element                                //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_FindGreatOrEqualAsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindGreatOrEqualAsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindGreatOrEqualAsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindGreatOrEqualAsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindGreatOrEqualAsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindGreatOrEqualAsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindGreatOrEqualAsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindGreatOrEqualAsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindGreatOrEqualAsc_size (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for less element                                            //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_FindLessAsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindLessAsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindLessAsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindLessAsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindLessAsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindLessAsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindLessAsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindLessAsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindLessAsc_size (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for less or equal element                                   //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_FindLessOrEqualAsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindLessOrEqualAsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindLessOrEqualAsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindLessOrEqualAsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindLessOrEqualAsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindLessOrEqualAsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindLessOrEqualAsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindLessOrEqualAsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindLessOrEqualAsc_size (const size_t array[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Searching for equal element                                           //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_FindFirstEqualDsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindFirstEqualDsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindFirstEqualDsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindFirstEqualDsc_uint64 (const uint64_t array[], size_t size, uint64_t value);
size_t Array_FindLastEqualDsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindLastEqualDsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindLastEqualDsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindLastEqualDsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindFirstEqualDsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindFirstEqualDsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindFirstEqualDsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindFirstEqualDsc_sint64 (const sint64_t array[], size_t size, sint64_t value);
size_t Array_FindLastEqualDsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindLastEqualDsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindLastEqualDsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindLastEqualDsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindFirstEqualDsc_size (const size_t array[], size_t size, size_t value);
size_t Array_FindLastEqualDsc_size (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for less element                                            //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_FindLessDsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindLessDsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindLessDsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindLessDsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindLessDsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindLessDsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindLessDsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindLessDsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindLessDsc_size (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for less or equal element                                   //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_FindLessOrEqualDsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindLessOrEqualDsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindLessOrEqualDsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindLessOrEqualDsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindLessOrEqualDsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindLessOrEqualDsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindLessOrEqualDsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindLessOrEqualDsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindLessOrEqualDsc_size (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for greater element                                         //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_FindGreatDsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindGreatDsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindGreatDsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindGreatDsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindGreatDsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindGreatDsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindGreatDsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindGreatDsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindGreatDsc_size (const size_t array[], size_t size, size_t value);

//----------------------------------------------------------------------------//
//      Searching for greater or equal element                                //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_FindGreatOrEqualDsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindGreatOrEqualDsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindGreatOrEqualDsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindGreatOrEqualDsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindGreatOrEqualDsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindGreatOrEqualDsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindGreatOrEqualDsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindGreatOrEqualDsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindGreatOrEqualDsc_size (const size_t array[], size_t size, size_t value);

//============================================================================//
//      Object array search                                                   //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Searching for equal element                                           //
//----------------------------------------------------------------------------//
size_t Array_FindFirstEqualAsc (const void* array[], size_t size, const void *value, Cmp func);
size_t Array_FindLastEqualAsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for greater element                                         //
//----------------------------------------------------------------------------//
size_t Array_FindGreatAsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for greater or equal element                                //
//----------------------------------------------------------------------------//
size_t Array_FindGreatOrEqualAsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for less element                                            //
//----------------------------------------------------------------------------//
size_t Array_FindLessAsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for less or equal element                                   //
//----------------------------------------------------------------------------//
size_t Array_FindLessOrEqualAsc (const void* array[], size_t size, const void *value, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Searching for equal element                                           //
//----------------------------------------------------------------------------//
size_t Array_FindFirstEqualDsc (const void* array[], size_t size, const void *value, Cmp func);
size_t Array_FindLastEqualDsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for less element                                            //
//----------------------------------------------------------------------------//
size_t Array_FindLessDsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for less or equal element                                   //
//----------------------------------------------------------------------------//
size_t Array_FindLessOrEqualDsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for greater element                                         //
//----------------------------------------------------------------------------//
size_t Array_FindGreatDsc (const void* array[], size_t size, const void *value, Cmp func);

//----------------------------------------------------------------------------//
//      Searching for greater or equal element                                //
//----------------------------------------------------------------------------//
size_t Array_FindGreatOrEqualDsc (const void* array[], size_t size, const void *value, Cmp func);

//****************************************************************************//
//      Linear counting                                                       //
//****************************************************************************//

//============================================================================//
//      Element counting                                                      //
//============================================================================//

// Unsigned integer types
size_t Array_Count_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_Count_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_Count_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_Count_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_Count_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_Count_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_Count_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_Count_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_Count_size (const size_t array[], size_t size, size_t value);

//============================================================================//
//      Object counting                                                       //
//============================================================================//
size_t Array_Count (const void* array[], size_t size, const void *value, Cmp func);

//****************************************************************************//
//      Binary counting                                                       //
//****************************************************************************//

//============================================================================//
//      Element counting                                                      //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
size_t Array_CountAsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_CountAsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_CountAsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_CountAsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_CountAsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_CountAsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_CountAsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_CountAsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_CountAsc_size (const size_t array[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
size_t Array_CountDsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_CountDsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_CountDsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_CountDsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_CountDsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_CountDsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_CountDsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_CountDsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_CountDsc_size (const size_t array[], size_t size, size_t value);

//============================================================================//
//      Object counting                                                       //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
size_t Array_CountAsc (const void* array[], size_t size, const void *value, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
size_t Array_CountDsc (const void* array[], size_t size, const void *value, Cmp func);

//****************************************************************************//
//      Replacing                                                             //
//****************************************************************************//

//============================================================================//
//      Element replacing                                                     //
//============================================================================//

// Unsigned integer types
void Array_Replace_uint8 (uint8_t array[], size_t size, uint8_t pattern, uint8_t value);
void Array_Replace_uint16 (uint16_t array[], size_t size, uint16_t pattern, uint16_t value);
void Array_Replace_uint32 (uint32_t array[], size_t size, uint32_t pattern, uint32_t value);
void Array_Replace_uint64 (uint64_t array[], size_t size, uint64_t pattern, uint64_t value);

// Signed integer types
void Array_Replace_sint8 (sint8_t array[], size_t size, sint8_t pattern, sint8_t value);
void Array_Replace_sint16 (sint16_t array[], size_t size, sint16_t pattern, sint16_t value);
void Array_Replace_sint32 (sint32_t array[], size_t size, sint32_t pattern, sint32_t value);
void Array_Replace_sint64 (sint64_t array[], size_t size, sint64_t pattern, sint64_t value);

// Other types
void Array_Replace_size (size_t array[], size_t size, size_t pattern, size_t value);

//============================================================================//
//      Object replacing                                                      //
//============================================================================//
void Array_Replace (const void* array[], size_t size, const void *pattern, const void *value, Cmp func);

//****************************************************************************//
//      Order reversing                                                       //
//****************************************************************************//

//============================================================================//
//      Regular array reversing                                               //
//============================================================================//

// Unsigned integer types
void Array_Reverse_uint8 (uint8_t array[], size_t size);
void Array_Reverse_uint16 (uint16_t array[], size_t size);
void Array_Reverse_uint32 (uint32_t array[], size_t size);
void Array_Reverse_uint64 (uint64_t array[], size_t size);

// Signed integer types
void Array_Reverse_sint8 (sint8_t array[], size_t size);
void Array_Reverse_sint16 (sint16_t array[], size_t size);
void Array_Reverse_sint32 (sint32_t array[], size_t size);
void Array_Reverse_sint64 (sint64_t array[], size_t size);

// Floating-point types
void Array_Reverse_flt32 (flt32_t array[], size_t size);
void Array_Reverse_flt64 (flt64_t array[], size_t size);

// Other types
void Array_Reverse_size (size_t array[], size_t size);

//============================================================================//
//      Object array reversing                                                //
//============================================================================//
void Array_Reverse (const void* array[], size_t size);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//

//============================================================================//
//      Unique elements                                                       //
//============================================================================//

// Unsigned integer types
size_t Array_Unique_uint8 (uint8_t unique[], const uint8_t array[], size_t size);
size_t Array_Unique_uint16 (uint16_t unique[], const uint16_t array[], size_t size);
size_t Array_Unique_uint32 (uint32_t unique[], const uint32_t array[], size_t size);
size_t Array_Unique_uint64 (uint64_t unique[], const uint64_t array[], size_t size);

// Signed integer types
size_t Array_Unique_sint8 (sint8_t unique[], const sint8_t array[], size_t size);
size_t Array_Unique_sint16 (sint16_t unique[], const sint16_t array[], size_t size);
size_t Array_Unique_sint32 (sint32_t unique[], const sint32_t array[], size_t size);
size_t Array_Unique_sint64 (sint64_t unique[], const sint64_t array[], size_t size);

// Other types
size_t Array_Unique_size (size_t unique[], const size_t array[], size_t size);

//============================================================================//
//      Unique objects                                                        //
//============================================================================//
size_t Array_Unique (const void* unique[], const void* array[], size_t size, Cmp func);

//****************************************************************************//
//      Duplicate values                                                      //
//****************************************************************************//

//============================================================================//
//      Duplicate elements                                                    //
//============================================================================//

// Unsigned integer types
size_t Array_Duplicates_uint8 (uint8_t unique[], size_t count[], const uint8_t array[], size_t size);
size_t Array_Duplicates_uint16 (uint16_t unique[], size_t count[], const uint16_t array[], size_t size);
size_t Array_Duplicates_uint32 (uint32_t unique[], size_t count[], const uint32_t array[], size_t size);
size_t Array_Duplicates_uint64 (uint64_t unique[], size_t count[], const uint64_t array[], size_t size);

// Signed integer types
size_t Array_Duplicates_sint8 (sint8_t unique[], size_t count[], const sint8_t array[], size_t size);
size_t Array_Duplicates_sint16 (sint16_t unique[], size_t count[], const sint16_t array[], size_t size);
size_t Array_Duplicates_sint32 (sint32_t unique[], size_t count[], const sint32_t array[], size_t size);
size_t Array_Duplicates_sint64 (sint64_t unique[], size_t count[], const sint64_t array[], size_t size);

// Other types
size_t Array_Duplicates_size (size_t unique[], size_t count[], const size_t array[], size_t size);

//============================================================================//
//      Duplicate objects                                                     //
//============================================================================//
size_t Array_Duplicates (const void* unique[], size_t count[], const void* array[], size_t size, Cmp func);

//****************************************************************************//
//      Insertion sort                                                        //
//****************************************************************************//

//============================================================================//
//      Regular array sorting                                                 //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_InsertSortAsc_uint8 (uint8_t array[], size_t size);
void Array_InsertSortAsc_uint16 (uint16_t array[], size_t size);
void Array_InsertSortAsc_uint32 (uint32_t array[], size_t size);
void Array_InsertSortAsc_uint64 (uint64_t array[], size_t size);

// Signed integer types
void Array_InsertSortAsc_sint8 (sint8_t array[], size_t size);
void Array_InsertSortAsc_sint16 (sint16_t array[], size_t size);
void Array_InsertSortAsc_sint32 (sint32_t array[], size_t size);
void Array_InsertSortAsc_sint64 (sint64_t array[], size_t size);

// Floating-point types
void Array_InsertSortAsc_flt32 (flt32_t array[], size_t size);
void Array_InsertSortAsc_flt64 (flt64_t array[], size_t size);

// Other types
void Array_InsertSortAsc_size (size_t array[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_InsertSortDsc_uint8 (uint8_t array[], size_t size);
void Array_InsertSortDsc_uint16 (uint16_t array[], size_t size);
void Array_InsertSortDsc_uint32 (uint32_t array[], size_t size);
void Array_InsertSortDsc_uint64 (uint64_t array[], size_t size);

// Signed integer types
void Array_InsertSortDsc_sint8 (sint8_t array[], size_t size);
void Array_InsertSortDsc_sint16 (sint16_t array[], size_t size);
void Array_InsertSortDsc_sint32 (sint32_t array[], size_t size);
void Array_InsertSortDsc_sint64 (sint64_t array[], size_t size);

// Floating-point types
void Array_InsertSortDsc_flt32 (flt32_t array[], size_t size);
void Array_InsertSortDsc_flt64 (flt64_t array[], size_t size);

// Other types
void Array_InsertSortDsc_size (size_t array[], size_t size);

//============================================================================//
//      Key array sorting                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_InsertSortKeyAsc_uint8 (uint8_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyAsc_uint16 (uint16_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyAsc_uint32 (uint32_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyAsc_uint64 (uint64_t key[], const void* ptr[], size_t size);

// Signed integer types
void Array_InsertSortKeyAsc_sint8 (sint8_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyAsc_sint16 (sint16_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyAsc_sint32 (sint32_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyAsc_sint64 (sint64_t key[], const void* ptr[], size_t size);

// Floating-point types
void Array_InsertSortKeyAsc_flt32 (flt32_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyAsc_flt64 (flt64_t key[], const void* ptr[], size_t size);

// Other types
void Array_InsertSortKeyAsc_size (size_t key[], const void* ptr[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_InsertSortKeyDsc_uint8 (uint8_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyDsc_uint16 (uint16_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyDsc_uint32 (uint32_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyDsc_uint64 (uint64_t key[], const void* ptr[], size_t size);

// Signed integer types
void Array_InsertSortKeyDsc_sint8 (sint8_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyDsc_sint16 (sint16_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyDsc_sint32 (sint32_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyDsc_sint64 (sint64_t key[], const void* ptr[], size_t size);

// Floating-point types
void Array_InsertSortKeyDsc_flt32 (flt32_t key[], const void* ptr[], size_t size);
void Array_InsertSortKeyDsc_flt64 (flt64_t key[], const void* ptr[], size_t size);

// Other types
void Array_InsertSortKeyDsc_size (size_t key[], const void* ptr[], size_t size);

//============================================================================//
//      Object array sorting                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Array_InsertSortAsc (const void* array[], size_t size, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Array_InsertSortDsc (const void* array[], size_t size, Cmp func);

//****************************************************************************//
//      Quick sort                                                            //
//****************************************************************************//

//============================================================================//
//      Regular array sorting                                                 //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_QuickSortAsc_uint8 (uint8_t array[], size_t size);
void Array_QuickSortAsc_uint16 (uint16_t array[], size_t size);
void Array_QuickSortAsc_uint32 (uint32_t array[], size_t size);
void Array_QuickSortAsc_uint64 (uint64_t array[], size_t size);

// Signed integer types
void Array_QuickSortAsc_sint8 (sint8_t array[], size_t size);
void Array_QuickSortAsc_sint16 (sint16_t array[], size_t size);
void Array_QuickSortAsc_sint32 (sint32_t array[], size_t size);
void Array_QuickSortAsc_sint64 (sint64_t array[], size_t size);

// Floating-point types
void Array_QuickSortAsc_flt32 (flt32_t array[], size_t size);
void Array_QuickSortAsc_flt64 (flt64_t array[], size_t size);

// Other types
void Array_QuickSortAsc_size (size_t array[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_QuickSortDsc_uint8 (uint8_t array[], size_t size);
void Array_QuickSortDsc_uint16 (uint16_t array[], size_t size);
void Array_QuickSortDsc_uint32 (uint32_t array[], size_t size);
void Array_QuickSortDsc_uint64 (uint64_t array[], size_t size);

// Signed integer types
void Array_QuickSortDsc_sint8 (sint8_t array[], size_t size);
void Array_QuickSortDsc_sint16 (sint16_t array[], size_t size);
void Array_QuickSortDsc_sint32 (sint32_t array[], size_t size);
void Array_QuickSortDsc_sint64 (sint64_t array[], size_t size);

// Floating-point types
void Array_QuickSortDsc_flt32 (flt32_t array[], size_t size);
void Array_QuickSortDsc_flt64 (flt64_t array[], size_t size);

// Other types
void Array_QuickSortDsc_size (size_t array[], size_t size);

//============================================================================//
//      Key array sorting                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_QuickSortKeyAsc_uint8 (uint8_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyAsc_uint16 (uint16_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyAsc_uint32 (uint32_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyAsc_uint64 (uint64_t key[], const void* ptr[], size_t size);

// Signed integer types
void Array_QuickSortKeyAsc_sint8 (sint8_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyAsc_sint16 (sint16_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyAsc_sint32 (sint32_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyAsc_sint64 (sint64_t key[], const void* ptr[], size_t size);

// Floating-point types
void Array_QuickSortKeyAsc_flt32 (flt32_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyAsc_flt64 (flt64_t key[], const void* ptr[], size_t size);

// Other types
void Array_QuickSortKeyAsc_size (size_t key[], const void* ptr[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_QuickSortKeyDsc_uint8 (uint8_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyDsc_uint16 (uint16_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyDsc_uint32 (uint32_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyDsc_uint64 (uint64_t key[], const void* ptr[], size_t size);

// Signed integer types
void Array_QuickSortKeyDsc_sint8 (sint8_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyDsc_sint16 (sint16_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyDsc_sint32 (sint32_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyDsc_sint64 (sint64_t key[], const void* ptr[], size_t size);

// Floating-point types
void Array_QuickSortKeyDsc_flt32 (flt32_t key[], const void* ptr[], size_t size);
void Array_QuickSortKeyDsc_flt64 (flt64_t key[], const void* ptr[], size_t size);

// Other types
void Array_QuickSortKeyDsc_size (size_t key[], const void* ptr[], size_t size);

//============================================================================//
//      Object array sorting                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Array_QuickSortAsc (const void* array[], size_t size, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Array_QuickSortDsc (const void* array[], size_t size, Cmp func);

//****************************************************************************//
//      Merge sort                                                            //
//****************************************************************************//

//============================================================================//
//      Regular array sorting                                                 //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_MergeSortAsc_uint8 (uint8_t array[], uint8_t temp[], size_t size);
void Array_MergeSortAsc_uint16 (uint16_t array[], uint16_t temp[], size_t size);
void Array_MergeSortAsc_uint32 (uint32_t array[], uint32_t temp[], size_t size);
void Array_MergeSortAsc_uint64 (uint64_t array[], uint64_t temp[], size_t size);

// Signed integer types
void Array_MergeSortAsc_sint8 (sint8_t array[], sint8_t temp[], size_t size);
void Array_MergeSortAsc_sint16 (sint16_t array[], sint16_t temp[], size_t size);
void Array_MergeSortAsc_sint32 (sint32_t array[], sint32_t temp[], size_t size);
void Array_MergeSortAsc_sint64 (sint64_t array[], sint64_t temp[], size_t size);

// Floating-point types
void Array_MergeSortAsc_flt32 (flt32_t array[], flt32_t temp[], size_t size);
void Array_MergeSortAsc_flt64 (flt64_t array[], flt64_t temp[], size_t size);

// Other types
void Array_MergeSortAsc_size (size_t array[], size_t temp[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_MergeSortDsc_uint8 (uint8_t array[], uint8_t temp[], size_t size);
void Array_MergeSortDsc_uint16 (uint16_t array[], uint16_t temp[], size_t size);
void Array_MergeSortDsc_uint32 (uint32_t array[], uint32_t temp[], size_t size);
void Array_MergeSortDsc_uint64 (uint64_t array[], uint64_t temp[], size_t size);

// Signed integer types
void Array_MergeSortDsc_sint8 (sint8_t array[], sint8_t temp[], size_t size);
void Array_MergeSortDsc_sint16 (sint16_t array[], sint16_t temp[], size_t size);
void Array_MergeSortDsc_sint32 (sint32_t array[], sint32_t temp[], size_t size);
void Array_MergeSortDsc_sint64 (sint64_t array[], sint64_t temp[], size_t size);

// Floating-point types
void Array_MergeSortDsc_flt32 (flt32_t array[], flt32_t temp[], size_t size);
void Array_MergeSortDsc_flt64 (flt64_t array[], flt64_t temp[], size_t size);

// Other types
void Array_MergeSortDsc_size (size_t array[], size_t temp[], size_t size);

//============================================================================//
//      Key array sorting                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_MergeSortKeyAsc_uint8 (uint8_t key[], uint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyAsc_uint16 (uint16_t key[], uint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyAsc_uint32 (uint32_t key[], uint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyAsc_uint64 (uint64_t key[], uint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Signed integer types
void Array_MergeSortKeyAsc_sint8 (sint8_t key[], sint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyAsc_sint16 (sint16_t key[], sint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyAsc_sint32 (sint32_t key[], sint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyAsc_sint64 (sint64_t key[], sint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Floating-point types
void Array_MergeSortKeyAsc_flt32 (flt32_t key[], flt32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyAsc_flt64 (flt64_t key[], flt64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Other types
void Array_MergeSortKeyAsc_size (size_t key[], size_t tkey[], const void* ptr[], const void* tptr[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_MergeSortKeyDsc_uint8 (uint8_t key[], uint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyDsc_uint16 (uint16_t key[], uint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyDsc_uint32 (uint32_t key[], uint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyDsc_uint64 (uint64_t key[], uint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Signed integer types
void Array_MergeSortKeyDsc_sint8 (sint8_t key[], sint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyDsc_sint16 (sint16_t key[], sint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyDsc_sint32 (sint32_t key[], sint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyDsc_sint64 (sint64_t key[], sint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Floating-point types
void Array_MergeSortKeyDsc_flt32 (flt32_t key[], flt32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_MergeSortKeyDsc_flt64 (flt64_t key[], flt64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Other types
void Array_MergeSortKeyDsc_size (size_t key[], size_t tkey[], const void* ptr[], const void* tptr[], size_t size);

//============================================================================//
//      Object array sorting                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Array_MergeSortAsc (const void* array[], const void* temp[], size_t size, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Array_MergeSortDsc (const void* array[], const void* temp[], size_t size, Cmp func);

//****************************************************************************//
//      Radix sort                                                            //
//****************************************************************************//

//============================================================================//
//      Regular array sorting                                                 //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_RadixSortAsc_uint8 (uint8_t array[], uint8_t temp[], size_t size);
void Array_RadixSortAsc_uint16 (uint16_t array[], uint16_t temp[], size_t size);
void Array_RadixSortAsc_uint32 (uint32_t array[], uint32_t temp[], size_t size);
void Array_RadixSortAsc_uint64 (uint64_t array[], uint64_t temp[], size_t size);

// Signed integer types
void Array_RadixSortAsc_sint8 (sint8_t array[], sint8_t temp[], size_t size);
void Array_RadixSortAsc_sint16 (sint16_t array[], sint16_t temp[], size_t size);
void Array_RadixSortAsc_sint32 (sint32_t array[], sint32_t temp[], size_t size);
void Array_RadixSortAsc_sint64 (sint64_t array[], sint64_t temp[], size_t size);

// Floating-point types
void Array_RadixSortAsc_flt32 (flt32_t array[], flt32_t temp[], size_t size);
void Array_RadixSortAsc_flt64 (flt64_t array[], flt64_t temp[], size_t size);

// Other types
void Array_RadixSortAsc_size (size_t array[], size_t temp[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_RadixSortDsc_uint8 (uint8_t array[], uint8_t temp[], size_t size);
void Array_RadixSortDsc_uint16 (uint16_t array[], uint16_t temp[], size_t size);
void Array_RadixSortDsc_uint32 (uint32_t array[], uint32_t temp[], size_t size);
void Array_RadixSortDsc_uint64 (uint64_t array[], uint64_t temp[], size_t size);

// Signed integer types
void Array_RadixSortDsc_sint8 (sint8_t array[], sint8_t temp[], size_t size);
void Array_RadixSortDsc_sint16 (sint16_t array[], sint16_t temp[], size_t size);
void Array_RadixSortDsc_sint32 (sint32_t array[], sint32_t temp[], size_t size);
void Array_RadixSortDsc_sint64 (sint64_t array[], sint64_t temp[], size_t size);

// Floating-point types
void Array_RadixSortDsc_flt32 (flt32_t array[], flt32_t temp[], size_t size);
void Array_RadixSortDsc_flt64 (flt64_t array[], flt64_t temp[], size_t size);

// Other types
void Array_RadixSortDsc_size (size_t array[], size_t temp[], size_t size);

//============================================================================//
//      Key array sorting                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_RadixSortKeyAsc_uint8 (uint8_t key[], uint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyAsc_uint16 (uint16_t key[], uint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyAsc_uint32 (uint32_t key[], uint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyAsc_uint64 (uint64_t key[], uint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Signed integer types
void Array_RadixSortKeyAsc_sint8 (sint8_t key[], sint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyAsc_sint16 (sint16_t key[], sint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyAsc_sint32 (sint32_t key[], sint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyAsc_sint64 (sint64_t key[], sint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Floating-point types
void Array_RadixSortKeyAsc_flt32 (flt32_t key[], flt32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyAsc_flt64 (flt64_t key[], flt64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Other types
void Array_RadixSortKeyAsc_size (size_t key[], size_t tkey[], const void* ptr[], const void* tptr[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_RadixSortKeyDsc_uint8 (uint8_t key[], uint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyDsc_uint16 (uint16_t key[], uint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyDsc_uint32 (uint32_t key[], uint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyDsc_uint64 (uint64_t key[], uint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Signed integer types
void Array_RadixSortKeyDsc_sint8 (sint8_t key[], sint8_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyDsc_sint16 (sint16_t key[], sint16_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyDsc_sint32 (sint32_t key[], sint32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyDsc_sint64 (sint64_t key[], sint64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Floating-point types
void Array_RadixSortKeyDsc_flt32 (flt32_t key[], flt32_t tkey[], const void* ptr[], const void* tptr[], size_t size);
void Array_RadixSortKeyDsc_flt64 (flt64_t key[], flt64_t tkey[], const void* ptr[], const void* tptr[], size_t size);

// Other types
void Array_RadixSortKeyDsc_size (size_t key[], size_t tkey[], const void* ptr[], const void* tptr[], size_t size);

//****************************************************************************//
//      Merging of sorted arrays                                              //
//****************************************************************************//

//============================================================================//
//      Regular array merging                                                 //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_MergeAsc_uint8 (uint8_t target[], const uint8_t source1[], size_t size1, const uint8_t source2[], size_t size2);
void Array_MergeAsc_uint16 (uint16_t target[], const uint16_t source1[], size_t size1, const uint16_t source2[], size_t size2);
void Array_MergeAsc_uint32 (uint32_t target[], const uint32_t source1[], size_t size1, const uint32_t source2[], size_t size2);
void Array_MergeAsc_uint64 (uint64_t target[], const uint64_t source1[], size_t size1, const uint64_t source2[], size_t size2);

// Signed integer types
void Array_MergeAsc_sint8 (sint8_t target[], const sint8_t source1[], size_t size1, const sint8_t source2[], size_t size2);
void Array_MergeAsc_sint16 (sint16_t target[], const sint16_t source1[], size_t size1, const sint16_t source2[], size_t size2);
void Array_MergeAsc_sint32 (sint32_t target[], const sint32_t source1[], size_t size1, const sint32_t source2[], size_t size2);
void Array_MergeAsc_sint64 (sint64_t target[], const sint64_t source1[], size_t size1, const sint64_t source2[], size_t size2);

// Other types
void Array_MergeAsc_size (size_t target[], const size_t source1[], size_t size1, const size_t source2[], size_t size2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_MergeDsc_uint8 (uint8_t target[], const uint8_t source1[], size_t size1, const uint8_t source2[], size_t size2);
void Array_MergeDsc_uint16 (uint16_t target[], const uint16_t source1[], size_t size1, const uint16_t source2[], size_t size2);
void Array_MergeDsc_uint32 (uint32_t target[], const uint32_t source1[], size_t size1, const uint32_t source2[], size_t size2);
void Array_MergeDsc_uint64 (uint64_t target[], const uint64_t source1[], size_t size1, const uint64_t source2[], size_t size2);

// Signed integer types
void Array_MergeDsc_sint8 (sint8_t target[], const sint8_t source1[], size_t size1, const sint8_t source2[], size_t size2);
void Array_MergeDsc_sint16 (sint16_t target[], const sint16_t source1[], size_t size1, const sint16_t source2[], size_t size2);
void Array_MergeDsc_sint32 (sint32_t target[], const sint32_t source1[], size_t size1, const sint32_t source2[], size_t size2);
void Array_MergeDsc_sint64 (sint64_t target[], const sint64_t source1[], size_t size1, const sint64_t source2[], size_t size2);

// Other types
void Array_MergeDsc_size (size_t target[], const size_t source1[], size_t size1, const size_t source2[], size_t size2);

//============================================================================//
//      Key array merging                                                     //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_MergeKeyAsc_uint8 (uint8_t tkey[], void* tptr[], const uint8_t skey1[], const void* sptr1[], size_t size1, const uint8_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyAsc_uint16 (uint16_t tkey[], void* tptr[], const uint16_t skey1[], const void* sptr1[], size_t size1, const uint16_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyAsc_uint32 (uint32_t tkey[], void* tptr[], const uint32_t skey1[], const void* sptr1[], size_t size1, const uint32_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyAsc_uint64 (uint64_t tkey[], void* tptr[], const uint64_t skey1[], const void* sptr1[], size_t size1, const uint64_t skey2[], const void* sptr2[], size_t size2);

// Signed integer types
void Array_MergeKeyAsc_sint8 (sint8_t tkey[], void* tptr[], const sint8_t skey1[], const void* sptr1[], size_t size1, const sint8_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyAsc_sint16 (sint16_t tkey[], void* tptr[], const sint16_t skey1[], const void* sptr1[], size_t size1, const sint16_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyAsc_sint32 (sint32_t tkey[], void* tptr[], const sint32_t skey1[], const void* sptr1[], size_t size1, const sint32_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyAsc_sint64 (sint64_t tkey[], void* tptr[], const sint64_t skey1[], const void* sptr1[], size_t size1, const sint64_t skey2[], const void* sptr2[], size_t size2);

// Other types
void Array_MergeKeyAsc_size (size_t tkey[], void* tptr[], const size_t skey1[], const void* sptr1[], size_t size1, const size_t skey2[], const void* sptr2[], size_t size2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_MergeKeyDsc_uint8 (uint8_t tkey[], void* tptr[], const uint8_t skey1[], const void* sptr1[], size_t size1, const uint8_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyDsc_uint16 (uint16_t tkey[], void* tptr[], const uint16_t skey1[], const void* sptr1[], size_t size1, const uint16_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyDsc_uint32 (uint32_t tkey[], void* tptr[], const uint32_t skey1[], const void* sptr1[], size_t size1, const uint32_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyDsc_uint64 (uint64_t tkey[], void* tptr[], const uint64_t skey1[], const void* sptr1[], size_t size1, const uint64_t skey2[], const void* sptr2[], size_t size2);

// Signed integer types
void Array_MergeKeyDsc_sint8 (sint8_t tkey[], void* tptr[], const sint8_t skey1[], const void* sptr1[], size_t size1, const sint8_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyDsc_sint16 (sint16_t tkey[], void* tptr[], const sint16_t skey1[], const void* sptr1[], size_t size1, const sint16_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyDsc_sint32 (sint32_t tkey[], void* tptr[], const sint32_t skey1[], const void* sptr1[], size_t size1, const sint32_t skey2[], const void* sptr2[], size_t size2);
void Array_MergeKeyDsc_sint64 (sint64_t tkey[], void* tptr[], const sint64_t skey1[], const void* sptr1[], size_t size1, const sint64_t skey2[], const void* sptr2[], size_t size2);

// Other types
void Array_MergeKeyDsc_size (size_t tkey[], void* tptr[], const size_t skey1[], const void* sptr1[], size_t size1, const size_t skey2[], const void* sptr2[], size_t size2);

//============================================================================//
//      Object array merging                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Array_MergeAsc (const void* target[], const void* source1[], size_t size1, const void* source2[], size_t size2, Cmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Array_MergeDsc (const void* target[], const void* source1[], size_t size1, const void* source2[], size_t size2, Cmp func);

//****************************************************************************//
//      Comparison of arrays                                                  //
//****************************************************************************//

// Unsigned integer types
sint64_t Array_Compare_uint8 (const uint8_t array1[], const uint8_t array2[], size_t size);
sint64_t Array_Compare_uint16 (const uint16_t array1[], const uint16_t array2[], size_t size);
sint64_t Array_Compare_uint32 (const uint32_t array1[], const uint32_t array2[], size_t size);
sint64_t Array_Compare_uint64 (const uint64_t array1[], const uint64_t array2[], size_t size);

// Signed integer types
sint64_t Array_Compare_sint8 (const sint8_t array1[], const sint8_t array2[], size_t size);
sint64_t Array_Compare_sint16 (const sint16_t array1[], const sint16_t array2[], size_t size);
sint64_t Array_Compare_sint32 (const sint32_t array1[], const sint32_t array2[], size_t size);
sint64_t Array_Compare_sint64 (const sint64_t array1[], const sint64_t array2[], size_t size);

// Other types
sint64_t Array_Compare_size (const size_t array1[], const size_t array2[], size_t size);
sint64_t Array_Compare_void (const void *array1, const void *array2, size_t size);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

//============================================================================//
//      Check for sort order                                                  //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Regular array check                                                   //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Check for ascending sort order                                        //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_CheckSortAsc_uint8 (const uint8_t array[], size_t size);
size_t Array_CheckSortAsc_uint16 (const uint16_t array[], size_t size);
size_t Array_CheckSortAsc_uint32 (const uint32_t array[], size_t size);
size_t Array_CheckSortAsc_uint64 (const uint64_t array[], size_t size);

// Signed integer types
size_t Array_CheckSortAsc_sint8 (const sint8_t array[], size_t size);
size_t Array_CheckSortAsc_sint16 (const sint16_t array[], size_t size);
size_t Array_CheckSortAsc_sint32 (const sint32_t array[], size_t size);
size_t Array_CheckSortAsc_sint64 (const sint64_t array[], size_t size);

// Floating-point types
size_t Array_CheckSortAsc_flt32 (const flt32_t array[], size_t size);
size_t Array_CheckSortAsc_flt64 (const flt64_t array[], size_t size);

// Other types
size_t Array_CheckSortAsc_size (const size_t array[], size_t size);

//----------------------------------------------------------------------------//
//      Check for descending sort order                                       //
//----------------------------------------------------------------------------//

// Unsigned integer types
size_t Array_CheckSortDsc_uint8 (const uint8_t array[], size_t size);
size_t Array_CheckSortDsc_uint16 (const uint16_t array[], size_t size);
size_t Array_CheckSortDsc_uint32 (const uint32_t array[], size_t size);
size_t Array_CheckSortDsc_uint64 (const uint64_t array[], size_t size);

// Signed integer types
size_t Array_CheckSortDsc_sint8 (const sint8_t array[], size_t size);
size_t Array_CheckSortDsc_sint16 (const sint16_t array[], size_t size);
size_t Array_CheckSortDsc_sint32 (const sint32_t array[], size_t size);
size_t Array_CheckSortDsc_sint64 (const sint64_t array[], size_t size);

// Floating-point types
size_t Array_CheckSortDsc_flt32 (const flt32_t array[], size_t size);
size_t Array_CheckSortDsc_flt64 (const flt64_t array[], size_t size);

// Other types
size_t Array_CheckSortDsc_size (const size_t array[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Object array check                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Check for ascending sort order                                        //
//----------------------------------------------------------------------------//
size_t Array_CheckSortAsc (const void* array[], size_t size, Cmp func);

//----------------------------------------------------------------------------//
//      Check for descending sort order                                       //
//----------------------------------------------------------------------------//
size_t Array_CheckSortDsc (const void* array[], size_t size, Cmp func);

//============================================================================//
//      Check for duplicate values                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Regular array check                                                   //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
size_t Array_CheckDup_uint8 (const uint8_t array[], size_t size);
size_t Array_CheckDup_uint16 (const uint16_t array[], size_t size);
size_t Array_CheckDup_uint32 (const uint32_t array[], size_t size);
size_t Array_CheckDup_uint64 (const uint64_t array[], size_t size);

// Signed integer types
size_t Array_CheckDup_sint8 (const sint8_t array[], size_t size);
size_t Array_CheckDup_sint16 (const sint16_t array[], size_t size);
size_t Array_CheckDup_sint32 (const sint32_t array[], size_t size);
size_t Array_CheckDup_sint64 (const sint64_t array[], size_t size);

// Other types
size_t Array_CheckDup_size (const size_t array[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Object array check                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
size_t Array_CheckDup (const void* array[], size_t size, Cmp func);

//============================================================================//
//      Check for infinite values                                             //
//============================================================================//
size_t Array_CheckInf_flt32 (const flt32_t array[], size_t size);
size_t Array_CheckInf_flt64 (const flt64_t array[], size_t size);

//============================================================================//
//      Check for NaN values                                                  //
//============================================================================//
size_t Array_CheckNaN_flt32 (const flt32_t array[], size_t size);
size_t Array_CheckNaN_flt64 (const flt64_t array[], size_t size);

//============================================================================//
//      Check for differences                                                 //
//============================================================================//

// Unsigned integer types
size_t Array_CheckDiff_uint8 (const uint8_t array1[], const uint8_t array2[], size_t size);
size_t Array_CheckDiff_uint16 (const uint16_t array1[], const uint16_t array2[], size_t size);
size_t Array_CheckDiff_uint32 (const uint32_t array1[], const uint32_t array2[], size_t size);
size_t Array_CheckDiff_uint64 (const uint64_t array1[], const uint64_t array2[], size_t size);

// Signed integer types
size_t Array_CheckDiff_sint8 (const sint8_t array1[], const sint8_t array2[], size_t size);
size_t Array_CheckDiff_sint16 (const sint16_t array1[], const sint16_t array2[], size_t size);
size_t Array_CheckDiff_sint32 (const sint32_t array1[], const sint32_t array2[], size_t size);
size_t Array_CheckDiff_sint64 (const sint64_t array1[], const sint64_t array2[], size_t size);

// Other types
size_t Array_CheckDiff_size (const size_t array1[], const size_t array2[], size_t size);
size_t Array_CheckDiff_void (const void *array1, const void *array2, size_t size);

//============================================================================//
//      Check for overlap                                                     //
//============================================================================//

// Unsigned integer types
bool Array_Overlap_uint8 (const uint8_t array1[], size_t size1, const uint8_t array2[], size_t size2);
bool Array_Overlap_uint16 (const uint16_t array1[], size_t size1, const uint16_t array2[], size_t size2);
bool Array_Overlap_uint32 (const uint32_t array1[], size_t size1, const uint32_t array2[], size_t size2);
bool Array_Overlap_uint64 (const uint64_t array1[], size_t size1, const uint64_t array2[], size_t size2);

// Signed integer types
bool Array_Overlap_sint8 (const sint8_t array1[], size_t size1, const sint8_t array2[], size_t size2);
bool Array_Overlap_sint16 (const sint16_t array1[], size_t size1, const sint16_t array2[], size_t size2);
bool Array_Overlap_sint32 (const sint32_t array1[], size_t size1, const sint32_t array2[], size_t size2);
bool Array_Overlap_sint64 (const sint64_t array1[], size_t size1, const sint64_t array2[], size_t size2);

// Floating-point types
bool Array_Overlap_flt32 (const flt32_t array1[], size_t size1, const flt32_t array2[], size_t size2);
bool Array_Overlap_flt64 (const flt64_t array1[], size_t size1, const flt64_t array2[], size_t size2);

// Other types
bool Array_Overlap_size (const size_t array1[], size_t size1, const size_t array2[], size_t size2);
bool Array_Overlap_void (const void *array1, size_t size1, const void *array2, size_t size2);

//****************************************************************************//
//      Array hashing                                                         //
//****************************************************************************//

//============================================================================//
//      32-bit hash functions                                                 //
//============================================================================//

// Unsigned integer types
uint32_t Array_Hash32_uint8 (const uint8_t array[], size_t size);
uint32_t Array_Hash32_uint16 (const uint16_t array[], size_t size);
uint32_t Array_Hash32_uint32 (const uint32_t array[], size_t size);
uint32_t Array_Hash32_uint64 (const uint64_t array[], size_t size);

// Unsigned integer types
uint32_t Array_Hash32_sint8 (const sint8_t array[], size_t size);
uint32_t Array_Hash32_sint16 (const sint16_t array[], size_t size);
uint32_t Array_Hash32_sint32 (const sint32_t array[], size_t size);
uint32_t Array_Hash32_sint64 (const sint64_t array[], size_t size);

// Floating-point types
uint32_t Array_Hash32_flt32 (const flt32_t array[], size_t size);
uint32_t Array_Hash32_flt64 (const flt64_t array[], size_t size);

// Other types
uint32_t Array_Hash32_size (const size_t array[], size_t size);
uint32_t Array_Hash32_void (const void *array, size_t size);

//============================================================================//
//      64-bit hash functions                                                 //
//============================================================================//

// Unsigned integer types
uint64_t Array_Hash64_uint8 (const uint8_t array[], size_t size);
uint64_t Array_Hash64_uint16 (const uint16_t array[], size_t size);
uint64_t Array_Hash64_uint32 (const uint32_t array[], size_t size);
uint64_t Array_Hash64_uint64 (const uint64_t array[], size_t size);

// Unsigned integer types
uint64_t Array_Hash64_sint8 (const sint8_t array[], size_t size);
uint64_t Array_Hash64_sint16 (const sint16_t array[], size_t size);
uint64_t Array_Hash64_sint32 (const sint32_t array[], size_t size);
uint64_t Array_Hash64_sint64 (const sint64_t array[], size_t size);

// Floating-point types
uint64_t Array_Hash64_flt32 (const flt32_t array[], size_t size);
uint64_t Array_Hash64_flt64 (const flt64_t array[], size_t size);

// Other types
uint64_t Array_Hash64_size (const size_t array[], size_t size);
uint64_t Array_Hash64_void (const void *array, size_t size);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
