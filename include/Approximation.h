/*                                                               Approximation.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                 APPROXIMATION ALGORITHMS FOR EMPIRICAL DATA                  #
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
class Approximation
{
public:

//****************************************************************************//
//      Approximation by power function                                       //
//****************************************************************************//
static bool Power (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool Power (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

//****************************************************************************//
//      Approximation by elementary functions                                 //
//****************************************************************************//

// Linear approximation
static bool Linear (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool Linear (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Square law approximation
static bool Square (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool Square (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Cube law approximation
static bool Cube (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool Cube (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Hyperbolic approximation
static bool Hyperbolic (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool Hyperbolic (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse square law approximation
static bool InverseSquare (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool InverseSquare (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse cube law approximation
static bool InverseCube (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool InverseCube (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Square root approximation
static bool Sqrt (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool Sqrt (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Exponential approximation
static bool Exp (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool Exp (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Logarithmic approximation
static bool Log (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool Log (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Hyperbolic sine approximation
static bool SinH (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool SinH (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Hyperbolic cosine approximation
static bool CosH (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool CosH (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse hyperbolic sine approximation
static bool ArcSinH (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool ArcSinH (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse hyperbolic cosine approximation
static bool ArcCosH (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool ArcCosH (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

//****************************************************************************//
//      Approximation by polynomial functions                                 //
//****************************************************************************//

// Polynomial approximation
static bool Polynomial (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool Polynomial (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Square root approximation
static bool PolySqrt (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool PolySqrt (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Exponential approximation
static bool PolyExp (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool PolyExp (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Logarithmic approximation
static bool PolyLog (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool PolyLog (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Hyperbolic sine approximation
static bool PolySinH (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool PolySinH (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Hyperbolic cosine approximation
static bool PolyCosH (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool PolyCosH (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse hyperbolic sine approximation
static bool PolyArcSinH (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool PolyArcSinH (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse hyperbolic cosine approximation
static bool PolyArcCosH (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool PolyArcCosH (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

//****************************************************************************//
//      Approximation by rational functions                                   //
//****************************************************************************//

// Rational function approximation
static bool Rational (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool Rational (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Subrational function approximation
static bool Subrational (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
static bool Subrational (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Approximation by power function                                       //
//****************************************************************************//
bool Approximation_Power_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_Power_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

//****************************************************************************//
//      Approximation by elementary functions                                 //
//****************************************************************************//

// Linear approximation
bool Approximation_Linear_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_Linear_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Square law approximation
bool Approximation_Square_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_Square_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Cube law approximation
bool Approximation_Cube_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_Cube_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Hyperbolic approximation
bool Approximation_Hyperbolic_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_Hyperbolic_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse square law approximation
bool Approximation_InverseSquare_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_InverseSquare_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse cube law approximation
bool Approximation_InverseCube_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_InverseCube_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Square root approximation
bool Approximation_Sqrt_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_Sqrt_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Exponential approximation
bool Approximation_Exp_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_Exp_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Logarithmic approximation
bool Approximation_Log_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_Log_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Hyperbolic sine approximation
bool Approximation_SinH_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_SinH_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Hyperbolic cosine approximation
bool Approximation_CosH_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_CosH_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse hyperbolic sine approximation
bool Approximation_ArcSinH_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_ArcSinH_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse hyperbolic cosine approximation
bool Approximation_ArcCosH_flt32 (flt32_t coeff[], flt32_t matrix[], flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_ArcCosH_flt64 (flt64_t coeff[], flt64_t matrix[], flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

//****************************************************************************//
//      Approximation by polynomial functions                                 //
//****************************************************************************//

// Polynomial approximation
bool Approximation_Polynomial_flt32 (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_Polynomial_flt64 (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Square root approximation
bool Approximation_PolySqrt_flt32 (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_PolySqrt_flt64 (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Exponential approximation
bool Approximation_PolyExp_flt32 (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_PolyExp_flt64 (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Logarithmic approximation
bool Approximation_PolyLog_flt32 (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_PolyLog_flt64 (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Hyperbolic sine approximation
bool Approximation_PolySinH_flt32 (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_PolySinH_flt64 (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Hyperbolic cosine approximation
bool Approximation_PolyCosH_flt32 (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_PolyCosH_flt64 (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse hyperbolic sine approximation
bool Approximation_PolyArcSinH_flt32 (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_PolyArcSinH_flt64 (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Inverse hyperbolic cosine approximation
bool Approximation_PolyArcCosH_flt32 (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_PolyArcCosH_flt64 (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

//****************************************************************************//
//      Approximation by rational functions                                   //
//****************************************************************************//

// Rational function approximation
bool Approximation_Rational_flt32 (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_Rational_flt64 (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

// Subrational function approximation
bool Approximation_Subrational_flt32 (flt32_t coeff[], flt32_t matrix[], size_t degree, flt32_t args[], flt32_t vals[], flt32_t temp[], size_t size);
bool Approximation_Subrational_flt64 (flt64_t coeff[], flt64_t matrix[], size_t degree, flt64_t args[], flt64_t vals[], flt64_t temp[], size_t size);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
