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

//****************************************************************************//
//      Key structures for searching/sorting algorithms                       //
//****************************************************************************//

// Unsigned integer keys
struct uint8_key
{
	uint8_t		key;		// Key value
	ptr_t		ptr;		// Pointer to element which has this key
};
struct uint16_key
{
	uint16_t	key;		// Key value
	ptr_t		ptr;		// Pointer to element which has this key
};
struct uint32_key
{
	uint32_t	key;		// Key value
	ptr_t		ptr;		// Pointer to element which has this key
};
struct uint64_key
{
	uint64_t	key;		// Key value
	ptr_t		ptr;		// Pointer to element which has this key
};

// Signed integer keys
struct sint8_key
{
	sint8_t		key;		// Key value
	ptr_t		ptr;		// Pointer to element which has this key
};
struct sint16_key
{
	sint16_t	key;		// Key value
	ptr_t		ptr;		// Pointer to element which has this key
};
struct sint32_key
{
	sint32_t	key;		// Key value
	ptr_t		ptr;		// Pointer to element which has this key
};
struct sint64_key
{
	sint64_t	key;		// Key value
	ptr_t		ptr;		// Pointer to element which has this key
};

// Floating-point keys
struct flt32_key
{
	flt32_t		key;		// Key value
	ptr_t		ptr;		// Pointer to element which has this key
};
struct flt64_key
{
	flt64_t		key;		// Key value
	ptr_t		ptr;		// Pointer to element which has this key
};

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
//      Data conversion                                                       //
//****************************************************************************//

// Conversion between floating-point types
static void Convert (flt32_t target[], const flt64_t source[], size_t size);
static void Convert (flt64_t target[], const flt32_t source[], size_t size);

// Conversion from signed integer to floating-point
static void Convert (flt32_t target[], const sint32_t source[], size_t size);
static void Convert (flt64_t target[], const sint32_t source[], size_t size);

// Conversion from floating-point to signed integer
static void Convert (sint32_t target[], const flt32_t source[], size_t size);
static void Convert (sint32_t target[], const flt64_t source[], size_t size);

// Truncating from floating-point to signed integer
static void Truncate (sint32_t target[], const flt32_t source[], size_t size);
static void Truncate (sint32_t target[], const flt64_t source[], size_t size);

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
//      Checks                                                                //
//****************************************************************************//

//============================================================================//
//      Check for NAN values                                                  //
//============================================================================//
static bool HasNAN (const flt32_t array[], size_t size);
static bool HasNAN (const flt64_t array[], size_t size);

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
static size_t FindFwd (uint8_t array[], size_t size, uint8_t value);
static size_t FindFwd (uint16_t array[], size_t size, uint16_t value);
static size_t FindFwd (uint32_t array[], size_t size, uint32_t value);
static size_t FindFwd (uint64_t array[], size_t size, uint64_t value);
static size_t FindFwd (const uint8_t array[], size_t size, uint8_t value);
static size_t FindFwd (const uint16_t array[], size_t size, uint16_t value);
static size_t FindFwd (const uint32_t array[], size_t size, uint32_t value);
static size_t FindFwd (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindFwd (sint8_t array[], size_t size, sint8_t value);
static size_t FindFwd (sint16_t array[], size_t size, sint16_t value);
static size_t FindFwd (sint32_t array[], size_t size, sint32_t value);
static size_t FindFwd (sint64_t array[], size_t size, sint64_t value);
static size_t FindFwd (const sint8_t array[], size_t size, sint8_t value);
static size_t FindFwd (const sint16_t array[], size_t size, sint16_t value);
static size_t FindFwd (const sint32_t array[], size_t size, sint32_t value);
static size_t FindFwd (const sint64_t array[], size_t size, sint64_t value);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Backward direction search                                             //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Unsigned integer types
static size_t FindBwd (uint8_t array[], size_t size, uint8_t value);
static size_t FindBwd (uint16_t array[], size_t size, uint16_t value);
static size_t FindBwd (uint32_t array[], size_t size, uint32_t value);
static size_t FindBwd (uint64_t array[], size_t size, uint64_t value);
static size_t FindBwd (const uint8_t array[], size_t size, uint8_t value);
static size_t FindBwd (const uint16_t array[], size_t size, uint16_t value);
static size_t FindBwd (const uint32_t array[], size_t size, uint32_t value);
static size_t FindBwd (const uint64_t array[], size_t size, uint64_t value);

// Signed integer types
static size_t FindBwd (sint8_t array[], size_t size, sint8_t value);
static size_t FindBwd (sint16_t array[], size_t size, sint16_t value);
static size_t FindBwd (sint32_t array[], size_t size, sint32_t value);
static size_t FindBwd (sint64_t array[], size_t size, sint64_t value);
static size_t FindBwd (const sint8_t array[], size_t size, sint8_t value);
static size_t FindBwd (const sint16_t array[], size_t size, sint16_t value);
static size_t FindBwd (const sint32_t array[], size_t size, sint32_t value);
static size_t FindBwd (const sint64_t array[], size_t size, sint64_t value);

//============================================================================//
//      Binary search                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending order sorted array                                          //
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

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending order sorted array                                         //
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

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Key sorting                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Ascending sort order                                                  //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void QuickSortAsc (uint8_key array[], size_t size);
static void QuickSortAsc (uint16_key array[], size_t size);
static void QuickSortAsc (uint32_key array[], size_t size);
static void QuickSortAsc (uint64_key array[], size_t size);

// Signed integer types
static void QuickSortAsc (sint8_key array[], size_t size);
static void QuickSortAsc (sint16_key array[], size_t size);
static void QuickSortAsc (sint32_key array[], size_t size);
static void QuickSortAsc (sint64_key array[], size_t size);

// Floating-point types
static void QuickSortAsc (flt32_key array[], size_t size);
static void QuickSortAsc (flt64_key array[], size_t size);

//----------------------------------------------------------------------------//
//      Descending sort order                                                 //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void QuickSortDsc (uint8_key array[], size_t size);
static void QuickSortDsc (uint16_key array[], size_t size);
static void QuickSortDsc (uint32_key array[], size_t size);
static void QuickSortDsc (uint64_key array[], size_t size);

// Signed integer types
static void QuickSortDsc (sint8_key array[], size_t size);
static void QuickSortDsc (sint16_key array[], size_t size);
static void QuickSortDsc (sint32_key array[], size_t size);
static void QuickSortDsc (sint64_key array[], size_t size);

// Floating-point types
static void QuickSortDsc (flt32_key array[], size_t size);
static void QuickSortDsc (flt64_key array[], size_t size);

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

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Key sorting                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//----------------------------------------------------------------------------//
//      Ascending sort order                                                  //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void RadixSortAsc (uint8_key array[], uint8_key temp[], size_t size);
static void RadixSortAsc (uint16_key array[], uint16_key temp[], size_t size);
static void RadixSortAsc (uint32_key array[], uint32_key temp[], size_t size);
static void RadixSortAsc (uint64_key array[], uint64_key temp[], size_t size);

// Signed integer types
static void RadixSortAsc (sint8_key array[], sint8_key temp[], size_t size);
static void RadixSortAsc (sint16_key array[], sint16_key temp[], size_t size);
static void RadixSortAsc (sint32_key array[], sint32_key temp[], size_t size);
static void RadixSortAsc (sint64_key array[], sint64_key temp[], size_t size);

// Floating-point types
static void RadixSortAsc (flt32_key array[], flt32_key temp[], size_t size);
static void RadixSortAsc (flt64_key array[], flt64_key temp[], size_t size);

//----------------------------------------------------------------------------//
//      Descending sort order                                                 //
//----------------------------------------------------------------------------//

// Unsigned integer types
static void RadixSortDsc (uint8_key array[], uint8_key temp[], size_t size);
static void RadixSortDsc (uint16_key array[], uint16_key temp[], size_t size);
static void RadixSortDsc (uint32_key array[], uint32_key temp[], size_t size);
static void RadixSortDsc (uint64_key array[], uint64_key temp[], size_t size);

// Signed integer types
static void RadixSortDsc (sint8_key array[], sint8_key temp[], size_t size);
static void RadixSortDsc (sint16_key array[], sint16_key temp[], size_t size);
static void RadixSortDsc (sint32_key array[], sint32_key temp[], size_t size);
static void RadixSortDsc (sint64_key array[], sint64_key temp[], size_t size);

// Floating-point types
static void RadixSortDsc (flt32_key array[], flt32_key temp[], size_t size);
static void RadixSortDsc (flt64_key array[], flt64_key temp[], size_t size);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//

// Unsigned integer types
static size_t Unique (uint8_t array[], size_t size);
static size_t Unique (uint16_t array[], size_t size);
static size_t Unique (uint32_t array[], size_t size);
static size_t Unique (uint64_t array[], size_t size);

// Signed integer types
static size_t Unique (sint8_t array[], size_t size);
static size_t Unique (sint16_t array[], size_t size);
static size_t Unique (sint32_t array[], size_t size);
static size_t Unique (sint64_t array[], size_t size);
};
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
