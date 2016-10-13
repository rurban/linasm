/*                                                                       Types.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                                  DATA TYPES                                  #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
################################################################################
*/
# pragma	once

//****************************************************************************//
//      Compare constants                                                     //
//****************************************************************************//
# define	CMP_EQUAL	(0) 		// First value is equal to second value
# define	CMP_LESS	(-1) 		// First value is less than second value
# define	CMP_GREAT	(+1) 		// First value is greater than second value

//****************************************************************************//
//      Scalar types                                                          //
//****************************************************************************//

//============================================================================//
//      Unsigned integer types                                                //
//============================================================================//
# define	uint8_t			unsigned char
# define	uint16_t		unsigned short
# define	uint32_t		unsigned int
# define	uint64_t		unsigned long long

//============================================================================//
//      Signed integer types                                                  //
//============================================================================//
# define	sint8_t			signed char
# define	sint16_t		signed short
# define	sint32_t		signed int
# define	sint64_t		signed long long

//============================================================================//
//      Bit field types                                                       //
//============================================================================//
# define	bit8_t			unsigned char
# define	bit16_t			unsigned short
# define	bit32_t			unsigned int
# define	bit64_t			unsigned long long

//============================================================================//
//      Character types                                                       //
//============================================================================//
# define	char8_t			char
# define	char16_t		short
# define	char32_t		int

//============================================================================//
//      Floating-point types                                                  //
//============================================================================//
# define	flt32_t			float
# define	flt64_t			double

//============================================================================//
//      Other types                                                           //
//============================================================================//
# define	size_t			unsigned long int
# define	ptr_t			signed long int
# define	time_t			signed long long
# define	error_t			unsigned int
# define	enum_t			unsigned int

//============================================================================//
//      Boolean type                                                          //
//============================================================================//
# ifndef	__cplusplus
# define	bool			_Bool
# endif

//****************************************************************************//
//      Vector types                                                          //
//****************************************************************************//

//============================================================================//
//      Unsigned integer types                                                //
//============================================================================//
typedef		uint8_t			uint8v16_t		__attribute__ ((vector_size (16)));
typedef		uint16_t		uint16v8_t		__attribute__ ((vector_size (16)));
typedef		uint32_t		uint32v4_t		__attribute__ ((vector_size (16)));
typedef		uint64_t		uint64v2_t		__attribute__ ((vector_size (16)));

//============================================================================//
//      Signed integer types                                                  //
//============================================================================//
typedef		sint8_t			sint8v16_t		__attribute__ ((vector_size (16)));
typedef		sint16_t		sint16v8_t		__attribute__ ((vector_size (16)));
typedef		sint32_t		sint32v4_t		__attribute__ ((vector_size (16)));
typedef		sint64_t		sint64v2_t		__attribute__ ((vector_size (16)));

//============================================================================//
//      Bit field types                                                       //
//============================================================================//
typedef		bit8_t			bit8v16_t		__attribute__ ((vector_size (16)));
typedef		bit16_t			bit16v8_t		__attribute__ ((vector_size (16)));
typedef		bit32_t			bit32v4_t		__attribute__ ((vector_size (16)));
typedef		bit64_t			bit64v2_t		__attribute__ ((vector_size (16)));

//============================================================================//
//      Character types                                                       //
//============================================================================//
typedef		char8_t			char8v16_t		__attribute__ ((vector_size (16)));
typedef		char16_t		char16v8_t		__attribute__ ((vector_size (16)));
typedef		char32_t		char32v4_t		__attribute__ ((vector_size (16)));

//============================================================================//
//      Floating-point types                                                  //
//============================================================================//
typedef		flt32_t			flt32v2_t		__attribute__ ((vector_size (8)));
typedef		flt32_t			flt32v4_t		__attribute__ ((vector_size (16)));
typedef		flt64_t			flt64v2_t		__attribute__ ((vector_size (16)));

//============================================================================//
//      Other types                                                           //
//============================================================================//
typedef		size_t			sizev2_t		__attribute__ ((vector_size (16)));
typedef		ptr_t			ptrv2_t			__attribute__ ((vector_size (16)));
typedef		time_t			timev2_t		__attribute__ ((vector_size (16)));

//****************************************************************************//
//      Union types                                                           //
//****************************************************************************//

//============================================================================//
//      Unsigned integer types                                                //
//============================================================================//
union uint8v16_union
{
	uint8_t		array[16];
	uint8v16_t	vector;
};
union uint16v8_union
{
	uint16_t	array[8];
	uint16v8_t	vector;
};
union uint32v4_union
{
	uint32_t	array[4];
	uint32v4_t	vector;
};
union uint64v2_union
{
	uint64_t	array[2];
	uint64v2_t	vector;
};

//============================================================================//
//      Signed integer types                                                  //
//============================================================================//
union sint8v16_union
{
	sint8_t		array[16];
	sint8v16_t	vector;
};
union sint16v8_union
{
	sint16_t	array[8];
	sint16v8_t	vector;
};
union sint32v4_union
{
	sint32_t	array[4];
	sint32v4_t	vector;
};
union sint64v2_union
{
	sint64_t	array[2];
	sint64v2_t	vector;
};

//============================================================================//
//      Bit field types                                                       //
//============================================================================//
union bit8v16_union
{
	bit8_t		array[16];
	bit8v16_t	vector;
};
union bit16v8_union
{
	bit16_t		array[8];
	bit16v8_t	vector;
};
union bit32v4_union
{
	bit32_t		array[4];
	bit32v4_t	vector;
};
union bit64v2_union
{
	bit64_t		array[2];
	bit64v2_t	vector;
};

//============================================================================//
//      Character types                                                       //
//============================================================================//
union char8v16_union
{
	char8_t		array[16];
	char8v16_t	vector;
};
union char16v8_union
{
	char16_t	array[8];
	char16v8_t	vector;
};
union char32v4_union
{
	char32_t	array[4];
	char32v4_t	vector;
};

//============================================================================//
//      Floating-point types                                                  //
//============================================================================//
union flt32v2_union
{
	flt32_t		array[2];
	flt32v2_t	vector;
};
union flt32v4_union
{
	flt32_t		array[4];
	flt32v4_t	vector;
};
union flt64v2_union
{
	flt64_t		array[2];
	flt64v2_t	vector;
};

//============================================================================//
//      Other types                                                           //
//============================================================================//
union sizev2_union
{
	size_t		array[2];
	sizev2_t	vector;
};
union ptrv2_union
{
	ptr_t		array[2];
	ptrv2_t		vector;
};
union timev2_union
{
	time_t		array[2];
	timev2_t	vector;
};
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
