/*
 * UART.h
 *
 * Created: 11/2/2022 1:04:59 PM
 *  Author: jacoby
 */ 


#ifndef UART_H_
#define UART_H_
void UART_Init(void);
uint8_t UART_rx_status(void);
uint8_t UART_get_data(void);
void UART_send_data(char data);
void UART_putstring(char *);

void send_num(int numero);

int uart_test(void);


#endif /* UART_H_ */