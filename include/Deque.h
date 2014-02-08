/*                                                                       Deque.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                         DOUBLE-ENDED QUEUE DATA TYPE                         #
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
//      Deque class                                                           //
//****************************************************************************//
class Deque
{
private:
	void	*array;		// Pointer to array which holds deque data
	size_t	capacity;	// Capacity of the deque (auto extended if required)
	size_t	size;		// Current deque size
	size_t	head;		// Index of deque head
	size_t	tail;		// Index of deque tail

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
Deque (size_t capacity);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
Deque (const Deque &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~Deque (void);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//
size_t CopyHead (const Deque *source, size_t pos, size_t count);
size_t CopyTail (const Deque *source, size_t pos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t MoveHead (Deque *source, size_t pos, size_t count);
size_t MoveTail (Deque *source, size_t pos, size_t count);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool InsertIntoHead (const data_t *data);
bool InsertIntoTail (const data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool RemoveFromHead (data_t *data);
bool RemoveFromTail (data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool SetHead (const data_t *data, size_t pos);
bool SetTail (const data_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool GetHead (data_t *data, size_t pos) const;
bool GetTail (data_t *data, size_t pos) const;

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool ReplaceHead (data_t *odata, const data_t *ndata, size_t pos);
bool ReplaceTail (data_t *odata, const data_t *ndata, size_t pos);

//****************************************************************************//
//      Changing elements order                                               //
//****************************************************************************//
size_t ReverseHead (size_t pos, size_t count);
size_t ReverseTail (size_t pos, size_t count);
bool SwapHead (size_t pos);
bool SwapTail (size_t pos);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
size_t MinHead (data_t *data, size_t pos, size_t count, KeyCmp func) const;
size_t MinTail (data_t *data, size_t pos, size_t count, KeyCmp func) const;

// Maximum value
size_t MaxHead (data_t *data, size_t pos, size_t count, KeyCmp func) const;
size_t MaxTail (data_t *data, size_t pos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Search algorithms                                                     //
//****************************************************************************//

//============================================================================//
//      Key searching                                                         //
//============================================================================//

// Single key searching
size_t FindKeyHead (data_t *data, adt_t key, size_t pos, size_t count, KeyCmp func) const;
size_t FindKeyTail (data_t *data, adt_t key, size_t pos, size_t count, KeyCmp func) const;

// Keys set searching
size_t FindKeysHead (data_t *data, const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;
size_t FindKeysTail (data_t *data, const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;

//============================================================================//
//      Searching for differences                                             //
//============================================================================//
size_t FindDiffHead (data_t *data, const Deque *source, size_t pos, size_t count, KeyCmp func) const;
size_t FindDiffTail (data_t *data, const Deque *source, size_t pos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t CountKeyHead (adt_t key, size_t pos, size_t count, KeyCmp func) const;
size_t CountKeyTail (adt_t key, size_t pos, size_t count, KeyCmp func) const;

// Keys set counting
size_t CountKeysHead (const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;
size_t CountKeysTail (const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Comparison of deques                                                  //
//****************************************************************************//
sint64_t Compare (const Deque *source, KeyCmp func) const;

//****************************************************************************//
//      Check for equality                                                    //
//****************************************************************************//
bool IsEqual (const Deque *source, KeyCmp func) const;

//****************************************************************************//
//      Deque properties                                                      //
//****************************************************************************//
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
//****************************************************************************//
//      Deque structure                                                       //
//****************************************************************************//
struct Deque
{
	void	*array;		// Pointer to array which holds deque data
	size_t	capacity;	// Capacity of the deque (auto extended if required)
	size_t	size;		// Current deque size
	size_t	head;		// Index of deque head
	size_t	tail;		// Index of deque tail
};

//****************************************************************************//
//      Init deque structure                                                  //
//****************************************************************************//
void Deque_InitDeque (struct Deque *deque, size_t capacity);

//****************************************************************************//
//      Copy deque structure                                                  //
//****************************************************************************//
void Deque_CopyDeque (struct Deque *deque, const struct Deque *source);

//****************************************************************************//
//      Free deque structure                                                  //
//****************************************************************************//
void Deque_FreeDeque (struct Deque *deque);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//
size_t Deque_CopyHead (struct Deque *deque, const struct Deque *source, size_t pos, size_t count);
size_t Deque_CopyTail (struct Deque *deque, const struct Deque *source, size_t pos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t Deque_MoveHead (struct Deque *deque, struct Deque *source, size_t pos, size_t count);
size_t Deque_MoveTail (struct Deque *deque, struct Deque *source, size_t pos, size_t count);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Deque_InsertIntoHead (struct Deque *deque, const struct data_t *data);
bool Deque_InsertIntoTail (struct Deque *deque, const struct data_t *data);

//****************************************************************************//
//      Removing of element                                                   //
//****************************************************************************//
bool Deque_RemoveFromHead (struct Deque *deque, struct data_t *data);
bool Deque_RemoveFromTail (struct Deque *deque, struct data_t *data);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool Deque_SetHead (struct Deque *deque, const struct data_t *data, size_t pos);
bool Deque_SetTail (struct Deque *deque, const struct data_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool Deque_GetHead (const struct Deque *deque, struct data_t *data, size_t pos);
bool Deque_GetTail (const struct Deque *deque, struct data_t *data, size_t pos);

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool Deque_ReplaceHead (struct Deque *deque, struct data_t *odata, const struct data_t *ndata, size_t pos);
bool Deque_ReplaceTail (struct Deque *deque, struct data_t *odata, const struct data_t *ndata, size_t pos);

//****************************************************************************//
//      Changing elements order                                               //
//****************************************************************************//
size_t Deque_ReverseHead (struct Deque *deque, size_t pos, size_t count);
size_t Deque_ReverseTail (struct Deque *deque, size_t pos, size_t count);
bool Deque_SwapHead (struct Deque *deque, size_t pos);
bool Deque_SwapTail (struct Deque *deque, size_t pos);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
size_t Deque_MinHead (const struct Deque *deque, struct data_t *data, size_t pos, size_t count, KeyCmp func);
size_t Deque_MinTail (const struct Deque *deque, struct data_t *data, size_t pos, size_t count, KeyCmp func);

// Maximum value
size_t Deque_MaxHead (const struct Deque *deque, struct data_t *data, size_t pos, size_t count, KeyCmp func);
size_t Deque_MaxTail (const struct Deque *deque, struct data_t *data, size_t pos, size_t count, KeyCmp func);

//****************************************************************************//
//      Search algorithms                                                     //
//****************************************************************************//

//============================================================================//
//      Key searching                                                         //
//============================================================================//

// Single key searching
size_t Deque_FindKeyHead (const struct Deque *deque, struct data_t *data, union adt_t key, size_t pos, size_t count, KeyCmp func);
size_t Deque_FindKeyTail (const struct Deque *deque, struct data_t *data, union adt_t key, size_t pos, size_t count, KeyCmp func);

// Keys set searching
size_t Deque_FindKeysHead (const struct Deque *deque, struct data_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);
size_t Deque_FindKeysTail (const struct Deque *deque, struct data_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);

//============================================================================//
//      Searching for differences                                             //
//============================================================================//
size_t Deque_FindDiffHead (const struct Deque *deque, struct data_t *data, const struct Deque *source, size_t pos, size_t count, KeyCmp func);
size_t Deque_FindDiffTail (const struct Deque *deque, struct data_t *data, const struct Deque *source, size_t pos, size_t count, KeyCmp func);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t Deque_CountKeyHead (const struct Deque *deque, union adt_t key, size_t pos, size_t count, KeyCmp func);
size_t Deque_CountKeyTail (const struct Deque *deque, union adt_t key, size_t pos, size_t count, KeyCmp func);

// Keys set counting
size_t Deque_CountKeysHead (const struct Deque *deque, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);
size_t Deque_CountKeysTail (const struct Deque *deque, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);

//****************************************************************************//
//      Comparison of deques                                                  //
//****************************************************************************//
sint64_t Deque_Compare (const struct Deque *deque, const struct Deque *source, KeyCmp func);

//****************************************************************************//
//      Check for equality                                                    //
//****************************************************************************//
bool Deque_IsEqual (const struct Deque *deque, const struct Deque *source, KeyCmp func);

//****************************************************************************//
//      Deque properties                                                      //
//****************************************************************************//
size_t Deque_Capacity (const struct Deque *deque);
size_t Deque_Size (const struct Deque *deque);
bool Deque_IsEmpty (const struct Deque *deque);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
