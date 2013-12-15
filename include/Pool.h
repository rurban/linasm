/*                                                                        Pool.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                                 OBJECT POOL                                  #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2013, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
//****************************************************************************//
//      Object pool class                                                     //
//****************************************************************************//
class Pool
{
private:
	void	*array;		// Pointer to array which holds pool nodes
	size_t	capacity;	// Capacity of the pool
	size_t	size;		// Current pool size
	size_t	bsize;		// Block size
	size_t	pool;		// Index of fisrt free node in the pool

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
Pool (size_t capacity, size_t osize, uint8_t align);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~Pool (void);

//****************************************************************************//
//      Pool functions                                                        //
//****************************************************************************//
void* Alloc (void);
void Free (void *ptr);
bool IsAlloc (void *ptr) const;
bool IsFree (void *ptr) const;
void Clear (void);

//****************************************************************************//
//      Pool properties                                                       //
//****************************************************************************//
size_t Capacity (void) const;
size_t Size (void) const;
bool IsEmpty (void) const;
bool IsFull (void) const;
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Object pool structure                                                 //
//****************************************************************************//
struct Pool
{
	void	*array;		// Pointer to array which holds pool nodes
	size_t	capacity;	// Capacity of the pool
	size_t	size;		// Current pool size
	size_t	bsize;		// Block size
	size_t	pool;		// Index of pool free node
};

//****************************************************************************//
//      Init pool structure                                                   //
//****************************************************************************//
void Pool_InitPool (struct Pool *pool, size_t capacity, size_t osize, uint8_t align);

//****************************************************************************//
//      Free pool structure                                                   //
//****************************************************************************//
void Pool_FreePool (struct Pool *pool);

//****************************************************************************//
//      Pool functions                                                        //
//****************************************************************************//
void* Pool_Alloc (struct Pool *pool);
void Pool_Free (struct Pool *pool, void *ptr);
bool Pool_IsAlloc (const struct Pool *pool, void *ptr);
bool Pool_IsFree (const struct Pool *pool, void *ptr);
void Pool_Clear (struct Pool *pool);

//****************************************************************************//
//      Pool properties                                                       //
//****************************************************************************//
size_t Pool_Capacity (const struct Pool *pool);
size_t Pool_Size (const struct Pool *pool);
bool Pool_IsEmpty (const struct Pool *pool);
bool Pool_IsFull (const struct Pool *pool);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
