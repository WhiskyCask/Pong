/*
 * 	GPIO.c
 *
 */

#include "GPIO.h"

volatile GPIO * const GPIO_D = (GPIO *) 0x40020C00;
volatile GPIO * const GPIO_E = (GPIO *) 0x40021000;