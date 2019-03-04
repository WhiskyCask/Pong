/*
 * 	keyboard.c
 *
 */

#include "keyboard.h"

static const enum {
	
	ROWS = 4, /* Antalet rader på tangentbordet */
	COLS = 4 /* Antalet kolumner på tangentbordet */
	
};

static const uint8_t key[] = {
	1, 2, 3, 0xA,
	4, 5, 6, 0xB,
	7, 8, 9, 0xC,
	0xE, 0, 0xF, 0xD
};

/* Hjälprutiner */
static void keyboard_activate(uint8_t row)
{
	switch (row)
	{
		case 1:
			GPIO_D->ODR_HIGH = 0x10;
			break;
			
		case 2:
			GPIO_D->ODR_HIGH = 0x20;
			break;
			
		case 3:
			GPIO_D->ODR_HIGH = 0x40;
			break;
			
		case 4:
			GPIO_D->ODR_HIGH = 0x80;
			break;
			
		default:
			GPIO_D->ODR_HIGH = 0;
	}
}

static uint8_t keyboard_get_col()
{
	uint8_t c = GPIO_D->IDR_HIGH;
	if (c & 8)
		return 4;
	if (c & 4)
		return 3;
	if (c & 2)
		return 2;
	if (c & 1)
		return 1;
	return 0;
}

uint8_t keyb()
{
	uint8_t row, col;
	for (row = 1; row <= ROWS; row++)
	{
		keyboard_activate(row);
		col = keyboard_get_col();
		if (col) {
			keyboard_activate(0);
			return key[COLS * (row - 1) + (col - 1)];
		}
	}
	keyboard_activate(0);
	return 0xFF;
}