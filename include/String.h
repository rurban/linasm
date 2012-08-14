/*                                                                      String.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                            SAFE STRING FUNCTIONS                             #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2012, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

class String
{
public:

//****************************************************************************//
//      String length                                                         //
//****************************************************************************//
static size_t Len (const char8_t string[]);
static size_t Len (const char16_t string[]);
static size_t Len (const char32_t string[]);

//****************************************************************************//
//      Copying                                                               //
//****************************************************************************//

// Copying of string to string
static size_t Copy (char8_t target[], size_t max_len, const char8_t source[]);
static size_t Copy (char16_t target[], size_t max_len, const char16_t source[]);
static size_t Copy (char32_t target[], size_t max_len, const char32_t source[]);

// Copying of characters sequence to string
static size_t Copy (char8_t target[], size_t max_len, const char8_t source[], size_t size);
static size_t Copy (char16_t target[], size_t max_len, const char16_t source[], size_t size);
static size_t Copy (char32_t target[], size_t max_len, const char32_t source[], size_t size);

//****************************************************************************//
//      String comparison                                                     //
//****************************************************************************//

// Checking if strings are equal
static bool IsEqual (const char8_t string1[], const char8_t string2[]);
static bool IsEqual (const char16_t string1[], const char16_t string2[]);
static bool IsEqual (const char32_t string1[], const char32_t string2[]);

// Checking if string is equal to characters sequence
static bool IsEqual (const char8_t string1[], const char8_t string2[], size_t size);
static bool IsEqual (const char16_t string1[], const char16_t string2[], size_t size);
static bool IsEqual (const char32_t string1[], const char32_t string2[], size_t size);

//****************************************************************************//
//      Search algorithms                                                     //
//****************************************************************************//

// Searching for single symbol
static size_t FindSymbol (const char8_t string[], char8_t symbol);
static size_t FindSymbol (const char16_t string[], char16_t symbol);
static size_t FindSymbol (const char32_t string[], char32_t symbol);

// Searching for symbols set
static size_t FindSymbol (const char8_t string[], const char8_t symbols[]);
static size_t FindSymbol (const char16_t string[], const char16_t symbols[]);
static size_t FindSymbol (const char32_t string[], const char32_t symbols[]);

// Searching for string pattern
static size_t FindString (const char8_t string[], const char8_t pattern[]);
static size_t FindString (const char16_t string[], const char16_t pattern[]);
static size_t FindString (const char32_t string[], const char32_t pattern[]);
};
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
