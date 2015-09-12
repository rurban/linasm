/*                                                                      Matrix.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                              MATRIX OPERATIONS                               #
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
class Matrix
{
public:

//****************************************************************************//
//      Initialization                                                        //
//****************************************************************************//

// Initialization of rectangle matrix
static void InitRectangle (flt32_t matrix[], size_t rows, size_t cols, flt32_t value);
static void InitRectangle (flt64_t matrix[], size_t rows, size_t cols, flt64_t value);

// Initialization of diagonal matrix
static void InitDiagonal (flt32_t matrix[], size_t order, flt32_t value);
static void InitDiagonal (flt64_t matrix[], size_t order, flt64_t value);

//****************************************************************************//
//      Copying                                                               //
//****************************************************************************//
static void Copy (flt32_t target[], const flt32_t source[], size_t rows, size_t cols);
static void Copy (flt64_t target[], const flt64_t source[], size_t rows, size_t cols);

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

// Negative matrix
static void Neg (flt32_t matrix[], size_t rows, size_t cols);
static void Neg (flt64_t matrix[], size_t rows, size_t cols);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition
static void Add (flt32_t target[], const flt32_t source[], size_t rows, size_t cols);
static void Add (flt64_t target[], const flt64_t source[], size_t rows, size_t cols);

// Subtraction
static void Sub (flt32_t target[], const flt32_t source[], size_t rows, size_t cols);
static void Sub (flt64_t target[], const flt64_t source[], size_t rows, size_t cols);

// Multiplication by scalar value
static void Mul (flt32_t matrix[], size_t rows, size_t cols, flt32_t value);
static void Mul (flt64_t matrix[], size_t rows, size_t cols, flt64_t value);

// Division by scalar value
static void Div (flt32_t matrix[], size_t rows, size_t cols, flt32_t value);
static void Div (flt64_t matrix[], size_t rows, size_t cols, flt64_t value);

// Multiplication by matrix
static void MulMatrix (flt32_t target[], const flt32_t source1[], const flt32_t source2[], size_t rows, size_t cols, size_t k);
static void MulMatrix (flt64_t target[], const flt64_t source1[], const flt64_t source2[], size_t rows, size_t cols, size_t k);

//****************************************************************************//
//      Transposition                                                         //
//****************************************************************************//
static void Transpose (flt32_t target[], const flt32_t source[], size_t rows, size_t cols);
static void Transpose (flt64_t target[], const flt64_t source[], size_t rows, size_t cols);

//****************************************************************************//
//      Inverse matrix                                                        //
//****************************************************************************//

// Inverse matrix through upper triangular matrix
static bool InverseUp (flt32_t target[], flt32_t source[], size_t order);
static bool InverseUp (flt64_t target[], flt64_t source[], size_t order);

// Inverse matrix through lower triangular matrix
static bool InverseLow (flt32_t target[], flt32_t source[], size_t order);
static bool InverseLow (flt64_t target[], flt64_t source[], size_t order);

//****************************************************************************//
//      Determinant                                                           //
//****************************************************************************//

//============================================================================//
//      Determinant of diagonal matrix                                        //
//============================================================================//
static flt32_t DeterminantDiagonal (const flt32_t matrix[], size_t order);
static flt64_t DeterminantDiagonal (const flt64_t matrix[], size_t order);

//============================================================================//
//      Determinant of triangular matrix                                      //
//============================================================================//
static flt32_t DeterminantTriangular (const flt32_t matrix[], size_t order);
static flt64_t DeterminantTriangular (const flt64_t matrix[], size_t order);

//============================================================================//
//      Determinant of square matrix                                          //
//============================================================================//

// Determinant of square matrix through upper triangular matrix
static flt32_t DeterminantSquareUp (flt32_t matrix[], size_t order);
static flt64_t DeterminantSquareUp (flt64_t matrix[], size_t order);

// Determinant of square matrix through lower triangular matrix
static flt32_t DeterminantSquareLow (flt32_t matrix[], size_t order);
static flt64_t DeterminantSquareLow (flt64_t matrix[], size_t order);

//****************************************************************************//
//      Solving of linear system                                              //
//****************************************************************************//

//============================================================================//
//      Gauss elimination                                                     //
//============================================================================//

// Gauss elimination to upper triangular matrix
static bool GaussUp (flt32_t coefficients[], flt32_t matrix[], size_t order);
static bool GaussUp (flt64_t coefficients[], flt64_t matrix[], size_t order);

// Gauss elimination to lower triangular matrix
static bool GaussLow (flt32_t coefficients[], flt32_t matrix[], size_t order);
static bool GaussLow (flt64_t coefficients[], flt64_t matrix[], size_t order);

//============================================================================//
//      Cholesky decomposition                                                //
//============================================================================//

// Cholesky decomposition to upper triangular matrix
static bool CholeskyUp (flt32_t coefficients[], flt32_t matrix[], size_t order);
static bool CholeskyUp (flt64_t coefficients[], flt64_t matrix[], size_t order);

// Cholesky decomposition to lower triangular matrix
static bool CholeskyLow (flt32_t coefficients[], flt32_t matrix[], size_t order);
static bool CholeskyLow (flt64_t coefficients[], flt64_t matrix[], size_t order);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Initialization                                                        //
//****************************************************************************//

// Initialization of rectangle matrix
void Matrix_InitRectangle_flt32 (flt32_t matrix[], size_t rows, size_t cols, flt32_t value);
void Matrix_InitRectangle_flt64 (flt64_t matrix[], size_t rows, size_t cols, flt64_t value);

// Initialization of diagonal matrix
void Matrix_InitDiagonal_flt32 (flt32_t matrix[], size_t order, flt32_t value);
void Matrix_InitDiagonal_flt64 (flt64_t matrix[], size_t order, flt64_t value);

//****************************************************************************//
//      Copying                                                               //
//****************************************************************************//
void Matrix_Copy_flt32 (flt32_t target[], const flt32_t source[], size_t rows, size_t cols);
void Matrix_Copy_flt64 (flt64_t target[], const flt64_t source[], size_t rows, size_t cols);

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

// Negative matrix
void Matrix_Neg_flt32 (flt32_t matrix[], size_t rows, size_t cols);
void Matrix_Neg_flt64 (flt64_t matrix[], size_t rows, size_t cols);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition
void Matrix_Add_flt32 (flt32_t target[], const flt32_t source[], size_t rows, size_t cols);
void Matrix_Add_flt64 (flt64_t target[], const flt64_t source[], size_t rows, size_t cols);

// Subtraction
void Matrix_Sub_flt32 (flt32_t target[], const flt32_t source[], size_t rows, size_t cols);
void Matrix_Sub_flt64 (flt64_t target[], const flt64_t source[], size_t rows, size_t cols);

// Multiplication by scalar value
void Matrix_Mul_flt32 (flt32_t matrix[], size_t rows, size_t cols, flt32_t value);
void Matrix_Mul_flt64 (flt64_t matrix[], size_t rows, size_t cols, flt64_t value);

// Division by scalar value
void Matrix_Div_flt32 (flt32_t matrix[], size_t rows, size_t cols, flt32_t value);
void Matrix_Div_flt64 (flt64_t matrix[], size_t rows, size_t cols, flt64_t value);

// Multiplication by matrix
void Matrix_MulMatrix_flt32 (flt32_t target[], const flt32_t source1[], const flt32_t source2[], size_t rows, size_t cols, size_t k);
void Matrix_MulMatrix_flt64 (flt64_t target[], const flt64_t source1[], const flt64_t source2[], size_t rows, size_t cols, size_t k);

//****************************************************************************//
//      Transposition                                                         //
//****************************************************************************//
void Matrix_Transpose_flt32 (flt32_t target[], const flt32_t source[], size_t rows, size_t cols);
void Matrix_Transpose_flt64 (flt64_t target[], const flt64_t source[], size_t rows, size_t cols);

//****************************************************************************//
//      Inverse matrix                                                        //
//****************************************************************************//

// Inverse matrix through upper triangular matrix
bool Matrix_InverseUp_flt32 (flt32_t target[], flt32_t source[], size_t order);
bool Matrix_InverseUp_flt64 (flt64_t target[], flt64_t source[], size_t order);

// Inverse matrix through lower triangular matrix
bool Matrix_InverseLow_flt32 (flt32_t target[], flt32_t source[], size_t order);
bool Matrix_InverseLow_flt64 (flt64_t target[], flt64_t source[], size_t order);

//****************************************************************************//
//      Determinant                                                           //
//****************************************************************************//

//============================================================================//
//      Determinant of diagonal matrix                                        //
//============================================================================//
flt32_t Matrix_DeterminantDiagonal_flt32 (const flt32_t matrix[], size_t order);
flt64_t Matrix_DeterminantDiagonal_flt64 (const flt64_t matrix[], size_t order);

//============================================================================//
//      Determinant of triangular matrix                                      //
//============================================================================//
flt32_t Matrix_DeterminantTriangular_flt32 (const flt32_t matrix[], size_t order);
flt64_t Matrix_DeterminantTriangular_flt64 (const flt64_t matrix[], size_t order);

//============================================================================//
//      Determinant of square matrix                                          //
//============================================================================//

// Determinant of square matrix through upper triangular matrix
flt32_t Matrix_DeterminantSquareUp_flt32 (flt32_t matrix[], size_t order);
flt64_t Matrix_DeterminantSquareUp_flt64 (flt64_t matrix[], size_t order);

// Determinant of square matrix through lower triangular matrix
flt32_t Matrix_DeterminantSquareLow_flt32 (flt32_t matrix[], size_t order);
flt64_t Matrix_DeterminantSquareLow_flt64 (flt64_t matrix[], size_t order);

//****************************************************************************//
//      Solving of linear system                                              //
//****************************************************************************//

//============================================================================//
//      Gauss elimination                                                     //
//============================================================================//

// Gauss elimination to upper triangular matrix
bool Matrix_GaussUp_flt32 (flt32_t coefficients[], flt32_t matrix[], size_t order);
bool Matrix_GaussUp_flt64 (flt64_t coefficients[], flt64_t matrix[], size_t order);

// Gauss elimination to lower triangular matrix
bool Matrix_GaussLow_flt32 (flt32_t coefficients[], flt32_t matrix[], size_t order);
bool Matrix_GaussLow_flt64 (flt64_t coefficients[], flt64_t matrix[], size_t order);

//============================================================================//
//      Cholesky decomposition                                                //
//============================================================================//

// Cholesky decomposition to upper triangular matrix
bool Matrix_CholeskyUp_flt32 (flt32_t coefficients[], flt32_t matrix[], size_t order);
bool Matrix_CholeskyUp_flt64 (flt64_t coefficients[], flt64_t matrix[], size_t order);

// Cholesky decomposition to lower triangular matrix
bool Matrix_CholeskyLow_flt32 (flt32_t coefficients[], flt32_t matrix[], size_t order);
bool Matrix_CholeskyLow_flt64 (flt64_t coefficients[], flt64_t matrix[], size_t order);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
