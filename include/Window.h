/*                                                                      Window.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                WINDOW FUNCTIONS FOR DIGITAL SIGNAL PROCESSING                #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2012, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

class Window
{
public:

//****************************************************************************//
//      High-resolution windows (low-dynamic-range)                           //
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
//      Low-resolution windows (high-dynamic-range)                           //
//****************************************************************************//

// Blackman–Nuttall window
static void BlackmanNuttall (flt32_t window[], size_t size);
static void BlackmanNuttall (flt64_t window[], size_t size);
};
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
