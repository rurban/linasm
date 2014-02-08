/*                                                                 Accumulator.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                             ACCUMULATING BUFFER                              #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2014, Jack Black #
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
//      Accumulating buffer class                                             //
//****************************************************************************//
class Accumulator
{
private:
	void	*buffer;	// Pointer to memory buffer
	size_t	capacity;	// Capacity of the buffer (auto extended if required)
	size_t	size;		// Current buffer size

public:

//****************************************************************************//
//      Constructor                                                           //
//****************************************************************************//
Accumulator (size_t capacity);

//****************************************************************************//
//      Copy constructor                                                      //
//****************************************************************************//
Accumulator (const Accumulator &source);

//****************************************************************************//
//      Destructor                                                            //
//****************************************************************************//
~Accumulator (void);

//****************************************************************************//
//      Accumulator functions                                                 //
//****************************************************************************//
void* Reserve (size_t size);
bool Fill (size_t size);
const void* Data (void) const;
void Clear (void);

//****************************************************************************//
//      Accumulator properties                                                //
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
//      Accumulating buffer structure                                         //
//****************************************************************************//
struct Accumulator
{
	void	*buffer;	// Pointer to memory buffer
	size_t	capacity;	// Capacity of the buffer (auto extended if required)
	size_t	size;		// Current buffer size
};

//****************************************************************************//
//      Init accumulator structure                                            //
//****************************************************************************//
void Accumulator_InitAccumulator (struct Accumulator *accumulator, size_t capacity);

//****************************************************************************//
//      Copy accumulator structure                                            //
//****************************************************************************//
void Accumulator_CopyAccumulator (struct Accumulator *accumulator, const struct Accumulator *source);

//****************************************************************************//
//      Free accumulator structure                                            //
//****************************************************************************//
void Accumulator_FreeAccumulator (struct Accumulator *accumulator);

//****************************************************************************//
//      Accumulator functions                                                 //
//****************************************************************************//
void* Accumulator_Reserve (struct Accumulator *accumulator, size_t size);
bool Accumulator_Fill (struct Accumulator *accumulator, size_t size);
const void* Accumulator_Data (const struct Accumulator *accumulator);
void Accumulator_Clear (struct Accumulator *accumulator);

//****************************************************************************//
//      Accumulator properties                                                //
//****************************************************************************//
size_t Accumulator_Capacity (const struct Accumulator *accumulator);
size_t Accumulator_Size (const struct Accumulator *accumulator);
bool Accumulator_IsEmpty (const struct Accumulator *accumulator);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
