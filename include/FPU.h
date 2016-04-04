/*                                                                         FPU.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                            FPU CONTROL FUNCTIONS                             #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
################################################################################
*/
# pragma	once

//****************************************************************************//
//      FPU constants                                                         //
//****************************************************************************//

// FPU rounding modes
# define	FPU_RC_NEAREST		0x0000		// Round to nearest even integer
# define	FPU_RC_ROND_DOWN	0x0001		// Round down (floor)
# define	FPU_RC_ROND_UP		0x0002		// Round up (ceil)
# define	FPU_RC_TRUNCATE		0x0003		// Round to nearest integer, toward zero (truncation)

// FPU precision modes
# define	FPU_PC_SINGLE		0x0000		// Single precision (float)
# define	FPU_PC_DOUBLE		0x0002		// Double precision (double)
# define	FPU_PC_EXTENDED		0x0003		// Extended precision (long double)

// FPU exception masks
# define	FPU_PM				0x0020		// Precision mask
# define	FPU_UM				0x0010		// Underflow mask
# define	FPU_OM				0x0008		// Overflow mask
# define	FPU_ZM				0x0004		// Divide by zero mask
# define	FPU_DM				0x0002		// Denormal operand mask
# define	FPU_IM				0x0001		// Invalid operation mask
# define	FPU_ALL_MASKS		0x003F		// All masks

// FPU exception flags
# define	FPU_PE				0x0020		// Precision flag
# define	FPU_UE				0x0010		// Underflow flag
# define	FPU_OE				0x0008		// Overflow flag
# define	FPU_ZE				0x0004		// Divide by zero flag
# define	FPU_DE				0x0002		// Denormal operand flag
# define	FPU_IE				0x0001		// Invalid operation flag
# define	FPU_ALL_EXCPTS		0x003F		// All flags

// FPU defaults
# define	FPU_DEFAULT			0x037F		// Default FPU mode

//****************************************************************************//
//      FPU data types                                                        //
//****************************************************************************//
# define	fpu_ctrl_t			int			// FPU control word
# define	fpu_stat_t			int			// FPU status word

//****************************************************************************//
//      FPU control functions                                                 //
//****************************************************************************//

//============================================================================//
//      FPU rounding mode                                                     //
//============================================================================//

// Set round mode
inline fpu_ctrl_t SetRoundMode (fpu_ctrl_t cword, int rmode)
{
	return cword & ~(0x3 << 10) | rmode << 10;
}

// Get round mode
inline int GetRoundMode (fpu_ctrl_t cword)
{
	return (cword & (0x3 << 10)) >> 10;
}

//============================================================================//
//      FPU precision mode                                                    //
//============================================================================//

// Set precision mode
inline fpu_ctrl_t SetPrecisionMode (fpu_ctrl_t cword, int pmode)
{
	return cword & ~(0x3 << 8) | pmode << 8;
}

// Get precision mode
inline int GetPrecisionMode (fpu_ctrl_t cword)
{
	return (cword & (0x3 << 8)) >> 8;
}

//============================================================================//
//      FPU exception masks                                                   //
//============================================================================//

// Clear exception masks
inline fpu_ctrl_t ClearExceptionMasks (fpu_ctrl_t cword, int exceptions)
{
	return cword & ~exceptions;
}

// Set exception masks
inline fpu_ctrl_t SetExceptionMasks (fpu_ctrl_t cword, int exceptions)
{
	return cword | exceptions;
}

// Get exception masks
inline int GetExceptionMasks (fpu_ctrl_t cword, int exceptions)
{
	return cword & exceptions;
}

//****************************************************************************//
//      FPU status functions                                                  //
//****************************************************************************//

// FPU exception flags
inline int GetExceptions (fpu_stat_t sword, int exceptions)
{
	return sword & exceptions;
}

// FPU exceptions summary status flag
inline bool GetErrorSummaryFlag (fpu_stat_t sword)
{
	return (sword & (0x1 << 7)) >> 7;
}

// FPU stack fault flag
inline bool GetStackFaultFlag (fpu_stat_t sword)
{
	return (sword & (0x1 << 6)) >> 6;
}

// FPU top of the stack index
inline int GetStackTop (fpu_stat_t sword)
{
	return (sword & (0x3 << 11)) >> 11;
}

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
class FPU
{
public:

//****************************************************************************//
//      FPU control functions                                                 //
//****************************************************************************//

// Init FPU
static void Init (void);

// Set FPU mode
static void SetMode (fpu_ctrl_t cword);

// Get FPU mode
static fpu_ctrl_t GetMode (void);

//****************************************************************************//
//      FPU status functions                                                  //
//****************************************************************************//

// Clear FPU exceptions
static void ClearExceptions (void);

// Get FPU status
static fpu_stat_t GetStatus (void);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      FPU control functions                                                 //
//****************************************************************************//

// Init FPU
void FPU_Init (void);

// Set FPU mode
void FPU_SetMode (fpu_ctrl_t cword);

// Get FPU mode
fpu_ctrl_t FPU_GetMode (void);

//****************************************************************************//
//      FPU status functions                                                  //
//****************************************************************************//

// Clear FPU exceptions
void FPU_ClearExceptions (void);

// Get FPU status
fpu_stat_t FPU_GetStatus (void);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
