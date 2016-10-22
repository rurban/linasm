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
//      Sine and cosine table                                                 //
//****************************************************************************//
static void SinCosTable (flt32_t table[], uint8_t exp);
static void SinCosTable (flt64_t table[], uint8_t exp);

//****************************************************************************//
//      Hartley transformation                                                //
//****************************************************************************//

// Time domain to frequency domain
static void Spectrum (flt32_t array[], const flt32_t table[], uint8_t exp);
static void Spectrum (flt64_t array[], const flt64_t table[], uint8_t exp);

// Frequency domain to time domain
static void Impulse (flt32_t array[], const flt32_t table[], uint8_t exp);
static void Impulse (flt64_t array[], const flt64_t table[], uint8_t exp);

//****************************************************************************//
//      Spectrum                                                              //
//****************************************************************************//

// Energy spectrum
static void EnergySpectrum (flt32_t energy[], const flt32_t spectrum[], uint8_t exp);
static void EnergySpectrum (flt64_t energy[], const flt64_t spectrum[], uint8_t exp);

// Magnitude spectrum
static void MagnitudeSpectrum (flt32_t magnitude[], const flt32_t spectrum[], uint8_t exp);
static void MagnitudeSpectrum (flt64_t magnitude[], const flt64_t spectrum[], uint8_t exp);

// Real spectrum
static void RealSpectrum (flt32_t magnitude[], flt32_t phase[], const flt32_t spectrum[], uint8_t exp);
static void RealSpectrum (flt64_t magnitude[], flt64_t phase[], const flt64_t spectrum[], uint8_t exp);

//****************************************************************************//
//      Signal manipulations                                                  //
//****************************************************************************//

// Signal reflection
static void Reflect (flt32_t array[], uint8_t exp);
static void Reflect (flt64_t array[], uint8_t exp);

// Signal derivative
static void Derivative (flt32_t array[], uint8_t exp);
static void Derivative (flt64_t array[], uint8_t exp);

// Signal antiderivative
static void AntiDerivative (flt32_t array[], flt32_t shift, uint8_t exp);
static void AntiDerivative (flt64_t array[], flt64_t shift, uint8_t exp);

// Signal time and frequency shift
static void Shift (flt32_t array[], flt32_t shift, uint8_t exp);
static void Shift (flt64_t array[], flt64_t shift, uint8_t exp);

// Magnitude scaling
static void Scale (flt32_t array[], flt32_t scale, uint8_t exp);
static void Scale (flt64_t array[], flt64_t scale, uint8_t exp);

// Autocorrelation of signal
static void AutoCorrelation (flt32_t array[], flt32_t scale, uint8_t exp);
static void AutoCorrelation (flt64_t array[], flt64_t scale, uint8_t exp);

// Cross-correlation of signals
static void CrossCorrelation (flt32_t target[], const flt32_t source[], flt32_t scale, uint8_t exp);
static void CrossCorrelation (flt64_t target[], const flt64_t source[], flt64_t scale, uint8_t exp);

// Convolution of signals
static void Convolution (flt32_t target[], const flt32_t source[], flt32_t scale, uint8_t exp);
static void Convolution (flt64_t target[], const flt64_t source[], flt64_t scale, uint8_t exp);

// Mixing signals
static void Mix (flt32_t target[], const flt32_t source[], flt32_t tscale, flt32_t sscale, uint8_t exp);
static void Mix (flt64_t target[], const flt64_t source[], flt64_t tscale, flt64_t sscale, uint8_t exp);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Sine and cosine table                                                 //
//****************************************************************************//
void FHT_SinCosTable_flt32 (flt32_t table[], uint8_t exp);
void FHT_SinCosTable_flt64 (flt64_t table[], uint8_t exp);

//****************************************************************************//
//      Hartley transformation                                                //
//****************************************************************************//

// Time domain to frequency domain
void FHT_Spectrum_flt32 (flt32_t array[], const flt32_t table[], uint8_t exp);
void FHT_Spectrum_flt64 (flt64_t array[], const flt64_t table[], uint8_t exp);

// Frequency domain to time domain
void FHT_Impulse_flt32 (flt32_t array[], const flt32_t table[], uint8_t exp);
void FHT_Impulse_flt64 (flt64_t array[], const flt64_t table[], uint8_t exp);

//****************************************************************************//
//      Spectrum                                                              //
//****************************************************************************//

// Energy spectrum
void FHT_EnergySpectrum_flt32 (flt32_t energy[], const flt32_t spectrum[], uint8_t exp);
void FHT_EnergySpectrum_flt64 (flt64_t energy[], const flt64_t spectrum[], uint8_t exp);

// Magnitude spectrum
void FHT_MagnitudeSpectrum_flt32 (flt32_t magnitude[], const flt32_t spectrum[], uint8_t exp);
void FHT_MagnitudeSpectrum_flt64 (flt64_t magnitude[], const flt64_t spectrum[], uint8_t exp);

// Real spectrum
void FHT_RealSpectrum_flt32 (flt32_t magnitude[], flt32_t phase[], const flt32_t spectrum[], uint8_t exp);
void FHT_RealSpectrum_flt64 (flt64_t magnitude[], flt64_t phase[], const flt64_t spectrum[], uint8_t exp);

//****************************************************************************//
//      Signal manipulations                                                  //
//****************************************************************************//

// Signal reflection
void FHT_Reflect_flt32 (flt32_t array[], uint8_t exp);
void FHT_Reflect_flt64 (flt64_t array[], uint8_t exp);

// Signal derivative
void FHT_Derivative_flt32 (flt32_t array[], uint8_t exp);
void FHT_Derivative_flt64 (flt64_t array[], uint8_t exp);

// Signal antiderivative
void FHT_AntiDerivative_flt32 (flt32_t array[], flt32_t shift, uint8_t exp);
void FHT_AntiDerivative_flt64 (flt64_t array[], flt64_t shift, uint8_t exp);

// Signal time and frequency shift
void FHT_Shift_flt32 (flt32_t array[], flt32_t shift, uint8_t exp);
void FHT_Shift_flt64 (flt64_t array[], flt64_t shift, uint8_t exp);

// Magnitude scaling
void FHT_Scale_flt32 (flt32_t array[], flt32_t scale, uint8_t exp);
void FHT_Scale_flt64 (flt64_t array[], flt64_t scale, uint8_t exp);

// Autocorrelation of signal
void FHT_AutoCorrelation_flt32 (flt32_t array[], flt32_t scale, uint8_t exp);
void FHT_AutoCorrelation_flt64 (flt64_t array[], flt64_t scale, uint8_t exp);

// Cross-correlation of signals
void FHT_CrossCorrelation_flt32 (flt32_t target[], const flt32_t source[], flt32_t scale, uint8_t exp);
void FHT_CrossCorrelation_flt64 (flt64_t target[], const flt64_t source[], flt64_t scale, uint8_t exp);

// Convolution of signals
void FHT_Convolution_flt32 (flt32_t target[], const flt32_t source[], flt32_t scale, uint8_t exp);
void FHT_Convolution_flt64 (flt64_t target[], const flt64_t source[], flt64_t scale, uint8_t exp);

// Mixing signals
void FHT_Mix_flt32 (flt32_t target[], const flt32_t source[], flt32_t tscale, flt32_t sscale, uint8_t exp);
void FHT_Mix_flt64 (flt64_t target[], const flt64_t source[], flt64_t tscale, flt64_t sscale, uint8_t exp);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
