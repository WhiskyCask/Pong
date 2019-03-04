/*
 * 	delay.h
 *
 */
 
#ifndef DELAY_H
#define DELAY_H

#include "intdef.h"
#include "GPIO.h" /* For SIMULATOR definition */

void delay_250ns();
void delay_500ns();
void delay_mikro(uint32_t us);
void delay_milli(uint32_t ms);

#endif