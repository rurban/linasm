/*                                                                      Window.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                WINDOW FUNCTIONS FOR DIGITAL SIGNAL PROCESSING                #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
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
class Window
{
public:

//****************************************************************************//
//      High-resolution windows (low dynamic range)                           //
//****************************************************************************//

// Sine window
static void Sine (flt32_t window[], size_t size);
static void Sine (flt64_t window[], size_t size);

// Hamming window
static void Hamming (flt32_t window[], size_t size);
static void Hamming (flt64_t window[], size_t size);

// Blackman window
static void Blackman (flt32_t window[], size_t size);
static void Blackman (flt64_t window[], size_t size);

//****************************************************************************//
//      Low-resolution windows (high dynamic range)                           //
//****************************************************************************//

// Blackman-Nuttall window
static void BlackmanNuttall (flt32_t window[], size_t size);
static void BlackmanNuttall (flt64_t window[], size_t size);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      High-resolution windows (low dynamic range)                           //
//****************************************************************************//

// Sine window
void Window_Sine_flt32 (flt32_t window[], size_t size);
void Window_Sine_flt64 (flt64_t window[], size_t size);

// Hamming window
void Window_Hamming_flt32 (flt32_t window[], size_t size);
void Window_Hamming_flt64 (flt64_t window[], size_t size);

// Blackman window
void Window_Blackman_flt32 (flt32_t window[], size_t size);
void Window_Blackman_flt64 (flt64_t window[], size_t size);

//****************************************************************************//
//      Low-resolution windows (high dynamic range)                           //
//****************************************************************************//

// Blackman-Nuttall window
void Window_BlackmanNuttall_flt32 (flt32_t window[], size_t size);
void Window_BlackmanNuttall_flt64 (flt64_t window[], size_t size);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
