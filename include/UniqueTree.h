/*                                                                  UniqueTree.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                         UNIQUE KEYS B-TREE DATA TYPE                         #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2013, Jack Black #
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
	void	*array;		// Pointer to array which holds b-tree nodes
	size_t	capacity;	// Capacity of the b-tree (auto extended if required)
	size_t	size;		// Current b-tree size
	size_t	height;		// Current b-tree height
	size_t	pool;		// Index of fisrt free node in the pool
	size_t	fwd;		// Current position of forward iterator
	size_t	bwd;		// Current position of backward iterator
	size_t	root;		// Index of b-tree root node
	KeyCmp	func;		// Key ordering function

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
UniqueTree (size_t capacity, KeyCmp func);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
UniqueTree (const UniqueTree &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~UniqueTree (void);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//
size_t CopyFwd (const UniqueTree *source, size_t pos, size_t count);
size_t CopyBwd (const UniqueTree *source, size_t pos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t MoveFwd (UniqueTree *source, size_t pos, size_t count);
size_t MoveBwd (UniqueTree *source, size_t pos, size_t count);

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

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//

// By element index
bool ReplaceIndex (data_t *odata, const data_t *ndata, size_t index);

// Using iterators
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
//      Swapping iterators                                                    //
//****************************************************************************//
void SwapFwdBwd (void);

//****************************************************************************//
//      Search algorithms                                                     //
//****************************************************************************//

//============================================================================//
//      Key searching                                                         //
//============================================================================//

// Searching for equal key
bool FindKeyEqualFwd (data_t *data, adt_t key);
bool FindKeyEqualBwd (data_t *data, adt_t key);

// Searching for greater key
bool FindKeyGreatFwd (data_t *data, adt_t key);
bool FindKeyGreatBwd (data_t *data, adt_t key);

// Searching for greater or equal key
bool FindKeyGreatOrEqualFwd (data_t *data, adt_t key);
bool FindKeyGreatOrEqualBwd (data_t *data, adt_t key);

// Searching for less key
bool FindKeyLessFwd (data_t *data, adt_t key);
bool FindKeyLessBwd (data_t *data, adt_t key);

// Searching for less or equal key
bool FindKeyLessOrEqualFwd (data_t *data, adt_t key);
bool FindKeyLessOrEqualBwd (data_t *data, adt_t key);

//============================================================================//
//      Searching for differences                                             //
//============================================================================//
bool FindDiffFwd (data_t *data, const UniqueTree *source, size_t pos, size_t count);
bool FindDiffBwd (data_t *data, const UniqueTree *source, size_t pos, size_t count);

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
size_t Capacity (void) const;
size_t Size (void) const;
size_t Height (void) const;
bool IsEmpty (void) const;
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
	void	*array;		// Pointer to array which holds b-tree nodes
	size_t	capacity;	// Capacity of the b-tree (auto extended if required)
	size_t	size;		// Current b-tree size
	size_t	height;		// Current b-tree height
	size_t	pool;		// Index of fisrt free node in the pool
	size_t	fwd;		// Current position of forward iterator
	size_t	bwd;		// Current position of backward iterator
	size_t	root;		// Index of b-tree root node
	KeyCmp	func;		// Key ordering function
};

//****************************************************************************//
//      Init tree structure                                                   //
//****************************************************************************//
UniqueTree_InitUniqueTree (struct UniqueTree *tree, size_t capacity, KeyCmp func);

//****************************************************************************//
//      Copy tree structure                                                   //
//****************************************************************************//
UniqueTree_CopyUniqueTree (struct UniqueTree *tree, const UniqueTree *source);

//****************************************************************************//
//      Free tree structure                                                   //
//****************************************************************************//
UniqueTree_FreeUniqueTree (struct UniqueTree *tree);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//
size_t UniqueTree_CopyFwd (struct UniqueTree *tree, const struct UniqueTree *source, size_t pos, size_t count);
size_t UniqueTree_CopyBwd (struct UniqueTree *tree, const struct UniqueTree *source, size_t pos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t UniqueTree_MoveFwd (struct UniqueTree *tree, struct UniqueTree *source, size_t pos, size_t count);
size_t UniqueTree_MoveBwd (struct UniqueTree *tree, struct UniqueTree *source, size_t pos, size_t count);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool UniqueTree_Insert (struct UniqueTree *tree, const struct data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//

// By element index
bool UniqueTree_RemoveIndex (struct UniqueTree *tree, struct data_t *data, size_t index);

// Using iterators
bool UniqueTree_RemoveFwd (struct UniqueTree *tree, struct data_t *data);
bool UniqueTree_RemoveBwd (struct UniqueTree *tree, struct data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//

// By element index
bool UniqueTree_SetIndex (struct UniqueTree *tree, const struct data_t *data, size_t index);

// Using iterators
bool UniqueTree_SetFwd (struct UniqueTree *tree, const struct data_t *data);
bool UniqueTree_SetBwd (struct UniqueTree *tree, const struct data_t *data);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//

// By element index
bool UniqueTree_GetIndex (const struct UniqueTree *tree, struct data_t *data, size_t index);

// Using iterators
bool UniqueTree_GetFwd (const struct UniqueTree *tree, struct data_t *data);
bool UniqueTree_GetBwd (const struct UniqueTree *tree, struct data_t *data);

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//

// By element index
bool UniqueTree_ReplaceIndex (struct UniqueTree *tree, struct data_t *odata, const struct data_t *ndata, size_t index);

// Using iterators
bool UniqueTree_ReplaceFwd (struct UniqueTree *tree, struct data_t *odata, const struct data_t *ndata);
bool UniqueTree_ReplaceBwd (struct UniqueTree *tree, struct data_t *odata, const struct data_t *ndata);

//****************************************************************************//
//      Overriding element value                                              //
//****************************************************************************//
bool UniqueTree_Override (struct UniqueTree *tree, struct data_t *odata, const struct data_t *ndata);

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
//      Swapping iterators                                                    //
//****************************************************************************//
void UniqueTree_SwapFwdBwd (struct UniqueTree *tree);

//****************************************************************************//
//      Search algorithms                                                     //
//****************************************************************************//

//============================================================================//
//      Key searching                                                         //
//============================================================================//

// Searching for equal key
bool UniqueTree_FindKeyEqualFwd (struct UniqueTree *tree, struct data_t *data, union adt_t key);
bool UniqueTree_FindKeyEqualBwd (struct UniqueTree *tree, struct data_t *data, union adt_t key);

// Searching for greater key
bool UniqueTree_FindKeyGreatFwd (struct UniqueTree *tree, struct data_t *data, union adt_t key);
bool UniqueTree_FindKeyGreatBwd (struct UniqueTree *tree, struct data_t *data, union adt_t key);

// Searching for greater or equal key
bool UniqueTree_FindKeyGreatOrEqualFwd (struct UniqueTree *tree, struct data_t *data, union adt_t key);
bool UniqueTree_FindKeyGreatOrEqualBwd (struct UniqueTree *tree, struct data_t *data, union adt_t key);

// Searching for less key
bool UniqueTree_FindKeyLessFwd (struct UniqueTree *tree, struct data_t *data, union adt_t key);
bool UniqueTree_FindKeyLessBwd (struct UniqueTree *tree, struct data_t *data, union adt_t key);

// Searching for less or equal key
bool UniqueTree_FindKeyLessOrEqualFwd (struct UniqueTree *tree, struct data_t *data, union adt_t key);
bool UniqueTree_FindKeyLessOrEqualBwd (struct UniqueTree *tree, struct data_t *data, union adt_t key);

//============================================================================//
//      Searching for differences                                             //
//============================================================================//
bool UniqueTree_FindDiffFwd (struct UniqueTree *tree, struct data_t *data, const struct UniqueTree *source, size_t pos, size_t count);
bool UniqueTree_FindDiffBwd (struct UniqueTree *tree, struct data_t *data, const struct UniqueTree *source, size_t pos, size_t count);

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
size_t UniqueTree_Capacity (const struct UniqueTree *tree);
size_t UniqueTree_Size (const struct UniqueTree *tree);
size_t UniqueTree_Height (const struct UniqueTree *tree);
bool UniqueTree_IsEmpty (const struct UniqueTree *tree);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
