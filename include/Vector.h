/*                                                                      Vector.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                               VECTOR DATA TYPE                               #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
################################################################################
*/
# pragma	once
# include	<Key.h>

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
//****************************************************************************//
//      Vector class                                                          //
//****************************************************************************//
class Vector
{
private:
	void	*array;		// Pointer to array which holds vector data
	size_t	capacity;	// Capacity of the vector (auto extended if required)
	size_t	size;		// Current vector size
	size_t	futex;		// Container's futex

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
Vector (size_t capacity);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
Vector (const Vector &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~Vector (void);

//****************************************************************************//
//      Access predicates                                                     //
//****************************************************************************//

// Lock operations
bool LockReadings (bool wait);
bool LockWritings (bool wait);

// Release operations
void AllowReadings (void);
void AllowWritings (void);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//
size_t Copy (size_t tpos, const Vector *source, size_t spos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t Move (size_t tpos, Vector *source, size_t spos, size_t count);

//****************************************************************************//
//      Addition of element                                                   //
//****************************************************************************//
bool Push (const data_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool Pop (data_t *data);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Insert (const data_t *data, size_t pos);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool Extract (data_t *data, size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool Set (const data_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool Get (data_t *data, size_t pos) const;

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool Replace (data_t *odata, const data_t *ndata, size_t pos);

//****************************************************************************//
//      Changing elements order                                               //
//****************************************************************************//

// Reversing elements order
size_t Reverse (size_t pos, size_t count);

// Swapping elements
bool Swap (size_t pos1, size_t pos2);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
size_t MinFwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;
size_t MinBwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;

// Maximum value
size_t MaxFwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;
size_t MaxBwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

//============================================================================//
//      Linear search                                                         //
//============================================================================//

// Single key searching
size_t FindKeyFwd (data_t *data, adt_t key, size_t pos, size_t count, KeyCmp func) const;
size_t FindKeyBwd (data_t *data, adt_t key, size_t pos, size_t count, KeyCmp func) const;

// Keys set searching
size_t FindKeysFwd (data_t *data, const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;
size_t FindKeysBwd (data_t *data, const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;

//============================================================================//
//      Binary search                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal element
size_t FindFirstEqualAsc (data_t *data, adt_t key, KeyCmp func) const;
size_t FindLastEqualAsc (data_t *data, adt_t key, KeyCmp func) const;

// Searching for greater element
size_t FindGreatAsc (data_t *data, adt_t key, KeyCmp func) const;

// Searching for greater or equal element
size_t FindGreatOrEqualAsc (data_t *data, adt_t key, KeyCmp func) const;

// Searching for less element
size_t FindLessAsc (data_t *data, adt_t key, KeyCmp func) const;

// Searching for less or equal element
size_t FindLessOrEqualAsc (data_t *data, adt_t key, KeyCmp func) const;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal element
size_t FindFirstEqualDsc (data_t *data, adt_t key, KeyCmp func) const;
size_t FindLastEqualDsc (data_t *data, adt_t key, KeyCmp func) const;

// Searching for less element
size_t FindLessDsc (data_t *data, adt_t key, KeyCmp func) const;

// Searching for less or equal element
size_t FindLessOrEqualDsc (data_t *data, adt_t key, KeyCmp func) const;

// Searching for greater element
size_t FindGreatDsc (data_t *data, adt_t key, KeyCmp func) const;

// Searching for greater or equal element
size_t FindGreatOrEqualDsc (data_t *data, adt_t key, KeyCmp func) const;

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
size_t FindDupFwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;
size_t FindDupBwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Unordered elements searching                                          //
//****************************************************************************//

// Ascending sort order
size_t FindNonAscFwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;
size_t FindNonAscBwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;

// Descending sort order
size_t FindNonDscFwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;
size_t FindNonDscBwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
size_t FindDiffFwd (data_t *data, size_t tpos, const Vector *source, size_t spos, size_t count, KeyCmp func) const;
size_t FindDiffBwd (data_t *data, size_t tpos, const Vector *source, size_t spos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

//============================================================================//
//      Linear counting                                                       //
//============================================================================//

// Single key counting
size_t CountKeyFwd (adt_t key, size_t pos, size_t count, KeyCmp func) const;
size_t CountKeyBwd (adt_t key, size_t pos, size_t count, KeyCmp func) const;

// Keys set counting
size_t CountKeysFwd (const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;
size_t CountKeysBwd (const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;

//============================================================================//
//      Binary counting                                                       //
//============================================================================//
size_t CountAsc (adt_t key, KeyCmp func) const;
size_t CountDsc (adt_t key, KeyCmp func) const;

//****************************************************************************//
//      Insertion sort                                                        //
//****************************************************************************//
size_t InsertSortAsc (KeyCmp func);
size_t InsertSortDsc (KeyCmp func);

//****************************************************************************//
//      Quick sort                                                            //
//****************************************************************************//
size_t QuickSortAsc (KeyCmp func);
size_t QuickSortDsc (KeyCmp func);

//****************************************************************************//
//      Merge sort                                                            //
//****************************************************************************//
size_t MergeSortAsc (KeyCmp func);
size_t MergeSortDsc (KeyCmp func);

//****************************************************************************//
//      Merging of sorted vectors                                             //
//****************************************************************************//
size_t MergeAsc (const Vector *source, KeyCmp func);
size_t MergeDsc (const Vector *source, KeyCmp func);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Unique (const Vector *source, KeyCmp func);

//****************************************************************************//
//      Comparison of vectors                                                 //
//****************************************************************************//
sint64_t Compare (const Vector *source, KeyCmp func) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool CheckSortAsc (KeyCmp func) const;
bool CheckSortDsc (KeyCmp func) const;

// Check for duplicate values
bool CheckDup (KeyCmp func) const;

// Check for equality
bool IsEqual (const Vector *source, KeyCmp func) const;

//****************************************************************************//
//      Vector properties                                                     //
//****************************************************************************//
size_t Capacity (void) const;
size_t Size (void) const;
bool IsEmpty (void) const;
bool IsInit (void) const;
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Vector structure                                                      //
//****************************************************************************//
struct Vector
{
	void	*array;		// Pointer to array which holds vector data
	size_t	capacity;	// Capacity of the vector (auto extended if required)
	size_t	size;		// Current vector size
	size_t	futex;		// Container's futex
};

//****************************************************************************//
//      Init vector structure                                                 //
//****************************************************************************//
void Vector_InitVector (struct Vector *vector, size_t capacity);

//****************************************************************************//
//      Copy vector structure                                                 //
//****************************************************************************//
void Vector_CopyVector (struct Vector *vector, const struct Vector *source);

//****************************************************************************//
//      Free vector structure                                                 //
//****************************************************************************//
void Vector_FreeVector (struct Vector *vector);

//****************************************************************************//
//      Access predicates                                                     //
//****************************************************************************//

// Lock operations
bool Vector_LockReadings (struct Vector *vector, bool wait);
bool Vector_LockWritings (struct Vector *vector, bool wait);

// Release operations
void Vector_AllowReadings (struct Vector *vector);
void Vector_AllowWritings (struct Vector *vector);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//
size_t Vector_Copy (struct Vector *vector, size_t tpos, const struct Vector *source, size_t spos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t Vector_Move (struct Vector *vector, size_t tpos, struct Vector *source, size_t spos, size_t count);

//****************************************************************************//
//      Addition of element                                                   //
//****************************************************************************//
bool Vector_Push (struct Vector *vector, const struct data_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool Vector_Pop (struct Vector *vector, struct data_t *data);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Vector_Insert (struct Vector *vector, const struct data_t *data, size_t pos);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool Vector_Extract (struct Vector *vector, struct data_t *data, size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool Vector_Set (struct Vector *vector, const struct data_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool Vector_Get (const struct Vector *vector, struct data_t *data, size_t pos);

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool Vector_Replace (struct Vector *vector, struct data_t *odata, const struct data_t *ndata, size_t pos);

//****************************************************************************//
//      Changing elements order                                               //
//****************************************************************************//

// Reversing elements order
size_t Vector_Reverse (struct Vector *vector, size_t pos, size_t count);

// Swapping elements
bool Vector_Swap (struct Vector *vector, size_t pos1, size_t pos2);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
size_t Vector_MinFwd (const struct Vector *vector, struct data_t *data, size_t pos, size_t count, KeyCmp func);
size_t Vector_MinBwd (const struct Vector *vector, struct data_t *data, size_t pos, size_t count, KeyCmp func);

// Maximum value
size_t Vector_MaxFwd (const struct Vector *vector, struct data_t *data, size_t pos, size_t count, KeyCmp func);
size_t Vector_MaxBwd (const struct Vector *vector, struct data_t *data, size_t pos, size_t count, KeyCmp func);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

//============================================================================//
//      Linear search                                                         //
//============================================================================//

// Single key searching
size_t Vector_FindKeyFwd (const struct Vector *vector, struct data_t *data, union adt_t key, size_t pos, size_t count, KeyCmp func);
size_t Vector_FindKeyBwd (const struct Vector *vector, struct data_t *data, union adt_t key, size_t pos, size_t count, KeyCmp func);

// Keys set searching
size_t Vector_FindKeysFwd (const struct Vector *vector, struct data_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);
size_t Vector_FindKeysBwd (const struct Vector *vector, struct data_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);

//============================================================================//
//      Binary search                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal element
size_t Vector_FindFirstEqualAsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);
size_t Vector_FindLastEqualAsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);

// Searching for greater element
size_t Vector_FindGreatAsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);

// Searching for greater or equal element
size_t Vector_FindGreatOrEqualAsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);

// Searching for less element
size_t Vector_FindLessAsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);

// Searching for less or equal element
size_t Vector_FindLessOrEqualAsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for equal element
size_t Vector_FindFirstEqualDsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);
size_t Vector_FindLastEqualDsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);

// Searching for less element
size_t Vector_FindLessDsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);

// Searching for less or equal element
size_t Vector_FindLessOrEqualDsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);

// Searching for greater element
size_t Vector_FindGreatDsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);

// Searching for greater or equal element
size_t Vector_FindGreatOrEqualDsc (const struct Vector *vector, struct data_t *data, union adt_t key, KeyCmp func);

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
size_t Vector_FindDupFwd (const struct Vector *vector, struct data_t *data, size_t pos, size_t count, KeyCmp func);
size_t Vector_FindDupBwd (const struct Vector *vector, struct data_t *data, size_t pos, size_t count, KeyCmp func);

//****************************************************************************//
//      Unordered elements searching                                          //
//****************************************************************************//

// Ascending sort order
size_t Vector_FindNonAscFwd (const struct Vector *vector, struct data_t *data, size_t pos, size_t count, KeyCmp func);
size_t Vector_FindNonAscBwd (const struct Vector *vector, struct data_t *data, size_t pos, size_t count, KeyCmp func);

// Descending sort order
size_t Vector_FindNonDscFwd (const struct Vector *vector, struct data_t *data, size_t pos, size_t count, KeyCmp func);
size_t Vector_FindNonDscBwd (const struct Vector *vector, struct data_t *data, size_t pos, size_t count, KeyCmp func);

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
size_t Vector_FindDiffFwd (const struct Vector *vector, struct data_t *data, size_t tpos, const struct Vector *source, size_t spos, size_t count, KeyCmp func);
size_t Vector_FindDiffBwd (const struct Vector *vector, struct data_t *data, size_t tpos, const struct Vector *source, size_t spos, size_t count, KeyCmp func);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

//============================================================================//
//      Linear counting                                                       //
//============================================================================//

// Single key counting
size_t Vector_CountKeyFwd (const struct Vector *vector, union adt_t key, size_t pos, size_t count, KeyCmp func);
size_t Vector_CountKeyBwd (const struct Vector *vector, union adt_t key, size_t pos, size_t count, KeyCmp func);

// Keys set counting
size_t Vector_CountKeysFwd (const struct Vector *vector, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);
size_t Vector_CountKeysBwd (const struct Vector *vector, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);

//============================================================================//
//      Binary counting                                                       //
//============================================================================//
size_t Vector_CountAsc (const struct Vector *vector, union adt_t key, KeyCmp func);
size_t Vector_CountDsc (const struct Vector *vector, union adt_t key, KeyCmp func);

//****************************************************************************//
//      Insertion sort                                                        //
//****************************************************************************//
size_t Vector_InsertSortAsc (struct Vector *vector, KeyCmp func);
size_t Vector_InsertSortDsc (struct Vector *vector, KeyCmp func);

//****************************************************************************//
//      Quick sort                                                            //
//****************************************************************************//
size_t Vector_QuickSortAsc (struct Vector *vector, KeyCmp func);
size_t Vector_QuickSortDsc (struct Vector *vector, KeyCmp func);

//****************************************************************************//
//      Merge sort                                                            //
//****************************************************************************//
size_t Vector_MergeSortAsc (struct Vector *vector, KeyCmp func);
size_t Vector_MergeSortDsc (struct Vector *vector, KeyCmp func);

//****************************************************************************//
//      Merging of sorted vectors                                             //
//****************************************************************************//
size_t Vector_MergeAsc (struct Vector *vector, const struct Vector *source, KeyCmp func);
size_t Vector_MergeDsc (struct Vector *vector, const struct Vector *source, KeyCmp func);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Vector_Unique (struct Vector *vector, const struct Vector *source, KeyCmp func);

//****************************************************************************//
//      Comparison of vectors                                                 //
//****************************************************************************//
sint64_t Vector_Compare (const struct Vector *vector, const struct Vector *source, KeyCmp func);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool Vector_CheckSortAsc (const struct Vector *vector, KeyCmp func);
bool Vector_CheckSortDsc (const struct Vector *vector, KeyCmp func);

// Check for duplicate values
bool Vector_CheckDup (const struct Vector *vector, KeyCmp func);

// Check for equality
bool Vector_IsEqual (const struct Vector *vector, const struct Vector *source, KeyCmp func);

//****************************************************************************//
//      Vector properties                                                     //
//****************************************************************************//
size_t Vector_Capacity (const struct Vector *vector);
size_t Vector_Size (const struct Vector *vector);
bool Vector_IsEmpty (const struct Vector *vector);
bool Vector_IsInit (const struct Vector *vector);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
