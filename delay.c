/*
 * 	delay.c
 *
 */

#include "delay.h"

static struct _STK {
	
	uint32_t CTRL;
	uint32_t LOAD;
	uint32_t VAL;
	
};

static volatile struct _STK * const STK = (struct _STK *) 0xE000E010;

void delay_250ns()
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

void delay_500ns()
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