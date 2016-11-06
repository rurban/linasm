/*                                                                  UniqueHash.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                       UNIQUE KEYS HASH TABLE DATA TYPE                       #
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
//      Unique hash class                                                     //
//****************************************************************************//
class UniqueHash
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
UniqueHash (size_t capacity, KeyCmp kfunc, HashFunc hfunc, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
UniqueHash (const UniqueHash &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~UniqueHash (void);

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
//      Overriding element value                                              //
//****************************************************************************//
bool Override (const pair_t *data);

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

// Vectorized searching
size_t FindVectorFwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize);
size_t FindVectorBwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize);
size_t FindVectorIterFwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize, ptr_t *iter) const;
size_t FindVectorIterBwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize, ptr_t *iter) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t CountKey (adt_t key) const;
size_t CountKeys (const adt_t keys[], size_t size) const;

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
//      Unique hash structure                                                 //
//****************************************************************************//
struct UniqueHash
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
void UniqueHash_InitUniqueHash (struct UniqueHash *hash, size_t capacity, KeyCmp kfunc, HashFunc hfunc, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy hash table structure                                             //
//****************************************************************************//
void UniqueHash_CopyUniqueHash (struct UniqueHash *hash, const UniqueHash *source);

//****************************************************************************//
//      Free hash table structure                                             //
//****************************************************************************//
void UniqueHash_FreeUniqueHash (struct UniqueHash *hash);

//****************************************************************************//
//      Access predicates                                                     //
//****************************************************************************//

// Lock operations
bool UniqueHash_LockReadings (struct UniqueHash *hash, bool wait);
bool UniqueHash_LockWritings (struct UniqueHash *hash, bool wait);

// Release operations
void UniqueHash_AllowReadings (struct UniqueHash *hash);
void UniqueHash_AllowWritings (struct UniqueHash *hash);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool UniqueHash_Insert (struct UniqueHash *hash, const struct pair_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool UniqueHash_RemoveFwd (struct UniqueHash *hash);
bool UniqueHash_RemoveBwd (struct UniqueHash *hash);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool UniqueHash_SetFwd (struct UniqueHash *hash, const struct pair_t *data);
bool UniqueHash_SetBwd (struct UniqueHash *hash, const struct pair_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool UniqueHash_GetFwd (const struct UniqueHash *hash, struct pair_t *data);
bool UniqueHash_GetBwd (const struct UniqueHash *hash, struct pair_t *data);
bool UniqueHash_GetIter (const struct UniqueHash *hash, struct pair_t *data, ptr_t iter);

//****************************************************************************//
//      Overriding element value                                              //
//****************************************************************************//
bool UniqueHash_Override (struct UniqueHash *hash, const struct pair_t *data);

//****************************************************************************//
//      Manipulation with forward iterator                                    //
//****************************************************************************//

// Set iterator position
void UniqueHash_FwdToHead (struct UniqueHash *hash);
void UniqueHash_FwdToTail (struct UniqueHash *hash);
void UniqueHash_FwdToBwd (struct UniqueHash *hash);

// Change iterator position
bool UniqueHash_FwdGoNext (struct UniqueHash *hash, size_t pos);
bool UniqueHash_FwdGoPrev (struct UniqueHash *hash, size_t pos);

//****************************************************************************//
//      Manipulation with backward iterator                                   //
//****************************************************************************//

// Set iterator position
void UniqueHash_BwdToHead (struct UniqueHash *hash);
void UniqueHash_BwdToTail (struct UniqueHash *hash);
void UniqueHash_BwdToFwd (struct UniqueHash *hash);

// Change iterator position
bool UniqueHash_BwdGoNext (struct UniqueHash *hash, size_t pos);
bool UniqueHash_BwdGoPrev (struct UniqueHash *hash, size_t pos);

//****************************************************************************//
//      Manipulation with external iterator                                   //
//****************************************************************************//

// Set iterator position
ptr_t UniqueHash_IterToHead (const struct UniqueHash *hash);
ptr_t UniqueHash_IterToTail (const struct UniqueHash *hash);
ptr_t UniqueHash_IterToFwd (const struct UniqueHash *hash);
ptr_t UniqueHash_IterToBwd (const struct UniqueHash *hash);

// Change iterator position
bool UniqueHash_IterGoFwd (const struct UniqueHash *hash, size_t pos, ptr_t *iter);
bool UniqueHash_IterGoBwd (const struct UniqueHash *hash, size_t pos, ptr_t *iter);

//****************************************************************************//
//      Swapping iterators                                                    //
//****************************************************************************//
void UniqueHash_SwapFwdBwd (struct UniqueHash *hash);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
bool UniqueHash_MinFwd (struct UniqueHash *hash, struct pair_t *data);
bool UniqueHash_MinBwd (struct UniqueHash *hash, struct pair_t *data);
bool UniqueHash_MinIterFwd (const struct UniqueHash *hash, struct pair_t *data, ptr_t *iter);
bool UniqueHash_MinIterBwd (const struct UniqueHash *hash, struct pair_t *data, ptr_t *iter);

// Maximum value
bool UniqueHash_MaxFwd (struct UniqueHash *hash, struct pair_t *data);
bool UniqueHash_MaxBwd (struct UniqueHash *hash, struct pair_t *data);
bool UniqueHash_MaxIterFwd (const struct UniqueHash *hash, struct pair_t *data, ptr_t *iter);
bool UniqueHash_MaxIterBwd (const struct UniqueHash *hash, struct pair_t *data, ptr_t *iter);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool UniqueHash_FindKeyFwd (struct UniqueHash *hash, struct pair_t *data, union adt_t key);
bool UniqueHash_FindKeyBwd (struct UniqueHash *hash, struct pair_t *data, union adt_t key);
bool UniqueHash_FindKeyIterFwd (const struct UniqueHash *hash, struct pair_t *data, union adt_t key, ptr_t *iter);
bool UniqueHash_FindKeyIterBwd (const struct UniqueHash *hash, struct pair_t *data, union adt_t key, ptr_t *iter);

// Keys set searching
bool UniqueHash_FindKeysFwd (struct UniqueHash *hash, struct pair_t *data, const union adt_t keys[], size_t size);
bool UniqueHash_FindKeysBwd (struct UniqueHash *hash, struct pair_t *data, const union adt_t keys[], size_t size);
bool UniqueHash_FindKeysIterFwd (const struct UniqueHash *hash, struct pair_t *data, const union adt_t keys[], size_t size, ptr_t *iter);
bool UniqueHash_FindKeysIterBwd (const struct UniqueHash *hash, struct pair_t *data, const union adt_t keys[], size_t size, ptr_t *iter);

// Vectorized searching
size_t UniqueHash_FindVectorFwd (struct UniqueHash *hash, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize);
size_t UniqueHash_FindVectorBwd (struct UniqueHash *hash, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize);
size_t UniqueHash_FindVectorIterFwd (const struct UniqueHash *hash, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize, ptr_t *iter);
size_t UniqueHash_FindVectorIterBwd (const struct UniqueHash *hash, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize, ptr_t *iter);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t UniqueHash_CountKey (const struct UniqueHash *hash, union adt_t key);
size_t UniqueHash_CountKeys (const struct UniqueHash *hash, const union adt_t keys[], size_t size);

//****************************************************************************//
//      Hash table properties                                                 //
//****************************************************************************//
KeyCmp UniqueHash_CompareFunction (const struct UniqueHash *hash);
HashFunc UniqueHash_HashFunction (const struct UniqueHash *hash);
CopyFunc UniqueHash_CopyFunction (const struct UniqueHash *hash);
DelFunc UniqueHash_DeleteFunction (const struct UniqueHash *hash);
void* UniqueHash_UserData (const struct UniqueHash *hash);
size_t UniqueHash_Capacity (const struct UniqueHash *hash);
size_t UniqueHash_Size (const struct UniqueHash *hash);
bool UniqueHash_IsEmpty (const struct UniqueHash *hash);
bool UniqueHash_IsInit (const struct UniqueHash *hash);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
