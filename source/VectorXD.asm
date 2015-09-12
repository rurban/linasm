;                                                                   VectorXD.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                 FUNCTIONS TO OPERATE WITH 2D AND 3D VECTORS                 #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2015, Jack Black #
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

; Sine and Cosine
extrn	'Math_SinCos_flt32'			as	SinCos_flt32
extrn	'Math_SinCos_flt64'			as	SinCos_flt64

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
public	Normalize3D_flt32		as	'Vector3D32_Normalize'
public	Normalize3D_flt64		as	'Vector3D64_Normalize'
public	Normalize2D_flt32		as	'Vector2D32_Normalize'
public	Normalize2D_flt64		as	'Vector2D64_Normalize'
public	Normalize3D_flt32		as	'_ZN10Vector3D329NormalizeEv'
public	Normalize3D_flt64		as	'_ZN10Vector3D649NormalizeEv'
public	Normalize2D_flt32		as	'_ZN10Vector2D329NormalizeEv'
public	Normalize2D_flt64		as	'_ZN10Vector2D649NormalizeEv'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Reflection of vector                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Reflection through the origin                                          ;
;------------------------------------------------------------------------------;
public	ReflectOrigin3D_flt32	as	'Vector3D32_ReflectOrigin'
public	ReflectOrigin3D_flt64	as	'Vector3D64_ReflectOrigin'
public	ReflectOrigin2D_flt32	as	'Vector2D32_ReflectOrigin'
public	ReflectOrigin2D_flt64	as	'Vector2D64_ReflectOrigin'
public	ReflectOrigin2D_flt32	as	'Complex32_Neg'
public	ReflectOrigin2D_flt64	as	'Complex64_Neg'
public	ReflectOrigin3D_flt32	as	'_ZN10Vector3D3213ReflectOriginEv'
public	ReflectOrigin3D_flt64	as	'_ZN10Vector3D6413ReflectOriginEv'
public	ReflectOrigin2D_flt32	as	'_ZN10Vector2D3213ReflectOriginEv'
public	ReflectOrigin2D_flt64	as	'_ZN10Vector2D6413ReflectOriginEv'
public	ReflectOrigin2D_flt32	as	'_ZN9Complex323NegEv'
public	ReflectOrigin2D_flt64	as	'_ZN9Complex643NegEv'

;------------------------------------------------------------------------------;
;       Reflection through the axis                                            ;
;------------------------------------------------------------------------------;

; Reflection through the X axis
public	ReflectX_flt32			as	'Vector3D32_ReflectX'
public	ReflectX_flt64			as	'Vector3D64_ReflectX'
public	ReflectX_flt32			as	'_ZN10Vector3D328ReflectXEv'
public	ReflectX_flt64			as	'_ZN10Vector3D648ReflectXEv'

; Reflection through the Y axis
public	ReflectY_flt32			as	'Vector3D32_ReflectY'
public	ReflectY_flt64			as	'Vector3D64_ReflectY'
public	ReflectY_flt32			as	'_ZN10Vector3D328ReflectYEv'
public	ReflectY_flt64			as	'_ZN10Vector3D648ReflectYEv'

; Reflection through the Z axis
public	ReflectZ_flt32			as	'Vector3D32_ReflectZ'
public	ReflectZ_flt64			as	'Vector3D64_ReflectZ'
public	ReflectZ_flt32			as	'_ZN10Vector3D328ReflectZEv'
public	ReflectZ_flt64			as	'_ZN10Vector3D648ReflectZEv'

;------------------------------------------------------------------------------;
;       Reflection through the plane                                           ;
;------------------------------------------------------------------------------;

; Reflection through the YZ plane
public	ReflectYZ_flt32			as	'Vector3D32_ReflectYZ'
public	ReflectYZ_flt64			as	'Vector3D64_ReflectYZ'
public	ReflectYZ_flt32			as	'Vector2D32_ReflectY'
public	ReflectYZ_flt64			as	'Vector2D64_ReflectY'
public	ReflectYZ_flt32			as	'_ZN10Vector3D329ReflectYZEv'
public	ReflectYZ_flt64			as	'_ZN10Vector3D649ReflectYZEv'
public	ReflectYZ_flt32			as	'_ZN10Vector2D328ReflectYEv'
public	ReflectYZ_flt64			as	'_ZN10Vector2D648ReflectYEv'

; Reflection through the XZ plane
public	ReflectXZ_flt32			as	'Vector3D32_ReflectXZ'
public	ReflectXZ_flt64			as	'Vector3D64_ReflectXZ'
public	ReflectXZ_flt32			as	'Vector2D32_ReflectX'
public	ReflectXZ_flt64			as	'Vector2D64_ReflectX'
public	ReflectXZ_flt32			as	'Complex32_Conj'
public	ReflectXZ_flt64			as	'Complex64_Conj'
public	ReflectXZ_flt32			as	'_ZN10Vector3D329ReflectXZEv'
public	ReflectXZ_flt64			as	'_ZN10Vector3D649ReflectXZEv'
public	ReflectXZ_flt32			as	'_ZN10Vector2D328ReflectXEv'
public	ReflectXZ_flt64			as	'_ZN10Vector2D648ReflectXEv'
public	ReflectXZ_flt32			as	'_ZN9Complex324ConjEv'
public	ReflectXZ_flt64			as	'_ZN9Complex644ConjEv'

; Reflection through the XY plane
public	ReflectXY_flt32			as	'Vector3D32_ReflectXY'
public	ReflectXY_flt64			as	'Vector3D64_ReflectXY'
public	ReflectXY_flt32			as	'_ZN10Vector3D329ReflectXYEv'
public	ReflectXY_flt64			as	'_ZN10Vector3D649ReflectXYEv'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Square root of the vector                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Sqrt_flt32				as	'Complex32_Sqrt'
public	Sqrt_flt64				as	'Complex64_Sqrt'
public	Sqrt_flt32				as	'_ZN9Complex324SqrtEv'
public	Sqrt_flt64				as	'_ZN9Complex644SqrtEv'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Square value of the vector                                             ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Sqr_flt32				as	'Complex32_Sqr'
public	Sqr_flt64				as	'Complex64_Sqr'
public	Sqr_flt32				as	'_ZN9Complex323SqrEv'
public	Sqr_flt64				as	'_ZN9Complex643SqrEv'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Inverse vector                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Inverse_flt32			as	'Complex32_Inverse'
public	Inverse_flt64			as	'Complex64_Inverse'
public	Inverse_flt32			as	'_ZN9Complex327InverseEv'
public	Inverse_flt64			as	'_ZN9Complex647InverseEv'

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Addition of vectors                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Add3D_flt32				as	'Vector3D32_Add'
public	Add3D_flt64				as	'Vector3D64_Add'
public	Add2D_flt32				as	'Vector2D32_Add'
public	Add2D_flt64				as	'Vector2D64_Add'
public	Add2D_flt32				as	'Complex32_Add'
public	Add2D_flt64				as	'Complex64_Add'
public	Add3D_flt32				as	'_ZN10Vector3D323AddEPKS_'
public	Add3D_flt64				as	'_ZN10Vector3D643AddEPKS_'
public	Add2D_flt32				as	'_ZN10Vector2D323AddEPKS_'
public	Add2D_flt64				as	'_ZN10Vector2D643AddEPKS_'
public	Add2D_flt32				as	'_ZN9Complex323AddEPKS_'
public	Add2D_flt64				as	'_ZN9Complex643AddEPKS_'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Subtraction of vectors                                                 ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Sub3D_flt32				as	'Vector3D32_Sub'
public	Sub3D_flt64				as	'Vector3D64_Sub'
public	Sub2D_flt32				as	'Vector2D32_Sub'
public	Sub2D_flt64				as	'Vector2D64_Sub'
public	Sub2D_flt32				as	'Complex32_Sub'
public	Sub2D_flt64				as	'Complex64_Sub'
public	Sub3D_flt32				as	'_ZN10Vector3D323SubEPKS_'
public	Sub3D_flt64				as	'_ZN10Vector3D643SubEPKS_'
public	Sub2D_flt32				as	'_ZN10Vector2D323SubEPKS_'
public	Sub2D_flt64				as	'_ZN10Vector2D643SubEPKS_'
public	Sub2D_flt32				as	'_ZN9Complex323SubEPKS_'
public	Sub2D_flt64				as	'_ZN9Complex643SubEPKS_'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication by scalar value                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Mul3D_flt32				as	'Vector3D32_Mul'
public	Mul3D_flt64				as	'Vector3D64_Mul'
public	Mul2D_flt32				as	'Vector2D32_Mul'
public	Mul2D_flt64				as	'Vector2D64_Mul'
public	Mul3D_flt32				as	'_ZN10Vector3D323MulEf'
public	Mul3D_flt64				as	'_ZN10Vector3D643MulEd'
public	Mul2D_flt32				as	'_ZN10Vector2D323MulEf'
public	Mul2D_flt64				as	'_ZN10Vector2D643MulEd'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication of vectors                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	VectorMul_flt32			as	'Complex32_Mul'
public	VectorMul_flt64			as	'Complex64_Mul'
public	VectorMul_flt32			as	'_ZN9Complex323MulEPKS_'
public	VectorMul_flt64			as	'_ZN9Complex643MulEPKS_'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division by scalar value                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	Div3D_flt32				as	'Vector3D32_Div'
public	Div3D_flt64				as	'Vector3D64_Div'
public	Div2D_flt32				as	'Vector2D32_Div'
public	Div2D_flt64				as	'Vector2D64_Div'
public	Div3D_flt32				as	'_ZN10Vector3D323DivEf'
public	Div3D_flt64				as	'_ZN10Vector3D643DivEd'
public	Div2D_flt32				as	'_ZN10Vector2D323DivEf'
public	Div2D_flt64				as	'_ZN10Vector2D643DivEd'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division of vectors                                                    ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
public	VectorDiv_flt32			as	'Complex32_Div'
public	VectorDiv_flt64			as	'Complex64_Div'
public	VectorDiv_flt32			as	'_ZN9Complex323DivEPKS_'
public	VectorDiv_flt64			as	'_ZN9Complex643DivEPKS_'

;******************************************************************************;
;       Rotation of vector                                                     ;
;******************************************************************************;

; Rotation around the X axis
public	RotateX_flt32			as	'Vector3D32_RotateX'
public	RotateX_flt64			as	'Vector3D64_RotateX'
public	RotateX_flt32			as	'_ZN10Vector3D327RotateXEf'
public	RotateX_flt64			as	'_ZN10Vector3D647RotateXEd'

; Rotation around the Y axis
public	RotateY_flt32			as	'Vector3D32_RotateY'
public	RotateY_flt64			as	'Vector3D64_RotateY'
public	RotateY_flt32			as	'_ZN10Vector3D327RotateYEf'
public	RotateY_flt64			as	'_ZN10Vector3D647RotateYEd'

; Rotation around the Z axis
public	RotateZ_flt32			as	'Vector3D32_RotateZ'
public	RotateZ_flt64			as	'Vector3D64_RotateZ'
public	RotateZ_flt32			as	'Vector2D32_Rotate'
public	RotateZ_flt64			as	'Vector2D64_Rotate'
public	RotateZ_flt32			as	'_ZN10Vector3D327RotateZEf'
public	RotateZ_flt64			as	'_ZN10Vector3D647RotateZEd'
public	RotateZ_flt32			as	'_ZN10Vector2D326RotateEf'
public	RotateZ_flt64			as	'_ZN10Vector2D646RotateEd'

;******************************************************************************;
;       Shearing of vector                                                     ;
;******************************************************************************;

;==============================================================================;
;       Shearing parallel to the axis                                          ;
;==============================================================================;

; Shearing parallel to the X axis
public	ShearX_flt32			as	'Vector2D32_ShearX'
public	ShearX_flt64			as	'Vector2D64_ShearX'
public	ShearX_flt32			as	'_ZN10Vector2D326ShearXEf'
public	ShearX_flt64			as	'_ZN10Vector2D646ShearXEd'

; Shearing parallel to the Y axis
public	ShearY_flt32			as	'Vector2D32_ShearY'
public	ShearY_flt64			as	'Vector2D64_ShearY'
public	ShearY_flt32			as	'_ZN10Vector2D326ShearYEf'
public	ShearY_flt64			as	'_ZN10Vector2D646ShearYEd'

;==============================================================================;
;       Shearing parallel to the plane                                         ;
;==============================================================================;

; Shearing parallel to the YZ plane
public	ShearYZ_flt32			as	'Vector3D32_ShearYZ'
public	ShearYZ_flt64			as	'Vector3D64_ShearYZ'
public	ShearYZ_flt32			as	'_ZN10Vector3D327ShearYZEff'
public	ShearYZ_flt64			as	'_ZN10Vector3D647ShearYZEdd'

; Shearing parallel to the XZ plane
public	ShearXZ_flt32			as	'Vector3D32_ShearXZ'
public	ShearXZ_flt64			as	'Vector3D64_ShearXZ'
public	ShearXZ_flt32			as	'_ZN10Vector3D327ShearXZEff'
public	ShearXZ_flt64			as	'_ZN10Vector3D647ShearXZEdd'

; Shearing parallel to the XY plane
public	ShearXY_flt32			as	'Vector3D32_ShearXY'
public	ShearXY_flt64			as	'Vector3D64_ShearXY'
public	ShearXY_flt32			as	'_ZN10Vector3D327ShearXYEff'
public	ShearXY_flt64			as	'_ZN10Vector3D647ShearXYEdd'

;******************************************************************************;
;       Scaling of vector                                                      ;
;******************************************************************************;
public	Scale3D_flt32			as	'Vector3D32_Scale'
public	Scale3D_flt64			as	'Vector3D64_Scale'
public	Scale2D_flt32			as	'Vector2D32_Scale'
public	Scale2D_flt64			as	'Vector2D64_Scale'
public	Scale3D_flt32			as	'_ZN10Vector3D325ScaleEPKS_'
public	Scale3D_flt64			as	'_ZN10Vector3D645ScaleEPKS_'
public	Scale2D_flt32			as	'_ZN10Vector2D325ScaleEPKS_'
public	Scale2D_flt64			as	'_ZN10Vector2D645ScaleEPKS_'

;******************************************************************************;
;       Products                                                               ;
;******************************************************************************;

;==============================================================================;
;       Vector product                                                         ;
;==============================================================================;
public	VectorProduct_flt32		as	'Vector3D32_VectorProduct'
public	VectorProduct_flt64		as	'Vector3D64_VectorProduct'
public	VectorProduct_flt32		as	'_ZN10Vector3D3213VectorProductEPKS_'
public	VectorProduct_flt64		as	'_ZN10Vector3D6413VectorProductEPKS_'

;==============================================================================;
;       Scalar product                                                         ;
;==============================================================================;
public	ScalarProduct3D_flt32	as	'Vector3D32_ScalarProduct'
public	ScalarProduct3D_flt64	as	'Vector3D64_ScalarProduct'
public	ScalarProduct2D_flt32	as	'Vector2D32_ScalarProduct'
public	ScalarProduct2D_flt64	as	'Vector2D64_ScalarProduct'
public	ScalarProduct3D_flt32	as	'_ZNK10Vector3D3213ScalarProductEPKS_'
public	ScalarProduct3D_flt64	as	'_ZNK10Vector3D6413ScalarProductEPKS_'
public	ScalarProduct2D_flt32	as	'_ZNK10Vector2D3213ScalarProductEPKS_'
public	ScalarProduct2D_flt64	as	'_ZNK10Vector2D6413ScalarProductEPKS_'

;==============================================================================;
;       Triple product                                                         ;
;==============================================================================;
public	TripleProduct_flt32		as	'Vector3D32_TripleProduct'
public	TripleProduct_flt64		as	'Vector3D64_TripleProduct'
public	TripleProduct_flt32		as	'_ZNK10Vector3D3213TripleProductEPKS_S1_'
public	TripleProduct_flt64		as	'_ZNK10Vector3D6413TripleProductEPKS_S1_'

;******************************************************************************;
;       Absolute value                                                         ;
;******************************************************************************;
public	Abs3D_flt32				as	'Vector3D32_Abs'
public	Abs3D_flt64				as	'Vector3D64_Abs'
public	Abs2D_flt32				as	'Vector2D32_Abs'
public	Abs2D_flt64				as	'Vector2D64_Abs'
public	Abs2D_flt32				as	'Complex32_Magnitude'
public	Abs2D_flt64				as	'Complex64_Magnitude'
public	Abs3D_flt32				as	'_ZNK10Vector3D323AbsEv'
public	Abs3D_flt64				as	'_ZNK10Vector3D643AbsEv'
public	Abs2D_flt32				as	'_ZNK10Vector2D323AbsEv'
public	Abs2D_flt64				as	'_ZNK10Vector2D643AbsEv'
public	Abs2D_flt32				as	'_ZNK9Complex329MagnitudeEv'
public	Abs2D_flt64				as	'_ZNK9Complex649MagnitudeEv'

;******************************************************************************;
;       Angle value                                                            ;
;******************************************************************************;
public	Angle_flt32				as	'Complex32_Argument'
public	Angle_flt64				as	'Complex64_Argument'
public	Angle_flt32				as	'_ZNK9Complex328ArgumentEv'
public	Angle_flt64				as	'_ZNK9Complex648ArgumentEv'

;******************************************************************************;
;       Cosine value of angle between the vectors                              ;
;******************************************************************************;
public	Cos3D_flt32				as	'Vector3D32_Cos'
public	Cos3D_flt64				as	'Vector3D64_Cos'
public	Cos2D_flt32				as	'Vector2D32_Cos'
public	Cos2D_flt64				as	'Vector2D64_Cos'
public	Cos3D_flt32				as	'_ZNK10Vector3D323CosEPKS_'
public	Cos3D_flt64				as	'_ZNK10Vector3D643CosEPKS_'
public	Cos2D_flt32				as	'_ZNK10Vector2D323CosEPKS_'
public	Cos2D_flt64				as	'_ZNK10Vector2D643CosEPKS_'

;******************************************************************************;
;       Projection of the vector to another vector                             ;
;******************************************************************************;
public	Projection3D_flt32		as	'Vector3D32_Projection'
public	Projection3D_flt64		as	'Vector3D64_Projection'
public	Projection2D_flt32		as	'Vector2D32_Projection'
public	Projection2D_flt64		as	'Vector2D64_Projection'
public	Projection3D_flt32		as	'_ZNK10Vector3D3210ProjectionEPKS_'
public	Projection3D_flt64		as	'_ZNK10Vector3D6410ProjectionEPKS_'
public	Projection2D_flt32		as	'_ZNK10Vector2D3210ProjectionEPKS_'
public	Projection2D_flt64		as	'_ZNK10Vector2D6410ProjectionEPKS_'

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for zero vector                                                  ;
;==============================================================================;
public	IsZero3D_flt32			as	'Vector3D32_IsZero'
public	IsZero3D_flt64			as	'Vector3D64_IsZero'
public	IsZero2D_flt32			as	'Vector2D32_IsZero'
public	IsZero2D_flt64			as	'Vector2D64_IsZero'
public	IsZero2D_flt32			as	'Complex32_IsZero'
public	IsZero2D_flt64			as	'Complex64_IsZero'
public	IsZero3D_flt32			as	'_ZNK10Vector3D326IsZeroEv'
public	IsZero3D_flt64			as	'_ZNK10Vector3D646IsZeroEv'
public	IsZero2D_flt32			as	'_ZNK10Vector2D326IsZeroEv'
public	IsZero2D_flt64			as	'_ZNK10Vector2D646IsZeroEv'
public	IsZero2D_flt32			as	'_ZNK9Complex326IsZeroEv'
public	IsZero2D_flt64			as	'_ZNK9Complex646IsZeroEv'

;==============================================================================;
;       Check for equality of the vectors                                      ;
;==============================================================================;
public	IsEqual3D_flt32			as	'Vector3D32_IsEqual'
public	IsEqual3D_flt64			as	'Vector3D64_IsEqual'
public	IsEqual2D_flt32			as	'Vector2D32_IsEqual'
public	IsEqual2D_flt64			as	'Vector2D64_IsEqual'
public	IsEqual2D_flt32			as	'Complex32_IsEqual'
public	IsEqual2D_flt64			as	'Complex64_IsEqual'
public	IsEqual3D_flt32			as	'_ZNK10Vector3D327IsEqualEPKS_'
public	IsEqual3D_flt64			as	'_ZNK10Vector3D647IsEqualEPKS_'
public	IsEqual2D_flt32			as	'_ZNK10Vector2D327IsEqualEPKS_'
public	IsEqual2D_flt64			as	'_ZNK10Vector2D647IsEqualEPKS_'
public	IsEqual2D_flt32			as	'_ZNK9Complex327IsEqualEPKS_'
public	IsEqual2D_flt64			as	'_ZNK9Complex647IsEqualEPKS_'

;==============================================================================;
;       Check for negativity of the vectors                                    ;
;==============================================================================;
public	IsNeg3D_flt32			as	'Vector3D32_IsNeg'
public	IsNeg3D_flt64			as	'Vector3D64_IsNeg'
public	IsNeg2D_flt32			as	'Vector2D32_IsNeg'
public	IsNeg2D_flt64			as	'Vector2D64_IsNeg'
public	IsNeg2D_flt32			as	'Complex32_IsNeg'
public	IsNeg2D_flt64			as	'Complex64_IsNeg'
public	IsNeg3D_flt32			as	'_ZNK10Vector3D325IsNegEPKS_'
public	IsNeg3D_flt64			as	'_ZNK10Vector3D645IsNegEPKS_'
public	IsNeg2D_flt32			as	'_ZNK10Vector2D325IsNegEPKS_'
public	IsNeg2D_flt64			as	'_ZNK10Vector2D645IsNegEPKS_'
public	IsNeg2D_flt32			as	'_ZNK9Complex325IsNegEPKS_'
public	IsNeg2D_flt64			as	'_ZNK9Complex645IsNegEPKS_'

;==============================================================================;
;       Check for collinearity of the vectors                                  ;
;==============================================================================;
public	IsCollinear3D_flt32		as	'Vector3D32_IsCollinear'
public	IsCollinear3D_flt64		as	'Vector3D64_IsCollinear'
public	IsCollinear2D_flt32		as	'Vector2D32_IsCollinear'
public	IsCollinear2D_flt64		as	'Vector2D64_IsCollinear'
public	IsCollinear3D_flt32		as	'_ZNK10Vector3D3211IsCollinearEPKS_'
public	IsCollinear3D_flt64		as	'_ZNK10Vector3D6411IsCollinearEPKS_'
public	IsCollinear2D_flt32		as	'_ZNK10Vector2D3211IsCollinearEPKS_'
public	IsCollinear2D_flt64		as	'_ZNK10Vector2D6411IsCollinearEPKS_'

;==============================================================================;
;       Check for orthogonality of the vectors                                 ;
;==============================================================================;
public	IsOrthogonal3D_flt32	as	'Vector3D32_IsOrthogonal'
public	IsOrthogonal3D_flt64	as	'Vector3D64_IsOrthogonal'
public	IsOrthogonal2D_flt32	as	'Vector2D32_IsOrthogonal'
public	IsOrthogonal2D_flt64	as	'Vector2D64_IsOrthogonal'
public	IsOrthogonal3D_flt32	as	'_ZNK10Vector3D3212IsOrthogonalEPKS_'
public	IsOrthogonal3D_flt64	as	'_ZNK10Vector3D6412IsOrthogonalEPKS_'
public	IsOrthogonal2D_flt32	as	'_ZNK10Vector2D3212IsOrthogonalEPKS_'
public	IsOrthogonal2D_flt64	as	'_ZNK10Vector2D6412IsOrthogonalEPKS_'

;==============================================================================;
;       Check for coplanarity of the vectors                                   ;
;==============================================================================;
public	IsCoplanar_flt32		as	'Vector3D32_IsCoplanar'
public	IsCoplanar_flt64		as	'Vector3D64_IsCoplanar'
public	IsCoplanar_flt32		as	'_ZNK10Vector3D3210IsCoplanarEPKS_S1_'
public	IsCoplanar_flt64		as	'_ZNK10Vector3D6410IsCoplanarEPKS_S1_'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Offsets inside vector structures                                       ;
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
scale	= 2									; scale value
else if x eq d
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
		movs#x	hypot, xval					; hypot = Hypot (this->x, this->y, this->z)
		movs#x	xval, [this + XPOS*bytes]	; load x value of vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of vector
if dim = 3
		movs#x	zval, [this + ZPOS*bytes]	; load z value of vector
end if
		divs#x	xval, hypot					; change x value
		divs#x	yval, hypot					; change y value
if dim = 3
		divs#x	zval, hypot					; change z value
end if
		movs#x	[this + XPOS*bytes], xval	; store new x value of vector
		movs#x	[this + YPOS*bytes], yval	; store new y value of vector
if dim = 3
		movs#x	[this + ZPOS*bytes], zval	; store new z value of vector
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
		movs#x	[this + XPOS*bytes], xval	; store new x value of vector
		movs#x	[this + YPOS*bytes], yval	; store new y value of vector
if dim = 3
		movs#x	[this + ZPOS*bytes], zval	; store new z value of vector
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
macro	SQRT	Hypot, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
sqrt	equ		xmm2						; Sqrt (2)
mask	equ		xmm3						; sign mask
sign	equ		xmm4						; sign bit
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
if x eq s
smask	= SMASK_FLT32						; sign mask
sqrtval	= SQRT12_FLT32						; 1 / Sqrt (2)
scale	= 2									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
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
		call	fptr						; call Hypot (this->x, this->y)
;---[Compute square root of vector]--------
		mov		this, [s_this]				; get "this" variable from the stack
		movs#x	yval, xval					; xval = yval = Hypot (this->x, this->y)
		initreg	sqrt, fptr, sqrtval			; sqrt = Sqrt (2)
		initreg	mask, fptr, smask			; load sign mask
		adds#x	xval, [this + XPOS*bytes]	; xval = Hypot (this->x, this->y) + this->x
		sqrts#s	xval, xval					; xval = Sqrt (xval)
		muls#x	xval, sqrt					; xval *= 1 / Sqrt (2)
		subs#x	yval, [this + XPOS*bytes]	; yval = Hypot (this->x, this->y) - this->x
		sqrts#s	yval, yval					; yval = Sqrt (yval)
		muls#x	yval, sqrt					; yval *= 1 / Sqrt (2)
		movs#x	sign, [this + YPOS*bytes]
		andp#x	sign, mask					; sign = Sign (this->y)
		orp#x	yval, sign					; yval *= Sign (this->y)
		movs#x	[this + XPOS*bytes], xval	; this->x = xval
		movs#x	[this + YPOS*bytes], yval	; this->y = yval
		add		stack, space				; restoring back the stack pointer
		ret
}
Sqrt_flt32:	SQRT	Hypot2D_flt32, s
Sqrt_flt64:	SQRT	Hypot2D_flt64, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Square value of the vector                                             ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	SQR		x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	temp0, [this + XPOS*bytes]
		movs#x	temp1, [this + XPOS*bytes]
		movs#x	temp2, [this + XPOS*bytes]
		adds#x	temp0, [this + YPOS*bytes]	; temp0 = this->x + this->y
		subs#x	temp1, [this + YPOS*bytes]	; temp1 = this->x - this->y
		muls#x	temp2, [this + YPOS*bytes]	; temp2 = this->x - this->y
		muls#x	temp0, temp1				; temp0 *= temp1
		adds#x	temp2, temp2				; temp2 *= 2
		movs#x	[this + XPOS*bytes], temp0	; this->x = temp0
		movs#x	[this + YPOS*bytes], temp2	; this->y = temp2
		ret
}
Sqr_flt32:	SQR	s
Sqr_flt64:	SQR	d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Inverse vector                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	INVERSE	Hypot, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
xval	equ		xmm0						; x value of vector
yval	equ		xmm1						; y value of vector
mask	equ		xmm2						; sign mask
inv		equ		xmm3						; inverse hypotenuse value
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
if x eq s
smask	= SMASK_FLT32						; sign mask
oneval	= PONE_FLT32						; 1.0
scale	= 2									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
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
		mov		fptr, Hypot
		call	fptr						; call Hypot (scr->x, scr->y)
;---[Divide vectors]-----------------------
		mov		this, [s_this]				; get "this" variable from the stack
		initreg	mask, fptr, smask			; load sign mask
		initreg	inv, fptr, oneval			; inv = 1.0
		divs#x	inv, xval					; inv = 1.0 / Hypot (scr->x, scr->y)
		movs#x	xval, [this + XPOS*bytes]
		muls#x	xval, inv					; xval = this->x / Hypot (scr->x, scr->y)
		muls#x	xval, inv					; xval *= 1.0 / Hypot (scr->x, scr->y)
		movs#x	yval, [this + YPOS*bytes]
		xorp#x	yval, mask
		muls#x	yval, inv					; yval = -this->y / Hypot (scr->x, scr->y)
		muls#x	yval, inv					; yval *= 1.0 / Hypot (scr->x, scr->y)
		movs#x	[this + XPOS*bytes], xval	; this->x = xval
		movs#x	[this + YPOS*bytes], yval	; this->y = yval
		add		stack, space				; restoring back the stack pointer
		ret
}
Inverse_flt32:	INVERSE	Hypot2D_flt32, s
Inverse_flt64:	INVERSE	Hypot2D_flt64, d

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
		movs#x	[this + XPOS*bytes], xval	; store new x value of vector
		movs#x	[this + YPOS*bytes], yval	; store new y value of vector
if dim = 3
		movs#x	[this + ZPOS*bytes], zval	; store new z value of vector
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
		movs#x	[this + XPOS*bytes], xval	; store new x value of target vector
		movs#x	[this + YPOS*bytes], yval	; store new y value of target vector
if dim = 3
		movs#x	[this + ZPOS*bytes], zval	; store new z value of target vector
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
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	temp0, [this + XPOS*bytes]
		muls#x	temp0, [src + XPOS*bytes]	; temp0 = this->x * src->x
		movs#x	temp2, [this + YPOS*bytes]
		muls#x	temp2, [src + YPOS*bytes]	; temp2 = this->y * src->y
		subs#x	temp0, temp2				; temp0 -= temp2
		movs#x	temp1, [this + YPOS*bytes]
		muls#x	temp1, [src + XPOS*bytes]	; temp1 = this->y * src->x
		movs#x	temp3, [this + XPOS*bytes]
		muls#x	temp3, [src + YPOS*bytes]	; temp3 = this->x * src->y
		adds#x	temp1, temp3				; temp1 += temp3
		movs#x	[this + XPOS*bytes], temp0	; this->x = temp0
		movs#x	[this + YPOS*bytes], temp1	; this->y = temp1
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
macro	VECTOR_DIV	Hypot, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to target vector object
src		equ		rsi							; pointer to source vector object
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
cos		equ		xmm4						; cosine value
sin		equ		xmm5						; sine value
inv		equ		xmm6						; inverse hypotenuse value
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
		movs#x	temp0, [src + XPOS*bytes]	; load x value of source vector
		movs#x	temp1, [src + YPOS*bytes]	; load y value of source vector
		mov		fptr, Hypot
		call	fptr						; call Hypot (scr->x, scr->y)
;---[Divide vectors]-----------------------
		mov		this, [s_this]				; get "this" variable from the stack
		initreg	inv, fptr, oneval			; inv = 1.0
		divs#x	inv, temp0					; inv = 1.0 / Hypot (scr->x, scr->y)
		movs#x	temp0, [this + XPOS*bytes]
		muls#x	temp0, inv					; temp0 = this->x / Hypot (scr->x, scr->y)
		movap#x	temp3, temp0				; temp3 = this->x / Hypot (scr->x, scr->y)
		movs#x	temp1, [this + YPOS*bytes]
		muls#x	temp1, inv					; temp1 = this->y / Hypot (scr->x, scr->y)
		movap#x	temp2, temp1				; temp2 = this->y / Hypot (scr->x, scr->y)
		movs#x	cos, [src + XPOS*bytes]
		muls#x	cos, inv					; cos = src->x / Hypot (scr->x, scr->y)
		movs#x	sin, [src + YPOS*bytes]
		muls#x	sin, inv					; sin = src->y / Hypot (scr->x, scr->y)
		muls#x	temp0, cos					; temp0 *= cos
		muls#x	temp2, sin					; temp2 *= sin
		adds#x	temp0, temp2				; temp0 += temp2
		muls#x	temp1, cos					; temp1 *= cos
		muls#x	temp3, sin					; temp3 *= sin
		subs#x	temp1, temp3				; temp1 -= temp3
		movs#x	[this + XPOS*bytes], temp0	; this->x = temp0
		movs#x	[this + YPOS*bytes], temp1	; this->y = temp1
		add		stack, space				; restoring back the stack pointer
		ret
}
VectorDiv_flt32:	VECTOR_DIV	Hypot2D_flt32, s
VectorDiv_flt64:	VECTOR_DIV	Hypot2D_flt64, d

;******************************************************************************;
;       Rotation of vector                                                     ;
;******************************************************************************;
macro	ROTATE	SinCos, pos1, pos2, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
angle	equ		xmm0						; angle to process with
;---[Internal variables]-------------------
fptr	equ		rax							; pointer to call external function
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
stack	equ		rsp							; stack pointer
s_this	equ		stack + 0 * 8				; stack position of "this" variable
s_sin	equ		stack + 1 * 8				; stack position of sin (angle)
s_cos	equ		stack + 2 * 8				; stack position of cos (angle)
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
;---[Call SinCos functon]------------------
		lea		param1, [s_sin]
		lea		param2, [s_cos]
		mov		fptr, SinCos
		call	fptr						; call SinCos (&hsin, &hcos, angle)
;---[Rotate vector]------------------------
		mov		this, [s_this]				; get "this" variable from the stack
		movs#x	temp0, [this + pos1*bytes]
		muls#x	temp0, [s_cos]				; temp0 = this->pos1 * Cos (angle)
		movs#x	temp2, [this + pos2*bytes]
		muls#x	temp2, [s_sin]				; temp2 = this->pos2 * Sin (angle)
		subs#x	temp0, temp2				; temp0 -= temp2
		movs#x	temp1, [this + pos2*bytes]
		muls#x	temp1, [s_cos]				; temp1 = this->pos2 * Cos (angle)
		movs#x	temp3, [this + pos1*bytes]
		muls#x	temp3, [s_sin]				; temp3 = this->pos1 * Sin (angle)
		adds#x	temp1, temp3				; temp1 += temp3
		movs#x	[this + pos1*bytes], temp0	; this->pos1 = temp0
		movs#x	[this + pos2*bytes], temp1	; this->pos2 = temp1
		add		stack, space				; restoring back the stack pointer
		ret
}

; Rotation around the X axis
RotateX_flt32:	ROTATE	SinCos_flt32, YPOS, ZPOS, s
RotateX_flt64:	ROTATE	SinCos_flt64, YPOS, ZPOS, d

; Rotation around the Y axis
RotateY_flt32:	ROTATE	SinCos_flt32, ZPOS, XPOS, s
RotateY_flt64:	ROTATE	SinCos_flt64, ZPOS, XPOS, d

; Rotation around the Z axis
RotateZ_flt32:	ROTATE	SinCos_flt32, XPOS, YPOS, s
RotateZ_flt64:	ROTATE	SinCos_flt64, XPOS, YPOS, d

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
temp1	equ		xmm1						; temporary register #1
temp2	equ		xmm2						; temporary register #2
temp3	equ		xmm3						; temporary register #3
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
		movs#x	temp1, [this + pos1*bytes]	; temp1 = this->pos1
if dim = 3
		movs#x	temp2, [this + pos2*bytes]	; temp2 = this->pos2
end if
		movs#x	temp3, [this + pos3*bytes]	; temp3 = this->pos3
		muls#x	value1, temp3				; value1 *= temp3
		adds#x	temp1, value1				; temp1 += value1
if dim = 3
		muls#x	value2, temp3				; value2 *= temp3
		adds#x	temp2, value2				; temp2 += value2
end if
		movs#x	[this + pos1*bytes], temp1	; this->pos1 = temp1
if dim = 3
		movs#x	[this + pos2*bytes], temp2	; this->pos2 = temp2
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
		movs#x	[this + XPOS*bytes], temp0	; store new x value of target vector
		movs#x	[this + YPOS*bytes], temp1	; store new y value of target vector
		movs#x	[this + ZPOS*bytes], temp2	; store new z value of target vector
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
		muls#x	xval, [vect2 + XPOS*bytes]	; target->x *= vect2->x
		muls#x	yval, [vect2 + YPOS*bytes]	; target->y *= vect2->y
		adds#x	xval, yval					; result += target->y * vect2->y
if dim = 3
		muls#x	zval, [vect2 + ZPOS*bytes]	; target->z *= vect2->z
		adds#x	xval, zval					; result += target->z * vect2->z
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
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
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
		movs#x	temp3, [vect1 + YPOS*bytes]
		muls#x	temp3, [vect2 + ZPOS*bytes]	; temp3 = vect1->y * vect2->z
		movs#x	temp4, [vect2 + YPOS*bytes]
		muls#x	temp4, [vect3 + ZPOS*bytes]	; temp4 = vect2->y * vect3->z
		movs#x	temp5, [vect3 + YPOS*bytes]
		muls#x	temp5, [vect1 + ZPOS*bytes]	; temp5 = vect3->y * vect1->z
		movs#x	temp6, [vect1 + ZPOS*bytes]
		muls#x	temp6, [vect2 + YPOS*bytes]	; temp6 = vect1->z * vect2->y
		movs#x	temp7, [vect2 + ZPOS*bytes]
		muls#x	temp7, [vect3 + YPOS*bytes]	; temp7 = vect2->z * vect3->y
		movs#x	temp8, [vect3 + ZPOS*bytes]
		muls#x	temp8, [vect1 + YPOS*bytes]	; temp8 = vect3->z * vect1->y
		subs#x	temp4, temp7				; temp4 -= temp7
		muls#x	temp0, temp4				; temp0 *= temp4
		subs#x	temp5, temp8				; temp5 -= temp8
		muls#x	temp1, temp5				; temp1 *= temp5
		subs#x	temp3, temp6				; temp3 -= temp6
		muls#x	temp2, temp3				; temp2 *= temp3
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
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
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
		jmp		fptr						; call Hypot (this->x, this->y, this->z)
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
		jmp		fptr						; call ArcTan2 (sin, cos)
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
macro	ZERO	result, xval, yval, zval, zero, dim, x
{
		xor		result, result				; result = 0
		xorp#x	zero, zero					; zero = 0
		comis#x	xval, zero					; if (xval == NAN || xval != 0)
		jp		@f							;     then return false
		jne		@f
		comis#x	yval, zero					; if (yval == NAN || yval != 0)
		jp		@f							;     then return false
		jne		@f
if dim = 3
		comis#x	zval, zero					; if (zval == NAN || zval !=0)
		jp		@f							;     then return false
		jne		@f
end if
		mov		result, 1					; return true
@@:		ret
}

;==============================================================================;
;       Check for zero vector                                                  ;
;==============================================================================;
macro	IS_ZERO	dim, x
{
;---[Parameters]---------------------------
this	equ		rdi							; pointer to vector object
;---[Internal variables]-------------------
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
		movs#x	xval, [this + XPOS*bytes]	; load x value of vector
		movs#x	yval, [this + YPOS*bytes]	; load y value of vector
if dim = 3
		movs#x	zval, [this + ZPOS*bytes]	; load z value of vector
end if
		ZERO	result, xval, yval, zval, zero, dim, x
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
		ZERO	result, xval, yval, zval, zero, dim, x
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
result	equ		rax							; result register
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
zero	equ		xmm6						; 0.0
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of vector element (bytes)
;------------------------------------------
	VPRODUCT	this, src, temp0, temp1, temp2, temp3, temp4, temp5, dim, x
		ZERO	result, temp0, temp1, temp2, zero, dim, x
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
