/*                                                                        Time.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                                TIME FUNCTIONS                                #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2012, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

//****************************************************************************//
//      Time constants                                                        //
//****************************************************************************//

// Time zone limits
# define	TIME_CHANGE_SIZE	512			// Size of time changes array
# define	TIME_ZONE_SIZE		256			// Size of time zone array

// Standard periods of time
# define	TIME_MINUTE			60			// Seconds per minute
# define	TIME_HOUR			3600		// Seconds per hour
# define	TIME_DAY			86400		// Seconds per day
# define	TIME_WEEK			604800		// Seconds per week

// Other constants
# define	TIME_ERROR			(0x8000000000000000LL)

//****************************************************************************//
//      Time structure                                                        //
//****************************************************************************//
struct time_struct
{
	uint8_t		hour;	// Hours [0-23]
	uint8_t		min;	// Minutes [0-59]
	uint8_t		sec;	// Seconds [0-59]
};

//****************************************************************************//
//      Date structure                                                        //
//****************************************************************************//
struct date_struct
{
	sint32_t	year;	// Year from beginning of Gregorian calendar
	uint8_t		mon;	// Month of year [1-12]
	uint8_t		day;	// Day of month [1-31]
	uint8_t		wday;	// Day of week (0 - Sunday) [0-6]
	uint8_t		hour;	// Hours [0-23]
	uint8_t		min;	// Minutes [0-59]
	uint8_t		sec;	// Seconds [0-59]
};

# ifdef	__cplusplus
/*
################################################################################
#       C++ prototypes                                                         #
################################################################################
*/
//****************************************************************************//
//      Time class                                                            //
//****************************************************************************//
class Time
{
private:
	time_t		change [TIME_CHANGE_SIZE];	// Array of time changes
	uint8_t		index [TIME_CHANGE_SIZE];	// Array of time zone indexes
	sint32_t	zone [TIME_ZONE_SIZE];		// Array of time zones
	uint32_t	change_size;				// Count of time change records
	uint32_t	zone_size;					// Count of time zone records

public:

// Default constructor
Time (void);

// Loading time zone data from tzfile
error_t LoadTimeZone (const char8_t tzfile[]);

// Time conversion
static time_t ConvertTime (uint8_t hour, uint8_t min, uint8_t sec);

// Date conversion
static time_t ConvertDate (uint8_t day, uint8_t mon, sint32_t year, uint8_t hour, uint8_t min, uint8_t sec);

// Time extraction
static time_struct ExtractTime (time_t time);

// Date extraction
static date_struct ExtractDate (time_t time);

// Week day extraction
static uint8_t WeekDay (time_t time);

// Current system time
static time_t SystemTime (void);

// Local time
time_t LocalTime (time_t UTC);
};
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
struct tzone
{
	time_t		change [TIME_CHANGE_SIZE];	// Array of time changes
	uint8_t		index [TIME_CHANGE_SIZE];	// Array of time zone indexes
	sint32_t	zone [TIME_ZONE_SIZE];		// Array of time zones
	uint32_t	change_size;				// Count of time change records
	uint32_t	zone_size;					// Count of time zone records
};

// Cleaning time zone data
void Time_CleanTimeZone (struct tzone *tz);

// Loading time zone data from tzfile
error_t Time_LoadTimeZone (struct tzone *tz, const char8_t tzfile[]);

// Time conversion
time_t Time_ConvertTime (uint8_t hour, uint8_t min, uint8_t sec);

// Date conversion
time_t Time_ConvertDate (uint8_t day, uint8_t mon, sint32_t year, uint8_t hour, uint8_t min, uint8_t sec);

// Time extraction
struct time_struct Time_ExtractTime (time_t time);

// Date extraction
struct date_struct Time_ExtractDate (time_t time);

// Week day extraction
uint8_t Time_WeekDay (time_t time);

// Current system time
time_t Time_SystemTime (void);

// Local time
time_t Time_LocalTime (const struct tzone *tz, time_t UTC);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
