/*                                                                        List.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                         DOUBLY LINKED LIST DATA TYPE                         #
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
//      List class                                                            //
//****************************************************************************//
class List
{
private:
	void		*array;		// Pointer to array which holds list nodes
	size_t		capacity;	// Capacity of the list (auto extended if required)
	size_t		size;		// Current list size
	size_t		pool;		// Index of first free node in the pool
	size_t		head;		// Current position of list head
	size_t		tail;		// Current position of list tail
	size_t		fwd;		// Current position of forward iterator
	size_t		bwd;		// Current position of backward iterator
	size_t		futex;		// Container's futex
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
List (size_t capacity, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
List (const List &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~List (void);

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

// Into list head
size_t CopyIntoHead (const List *source, size_t count);

// Into list tail
size_t CopyIntoTail (const List *source, size_t count);

// Using forward iterator
size_t CopyAfterFwd (const List *source, size_t count);
size_t CopyBeforeFwd (const List *source, size_t count);

// Using backward iterator
size_t CopyAfterBwd (const List *source, size_t count);
size_t CopyBeforeBwd (const List *source, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//

// Into list head
size_t MoveIntoHead (List *source, size_t count);

// Into list tail
size_t MoveIntoTail (List *source, size_t count);

// Using forward iterator
size_t MoveAfterFwd (List *source, size_t count);
size_t MoveBeforeFwd (List *source, size_t count);

// Using backward iterator
size_t MoveAfterBwd (List *source, size_t count);
size_t MoveBeforeBwd (List *source, size_t count);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//

// Into list head
bool InsertIntoHead (const pair_t *data);

// Into list tail
bool InsertIntoTail (const pair_t *data);

// Using forward iterator
bool InsertAfterFwd (const pair_t *data);
bool InsertBeforeFwd (const pair_t *data);

// Using backward iterator
bool InsertAfterBwd (const pair_t *data);
bool InsertBeforeBwd (const pair_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool RemoveHead (void);
bool RemoveTail (void);
bool RemoveFwd (void);
bool RemoveBwd (void);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool SetHead (const pair_t *data);
bool SetTail (const pair_t *data);
bool SetFwd (const pair_t *data);
bool SetBwd (const pair_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool GetHead (pair_t *data) const;
bool GetTail (pair_t *data) const;
bool GetFwd (pair_t *data) const;
bool GetBwd (pair_t *data) const;
bool GetIter (pair_t *data, ptr_t iter) const;

//****************************************************************************//
//      Changing elements order                                               //
//****************************************************************************//

// Reversing elements order
size_t ReverseHead (size_t count);
size_t ReverseTail (size_t count);
size_t ReverseFwd (size_t count);
size_t ReverseBwd (size_t count);

// Swapping elements
bool Swap (void);

//****************************************************************************//
//      Manipulation with forward iterator                                    //
//****************************************************************************//

// Set iterator position
void FwdToIndex (size_t index);
void FwdToHead (void);
void FwdToTail (void);
void FwdToBwd (void);

// Get iterator position
size_t GetFwdPos (void) const;

// Change iterator position
bool FwdGoNext (size_t pos);
bool FwdGoPrev (size_t pos);

//****************************************************************************//
//      Manipulation with backward iterator                                   //
//****************************************************************************//

// Set iterator position
void BwdToIndex (size_t index);
void BwdToHead (void);
void BwdToTail (void);
void BwdToFwd (void);

// Get iterator position
size_t GetBwdPos (void) const;

// Change iterator position
bool BwdGoNext (size_t pos);
bool BwdGoPrev (size_t pos);

//****************************************************************************//
//      Manipulation with external iterator                                   //
//****************************************************************************//

// Set iterator position
ptr_t IterToIndex (size_t index) const;
ptr_t IterToHead (void) const;
ptr_t IterToTail (void) const;
ptr_t IterToFwd (void) const;
ptr_t IterToBwd (void) const;

// Get iterator position
size_t GetIterPos (ptr_t iter) const;

// Change iterator position
bool IterGoFwd (size_t pos, ptr_t *iter) const;
bool IterGoBwd (size_t pos, ptr_t *iter) const;

//****************************************************************************//
//      Swapping iterators                                                    //
//****************************************************************************//
void SwapFwdBwd (void);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
bool MinFwd (pair_t *data, size_t count, KeyCmp kfunc);
bool MinBwd (pair_t *data, size_t count, KeyCmp kfunc);
bool MinIterFwd (pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter) const;
bool MinIterBwd (pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter) const;

// Maximum value
bool MaxFwd (pair_t *data, size_t count, KeyCmp kfunc);
bool MaxBwd (pair_t *data, size_t count, KeyCmp kfunc);
bool MaxIterFwd (pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter) const;
bool MaxIterBwd (pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter) const;

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool FindKeyFwd (pair_t *data, adt_t key, size_t count, KeyCmp kfunc);
bool FindKeyBwd (pair_t *data, adt_t key, size_t count, KeyCmp kfunc);
bool FindKeyIterFwd (pair_t *data, adt_t key, size_t count, KeyCmp kfunc, ptr_t *iter) const;
bool FindKeyIterBwd (pair_t *data, adt_t key, size_t count, KeyCmp kfunc, ptr_t *iter) const;

// Keys set searching
bool FindKeysFwd (pair_t *data, const adt_t keys[], size_t size, size_t count, KeyCmp kfunc);
bool FindKeysBwd (pair_t *data, const adt_t keys[], size_t size, size_t count, KeyCmp kfunc);
bool FindKeysIterFwd (pair_t *data, const adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t *iter) const;
bool FindKeysIterBwd (pair_t *data, const adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t *iter) const;

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool FindDupFwd (pair_t *data, KeyCmp kfunc);
bool FindDupBwd (pair_t *data, KeyCmp kfunc);
bool FindDupIterFwd (pair_t *data, KeyCmp kfunc, ptr_t *iter) const;
bool FindDupIterBwd (pair_t *data, KeyCmp kfunc, ptr_t *iter) const;

//****************************************************************************//
//      Unordered elements searching                                          //
//****************************************************************************//

// Ascending sort order
bool FindNonAscFwd (pair_t *data, KeyCmp kfunc);
bool FindNonAscBwd (pair_t *data, KeyCmp kfunc);
bool FindNonAscIterFwd (pair_t *data, KeyCmp kfunc, ptr_t *iter) const;
bool FindNonAscIterBwd (pair_t *data, KeyCmp kfunc, ptr_t *iter) const;

// Descending sort order
bool FindNonDscFwd (pair_t *data, KeyCmp kfunc);
bool FindNonDscBwd (pair_t *data, KeyCmp kfunc);
bool FindNonDscIterFwd (pair_t *data, KeyCmp kfunc, ptr_t *iter) const;
bool FindNonDscIterBwd (pair_t *data, KeyCmp kfunc, ptr_t *iter) const;

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
bool FindDiffFwd (pair_t *data, const List *source, size_t count, KeyCmp kfunc);
bool FindDiffBwd (pair_t *data, const List *source, size_t count, KeyCmp kfunc);
bool FindDiffIterFwd (pair_t *data, const List *source, size_t count, KeyCmp kfunc, ptr_t *titer, ptr_t siter) const;
bool FindDiffIterBwd (pair_t *data, const List *source, size_t count, KeyCmp kfunc, ptr_t *titer, ptr_t siter) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t CountKeyFwd (adt_t key, size_t count, KeyCmp kfunc) const;
size_t CountKeyBwd (adt_t key, size_t count, KeyCmp kfunc) const;
size_t CountKeyIterFwd (adt_t key, size_t count, KeyCmp kfunc, ptr_t iter) const;
size_t CountKeyIterBwd (adt_t key, size_t count, KeyCmp kfunc, ptr_t iter) const;

// Keys set counting
size_t CountKeysFwd (const adt_t keys[], size_t size, size_t count, KeyCmp kfunc) const;
size_t CountKeysBwd (const adt_t keys[], size_t size, size_t count, KeyCmp kfunc) const;
size_t CountKeysIterFwd (const adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t iter) const;
size_t CountKeysIterBwd (const adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t iter) const;

//****************************************************************************//
//      Sorting                                                               //
//****************************************************************************//
size_t SortAsc (KeyCmp kfunc);
size_t SortDsc (KeyCmp kfunc);

//****************************************************************************//
//      Merging of sorted lists                                               //
//****************************************************************************//
size_t MergeAsc (List *source, KeyCmp kfunc);
size_t MergeDsc (List *source, KeyCmp kfunc);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Unique (const List *source, KeyCmp kfunc);

//****************************************************************************//
//      Comparison of lists                                                   //
//****************************************************************************//
sint64_t Compare (const List *source, KeyCmp kfunc) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool CheckSortAsc (KeyCmp kfunc) const;
bool CheckSortDsc (KeyCmp kfunc) const;

// Check for duplicate values
bool CheckDup (KeyCmp kfunc) const;

// Check for equality
bool IsEqual (const List *source, KeyCmp kfunc) const;

//****************************************************************************//
//      List properties                                                       //
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
//      List structure                                                        //
//****************************************************************************//
struct List
{
	void		*array;		// Pointer to array which holds list nodes
	size_t		capacity;	// Capacity of the list (auto extended if required)
	size_t		size;		// Current list size
	size_t		pool;		// Index of first free node in the pool
	size_t		head;		// Current position of list head
	size_t		tail;		// Current position of list tail
	size_t		fwd;		// Current position of forward iterator
	size_t		bwd;		// Current position of backward iterator
	size_t		futex;		// Container's futex
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data
};

//****************************************************************************//
//      Init list structure                                                   //
//****************************************************************************//
void List_InitList (struct List *list, size_t capacity, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy list structure                                                   //
//****************************************************************************//
void List_CopyList (struct List *list, const struct List *source);

//****************************************************************************//
//      Free list structure                                                   //
//****************************************************************************//
void List_FreeList (struct List *list);

//****************************************************************************//
//      Access predicates                                                     //
//****************************************************************************//

// Lock operations
bool List_LockReadings (struct List *list, bool wait);
bool List_LockWritings (struct List *list, bool wait);

// Release operations
void List_AllowReadings (struct List *list);
void List_AllowWritings (struct List *list);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//

// Into list head
size_t List_CopyIntoHead (struct List *list, const struct List *source, size_t count);

// Into list tail
size_t List_CopyIntoTail (struct List *list, const struct List *source, size_t count);

// Using forward iterator
size_t List_CopyAfterFwd (struct List *list, const struct List *source, size_t count);
size_t List_CopyBeforeFwd (struct List *list, const struct List *source, size_t count);

// Using backward iterator
size_t List_CopyAfterBwd (struct List *list, const struct List *source, size_t count);
size_t List_CopyBeforeBwd (struct List *list, const struct List *source, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//

// Into list head
size_t List_MoveIntoHead (struct List *list, struct List *source, size_t count);

// Into list tail
size_t List_MoveIntoTail (struct List *list, struct List *source, size_t count);

// Using forward iterator
size_t List_MoveAfterFwd (struct List *list, struct List *source, size_t count);
size_t List_MoveBeforeFwd (struct List *list, struct List *source, size_t count);

// Using backward iterator
size_t List_MoveAfterBwd (struct List *list, struct List *source, size_t count);
size_t List_MoveBeforeBwd (struct List *list, struct List *source, size_t count);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//

// Into list head
bool List_InsertIntoHead (struct List *list, const struct pair_t *data);

// Into list tail
bool List_InsertIntoTail (struct List *list, const struct pair_t *data);

// Using forward iterator
bool List_InsertAfterFwd (struct List *list, const struct pair_t *data);
bool List_InsertBeforeFwd (struct List *list, const struct pair_t *data);

// Using backward iterator
bool List_InsertAfterBwd (struct List *list, const struct pair_t *data);
bool List_InsertBeforeBwd (struct List *list, const struct pair_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool List_RemoveHead (struct List *list);
bool List_RemoveTail (struct List *list);
bool List_RemoveFwd (struct List *list);
bool List_RemoveBwd (struct List *list);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool List_SetHead (struct List *list, const struct pair_t *data);
bool List_SetTail (struct List *list, const struct pair_t *data);
bool List_SetFwd (struct List *list, const struct pair_t *data);
bool List_SetBwd (struct List *list, const struct pair_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool List_GetHead (const struct List *list, struct pair_t *data);
bool List_GetTail (const struct List *list, struct pair_t *data);
bool List_GetFwd (const struct List *list, struct pair_t *data);
bool List_GetBwd (const struct List *list, struct pair_t *data);
bool List_GetIter (const struct List *list, struct pair_t *data, ptr_t iter);

//****************************************************************************//
//      Changing elements order                                               //
//****************************************************************************//

// Reversing elements order
size_t List_ReverseHead (struct List *list, size_t count);
size_t List_ReverseTail (struct List *list, size_t count);
size_t List_ReverseFwd (struct List *list, size_t count);
size_t List_ReverseBwd (struct List *list, size_t count);

// Swapping elements
bool List_Swap (struct List *list);

//****************************************************************************//
//      Manipulation with forward iterator                                    //
//****************************************************************************//

// Set iterator position
void List_FwdToIndex (struct List *list, size_t index);
void List_FwdToHead (struct List *list);
void List_FwdToTail (struct List *list);
void List_FwdToBwd (struct List *list);

// Get iterator position
size_t List_GetFwdPos (const struct List *list);

// Change iterator position
bool List_FwdGoNext (struct List *list, size_t pos);
bool List_FwdGoPrev (struct List *list, size_t pos);

//****************************************************************************//
//      Manipulation with backward iterator                                   //
//****************************************************************************//

// Set iterator position
void List_BwdToIndex (struct List *list, size_t index);
void List_BwdToHead (struct List *list);
void List_BwdToTail (struct List *list);
void List_BwdToFwd (struct List *list);

// Get iterator position
size_t List_GetBwdPos (const struct List *list);

// Change iterator position
bool List_BwdGoNext (struct List *list, size_t pos);
bool List_BwdGoPrev (struct List *list, size_t pos);

//****************************************************************************//
//      Manipulation with external iterator                                   //
//****************************************************************************//

// Set iterator position
ptr_t List_IterToIndex (const struct List *list, size_t index);
ptr_t List_IterToHead (const struct List *list);
ptr_t List_IterToTail (const struct List *list);
ptr_t List_IterToFwd (const struct List *list);
ptr_t List_IterToBwd (const struct List *list);

// Get iterator position
size_t List_GetIterPos (const struct List *list, ptr_t iter);

// Change iterator position
bool List_IterGoFwd (const struct List *list, size_t pos, ptr_t *iter);
bool List_IterGoBwd (const struct List *list, size_t pos, ptr_t *iter);

//****************************************************************************//
//      Swapping iterators                                                    //
//****************************************************************************//
void List_SwapFwdBwd (struct List *list);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
bool List_MinFwd (struct List *list, struct pair_t *data, size_t count, KeyCmp kfunc);
bool List_MinBwd (struct List *list, struct pair_t *data, size_t count, KeyCmp kfunc);
bool List_MinIterFwd (const struct List *list, struct pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter);
bool List_MinIterBwd (const struct List *list, struct pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter);

// Maximum value
bool List_MaxFwd (struct List *list, struct pair_t *data, size_t count, KeyCmp kfunc);
bool List_MaxBwd (struct List *list, struct pair_t *data, size_t count, KeyCmp kfunc);
bool List_MaxIterFwd (const struct List *list, struct pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter);
bool List_MaxIterBwd (const struct List *list, struct pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool List_FindKeyFwd (struct List *list, struct pair_t *data, union adt_t key, size_t count, KeyCmp kfunc);
bool List_FindKeyBwd (struct List *list, struct pair_t *data, union adt_t key, size_t count, KeyCmp kfunc);
bool List_FindKeyIterFwd (const struct List *list, struct pair_t *data, union adt_t key, size_t count, KeyCmp kfunc, ptr_t *iter);
bool List_FindKeyIterBwd (const struct List *list, struct pair_t *data, union adt_t key, size_t count, KeyCmp kfunc, ptr_t *iter);

// Keys set searching
bool List_FindKeysFwd (struct List *list, struct pair_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc);
bool List_FindKeysBwd (struct List *list, struct pair_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc);
bool List_FindKeysIterFwd (const struct List *list, struct pair_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t *iter);
bool List_FindKeysIterBwd (const struct List *list, struct pair_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t *iter);

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool List_FindDupFwd (struct List *list, struct pair_t *data, KeyCmp kfunc);
bool List_FindDupBwd (struct List *list, struct pair_t *data, KeyCmp kfunc);
bool List_FindDupIterFwd (const struct List *list, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);
bool List_FindDupIterBwd (const struct List *list, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);

//****************************************************************************//
//      Unordered elements searching                                          //
//****************************************************************************//

// Ascending sort order
bool List_FindNonAscFwd (struct List *list, struct pair_t *data, KeyCmp kfunc);
bool List_FindNonAscBwd (struct List *list, struct pair_t *data, KeyCmp kfunc);
bool List_FindNonAscIterFwd (const struct List *list, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);
bool List_FindNonAscIterBwd (const struct List *list, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);

// Descending sort order
bool List_FindNonDscFwd (struct List *list, struct pair_t *data, KeyCmp kfunc);
bool List_FindNonDscBwd (struct List *list, struct pair_t *data, KeyCmp kfunc);
bool List_FindNonDscIterFwd (const struct List *list, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);
bool List_FindNonDscIterBwd (const struct List *list, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
bool List_FindDiffFwd (struct List *list, struct pair_t *data, const struct List *source, size_t count, KeyCmp kfunc);
bool List_FindDiffBwd (struct List *list, struct pair_t *data, const struct List *source, size_t count, KeyCmp kfunc);
bool List_FindDiffIterFwd (const struct List *list, struct pair_t *data, const struct List *source, size_t count, KeyCmp kfunc, ptr_t *titer, ptr_t siter);
bool List_FindDiffIterBwd (const struct List *list, struct pair_t *data, const struct List *source, size_t count, KeyCmp kfunc, ptr_t *titer, ptr_t siter);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t List_CountKeyFwd (const struct List *list, union adt_t key, size_t count, KeyCmp kfunc);
size_t List_CountKeyBwd (const struct List *list, union adt_t key, size_t count, KeyCmp kfunc);
size_t List_CountKeyIterFwd (const struct List *list, union adt_t key, size_t count, KeyCmp kfunc, ptr_t iter);
size_t List_CountKeyIterBwd (const struct List *list, union adt_t key, size_t count, KeyCmp kfunc, ptr_t iter);

// Keys set counting
size_t List_CountKeysFwd (const struct List *list, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc);
size_t List_CountKeysBwd (const struct List *list, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc);
size_t List_CountKeysIterFwd (const struct List *list, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t iter);
size_t List_CountKeysIterBwd (const struct List *list, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t iter);

//****************************************************************************//
//      Sorting                                                               //
//****************************************************************************//
size_t List_SortAsc (struct List *list, KeyCmp kfunc);
size_t List_SortDsc (struct List *list, KeyCmp kfunc);

//****************************************************************************//
//      Merging of sorted lists                                               //
//****************************************************************************//
size_t List_MergeAsc (struct List *list, struct List *source, KeyCmp kfunc);
size_t List_MergeDsc (struct List *list, struct List *source, KeyCmp kfunc);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t List_Unique (struct List *list, const struct List *source, KeyCmp kfunc);

//****************************************************************************//
//      Comparison of lists                                                   //
//****************************************************************************//
sint64_t List_Compare (const struct List *list, const struct List *source, KeyCmp kfunc);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool List_CheckSortAsc (const struct List *list, KeyCmp kfunc);
bool List_CheckSortDsc (const struct List *list, KeyCmp kfunc);

// Check for duplicate values
bool List_CheckDup (const struct List *list, KeyCmp kfunc);

// Check for equality
bool List_IsEqual (const struct List *list, const struct List *source, KeyCmp kfunc);

//****************************************************************************//
//      List properties                                                       //
//****************************************************************************//
CopyFunc List_CopyFunction (const struct List *list);
DelFunc List_DeleteFunction (const struct List *list);
void* List_UserData (const struct List *list);
size_t List_Capacity (const struct List *list);
size_t List_Size (const struct List *list);
bool List_IsEmpty (const struct List *list);
bool List_IsInit (const struct List *list);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
