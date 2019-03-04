/*
 * 	display.h
 *
 */
 
#ifndef DISPLAY_H
#define DISPLAY_H

#include "intdef.h"
#include "GPIO.h"
#include "delay.h"

extern const uint8_t LCD_WIDTH;
extern const uint8_t LCD_HEIGHT;

void graphic_initialise();
void graphic_clear_screen();
void pixel(uint8_t x, uint8_t y, uint8_t set);

#endif