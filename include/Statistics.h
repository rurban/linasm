/*                                                                  Statistics.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                      WIDELY USED STATISTICAL FUNCTIONS                       #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2012, Jack Black #
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
class Statistics
{
public:

//****************************************************************************//
//      Measures of location                                                  //
//****************************************************************************//

//============================================================================//
//      Mean                                                                  //
//============================================================================//
static flt32_t Mean (const flt32_t array[], size_t size);
static flt64_t Mean (const flt64_t array[], size_t size);

//============================================================================//
//      Median                                                                //
//============================================================================//

// Unsigned integer types
static uint8_t Median (uint8_t array[], size_t size);
static uint16_t Median (uint16_t array[], size_t size);
static uint32_t Median (uint32_t array[], size_t size);
static uint64_t Median (uint64_t array[], size_t size);

// Signed integer types
static sint8_t Median (sint8_t array[], size_t size);
static sint16_t Median (sint16_t array[], size_t size);
static sint32_t Median (sint32_t array[], size_t size);
static sint64_t Median (sint64_t array[], size_t size);

// Floating-point types
static flt32_t Median (flt32_t array[], size_t size);
static flt64_t Median (flt64_t array[], size_t size);

// Other types
static size_t Median (size_t array[], size_t size);

//============================================================================//
//      Lower quartile                                                        //
//============================================================================//

// Unsigned integer types
static uint8_t LowerQuartile (uint8_t array[], size_t size);
static uint16_t LowerQuartile (uint16_t array[], size_t size);
static uint32_t LowerQuartile (uint32_t array[], size_t size);
static uint64_t LowerQuartile (uint64_t array[], size_t size);

// Signed integer types
static sint8_t LowerQuartile (sint8_t array[], size_t size);
static sint16_t LowerQuartile (sint16_t array[], size_t size);
static sint32_t LowerQuartile (sint32_t array[], size_t size);
static sint64_t LowerQuartile (sint64_t array[], size_t size);

// Floating-point types
static flt32_t LowerQuartile (flt32_t array[], size_t size);
static flt64_t LowerQuartile (flt64_t array[], size_t size);

// Other types
static size_t LowerQuartile (size_t array[], size_t size);

//============================================================================//
//      Upper quartile                                                        //
//============================================================================//

// Unsigned integer types
static uint8_t UpperQuartile (uint8_t array[], size_t size);
static uint16_t UpperQuartile (uint16_t array[], size_t size);
static uint32_t UpperQuartile (uint32_t array[], size_t size);
static uint64_t UpperQuartile (uint64_t array[], size_t size);

// Signed integer types
static sint8_t UpperQuartile (sint8_t array[], size_t size);
static sint16_t UpperQuartile (sint16_t array[], size_t size);
static sint32_t UpperQuartile (sint32_t array[], size_t size);
static sint64_t UpperQuartile (sint64_t array[], size_t size);

// Floating-point types
static flt32_t UpperQuartile (flt32_t array[], size_t size);
static flt64_t UpperQuartile (flt64_t array[], size_t size);

// Other types
static size_t UpperQuartile (size_t array[], size_t size);

//============================================================================//
//      Mid-range                                                             //
//============================================================================//
static flt32_t Midrange (const flt32_t array[], size_t size);
static flt64_t Midrange (const flt64_t array[], size_t size);

//****************************************************************************//
//      Measures of variability                                               //
//****************************************************************************//

//============================================================================//
//      Variance                                                              //
//============================================================================//
static flt32_t Variance (const flt32_t array[], size_t size, flt32_t mean);
static flt64_t Variance (const flt64_t array[], size_t size, flt64_t mean);

//============================================================================//
//      Standard deviation                                                    //
//============================================================================//
static flt32_t StandardDeviation (const flt32_t array[], size_t size, flt32_t mean);
static flt64_t StandardDeviation (const flt64_t array[], size_t size, flt64_t mean);

//============================================================================//
//      Absolute deviation                                                    //
//============================================================================//
static flt32_t AbsoluteDeviation (const flt32_t array[], size_t size, flt32_t value);
static flt64_t AbsoluteDeviation (const flt64_t array[], size_t size, flt64_t value);

//============================================================================//
//      Interquartile range                                                   //
//============================================================================//

// Unsigned integer types
static uint8_t InterquartileRange (uint8_t array[], size_t size);
static uint16_t InterquartileRange (uint16_t array[], size_t size);
static uint32_t InterquartileRange (uint32_t array[], size_t size);
static uint64_t InterquartileRange (uint64_t array[], size_t size);

// Signed integer types
static sint8_t InterquartileRange (sint8_t array[], size_t size);
static sint16_t InterquartileRange (sint16_t array[], size_t size);
static sint32_t InterquartileRange (sint32_t array[], size_t size);
static sint64_t InterquartileRange (sint64_t array[], size_t size);

// Floating-point types
static flt32_t InterquartileRange (flt32_t array[], size_t size);
static flt64_t InterquartileRange (flt64_t array[], size_t size);

// Other types
static size_t InterquartileRange (size_t array[], size_t size);

//============================================================================//
//      Range                                                                 //
//============================================================================//
static flt32_t Range (const flt32_t array[], size_t size);
static flt64_t Range (const flt64_t array[], size_t size);

//****************************************************************************//
//      Measures of shape                                                     //
//****************************************************************************//

// Skewness
static flt32_t Skewness (const flt32_t array[], size_t size, flt32_t mean);
static flt64_t Skewness (const flt64_t array[], size_t size, flt64_t mean);

// Kurtosis
static flt32_t Kurtosis (const flt32_t array[], size_t size, flt32_t mean);
static flt64_t Kurtosis (const flt64_t array[], size_t size, flt64_t mean);

//****************************************************************************//
//      Other functions                                                       //
//****************************************************************************//

// Covariance
static flt32_t Covariance (const flt32_t arr1[], flt32_t mean1, const flt32_t arr2[], flt32_t mean2, size_t size);
static flt64_t Covariance (const flt64_t arr1[], flt64_t mean1, const flt64_t arr2[], flt64_t mean2, size_t size);

// Correlation
static flt32_t Correlation (const flt32_t arr1[], flt32_t mean1, const flt32_t arr2[], flt32_t mean2, size_t size);
static flt64_t Correlation (const flt64_t arr1[], flt64_t mean1, const flt64_t arr2[], flt64_t mean2, size_t size);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Measures of location                                                  //
//****************************************************************************//

//============================================================================//
//      Mean                                                                  //
//============================================================================//
flt32_t Statistics_Mean_flt32 (const flt32_t array[], size_t size);
flt64_t Statistics_Mean_flt64 (const flt64_t array[], size_t size);

//============================================================================//
//      Median                                                                //
//============================================================================//

// Unsigned integer types
uint8_t Statistics_Median_uint8 (uint8_t array[], size_t size);
uint16_t Statistics_Median_uint16 (uint16_t array[], size_t size);
uint32_t Statistics_Median_uint32 (uint32_t array[], size_t size);
uint64_t Statistics_Median_uint64 (uint64_t array[], size_t size);

// Signed integer types
sint8_t Statistics_Median_sint8 (sint8_t array[], size_t size);
sint16_t Statistics_Median_sint16 (sint16_t array[], size_t size);
sint32_t Statistics_Median_sint32 (sint32_t array[], size_t size);
sint64_t Statistics_Median_sint64 (sint64_t array[], size_t size);

// Floating-point types
flt32_t Statistics_Median_flt32 (flt32_t array[], size_t size);
flt64_t Statistics_Median_flt64 (flt64_t array[], size_t size);

// Other types
size_t Statistics_Median_size (size_t array[], size_t size);

//============================================================================//
//      Lower quartile                                                        //
//============================================================================//

// Unsigned integer types
uint8_t Statistics_LowerQuartile_uint8 (uint8_t array[], size_t size);
uint16_t Statistics_LowerQuartile_uint16 (uint16_t array[], size_t size);
uint32_t Statistics_LowerQuartile_uint32 (uint32_t array[], size_t size);
uint64_t Statistics_LowerQuartile_uint64 (uint64_t array[], size_t size);

// Signed integer types
sint8_t Statistics_LowerQuartile_sint8 (sint8_t array[], size_t size);
sint16_t Statistics_LowerQuartile_sint16 (sint16_t array[], size_t size);
sint32_t Statistics_LowerQuartile_sint32 (sint32_t array[], size_t size);
sint64_t Statistics_LowerQuartile_sint64 (sint64_t array[], size_t size);

// Floating-point types
flt32_t Statistics_LowerQuartile_flt32 (flt32_t array[], size_t size);
flt64_t Statistics_LowerQuartile_flt64 (flt64_t array[], size_t size);

// Other types
size_t Statistics_LowerQuartile_size (size_t array[], size_t size);

//============================================================================//
//      Upper quartile                                                        //
//============================================================================//

// Unsigned integer types
uint8_t Statistics_UpperQuartile_uint8 (uint8_t array[], size_t size);
uint16_t Statistics_UpperQuartile_uint16 (uint16_t array[], size_t size);
uint32_t Statistics_UpperQuartile_uint32 (uint32_t array[], size_t size);
uint64_t Statistics_UpperQuartile_uint64 (uint64_t array[], size_t size);

// Signed integer types
sint8_t Statistics_UpperQuartile_sint8 (sint8_t array[], size_t size);
sint16_t Statistics_UpperQuartile_sint16 (sint16_t array[], size_t size);
sint32_t Statistics_UpperQuartile_sint32 (sint32_t array[], size_t size);
sint64_t Statistics_UpperQuartile_sint64 (sint64_t array[], size_t size);

// Floating-point types
flt32_t Statistics_UpperQuartile_flt32 (flt32_t array[], size_t size);
flt64_t Statistics_UpperQuartile_flt64 (flt64_t array[], size_t size);

// Other types
size_t Statistics_UpperQuartile_size (size_t array[], size_t size);

//============================================================================//
//      Mid-range                                                             //
//============================================================================//
flt32_t Statistics_Midrange_flt32 (const flt32_t array[], size_t size);
flt64_t Statistics_Midrange_flt64 (const flt64_t array[], size_t size);

//****************************************************************************//
//      Measures of variability                                               //
//****************************************************************************//

//============================================================================//
//      Variance                                                              //
//============================================================================//
flt32_t Statistics_Variance_flt32 (const flt32_t array[], size_t size, flt32_t mean);
flt64_t Statistics_Variance_flt64 (const flt64_t array[], size_t size, flt64_t mean);

//============================================================================//
//      Standard deviation                                                    //
//============================================================================//
flt32_t Statistics_StandardDeviation_flt32 (const flt32_t array[], size_t size, flt32_t mean);
flt64_t Statistics_StandardDeviation_flt64 (const flt64_t array[], size_t size, flt64_t mean);

//============================================================================//
//      Absolute deviation                                                    //
//============================================================================//
flt32_t Statistics_AbsoluteDeviation_flt32 (const flt32_t array[], size_t size, flt32_t value);
flt64_t Statistics_AbsoluteDeviation_flt64 (const flt64_t array[], size_t size, flt64_t value);

//============================================================================//
//      Interquartile range                                                   //
//============================================================================//

// Unsigned integer types
uint8_t Statistics_InterquartileRange_uint8 (uint8_t array[], size_t size);
uint16_t Statistics_InterquartileRange_uint16 (uint16_t array[], size_t size);
uint32_t Statistics_InterquartileRange_uint32 (uint32_t array[], size_t size);
uint64_t Statistics_InterquartileRange_uint64 (uint64_t array[], size_t size);

// Signed integer types
sint8_t Statistics_InterquartileRange_sint8 (sint8_t array[], size_t size);
sint16_t Statistics_InterquartileRange_sint16 (sint16_t array[], size_t size);
sint32_t Statistics_InterquartileRange_sint32 (sint32_t array[], size_t size);
sint64_t Statistics_InterquartileRange_sint64 (sint64_t array[], size_t size);

// Floating-point types
flt32_t Statistics_InterquartileRange_flt32 (flt32_t array[], size_t size);
flt64_t Statistics_InterquartileRange_flt64 (flt64_t array[], size_t size);

// Other types
size_t Statistics_InterquartileRange_size (size_t array[], size_t size);

//============================================================================//
//      Range                                                                 //
//============================================================================//
flt32_t Statistics_Range_flt32 (const flt32_t array[], size_t size);
flt64_t Statistics_Range_flt64 (const flt64_t array[], size_t size);

//****************************************************************************//
//      Measures of shape                                                     //
//****************************************************************************//

// Skewness
flt32_t Statistics_Skewness_flt32 (const flt32_t array[], size_t size, flt32_t mean);
flt64_t Statistics_Skewness_flt64 (const flt64_t array[], size_t size, flt64_t mean);

// Kurtosis
flt32_t Statistics_Kurtosis_flt32 (const flt32_t array[], size_t size, flt32_t mean);
flt64_t Statistics_Kurtosis_flt64 (const flt64_t array[], size_t size, flt64_t mean);

//****************************************************************************//
//      Other functions                                                       //
//****************************************************************************//

// Covariance
flt32_t Statistics_Covariance_flt32 (const flt32_t arr1[], flt32_t mean1, const flt32_t arr2[], flt32_t mean2, size_t size);
flt64_t Statistics_Covariance_flt64 (const flt64_t arr1[], flt64_t mean1, const flt64_t arr2[], flt64_t mean2, size_t size);

// Correlation
flt32_t Statistics_Correlation_flt32 (const flt32_t arr1[], flt32_t mean1, const flt32_t arr2[], flt32_t mean2, size_t size);
flt64_t Statistics_Correlation_flt64 (const flt64_t arr1[], flt64_t mean1, const flt64_t arr2[], flt64_t mean2, size_t size);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
