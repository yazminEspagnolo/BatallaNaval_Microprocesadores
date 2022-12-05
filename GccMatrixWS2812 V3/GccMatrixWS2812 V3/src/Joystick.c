/*
 * Joystick.c
 *
 * Created: 2/12/2022 12:06:22
 *  Author: NinoM
 */ 
#include <asf.h>
#include <stdint.h>				//Standard types
#include <avr/interrupt.h>

#include "ADC.h"
#include "UART.h"
#include "Timer.h"
#include "JoystickButton.h"


volatile int ijoy,jjoy;
volatile int ispressed;
void Joystick(void)
{
	if (button_check() == 0)
	{
		/*UART_putstring("Boton apretado \n");*/
	}
	else if ((read_VRX()  >= 700))
	{
		if (ijoy < 7)
		{
			ijoy++; //se mueve 1 a la derecha
			send_num(ijoy);
		}
	}
	else if ((read_VRX()  ==  0) && (read_VRY()  >=  0) && (read_VRY()  <=  1023))
	{
		if (ijoy > 0)
		{
			ijoy--; //se mueve 1 a la izquierda
			send_num(ijoy);
		}
	}

	else if ((read_VRX()  >=  0) && (read_VRX()  <=  1023) && (read_VRY()  >=  0) && (read_VRY()  <=  200))
	{
		if (jjoy < 7)
		{
			jjoy++; //se mueve 1 hacia arriba
			send_num(jjoy);
		}
	}
	else if ((read_VRX()  >=  0) && (read_VRX()  <=  1023) && (read_VRY()  >=  700)&& (read_VRY()  <=  1023))
	{
		if (jjoy > 0)
		{
			jjoy--; //se mueve 1 hacia abajo
			send_num(jjoy);
		}
	}
	else
	{
// 		UART_putstring("VECTOR X: ");
// 		send_num(read_VRX());
// 		UART_putstring("\n");
// 		UART_putstring("VECTOR Y: ");
// 		send_num(read_VRY());
// 		UART_putstring("\n");
	}
		
}



uint8_t button_check(void)
{
	ispressed = (PIND & (1<<6));
	return (ispressed);
}



