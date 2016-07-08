/*                                                                        Ring.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                    CIRCULAR DOUBLY LINKED Ring DATA TYPE                     #
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
//      Ring class                                                            //
//****************************************************************************//
class Ring
{
private:
	void		*array;		// Pointer to array which holds ring nodes
	size_t		capacity;	// Capacity of the ring (auto extended if required)
	size_t		size;		// Current ring size
	size_t		pool;		// Index of first free node in the pool
	size_t		link;		// Current position of ring link
	size_t		padding;	// Padding to keep align
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
Ring (size_t capacity, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
Ring (const Ring &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~Ring (void);

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

// Using ring link
size_t CopyAfterLink (const Ring *source, size_t count);
size_t CopyBeforeLink (const Ring *source, size_t count);

// Using forward iterator
size_t CopyAfterFwd (const Ring *source, size_t count);
size_t CopyBeforeFwd (const Ring *source, size_t count);

// Using backward iterator
size_t CopyAfterBwd (const Ring *source, size_t count);
size_t CopyBeforeBwd (const Ring *source, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//

// Using ring link
size_t MoveAfterLink (Ring *source, size_t count);
size_t MoveBeforeLink (Ring *source, size_t count);

// Using forward iterator
size_t MoveAfterFwd (Ring *source, size_t count);
size_t MoveBeforeFwd (Ring *source, size_t count);

// Using backward iterator
size_t MoveAfterBwd (Ring *source, size_t count);
size_t MoveBeforeBwd (Ring *source, size_t count);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//

// Using ring link
bool InsertAfterLink (const pair_t *data);
bool InsertBeforeLink (const pair_t *data);

// Using forward iterator
bool InsertAfterFwd (const pair_t *data);
bool InsertBeforeFwd (const pair_t *data);

// Using backward iterator
bool InsertAfterBwd (const pair_t *data);
bool InsertBeforeBwd (const pair_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool RemoveLink (void);
bool RemoveFwd (void);
bool RemoveBwd (void);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool SetLink (const pair_t *data);
bool SetFwd (const pair_t *data);
bool SetBwd (const pair_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool GetLink (pair_t *data) const;
bool GetFwd (pair_t *data) const;
bool GetBwd (pair_t *data) const;
bool GetIter (pair_t *data, ptr_t iter) const;

//****************************************************************************//
//      Changing elements order                                               //
//****************************************************************************//

// Reversing elements order
size_t ReverseLink (size_t count);
size_t ReverseFwd (size_t count);
size_t ReverseBwd (size_t count);

// Swapping elements
bool Swap (void);

//****************************************************************************//
//      Manipulation with forward iterator                                    //
//****************************************************************************//

// Set iterator position
void FwdToIndex (size_t index);
void FwdToLink (void);
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
void BwdToLink (void);
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
ptr_t IterToLink (void) const;
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
bool FindDiffFwd (pair_t *data, const Ring *source, size_t count, KeyCmp kfunc);
bool FindDiffBwd (pair_t *data, const Ring *source, size_t count, KeyCmp kfunc);
bool FindDiffIterFwd (pair_t *data, const Ring *source, size_t count, KeyCmp kfunc, ptr_t *titer, ptr_t siter) const;
bool FindDiffIterBwd (pair_t *data, const Ring *source, size_t count, KeyCmp kfunc, ptr_t *titer, ptr_t siter) const;

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
//      Merging of sorted rings                                               //
//****************************************************************************//
size_t MergeAsc (Ring *source, KeyCmp kfunc);
size_t MergeDsc (Ring *source, KeyCmp kfunc);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Unique (const Ring *source, KeyCmp kfunc);

//****************************************************************************//
//      Comparison of rings                                                   //
//****************************************************************************//
sint64_t Compare (const Ring *source, KeyCmp kfunc) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool CheckSortAsc (KeyCmp kfunc) const;
bool CheckSortDsc (KeyCmp kfunc) const;

// Check for duplicate values
bool CheckDup (KeyCmp kfunc) const;

// Check for equality
bool IsEqual (const Ring *source, KeyCmp kfunc) const;

//****************************************************************************//
//      Ring properties                                                       //
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
//      Ring structure                                                        //
//****************************************************************************//
struct Ring
{
	void		*array;		// Pointer to array which holds ring nodes
	size_t		capacity;	// Capacity of the ring (auto extended if required)
	size_t		size;		// Current ring size
	size_t		pool;		// Index of first free node in the pool
	size_t		link;		// Current position of ring link
	size_t		padding;	// Padding to keep align
	size_t		fwd;		// Current position of forward iterator
	size_t		bwd;		// Current position of backward iterator
	size_t		futex;		// Container's futex
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data
};

//****************************************************************************//
//      Init ring structure                                                   //
//****************************************************************************//
void Ring_InitRing (struct Ring *ring, size_t capacity, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy ring structure                                                   //
//****************************************************************************//
void Ring_CopyRing (struct Ring *ring, const struct Ring *source);

//****************************************************************************//
//      Free ring structure                                                   //
//****************************************************************************//
void Ring_FreeRing (struct Ring *ring);

//****************************************************************************//
//      Access predicates                                                     //
//****************************************************************************//

// Lock operations
bool Ring_LockReadings (struct Ring *ring, bool wait);
bool Ring_LockWritings (struct Ring *ring, bool wait);

// Release operations
void Ring_AllowReadings (struct Ring *ring);
void Ring_AllowWritings (struct Ring *ring);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//

// Using ring link
size_t Ring_CopyAfterLink (struct Ring *ring, const struct Ring *source, size_t count);
size_t Ring_CopyBeforeLink (struct Ring *ring, const struct Ring *source, size_t count);

// Using forward iterator
size_t Ring_CopyAfterFwd (struct Ring *ring, const struct Ring *source, size_t count);
size_t Ring_CopyBeforeFwd (struct Ring *ring, const struct Ring *source, size_t count);

// Using backward iterator
size_t Ring_CopyAfterBwd (struct Ring *ring, const struct Ring *source, size_t count);
size_t Ring_CopyBeforeBwd (struct Ring *ring, const struct Ring *source, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//

// Using ring link
size_t Ring_MoveAfterLink (struct Ring *ring, struct Ring *source, size_t count);
size_t Ring_MoveBeforeLink (struct Ring *ring, struct Ring *source, size_t count);

// Using forward iterator
size_t Ring_MoveAfterFwd (struct Ring *ring, struct Ring *source, size_t count);
size_t Ring_MoveBeforeFwd (struct Ring *ring, struct Ring *source, size_t count);

// Using backward iterator
size_t Ring_MoveAfterBwd (struct Ring *ring, struct Ring *source, size_t count);
size_t Ring_MoveBeforeBwd (struct Ring *ring, struct Ring *source, size_t count);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//

// Using ring link
bool Ring_InsertAfterLink (struct Ring *ring, const struct pair_t *data);
bool Ring_InsertBeforeLink (struct Ring *ring, const struct pair_t *data);

// Using forward iterator
bool Ring_InsertAfterFwd (struct Ring *ring, const struct pair_t *data);
bool Ring_InsertBeforeFwd (struct Ring *ring, const struct pair_t *data);

// Using backward iterator
bool Ring_InsertAfterBwd (struct Ring *ring, const struct pair_t *data);
bool Ring_InsertBeforeBwd (struct Ring *ring, const struct pair_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool Ring_RemoveLink (struct Ring *ring);
bool Ring_RemoveFwd (struct Ring *ring);
bool Ring_RemoveBwd (struct Ring *ring);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool Ring_SetLink (struct Ring *ring, const struct pair_t *data);
bool Ring_SetFwd (struct Ring *ring, const struct pair_t *data);
bool Ring_SetBwd (struct Ring *ring, const struct pair_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool Ring_GetLink (const struct Ring *ring, struct pair_t *data);
bool Ring_GetFwd (const struct Ring *ring, struct pair_t *data);
bool Ring_GetBwd (const struct Ring *ring, struct pair_t *data);
bool Ring_GetIter (const struct Ring *ring, struct pair_t *data, ptr_t iter);

//****************************************************************************//
//      Changing elements order                                               //
//****************************************************************************//

// Reversing elements order
size_t Ring_ReverseLink (struct Ring *ring, size_t count);
size_t Ring_ReverseFwd (struct Ring *ring, size_t count);
size_t Ring_ReverseBwd (struct Ring *ring, size_t count);

// Swapping elements
bool Ring_Swap (struct Ring *ring);

//****************************************************************************//
//      Manipulation with forward iterator                                    //
//****************************************************************************//

// Set iterator position
void Ring_FwdToIndex (struct Ring *ring, size_t index);
void Ring_FwdToLink (struct Ring *ring);
void Ring_FwdToBwd (struct Ring *ring);

// Get iterator position
size_t Ring_GetFwdPos (const struct Ring *ring);

// Change iterator position
bool Ring_FwdGoNext (struct Ring *ring, size_t pos);
bool Ring_FwdGoPrev (struct Ring *ring, size_t pos);

//****************************************************************************//
//      Manipulation with backward iterator                                   //
//****************************************************************************//

// Set iterator position
void Ring_BwdToIndex (struct Ring *ring, size_t index);
void Ring_BwdToLink (struct Ring *ring);
void Ring_BwdToFwd (struct Ring *ring);

// Get iterator position
size_t Ring_GetBwdPos (const struct Ring *ring);

// Change iterator position
bool Ring_BwdGoNext (struct Ring *ring, size_t pos);
bool Ring_BwdGoPrev (struct Ring *ring, size_t pos);

//****************************************************************************//
//      Manipulation with external iterator                                   //
//****************************************************************************//

// Set iterator position
ptr_t Ring_IterToIndex (const struct Ring *ring, size_t index);
ptr_t Ring_IterToLink (const struct Ring *ring);
ptr_t Ring_IterToFwd (const struct Ring *ring);
ptr_t Ring_IterToBwd (const struct Ring *ring);

// Get iterator position
size_t Ring_GetIterPos (const struct Ring *ring, ptr_t iter);

// Change iterator position
bool Ring_IterGoFwd (const struct Ring *ring, size_t pos, ptr_t *iter);
bool Ring_IterGoBwd (const struct Ring *ring, size_t pos, ptr_t *iter);

//****************************************************************************//
//      Swapping iterators                                                    //
//****************************************************************************//
void Ring_SwapFwdBwd (struct Ring *ring);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
bool Ring_MinFwd (struct Ring *ring, struct pair_t *data, size_t count, KeyCmp kfunc);
bool Ring_MinBwd (struct Ring *ring, struct pair_t *data, size_t count, KeyCmp kfunc);
bool Ring_MinIterFwd (const struct Ring *ring, struct pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter);
bool Ring_MinIterBwd (const struct Ring *ring, struct pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter);

// Maximum value
bool Ring_MaxFwd (struct Ring *ring, struct pair_t *data, size_t count, KeyCmp kfunc);
bool Ring_MaxBwd (struct Ring *ring, struct pair_t *data, size_t count, KeyCmp kfunc);
bool Ring_MaxIterFwd (const struct Ring *ring, struct pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter);
bool Ring_MaxIterBwd (const struct Ring *ring, struct pair_t *data, size_t count, KeyCmp kfunc, ptr_t *iter);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool Ring_FindKeyFwd (struct Ring *ring, struct pair_t *data, union adt_t key, size_t count, KeyCmp kfunc);
bool Ring_FindKeyBwd (struct Ring *ring, struct pair_t *data, union adt_t key, size_t count, KeyCmp kfunc);
bool Ring_FindKeyIterFwd (const struct Ring *ring, struct pair_t *data, union adt_t key, size_t count, KeyCmp kfunc, ptr_t *iter);
bool Ring_FindKeyIterBwd (const struct Ring *ring, struct pair_t *data, union adt_t key, size_t count, KeyCmp kfunc, ptr_t *iter);

// Keys set searching
bool Ring_FindKeysFwd (struct Ring *ring, struct pair_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc);
bool Ring_FindKeysBwd (struct Ring *ring, struct pair_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc);
bool Ring_FindKeysIterFwd (const struct Ring *ring, struct pair_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t *iter);
bool Ring_FindKeysIterBwd (const struct Ring *ring, struct pair_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t *iter);

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool Ring_FindDupFwd (struct Ring *ring, struct pair_t *data, KeyCmp kfunc);
bool Ring_FindDupBwd (struct Ring *ring, struct pair_t *data, KeyCmp kfunc);
bool Ring_FindDupIterFwd (const struct Ring *ring, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);
bool Ring_FindDupIterBwd (const struct Ring *ring, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);

//****************************************************************************//
//      Unordered elements searching                                          //
//****************************************************************************//

// Ascending sort order
bool Ring_FindNonAscFwd (struct Ring *ring, struct pair_t *data, KeyCmp kfunc);
bool Ring_FindNonAscBwd (struct Ring *ring, struct pair_t *data, KeyCmp kfunc);
bool Ring_FindNonAscIterFwd (const struct Ring *ring, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);
bool Ring_FindNonAscIterBwd (const struct Ring *ring, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);

// Descending sort order
bool Ring_FindNonDscFwd (struct Ring *ring, struct pair_t *data, KeyCmp kfunc);
bool Ring_FindNonDscBwd (struct Ring *ring, struct pair_t *data, KeyCmp kfunc);
bool Ring_FindNonDscIterFwd (const struct Ring *ring, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);
bool Ring_FindNonDscIterBwd (const struct Ring *ring, struct pair_t *data, KeyCmp kfunc, ptr_t *iter);

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
bool Ring_FindDiffFwd (struct Ring *ring, struct pair_t *data, const struct Ring *source, size_t count, KeyCmp kfunc);
bool Ring_FindDiffBwd (struct Ring *ring, struct pair_t *data, const struct Ring *source, size_t count, KeyCmp kfunc);
bool Ring_FindDiffIterFwd (const struct Ring *ring, struct pair_t *data, const struct Ring *source, size_t count, KeyCmp kfunc, ptr_t *titer, ptr_t siter);
bool Ring_FindDiffIterBwd (const struct Ring *ring, struct pair_t *data, const struct Ring *source, size_t count, KeyCmp kfunc, ptr_t *titer, ptr_t siter);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t Ring_CountKeyFwd (const struct Ring *ring, union adt_t key, size_t count, KeyCmp kfunc);
size_t Ring_CountKeyBwd (const struct Ring *ring, union adt_t key, size_t count, KeyCmp kfunc);
size_t Ring_CountKeyIterFwd (const struct Ring *ring, union adt_t key, size_t count, KeyCmp kfunc, ptr_t iter);
size_t Ring_CountKeyIterBwd (const struct Ring *ring, union adt_t key, size_t count, KeyCmp kfunc, ptr_t iter);

// Keys set counting
size_t Ring_CountKeysFwd (const struct Ring *ring, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc);
size_t Ring_CountKeysBwd (const struct Ring *ring, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc);
size_t Ring_CountKeysIterFwd (const struct Ring *ring, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t iter);
size_t Ring_CountKeysIterBwd (const struct Ring *ring, const union adt_t keys[], size_t size, size_t count, KeyCmp kfunc, ptr_t iter);

//****************************************************************************//
//      Sorting                                                               //
//****************************************************************************//
size_t Ring_SortAsc (struct Ring *ring, KeyCmp kfunc);
size_t Ring_SortDsc (struct Ring *ring, KeyCmp kfunc);

//****************************************************************************//
//      Merging of sorted rings                                               //
//****************************************************************************//
size_t Ring_MergeAsc (struct Ring *ring, struct Ring *source, KeyCmp kfunc);
size_t Ring_MergeDsc (struct Ring *ring, struct Ring *source, KeyCmp kfunc);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Ring_Unique (struct Ring *ring, const struct Ring *source, KeyCmp kfunc);

//****************************************************************************//
//      Comparison of rings                                                   //
//****************************************************************************//
sint64_t Ring_Compare (const struct Ring *ring, const struct Ring *source, KeyCmp kfunc);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool Ring_CheckSortAsc (const struct Ring *ring, KeyCmp kfunc);
bool Ring_CheckSortDsc (const struct Ring *ring, KeyCmp kfunc);

// Check for duplicate values
bool Ring_CheckDup (const struct Ring *ring, KeyCmp kfunc);

// Check for equality
bool Ring_IsEqual (const struct Ring *ring, const struct Ring *source, KeyCmp kfunc);

//****************************************************************************//
//      Ring properties                                                       //
//****************************************************************************//
CopyFunc Ring_CopyFunction (const struct Ring *ring);
DelFunc Ring_DeleteFunction (const struct Ring *ring);
void* Ring_UserData (const struct Ring *ring);
size_t Ring_Capacity (const struct Ring *ring);
size_t Ring_Size (const struct Ring *ring);
bool Ring_IsEmpty (const struct Ring *ring);
bool Ring_IsInit (const struct Ring *ring);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
