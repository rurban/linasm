/*                                                                     Complex.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                           COMPLEX NUMBER FUNCTIONS                           #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2015, Jack Black #
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
//****************************************************************************//
//      Complex number class (32-bit)                                         //
//****************************************************************************//
class Complex32
{
public:
	flt32_t	re;		// Real part
	flt32_t	im;		// Imaginary part

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

// Negative value
void Neg (void);

// Complex conjugate value
void Conj (void);

// Square root
void Sqrt (void);

// Square value
void Sqr (void);

// Inverse value
void Inverse (void);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition
void Add (const Complex32 *source);

// Subtraction
void Sub (const Complex32 *source);

// Multiplication
void Mul (const Complex32 *source);

// Division
void Div (const Complex32 *source);

//****************************************************************************//
//      Complex number properties                                             //
//****************************************************************************//

// Magnitude value
flt32_t Magnitude (void) const;

// Argument value
flt32_t Argument (void) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero number
bool IsZero (void) const;

// Check for equality of the numbers
bool IsEqual (const Complex32 *source) const;

// Check for negativity of the numbers
bool IsNeg (const Complex32 *source) const;
};

//****************************************************************************//
//      Complex number class (64-bit)                                         //
//****************************************************************************//
class Complex64
{
public:
	flt64_t	re;		// Real part
	flt64_t	im;		// Imaginary part

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

// Negative value
void Neg (void);

// Complex conjugate value
void Conj (void);

// Square root
void Sqrt (void);

// Square value
void Sqr (void);

// Inverse value
void Inverse (void);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition
void Add (const Complex64 *source);

// Subtraction
void Sub (const Complex64 *source);

// Multiplication
void Mul (const Complex64 *source);

// Division
void Div (const Complex64 *source);

//****************************************************************************//
//      Complex number properties                                             //
//****************************************************************************//

// Magnitude value
flt64_t Magnitude (void) const;

// Argument value
flt64_t Argument (void) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero number
bool IsZero (void) const;

// Check for equality of the numbers
bool IsEqual (const Complex64 *source) const;

// Check for negativity of the numbers
bool IsNeg (const Complex64 *source) const;
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Complex number structure (32-bit)                                     //
//****************************************************************************//
struct Complex32
{
	flt32_t	re;		// Real part
	flt32_t	im;		// Imaginary part
};

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

// Negative value
void Complex32_Neg (struct Complex32 *number);

// Complex conjugate value
void Complex32_Conj (struct Complex32 *number);

// Square root
void Complex32_Sqrt (struct Complex32 *number);

// Square value
void Complex32_Sqr (struct Complex32 *number);

// Inverse value
void Complex32_Inverse (struct Complex32 *number);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition
void Complex32_Add (struct Complex32 *target, const struct Complex32 *source);

// Subtraction
void Complex32_Sub (struct Complex32 *target, const struct Complex32 *source);

// Multiplication
void Complex32_Mul (struct Complex32 *target, const struct Complex32 *source);

// Division
void Complex32_Div (struct Complex32 *target, const struct Complex32 *source);

//****************************************************************************//
//      Complex number properties                                             //
//****************************************************************************//

// Magnitude value
flt32_t Complex32_Magnitude (const struct Complex32 *number);

// Argument value
flt32_t Complex32_Argument (const struct Complex32 *number);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero number
bool Complex32_IsZero (const struct Complex32 *number);

// Check for equality of the numbers
bool Complex32_IsEqual (const struct Complex32 *number, const struct Complex32 *source);

// Check for negativity of the numbers
bool Complex32_IsNeg (const struct Complex32 *number, const struct Complex32 *source);

//****************************************************************************//
//      Complex number structure (64-bit)                                     //
//****************************************************************************//
struct Complex64
{
	flt64_t	re;		// Real part
	flt64_t	im;		// Imaginary part
};

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

// Negative value
void Complex64_Neg (struct Complex64 *number);

// Complex conjugate value
void Complex64_Conj (struct Complex64 *number);

// Square root
void Complex64_Sqrt (struct Complex64 *number);

// Square value
void Complex64_Sqr (struct Complex64 *number);

// Inverse value
void Complex64_Inverse (struct Complex64 *number);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition
void Complex64_Add (struct Complex64 *target, const struct Complex64 *source);

// Subtraction
void Complex64_Sub (struct Complex64 *target, const struct Complex64 *source);

// Multiplication
void Complex64_Mul (struct Complex64 *target, const struct Complex64 *source);

// Division
void Complex64_Div (struct Complex64 *target, const struct Complex64 *source);

//****************************************************************************//
//      Complex number properties                                             //
//****************************************************************************//

// Magnitude value
flt64_t Complex64_Magnitude (const struct Complex64 *number);

// Argument value
flt64_t Complex64_Argument (const struct Complex64 *number);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero number
bool Complex64_IsZero (const struct Complex64 *number);

// Check for equality of the numbers
bool Complex64_IsEqual (const struct Complex64 *number, const struct Complex64 *source);

// Check for negativity of the numbers
bool Complex64_IsNeg (const struct Complex64 *number, const struct Complex64 *source);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
