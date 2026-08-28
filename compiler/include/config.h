#ifndef CONFIG_H
#define CONFIG_H

#undef _XOPEN_SOURCE
#undef _POSIX_C_SOURCE
#undef _GNU_SOURCE
#undef _DEFAULT_SOURCE
#undef __STRICT_ANSI__

// I tried, i tried, and i tried, but no matter what I did I couldn't get
// __USE_MISC (for mkstemps), and set the POSIX standard to 2008,
// because __USE_MISC required _DEFAULT_SOURCE to be defined,
// and no matter what I did, I couldn't set _POSIX_C_SOURCE to 200809L
// because _DEFAULT_SOURCE always set it to 202405L
// So i just decided to deal with it
#define _DEFAULT_SOURCE
#include <features.h>

#endif
