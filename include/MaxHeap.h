/*                                                                     MaxHeap.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                          BINARY MAX HEAP DATA TYPE                           #
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
//      Max heap class                                                        //
//****************************************************************************//
class MaxHeap
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
MaxHeap (size_t capacity, KeyCmp kfunc, HeapIndex ifunc, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
MaxHeap (const MaxHeap &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~MaxHeap (void);

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
size_t Merge (MaxHeap *source);

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
struct MaxHeap
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
void MaxHeap_InitMaxHeap (struct MaxHeap *heap, size_t capacity, KeyCmp kfunc, HeapIndex ifunc, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy heap structure                                                   //
//****************************************************************************//
void MaxHeap_CopyMaxHeap (struct MaxHeap *heap, const struct MaxHeap *source);

//****************************************************************************//
//      Free heap structure                                                   //
//****************************************************************************//
void MaxHeap_FreeMaxHeap (struct MaxHeap *heap);

//****************************************************************************//
//      Access predicates                                                     //
//****************************************************************************//

// Lock operations
bool MaxHeap_LockReadings (struct MaxHeap *heap, bool wait);
bool MaxHeap_LockWritings (struct MaxHeap *heap, bool wait);

// Release operations
void MaxHeap_AllowReadings (struct MaxHeap *heap);
void MaxHeap_AllowWritings (struct MaxHeap *heap);

//****************************************************************************//
//      Addition of element                                                   //
//****************************************************************************//
bool MaxHeap_Push (struct MaxHeap *heap, const struct pair_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool MaxHeap_Pop (struct MaxHeap *heap);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool MaxHeap_Extract (struct MaxHeap *heap, size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool MaxHeap_Set (struct MaxHeap *heap, const struct pair_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool MaxHeap_Get (const struct MaxHeap *heap, struct pair_t *data, size_t pos);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//
size_t MaxHeap_FindKey (const struct MaxHeap *heap, struct pair_t *data, union adt_t key, size_t pos, size_t count);
size_t MaxHeap_FindKeys (const struct MaxHeap *heap, struct pair_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t MaxHeap_CountKey (const struct MaxHeap *heap, union adt_t key, size_t pos, size_t count);
size_t MaxHeap_CountKeys (const struct MaxHeap *heap, const union adt_t keys[], size_t size, size_t pos, size_t count);

//****************************************************************************//
//      Merging of heaps                                                      //
//****************************************************************************//
size_t MaxHeap_Merge (struct MaxHeap *heap, struct MaxHeap *source);

//****************************************************************************//
//      Heap properties                                                       //
//****************************************************************************//
KeyCmp MaxHeap_CompareFunction (const struct MaxHeap *heap);
HeapIndex MaxHeap_IndexFunction (const struct MaxHeap *heap);
CopyFunc MaxHeap_CopyFunction (const struct MaxHeap *heap);
DelFunc MaxHeap_DeleteFunction (const struct MaxHeap *heap);
void* MaxHeap_UserData (const struct MaxHeap *heap);
size_t MaxHeap_Capacity (const struct MaxHeap *heap);
size_t MaxHeap_Size (const struct MaxHeap *heap);
bool MaxHeap_IsEmpty (const struct MaxHeap *heap);
bool MaxHeap_IsInit (const struct MaxHeap *heap);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
