;                                                                   VectorXD.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                 FUNCTIONS TO OPERATE WITH 2D AND 3D VECTORS                 #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2016, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Import section                                                         #
;###############################################################################

; Hypot
extrn	'Math_Hypot2D_flt32'		as	Hypot2D_flt32
extrn	'Math_Hypot2D_flt64'		as	Hypot2D_flt64
extrn	'Math_Hypot3D_flt32'		as	Hypot3D_flt32
extrn	'Math_Hypot3D_flt64'		as	Hypot3D_flt64

; Inverse tangent
extrn	'Math_ArcTan2_flt32'		as	ArcTan2_flt32
extrn	'Math_ArcTan2_flt64'		as	ArcTan2_flt64

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unary operations                                                       ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Normalization (direction cosines)                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Normalize3D_flt32		as	'Vector3D_Normalize_flt32'
public	Normalize3D_flt64		as	'Vector3D_Normalize_flt64'
public	Normalize2D_flt32		as	'Vector2D_Normalize_flt32'
public	Normalize2D_flt64		as	'Vector2D_Normalize_flt64'
public	Normalize3D_flt32		as	'_ZN8Vector3D9NormalizeEP7v3D32_t'
public	Normalize3D_flt64		as	'_ZN8Vector3D9NormalizeEP7v3D64_t'
public	Normalize2D_flt32		as	'_ZN8Vector2D9NormalizeEP7v2D32_t'
public	Normalize2D_flt64		as	'_ZN8Vector2D9NormalizeEP7v2D64_t'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Reflection of vector                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Reflection through the origin                                          ;
;------------------------------------------------------------------------------;
public	ReflectOrigin3D_flt32	as	'Vector3D_ReflectOrigin_flt32'
public	ReflectOrigin3D_flt64	as	'Vector3D_ReflectOrigin_flt64'
public	ReflectOrigin2D_flt32	as	'Vector2D_ReflectOrigin_flt32'
public	ReflectOrigin2D_flt64	as	'Vector2D_ReflectOrigin_flt64'
public	ReflectOrigin2D_flt32	as	'Complex_Neg_flt32'
public	ReflectOrigin2D_flt64	as	'Complex_Neg_flt64'
public	ReflectOrigin3D_flt32	as	'_ZN8Vector3D13ReflectOriginEP7v3D32_t'
public	ReflectOrigin3D_flt64	as	'_ZN8Vector3D13ReflectOriginEP7v3D64_t'
public	ReflectOrigin2D_flt32	as	'_ZN8Vector2D13ReflectOriginEP7v2D32_t'
public	ReflectOrigin2D_flt64	as	'_ZN8Vector2D13ReflectOriginEP7v2D64_t'
public	ReflectOrigin2D_flt32	as	'_ZN7Complex3NegEP9cmplx32_t'
public	ReflectOrigin2D_flt64	as	'_ZN7Complex3NegEP9cmplx64_t'

;------------------------------------------------------------------------------;
;       Reflection through the axis                                            ;
;------------------------------------------------------------------------------;

; Reflection through the X axis
public	ReflectX_flt32			as	'Vector3D_ReflectX_flt32'
public	ReflectX_flt64			as	'Vector3D_ReflectX_flt64'
public	ReflectX_flt32			as	'_ZN8Vector3D8ReflectXEP7v3D32_t'
public	ReflectX_flt64			as	'_ZN8Vector3D8ReflectXEP7v3D64_t'

; Reflection through the Y axis
public	ReflectY_flt32			as	'Vector3D_ReflectY_flt32'
public	ReflectY_flt64			as	'Vector3D_ReflectY_flt64'
public	ReflectY_flt32			as	'_ZN8Vector3D8ReflectYEP7v3D32_t'
public	ReflectY_flt64			as	'_ZN8Vector3D8ReflectYEP7v3D64_t'

; Reflection through the Z axis
public	ReflectZ_flt32			as	'Vector3D_ReflectZ_flt32'
public	ReflectZ_flt64			as	'Vector3D_ReflectZ_flt64'
public	ReflectZ_flt32			as	'_ZN8Vector3D8ReflectZEP7v3D32_t'
public	ReflectZ_flt64			as	'_ZN8Vector3D8ReflectZEP7v3D64_t'

;------------------------------------------------------------------------------;
;       Reflection through the plane                                           ;
;------------------------------------------------------------------------------;

; Reflection through the YZ plane
public	ReflectYZ_flt32			as	'Vector3D_ReflectYZ_flt32'
public	ReflectYZ_flt64			as	'Vector3D_ReflectYZ_flt64'
public	ReflectYZ_flt32			as	'Vector2D_ReflectY_flt32'
public	ReflectYZ_flt64			as	'Vector2D_ReflectY_flt64'
public	ReflectYZ_flt32			as	'_ZN8Vector3D9ReflectYZEP7v3D32_t'
public	ReflectYZ_flt64			as	'_ZN8Vector3D9ReflectYZEP7v3D64_t'
public	ReflectYZ_flt32			as	'_ZN8Vector2D8ReflectYEP7v2D32_t'
public	ReflectYZ_flt64			as	'_ZN8Vector2D8ReflectYEP7v2D64_t'

; Reflection through the XZ plane
public	ReflectXZ_flt32			as	'Vector3D_ReflectXZ_flt32'
public	ReflectXZ_flt64			as	'Vector3D_ReflectXZ_flt64'
public	ReflectXZ_flt32			as	'Vector2D_ReflectX_flt32'
public	ReflectXZ_flt64			as	'Vector2D_ReflectX_flt64'
public	ReflectXZ_flt32			as	'Complex_Conj_flt32'
public	ReflectXZ_flt64			as	'Complex_Conj_flt64'
public	ReflectXZ_flt32			as	'_ZN8Vector3D9ReflectXZEP7v3D32_t'
public	ReflectXZ_flt64			as	'_ZN8Vector3D9ReflectXZEP7v3D64_t'
public	ReflectXZ_flt32			as	'_ZN8Vector2D8ReflectXEP7v2D32_t'
public	ReflectXZ_flt64			as	'_ZN8Vector2D8ReflectXEP7v2D64_t'
public	ReflectXZ_flt32			as	'_ZN7Complex4ConjEP9cmplx32_t'
public	ReflectXZ_flt64			as	'_ZN7Complex4ConjEP9cmplx64_t'

; Reflection through the XY plane
public	ReflectXY_flt32			as	'Vector3D_ReflectXY_flt32'
public	ReflectXY_flt64			as	'Vector3D_ReflectXY_flt64'
public	ReflectXY_flt32			as	'_ZN8Vector3D9ReflectXYEP7v3D32_t'
public	ReflectXY_flt64			as	'_ZN8Vector3D9ReflectXYEP7v3D64_t'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Square root of the vector                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Sqrt_flt32				as	'Complex_Sqrt_flt32'
public	Sqrt_flt64				as	'Complex_Sqrt_flt64'
public	Sqrt_flt32				as	'_ZN7Complex4SqrtEP9cmplx32_t'
public	Sqrt_flt64				as	'_ZN7Complex4SqrtEP9cmplx64_t'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Square value of the vector                                             ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Sqr_flt32				as	'Complex_Sqr_flt32'
public	Sqr_flt64				as	'Complex_Sqr_flt64'
public	Sqr_flt32				as	'_ZN7Complex3SqrEP9cmplx32_t'
public	Sqr_flt64				as	'_ZN7Complex3SqrEP9cmplx64_t'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Inverse vector                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Inverse_flt32			as	'Complex_Inverse_flt32'
public	Inverse_flt64			as	'Complex_Inverse_flt64'
public	Inverse_flt32			as	'_ZN7Complex7InverseEP9cmplx32_t'
public	Inverse_flt64			as	'_ZN7Complex7InverseEP9cmplx64_t'

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Addition of vectors                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Add3D_flt32				as	'Vector3D_Add_flt32'
public	Add3D_flt64				as	'Vector3D_Add_flt64'
public	Add2D_flt32				as	'Vector2D_Add_flt32'
public	Add2D_flt64				as	'Vector2D_Add_flt64'
public	Add2D_flt32				as	'Complex_Add_flt32'
public	Add2D_flt64				as	'Complex_Add_flt64'
public	Add3D_flt32				as	'_ZN8Vector3D3AddEP7v3D32_tPKS0_'
public	Add3D_flt64				as	'_ZN8Vector3D3AddEP7v3D64_tPKS0_'
public	Add2D_flt32				as	'_ZN8Vector2D3AddEP7v2D32_tPKS0_'
public	Add2D_flt64				as	'_ZN8Vector2D3AddEP7v2D64_tPKS0_'
public	Add2D_flt32				as	'_ZN7Complex3AddEP9cmplx32_tPKS0_'
public	Add2D_flt64				as	'_ZN7Complex3AddEP9cmplx64_tPKS0_'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Subtraction of vectors                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Sub3D_flt32				as	'Vector3D_Sub_flt32'
public	Sub3D_flt64				as	'Vector3D_Sub_flt64'
public	Sub2D_flt32				as	'Vector2D_Sub_flt32'
public	Sub2D_flt64				as	'Vector2D_Sub_flt64'
public	Sub2D_flt32				as	'Complex_Sub_flt32'
public	Sub2D_flt64				as	'Complex_Sub_flt64'
public	Sub3D_flt32				as	'_ZN8Vector3D3SubEP7v3D32_tPKS0_'
public	Sub3D_flt64				as	'_ZN8Vector3D3SubEP7v3D64_tPKS0_'
public	Sub2D_flt32				as	'_ZN8Vector2D3SubEP7v2D32_tPKS0_'
public	Sub2D_flt64				as	'_ZN8Vector2D3SubEP7v2D64_tPKS0_'
public	Sub2D_flt32				as	'_ZN7Complex3SubEP9cmplx32_tPKS0_'
public	Sub2D_flt64				as	'_ZN7Complex3SubEP9cmplx64_tPKS0_'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication by scalar value                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Mul3D_flt32				as	'Vector3D_Mul_flt32'
public	Mul3D_flt64				as	'Vector3D_Mul_flt64'
public	Mul2D_flt32				as	'Vector2D_Mul_flt32'
public	Mul2D_flt64				as	'Vector2D_Mul_flt64'
public	Mul3D_flt32				as	'_ZN8Vector3D3MulEP7v3D32_tf'
public	Mul3D_flt64				as	'_ZN8Vector3D3MulEP7v3D64_td'
public	Mul2D_flt32				as	'_ZN8Vector2D3MulEP7v2D32_tf'
public	Mul2D_flt64				as	'_ZN8Vector2D3MulEP7v2D64_td'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication of vectors                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	VectorMul_flt32			as	'Complex_Mul_flt32'
public	VectorMul_flt64			as	'Complex_Mul_flt64'
public	VectorMul_flt32			as	'_ZN7Complex3MulEP9cmplx32_tPKS0_'
public	VectorMul_flt64			as	'_ZN7Complex3MulEP9cmplx64_tPKS0_'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division by scalar value                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Div3D_flt32				as	'Vector3D_Div_flt32'
public	Div3D_flt64				as	'Vector3D_Div_flt64'
public	Div2D_flt32				as	'Vector2D_Div_flt32'
public	Div2D_flt64				as	'Vector2D_Div_flt64'
public	Div3D_flt32				as	'_ZN8Vector3D3DivEP7v3D32_tf'
public	Div3D_flt64				as	'_ZN8Vector3D3DivEP7v3D64_td'
public	Div2D_flt32				as	'_ZN8Vector2D3DivEP7v2D32_tf'
public	Div2D_flt64				as	'_ZN8Vector2D3DivEP7v2D64_td'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division of vectors                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	VectorDiv_flt32			as	'Complex_Div_flt32'
public	VectorDiv_flt64			as	'Complex_Div_flt64'
public	VectorDiv_flt32			as	'_ZN7Complex3DivEP9cmplx32_tPKS0_'
public	VectorDiv_flt64			as	'_ZN7Complex3DivEP9cmplx64_tPKS0_'

;******************************************************************************;
;       Rotation of vector                                                     ;
;******************************************************************************;

; Rotation around the X axis
public	RotateX_flt32			as	'Vector3D_RotateX_flt32'
public	RotateX_flt64			as	'Vector3D_RotateX_flt64'
public	RotateX_flt32			as	'_ZN8Vector3D7RotateXEP7v3D32_tff'
public	RotateX_flt64			as	'_ZN8Vector3D7RotateXEP7v3D64_tdd'

; Rotation around the Y axis
public	RotateY_flt32			as	'Vector3D_RotateY_flt32'
public	RotateY_flt64			as	'Vector3D_RotateY_flt64'
public	RotateY_flt32			as	'_ZN8Vector3D7RotateYEP7v3D32_tff'
public	RotateY_flt64			as	'_ZN8Vector3D7RotateYEP7v3D64_tdd'

; Rotation around the Z axis
public	RotateZ_flt32			as	'Vector3D_RotateZ_flt32'
public	RotateZ_flt64			as	'Vector3D_RotateZ_flt64'
public	RotateZ_flt32			as	'Vector2D_Rotate_flt32'
public	RotateZ_flt64			as	'Vector2D_Rotate_flt64'
public	RotateZ_flt32			as	'_ZN8Vector3D7RotateZEP7v3D32_tff'
public	RotateZ_flt64			as	'_ZN8Vector3D7RotateZEP7v3D64_tdd'
public	RotateZ_flt32			as	'_ZN8Vector2D6RotateEP7v2D32_tff'
public	RotateZ_flt64			as	'_ZN8Vector2D6RotateEP7v2D64_tdd'

;******************************************************************************;
;       Shearing of vector                                                     ;
;******************************************************************************;

;==============================================================================;
;       Shearing parallel to the axis                                          ;
;==============================================================================;

; Shearing parallel to the X axis
public	ShearX_flt32			as	'Vector2D_ShearX_flt32'
public	ShearX_flt64			as	'Vector2D_ShearX_flt64'
public	ShearX_flt32			as	'_ZN8Vector2D6ShearXEP7v2D32_tf'
public	ShearX_flt64			as	'_ZN8Vector2D6ShearXEP7v2D64_td'

; Shearing parallel to the Y axis
public	ShearY_flt32			as	'Vector2D_ShearY_flt32'
public	ShearY_flt64			as	'Vector2D_ShearY_flt64'
public	ShearY_flt32			as	'_ZN8Vector2D6ShearYEP7v2D32_tf'
public	ShearY_flt64			as	'_ZN8Vector2D6ShearYEP7v2D64_td'

;==============================================================================;
;       Shearing parallel to the plane                                         ;
;==============================================================================;

; Shearing parallel to the YZ plane
public	ShearYZ_flt32			as	'Vector3D_ShearYZ_flt32'
public	ShearYZ_flt64			as	'Vector3D_ShearYZ_flt64'
public	ShearYZ_flt32			as	'_ZN8Vector3D7ShearYZEP7v3D32_tff'
public	ShearYZ_flt64			as	'_ZN8Vector3D7ShearYZEP7v3D64_tdd'

; Shearing parallel to the XZ plane
public	ShearXZ_flt32			as	'Vector3D_ShearXZ_flt32'
public	ShearXZ_flt64			as	'Vector3D_ShearXZ_flt64'
public	ShearXZ_flt32			as	'_ZN8Vector3D7ShearXZEP7v3D32_tff'
public	ShearXZ_flt64			as	'_ZN8Vector3D7ShearXZEP7v3D64_tdd'

; Shearing parallel to the XY plane
public	ShearXY_flt32			as	'Vector3D_ShearXY_flt32'
public	ShearXY_flt64			as	'Vector3D_ShearXY_flt64'
public	ShearXY_flt32			as	'_ZN8Vector3D7ShearXYEP7v3D32_tff'
public	ShearXY_flt64			as	'_ZN8Vector3D7ShearXYEP7v3D64_tdd'

;******************************************************************************;
;       Scaling of vector                                                      ;
;******************************************************************************;
public	Scale3D_flt32			as	'Vector3D_Scale_flt32'
public	Scale3D_flt64			as	'Vector3D_Scale_flt64'
public	Scale2D_flt32			as	'Vector2D_Scale_flt32'
public	Scale2D_flt64			as	'Vector2D_Scale_flt64'
public	Scale3D_flt32			as	'_ZN8Vector3D5ScaleEP7v3D32_tPKS0_'
public	Scale3D_flt64			as	'_ZN8Vector3D5ScaleEP7v3D64_tPKS0_'
public	Scale2D_flt32			as	'_ZN8Vector2D5ScaleEP7v2D32_tPKS0_'
public	Scale2D_flt64			as	'_ZN8Vector2D5ScaleEP7v2D64_tPKS0_'

;******************************************************************************;
;       Products                                                               ;
;******************************************************************************;

;==============================================================================;
;       Vector product                                                         ;
;==============================================================================;
public	VectorProduct_flt32		as	'Vector3D_VectorProduct_flt32'
public	VectorProduct_flt64		as	'Vector3D_VectorProduct_flt64'
public	VectorProduct_flt32		as	'_ZN8Vector3D13VectorProductEP7v3D32_tPKS0_'
public	VectorProduct_flt64		as	'_ZN8Vector3D13VectorProductEP7v3D64_tPKS0_'

;==============================================================================;
;       Scalar product                                                         ;
;==============================================================================;
public	ScalarProduct3D_flt32	as	'Vector3D_ScalarProduct_flt32'
public	ScalarProduct3D_flt64	as	'Vector3D_ScalarProduct_flt64'
public	ScalarProduct2D_flt32	as	'Vector2D_ScalarProduct_flt32'
public	ScalarProduct2D_flt64	as	'Vector2D_ScalarProduct_flt64'
public	ScalarProduct3D_flt32	as	'_ZN8Vector3D13ScalarProductEPK7v3D32_tS2_'
public	ScalarProduct3D_flt64	as	'_ZN8Vector3D13ScalarProductEPK7v3D64_tS2_'
public	ScalarProduct2D_flt32	as	'_ZN8Vector2D13ScalarProductEPK7v2D32_tS2_'
public	ScalarProduct2D_flt64	as	'_ZN8Vector2D13ScalarProductEPK7v2D64_tS2_'

;==============================================================================;
;       Triple product                                                         ;
;==============================================================================;
public	TripleProduct_flt32		as	'Vector3D_TripleProduct_flt32'
public	TripleProduct_flt64		as	'Vector3D_TripleProduct_flt64'
public	TripleProduct_flt32		as	'_ZN8Vector3D13TripleProductEPK7v3D32_tS2_S2_'
public	TripleProduct_flt64		as	'_ZN8Vector3D13TripleProductEPK7v3D64_tS2_S2_'

;******************************************************************************;
;       Absolute value                                                         ;
;******************************************************************************;
public	Abs3D_flt32				as	'Vector3D_Abs_flt32'
public	Abs3D_flt64				as	'Vector3D_Abs_flt64'
public	Abs2D_flt32				as	'Vector2D_Abs_flt32'
public	Abs2D_flt64				as	'Vector2D_Abs_flt64'
public	Abs2D_flt32				as	'Complex_Magnitude_flt32'
public	Abs2D_flt64				as	'Complex_Magnitude_flt64'
public	Abs3D_flt32				as	'_ZN8Vector3D3AbsEPK7v3D32_t'
public	Abs3D_flt64				as	'_ZN8Vector3D3AbsEPK7v3D64_t'
public	Abs2D_flt32				as	'_ZN8Vector2D3AbsEPK7v2D32_t'
public	Abs2D_flt64				as	'_ZN8Vector2D3AbsEPK7v2D64_t'
public	Abs2D_flt32				as	'_ZN7Complex9MagnitudeEPK9cmplx32_t'
public	Abs2D_flt64				as	'_ZN7Complex9MagnitudeEPK9cmplx64_t'

;******************************************************************************;
;       Angle value                                                            ;
;******************************************************************************;
public	Angle_flt32				as	'Complex_Argument_flt32'
public	Angle_flt64				as	'Complex_Argument_flt64'
public	Angle_flt32				as	'_ZN7Complex8ArgumentEPK9cmplx32_t'
public	Angle_flt64				as	'_ZN7Complex8ArgumentEPK9cmplx64_t'

;******************************************************************************;
;       Cosine value of angle between the vectors                              ;
;******************************************************************************;
public	Cos3D_flt32				as	'Vector3D_Cos_flt32'
public	Cos3D_flt64				as	'Vector3D_Cos_flt64'
public	Cos2D_flt32				as	'Vector2D_Cos_flt32'
public	Cos2D_flt64				as	'Vector2D_Cos_flt64'
public	Cos3D_flt32				as	'_ZN8Vector3D3CosEPK7v3D32_tS2_'
public	Cos3D_flt64				as	'_ZN8Vector3D3CosEPK7v3D64_tS2_'
public	Cos2D_flt32				as	'_ZN8Vector2D3CosEPK7v2D32_tS2_'
public	Cos2D_flt64				as	'_ZN8Vector2D3CosEPK7v2D64_tS2_'

;******************************************************************************;
;       Projection of the vector to another vector                             ;
;******************************************************************************;
public	Projection3D_flt32		as	'Vector3D_Projection_flt32'
public	Projection3D_flt64		as	'Vector3D_Projection_flt64'
public	Projection2D_flt32		as	'Vector2D_Projection_flt32'
public	Projection2D_flt64		as	'Vector2D_Projection_flt64'
public	Projection3D_flt32		as	'_ZN8Vector3D10ProjectionEPK7v3D32_tS2_'
public	Projection3D_flt64		as	'_ZN8Vector3D10ProjectionEPK7v3D64_tS2_'
public	Projection2D_flt32		as	'_ZN8Vector2D10ProjectionEPK7v2D32_tS2_'
public	Projection2D_flt64		as	'_ZN8Vector2D10ProjectionEPK7v2D64_tS2_'

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for zero vector                                                  ;
;==============================================================================;
public	IsZero3D_flt32			as	'Vector3D_IsZero_flt32'
public	IsZero3D_flt64			as	'Vector3D_IsZero_flt64'
public	IsZero2D_flt32			as	'Vector2D_IsZero_flt32'
public	IsZero2D_flt64			as	'Vector2D_IsZero_flt64'
public	IsZero2D_flt32			as	'Complex_IsZero_flt32'
public	IsZero2D_flt64			as	'Complex_IsZero_flt64'
public	IsZero3D_flt32			as	'_ZN8Vector3D6IsZeroEPK7v3D32_t'
public	IsZero3D_flt64			as	'_ZN8Vector3D6IsZeroEPK7v3D64_t'
public	IsZero2D_flt32			as	'_ZN8Vector2D6IsZeroEPK7v2D32_t'
public	IsZero2D_flt64			as	'_ZN8Vector2D6IsZeroEPK7v2D64_t'
public	IsZero2D_flt32			as	'_ZN7Complex6IsZeroEPK9cmplx32_t'
public	IsZero2D_flt64			as	'_ZN7Complex6IsZeroEPK9cmplx64_t'

;==============================================================================;
;       Check for equality of the vectors                                      ;
;==============================================================================;
public	IsEqual3D_flt32			as	'Vector3D_IsEqual_flt32'
public	IsEqual3D_flt64			as	'Vector3D_IsEqual_flt64'
public	IsEqual2D_flt32			as	'Vector2D_IsEqual_flt32'
public	IsEqual2D_flt64			as	'Vector2D_IsEqual_flt64'
public	IsEqual2D_flt32			as	'Complex_IsEqual_flt32'
public	IsEqual2D_flt64			as	'Complex_IsEqual_flt64'
public	IsEqual3D_flt32			as	'_ZN8Vector3D7IsEqualEPK7v3D32_tS2_'
public	IsEqual3D_flt64			as	'_ZN8Vector3D7IsEqualEPK7v3D64_tS2_'
public	IsEqual2D_flt32			as	'_ZN8Vector2D7IsEqualEPK7v2D32_tS2_'
public	IsEqual2D_flt64			as	'_ZN8Vector2D7IsEqualEPK7v2D64_tS2_'
public	IsEqual2D_flt32			as	'_ZN7Complex7IsEqualEPK9cmplx32_tS2_'
public	IsEqual2D_flt64			as	'_ZN7Complex7IsEqualEPK9cmplx64_tS2_'

;==============================================================================;
;       Check for negativity of the vectors                                    ;
;==============================================================================;
public	IsNeg3D_flt32			as	'Vector3D_IsNeg_flt32'
public	IsNeg3D_flt64			as	'Vector3D_IsNeg_flt64'
public	IsNeg2D_flt32			as	'Vector2D_IsNeg_flt32'
public	IsNeg2D_flt64			as	'Vector2D_IsNeg_flt64'
public	IsNeg2D_flt32			as	'Complex_IsNeg_flt32'
public	IsNeg2D_flt64			as	'Complex_IsNeg_flt64'
public	IsNeg3D_flt32			as	'_ZN8Vector3D5IsNegEPK7v3D32_tS2_'
public	IsNeg3D_flt64			as	'_ZN8Vector3D5IsNegEPK7v3D64_tS2_'
public	IsNeg2D_flt32			as	'_ZN8Vector2D5IsNegEPK7v2D32_tS2_'
public	IsNeg2D_flt64			as	'_ZN8Vector2D5IsNegEPK7v2D64_tS2_'
public	IsNeg2D_flt32			as	'_ZN7Complex5IsNegEPK9cmplx32_tS2_'
public	IsNeg2D_flt64			as	'_ZN7Complex5IsNegEPK9cmplx64_tS2_'

;==============================================================================;
;       Check for collinearity of the vectors                                  ;
;==============================================================================;
public	IsCollinear3D_flt32		as	'Vector3D_IsCollinear_flt32'
public	IsCollinear3D_flt64		as	'Vector3D_IsCollinear_flt64'
public	IsCollinear2D_flt32		as	'Vector2D_IsCollinear_flt32'
public	IsCollinear2D_flt64		as	'Vector2D_IsCollinear_flt64'
public	IsCollinear3D_flt32		as	'_ZN8Vector3D11IsCollinearEPK7v3D32_tS2_'
public	IsCollinear3D_flt64		as	'_ZN8Vector3D11IsCollinearEPK7v3D64_tS2_'
public	IsCollinear2D_flt32		as	'_ZN8Vector2D11IsCollinearEPK7v2D32_tS2_'
public	IsCollinear2D_flt64		as	'_ZN8Vector2D11IsCollinearEPK7v2D64_tS2_'

;==============================================================================;
;       Check for orthogonality of the vectors                                 ;
;==============================================================================;
public	IsOrthogonal3D_flt32	as	'Vector3D_IsOrthogonal_flt32'
public	IsOrthogonal3D_flt64	as	'Vector3D_IsOrthogonal_flt64'
public	IsOrthogonal2D_flt32	as	'Vector2D_IsOrthogonal_flt32'
public	IsOrthogonal2D_flt64	as	'Vector2D_IsOrthogonal_flt64'
public	IsOrthogonal3D_flt32	as	'_ZN8Vector3D12IsOrthogonalEPK7v3D32_tS2_'
public	IsOrthogonal3D_flt64	as	'_ZN8Vector3D12IsOrthogonalEPK7v3D64_tS2_'
public	IsOrthogonal2D_flt32	as	'_ZN8Vector2D12IsOrthogonalEPK7v2D32_tS2_'
public	IsOrthogonal2D_flt64	as	'_ZN8Vector2D12IsOrthogonalEPK7v2D64_tS2_'

;==============================================================================;
;       Check for coplanarity of the vectors                                   ;
;==============================================================================;
public	IsCoplanar_flt32		as	'Vector3D_IsCoplanar_flt32'
public	IsCoplanar_flt64		as	'Vector3D_IsCoplanar_flt64'
public	IsCoplanar_flt32		as	'_ZN8Vector3D10IsCoplanarEPK7v3D32_tS2_S2_'
public	IsCoplanar_flt64		as	'_ZN8Vector3D10IsCoplanarEPK7v3D64_tS2_S2_'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Offsets inside vector structure                                        ;
;******************************************************************************;
XPOS	= 0									; Offset of X value
YPOS	= 1									; Offset of Y value
ZPOS	= 2									; Offset of Z value

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unary operations                                                       ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Normalization (direction cosines)                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	NORM	Hypot, dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
zval	equ		xmm2						; z value of vector
hypot	equ		xmm3						; absolute value of vector
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
if x eq s
oneval	= PONE_FLT32						; 1.0
scale	= 2									; scale value
else if x eq d
oneval	= PONE_FLT64						; 1.0
scale	= 3									; scale value
end if
space	= 1 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
;---[Call hypotenuse functon]--------------
		movs#x	xval, [this + XPOS*bytes]	; load x value of vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of vector
if dim = 3
		movs#x	zval, [this + ZPOS*bytes]	; load z value of vector
end if
		mov		fptr, Hypot
		call	fptr						; call Hypot (this->x, this->y, this->z)
;---[Normalize cathetus]-------------------
		mov		this, [s_this]				; get "this" variable from the stack
		initreg	hypot, fptr, oneval			; hypot = 1.0
		divs#x	hypot, xval					; hypot = 1.0 / Hypot (this->x, this->y, this->z)
		movs#x	xval, [this + XPOS*bytes]	; load x value of vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of vector
if dim = 3
		movs#x	zval, [this + ZPOS*bytes]	; load z value of vector
end if
		muls#x	xval, hypot					; change x value
		muls#x	yval, hypot					; change y value
if dim = 3
		muls#x	zval, hypot					; change z value
end if
		movs#x	[this + XPOS*bytes], xval	; this->x = xval
		movs#x	[this + YPOS*bytes], yval	; this->y = yval
if dim = 3
		movs#x	[this + ZPOS*bytes], zval	; this->z = zval
end if
		add		stack, space				; restoring back the stack pointer
		ret
}
Normalize3D_flt32:	NORM	Hypot3D_flt32, 3, s
Normalize3D_flt64:	NORM	Hypot3D_flt64, 3, d
Normalize2D_flt32:	NORM	Hypot2D_flt32, 2, s
Normalize2D_flt64:	NORM	Hypot2D_flt64, 2, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Reflection of vector                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Reflection through the origin                                          ;
;------------------------------------------------------------------------------;
macro	REFLECT_ORIGIN	dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
zval	equ		xmm2						; z value of vector
mask	equ		xmm3						; sign mask
if x eq s
smask	= SMASK_FLT32						; sign mask
scale	= 2									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		initreg	mask, treg, smask			; load sign mask
		movs#x	xval, [this + XPOS*bytes]	; load x value of vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of vector
if dim = 3
		movs#x	zval, [this + ZPOS*bytes]	; load z value of vector
end if
		xorp#x	xval, mask					; x = -x
		xorp#x	yval, mask					; y = -y
if dim = 3
		xorp#x	zval, mask					; z = -z
end if
		movs#x	[this + XPOS*bytes], xval	; this->x = xval
		movs#x	[this + YPOS*bytes], yval	; this->y = yval
if dim = 3
		movs#x	[this + ZPOS*bytes], zval	; this->z = zval
end if
		ret
}
ReflectOrigin3D_flt32:	REFLECT_ORIGIN	3, s
ReflectOrigin3D_flt64:	REFLECT_ORIGIN	3, d
ReflectOrigin2D_flt32:	REFLECT_ORIGIN	2, s
ReflectOrigin2D_flt64:	REFLECT_ORIGIN	2, d

;------------------------------------------------------------------------------;
;       Reflection through the axis                                            ;
;------------------------------------------------------------------------------;
macro	REFLECT_CORE	pos1, pos2, dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
val1	equ		xmm0						; first value of vector
val2	equ		xmm1						; second value of vector
mask	equ		xmm2						; sign mask
if x eq s
smask	= SMASK_FLT32						; sign mask
scale	= 2									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		initreg	mask, treg, smask			; load sign mask
		movs#x	val1, [this + pos1*bytes]	; val1 = this->pos1
if dim = 3
		movs#x	val2, [this + pos2*bytes]	; val2 = this->pos2
end if
		xorp#x	val1, mask					; val1 = -val1
if dim = 3
		xorp#x	val2, mask					; val2 = -val2
end if
		movs#x	[this + pos1*bytes], val1	; this->pos1 = val1
if dim = 3
		movs#x	[this + pos2*bytes], val2	; this->pos2 = val2
end if
		ret
}

; Reflection through the X axis
ReflectX_flt32:		REFLECT_CORE	YPOS, ZPOS, 3, s
ReflectX_flt64:		REFLECT_CORE	YPOS, ZPOS, 3, d

; Reflection through the Y axis
ReflectY_flt32:		REFLECT_CORE	XPOS, ZPOS, 3, s
ReflectY_flt64:		REFLECT_CORE	XPOS, ZPOS, 3, d

; Reflection through the Z axis
ReflectZ_flt32:		REFLECT_CORE	XPOS, YPOS, 3, s
ReflectZ_flt64:		REFLECT_CORE	XPOS, YPOS, 3, d

;------------------------------------------------------------------------------;
;       Reflection through the plane                                           ;
;------------------------------------------------------------------------------;

; Reflection through the YZ plane
ReflectYZ_flt32:	REFLECT_CORE	XPOS, -1, 2, s
ReflectYZ_flt64:	REFLECT_CORE	XPOS, -1, 2, d

; Reflection through the XZ plane
ReflectXZ_flt32:	REFLECT_CORE	YPOS, -1, 2, s
ReflectXZ_flt64:	REFLECT_CORE	YPOS, -1, 2, d

; Reflection through the XY plane
ReflectXY_flt32:	REFLECT_CORE	ZPOS, -1, 2, s
ReflectXY_flt64:	REFLECT_CORE	ZPOS, -1, 2, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Square root of the vector                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SQRT	x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
mask	equ		xmm2						; sign mask
vscale	equ		xmm3						; vector scale factor
sign	equ		xmm4						; sign value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
if x eq s
smask	= SMASK_FLT32						; sign mask
Hypot	= Hypot2D_flt32						; Hypotenuse function
sqrtval	= SQRT12_FLT32						; 1 / Sqrt (2)
scale	= 2									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
Hypot	= Hypot2D_flt64						; Hypotenuse function
sqrtval	= SQRT12_FLT64						; 1 / Sqrt (2)
scale	= 3									; scale value
end if
space	= 1 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
;---[Call hypotenuse functon]--------------
		movs#x	xval, [this + XPOS*bytes]	; load x value of vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of vector
		mov		fptr, Hypot
		call	fptr						; call Hypot (xval, yval)
;---[Compute square root of number]--------
		mov		this, [s_this]				; get "this" variable from the stack
		initreg	mask, fptr, smask			; load sign mask
		initreg	vscale, fptr, sqrtval		; vscale = 1.0 / Sqrt (2)
		movs#x	sign, [this + YPOS*bytes]
		andp#x	sign, mask					; sign = Sign (this->yval)
		movap#x	yval, xval					; xval = yval = Hypot (xval, yval)
		adds#x	xval, [this + XPOS*bytes]	; yval = Hypot (xval, yval) + this->xval
		sqrts#x	xval, xval					; xval = Sqrt (yval)
		muls#x	xval, vscale				; xval *= vscale
		subs#x	yval, [this + XPOS*bytes]	; yval = Hypot (xval, yval) - this->xval
		sqrts#x	yval, yval					; yval = Sqrt (yval)
		muls#x	yval, vscale				; yval *= vscale
		orp#x	yval, sign					; yval *= sign
		movs#x	[this + XPOS*bytes], xval	; this->x = xval
		movs#x	[this + YPOS*bytes], yval	; this->y = yval
		add		stack, space				; restoring back the stack pointer
		ret
}
Sqrt_flt32:	SQRT	s
Sqrt_flt64:	SQRT	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Square value of the vector                                             ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SQR		x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
temp	equ		xmm2						; temporary register
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	xval, [this + XPOS*bytes]	; load x value of vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of vector
		movap#x	temp, yval					; temp = yval
		muls#x	yval, xval					; yval *= xval
		adds#x	yval, yval					; yval += yval
		muls#x	xval, xval					; xval *= xval
		muls#x	temp, temp					; temp *= temp
		subs#x	xval, temp					; xval -= temp
		movs#x	[this + XPOS*bytes], xval	; this->x = xval
		movs#x	[this + YPOS*bytes], yval	; this->y = yval
		ret
}
Sqr_flt32:	SQR	s
Sqr_flt64:	SQR	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Inverse vector                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	INVERSE		x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
temp0	equ		xmm2						; temporary register #1
temp1	equ		xmm3						; temporary register #2
mask	equ		xmm4						; data mask to get absolute value
max		equ		xmm5						; max value
barier1	equ		xmm6						; first barier
barier2	equ		xmm7						; second barier
vscale	equ		xmm8						; vector scale factor
inv		equ		xmm9						; inverse value
if x eq s
dmask	= DMASK_FLT32						; data mask
smask	= SMASK_FLT32						; sign mask
oneval	= PONE_FLT32						; 1.0
const1	= 0x5F800000						; 2^+64
const2	= 0x20000000						; 2^-63
sclval1	= 0x1F800000						; 2^-64
sclval2	= 0x6A800000						; 2^+86
scale	= 2									; scale value
else if x eq d
dmask	= DMASK_FLT64						; data mask
smask	= SMASK_FLT64						; sign mask
oneval	= PONE_FLT64						; 1.0
const1	= 0x5FF0000000000000				; 2^+512
const2	= 0x2000000000000000				; 2^-511
sclval1	= 0x1FF0000000000000				; 2^-512
sclval2	= 0x6330000000000000				; 2^+564
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	barier1, treg, const1		; barier1 = const1
		initreg	barier2, treg, const2		; barier2 = const2
		movs#x	xval, [this + XPOS*bytes]	; load x value of vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of vector
		movap#x	temp0, xval
		andp#x	temp0, mask					; temp0 = Abs (xval)
		movap#x	temp1, yval
		andp#x	temp1, mask					; temp1 = Abs (yval)
		movap#x	max, temp0
		maxs#x	max, temp1					; max = Max (temp0, temp1)
		comis#x	max, barier1				; if (max >= barier1)
		jae		.over						;     then go to overflow prevention branch
		comis#x	max, barier2				; if (max < barier2)
		jb		.under						;     then go to underflow prevention branch
;---[Normal execution branch]--------------
		initreg	mask, treg, smask			; mask = smask
		xorp#x	yval, mask					; yval = -yval
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, xval					; temp0 = xval
		movap#x	temp1, yval					; temp1 = yval
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		muls#x	xval, inv					; xval *= inv
		muls#x	yval, inv					; yval *= inv
		movs#x	[this + XPOS*bytes], xval	; this->x = xval
		movs#x	[this + YPOS*bytes], yval	; this->y = yval
		ret
;---[Overflow prevention branch]-----------
.over:	initreg	vscale, treg, sclval1		; vscale = sclval1
		muls#x	xval, vscale				; xval *= vscale
		muls#x	yval, vscale				; yval *= vscale
		initreg	mask, treg, smask			; mask = smask
		xorp#x	yval, mask					; yval = -yval
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, xval					; temp0 = xval
		movap#x	temp1, yval					; temp1 = yval
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		muls#x	xval, inv					; xval *= inv
		muls#x	yval, inv					; yval *= inv
		muls#x	xval, vscale				; xval *= vscale
		muls#x	yval, vscale				; yval *= vscale
		movs#x	[this + XPOS*bytes], xval	; this->x = xval
		movs#x	[this + YPOS*bytes], yval	; this->y = yval
		ret
;---[Underflow prevention branch]----------
.under:	initreg	vscale, treg, sclval2		; vscale = sclval2
		muls#x	xval, vscale				; xval *= vscale
		muls#x	yval, vscale				; yval *= vscale
		initreg	mask, treg, smask			; mask = smask
		xorp#x	yval, mask					; yval = -yval
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, xval					; temp0 = xval
		movap#x	temp1, yval					; temp1 = yval
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		muls#x	xval, inv					; xval *= inv
		muls#x	yval, inv					; yval *= inv
		muls#x	xval, vscale				; xval *= vscale
		muls#x	yval, vscale				; yval *= vscale
		movs#x	[this + XPOS*bytes], xval	; this->x = xval
		movs#x	[this + YPOS*bytes], yval	; this->y = yval
		ret
}
Inverse_flt32:	INVERSE	s
Inverse_flt64:	INVERSE	d

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;
macro	SCALAR		op, dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
value	equ		xmm0						; value to process with
;---[Internal variables]-------------------
xval	equ		xmm1						; x value of vector
yval	equ		xmm2						; y value of vector
zval	equ		xmm3						; z value of vector
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	xval, [this + XPOS*bytes]	; load x value of vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of vector
if dim = 3
		movs#x	zval, [this + ZPOS*bytes]	; load z value of vector
end if
		op#s#x	xval, value					; change x value
		op#s#x	yval, value					; change y value
if dim = 3
		op#s#x	zval, value					; change z value
end if
		movs#x	[this + XPOS*bytes], xval	; this->x = xval
		movs#x	[this + YPOS*bytes], yval	; this->y = yval
if dim = 3
		movs#x	[this + ZPOS*bytes], zval	; this->z = zval
end if
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	VECTOR		op, dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
src		equ		rsi							; pointer to source vector object
;---[Internal variables]-------------------
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
zval	equ		xmm2						; z value of vector
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	xval, [this + XPOS*bytes]	; load x value of target vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of target vector
if dim = 3
		movs#x	zval, [this + ZPOS*bytes]	; load z value of target vector
end if
		op#s#x	xval, [src + XPOS*bytes]	; change x value of target vector
		op#s#x	yval, [src + YPOS*bytes]	; change y value of target vector
if dim = 3
		op#s#x	zval, [src + ZPOS*bytes]	; change z value of target vector
end if
		movs#x	[this + XPOS*bytes], xval	; this->x = xval
		movs#x	[this + YPOS*bytes], yval	; this->y = yval
if dim = 3
		movs#x	[this + ZPOS*bytes], zval	; this->z = zval
end if
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Addition of vectors                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
Add3D_flt32:	VECTOR	add, 3, s
Add3D_flt64:	VECTOR	add, 3, d
Add2D_flt32:	VECTOR	add, 2, s
Add2D_flt64:	VECTOR	add, 2, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Subtraction of vectors                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
Sub3D_flt32:	VECTOR	sub, 3, s
Sub3D_flt64:	VECTOR	sub, 3, d
Sub2D_flt32:	VECTOR	sub, 2, s
Sub2D_flt64:	VECTOR	sub, 2, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication by scalar value                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
Mul3D_flt32:	SCALAR	mul, 3, s
Mul3D_flt64:	SCALAR	mul, 3, d
Mul2D_flt32:	SCALAR	mul, 2, s
Mul2D_flt64:	SCALAR	mul, 2, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication of vectors                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	VECTOR_MUL	x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
src		equ		rsi							; pointer to source vector object
;---[Internal variables]-------------------
txval	equ		xmm0						; x value of target vector
tyval	equ		xmm1						; y value of target vector
sxval	equ		xmm2						; x value of source vector
syval	equ		xmm3						; y value of source vector
temp0	equ		xmm4						; temporary register #1
temp1	equ		xmm5						; temporary register #2
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	txval, [this + XPOS*bytes]	; load x value of target vector
		movs#x	tyval, [this + YPOS*bytes]	; load y value of target vector
		movs#x	sxval, [src + XPOS*bytes]	; load x value of source vector
		movs#x	syval, [src + YPOS*bytes]	; load y value of source vector
		movap#x	temp0, txval				; temp0 = txval
		movap#x	temp1, tyval				; temp1 = tyval
		muls#x	txval, sxval				; txval *= sxval
		muls#x	temp1, syval				; temp1 *= syval
		subs#x	txval, temp1				; txval -= temp1
		muls#x	tyval, sxval				; tyval *= sxval
		muls#x	temp0, syval				; temp0 *= syval
		adds#x	tyval, temp0				; tyval += temp0
		movs#x	[this + XPOS*bytes], txval	; this->x = txval
		movs#x	[this + YPOS*bytes], tyval	; this->y = tyval
		ret
}
VectorMul_flt32:	VECTOR_MUL	s
VectorMul_flt64:	VECTOR_MUL	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division by scalar value                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
Div3D_flt32:	SCALAR	div, 3, s
Div3D_flt64:	SCALAR	div, 3, d
Div2D_flt32:	SCALAR	div, 2, s
Div2D_flt64:	SCALAR	div, 2, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division of vectors                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	VECTOR_DIV	x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
src		equ		rsi							; pointer to source vector object
;---[Internal variables]-------------------
treg	equ		rax							; temporary register
txval	equ		xmm0						; x value of target vector
tyval	equ		xmm1						; y value of target vector
sxval	equ		xmm2						; x value of source vector
syval	equ		xmm3						; y value of source vector
temp0	equ		xmm4						; temporary register #1
temp1	equ		xmm5						; temporary register #2
mask	equ		xmm6						; data mask to get absolute value
max		equ		xmm7						; max value
barier1	equ		xmm8						; first barier
barier2	equ		xmm9						; second barier
vscale	equ		xmm10						; vector scale factor
inv		equ		xmm11						; inverse value
if x eq s
dmask	= DMASK_FLT32						; data mask
oneval	= PONE_FLT32						; 1.0
const1	= 0x5F800000						; 2^+64
const2	= 0x20000000						; 2^-63
sclval1	= 0x1F800000						; 2^-64
sclval2	= 0x6A800000						; 2^+86
scale	= 2									; scale value
else if x eq d
dmask	= DMASK_FLT64						; data mask
oneval	= PONE_FLT64						; 1.0
const1	= 0x5FF0000000000000				; 2^+512
const2	= 0x2000000000000000				; 2^-511
sclval1	= 0x1FF0000000000000				; 2^-512
sclval2	= 0x6330000000000000				; 2^+564
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		initreg	mask, treg, dmask			; mask = dmask
		initreg	barier1, treg, const1		; barier1 = const1
		initreg	barier2, treg, const2		; barier2 = const2
		movs#x	txval, [this + XPOS*bytes]	; load x value of target vector
		movs#x	tyval, [this + YPOS*bytes]	; load y value of target vector
		movs#x	sxval, [src + XPOS*bytes]	; load x value of source vector
		movs#x	syval, [src + YPOS*bytes]	; load y value of source vector
		movap#x	temp0, sxval
		andp#x	temp0, mask					; temp0 = Abs (sxval)
		movap#x	temp1, syval
		andp#x	temp1, mask					; temp1 = Abs (syval)
		movap#x	max, temp0
		maxs#x	max, temp1					; max = Max (temp0, temp1)
		comis#x	max, barier1				; if (max >= barier1)
		jae		.over						;     then go to overflow prevention branch
		comis#x	max, barier2				; if (max < barier2)
		jb		.under						;     then go to underflow prevention branch
;---[Normal execution branch]--------------
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, sxval				; temp0 = sxval
		movap#x	temp1, syval				; temp1 = syval
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		movap#x	temp0, txval				; temp0 = txval
		movap#x	temp1, tyval				; temp1 = tyval
		muls#x	txval, sxval				; txval *= sxval
		muls#x	temp1, syval				; temp1 *= syval
		adds#x	txval, temp1				; txval += temp1
		muls#x	tyval, sxval				; tyval *= sxval
		muls#x	temp0, syval				; temp0 *= syval
		subs#x	tyval, temp0				; tyval -= temp0
		muls#x	txval, inv					; txval *= inv
		muls#x	tyval, inv					; tyval *= inv
		movs#x	[this + XPOS*bytes], txval	; this->x = txval
		movs#x	[this + YPOS*bytes], tyval	; this->y = tyval
		ret
;---[Overflow prevention branch]-----------
.over:	initreg	vscale, treg, sclval1		; vscale = sclval1
		muls#x	sxval, vscale				; sxval *= vscale
		muls#x	syval, vscale				; syval *= vscale
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, sxval				; temp0 = sxval
		movap#x	temp1, syval				; temp1 = syval
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		movap#x	temp0, txval				; temp0 = txval
		movap#x	temp1, tyval				; temp1 = tyval
		muls#x	txval, sxval				; txval *= sxval
		muls#x	temp1, syval				; temp1 *= syval
		adds#x	txval, temp1				; txval += temp1
		muls#x	tyval, sxval				; tyval *= sxval
		muls#x	temp0, syval				; temp0 *= syval
		subs#x	tyval, temp0				; tyval -= temp0
		muls#x	txval, inv					; txval *= inv
		muls#x	tyval, inv					; tyval *= inv
		muls#x	txval, vscale				; txval *= vscale
		muls#x	tyval, vscale				; tyval *= vscale
		movs#x	[this + XPOS*bytes], txval	; this->x = txval
		movs#x	[this + YPOS*bytes], tyval	; this->y = tyval
		ret
;---[Underflow prevention branch]----------
.under:	initreg	vscale, treg, sclval2		; vscale = sclval2
		muls#x	sxval, vscale				; sxval *= vscale
		muls#x	syval, vscale				; syval *= vscale
		initreg	inv, treg, oneval			; one = 1.0
		movap#x	temp0, sxval				; temp0 = sxval
		movap#x	temp1, syval				; temp1 = syval
		muls#x	temp0, temp0				; temp0 *= temp0
		muls#x	temp1, temp1				; temp1 *= temp1
		adds#x	temp0, temp1				; temp0 += temp1
		divs#x	inv, temp0					; inv = 1.0 / temp0
		movap#x	temp0, txval				; temp0 = txval
		movap#x	temp1, tyval				; temp1 = tyval
		muls#x	txval, sxval				; txval *= sxval
		muls#x	temp1, syval				; temp1 *= syval
		adds#x	txval, temp1				; txval += temp1
		muls#x	tyval, sxval				; tyval *= sxval
		muls#x	temp0, syval				; temp0 *= syval
		subs#x	tyval, temp0				; tyval -= temp0
		muls#x	txval, inv					; txval *= inv
		muls#x	tyval, inv					; tyval *= inv
		muls#x	txval, vscale				; txval *= vscale
		muls#x	tyval, vscale				; tyval *= vscale
		movs#x	[this + XPOS*bytes], txval	; this->x = txval
		movs#x	[this + YPOS*bytes], tyval	; this->y = tyval
		ret
}
VectorDiv_flt32:	VECTOR_DIV	s
VectorDiv_flt64:	VECTOR_DIV	d

;******************************************************************************;
;       Rotation of vector                                                     ;
;******************************************************************************;
macro	ROTATE	pos1, pos2, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
cos		equ		xmm0						; cosine value of angle
sin		equ		xmm1						; sine value of angle
;---[Internal variables]-------------------
val1	equ		xmm2						; first value of vector
val2	equ		xmm3						; second value of vector
temp0	equ		xmm4						; temporary register #1
temp1	equ		xmm5						; temporary register #2
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	val1, [this + pos1*bytes]	; val1 = this->pos1
		movs#x	val2, [this + pos2*bytes]	; val2 = this->pos2
		movap#x	temp0, val1					; temp0 = val1
		movap#x	temp1, val2					; temp1 = val2
		muls#x	val1, cos					; val1 *= cos
		muls#x	temp1, sin					; temp1 *= sin
		subs#x	val1, temp1					; val1 -= temp1
		muls#x	val2, cos					; val2 *= cos
		muls#x	temp0, sin					; temp0 *= sin
		adds#x	val2, temp0					; val2 += temp0
		movs#x	[this + pos1*bytes], val1	; this->pos1 = val1
		movs#x	[this + pos2*bytes], val2	; this->pos2 = val2
		ret
}

; Rotation around the X axis
RotateX_flt32:	ROTATE	YPOS, ZPOS, s
RotateX_flt64:	ROTATE	YPOS, ZPOS, d

; Rotation around the Y axis
RotateY_flt32:	ROTATE	ZPOS, XPOS, s
RotateY_flt64:	ROTATE	ZPOS, XPOS, d

; Rotation around the Z axis
RotateZ_flt32:	ROTATE	XPOS, YPOS, s
RotateZ_flt64:	ROTATE	XPOS, YPOS, d

;******************************************************************************;
;       Shearing of vector                                                     ;
;******************************************************************************;

;==============================================================================;
;       Shearing parallel to the axis                                          ;
;==============================================================================;
macro	SHEAR_CORE	pos1, pos2, pos3, dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
value1	equ		xmm0						; first value to process with
value2	equ		xmm1						; second value to process with
;---[Internal variables]-------------------
val1	equ		xmm1						; first value of vector
val2	equ		xmm2						; second value of vector
val3	equ		xmm3						; third value of vector
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	val1, [this + pos1*bytes]	; val1 = this->pos1
if dim = 3
		movs#x	val2, [this + pos2*bytes]	; val2 = this->pos2
end if
		movs#x	val3, [this + pos3*bytes]	; val3 = this->pos3
		muls#x	value1, val3				; value1 *= val3
		adds#x	val1, value1				; val1 += value1
if dim = 3
		muls#x	value2, val3				; value2 *= val3
		adds#x	val2, value2				; val2 += value2
end if
		movs#x	[this + pos1*bytes], val1	; this->pos1 = val1
if dim = 3
		movs#x	[this + pos2*bytes], val2	; this->pos2 = val2
end if
		ret
}

; Shearing parallel to the X axis
ShearX_flt32:	SHEAR_CORE	XPOS, -1, YPOS, 2, s
ShearX_flt64:	SHEAR_CORE	XPOS, -1, YPOS, 2, d

; Shearing parallel to the Y axis
ShearY_flt32:	SHEAR_CORE	YPOS, -1, XPOS, 2, s
ShearY_flt64:	SHEAR_CORE	YPOS, -1, XPOS, 2, d

;==============================================================================;
;       Shearing parallel to the plane                                         ;
;==============================================================================;

; Shearing parallel to the YZ plane
ShearYZ_flt32:	SHEAR_CORE	YPOS, ZPOS, XPOS, 3, s
ShearYZ_flt64:	SHEAR_CORE	YPOS, ZPOS, XPOS, 3, d

; Shearing parallel to the XZ plane
ShearXZ_flt32:	SHEAR_CORE	XPOS, ZPOS, YPOS, 3, s
ShearXZ_flt64:	SHEAR_CORE	XPOS, ZPOS, YPOS, 3, d

; Shearing parallel to the XY plane
ShearXY_flt32:	SHEAR_CORE	XPOS, YPOS, ZPOS, 3, s
ShearXY_flt64:	SHEAR_CORE	XPOS, YPOS, ZPOS, 3, d

;******************************************************************************;
;       Scaling of vector                                                      ;
;******************************************************************************;
Scale3D_flt32:	VECTOR	mul, 3, s
Scale3D_flt64:	VECTOR	mul, 3, d
Scale2D_flt32:	VECTOR	mul, 2, s
Scale2D_flt64:	VECTOR	mul, 2, d

;******************************************************************************;
;       Products                                                               ;
;******************************************************************************;

;==============================================================================;
;       Vector product                                                         ;
;==============================================================================;
macro	VPRODUCT	vect1, vect2, temp0, temp1, temp2, temp3, temp4, temp5, dim, x
{
;---[Internal variables]-------------------
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
if dim = 3
		movs#x	temp0, [vect1 + YPOS*bytes]
		muls#x	temp0, [vect2 + ZPOS*bytes]	; temp0 = vect1->y * vect2->z
		movs#x	temp3, [vect1 + ZPOS*bytes]
		muls#x	temp3, [vect2 + YPOS*bytes]	; temp3 = vect1->z * vect2->y
		subs#x	temp0, temp3				; temp0 -= temp3
		movs#x	temp1, [vect1 + ZPOS*bytes]
		muls#x	temp1, [vect2 + XPOS*bytes]	; temp1 = vect1->z * vect2->x
		movs#x	temp4, [vect1 + XPOS*bytes]
		muls#x	temp4, [vect2 + ZPOS*bytes]	; temp4 = vect1->x * vect2->z
		subs#x	temp1, temp4				; temp1 -= temp4
end if
		movs#x	temp2, [vect1 + XPOS*bytes]
		muls#x	temp2, [vect2 + YPOS*bytes]	; temp2 = vect1->x * vect2->y
		movs#x	temp5, [vect1 + YPOS*bytes]
		muls#x	temp5, [vect2 + XPOS*bytes]	; temp5 = vect1->y * vect2->x
		subs#x	temp2, temp5				; temp2 -= temp5
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	VECTOR_PRODUCT	x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
src		equ		rsi							; pointer to source vector object
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
	VPRODUCT	this, src, temp0, temp1, temp2, temp3, temp4, temp5, 3, x
		movs#x	[this + XPOS*bytes], temp0	; this->x = temp0
		movs#x	[this + YPOS*bytes], temp1	; this->y = temp1
		movs#x	[this + ZPOS*bytes], temp2	; this->z = temp2
		ret
}
VectorProduct_flt32:	VECTOR_PRODUCT	s
VectorProduct_flt64:	VECTOR_PRODUCT	d

;==============================================================================;
;       Scalar product                                                         ;
;==============================================================================;
macro	SPRODUCT	vect1, vect2, xval, yval, zval, dim, x
{
;---[Internal variables]-------------------
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	xval, [vect1 + XPOS*bytes]	; load x value of target vector
		movs#x	yval, [vect1 + YPOS*bytes]	; load y value of target vector
if dim = 3
		movs#x	zval, [vect1 + ZPOS*bytes]	; load z value of target vector
end if
		muls#x	xval, [vect2 + XPOS*bytes]	; xval *= vect2->x
		muls#x	yval, [vect2 + YPOS*bytes]	; yval *= vect2->y
		adds#x	xval, yval					; xval += yval
if dim = 3
		muls#x	zval, [vect2 + ZPOS*bytes]	; zval *= vect2->z
		adds#x	xval, zval					; xval += zval
end if
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SCALAR_PRODUCT	dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
src		equ		rsi							; pointer to source vector object
;---[Internal variables]-------------------
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
zval	equ		xmm2						; z value of vector
;------------------------------------------
	SPRODUCT	this, src, xval, yval, zval, dim, x
		ret									; return result
}
ScalarProduct3D_flt32:	SCALAR_PRODUCT	3, s
ScalarProduct3D_flt64:	SCALAR_PRODUCT	3, d
ScalarProduct2D_flt32:	SCALAR_PRODUCT	2, s
ScalarProduct2D_flt64:	SCALAR_PRODUCT	2, d

;==============================================================================;
;       Triple product                                                         ;
;==============================================================================;
macro	TPRODUCT	vect1, vect2, vect3, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, x
{
;---[Internal variables]-------------------
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	temp0, [vect1 + XPOS*bytes]	; temp0 = vect1->x
		movs#x	temp1, [vect2 + XPOS*bytes]	; temp1 = vect2->x
		movs#x	temp2, [vect3 + XPOS*bytes]	; temp2 = vect3->x
;---[Compute intermediate value #1]--------
		movs#x	temp3, [vect2 + YPOS*bytes]
		muls#x	temp3, [vect3 + ZPOS*bytes]	; temp3 = vect2->y * vect3->z
		movs#x	temp6, [vect2 + ZPOS*bytes]
		muls#x	temp6, [vect3 + YPOS*bytes]	; temp6 = vect2->z * vect3->y
		subs#x	temp3, temp6				; temp3 -= temp6
;---[Compute intermediate value #2]--------
		movs#x	temp4, [vect3 + YPOS*bytes]
		muls#x	temp4, [vect1 + ZPOS*bytes]	; temp4 = vect3->y * vect1->z
		movs#x	temp7, [vect3 + ZPOS*bytes]
		muls#x	temp7, [vect1 + YPOS*bytes]	; temp7 = vect3->z * vect1->y
		subs#x	temp4, temp7				; temp4 -= temp7
;---[Compute intermediate value #3]--------
		movs#x	temp5, [vect1 + YPOS*bytes]
		muls#x	temp5, [vect2 + ZPOS*bytes]	; temp5 = vect1->y * vect2->z
		movs#x	temp8, [vect1 + ZPOS*bytes]
		muls#x	temp8, [vect2 + YPOS*bytes]	; temp8 = vect1->z * vect2->y
		subs#x	temp5, temp8				; temp5 -= temp8
;---[Multiply intermediate values]---------
		muls#x	temp0, temp3				; temp0 *= temp3
		muls#x	temp1, temp4				; temp1 *= temp4
		muls#x	temp2, temp5				; temp2 *= temp5
;---[Compute sum of values]----------------
		adds#x	temp0, temp1				; temp0 += temp1
		adds#x	temp0, temp2				; temp0 += temp2
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRIPLE_PRODUCT	x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
src1	equ		rsi							; pointer to source vector object #1
src2	equ		rdx							; pointer to source vector object #2
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
temp8	equ		xmm8						; temporary register #9
;------------------------------------------
	TPRODUCT	this, src1, src2, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, x
		ret									; return result
}
TripleProduct_flt32:	TRIPLE_PRODUCT	s
TripleProduct_flt64:	TRIPLE_PRODUCT	d

;******************************************************************************;
;       Absolute value                                                         ;
;******************************************************************************;
macro	ABS		Hypot, dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
zval	equ		xmm2						; z value of vector
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	xval, [this + XPOS*bytes]	; load x value of vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of vector
if dim = 3
		movs#x	zval, [this + ZPOS*bytes]	; load z value of vector
end if
		mov		fptr, Hypot
		jmp		fptr						; return Hypot (this->x, this->y, this->z)
}
Abs3D_flt32:	ABS		Hypot3D_flt32, 3, s
Abs3D_flt64:	ABS		Hypot3D_flt64, 3, d
Abs2D_flt32:	ABS		Hypot2D_flt32, 2, s
Abs2D_flt64:	ABS		Hypot2D_flt64, 2, d

;******************************************************************************;
;       Angle value                                                            ;
;******************************************************************************;
macro	ANGLE	ArcTan2, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
sin		equ		xmm0						; sin value of vector
cos		equ		xmm1						; cos value of vector
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	sin, [this + YPOS*bytes]	; load y value of vector
		movs#x	cos, [this + XPOS*bytes]	; load x value of vector
		mov		fptr, ArcTan2
		jmp		fptr						; return ArcTan2 (sin, cos)
}
Angle_flt32:	ANGLE	ArcTan2_flt32, s
Angle_flt64:	ANGLE	ArcTan2_flt64, d

;******************************************************************************;
;       Cosine value of angle between the vectors                              ;
;******************************************************************************;
macro	COS		Hypot, dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
src		equ		rsi							; pointer to source vector object
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
zval	equ		xmm2						; z value of vector
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "src" variable
s_norm1	equ		stack + 2 * 8				; stack position of "norm1" variable
s_norm2	equ		stack + 3 * 8				; stack position of "norm2" variable
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
space	= 5 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], src				; save "src" variable into the stack
;---[Call Hypot functon]-------------------
		movs#x	xval, [this + XPOS*bytes]	; load x value of target vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of target vector
if dim = 3
		movs#x	zval, [this + ZPOS*bytes]	; load z value of target vector
end if
		mov		fptr, Hypot
		call	fptr						; call Hypot (this->x, this->y, this->z)
		movs#x	[s_norm1], xval				; save "norm1" variable into the stack
;---[Call Hypot functon]-------------------
		mov		src, [s_src]				; get "src" variable from the stack
		movs#x	xval, [src + XPOS*bytes]	; load x value of source vector
		movs#x	yval, [src + YPOS*bytes]	; load y value of source vector
if dim = 3
		movs#x	zval, [src + ZPOS*bytes]	; load z value of source vector
end if
		mov		fptr, Hypot
		call	fptr						; call Hypot (src->x, src->y, src->z)
		movs#x	[s_norm2], xval				; save "norm2" variable into the stack
;---[Find scalar product]------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		src, [s_src]				; get "src" variable from the stack
	SPRODUCT	this, src, xval, yval, zval, dim, x
;---[Compute cos value]--------------------
		divs#x	xval, [s_norm1]
		divs#x	xval, [s_norm2]
		add		stack, space				; restoring back the stack pointer
		ret
}
Cos3D_flt32:	COS		Hypot3D_flt32, 3, s
Cos3D_flt64:	COS		Hypot3D_flt64, 3, d
Cos2D_flt32:	COS		Hypot2D_flt32, 2, s
Cos2D_flt64:	COS		Hypot2D_flt64, 2, d

;******************************************************************************;
;       Projection of the vector to another vector                             ;
;******************************************************************************;
macro	PROJECTION		Hypot, dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
src		equ		rsi							; pointer to source vector object
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
zval	equ		xmm2						; z value of vector
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_src	equ		stack + 1 * 8				; stack position of "src" variable
s_norm	equ		stack + 2 * 8				; stack position of "norm" variable
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
space	= 3 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_this], this				; save "this" variable into the stack
		mov		[s_src], src				; save "src" variable into the stack
;---[Call Hypot functon]-------------------
		movs#x	xval, [src + XPOS*bytes]	; load x value of source vector
		movs#x	yval, [src + YPOS*bytes]	; load y value of source vector
if dim = 3
		movs#x	zval, [src + ZPOS*bytes]	; load z value of source vector
end if
		mov		fptr, Hypot
		call	fptr						; call Hypot (src->x, src->y, src->z)
		movs#x	[s_norm], xval				; save "norm" variable into the stack
;---[Find scalar product]------------------
		mov		this, [s_this]				; get "this" variable from the stack
		mov		src, [s_src]				; get "src" variable from the stack
	SPRODUCT	this, src, xval, yval, zval, dim, x
;---[Compute projection value]-------------
		divs#x	xval, [s_norm]
		add		stack, space				; restoring back the stack pointer
		ret
}
Projection3D_flt32:	PROJECTION	Hypot3D_flt32, 3, s
Projection3D_flt64:	PROJECTION	Hypot3D_flt64, 3, d
Projection2D_flt32:	PROJECTION	Hypot2D_flt32, 2, s
Projection2D_flt64:	PROJECTION	Hypot2D_flt64, 2, d

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;
macro	ZERO	status, result, xval, yval, zval, zero, mask, dim, x
{
;---[Internal variables]-------------------
if x eq s
dmask	= DMASK_FLT32						; data mask
else if x eq d
dmask	= DMASK_FLT64						; data mask
end if
;------------------------------------------
		initreg	mask, result, dmask			; load data mask
		andp#x	xval, mask					; xval = Abs (xval)
		andp#x	yval, mask					; yval = Abs (yval)
		adds#x	xval, yval					; xval += yval
if dim = 3
		andp#x	zval, mask					; zval = Abs (zval)
		adds#x	xval, zval					; xval += zval
end if
		xor		result, result				; result = 0
		xorp#x	zero, zero					; zero = 0
		comis#x	xval, zero					; if (xval == NAN || xval != 0)
		jp		.nteql						;     then return false
		sete	status						;     else return true
.nteql:	ret
}

;==============================================================================;
;       Check for zero vector                                                  ;
;==============================================================================;
macro	IS_ZERO	dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
zval	equ		xmm2						; z value of vector
zero	equ		xmm3						; 0.0
mask	equ		xmm4						; data mask
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	xval, [this + XPOS*bytes]	; load x value of vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of vector
if dim = 3
		movs#x	zval, [this + ZPOS*bytes]	; load z value of vector
end if
		ZERO	status, result, xval, yval, zval, zero, mask, dim, x
}
IsZero3D_flt32:	IS_ZERO	3, s
IsZero3D_flt64:	IS_ZERO	3, d
IsZero2D_flt32:	IS_ZERO	2, s
IsZero2D_flt64:	IS_ZERO	2, d

;==============================================================================;
;       Check for equality of the vectors                                      ;
;==============================================================================;
macro	EQUAL_CORE	op, dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to first vector object
src		equ		rsi							; pointer to second vector object
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
zval	equ		xmm2						; z value of vector
zero	equ		xmm3						; 0.0
mask	equ		xmm4						; data mask
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	xval, [this + XPOS*bytes]	; load x value of target vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of target vector
if dim = 3
		movs#x	zval, [this + ZPOS*bytes]	; load z value of target vector
end if
		op#s#x	xval, [src + XPOS*bytes]	; change x value
		op#s#x	yval, [src + YPOS*bytes]	; change y value
if dim = 3
		op#s#x	zval, [src + ZPOS*bytes]	; change z value
end if
		ZERO	status, result, xval, yval, zval, zero, mask, dim, x
}
IsEqual3D_flt32:	EQUAL_CORE	sub, 3, s
IsEqual3D_flt64:	EQUAL_CORE	sub, 3, d
IsEqual2D_flt32:	EQUAL_CORE	sub, 2, s
IsEqual2D_flt64:	EQUAL_CORE	sub, 2, d

;==============================================================================;
;       Check for negativity of the vectors                                    ;
;==============================================================================;
IsNeg3D_flt32:		EQUAL_CORE	add, 3, s
IsNeg3D_flt64:		EQUAL_CORE	add, 3, d
IsNeg2D_flt32:		EQUAL_CORE	add, 2, s
IsNeg2D_flt64:		EQUAL_CORE	add, 2, d

;==============================================================================;
;       Check for collinearity of the vectors                                  ;
;==============================================================================;
macro	IS_COLLINEAR	dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to first vector object
src		equ		rsi							; pointer to second vector object
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
zero	equ		xmm6						; 0.0
mask	equ		xmm7						; data mask
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
	VPRODUCT	this, src, temp0, temp1, temp2, temp3, temp4, temp5, dim, x
		ZERO	status, result, temp0, temp1, temp2, zero, mask, dim, x
}
IsCollinear3D_flt32:	IS_COLLINEAR	3, s
IsCollinear3D_flt64:	IS_COLLINEAR	3, d
IsCollinear2D_flt32:	IS_COLLINEAR	2, s
IsCollinear2D_flt64:	IS_COLLINEAR	2, d

;==============================================================================;
;       Check for orthogonality of the vectors                                 ;
;==============================================================================;
macro	IS_ORTHOGONAL	dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to first vector object
src		equ		rsi							; pointer to second vector object
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
zval	equ		xmm2						; z value of vector
zero	equ		xmm3						; 0.0
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
	SPRODUCT	this, src, xval, yval, zval, dim, x
		xor		result, result				; result = 0
		xorp#x	zero, zero					; zero = 0
		comis#x	xval, zero					; if (xval == NAN || xval != 0)
		jp		.nteql						;     then return false
		sete	status						;     else return true
.nteql:	ret
}
IsOrthogonal3D_flt32:	IS_ORTHOGONAL	3, s
IsOrthogonal3D_flt64:	IS_ORTHOGONAL	3, d
IsOrthogonal2D_flt32:	IS_ORTHOGONAL	2, s
IsOrthogonal2D_flt64:	IS_ORTHOGONAL	2, d

;==============================================================================;
;       Check for coplanarity of the vectors                                   ;
;==============================================================================;
macro	IS_COPLANAR		dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to first vector object
src1	equ		rsi							; pointer to second vector object
src2	equ		rdx							; pointer to third vector object
;---[Internal variables]-------------------
status	equ		al							; operation status
result	equ		rax							; result register
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
temp8	equ		xmm8						; temporary register #9
zero	equ		xmm9						; 0.0
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
	TPRODUCT	this, src1, src2, temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, x
		xor		result, result				; result = 0
		xorp#x	zero, zero					; zero = 0
		comis#x	temp0, zero					; if (temp0 == NAN || temp0 != 0)
		jp		.nteql						;     then return false
		sete	status						;     else return true
.nteql:	ret
}
IsCoplanar_flt32:	IS_COPLANAR	3, s
IsCoplanar_flt64:	IS_COPLANAR	3, d

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
