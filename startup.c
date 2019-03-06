/*
 * 	startup.c
 *
 */

#include "intdef.h"
#include "GPIO.h"
#include "delay.h"
#include "graphicdisplay.h"
#include "asciidisplay.h"
#include "keyboard.h"
#include "object.h"

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	".L1: B .L1\n"				/* never return */
	) ;
}

void init_app()
{
	GPIO_D->MODER = 0x55005500; /* Ansluter en keypad till PortD0-7 och en annan till PortD8-15 */
	GPIO_E->MODER = 0x55555555; /* Sätter hela Port E till utport */
}

int main(void)
{
	init_app();
	ascii_initialise();
	graphic_initialise();
	#ifndef SIMULATOR
		graphic_clear_screen();
	#endif
	
	Object ball = create_ball(63, 32, 0, 0);
	Object leftpaddle = create_paddle(4, 32, 0, 0);
	Object rightpaddle = create_paddle(123, 32, 0, 0);

	uint8_t k;
	while(1) {
		k = keyb();
		switch(k) {
			case 1:
				leftpaddle.set_vel(&leftpaddle, 0, -2);
				break;
				
			case 2:
				break;
				
			case 3:
				rightpaddle.set_vel(&rightpaddle, 0, -2);
				break;
				
			case 4:
				break;
				
			case 5:
				break;
				
			case 6:
				break;
				
			case 7:
				leftpaddle.set_vel(&leftpaddle, 0, 2);
				break;
				
			case 8:
				break;
				
			case 9:
				rightpaddle.set_vel(&rightpaddle, 0, 2);
				break;
			
			default:
				/* Om ingen knapp är nedtryckt, nollställ hastigheten */
				leftpaddle.set_vel(&leftpaddle, 0, 0);
				rightpaddle.set_vel(&rightpaddle, 0, 0);

		}
		ball.move(&ball);
		leftpaddle.move(&leftpaddle);
		rightpaddle.move(&rightpaddle);
		draw_buffer();
		delay_milli(40); /* 25 bilder per sekund */		
	}
	
	return 0;
	
}