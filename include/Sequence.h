/*                                                                    Sequence.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                       SUBSEQUENCE SEARCHING ALGORITHMS                       #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2012, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

//****************************************************************************//
//      Boyer-Moore-Horspool pattern hash                                     //
//****************************************************************************//
class BMH
{
private:
	const size_t	hash [256];		// BMH hash
	const size_t	size;			// Size of pattern
	const void		*pattern;		// Pattern
	const bool		backward;		// Flag to search in backward direction

public:

// Unsigned integer types
BMH (const uint8_t pattern[], size_t size, bool backward = false);
BMH (const uint16_t pattern[], size_t size, bool backward = false);
BMH (const uint32_t pattern[], size_t size, bool backward = false);
BMH (const uint64_t pattern[], size_t size, bool backward = false);

// Signed integer types
BMH (const sint8_t pattern[], size_t size, bool backward = false);
BMH (const sint16_t pattern[], size_t size, bool backward = false);
BMH (const sint32_t pattern[], size_t size, bool backward = false);
BMH (const sint64_t pattern[], size_t size, bool backward = false);
};

//****************************************************************************//
//      Boyer-Moore-Horspool subsequence searching algorithm                  //
//****************************************************************************//
class Sequence
{
public:

// Unsigned integer types
static size_t Find (const uint8_t source[], size_t size, const BMH *pattern);
static size_t Find (const uint16_t source[], size_t size, const BMH *pattern);
static size_t Find (const uint32_t source[], size_t size, const BMH *pattern);
static size_t Find (const uint64_t source[], size_t size, const BMH *pattern);

// Signed integer types
static size_t Find (const sint8_t source[], size_t size, const BMH *pattern);
static size_t Find (const sint16_t source[], size_t size, const BMH *pattern);
static size_t Find (const sint32_t source[], size_t size, const BMH *pattern);
static size_t Find (const sint64_t source[], size_t size, const BMH *pattern);
};
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
