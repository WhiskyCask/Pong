/*
 * 	GPIO.h
 *
 */

#ifndef GPIO_H
#define GPIO_H

#include "intdef.h"

#define SIMULATOR

typedef struct _GPIO {
	
	uint32_t MODER;
	uint32_t OTYPER;
	uint32_t OSPEEDR;
	uint32_t PUPDR;
	union {
		
		uint32_t IDR;
		struct {
			
			uint8_t IDR_LOW;
			uint8_t IDR_HIGH;
			
		};
	};
	union {
		
		uint32_t ODR;
		struct {
			
			uint8_t ODR_LOW;
			uint8_t ODR_HIGH;
			
		};
	};
	
} GPIO;

extern volatile GPIO * const GPIO_D;
extern volatile GPIO * const GPIO_E;

#endif