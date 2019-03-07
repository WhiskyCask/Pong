/*
 * 	object.h
 *
 */
 
#ifndef OBJECT_H
#define OBJECT_H

#include <stdbool.h>

#include "intdef.h"
#include "graphicdisplay.h"

#define MAX_POINTS 20

typedef struct {
	
	uint8_t x;
	uint8_t y;
	
} Point;

typedef struct {
	
	uint8_t num_points;
	uint8_t width;
	uint8_t height;
	Point points[MAX_POINTS];
	
} Geometry;

typedef struct Object {
	
	const Geometry * geometry;
	int8_t pos_x;
	int8_t pos_y;
	int8_t vel_x;
	int8_t vel_y;
	void (* draw) (struct Object *);
	void (* clear) (struct Object *);
	void (* move) (struct Object *);
	void (* set_vel) (struct Object *, int8_t, int8_t);
	
} Object;

void draw_object(Object * object);
void clear_object(Object * object);
void move_object(Object * object);
void set_object_vel(Object * object, int8_t vel_x, int8_t vel_y);

Object create_ball(int8_t pos_x, int8_t pos_y, int8_t vel_x, int8_t vel_y);
Object create_paddle(int8_t pos_x, int8_t pos_y, int8_t vel_x, int8_t vel_y);

#endif