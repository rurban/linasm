/*                                                                     MaxHeap.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                          BINARY MAX HEAP DATA TYPE                           #
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
//      Max heap class                                                        //
//****************************************************************************//
class MaxHeap
{
private:
	void	*array;		// Pointer to array which holds heap data
	size_t	capacity;	// Capacity of the heap (auto extended if required)
	size_t	size;		// Current heap size
	KeyCmp	func;		// Key ordering function

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
MaxHeap (size_t capacity, KeyCmp func);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
MaxHeap (const MaxHeap &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~MaxHeap (void);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Push (const data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool Pop (data_t *data);

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
size_t Merge (const MaxHeap *source);

//****************************************************************************//
//      Heap properties                                                       //
//****************************************************************************//
KeyCmp CompareFunction (void) const;
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
struct MaxHeap
{
	void	*array;		// Pointer to array which holds heap data
	size_t	capacity;	// Capacity of the heap (auto extended if required)
	size_t	size;		// Current heap size
	KeyCmp	func;		// Key ordering function
};

//****************************************************************************//
//      Init heap structure                                                   //
//****************************************************************************//
void MaxHeap_InitMaxHeap (struct MaxHeap *heap, size_t capacity, KeyCmp func);

//****************************************************************************//
//      Copy heap structure                                                   //
//****************************************************************************//
void MaxHeap_CopyMaxHeap (struct MaxHeap *heap, const struct MaxHeap *source);

//****************************************************************************//
//      Free heap structure                                                   //
//****************************************************************************//
void MaxHeap_FreeMaxHeap (struct MaxHeap *heap);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool MaxHeap_Push (struct MaxHeap *heap, const struct data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool MaxHeap_Pop (struct MaxHeap *heap, struct data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool MaxHeap_Set (struct MaxHeap *heap, const struct data_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool MaxHeap_Get (const struct MaxHeap *heap, struct data_t *data, size_t pos);

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool MaxHeap_Replace (struct MaxHeap *heap, struct data_t *odata, const struct data_t *ndata, size_t pos);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//
size_t MaxHeap_FindKey (const struct MaxHeap *heap, struct data_t *data, union adt_t key, size_t pos, size_t count);
size_t MaxHeap_FindKeys (const struct MaxHeap *heap, struct data_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t MaxHeap_CountKey (const struct MaxHeap *heap, union adt_t key, size_t pos, size_t count);
size_t MaxHeap_CountKeys (const struct MaxHeap *heap, const union adt_t keys[], size_t size, size_t pos, size_t count);

//****************************************************************************//
//      Merging of heaps                                                      //
//****************************************************************************//
size_t MaxHeap_Merge (struct MaxHeap *heap, const struct MaxHeap *source);

//****************************************************************************//
//      Heap properties                                                       //
//****************************************************************************//
KeyCmp MaxHeap_CompareFunction (const struct MaxHeap *heap);
size_t MaxHeap_Capacity (const struct MaxHeap *heap);
size_t MaxHeap_Size (const struct MaxHeap *heap);
bool MaxHeap_IsEmpty (const struct MaxHeap *heap);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
