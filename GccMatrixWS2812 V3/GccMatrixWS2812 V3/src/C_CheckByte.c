/*
 * C_CheckByte.c
 *
 * Created: 2/12/2022 8:52:43
 *  Author: NinoM
 */ 
#include <stdint.h>
#include <avr/io.h>
#include "C_CheckByte.h"

#define HUNDIDO 0b00001000 //(BIT TRES)
#define TOCADO 0b00000100 //(BIT DOS)
#define DISPARADO 0b00000010 //(BIT UNO)
#define AGUA 0b00000001 //(BIT CERO)

extern uint8_t checking(uint8_t);

uint8_t CheckByte(uint8_t matrizbyte)
{
	volatile int a;
	if ((matrizbyte && AGUA) != 0)
	{
		a=0;
	}
	else if ((matrizbyte && DISPARADO) != 0)
	{
		a=1;
	}
	else if ((matrizbyte && TOCADO) != 0)
	{
		a=2;
	}
	else if ((matrizbyte && HUNDIDO) != 0)
	{
		a=3;
	}
	else 
	{
		a=0;
	}
	return(a);
}
