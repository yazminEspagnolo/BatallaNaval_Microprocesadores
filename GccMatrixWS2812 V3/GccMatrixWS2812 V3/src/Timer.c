
#include <asf.h>
#include <stdint.h>				//Standard types
#include <avr/interrupt.h>
#include "Timer.h"
#include "ADC.h"
#include "UART.h"
#include "cqueue.h"
#include "JoystickButton.h"
#include "Display_ss.h"




// Display Bytes definitions

#define AllBytesSended 3
#define NoByteSended 0

// Timer Counts definitions

#define TwoSegs 1000
#define OneSeg 500
#define HalfSeg 250
#define TwoMiliSeg 100
#define OneMiliSeg 50


// Timer Prescaler definitions //

#define divx1 (0<<CS02)|(0<<CS01)|(1<<CS00)
#define	divx8 (0<<CS02)|(1<<CS01)|(0<<CS00)
#define	divx64 (0<<CS02)|(1<<CS01)|(1<<CS00)
#define	divx256 (1<<CS02)|(0<<CS01)|(0<<CS00)
#define	divx1024 (1<<CS02)|(0<<CS01)|(1<<CS00)

// Select Prescaler value
#define	PRESCALER divx256	//Timer prescaler / divider

uint16_t Joystick_CountTimer = TwoMiliSeg;
uint16_t Joystickbutton_CountTimer = OneMiliSeg;
volatile uint8_t Turno = 1;
uint8_t digit_display = 0;

volatile int ijoy,jjoy;

extern void Joystick(void);

void init_RTI(void)
{
	
	//  Interrupt Source: Hardware Timer 0 using OCR0A (Output Compare Register A)
	//  Waveform Generation Mode:Clear Timer on Compare Match (CTC)(WGM02=0,WGM01=1,WGM0=0)(Non PWM Mode)
	//  COM0A1=0,COM0A0=0 Normal port operation, OC0A disconnected.
	//


	// 1-Timer Mode: CTC
	TCCR0A=(0<<COM0A1)|(0<<COM0A0)|(0<<COM0B1)|(0<<COM0B0)|(1<<WGM01)|(0<<WGM00);
	
	

	// 2-Clock select:Prescaler=256
	TCCR0B=(0<<FOC0A)|(0<<FOC0B)|(0<<WGM02)|PRESCALER;
	

	// 3-Set OCR
	OCR0A=125;


	// 4-Timer/Counter0 Output Compare Match A Interrupt Enable
	TIMSK0=(0<<OCIE0B)|(1<<OCIE0A)|(0<<TOIE0);
}

//Interrupt service routine (ISR) for Timer 0
// Timer int happens every (16MHz)^(-1)*1024*125 = 62.5ns*1024*125 = 64 * 125 useg = 2mseg
ISR(TIMER0_COMPA_vect)
{
	display_resfesh(digit_display);
	if (digit_display < AllBytesSended)
	{
		digit_display++;
	}
	
	else
	{
		digit_display = NoByteSended;
	}
	
	if(Joystick_CountTimer)			// 2mseg x 150 = 300 mseg
	{
		Joystick_CountTimer--;
	}

	else
	{
		Joystick_CountTimer=OneMiliSeg;
		Joystick();
	}
	if (Joystickbutton_CountTimer)
	{
		Joystickbutton_CountTimer --;
	}
	
	else
	{
		Joystickbutton_CountTimer = OneMiliSeg;
		if (button_check() == 0)
		{
			if (Turno == 1)
			{
				Turno = 2;
				Joystickbutton_CountTimer = OneSeg;
			}
			
			else if (Turno == 2)
			{
				Turno = 1;
				Joystickbutton_CountTimer = OneSeg;
			}
		}
	}
}