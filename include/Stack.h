/*                                                                       Stack.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                               STACK DATA TYPE                                #
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
//      Stack class                                                           //
//****************************************************************************//
class Stack
{
private:
	void	*array;		// Pointer to array which holds stack data
	size_t	capacity;	// Capacity of the stack (auto extended if required)
	size_t	size;		// Current stack size

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
//      Copying elements                                                      //
//****************************************************************************//
size_t Copy (const Stack *source, size_t pos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t Move (Stack *source, size_t pos, size_t count);

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
size_t Reverse (size_t pos, size_t count);
bool Swap (size_t pos);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//
size_t Min (data_t *data, size_t pos, size_t count, KeyCmp func) const;
size_t Max (data_t *data, size_t pos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Search algorithms                                                     //
//****************************************************************************//

//============================================================================//
//      Key searching                                                         //
//============================================================================//
size_t FindKey (data_t *data, adt_t key, size_t pos, size_t count, KeyCmp func) const;
size_t FindKeys (data_t *data, const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;

//============================================================================//
//      Searching for differences                                             //
//============================================================================//
size_t FindDiff (data_t *data, const Stack *source, size_t pos, size_t count, KeyCmp func) const;

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t CountKey (adt_t key, size_t pos, size_t count, KeyCmp func) const;
size_t CountKeys (const adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func) const;

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
//      Copying elements                                                      //
//****************************************************************************//
size_t Stack_Copy (struct Stack *stack, const struct Stack *source, size_t pos, size_t count);

//****************************************************************************//
//      Moving elements                                                       //
//****************************************************************************//
size_t Stack_Move (struct Stack *stack, struct Stack *source, size_t pos, size_t count);

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
size_t Stack_Reverse (struct Stack *stack, size_t pos, size_t count);
bool Stack_Swap (struct Stack *stack, size_t pos);

//****************************************************************************//
//      Minimum and maximum value                                             //
//****************************************************************************//
size_t Stack_Min (const struct Stack *stack, struct data_t *data, size_t pos, size_t count, KeyCmp func);
size_t Stack_Max (const struct Stack *stack, struct data_t *data, size_t pos, size_t count, KeyCmp func);

//****************************************************************************//
//      Search algorithms                                                     //
//****************************************************************************//

//============================================================================//
//      Key searching                                                         //
//============================================================================//
size_t Stack_FindKey (const struct Stack *stack, struct data_t *data, union adt_t key, size_t pos, size_t count, KeyCmp func);
size_t Stack_FindKeys (const struct Stack *stack, struct data_t *data, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);

//============================================================================//
//      Searching for differences                                             //
//============================================================================//
size_t Stack_FindDiff (const struct Stack *stack, struct data_t *data, const struct Stack *source, size_t pos, size_t count, KeyCmp func);

//****************************************************************************//
//      Key counting                                                          //
//****************************************************************************//
size_t Stack_CountKey (const struct Stack *stack, union adt_t key, size_t pos, size_t count, KeyCmp func);
size_t Stack_CountKeys (const struct Stack *stack, const union adt_t keys[], size_t size, size_t pos, size_t count, KeyCmp func);

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

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
