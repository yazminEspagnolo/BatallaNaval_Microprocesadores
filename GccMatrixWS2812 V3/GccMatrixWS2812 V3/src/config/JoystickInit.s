#include <avr/io.h>

/* The following is needed to
subtract 0x20 from I/O addresses
*/
#undef SFR_OFFSET
#define SFR_OFFSET 0

// Masks
#define B0 (1<<0)
#define B1 (1<<1)
#define B2 (1<<2)
#define B3 (1<<3)
#define B4 (1<<4)
#define B5 (1<<5)
#define B6 (1<<6)
#define B7 (1<<7)
#define JOYBUTTON_PORT B4
#define PIN_JOYBUTTON 4

.global joybutton_Init


joybutton_Init:
    push r20
    push r21
    ldi r20, (JOYBUTTON_PORT)
    in r21, DDRD
    or r21, r20
    out DDRD, r21
    pop r21
    pop r20
ret