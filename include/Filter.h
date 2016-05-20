/*                                                                      Filter.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                   FINITE IMPULSE RESPONSE DIGITAL FILTERS                    #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
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
	WIN_BLACKMAN_NUTTALL				// Blackman-Nuttall window
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
//      Linear filters                                                        //
//****************************************************************************//

//============================================================================//
//      Band-pass filter                                                      //
//============================================================================//
static bool BandPass (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, window_t window);
static bool BandPass (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, window_t window);

//============================================================================//
//      Band-stop filter                                                      //
//============================================================================//
static bool BandStop (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, window_t window);
static bool BandStop (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, window_t window);

//============================================================================//
//      Hilbert filter                                                        //
//============================================================================//
static bool Hilbert (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, window_t window);
static bool Hilbert (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, window_t window);

//============================================================================//
//      Differential filter                                                   //
//============================================================================//
static bool Diff (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, window_t window);
static bool Diff (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, window_t window);

//============================================================================//
//      Filter response                                                       //
//============================================================================//
static bool Response (flt32_t response[], const flt32_t data[], size_t dsize, const flt32_t filter[], size_t fsize);
static bool Response (flt64_t response[], const flt64_t data[], size_t dsize, const flt64_t filter[], size_t fsize);

//============================================================================//
//      Moving average filter                                                 //
//============================================================================//
static bool Average (flt32_t response[], const flt32_t data[], size_t size, size_t order);
static bool Average (flt64_t response[], const flt64_t data[], size_t size, size_t order);

//****************************************************************************//
//      Nonlinear filters                                                     //
//****************************************************************************//

//============================================================================//
//      Median filter                                                         //
//============================================================================//

// Unsigned integer types
static bool Median (uint8_t response[], const uint8_t data[], size_t temp[], size_t size, size_t order);
static bool Median (uint16_t response[], const uint16_t data[], size_t temp[], size_t size, size_t order);
static bool Median (uint32_t response[], const uint32_t data[], size_t temp[], size_t size, size_t order);
static bool Median (uint64_t response[], const uint64_t data[], size_t temp[], size_t size, size_t order);

// Signed integer types
static bool Median (sint8_t response[], const sint8_t data[], size_t temp[], size_t size, size_t order);
static bool Median (sint16_t response[], const sint16_t data[], size_t temp[], size_t size, size_t order);
static bool Median (sint32_t response[], const sint32_t data[], size_t temp[], size_t size, size_t order);
static bool Median (sint64_t response[], const sint64_t data[], size_t temp[], size_t size, size_t order);

// Floating-point types
static bool Median (flt32_t response[], const flt32_t data[], size_t temp[], size_t size, size_t order);
static bool Median (flt64_t response[], const flt64_t data[], size_t temp[], size_t size, size_t order);

//============================================================================//
//      Min filter                                                            //
//============================================================================//

// Unsigned integer types
static bool Min (uint8_t response[], const uint8_t data[], size_t temp[], size_t size, size_t order);
static bool Min (uint16_t response[], const uint16_t data[], size_t temp[], size_t size, size_t order);
static bool Min (uint32_t response[], const uint32_t data[], size_t temp[], size_t size, size_t order);
static bool Min (uint64_t response[], const uint64_t data[], size_t temp[], size_t size, size_t order);

// Signed integer types
static bool Min (sint8_t response[], const sint8_t data[], size_t temp[], size_t size, size_t order);
static bool Min (sint16_t response[], const sint16_t data[], size_t temp[], size_t size, size_t order);
static bool Min (sint32_t response[], const sint32_t data[], size_t temp[], size_t size, size_t order);
static bool Min (sint64_t response[], const sint64_t data[], size_t temp[], size_t size, size_t order);

// Floating-point types
static bool Min (flt32_t response[], const flt32_t data[], size_t temp[], size_t size, size_t order);
static bool Min (flt64_t response[], const flt64_t data[], size_t temp[], size_t size, size_t order);

//============================================================================//
//      Max filter                                                            //
//============================================================================//

// Unsigned integer types
static bool Max (uint8_t response[], const uint8_t data[], size_t temp[], size_t size, size_t order);
static bool Max (uint16_t response[], const uint16_t data[], size_t temp[], size_t size, size_t order);
static bool Max (uint32_t response[], const uint32_t data[], size_t temp[], size_t size, size_t order);
static bool Max (uint64_t response[], const uint64_t data[], size_t temp[], size_t size, size_t order);

// Signed integer types
static bool Max (sint8_t response[], const sint8_t data[], size_t temp[], size_t size, size_t order);
static bool Max (sint16_t response[], const sint16_t data[], size_t temp[], size_t size, size_t order);
static bool Max (sint32_t response[], const sint32_t data[], size_t temp[], size_t size, size_t order);
static bool Max (sint64_t response[], const sint64_t data[], size_t temp[], size_t size, size_t order);

// Floating-point types
static bool Max (flt32_t response[], const flt32_t data[], size_t temp[], size_t size, size_t order);
static bool Max (flt64_t response[], const flt64_t data[], size_t temp[], size_t size, size_t order);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Linear filters                                                        //
//****************************************************************************//

//============================================================================//
//      Band-pass filter                                                      //
//============================================================================//
bool Filter_BandPass_flt32 (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, enum window_t window);
bool Filter_BandPass_flt64 (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, enum window_t window);

//============================================================================//
//      Band-stop filter                                                      //
//============================================================================//
bool Filter_BandStop_flt32 (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, enum window_t window);
bool Filter_BandStop_flt64 (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, enum window_t window);

//============================================================================//
//      Hilbert filter                                                        //
//============================================================================//
bool Filter_Hilbert_flt32 (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, enum window_t window);
bool Filter_Hilbert_flt64 (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, enum window_t window);

//============================================================================//
//      Differential filter                                                   //
//============================================================================//
bool Filter_Diff_flt32 (flt32_t filter[], size_t size, flt32_t lowfreq, flt32_t highfreq, enum window_t window);
bool Filter_Diff_flt64 (flt64_t filter[], size_t size, flt64_t lowfreq, flt64_t highfreq, enum window_t window);

//============================================================================//
//      Filter response                                                       //
//============================================================================//
bool Filter_Response_flt32 (flt32_t response[], const flt32_t data[], size_t dsize, const flt32_t filter[], size_t fsize);
bool Filter_Response_flt64 (flt64_t response[], const flt64_t data[], size_t dsize, const flt64_t filter[], size_t fsize);

//============================================================================//
//      Moving average filter                                                 //
//============================================================================//
bool Filter_Average_flt32 (flt32_t response[], const flt32_t data[], size_t size, size_t order);
bool Filter_Average_flt64 (flt64_t response[], const flt64_t data[], size_t size, size_t order);

//****************************************************************************//
//      Nonlinear filters                                                     //
//****************************************************************************//

//============================================================================//
//      Median filter                                                         //
//============================================================================//

// Unsigned integer types
bool Filter_Median_uint8 (uint8_t response[], const uint8_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Median_uint16 (uint16_t response[], const uint16_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Median_uint32 (uint32_t response[], const uint32_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Median_uint64 (uint64_t response[], const uint64_t data[], size_t temp[], size_t size, size_t order);

// Signed integer types
bool Filter_Median_sint8 (sint8_t response[], const sint8_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Median_sint16 (sint16_t response[], const sint16_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Median_sint32 (sint32_t response[], const sint32_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Median_sint64 (sint64_t response[], const sint64_t data[], size_t temp[], size_t size, size_t order);

// Floating-point types
bool Filter_Median_flt32 (flt32_t response[], const flt32_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Median_flt64 (flt64_t response[], const flt64_t data[], size_t temp[], size_t size, size_t order);

//============================================================================//
//      Min filter                                                            //
//============================================================================//

// Unsigned integer types
bool Filter_Min_uint8 (uint8_t response[], const uint8_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Min_uint16 (uint16_t response[], const uint16_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Min_uint32 (uint32_t response[], const uint32_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Min_uint64 (uint64_t response[], const uint64_t data[], size_t temp[], size_t size, size_t order);

// Signed integer types
bool Filter_Min_sint8 (sint8_t response[], const sint8_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Min_sint16 (sint16_t response[], const sint16_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Min_sint32 (sint32_t response[], const sint32_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Min_sint64 (sint64_t response[], const sint64_t data[], size_t temp[], size_t size, size_t order);

// Floating-point types
bool Filter_Min_flt32 (flt32_t response[], const flt32_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Min_flt64 (flt64_t response[], const flt64_t data[], size_t temp[], size_t size, size_t order);

//============================================================================//
//      Max filter                                                            //
//============================================================================//

// Unsigned integer types
bool Filter_Max_uint8 (uint8_t response[], const uint8_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Max_uint16 (uint16_t response[], const uint16_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Max_uint32 (uint32_t response[], const uint32_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Max_uint64 (uint64_t response[], const uint64_t data[], size_t temp[], size_t size, size_t order);

// Signed integer types
bool Filter_Max_sint8 (sint8_t response[], const sint8_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Max_sint16 (sint16_t response[], const sint16_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Max_sint32 (sint32_t response[], const sint32_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Max_sint64 (sint64_t response[], const sint64_t data[], size_t temp[], size_t size, size_t order);

// Floating-point types
bool Filter_Max_flt32 (flt32_t response[], const flt32_t data[], size_t temp[], size_t size, size_t order);
bool Filter_Max_flt64 (flt64_t response[], const flt64_t data[], size_t temp[], size_t size, size_t order);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
