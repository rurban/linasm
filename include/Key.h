/*                                                                         Key.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                    KEY STRUCTURE FOR ABSTRACT DATA TYPES                     #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

//****************************************************************************//
//      Abstact data type union                                               //
//****************************************************************************//
union adt_t
{
	// Unsigned integer types
	uint8_t		uint8;
	uint16_t	uint16;
	uint32_t	uint32;
	uint64_t	uint64;

	// Signed integer types
	sint8_t		sint8;
	sint16_t	sint16;
	sint32_t	sint32;
	sint64_t	sint64;

	// Floating-point types
	flt32_t		flt32;
	flt64_t		flt64;

	// Other types
	size_t		size;
	time_t		time;

	// Pointer type
	void		*ptr;
};

//****************************************************************************//
//      Pair structure                                                        //
//****************************************************************************//
struct pair_t
{
	union adt_t	key;	// Key field
	union adt_t	data;	// Data field
};

//****************************************************************************//
//      Pair copy function prototype                                          //
//****************************************************************************//
typedef	bool (*CopyFunc) (struct pair_t *target, const struct pair_t *source, void *ptr);

//****************************************************************************//
//      Pair delete function prototype                                        //
//****************************************************************************//
typedef	void (*DelFunc) (struct pair_t *data, void *ptr);

//****************************************************************************//
//      Heap index call back function prototype                               //
//****************************************************************************//
typedef	void (*HeapIndex) (const struct pair_t *data, size_t index);

//****************************************************************************//
//      Hash function prototype                                               //
//****************************************************************************//
typedef	size_t (*HashFunc) (union adt_t key);

//****************************************************************************//
//      Key compare function prototype                                        //
//****************************************************************************//
typedef sint64_t (*KeyCmp) (union adt_t key1, union adt_t key2);

//****************************************************************************//
//      Pair compare function prototype                                       //
//****************************************************************************//
typedef sint64_t (*PairCmp) (struct pair_t pair1, struct pair_t pair2);

//****************************************************************************//
//      Key compare functions                                                 //
//****************************************************************************//

// Unsigned integer keys
sint64_t CmpUint8 (union adt_t key1, union adt_t key2);
sint64_t CmpUint16 (union adt_t key1, union adt_t key2);
sint64_t CmpUint32 (union adt_t key1, union adt_t key2);
sint64_t CmpUint64 (union adt_t key1, union adt_t key2);

// Signed integer keys
sint64_t CmpSint8 (union adt_t key1, union adt_t key2);
sint64_t CmpSint16 (union adt_t key1, union adt_t key2);
sint64_t CmpSint32 (union adt_t key1, union adt_t key2);
sint64_t CmpSint64 (union adt_t key1, union adt_t key2);

// Floating-point keys
sint64_t CmpFlt32 (union adt_t key1, union adt_t key2);
sint64_t CmpFlt64 (union adt_t key1, union adt_t key2);

// Other keys
sint64_t CmpSize (union adt_t key1, union adt_t key2);
sint64_t CmpTime (union adt_t key1, union adt_t key2);

//****************************************************************************//
//      Pair array sort functions                                             //
//****************************************************************************//

// Key sorting functions
void KeySortAsc (struct pair_t array[], size_t size, KeyCmp func);
void KeySortDsc (struct pair_t array[], size_t size, KeyCmp func);

// Pair sorting functions
void PairSortAsc (struct pair_t array[], size_t size, PairCmp func);
void PairSortDsc (struct pair_t array[], size_t size, PairCmp func);

//****************************************************************************//
//      Pair array unique functions                                           //
//****************************************************************************//

// Unique keys
size_t UniqueKeys (struct pair_t array[], size_t size, KeyCmp func);

// Unique pairs
size_t UniquePairs (struct pair_t array[], size_t size, PairCmp func);

//****************************************************************************//
//      Special sort functions                                                //
//****************************************************************************//

//============================================================================//
//      Ascending sort order                                                  //
//============================================================================//

// Unsigned integer keys
void KeySortAscUint8 (struct pair_t array[], size_t size);
void KeySortAscUint16 (struct pair_t array[], size_t size);
void KeySortAscUint32 (struct pair_t array[], size_t size);
void KeySortAscUint64 (struct pair_t array[], size_t size);

// Signed integer keys
void KeySortAscSint8 (struct pair_t array[], size_t size);
void KeySortAscSint16 (struct pair_t array[], size_t size);
void KeySortAscSint32 (struct pair_t array[], size_t size);
void KeySortAscSint64 (struct pair_t array[], size_t size);

// Floating-point keys
void KeySortAscFlt32 (struct pair_t array[], size_t size);
void KeySortAscFlt64 (struct pair_t array[], size_t size);

// Other keys
void KeySortAscSize (struct pair_t array[], size_t size);
void KeySortAscTime (struct pair_t array[], size_t size);

//============================================================================//
//      Descending sort order                                                 //
//============================================================================//

// Unsigned integer keys
void KeySortDscUint8 (struct pair_t array[], size_t size);
void KeySortDscUint16 (struct pair_t array[], size_t size);
void KeySortDscUint32 (struct pair_t array[], size_t size);
void KeySortDscUint64 (struct pair_t array[], size_t size);

// Signed integer keys
void KeySortDscSint8 (struct pair_t array[], size_t size);
void KeySortDscSint16 (struct pair_t array[], size_t size);
void KeySortDscSint32 (struct pair_t array[], size_t size);
void KeySortDscSint64 (struct pair_t array[], size_t size);

// Floating-point keys
void KeySortDscFlt32 (struct pair_t array[], size_t size);
void KeySortDscFlt64 (struct pair_t array[], size_t size);

// Other keys
void KeySortDscSize (struct pair_t array[], size_t size);
void KeySortDscTime (struct pair_t array[], size_t size);

//****************************************************************************//
//      Special unique functions                                              //
//****************************************************************************//

// Unsigned integer keys
size_t UniqueKeysUint8 (struct pair_t array[], size_t size);
size_t UniqueKeysUint16 (struct pair_t array[], size_t size);
size_t UniqueKeysUint32 (struct pair_t array[], size_t size);
size_t UniqueKeysUint64 (struct pair_t array[], size_t size);

// Signed integer keys
size_t UniqueKeysSint8 (struct pair_t array[], size_t size);
size_t UniqueKeysSint16 (struct pair_t array[], size_t size);
size_t UniqueKeysSint32 (struct pair_t array[], size_t size);
size_t UniqueKeysSint64 (struct pair_t array[], size_t size);

// Floating-point keys
size_t UniqueKeysFlt32 (struct pair_t array[], size_t size);
size_t UniqueKeysFlt64 (struct pair_t array[], size_t size);

// Other keys
size_t UniqueKeysSize (struct pair_t array[], size_t size);
size_t UniqueKeysTime (struct pair_t array[], size_t size);

/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
