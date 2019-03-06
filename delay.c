/*
 * 	delay.c
 *
 */

#include "delay.h"

struct _STK {
	
	uint32_t CTRL;
	uint32_t LOAD;
	uint32_t VAL;
	
};

static volatile struct _STK * const STK = (struct _STK *) 0xE000E010;

volatile uint32_t * const SCB_VTOR = (uint32_t *) 0xE000ED08; /* For relocating interrupt vector table */
volatile uint32_t systick_flag = 0; /* To tell when the interrupt driven delay-routine is done */
static volatile uint32_t delay_count; /* Variable to hold our current delay for the interrupt-driven routine */

void delay_250ns(void)
{
	STK->CTRL = 0;
	STK->LOAD = 168 / 4 - 1;
	STK->VAL = 0;
	STK->CTRL = 5;
	
	while (!(STK->CTRL & 0x10000)) {
		/* Vänta tills bit 16 (COUNTFLAG) ettställs */
	}
	STK->CTRL = 0;
}

void delay_500ns(void)
{
	#ifndef SIMULATOR
		delay_250ns();
		delay_250ns();
	#endif
}

void delay_mikro(uint32_t us)
{
	while (us > 0) {
		delay_500ns();
		delay_500ns();
		us--;
	}
}

void delay_milli(uint32_t ms)
{
	
	#ifdef SIMULATOR
		delay_mikro(ms); /* Kompenserar tidsfördröjningen för simulatorn */
	#else
		delay_mikro(1000 * ms);
	#endif
}

static void delay_1u()
{
	systick_flag = 0;
	STK->CTRL = 0;
	STK->LOAD = 168 - 1; /* Proccessorn har en frekvens på 168 MHz */
	STK->VAL = 0;
	STK->CTRL = 0b111; /* Systemklocka, Systick-avbrott genereras då räknaren slår om till 0, och räknaren är aktiv */
}

static void systick_irq_handler(void)
{
	STK->CTRL = 0;
	delay_count--;
	if (delay_count > 0) {
		delay_1u();
	}
	else {
		systick_flag = 1;
	}

}

void delay_irq(uint32_t count)
{
	delay_count = count;
	#ifdef SIMULATOR
	delay_count = 256; //couldn't use division, program crashes. Value works for intended purposes
	#endif
	delay_1u();
}

/* Should be moved to a better place in the near future */
void init_systick_irq_handler(void)
{
	*SCB_VTOR = 0x2001C000; /* Relokera undantagsvektorn till basadress 0x2001C000 */
	*((void (**)(void)) 0x2001C03C) = systick_irq_handler;
	systick_flag = 0;
	
}