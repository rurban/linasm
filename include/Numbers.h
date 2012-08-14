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

class Numbers
{
public:

//****************************************************************************//
//      Binary numbers conversion                                             //
//****************************************************************************//

// Unsigned integer types
static size_t BinToNum (uint8_t& number, const char8_t string[]);
static size_t BinToNum (uint16_t& number, const char8_t string[]);
static size_t BinToNum (uint32_t& number, const char8_t string[]);
static size_t BinToNum (uint64_t& number, const char8_t string[]);

// Signed integer types
static size_t BinToNum (sint8_t& number, const char8_t string[]);
static size_t BinToNum (sint16_t& number, const char8_t string[]);
static size_t BinToNum (sint32_t& number, const char8_t string[]);
static size_t BinToNum (sint64_t& number, const char8_t string[]);

// Other types
static size_t BinToNum (size_t& number, const char8_t string[]);

//****************************************************************************//
//      Octal numbers conversion                                              //
//****************************************************************************//

// Unsigned integer types
static size_t OctToNum (uint8_t& number, const char8_t string[]);
static size_t OctToNum (uint16_t& number, const char8_t string[]);
static size_t OctToNum (uint32_t& number, const char8_t string[]);
static size_t OctToNum (uint64_t& number, const char8_t string[]);

// Signed integer types
static size_t OctToNum (sint8_t& number, const char8_t string[]);
static size_t OctToNum (sint16_t& number, const char8_t string[]);
static size_t OctToNum (sint32_t& number, const char8_t string[]);
static size_t OctToNum (sint64_t& number, const char8_t string[]);

// Other types
static size_t OctToNum (size_t& number, const char8_t string[]);

//****************************************************************************//
//      Hexadecimal numbers conversion                                        //
//****************************************************************************//

// Unsigned integer types
static size_t HexToNum (uint8_t& number, const char8_t string[]);
static size_t HexToNum (uint16_t& number, const char8_t string[]);
static size_t HexToNum (uint32_t& number, const char8_t string[]);
static size_t HexToNum (uint64_t& number, const char8_t string[]);

// Signed integer types
static size_t HexToNum (sint8_t& number, const char8_t string[]);
static size_t HexToNum (sint16_t& number, const char8_t string[]);
static size_t HexToNum (sint32_t& number, const char8_t string[]);
static size_t HexToNum (sint64_t& number, const char8_t string[]);

// Floating-point types
static size_t HexToNum (flt32_t& number, const char8_t string[]);
static size_t HexToNum (flt64_t& number, const char8_t string[]);

// Other types
static size_t HexToNum (size_t& number, const char8_t string[]);

//****************************************************************************//
//      Decimal numbers conversion                                            //
//****************************************************************************//

// Unsigned integer types
static size_t DecToNum (uint8_t& number, const char8_t string[]);
static size_t DecToNum (uint16_t& number, const char8_t string[]);
static size_t DecToNum (uint32_t& number, const char8_t string[]);
static size_t DecToNum (uint64_t& number, const char8_t string[]);

// Signed integer types
static size_t DecToNum (sint8_t& number, const char8_t string[]);
static size_t DecToNum (sint16_t& number, const char8_t string[]);
static size_t DecToNum (sint32_t& number, const char8_t string[]);
static size_t DecToNum (sint64_t& number, const char8_t string[]);

// Floating-point types
static size_t DecToNum (flt32_t& number, const char8_t string[]);
static size_t DecToNum (flt64_t& number, const char8_t string[]);

// Other types
static size_t DecToNum (size_t& number, const char8_t string[]);
};
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
