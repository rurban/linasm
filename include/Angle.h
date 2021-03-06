/*                                                                       Angle.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                    ANGLES CONVERSION FROM DIFFERENT UNITS                    #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>
# include	<Math.h>

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
class Angle
{
public:

//****************************************************************************//
//      Conversion radians to degrees                                         //
//****************************************************************************//
inline static flt32_t RadToDeg (flt32_t angle)
{
	return angle * (static_cast <flt32_t> (180.0) / static_cast <flt32_t> (M_PI));
}
inline static flt64_t RadToDeg (flt64_t angle)
{
	return angle * (static_cast <flt64_t> (180.0) / static_cast <flt64_t> (M_PI));
}

//****************************************************************************//
//      Conversion radians to gradians                                        //
//****************************************************************************//
inline static flt32_t RadToGrad (flt32_t angle)
{
	return angle * (static_cast <flt32_t> (200.0) / static_cast <flt32_t> (M_PI));
}
inline static flt64_t RadToGrad (flt64_t angle)
{
	return angle * (static_cast <flt64_t> (200.0) / static_cast <flt64_t> (M_PI));
}

//****************************************************************************//
//      Conversion degrees to radians                                         //
//****************************************************************************//
inline static flt32_t DegToRad (flt32_t angle)
{
	return angle * (static_cast <flt32_t> (M_PI) / static_cast <flt32_t> (180.0));
}
inline static flt64_t DegToRad (flt64_t angle)
{
	return angle * (static_cast <flt64_t> (M_PI) / static_cast <flt64_t> (180.0));
}

//****************************************************************************//
//      Conversion degrees to gradians                                        //
//****************************************************************************//
inline static flt32_t DegToGrad (flt32_t angle)
{
	return angle * (static_cast <flt32_t> (200.0) / static_cast <flt32_t> (180.0));
}
inline static flt64_t DegToGrad (flt64_t angle)
{
	return angle * (static_cast <flt64_t> (200.0) / static_cast <flt64_t> (180.0));
}

//****************************************************************************//
//      Conversion gradians to radians                                        //
//****************************************************************************//
inline static flt32_t GradToRad (flt32_t angle)
{
	return angle * (static_cast <flt32_t> (M_PI) / static_cast <flt32_t> (200.0));
}
inline static flt64_t GradToRad (flt64_t angle)
{
	return angle * (static_cast <flt64_t> (M_PI) / static_cast <flt64_t> (200.0));
}

//****************************************************************************//
//      Conversion gradians to degrees                                        //
//****************************************************************************//
inline static flt32_t GradToDeg (flt32_t angle)
{
	return angle * (static_cast <flt32_t> (180.0) / static_cast <flt32_t> (200.0));
}
inline static flt64_t GradToDeg (flt64_t angle)
{
	return angle * (static_cast <flt64_t> (180.0) / static_cast <flt64_t> (200.0));
}
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Conversion radians to degrees                                         //
//****************************************************************************//
inline flt32_t Angle_RadToDeg_flt32 (flt32_t angle)
{
	return angle * ((flt32_t) 180.0 / (flt32_t) M_PI);
}
inline flt64_t Angle_RadToDeg_flt64 (flt64_t angle)
{
	return angle * ((flt64_t) 180.0 / (flt64_t) M_PI);
}

//****************************************************************************//
//      Conversion radians to gradians                                        //
//****************************************************************************//
inline flt32_t Angle_RadToGrad_flt32 (flt32_t angle)
{
	return angle * ((flt32_t) 200.0 / (flt32_t) M_PI);
}
inline flt64_t Angle_RadToGrad_flt64 (flt64_t angle)
{
	return angle * ((flt64_t) 200.0 / (flt64_t) M_PI);
}

//****************************************************************************//
//      Conversion degrees to radians                                         //
//****************************************************************************//
inline flt32_t Angle_DegToRad_flt32 (flt32_t angle)
{
	return angle * ((flt32_t) M_PI / (flt32_t) 180.0);
}
inline flt64_t Angle_DegToRad_flt64 (flt64_t angle)
{
	return angle * ((flt64_t) M_PI / (flt64_t) 180.0);
}

//****************************************************************************//
//      Conversion degrees to gradians                                        //
//****************************************************************************//
inline flt32_t Angle_DegToGrad_flt32 (flt32_t angle)
{
	return angle * ((flt32_t) 200.0 / (flt32_t) 180.0);
}
inline flt64_t Angle_DegToGrad_flt64 (flt64_t angle)
{
	return angle * ((flt64_t) 200.0 / (flt64_t) 180.0);
}

//****************************************************************************//
//      Conversion gradians to radians                                        //
//****************************************************************************//
inline flt32_t Angle_GradToRad_flt32 (flt32_t angle)
{
	return angle * ((flt32_t) M_PI / (flt32_t) 200.0);
}
inline flt64_t Angle_GradToRad_flt64 (flt64_t angle)
{
	return angle * ((flt64_t) M_PI / (flt64_t) 200.0);
}

//****************************************************************************//
//      Conversion gradians to degrees                                        //
//****************************************************************************//
inline flt32_t Angle_GradToDeg_flt32 (flt32_t angle)
{
	return angle * ((flt32_t) 180.0 / (flt32_t) 200.0);
}
inline flt64_t Angle_GradToDeg_flt64 (flt64_t angle)
{
	return angle * ((flt64_t) 180.0 / (flt64_t) 200.0);
}
# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
