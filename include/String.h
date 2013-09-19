/*                                                                      String.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                            SAFE STRING FUNCTIONS                             #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2013, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

//****************************************************************************//
//      String compare constants                                              //
//****************************************************************************//
# define	STR_EQUAL	(0) 		// First string is equal to second string
# define	STR_LESS	(-1) 		// First string is less than second string
# define	STR_GREATER	(+1) 		// First string is greater than second string

//****************************************************************************//
//      Compare function prototypes                                           //
//****************************************************************************//
typedef	sint32_t (*Cmp_char8) (const char8_t string1[], const char8_t string2[]);
typedef	sint32_t (*Cmp_char16) (const char16_t string1[], const char16_t string2[]);
typedef	sint32_t (*Cmp_char32) (const char32_t string1[], const char32_t string2[]);

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
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
static size_t Copy (char8_t target[], size_t maxlen, const char8_t source[]);
static size_t Copy (char16_t target[], size_t maxlen, const char16_t source[]);
static size_t Copy (char32_t target[], size_t maxlen, const char32_t source[]);

// Copying of characters sequence to string
static size_t Copy (char8_t target[], size_t maxlen, const char8_t source[], size_t size);
static size_t Copy (char16_t target[], size_t maxlen, const char16_t source[], size_t size);
static size_t Copy (char32_t target[], size_t maxlen, const char32_t source[], size_t size);

//****************************************************************************//
//      Concatenating                                                         //
//****************************************************************************//

// Concatenating of string to string
static size_t Cat (char8_t target[], size_t maxlen, const char8_t source[]);
static size_t Cat (char16_t target[], size_t maxlen, const char16_t source[]);
static size_t Cat (char32_t target[], size_t maxlen, const char32_t source[]);

// Concatenating of characters sequence to string
static size_t Cat (char8_t target[], size_t maxlen, const char8_t source[], size_t size);
static size_t Cat (char16_t target[], size_t maxlen, const char16_t source[], size_t size);
static size_t Cat (char32_t target[], size_t maxlen, const char32_t source[], size_t size);

//****************************************************************************//
//      String comparison                                                     //
//****************************************************************************//

// Comparison of strings
static sint32_t Compare (const char8_t string1[], const char8_t string2[]);
static sint32_t Compare (const char16_t string1[], const char16_t string2[]);
static sint32_t Compare (const char32_t string1[], const char32_t string2[]);

// Comparison of characters sequences
static sint32_t Compare (const char8_t string1[], const char8_t string2[], size_t size);
static sint32_t Compare (const char16_t string1[], const char16_t string2[], size_t size);
static sint32_t Compare (const char32_t string1[], const char32_t string2[], size_t size);

//****************************************************************************//
//      Value replacement                                                     //
//****************************************************************************//

// Symbol replacing
static void ReplaceSymbol (char8_t string[], char8_t symbol, char8_t value);
static void ReplaceSymbol (char16_t string[], char16_t symbol, char16_t value);
static void ReplaceSymbol (char32_t string[], char32_t symbol, char32_t value);

// String replacing
static void ReplaceString (const char8_t* array[], size_t size, const char8_t string[], const char8_t value[], Cmp_char8 func);
static void ReplaceString (const char16_t* array[], size_t size, const char16_t string[], const char16_t value[], Cmp_char16 func);
static void ReplaceString (const char32_t* array[], size_t size, const char32_t string[], const char32_t value[], Cmp_char32 func);

//****************************************************************************//
//      Symbols search                                                        //
//****************************************************************************//

// Searching for single symbol
static size_t FindSymbol (const char8_t string[], char8_t symbol);
static size_t FindSymbol (const char16_t string[], char16_t symbol);
static size_t FindSymbol (const char32_t string[], char32_t symbol);

// Searching for symbols set
static size_t FindSymbols (const char8_t string[], const char8_t symbols[]);
static size_t FindSymbols (const char16_t string[], const char16_t symbols[]);
static size_t FindSymbols (const char32_t string[], const char32_t symbols[]);

//****************************************************************************//
//      Substring search                                                      //
//****************************************************************************//

// Searching string for pattern
static size_t FindString (const char8_t string[], const char8_t pattern[]);
static size_t FindString (const char16_t string[], const char16_t pattern[]);
static size_t FindString (const char32_t string[], const char32_t pattern[]);

// Searching characters sequence for pattern
static size_t FindString (const char8_t string[], size_t size, const char8_t pattern[]);
static size_t FindString (const char16_t string[], size_t size, const char16_t pattern[]);
static size_t FindString (const char32_t string[], size_t size, const char32_t pattern[]);

//****************************************************************************//
//      String search                                                         //
//****************************************************************************//

//============================================================================//
//      Linear search                                                         //
//============================================================================//

// Forward direction search
static size_t FindFwd (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindFwd (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindFwd (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Backward direction search
static size_t FindBwd (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindBwd (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindBwd (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

//============================================================================//
//      Binary search                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal string
static size_t FindEqualAsc (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindEqualAsc (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindEqualAsc (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for greater string
static size_t FindGreatAsc (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindGreatAsc (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindGreatAsc (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for greater or equal string
static size_t FindGreatOrEqualAsc (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindGreatOrEqualAsc (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindGreatOrEqualAsc (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for less string
static size_t FindLessAsc (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindLessAsc (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindLessAsc (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for less or equal string
static size_t FindLessOrEqualAsc (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindLessOrEqualAsc (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindLessOrEqualAsc (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal string
static size_t FindEqualDsc (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindEqualDsc (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindEqualDsc (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for less string
static size_t FindLessDsc (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindLessDsc (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindLessDsc (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for less or equal string
static size_t FindLessOrEqualDsc (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindLessOrEqualDsc (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindLessOrEqualDsc (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for greater string
static size_t FindGreatDsc (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindGreatDsc (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindGreatDsc (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for greater or equal string
static size_t FindGreatOrEqualDsc (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
static size_t FindGreatOrEqualDsc (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
static size_t FindGreatOrEqualDsc (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

//****************************************************************************//
//      Sorting algorithms                                                    //
//****************************************************************************//

//============================================================================//
//      Array sorting                                                         //
//============================================================================//

// Ascending sort order
static void SortAsc (const char8_t* array[], size_t size, Cmp_char8 func);
static void SortAsc (const char16_t* array[], size_t size, Cmp_char16 func);
static void SortAsc (const char32_t* array[], size_t size, Cmp_char32 func);

// Descending sort order
static void SortDsc (const char8_t* array[], size_t size, Cmp_char8 func);
static void SortDsc (const char16_t* array[], size_t size, Cmp_char16 func);
static void SortDsc (const char32_t* array[], size_t size, Cmp_char32 func);

//============================================================================//
//      Key sorting                                                           //
//============================================================================//

// Ascending sort order
static void SortAsc (const char8_t* key[], const void* ptr[], size_t size, Cmp_char8 func);
static void SortAsc (const char16_t* key[], const void* ptr[], size_t size, Cmp_char16 func);
static void SortAsc (const char32_t* key[], const void* ptr[], size_t size, Cmp_char32 func);

// Descending sort order
static void SortDsc (const char8_t* key[], const void* ptr[], size_t size, Cmp_char8 func);
static void SortDsc (const char16_t* key[], const void* ptr[], size_t size, Cmp_char16 func);
static void SortDsc (const char32_t* key[], const void* ptr[], size_t size, Cmp_char32 func);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for duplicate values
static size_t CheckDup (const char8_t* array[], size_t size, Cmp_char8 func);
static size_t CheckDup (const char16_t* array[], size_t size, Cmp_char16 func);
static size_t CheckDup (const char32_t* array[], size_t size, Cmp_char32 func);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      String length                                                         //
//****************************************************************************//
size_t String_Len_char8 (const char8_t string[]);
size_t String_Len_char16 (const char16_t string[]);
size_t String_Len_char32 (const char32_t string[]);

//****************************************************************************//
//      Copying                                                               //
//****************************************************************************//

// Copying of string to string
size_t String_Copy_char8 (char8_t target[], size_t maxlen, const char8_t source[]);
size_t String_Copy_char16 (char16_t target[], size_t maxlen, const char16_t source[]);
size_t String_Copy_char32 (char32_t target[], size_t maxlen, const char32_t source[]);

// Copying of characters sequence to string
size_t String_CopyN_char8 (char8_t target[], size_t maxlen, const char8_t source[], size_t size);
size_t String_CopyN_char16 (char16_t target[], size_t maxlen, const char16_t source[], size_t size);
size_t String_CopyN_char32 (char32_t target[], size_t maxlen, const char32_t source[], size_t size);

//****************************************************************************//
//      Concatenating                                                         //
//****************************************************************************//

// Concatenating of string to string
size_t String_Cat_char8 (char8_t target[], size_t maxlen, const char8_t source[]);
size_t String_Cat_char16 (char16_t target[], size_t maxlen, const char16_t source[]);
size_t String_Cat_char32 (char32_t target[], size_t maxlen, const char32_t source[]);

// Concatenating of characters sequence to string
size_t String_CatN_char8 (char8_t target[], size_t maxlen, const char8_t source[], size_t size);
size_t String_CatN_char16 (char16_t target[], size_t maxlen, const char16_t source[], size_t size);
size_t String_CatN_char32 (char32_t target[], size_t maxlen, const char32_t source[], size_t size);

//****************************************************************************//
//      String comparison                                                     //
//****************************************************************************//

// Comparison of strings
sint32_t String_Compare_char8 (const char8_t string1[], const char8_t string2[]);
sint32_t String_Compare_char16 (const char16_t string1[], const char16_t string2[]);
sint32_t String_Compare_char32 (const char32_t string1[], const char32_t string2[]);

// Comparison of characters sequences
sint32_t String_CompareN_char8 (const char8_t string1[], const char8_t string2[], size_t size);
sint32_t String_CompareN_char16 (const char16_t string1[], const char16_t string2[], size_t size);
sint32_t String_CompareN_char32 (const char32_t string1[], const char32_t string2[], size_t size);

//****************************************************************************//
//      Value replacement                                                     //
//****************************************************************************//

// Symbol replacing
void String_ReplaceSymbol_char8 (char8_t string[], char8_t symbol, char8_t value);
void String_ReplaceSymbol_char16 (char16_t string[], char16_t symbol, char16_t value);
void String_ReplaceSymbol_char32 (char32_t string[], char32_t symbol, char32_t value);

// String replacing
void String_ReplaceString_char8 (const char8_t* array[], size_t size, const char8_t string[], const char8_t value[], Cmp_char8 func);
void String_ReplaceString_char16 (const char16_t* array[], size_t size, const char16_t string[], const char16_t value[], Cmp_char16 func);
void String_ReplaceString_char32 (const char32_t* array[], size_t size, const char32_t string[], const char32_t value[], Cmp_char32 func);

//****************************************************************************//
//      Symbols search                                                        //
//****************************************************************************//

// Searching for single symbol
size_t String_FindSymbol_char8 (const char8_t string[], char8_t symbol);
size_t String_FindSymbol_char16 (const char16_t string[], char16_t symbol);
size_t String_FindSymbol_char32 (const char32_t string[], char32_t symbol);

// Searching for symbols set
size_t String_FindSymbols_char8 (const char8_t string[], const char8_t symbols[]);
size_t String_FindSymbols_char16 (const char16_t string[], const char16_t symbols[]);
size_t String_FindSymbols_char32 (const char32_t string[], const char32_t symbols[]);

//****************************************************************************//
//      Substring search                                                      //
//****************************************************************************//

// Searching string for pattern
size_t String_FindString_char8 (const char8_t string[], const char8_t pattern[]);
size_t String_FindString_char16 (const char16_t string[], const char16_t pattern[]);
size_t String_FindString_char32 (const char32_t string[], const char32_t pattern[]);

// Searching characters sequence for pattern
size_t String_FindStringN_char8 (const char8_t string[], size_t size, const char8_t pattern[]);
size_t String_FindStringN_char16 (const char16_t string[], size_t size, const char16_t pattern[]);
size_t String_FindStringN_char32 (const char32_t string[], size_t size, const char32_t pattern[]);

//****************************************************************************//
//      String search                                                         //
//****************************************************************************//

//============================================================================//
//      Linear search                                                         //
//============================================================================//

// Forward direction search
size_t String_FindFwd_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindFwd_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindFwd_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Backward direction search
size_t String_FindBwd_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindBwd_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindBwd_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

//============================================================================//
//      Binary search                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal string
size_t String_FindEqualAsc_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindEqualAsc_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindEqualAsc_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for greater string
size_t String_FindGreatAsc_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindGreatAsc_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindGreatAsc_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for greater or equal string
size_t String_FindGreatOrEqualAsc_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindGreatOrEqualAsc_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindGreatOrEqualAsc_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for less string
size_t String_FindLessAsc_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindLessAsc_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindLessAsc_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for less or equal string
size_t String_FindLessOrEqualAsc_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindLessOrEqualAsc_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindLessOrEqualAsc_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal string
size_t String_FindEqualDsc_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindEqualDsc_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindEqualDsc_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for less string
size_t String_FindLessDsc_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindLessDsc_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindLessDsc_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for less or equal string
size_t String_FindLessOrEqualDsc_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindLessOrEqualDsc_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindLessOrEqualDsc_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for greater string
size_t String_FindGreatDsc_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindGreatDsc_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindGreatDsc_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

// Searching for greater or equal string
size_t String_FindGreatOrEqualDsc_char8 (const char8_t* array[], size_t size, const char8_t string[], Cmp_char8 func);
size_t String_FindGreatOrEqualDsc_char16 (const char16_t* array[], size_t size, const char16_t string[], Cmp_char16 func);
size_t String_FindGreatOrEqualDsc_char32 (const char32_t* array[], size_t size, const char32_t string[], Cmp_char32 func);

//****************************************************************************//
//      Sorting algorithms                                                    //
//****************************************************************************//

//============================================================================//
//      Array sorting                                                         //
//============================================================================//

// Ascending sort order
void String_SortAsc_char8 (const char8_t* array[], size_t size, Cmp_char8 func);
void String_SortAsc_char16 (const char16_t* array[], size_t size, Cmp_char16 func);
void String_SortAsc_char32 (const char32_t* array[], size_t size, Cmp_char32 func);

// Descending sort order
void String_SortDsc_char8 (const char8_t* array[], size_t size, Cmp_char8 func);
void String_SortDsc_char16 (const char16_t* array[], size_t size, Cmp_char16 func);
void String_SortDsc_char32 (const char32_t* array[], size_t size, Cmp_char32 func);

//============================================================================//
//      Key sorting                                                           //
//============================================================================//

// Ascending sort order
void String_SortKeyAsc_char8 (const char8_t* key[], const void* ptr[], size_t size, Cmp_char8 func);
void String_SortKeyAsc_char16 (const char16_t* key[], const void* ptr[], size_t size, Cmp_char16 func);
void String_SortKeyAsc_char32 (const char32_t* key[], const void* ptr[], size_t size, Cmp_char32 func);

// Descending sort order
void String_SortKeyDsc_char8 (const char8_t* key[], const void* ptr[], size_t size, Cmp_char8 func);
void String_SortKeyDsc_char16 (const char16_t* key[], const void* ptr[], size_t size, Cmp_char16 func);
void String_SortKeyDsc_char32 (const char32_t* key[], const void* ptr[], size_t size, Cmp_char32 func);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for duplicate values
size_t String_CheckDup_char8 (const char8_t* array[], size_t size, Cmp_char8 func);
size_t String_CheckDup_char16 (const char16_t* array[], size_t size, Cmp_char16 func);
size_t String_CheckDup_char32 (const char32_t* array[], size_t size, Cmp_char32 func);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
