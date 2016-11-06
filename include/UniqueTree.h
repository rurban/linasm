/*                                                                  UniqueTree.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                         UNIQUE KEYS B-TREE DATA TYPE                         #
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
//      Unique tree class                                                     //
//****************************************************************************//
class UniqueTree
{
private:
	void		*array;		// Pointer to array which holds b-tree nodes
	size_t		capacity;	// Capacity of the b-tree (auto extended if required)
	size_t		size;		// Current b-tree size
	size_t		height;		// Current b-tree height
	size_t		pool;		// Index of first free node in the pool
	size_t		root;		// Index of b-tree root node
	size_t		fwd;		// Current position of forward iterator
	size_t		bwd;		// Current position of backward iterator
	size_t		futex;		// Container's futex
	KeyCmp		kfunc;		// Key compare function
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
UniqueTree (size_t capacity, KeyCmp kfunc, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
UniqueTree (const UniqueTree &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~UniqueTree (void);

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
size_t CopyFwd (const UniqueTree *source, size_t count);
size_t CopyBwd (const UniqueTree *source, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t MoveFwd (UniqueTree *source, size_t count);
size_t MoveBwd (UniqueTree *source, size_t count);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Insert (const pair_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//

// By element index
bool RemoveIndex (size_t index);

// Using iterators
bool RemoveFwd (void);
bool RemoveBwd (void);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//

// By element index
bool SetIndex (const pair_t *data, size_t index);

// Using iterators
bool SetFwd (const pair_t *data);
bool SetBwd (const pair_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//

// By element index
bool GetIndex (pair_t *data, size_t index) const;

// Using iterators
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
void FwdToIndex (size_t index);
void FwdToMin (void);
void FwdToMax (void);
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
void BwdToMin (void);
void BwdToMax (void);
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
ptr_t IterToMin (void) const;
ptr_t IterToMax (void) const;
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

//============================================================================//
//      Single key searching                                                  //
//============================================================================//

// Searching for equal key
bool FindEqualFwd (pair_t *data, adt_t key);
bool FindEqualBwd (pair_t *data, adt_t key);
bool FindEqualIterFwd (pair_t *data, adt_t key, ptr_t *iter) const;
bool FindEqualIterBwd (pair_t *data, adt_t key, ptr_t *iter) const;

// Searching for greater key
bool FindGreatFwd (pair_t *data, adt_t key);
bool FindGreatBwd (pair_t *data, adt_t key);
bool FindGreatIter (pair_t *data, adt_t key, ptr_t *iter) const;

// Searching for greater or equal key
bool FindGreatOrEqualFwd (pair_t *data, adt_t key);
bool FindGreatOrEqualBwd (pair_t *data, adt_t key);
bool FindGreatOrEqualIter (pair_t *data, adt_t key, ptr_t *iter) const;

// Searching for less key
bool FindLessFwd (pair_t *data, adt_t key);
bool FindLessBwd (pair_t *data, adt_t key);
bool FindLessIter (pair_t *data, adt_t key, ptr_t *iter) const;

// Searching for less or equal key
bool FindLessOrEqualFwd (pair_t *data, adt_t key);
bool FindLessOrEqualBwd (pair_t *data, adt_t key);
bool FindLessOrEqualIter (pair_t *data, adt_t key, ptr_t *iter) const;

//============================================================================//
//      Vectorized searching                                                  //
//============================================================================//
size_t FindVectorFwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize);
size_t FindVectorBwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize);
size_t FindVectorIterFwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize, ptr_t *iter) const;
size_t FindVectorIterBwd (pair_t data[], size_t size, pair_t vector[], size_t *vsize, ptr_t *iter) const;

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
bool FindDiffFwd (pair_t *data, const UniqueTree *source, size_t count);
bool FindDiffBwd (pair_t *data, const UniqueTree *source, size_t count);
bool FindDiffIterFwd (pair_t *data, const UniqueTree *source, size_t count, ptr_t *titer, ptr_t siter) const;
bool FindDiffIterBwd (pair_t *data, const UniqueTree *source, size_t count, ptr_t *titer, ptr_t siter) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t CountKey (adt_t key) const;
size_t CountKeys (const adt_t keys[], size_t size) const;

//****************************************************************************//
//      Comparison of unique trees                                            //
//****************************************************************************//
sint64_t Compare (const UniqueTree *source) const;

//****************************************************************************//
//      Check for equality                                                    //
//****************************************************************************//
bool IsEqual (const UniqueTree *source) const;

//****************************************************************************//
//      Tree properties                                                       //
//****************************************************************************//
KeyCmp CompareFunction (void) const;
CopyFunc CopyFunction (void) const;
DelFunc DeleteFunction (void) const;
void* UserData (void) const;
size_t Capacity (void) const;
size_t Size (void) const;
size_t Height (void) const;
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
//      Unique tree structure                                                 //
//****************************************************************************//
struct UniqueTree
{
	void		*array;		// Pointer to array which holds b-tree nodes
	size_t		capacity;	// Capacity of the b-tree (auto extended if required)
	size_t		size;		// Current b-tree size
	size_t		height;		// Current b-tree height
	size_t		pool;		// Index of first free node in the pool
	size_t		root;		// Index of b-tree root node
	size_t		fwd;		// Current position of forward iterator
	size_t		bwd;		// Current position of backward iterator
	size_t		futex;		// Container's futex
	KeyCmp		kfunc;		// Key compare function
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data
};

//****************************************************************************//
//      Init tree structure                                                   //
//****************************************************************************//
void UniqueTree_InitUniqueTree (struct UniqueTree *tree, size_t capacity, KeyCmp kfunc, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy tree structure                                                   //
//****************************************************************************//
void UniqueTree_CopyUniqueTree (struct UniqueTree *tree, const UniqueTree *source);

//****************************************************************************//
//      Free tree structure                                                   //
//****************************************************************************//
void UniqueTree_FreeUniqueTree (struct UniqueTree *tree);

//****************************************************************************//
//      Access predicates                                                     //
//****************************************************************************//

// Lock operations
bool UniqueTree_LockReadings (struct UniqueTree *tree, bool wait);
bool UniqueTree_LockWritings (struct UniqueTree *tree, bool wait);

// Release operations
void UniqueTree_AllowReadings (struct UniqueTree *tree);
void UniqueTree_AllowWritings (struct UniqueTree *tree);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//
size_t UniqueTree_CopyFwd (struct UniqueTree *tree, const struct UniqueTree *source, size_t count);
size_t UniqueTree_CopyBwd (struct UniqueTree *tree, const struct UniqueTree *source, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t UniqueTree_MoveFwd (struct UniqueTree *tree, struct UniqueTree *source, size_t count);
size_t UniqueTree_MoveBwd (struct UniqueTree *tree, struct UniqueTree *source, size_t count);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool UniqueTree_Insert (struct UniqueTree *tree, const struct pair_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//

// By element index
bool UniqueTree_RemoveIndex (struct UniqueTree *tree, size_t index);

// Using iterators
bool UniqueTree_RemoveFwd (struct UniqueTree *tree);
bool UniqueTree_RemoveBwd (struct UniqueTree *tree);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//

// By element index
bool UniqueTree_SetIndex (struct UniqueTree *tree, const struct pair_t *data, size_t index);

// Using iterators
bool UniqueTree_SetFwd (struct UniqueTree *tree, const struct pair_t *data);
bool UniqueTree_SetBwd (struct UniqueTree *tree, const struct pair_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//

// By element index
bool UniqueTree_GetIndex (const struct UniqueTree *tree, struct pair_t *data, size_t index);

// Using iterators
bool UniqueTree_GetFwd (const struct UniqueTree *tree, struct pair_t *data);
bool UniqueTree_GetBwd (const struct UniqueTree *tree, struct pair_t *data);
bool UniqueTree_GetIter (const struct UniqueTree *tree, struct pair_t *data, ptr_t iter);

//****************************************************************************//
//      Overriding element value                                              //
//****************************************************************************//
bool UniqueTree_Override (struct UniqueTree *tree, const struct pair_t *data);

//****************************************************************************//
//      Manipulation with forward iterator                                    //
//****************************************************************************//

// Set iterator position
void UniqueTree_FwdToIndex (struct UniqueTree *tree, size_t index);
void UniqueTree_FwdToMin (struct UniqueTree *tree);
void UniqueTree_FwdToMax (struct UniqueTree *tree);
void UniqueTree_FwdToBwd (struct UniqueTree *tree);

// Get iterator position
size_t UniqueTree_GetFwdPos (const struct UniqueTree *tree);

// Change iterator position
bool UniqueTree_FwdGoNext (struct UniqueTree *tree, size_t pos);
bool UniqueTree_FwdGoPrev (struct UniqueTree *tree, size_t pos);

//****************************************************************************//
//      Manipulation with backward iterator                                   //
//****************************************************************************//

// Set iterator position
void UniqueTree_BwdToIndex (struct UniqueTree *tree, size_t index);
void UniqueTree_BwdToMin (struct UniqueTree *tree);
void UniqueTree_BwdToMax (struct UniqueTree *tree);
void UniqueTree_BwdToFwd (struct UniqueTree *tree);

// Get iterator position
size_t UniqueTree_GetBwdPos (const struct UniqueTree *tree);

// Change iterator position
bool UniqueTree_BwdGoNext (struct UniqueTree *tree, size_t pos);
bool UniqueTree_BwdGoPrev (struct UniqueTree *tree, size_t pos);

//****************************************************************************//
//      Manipulation with external iterator                                   //
//****************************************************************************//

// Set iterator position
ptr_t UniqueTree_IterToIndex (const struct UniqueTree *tree, size_t index);
ptr_t UniqueTree_IterToMin (const struct UniqueTree *tree);
ptr_t UniqueTree_IterToMax (const struct UniqueTree *tree);
ptr_t UniqueTree_IterToFwd (const struct UniqueTree *tree);
ptr_t UniqueTree_IterToBwd (const struct UniqueTree *tree);

// Get iterator position
size_t UniqueTree_GetIterPos (const struct UniqueTree *tree, ptr_t iter);

// Change iterator position
bool UniqueTree_IterGoFwd (const struct UniqueTree *tree, size_t pos, ptr_t *iter);
bool UniqueTree_IterGoBwd (const struct UniqueTree *tree, size_t pos, ptr_t *iter);

//****************************************************************************//
//      Swapping iterators                                                    //
//****************************************************************************//
void UniqueTree_SwapFwdBwd (struct UniqueTree *tree);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
bool UniqueTree_MinFwd (struct UniqueTree *tree, struct pair_t *data);
bool UniqueTree_MinBwd (struct UniqueTree *tree, struct pair_t *data);
bool UniqueTree_MinIterFwd (const struct UniqueTree *tree, struct pair_t *data, ptr_t *iter);
bool UniqueTree_MinIterBwd (const struct UniqueTree *tree, struct pair_t *data, ptr_t *iter);

// Maximum value
bool UniqueTree_MaxFwd (struct UniqueTree *tree, struct pair_t *data);
bool UniqueTree_MaxBwd (struct UniqueTree *tree, struct pair_t *data);
bool UniqueTree_MaxIterFwd (const struct UniqueTree *tree, struct pair_t *data, ptr_t *iter);
bool UniqueTree_MaxIterBwd (const struct UniqueTree *tree, struct pair_t *data, ptr_t *iter);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

//============================================================================//
//      Single key searching                                                  //
//============================================================================//

// Searching for equal key
bool UniqueTree_FindEqualFwd (struct UniqueTree *tree, struct pair_t *data, union adt_t key);
bool UniqueTree_FindEqualBwd (struct UniqueTree *tree, struct pair_t *data, union adt_t key);
bool UniqueTree_FindEqualIterFwd (const struct UniqueTree *tree, struct pair_t *data, union adt_t key, ptr_t *iter);
bool UniqueTree_FindEqualIterBwd (const struct UniqueTree *tree, struct pair_t *data, union adt_t key, ptr_t *iter);

// Searching for greater key
bool UniqueTree_FindGreatFwd (struct UniqueTree *tree, struct pair_t *data, union adt_t key);
bool UniqueTree_FindGreatBwd (struct UniqueTree *tree, struct pair_t *data, union adt_t key);
bool UniqueTree_FindGreatIter (const struct UniqueTree *tree, struct pair_t *data, union adt_t key, ptr_t *iter);

// Searching for greater or equal key
bool UniqueTree_FindGreatOrEqualFwd (struct UniqueTree *tree, struct pair_t *data, union adt_t key);
bool UniqueTree_FindGreatOrEqualBwd (struct UniqueTree *tree, struct pair_t *data, union adt_t key);
bool UniqueTree_FindGreatOrEqualIter (const struct UniqueTree *tree, struct pair_t *data, union adt_t key, ptr_t *iter);

// Searching for less key
bool UniqueTree_FindLessFwd (struct UniqueTree *tree, struct pair_t *data, union adt_t key);
bool UniqueTree_FindLessBwd (struct UniqueTree *tree, struct pair_t *data, union adt_t key);
bool UniqueTree_FindLessIter (const struct UniqueTree *tree, struct pair_t *data, union adt_t key, ptr_t *iter);

// Searching for less or equal key
bool UniqueTree_FindLessOrEqualFwd (struct UniqueTree *tree, struct pair_t *data, union adt_t key);
bool UniqueTree_FindLessOrEqualBwd (struct UniqueTree *tree, struct pair_t *data, union adt_t key);
bool UniqueTree_FindLessOrEqualIter (const struct UniqueTree *tree, struct pair_t *data, union adt_t key, ptr_t *iter);

//============================================================================//
//      Vectorized searching                                                  //
//============================================================================//
size_t UniqueTree_FindVectorFwd (struct UniqueTree *tree, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize);
size_t UniqueTree_FindVectorBwd (struct UniqueTree *tree, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize);
size_t UniqueTree_FindVectorIterFwd (const struct UniqueTree *tree, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize, ptr_t *iter);
size_t UniqueTree_FindVectorIterBwd (const struct UniqueTree *tree, struct pair_t data[], size_t size, struct pair_t vector[], size_t *vsize, ptr_t *iter);

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
bool UniqueTree_FindDiffFwd (struct UniqueTree *tree, struct pair_t *data, const struct UniqueTree *source, size_t count);
bool UniqueTree_FindDiffBwd (struct UniqueTree *tree, struct pair_t *data, const struct UniqueTree *source, size_t count);
bool UniqueTree_FindDiffIterFwd (const struct UniqueTree *tree, struct pair_t *data, const struct UniqueTree *source, size_t count, ptr_t *titer, ptr_t siter);
bool UniqueTree_FindDiffIterBwd (const struct UniqueTree *tree, struct pair_t *data, const struct UniqueTree *source, size_t count, ptr_t *titer, ptr_t siter);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t UniqueTree_CountKey (const struct UniqueTree *tree, union adt_t key);
size_t UniqueTree_CountKeys (const struct UniqueTree *tree, const union adt_t keys[], size_t size);

//****************************************************************************//
//      Comparison of unique trees                                            //
//****************************************************************************//
sint64_t UniqueTree_Compare (const struct UniqueTree *tree, const struct UniqueTree *source);

//****************************************************************************//
//      Check for equality                                                    //
//****************************************************************************//
bool UniqueTree_IsEqual (const struct UniqueTree *tree, const struct UniqueTree *source);

//****************************************************************************//
//      Tree properties                                                       //
//****************************************************************************//
KeyCmp UniqueTree_CompareFunction (const struct UniqueTree *tree);
CopyFunc UniqueTree_CopyFunction (const struct UniqueTree *tree);
DelFunc UniqueTree_DeleteFunction (const struct UniqueTree *tree);
void* UniqueTree_UserData (const struct UniqueTree *tree);
size_t UniqueTree_Capacity (const struct UniqueTree *tree);
size_t UniqueTree_Size (const struct UniqueTree *tree);
size_t UniqueTree_Height (const struct UniqueTree *tree);
bool UniqueTree_IsEmpty (const struct UniqueTree *tree);
bool UniqueTree_IsInit (const struct UniqueTree *tree);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
