#include <asf.h>
#include <stdint.h>
#define F_CPU 16000000UL // Defining the CPU Frequency
#include <util/delay.h>  // Generates a Blocking Delay+
#include <stdio.h>#include <inttypes.h>


#include "UART.h"
#include "ADC.h"
#include "Timer.h"
#include "JoystickButton.h"
#include "C_CheckByte.h"
#include "Display_ss.h"
#include <stdlib.h>
#include <string.h>
//extern uint8_t JoystickButton(void);
/*
GccWS2812_V3
This version works like the assembly version "ws2812 efecto1"
The main differences are:
1- The Assembly code is the same but the compiler is the GCC version
   so pay attention to the differences.
Eg.: .equ is replaced by #define , HIGH and LOW is replaced by hi8 and lo8
     The argument of the latter macros (hi8,lo8) is not more 2*Address_Label
	 #define __SFR_OFFSET 0 must be defined
	 Macros syntax is different
	 .def is replaced with #define 
	 Tables in program segment are defined using .byte (not .db)
*/



typedef struct 
		{
			uint8_t green;   // WS2812 order (GRB)
			uint8_t red;
			uint8_t blue;
		} RGBled;
		


typedef RGBled (*P2RGB) ;

// Variables

P2RGB p2disp;

RGBled disparado={100,0,0}; // DISPARADO VERDE
RGBled hundido={0,100,0}; // HUNDIDO ROJO
RGBled agua={0,0,100}; // AGUA AZUL
RGBled tocado={100,100,25}; // TOCADO AMARILLO
RGBled Apagado={0,0,0}; // LED APAGADO
RGBled puntero = {10, 10, 0}; // PUNTERO DEL JOYSTICK
RGBled Matriz_RGB[8][8];

#define submarine (1<<6)
#define cargoBoat (1<<7)

uint16_t ContadorPuntero = 0;

const uint16_t derecha_min = 800;
const uint16_t derecha_max = 1023;
const uint16_t izquierda_min = 200;
const uint16_t izquierda_max = 0;
const uint16_t abajo_min = 800;
const uint16_t abajo_max = 1023;
const uint16_t arriba_min = 200;
const uint16_t arriba_max = 0;	
	

		
// Assembly function
extern void init_ws2812(void);
extern void wrt_ws2812(P2RGB);

// Local prototypes
void Mostrar_Matriz_2(void);
void Mostrar_Matriz_1(void);
void softdelay(void);
void clear_disp(void);
char msg[] = "Hello from ATmega328p\r\n  ";

volatile uint16_t ijoy; //filas
volatile uint16_t jjoy; //columnas

void ADCTestBench(void);

// Prototypes Display
void display_init(void);
void set_P1(void);
void set_P2(void);

// void Disparado(uint16_t i, uint16_t j);
// void Hundido(uint16_t i, uint16_t j);
// void Tocado(uint16_t i, uint16_t j);
// void Agua(uint16_t i, uint16_t j);
RGBled Matriz_P1[8][8]; //matriz jugador 1
RGBled Matriz_P2[8][8]; //matriz jugador 2

//void mostrar_Matriz(RGBled *);
void embarcacion(char b[3]);
void PunteroDelJuegoP1(void);
void PunteroDelJuegoP2(void);

extern void joybutton_Init(void);

uint8_t button_press(void);
volatile uint8_t ispressed;

volatile uint8_t Turno;



int main (void)
{		
			init_ws2812();		//Initialize RGB Display driver
			init_RTI();			//Initialize Periodic Real Time Interrupt(Timer)
			UART_Init();		//Initialize serial port driver (UART)
			adc_init();			//Initialize Analog to digital converter (Joystick)
			joybutton_Init();
			display_init();
		
			p2disp=&Matriz_RGB[0][0];
			
			
		for(int r=0;r<=7;r++)
			for(int c=0;c<=7;c++)
				Matriz_RGB[r][c]=Apagado;
				
		UART_putstring("Hola");
 			
 		for(int r=0;r<=7;r++)
			for(int c=0;c<=7;c++)
				Matriz_P1[r][c]=Apagado;
			
			for(int r=0;r<=7;r++)
				for(int c=0;c<=7;c++)
					Matriz_P2[r][c]=Apagado;
					
		clear_disp();
					
// 		for( k=0;k<=7;k++)
// 			{
// 			Matriz_P1[k][0]=tocado;
// 			Matriz_P1[k][4]=tocado;
// 			Matriz_P1[k][7]=tocado;
// 			}
// 			
// 		for( k=0;k<=7;k++)
// 			{
// 			Matriz_P2[k][0]=hundido;
// 			Matriz_P2[k][4]=hundido;
// 			Matriz_P2[k][7]=hundido;
// 			}
			
			
			
			sei();					// Enable global Interrupts

			while(1)
			{
				if (Turno == 1)
				{
					set_P1();
					while (Turno == 1)
					{
						clear_disp();
						
						Mostrar_Matriz_2();
						Matriz_RGB[ijoy][jjoy] = puntero;
						_delay_ms(50);
						wrt_ws2812(p2disp);
					}
				}
				
				else if (Turno == 2)
				{
					set_P2();
					while (Turno == 2)
					{
						clear_disp();
						Mostrar_Matriz_1();
						Matriz_RGB[ijoy][jjoy] = puntero;
						_delay_ms(50);
						wrt_ws2812(p2disp);
					}
				}
			}

// 			clear_disp();
// 	        wrt_ws2812(p2disp);
// 			
// 			_delay_ms(500);
// 			
// 			
// 			for(k=0;k<=7;k++)
// 			{
// 			Matriz_RGB[k][0]=Rojo;
// 			Matriz_RGB[k][4]=Verde;
// 			Matriz_RGB[k][7]=Azul;
// 			}
// 
// 			wrt_ws2812(p2disp);
// 			
// 			
// 			_delay_ms(800);
// 			clear_disp();
// 			
// 			
// 			for(i=0;i<=3;i++)
// 			{
// 				Matriz_RGB[3-i][3-i]=Rojo;
// 				Matriz_RGB[4+i][3-i]=Verde;
// 				Matriz_RGB[3-i][4+i]=Verde;
// 				Matriz_RGB[4+i][4+i]=Rojo;
// 		
// 				wrt_ws2812(p2disp);
// 		
// 				_delay_ms(500);
// 				clear_disp();
// 			}
// 			
// 			while(1);
// 
// 			//ADCTestBench();
// 			uart_test();
// 			//cambiarJugador();
// 			joybutton_Init();
// 			//joybuttonpress_Check();
// 			Matriz_P1[3][5] = 7;
// 			mostrar_Matriz_1();
// 			//mostrar_Matriz();
}


// void Disparado(uint16_t i, uint16_t j)
// {
// 	Matriz[i][4]=Verde;
// }
// 
// void Hundido(uint16_t i, uint16_t j)
// {
// 	Matriz[i][0]=Rojo;
// }
// 
// void Tocado(uint16_t i, uint16_t j)
// {
// 	Matriz[i][2]=Amarillo;
// }
// 
// void Agua(uint16_t i, uint16_t j)
// {
// 	Matriz[i][7]=Azul;
// }
/*
void mostrar_Matriz( Matriz)
{
	int i,j;
	
	for (i=1; i<8; i++)
	{
		for (j=1; j<8; j++)
		{
			printf("|%c|\t",Matriz[i][j]);
		}
		printf("\n\n");
	}
}

*/




// void mostrar_Matriz_1(void)
// {
// 	for(int r=0;r<=7;r++)
//	{
// 		for(int c=0;c<=7;c++)
// 		{
// 			Matriz[r][c]=Azul;
// 		}
// 	}
// }

void Mostrar_Matriz_2(void)
{
	for (int i=0; i<=7; i++)
		for (int j=0; j<=7; j++)
			Matriz_RGB[i][j] = Matriz_P2[i][j];
}

void Mostrar_Matriz_1(void)
{
	for (int i=0; i<=7; i++)
		for (int j=0; j<=7; j++)
			Matriz_RGB[i][j] = Matriz_P1[i][j];
}


/*
void embarcacion(char b[3])
{
	int i, j;
//	int x=65, y=0;
	for(i=0; i<3;)
	{
		//printf("LA UBICACION DEl BARCO %i: ",(x, y));
		//scanf("%c",&b[i]);         // lee lo que se ingresa por teclado.
		//fflush(stdin);             // limpia el buffer de entrada (lo que se ingresa por teclado).
		if (b[i]>=65 && b[i]<=72)  // De A a H código ascii.
		{
			x=b[i];
			if(b[j]>=0 && b[j]<=7); // De 0 a 7
			{
				y=b[j];
			}
		}
		//else if printf("INGRESA UNA LETRA QUE SE ENCUENTRE DENTRO DEL TABLERO\n");
		//else if printf("INGRESA UN NÚMERO QUE SE ENCUENTRE DENTRO DEL TABLERO\n");

		
	}
}
*/

void clear_disp(void)
{
	cli();
	for(int r=0;r<=7;r++)
		for(int c=0;c<=7;c++)
				Matriz_RGB[r][c]=Apagado;
	sei();
}



void softdelay(void)
{
	volatile long int d;
	
	for (d=400000;d;d--)
	{
	};
	
}


void ADCTestBench(void)
{
	char buffer[5];
	
	while(1){
		
		//Read VX
		itoa(read_VRX(),(char*)buffer, 10);
		UART_putstring(buffer);
		UART_send_data('\t');
		UART_send_data('\t');
		//Read VY
		itoa(read_VRY(), (char *)buffer, 10);
		UART_putstring(buffer);
		UART_send_data('\r');
		UART_send_data('\n');
		_delay_ms(1000); 
	}
	
}