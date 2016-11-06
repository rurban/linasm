/*                                                                   MultiHash.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                      MULTIPLY KEYS HASH TABLE DATA TYPE                      #
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
//      Multi hash class                                                      //
//****************************************************************************//
class MultiHash
{
private:
	void		*array;		// Pointer to array which holds hash table data
	size_t		capacity;	// Capacity of the hash table (auto extended if required)
	size_t		size;		// Current hash table size
	size_t		pool;		// Index of first free node in the pool
	size_t		fwd;		// Current position of forward iterator
	size_t		bwd;		// Current position of backward iterator
	size_t		futex;		// Container's futex
	KeyCmp		kfunc;		// Key compare function
	HashFunc	hfunc;		// Hash function
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
MultiHash (size_t capacity, KeyCmp kfunc, HashFunc hfunc, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
MultiHash (const MultiHash &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~MultiHash (void);

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
//      Insertion of element                                                  //
//****************************************************************************//
bool Insert (const pair_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool RemoveFwd (void);
bool RemoveBwd (void);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool SetFwd (const pair_t *data);
bool SetBwd (const pair_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool GetFwd (pair_t *data) const;
bool GetBwd (pair_t *data) const;
bool GetIter (pair_t *data, ptr_t iter) const;

//****************************************************************************//
//      Manipulation with forward iterator                                    //
//****************************************************************************//

// Set iterator position
void FwdToHead (void);
void FwdToTail (void);
void FwdToBwd (void);

// Change iterator position
bool FwdGoNext (size_t pos);
bool FwdGoPrev (size_t pos);

//****************************************************************************//
//      Manipulation with backward iterator                                   //
//****************************************************************************//

// Set iterator position
void BwdToHead (void);
void BwdToTail (void);
void BwdToFwd (void);

// Change iterator position
bool BwdGoNext (size_t pos);
bool BwdGoPrev (size_t pos);

//****************************************************************************//
//      Manipulation with external iterator                                   //
//****************************************************************************//

// Set iterator position
ptr_t IterToHead (void) const;
ptr_t IterToTail (void) const;
ptr_t IterToFwd (void) const;
ptr_t IterToBwd (void) const;

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
bool MinFwd (pair_t *data);
bool MinBwd (pair_t *data);
bool MinIterFwd (pair_t *data, ptr_t *iter) const;
bool MinIterBwd (pair_t *data, ptr_t *iter) const;

// Maximum value
bool MaxFwd (pair_t *data);
bool MaxBwd (pair_t *data);
bool MaxIterFwd (pair_t *data, ptr_t *iter) const;
bool MaxIterBwd (pair_t *data, ptr_t *iter) const;

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool FindKeyFwd (pair_t *data, adt_t key);
bool FindKeyBwd (pair_t *data, adt_t key);
bool FindKeyIterFwd (pair_t *data, adt_t key, ptr_t *iter) const;
bool FindKeyIterBwd (pair_t *data, adt_t key, ptr_t *iter) const;

// Keys set searching
bool FindKeysFwd (pair_t *data, const adt_t keys[], size_t size);
bool FindKeysBwd (pair_t *data, const adt_t keys[], size_t size);
bool FindKeysIterFwd (pair_t *data, const adt_t keys[], size_t size, ptr_t *iter) const;
bool FindKeysIterBwd (pair_t *data, const adt_t keys[], size_t size, ptr_t *iter) const;

// Sequence searching
size_t FindSequenceFwd (pair_t *data, adt_t key);
size_t FindSequenceBwd (pair_t *data, adt_t key);
size_t FindSequenceIterFwd (pair_t *data, adt_t key, ptr_t *iter) const;
size_t FindSequenceIterBwd (pair_t *data, adt_t key, ptr_t *iter) const;

// Vectorized searching
size_t FindVectorFwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize);
size_t FindVectorBwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize);
size_t FindVectorIterFwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize, ptr_t *iter) const;
size_t FindVectorIterBwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize, ptr_t *iter) const;

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool FindDupFwd (pair_t *data);
bool FindDupBwd (pair_t *data);
bool FindDupIterFwd (pair_t *data, ptr_t *iter) const;
bool FindDupIterBwd (pair_t *data, ptr_t *iter) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t CountKey (adt_t key) const;
size_t CountKeys (const adt_t keys[], size_t size) const;

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Unique (const MultiHash *source);

//****************************************************************************//
//      Check for duplicate values                                            //
//****************************************************************************//
bool CheckDup (void) const;

//****************************************************************************//
//      Hash table properties                                                 //
//****************************************************************************//
KeyCmp CompareFunction (void) const;
HashFunc HashFunction (void) const;
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
//      Multi hash structure                                                  //
//****************************************************************************//
struct MultiHash
{
	void		*array;		// Pointer to array which holds hash table data
	size_t		capacity;	// Capacity of the hash table (auto extended if required)
	size_t		size;		// Current hash table size
	size_t		pool;		// Index of first free node in the pool
	size_t		fwd;		// Current position of forward iterator
	size_t		bwd;		// Current position of backward iterator
	size_t		futex;		// Container's futex
	KeyCmp		kfunc;		// Key compare function
	HashFunc	hfunc;		// Hash function
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data
};

//****************************************************************************//
//      Init hash table structure                                             //
//****************************************************************************//
void MultiHash_InitMultiHash (struct MultiHash *hash, size_t capacity, KeyCmp kfunc, HashFunc hfunc, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy hash table structure                                             //
//****************************************************************************//
void MultiHash_CopyMultiHash (struct MultiHash *hash, const MultiHash *source);

//****************************************************************************//
//      Free hash table structure                                             //
//****************************************************************************//
void MultiHash_FreeMultiHash (struct MultiHash *hash);

//****************************************************************************//
//      Access predicates                                                     //
//****************************************************************************//

// Lock operations
bool MultiHash_LockReadings (struct MultiHash *hash, bool wait);
bool MultiHash_LockWritings (struct MultiHash *hash, bool wait);

// Release operations
void MultiHash_AllowReadings (struct MultiHash *hash);
void MultiHash_AllowWritings (struct MultiHash *hash);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool MultiHash_Insert (struct MultiHash *hash, const struct pair_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool MultiHash_RemoveFwd (struct MultiHash *hash);
bool MultiHash_RemoveBwd (struct MultiHash *hash);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool MultiHash_SetFwd (struct MultiHash *hash, const struct pair_t *data);
bool MultiHash_SetBwd (struct MultiHash *hash, const struct pair_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool MultiHash_GetFwd (const struct MultiHash *hash, struct pair_t *data);
bool MultiHash_GetBwd (const struct MultiHash *hash, struct pair_t *data);
bool MultiHash_GetIter (const struct MultiHash *hash, struct pair_t *data, ptr_t iter);

//****************************************************************************//
//      Manipulation with forward iterator                                    //
//****************************************************************************//

// Set iterator position
void MultiHash_FwdToHead (struct MultiHash *hash);
void MultiHash_FwdToTail (struct MultiHash *hash);
void MultiHash_FwdToBwd (struct MultiHash *hash);

// Change iterator position
bool MultiHash_FwdGoNext (struct MultiHash *hash, size_t pos);
bool MultiHash_FwdGoPrev (struct MultiHash *hash, size_t pos);

//****************************************************************************//
//      Manipulation with backward iterator                                   //
//****************************************************************************//

// Set iterator position
void MultiHash_BwdToHead (struct MultiHash *hash);
void MultiHash_BwdToTail (struct MultiHash *hash);
void MultiHash_BwdToFwd (struct MultiHash *hash);

// Change iterator position
bool MultiHash_BwdGoNext (struct MultiHash *hash, size_t pos);
bool MultiHash_BwdGoPrev (struct MultiHash *hash, size_t pos);

//****************************************************************************//
//      Manipulation with external iterator                                   //
//****************************************************************************//

// Set iterator position
ptr_t MultiHash_IterToHead (const struct MultiHash *hash);
ptr_t MultiHash_IterToTail (const struct MultiHash *hash);
ptr_t MultiHash_IterToFwd (const struct MultiHash *hash);
ptr_t MultiHash_IterToBwd (const struct MultiHash *hash);

// Change iterator position
bool MultiHash_IterGoFwd (const struct MultiHash *hash, size_t pos, ptr_t *iter);
bool MultiHash_IterGoBwd (const struct MultiHash *hash, size_t pos, ptr_t *iter);

//****************************************************************************//
//      Swapping iterators                                                    //
//****************************************************************************//
void MultiHash_SwapFwdBwd (struct MultiHash *hash);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
bool MultiHash_MinFwd (struct UniqueHash *hash, struct pair_t *data);
bool MultiHash_MinBwd (struct UniqueHash *hash, struct pair_t *data);
bool MultiHash_MinIterFwd (const struct MultiHash *hash, struct pair_t *data, ptr_t *iter);
bool MultiHash_MinIterBwd (const struct MultiHash *hash, struct pair_t *data, ptr_t *iter);

// Maximum value
bool MultiHash_MaxFwd (struct UniqueHash *hash, struct pair_t *data);
bool MultiHash_MaxBwd (struct UniqueHash *hash, struct pair_t *data);
bool MultiHash_MaxIterFwd (const struct MultiHash *hash, struct pair_t *data, ptr_t *iter);
bool MultiHash_MaxIterBwd (const struct MultiHash *hash, struct pair_t *data, ptr_t *iter);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool MultiHash_FindKeyFwd (struct MultiHash *hash, struct pair_t *data, union adt_t key);
bool MultiHash_FindKeyBwd (struct MultiHash *hash, struct pair_t *data, union adt_t key);
bool MultiHash_FindKeyIterFwd (const struct MultiHash *hash, struct pair_t *data, union adt_t key, ptr_t *iter);
bool MultiHash_FindKeyIterBwd (const struct MultiHash *hash, struct pair_t *data, union adt_t key, ptr_t *iter);

// Keys set searching
bool MultiHash_FindKeysFwd (struct MultiHash *hash, struct pair_t *data, const union adt_t keys[], size_t size);
bool MultiHash_FindKeysBwd (struct MultiHash *hash, struct pair_t *data, const union adt_t keys[], size_t size);
bool MultiHash_FindKeysIterFwd (const struct MultiHash *hash, struct pair_t *data, const union adt_t keys[], size_t size, ptr_t *iter);
bool MultiHash_FindKeysIterBwd (const struct MultiHash *hash, struct pair_t *data, const union adt_t keys[], size_t size, ptr_t *iter);

// Sequence searching
size_t MultiHash_FindSequenceFwd (struct MultiHash *hash, struct pair_t *data, union adt_t key);
size_t MultiHash_FindSequenceBwd (struct MultiHash *hash, struct pair_t *data, union adt_t key);
size_t MultiHash_FindSequenceIterFwd (const struct MultiHash *hash, struct pair_t *data, union adt_t key, ptr_t *iter);
size_t MultiHash_FindSequenceIterBwd (const struct MultiHash *hash, struct pair_t *data, union adt_t key, ptr_t *iter);

// Vectorized searching
size_t MultiHash_FindVectorFwd (struct MultiHash *hash, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize);
size_t MultiHash_FindVectorBwd (struct MultiHash *hash, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize);
size_t MultiHash_FindVectorIterFwd (const struct MultiHash *hash, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize, ptr_t *iter);
size_t MultiHash_FindVectorIterBwd (const struct MultiHash *hash, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize, ptr_t *iter);

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool MultiHash_FindDupFwd (struct MultiHash *hash, struct pair_t *data);
bool MultiHash_FindDupBwd (struct MultiHash *hash, struct pair_t *data);
bool MultiHash_FindDupIterFwd (const struct MultiHash *hash, struct pair_t *data, ptr_t *iter);
bool MultiHash_FindDupIterBwd (const struct MultiHash *hash, struct pair_t *data, ptr_t *iter);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t MultiHash_CountKey (const struct MultiHash *hash, union adt_t key);
size_t MultiHash_CountKeys (const struct MultiHash *hash, const union adt_t keys[], size_t size);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t MultiHash_Unique (struct MultiHash *hash, const MultiHash *source);

//****************************************************************************//
//      Check for duplicate values                                            //
//****************************************************************************//
bool MultiHash_CheckDup (const struct MultiHash *hash);

//****************************************************************************//
//      Hash table properties                                                 //
//****************************************************************************//
KeyCmp MultiHash_CompareFunction (const struct MultiHash *hash);
HashFunc MultiHash_HashFunction (const struct MultiHash *hash);
CopyFunc MultiHash_CopyFunction (const struct MultiHash *hash);
DelFunc MultiHash_DeleteFunction (const struct MultiHash *hash);
void* MultiHash_UserData (const struct MultiHash *hash);
size_t MultiHash_Capacity (const struct MultiHash *hash);
size_t MultiHash_Size (const struct MultiHash *hash);
bool MultiHash_IsEmpty (const struct MultiHash *hash);
bool MultiHash_IsInit (const struct MultiHash *hash);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
