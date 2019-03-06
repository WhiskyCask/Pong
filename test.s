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
  13:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** #define REFRESHINTERVAL 33333
  14:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  15:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  16:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  17:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** void startup ( void )
  18:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** {
  26              		.loc 1 18 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  19:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** asm volatile(
  31              		.loc 1 19 0
  32              		.syntax divided
  33              	@ 19 "C:/Users/isake/Documents/Laboration5/Pong/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	.L1: B .L1
  38              	
  39              	@ 0 "" 2
  20:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  21:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	" MOV SP,R0\n"
  22:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	" BL main\n"				/* call main */
  23:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	".L1: B .L1\n"				/* never return */
  24:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	) ;
  25:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** }
  40              		.loc 1 25 0
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
  26:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  27:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** void init_app()
  28:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** {
  57              		.loc 1 28 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  29:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	GPIO_D->MODER = 0x55005500; /* Ansluter en keypad till PortD0-7 och en annan till PortD8-15 */
  67              		.loc 1 29 0
  68 0004 054B     		ldr	r3, .L3
  69 0006 1B68     		ldr	r3, [r3]
  70 0008 054A     		ldr	r2, .L3+4
  71 000a 1A60     		str	r2, [r3]
  30:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	GPIO_E->MODER = 0x55555555; /* Sätter hela Port E till utport */
  72              		.loc 1 30 0
  73 000c 054B     		ldr	r3, .L3+8
  74 000e 1B68     		ldr	r3, [r3]
  75 0010 054A     		ldr	r2, .L3+12
  76 0012 1A60     		str	r2, [r3]
  31:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** }
  77              		.loc 1 31 0
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
  92              		.comm	ball,24,4
  93              		.comm	leftpaddle,24,4
  94              		.comm	rightpaddle,24,4
  95              		.align	1
  96              		.global	update_positions
  97              		.syntax unified
  98              		.code	16
  99              		.thumb_func
 100              		.fpu softvfp
 102              	update_positions:
 103              	.LFB2:
  32:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  33:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** Object ball;
  34:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** Object leftpaddle;
  35:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** Object rightpaddle;
  36:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  37:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** void update_positions(void){
 104              		.loc 1 37 0
 105              		.cfi_startproc
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 1, uses_anonymous_args = 0
 108 002c 80B5     		push	{r7, lr}
 109              		.cfi_def_cfa_offset 8
 110              		.cfi_offset 7, -8
 111              		.cfi_offset 14, -4
 112 002e 00AF     		add	r7, sp, #0
 113              		.cfi_def_cfa_register 7
  38:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	ball.move(&ball);
 114              		.loc 1 38 0
 115 0030 084B     		ldr	r3, .L6
 116 0032 1B69     		ldr	r3, [r3, #16]
 117 0034 074A     		ldr	r2, .L6
 118 0036 1000     		movs	r0, r2
 119 0038 9847     		blx	r3
 120              	.LVL0:
  39:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	leftpaddle.move(&leftpaddle);
 121              		.loc 1 39 0
 122 003a 074B     		ldr	r3, .L6+4
 123 003c 1B69     		ldr	r3, [r3, #16]
 124 003e 064A     		ldr	r2, .L6+4
 125 0040 1000     		movs	r0, r2
 126 0042 9847     		blx	r3
 127              	.LVL1:
  40:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	rightpaddle.move(&rightpaddle);
 128              		.loc 1 40 0
 129 0044 054B     		ldr	r3, .L6+8
 130 0046 1B69     		ldr	r3, [r3, #16]
 131 0048 044A     		ldr	r2, .L6+8
 132 004a 1000     		movs	r0, r2
 133 004c 9847     		blx	r3
 134              	.LVL2:
  41:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** }
 135              		.loc 1 41 0
 136 004e C046     		nop
 137 0050 BD46     		mov	sp, r7
 138              		@ sp needed
 139 0052 80BD     		pop	{r7, pc}
 140              	.L7:
 141              		.align	2
 142              	.L6:
 143 0054 00000000 		.word	ball
 144 0058 00000000 		.word	leftpaddle
 145 005c 00000000 		.word	rightpaddle
 146              		.cfi_endproc
 147              	.LFE2:
 149              		.align	1
 150              		.global	update_velocities
 151              		.syntax unified
 152              		.code	16
 153              		.thumb_func
 154              		.fpu softvfp
 156              	update_velocities:
 157              	.LFB3:
  42:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  43:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** void update_velocities(void){
 158              		.loc 1 43 0
 159              		.cfi_startproc
 160              		@ args = 0, pretend = 0, frame = 8
 161              		@ frame_needed = 1, uses_anonymous_args = 0
 162 0060 90B5     		push	{r4, r7, lr}
 163              		.cfi_def_cfa_offset 12
 164              		.cfi_offset 4, -12
 165              		.cfi_offset 7, -8
 166              		.cfi_offset 14, -4
 167 0062 83B0     		sub	sp, sp, #12
 168              		.cfi_def_cfa_offset 24
 169 0064 00AF     		add	r7, sp, #0
 170              		.cfi_def_cfa_register 7
  44:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		uint8_t k = keyb();
 171              		.loc 1 44 0
 172 0066 FC1D     		adds	r4, r7, #7
 173 0068 FFF7FEFF 		bl	keyb
 174 006c 0300     		movs	r3, r0
 175 006e 2370     		strb	r3, [r4]
  45:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		switch(k) {
 176              		.loc 1 45 0
 177 0070 FB1D     		adds	r3, r7, #7
 178 0072 1B78     		ldrb	r3, [r3]
 179 0074 0C2B     		cmp	r3, #12
 180 0076 47D8     		bhi	.L9
 181 0078 9A00     		lsls	r2, r3, #2
 182 007a 2B4B     		ldr	r3, .L21
 183 007c D318     		adds	r3, r2, r3
 184 007e 1B68     		ldr	r3, [r3]
 185 0080 9F46     		mov	pc, r3
 186              		.section	.rodata
 187              		.align	2
 188              	.L11:
 189 0000 08010000 		.word	.L9
 190 0004 82000000 		.word	.L10
 191 0008 92000000 		.word	.L12
 192 000c 08010000 		.word	.L9
 193 0010 B2000000 		.word	.L13
 194 0014 C2000000 		.word	.L14
 195 0018 D0000000 		.word	.L15
 196 001c DE000000 		.word	.L16
 197 0020 EC000000 		.word	.L17
 198 0024 08010000 		.word	.L9
 199 0028 A2000000 		.word	.L18
 200 002c 08010000 		.word	.L9
 201 0030 FA000000 		.word	.L19
 202              		.text
 203              	.L10:
  46:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 1:
  47:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				leftpaddle.set_vel(&leftpaddle, 0, -2);
 204              		.loc 1 47 0
 205 0082 2A4B     		ldr	r3, .L21+4
 206 0084 5B69     		ldr	r3, [r3, #20]
 207 0086 0222     		movs	r2, #2
 208 0088 5242     		rsbs	r2, r2, #0
 209 008a 2848     		ldr	r0, .L21+4
 210 008c 0021     		movs	r1, #0
 211 008e 9847     		blx	r3
 212              	.LVL3:
  48:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 213              		.loc 1 48 0
 214 0090 46E0     		b	.L20
 215              	.L12:
  49:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 2:
  50:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 0, -4);
 216              		.loc 1 50 0
 217 0092 274B     		ldr	r3, .L21+8
 218 0094 5B69     		ldr	r3, [r3, #20]
 219 0096 0422     		movs	r2, #4
 220 0098 5242     		rsbs	r2, r2, #0
 221 009a 2548     		ldr	r0, .L21+8
 222 009c 0021     		movs	r1, #0
 223 009e 9847     		blx	r3
 224              	.LVL4:
  51:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 225              		.loc 1 51 0
 226 00a0 3EE0     		b	.L20
 227              	.L18:
  52:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  53:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 0xA:
  54:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				rightpaddle.set_vel(&rightpaddle, 0, -2);
 228              		.loc 1 54 0
 229 00a2 244B     		ldr	r3, .L21+12
 230 00a4 5B69     		ldr	r3, [r3, #20]
 231 00a6 0222     		movs	r2, #2
 232 00a8 5242     		rsbs	r2, r2, #0
 233 00aa 2248     		ldr	r0, .L21+12
 234 00ac 0021     		movs	r1, #0
 235 00ae 9847     		blx	r3
 236              	.LVL5:
  55:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 237              		.loc 1 55 0
 238 00b0 36E0     		b	.L20
 239              	.L13:
  56:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  57:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 4:
  58:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, -4, 0);
 240              		.loc 1 58 0
 241 00b2 1F4B     		ldr	r3, .L21+8
 242 00b4 5B69     		ldr	r3, [r3, #20]
 243 00b6 0422     		movs	r2, #4
 244 00b8 5142     		rsbs	r1, r2, #0
 245 00ba 1D48     		ldr	r0, .L21+8
 246 00bc 0022     		movs	r2, #0
 247 00be 9847     		blx	r3
 248              	.LVL6:
  59:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 249              		.loc 1 59 0
 250 00c0 2EE0     		b	.L20
 251              	.L14:
  60:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  61:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 5:
  62:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 0, 0);
 252              		.loc 1 62 0
 253 00c2 1B4B     		ldr	r3, .L21+8
 254 00c4 5B69     		ldr	r3, [r3, #20]
 255 00c6 1A48     		ldr	r0, .L21+8
 256 00c8 0022     		movs	r2, #0
 257 00ca 0021     		movs	r1, #0
 258 00cc 9847     		blx	r3
 259              	.LVL7:
  63:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 260              		.loc 1 63 0
 261 00ce 27E0     		b	.L20
 262              	.L15:
  64:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  65:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 6:
  66:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 4, 0);
 263              		.loc 1 66 0
 264 00d0 174B     		ldr	r3, .L21+8
 265 00d2 5B69     		ldr	r3, [r3, #20]
 266 00d4 1648     		ldr	r0, .L21+8
 267 00d6 0022     		movs	r2, #0
 268 00d8 0421     		movs	r1, #4
 269 00da 9847     		blx	r3
 270              	.LVL8:
  67:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 271              		.loc 1 67 0
 272 00dc 20E0     		b	.L20
 273              	.L16:
  68:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  69:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 7:
  70:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				leftpaddle.set_vel(&leftpaddle, 0, 2);
 274              		.loc 1 70 0
 275 00de 134B     		ldr	r3, .L21+4
 276 00e0 5B69     		ldr	r3, [r3, #20]
 277 00e2 1248     		ldr	r0, .L21+4
 278 00e4 0222     		movs	r2, #2
 279 00e6 0021     		movs	r1, #0
 280 00e8 9847     		blx	r3
 281              	.LVL9:
  71:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 282              		.loc 1 71 0
 283 00ea 19E0     		b	.L20
 284              	.L17:
  72:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  73:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 8:
  74:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				ball.set_vel(&ball, 0, 4);
 285              		.loc 1 74 0
 286 00ec 104B     		ldr	r3, .L21+8
 287 00ee 5B69     		ldr	r3, [r3, #20]
 288 00f0 0F48     		ldr	r0, .L21+8
 289 00f2 0422     		movs	r2, #4
 290 00f4 0021     		movs	r1, #0
 291 00f6 9847     		blx	r3
 292              	.LVL10:
  75:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 293              		.loc 1 75 0
 294 00f8 12E0     		b	.L20
 295              	.L19:
  76:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				
  77:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			case 0xC:
  78:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				rightpaddle.set_vel(&rightpaddle, 0, 2);
 296              		.loc 1 78 0
 297 00fa 0E4B     		ldr	r3, .L21+12
 298 00fc 5B69     		ldr	r3, [r3, #20]
 299 00fe 0D48     		ldr	r0, .L21+12
 300 0100 0222     		movs	r2, #2
 301 0102 0021     		movs	r1, #0
 302 0104 9847     		blx	r3
 303              	.LVL11:
  79:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				break;
 304              		.loc 1 79 0
 305 0106 0BE0     		b	.L20
 306              	.L9:
  80:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			
  81:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			default:
  82:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				/* Om ingen knapp är nedtryckt, nollställ hastigheten */
  83:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				//ball.set_vel(&ball, 0, 0);
  84:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				leftpaddle.set_vel(&leftpaddle, 0, 0);
 307              		.loc 1 84 0
 308 0108 084B     		ldr	r3, .L21+4
 309 010a 5B69     		ldr	r3, [r3, #20]
 310 010c 0748     		ldr	r0, .L21+4
 311 010e 0022     		movs	r2, #0
 312 0110 0021     		movs	r1, #0
 313 0112 9847     		blx	r3
 314              	.LVL12:
  85:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				rightpaddle.set_vel(&rightpaddle, 0, 0);
 315              		.loc 1 85 0
 316 0114 074B     		ldr	r3, .L21+12
 317 0116 5B69     		ldr	r3, [r3, #20]
 318 0118 0648     		ldr	r0, .L21+12
 319 011a 0022     		movs	r2, #0
 320 011c 0021     		movs	r1, #0
 321 011e 9847     		blx	r3
 322              	.LVL13:
 323              	.L20:
  86:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  87:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		}
  88:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** }
 324              		.loc 1 88 0
 325 0120 C046     		nop
 326 0122 BD46     		mov	sp, r7
 327 0124 03B0     		add	sp, sp, #12
 328              		@ sp needed
 329 0126 90BD     		pop	{r4, r7, pc}
 330              	.L22:
 331              		.align	2
 332              	.L21:
 333 0128 00000000 		.word	.L11
 334 012c 00000000 		.word	leftpaddle
 335 0130 00000000 		.word	ball
 336 0134 00000000 		.word	rightpaddle
 337              		.cfi_endproc
 338              	.LFE3:
 340              		.align	1
 341              		.global	main
 342              		.syntax unified
 343              		.code	16
 344              		.thumb_func
 345              		.fpu softvfp
 347              	main:
 348              	.LFB4:
  89:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  90:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
  91:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** int main(void)
  92:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** {
 349              		.loc 1 92 0
 350              		.cfi_startproc
 351              		@ args = 0, pretend = 0, frame = 24
 352              		@ frame_needed = 1, uses_anonymous_args = 0
 353 0138 90B5     		push	{r4, r7, lr}
 354              		.cfi_def_cfa_offset 12
 355              		.cfi_offset 4, -12
 356              		.cfi_offset 7, -8
 357              		.cfi_offset 14, -4
 358 013a 89B0     		sub	sp, sp, #36
 359              		.cfi_def_cfa_offset 48
 360 013c 02AF     		add	r7, sp, #8
 361              		.cfi_def_cfa 7, 40
  93:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	init_app();
 362              		.loc 1 93 0
 363 013e FFF7FEFF 		bl	init_app
  94:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	ascii_initialise();
 364              		.loc 1 94 0
 365 0142 FFF7FEFF 		bl	ascii_initialise
  95:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	graphic_initialise();
 366              		.loc 1 95 0
 367 0146 FFF7FEFF 		bl	graphic_initialise
  96:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	#ifndef SIMULATOR
  97:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		graphic_clear_screen();
  98:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	#endif
  99:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	
 100:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	ball = create_ball(63, 32, -5, 0);
 368              		.loc 1 100 0
 369 014a 224C     		ldr	r4, .L27
 370 014c 3800     		movs	r0, r7
 371 014e 0523     		movs	r3, #5
 372 0150 5A42     		rsbs	r2, r3, #0
 373 0152 0023     		movs	r3, #0
 374 0154 0093     		str	r3, [sp]
 375 0156 1300     		movs	r3, r2
 376 0158 2022     		movs	r2, #32
 377 015a 3F21     		movs	r1, #63
 378 015c FFF7FEFF 		bl	create_ball
 379 0160 3A00     		movs	r2, r7
 380 0162 2300     		movs	r3, r4
 381 0164 13CA     		ldmia	r2!, {r0, r1, r4}
 382 0166 13C3     		stmia	r3!, {r0, r1, r4}
 383 0168 13CA     		ldmia	r2!, {r0, r1, r4}
 384 016a 13C3     		stmia	r3!, {r0, r1, r4}
 101:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	leftpaddle = create_paddle(4, 32, 0, 0);
 385              		.loc 1 101 0
 386 016c 1A4C     		ldr	r4, .L27+4
 387 016e 3800     		movs	r0, r7
 388 0170 0023     		movs	r3, #0
 389 0172 0093     		str	r3, [sp]
 390 0174 0023     		movs	r3, #0
 391 0176 2022     		movs	r2, #32
 392 0178 0421     		movs	r1, #4
 393 017a FFF7FEFF 		bl	create_paddle
 394 017e 3A00     		movs	r2, r7
 395 0180 2300     		movs	r3, r4
 396 0182 13CA     		ldmia	r2!, {r0, r1, r4}
 397 0184 13C3     		stmia	r3!, {r0, r1, r4}
 398 0186 13CA     		ldmia	r2!, {r0, r1, r4}
 399 0188 13C3     		stmia	r3!, {r0, r1, r4}
 102:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	rightpaddle = create_paddle(123, 32, 0, 0);
 400              		.loc 1 102 0
 401 018a 144C     		ldr	r4, .L27+8
 402 018c 3800     		movs	r0, r7
 403 018e 0023     		movs	r3, #0
 404 0190 0093     		str	r3, [sp]
 405 0192 0023     		movs	r3, #0
 406 0194 2022     		movs	r2, #32
 407 0196 7B21     		movs	r1, #123
 408 0198 FFF7FEFF 		bl	create_paddle
 409 019c 3A00     		movs	r2, r7
 410 019e 2300     		movs	r3, r4
 411 01a0 13CA     		ldmia	r2!, {r0, r1, r4}
 412 01a2 13C3     		stmia	r3!, {r0, r1, r4}
 413 01a4 13CA     		ldmia	r2!, {r0, r1, r4}
 414 01a6 13C3     		stmia	r3!, {r0, r1, r4}
 103:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	
 104:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	init_systick_irq_handler();
 415              		.loc 1 104 0
 416 01a8 FFF7FEFF 		bl	init_systick_irq_handler
 105:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	delay_irq(REFRESHINTERVAL);
 417              		.loc 1 105 0
 418 01ac 0C4B     		ldr	r3, .L27+12
 419 01ae 1800     		movs	r0, r3
 420 01b0 FFF7FEFF 		bl	delay_irq
 106:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	
 107:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 	while(1){
 108:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 		while(!systick_flag){
 421              		.loc 1 108 0
 422 01b4 03E0     		b	.L24
 423              	.L25:
 109:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				update_velocities(); //Check if key is pressed and if so update the velocity on the correspondi
 424              		.loc 1 109 0
 425 01b6 FFF7FEFF 		bl	update_velocities
 110:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				draw_buffer(); //Can take different amount of time depending on how much has changed on the scr
 426              		.loc 1 110 0
 427 01ba FFF7FEFF 		bl	draw_buffer
 428              	.L24:
 108:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				update_velocities(); //Check if key is pressed and if so update the velocity on the correspondi
 429              		.loc 1 108 0
 430 01be 094B     		ldr	r3, .L27+16
 431 01c0 1B68     		ldr	r3, [r3]
 432 01c2 002B     		cmp	r3, #0
 433 01c4 F7D0     		beq	.L25
 111:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 
 112:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			}
 113:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			delay_irq(REFRESHINTERVAL); //Systick_flag should be 1 about once every 30th of a second
 434              		.loc 1 113 0
 435 01c6 064B     		ldr	r3, .L27+12
 436 01c8 1800     		movs	r0, r3
 437 01ca FFF7FEFF 		bl	delay_irq
 114:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 			update_positions();  //Depending on the set velcoities, positions are updated. It is important t
 438              		.loc 1 114 0
 439 01ce FFF7FEFF 		bl	update_positions
 108:C:/Users/isake/Documents/Laboration5/Pong\startup.c **** 				update_velocities(); //Check if key is pressed and if so update the velocity on the correspondi
 440              		.loc 1 108 0
 441 01d2 F4E7     		b	.L24
 442              	.L28:
 443              		.align	2
 444              	.L27:
 445 01d4 00000000 		.word	ball
 446 01d8 00000000 		.word	leftpaddle
 447 01dc 00000000 		.word	rightpaddle
 448 01e0 35820000 		.word	33333
 449 01e4 00000000 		.word	systick_flag
 450              		.cfi_endproc
 451              	.LFE4:
 453              	.Letext0:
 454              		.file 2 "include/intdef.h"
 455              		.file 3 "include/GPIO.h"
 456              		.file 4 "include/delay.h"
 457              		.file 5 "include/graphicdisplay.h"
 458              		.file 6 "include/object.h"
