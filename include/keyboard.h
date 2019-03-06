/*
 * 	keyboard.h
 *
 */

#ifndef KEYBOARD_H
#define KEYBOARD_H

#include <stdbool.h>

#include "intdef.h"
#include "GPIO.h"

uint8_t keyb();

bool right_paddle_up(void);
bool right_paddle_down(void);
bool left_paddle_up(void);
bool left_paddle_down(void);

#endif
