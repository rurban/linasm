/*                                                                       Stack.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                               STACK DATA TYPE                                #
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
//      Stack class                                                           //
//****************************************************************************//
class Stack
{
private:
	void	*array;		// Pointer to array which holds stack data
	size_t	capacity;	// Capacity of the stack (auto extended if required)
	size_t	size;		// Current stack size
	size_t	futex;		// Container's futex

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
Stack (size_t capacity);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
Stack (const Stack &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~Stack (void);

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
size_t Copy (size_t tpos, const Stack *source, size_t spos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t Move (size_t tpos, Stack *source, size_t spos, size_t count);

//****************************************************************************//
//      Addition of element                                                   //
//****************************************************************************//
bool Push (const data_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool Pop (data_t *data);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Insert (const data_t *data, size_t pos);

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
//      Changing elements order                                               //
//****************************************************************************//

// Reversing elements order
size_t Reverse (size_t pos, size_t count);

// Swapping elements
bool Swap (size_t pos1, size_t pos2);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
size_t MinFwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;
size_t MinBwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;

// Maximum value
size_t MaxFwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;
size_t MaxBwd (data_t *data, size_t pos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
size_t FindKeyFwd (data_t *data, adt_t key, size_t pos, size_t count, KeyCmp func) const;
size_t FindKeyBwd (data_t *data, adt_t key, size_t pos, size_t count, KeyCmp func) const;

// Keys set searching
size_t FindKeysFwd (data_t *data, const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;
size_t FindKeysBwd (data_t *data, const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
size_t FindDiffFwd (data_t *data, size_t tpos, const Stack *source, size_t spos, size_t count, KeyCmp func) const;
size_t FindDiffBwd (data_t *data, size_t tpos, const Stack *source, size_t spos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t CountKeyFwd (adt_t key, size_t pos, size_t count, KeyCmp func) const;
size_t CountKeyBwd (adt_t key, size_t pos, size_t count, KeyCmp func) const;

// Keys set counting
size_t CountKeysFwd (const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;
size_t CountKeysBwd (const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Comparison of stacks                                                  //
//****************************************************************************//
sint64_t Compare (const Stack *source, KeyCmp func) const;

//****************************************************************************//
//      Check for equality                                                    //
//****************************************************************************//
bool IsEqual (const Stack *source, KeyCmp func) const;

//****************************************************************************//
//      Stack properties                                                      //
//****************************************************************************//
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
//      Stack structure                                                       //
//****************************************************************************//
struct Stack
{
	void	*array;		// Pointer to array which holds stack data
	size_t	capacity;	// Capacity of the stack (auto extended if required)
	size_t	size;		// Current stack size
	size_t	futex;		// Container's futex
};

//****************************************************************************//
//      Init stack structure                                                  //
//****************************************************************************//
void Stack_InitStack (struct Stack *stack, size_t capacity);

//****************************************************************************//
//      Copy stack structure                                                  //
//****************************************************************************//
void Stack_CopyStack (struct Stack *stack, const struct Stack *source);

//****************************************************************************//
//      Free stack structure                                                  //
//****************************************************************************//
void Stack_FreeStack (struct Stack *stack);

//****************************************************************************//
//      Access predicates                                                     //
//****************************************************************************//

// Lock operations
bool Stack_LockReadings (struct Stack *stack, bool wait);
bool Stack_LockWritings (struct Stack *stack, bool wait);

// Release operations
void Stack_AllowReadings (struct Stack *stack);
void Stack_AllowWritings (struct Stack *stack);

//****************************************************************************//
//      Copying elements                                                      //
//****************************************************************************//
size_t Stack_Copy (struct Stack *stack, size_t tpos, const struct Stack *source, size_t spos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t Stack_Move (struct Stack *stack, size_t tpos, struct Stack *source, size_t spos, size_t count);

//****************************************************************************//
//      Addition of element                                                   //
//****************************************************************************//
bool Stack_Push (struct Stack *stack, const struct data_t *data);

//****************************************************************************//
//      Removal of element                                                    //
//****************************************************************************//
bool Stack_Pop (struct Stack *stack, struct data_t *data);

//****************************************************************************//
//      Insertion of element                                                  //
//****************************************************************************//
bool Stack_Insert (struct Stack *stack, const struct data_t *data, size_t pos);

//****************************************************************************//
//      Extraction of element                                                 //
//****************************************************************************//
bool Stack_Extract (struct Stack *stack, struct data_t *data, size_t pos);

//****************************************************************************//
//      Setting element value                                                 //
//****************************************************************************//
bool Stack_Set (struct Stack *stack, const struct data_t *data, size_t pos);

//****************************************************************************//
//      Getting element value                                                 //
//****************************************************************************//
bool Stack_Get (const struct Stack *stack, struct data_t *data, size_t pos);

//****************************************************************************//
//      Replacing element value                                               //
//****************************************************************************//
bool Stack_Replace (struct Stack *stack, struct data_t *odata, const struct data_t *ndata, size_t pos);

//****************************************************************************//
//      Changing elements order                                               //
//****************************************************************************//

// Reversing elements order
size_t Stack_Reverse (struct Stack *stack, size_t pos, size_t count);

// Swapping elements
bool Stack_Swap (struct Stack *stack, size_t pos1, size_t pos2);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//

// Minimum value
size_t Stack_MinFwd (const struct Stack *stack, struct data_t *data, size_t pos, size_t count, KeyCmp func);
size_t Stack_MinBwd (const struct Stack *stack, struct data_t *data, size_t pos, size_t count, KeyCmp func);

// Maximum value
size_t Stack_MaxFwd (const struct Stack *stack, struct data_t *data, size_t pos, size_t count, KeyCmp func);
size_t Stack_MaxBwd (const struct Stack *stack, struct data_t *data, size_t pos, size_t count, KeyCmp func);

//****************************************************************************//
//      Key searching                                                         //
//****************************************************************************//

// Single key searching
size_t Stack_FindKeyFwd (const struct Stack *stack, struct data_t *data, union adt_t key, size_t pos, size_t count, KeyCmp func);
size_t Stack_FindKeyBwd (const struct Stack *stack, struct data_t *data, union adt_t key, size_t pos, size_t count, KeyCmp func);

// Keys set searching
size_t Stack_FindKeysFwd (const struct Stack *stack, struct data_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);
size_t Stack_FindKeysBwd (const struct Stack *stack, struct data_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);

//****************************************************************************//
//      Searching for differences                                             //
//****************************************************************************//
size_t Stack_FindDiffFwd (const struct Stack *stack, struct data_t *data, size_t tpos, const struct Stack *source, size_t spos, size_t count, KeyCmp func);
size_t Stack_FindDiffBwd (const struct Stack *stack, struct data_t *data, size_t tpos, const struct Stack *source, size_t spos, size_t count, KeyCmp func);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//

// Single key counting
size_t Stack_CountKeyFwd (const struct Stack *stack, union adt_t key, size_t pos, size_t count, KeyCmp func);
size_t Stack_CountKeyBwd (const struct Stack *stack, union adt_t key, size_t pos, size_t count, KeyCmp func);

// Keys set counting
size_t Stack_CountKeysFwd (const struct Stack *stack, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);
size_t Stack_CountKeysBwd (const struct Stack *stack, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);

//****************************************************************************//
//      Comparison of stacks                                                  //
//****************************************************************************//
sint64_t Stack_Compare (const struct Stack *stack, const struct Stack *source, KeyCmp func);

//****************************************************************************//
//      Check for equality                                                    //
//****************************************************************************//
bool Stack_IsEqual (const struct Stack *stack, const struct Stack *source, KeyCmp func);

//****************************************************************************//
//      Stack properties                                                      //
//****************************************************************************//
size_t Stack_Capacity (const struct Stack *stack);
size_t Stack_Size (const struct Stack *stack);
bool Stack_IsEmpty (const struct Stack *stack);
bool Stack_IsInit (const struct Stack *stack);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
