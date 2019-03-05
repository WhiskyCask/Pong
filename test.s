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
 103              		@ args = 0, pretend = 0, frame = 80
 104              		@ frame_needed = 1, uses_anonymous_args = 0
 105 002c B0B5     		push	{r4, r5, r7, lr}
 106              		.cfi_def_cfa_offset 16
 107              		.cfi_offset 4, -16
 108              		.cfi_offset 5, -12
 109              		.cfi_offset 7, -8
 110              		.cfi_offset 14, -4
 111 002e 96B0     		sub	sp, sp, #88
 112              		.cfi_def_cfa_offset 104
 113 0030 02AF     		add	r7, sp, #8
 114              		.cfi_def_cfa 7, 96
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
  41:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	Object ball = create_ball(63, 32, 0, 0);
 121              		.loc 1 41 0
 122 003e 3423     		movs	r3, #52
 123 0040 F818     		adds	r0, r7, r3
 124 0042 0023     		movs	r3, #0
 125 0044 0093     		str	r3, [sp]
 126 0046 0023     		movs	r3, #0
 127 0048 2022     		movs	r2, #32
 128 004a 3F21     		movs	r1, #63
 129 004c FFF7FEFF 		bl	create_ball
  42:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	Object leftpaddle = create_paddle(4, 32, 0, 0);
 130              		.loc 1 42 0
 131 0050 1C23     		movs	r3, #28
 132 0052 F818     		adds	r0, r7, r3
 133 0054 0023     		movs	r3, #0
 134 0056 0093     		str	r3, [sp]
 135 0058 0023     		movs	r3, #0
 136 005a 2022     		movs	r2, #32
 137 005c 0421     		movs	r1, #4
 138 005e FFF7FEFF 		bl	create_paddle
  43:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	Object rightpaddle = create_paddle(123, 32, 0, 0);
 139              		.loc 1 43 0
 140 0062 381D     		adds	r0, r7, #4
 141 0064 0023     		movs	r3, #0
 142 0066 0093     		str	r3, [sp]
 143 0068 0023     		movs	r3, #0
 144 006a 2022     		movs	r2, #32
 145 006c 7B21     		movs	r1, #123
 146 006e FFF7FEFF 		bl	create_paddle
 147              	.L18:
  44:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  45:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	uint8_t k;
  46:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	while(1) {
  47:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		k = keyb();
 148              		.loc 1 47 0
 149 0072 4F25     		movs	r5, #79
 150 0074 7C19     		adds	r4, r7, r5
 151 0076 FFF7FEFF 		bl	keyb
 152 007a 0300     		movs	r3, r0
 153 007c 2370     		strb	r3, [r4]
  48:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		switch(k) {
 154              		.loc 1 48 0
 155 007e 7B19     		adds	r3, r7, r5
 156 0080 1B78     		ldrb	r3, [r3]
 157 0082 0C2B     		cmp	r3, #12
 158 0084 4ED8     		bhi	.L6
 159 0086 9A00     		lsls	r2, r3, #2
 160 0088 384B     		ldr	r3, .L19
 161 008a D318     		adds	r3, r2, r3
 162 008c 1B68     		ldr	r3, [r3]
 163 008e 9F46     		mov	pc, r3
 164              		.section	.rodata
 165              		.align	2
 166              	.L8:
 167 0000 24010000 		.word	.L6
 168 0004 90000000 		.word	.L7
 169 0008 A2000000 		.word	.L9
 170 000c 24010000 		.word	.L6
 171 0010 C4000000 		.word	.L10
 172 0014 D6000000 		.word	.L11
 173 0018 E6000000 		.word	.L12
 174 001c F6000000 		.word	.L13
 175 0020 06010000 		.word	.L14
 176 0024 24010000 		.word	.L6
 177 0028 B4000000 		.word	.L15
 178 002c 24010000 		.word	.L6
 179 0030 16010000 		.word	.L16
 180              		.text
 181              	.L7:
  49:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 1:
  50:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				leftpaddle.set_vel(&leftpaddle, 0, -2);
 182              		.loc 1 50 0
 183 0090 1C21     		movs	r1, #28
 184 0092 7B18     		adds	r3, r7, r1
 185 0094 5B69     		ldr	r3, [r3, #20]
 186 0096 0222     		movs	r2, #2
 187 0098 5242     		rsbs	r2, r2, #0
 188 009a 7818     		adds	r0, r7, r1
 189 009c 0021     		movs	r1, #0
 190 009e 9847     		blx	r3
 191              	.LVL0:
  51:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 192              		.loc 1 51 0
 193 00a0 4DE0     		b	.L17
 194              	.L9:
  52:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 2:
  53:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 0, -4);
 195              		.loc 1 53 0
 196 00a2 3421     		movs	r1, #52
 197 00a4 7B18     		adds	r3, r7, r1
 198 00a6 5B69     		ldr	r3, [r3, #20]
 199 00a8 0422     		movs	r2, #4
 200 00aa 5242     		rsbs	r2, r2, #0
 201 00ac 7818     		adds	r0, r7, r1
 202 00ae 0021     		movs	r1, #0
 203 00b0 9847     		blx	r3
 204              	.LVL1:
  54:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 205              		.loc 1 54 0
 206 00b2 44E0     		b	.L17
 207              	.L15:
  55:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  56:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 0xA:
  57:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				rightpaddle.set_vel(&rightpaddle, 0, -2);
 208              		.loc 1 57 0
 209 00b4 3B1D     		adds	r3, r7, #4
 210 00b6 5B69     		ldr	r3, [r3, #20]
 211 00b8 0222     		movs	r2, #2
 212 00ba 5242     		rsbs	r2, r2, #0
 213 00bc 381D     		adds	r0, r7, #4
 214 00be 0021     		movs	r1, #0
 215 00c0 9847     		blx	r3
 216              	.LVL2:
  58:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 217              		.loc 1 58 0
 218 00c2 3CE0     		b	.L17
 219              	.L10:
  59:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  60:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 4:
  61:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, -4, 0);
 220              		.loc 1 61 0
 221 00c4 3420     		movs	r0, #52
 222 00c6 3B18     		adds	r3, r7, r0
 223 00c8 5B69     		ldr	r3, [r3, #20]
 224 00ca 0422     		movs	r2, #4
 225 00cc 5142     		rsbs	r1, r2, #0
 226 00ce 3818     		adds	r0, r7, r0
 227 00d0 0022     		movs	r2, #0
 228 00d2 9847     		blx	r3
 229              	.LVL3:
  62:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 230              		.loc 1 62 0
 231 00d4 33E0     		b	.L17
 232              	.L11:
  63:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  64:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 5:
  65:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 0, 0);
 233              		.loc 1 65 0
 234 00d6 3422     		movs	r2, #52
 235 00d8 BB18     		adds	r3, r7, r2
 236 00da 5B69     		ldr	r3, [r3, #20]
 237 00dc B818     		adds	r0, r7, r2
 238 00de 0022     		movs	r2, #0
 239 00e0 0021     		movs	r1, #0
 240 00e2 9847     		blx	r3
 241              	.LVL4:
  66:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 242              		.loc 1 66 0
 243 00e4 2BE0     		b	.L17
 244              	.L12:
  67:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  68:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 6:
  69:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 4, 0);
 245              		.loc 1 69 0
 246 00e6 3422     		movs	r2, #52
 247 00e8 BB18     		adds	r3, r7, r2
 248 00ea 5B69     		ldr	r3, [r3, #20]
 249 00ec B818     		adds	r0, r7, r2
 250 00ee 0022     		movs	r2, #0
 251 00f0 0421     		movs	r1, #4
 252 00f2 9847     		blx	r3
 253              	.LVL5:
  70:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 254              		.loc 1 70 0
 255 00f4 23E0     		b	.L17
 256              	.L13:
  71:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  72:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 7:
  73:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				leftpaddle.set_vel(&leftpaddle, 0, 2);
 257              		.loc 1 73 0
 258 00f6 1C22     		movs	r2, #28
 259 00f8 BB18     		adds	r3, r7, r2
 260 00fa 5B69     		ldr	r3, [r3, #20]
 261 00fc B818     		adds	r0, r7, r2
 262 00fe 0222     		movs	r2, #2
 263 0100 0021     		movs	r1, #0
 264 0102 9847     		blx	r3
 265              	.LVL6:
  74:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 266              		.loc 1 74 0
 267 0104 1BE0     		b	.L17
 268              	.L14:
  75:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  76:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 8:
  77:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 0, 4);
 269              		.loc 1 77 0
 270 0106 3422     		movs	r2, #52
 271 0108 BB18     		adds	r3, r7, r2
 272 010a 5B69     		ldr	r3, [r3, #20]
 273 010c B818     		adds	r0, r7, r2
 274 010e 0422     		movs	r2, #4
 275 0110 0021     		movs	r1, #0
 276 0112 9847     		blx	r3
 277              	.LVL7:
  78:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 278              		.loc 1 78 0
 279 0114 13E0     		b	.L17
 280              	.L16:
  79:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  80:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 0xC:
  81:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				rightpaddle.set_vel(&rightpaddle, 0, 2);
 281              		.loc 1 81 0
 282 0116 3B1D     		adds	r3, r7, #4
 283 0118 5B69     		ldr	r3, [r3, #20]
 284 011a 381D     		adds	r0, r7, #4
 285 011c 0222     		movs	r2, #2
 286 011e 0021     		movs	r1, #0
 287 0120 9847     		blx	r3
 288              	.LVL8:
  82:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 289              		.loc 1 82 0
 290 0122 0CE0     		b	.L17
 291              	.L6:
  83:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			
  84:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			default:
  85:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				/* Om ingen knapp är nedtryckt, nollställ hastigheten */
  86:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				//ball.set_vel(&ball, 0, 0);
  87:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				leftpaddle.set_vel(&leftpaddle, 0, 0);
 292              		.loc 1 87 0
 293 0124 1C22     		movs	r2, #28
 294 0126 BB18     		adds	r3, r7, r2
 295 0128 5B69     		ldr	r3, [r3, #20]
 296 012a B818     		adds	r0, r7, r2
 297 012c 0022     		movs	r2, #0
 298 012e 0021     		movs	r1, #0
 299 0130 9847     		blx	r3
 300              	.LVL9:
  88:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				rightpaddle.set_vel(&rightpaddle, 0, 0);
 301              		.loc 1 88 0
 302 0132 3B1D     		adds	r3, r7, #4
 303 0134 5B69     		ldr	r3, [r3, #20]
 304 0136 381D     		adds	r0, r7, #4
 305 0138 0022     		movs	r2, #0
 306 013a 0021     		movs	r1, #0
 307 013c 9847     		blx	r3
 308              	.LVL10:
 309              	.L17:
  89:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  90:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		}
  91:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		ball.move(&ball);
 310              		.loc 1 91 0
 311 013e 3424     		movs	r4, #52
 312 0140 3B19     		adds	r3, r7, r4
 313 0142 1B69     		ldr	r3, [r3, #16]
 314 0144 3A19     		adds	r2, r7, r4
 315 0146 1000     		movs	r0, r2
 316 0148 9847     		blx	r3
 317              	.LVL11:
  92:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		ball.move(&leftpaddle);
 318              		.loc 1 92 0
 319 014a 3B19     		adds	r3, r7, r4
 320 014c 1B69     		ldr	r3, [r3, #16]
 321 014e 1C22     		movs	r2, #28
 322 0150 BA18     		adds	r2, r7, r2
 323 0152 1000     		movs	r0, r2
 324 0154 9847     		blx	r3
 325              	.LVL12:
  93:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		ball.move(&rightpaddle);
 326              		.loc 1 93 0
 327 0156 3B19     		adds	r3, r7, r4
 328 0158 1B69     		ldr	r3, [r3, #16]
 329 015a 3A1D     		adds	r2, r7, #4
 330 015c 1000     		movs	r0, r2
 331 015e 9847     		blx	r3
 332              	.LVL13:
  94:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		draw_buffer();
 333              		.loc 1 94 0
 334 0160 FFF7FEFF 		bl	draw_buffer
  95:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		delay_milli(40); /* 25 bilder per sekund */		
 335              		.loc 1 95 0
 336 0164 2820     		movs	r0, #40
 337 0166 FFF7FEFF 		bl	delay_milli
  47:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		switch(k) {
 338              		.loc 1 47 0
 339 016a 82E7     		b	.L18
 340              	.L20:
 341              		.align	2
 342              	.L19:
 343 016c 00000000 		.word	.L8
 344              		.cfi_endproc
 345              	.LFE2:
 347              	.Letext0:
 348              		.file 2 "include/intdef.h"
 349              		.file 3 "include/GPIO.h"
 350              		.file 4 "include/graphicdisplay.h"
 351              		.file 5 "include/object.h"
