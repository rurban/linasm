/*                                                                       Array.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                  COMMON ROUTINES THAT ARE USEFUL FOR ARRAYS                  #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2012, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

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
//      Order reversing                                                       //
//****************************************************************************//

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

//============================================================================//
//      Bitwise AND                                                           //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Scalar bitwise AND                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void And (uint8_t target[], size_t size, uint8_t value);
static void And (uint16_t target[], size_t size, uint16_t value);
static void And (uint32_t target[], size_t size, uint32_t value);
static void And (uint64_t target[], size_t size, uint64_t value);

// Signed integer types
static void And (sint8_t target[], size_t size, sint8_t value);
static void And (sint16_t target[], size_t size, sint16_t value);
static void And (sint32_t target[], size_t size, sint32_t value);
static void And (sint64_t target[], size_t size, sint64_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Vector bitwise AND                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void And (uint8_t target[], const uint8_t source[], size_t size);
static void And (uint16_t target[], const uint16_t source[], size_t size);
static void And (uint32_t target[], const uint32_t source[], size_t size);
static void And (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
static void And (sint8_t target[], const sint8_t source[], size_t size);
static void And (sint16_t target[], const sint16_t source[], size_t size);
static void And (sint32_t target[], const sint32_t source[], size_t size);
static void And (sint64_t target[], const sint64_t source[], size_t size);

//============================================================================//
//      Bitwise OR                                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Scalar bitwise OR                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void Or (uint8_t target[], size_t size, uint8_t value);
static void Or (uint16_t target[], size_t size, uint16_t value);
static void Or (uint32_t target[], size_t size, uint32_t value);
static void Or (uint64_t target[], size_t size, uint64_t value);

// Signed integer types
static void Or (sint8_t target[], size_t size, sint8_t value);
static void Or (sint16_t target[], size_t size, sint16_t value);
static void Or (sint32_t target[], size_t size, sint32_t value);
static void Or (sint64_t target[], size_t size, sint64_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Vector bitwise OR                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void Or (uint8_t target[], const uint8_t source[], size_t size);
static void Or (uint16_t target[], const uint16_t source[], size_t size);
static void Or (uint32_t target[], const uint32_t source[], size_t size);
static void Or (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
static void Or (sint8_t target[], const sint8_t source[], size_t size);
static void Or (sint16_t target[], const sint16_t source[], size_t size);
static void Or (sint32_t target[], const sint32_t source[], size_t size);
static void Or (sint64_t target[], const sint64_t source[], size_t size);

//============================================================================//
//      Bitwise XOR                                                           //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Scalar bitwise XOR                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void Xor (uint8_t target[], size_t size, uint8_t value);
static void Xor (uint16_t target[], size_t size, uint16_t value);
static void Xor (uint32_t target[], size_t size, uint32_t value);
static void Xor (uint64_t target[], size_t size, uint64_t value);

// Signed integer types
static void Xor (sint8_t target[], size_t size, sint8_t value);
static void Xor (sint16_t target[], size_t size, sint16_t value);
static void Xor (sint32_t target[], size_t size, sint32_t value);
static void Xor (sint64_t target[], size_t size, sint64_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Vector bitwise XOR                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void Xor (uint8_t target[], const uint8_t source[], size_t size);
static void Xor (uint16_t target[], const uint16_t source[], size_t size);
static void Xor (uint32_t target[], const uint32_t source[], size_t size);
static void Xor (uint64_t target[], const uint64_t source[], size_t size);

// Signed integer types
static void Xor (sint8_t target[], const sint8_t source[], size_t size);
static void Xor (sint16_t target[], const sint16_t source[], size_t size);
static void Xor (sint32_t target[], const sint32_t source[], size_t size);
static void Xor (sint64_t target[], const sint64_t source[], size_t size);

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

// Scalar addition
static void Add (flt32_t array[], size_t size, flt32_t value);
static void Add (flt64_t array[], size_t size, flt64_t value);

// Vector addition
static void Add (flt32_t target[], const flt32_t source[], size_t size);
static void Add (flt64_t target[], const flt64_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Subtraction                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Scalar subtraction
static void Sub (flt32_t array[], size_t size, flt32_t value);
static void Sub (flt64_t array[], size_t size, flt64_t value);

// Vector subtraction
static void Sub (flt32_t target[], const flt32_t source[], size_t size);
static void Sub (flt64_t target[], const flt64_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Multiplication                                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Scalar multiplication
static void Mul (flt32_t array[], size_t size, flt32_t value);
static void Mul (flt64_t array[], size_t size, flt64_t value);

// Vector multiplication
static void Mul (flt32_t target[], const flt32_t source[], size_t size);
static void Mul (flt64_t target[], const flt64_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Division                                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Scalar division
static void Div (flt32_t array[], size_t size, flt32_t value);
static void Div (flt64_t array[], size_t size, flt64_t value);

// Vector division
static void Div (flt32_t target[], const flt32_t source[], size_t size);
static void Div (flt64_t target[], const flt64_t source[], size_t size);

//****************************************************************************//
//      Numerical integration                                                 //
//****************************************************************************//

// Sum of elements
static flt32_t Sum (const flt32_t array[], size_t size);
static flt64_t Sum (const flt64_t array[], size_t size);

// Sum of squares
static flt32_t SumSqr (const flt32_t array[], size_t size);
static flt64_t SumSqr (const flt64_t array[], size_t size);

// Sum of multiplied elements
static flt32_t SumMul (const flt32_t array1[], const flt32_t array2[], size_t size);
static flt64_t SumMul (const flt64_t array1[], const flt64_t array2[], size_t size);

//****************************************************************************//
//      Minimum and maximum values                                            //
//****************************************************************************//

// Minimum value
static flt32_t Min (const flt32_t array[], size_t size);
static flt64_t Min (const flt64_t array[], size_t size);

// Minimum absolute value
static flt32_t MinAbs (const flt32_t array[], size_t size);
static flt64_t MinAbs (const flt64_t array[], size_t size);

// Maximum value
static flt32_t Max (const flt32_t array[], size_t size);
static flt64_t Max (const flt64_t array[], size_t size);

// Maximum absolute value
static flt32_t MaxAbs (const flt32_t array[], size_t size);
static flt64_t MaxAbs (const flt64_t array[], size_t size);

//****************************************************************************//
//      Rounding                                                              //
//****************************************************************************//

// Round down (floor)
static void RoundDown (flt32_t array[], size_t size);
static void RoundDown (flt64_t array[], size_t size);

// Round up (ceil)
static void RoundUp (flt32_t array[], size_t size);
static void RoundUp (flt64_t array[], size_t size);

// Round to nearest integer
static void RoundInt (flt32_t array[], size_t size);
static void RoundInt (flt64_t array[], size_t size);

// Round to nearest integer, away from zero
static void Round (flt32_t array[], size_t size);
static void Round (flt64_t array[], size_t size);

// Round to nearest integer, toward zero (truncation)
static void Truncate (flt32_t array[], size_t size);
static void Truncate (flt64_t array[], size_t size);

// Fractional part
static void Frac (flt32_t array[], size_t size);
static void Frac (flt64_t array[], size_t size);

//****************************************************************************//
//      Value replacement                                                     //
//****************************************************************************//

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

//****************************************************************************//
//      Search algorithms                                                     //
//****************************************************************************//

//============================================================================//
//      Linear search                                                         //
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

//============================================================================//
//      Binary search                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static size_t FindAsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindAsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindAsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindAsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindAsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindAsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindAsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindAsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindAsc (const size_t array[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static size_t FindDsc (const uint8_t array[], size_t size, uint8_t value);
static size_t FindDsc (const uint16_t array[], size_t size, uint16_t value);
static size_t FindDsc (const uint32_t array[], size_t size, uint32_t value);
static size_t FindDsc (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindDsc (const sint8_t array[], size_t size, sint8_t value);
static size_t FindDsc (const sint16_t array[], size_t size, sint16_t value);
static size_t FindDsc (const sint32_t array[], size_t size, sint32_t value);
static size_t FindDsc (const sint64_t array[], size_t size, sint64_t value);

// Other types
static size_t FindDsc (const size_t array[], size_t size, size_t value);

//****************************************************************************//
//      Sorting algorithms                                                    //
//****************************************************************************//

//============================================================================//
//      Quick sort                                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Array sorting                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Ascending sort order                                                  //
//----------------------------------------------------------------------------//

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

//----------------------------------------------------------------------------//
//      Descending sort order                                                 //
//----------------------------------------------------------------------------//

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

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Key sorting                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Ascending sort order                                                  //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void QuickSortAsc (uint8_t key[], void* ptr[], size_t size);
static void QuickSortAsc (uint16_t key[], void* ptr[], size_t size);
static void QuickSortAsc (uint32_t key[], void* ptr[], size_t size);
static void QuickSortAsc (uint64_t key[], void* ptr[], size_t size);

// Signed integer types
static void QuickSortAsc (sint8_t key[], void* ptr[], size_t size);
static void QuickSortAsc (sint16_t key[], void* ptr[], size_t size);
static void QuickSortAsc (sint32_t key[], void* ptr[], size_t size);
static void QuickSortAsc (sint64_t key[], void* ptr[], size_t size);

// Floating-point types
static void QuickSortAsc (flt32_t key[], void* ptr[], size_t size);
static void QuickSortAsc (flt64_t key[], void* ptr[], size_t size);

// Other types
static void QuickSortAsc (size_t key[], void* ptr[], size_t size);

//----------------------------------------------------------------------------//
//      Descending sort order                                                 //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void QuickSortDsc (uint8_t key[], void* ptr[], size_t size);
static void QuickSortDsc (uint16_t key[], void* ptr[], size_t size);
static void QuickSortDsc (uint32_t key[], void* ptr[], size_t size);
static void QuickSortDsc (uint64_t key[], void* ptr[], size_t size);

// Signed integer types
static void QuickSortDsc (sint8_t key[], void* ptr[], size_t size);
static void QuickSortDsc (sint16_t key[], void* ptr[], size_t size);
static void QuickSortDsc (sint32_t key[], void* ptr[], size_t size);
static void QuickSortDsc (sint64_t key[], void* ptr[], size_t size);

// Floating-point types
static void QuickSortDsc (flt32_t key[], void* ptr[], size_t size);
static void QuickSortDsc (flt64_t key[], void* ptr[], size_t size);

// Other types
static void QuickSortDsc (size_t key[], void* ptr[], size_t size);

//============================================================================//
//      Radix sort                                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Array sorting                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Ascending sort order                                                  //
//----------------------------------------------------------------------------//

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

//----------------------------------------------------------------------------//
//      Descending sort order                                                 //
//----------------------------------------------------------------------------//

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

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Key sorting                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Ascending sort order                                                  //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void RadixSortAsc (uint8_t key[], uint8_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortAsc (uint16_t key[], uint16_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortAsc (uint32_t key[], uint32_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortAsc (uint64_t key[], uint64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Signed integer types
static void RadixSortAsc (sint8_t key[], sint8_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortAsc (sint16_t key[], sint16_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortAsc (sint32_t key[], sint32_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortAsc (sint64_t key[], sint64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Floating-point types
static void RadixSortAsc (flt32_t key[], flt32_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortAsc (flt64_t key[], flt64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Other types
static void RadixSortAsc (size_t key[], size_t tkey[], void* ptr[], void* tptr[], size_t size);

//----------------------------------------------------------------------------//
//      Descending sort order                                                 //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void RadixSortDsc (uint8_t key[], uint8_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortDsc (uint16_t key[], uint16_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortDsc (uint32_t key[], uint32_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortDsc (uint64_t key[], uint64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Signed integer types
static void RadixSortDsc (sint8_t key[], sint8_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortDsc (sint16_t key[], sint16_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortDsc (sint32_t key[], sint32_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortDsc (sint64_t key[], sint64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Floating-point types
static void RadixSortDsc (flt32_t key[], flt32_t tkey[], void* ptr[], void* tptr[], size_t size);
static void RadixSortDsc (flt64_t key[], flt64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Other types
static void RadixSortDsc (size_t key[], size_t tkey[], void* ptr[], void* tptr[], size_t size);

//****************************************************************************//
//      Merging of sorted arrays                                              //
//****************************************************************************//

//============================================================================//
//      Array merging                                                         //
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
//      Key merging                                                           //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void MergeAsc (uint8_t tkey[], void* tptr[], const uint8_t skey1[], void* sptr1[], size_t size1, const uint8_t skey2[], void* sptr2[], size_t size2);
static void MergeAsc (uint16_t tkey[], void* tptr[], const uint16_t skey1[], void* sptr1[], size_t size1, const uint16_t skey2[], void* sptr2[], size_t size2);
static void MergeAsc (uint32_t tkey[], void* tptr[], const uint32_t skey1[], void* sptr1[], size_t size1, const uint32_t skey2[], void* sptr2[], size_t size2);
static void MergeAsc (uint64_t tkey[], void* tptr[], const uint64_t skey1[], void* sptr1[], size_t size1, const uint64_t skey2[], void* sptr2[], size_t size2);

// Signed integer types
static void MergeAsc (sint8_t tkey[], void* tptr[], const sint8_t skey1[], void* sptr1[], size_t size1, const sint8_t skey2[], void* sptr2[], size_t size2);
static void MergeAsc (sint16_t tkey[], void* tptr[], const sint16_t skey1[], void* sptr1[], size_t size1, const sint16_t skey2[], void* sptr2[], size_t size2);
static void MergeAsc (sint32_t tkey[], void* tptr[], const sint32_t skey1[], void* sptr1[], size_t size1, const sint32_t skey2[], void* sptr2[], size_t size2);
static void MergeAsc (sint64_t tkey[], void* tptr[], const sint64_t skey1[], void* sptr1[], size_t size1, const sint64_t skey2[], void* sptr2[], size_t size2);

// Other types
static void MergeAsc (size_t tkey[], void* tptr[], const size_t skey1[], void* sptr1[], size_t size1, const size_t skey2[], void* sptr2[], size_t size2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static void MergeDsc (uint8_t tkey[], void* tptr[], const uint8_t skey1[], void* sptr1[], size_t size1, const uint8_t skey2[], void* sptr2[], size_t size2);
static void MergeDsc (uint16_t tkey[], void* tptr[], const uint16_t skey1[], void* sptr1[], size_t size1, const uint16_t skey2[], void* sptr2[], size_t size2);
static void MergeDsc (uint32_t tkey[], void* tptr[], const uint32_t skey1[], void* sptr1[], size_t size1, const uint32_t skey2[], void* sptr2[], size_t size2);
static void MergeDsc (uint64_t tkey[], void* tptr[], const uint64_t skey1[], void* sptr1[], size_t size1, const uint64_t skey2[], void* sptr2[], size_t size2);

// Signed integer types
static void MergeDsc (sint8_t tkey[], void* tptr[], const sint8_t skey1[], void* sptr1[], size_t size1, const sint8_t skey2[], void* sptr2[], size_t size2);
static void MergeDsc (sint16_t tkey[], void* tptr[], const sint16_t skey1[], void* sptr1[], size_t size1, const sint16_t skey2[], void* sptr2[], size_t size2);
static void MergeDsc (sint32_t tkey[], void* tptr[], const sint32_t skey1[], void* sptr1[], size_t size1, const sint32_t skey2[], void* sptr2[], size_t size2);
static void MergeDsc (sint64_t tkey[], void* tptr[], const sint64_t skey1[], void* sptr1[], size_t size1, const sint64_t skey2[], void* sptr2[], size_t size2);

// Other types
static void MergeDsc (size_t tkey[], void* tptr[], const size_t skey1[], void* sptr1[], size_t size1, const size_t skey2[], void* sptr2[], size_t size2);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//

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

//****************************************************************************//
//      Duplicate values                                                      //
//****************************************************************************//

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

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

//============================================================================//
//      Check for duplicate values                                            //
//============================================================================//

// Unsigned integer types
static bool HasDuplicates (const uint8_t array[], size_t size);
static bool HasDuplicates (const uint16_t array[], size_t size);
static bool HasDuplicates (const uint32_t array[], size_t size);
static bool HasDuplicates (const uint64_t array[], size_t size);

// Signed integer types
static bool HasDuplicates (const sint8_t array[], size_t size);
static bool HasDuplicates (const sint16_t array[], size_t size);
static bool HasDuplicates (const sint32_t array[], size_t size);
static bool HasDuplicates (const sint64_t array[], size_t size);

//============================================================================//
//      Check for infinite values                                             //
//============================================================================//
static bool HasInf (const flt32_t array[], size_t size);
static bool HasInf (const flt64_t array[], size_t size);

//============================================================================//
//      Check for NaN values                                                  //
//============================================================================//
static bool HasNaN (const flt32_t array[], size_t size);
static bool HasNaN (const flt64_t array[], size_t size);

//============================================================================//
//      Check for equality                                                    //
//============================================================================//

// Unsigned integer types
static bool IsEqual (const uint8_t array1[], const uint8_t array2[], size_t size);
static bool IsEqual (const uint16_t array1[], const uint16_t array2[], size_t size);
static bool IsEqual (const uint32_t array1[], const uint32_t array2[], size_t size);
static bool IsEqual (const uint64_t array1[], const uint64_t array2[], size_t size);

// Signed integer types
static bool IsEqual (const sint8_t array1[], const sint8_t array2[], size_t size);
static bool IsEqual (const sint16_t array1[], const sint16_t array2[], size_t size);
static bool IsEqual (const sint32_t array1[], const sint32_t array2[], size_t size);
static bool IsEqual (const sint64_t array1[], const sint64_t array2[], size_t size);

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
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Order reversing                                                       //
//****************************************************************************//

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

// Scalar addition
void Array_AddScalar_flt32 (flt32_t array[], size_t size, flt32_t value);
void Array_AddScalar_flt64 (flt64_t array[], size_t size, flt64_t value);

// Vector addition
void Array_AddVector_flt32 (flt32_t target[], const flt32_t source[], size_t size);
void Array_AddVector_flt64 (flt64_t target[], const flt64_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Subtraction                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Scalar subtraction
void Array_SubScalar_flt32 (flt32_t array[], size_t size, flt32_t value);
void Array_SubScalar_flt64 (flt64_t array[], size_t size, flt64_t value);

// Vector subtraction
void Array_SubVector_flt32 (flt32_t target[], const flt32_t source[], size_t size);
void Array_SubVector_flt64 (flt64_t target[], const flt64_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Multiplication                                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Scalar multiplication
void Array_MulScalar_flt32 (flt32_t array[], size_t size, flt32_t value);
void Array_MulScalar_flt64 (flt64_t array[], size_t size, flt64_t value);

// Vector multiplication
void Array_MulVector_flt32 (flt32_t target[], const flt32_t source[], size_t size);
void Array_MulVector_flt64 (flt64_t target[], const flt64_t source[], size_t size);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Division                                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Scalar division
void Array_DivScalar_flt32 (flt32_t array[], size_t size, flt32_t value);
void Array_DivScalar_flt64 (flt64_t array[], size_t size, flt64_t value);

// Vector division
void Array_DivVector_flt32 (flt32_t target[], const flt32_t source[], size_t size);
void Array_DivVector_flt64 (flt64_t target[], const flt64_t source[], size_t size);

//****************************************************************************//
//      Numerical integration                                                 //
//****************************************************************************//

// Sum of elements
flt32_t Array_Sum_flt32 (const flt32_t array[], size_t size);
flt64_t Array_Sum_flt64 (const flt64_t array[], size_t size);

// Sum of squares
flt32_t Array_SumSqr_flt32 (const flt32_t array[], size_t size);
flt64_t Array_SumSqr_flt64 (const flt64_t array[], size_t size);

// Sum of multiplied elements
flt32_t Array_SumMul_flt32 (const flt32_t array1[], const flt32_t array2[], size_t size);
flt64_t Array_SumMul_flt64 (const flt64_t array1[], const flt64_t array2[], size_t size);

//****************************************************************************//
//      Minimum and maximum values                                            //
//****************************************************************************//

// Minimum value
flt32_t Array_Min_flt32 (const flt32_t array[], size_t size);
flt64_t Array_Min_flt64 (const flt64_t array[], size_t size);

// Minimum absolute value
flt32_t Array_MinAbs_flt32 (const flt32_t array[], size_t size);
flt64_t Array_MinAbs_flt64 (const flt64_t array[], size_t size);

// Maximum value
flt32_t Array_Max_flt32 (const flt32_t array[], size_t size);
flt64_t Array_Max_flt64 (const flt64_t array[], size_t size);

// Maximum absolute value
flt32_t Array_MaxAbs_flt32 (const flt32_t array[], size_t size);
flt64_t Array_MaxAbs_flt64 (const flt64_t array[], size_t size);

//****************************************************************************//
//      Rounding                                                              //
//****************************************************************************//

// Round down (floor)
void Array_RoundDown_flt32 (flt32_t array[], size_t size);
void Array_RoundDown_flt64 (flt64_t array[], size_t size);

// Round up (ceil)
void Array_RoundUp_flt32 (flt32_t array[], size_t size);
void Array_RoundUp_flt64 (flt64_t array[], size_t size);

// Round to nearest integer
void Array_RoundInt_flt32 (flt32_t array[], size_t size);
void Array_RoundInt_flt64 (flt64_t array[], size_t size);

// Round to nearest integer, away from zero
void Array_Round_flt32 (flt32_t array[], size_t size);
void Array_Round_flt64 (flt64_t array[], size_t size);

// Round to nearest integer, toward zero (truncation)
void Array_Truncate_flt32 (flt32_t array[], size_t size);
void Array_Truncate_flt64 (flt64_t array[], size_t size);

// Fractional part
void Array_Frac_flt32 (flt32_t array[], size_t size);
void Array_Frac_flt64 (flt64_t array[], size_t size);

//****************************************************************************//
//      Value replacement                                                     //
//****************************************************************************//

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

//****************************************************************************//
//      Search algorithms                                                     //
//****************************************************************************//

//============================================================================//
//      Linear search                                                         //
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

//============================================================================//
//      Binary search                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
size_t Array_FindAsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindAsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindAsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindAsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindAsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindAsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindAsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindAsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindAsc_size (const size_t array[], size_t size, size_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
size_t Array_FindDsc_uint8 (const uint8_t array[], size_t size, uint8_t value);
size_t Array_FindDsc_uint16 (const uint16_t array[], size_t size, uint16_t value);
size_t Array_FindDsc_uint32 (const uint32_t array[], size_t size, uint32_t value);
size_t Array_FindDsc_uint64 (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
size_t Array_FindDsc_sint8 (const sint8_t array[], size_t size, sint8_t value);
size_t Array_FindDsc_sint16 (const sint16_t array[], size_t size, sint16_t value);
size_t Array_FindDsc_sint32 (const sint32_t array[], size_t size, sint32_t value);
size_t Array_FindDsc_sint64 (const sint64_t array[], size_t size, sint64_t value);

// Other types
size_t Array_FindDsc_size (const size_t array[], size_t size, size_t value);

//****************************************************************************//
//      Sorting algorithms                                                    //
//****************************************************************************//

//============================================================================//
//      Quick sort                                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Array sorting                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Ascending sort order                                                  //
//----------------------------------------------------------------------------//

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

//----------------------------------------------------------------------------//
//      Descending sort order                                                 //
//----------------------------------------------------------------------------//

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

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Key sorting                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Ascending sort order                                                  //
//----------------------------------------------------------------------------//

// Unsigned integer types
void Array_QuickSortKeyAsc_uint8 (uint8_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyAsc_uint16 (uint16_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyAsc_uint32 (uint32_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyAsc_uint64 (uint64_t key[], void* ptr[], size_t size);

// Signed integer types
void Array_QuickSortKeyAsc_sint8 (sint8_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyAsc_sint16 (sint16_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyAsc_sint32 (sint32_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyAsc_sint64 (sint64_t key[], void* ptr[], size_t size);

// Floating-point types
void Array_QuickSortKeyAsc_flt32 (flt32_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyAsc_flt64 (flt64_t key[], void* ptr[], size_t size);

// Other types
void Array_QuickSortKeyAsc_size (size_t key[], void* ptr[], size_t size);

//----------------------------------------------------------------------------//
//      Descending sort order                                                 //
//----------------------------------------------------------------------------//

// Unsigned integer types
void Array_QuickSortKeyDsc_uint8 (uint8_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyDsc_uint16 (uint16_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyDsc_uint32 (uint32_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyDsc_uint64 (uint64_t key[], void* ptr[], size_t size);

// Signed integer types
void Array_QuickSortKeyDsc_sint8 (sint8_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyDsc_sint16 (sint16_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyDsc_sint32 (sint32_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyDsc_sint64 (sint64_t key[], void* ptr[], size_t size);

// Floating-point types
void Array_QuickSortKeyDsc_flt32 (flt32_t key[], void* ptr[], size_t size);
void Array_QuickSortKeyDsc_flt64 (flt64_t key[], void* ptr[], size_t size);

// Other types
void Array_QuickSortKeyDsc_size (size_t key[], void* ptr[], size_t size);

//============================================================================//
//      Radix sort                                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Array sorting                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Ascending sort order                                                  //
//----------------------------------------------------------------------------//

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

//----------------------------------------------------------------------------//
//      Descending sort order                                                 //
//----------------------------------------------------------------------------//

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

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Key sorting                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Ascending sort order                                                  //
//----------------------------------------------------------------------------//

// Unsigned integer types
void Array_RadixSortKeyAsc_uint8 (uint8_t key[], uint8_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyAsc_uint16 (uint16_t key[], uint16_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyAsc_uint32 (uint32_t key[], uint32_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyAsc_uint64 (uint64_t key[], uint64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Signed integer types
void Array_RadixSortKeyAsc_sint8 (sint8_t key[], sint8_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyAsc_sint16 (sint16_t key[], sint16_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyAsc_sint32 (sint32_t key[], sint32_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyAsc_sint64 (sint64_t key[], sint64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Floating-point types
void Array_RadixSortKeyAsc_flt32 (flt32_t key[], flt32_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyAsc_flt64 (flt64_t key[], flt64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Other types
void Array_RadixSortKeyAsc_size (size_t key[], size_t tkey[], void* ptr[], void* tptr[], size_t size);

//----------------------------------------------------------------------------//
//      Descending sort order                                                 //
//----------------------------------------------------------------------------//

// Unsigned integer types
void Array_RadixSortKeyDsc_uint8 (uint8_t key[], uint8_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyDsc_uint16 (uint16_t key[], uint16_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyDsc_uint32 (uint32_t key[], uint32_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyDsc_uint64 (uint64_t key[], uint64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Signed integer types
void Array_RadixSortKeyDsc_sint8 (sint8_t key[], sint8_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyDsc_sint16 (sint16_t key[], sint16_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyDsc_sint32 (sint32_t key[], sint32_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyDsc_sint64 (sint64_t key[], sint64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Floating-point types
void Array_RadixSortKeyDsc_flt32 (flt32_t key[], flt32_t tkey[], void* ptr[], void* tptr[], size_t size);
void Array_RadixSortKeyDsc_flt64 (flt64_t key[], flt64_t tkey[], void* ptr[], void* tptr[], size_t size);

// Other types
void Array_RadixSortKeyDsc_size (size_t key[], size_t tkey[], void* ptr[], void* tptr[], size_t size);

//****************************************************************************//
//      Merging of sorted arrays                                              //
//****************************************************************************//

//============================================================================//
//      Array merging                                                         //
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
//      Key merging                                                           //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_MergeKeyAsc_uint8 (uint8_t tkey[], void* tptr[], const uint8_t skey1[], void* sptr1[], size_t size1, const uint8_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyAsc_uint16 (uint16_t tkey[], void* tptr[], const uint16_t skey1[], void* sptr1[], size_t size1, const uint16_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyAsc_uint32 (uint32_t tkey[], void* tptr[], const uint32_t skey1[], void* sptr1[], size_t size1, const uint32_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyAsc_uint64 (uint64_t tkey[], void* tptr[], const uint64_t skey1[], void* sptr1[], size_t size1, const uint64_t skey2[], void* sptr2[], size_t size2);

// Signed integer types
void Array_MergeKeyAsc_sint8 (sint8_t tkey[], void* tptr[], const sint8_t skey1[], void* sptr1[], size_t size1, const sint8_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyAsc_sint16 (sint16_t tkey[], void* tptr[], const sint16_t skey1[], void* sptr1[], size_t size1, const sint16_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyAsc_sint32 (sint32_t tkey[], void* tptr[], const sint32_t skey1[], void* sptr1[], size_t size1, const sint32_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyAsc_sint64 (sint64_t tkey[], void* tptr[], const sint64_t skey1[], void* sptr1[], size_t size1, const sint64_t skey2[], void* sptr2[], size_t size2);

// Other types
void Array_MergeKeyAsc_size (size_t tkey[], void* tptr[], const size_t skey1[], void* sptr1[], size_t size1, const size_t skey2[], void* sptr2[], size_t size2);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
void Array_MergeKeyDsc_uint8 (uint8_t tkey[], void* tptr[], const uint8_t skey1[], void* sptr1[], size_t size1, const uint8_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyDsc_uint16 (uint16_t tkey[], void* tptr[], const uint16_t skey1[], void* sptr1[], size_t size1, const uint16_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyDsc_uint32 (uint32_t tkey[], void* tptr[], const uint32_t skey1[], void* sptr1[], size_t size1, const uint32_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyDsc_uint64 (uint64_t tkey[], void* tptr[], const uint64_t skey1[], void* sptr1[], size_t size1, const uint64_t skey2[], void* sptr2[], size_t size2);

// Signed integer types
void Array_MergeKeyDsc_sint8 (sint8_t tkey[], void* tptr[], const sint8_t skey1[], void* sptr1[], size_t size1, const sint8_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyDsc_sint16 (sint16_t tkey[], void* tptr[], const sint16_t skey1[], void* sptr1[], size_t size1, const sint16_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyDsc_sint32 (sint32_t tkey[], void* tptr[], const sint32_t skey1[], void* sptr1[], size_t size1, const sint32_t skey2[], void* sptr2[], size_t size2);
void Array_MergeKeyDsc_sint64 (sint64_t tkey[], void* tptr[], const sint64_t skey1[], void* sptr1[], size_t size1, const sint64_t skey2[], void* sptr2[], size_t size2);

// Other types
void Array_MergeKeyDsc_size (size_t tkey[], void* tptr[], const size_t skey1[], void* sptr1[], size_t size1, const size_t skey2[], void* sptr2[], size_t size2);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//

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

//****************************************************************************//
//      Duplicate values                                                      //
//****************************************************************************//

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

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

//============================================================================//
//      Check for duplicate values                                            //
//============================================================================//

// Unsigned integer types
bool Array_HasDuplicates_uint8 (const uint8_t array[], size_t size);
bool Array_HasDuplicates_uint16 (const uint16_t array[], size_t size);
bool Array_HasDuplicates_uint32 (const uint32_t array[], size_t size);
bool Array_HasDuplicates_uint64 (const uint64_t array[], size_t size);

// Signed integer types
bool Array_HasDuplicates_sint8 (const sint8_t array[], size_t size);
bool Array_HasDuplicates_sint16 (const sint16_t array[], size_t size);
bool Array_HasDuplicates_sint32 (const sint32_t array[], size_t size);
bool Array_HasDuplicates_sint64 (const sint64_t array[], size_t size);

//============================================================================//
//      Check for infinite values                                             //
//============================================================================//
bool Array_HasInf_flt32 (const flt32_t array[], size_t size);
bool Array_HasInf_flt64 (const flt64_t array[], size_t size);

//============================================================================//
//      Check for NaN values                                                  //
//============================================================================//
bool Array_HasNaN_flt32 (const flt32_t array[], size_t size);
bool Array_HasNaN_flt64 (const flt64_t array[], size_t size);

//============================================================================//
//      Check for equality                                                    //
//============================================================================//

// Unsigned integer types
bool Array_IsEqual_uint8 (const uint8_t array1[], const uint8_t array2[], size_t size);
bool Array_IsEqual_uint16 (const uint16_t array1[], const uint16_t array2[], size_t size);
bool Array_IsEqual_uint32 (const uint32_t array1[], const uint32_t array2[], size_t size);
bool Array_IsEqual_uint64 (const uint64_t array1[], const uint64_t array2[], size_t size);

// Signed integer types
bool Array_IsEqual_sint8 (const sint8_t array1[], const sint8_t array2[], size_t size);
bool Array_IsEqual_sint16 (const sint16_t array1[], const sint16_t array2[], size_t size);
bool Array_IsEqual_sint32 (const sint32_t array1[], const sint32_t array2[], size_t size);
bool Array_IsEqual_sint64 (const sint64_t array1[], const sint64_t array2[], size_t size);

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

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
