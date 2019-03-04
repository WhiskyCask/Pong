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
	
	Object ball = create_ball(0, 0, 0, 0);
	uint8_t k;
	while(1) {
		ball.move(&ball);
		delay_milli(40); /* 25 bilder per sekund */
		k = keyb();
		switch(k) {
			
			case 1:
				ball.set_vel(&ball, -2, -2);
				break;
			
			case 2:
				ball.set_vel(&ball, 0, -4);
				break;
				
			case 3:
				ball.set_vel(&ball, 2, -2);
				break;
				
			case 4:
				ball.set_vel(&ball, -4, 0);
				break;
				
			case 5:
				ball.set_vel(&ball, 0, 0);
				break;
				
			case 6:
				ball.set_vel(&ball, 4, 0);
				break;
				
			case 7:
				ball.set_vel(&ball, -2, 2);
				break;
				
			case 8:
				ball.set_vel(&ball, 0, 4);
				break;
				
			case 9:
				ball.set_vel(&ball, 2, 2);
				break;
			
			default:
				/* Om ingen knapp är nedtryckt, nollställ hastigheten */
				ball.set_vel(&ball, 0, 0);
		}
	}
	
	return 0;
	
}