/*                                                                  UniqueHash.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                       UNIQUE KEYS HASH TABLE DATA TYPE                       #
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
//      Unique hash class                                                     //
//****************************************************************************//
class UniqueHash
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
UniqueHash (size_t capacity, KeyCmp kfunc, Hash hfunc);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
UniqueHash (const UniqueHash &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~UniqueHash (void);

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
//      Overriding element value                                              //
//****************************************************************************//
bool Override (data_t *odata, const data_t *ndata);

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
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
bool MinFwd (data_t *data);
bool MinBwd (data_t *data);

// Maximum value
bool MaxFwd (data_t *data);
bool MaxBwd (data_t *data);

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
//      Key counting                                                          //
//****************************************************************************//
size_t CountKey (adt_t key) const;
size_t CountKeys (const adt_t keys[], size_t size) const;

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
//      Unique hash structure                                                 //
//****************************************************************************//
struct UniqueHash
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
void UniqueHash_InitUniqueHash (struct UniqueHash *hash, size_t capacity, KeyCmp kfunc, Hash hfunc);

//****************************************************************************//
//      Copy hash table structure                                             //
//****************************************************************************//
void UniqueHash_CopyUniqueHash (struct UniqueHash *hash, const UniqueHash *source);

//****************************************************************************//
//      Free hash table structure                                             //
//****************************************************************************//
void UniqueHash_FreeUniqueHash (struct UniqueHash *hash);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool UniqueHash_Insert (struct UniqueHash *hash, const struct data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool UniqueHash_RemoveFwd (struct UniqueHash *hash, struct data_t *data);
bool UniqueHash_RemoveBwd (struct UniqueHash *hash, struct data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool UniqueHash_SetFwd (struct UniqueHash *hash, const struct data_t *data);
bool UniqueHash_SetBwd (struct UniqueHash *hash, const struct data_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool UniqueHash_GetFwd (const struct UniqueHash *hash, struct data_t *data);
bool UniqueHash_GetBwd (const struct UniqueHash *hash, struct data_t *data);

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool UniqueHash_ReplaceFwd (struct UniqueHash *hash, struct data_t *odata, const struct data_t *ndata);
bool UniqueHash_ReplaceBwd (struct UniqueHash *hash, struct data_t *odata, const struct data_t *ndata);

//****************************************************************************//
//      Overriding element value                                              //
//****************************************************************************//
bool UniqueHash_Override (struct UniqueHash *hash, struct data_t *odata, const struct data_t *ndata);

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

//***************************************************************************//
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
//      Swapping iterators                                                    //
//****************************************************************************//
void UniqueHash_SwapFwdBwd (struct UniqueHash *hash);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
bool UniqueHash_MinFwd (struct UniqueHash *hash, struct data_t *data);
bool UniqueHash_MinBwd (struct UniqueHash *hash, struct data_t *data);

// Maximum value
bool UniqueHash_MaxFwd (struct UniqueHash *hash, struct data_t *data);
bool UniqueHash_MaxBwd (struct UniqueHash *hash, struct data_t *data);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
bool UniqueHash_FindKeyFwd (struct UniqueHash *hash, struct data_t *data, union adt_t key);
bool UniqueHash_FindKeyBwd (struct UniqueHash *hash, struct data_t *data, union adt_t key);

// Keys set searching
bool UniqueHash_FindKeysFwd (struct UniqueHash *hash, struct data_t *data, const union adt_t keys[], size_t size);
bool UniqueHash_FindKeysBwd (struct UniqueHash *hash, struct data_t *data, const union adt_t keys[], size_t size);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t UniqueHash_CountKey (const struct UniqueHash *hash, union adt_t key);
size_t UniqueHash_CountKeys (const struct UniqueHash *hash, const union adt_t keys[], size_t size);

//****************************************************************************//
//      Hash table properties                                                 //
//****************************************************************************//
KeyCmp UniqueHash_CompareFunction (const struct UniqueHash *hash);
Hash UniqueHash_HashFunction (const struct UniqueHash *hash);
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
