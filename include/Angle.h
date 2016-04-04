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

//****************************************************************************//
//      Conversion radians to degrees                                         //
//****************************************************************************//
inline flt32_t RadToDeg (flt32_t angle)
{
	return angle * (180.0 / M_PI);
}
inline flt64_t RadToDeg (flt64_t angle)
{
	return angle * (180.0 / M_PI);
}

//****************************************************************************//
//      Conversion radians to gradians                                        //
//****************************************************************************//
inline flt32_t RadToGrad (flt32_t angle)
{
	return angle * (200.0 / M_PI);
}
inline flt64_t RadToGrad (flt64_t angle)
{
	return angle * (200.0 / M_PI);
}

//****************************************************************************//
//      Conversion degrees to radians                                         //
//****************************************************************************//
inline flt32_t DegToRad (flt32_t angle)
{
	return angle * (M_PI / 180.0);
}
inline flt64_t DegToRad (flt64_t angle)
{
	return angle * (M_PI / 180.0);
}

//****************************************************************************//
//      Conversion degrees to gradians                                        //
//****************************************************************************//
inline flt32_t DegToGrad (flt32_t angle)
{
	return angle * (200.0 / 180.0);
}
inline flt64_t DegToGrad (flt64_t angle)
{
	return angle * (200.0 / 180.0);
}

//****************************************************************************//
//      Conversion gradians to radians                                        //
//****************************************************************************//
inline flt32_t GradToRad (flt32_t angle)
{
	return angle * (M_PI / 200.0);
}
inline flt64_t GradToRad (flt64_t angle)
{
	return angle * (M_PI / 200.0);
}

//****************************************************************************//
//      Conversion gradians to degrees                                        //
//****************************************************************************//
inline flt32_t GradToDeg (flt32_t angle)
{
	return angle * (180.0 / 200.0);
}
inline flt64_t GradToDeg (flt64_t angle)
{
	return angle * (180.0 / 200.0);
}
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
