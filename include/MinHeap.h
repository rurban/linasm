/*                                                                     MinHeap.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                          BINARY MIN HEAP DATA TYPE                           #
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
//      Min heap class                                                        //
//****************************************************************************//
class MinHeap
{
private:
	void		*array;		// Pointer to array which holds heap data
	size_t		capacity;	// Capacity of the heap (auto extended if required)
	size_t		size;		// Current heap size
	size_t		futex;		// Container's futex
	KeyCmp		kfunc;		// Key compare function
	HeapIndex	ifunc;		// Heap index call back function
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
MinHeap (size_t capacity, KeyCmp kfunc, HeapIndex ifunc, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
MinHeap (const MinHeap &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~MinHeap (void);

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
//      Addition of element                                                   //
//****************************************************************************//
bool Push (const pair_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool Pop (void);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool Extract (size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool Set (const pair_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool Get (pair_t *data, size_t pos) const;

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//
size_t FindKey (pair_t *data, adt_t key, size_t pos, size_t count) const;
size_t FindKeys (pair_t *data, const adt_t keys[], size_t size, size_t pos, size_t count) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t CountKey (adt_t key, size_t pos, size_t count) const;
size_t CountKeys (const adt_t keys[], size_t size, size_t pos, size_t count) const;

//****************************************************************************//
//      Merging of heaps                                                      //
//****************************************************************************//
size_t Merge (MinHeap *source);

//****************************************************************************//
//      Heap properties                                                       //
//****************************************************************************//
KeyCmp CompareFunction (void) const;
HeapIndex IndexFunction (void) const;
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
//      Min heap structure                                                    //
//****************************************************************************//
struct MinHeap
{
	void		*array;		// Pointer to array which holds heap data
	size_t		capacity;	// Capacity of the heap (auto extended if required)
	size_t		size;		// Current heap size
	size_t		futex;		// Container's futex
	KeyCmp		kfunc;		// Key compare function
	HeapIndex	ifunc;		// Heap index call back function
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data
};

//****************************************************************************//
//      Init heap structure                                                   //
//****************************************************************************//
void MinHeap_InitMaxHeap (struct MaxHeap *heap, size_t capacity, KeyCmp kfunc, HeapIndex ifunc, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy heap structure                                                   //
//****************************************************************************//
void MinHeap_CopyMinHeap (struct MinHeap *heap, const struct MinHeap *source);

//****************************************************************************//
//      Free heap structure                                                   //
//****************************************************************************//
void MinHeap_FreeMinHeap (struct MinHeap *heap);

//****************************************************************************//
//      Access predicates                                                     //
//****************************************************************************//

// Lock operations
bool MinHeap_LockReadings (struct MinHeap *heap, bool wait);
bool MinHeap_LockWritings (struct MinHeap *heap, bool wait);

// Release operations
void MinHeap_AllowReadings (struct MinHeap *heap);
void MinHeap_AllowWritings (struct MinHeap *heap);

//****************************************************************************//
//      Addition of element                                                   //
//****************************************************************************//
bool MinHeap_Push (struct MinHeap *heap, const struct pair_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool MinHeap_Pop (struct MinHeap *heap);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool MinHeap_Extract (struct MinHeap *heap, size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool MinHeap_Set (struct MinHeap *heap, const struct pair_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool MinHeap_Get (const struct MinHeap *heap, struct pair_t *data, size_t pos);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//
size_t MinHeap_FindKey (const struct MinHeap *heap, struct pair_t *data, union adt_t key, size_t pos, size_t count);
size_t MinHeap_FindKeys (const struct MinHeap *heap, struct pair_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t MinHeap_CountKey (const struct MinHeap *heap, union adt_t key, size_t pos, size_t count);
size_t MinHeap_CountKeys (const struct MinHeap *heap, const union adt_t keys[], size_t size, size_t pos, size_t count);

//****************************************************************************//
//      Merging of heaps                                                      //
//****************************************************************************//
size_t MinHeap_Merge (struct MinHeap *heap, struct MinHeap *source);

//****************************************************************************//
//      Heap properties                                                       //
//****************************************************************************//
KeyCmp MinHeap_CompareFunction (const struct MinHeap *heap);
HeapIndex MinHeap_IndexFunction (const struct MinHeap *heap);
CopyFunc MinHeap_CopyFunction (const struct MinHeap *heap);
DelFunc MinHeap_DeleteFunction (const struct MinHeap *heap);
void* MinHeap_UserData (const struct MinHeap *heap);
size_t MinHeap_Capacity (const struct MinHeap *heap);
size_t MinHeap_Size (const struct MinHeap *heap);
bool MinHeap_IsEmpty (const struct MinHeap *heap);
bool MinHeap_IsInit (const struct MinHeap *heap);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
