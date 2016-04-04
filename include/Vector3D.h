/*                                                                    Vector3D.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                     FUNCTIONS TO OPERATE WITH 3D VECTORS                     #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

//****************************************************************************//
//      3D vector structure (32-bit)                                          //
//****************************************************************************//
struct v3D32_t
{
	flt32_t	x;		// X coordinate
	flt32_t	y;		// Y coordinate
	flt32_t	z;		// Z coordinate
};

//****************************************************************************//
//      3D vector structure (64-bit)                                          //
//****************************************************************************//
struct v3D64_t
{
	flt64_t	x;		// X coordinate
	flt64_t	y;		// Y coordinate
	flt64_t	z;		// Z coordinate
};

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
class Vector3D
{
public:

//****************************************************************************//
//      Arithmetic operations                                                 //
//****************************************************************************//

//============================================================================//
//      Unary operations                                                      //
//============================================================================//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Normalization (direction cosines)                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void Normalize (v3D32_t *vector);
static void Normalize (v3D64_t *vector);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Reflection of vector                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Reflection through the origin
static void ReflectOrigin (v3D32_t *vector);
static void ReflectOrigin (v3D64_t *vector);

// Reflection through the X axis
static void ReflectX (v3D32_t *vector);
static void ReflectX (v3D64_t *vector);

// Reflection through the Y axis
static void ReflectY (v3D32_t *vector);
static void ReflectY (v3D64_t *vector);

// Reflection through the Z axis
static void ReflectZ (v3D32_t *vector);
static void ReflectZ (v3D64_t *vector);

// Reflection through the YZ plane
static void ReflectYZ (v3D32_t *vector);
static void ReflectYZ (v3D64_t *vector);

// Reflection through the XZ plane
static void ReflectXZ (v3D32_t *vector);
static void ReflectXZ (v3D64_t *vector);

// Reflection through the XY plane
static void ReflectXY (v3D32_t *vector);
static void ReflectXY (v3D64_t *vector);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition of vectors
static void Add (v3D32_t *target, const v3D32_t *source);
static void Add (v3D64_t *target, const v3D64_t *source);

// Subtraction of vectors
static void Sub (v3D32_t *target, const v3D32_t *source);
static void Sub (v3D64_t *target, const v3D64_t *source);

// Multiplication by scalar value
static void Mul (v3D32_t *vector, flt32_t value);
static void Mul (v3D64_t *vector, flt64_t value);

// Division by scalar value
static void Div (v3D32_t *vector, flt32_t value);
static void Div (v3D64_t *vector, flt64_t value);

//****************************************************************************//
//      Rotation of vector                                                    //
//****************************************************************************//

// Rotation around the X axis
static void RotateX (v3D32_t *vector, flt32_t cos, flt32_t sin);
static void RotateX (v3D64_t *vector, flt64_t cos, flt64_t sin);

// Rotation around the Y axis
static void RotateY (v3D32_t *vector, flt32_t cos, flt32_t sin);
static void RotateY (v3D64_t *vector, flt64_t cos, flt64_t sin);

// Rotation around the Z axis
static void RotateZ (v3D32_t *vector, flt32_t cos, flt32_t sin);
static void RotateZ (v3D64_t *vector, flt64_t cos, flt64_t sin);

//****************************************************************************//
//      Shearing of vector                                                    //
//****************************************************************************//

// Shearing parallel to the YZ plane
static void ShearYZ (v3D32_t *vector, flt32_t value1, flt32_t value2);
static void ShearYZ (v3D64_t *vector, flt64_t value1, flt64_t value2);

// Shearing parallel to the XZ plane
static void ShearXZ (v3D32_t *vector, flt32_t value1, flt32_t value2);
static void ShearXZ (v3D64_t *vector, flt64_t value1, flt64_t value2);

// Shearing parallel to the XY plane
static void ShearXY (v3D32_t *vector, flt32_t value1, flt32_t value2);
static void ShearXY (v3D64_t *vector, flt64_t value1, flt64_t value2);

//****************************************************************************//
//      Scaling of vector                                                     //
//****************************************************************************//
static void Scale (v3D32_t *target, const v3D32_t *source);
static void Scale (v3D64_t *target, const v3D64_t *source);

//****************************************************************************//
//      Products                                                              //
//****************************************************************************//

// Vector product
static void VectorProduct (v3D32_t *target, const v3D32_t *source);
static void VectorProduct (v3D64_t *target, const v3D64_t *source);

// Scalar product
static flt32_t ScalarProduct (const v3D32_t *target, const v3D32_t *source);
static flt64_t ScalarProduct (const v3D64_t *target, const v3D64_t *source);

// Triple product
static flt32_t TripleProduct (const v3D32_t *target, const v3D32_t *source1, const v3D32_t *source2);
static flt64_t TripleProduct (const v3D64_t *target, const v3D64_t *source1, const v3D64_t *source2);

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//
static flt32_t Abs (const v3D32_t *vector);
static flt64_t Abs (const v3D64_t *vector);

//****************************************************************************//
//      Cosine value of angle between the vectors                             //
//****************************************************************************//
static flt32_t Cos (const v3D32_t *target, const v3D32_t *source);
static flt64_t Cos (const v3D64_t *target, const v3D64_t *source);

//****************************************************************************//
//      Projection of the vector to another vector                            //
//****************************************************************************//
static flt32_t Projection (const v3D32_t *target, const v3D32_t *source);
static flt64_t Projection (const v3D64_t *target, const v3D64_t *source);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero vector
static bool IsZero (const v3D32_t *vector);
static bool IsZero (const v3D64_t *vector);

// Check for equality of the vectors
static bool IsEqual (const v3D32_t *target, const v3D32_t *source);
static bool IsEqual (const v3D64_t *target, const v3D64_t *source);

// Check for negativity of the vectors
static bool IsNeg (const v3D32_t *target, const v3D32_t *source);
static bool IsNeg (const v3D64_t *target, const v3D64_t *source);

// Check for collinearity of the vectors
static bool IsCollinear (const v3D32_t *target, const v3D32_t *source);
static bool IsCollinear (const v3D64_t *target, const v3D64_t *source);

// Check for orthogonality of the vectors
static bool IsOrthogonal (const v3D32_t *target, const v3D32_t *source);
static bool IsOrthogonal (const v3D64_t *target, const v3D64_t *source);

// Check for coplanarity of the vectors
static bool IsCoplanar (const v3D32_t *target, const v3D32_t *source1, const v3D32_t *source2);
static bool IsCoplanar (const v3D64_t *target, const v3D64_t *source1, const v3D64_t *source2);
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

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Normalization (direction cosines)                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
void Vector3D_Normalize_flt32 (struct v3D32_t *vector);
void Vector3D_Normalize_flt64 (struct v3D64_t *vector);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//      Reflection of vector                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

// Reflection through the origin
void Vector3D_ReflectOrigin_flt32 (struct v3D32_t *vector);
void Vector3D_ReflectOrigin_flt64 (struct v3D64_t *vector);

// Reflection through the X axis
void Vector3D_ReflectX_flt32 (struct v3D32_t *vector);
void Vector3D_ReflectX_flt64 (struct v3D64_t *vector);

// Reflection through the Y axis
void Vector3D_ReflectY_flt32 (struct v3D32_t *vector);
void Vector3D_ReflectY_flt64 (struct v3D64_t *vector);

// Reflection through the Z axis
void Vector3D_ReflectZ_flt32 (struct v3D32_t *vector);
void Vector3D_ReflectZ_flt64 (struct v3D64_t *vector);

// Reflection through the YZ plane
void Vector3D_ReflectYZ_flt32 (struct v3D32_t *vector);
void Vector3D_ReflectYZ_flt64 (struct v3D64_t *vector);

// Reflection through the XZ plane
void Vector3D_ReflectXZ_flt32 (struct v3D32_t *vector);
void Vector3D_ReflectXZ_flt64 (struct v3D64_t *vector);

// Reflection through the XY plane
void Vector3D_ReflectXY_flt32 (struct v3D32_t *vector);
void Vector3D_ReflectXY_flt64 (struct v3D64_t *vector);

//============================================================================//
//      Binary operations                                                     //
//============================================================================//

// Addition of vectors
void Vector3D_Add_flt32 (struct v3D32_t *target, const struct v3D32_t *source);
void Vector3D_Add_flt64 (struct v3D64_t *target, const struct v3D64_t *source);

// Subtraction of vectors
void Vector3D_Sub_flt32 (struct v3D32_t *target, const struct v3D32_t *source);
void Vector3D_Sub_flt64 (struct v3D64_t *target, const struct v3D64_t *source);

// Multiplication by scalar value
void Vector3D_Mul_flt32 (struct v3D32_t *vector, flt32_t value);
void Vector3D_Mul_flt64 (struct v3D64_t *vector, flt64_t value);

// Division by scalar value
void Vector3D_Div_flt32 (struct v3D32_t *vector, flt32_t value);
void Vector3D_Div_flt64 (struct v3D64_t *vector, flt64_t value);

//****************************************************************************//
//      Rotation of vector                                                    //
//****************************************************************************//

// Rotation around the X axis
void Vector3D_RotateX_flt32 (struct v3D32_t *vector, flt32_t cos, flt32_t sin);
void Vector3D_RotateX_flt64 (struct v3D64_t *vector, flt64_t cos, flt64_t sin);

// Rotation around the Y axis
void Vector3D_RotateY_flt32 (struct v3D32_t *vector, flt32_t cos, flt32_t sin);
void Vector3D_RotateY_flt64 (struct v3D64_t *vector, flt64_t cos, flt64_t sin);

// Rotation around the Z axis
void Vector3D_RotateZ_flt32 (struct v3D32_t *vector, flt32_t cos, flt32_t sin);
void Vector3D_RotateZ_flt64 (struct v3D64_t *vector, flt64_t cos, flt64_t sin);

//****************************************************************************//
//      Shearing of vector                                                    //
//****************************************************************************//

// Shearing parallel to the YZ plane
void Vector3D_ShearYZ_flt32 (struct v3D32_t *vector, flt32_t value1, flt32_t value2);
void Vector3D_ShearYZ_flt64 (struct v3D64_t *vector, flt64_t value1, flt64_t value2);

// Shearing parallel to the XZ plane
void Vector3D_ShearXZ_flt32 (struct v3D32_t *vector, flt32_t value1, flt32_t value2);
void Vector3D_ShearXZ_flt64 (struct v3D64_t *vector, flt64_t value1, flt64_t value2);

// Shearing parallel to the XY plane
void Vector3D_ShearXY_flt32 (struct v3D32_t *vector, flt32_t value1, flt32_t value2);
void Vector3D_ShearXY_flt64 (struct v3D64_t *vector, flt64_t value1, flt64_t value2);

//****************************************************************************//
//      Scaling of vector                                                     //
//****************************************************************************//
void Vector3D_Scale_flt32 (struct v3D32_t *target, const struct v3D32_t *source);
void Vector3D_Scale_flt64 (struct v3D64_t *target, const struct v3D64_t *source);

//****************************************************************************//
//      Products                                                              //
//****************************************************************************//

// Vector product
void Vector3D_VectorProduct_flt32 (struct v3D32_t *target, const struct v3D32_t *source);
void Vector3D_VectorProduct_flt64 (struct v3D64_t *target, const struct v3D64_t *source);

// Scalar product
flt32_t Vector3D_ScalarProduct_flt32 (const struct v3D32_t *target, const struct v3D32_t *source);
flt64_t Vector3D_ScalarProduct_flt64 (const struct v3D64_t *target, const struct v3D64_t *source);

// Triple product
flt32_t Vector3D_TripleProduct_flt32 (const struct v3D32_t *target, const struct v3D32_t *source1, const struct v3D32_t *source2);
flt64_t Vector3D_TripleProduct_flt64 (const struct v3D64_t *target, const struct v3D64_t *source1, const struct v3D64_t *source2);

//****************************************************************************//
//      Absolute value                                                        //
//****************************************************************************//
flt32_t Vector3D_Abs_flt32 (const struct v3D32_t *vector);
flt64_t Vector3D_Abs_flt64 (const struct v3D64_t *vector);

//****************************************************************************//
//      Cosine value of angle between the vectors                             //
//****************************************************************************//
flt32_t Vector3D_Cos_flt32 (const struct v3D32_t *target, const struct v3D32_t *source);
flt64_t Vector3D_Cos_flt64 (const struct v3D64_t *target, const struct v3D64_t *source);

//****************************************************************************//
//      Projection of the vector to another vector                            //
//****************************************************************************//
flt32_t Vector3D_Projection_flt32 (const struct v3D32_t *target, const struct v3D32_t *source);
flt64_t Vector3D_Projection_flt64 (const struct v3D64_t *target, const struct v3D64_t *source);

//****************************************************************************//
//      Checks                                                                //
//****************************************************************************//

// Check for zero vector
bool Vector3D_IsZero_flt32 (const struct v3D32_t *vector);
bool Vector3D_IsZero_flt64 (const struct v3D64_t *vector);

// Check for equality of the vectors
bool Vector3D_IsEqual_flt32 (const struct v3D32_t *target, const struct v3D32_t *source);
bool Vector3D_IsEqual_flt64 (const struct v3D64_t *target, const struct v3D64_t *source);

// Check for negativity of the vectors
bool Vector3D_IsNeg_flt32 (const struct v3D32_t *target, const struct v3D32_t *source);
bool Vector3D_IsNeg_flt64 (const struct v3D64_t *target, const struct v3D64_t *source);

// Check for collinearity of the vectors
bool Vector3D_IsCollinear_flt32 (const struct v3D32_t *target, const struct v3D32_t *source);
bool Vector3D_IsCollinear_flt64 (const struct v3D64_t *target, const struct v3D64_t *source);

// Check for orthogonality of the vectors
bool Vector3D_IsOrthogonal_flt32 (const struct v3D32_t *target, const struct v3D32_t *source);
bool Vector3D_IsOrthogonal_flt64 (const struct v3D64_t *target, const struct v3D64_t *source);

// Check for coplanarity of the vectors
bool Vector3D_IsCoplanar_flt32 (const struct v3D32_t *target, const struct v3D32_t *source1, const struct v3D32_t *source2);
bool Vector3D_IsCoplanar_flt64 (const struct v3D64_t *target, const struct v3D64_t *source1, const struct v3D64_t *source2);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
