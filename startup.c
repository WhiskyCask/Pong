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
#define REFRESHINTERVAL 33333

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

Object ball;
Object leftpaddle;
Object rightpaddle;

void update_positions(void){
	ball.move(&ball);
	leftpaddle.move(&leftpaddle);
	rightpaddle.move(&rightpaddle);
}

void update_velocities(void){
		uint8_t k = keyb();
		switch(k) {
			case 1:
				leftpaddle.set_vel(&leftpaddle, 0, -2);
				break;
			case 2:
				ball.set_vel(&ball, 0, -4);
				break;
				
			case 0xA:
				rightpaddle.set_vel(&rightpaddle, 0, -2);
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
				leftpaddle.set_vel(&leftpaddle, 0, 2);
				break;
				
			case 8:
				ball.set_vel(&ball, 0, 4);
				break;
				
			case 0xC:
				rightpaddle.set_vel(&rightpaddle, 0, 2);
				break;
			
			default:
				/* Om ingen knapp är nedtryckt, nollställ hastigheten */
				//ball.set_vel(&ball, 0, 0);
				leftpaddle.set_vel(&leftpaddle, 0, 0);
				rightpaddle.set_vel(&rightpaddle, 0, 0);

		}
}


int main(void)
{
	init_app();
	ascii_initialise();
	graphic_initialise();
	#ifndef SIMULATOR
		graphic_clear_screen();
	#endif
	
	ball = create_ball(63, 32, -5, 0);
	leftpaddle = create_paddle(4, 32, 0, 0);
	rightpaddle = create_paddle(123, 32, 0, 0);
	
	init_systick_irq_handler();
	delay_irq(REFRESHINTERVAL);
	
	while(1){
		while(!systick_flag){
				update_velocities(); //Check if key is pressed and if so update the velocity on the corresponding object
				draw_buffer(); //Can take different amount of time depending on how much has changed on the screen.

			}
			delay_irq(REFRESHINTERVAL); //Systick_flag should be 1 about once every 30th of a second
			update_positions();  //Depending on the set velcoities, positions are updated. It is important that positions are updated at a relatively constant rate.
			
	}
	
	

	
	
	return 0;
	
}

