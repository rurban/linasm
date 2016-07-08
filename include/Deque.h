/*                                                                       Deque.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                         DOUBLE-ENDED QUEUE DATA TYPE                         #
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
//      Deque class                                                           //
//****************************************************************************//
class Deque
{
private:
	void		*array;		// Pointer to array which holds deque data
	size_t		capacity;	// Capacity of the deque (auto extended if required)
	size_t		size;		// Current deque size
	size_t		head;		// Index of deque head
	size_t		tail;		// Index of deque tail
	size_t		futex;		// Container's futex
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
Deque (size_t capacity, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
Deque (const Deque &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~Deque (void);

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
size_t CopyHead (size_t tpos, const Deque *source, size_t spos, size_t count);
size_t CopyTail (size_t tpos, const Deque *source, size_t spos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t MoveHead (size_t tpos, Deque *source, size_t spos, size_t count);
size_t MoveTail (size_t tpos, Deque *source, size_t spos, size_t count);

//****************************************************************************//
//      Addition of element                                                   //
//****************************************************************************//
bool PushHead (const pair_t *data);
bool PushTail (const pair_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool PopHead (void);
bool PopTail (void);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool InsertHead (const pair_t *data, size_t pos);
bool InsertTail (const pair_t *data, size_t pos);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool ExtractHead (size_t pos);
bool ExtractTail (size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool SetHead (const pair_t *data, size_t pos);
bool SetTail (const pair_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool GetHead (pair_t *data, size_t pos) const;
bool GetTail (pair_t *data, size_t pos) const;

//****************************************************************************//
//      Changing elements order                                               //
//****************************************************************************//

// Reversing elements order
size_t ReverseHead (size_t pos, size_t count);
size_t ReverseTail (size_t pos, size_t count);

// Swapping elements
bool SwapHead (size_t pos1, size_t pos2);
bool SwapTail (size_t pos1, size_t pos2);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
size_t MinHead (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;
size_t MinTail (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;

// Maximum value
size_t MaxHead (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;
size_t MaxTail (pair_t *data, size_t pos, size_t count, KeyCmp kfunc) const;

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
size_t FindKeyHead (pair_t *data, adt_t key, size_t pos, size_t count, KeyCmp kfunc) const;
size_t FindKeyTail (pair_t *data, adt_t key, size_t pos, size_t count, KeyCmp kfunc) const;

// Keys set searching
size_t FindKeysHead (pair_t *data, const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc) const;
size_t FindKeysTail (pair_t *data, const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc) const;

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
size_t FindDiffHead (pair_t *data, size_t tpos, const Deque *source, size_t spos, size_t count, KeyCmp kfunc) const;
size_t FindDiffTail (pair_t *data, size_t tpos, const Deque *source, size_t spos, size_t count, KeyCmp kfunc) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t CountKeyHead (adt_t key, size_t pos, size_t count, KeyCmp kfunc) const;
size_t CountKeyTail (adt_t key, size_t pos, size_t count, KeyCmp kfunc) const;

// Keys set counting
size_t CountKeysHead (const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc) const;
size_t CountKeysTail (const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc) const;

//****************************************************************************//
//      Comparison of deques                                                  //
//****************************************************************************//
sint64_t Compare (const Deque *source, KeyCmp kfunc) const;

//****************************************************************************//
//      Check for equality                                                    //
//****************************************************************************//
bool IsEqual (const Deque *source, KeyCmp kfunc) const;

//****************************************************************************//
//      Deque properties                                                      //
//****************************************************************************//
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
//      Deque structure                                                       //
//****************************************************************************//
struct Deque
{
	void		*array;		// Pointer to array which holds deque data
	size_t		capacity;	// Capacity of the deque (auto extended if required)
	size_t		size;		// Current deque size
	size_t		head;		// Index of deque head
	size_t		tail;		// Index of deque tail
	size_t		futex;		// Container's futex
	CopyFunc	cfunc;		// Copy function for element fields: key and data
	DelFunc		dfunc;		// Delete function to call for removing elements
	void		*ptr;		// Pointer to user's data
};

//****************************************************************************//
//      Init deque structure                                                  //
//****************************************************************************//
void Deque_InitDeque (struct Deque *deque, size_t capacity, CopyFunc cfunc, DelFunc dfunc, void *ptr);

//****************************************************************************//
//      Copy deque structure                                                  //
//****************************************************************************//
void Deque_CopyDeque (struct Deque *deque, const struct Deque *source);

//****************************************************************************//
//      Free deque structure                                                  //
//****************************************************************************//
void Deque_FreeDeque (struct Deque *deque);

//****************************************************************************//
//      Access predicates                                                     //
//****************************************************************************//

// Lock operations
bool Deque_LockReadings (struct Deque *deque, bool wait);
bool Deque_LockWritings (struct Deque *deque, bool wait);

// Release operations
void Deque_AllowReadings (struct Deque *deque);
void Deque_AllowWritings (struct Deque *deque);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//
size_t Deque_CopyHead (struct Deque *deque, size_t tpos, const struct Deque *source, size_t spos, size_t count);
size_t Deque_CopyTail (struct Deque *deque, size_t tpos, const struct Deque *source, size_t spos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t Deque_MoveHead (struct Deque *deque, size_t tpos, struct Deque *source, size_t spos, size_t count);
size_t Deque_MoveTail (struct Deque *deque, size_t tpos, struct Deque *source, size_t spos, size_t count);

//****************************************************************************//
//      Addition of element                                                   //
//****************************************************************************//
bool Deque_PushHead (struct Deque *deque, const struct pair_t *data);
bool Deque_PushTail (struct Deque *deque, const struct pair_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool Deque_PopHead (struct Deque *deque);
bool Deque_PopTail (struct Deque *deque);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Deque_InsertHead (struct Deque *deque, const struct pair_t *data, size_t pos);
bool Deque_InsertTail (struct Deque *deque, const struct pair_t *data, size_t pos);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool Deque_ExtractHead (struct Deque *deque, size_t pos);
bool Deque_ExtractTail (struct Deque *deque, size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool Deque_SetHead (struct Deque *deque, const struct pair_t *data, size_t pos);
bool Deque_SetTail (struct Deque *deque, const struct pair_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool Deque_GetHead (const struct Deque *deque, struct pair_t *data, size_t pos);
bool Deque_GetTail (const struct Deque *deque, struct pair_t *data, size_t pos);

//****************************************************************************//
//      Changing elements order                                               //
//****************************************************************************//

// Reversing elements order
size_t Deque_ReverseHead (struct Deque *deque, size_t pos, size_t count);
size_t Deque_ReverseTail (struct Deque *deque, size_t pos, size_t count);

// Swapping elements
bool Deque_SwapHead (struct Deque *deque, size_t pos1, size_t pos2);
bool Deque_SwapTail (struct Deque *deque, size_t pos1, size_t pos2);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
size_t Deque_MinHead (const struct Deque *deque, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);
size_t Deque_MinTail (const struct Deque *deque, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);

// Maximum value
size_t Deque_MaxHead (const struct Deque *deque, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);
size_t Deque_MaxTail (const struct Deque *deque, struct pair_t *data, size_t pos, size_t count, KeyCmp kfunc);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
size_t Deque_FindKeyHead (const struct Deque *deque, struct pair_t *data, union adt_t key, size_t pos, size_t count, KeyCmp kfunc);
size_t Deque_FindKeyTail (const struct Deque *deque, struct pair_t *data, union adt_t key, size_t pos, size_t count, KeyCmp kfunc);

// Keys set searching
size_t Deque_FindKeysHead (const struct Deque *deque, struct pair_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc);
size_t Deque_FindKeysTail (const struct Deque *deque, struct pair_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc);

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
size_t Deque_FindDiffHead (const struct Deque *deque, struct pair_t *data, size_t tpos, const struct Deque *source, size_t spos, size_t count, KeyCmp kfunc);
size_t Deque_FindDiffTail (const struct Deque *deque, struct pair_t *data, size_t tpos, const struct Deque *source, size_t spos, size_t count, KeyCmp kfunc);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t Deque_CountKeyHead (const struct Deque *deque, union adt_t key, size_t pos, size_t count, KeyCmp kfunc);
size_t Deque_CountKeyTail (const struct Deque *deque, union adt_t key, size_t pos, size_t count, KeyCmp kfunc);

// Keys set counting
size_t Deque_CountKeysHead (const struct Deque *deque, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc);
size_t Deque_CountKeysTail (const struct Deque *deque, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp kfunc);

//****************************************************************************//
//      Comparison of deques                                                  //
//****************************************************************************//
sint64_t Deque_Compare (const struct Deque *deque, const struct Deque *source, KeyCmp kfunc);

//****************************************************************************//
//      Check for equality                                                    //
//****************************************************************************//
bool Deque_IsEqual (const struct Deque *deque, const struct Deque *source, KeyCmp kfunc);

//****************************************************************************//
//      Deque properties                                                      //
//****************************************************************************//
CopyFunc Deque_CopyFunction (const struct Deque *deque);
DelFunc Deque_DeleteFunction (const struct Deque *deque);
void* Deque_UserData (const struct Deque *deque);
size_t Deque_Capacity (const struct Deque *deque);
size_t Deque_Size (const struct Deque *deque);
bool Deque_IsEmpty (const struct Deque *deque);
bool Deque_IsInit (const struct Deque *deque);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
