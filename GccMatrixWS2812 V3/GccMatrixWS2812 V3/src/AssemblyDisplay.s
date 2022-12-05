#include <avr/io.h>

/* The following is needed to
subtract 0x20 from I/O addresses
*/
#undef __SFR_OFFSET
#define __SFR_OFFSET 0

// Masks
#define B0 (1<<0)
#define B1 (1<<1)
#define B2 (1<<2)
#define B3 (1<<3)
#define B4 (1<<4)
#define B5 (1<<5)
#define B6 (1<<6)
#define B7 (1<<7)
#define DATA_PORT B0
#define CLOCK_PORT B7
#define LATCH_PORT B4
#define PIN_DATA 0
#define PIN_LATCH 4
#define PIN_CLOCK 7

.global ss_Init
.global ss_SendByte
.global ss_Wrt2Latch

ss_Init:
	push r20
	push r21
	ldi r20, (LATCH_PORT | CLOCK_PORT)
	in r21, DDRD
	or r21, r20
	out DDRD, r21
	ldi r20, (DATA_PORT)
	in r21, DDRB
	or r21, r20
	out DDRB, r21
	pop r21
	pop r20
ret

ss_SendByte:
	push r20
	push r21
	in r21, SREG
	clz
	clc
	ldi r20, 0x08 ; inicializa el contador de los 8 bits en 8.
nxtbit:
	ror r24 ; setea el carry si el digito de la derecha es uno, sino, no.
	brcs setted ; si el carry esta seteado se va al labbel setted.
	cbi PORTB, PIN_DATA; SETEA EL DATO EN CERO YA QUE EL FLAG C NO ESTA SETEADO.
	jmp shft ; LLAMA A LA FUNCION PARA SHIFTEAR EL DATO.
setted:
	sbi PORTB, PIN_DATA; SETEA EL DATO EN UNO
shft:
	sbi PORTD, PIN_CLOCK ; Sube el clock
	nop
	nop
	cbi PORTD, PIN_CLOCK ; Baja el clock
	dec r20 ; baja uno al contador 
	breq allbitsended ; Si ya envio los 8 bits pega un salto al labbel allbitsended
	jmp nxtbit
allbitsended:
	out SREG, r21
	pop r21
	pop r20
ret

ss_Wrt2Latch:
	sbi PORTD, PIN_LATCH
	nop
	nop
	cbi PORTD, PIN_LATCH
ret