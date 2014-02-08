/*                                                                   MultiHash.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                      MULTIPLY KEYS HASH TABLE DATA TYPE                      #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2014, Jack Black #
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
//      Swapping iterators                                                    //
//****************************************************************************//
void SwapFwdBwd (void);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool FindKeyFwd (data_t *data, adt_t key);
bool FindKeyBwd (data_t *data, adt_t key);

// Keys set searching
bool FindKeysFwd (data_t *data, const adt_t keys[], size_t size);
bool FindKeysBwd (data_t *data, const adt_t keys[], size_t size);

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool FindDupFwd (data_t *data);
bool FindDupBwd (data_t *data);

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
//      Swapping iterators                                                    //
//****************************************************************************//
void MultiHash_SwapFwdBwd (struct MultiHash *hash);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool MultiHash_FindKeyFwd (struct MultiHash *hash, struct data_t *data, union adt_t key);
bool MultiHash_FindKeyBwd (struct MultiHash *hash, struct data_t *data, union adt_t key);

// Keys set searching
bool MultiHash_FindKeysFwd (struct MultiHash *hash, struct data_t *data, const union adt_t keys[], size_t size);
bool MultiHash_FindKeysBwd (struct MultiHash *hash, struct data_t *data, const union adt_t keys[], size_t size);

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool MultiHash_FindDupFwd (struct MultiHash *hash, struct data_t *data);
bool MultiHash_FindDupBwd (struct MultiHash *hash, struct data_t *data);

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

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
