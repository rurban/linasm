/*                                                                    Vector3D.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                     FUNCTIONS TO OPERATE WITH 3D VECTORS                     #
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
//      3D vector class (32-bit)                                              //
//****************************************************************************//
class Vector3D32
{
public:
	flt32_t	x;		// X coordinate
	flt32_t	y;		// Y coordinate
	flt32_t	z;		// Z coordinate

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

// Reflection through the Z axis
void ReflectZ (void);

// Reflection through the YZ plane
void ReflectYZ (void);

// Reflection through the XZ plane
void ReflectXZ (void);

// Reflection through the XY plane
void ReflectXY (void);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition of vectors
void Add (const Vector3D32 *source);

// Subtraction of vectors
void Sub (const Vector3D32 *source);

// Multiplication by scalar value
void Mul (flt32_t value);

// Division by scalar value
void Div (flt32_t value);

//****************************************************************************//
//      Rotation of vector                                                    //
//****************************************************************************//

// Rotation around the X axis
void RotateX (flt32_t angle);

// Rotation around the Y axis
void RotateY (flt32_t angle);

// Rotation around the Z axis
void RotateZ (flt32_t angle);

//****************************************************************************//
//      Shearing of vector                                                    //
//****************************************************************************//

// Shearing parallel to the YZ plane
void ShearYZ (flt32_t value1, flt32_t value2);

// Shearing parallel to the XZ plane
void ShearXZ (flt32_t value1, flt32_t value2);

// Shearing parallel to the XY plane
void ShearXY (flt32_t value1, flt32_t value2);

//****************************************************************************//
//      Scaling of vector                                                     //
//****************************************************************************//
void Scale (const Vector3D32 *source);

//****************************************************************************//
//      Products                                                              //
//****************************************************************************//

// Vector product
void VectorProduct (const Vector3D32 *source);

// Scalar product
flt32_t ScalarProduct (const Vector3D32 *source) const;

// Triple product
flt32_t TripleProduct (const Vector3D32 *source1, const Vector3D32 *source2) const;

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//
flt32_t Abs (void) const;

//****************************************************************************//
//      Cosine value of angle between the vectors                             //
//****************************************************************************//
flt32_t Cos (const Vector3D32 *source) const;

//****************************************************************************//
//      Projection of the vector to another vector                            //
//****************************************************************************//
flt32_t Projection (const Vector3D32 *source) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero vector
bool IsZero (void) const;

// Check for equality of the vectors
bool IsEqual (const Vector3D32 *source) const;

// Check for negativity of the vectors
bool IsNeg (const Vector3D32 *source) const;

// Check for collinearity of the vectors
bool IsCollinear (const Vector3D32 *source) const;

// Check for orthogonality of the vectors
bool IsOrthogonal (const Vector3D32 *source) const;

// Check for coplanarity of the vectors
bool IsCoplanar (const Vector3D32 *source1, const Vector3D32 *source2) const;
};

//****************************************************************************//
//      3D vector class (64-bit)                                              //
//****************************************************************************//
class Vector3D64
{
public:
	flt64_t	x;		// X coordinate
	flt64_t	y;		// Y coordinate
	flt64_t	z;		// Z coordinate

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

// Reflection through the Z axis
void ReflectZ (void);

// Reflection through the YZ plane
void ReflectYZ (void);

// Reflection through the XZ plane
void ReflectXZ (void);

// Reflection through the XY plane
void ReflectXY (void);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition of vectors
void Add (const Vector3D64 *source);

// Subtraction of vectors
void Sub (const Vector3D64 *source);

// Multiplication by scalar value
void Mul (flt64_t value);

// Division by scalar value
void Div (flt64_t value);

//****************************************************************************//
//      Rotation of vector                                                    //
//****************************************************************************//

// Rotation around the X axis
void RotateX (flt64_t angle);

// Rotation around the Y axis
void RotateY (flt64_t angle);

// Rotation around the Z axis
void RotateZ (flt64_t angle);

//****************************************************************************//
//      Shearing of vector                                                    //
//****************************************************************************//

// Shearing parallel to the YZ plane
void ShearYZ (flt64_t value1, flt64_t value2);

// Shearing parallel to the XZ plane
void ShearXZ (flt64_t value1, flt64_t value2);

// Shearing parallel to the XY plane
void ShearXY (flt64_t value1, flt64_t value2);

//****************************************************************************//
//      Scaling of vector                                                     //
//****************************************************************************//
void Scale (const Vector3D64 *source);

//****************************************************************************//
//      Products                                                              //
//****************************************************************************//

// Vector product
void VectorProduct (const Vector3D64 *source);

// Scalar product
flt64_t ScalarProduct (const Vector3D64 *source) const;

// Triple product
flt64_t TripleProduct (const Vector3D64 *source1, const Vector3D64 *source2) const;

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//
flt64_t Abs (void) const;

//****************************************************************************//
//      Cosine value of angle between the vectors                             //
//****************************************************************************//
flt64_t Cos (const Vector3D64 *source) const;

//****************************************************************************//
//      Projection of the vector to another vector                            //
//****************************************************************************//
flt64_t Projection (const Vector3D64 *source) const;

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero vector
bool IsZero (void) const;

// Check for equality of the vectors
bool IsEqual (const Vector3D64 *source) const;

// Check for negativity of the vectors
bool IsNeg (const Vector3D64 *source) const;

// Check for collinearity of the vectors
bool IsCollinear (const Vector3D64 *source) const;

// Check for orthogonality of the vectors
bool IsOrthogonal (const Vector3D64 *source) const;

// Check for coplanarity of the vectors
bool IsCoplanar (const Vector3D64 *source1, const Vector3D64 *source2) const;
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      3D vector structure (32-bit)                                          //
//****************************************************************************//
struct Vector3D32
{
	flt32_t	x;		// X coordinate
	flt32_t	y;		// Y coordinate
	flt32_t	z;		// Z coordinate
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
void Vector3D32_Normalize (struct Vector3D32 *vector);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Reflection of vector                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Reflection through the origin
void Vector3D32_ReflectOrigin (struct Vector3D32 *vector);

// Reflection through the X axis
void Vector3D32_ReflectX (struct Vector3D32 *vector);

// Reflection through the Y axis
void Vector3D32_ReflectY (struct Vector3D32 *vector);

// Reflection through the Z axis
void Vector3D32_ReflectZ (struct Vector3D32 *vector);

// Reflection through the YZ plane
void Vector3D32_ReflectYZ (struct Vector3D32 *vector);

// Reflection through the XZ plane
void Vector3D32_ReflectXZ (struct Vector3D32 *vector);

// Reflection through the XY plane
void Vector3D32_ReflectXY (struct Vector3D32 *vector);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition of vectors
void Vector3D32_Add (struct Vector3D32 *target, const struct Vector3D32 *source);

// Subtraction of vectors
void Vector3D32_Sub (struct Vector3D32 *target, const struct Vector3D32 *source);

// Multiplication by scalar value
void Vector3D32_Mul (struct Vector3D32 *vector, flt32_t value);

// Division by scalar value
void Vector3D32_Div (struct Vector3D32 *vector, flt32_t value);

//****************************************************************************//
//      Rotation of vector                                                    //
//****************************************************************************//

// Rotation around the X axis
void Vector3D32_RotateX (struct Vector3D32 *vector, flt32_t angle);

// Rotation around the Y axis
void Vector3D32_RotateY (struct Vector3D32 *vector, flt32_t angle);

// Rotation around the Z axis
void Vector3D32_RotateZ (struct Vector3D32 *vector, flt32_t angle);

//****************************************************************************//
//      Shearing of vector                                                    //
//****************************************************************************//

// Shearing parallel to the YZ plane
void Vector3D32_ShearYZ (struct Vector3D32 *vector, flt32_t value1, flt32_t value2);

// Shearing parallel to the XZ plane
void Vector3D32_ShearXZ (struct Vector3D32 *vector, flt32_t value1, flt32_t value2);

// Shearing parallel to the XY plane
void Vector3D32_ShearXY (struct Vector3D32 *vector, flt32_t value1, flt32_t value2);

//****************************************************************************//
//      Scaling of vector                                                     //
//****************************************************************************//
void Vector3D32_Scale (struct Vector3D32 *target, const struct Vector3D32 *source);

//****************************************************************************//
//      Products                                                              //
//****************************************************************************//

// Vector product
void Vector3D32_VectorProduct (struct Vector3D32 *target, const struct Vector3D32 *source);

// Scalar product
flt32_t Vector3D32_ScalarProduct (const struct Vector3D32 *target, const struct Vector3D32 *source);

// Triple product
flt32_t Vector3D32_TripleProduct (const struct Vector3D32 *target, const struct Vector3D32 *source1, const struct Vector3D32 *source2);

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//
flt32_t Vector3D32_Abs (const struct Vector3D32 *vector);

//****************************************************************************//
//      Cosine value of angle between the vectors                             //
//****************************************************************************//
flt32_t Vector3D32_Cos (const struct Vector3D32 *target, const struct Vector3D32 *source);

//****************************************************************************//
//      Projection of the vector to another vector                            //
//****************************************************************************//
flt32_t Vector3D32_Projection (const struct Vector3D32 *target, const struct Vector3D32 *source);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero vector
bool Vector3D32_IsZero (const struct Vector3D32 *vector);

// Check for equality of the vectors
bool Vector3D32_IsEqual (const struct Vector3D32 *vector, const struct Vector3D32 *source);

// Check for negativity of the vectors
bool Vector3D32_IsNeg (const struct Vector3D32 *vector, const struct Vector3D32 *source);

// Check for collinearity of the vectors
bool Vector3D32_IsCollinear (const struct Vector3D32 *vector, const struct Vector3D32 *source);

// Check for orthogonality of the vectors
bool Vector3D32_IsOrthogonal (const struct Vector3D32 *vector, const struct Vector3D32 *source);

// Check for coplanarity of the vectors
bool Vector3D32_IsCoplanar (const struct Vector3D32 *vector, const struct Vector3D32 *source1, const struct Vector3D32 *source2);

//****************************************************************************//
//      3D vector structure (64-bit)                                          //
//****************************************************************************//
struct Vector3D64
{
	flt64_t	x;		// X coordinate
	flt64_t	y;		// Y coordinate
	flt64_t	z;		// Z coordinate
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
void Vector3D64_Normalize (struct Vector3D64 *vector);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Reflection of vector                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Reflection through the origin
void Vector3D64_ReflectOrigin (struct Vector3D64 *vector);

// Reflection through the X axis
void Vector3D64_ReflectX (struct Vector3D64 *vector);

// Reflection through the Y axis
void Vector3D64_ReflectY (struct Vector3D64 *vector);

// Reflection through the Z axis
void Vector3D64_ReflectZ (struct Vector3D64 *vector);

// Reflection through the YZ plane
void Vector3D64_ReflectYZ (struct Vector3D64 *vector);

// Reflection through the XZ plane
void Vector3D64_ReflectXZ (struct Vector3D64 *vector);

// Reflection through the XY plane
void Vector3D64_ReflectXY (struct Vector3D64 *vector);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition of vectors
void Vector3D64_Add (struct Vector3D64 *target, const struct Vector3D64 *source);

// Subtraction of vectors
void Vector3D64_Sub (struct Vector3D64 *target, const struct Vector3D64 *source);

// Multiplication by scalar value
void Vector3D64_Mul (struct Vector3D64 *vector, flt64_t value);

// Division by scalar value
void Vector3D64_Div (struct Vector3D64 *vector, flt64_t value);

//****************************************************************************//
//      Rotation of vector                                                    //
//****************************************************************************//

// Rotation around the X axis
void Vector3D64_RotateX (struct Vector3D64 *vector, flt64_t angle);

// Rotation around the Y axis
void Vector3D64_RotateY (struct Vector3D64 *vector, flt64_t angle);

// Rotation around the Z axis
void Vector3D64_RotateZ (struct Vector3D64 *vector, flt64_t angle);

//****************************************************************************//
//      Shearing of vector                                                    //
//****************************************************************************//

// Shearing parallel to the YZ plane
void Vector3D64_ShearYZ (struct Vector3D64 *vector, flt64_t value1, flt64_t value2);

// Shearing parallel to the XZ plane
void Vector3D64_ShearXZ (struct Vector3D64 *vector, flt64_t value1, flt64_t value2);

// Shearing parallel to the XY plane
void Vector3D64_ShearXY (struct Vector3D64 *vector, flt64_t value1, flt64_t value2);

//****************************************************************************//
//      Scaling of vector                                                     //
//****************************************************************************//
void Vector3D64_Scale (struct Vector3D64 *target, const struct Vector3D64 *source);

//****************************************************************************//
//      Products                                                              //
//****************************************************************************//

// Vector product
void Vector3D64_VectorProduct (struct Vector3D64 *target, const struct Vector3D64 *source);

// Scalar product
flt64_t Vector3D64_ScalarProduct (const struct Vector3D64 *target, const struct Vector3D64 *source);

// Triple product
flt64_t Vector3D64_TripleProduct (const struct Vector3D64 *target, const struct Vector3D64 *source1, const struct Vector3D64 *source2);

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//
flt64_t Vector3D64_Abs (const struct Vector3D64 *vector);

//****************************************************************************//
//      Cosine value of angle between the vectors                             //
//****************************************************************************//
flt64_t Vector3D64_Cos (const struct Vector3D64 *target, const struct Vector3D64 *source);

//****************************************************************************//
//      Projection of the vector to another vector                            //
//****************************************************************************//
flt64_t Vector3D64_Projection (const struct Vector3D64 *target, const struct Vector3D64 *source);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero vector
bool Vector3D64_IsZero (const struct Vector3D64 *vector);

// Check for equality of the vectors
bool Vector3D64_IsEqual (const struct Vector3D64 *vector, const struct Vector3D64 *source);

// Check for negativity of the vectors
bool Vector3D64_IsNeg (const struct Vector3D64 *vector, const struct Vector3D64 *source);

// Check for collinearity of the vectors
bool Vector3D64_IsCollinear (const struct Vector3D64 *vector, const struct Vector3D64 *source);

// Check for orthogonality of the vectors
bool Vector3D64_IsOrthogonal (const struct Vector3D64 *vector, const struct Vector3D64 *source);

// Check for coplanarity of the vectors
bool Vector3D64_IsCoplanar (const struct Vector3D64 *vector, const struct Vector3D64 *source1, const struct Vector3D64 *source2);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
