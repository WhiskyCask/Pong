/*
 * 
 * 	object.c
 *
 */

#include "object.h"
#include "graphicdisplay.h"
#include <stdbool.h>


const Geometry geometry_ball = { 12, 4, 4, {
			{0, 1}, {0, 2}, 
	{1, 0}, {1, 1}, {1, 2}, {1, 3},
	{2, 0}, {2, 1}, {2, 2}, {2, 3},
			{3, 1}, {3, 2}
	}
};

const Geometry geometry_paddle = { 12, 2, 8, {
	{0,0}, {1,0},
	{0,1}, {1,1},
	{0,2}, {1,2},
	{0,3}, {1,3},
	{0,4}, {1,4},
	{0,5}, {1,5},
	{0,6}, {1,6},
	{0,7}, {1,7}
	}
};


void draw_object(Object * object)
{
	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
		pixel(object->geometry->points[i].x + object->pos_x, object->geometry->points[i].y + object->pos_y, 1);
	}
}

void clear_object(Object * object)
{
	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
		pixel(object->geometry->points[i].x + object->pos_x, object->geometry->points[i].y + object->pos_y, 0);
	}
}

void translate_object(Object * object) {
	
	
	
	object->pos_x += object->vel_x;
	object->pos_y += object->vel_y;
	
	
	
}

void move_object(Object * object){
	clear_object(object);
	translate_object(object);
	
	/* Om objektet i fråga är påväg över någon kant, skifta riktning */
	if (!(0 <= object->pos_x && object->pos_x + object->geometry->width < LCD_WIDTH)) {
		object->vel_x *= -1;
	}
	
	if (!(0 <= object->pos_y && object->pos_y + object->geometry->height < LCD_HEIGHT)) {
		object->vel_y *= -1;
	}
	draw_object(object);
}

bool intersects(Object * o1, Object * o2){
	
	
	
}

void move_ball(Object * object){
	clear_object(object);
	translate_object(object);
	
	/* Kollision med paddle? Ändra riktning */
	//if(intersects()) /* Utkommenterad tillfälligt för att koden skall kompilera */

	/* På väg över långsidorna? Ändra riktning */
	if (!(0 <= object->pos_y && object->pos_y + object->geometry->height < LCD_HEIGHT)) {
		object->vel_y *= -1;
	}
	
	/* På väg över kortsidorna? Ändra poäng och återställ position, slumpa hastighet*/
	if (!(0 <= object->pos_x && object->pos_x + object->geometry->width < LCD_WIDTH)) {
		object->pos_x = 63;
		object->pos_y = 32;
		object->vel_x = 3;
		object->vel_y = 3;
	}
	draw_object(object);

}

void move_paddle(Object * object){
	
}

void set_object_vel(Object * object, int8_t vel_x, int8_t vel_y)
{
	object->vel_x = vel_x;
	object->vel_y = vel_y;
}

Object create_ball(int8_t pos_x, int8_t pos_y, int8_t vel_x, int8_t vel_y) {
	return (Object) {
	&geometry_ball,
	pos_x, pos_y,
	vel_x, vel_y,
	draw_object,
	clear_object,
	move_ball,
	set_object_vel
	};
}

Object create_paddle(int8_t pos_x, int8_t pos_y, int8_t vel_x, int8_t vel_y) {
	return (Object) {
	&geometry_paddle,
	pos_x, pos_y,
	vel_x, vel_y,
	draw_object,
	clear_object,
	move_object,
	set_object_vel
	};
}