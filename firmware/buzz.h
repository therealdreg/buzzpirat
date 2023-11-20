
#ifndef BUZZ_H
#define	BUZZ_H

#include <stdbool.h>

#define BUZZ_MODE 0xFE
#define BUZZ_MODE_MAIN 0x0A

#ifdef	__cplusplus
extern "C" {
#endif


bool binary_io_buzz_mode(void);

#ifdef	__cplusplus
}
#endif

#endif	/* BUZZ_H */

