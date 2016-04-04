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
	void	*array;		// Pointer to array which holds list nodes
	size_t	capacity;	// Capacity of the list (auto extended if required)
	size_t	size;		// Current list size
	size_t	pool;		// Index of first free node in the pool
	size_t	fwd;		// Current position of forward iterator
	size_t	bwd;		// Current position of backward iterator
	size_t	head;		// Current position of list head
	size_t	tail;		// Current position of list tail

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
List (size_t capacity);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
List (const List &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~List (void);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//

// Into list head/tail
size_t CopyIntoHead (const List *source, size_t count);
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

// Into list head/tail
size_t MoveIntoHead (List *source, size_t count);
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

// Into list head/tail
bool InsertIntoHead (const data_t *data);
bool InsertIntoTail (const data_t *data);

// Using forward iterator
bool InsertAfterFwd (const data_t *data);
bool InsertBeforeFwd (const data_t *data);

// Using backward iterator
bool InsertAfterBwd (const data_t *data);
bool InsertBeforeBwd (const data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//

// From list head/tail
bool RemoveHead (data_t *data);
bool RemoveTail (data_t *data);

// Using forward iterator
bool RemoveFwd (data_t *data);

// Using backward iterator
bool RemoveBwd (data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool SetHead (const data_t *data);
bool SetTail (const data_t *data);
bool SetFwd (const data_t *data);
bool SetBwd (const data_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool GetHead (data_t *data) const;
bool GetTail (data_t *data) const;
bool GetFwd (data_t *data) const;
bool GetBwd (data_t *data) const;
bool GetIter (data_t *data, ptr_t iter) const;

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool ReplaceHead (data_t *odata, const data_t *ndata);
bool ReplaceTail (data_t *odata, const data_t *ndata);
bool ReplaceFwd (data_t *odata, const data_t *ndata);
bool ReplaceBwd (data_t *odata, const data_t *ndata);

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
bool MinFwd (data_t *data, size_t count, KeyCmp func);
bool MinBwd (data_t *data, size_t count, KeyCmp func);
bool MinIterFwd (data_t *data, size_t count, KeyCmp func, ptr_t *iter) const;
bool MinIterBwd (data_t *data, size_t count, KeyCmp func, ptr_t *iter) const;

// Maximum value
bool MaxFwd (data_t *data, size_t count, KeyCmp func);
bool MaxBwd (data_t *data, size_t count, KeyCmp func);
bool MaxIterFwd (data_t *data, size_t count, KeyCmp func, ptr_t *iter) const;
bool MaxIterBwd (data_t *data, size_t count, KeyCmp func, ptr_t *iter) const;

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool FindKeyFwd (data_t *data, adt_t key, size_t count, KeyCmp func);
bool FindKeyBwd (data_t *data, adt_t key, size_t count, KeyCmp func);
bool FindKeyIterFwd (data_t *data, adt_t key, size_t count, KeyCmp func, ptr_t *iter) const;
bool FindKeyIterBwd (data_t *data, adt_t key, size_t count, KeyCmp func, ptr_t *iter) const;

// Keys set searching
bool FindKeysFwd (data_t *data, const adt_t keys[], size_t size, size_t count, KeyCmp func);
bool FindKeysBwd (data_t *data, const adt_t keys[], size_t size, size_t count, KeyCmp func);
bool FindKeysIterFwd (data_t *data, const adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t *iter) const;
bool FindKeysIterBwd (data_t *data, const adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t *iter) const;

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool FindDupFwd (data_t *data, KeyCmp func);
bool FindDupBwd (data_t *data, KeyCmp func);
bool FindDupIterFwd (data_t *data, KeyCmp func, ptr_t *iter) const;
bool FindDupIterBwd (data_t *data, KeyCmp func, ptr_t *iter) const;

//****************************************************************************//
//      Unordered elements searching                                          //
//****************************************************************************//

// Ascending sort order
bool FindNonAscFwd (data_t *data, KeyCmp func);
bool FindNonAscBwd (data_t *data, KeyCmp func);
bool FindNonAscIterFwd (data_t *data, KeyCmp func, ptr_t *iter) const;
bool FindNonAscIterBwd (data_t *data, KeyCmp func, ptr_t *iter) const;

// Descending sort order
bool FindNonDscFwd (data_t *data, KeyCmp func);
bool FindNonDscBwd (data_t *data, KeyCmp func);
bool FindNonDscIterFwd (data_t *data, KeyCmp func, ptr_t *iter) const;
bool FindNonDscIterBwd (data_t *data, KeyCmp func, ptr_t *iter) const;

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
bool FindDiffFwd (data_t *data, const List *source, size_t count, KeyCmp func);
bool FindDiffBwd (data_t *data, const List *source, size_t count, KeyCmp func);
bool FindDiffIterFwd (data_t *data, const List *source, size_t count, KeyCmp func, ptr_t *titer, ptr_t siter) const;
bool FindDiffIterBwd (data_t *data, const List *source, size_t count, KeyCmp func, ptr_t *titer, ptr_t siter) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t CountKeyFwd (adt_t key, size_t count, KeyCmp func) const;
size_t CountKeyBwd (adt_t key, size_t count, KeyCmp func) const;
size_t CountKeyIterFwd (adt_t key, size_t count, KeyCmp func, ptr_t iter) const;
size_t CountKeyIterBwd (adt_t key, size_t count, KeyCmp func, ptr_t iter) const;

// Keys set counting
size_t CountKeysFwd (const adt_t keys[], size_t size, size_t count, KeyCmp func) const;
size_t CountKeysBwd (const adt_t keys[], size_t size, size_t count, KeyCmp func) const;
size_t CountKeysIterFwd (const adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t iter) const;
size_t CountKeysIterBwd (const adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t iter) const;

//****************************************************************************//
//      Sorting                                                               //
//****************************************************************************//
size_t SortAsc (KeyCmp func);
size_t SortDsc (KeyCmp func);

//****************************************************************************//
//      Merging of sorted lists                                               //
//****************************************************************************//
size_t MergeAsc (const List *source, KeyCmp func);
size_t MergeDsc (const List *source, KeyCmp func);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Unique (const List *source, KeyCmp func);

//****************************************************************************//
//      Comparison of lists                                                   //
//****************************************************************************//
sint64_t Compare (const List *source, KeyCmp func) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool CheckSortAsc (KeyCmp func) const;
bool CheckSortDsc (KeyCmp func) const;

// Check for duplicate values
bool CheckDup (KeyCmp func) const;

// Check for equality
bool IsEqual (const List *source, KeyCmp func) const;

//****************************************************************************//
//      List properties                                                       //
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
//      List structure                                                        //
//****************************************************************************//
struct List
{
	void	*array;		// Pointer to array which holds list nodes
	size_t	capacity;	// Capacity of the list (auto extended if required)
	size_t	size;		// Current list size
	size_t	pool;		// Index of first free node in the pool
	size_t	fwd;		// Current position of forward iterator
	size_t	bwd;		// Current position of backward iterator
	size_t	head;		// Current position of list head
	size_t	tail;		// Current position of list tail
};

//****************************************************************************//
//      Init list structure                                                   //
//****************************************************************************//
void List_InitList (struct List *list, size_t capacity);

//****************************************************************************//
//      Copy list structure                                                   //
//****************************************************************************//
void List_CopyList (struct List *list, const struct List *source);

//****************************************************************************//
//      Free list structure                                                   //
//****************************************************************************//
void List_FreeList (struct List *list);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//

// Into list head/tail
size_t List_CopyIntoHead (struct List *list, const struct List *source, size_t count);
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

// Into list head/tail
size_t List_MoveIntoHead (struct List *list, struct List *source, size_t count);
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

// Into list head/tail
bool List_InsertIntoHead (struct List *list, const struct data_t *data);
bool List_InsertIntoTail (struct List *list, const struct data_t *data);

// Using forward iterator
bool List_InsertAfterFwd (struct List *list, const struct data_t *data);
bool List_InsertBeforeFwd (struct List *list, const struct data_t *data);

// Using backward iterator
bool List_InsertAfterBwd (struct List *list, const struct data_t *data);
bool List_InsertBeforeBwd (struct List *list, const struct data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//

// From list head/tail
bool List_RemoveHead (struct List *list, struct data_t *data);
bool List_RemoveTail (struct List *list, struct data_t *data);

// Using forward iterator
bool List_RemoveFwd (struct List *list, struct data_t *data);

// Using backward iterator
bool List_RemoveBwd (struct List *list, struct data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool List_SetHead (struct List *list, const struct data_t *data);
bool List_SetTail (struct List *list, const struct data_t *data);
bool List_SetFwd (struct List *list, const struct data_t *data);
bool List_SetBwd (struct List *list, const struct data_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool List_GetHead (const struct List *list, struct data_t *data);
bool List_GetTail (const struct List *list, struct data_t *data);
bool List_GetFwd (const struct List *list, struct data_t *data);
bool List_GetBwd (const struct List *list, struct data_t *data);
bool List_GetIter (const struct List *list, struct data_t *data, ptr_t iter);

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool List_ReplaceHead (struct List *list, struct data_t *odata, const struct data_t *ndata);
bool List_ReplaceTail (struct List *list, struct data_t *odata, const struct data_t *ndata);
bool List_ReplaceFwd (struct List *list, struct data_t *odata, const struct data_t *ndata);
bool List_ReplaceBwd (struct List *list, struct data_t *odata, const struct data_t *ndata);

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
bool List_MinFwd (struct List *list, struct data_t *data, size_t count, KeyCmp func);
bool List_MinBwd (struct List *list, struct data_t *data, size_t count, KeyCmp func);
bool List_MinIterFwd (const struct List *list, struct data_t *data, size_t count, KeyCmp func, ptr_t *iter);
bool List_MinIterBwd (const struct List *list, struct data_t *data, size_t count, KeyCmp func, ptr_t *iter);

// Maximum value
bool List_MaxFwd (struct List *list, struct data_t *data, size_t count, KeyCmp func);
bool List_MaxBwd (struct List *list, struct data_t *data, size_t count, KeyCmp func);
bool List_MaxIterFwd (const struct List *list, struct data_t *data, size_t count, KeyCmp func, ptr_t *iter);
bool List_MaxIterBwd (const struct List *list, struct data_t *data, size_t count, KeyCmp func, ptr_t *iter);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool List_FindKeyFwd (struct List *list, struct data_t *data, union adt_t key, size_t count, KeyCmp func);
bool List_FindKeyBwd (struct List *list, struct data_t *data, union adt_t key, size_t count, KeyCmp func);
bool List_FindKeyIterFwd (const struct List *list, struct data_t *data, union adt_t key, size_t count, KeyCmp func, ptr_t *iter);
bool List_FindKeyIterBwd (const struct List *list, struct data_t *data, union adt_t key, size_t count, KeyCmp func, ptr_t *iter);

// Keys set searching
bool List_FindKeysFwd (struct List *list, struct data_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp func);
bool List_FindKeysBwd (struct List *list, struct data_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp func);
bool List_FindKeysIterFwd (const struct List *list, struct data_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t *iter);
bool List_FindKeysIterBwd (const struct List *list, struct data_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t *iter);

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool List_FindDupFwd (struct List *list, struct data_t *data, KeyCmp func);
bool List_FindDupBwd (struct List *list, struct data_t *data, KeyCmp func);
bool List_FindDupIterFwd (const struct List *list, struct data_t *data, KeyCmp func, ptr_t *iter);
bool List_FindDupIterBwd (const struct List *list, struct data_t *data, KeyCmp func, ptr_t *iter);

//****************************************************************************//
//      Unordered elements searching                                          //
//****************************************************************************//

// Ascending sort order
bool List_FindNonAscFwd (struct List *list, struct data_t *data, KeyCmp func);
bool List_FindNonAscBwd (struct List *list, struct data_t *data, KeyCmp func);
bool List_FindNonAscIterFwd (const struct List *list, struct data_t *data, KeyCmp func, ptr_t *iter);
bool List_FindNonAscIterBwd (const struct List *list, struct data_t *data, KeyCmp func, ptr_t *iter);

// Descending sort order
bool List_FindNonDscFwd (struct List *list, struct data_t *data, KeyCmp func);
bool List_FindNonDscBwd (struct List *list, struct data_t *data, KeyCmp func);
bool List_FindNonDscIterFwd (const struct List *list, struct data_t *data, KeyCmp func, ptr_t *iter);
bool List_FindNonDscIterBwd (const struct List *list, struct data_t *data, KeyCmp func, ptr_t *iter);

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
bool List_FindDiffFwd (struct List *list, struct data_t *data, const struct List *source, size_t count, KeyCmp func);
bool List_FindDiffBwd (struct List *list, struct data_t *data, const struct List *source, size_t count, KeyCmp func);
bool List_FindDiffIterFwd (const struct List *list, struct data_t *data, const struct List *source, size_t count, KeyCmp func, ptr_t *titer, ptr_t siter);
bool List_FindDiffIterBwd (const struct List *list, struct data_t *data, const struct List *source, size_t count, KeyCmp func, ptr_t *titer, ptr_t siter);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t List_CountKeyFwd (const struct List *list, union adt_t key, size_t count, KeyCmp func);
size_t List_CountKeyBwd (const struct List *list, union adt_t key, size_t count, KeyCmp func);
size_t List_CountKeyIterFwd (const struct List *list, union adt_t key, size_t count, KeyCmp func, ptr_t *iter);
size_t List_CountKeyIterBwd (const struct List *list, union adt_t key, size_t count, KeyCmp func, ptr_t *iter);

// Keys set counting
size_t List_CountKeysFwd (const struct List *list, const union adt_t keys[], size_t size, size_t count, KeyCmp func);
size_t List_CountKeysBwd (const struct List *list, const union adt_t keys[], size_t size, size_t count, KeyCmp func);
size_t List_CountKeysIterFwd (const struct List *list, const union adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t *iter);
size_t List_CountKeysIterBwd (const struct List *list, const union adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t *iter);

//****************************************************************************//
//      Sorting                                                               //
//****************************************************************************//
size_t List_SortAsc (struct List *list, KeyCmp func);
size_t List_SortDsc (struct List *list, KeyCmp func);

//****************************************************************************//
//      Merging of sorted lists                                               //
//****************************************************************************//
size_t List_MergeAsc (struct List *list, const struct List *source, KeyCmp func);
size_t List_MergeDsc (struct List *list, const struct List *source, KeyCmp func);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t List_Unique (struct List *list, const struct List *source, KeyCmp func);

//****************************************************************************//
//      Comparison of lists                                                   //
//****************************************************************************//
sint64_t List_Compare (const struct List *list, const struct List *source, KeyCmp func);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool List_CheckSortAsc (const struct List *list, KeyCmp func);
bool List_CheckSortDsc (const struct List *list, KeyCmp func);

// Check for duplicate values
bool List_CheckDup (const struct List *list, KeyCmp func);

// Check for equality
bool List_IsEqual (const struct List *list, const struct List *source, KeyCmp func);

//****************************************************************************//
//      List properties                                                       //
//****************************************************************************//
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
