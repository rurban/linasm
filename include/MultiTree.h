/*                                                                   MultiTree.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                        MULTIPLY KEYS B-TREE DATA TYPE                        #
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
//      Multi tree class                                                      //
//****************************************************************************//
class MultiTree
{
private:
	void	*array;		// Pointer to array which holds b-tree nodes
	size_t	capacity;	// Capacity of the b-tree (auto extended if required)
	size_t	size;		// Current b-tree size
	size_t	height;		// Current b-tree height
	size_t	pool;		// Index of first free node in the pool
	size_t	fwd;		// Current position of forward iterator
	size_t	bwd;		// Current position of backward iterator
	size_t	root;		// Index of b-tree root node
	KeyCmp	func;		// Key compare function

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
MultiTree (size_t capacity, KeyCmp func);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
MultiTree (const MultiTree &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~MultiTree (void);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//
size_t CopyFwd (const MultiTree *source, size_t count);
size_t CopyBwd (const MultiTree *source, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t MoveFwd (MultiTree *source, size_t count);
size_t MoveBwd (MultiTree *source, size_t count);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Insert (const data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//

// By element index
bool RemoveIndex (data_t *data, size_t index);

// Using iterators
bool RemoveFwd (data_t *data);
bool RemoveBwd (data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//

// By element index
bool SetIndex (const data_t *data, size_t index);

// Using iterators
bool SetFwd (const data_t *data);
bool SetBwd (const data_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//

// By element index
bool GetIndex (data_t *data, size_t index) const;

// Using iterators
bool GetFwd (data_t *data) const;
bool GetBwd (data_t *data) const;
bool GetIter (data_t *data, ptr_t iter) const;

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//

// By element index
bool ReplaceIndex (data_t *odata, const data_t *ndata, size_t index);

// Using iterators
bool ReplaceFwd (data_t *odata, const data_t *ndata);
bool ReplaceBwd (data_t *odata, const data_t *ndata);

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

//============================================================================//
//      Single key searching                                                  //
//============================================================================//

// Searching for equal key
bool FindEqualFwd (data_t *data, adt_t key);
bool FindEqualBwd (data_t *data, adt_t key);
bool FindEqualIterFwd (data_t *data, adt_t key, ptr_t *iter) const;
bool FindEqualIterBwd (data_t *data, adt_t key, ptr_t *iter) const;

// Searching for greater key
bool FindGreatFwd (data_t *data, adt_t key);
bool FindGreatBwd (data_t *data, adt_t key);
bool FindGreatIter (data_t *data, adt_t key, ptr_t *iter) const;

// Searching for greater or equal key
bool FindGreatOrEqualFwd (data_t *data, adt_t key);
bool FindGreatOrEqualBwd (data_t *data, adt_t key);
bool FindGreatOrEqualIter (data_t *data, adt_t key, ptr_t *iter) const;

// Searching for less key
bool FindLessFwd (data_t *data, adt_t key);
bool FindLessBwd (data_t *data, adt_t key);
bool FindLessIter (data_t *data, adt_t key, ptr_t *iter) const;

// Searching for less or equal key
bool FindLessOrEqualFwd (data_t *data, adt_t key);
bool FindLessOrEqualBwd (data_t *data, adt_t key);
bool FindLessOrEqualIter (data_t *data, adt_t key, ptr_t *iter) const;

//============================================================================//
//      Sequence searching                                                    //
//============================================================================//
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
//      Searching for differences                                             //
//****************************************************************************//
bool FindDiffFwd (data_t *data, const MultiTree *source, size_t count);
bool FindDiffBwd (data_t *data, const MultiTree *source, size_t count);
bool FindDiffIterFwd (data_t *data, const MultiTree *source, size_t count, ptr_t *titer, ptr_t siter) const;
bool FindDiffIterBwd (data_t *data, const MultiTree *source, size_t count, ptr_t *titer, ptr_t siter) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t CountKey (adt_t key) const;
size_t CountKeys (const adt_t keys[], size_t size) const;

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t Unique (const MultiTree *source);

//****************************************************************************//
//      Comparison of multi trees                                             //
//****************************************************************************//
sint64_t Compare (const MultiTree *source) const;

//****************************************************************************//
//      Check for duplicate values                                            //
//****************************************************************************//
bool CheckDup (void) const;

//****************************************************************************//
//      Check for equality                                                    //
//****************************************************************************//
bool IsEqual (const MultiTree *source) const;

//****************************************************************************//
//      Tree properties                                                       //
//****************************************************************************//
KeyCmp CompareFunction (void) const;
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
//      Multi tree structure                                                  //
//****************************************************************************//
struct MultiTree
{
	void	*array;		// Pointer to array which holds b-tree nodes
	size_t	capacity;	// Capacity of the b-tree (auto extended if required)
	size_t	size;		// Current b-tree size
	size_t	height;		// Current b-tree height
	size_t	pool;		// Index of first free node in the pool
	size_t	fwd;		// Current position of forward iterator
	size_t	bwd;		// Current position of backward iterator
	size_t	root;		// Index of b-tree root node
	KeyCmp	func;		// Key compare function
};

//****************************************************************************//
//      Init tree structure                                                   //
//****************************************************************************//
void MultiTree_InitMultiTree (struct MultiTree *tree, size_t capacity, KeyCmp func);

//****************************************************************************//
//      Copy tree structure                                                   //
//****************************************************************************//
void MultiTree_CopyMultiTree (struct MultiTree *tree, const struct MultiTree *source);

//****************************************************************************//
//      Free tree structure                                                   //
//****************************************************************************//
void MultiTree_FreeMultiTree (struct MultiTree *tree);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//
size_t MultiTree_CopyFwd (struct MultiTree *tree, const struct MultiTree *source, size_t count);
size_t MultiTree_CopyBwd (struct MultiTree *tree, const struct MultiTree *source, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t MultiTree_MoveFwd (struct MultiTree *tree, struct MultiTree *source, size_t count);
size_t MultiTree_MoveBwd (struct MultiTree *tree, struct MultiTree *source, size_t count);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool MultiTree_Insert (struct MultiTree *tree, const struct data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//

// By element index
bool MultiTree_RemoveIndex (struct MultiTree *tree, struct data_t *data, size_t index);

// Using iterators
bool MultiTree_RemoveFwd (struct MultiTree *tree, struct data_t *data);
bool MultiTree_RemoveBwd (struct MultiTree *tree, struct data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//

// By element index
bool MultiTree_SetIndex (struct MultiTree *tree, const struct data_t *data, size_t index);

// Using iterators
bool MultiTree_SetFwd (struct MultiTree *tree, const struct data_t *data);
bool MultiTree_SetBwd (struct MultiTree *tree, const struct data_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//

// By element index
bool MultiTree_GetIndex (const struct MultiTree *tree, struct data_t *data, size_t index);

// Using iterators
bool MultiTree_GetFwd (const struct MultiTree *tree, struct data_t *data);
bool MultiTree_GetBwd (const struct MultiTree *tree, struct data_t *data);
bool MultiTree_GetIter (const struct MultiTree *tree, struct data_t *data, ptr_t iter);

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//

// By element index
bool MultiTree_ReplaceIndex (struct MultiTree *tree, struct data_t *odata, const struct data_t *ndata, size_t index);

// Using iterators
bool MultiTree_ReplaceFwd (struct MultiTree *tree, struct data_t *odata, const struct data_t *ndata);
bool MultiTree_ReplaceBwd (struct MultiTree *tree, struct data_t *odata, const struct data_t *ndata);

//****************************************************************************//
//      Manipulation with forward iterator                                    //
//****************************************************************************//

// Set iterator position
void MultiTree_FwdToIndex (struct MultiTree *tree, size_t index);
void MultiTree_FwdToMin (struct MultiTree *tree);
void MultiTree_FwdToMax (struct MultiTree *tree);
void MultiTree_FwdToBwd (struct MultiTree *tree);

// Get iterator position
size_t MultiTree_GetFwdPos (const struct MultiTree *tree);

// Change iterator position
bool MultiTree_FwdGoNext (struct MultiTree *tree, size_t pos);
bool MultiTree_FwdGoPrev (struct MultiTree *tree, size_t pos);

//****************************************************************************//
//      Manipulation with backward iterator                                   //
//****************************************************************************//

// Set iterator position
void MultiTree_BwdToIndex (struct MultiTree *tree, size_t index);
void MultiTree_BwdToMin (struct MultiTree *tree);
void MultiTree_BwdToMax (struct MultiTree *tree);
void MultiTree_BwdToFwd (struct MultiTree *tree);

// Get iterator position
size_t MultiTree_GetBwdPos (const struct MultiTree *tree);

// Change iterator position
bool MultiTree_BwdGoNext (struct MultiTree *tree, size_t pos);
bool MultiTree_BwdGoPrev (struct MultiTree *tree, size_t pos);

//****************************************************************************//
//      Manipulation with external iterator                                   //
//****************************************************************************//

// Set iterator position
ptr_t MultiTree_IterToIndex (const struct MultiTree *tree, size_t index);
ptr_t MultiTree_IterToMin (const struct MultiTree *tree);
ptr_t MultiTree_IterToMax (const struct MultiTree *tree);
ptr_t MultiTree_IterToFwd (const struct MultiTree *tree);
ptr_t MultiTree_IterToBwd (const struct MultiTree *tree);

// Get iterator position
size_t MultiTree_GetIterPos (const struct MultiTree *tree, ptr_t iter);

// Change iterator position
bool MultiTree_IterGoFwd (const struct MultiTree *tree, size_t pos, ptr_t *iter);
bool MultiTree_IterGoBwd (const struct MultiTree *tree, size_t pos, ptr_t *iter);

//****************************************************************************//
//      Swapping iterators                                                    //
//****************************************************************************//
void MultiTree_SwapFwdBwd (struct MultiTree *tree);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
bool MultiTree_MinFwd (struct MultiTree *tree, struct data_t *data);
bool MultiTree_MinBwd (struct MultiTree *tree, struct data_t *data);
bool MultiTree_MinIterFwd (const struct MultiTree *tree, struct data_t *data, ptr_t *iter);
bool MultiTree_MinIterBwd (const struct MultiTree *tree, struct data_t *data, ptr_t *iter);

// Maximum value
bool MultiTree_MaxFwd (struct MultiTree *tree, struct data_t *data);
bool MultiTree_MaxBwd (struct MultiTree *tree, struct data_t *data);
bool MultiTree_MaxIterFwd (const struct MultiTree *tree, struct data_t *data, ptr_t *iter);
bool MultiTree_MaxIterBwd (const struct MultiTree *tree, struct data_t *data, ptr_t *iter);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

//============================================================================//
//      Single key searching                                                  //
//============================================================================//

// Searching for equal key
bool MultiTree_FindEqualFwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
bool MultiTree_FindEqualBwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
bool MultiTree_FindEqualIterFwd (const struct MultiTree *tree, struct data_t *data, union adt_t key, ptr_t *iter);
bool MultiTree_FindEqualIterBwd (const struct MultiTree *tree, struct data_t *data, union adt_t key, ptr_t *iter);

// Searching for greater key
bool MultiTree_FindGreatFwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
bool MultiTree_FindGreatBwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
bool MultiTree_FindGreatIter (const struct MultiTree *tree, struct data_t *data, union adt_t key, ptr_t *iter);

// Searching for greater or equal key
bool MultiTree_FindGreatOrEqualFwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
bool MultiTree_FindGreatOrEqualBwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
bool MultiTree_FindGreatOrEqualIter (const struct MultiTree *tree, struct data_t *data, union adt_t key, ptr_t *iter);

// Searching for less key
bool MultiTree_FindLessFwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
bool MultiTree_FindLessBwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
bool MultiTree_FindLessIter (const struct MultiTree *tree, struct data_t *data, union adt_t key, ptr_t *iter);

// Searching for less or equal key
bool MultiTree_FindLessOrEqualFwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
bool MultiTree_FindLessOrEqualBwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
bool MultiTree_FindLessOrEqualIter (const struct MultiTree *tree, struct data_t *data, union adt_t key, ptr_t *iter);

//============================================================================//
//      Sequence searching                                                    //
//============================================================================//
size_t MultiTree_FindSequenceFwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
size_t MultiTree_FindSequenceBwd (struct MultiTree *tree, struct data_t *data, union adt_t key);
size_t MultiTree_FindSequenceIterFwd (const struct MultiTree *tree, struct data_t *data, union adt_t key, ptr_t *iter);
size_t MultiTree_FindSequenceIterBwd (const struct MultiTree *tree, struct data_t *data, union adt_t key, ptr_t *iter);

//****************************************************************************//
//      Duplicates searching                                                  //
//****************************************************************************//
bool MultiTree_FindDupFwd (struct MultiTree *tree, struct data_t *data);
bool MultiTree_FindDupBwd (struct MultiTree *tree, struct data_t *data);
bool MultiTree_FindDupIterFwd (const struct MultiTree *tree, struct data_t *data, ptr_t *iter) const;
bool MultiTree_FindDupIterBwd (const struct MultiTree *tree, struct data_t *data, ptr_t *iter) const;

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
bool MultiTree_FindDiffFwd (struct MultiTree *tree, struct data_t *data, const struct MultiTree *source, size_t count);
bool MultiTree_FindDiffBwd (struct MultiTree *tree, struct data_t *data, const struct MultiTree *source, size_t count);
bool MultiTree_FindDiffIterFwd (const struct MultiTree *tree, struct data_t *data, const struct MultiTree *source, size_t count, ptr_t *titer, ptr_t siter);
bool MultiTree_FindDiffIterBwd (const struct MultiTree *tree, struct data_t *data, const struct MultiTree *source, size_t count, ptr_t *titer, ptr_t siter);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t MultiTree_CountKey (const struct MultiTree *tree, union adt_t key);
size_t MultiTree_CountKeys (const struct MultiTree *tree, const union adt_t keys[], size_t size);

//****************************************************************************//
//      Unique values                                                         //
//****************************************************************************//
size_t MultiTree_Unique (struct MultiTree *tree, const struct MultiTree *source);

//****************************************************************************//
//      Comparison of multi trees                                             //
//****************************************************************************//
sint64_t MultiTree_Compare (const struct MultiTree *tree, const struct MultiTree *source);

//****************************************************************************//
//      Check for duplicate values                                            //
//****************************************************************************//
bool MultiTree_CheckDup (const struct MultiTree *tree);

//****************************************************************************//
//      Check for equality                                                    //
//****************************************************************************//
bool MultiTree_IsEqual (const struct MultiTree *tree, const struct MultiTree *source);

//****************************************************************************//
//      Tree properties                                                       //
//****************************************************************************//
KeyCmp MultiTree_CompareFunction (const struct MultiTree *tree);
size_t MultiTree_Capacity (const struct MultiTree *tree);
size_t MultiTree_Size (const struct MultiTree *tree);
size_t MultiTree_Height (const struct MultiTree *tree);
bool MultiTree_IsEmpty (const struct MultiTree *tree);
bool MultiTree_IsInit (const struct MultiTree *tree);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
