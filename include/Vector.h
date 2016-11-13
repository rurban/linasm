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
	void		*array;		// Pointer to array which holds vector data
	size_t		capacity;	// Capacity of the vector (auto extended if required)
	size_t		size;		// Current vector size
	size_t		futex;		// Container's futex
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
Vector (size_t capacity, CopyFunc cfunc, DelFunc dfunc, void *ptr);

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
bool Push (const pair_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool Pop (void);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Insert (const pair_t *data, size_t pos);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool Extract (size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool Set (const pair_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool Get (pair_t *data, size_t pos) const;

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
size_t MinFwd (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;
size_t MinBwd (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;

// Maximum value
size_t MaxFwd (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;
size_t MaxBwd (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

//============================================================================//
//      Linear search                                                         //
//============================================================================//

// Single key searching
size_t FindKeyFwd (pair_t *data, adt_t key, size_t pos, size_t count, KeyCmp kfunc) const;
size_t FindKeyBwd (pair_t *data, adt_t key, size_t pos, size_t count, KeyCmp kfunc) const;

// Keys set searching
size_t FindKeysFwd (pair_t *data, const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc) const;
size_t FindKeysBwd (pair_t *data, const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc) const;

//============================================================================//
//      Binary search                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for first equal key
size_t FindFirstEqualAsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

// Searching for last equal key
size_t FindLastEqualAsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

// Searching for greater key
size_t FindGreatAsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

// Searching for greater or equal key
size_t FindGreatOrEqualAsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

// Searching for less key
size_t FindLessAsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

// Searching for less or equal key
size_t FindLessOrEqualAsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for first equal key
size_t FindFirstEqualDsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

// Searching for last equal key
size_t FindLastEqualDsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

// Searching for less key
size_t FindLessDsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

// Searching for less or equal key
size_t FindLessOrEqualDsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

// Searching for greater key
size_t FindGreatDsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

// Searching for greater or equal key
size_t FindGreatOrEqualDsc (pair_t *data, adt_t key, KeyCmp kfunc) const;

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
size_t FindDupFwd (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;
size_t FindDupBwd (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;

//****************************************************************************//
//      Unordered elements searching                                          //
//****************************************************************************//

// Ascending sort order
size_t FindNonAscFwd (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;
size_t FindNonAscBwd (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;

// Descending sort order
size_t FindNonDscFwd (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;
size_t FindNonDscBwd (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
size_t FindDiffFwd (pair_t *data, size_t tpos, const Vector *source, size_t spos, size_t count, KeyCmp kfunc) const;
size_t FindDiffBwd (pair_t *data, size_t tpos, const Vector *source, size_t spos, size_t count, KeyCmp kfunc) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

//============================================================================//
//      Linear counting                                                       //
//============================================================================//

// Single key counting
size_t CountKeyFwd (adt_t key, size_t pos, size_t count, KeyCmp kfunc) const;
size_t CountKeyBwd (adt_t key, size_t pos, size_t count, KeyCmp kfunc) const;

// Keys set counting
size_t CountKeysFwd (const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc) const;
size_t CountKeysBwd (const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc) const;

//============================================================================//
//      Binary counting                                                       //
//============================================================================//
size_t CountAsc (adt_t key, KeyCmp kfunc) const;
size_t CountDsc (adt_t key, KeyCmp kfunc) const;

//****************************************************************************//
//      Insertion sort                                                        //
//****************************************************************************//
size_t InsertSortAsc (KeyCmp kfunc);
size_t InsertSortDsc (KeyCmp kfunc);

//****************************************************************************//
//      Quick sort                                                            //
//****************************************************************************//
size_t QuickSortAsc (KeyCmp kfunc);
size_t QuickSortDsc (KeyCmp kfunc);

//****************************************************************************//
//      Merge sort                                                            //
//****************************************************************************//
size_t MergeSortAsc (KeyCmp kfunc);
size_t MergeSortDsc (KeyCmp kfunc);

//****************************************************************************//
//      Merging of sorted vectors                                             //
//****************************************************************************//
size_t MergeAsc (Vector *source, KeyCmp kfunc);
size_t MergeDsc (Vector *source, KeyCmp kfunc);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Unique (const Vector *source, KeyCmp kfunc);

//****************************************************************************//
//      Comparison of vectors                                                 //
//****************************************************************************//
sint64_t Compare (const Vector *source, KeyCmp kfunc) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool CheckSortAsc (KeyCmp kfunc) const;
bool CheckSortDsc (KeyCmp kfunc) const;

// Check for duplicate values
bool CheckDup (KeyCmp kfunc) const;

// Check for equality
bool IsEqual (const Vector *source, KeyCmp kfunc) const;

//****************************************************************************//
//      Vector properties                                                     //
//****************************************************************************//
CopyFunc CopyFunction (void) const;
DelFunc DeleteFunction (void) const;
void* UserData (void) const;
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
	void		*array;		// Pointer to array which holds vector data
	size_t		capacity;	// Capacity of the vector (auto extended if required)
	size_t		size;		// Current vector size
	size_t		futex;		// Container's futex
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data
};

//****************************************************************************//
//      Init vector structure                                                 //
//****************************************************************************//
void Vector_InitVector (struct Vector *vector, size_t capacity, CopyFunc cfunc, DelFunc dfunc, void *ptr);

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
bool Vector_Push (struct Vector *vector, const struct pair_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool Vector_Pop (struct Vector *vector);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Vector_Insert (struct Vector *vector, const struct pair_t *data, size_t pos);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool Vector_Extract (struct Vector *vector, size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool Vector_Set (struct Vector *vector, const struct pair_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool Vector_Get (const struct Vector *vector, struct pair_t *data, size_t pos);

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
size_t Vector_MinFwd (const struct Vector *vector, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);
size_t Vector_MinBwd (const struct Vector *vector, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);

// Maximum value
size_t Vector_MaxFwd (const struct Vector *vector, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);
size_t Vector_MaxBwd (const struct Vector *vector, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

//============================================================================//
//      Linear search                                                         //
//============================================================================//

// Single key searching
size_t Vector_FindKeyFwd (const struct Vector *vector, struct pair_t *data, union adt_t key, size_t pos, size_t count, KeyCmp kfunc);
size_t Vector_FindKeyBwd (const struct Vector *vector, struct pair_t *data, union adt_t key, size_t pos, size_t count, KeyCmp kfunc);

// Keys set searching
size_t Vector_FindKeysFwd (const struct Vector *vector, struct pair_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc);
size_t Vector_FindKeysBwd (const struct Vector *vector, struct pair_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc);

//============================================================================//
//      Binary search                                                         //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Ascending sort order                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for first equal key
size_t Vector_FindFirstEqualAsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

// Searching for last equal key
size_t Vector_FindLastEqualAsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

// Searching for greater key
size_t Vector_FindGreatAsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

// Searching for greater or equal key
size_t Vector_FindGreatOrEqualAsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

// Searching for less key
size_t Vector_FindLessAsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

// Searching for less or equal key
size_t Vector_FindLessOrEqualAsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Descending sort order                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Searching for first equal key
size_t Vector_FindFirstEqualDsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

// Searching for last equal key
size_t Vector_FindLastEqualDsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

// Searching for less key
size_t Vector_FindLessDsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

// Searching for less or equal key
size_t Vector_FindLessOrEqualDsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

// Searching for greater key
size_t Vector_FindGreatDsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

// Searching for greater or equal key
size_t Vector_FindGreatOrEqualDsc (const struct Vector *vector, struct pair_t *data, union adt_t key, KeyCmp kfunc);

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
size_t Vector_FindDupFwd (const struct Vector *vector, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);
size_t Vector_FindDupBwd (const struct Vector *vector, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);

//****************************************************************************//
//      Unordered elements searching                                          //
//****************************************************************************//

// Ascending sort order
size_t Vector_FindNonAscFwd (const struct Vector *vector, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);
size_t Vector_FindNonAscBwd (const struct Vector *vector, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);

// Descending sort order
size_t Vector_FindNonDscFwd (const struct Vector *vector, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);
size_t Vector_FindNonDscBwd (const struct Vector *vector, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
size_t Vector_FindDiffFwd (const struct Vector *vector, struct pair_t *data, size_t tpos, const struct Vector *source, size_t spos, size_t count, KeyCmp kfunc);
size_t Vector_FindDiffBwd (const struct Vector *vector, struct pair_t *data, size_t tpos, const struct Vector *source, size_t spos, size_t count, KeyCmp kfunc);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

//============================================================================//
//      Linear counting                                                       //
//============================================================================//

// Single key counting
size_t Vector_CountKeyFwd (const struct Vector *vector, union adt_t key, size_t pos, size_t count, KeyCmp kfunc);
size_t Vector_CountKeyBwd (const struct Vector *vector, union adt_t key, size_t pos, size_t count, KeyCmp kfunc);

// Keys set counting
size_t Vector_CountKeysFwd (const struct Vector *vector, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc);
size_t Vector_CountKeysBwd (const struct Vector *vector, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc);

//============================================================================//
//      Binary counting                                                       //
//============================================================================//
size_t Vector_CountAsc (const struct Vector *vector, union adt_t key, KeyCmp kfunc);
size_t Vector_CountDsc (const struct Vector *vector, union adt_t key, KeyCmp kfunc);

//****************************************************************************//
//      Insertion sort                                                        //
//****************************************************************************//
size_t Vector_InsertSortAsc (struct Vector *vector, KeyCmp kfunc);
size_t Vector_InsertSortDsc (struct Vector *vector, KeyCmp kfunc);

//****************************************************************************//
//      Quick sort                                                            //
//****************************************************************************//
size_t Vector_QuickSortAsc (struct Vector *vector, KeyCmp kfunc);
size_t Vector_QuickSortDsc (struct Vector *vector, KeyCmp kfunc);

//****************************************************************************//
//      Merge sort                                                            //
//****************************************************************************//
size_t Vector_MergeSortAsc (struct Vector *vector, KeyCmp kfunc);
size_t Vector_MergeSortDsc (struct Vector *vector, KeyCmp kfunc);

//****************************************************************************//
//      Merging of sorted vectors                                             //
//****************************************************************************//
size_t Vector_MergeAsc (struct Vector *vector, struct Vector *source, KeyCmp kfunc);
size_t Vector_MergeDsc (struct Vector *vector, struct Vector *source, KeyCmp kfunc);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Vector_Unique (struct Vector *vector, const struct Vector *source, KeyCmp kfunc);

//****************************************************************************//
//      Comparison of vectors                                                 //
//****************************************************************************//
sint64_t Vector_Compare (const struct Vector *vector, const struct Vector *source, KeyCmp kfunc);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool Vector_CheckSortAsc (const struct Vector *vector, KeyCmp kfunc);
bool Vector_CheckSortDsc (const struct Vector *vector, KeyCmp kfunc);

// Check for duplicate values
bool Vector_CheckDup (const struct Vector *vector, KeyCmp kfunc);

// Check for equality
bool Vector_IsEqual (const struct Vector *vector, const struct Vector *source, KeyCmp kfunc);

//****************************************************************************//
//      Vector properties                                                     //
//****************************************************************************//
CopyFunc Vector_CopyFunction (const struct Vector *vector);
DelFunc Vector_DeleteFunction (const struct Vector *vector);
void* Vector_UserData (const struct Vector *vector);
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
