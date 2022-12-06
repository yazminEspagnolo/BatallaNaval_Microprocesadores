/*
 * Display_ss.c
 *
 * Created: 26/11/2022 19:16:50
 *  Author: Michelle
 */ 
#include <stdint.h>
#include <avr/io.h>
#include "display_ss.h"

#define DIGIT_1 0b10000000
#define DIGIT_2 0b01000000
#define DIGIT_3 0b00100000
#define DIGIT_4 0b00010000

// 0 1 2 3 4 5 6 7 8 9
uint8_t SS_table[]={0x03, 0x9F, 0x25, 0x0D, 0x99, 0x49, 0x41, 0x1F, 0x01, 0x09}; // Inverted 7 segment codes
uint8_t Player_table[]={0x31, 0x9E, 0x31, 0x24}; // P 1 P 2  DA 00100100
uint8_t Digit_selector[]={DIGIT_1,DIGIT_2,DIGIT_3,DIGIT_4}; // Selector de digito
uint8_t Digit_values[4]; // valores a mostrar (deben estar en formato de 7 segmentos)
volatile uint8_t Player1_Hits = 0;
volatile uint8_t Player2_Hits = 0;

uint8_t DisplayCount = 0;


extern void ss_Init(void);
extern void ss_SendByte(uint8_t);
extern void ss_Wrt2Latch(void);

void display_init(void)
{
	ss_Init();
	Digit_values[2] = 0b10010001;
}

//La función display_resfesh() deberá ser llamada desde la
//interrupción periódica cada 4ms (Timer.c)

void display_resfesh(uint8_t displayvalue)
{
	ss_SendByte(Digit_values[displayvalue]);
	ss_SendByte(Digit_selector[displayvalue]);
	ss_Wrt2Latch();
}
void set_P1(void)
{
	Digit_values[0] = Player_table[0];
	Digit_values[1] = Player_table[1];
	Digit_values[3] = SS_table[Player1_Hits];
}
void set_P2(void)
{
	Digit_values[0] = Player_table[2];
	Digit_values[1] = Player_table[3];
	Digit_values[3] = SS_table[Player2_Hits];
	
}

