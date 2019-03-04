/*
 * 	startup.c
 *
 */

#include "asciidisplay.h"

static const enum {
	
	B_E = 64, /* Enable signal */
	B_RESET = 32, /* Reset signal */
	B_CS2 = 16, /* Välj högra grafiska displayen */
	B_CS1 = 8, /* Välj vänstra grafiska displayen */
	B_SELECT = 4, /* 0 = Grafisk display, 1 = ASCII-display */
	B_RW = 2, /* 0 = Write, 1 = Read */
	B_RS = 1 /* 0 = Control, 1 = Data */
	
};

static const enum {
	
	ASCII_FUNCTION_SET = 0x38, /* Ställer in 2 rader och 5x8 punkter */
	ASCII_DISPLAY_CTRL = 0xE, /* Tänd display och markör, makrören skall inte blinkar */
	ASCII_CMD_CLEAR_DISPLAY = 0x1, /* Rensa skärmen */
	ASCII_ENTRY_MODE_SET = 0x6, /* Sätt till "increment-mode" och ingen skift av adressbufferten */
	ASCII_BUSY = 0x80 /* Värdet som skall finnas i registret då displayen är upptagen */
	


/* Adressera ASCII-display och ettställ de bitar som är 1 i x */
static void ascii_ctrl_bit_set(uint8_t x)
{
	uint8_t c = GPIO_E->ODR_LOW;
	c |= B_SELECT | x;
	GPIO_E->ODR_LOW = c;
}

/* Adressera ASCII-display och nollställ de bitar som är 1 i x */
static void ascii_ctrl_bit_clear(uint8_t x)
{
	uint8_t c = GPIO_E->ODR_LOW;
	c &= (B_SELECT | ~x);
	GPIO_E->ODR_LOW = c;
}

static void ascii_write_controller(uint8_t c)
{
	ascii_ctrl_bit_set(B_E); /* Ettställer B_E */
	GPIO_E->ODR_HIGH = c;
	delay_250ns();
	ascii_ctrl_bit_clear(B_E); /* Nollställer B_E */
}

static uint8_t ascii_read_controller()
{
	ascii_ctrl_bit_set(B_E); /* Ettställer B_E */
	delay_250ns();
	delay_250ns();
	uint8_t c = GPIO_E->IDR_HIGH;
	ascii_ctrl_bit_clear(B_E); /* Nollställer B_E */
	return c;
}

static uint8_t ascii_read_status()
{
	GPIO_E->MODER = 0x00005555; /* Sätter E15-8 till inport och E7-1 till utport */
	ascii_ctrl_bit_clear(B_RS); /* Nollställer B_RS */
	ascii_ctrl_bit_set(B_RW); /* Ettställer B_RW */
	uint8_t c = ascii_read_controller();
	GPIO_E->MODER = 0x55555555; /* Sätter hela Port E till utport */
	return c;
}

static uint8_t ascii_read_data()
{
	GPIO_E->MODER = 0x00005555; /* Sätter E15-8 till inport och E7-1 till utport */
	ascii_ctrl_bit_set(B_RS); /* Ettställer B_RS */
	ascii_ctrl_bit_set(B_RW); /* Ettställer B_RW */
	uint8_t c = ascii_read_controller();
	GPIO_E->MODER = 0x55555555; /* Sätter hela Port E till utport */
	return c;
}

static void ascii_write_cmd(uint8_t c)
{
	ascii_ctrl_bit_clear(B_RS); /* Nollställer B_RS */
	ascii_ctrl_bit_clear(B_RW); /* Nollställer B_RW */
	ascii_write_controller(c);
}

static void ascii_write_data(uint8_t c)
{
	ascii_ctrl_bit_set(B_RS); /* Ettställer B_RS */
	ascii_ctrl_bit_clear(B_RW); /* Nollställer B_RW */
	ascii_write_controller(c);
}

static void ascii_command(uint8_t c)
{
	while ((ascii_read_status() & ASCII_BUSY) == ASCII_BUSY) {
		/*  Vänta tills statusflaggan blir noll */
	}
	delay_mikro(8); /* Latenstid för kommando */
	ascii_write_cmd(c);
}

void ascii_write_char(uint8_t c)
{
	while ((ascii_read_status() & 0x80) == 0x80) {
		/*  Vänta tills statusflaggan blir noll */
	}
	delay_mikro(8);
	ascii_write_data(c);
	delay_mikro(43); /* Fördröj instruktionsspecifik fördröjning */
}

void ascii_gotoxy(uint8_t row, uint8_t col)
{
	uint8_t address = row - 1;
	if (col == 2) {
		address += 0x40; /* Eftersom det ryms 64 bytes på första raden */
	}
	ascii_write_cmd(0x80 | address);
}

void ascii_initialise()
{
	ascii_command(ASCII_CMD_FUNCTION_SET); /* Function Set, 2 rader och 5x8 punkter */
	delay_mikro(39); /* Fördröj instruktionsspecifik fördröjning */
	ascii_command(ASCII_CMD_DISPLAY_CTRL); /* Display Control, tänd display, tänd markör, makrören blinkar inte */
	delay_mikro(39); /* Fördröj instruktionsspecifik fördröjning */
	ascii_command(ASCII_CMD_CLEAR_DISPLAY); /* Clear Display */
	delay_milli(2); /* Fördröj instruktionsspecifik fördröjning, istället för 1.53 millisekunder */
	ascii_command(ASCII_CMD_ENTRY_MODE_SET); /* Entry Mode Set, "increment-mode" och ingen skift av adressbufferten */
	delay_mikro(39); /* Fördröj instruktionsspecifik fördröjning */
}