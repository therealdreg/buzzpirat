
#ifndef BUZZ_H
#define	BUZZ_H

#include <stdbool.h>
#include <stdint.h>

#define BUZZ_MODE 0xFE
#define BUZZ_MODE_MAIN 0x0A

#ifdef	__cplusplus
extern "C" {
#endif


bool binary_io_buzz_mode(uint8_t* ret);

#ifdef	__cplusplus
}
#endif

#endif	/* BUZZ_H */

