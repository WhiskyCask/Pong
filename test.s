   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"startup.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/isake/Documents/Laboration5/Pong/startup.c"
   1:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** /*
   2:C:/Users/isake/Documents/Laboration5/Pong\startup.c ****  * 	startup.c
   3:C:/Users/isake/Documents/Laboration5/Pong\startup.c ****  *
   4:C:/Users/isake/Documents/Laboration5/Pong\startup.c ****  */
   5:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
   6:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** #include "intdef.h"
   7:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** #include "GPIO.h"
   8:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** #include "delay.h"
   9:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** #include "graphicdisplay.h"
  10:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** #include "asciidisplay.h"
  11:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** #include "keyboard.h"
  12:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** #include "object.h"
  13:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  14:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  15:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  16:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** void startup ( void )
  17:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** {
  26              		.loc 1 17 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  18:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** asm volatile(
  31              		.loc 1 18 0
  32              		.syntax divided
  33              	@ 18 "C:/Users/isake/Documents/Laboration5/Pong/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	.L1: B .L1
  38              	
  39              	@ 0 "" 2
  19:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  20:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	" MOV SP,R0\n"
  21:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	" BL main\n"				/* call main */
  22:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	".L1: B .L1\n"				/* never return */
  23:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	) ;
  24:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** }
  40              		.loc 1 24 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	init_app
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	init_app:
  56              	.LFB1:
  25:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  26:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** void init_app()
  27:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** {
  57              		.loc 1 27 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  28:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	GPIO_D->MODER = 0x55005500; /* Ansluter en keypad till PortD0-7 och en annan till PortD8-15 */
  67              		.loc 1 28 0
  68 0004 054B     		ldr	r3, .L3
  69 0006 1B68     		ldr	r3, [r3]
  70 0008 054A     		ldr	r2, .L3+4
  71 000a 1A60     		str	r2, [r3]
  29:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	GPIO_E->MODER = 0x55555555; /* Sätter hela Port E till utport */
  72              		.loc 1 29 0
  73 000c 054B     		ldr	r3, .L3+8
  74 000e 1B68     		ldr	r3, [r3]
  75 0010 054A     		ldr	r2, .L3+12
  76 0012 1A60     		str	r2, [r3]
  30:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** }
  77              		.loc 1 30 0
  78 0014 C046     		nop
  79 0016 BD46     		mov	sp, r7
  80              		@ sp needed
  81 0018 80BD     		pop	{r7, pc}
  82              	.L4:
  83 001a C046     		.align	2
  84              	.L3:
  85 001c 00000000 		.word	GPIO_D
  86 0020 00550055 		.word	1426085120
  87 0024 00000000 		.word	GPIO_E
  88 0028 55555555 		.word	1431655765
  89              		.cfi_endproc
  90              	.LFE1:
  92              		.align	1
  93              		.global	main
  94              		.syntax unified
  95              		.code	16
  96              		.thumb_func
  97              		.fpu softvfp
  99              	main:
 100              	.LFB2:
  31:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  32:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** int main(void)
  33:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** {
 101              		.loc 1 33 0
 102              		.cfi_startproc
 103              		@ args = 0, pretend = 0, frame = 32
 104              		@ frame_needed = 1, uses_anonymous_args = 0
 105 002c B0B5     		push	{r4, r5, r7, lr}
 106              		.cfi_def_cfa_offset 16
 107              		.cfi_offset 4, -16
 108              		.cfi_offset 5, -12
 109              		.cfi_offset 7, -8
 110              		.cfi_offset 14, -4
 111 002e 8AB0     		sub	sp, sp, #40
 112              		.cfi_def_cfa_offset 56
 113 0030 02AF     		add	r7, sp, #8
 114              		.cfi_def_cfa 7, 48
  34:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	init_app();
 115              		.loc 1 34 0
 116 0032 FFF7FEFF 		bl	init_app
  35:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	ascii_initialise();
 117              		.loc 1 35 0
 118 0036 FFF7FEFF 		bl	ascii_initialise
  36:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	graphic_initialise();
 119              		.loc 1 36 0
 120 003a FFF7FEFF 		bl	graphic_initialise
  37:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	#ifndef SIMULATOR
  38:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		graphic_clear_screen();
  39:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	#endif
  40:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	
  41:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	Object ball = create_ball(10, 10, 0, 0);
 121              		.loc 1 41 0
 122 003e 381D     		adds	r0, r7, #4
 123 0040 0023     		movs	r3, #0
 124 0042 0093     		str	r3, [sp]
 125 0044 0023     		movs	r3, #0
 126 0046 0A22     		movs	r2, #10
 127 0048 0A21     		movs	r1, #10
 128 004a FFF7FEFF 		bl	create_ball
 129              	.L18:
  42:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	uint8_t k;
  43:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	while(1) {
  44:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		k = keyb();
 130              		.loc 1 44 0
 131 004e 1F25     		movs	r5, #31
 132 0050 7C19     		adds	r4, r7, r5
 133 0052 FFF7FEFF 		bl	keyb
 134 0056 0300     		movs	r3, r0
 135 0058 2370     		strb	r3, [r4]
  45:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		switch(k) {
 136              		.loc 1 45 0
 137 005a 7B19     		adds	r3, r7, r5
 138 005c 1B78     		ldrb	r3, [r3]
 139 005e 092B     		cmp	r3, #9
 140 0060 4AD8     		bhi	.L6
 141 0062 9A00     		lsls	r2, r3, #2
 142 0064 2D4B     		ldr	r3, .L19
 143 0066 D318     		adds	r3, r2, r3
 144 0068 1B68     		ldr	r3, [r3]
 145 006a 9F46     		mov	pc, r3
 146              		.section	.rodata
 147              		.align	2
 148              	.L8:
 149 0000 F8000000 		.word	.L6
 150 0004 6C000000 		.word	.L7
 151 0008 80000000 		.word	.L9
 152 000c 90000000 		.word	.L10
 153 0010 A0000000 		.word	.L11
 154 0014 B0000000 		.word	.L12
 155 0018 BE000000 		.word	.L13
 156 001c CC000000 		.word	.L14
 157 0020 DC000000 		.word	.L15
 158 0024 EA000000 		.word	.L16
 159              		.text
 160              	.L7:
  46:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			
  47:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 1:
  48:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, -2, -2);
 161              		.loc 1 48 0
 162 006c 3B1D     		adds	r3, r7, #4
 163 006e 5B69     		ldr	r3, [r3, #20]
 164 0070 0222     		movs	r2, #2
 165 0072 5442     		rsbs	r4, r2, #0
 166 0074 0222     		movs	r2, #2
 167 0076 5142     		rsbs	r1, r2, #0
 168 0078 381D     		adds	r0, r7, #4
 169 007a 2200     		movs	r2, r4
 170 007c 9847     		blx	r3
 171              	.LVL0:
  49:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 172              		.loc 1 49 0
 173 007e 41E0     		b	.L17
 174              	.L9:
  50:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			
  51:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 2:
  52:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 0, -4);
 175              		.loc 1 52 0
 176 0080 3B1D     		adds	r3, r7, #4
 177 0082 5B69     		ldr	r3, [r3, #20]
 178 0084 0422     		movs	r2, #4
 179 0086 5242     		rsbs	r2, r2, #0
 180 0088 381D     		adds	r0, r7, #4
 181 008a 0021     		movs	r1, #0
 182 008c 9847     		blx	r3
 183              	.LVL1:
  53:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 184              		.loc 1 53 0
 185 008e 39E0     		b	.L17
 186              	.L10:
  54:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  55:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 3:
  56:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 2, -2);
 187              		.loc 1 56 0
 188 0090 3B1D     		adds	r3, r7, #4
 189 0092 5B69     		ldr	r3, [r3, #20]
 190 0094 0222     		movs	r2, #2
 191 0096 5242     		rsbs	r2, r2, #0
 192 0098 381D     		adds	r0, r7, #4
 193 009a 0221     		movs	r1, #2
 194 009c 9847     		blx	r3
 195              	.LVL2:
  57:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 196              		.loc 1 57 0
 197 009e 31E0     		b	.L17
 198              	.L11:
  58:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  59:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 4:
  60:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, -4, 0);
 199              		.loc 1 60 0
 200 00a0 3B1D     		adds	r3, r7, #4
 201 00a2 5B69     		ldr	r3, [r3, #20]
 202 00a4 0422     		movs	r2, #4
 203 00a6 5142     		rsbs	r1, r2, #0
 204 00a8 381D     		adds	r0, r7, #4
 205 00aa 0022     		movs	r2, #0
 206 00ac 9847     		blx	r3
 207              	.LVL3:
  61:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 208              		.loc 1 61 0
 209 00ae 29E0     		b	.L17
 210              	.L12:
  62:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  63:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 5:
  64:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 0, 0);
 211              		.loc 1 64 0
 212 00b0 3B1D     		adds	r3, r7, #4
 213 00b2 5B69     		ldr	r3, [r3, #20]
 214 00b4 381D     		adds	r0, r7, #4
 215 00b6 0022     		movs	r2, #0
 216 00b8 0021     		movs	r1, #0
 217 00ba 9847     		blx	r3
 218              	.LVL4:
  65:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 219              		.loc 1 65 0
 220 00bc 22E0     		b	.L17
 221              	.L13:
  66:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  67:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 6:
  68:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 4, 0);
 222              		.loc 1 68 0
 223 00be 3B1D     		adds	r3, r7, #4
 224 00c0 5B69     		ldr	r3, [r3, #20]
 225 00c2 381D     		adds	r0, r7, #4
 226 00c4 0022     		movs	r2, #0
 227 00c6 0421     		movs	r1, #4
 228 00c8 9847     		blx	r3
 229              	.LVL5:
  69:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 230              		.loc 1 69 0
 231 00ca 1BE0     		b	.L17
 232              	.L14:
  70:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  71:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 7:
  72:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, -2, 2);
 233              		.loc 1 72 0
 234 00cc 3B1D     		adds	r3, r7, #4
 235 00ce 5B69     		ldr	r3, [r3, #20]
 236 00d0 0222     		movs	r2, #2
 237 00d2 5142     		rsbs	r1, r2, #0
 238 00d4 381D     		adds	r0, r7, #4
 239 00d6 0222     		movs	r2, #2
 240 00d8 9847     		blx	r3
 241              	.LVL6:
  73:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 242              		.loc 1 73 0
 243 00da 13E0     		b	.L17
 244              	.L15:
  74:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  75:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 8:
  76:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 0, 4);
 245              		.loc 1 76 0
 246 00dc 3B1D     		adds	r3, r7, #4
 247 00de 5B69     		ldr	r3, [r3, #20]
 248 00e0 381D     		adds	r0, r7, #4
 249 00e2 0422     		movs	r2, #4
 250 00e4 0021     		movs	r1, #0
 251 00e6 9847     		blx	r3
 252              	.LVL7:
  77:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 253              		.loc 1 77 0
 254 00e8 0CE0     		b	.L17
 255              	.L16:
  78:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  79:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 9:
  80:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 2, 2);
 256              		.loc 1 80 0
 257 00ea 3B1D     		adds	r3, r7, #4
 258 00ec 5B69     		ldr	r3, [r3, #20]
 259 00ee 381D     		adds	r0, r7, #4
 260 00f0 0222     		movs	r2, #2
 261 00f2 0221     		movs	r1, #2
 262 00f4 9847     		blx	r3
 263              	.LVL8:
  81:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 264              		.loc 1 81 0
 265 00f6 05E0     		b	.L17
 266              	.L6:
  82:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			
  83:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			default:
  84:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				/* Om ingen knapp är nedtryckt, nollställ hastigheten */
  85:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 0, 0);
 267              		.loc 1 85 0
 268 00f8 3B1D     		adds	r3, r7, #4
 269 00fa 5B69     		ldr	r3, [r3, #20]
 270 00fc 381D     		adds	r0, r7, #4
 271 00fe 0022     		movs	r2, #0
 272 0100 0021     		movs	r1, #0
 273 0102 9847     		blx	r3
 274              	.LVL9:
 275              	.L17:
  86:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		}
  87:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		ball.move(&ball);
 276              		.loc 1 87 0
 277 0104 3B1D     		adds	r3, r7, #4
 278 0106 1B69     		ldr	r3, [r3, #16]
 279 0108 3A1D     		adds	r2, r7, #4
 280 010a 1000     		movs	r0, r2
 281 010c 9847     		blx	r3
 282              	.LVL10:
  88:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		draw_buffer();
 283              		.loc 1 88 0
 284 010e FFF7FEFF 		bl	draw_buffer
  89:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		delay_milli(40); /* 25 bilder per sekund */		
 285              		.loc 1 89 0
 286 0112 2820     		movs	r0, #40
 287 0114 FFF7FEFF 		bl	delay_milli
  44:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		switch(k) {
 288              		.loc 1 44 0
 289 0118 99E7     		b	.L18
 290              	.L20:
 291 011a C046     		.align	2
 292              	.L19:
 293 011c 00000000 		.word	.L8
 294              		.cfi_endproc
 295              	.LFE2:
 297              	.Letext0:
 298              		.file 2 "include/intdef.h"
 299              		.file 3 "include/GPIO.h"
 300              		.file 4 "include/graphicdisplay.h"
 301              		.file 5 "include/object.h"
