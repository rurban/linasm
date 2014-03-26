/*                                                                      String.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                            SAFE STRING FUNCTIONS                             #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2014, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

//****************************************************************************//
//      String compare function prototypes                                    //
//****************************************************************************//
typedef	sint64_t (*CmpChar8) (const char8_t string1[], const char8_t string2[]);
typedef	sint64_t (*CmpChar16) (const char16_t string1[], const char16_t string2[]);
typedef	sint64_t (*CmpChar32) (const char32_t string1[], const char32_t string2[]);

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
static sint64_t Compare (const char8_t string1[], const char8_t string2[]);
static sint64_t Compare (const char16_t string1[], const char16_t string2[]);
static sint64_t Compare (const char32_t string1[], const char32_t string2[]);

// Comparison of characters sequences
static sint64_t Compare (const char8_t string1[], const char8_t string2[], size_t size);
static sint64_t Compare (const char16_t string1[], const char16_t string2[], size_t size);
static sint64_t Compare (const char32_t string1[], const char32_t string2[], size_t size);

//****************************************************************************//
//      Symbol search                                                         //
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
static size_t FindSubString (const char8_t string[], const char8_t pattern[]);
static size_t FindSubString (const char16_t string[], const char16_t pattern[]);
static size_t FindSubString (const char32_t string[], const char32_t pattern[]);

// Searching characters sequence for pattern
static size_t FindSubString (const char8_t string[], size_t size, const char8_t pattern[]);
static size_t FindSubString (const char16_t string[], size_t size, const char16_t pattern[]);
static size_t FindSubString (const char32_t string[], size_t size, const char32_t pattern[]);

//****************************************************************************//
//      String search                                                         //
//****************************************************************************//

//============================================================================//
//      Linear search                                                         //
//============================================================================//

// Forward direction search
static size_t FindFwd (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindFwd (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindFwd (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Backward direction search
static size_t FindBwd (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindBwd (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindBwd (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

//============================================================================//
//      Binary search                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal string
static size_t FindEqualAsc (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindEqualAsc (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindEqualAsc (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for greater string
static size_t FindGreatAsc (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindGreatAsc (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindGreatAsc (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for greater or equal string
static size_t FindGreatOrEqualAsc (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindGreatOrEqualAsc (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindGreatOrEqualAsc (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for less string
static size_t FindLessAsc (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindLessAsc (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindLessAsc (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for less or equal string
static size_t FindLessOrEqualAsc (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindLessOrEqualAsc (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindLessOrEqualAsc (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal string
static size_t FindEqualDsc (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindEqualDsc (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindEqualDsc (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for less string
static size_t FindLessDsc (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindLessDsc (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindLessDsc (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for less or equal string
static size_t FindLessOrEqualDsc (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindLessOrEqualDsc (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindLessOrEqualDsc (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for greater string
static size_t FindGreatDsc (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindGreatDsc (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindGreatDsc (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for greater or equal string
static size_t FindGreatOrEqualDsc (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t FindGreatOrEqualDsc (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t FindGreatOrEqualDsc (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

//****************************************************************************//
//      Counting                                                              //
//****************************************************************************//

//============================================================================//
//      Symbol counting                                                       //
//============================================================================//

// Single symbol counting
static size_t CountSymbol (const char8_t string[], char8_t symbol);
static size_t CountSymbol (const char16_t string[], char16_t symbol);
static size_t CountSymbol (const char32_t string[], char32_t symbol);

// Symbols set counting
static size_t CountSymbols (const char8_t string[], const char8_t symbols[]);
static size_t CountSymbols (const char16_t string[], const char16_t symbols[]);
static size_t CountSymbols (const char32_t string[], const char32_t symbols[]);

//============================================================================//
//      String counting                                                       //
//============================================================================//
static size_t CountString (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
static size_t CountString (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
static size_t CountString (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

//****************************************************************************//
//      Replacing                                                             //
//****************************************************************************//

// Symbol replacing
static void ReplaceSymbol (char8_t string[], char8_t symbol, char8_t value);
static void ReplaceSymbol (char16_t string[], char16_t symbol, char16_t value);
static void ReplaceSymbol (char32_t string[], char32_t symbol, char32_t value);

// String replacing
static void ReplaceString (const char8_t* array[], size_t size, const char8_t string[], const char8_t value[], CmpChar8 func);
static void ReplaceString (const char16_t* array[], size_t size, const char16_t string[], const char16_t value[], CmpChar16 func);
static void ReplaceString (const char32_t* array[], size_t size, const char32_t string[], const char32_t value[], CmpChar32 func);

//****************************************************************************//
//      Sorting algorithms                                                    //
//****************************************************************************//

//============================================================================//
//      Insertion sort                                                        //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Array sorting                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Ascending sort order
static void InsertSortAsc (const char8_t* array[], size_t size, CmpChar8 func);
static void InsertSortAsc (const char16_t* array[], size_t size, CmpChar16 func);
static void InsertSortAsc (const char32_t* array[], size_t size, CmpChar32 func);

// Descending sort order
static void InsertSortDsc (const char8_t* array[], size_t size, CmpChar8 func);
static void InsertSortDsc (const char16_t* array[], size_t size, CmpChar16 func);
static void InsertSortDsc (const char32_t* array[], size_t size, CmpChar32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Key sorting                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Ascending sort order
static void InsertSortKeyAsc (const char8_t* key[], const void* ptr[], size_t size, CmpChar8 func);
static void InsertSortKeyAsc (const char16_t* key[], const void* ptr[], size_t size, CmpChar16 func);
static void InsertSortKeyAsc (const char32_t* key[], const void* ptr[], size_t size, CmpChar32 func);

// Descending sort order
static void InsertSortKeyDsc (const char8_t* key[], const void* ptr[], size_t size, CmpChar8 func);
static void InsertSortKeyDsc (const char16_t* key[], const void* ptr[], size_t size, CmpChar16 func);
static void InsertSortKeyDsc (const char32_t* key[], const void* ptr[], size_t size, CmpChar32 func);

//============================================================================//
//      Quick sort                                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Array sorting                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Ascending sort order
static void QuickSortAsc (const char8_t* array[], size_t size, CmpChar8 func);
static void QuickSortAsc (const char16_t* array[], size_t size, CmpChar16 func);
static void QuickSortAsc (const char32_t* array[], size_t size, CmpChar32 func);

// Descending sort order
static void QuickSortDsc (const char8_t* array[], size_t size, CmpChar8 func);
static void QuickSortDsc (const char16_t* array[], size_t size, CmpChar16 func);
static void QuickSortDsc (const char32_t* array[], size_t size, CmpChar32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Key sorting                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Ascending sort order
static void QuickSortKeyAsc (const char8_t* key[], const void* ptr[], size_t size, CmpChar8 func);
static void QuickSortKeyAsc (const char16_t* key[], const void* ptr[], size_t size, CmpChar16 func);
static void QuickSortKeyAsc (const char32_t* key[], const void* ptr[], size_t size, CmpChar32 func);

// Descending sort order
static void QuickSortKeyDsc (const char8_t* key[], const void* ptr[], size_t size, CmpChar8 func);
static void QuickSortKeyDsc (const char16_t* key[], const void* ptr[], size_t size, CmpChar16 func);
static void QuickSortKeyDsc (const char32_t* key[], const void* ptr[], size_t size, CmpChar32 func);

//****************************************************************************//
//      Reversing elements order                                              //
//****************************************************************************//
static void Reverse (const char8_t* array[], size_t size);
static void Reverse (const char16_t* array[], size_t size);
static void Reverse (const char32_t* array[], size_t size);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
static size_t Unique (char8_t* unique[], const char8_t* array[], size_t size, CmpChar8 func);
static size_t Unique (char16_t* unique[], const char16_t* array[], size_t size, CmpChar16 func);
static size_t Unique (char32_t* unique[], const char32_t* array[], size_t size, CmpChar32 func);

//****************************************************************************//
//      Duplicate values                                                      //
//****************************************************************************//
static size_t Duplicates (char8_t* unique[], size_t count[], const char8_t* array[], size_t size, CmpChar8 func);
static size_t Duplicates (char16_t* unique[], size_t count[], const char16_t* array[], size_t size, CmpChar16 func);
static size_t Duplicates (char32_t* unique[], size_t count[], const char32_t* array[], size_t size, CmpChar32 func);

//****************************************************************************//
//      Merging of sorted strings                                             //
//****************************************************************************//

//============================================================================//
//      Array merging                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void MergeAsc (char8_t* target[], const char8_t* src1[], size_t size1, const char8_t* src2[], size_t size2, CmpChar8 func);
static void MergeAsc (char16_t* target[], const char16_t* src1[], size_t size1, const char16_t* src2[], size_t size2, CmpChar16 func);
static void MergeAsc (char32_t* target[], const char32_t* src1[], size_t size1, const char32_t* src2[], size_t size2, CmpChar32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void MergeDsc (char8_t* target[], const char8_t* src1[], size_t size1, const char8_t* src2[], size_t size2, CmpChar8 func);
static void MergeDsc (char16_t* target[], const char16_t* src1[], size_t size1, const char16_t* src2[], size_t size2, CmpChar16 func);
static void MergeDsc (char32_t* target[], const char32_t* src1[], size_t size1, const char32_t* src2[], size_t size2, CmpChar32 func);

//============================================================================//
//      Key merging                                                           //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void MergeKeyAsc (char8_t* tkey[], void* tptr[], const char8_t* skey1[], const void* sptr1[], size_t size1, const char8_t* skey2[], const void* sptr2[], size_t size2, CmpChar8 func);
static void MergeKeyAsc (char16_t* tkey[], void* tptr[], const char16_t* skey1[], const void* sptr1[], size_t size1, const char16_t* skey2[], const void* sptr2[], size_t size2, CmpChar16 func);
static void MergeKeyAsc (char32_t* tkey[], void* tptr[], const char32_t* skey1[], const void* sptr1[], size_t size1, const char32_t* skey2[], const void* sptr2[], size_t size2, CmpChar32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void MergeKeyDsc (char8_t* tkey[], void* tptr[], const char8_t* skey1[], const void* sptr1[], size_t size1, const char8_t* skey2[], const void* sptr2[], size_t size2, CmpChar8 func);
static void MergeKeyDsc (char16_t* tkey[], void* tptr[], const char16_t* skey1[], const void* sptr1[], size_t size1, const char16_t* skey2[], const void* sptr2[], size_t size2, CmpChar16 func);
static void MergeKeyDsc (char32_t* tkey[], void* tptr[], const char32_t* skey1[], const void* sptr1[], size_t size1, const char32_t* skey2[], const void* sptr2[], size_t size2, CmpChar32 func);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

//============================================================================//
//      Check for sort order                                                  //
//============================================================================//

// Check for ascending sort order
static size_t CheckSortAsc (const char8_t* array[], size_t size, CmpChar8 func);
static size_t CheckSortAsc (const char16_t* array[], size_t size, CmpChar16 func);
static size_t CheckSortAsc (const char32_t* array[], size_t size, CmpChar32 func);

// Check for descending sort order
static size_t CheckSortDsc (const char8_t* array[], size_t size, CmpChar8 func);
static size_t CheckSortDsc (const char16_t* array[], size_t size, CmpChar16 func);
static size_t CheckSortDsc (const char32_t* array[], size_t size, CmpChar32 func);

//============================================================================//
//      Check for duplicate values                                            //
//============================================================================//
static size_t CheckDup (const char8_t* array[], size_t size, CmpChar8 func);
static size_t CheckDup (const char16_t* array[], size_t size, CmpChar16 func);
static size_t CheckDup (const char32_t* array[], size_t size, CmpChar32 func);

//****************************************************************************//
//      String hashing                                                        //
//****************************************************************************//

//============================================================================//
//      32-bit hash functions                                                 //
//============================================================================//
static uint32_t Hash32 (const char8_t string[]);
static uint32_t Hash32 (const char16_t string[]);
static uint32_t Hash32 (const char32_t string[]);

//============================================================================//
//      64-bit hash functions                                                 //
//============================================================================//
static uint64_t Hash64 (const char8_t string[]);
static uint64_t Hash64 (const char16_t string[]);
static uint64_t Hash64 (const char32_t string[]);
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
sint64_t String_Compare_char8 (const char8_t string1[], const char8_t string2[]);
sint64_t String_Compare_char16 (const char16_t string1[], const char16_t string2[]);
sint64_t String_Compare_char32 (const char32_t string1[], const char32_t string2[]);

// Comparison of characters sequences
sint64_t String_CompareN_char8 (const char8_t string1[], const char8_t string2[], size_t size);
sint64_t String_CompareN_char16 (const char16_t string1[], const char16_t string2[], size_t size);
sint64_t String_CompareN_char32 (const char32_t string1[], const char32_t string2[], size_t size);

//****************************************************************************//
//      Symbol search                                                         //
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
size_t String_FindSubString_char8 (const char8_t string[], const char8_t pattern[]);
size_t String_FindSubString_char16 (const char16_t string[], const char16_t pattern[]);
size_t String_FindSubString_char32 (const char32_t string[], const char32_t pattern[]);

// Searching characters sequence for pattern
size_t String_FindSubStringN_char8 (const char8_t string[], size_t size, const char8_t pattern[]);
size_t String_FindSubStringN_char16 (const char16_t string[], size_t size, const char16_t pattern[]);
size_t String_FindSubStringN_char32 (const char32_t string[], size_t size, const char32_t pattern[]);

//****************************************************************************//
//      String search                                                         //
//****************************************************************************//

//============================================================================//
//      Linear search                                                         //
//============================================================================//

// Forward direction search
size_t String_FindFwd_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindFwd_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindFwd_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Backward direction search
size_t String_FindBwd_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindBwd_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindBwd_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

//============================================================================//
//      Binary search                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal string
size_t String_FindEqualAsc_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindEqualAsc_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindEqualAsc_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for greater string
size_t String_FindGreatAsc_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindGreatAsc_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindGreatAsc_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for greater or equal string
size_t String_FindGreatOrEqualAsc_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindGreatOrEqualAsc_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindGreatOrEqualAsc_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for less string
size_t String_FindLessAsc_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindLessAsc_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindLessAsc_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for less or equal string
size_t String_FindLessOrEqualAsc_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindLessOrEqualAsc_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindLessOrEqualAsc_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal string
size_t String_FindEqualDsc_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindEqualDsc_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindEqualDsc_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for less string
size_t String_FindLessDsc_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindLessDsc_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindLessDsc_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for less or equal string
size_t String_FindLessOrEqualDsc_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindLessOrEqualDsc_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindLessOrEqualDsc_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for greater string
size_t String_FindGreatDsc_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindGreatDsc_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindGreatDsc_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

// Searching for greater or equal string
size_t String_FindGreatOrEqualDsc_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_FindGreatOrEqualDsc_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_FindGreatOrEqualDsc_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

//****************************************************************************//
//      Counting                                                              //
//****************************************************************************//

//============================================================================//
//      Symbol counting                                                       //
//============================================================================//

// Single symbol counting
size_t String_CountSymbol_char8 (const char8_t string[], char8_t symbol);
size_t String_CountSymbol_char16 (const char16_t string[], char16_t symbol);
size_t String_CountSymbol_char32 (const char32_t string[], char32_t symbol);

// Symbols set counting
size_t String_CountSymbols_char8 (const char8_t string[], const char8_t symbols[]);
size_t String_CountSymbols_char16 (const char16_t string[], const char16_t symbols[]);
size_t String_CountSymbols_char32 (const char32_t string[], const char32_t symbols[]);

//============================================================================//
//      String counting                                                       //
//============================================================================//
size_t String_CountString_char8 (const char8_t* array[], size_t size, const char8_t string[], CmpChar8 func);
size_t String_CountString_char16 (const char16_t* array[], size_t size, const char16_t string[], CmpChar16 func);
size_t String_CountString_char32 (const char32_t* array[], size_t size, const char32_t string[], CmpChar32 func);

//****************************************************************************//
//      Replacing                                                             //
//****************************************************************************//

// Symbol replacing
void String_ReplaceSymbol_char8 (char8_t string[], char8_t symbol, char8_t value);
void String_ReplaceSymbol_char16 (char16_t string[], char16_t symbol, char16_t value);
void String_ReplaceSymbol_char32 (char32_t string[], char32_t symbol, char32_t value);

// String replacing
void String_ReplaceString_char8 (const char8_t* array[], size_t size, const char8_t string[], const char8_t value[], CmpChar8 func);
void String_ReplaceString_char16 (const char16_t* array[], size_t size, const char16_t string[], const char16_t value[], CmpChar16 func);
void String_ReplaceString_char32 (const char32_t* array[], size_t size, const char32_t string[], const char32_t value[], CmpChar32 func);

//****************************************************************************//
//      Sorting algorithms                                                    //
//****************************************************************************//

//============================================================================//
//      Insertion sort                                                        //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Array sorting                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Ascending sort order
void String_InsertSortAsc_char8 (const char8_t* array[], size_t size, CmpChar8 func);
void String_InsertSortAsc_char16 (const char16_t* array[], size_t size, CmpChar16 func);
void String_InsertSortAsc_char32 (const char32_t* array[], size_t size, CmpChar32 func);

// Descending sort order
void String_InsertSortDsc_char8 (const char8_t* array[], size_t size, CmpChar8 func);
void String_InsertSortDsc_char16 (const char16_t* array[], size_t size, CmpChar16 func);
void String_InsertSortDsc_char32 (const char32_t* array[], size_t size, CmpChar32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Key sorting                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Ascending sort order
void String_InsertSortKeyAsc_char8 (const char8_t* key[], const void* ptr[], size_t size, CmpChar8 func);
void String_InsertSortKeyAsc_char16 (const char16_t* key[], const void* ptr[], size_t size, CmpChar16 func);
void String_InsertSortKeyAsc_char32 (const char32_t* key[], const void* ptr[], size_t size, CmpChar32 func);

// Descending sort order
void String_InsertSortKeyDsc_char8 (const char8_t* key[], const void* ptr[], size_t size, CmpChar8 func);
void String_InsertSortKeyDsc_char16 (const char16_t* key[], const void* ptr[], size_t size, CmpChar16 func);
void String_InsertSortKeyDsc_char32 (const char32_t* key[], const void* ptr[], size_t size, CmpChar32 func);

//============================================================================//
//      Quick sort                                                            //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Array sorting                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Ascending sort order
void String_QuickSortAsc_char8 (const char8_t* array[], size_t size, CmpChar8 func);
void String_QuickSortAsc_char16 (const char16_t* array[], size_t size, CmpChar16 func);
void String_QuickSortAsc_char32 (const char32_t* array[], size_t size, CmpChar32 func);

// Descending sort order
void String_QuickSortDsc_char8 (const char8_t* array[], size_t size, CmpChar8 func);
void String_QuickSortDsc_char16 (const char16_t* array[], size_t size, CmpChar16 func);
void String_QuickSortDsc_char32 (const char32_t* array[], size_t size, CmpChar32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Key sorting                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Ascending sort order
void String_QuickSortKeyAsc_char8 (const char8_t* key[], const void* ptr[], size_t size, CmpChar8 func);
void String_QuickSortKeyAsc_char16 (const char16_t* key[], const void* ptr[], size_t size, CmpChar16 func);
void String_QuickSortKeyAsc_char32 (const char32_t* key[], const void* ptr[], size_t size, CmpChar32 func);

// Descending sort order
void String_QuickSortKeyDsc_char8 (const char8_t* key[], const void* ptr[], size_t size, CmpChar8 func);
void String_QuickSortKeyDsc_char16 (const char16_t* key[], const void* ptr[], size_t size, CmpChar16 func);
void String_QuickSortKeyDsc_char32 (const char32_t* key[], const void* ptr[], size_t size, CmpChar32 func);

//****************************************************************************//
//      Reversing elements order                                              //
//****************************************************************************//
void String_Reverse_char8 (const char8_t* array[], size_t size);
void String_Reverse_char16 (const char16_t* array[], size_t size);
void String_Reverse_char32 (const char32_t* array[], size_t size);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t String_Unique_char8 (char8_t* unique[], const char8_t* array[], size_t size, CmpChar8 func);
size_t String_Unique_char16 (char16_t* unique[], const char16_t* array[], size_t size, CmpChar16 func);
size_t String_Unique_char32 (char32_t* unique[], const char32_t* array[], size_t size, CmpChar32 func);

//****************************************************************************//
//      Duplicate values                                                      //
//****************************************************************************//
size_t String_Duplicates_char8 (char8_t* unique[], size_t count[], const char8_t* array[], size_t size, CmpChar8 func);
size_t String_Duplicates_char16 (char16_t* unique[], size_t count[], const char16_t* array[], size_t size, CmpChar16 func);
size_t String_Duplicates_char32 (char32_t* unique[], size_t count[], const char32_t* array[], size_t size, CmpChar32 func);

//****************************************************************************//
//      Merging of sorted strings                                             //
//****************************************************************************//

//============================================================================//
//      Array merging                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void String_MergeAsc_char8 (char8_t* target[], const char8_t* src1[], size_t size1, const char8_t* src2[], size_t size2, CmpChar8 func);
void String_MergeAsc_char16 (char16_t* target[], const char16_t* src1[], size_t size1, const char16_t* src2[], size_t size2, CmpChar16 func);
void String_MergeAsc_char32 (char32_t* target[], const char32_t* src1[], size_t size1, const char32_t* src2[], size_t size2, CmpChar32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void String_MergeDsc_char8 (char8_t* target[], const char8_t* src1[], size_t size1, const char8_t* src2[], size_t size2, CmpChar8 func);
void String_MergeDsc_char16 (char16_t* target[], const char16_t* src1[], size_t size1, const char16_t* src2[], size_t size2, CmpChar16 func);
void String_MergeDsc_char32 (char32_t* target[], const char32_t* src1[], size_t size1, const char32_t* src2[], size_t size2, CmpChar32 func);

//============================================================================//
//      Key merging                                                           //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void String_MergeKeyAsc_char8 (char8_t* tkey[], void* tptr[], const char8_t* skey1[], const void* sptr1[], size_t size1, const char8_t* skey2[], const void* sptr2[], size_t size2, CmpChar8 func);
void String_MergeKeyAsc_char16 (char16_t* tkey[], void* tptr[], const char16_t* skey1[], const void* sptr1[], size_t size1, const char16_t* skey2[], const void* sptr2[], size_t size2, CmpChar16 func);
void String_MergeKeyAsc_char32 (char32_t* tkey[], void* tptr[], const char32_t* skey1[], const void* sptr1[], size_t size1, const char32_t* skey2[], const void* sptr2[], size_t size2, CmpChar32 func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void String_MergeKeyDsc_char8 (char8_t* tkey[], void* tptr[], const char8_t* skey1[], const void* sptr1[], size_t size1, const char8_t* skey2[], const void* sptr2[], size_t size2, CmpChar8 func);
void String_MergeKeyDsc_char16 (char16_t* tkey[], void* tptr[], const char16_t* skey1[], const void* sptr1[], size_t size1, const char16_t* skey2[], const void* sptr2[], size_t size2, CmpChar16 func);
void String_MergeKeyDsc_char32 (char32_t* tkey[], void* tptr[], const char32_t* skey1[], const void* sptr1[], size_t size1, const char32_t* skey2[], const void* sptr2[], size_t size2, CmpChar32 func);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

//============================================================================//
//      Check for sort order                                                  //
//============================================================================//

// Check for ascending sort order
size_t String_CheckSortAsc_char8 (const char8_t* array[], size_t size, CmpChar8 func);
size_t String_CheckSortAsc_char16 (const char16_t* array[], size_t size, CmpChar16 func);
size_t String_CheckSortAsc_char32 (const char32_t* array[], size_t size, CmpChar32 func);

// Check for descending sort order
size_t String_CheckSortDsc_char8 (const char8_t* array[], size_t size, CmpChar8 func);
size_t String_CheckSortDsc_char16 (const char16_t* array[], size_t size, CmpChar16 func);
size_t String_CheckSortDsc_char32 (const char32_t* array[], size_t size, CmpChar32 func);

//============================================================================//
//      Check for duplicate values                                            //
//============================================================================//
size_t String_CheckDup_char8 (const char8_t* array[], size_t size, CmpChar8 func);
size_t String_CheckDup_char16 (const char16_t* array[], size_t size, CmpChar16 func);
size_t String_CheckDup_char32 (const char32_t* array[], size_t size, CmpChar32 func);

//****************************************************************************//
//      String hashing                                                        //
//****************************************************************************//

//============================================================================//
//      32-bit hash functions                                                 //
//============================================================================//
uint32_t String_Hash32_char8 (const char8_t string[]);
uint32_t String_Hash32_char16 (const char16_t string[]);
uint32_t String_Hash32_char32 (const char32_t string[]);

//============================================================================//
//      64-bit hash functions                                                 //
//============================================================================//
uint64_t String_Hash64_char8 (const char8_t string[]);
uint64_t String_Hash64_char16 (const char16_t string[]);
uint64_t String_Hash64_char32 (const char32_t string[]);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
