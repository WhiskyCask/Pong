/*
 * 	delay.h
 *
 */
 
#ifndef DELAY_H
#define DELAY_H

#include "intdef.h"
#include "GPIO.h" /* For SIMULATOR definition */

extern volatile uint32_t * const SCB_VTOR;
extern volatile uint32_t systick_flag;

void delay_250ns(void);
void delay_500ns(void);
void delay_mikro(uint32_t us);
void delay_milli(uint32_t ms);

void delay_irq(uint32_t count); /* For interrupt-driven delay routine */
void init_systick_irq_handler(void); /* Should be moved to a better place in the near future */

#endif