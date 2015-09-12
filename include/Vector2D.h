/*                                                                    Vector2D.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                     FUNCTIONS TO OPERATE WITH 2D VECTORS                     #
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
//      2D vector class (32-bit)                                              //
//****************************************************************************//
class Vector2D32
{
public:
	flt32_t	x;		// X coordinate
	flt32_t	y;		// Y coordinate

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Normalization (direction cosines)                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Normalize (void);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Reflection of vector                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Reflection through the origin
void ReflectOrigin (void);

// Reflection through the X axis
void ReflectX (void);

// Reflection through the Y axis
void ReflectY (void);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition of vectors
void Add (const Vector2D32 *source);

// Subtraction of vectors
void Sub (const Vector2D32 *source);

// Multiplication by scalar value
void Mul (flt32_t value);

// Division by scalar value
void Div (flt32_t value);

//****************************************************************************//
//      Rotation of vector                                                    //
//****************************************************************************//
void Rotate (flt32_t angle);

//****************************************************************************//
//      Shearing of vector                                                    //
//****************************************************************************//

// Shearing parallel to the X axis
void ShearX (flt32_t value);

// Shearing parallel to the Y axis
void ShearY (flt32_t value);

//****************************************************************************//
//      Scaling of vector                                                     //
//****************************************************************************//
void Scale (const Vector2D32 *source);

//****************************************************************************//
//      Scalar product                                                        //
//****************************************************************************//
flt32_t ScalarProduct (const Vector2D32 *source) const;

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//
flt32_t Abs (void) const;

//****************************************************************************//
//      Cosine value of angle between the vectors                             //
//****************************************************************************//
flt32_t Cos (const Vector2D32 *source) const;

//****************************************************************************//
//      Projection of the vector to another vector                            //
//****************************************************************************//
flt32_t Projection (const Vector2D32 *source) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero vector
bool IsZero (void) const;

// Check for equality of the vectors
bool IsEqual (const Vector2D32 *source) const;

// Check for negativity of the vectors
bool IsNeg (const Vector2D32 *source) const;

// Check for collinearity of the vectors
bool IsCollinear (const Vector2D32 *source) const;

// Check for orthogonality of the vectors
bool IsOrthogonal (const Vector2D32 *source) const;
};

//****************************************************************************//
//      2D vector class (64-bit)                                              //
//****************************************************************************//
class Vector2D64
{
public:
	flt64_t	x;		// X coordinate
	flt64_t	y;		// Y coordinate

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Normalization (direction cosines)                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Normalize (void);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Reflection of vector                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Reflection through the origin
void ReflectOrigin (void);

// Reflection through the X axis
void ReflectX (void);

// Reflection through the Y axis
void ReflectY (void);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition of vectors
void Add (const Vector2D64 *source);

// Subtraction of vectors
void Sub (const Vector2D64 *source);

// Multiplication by scalar value
void Mul (flt64_t value);

// Division by scalar value
void Div (flt64_t value);

//****************************************************************************//
//      Rotation of vector                                                    //
//****************************************************************************//
void Rotate (flt64_t angle);

//****************************************************************************//
//      Shearing of vector                                                    //
//****************************************************************************//

// Shearing parallel to the X axis
void ShearX (flt64_t value);

// Shearing parallel to the Y axis
void ShearY (flt64_t value);

//****************************************************************************//
//      Scaling of vector                                                     //
//****************************************************************************//
void Scale (const Vector2D64 *source);

//****************************************************************************//
//      Scalar product                                                        //
//****************************************************************************//
flt64_t ScalarProduct (const Vector2D64 *source) const;

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//
flt64_t Abs (void) const;

//****************************************************************************//
//      Cosine value of angle between the vectors                             //
//****************************************************************************//
flt64_t Cos (const Vector2D64 *source) const;

//****************************************************************************//
//      Projection of the vector to another vector                            //
//****************************************************************************//
flt64_t Projection (const Vector2D64 *source) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero vector
bool IsZero (void) const;

// Check for equality of the vectors
bool IsEqual (const Vector2D64 *source) const;

// Check for negativity of the vectors
bool IsNeg (const Vector2D64 *source) const;

// Check for collinearity of the vectors
bool IsCollinear (const Vector2D64 *source) const;

// Check for orthogonality of the vectors
bool IsOrthogonal (const Vector2D64 *source) const;
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      2D vector structure (32-bit)                                          //
//****************************************************************************//
struct Vector2D32
{
	flt32_t	x;		// X coordinate
	flt32_t	y;		// Y coordinate
};

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Normalization (direction cosines)                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Vector2D32_Normalize (struct Vector2D32 *vector);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Reflection of vector                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Reflection through the origin
void Vector2D32_ReflectOrigin (struct Vector2D32 *vector);

// Reflection through the X axis
void Vector2D32_ReflectX (struct Vector2D32 *vector);

// Reflection through the Y axis
void Vector2D32_ReflectY (struct Vector2D32 *vector);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition of vectors
void Vector2D32_Add (struct Vector2D32 *target, const struct Vector2D32 *source);

// Subtraction of vectors
void Vector2D32_Sub (struct Vector2D32 *target, const struct Vector2D32 *source);

// Multiplication by scalar value
void Vector2D32_Mul (struct Vector2D32 *vector, flt32_t value);

// Division by scalar value
void Vector2D32_Div (struct Vector2D32 *vector, flt32_t value);

//****************************************************************************//
//      Rotation of vector                                                    //
//****************************************************************************//
void Vector2D32_Rotate (struct Vector2D32 *vector, flt32_t angle);

//****************************************************************************//
//      Shearing of vector                                                    //
//****************************************************************************//

// Shearing parallel to the X axis
void Vector2D32_ShearX (struct Vector2D32 *vector, flt32_t value);

// Shearing parallel to the Y axis
void Vector2D32_ShearY (struct Vector2D32 *vector, flt32_t value);

//****************************************************************************//
//      Scaling of vector                                                     //
//****************************************************************************//
void Vector2D32_Scale (struct Vector2D32 *target, const struct Vector2D32 *source);

//****************************************************************************//
//      Scalar product                                                        //
//****************************************************************************//
flt32_t Vector2D32_ScalarProduct (const struct Vector2D32 *target, const struct Vector2D32 *source);

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//
flt32_t Vector2D32_Abs (const struct Vector2D32 *vector);

//****************************************************************************//
//      Cosine value of angle between the vectors                             //
//****************************************************************************//
flt32_t Vector2D32_Cos (const struct Vector2D32 *target, const struct Vector2D32 *source);

//****************************************************************************//
//      Projection of the vector to another vector                            //
//****************************************************************************//
flt32_t Vector2D32_Projection (const struct Vector2D32 *target, const struct Vector2D32 *source);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero vector
bool Vector2D32_IsZero (const struct Vector2D32 *vector);

// Check for equality of the vectors
bool Vector2D32_IsEqual (const struct Vector2D32 *vector, const struct Vector2D32 *source);

// Check for negativity of the vectors
bool Vector2D32_IsNeg (const struct Vector2D32 *vector, const struct Vector2D32 *source);

// Check for collinearity of the vectors
bool Vector2D32_IsCollinear (const struct Vector2D32 *vector, const struct Vector2D32 *source);

// Check for orthogonality of the vectors
bool Vector2D32_IsOrthogonal (const struct Vector2D32 *vector, const struct Vector2D32 *source);

//****************************************************************************//
//      2D vector structure (64-bit)                                          //
//****************************************************************************//
struct Vector2D64
{
	flt64_t	x;		// X coordinate
	flt64_t	y;		// Y coordinate
};

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Normalization (direction cosines)                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Vector2D64_Normalize (struct Vector2D64 *vector);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Reflection of vector                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Reflection through the origin
void Vector2D64_ReflectOrigin (struct Vector2D64 *vector);

// Reflection through the X axis
void Vector2D64_ReflectX (struct Vector2D64 *vector);

// Reflection through the Y axis
void Vector2D64_ReflectY (struct Vector2D64 *vector);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition of vectors
void Vector2D64_Add (struct Vector2D64 *target, const struct Vector2D64 *source);

// Subtraction of vectors
void Vector2D64_Sub (struct Vector2D64 *target, const struct Vector2D64 *source);

// Multiplication by scalar value
void Vector2D64_Mul (struct Vector2D64 *vector, flt64_t value);

// Division by scalar value
void Vector2D64_Div (struct Vector2D64 *vector, flt64_t value);

//****************************************************************************//
//      Rotation of vector                                                    //
//****************************************************************************//
void Vector2D64_Rotate (struct Vector2D64 *vector, flt64_t angle);

//****************************************************************************//
//      Shearing of vector                                                    //
//****************************************************************************//

// Shearing parallel to the X axis
void Vector2D64_ShearX (struct Vector2D64 *vector, flt64_t value);

// Shearing parallel to the Y axis
void Vector2D64_ShearY (struct Vector2D64 *vector, flt64_t value);

//****************************************************************************//
//      Scaling of vector                                                     //
//****************************************************************************//
void Vector2D64_Scale (struct Vector2D64 *target, const struct Vector2D64 *source);

//****************************************************************************//
//      Scalar product                                                        //
//****************************************************************************//
flt64_t Vector2D64_ScalarProduct (const struct Vector2D64 *target, const struct Vector2D64 *source);

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//
flt64_t Vector2D64_Abs (const struct Vector2D64 *vector);

//****************************************************************************//
//      Cosine value of angle between the vectors                             //
//****************************************************************************//
flt64_t Vector2D64_Cos (const struct Vector2D64 *target, const struct Vector2D64 *source);

//****************************************************************************//
//      Projection of the vector to another vector                            //
//****************************************************************************//
flt64_t Vector2D64_Projection (const struct Vector2D64 *target, const struct Vector2D64 *source);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero vector
bool Vector2D64_IsZero (const struct Vector2D64 *vector);

// Check for equality of the vectors
bool Vector2D64_IsEqual (const struct Vector2D64 *vector, const struct Vector2D64 *source);

// Check for negativity of the vectors
bool Vector2D64_IsNeg (const struct Vector2D64 *vector, const struct Vector2D64 *source);

// Check for collinearity of the vectors
bool Vector2D64_IsCollinear (const struct Vector2D64 *vector, const struct Vector2D64 *source);

// Check for orthogonality of the vectors
bool Vector2D64_IsOrthogonal (const struct Vector2D64 *vector, const struct Vector2D64 *source);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
