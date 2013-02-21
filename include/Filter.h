/*                                                                      Filter.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                   FINITE IMPULSE RESPONSE DIGITAL FILTERS                    #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2013, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

//****************************************************************************//
//      Frequency range                                                       //
//****************************************************************************//
# define	FREQ_MIN	0.0				// Min frequency
# define	FREQ_MAX	0.5				// Max frequency

//****************************************************************************//
//      Window functions                                                      //
//****************************************************************************//
enum window_t
{
	// No window functions
	WIN_NONE,							// Rectangle window (or no window)

	// High-resolution window functions
	WIN_SINE,							// Sine window
	WIN_HAMMING,						// Hamming window
	WIN_BLACKMAN,						// Blackman window

	// Low-resolution window functions
	WIN_BLACKMAN_NUTTALL				// Blackman–Nuttall window
};

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
class Filter
{
public:

//****************************************************************************//
//      Band-pass filter                                                      //
//****************************************************************************//
static bool BandPass (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, window_t window);
static bool BandPass (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, window_t window);

//****************************************************************************//
//      Band-stop filter                                                      //
//****************************************************************************//
static bool BandStop (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, window_t window);
static bool BandStop (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, window_t window);

//****************************************************************************//
//      Hilbert filter                                                        //
//****************************************************************************//
static bool Hilbert (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, window_t window);
static bool Hilbert (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, window_t window);

//****************************************************************************//
//      Differential filter                                                   //
//****************************************************************************//
static bool Diff (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, window_t window);
static bool Diff (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, window_t window);

//****************************************************************************//
//      Filter response                                                       //
//****************************************************************************//
static bool Response (flt32_t response[], const flt32_t data[], size_t dsize, const flt32_t filter[], size_t fsize);
static bool Response (flt64_t response[], const flt64_t data[], size_t dsize, const flt64_t filter[], size_t fsize);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Band-pass filter                                                      //
//****************************************************************************//
bool Filter_BandPass_flt32 (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, enum window_t window);
bool Filter_BandPass_flt64 (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, enum window_t window);

//****************************************************************************//
//      Band-stop filter                                                      //
//****************************************************************************//
bool Filter_BandStop_flt32 (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, enum window_t window);
bool Filter_BandStop_flt64 (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, enum window_t window);

//****************************************************************************//
//      Hilbert filter                                                        //
//****************************************************************************//
bool Filter_Hilbert_flt32 (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, enum window_t window);
bool Filter_Hilbert_flt64 (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, enum window_t window);

//****************************************************************************//
//      Differential filter                                                   //
//****************************************************************************//
bool Filter_Diff_flt32 (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, enum window_t window);
bool Filter_Diff_flt64 (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, enum window_t window);

//****************************************************************************//
//      Filter response                                                       //
//****************************************************************************//
bool Filter_Response_flt32 (flt32_t response[], const flt32_t data[], size_t dsize, const flt32_t filter[], size_t fsize);
bool Filter_Response_flt64 (flt64_t response[], const flt64_t data[], size_t dsize, const flt64_t filter[], size_t fsize);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
