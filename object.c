/*
 * 
 * 	object.c
 *
 */

#include "object.h"
#include "graphicdisplay.h"

const Geometry geometry_ball = { 12, 4, 4, {
			{0, 1}, {0, 2}, 
	{1, 0}, {1, 1}, {1, 2}, {1, 3},
	{2, 0}, {2, 1}, {2, 2}, {2, 3},
			{3, 1}, {3, 2}
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

void move_object(Object * object) {
	
	clear_object(object);
	
	object->pos_x += object->vel_x;
	object->pos_y += object->vel_y;
	
	/* Om objektet i fråga är påväg över någon kant, skifta riktning */
	if (!(0 <= object->pos_x && object->pos_x + object->geometry->width <= LCD_WIDTH)) {
		object->vel_x *= -1;
	}
	
	if (!(0 <= object->pos_y && object->pos_y + object->geometry->height <= LCD_HEIGHT)) {
		object->vel_y *= -1;
	}
	
	draw_object(object);
	
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
	move_object,
	set_object_vel
	};
}
