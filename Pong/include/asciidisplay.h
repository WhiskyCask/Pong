/*
 * 	startup.c
 *
 */

#ifndef ASCII_DISPLAY_H
#define ASCII_DISPLAY_H

#include "intdef.h"
#include "delay.h"
#include "GPIO.h"

void ascii_initialise();
void ascii_write_char(uint8_t c);
void ascii_gotoxy(uint8_t row, uint8_t col)

#endif