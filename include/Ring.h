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
	void	*array;		// Pointer to array which holds ring nodes
	size_t	capacity;	// Capacity of the ring (auto extended if required)
	size_t	size;		// Current ring size
	size_t	pool;		// Index of first free node in the pool
	size_t	fwd;		// Current position of forward iterator
	size_t	bwd;		// Current position of backward iterator
	size_t	link;		// Current position of ring link

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
Ring (size_t capacity);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
Ring (const Ring &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~Ring (void);

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
bool InsertAfterLink (const data_t *data);
bool InsertBeforeLink (const data_t *data);

// Using forward iterator
bool InsertAfterFwd (const data_t *data);
bool InsertBeforeFwd (const data_t *data);

// Using backward iterator
bool InsertAfterBwd (const data_t *data);
bool InsertBeforeBwd (const data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//

// Using ring link
bool RemoveLink (data_t *data);

// Using forward iterator
bool RemoveFwd (data_t *data);

// Using backward iterator
bool RemoveBwd (data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool SetLink (const data_t *data);
bool SetFwd (const data_t *data);
bool SetBwd (const data_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool GetLink (data_t *data) const;
bool GetFwd (data_t *data) const;
bool GetBwd (data_t *data) const;
bool GetIter (data_t *data, ptr_t iter) const;

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool ReplaceLink (data_t *odata, const data_t *ndata);
bool ReplaceFwd (data_t *odata, const data_t *ndata);
bool ReplaceBwd (data_t *odata, const data_t *ndata);

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
bool FindDiffFwd (data_t *data, const Ring *source, size_t count, KeyCmp func);
bool FindDiffBwd (data_t *data, const Ring *source, size_t count, KeyCmp func);
bool FindDiffIterFwd (data_t *data, const Ring *source, size_t count, KeyCmp func, ptr_t *titer, ptr_t siter) const;
bool FindDiffIterBwd (data_t *data, const Ring *source, size_t count, KeyCmp func, ptr_t *titer, ptr_t siter) const;

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
//      Merging of sorted rings                                               //
//****************************************************************************//
size_t MergeAsc (const Ring *source, KeyCmp func);
size_t MergeDsc (const Ring *source, KeyCmp func);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Unique (const Ring *source, KeyCmp func);

//****************************************************************************//
//      Comparison of rings                                                   //
//****************************************************************************//
sint64_t Compare (const Ring *source, KeyCmp func) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool CheckSortAsc (KeyCmp func) const;
bool CheckSortDsc (KeyCmp func) const;

// Check for duplicate values
bool CheckDup (KeyCmp func) const;

// Check for equality
bool IsEqual (const Ring *source, KeyCmp func) const;

//****************************************************************************//
//      Ring properties                                                       //
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
//      Ring structure                                                        //
//****************************************************************************//
struct Ring
{
	void	*array;		// Pointer to array which holds ring nodes
	size_t	capacity;	// Capacity of the ring (auto extended if required)
	size_t	size;		// Current ring size
	size_t	pool;		// Index of first free node in the pool
	size_t	fwd;		// Current position of forward iterator
	size_t	bwd;		// Current position of backward iterator
	size_t	link;		// Current position of ring link
};

//****************************************************************************//
//      Init ring structure                                                   //
//****************************************************************************//
void Ring_InitRing (struct Ring *ring, size_t capacity);

//****************************************************************************//
//      Copy ring structure                                                   //
//****************************************************************************//
void Ring_CopyRing (struct Ring *ring, const struct Ring *source);

//****************************************************************************//
//      Free ring structure                                                   //
//****************************************************************************//
void Ring_FreeRing (struct Ring *ring);

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
bool Ring_InsertAfterLink (struct Ring *ring, const struct data_t *data);
bool Ring_InsertBeforeLink (struct Ring *ring, const struct data_t *data);

// Using forward iterator
bool Ring_InsertAfterFwd (struct Ring *ring, const struct data_t *data);
bool Ring_InsertBeforeFwd (struct Ring *ring, const struct data_t *data);

// Using backward iterator
bool Ring_InsertAfterBwd (struct Ring *ring, const struct data_t *data);
bool Ring_InsertBeforeBwd (struct Ring *ring, const struct data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//

// Using ring link
bool Ring_RemoveLink (struct Ring *ring, struct data_t *data);

// Using forward iterator
bool Ring_RemoveFwd (struct Ring *ring, struct data_t *data);

// Using backward iterator
bool Ring_RemoveBwd (struct Ring *ring, struct data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool Ring_SetLink (struct Ring *ring, const struct data_t *data);
bool Ring_SetFwd (struct Ring *ring, const struct data_t *data);
bool Ring_SetBwd (struct Ring *ring, const struct data_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool Ring_GetLink (const struct Ring *ring, struct data_t *data);
bool Ring_GetFwd (const struct Ring *ring, struct data_t *data);
bool Ring_GetBwd (const struct Ring *ring, struct data_t *data);
bool Ring_GetIter (const struct Ring *ring, struct data_t *data, ptr_t iter);

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool Ring_ReplaceLink (struct Ring *ring, struct data_t *odata, const struct data_t *ndata);
bool Ring_ReplaceFwd (struct Ring *ring, struct data_t *odata, const struct data_t *ndata);
bool Ring_ReplaceBwd (struct Ring *ring, struct data_t *odata, const struct data_t *ndata);

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
bool Ring_MinFwd (struct Ring *ring, struct data_t *data, size_t count, KeyCmp func);
bool Ring_MinBwd (struct Ring *ring, struct data_t *data, size_t count, KeyCmp func);
bool Ring_MinIterFwd (const struct Ring *ring, struct data_t *data, size_t count, KeyCmp func, ptr_t *iter);
bool Ring_MinIterBwd (const struct Ring *ring, struct data_t *data, size_t count, KeyCmp func, ptr_t *iter);

// Maximum value
bool Ring_MaxFwd (struct Ring *ring, struct data_t *data, size_t count, KeyCmp func);
bool Ring_MaxBwd (struct Ring *ring, struct data_t *data, size_t count, KeyCmp func);
bool Ring_MaxIterFwd (const struct Ring *ring, struct data_t *data, size_t count, KeyCmp func, ptr_t *iter);
bool Ring_MaxIterBwd (const struct Ring *ring, struct data_t *data, size_t count, KeyCmp func, ptr_t *iter);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool Ring_FindKeyFwd (struct Ring *ring, struct data_t *data, union adt_t key, size_t count, KeyCmp func);
bool Ring_FindKeyBwd (struct Ring *ring, struct data_t *data, union adt_t key, size_t count, KeyCmp func);
bool Ring_FindKeyIterFwd (const struct Ring *ring, struct data_t *data, union adt_t key, size_t count, KeyCmp func, ptr_t *iter);
bool Ring_FindKeyIterBwd (const struct Ring *ring, struct data_t *data, union adt_t key, size_t count, KeyCmp func, ptr_t *iter);

// Keys set searching
bool Ring_FindKeysFwd (struct Ring *ring, struct data_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp func);
bool Ring_FindKeysBwd (struct Ring *ring, struct data_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp func);
bool Ring_FindKeysIterFwd (const struct Ring *ring, struct data_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t *iter);
bool Ring_FindKeysIterBwd (const struct Ring *ring, struct data_t *data, const union adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t *iter);

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool Ring_FindDupFwd (struct Ring *ring, struct data_t *data, KeyCmp func);
bool Ring_FindDupBwd (struct Ring *ring, struct data_t *data, KeyCmp func);
bool Ring_FindDupIterFwd (const struct Ring *ring, struct data_t *data, KeyCmp func, ptr_t *iter);
bool Ring_FindDupIterBwd (const struct Ring *ring, struct data_t *data, KeyCmp func, ptr_t *iter);

//****************************************************************************//
//      Unordered elements searching                                          //
//****************************************************************************//

// Ascending sort order
bool Ring_FindNonAscFwd (struct Ring *ring, struct data_t *data, KeyCmp func);
bool Ring_FindNonAscBwd (struct Ring *ring, struct data_t *data, KeyCmp func);
bool Ring_FindNonAscIterFwd (const struct Ring *ring, struct data_t *data, KeyCmp func, ptr_t *iter);
bool Ring_FindNonAscIterBwd (const struct Ring *ring, struct data_t *data, KeyCmp func, ptr_t *iter);

// Descending sort order
bool Ring_FindNonDscFwd (struct Ring *ring, struct data_t *data, KeyCmp func);
bool Ring_FindNonDscBwd (struct Ring *ring, struct data_t *data, KeyCmp func);
bool Ring_FindNonDscIterFwd (const struct Ring *ring, struct data_t *data, KeyCmp func, ptr_t *iter);
bool Ring_FindNonDscIterBwd (const struct Ring *ring, struct data_t *data, KeyCmp func, ptr_t *iter);

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
bool Ring_FindDiffFwd (struct Ring *ring, struct data_t *data, const struct Ring *source, size_t count, KeyCmp func);
bool Ring_FindDiffBwd (struct Ring *ring, struct data_t *data, const struct Ring *source, size_t count, KeyCmp func);
bool Ring_FindDiffIterFwd (const struct Ring *ring, struct data_t *data, const struct Ring *source, size_t count, KeyCmp func, ptr_t *titer, ptr_t siter);
bool Ring_FindDiffIterBwd (const struct Ring *ring, struct data_t *data, const struct Ring *source, size_t count, KeyCmp func, ptr_t *titer, ptr_t siter);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t Ring_CountKeyFwd (const struct Ring *ring, union adt_t key, size_t count, KeyCmp func);
size_t Ring_CountKeyBwd (const struct Ring *ring, union adt_t key, size_t count, KeyCmp func);
size_t Ring_CountKeyIterFwd (const struct Ring *ring, union adt_t key, size_t count, KeyCmp func, ptr_t *iter);
size_t Ring_CountKeyIterBwd (const struct Ring *ring, union adt_t key, size_t count, KeyCmp func, ptr_t *iter);

// Keys set counting
size_t Ring_CountKeysFwd (const struct Ring *ring, const union adt_t keys[], size_t size, size_t count, KeyCmp func);
size_t Ring_CountKeysBwd (const struct Ring *ring, const union adt_t keys[], size_t size, size_t count, KeyCmp func);
size_t Ring_CountKeysIterFwd (const struct Ring *ring, const union adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t *iter);
size_t Ring_CountKeysIterBwd (const struct Ring *ring, const union adt_t keys[], size_t size, size_t count, KeyCmp func, ptr_t *iter);

//****************************************************************************//
//      Sorting                                                               //
//****************************************************************************//
size_t Ring_SortAsc (struct Ring *ring, KeyCmp func);
size_t Ring_SortDsc (struct Ring *ring, KeyCmp func);

//****************************************************************************//
//      Merging of sorted rings                                               //
//****************************************************************************//
size_t Ring_MergeAsc (struct Ring *ring, const struct Ring *source, KeyCmp func);
size_t Ring_MergeDsc (struct Ring *ring, const struct Ring *source, KeyCmp func);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Ring_Unique (struct Ring *ring, const struct Ring *source, KeyCmp func);

//****************************************************************************//
//      Comparison of rings                                                   //
//****************************************************************************//
sint64_t Ring_Compare (const struct Ring *ring, const struct Ring *source, KeyCmp func);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for sort order
bool Ring_CheckSortAsc (const struct Ring *ring, KeyCmp func);
bool Ring_CheckSortDsc (const struct Ring *ring, KeyCmp func);

// Check for duplicate values
bool Ring_CheckDup (const struct Ring *ring, KeyCmp func);

// Check for equality
bool Ring_IsEqual (const struct Ring *ring, const struct Ring *source, KeyCmp func);

//****************************************************************************//
//      Ring properties                                                       //
//****************************************************************************//
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
