/*                                                                        SIMD.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                            SIMD CONTROL FUNCTIONS                            #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2015, Jack Black #
################################################################################
*/
# pragma	once

//****************************************************************************//
//      SIMD constants                                                        //
//****************************************************************************//

// SIMD rounding modes
# define	SIMD_RC_NEAREST		0x0000		// Round to nearest even integer
# define	SIMD_RC_ROND_DOWN	0x0001		// Round down (floor)
# define	SIMD_RC_ROND_UP		0x0002		// Round up (ceil)
# define	SIMD_RC_TRUNCATE	0x0003		// Round to nearest integer, toward zero (truncation)

// SIMD exception masks
# define	SIMD_PM				0x0020		// Precision mask
# define	SIMD_UM				0x0010		// Underflow mask
# define	SIMD_OM				0x0008		// Overflow mask
# define	SIMD_ZM				0x0004		// Divide by zero mask
# define	SIMD_DM				0x0002		// Denormal operand mask
# define	SIMD_IM				0x0001		// Invalid operation mask
# define	SIMD_ALL_MASKS		0x003F		// All masks

// SIMD exception flags
# define	SIMD_PE				0x0020		// Precision flag
# define	SIMD_UE				0x0010		// Underflow flag
# define	SIMD_OE				0x0008		// Overflow flag
# define	SIMD_ZE				0x0004		// Divide by zero flag
# define	SIMD_DE				0x0002		// Denormal operand flag
# define	SIMD_IE				0x0001		// Invalid operation flag
# define	SIMD_ALL_EXCPTS		0x003F		// All flags

// SIMD defaults
# define	SIMD_DEFAULT		0x007E		// Default SIMD mode

//****************************************************************************//
//      SIMD data types                                                       //
//****************************************************************************//
# define	simd_ctrl_t			int			// SIMD control word
# define	simd_stat_t			int			// SIMD status word

//****************************************************************************//
//      SIMD control functions                                                //
//****************************************************************************//

//============================================================================//
//      SIMD rounding mode                                                    //
//============================================================================//

// Set round mode
inline simd_ctrl_t SetRoundMode (simd_ctrl_t cword, int rmode)
{
	return cword & ~(0x3 << 7) | rmode << 7;
}

// Get round mode
inline int GetRoundMode (simd_ctrl_t cword)
{
	return (cword & (0x3 << 7)) >> 7;
}

//============================================================================//
//      SIMD exception masks                                                  //
//============================================================================//

// Clear exception masks
inline simd_ctrl_t ClearExceptionMasks (simd_ctrl_t cword, int exceptions)
{
	return cword & ~(exceptions << 1);
}

// Set exception masks
inline simd_ctrl_t SetExceptionMasks (simd_ctrl_t cword, int exceptions)
{
	return cword | (exceptions << 1);
}

// Get exception masks
inline int GetExceptionMasks (simd_ctrl_t cword, int exceptions)
{
	return (cword & (exceptions << 1)) >> 1;
}

//============================================================================//
//      SIMD flush to zero mode                                               //
//============================================================================//

// Clear flush to zero flag
inline simd_ctrl_t ClearFlushToZeroFlag (simd_ctrl_t cword)
{
	return cword & ~(0x1 << 9);
}

// Set flush to zero flag
inline simd_ctrl_t SetFlushToZeroFlag (simd_ctrl_t cword)
{
	return cword | (0x1 << 9);
}

// Get flush to zero flag
inline bool GetFlushToZeroFlag (simd_ctrl_t cword)
{
	return (cword & (0x1 << 9)) >> 9;
}

//============================================================================//
//      SIMD denormals are zeros                                              //
//============================================================================//

// Clear denormals are zeros flag
inline simd_ctrl_t ClearDenormalsAreZerosFlag (simd_ctrl_t cword)
{
	return cword & ~0x1;
}

// Set denormals are zeros flag
inline simd_ctrl_t SetDenormalsAreZerosFlag (simd_ctrl_t cword)
{
	return cword | 0x1;
}

// Get denormals are zeros flag
inline bool GetDenormalsAreZerosFlag (simd_ctrl_t cword)
{
	return cword & 0x1;
}

//****************************************************************************//
//      SIMD status functions                                                 //
//****************************************************************************//

// SIMD exception flags
inline int GetExceptions (simd_stat_t sword, int exceptions)
{
	return sword & exceptions;
}

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
class SIMD
{
public:

//****************************************************************************//
//      SIMD control functions                                                //
//****************************************************************************//

// Init SIMD
static void Init (void);

// Set SIMD mode
static void SetMode (simd_ctrl_t cword);

// Get SIMD mode
static simd_ctrl_t GetMode (void);

//****************************************************************************//
//      SIMD status functions                                                 //
//****************************************************************************//

// Clear SIMD exceptions
static void ClearExceptions (void);

// Get SIMD status
static simd_stat_t GetStatus (void);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      SIMD control functions                                                //
//****************************************************************************//

// Init SIMD
void SIMD_Init (void);

// Set SIMD mode
void SIMD_SetMode (simd_ctrl_t cword);

// Get SIMD mode
simd_ctrl_t SIMD_GetMode (void);

//****************************************************************************//
//      SIMD status functions                                                 //
//****************************************************************************//

// Clear SIMD exceptions
void SIMD_ClearExceptions (void);

// Get SIMD status
simd_stat_t SIMD_GetStatus (void);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
