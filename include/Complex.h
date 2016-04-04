/*                                                                     Complex.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                           COMPLEX NUMBER FUNCTIONS                           #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

//****************************************************************************//
//      Complex number structure (32-bit)                                     //
//****************************************************************************//
struct cmplx32_t
{
	flt32_t	re;		// Real part
	flt32_t	im;		// Imaginary part
};

//****************************************************************************//
//      Complex number structure (64-bit)                                     //
//****************************************************************************//
struct cmplx64_t
{
	flt64_t	re;		// Real part
	flt64_t	im;		// Imaginary part
};

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
class Complex
{
public:

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

// Negative value
static void Neg (cmplx32_t *number);
static void Neg (cmplx64_t *number);

// Complex conjugate value
static void Conj (cmplx32_t *number);
static void Conj (cmplx64_t *number);

// Square root
static void Sqrt (cmplx32_t *number);
static void Sqrt (cmplx64_t *number);

// Square value
static void Sqr (cmplx32_t *number);
static void Sqr (cmplx64_t *number);

// Inverse value
static void Inverse (cmplx32_t *number);
static void Inverse (cmplx64_t *number);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition
static void Add (cmplx32_t *target, const cmplx32_t *source);
static void Add (cmplx64_t *target, const cmplx64_t *source);

// Subtraction
static void Sub (cmplx32_t *target, const cmplx32_t *source);
static void Sub (cmplx64_t *target, const cmplx64_t *source);

// Multiplication
static void Mul (cmplx32_t *target, const cmplx32_t *source);
static void Mul (cmplx64_t *target, const cmplx64_t *source);

// Division
static void Div (cmplx32_t *target, const cmplx32_t *source);
static void Div (cmplx64_t *target, const cmplx64_t *source);

//****************************************************************************//
//      Complex number properties                                             //
//****************************************************************************//

// Magnitude value
static flt32_t Magnitude (const cmplx32_t *number);
static flt64_t Magnitude (const cmplx64_t *number);

// Argument value
static flt32_t Argument (const cmplx32_t *number);
static flt64_t Argument (const cmplx64_t *number);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero number
static bool IsZero (const cmplx32_t *number);
static bool IsZero (const cmplx64_t *number);

// Check for equality of the numbers
static bool IsEqual (const cmplx32_t *target, const cmplx32_t *source);
static bool IsEqual (const cmplx64_t *target, const cmplx64_t *source);

// Check for negativity of the numbers
static bool IsNeg (const cmplx32_t *target, const cmplx32_t *source);
static bool IsNeg (const cmplx64_t *target, const cmplx64_t *source);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

// Negative value
void Complex_Neg_flt32 (struct cmplx32_t *number);
void Complex_Neg_flt64 (struct cmplx64_t *number);

// Complex conjugate value
void Complex_Conj_flt32 (struct cmplx32_t *number);
void Complex_Conj_flt64 (struct cmplx64_t *number);

// Square root
void Complex_Sqrt_flt32 (struct cmplx32_t *number);
void Complex_Sqrt_flt64 (struct cmplx64_t *number);

// Square value
void Complex_Sqr_flt32 (struct cmplx32_t *number);
void Complex_Sqr_flt64 (struct cmplx64_t *number);

// Inverse value
void Complex_Inverse_flt32 (struct cmplx32_t *number);
void Complex_Inverse_flt64 (struct cmplx64_t *number);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition
void Complex_Add_flt32 (struct cmplx32_t *target, const struct cmplx32_t *source);
void Complex_Add_flt64 (struct cmplx64_t *target, const struct cmplx64_t *source);

// Subtraction
void Complex_Sub_flt32 (struct cmplx32_t *target, const struct cmplx32_t *source);
void Complex_Sub_flt64 (struct cmplx64_t *target, const struct cmplx64_t *source);

// Multiplication
void Complex_Mul_flt32 (struct cmplx32_t *target, const struct cmplx32_t *source);
void Complex_Mul_flt64 (struct cmplx64_t *target, const struct cmplx64_t *source);

// Division
void Complex_Div_flt32 (struct cmplx32_t *target, const struct cmplx32_t *source);
void Complex_Div_flt64 (struct cmplx64_t *target, const struct cmplx64_t *source);

//****************************************************************************//
//      Complex number properties                                             //
//****************************************************************************//

// Magnitude value
flt32_t Complex_Magnitude_flt32 (const struct cmplx32_t *number);
flt64_t Complex_Magnitude_flt64 (const struct cmplx64_t *number);

// Argument value
flt32_t Complex_Argument_flt32 (const struct cmplx32_t *number);
flt64_t Complex_Argument_flt64 (const struct cmplx64_t *number);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero number
bool Complex_IsZero_flt32 (const struct cmplx32_t *number);
bool Complex_IsZero_flt64 (const struct cmplx64_t *number);

// Check for equality of the numbers
bool Complex_IsEqual_flt32 (const struct cmplx32_t *target, const struct cmplx32_t *source);
bool Complex_IsEqual_flt64 (const struct cmplx64_t *target, const struct cmplx64_t *source);

// Check for negativity of the numbers
bool Complex_IsNeg_flt32 (const struct cmplx32_t *target, const struct cmplx32_t *source);
bool Complex_IsNeg_flt64 (const struct cmplx64_t *target, const struct cmplx64_t *source);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
