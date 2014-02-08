/*                                                                    Sequence.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                       SUBSEQUENCE SEARCHING ALGORITHMS                       #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2014, Jack Black #
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
BMH (const uint8_t pattern[], size_t size, bool backward);
BMH (const uint16_t pattern[], size_t size, bool backward);
BMH (const uint32_t pattern[], size_t size, bool backward);
BMH (const uint64_t pattern[], size_t size, bool backward);

// Signed integer types
BMH (const sint8_t pattern[], size_t size, bool backward);
BMH (const sint16_t pattern[], size_t size, bool backward);
BMH (const sint32_t pattern[], size_t size, bool backward);
BMH (const sint64_t pattern[], size_t size, bool backward);
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
# else
/*
################################################################################
#       C prototypes                                                           #
################################################################################
*/
//****************************************************************************//
//      Boyer-Moore-Horspool pattern hash                                     //
//****************************************************************************//
struct BMH
{
	const size_t	hash [256];		// BMH hash
	const size_t	size;			// Size of pattern
	const void		*pattern;		// Pattern
	const bool		backward;		// Flag to search in backward direction
};

// Unsigned integer types
void BMH_uint8 (struct BMH *hash, const uint8_t pattern[], size_t size, bool backward);
void BMH_uint16 (struct BMH *hash, const uint16_t pattern[], size_t size, bool backward);
void BMH_uint32 (struct BMH *hash, const uint32_t pattern[], size_t size, bool backward);
void BMH_uint64 (struct BMH *hash, const uint64_t pattern[], size_t size, bool backward);

// Signed integer types
void BMH_sint8 (struct BMH *hash, const sint8_t pattern[], size_t size, bool backward);
void BMH_sint16 (struct BMH *hash, const sint16_t pattern[], size_t size, bool backward);
void BMH_sint32 (struct BMH *hash, const sint32_t pattern[], size_t size, bool backward);
void BMH_sint64 (struct BMH *hash, const sint64_t pattern[], size_t size, bool backward);

//****************************************************************************//
//      Boyer-Moore-Horspool subsequence searching algorithm                  //
//****************************************************************************//

// Unsigned integer types
size_t Sequence_Find_uint8 (const uint8_t source[], size_t size, const struct BMH *pattern);
size_t Sequence_Find_uint16 (const uint16_t source[], size_t size, const struct BMH *pattern);
size_t Sequence_Find_uint32 (const uint32_t source[], size_t size, const struct BMH *pattern);
size_t Sequence_Find_uint64 (const uint64_t source[], size_t size, const struct BMH *pattern);

// Signed integer types
size_t Sequence_Find_sint8 (const sint8_t source[], size_t size, const struct BMH *pattern);
size_t Sequence_Find_sint16 (const sint16_t source[], size_t size, const struct BMH *pattern);
size_t Sequence_Find_sint32 (const sint32_t source[], size_t size, const struct BMH *pattern);
size_t Sequence_Find_sint64 (const sint64_t source[], size_t size, const struct BMH *pattern);

# endif
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
