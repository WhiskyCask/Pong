/*
 * 	display.h
 *
 */

#include "graphicdisplay.h

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
	
	LCD_ON = 0x3F,
	LCD_OFF = 0x3E,
	LCD_SET_ADD = 0x40,
	LCD_SET_PAGE = 0xB8,
	LCD_DISPLAY_START = 0xC0,
	LCD_BUSY = 0x80 /* Värdet som skall finnas i registret då displayen är upptagen */
	
};
	
const uint8_t LCD_PAGES = 8; /* Antalet pages, y-koordinater */
const uint8_t LCD_ADDS = 64; /* Antalet addresses, x-koorinater */
const uint8_t LCD_WIDTH = 128; /* Antalet pixlar på bredden */
const uint8_t LCD_HEIGHT = 64; /* Antalet pixlar på höjden */	

static BBuffer buffer;

/* Adressera grafisk display och ettställ de bitar som är 1 i x */
static void graphic_ctrl_bit_set(uint8_t x)
{
	uint8_t c = GPIO_E->ODR_LOW;
	c |= (x & ~B_SELECT);
	GPIO_E->ODR_LOW = c;
}

/* Adressera grfisk display och nollställ de bitar som är 1 i x */
static void graphic_ctrl_bit_clear(uint8_t x)
{
	uint8_t c = GPIO_E->ODR_LOW;
	c &= ~x;
	c &= ~B_SELECT;
	GPIO_E->ODR_LOW = c;
}

static void graphic_select_controller(uint8_t controller)
{
	switch (controller)
	{
		case 0:
			graphic_ctrl_bit_clear(B_CS1 | B_CS2); /* Nollställer B_CS1 och B_CS2 */
			break;
		
		case B_CS1:
			graphic_ctrl_bit_set(B_CS1); /* Ettställer B_CS1 */
			graphic_ctrl_bit_clear(B_CS2); /* Nollställer B_CS2 */
			break;
		
		case B_CS2:
			graphic_ctrl_bit_clear(B_CS1); /* Nollställer B_CS1 */
			graphic_ctrl_bit_set(B_CS2); /* Ettställer B_CS2 */
			break;
		
		case B_CS1 | B_CS2:
			graphic_ctrl_bit_set(B_CS1 | B_CS2); /* Ettställer B_CS1 och B_CS2 */
			break;
	}
}

static void graphic_wait_ready()
{
	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
	GPIO_E->MODER = 0x00005555; /* Sätter bitar 15-8 till inport och bitar 7-0 till utport */
	graphic_ctrl_bit_clear(B_RS); /* Nollställer B_RS */
	graphic_ctrl_bit_set(B_RW); /* Ettställer RW */
	delay_500ns();
	/* Väntar nu på att den grafiska displayen skall blir klar */
	while(1) {
		graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
		delay_500ns();
		graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
		delay_500ns();
		if ((GPIO_E->IDR_HIGH & LCD_BUSY) != LCD_BUSY) {
			break;
		}
	}
	
	graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
	GPIO_E->MODER = 0x55555555; /* Sätter samtliga bitar till utport */
}

static uint8_t graphic_read(uint8_t controller)
{
	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
	GPIO_E->MODER = 0x00005555; /* Sätter bitar 15-8 till inport och bitar 7-0 till utport */
	graphic_ctrl_bit_set(B_RS | B_RW); /* Ettställer B_RS och B_RW */
	graphic_select_controller(controller); /* Väljer CS1, CS2, båda eller ingen */
	delay_500ns();
	graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
	delay_500ns();
	uint8_t rv = GPIO_E->IDR_HIGH; /* Läser av statusen */
	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
	GPIO_E->MODER = 0x55555555; /* Sätter samtliga bitar till utport */
	
	if (controller == B_CS1) {
		graphic_select_controller(B_CS1); /* Väljer CS1 */
		graphic_wait_ready(); /* Väntar på att den grafiska displayen skall blir redo */
	}
	if (controller == B_CS2) {
		graphic_select_controller(B_CS2);  /* Väljer CS2 */
		graphic_wait_ready(); /* Väntar på att den grafiska displayen skall blir redo */
	}
	
	return rv;
}

static void graphic_write(uint8_t value, uint8_t controller)
{
	GPIO_E->ODR_HIGH = value; /* Skriver till dataregistret */
	graphic_select_controller(controller); /* Väljer CS1, CS2, båda eller ingen */
	delay_500ns();
	graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
	delay_500ns();
	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
	
	if (controller & B_CS1) {
		graphic_select_controller(B_CS1); /* Väljer CS1 */
		graphic_wait_ready(); /* Väntar på att den grafiska displayen skall blir redo */
	}
	if (controller & B_CS2) {
		graphic_select_controller(B_CS2);  /* Väljer CS2 */
		graphic_wait_ready(); /* Väntar på att den grafiska displayen skall blir redo */
	}
	
	GPIO_E->ODR_HIGH = 0; /* Nollställer dataregistret */
	graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
	graphic_select_controller(0); /* Deaktiverar båda CS-signalerna */
}

static void graphic_write_command(uint8_t command, uint8_t controller)
{
	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
	graphic_select_controller(controller); /* Väljer CS1, CS2, båda eller ingen */
	graphic_ctrl_bit_clear(B_RS | B_RW); /* Nollställer B_RS och B_RW */
	graphic_write(command, controller);
}

static void graphic_write_data(uint8_t data, uint8_t controller)
{
	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
	graphic_select_controller(controller); /* Väljer CS1, CS2, båda eller ingen */
	graphic_ctrl_bit_set(B_RS); /* Ettställer B_RS */
	graphic_ctrl_bit_clear(B_RW); /* Nollställer RW */
	graphic_write(data, controller);
}

static uint8_t graphic_read_data(uint8_t controller)
{
	/* En läsning måste göras två gånger för att displayen skall returnera korret data */
	(void) graphic_read(controller); /* Returnerar nonsens */
	return graphic_read(controller); /* Returnerar korrekt data */
}

void graphic_clear_screen()
{
	for (uint8_t page = 0; page < LCD_PAGES; page++) {
		
		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
		graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
		
		for (uint8_t add = 0; add < LCD_ADDS; add++) {
			/*
			#ifndef SIMULATOR
				graphic_write_command(LCD_SET_ADD | add, B_CS1 | B_CS2);
			#endif
			*/
			graphic_write_data(0, B_CS1 | B_CS2);
	
		}
	}
}

void graphic_initialise()
{
	graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
	delay_mikro(10);
	graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RESET); /* Nollställer B_CS1, B_CS2 och B_RESET */
	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
	delay_milli(30);
	graphic_ctrl_bit_set(B_RESET); /* Ettställer B_RESET */
	graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
	graphic_write_command(LCD_ON, B_CS1 | B_CS2); /* Toggla display */
	graphic_write_command(LCD_DISPLAY_START, B_CS1 | B_CS2); /* start = 0 */
	graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2); /* add = 0 */
	graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2); /* page = 0 */
	
	graphic_select_controller(0); /* Deaktiverar båda CS-signalerna */
}

void pixel(uint8_t x, uint8_t y, uint8_t set)
{
	/*Make sure pixel is within bounds*/
	if ((x >= LCD_WIDTH && y >= LCD_HEIGHT)) {
		return;
	}
	
	
	/* Skapa en bitmask för y-koordinaten */
	
	uint8_t page = (y - 1) / 8;
	uint8_t add = x - 1;
	
	uint8_t mask = 1 << ((y - 1) & 7); /* & 7 är ekvivalnet med % 8 */
	if (!set) {
		mask = ~mask;
	}
	
	uint8_t temp = buffer[8*add+page];
	
	if (!set) {
		mask &= temp;
	}
	else {
		mask |= temp;
	}
	
	buffer[8*add+page] = mask;
	
}

void draw_buffer(){
	
	for(char i = 0; i < (LCD_HEIGHT/8)*LCD_WIDTH; i++){
		page = i%8;
		add = i/8;
		
		uint8_t controller;
		if(add < LCD_WIDTH/2){
			controller = B_CS1;
		}else{
			controller = B_CS2;
			add = add - (LCD_WIDTH/2);
		}
		
		graphic_write_command(LCD_SET_ADD | add, controller);
		graphic_write_command(LCD_SET_PAGE | page, controller);
		graphic_write_data(buffer[i], controller);
		
	}
}