/*                                                                         FHT.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                         FAST HARTLEY TRANSFORMATION                          #
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
class FHT
{
public:

//****************************************************************************//
//      Hartley transformation                                                //
//****************************************************************************//

// Time domain to frequency domain
static void Spectrum (flt32_t array[], uint8_t exp);
static void Spectrum (flt64_t array[], uint8_t exp);

// Frequency domain to time domain
static void Impulse (flt32_t array[], uint8_t exp);
static void Impulse (flt64_t array[], uint8_t exp);

//****************************************************************************//
//      Spectrum                                                              //
//****************************************************************************//

// Real spectrum
static void RealSpectrum (flt32_t magnitude[], flt32_t phase[], const flt32_t spectrum[], uint8_t exp);
static void RealSpectrum (flt64_t magnitude[], flt64_t phase[], const flt64_t spectrum[], uint8_t exp);

// Hartley spectrum
static void HartleySpectrum (flt32_t spectrum[], const flt32_t magnitude[], const flt32_t phase[], uint8_t exp);
static void HartleySpectrum (flt64_t spectrum[], const flt64_t magnitude[], const flt64_t phase[], uint8_t exp);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Hartley transformation                                                //
//****************************************************************************//

// Time domain to frequency domain
void FHT_Spectrum_flt32 (flt32_t array[], uint8_t exp);
void FHT_Spectrum_flt64 (flt64_t array[], uint8_t exp);

// Frequency domain to time domain
void FHT_Impulse_flt32 (flt32_t array[], uint8_t exp);
void FHT_Impulse_flt64 (flt64_t array[], uint8_t exp);

//****************************************************************************//
//      Spectrum                                                              //
//****************************************************************************//

// Real spectrum
void FHT_RealSpectrum_flt32 (flt32_t magnitude[], flt32_t phase[], const flt32_t spectrum[], uint8_t exp);
void FHT_RealSpectrum_flt64 (flt64_t magnitude[], flt64_t phase[], const flt64_t spectrum[], uint8_t exp);

// Hartley spectrum
void FHT_HartleySpectrum_flt32 (flt32_t spectrum[], const flt32_t magnitude[], const flt32_t phase[], uint8_t exp);
void FHT_HartleySpectrum_flt64 (flt64_t spectrum[], const flt64_t magnitude[], const flt64_t phase[], uint8_t exp);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
