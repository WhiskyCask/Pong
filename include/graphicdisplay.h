/*
 * 	display.h
 *
 */
 
#ifndef GRAPHIC_DISPLAY_H
#define GRAPHIC_DISPLAY_H

#include "intdef.h"
#include "GPIO.h"
#include "delay.h"

extern const uint8_t LCD_WIDTH;
extern const uint8_t LCD_HEIGHT;

typedef struct {
	uint8_t buf[(LCD_HEIGHT/8)*LCD_WIDTH];
}BBuffer, *pBBuffer;

void graphic_initialise();
void graphic_clear_screen();
void pixel(uint8_t x, uint8_t y, uint8_t set);
void draw_buffer(*pBBuffer);

#endif