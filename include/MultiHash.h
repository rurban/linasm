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
	void	*array;		// Pointer to array which holds hash table data
	size_t	capacity;	// Capacity of the hash table (auto extended if required)
	size_t	size;		// Current hash table size
	size_t	pool;		// Index of first free node in the pool
	size_t	fwd;		// Current position of forward iterator
	size_t	bwd;		// Current position of backward iterator
	KeyCmp	kfunc;		// Key compare function
	Hash	hfunc;		// Hash function

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
MultiHash (size_t capacity, KeyCmp kfunc, Hash hfunc);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
MultiHash (const MultiHash &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~MultiHash (void);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Insert (const data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool RemoveFwd (data_t *data);
bool RemoveBwd (data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool SetFwd (const data_t *data);
bool SetBwd (const data_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool GetFwd (data_t *data) const;
bool GetBwd (data_t *data) const;
bool GetIter (data_t *data, ptr_t iter) const;

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool ReplaceFwd (data_t *odata, const data_t *ndata);
bool ReplaceBwd (data_t *odata, const data_t *ndata);

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
bool MinFwd (data_t *data);
bool MinBwd (data_t *data);
bool MinIterFwd (data_t *data, ptr_t *iter) const;
bool MinIterBwd (data_t *data, ptr_t *iter) const;

// Maximum value
bool MaxFwd (data_t *data);
bool MaxBwd (data_t *data);
bool MaxIterFwd (data_t *data, ptr_t *iter) const;
bool MaxIterBwd (data_t *data, ptr_t *iter) const;

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool FindKeyFwd (data_t *data, adt_t key);
bool FindKeyBwd (data_t *data, adt_t key);
bool FindKeyIterFwd (data_t *data, adt_t key, ptr_t *iter) const;
bool FindKeyIterBwd (data_t *data, adt_t key, ptr_t *iter) const;

// Keys set searching
bool FindKeysFwd (data_t *data, const adt_t keys[], size_t size);
bool FindKeysBwd (data_t *data, const adt_t keys[], size_t size);
bool FindKeysIterFwd (data_t *data, const adt_t keys[], size_t size, ptr_t *iter) const;
bool FindKeysIterBwd (data_t *data, const adt_t keys[], size_t size, ptr_t *iter) const;

// Sequence searching
size_t FindSequenceFwd (data_t *data, adt_t key);
size_t FindSequenceBwd (data_t *data, adt_t key);
size_t FindSequenceIterFwd (data_t *data, adt_t key, ptr_t *iter) const;
size_t FindSequenceIterBwd (data_t *data, adt_t key, ptr_t *iter) const;

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool FindDupFwd (data_t *data);
bool FindDupBwd (data_t *data);
bool FindDupIterFwd (data_t *data, ptr_t *iter) const;
bool FindDupIterBwd (data_t *data, ptr_t *iter) const;

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
Hash HashFunction (void) const;
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
	void	*array;		// Pointer to array which holds hash table data
	size_t	capacity;	// Capacity of the hash table (auto extended if required)
	size_t	size;		// Current hash table size
	size_t	pool;		// Index of first free node in the pool
	size_t	fwd;		// Current position of forward iterator
	size_t	bwd;		// Current position of backward iterator
	KeyCmp	kfunc;		// Key compare function
	Hash	hfunc;		// Hash function
};

//****************************************************************************//
//      Init hash table structure                                             //
//****************************************************************************//
void MultiHash_InitMultiHash (struct MultiHash *hash, size_t capacity, KeyCmp kfunc, Hash hfunc);

//****************************************************************************//
//      Copy hash table structure                                             //
//****************************************************************************//
void MultiHash_CopyMultiHash (struct MultiHash *hash, const MultiHash *source);

//****************************************************************************//
//      Free hash table structure                                             //
//****************************************************************************//
void MultiHash_FreeMultiHash (struct MultiHash *hash);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool MultiHash_Insert (struct MultiHash *hash, const struct data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool MultiHash_RemoveFwd (struct MultiHash *hash, struct data_t *data);
bool MultiHash_RemoveBwd (struct MultiHash *hash, struct data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool MultiHash_SetFwd (struct MultiHash *hash, const struct data_t *data);
bool MultiHash_SetBwd (struct MultiHash *hash, const struct data_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool MultiHash_GetFwd (const struct MultiHash *hash, struct data_t *data);
bool MultiHash_GetBwd (const struct MultiHash *hash, struct data_t *data);
bool MultiHash_GetIter (const struct MultiHash *hash, struct data_t *data, ptr_t iter);

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool MultiHash_ReplaceFwd (struct MultiHash *hash, struct data_t *odata, const struct data_t *ndata);
bool MultiHash_ReplaceBwd (struct MultiHash *hash, struct data_t *odata, const struct data_t *ndata);

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

//***************************************************************************//
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
bool MultiHash_MinFwd (struct UniqueHash *hash, struct data_t *data);
bool MultiHash_MinBwd (struct UniqueHash *hash, struct data_t *data);
bool MultiHash_MinIterFwd (const struct MultiHash *hash, struct data_t *data, ptr_t *iter);
bool MultiHash_MinIterBwd (const struct MultiHash *hash, struct data_t *data, ptr_t *iter);

// Maximum value
bool MultiHash_MaxFwd (struct UniqueHash *hash, struct data_t *data);
bool MultiHash_MaxBwd (struct UniqueHash *hash, struct data_t *data);
bool MultiHash_MaxIterFwd (const struct MultiHash *hash, struct data_t *data, ptr_t *iter);
bool MultiHash_MaxIterBwd (const struct MultiHash *hash, struct data_t *data, ptr_t *iter);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool MultiHash_FindKeyFwd (struct MultiHash *hash, struct data_t *data, union adt_t key);
bool MultiHash_FindKeyBwd (struct MultiHash *hash, struct data_t *data, union adt_t key);
bool MultiHash_FindKeyIterFwd (const struct MultiHash *hash, struct data_t *data, union adt_t key, ptr_t *iter);
bool MultiHash_FindKeyIterBwd (const struct MultiHash *hash, struct data_t *data, union adt_t key, ptr_t *iter);

// Keys set searching
bool MultiHash_FindKeysFwd (struct MultiHash *hash, struct data_t *data, const union adt_t keys[], size_t size);
bool MultiHash_FindKeysBwd (struct MultiHash *hash, struct data_t *data, const union adt_t keys[], size_t size);
bool MultiHash_FindKeysIterFwd (const struct MultiHash *hash, struct data_t *data, const union adt_t keys[], size_t size, ptr_t *iter);
bool MultiHash_FindKeysIterBwd (const struct MultiHash *hash, struct data_t *data, const union adt_t keys[], size_t size, ptr_t *iter);

// Sequence searching
size_t MultiHash_FindSequenceFwd (struct MultiHash *hash, struct data_t *data, union adt_t key);
size_t MultiHash_FindSequenceBwd (struct MultiHash *hash, struct data_t *data, union adt_t key);
size_t MultiHash_FindSequenceIterFwd (const struct MultiHash *hash, struct data_t *data, union adt_t key, ptr_t *iter);
size_t MultiHash_FindSequenceIterBwd (const struct MultiHash *hash, struct data_t *data, union adt_t key, ptr_t *iter);

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool MultiHash_FindDupFwd (struct MultiHash *hash, struct data_t *data);
bool MultiHash_FindDupBwd (struct MultiHash *hash, struct data_t *data);
bool MultiHash_FindDupIterFwd (const struct MultiHash *hash, struct data_t *data, ptr_t *iter);
bool MultiHash_FindDupIterBwd (const struct MultiHash *hash, struct data_t *data, ptr_t *iter);

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
Hash MultiHash_HashFunction (const struct MultiHash *hash);
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
