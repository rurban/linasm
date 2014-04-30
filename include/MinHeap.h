/*                                                                     MinHeap.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                          BINARY MIN HEAP DATA TYPE                           #
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
//      Min heap class                                                        //
//****************************************************************************//
class MinHeap
{
private:
	void		*array;		// Pointer to array which holds heap data
	size_t		capacity;	// Capacity of the heap (auto extended if required)
	size_t		size;		// Current heap size
	KeyCmp		kfunc;		// Key compare function
	HeapIndex	ifunc;		// Heap index call back function

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
MinHeap (size_t capacity, KeyCmp kfunc, HeapIndex ifunc);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
MinHeap (const MinHeap &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~MinHeap (void);

//****************************************************************************//
//      Addition of element                                                   //
//****************************************************************************//
bool Push (const data_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool Pop (data_t *data);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool Extract (data_t *data, size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool Set (const data_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool Get (data_t *data, size_t pos) const;

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool Replace (data_t *odata, const data_t *ndata, size_t pos);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//
size_t FindKey (data_t *data, adt_t key, size_t pos, size_t count) const;
size_t FindKeys (data_t *data, const adt_t keys[], size_t size, size_t pos, size_t count) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t CountKey (adt_t key, size_t pos, size_t count) const;
size_t CountKeys (const adt_t keys[], size_t size, size_t pos, size_t count) const;

//****************************************************************************//
//      Merging of heaps                                                      //
//****************************************************************************//
size_t Merge (const MinHeap *source);

//****************************************************************************//
//      Heap properties                                                       //
//****************************************************************************//
KeyCmp CompareFunction (void) const;
HeapIndex IndexFunction (void) const;
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
	KeyCmp		kfunc;		// Key compare function
	HeapIndex	ifunc;		// Heap index call back function
};

//****************************************************************************//
//      Init heap structure                                                   //
//****************************************************************************//
void MinHeap_InitMaxHeap (struct MaxHeap *heap, size_t capacity, KeyCmp kfunc, HeapIndex ifunc);

//****************************************************************************//
//      Copy heap structure                                                   //
//****************************************************************************//
void MinHeap_CopyMinHeap (struct MinHeap *heap, const struct MinHeap *source);

//****************************************************************************//
//      Free heap structure                                                   //
//****************************************************************************//
void MinHeap_FreeMinHeap (struct MinHeap *heap);

//****************************************************************************//
//      Addition of element                                                   //
//****************************************************************************//
bool MinHeap_Push (struct MinHeap *heap, const struct data_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool MinHeap_Pop (struct MinHeap *heap, struct data_t *data);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool MinHeap_Extract (struct MinHeap *heap, struct data_t *data, size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool MinHeap_Set (struct MinHeap *heap, const struct data_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool MinHeap_Get (const struct MinHeap *heap, struct data_t *data, size_t pos);

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool MinHeap_Replace (struct MinHeap *heap, struct data_t *odata, const struct data_t *ndata, size_t pos);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//
size_t MinHeap_FindKey (const struct MinHeap *heap, struct data_t *data, union adt_t key, size_t pos, size_t count);
size_t MinHeap_FindKeys (const struct MinHeap *heap, struct data_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t MinHeap_CountKey (const struct MinHeap *heap, union adt_t key, size_t pos, size_t count);
size_t MinHeap_CountKeys (const struct MinHeap *heap, const union adt_t keys[], size_t size, size_t pos, size_t count);

//****************************************************************************//
//      Merging of heaps                                                      //
//****************************************************************************//
size_t MinHeap_Merge (struct MinHeap *heap, const struct MinHeap *source);

//****************************************************************************//
//      Heap properties                                                       //
//****************************************************************************//
KeyCmp MinHeap_CompareFunction (const struct MinHeap *heap);
HeapIndex MinHeap_IndexFunction (const struct MinHeap *heap);
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
