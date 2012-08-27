/*                                                                     Numbers.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                         NUMBERS CONVERSION FUNCTIONS                         #
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
class Numbers
{
public:

//****************************************************************************//
//      Binary numbers conversion                                             //
//****************************************************************************//

// Unsigned integer types
static size_t BinToNum (uint8_t *number, const char8_t string[]);
static size_t BinToNum (uint16_t *number, const char8_t string[]);
static size_t BinToNum (uint32_t *number, const char8_t string[]);
static size_t BinToNum (uint64_t *number, const char8_t string[]);

// Signed integer types
static size_t BinToNum (sint8_t *number, const char8_t string[]);
static size_t BinToNum (sint16_t *number, const char8_t string[]);
static size_t BinToNum (sint32_t *number, const char8_t string[]);
static size_t BinToNum (sint64_t *number, const char8_t string[]);

// Other types
static size_t BinToNum (size_t *number, const char8_t string[]);

//****************************************************************************//
//      Octal numbers conversion                                              //
//****************************************************************************//

// Unsigned integer types
static size_t OctToNum (uint8_t *number, const char8_t string[]);
static size_t OctToNum (uint16_t *number, const char8_t string[]);
static size_t OctToNum (uint32_t *number, const char8_t string[]);
static size_t OctToNum (uint64_t *number, const char8_t string[]);

// Signed integer types
static size_t OctToNum (sint8_t *number, const char8_t string[]);
static size_t OctToNum (sint16_t *number, const char8_t string[]);
static size_t OctToNum (sint32_t *number, const char8_t string[]);
static size_t OctToNum (sint64_t *number, const char8_t string[]);

// Other types
static size_t OctToNum (size_t *number, const char8_t string[]);

//****************************************************************************//
//      Hexadecimal numbers conversion                                        //
//****************************************************************************//

// Unsigned integer types
static size_t HexToNum (uint8_t *number, const char8_t string[]);
static size_t HexToNum (uint16_t *number, const char8_t string[]);
static size_t HexToNum (uint32_t *number, const char8_t string[]);
static size_t HexToNum (uint64_t *number, const char8_t string[]);

// Signed integer types
static size_t HexToNum (sint8_t *number, const char8_t string[]);
static size_t HexToNum (sint16_t *number, const char8_t string[]);
static size_t HexToNum (sint32_t *number, const char8_t string[]);
static size_t HexToNum (sint64_t *number, const char8_t string[]);

// Floating-point types
static size_t HexToNum (flt32_t *number, const char8_t string[]);
static size_t HexToNum (flt64_t *number, const char8_t string[]);

// Other types
static size_t HexToNum (size_t *number, const char8_t string[]);

//****************************************************************************//
//      Decimal numbers conversion                                            //
//****************************************************************************//

// Unsigned integer types
static size_t DecToNum (uint8_t *number, const char8_t string[]);
static size_t DecToNum (uint16_t *number, const char8_t string[]);
static size_t DecToNum (uint32_t *number, const char8_t string[]);
static size_t DecToNum (uint64_t *number, const char8_t string[]);

// Signed integer types
static size_t DecToNum (sint8_t *number, const char8_t string[]);
static size_t DecToNum (sint16_t *number, const char8_t string[]);
static size_t DecToNum (sint32_t *number, const char8_t string[]);
static size_t DecToNum (sint64_t *number, const char8_t string[]);

// Floating-point types
static size_t DecToNum (flt32_t *number, const char8_t string[]);
static size_t DecToNum (flt64_t *number, const char8_t string[]);

// Other types
static size_t DecToNum (size_t *number, const char8_t string[]);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Binary numbers conversion                                             //
//****************************************************************************//

// Unsigned integer types
size_t Numbers_BinToNum_uint8 (uint8_t *number, const char8_t string[]);
size_t Numbers_BinToNum_uint16 (uint16_t *number, const char8_t string[]);
size_t Numbers_BinToNum_uint32 (uint32_t *number, const char8_t string[]);
size_t Numbers_BinToNum_uint64 (uint64_t *number, const char8_t string[]);

// Signed integer types
size_t Numbers_BinToNum_sint8 (sint8_t *number, const char8_t string[]);
size_t Numbers_BinToNum_sint16 (sint16_t *number, const char8_t string[]);
size_t Numbers_BinToNum_sint32 (sint32_t *number, const char8_t string[]);
size_t Numbers_BinToNum_sint64 (sint64_t *number, const char8_t string[]);

// Other types
size_t Numbers_BinToNum_size (size_t *number, const char8_t string[]);

//****************************************************************************//
//      Octal numbers conversion                                              //
//****************************************************************************//

// Unsigned integer types
size_t Numbers_OctToNum_uint8 (uint8_t *number, const char8_t string[]);
size_t Numbers_OctToNum_uint16 (uint16_t *number, const char8_t string[]);
size_t Numbers_OctToNum_uint32 (uint32_t *number, const char8_t string[]);
size_t Numbers_OctToNum_uint64 (uint64_t *number, const char8_t string[]);

// Signed integer types
size_t Numbers_OctToNum_sint8 (sint8_t *number, const char8_t string[]);
size_t Numbers_OctToNum_sint16 (sint16_t *number, const char8_t string[]);
size_t Numbers_OctToNum_sint32 (sint32_t *number, const char8_t string[]);
size_t Numbers_OctToNum_sint64 (sint64_t *number, const char8_t string[]);

// Other types
size_t Numbers_OctToNum_size (size_t *number, const char8_t string[]);

//****************************************************************************//
//      Hexadecimal numbers conversion                                        //
//****************************************************************************//

// Unsigned integer types
size_t Numbers_HexToNum_uint8 (uint8_t *number, const char8_t string[]);
size_t Numbers_HexToNum_uint16 (uint16_t *number, const char8_t string[]);
size_t Numbers_HexToNum_uint32 (uint32_t *number, const char8_t string[]);
size_t Numbers_HexToNum_uint64 (uint64_t *number, const char8_t string[]);

// Signed integer types
size_t Numbers_HexToNum_sint8 (sint8_t *number, const char8_t string[]);
size_t Numbers_HexToNum_sint16 (sint16_t *number, const char8_t string[]);
size_t Numbers_HexToNum_sint32 (sint32_t *number, const char8_t string[]);
size_t Numbers_HexToNum_sint64 (sint64_t *number, const char8_t string[]);

// Floating-point types
size_t Numbers_HexToNum_flt32 (flt32_t *number, const char8_t string[]);
size_t Numbers_HexToNum_flt64 (flt64_t *number, const char8_t string[]);

// Other types
size_t Numbers_HexToNum_size (size_t *number, const char8_t string[]);

//****************************************************************************//
//      Decimal numbers conversion                                            //
//****************************************************************************//

// Unsigned integer types
size_t Numbers_DecToNum_uint8 (uint8_t *number, const char8_t string[]);
size_t Numbers_DecToNum_uint16 (uint16_t *number, const char8_t string[]);
size_t Numbers_DecToNum_uint32 (uint32_t *number, const char8_t string[]);
size_t Numbers_DecToNum_uint64 (uint64_t *number, const char8_t string[]);

// Signed integer types
size_t Numbers_DecToNum_sint8 (sint8_t *number, const char8_t string[]);
size_t Numbers_DecToNum_sint16 (sint16_t *number, const char8_t string[]);
size_t Numbers_DecToNum_sint32 (sint32_t *number, const char8_t string[]);
size_t Numbers_DecToNum_sint64 (sint64_t *number, const char8_t string[]);

// Floating-point types
size_t Numbers_DecToNum_flt32 (flt32_t *number, const char8_t string[]);
size_t Numbers_DecToNum_flt64 (flt64_t *number, const char8_t string[]);

// Other types
size_t Numbers_DecToNum_size (size_t *number, const char8_t string[]);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
