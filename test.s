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
  11              		.file	"graphicdisplay.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.global	LCD_PAGES
  16              		.section	.rodata
<<<<<<< Updated upstream
  17              		.align	2
  20              	geometry_ball:
  21 0000 0C       		.byte	12
  22 0001 04       		.byte	4
  23 0002 04       		.byte	4
  24 0003 00       		.byte	0
  25 0004 01       		.byte	1
  26 0005 00       		.byte	0
  27 0006 02       		.byte	2
  28 0007 01       		.byte	1
  29 0008 00       		.byte	0
  30 0009 01       		.byte	1
  31 000a 01       		.byte	1
  32 000b 01       		.byte	1
  33 000c 02       		.byte	2
  34 000d 01       		.byte	1
  35 000e 03       		.byte	3
  36 000f 02       		.byte	2
  37 0010 00       		.byte	0
  38 0011 02       		.byte	2
  39 0012 01       		.byte	1
  40 0013 02       		.byte	2
  41 0014 02       		.byte	2
  42 0015 02       		.byte	2
  43 0016 03       		.byte	3
  44 0017 03       		.byte	3
  45 0018 01       		.byte	1
  46 0019 03       		.byte	3
  47 001a 02       		.byte	2
  48 001b 00000000 		.space	16
  48      00000000 
  48      00000000 
  48      00000000 
  49              		.global	geometry_paddle
  50 002b 00       		.align	2
  53              	geometry_paddle:
  54 002c 0C       		.byte	12
  55 002d 02       		.byte	2
  56 002e 08       		.byte	8
  57 002f 00       		.byte	0
  58 0030 00       		.byte	0
  59 0031 01       		.byte	1
  60 0032 00       		.byte	0
  61 0033 00       		.byte	0
  62 0034 01       		.byte	1
  63 0035 01       		.byte	1
  64 0036 01       		.byte	1
  65 0037 00       		.byte	0
  66 0038 02       		.byte	2
  67 0039 01       		.byte	1
  68 003a 02       		.byte	2
  69 003b 00       		.byte	0
  70 003c 03       		.byte	3
  71 003d 01       		.byte	1
  72 003e 03       		.byte	3
  73 003f 00       		.byte	0
  74 0040 04       		.byte	4
  75 0041 01       		.byte	1
  76 0042 04       		.byte	4
  77 0043 00       		.byte	0
  78 0044 05       		.byte	5
  79 0045 01       		.byte	1
  80 0046 05       		.byte	5
  81 0047 00       		.byte	0
  82 0048 06       		.byte	6
  83 0049 01       		.byte	1
  84 004a 06       		.byte	6
  85 004b 00       		.byte	0
  86 004c 07       		.byte	7
  87 004d 01       		.byte	1
  88 004e 07       		.byte	7
  89 004f 00000000 		.space	8
  89      00000000 
  90              		.text
  91              		.align	1
  92              		.global	draw_object
  93              		.syntax unified
  94              		.code	16
  95              		.thumb_func
  96              		.fpu softvfp
  98              	draw_object:
  99              	.LFB0:
<<<<<<< Updated upstream
 100              		.file 1 "C:/Users/isake/Documents/Laboration5/Pong/object.c"
   1:C:/Users/isake/Documents/Laboration5/Pong\object.c **** /*
   2:C:/Users/isake/Documents/Laboration5/Pong\object.c ****  * 
   3:C:/Users/isake/Documents/Laboration5/Pong\object.c ****  * 	object.c
   4:C:/Users/isake/Documents/Laboration5/Pong\object.c ****  *
   5:C:/Users/isake/Documents/Laboration5/Pong\object.c ****  */
   6:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
   7:C:/Users/isake/Documents/Laboration5/Pong\object.c **** #include "object.h"
   8:C:/Users/isake/Documents/Laboration5/Pong\object.c **** #include "graphicdisplay.h"
   9:C:/Users/isake/Documents/Laboration5/Pong\object.c **** #include <stdbool.h>
  10:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  11:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  12:C:/Users/isake/Documents/Laboration5/Pong\object.c **** const Geometry geometry_ball = { 12, 4, 4, {
  13:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 			{0, 1}, {0, 2}, 
  14:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{1, 0}, {1, 1}, {1, 2}, {1, 3},
  15:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{2, 0}, {2, 1}, {2, 2}, {2, 3},
  16:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 			{3, 1}, {3, 2}
  17:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  18:C:/Users/isake/Documents/Laboration5/Pong\object.c **** };
  19:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  20:C:/Users/isake/Documents/Laboration5/Pong\object.c **** const Geometry geometry_paddle = { 12, 2, 8, {
  21:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{0,0}, {1,0},
  22:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{0,1}, {1,1},
  23:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{0,2}, {1,2},
  24:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{0,3}, {1,3},
  25:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{0,4}, {1,4},
  26:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{0,5}, {1,5},
  27:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{0,6}, {1,6},
  28:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{0,7}, {1,7}
  29:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  30:C:/Users/isake/Documents/Laboration5/Pong\object.c **** };
  31:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  32:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  33:C:/Users/isake/Documents/Laboration5/Pong\object.c **** void draw_object(Object * object)
  34:C:/Users/isake/Documents/Laboration5/Pong\object.c **** {
 101              		.loc 1 34 0
=======
 100              		.file 1 "/home/oscar/GitHub/Pong/object.c"
   1:/home/oscar/GitHub/Pong/object.c **** /*
   2:/home/oscar/GitHub/Pong/object.c ****  * 
   3:/home/oscar/GitHub/Pong/object.c ****  * 	object.c
   4:/home/oscar/GitHub/Pong/object.c ****  *
   5:/home/oscar/GitHub/Pong/object.c ****  */
   6:/home/oscar/GitHub/Pong/object.c **** 
   7:/home/oscar/GitHub/Pong/object.c **** #include "object.h"
   8:/home/oscar/GitHub/Pong/object.c **** #include "graphicdisplay.h"
   9:/home/oscar/GitHub/Pong/object.c **** 
  10:/home/oscar/GitHub/Pong/object.c **** const Geometry geometry_ball = { 12, 4, 4, {
  11:/home/oscar/GitHub/Pong/object.c **** 			{0, 1}, {0, 2}, 
  12:/home/oscar/GitHub/Pong/object.c **** 	{1, 0}, {1, 1}, {1, 2}, {1, 3},
  13:/home/oscar/GitHub/Pong/object.c **** 	{2, 0}, {2, 1}, {2, 2}, {2, 3},
  14:/home/oscar/GitHub/Pong/object.c **** 			{3, 1}, {3, 2}
  15:/home/oscar/GitHub/Pong/object.c **** 	}
  16:/home/oscar/GitHub/Pong/object.c **** };
  17:/home/oscar/GitHub/Pong/object.c **** 
  18:/home/oscar/GitHub/Pong/object.c **** const Geometry geometry_paddle = { 12, 2, 8, {
  19:/home/oscar/GitHub/Pong/object.c **** 	{0,0}, {1,0},
  20:/home/oscar/GitHub/Pong/object.c **** 	{0,1}, {1,1},
  21:/home/oscar/GitHub/Pong/object.c **** 	{0,2}, {1,2},
  22:/home/oscar/GitHub/Pong/object.c **** 	{0,3}, {1,3},
  23:/home/oscar/GitHub/Pong/object.c **** 	{0,4}, {1,4},
  24:/home/oscar/GitHub/Pong/object.c **** 	{0,5}, {1,5},
  25:/home/oscar/GitHub/Pong/object.c **** 	{0,6}, {1,6},
  26:/home/oscar/GitHub/Pong/object.c **** 	{0,7}, {1,7}
  27:/home/oscar/GitHub/Pong/object.c **** 	}
  28:/home/oscar/GitHub/Pong/object.c **** };
  29:/home/oscar/GitHub/Pong/object.c **** 
  30:/home/oscar/GitHub/Pong/object.c **** 
  31:/home/oscar/GitHub/Pong/object.c **** void draw_object(Object * object)
  32:/home/oscar/GitHub/Pong/object.c **** {
 101              		.loc 1 32 0
>>>>>>> Stashed changes
 102              		.cfi_startproc
 103              		@ args = 0, pretend = 0, frame = 16
 104              		@ frame_needed = 1, uses_anonymous_args = 0
 105 0000 90B5     		push	{r4, r7, lr}
 106              		.cfi_def_cfa_offset 12
 107              		.cfi_offset 4, -12
 108              		.cfi_offset 7, -8
 109              		.cfi_offset 14, -4
 110 0002 85B0     		sub	sp, sp, #20
 111              		.cfi_def_cfa_offset 32
 112 0004 00AF     		add	r7, sp, #0
 113              		.cfi_def_cfa_register 7
 114 0006 7860     		str	r0, [r7, #4]
 115              	.LBB2:
<<<<<<< Updated upstream
  35:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 116              		.loc 1 35 0
=======
  33:/home/oscar/GitHub/Pong/object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 116              		.loc 1 33 0
>>>>>>> Stashed changes
 117 0008 0F23     		movs	r3, #15
 118 000a FB18     		adds	r3, r7, r3
 119 000c 0022     		movs	r2, #0
 120 000e 1A70     		strb	r2, [r3]
 121 0010 27E0     		b	.L2
 122              	.L3:
<<<<<<< Updated upstream
  36:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		pixel(object->geometry->points[i].x + object->pos_x, object->geometry->points[i].y + object->pos_
 123              		.loc 1 36 0 discriminator 3
=======
  34:/home/oscar/GitHub/Pong/object.c **** 		pixel(object->geometry->points[i].x + object->pos_x, object->geometry->points[i].y + object->pos_
 123              		.loc 1 34 0 discriminator 3
>>>>>>> Stashed changes
 124 0012 7B68     		ldr	r3, [r7, #4]
 125 0014 1A68     		ldr	r2, [r3]
 126 0016 0F21     		movs	r1, #15
 127 0018 7B18     		adds	r3, r7, r1
 128 001a 1B78     		ldrb	r3, [r3]
 129 001c 5B00     		lsls	r3, r3, #1
 130 001e D318     		adds	r3, r2, r3
 131 0020 0333     		adds	r3, r3, #3
 132 0022 1A78     		ldrb	r2, [r3]
 133 0024 7B68     		ldr	r3, [r7, #4]
 134 0026 1B79     		ldrb	r3, [r3, #4]
 135 0028 5BB2     		sxtb	r3, r3
 136 002a DBB2     		uxtb	r3, r3
 137 002c D318     		adds	r3, r2, r3
 138 002e D8B2     		uxtb	r0, r3
 139 0030 7B68     		ldr	r3, [r7, #4]
 140 0032 1A68     		ldr	r2, [r3]
 141 0034 0C00     		movs	r4, r1
 142 0036 7B18     		adds	r3, r7, r1
 143 0038 1B78     		ldrb	r3, [r3]
 144 003a 5B00     		lsls	r3, r3, #1
 145 003c D318     		adds	r3, r2, r3
 146 003e 0433     		adds	r3, r3, #4
 147 0040 1A78     		ldrb	r2, [r3]
 148 0042 7B68     		ldr	r3, [r7, #4]
 149 0044 5B79     		ldrb	r3, [r3, #5]
 150 0046 5BB2     		sxtb	r3, r3
 151 0048 DBB2     		uxtb	r3, r3
 152 004a D318     		adds	r3, r2, r3
 153 004c DBB2     		uxtb	r3, r3
 154 004e 0122     		movs	r2, #1
 155 0050 1900     		movs	r1, r3
 156 0052 FFF7FEFF 		bl	pixel
<<<<<<< Updated upstream
  35:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 157              		.loc 1 35 0 discriminator 3
=======
  33:/home/oscar/GitHub/Pong/object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 157              		.loc 1 33 0 discriminator 3
>>>>>>> Stashed changes
 158 0056 2100     		movs	r1, r4
 159 0058 7B18     		adds	r3, r7, r1
 160 005a 1A78     		ldrb	r2, [r3]
 161 005c 7B18     		adds	r3, r7, r1
 162 005e 0132     		adds	r2, r2, #1
 163 0060 1A70     		strb	r2, [r3]
 164              	.L2:
<<<<<<< Updated upstream
  35:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 165              		.loc 1 35 0 is_stmt 0 discriminator 1
=======
  33:/home/oscar/GitHub/Pong/object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 165              		.loc 1 33 0 is_stmt 0 discriminator 1
>>>>>>> Stashed changes
 166 0062 7B68     		ldr	r3, [r7, #4]
 167 0064 1B68     		ldr	r3, [r3]
 168 0066 1B78     		ldrb	r3, [r3]
 169 0068 0F22     		movs	r2, #15
 170 006a BA18     		adds	r2, r7, r2
 171 006c 1278     		ldrb	r2, [r2]
 172 006e 9A42     		cmp	r2, r3
 173 0070 CFD3     		bcc	.L3
 174              	.LBE2:
<<<<<<< Updated upstream
  37:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  38:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 175              		.loc 1 38 0 is_stmt 1
=======
  35:/home/oscar/GitHub/Pong/object.c **** 	}
  36:/home/oscar/GitHub/Pong/object.c **** }
 175              		.loc 1 36 0 is_stmt 1
>>>>>>> Stashed changes
 176 0072 C046     		nop
 177 0074 BD46     		mov	sp, r7
 178 0076 05B0     		add	sp, sp, #20
 179              		@ sp needed
 180 0078 90BD     		pop	{r4, r7, pc}
 181              		.cfi_endproc
 182              	.LFE0:
 184              		.align	1
 185              		.global	clear_object
 186              		.syntax unified
 187              		.code	16
 188              		.thumb_func
 189              		.fpu softvfp
 191              	clear_object:
 192              	.LFB1:
<<<<<<< Updated upstream
  39:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  40:C:/Users/isake/Documents/Laboration5/Pong\object.c **** void clear_object(Object * object)
  41:C:/Users/isake/Documents/Laboration5/Pong\object.c **** {
 193              		.loc 1 41 0
=======
  37:/home/oscar/GitHub/Pong/object.c **** 
  38:/home/oscar/GitHub/Pong/object.c **** void clear_object(Object * object)
  39:/home/oscar/GitHub/Pong/object.c **** {
 193              		.loc 1 39 0
>>>>>>> Stashed changes
 194              		.cfi_startproc
 195              		@ args = 0, pretend = 0, frame = 16
 196              		@ frame_needed = 1, uses_anonymous_args = 0
 197 007a 90B5     		push	{r4, r7, lr}
 198              		.cfi_def_cfa_offset 12
 199              		.cfi_offset 4, -12
 200              		.cfi_offset 7, -8
 201              		.cfi_offset 14, -4
 202 007c 85B0     		sub	sp, sp, #20
 203              		.cfi_def_cfa_offset 32
 204 007e 00AF     		add	r7, sp, #0
 205              		.cfi_def_cfa_register 7
 206 0080 7860     		str	r0, [r7, #4]
 207              	.LBB3:
<<<<<<< Updated upstream
  42:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 208              		.loc 1 42 0
=======
  40:/home/oscar/GitHub/Pong/object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 208              		.loc 1 40 0
>>>>>>> Stashed changes
 209 0082 0F23     		movs	r3, #15
 210 0084 FB18     		adds	r3, r7, r3
 211 0086 0022     		movs	r2, #0
 212 0088 1A70     		strb	r2, [r3]
 213 008a 27E0     		b	.L5
 214              	.L6:
<<<<<<< Updated upstream
  43:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		pixel(object->geometry->points[i].x + object->pos_x, object->geometry->points[i].y + object->pos_
 215              		.loc 1 43 0 discriminator 3
=======
  41:/home/oscar/GitHub/Pong/object.c **** 		pixel(object->geometry->points[i].x + object->pos_x, object->geometry->points[i].y + object->pos_
 215              		.loc 1 41 0 discriminator 3
>>>>>>> Stashed changes
 216 008c 7B68     		ldr	r3, [r7, #4]
 217 008e 1A68     		ldr	r2, [r3]
 218 0090 0F21     		movs	r1, #15
 219 0092 7B18     		adds	r3, r7, r1
 220 0094 1B78     		ldrb	r3, [r3]
 221 0096 5B00     		lsls	r3, r3, #1
 222 0098 D318     		adds	r3, r2, r3
 223 009a 0333     		adds	r3, r3, #3
 224 009c 1A78     		ldrb	r2, [r3]
 225 009e 7B68     		ldr	r3, [r7, #4]
 226 00a0 1B79     		ldrb	r3, [r3, #4]
 227 00a2 5BB2     		sxtb	r3, r3
 228 00a4 DBB2     		uxtb	r3, r3
 229 00a6 D318     		adds	r3, r2, r3
 230 00a8 D8B2     		uxtb	r0, r3
 231 00aa 7B68     		ldr	r3, [r7, #4]
 232 00ac 1A68     		ldr	r2, [r3]
 233 00ae 0C00     		movs	r4, r1
 234 00b0 7B18     		adds	r3, r7, r1
 235 00b2 1B78     		ldrb	r3, [r3]
 236 00b4 5B00     		lsls	r3, r3, #1
 237 00b6 D318     		adds	r3, r2, r3
 238 00b8 0433     		adds	r3, r3, #4
 239 00ba 1A78     		ldrb	r2, [r3]
 240 00bc 7B68     		ldr	r3, [r7, #4]
 241 00be 5B79     		ldrb	r3, [r3, #5]
 242 00c0 5BB2     		sxtb	r3, r3
 243 00c2 DBB2     		uxtb	r3, r3
 244 00c4 D318     		adds	r3, r2, r3
 245 00c6 DBB2     		uxtb	r3, r3
 246 00c8 0022     		movs	r2, #0
 247 00ca 1900     		movs	r1, r3
 248 00cc FFF7FEFF 		bl	pixel
<<<<<<< Updated upstream
  42:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 249              		.loc 1 42 0 discriminator 3
=======
  40:/home/oscar/GitHub/Pong/object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 249              		.loc 1 40 0 discriminator 3
>>>>>>> Stashed changes
 250 00d0 2100     		movs	r1, r4
 251 00d2 7B18     		adds	r3, r7, r1
 252 00d4 1A78     		ldrb	r2, [r3]
 253 00d6 7B18     		adds	r3, r7, r1
 254 00d8 0132     		adds	r2, r2, #1
 255 00da 1A70     		strb	r2, [r3]
 256              	.L5:
<<<<<<< Updated upstream
  42:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 257              		.loc 1 42 0 is_stmt 0 discriminator 1
=======
  40:/home/oscar/GitHub/Pong/object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 257              		.loc 1 40 0 is_stmt 0 discriminator 1
>>>>>>> Stashed changes
 258 00dc 7B68     		ldr	r3, [r7, #4]
 259 00de 1B68     		ldr	r3, [r3]
 260 00e0 1B78     		ldrb	r3, [r3]
 261 00e2 0F22     		movs	r2, #15
 262 00e4 BA18     		adds	r2, r7, r2
 263 00e6 1278     		ldrb	r2, [r2]
 264 00e8 9A42     		cmp	r2, r3
 265 00ea CFD3     		bcc	.L6
 266              	.LBE3:
<<<<<<< Updated upstream
  44:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  45:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 267              		.loc 1 45 0 is_stmt 1
=======
  42:/home/oscar/GitHub/Pong/object.c **** 	}
  43:/home/oscar/GitHub/Pong/object.c **** }
 267              		.loc 1 43 0 is_stmt 1
>>>>>>> Stashed changes
 268 00ec C046     		nop
 269 00ee BD46     		mov	sp, r7
 270 00f0 05B0     		add	sp, sp, #20
 271              		@ sp needed
 272 00f2 90BD     		pop	{r4, r7, pc}
 273              		.cfi_endproc
 274              	.LFE1:
 276              		.align	1
<<<<<<< Updated upstream
 277              		.global	translate_object
=======
 277              		.global	move_object
>>>>>>> Stashed changes
 278              		.syntax unified
 279              		.code	16
 280              		.thumb_func
 281              		.fpu softvfp
<<<<<<< Updated upstream
 283              	translate_object:
 284              	.LFB2:
  46:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  47:C:/Users/isake/Documents/Laboration5/Pong\object.c **** void translate_object(Object * object) {
 285              		.loc 1 47 0
=======
 283              	move_object:
 284              	.LFB2:
  44:/home/oscar/GitHub/Pong/object.c **** 
  45:/home/oscar/GitHub/Pong/object.c **** void move_object(Object * object) {
 285              		.loc 1 45 0
>>>>>>> Stashed changes
 286              		.cfi_startproc
 287              		@ args = 0, pretend = 0, frame = 8
 288              		@ frame_needed = 1, uses_anonymous_args = 0
 289 00f4 80B5     		push	{r7, lr}
 290              		.cfi_def_cfa_offset 8
 291              		.cfi_offset 7, -8
 292              		.cfi_offset 14, -4
 293 00f6 82B0     		sub	sp, sp, #8
 294              		.cfi_def_cfa_offset 16
 295 00f8 00AF     		add	r7, sp, #0
 296              		.cfi_def_cfa_register 7
 297 00fa 7860     		str	r0, [r7, #4]
<<<<<<< Updated upstream
  48:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  49:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  50:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  51:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	object->pos_x += object->vel_x;
 298              		.loc 1 51 0
 299 00fc 7B68     		ldr	r3, [r7, #4]
 300 00fe 1B79     		ldrb	r3, [r3, #4]
 301 0100 5BB2     		sxtb	r3, r3
 302 0102 DAB2     		uxtb	r2, r3
 303 0104 7B68     		ldr	r3, [r7, #4]
 304 0106 9B79     		ldrb	r3, [r3, #6]
 305 0108 5BB2     		sxtb	r3, r3
 306 010a DBB2     		uxtb	r3, r3
 307 010c D318     		adds	r3, r2, r3
 308 010e DBB2     		uxtb	r3, r3
 309 0110 5AB2     		sxtb	r2, r3
 310 0112 7B68     		ldr	r3, [r7, #4]
 311 0114 1A71     		strb	r2, [r3, #4]
  52:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	object->pos_y += object->vel_y;
 312              		.loc 1 52 0
 313 0116 7B68     		ldr	r3, [r7, #4]
 314 0118 5B79     		ldrb	r3, [r3, #5]
 315 011a 5BB2     		sxtb	r3, r3
 316 011c DAB2     		uxtb	r2, r3
 317 011e 7B68     		ldr	r3, [r7, #4]
 318 0120 DB79     		ldrb	r3, [r3, #7]
 319 0122 5BB2     		sxtb	r3, r3
 320 0124 DBB2     		uxtb	r3, r3
 321 0126 D318     		adds	r3, r2, r3
 322 0128 DBB2     		uxtb	r3, r3
 323 012a 5AB2     		sxtb	r2, r3
 324 012c 7B68     		ldr	r3, [r7, #4]
 325 012e 5A71     		strb	r2, [r3, #5]
  53:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  54:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  55:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  56:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 326              		.loc 1 56 0
 327 0130 C046     		nop
 328 0132 BD46     		mov	sp, r7
 329 0134 02B0     		add	sp, sp, #8
 330              		@ sp needed
 331 0136 80BD     		pop	{r7, pc}
 332              		.cfi_endproc
 333              	.LFE2:
 335              		.align	1
 336              		.global	move_object
 337              		.syntax unified
 338              		.code	16
 339              		.thumb_func
 340              		.fpu softvfp
 342              	move_object:
 343              	.LFB3:
  57:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  58:C:/Users/isake/Documents/Laboration5/Pong\object.c **** void move_object(Object * object){
 344              		.loc 1 58 0
 345              		.cfi_startproc
 346              		@ args = 0, pretend = 0, frame = 8
 347              		@ frame_needed = 1, uses_anonymous_args = 0
 348 0138 80B5     		push	{r7, lr}
 349              		.cfi_def_cfa_offset 8
 350              		.cfi_offset 7, -8
 351              		.cfi_offset 14, -4
 352 013a 82B0     		sub	sp, sp, #8
 353              		.cfi_def_cfa_offset 16
 354 013c 00AF     		add	r7, sp, #0
 355              		.cfi_def_cfa_register 7
 356 013e 7860     		str	r0, [r7, #4]
  59:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	clear_object(object);
 357              		.loc 1 59 0
 358 0140 7B68     		ldr	r3, [r7, #4]
 359 0142 1800     		movs	r0, r3
 360 0144 FFF7FEFF 		bl	clear_object
  60:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	translate_object(object);
 361              		.loc 1 60 0
 362 0148 7B68     		ldr	r3, [r7, #4]
 363 014a 1800     		movs	r0, r3
 364 014c FFF7FEFF 		bl	translate_object
  61:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  62:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	/* Om objektet i fråga är påväg över någon kant, skifta riktning */
  63:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	if (!(0 <= object->pos_x && object->pos_x + object->geometry->width < LCD_WIDTH)) {
 365              		.loc 1 63 0
 366 0150 7B68     		ldr	r3, [r7, #4]
 367 0152 1B79     		ldrb	r3, [r3, #4]
 368 0154 5BB2     		sxtb	r3, r3
 369 0156 002B     		cmp	r3, #0
 370 0158 0BDB     		blt	.L9
 371              		.loc 1 63 0 is_stmt 0 discriminator 1
 372 015a 7B68     		ldr	r3, [r7, #4]
 373 015c 1B79     		ldrb	r3, [r3, #4]
 374 015e 5BB2     		sxtb	r3, r3
 375 0160 1A00     		movs	r2, r3
 376 0162 7B68     		ldr	r3, [r7, #4]
 377 0164 1B68     		ldr	r3, [r3]
 378 0166 5B78     		ldrb	r3, [r3, #1]
 379 0168 D318     		adds	r3, r2, r3
 380 016a 174A     		ldr	r2, .L13
 381 016c 1278     		ldrb	r2, [r2]
 382 016e 9342     		cmp	r3, r2
 383 0170 08DB     		blt	.L10
 384              	.L9:
  64:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		object->vel_x *= -1;
 385              		.loc 1 64 0 is_stmt 1
 386 0172 7B68     		ldr	r3, [r7, #4]
 387 0174 9B79     		ldrb	r3, [r3, #6]
 388 0176 5BB2     		sxtb	r3, r3
 389 0178 DBB2     		uxtb	r3, r3
 390 017a 5B42     		rsbs	r3, r3, #0
 391 017c DBB2     		uxtb	r3, r3
 392 017e 5AB2     		sxtb	r2, r3
 393 0180 7B68     		ldr	r3, [r7, #4]
 394 0182 9A71     		strb	r2, [r3, #6]
 395              	.L10:
  65:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  66:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  67:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	if (!(0 <= object->pos_y && object->pos_y + object->geometry->height < LCD_HEIGHT)) {
 396              		.loc 1 67 0
 397 0184 7B68     		ldr	r3, [r7, #4]
 398 0186 5B79     		ldrb	r3, [r3, #5]
 399 0188 5BB2     		sxtb	r3, r3
 400 018a 002B     		cmp	r3, #0
 401 018c 0BDB     		blt	.L11
 402              		.loc 1 67 0 is_stmt 0 discriminator 1
 403 018e 7B68     		ldr	r3, [r7, #4]
 404 0190 5B79     		ldrb	r3, [r3, #5]
 405 0192 5BB2     		sxtb	r3, r3
 406 0194 1A00     		movs	r2, r3
 407 0196 7B68     		ldr	r3, [r7, #4]
 408 0198 1B68     		ldr	r3, [r3]
 409 019a 9B78     		ldrb	r3, [r3, #2]
 410 019c D318     		adds	r3, r2, r3
 411 019e 0B4A     		ldr	r2, .L13+4
 412 01a0 1278     		ldrb	r2, [r2]
 413 01a2 9342     		cmp	r3, r2
 414 01a4 08DB     		blt	.L12
 415              	.L11:
  68:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		object->vel_y *= -1;
 416              		.loc 1 68 0 is_stmt 1
 417 01a6 7B68     		ldr	r3, [r7, #4]
 418 01a8 DB79     		ldrb	r3, [r3, #7]
 419 01aa 5BB2     		sxtb	r3, r3
 420 01ac DBB2     		uxtb	r3, r3
 421 01ae 5B42     		rsbs	r3, r3, #0
 422 01b0 DBB2     		uxtb	r3, r3
 423 01b2 5AB2     		sxtb	r2, r3
 424 01b4 7B68     		ldr	r3, [r7, #4]
 425 01b6 DA71     		strb	r2, [r3, #7]
 426              	.L12:
  69:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  70:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	draw_object(object);
 427              		.loc 1 70 0
 428 01b8 7B68     		ldr	r3, [r7, #4]
 429 01ba 1800     		movs	r0, r3
 430 01bc FFF7FEFF 		bl	draw_object
  71:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 431              		.loc 1 71 0
 432 01c0 C046     		nop
 433 01c2 BD46     		mov	sp, r7
 434 01c4 02B0     		add	sp, sp, #8
 435              		@ sp needed
 436 01c6 80BD     		pop	{r7, pc}
 437              	.L14:
 438              		.align	2
 439              	.L13:
 440 01c8 00000000 		.word	LCD_WIDTH
 441 01cc 00000000 		.word	LCD_HEIGHT
 442              		.cfi_endproc
 443              	.LFE3:
 445              		.align	1
 446              		.global	move_ball
 447              		.syntax unified
 448              		.code	16
 449              		.thumb_func
 450              		.fpu softvfp
 452              	move_ball:
 453              	.LFB4:
  72:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  73:C:/Users/isake/Documents/Laboration5/Pong\object.c **** void move_ball(Object * object){
 454              		.loc 1 73 0
 455              		.cfi_startproc
 456              		@ args = 0, pretend = 0, frame = 8
 457              		@ frame_needed = 1, uses_anonymous_args = 0
 458 01d0 80B5     		push	{r7, lr}
 459              		.cfi_def_cfa_offset 8
 460              		.cfi_offset 7, -8
 461              		.cfi_offset 14, -4
 462 01d2 82B0     		sub	sp, sp, #8
 463              		.cfi_def_cfa_offset 16
 464 01d4 00AF     		add	r7, sp, #0
 465              		.cfi_def_cfa_register 7
 466 01d6 7860     		str	r0, [r7, #4]
  74:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	clear_object(object);
 467              		.loc 1 74 0
 468 01d8 7B68     		ldr	r3, [r7, #4]
 469 01da 1800     		movs	r0, r3
 470 01dc FFF7FEFF 		bl	clear_object
  75:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	translate_object(object);
 471              		.loc 1 75 0
 472 01e0 7B68     		ldr	r3, [r7, #4]
 473 01e2 1800     		movs	r0, r3
 474 01e4 FFF7FEFF 		bl	translate_object
  76:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  77:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	/* På väg över långsidorna? Ändra riktning */
  78:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	if (!(0 <= object->pos_y && object->pos_y + object->geometry->height < LCD_HEIGHT)) {
 475              		.loc 1 78 0
 476 01e8 7B68     		ldr	r3, [r7, #4]
 477 01ea 5B79     		ldrb	r3, [r3, #5]
 478 01ec 5BB2     		sxtb	r3, r3
 479 01ee 002B     		cmp	r3, #0
 480 01f0 0BDB     		blt	.L16
 481              		.loc 1 78 0 is_stmt 0 discriminator 1
 482 01f2 7B68     		ldr	r3, [r7, #4]
 483 01f4 5B79     		ldrb	r3, [r3, #5]
 484 01f6 5BB2     		sxtb	r3, r3
 485 01f8 1A00     		movs	r2, r3
 486 01fa 7B68     		ldr	r3, [r7, #4]
 487 01fc 1B68     		ldr	r3, [r3]
 488 01fe 9B78     		ldrb	r3, [r3, #2]
 489 0200 D318     		adds	r3, r2, r3
 490 0202 194A     		ldr	r2, .L20
 491 0204 1278     		ldrb	r2, [r2]
 492 0206 9342     		cmp	r3, r2
 493 0208 08DB     		blt	.L17
 494              	.L16:
  79:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		object->vel_y *= -1;
 495              		.loc 1 79 0 is_stmt 1
 496 020a 7B68     		ldr	r3, [r7, #4]
 497 020c DB79     		ldrb	r3, [r3, #7]
 498 020e 5BB2     		sxtb	r3, r3
 499 0210 DBB2     		uxtb	r3, r3
 500 0212 5B42     		rsbs	r3, r3, #0
 501 0214 DBB2     		uxtb	r3, r3
 502 0216 5AB2     		sxtb	r2, r3
 503 0218 7B68     		ldr	r3, [r7, #4]
 504 021a DA71     		strb	r2, [r3, #7]
 505              	.L17:
  80:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  81:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  82:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	/* På väg över kortsidorna? Ändra poäng och återställ position, slumpa hastighet*/
  83:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	if (!(0 <= object->pos_x && object->pos_x + object->geometry->width < LCD_WIDTH)) {
 506              		.loc 1 83 0
 507 021c 7B68     		ldr	r3, [r7, #4]
 508 021e 1B79     		ldrb	r3, [r3, #4]
 509 0220 5BB2     		sxtb	r3, r3
 510 0222 002B     		cmp	r3, #0
 511 0224 0BDB     		blt	.L18
 512              		.loc 1 83 0 is_stmt 0 discriminator 1
 513 0226 7B68     		ldr	r3, [r7, #4]
 514 0228 1B79     		ldrb	r3, [r3, #4]
 515 022a 5BB2     		sxtb	r3, r3
 516 022c 1A00     		movs	r2, r3
 517 022e 7B68     		ldr	r3, [r7, #4]
 518 0230 1B68     		ldr	r3, [r3]
 519 0232 5B78     		ldrb	r3, [r3, #1]
 520 0234 D318     		adds	r3, r2, r3
 521 0236 0D4A     		ldr	r2, .L20+4
 522 0238 1278     		ldrb	r2, [r2]
 523 023a 9342     		cmp	r3, r2
 524 023c 0BDB     		blt	.L19
 525              	.L18:
  84:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		object->pos_x = 63;
 526              		.loc 1 84 0 is_stmt 1
 527 023e 7B68     		ldr	r3, [r7, #4]
 528 0240 3F22     		movs	r2, #63
 529 0242 1A71     		strb	r2, [r3, #4]
  85:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		object->pos_y = 32;
 530              		.loc 1 85 0
 531 0244 7B68     		ldr	r3, [r7, #4]
 532 0246 2022     		movs	r2, #32
 533 0248 5A71     		strb	r2, [r3, #5]
  86:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		object->vel_x = 3;
 534              		.loc 1 86 0
 535 024a 7B68     		ldr	r3, [r7, #4]
 536 024c 0322     		movs	r2, #3
 537 024e 9A71     		strb	r2, [r3, #6]
  87:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		object->vel_y = 3;
 538              		.loc 1 87 0
 539 0250 7B68     		ldr	r3, [r7, #4]
 540 0252 0322     		movs	r2, #3
 541 0254 DA71     		strb	r2, [r3, #7]
 542              	.L19:
  88:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  89:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	draw_object(object);
 543              		.loc 1 89 0
 544 0256 7B68     		ldr	r3, [r7, #4]
 545 0258 1800     		movs	r0, r3
 546 025a FFF7FEFF 		bl	draw_object
  90:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  91:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 547              		.loc 1 91 0
 548 025e C046     		nop
 549 0260 BD46     		mov	sp, r7
 550 0262 02B0     		add	sp, sp, #8
 551              		@ sp needed
 552 0264 80BD     		pop	{r7, pc}
 553              	.L21:
 554 0266 C046     		.align	2
 555              	.L20:
 556 0268 00000000 		.word	LCD_HEIGHT
 557 026c 00000000 		.word	LCD_WIDTH
 558              		.cfi_endproc
 559              	.LFE4:
 561              		.align	1
 562              		.global	move_paddle
 563              		.syntax unified
 564              		.code	16
 565              		.thumb_func
 566              		.fpu softvfp
 568              	move_paddle:
 569              	.LFB5:
  92:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  93:C:/Users/isake/Documents/Laboration5/Pong\object.c **** void move_paddle(Object * object){
 570              		.loc 1 93 0
 571              		.cfi_startproc
 572              		@ args = 0, pretend = 0, frame = 8
 573              		@ frame_needed = 1, uses_anonymous_args = 0
 574 0270 80B5     		push	{r7, lr}
 575              		.cfi_def_cfa_offset 8
 576              		.cfi_offset 7, -8
 577              		.cfi_offset 14, -4
 578 0272 82B0     		sub	sp, sp, #8
 579              		.cfi_def_cfa_offset 16
 580 0274 00AF     		add	r7, sp, #0
 581              		.cfi_def_cfa_register 7
 582 0276 7860     		str	r0, [r7, #4]
  94:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  95:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 583              		.loc 1 95 0
 584 0278 C046     		nop
 585 027a BD46     		mov	sp, r7
 586 027c 02B0     		add	sp, sp, #8
 587              		@ sp needed
 588 027e 80BD     		pop	{r7, pc}
 589              		.cfi_endproc
 590              	.LFE5:
 592              		.align	1
 593              		.global	set_object_vel
 594              		.syntax unified
 595              		.code	16
 596              		.thumb_func
 597              		.fpu softvfp
 599              	set_object_vel:
 600              	.LFB6:
  96:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  97:C:/Users/isake/Documents/Laboration5/Pong\object.c **** void set_object_vel(Object * object, int8_t vel_x, int8_t vel_y)
  98:C:/Users/isake/Documents/Laboration5/Pong\object.c **** {
 601              		.loc 1 98 0
 602              		.cfi_startproc
 603              		@ args = 0, pretend = 0, frame = 8
 604              		@ frame_needed = 1, uses_anonymous_args = 0
 605 0280 80B5     		push	{r7, lr}
 606              		.cfi_def_cfa_offset 8
 607              		.cfi_offset 7, -8
 608              		.cfi_offset 14, -4
 609 0282 82B0     		sub	sp, sp, #8
 610              		.cfi_def_cfa_offset 16
 611 0284 00AF     		add	r7, sp, #0
 612              		.cfi_def_cfa_register 7
 613 0286 7860     		str	r0, [r7, #4]
 614 0288 0800     		movs	r0, r1
 615 028a 1100     		movs	r1, r2
 616 028c FB1C     		adds	r3, r7, #3
 617 028e 021C     		adds	r2, r0, #0
 618 0290 1A70     		strb	r2, [r3]
 619 0292 BB1C     		adds	r3, r7, #2
 620 0294 0A1C     		adds	r2, r1, #0
 621 0296 1A70     		strb	r2, [r3]
  99:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	object->vel_x = vel_x;
 622              		.loc 1 99 0
 623 0298 7B68     		ldr	r3, [r7, #4]
 624 029a FA1C     		adds	r2, r7, #3
 625 029c 1278     		ldrb	r2, [r2]
 626 029e 9A71     		strb	r2, [r3, #6]
 100:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	object->vel_y = vel_y;
 627              		.loc 1 100 0
 628 02a0 7B68     		ldr	r3, [r7, #4]
 629 02a2 BA1C     		adds	r2, r7, #2
 630 02a4 1278     		ldrb	r2, [r2]
 631 02a6 DA71     		strb	r2, [r3, #7]
 101:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 632              		.loc 1 101 0
 633 02a8 C046     		nop
 634 02aa BD46     		mov	sp, r7
 635 02ac 02B0     		add	sp, sp, #8
 636              		@ sp needed
 637 02ae 80BD     		pop	{r7, pc}
 638              		.cfi_endproc
 639              	.LFE6:
 641              		.align	1
 642              		.global	create_ball
 643              		.syntax unified
 644              		.code	16
 645              		.thumb_func
 646              		.fpu softvfp
 648              	create_ball:
 649              	.LFB7:
 102:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
 103:C:/Users/isake/Documents/Laboration5/Pong\object.c **** Object create_ball(int8_t pos_x, int8_t pos_y, int8_t vel_x, int8_t vel_y) {
 650              		.loc 1 103 0
 651              		.cfi_startproc
 652              		@ args = 4, pretend = 0, frame = 8
 653              		@ frame_needed = 1, uses_anonymous_args = 0
 654 02b0 90B5     		push	{r4, r7, lr}
 655              		.cfi_def_cfa_offset 12
 656              		.cfi_offset 4, -12
 657              		.cfi_offset 7, -8
 658              		.cfi_offset 14, -4
 659 02b2 83B0     		sub	sp, sp, #12
 660              		.cfi_def_cfa_offset 24
 661 02b4 00AF     		add	r7, sp, #0
 662              		.cfi_def_cfa_register 7
 663 02b6 7860     		str	r0, [r7, #4]
 664 02b8 0C00     		movs	r4, r1
 665 02ba 1000     		movs	r0, r2
 666 02bc 1900     		movs	r1, r3
 667 02be FB1C     		adds	r3, r7, #3
 668 02c0 221C     		adds	r2, r4, #0
 669 02c2 1A70     		strb	r2, [r3]
 670 02c4 BB1C     		adds	r3, r7, #2
 671 02c6 021C     		adds	r2, r0, #0
 672 02c8 1A70     		strb	r2, [r3]
 673 02ca 7B1C     		adds	r3, r7, #1
 674 02cc 0A1C     		adds	r2, r1, #0
 675 02ce 1A70     		strb	r2, [r3]
 104:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	return (Object) {
 676              		.loc 1 104 0
 677 02d0 7B68     		ldr	r3, [r7, #4]
 678 02d2 114A     		ldr	r2, .L26
 679 02d4 1A60     		str	r2, [r3]
 680 02d6 7B68     		ldr	r3, [r7, #4]
 681 02d8 FA1C     		adds	r2, r7, #3
 682 02da 1278     		ldrb	r2, [r2]
 683 02dc 1A71     		strb	r2, [r3, #4]
 684 02de 7B68     		ldr	r3, [r7, #4]
 685 02e0 BA1C     		adds	r2, r7, #2
 686 02e2 1278     		ldrb	r2, [r2]
 687 02e4 5A71     		strb	r2, [r3, #5]
 688 02e6 7B68     		ldr	r3, [r7, #4]
 689 02e8 7A1C     		adds	r2, r7, #1
 690 02ea 1278     		ldrb	r2, [r2]
 691 02ec 9A71     		strb	r2, [r3, #6]
 692 02ee 7B68     		ldr	r3, [r7, #4]
 693 02f0 1822     		movs	r2, #24
 694 02f2 BA18     		adds	r2, r7, r2
 695 02f4 1278     		ldrb	r2, [r2]
 696 02f6 DA71     		strb	r2, [r3, #7]
 697 02f8 7B68     		ldr	r3, [r7, #4]
 698 02fa 084A     		ldr	r2, .L26+4
 699 02fc 9A60     		str	r2, [r3, #8]
 700 02fe 7B68     		ldr	r3, [r7, #4]
 701 0300 074A     		ldr	r2, .L26+8
 702 0302 DA60     		str	r2, [r3, #12]
 703 0304 7B68     		ldr	r3, [r7, #4]
 704 0306 074A     		ldr	r2, .L26+12
 705 0308 1A61     		str	r2, [r3, #16]
 706 030a 7B68     		ldr	r3, [r7, #4]
 707 030c 064A     		ldr	r2, .L26+16
 708 030e 5A61     		str	r2, [r3, #20]
 105:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	&geometry_ball,
 106:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	pos_x, pos_y,
 107:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	vel_x, vel_y,
 108:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	draw_object,
 109:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	clear_object,
 110:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	move_ball,
 111:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	set_object_vel
 112:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	};
 113:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 709              		.loc 1 113 0
 710 0310 7868     		ldr	r0, [r7, #4]
 711 0312 BD46     		mov	sp, r7
 712 0314 03B0     		add	sp, sp, #12
 713              		@ sp needed
 714 0316 90BD     		pop	{r4, r7, pc}
 715              	.L27:
 716              		.align	2
 717              	.L26:
 718 0318 00000000 		.word	geometry_ball
 719 031c 00000000 		.word	draw_object
 720 0320 00000000 		.word	clear_object
 721 0324 00000000 		.word	move_ball
 722 0328 00000000 		.word	set_object_vel
 723              		.cfi_endproc
 724              	.LFE7:
 726              		.align	1
 727              		.global	create_paddle
 728              		.syntax unified
 729              		.code	16
 730              		.thumb_func
 731              		.fpu softvfp
 733              	create_paddle:
 734              	.LFB8:
 114:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
 115:C:/Users/isake/Documents/Laboration5/Pong\object.c **** Object create_paddle(int8_t pos_x, int8_t pos_y, int8_t vel_x, int8_t vel_y) {
 735              		.loc 1 115 0
 736              		.cfi_startproc
 737              		@ args = 4, pretend = 0, frame = 8
 738              		@ frame_needed = 1, uses_anonymous_args = 0
 739 032c 90B5     		push	{r4, r7, lr}
 740              		.cfi_def_cfa_offset 12
 741              		.cfi_offset 4, -12
 742              		.cfi_offset 7, -8
 743              		.cfi_offset 14, -4
 744 032e 83B0     		sub	sp, sp, #12
 745              		.cfi_def_cfa_offset 24
 746 0330 00AF     		add	r7, sp, #0
 747              		.cfi_def_cfa_register 7
 748 0332 7860     		str	r0, [r7, #4]
 749 0334 0C00     		movs	r4, r1
 750 0336 1000     		movs	r0, r2
 751 0338 1900     		movs	r1, r3
 752 033a FB1C     		adds	r3, r7, #3
 753 033c 221C     		adds	r2, r4, #0
 754 033e 1A70     		strb	r2, [r3]
 755 0340 BB1C     		adds	r3, r7, #2
 756 0342 021C     		adds	r2, r0, #0
 757 0344 1A70     		strb	r2, [r3]
 758 0346 7B1C     		adds	r3, r7, #1
 759 0348 0A1C     		adds	r2, r1, #0
 760 034a 1A70     		strb	r2, [r3]
 116:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	return (Object) {
 761              		.loc 1 116 0
 762 034c 7B68     		ldr	r3, [r7, #4]
 763 034e 114A     		ldr	r2, .L30
 764 0350 1A60     		str	r2, [r3]
 765 0352 7B68     		ldr	r3, [r7, #4]
 766 0354 FA1C     		adds	r2, r7, #3
 767 0356 1278     		ldrb	r2, [r2]
 768 0358 1A71     		strb	r2, [r3, #4]
 769 035a 7B68     		ldr	r3, [r7, #4]
 770 035c BA1C     		adds	r2, r7, #2
 771 035e 1278     		ldrb	r2, [r2]
 772 0360 5A71     		strb	r2, [r3, #5]
 773 0362 7B68     		ldr	r3, [r7, #4]
 774 0364 7A1C     		adds	r2, r7, #1
 775 0366 1278     		ldrb	r2, [r2]
 776 0368 9A71     		strb	r2, [r3, #6]
 777 036a 7B68     		ldr	r3, [r7, #4]
 778 036c 1822     		movs	r2, #24
 779 036e BA18     		adds	r2, r7, r2
 780 0370 1278     		ldrb	r2, [r2]
 781 0372 DA71     		strb	r2, [r3, #7]
 782 0374 7B68     		ldr	r3, [r7, #4]
 783 0376 084A     		ldr	r2, .L30+4
 784 0378 9A60     		str	r2, [r3, #8]
 785 037a 7B68     		ldr	r3, [r7, #4]
 786 037c 074A     		ldr	r2, .L30+8
 787 037e DA60     		str	r2, [r3, #12]
 788 0380 7B68     		ldr	r3, [r7, #4]
 789 0382 074A     		ldr	r2, .L30+12
 790 0384 1A61     		str	r2, [r3, #16]
 791 0386 7B68     		ldr	r3, [r7, #4]
 792 0388 064A     		ldr	r2, .L30+16
 793 038a 5A61     		str	r2, [r3, #20]
 117:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	&geometry_paddle,
 118:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	pos_x, pos_y,
 119:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	vel_x, vel_y,
 120:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	draw_object,
 121:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	clear_object,
 122:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	move_object,
 123:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	set_object_vel
 124:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	};
 125:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }...
 794              		.loc 1 125 0
 795 038c 7868     		ldr	r0, [r7, #4]
 796 038e BD46     		mov	sp, r7
 797 0390 03B0     		add	sp, sp, #12
 798              		@ sp needed
 799 0392 90BD     		pop	{r4, r7, pc}
 800              	.L31:
 801              		.align	2
 802              	.L30:
 803 0394 00000000 		.word	geometry_paddle
 804 0398 00000000 		.word	draw_object
 805 039c 00000000 		.word	clear_object
 806 03a0 00000000 		.word	move_object
 807 03a4 00000000 		.word	set_object_vel
 808              		.cfi_endproc
 809              	.LFE8:
 811              	.Letext0:
 812              		.file 2 "include/intdef.h"
 813              		.file 3 "include/object.h"
 814              		.file 4 "include/GPIO.h"
 815              		.file 5 "include/graphicdisplay.h"
=======
  46:/home/oscar/GitHub/Pong/object.c **** 	
  47:/home/oscar/GitHub/Pong/object.c **** 	clear_object(object);
 298              		.loc 1 47 0
 299 00fc 7B68     		ldr	r3, [r7, #4]
 300 00fe 1800     		movs	r0, r3
 301 0100 FFF7FEFF 		bl	clear_object
  48:/home/oscar/GitHub/Pong/object.c **** 	
  49:/home/oscar/GitHub/Pong/object.c **** 	object->pos_x += object->vel_x;
 302              		.loc 1 49 0
 303 0104 7B68     		ldr	r3, [r7, #4]
 304 0106 1B79     		ldrb	r3, [r3, #4]
 305 0108 5BB2     		sxtb	r3, r3
 306 010a DAB2     		uxtb	r2, r3
 307 010c 7B68     		ldr	r3, [r7, #4]
 308 010e 9B79     		ldrb	r3, [r3, #6]
 309 0110 5BB2     		sxtb	r3, r3
 310 0112 DBB2     		uxtb	r3, r3
 311 0114 D318     		adds	r3, r2, r3
 312 0116 DBB2     		uxtb	r3, r3
 313 0118 5AB2     		sxtb	r2, r3
 314 011a 7B68     		ldr	r3, [r7, #4]
 315 011c 1A71     		strb	r2, [r3, #4]
  50:/home/oscar/GitHub/Pong/object.c **** 	object->pos_y += object->vel_y;
 316              		.loc 1 50 0
 317 011e 7B68     		ldr	r3, [r7, #4]
 318 0120 5B79     		ldrb	r3, [r3, #5]
 319 0122 5BB2     		sxtb	r3, r3
 320 0124 DAB2     		uxtb	r2, r3
 321 0126 7B68     		ldr	r3, [r7, #4]
 322 0128 DB79     		ldrb	r3, [r3, #7]
 323 012a 5BB2     		sxtb	r3, r3
 324 012c DBB2     		uxtb	r3, r3
 325 012e D318     		adds	r3, r2, r3
 326 0130 DBB2     		uxtb	r3, r3
 327 0132 5AB2     		sxtb	r2, r3
 328 0134 7B68     		ldr	r3, [r7, #4]
 329 0136 5A71     		strb	r2, [r3, #5]
  51:/home/oscar/GitHub/Pong/object.c **** 	
  52:/home/oscar/GitHub/Pong/object.c **** 	/* Om objektet i fråga är påväg över någon kant, skifta riktning */
  53:/home/oscar/GitHub/Pong/object.c **** 	if (!(0 <= object->pos_x && object->pos_x + object->geometry->width < LCD_WIDTH)) {
 330              		.loc 1 53 0
 331 0138 7B68     		ldr	r3, [r7, #4]
 332 013a 1B79     		ldrb	r3, [r3, #4]
 333 013c 5BB2     		sxtb	r3, r3
 334 013e 002B     		cmp	r3, #0
 335 0140 0BDB     		blt	.L8
 336              		.loc 1 53 0 is_stmt 0 discriminator 1
 337 0142 7B68     		ldr	r3, [r7, #4]
 338 0144 1B79     		ldrb	r3, [r3, #4]
 339 0146 5BB2     		sxtb	r3, r3
 340 0148 1A00     		movs	r2, r3
 341 014a 7B68     		ldr	r3, [r7, #4]
 342 014c 1B68     		ldr	r3, [r3]
 343 014e 5B78     		ldrb	r3, [r3, #1]
 344 0150 D318     		adds	r3, r2, r3
 345 0152 174A     		ldr	r2, .L12
 346 0154 1278     		ldrb	r2, [r2]
 347 0156 9342     		cmp	r3, r2
 348 0158 08DB     		blt	.L9
 349              	.L8:
  54:/home/oscar/GitHub/Pong/object.c **** 		object->vel_x *= -1;
 350              		.loc 1 54 0 is_stmt 1
 351 015a 7B68     		ldr	r3, [r7, #4]
 352 015c 9B79     		ldrb	r3, [r3, #6]
 353 015e 5BB2     		sxtb	r3, r3
 354 0160 DBB2     		uxtb	r3, r3
 355 0162 5B42     		rsbs	r3, r3, #0
 356 0164 DBB2     		uxtb	r3, r3
 357 0166 5AB2     		sxtb	r2, r3
 358 0168 7B68     		ldr	r3, [r7, #4]
 359 016a 9A71     		strb	r2, [r3, #6]
 360              	.L9:
  55:/home/oscar/GitHub/Pong/object.c **** 	}
  56:/home/oscar/GitHub/Pong/object.c **** 	
  57:/home/oscar/GitHub/Pong/object.c **** 	if (!(0 <= object->pos_y && object->pos_y + object->geometry->height < LCD_HEIGHT)) {
 361              		.loc 1 57 0
 362 016c 7B68     		ldr	r3, [r7, #4]
 363 016e 5B79     		ldrb	r3, [r3, #5]
 364 0170 5BB2     		sxtb	r3, r3
 365 0172 002B     		cmp	r3, #0
 366 0174 0BDB     		blt	.L10
 367              		.loc 1 57 0 is_stmt 0 discriminator 1
 368 0176 7B68     		ldr	r3, [r7, #4]
 369 0178 5B79     		ldrb	r3, [r3, #5]
 370 017a 5BB2     		sxtb	r3, r3
 371 017c 1A00     		movs	r2, r3
 372 017e 7B68     		ldr	r3, [r7, #4]
 373 0180 1B68     		ldr	r3, [r3]
 374 0182 9B78     		ldrb	r3, [r3, #2]
 375 0184 D318     		adds	r3, r2, r3
 376 0186 0B4A     		ldr	r2, .L12+4
 377 0188 1278     		ldrb	r2, [r2]
 378 018a 9342     		cmp	r3, r2
 379 018c 08DB     		blt	.L11
 380              	.L10:
  58:/home/oscar/GitHub/Pong/object.c **** 		object->vel_y *= -1;
 381              		.loc 1 58 0 is_stmt 1
 382 018e 7B68     		ldr	r3, [r7, #4]
 383 0190 DB79     		ldrb	r3, [r3, #7]
 384 0192 5BB2     		sxtb	r3, r3
 385 0194 DBB2     		uxtb	r3, r3
 386 0196 5B42     		rsbs	r3, r3, #0
 387 0198 DBB2     		uxtb	r3, r3
 388 019a 5AB2     		sxtb	r2, r3
 389 019c 7B68     		ldr	r3, [r7, #4]
 390 019e DA71     		strb	r2, [r3, #7]
 391              	.L11:
  59:/home/oscar/GitHub/Pong/object.c **** 	}
  60:/home/oscar/GitHub/Pong/object.c **** 	
  61:/home/oscar/GitHub/Pong/object.c **** 	draw_object(object);
 392              		.loc 1 61 0
 393 01a0 7B68     		ldr	r3, [r7, #4]
 394 01a2 1800     		movs	r0, r3
 395 01a4 FFF7FEFF 		bl	draw_object
  62:/home/oscar/GitHub/Pong/object.c **** 	
  63:/home/oscar/GitHub/Pong/object.c **** }
 396              		.loc 1 63 0
 397 01a8 C046     		nop
 398 01aa BD46     		mov	sp, r7
 399 01ac 02B0     		add	sp, sp, #8
 400              		@ sp needed
 401 01ae 80BD     		pop	{r7, pc}
 402              	.L13:
 403              		.align	2
 404              	.L12:
 405 01b0 00000000 		.word	LCD_WIDTH
 406 01b4 00000000 		.word	LCD_HEIGHT
 407              		.cfi_endproc
 408              	.LFE2:
 410              		.align	1
 411              		.global	set_object_vel
 412              		.syntax unified
 413              		.code	16
 414              		.thumb_func
 415              		.fpu softvfp
 417              	set_object_vel:
 418              	.LFB3:
  64:/home/oscar/GitHub/Pong/object.c **** 
  65:/home/oscar/GitHub/Pong/object.c **** void set_object_vel(Object * object, int8_t vel_x, int8_t vel_y)
  66:/home/oscar/GitHub/Pong/object.c **** {
 419              		.loc 1 66 0
 420              		.cfi_startproc
 421              		@ args = 0, pretend = 0, frame = 8
 422              		@ frame_needed = 1, uses_anonymous_args = 0
 423 01b8 80B5     		push	{r7, lr}
 424              		.cfi_def_cfa_offset 8
 425              		.cfi_offset 7, -8
 426              		.cfi_offset 14, -4
 427 01ba 82B0     		sub	sp, sp, #8
 428              		.cfi_def_cfa_offset 16
 429 01bc 00AF     		add	r7, sp, #0
 430              		.cfi_def_cfa_register 7
 431 01be 7860     		str	r0, [r7, #4]
 432 01c0 0800     		movs	r0, r1
 433 01c2 1100     		movs	r1, r2
 434 01c4 FB1C     		adds	r3, r7, #3
 435 01c6 021C     		adds	r2, r0, #0
 436 01c8 1A70     		strb	r2, [r3]
 437 01ca BB1C     		adds	r3, r7, #2
 438 01cc 0A1C     		adds	r2, r1, #0
 439 01ce 1A70     		strb	r2, [r3]
  67:/home/oscar/GitHub/Pong/object.c **** 	object->vel_x = vel_x;
 440              		.loc 1 67 0
 441 01d0 7B68     		ldr	r3, [r7, #4]
 442 01d2 FA1C     		adds	r2, r7, #3
 443 01d4 1278     		ldrb	r2, [r2]
 444 01d6 9A71     		strb	r2, [r3, #6]
  68:/home/oscar/GitHub/Pong/object.c **** 	object->vel_y = vel_y;
 445              		.loc 1 68 0
 446 01d8 7B68     		ldr	r3, [r7, #4]
 447 01da BA1C     		adds	r2, r7, #2
 448 01dc 1278     		ldrb	r2, [r2]
 449 01de DA71     		strb	r2, [r3, #7]
  69:/home/oscar/GitHub/Pong/object.c **** }
 450              		.loc 1 69 0
 451 01e0 C046     		nop
 452 01e2 BD46     		mov	sp, r7
 453 01e4 02B0     		add	sp, sp, #8
 454              		@ sp needed
 455 01e6 80BD     		pop	{r7, pc}
 456              		.cfi_endproc
 457              	.LFE3:
 459              		.align	1
 460              		.global	create_ball
 461              		.syntax unified
 462              		.code	16
 463              		.thumb_func
 464              		.fpu softvfp
 466              	create_ball:
 467              	.LFB4:
  70:/home/oscar/GitHub/Pong/object.c **** 
  71:/home/oscar/GitHub/Pong/object.c **** Object create_ball(int8_t pos_x, int8_t pos_y, int8_t vel_x, int8_t vel_y) {
 468              		.loc 1 71 0
 469              		.cfi_startproc
 470              		@ args = 4, pretend = 0, frame = 8
 471              		@ frame_needed = 1, uses_anonymous_args = 0
 472 01e8 90B5     		push	{r4, r7, lr}
 473              		.cfi_def_cfa_offset 12
 474              		.cfi_offset 4, -12
 475              		.cfi_offset 7, -8
 476              		.cfi_offset 14, -4
 477 01ea 83B0     		sub	sp, sp, #12
 478              		.cfi_def_cfa_offset 24
 479 01ec 00AF     		add	r7, sp, #0
 480              		.cfi_def_cfa_register 7
 481 01ee 7860     		str	r0, [r7, #4]
 482 01f0 0C00     		movs	r4, r1
 483 01f2 1000     		movs	r0, r2
 484 01f4 1900     		movs	r1, r3
 485 01f6 FB1C     		adds	r3, r7, #3
 486 01f8 221C     		adds	r2, r4, #0
 487 01fa 1A70     		strb	r2, [r3]
 488 01fc BB1C     		adds	r3, r7, #2
 489 01fe 021C     		adds	r2, r0, #0
 490 0200 1A70     		strb	r2, [r3]
 491 0202 7B1C     		adds	r3, r7, #1
 492 0204 0A1C     		adds	r2, r1, #0
 493 0206 1A70     		strb	r2, [r3]
  72:/home/oscar/GitHub/Pong/object.c **** 	return (Object) {
 494              		.loc 1 72 0
 495 0208 7B68     		ldr	r3, [r7, #4]
 496 020a 114A     		ldr	r2, .L17
 497 020c 1A60     		str	r2, [r3]
 498 020e 7B68     		ldr	r3, [r7, #4]
 499 0210 FA1C     		adds	r2, r7, #3
 500 0212 1278     		ldrb	r2, [r2]
 501 0214 1A71     		strb	r2, [r3, #4]
 502 0216 7B68     		ldr	r3, [r7, #4]
 503 0218 BA1C     		adds	r2, r7, #2
 504 021a 1278     		ldrb	r2, [r2]
 505 021c 5A71     		strb	r2, [r3, #5]
 506 021e 7B68     		ldr	r3, [r7, #4]
 507 0220 7A1C     		adds	r2, r7, #1
 508 0222 1278     		ldrb	r2, [r2]
 509 0224 9A71     		strb	r2, [r3, #6]
 510 0226 7B68     		ldr	r3, [r7, #4]
 511 0228 1822     		movs	r2, #24
 512 022a BA18     		adds	r2, r7, r2
 513 022c 1278     		ldrb	r2, [r2]
 514 022e DA71     		strb	r2, [r3, #7]
 515 0230 7B68     		ldr	r3, [r7, #4]
 516 0232 084A     		ldr	r2, .L17+4
 517 0234 9A60     		str	r2, [r3, #8]
 518 0236 7B68     		ldr	r3, [r7, #4]
 519 0238 074A     		ldr	r2, .L17+8
 520 023a DA60     		str	r2, [r3, #12]
 521 023c 7B68     		ldr	r3, [r7, #4]
 522 023e 074A     		ldr	r2, .L17+12
 523 0240 1A61     		str	r2, [r3, #16]
 524 0242 7B68     		ldr	r3, [r7, #4]
 525 0244 064A     		ldr	r2, .L17+16
 526 0246 5A61     		str	r2, [r3, #20]
  73:/home/oscar/GitHub/Pong/object.c **** 	&geometry_ball,
  74:/home/oscar/GitHub/Pong/object.c **** 	pos_x, pos_y,
  75:/home/oscar/GitHub/Pong/object.c **** 	vel_x, vel_y,
  76:/home/oscar/GitHub/Pong/object.c **** 	draw_object,
  77:/home/oscar/GitHub/Pong/object.c **** 	clear_object,
  78:/home/oscar/GitHub/Pong/object.c **** 	move_object,
  79:/home/oscar/GitHub/Pong/object.c **** 	set_object_vel
  80:/home/oscar/GitHub/Pong/object.c **** 	};
  81:/home/oscar/GitHub/Pong/object.c **** }
 527              		.loc 1 81 0
 528 0248 7868     		ldr	r0, [r7, #4]
 529 024a BD46     		mov	sp, r7
 530 024c 03B0     		add	sp, sp, #12
 531              		@ sp needed
 532 024e 90BD     		pop	{r4, r7, pc}
 533              	.L18:
 534              		.align	2
 535              	.L17:
 536 0250 00000000 		.word	geometry_ball
 537 0254 00000000 		.word	draw_object
 538 0258 00000000 		.word	clear_object
 539 025c 00000000 		.word	move_object
 540 0260 00000000 		.word	set_object_vel
 541              		.cfi_endproc
 542              	.LFE4:
 544              		.align	1
 545              		.global	create_paddle
 546              		.syntax unified
 547              		.code	16
 548              		.thumb_func
 549              		.fpu softvfp
 551              	create_paddle:
 552              	.LFB5:
  82:/home/oscar/GitHub/Pong/object.c **** 
  83:/home/oscar/GitHub/Pong/object.c **** Object create_paddle(int8_t pos_x, int8_t pos_y, int8_t vel_x, int8_t vel_y) {
 553              		.loc 1 83 0
 554              		.cfi_startproc
 555              		@ args = 4, pretend = 0, frame = 8
 556              		@ frame_needed = 1, uses_anonymous_args = 0
 557 0264 90B5     		push	{r4, r7, lr}
 558              		.cfi_def_cfa_offset 12
 559              		.cfi_offset 4, -12
 560              		.cfi_offset 7, -8
 561              		.cfi_offset 14, -4
 562 0266 83B0     		sub	sp, sp, #12
 563              		.cfi_def_cfa_offset 24
 564 0268 00AF     		add	r7, sp, #0
 565              		.cfi_def_cfa_register 7
 566 026a 7860     		str	r0, [r7, #4]
 567 026c 0C00     		movs	r4, r1
 568 026e 1000     		movs	r0, r2
 569 0270 1900     		movs	r1, r3
 570 0272 FB1C     		adds	r3, r7, #3
 571 0274 221C     		adds	r2, r4, #0
 572 0276 1A70     		strb	r2, [r3]
 573 0278 BB1C     		adds	r3, r7, #2
 574 027a 021C     		adds	r2, r0, #0
 575 027c 1A70     		strb	r2, [r3]
 576 027e 7B1C     		adds	r3, r7, #1
 577 0280 0A1C     		adds	r2, r1, #0
 578 0282 1A70     		strb	r2, [r3]
  84:/home/oscar/GitHub/Pong/object.c **** 	return (Object) {
 579              		.loc 1 84 0
 580 0284 7B68     		ldr	r3, [r7, #4]
 581 0286 114A     		ldr	r2, .L21
 582 0288 1A60     		str	r2, [r3]
 583 028a 7B68     		ldr	r3, [r7, #4]
 584 028c FA1C     		adds	r2, r7, #3
 585 028e 1278     		ldrb	r2, [r2]
 586 0290 1A71     		strb	r2, [r3, #4]
 587 0292 7B68     		ldr	r3, [r7, #4]
 588 0294 BA1C     		adds	r2, r7, #2
 589 0296 1278     		ldrb	r2, [r2]
 590 0298 5A71     		strb	r2, [r3, #5]
 591 029a 7B68     		ldr	r3, [r7, #4]
 592 029c 7A1C     		adds	r2, r7, #1
 593 029e 1278     		ldrb	r2, [r2]
 594 02a0 9A71     		strb	r2, [r3, #6]
 595 02a2 7B68     		ldr	r3, [r7, #4]
 596 02a4 1822     		movs	r2, #24
 597 02a6 BA18     		adds	r2, r7, r2
 598 02a8 1278     		ldrb	r2, [r2]
 599 02aa DA71     		strb	r2, [r3, #7]
 600 02ac 7B68     		ldr	r3, [r7, #4]
 601 02ae 084A     		ldr	r2, .L21+4
 602 02b0 9A60     		str	r2, [r3, #8]
 603 02b2 7B68     		ldr	r3, [r7, #4]
 604 02b4 074A     		ldr	r2, .L21+8
 605 02b6 DA60     		str	r2, [r3, #12]
 606 02b8 7B68     		ldr	r3, [r7, #4]
 607 02ba 074A     		ldr	r2, .L21+12
 608 02bc 1A61     		str	r2, [r3, #16]
 609 02be 7B68     		ldr	r3, [r7, #4]
 610 02c0 064A     		ldr	r2, .L21+16
 611 02c2 5A61     		str	r2, [r3, #20]
  85:/home/oscar/GitHub/Pong/object.c **** 	&geometry_paddle,
  86:/home/oscar/GitHub/Pong/object.c **** 	pos_x, pos_y,
  87:/home/oscar/GitHub/Pong/object.c **** 	vel_x, vel_y,
  88:/home/oscar/GitHub/Pong/object.c **** 	draw_object,
  89:/home/oscar/GitHub/Pong/object.c **** 	clear_object,
  90:/home/oscar/GitHub/Pong/object.c **** 	move_object,
  91:/home/oscar/GitHub/Pong/object.c **** 	set_object_vel
  92:/home/oscar/GitHub/Pong/object.c **** 	};
  93:/home/oscar/GitHub/Pong/object.c **** }...
 612              		.loc 1 93 0
 613 02c4 7868     		ldr	r0, [r7, #4]
 614 02c6 BD46     		mov	sp, r7
 615 02c8 03B0     		add	sp, sp, #12
 616              		@ sp needed
 617 02ca 90BD     		pop	{r4, r7, pc}
 618              	.L22:
 619              		.align	2
 620              	.L21:
 621 02cc 00000000 		.word	geometry_paddle
 622 02d0 00000000 		.word	draw_object
 623 02d4 00000000 		.word	clear_object
 624 02d8 00000000 		.word	move_object
 625 02dc 00000000 		.word	set_object_vel
 626              		.cfi_endproc
 627              	.LFE5:
 629              	.Letext0:
 630              		.file 2 "include/intdef.h"
 631              		.file 3 "include/object.h"
 632              		.file 4 "include/GPIO.h"
 633              		.file 5 "include/delay.h"
 634              		.file 6 "include/graphicdisplay.h"
>>>>>>> Stashed changes
=======
  19              	LCD_PAGES:
  20 0000 08       		.byte	8
  21              		.global	LCD_ADDS
  24              	LCD_ADDS:
  25 0001 40       		.byte	64
  26              		.global	LCD_WIDTH
  29              	LCD_WIDTH:
  30 0002 80       		.byte	-128
  31              		.global	LCD_HEIGHT
  34              	LCD_HEIGHT:
  35 0003 40       		.byte	64
  36              		.bss
  37              		.align	2
  38              	buffer:
  39 0000 00000000 		.space	2048
  39      00000000 
  39      00000000 
  39      00000000 
  39      00000000 
  41              		.text
  42              		.align	1
  43              		.syntax unified
  44              		.code	16
  45              		.thumb_func
  46              		.fpu softvfp
  48              	graphic_ctrl_bit_set:
  49              	.LFB0:
  50              		.file 1 "/home/oscar/GitHub/Pong/graphicdisplay.c"
   1:/home/oscar/GitHub/Pong/graphicdisplay.c **** /*
   2:/home/oscar/GitHub/Pong/graphicdisplay.c ****  * 	display.h
   3:/home/oscar/GitHub/Pong/graphicdisplay.c ****  *
   4:/home/oscar/GitHub/Pong/graphicdisplay.c ****  */
   5:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
   6:/home/oscar/GitHub/Pong/graphicdisplay.c **** #include "graphicdisplay.h"
   7:/home/oscar/GitHub/Pong/graphicdisplay.c **** #include <stdbool.h>
   8:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
   9:/home/oscar/GitHub/Pong/graphicdisplay.c **** enum {
  10:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
  11:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	B_E = 64, /* Enable signal */
  12:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	B_RESET = 32, /* Reset signal */
  13:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	B_CS2 = 16, /* Välj högra grafiska displayen */
  14:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	B_CS1 = 8, /* Välj vänstra grafiska displayen */
  15:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	B_SELECT = 4, /* 0 = Grafisk display, 1 = ASCII-display */
  16:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	B_RW = 2, /* 0 = Write, 1 = Read */
  17:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	B_RS = 1 /* 0 = Control, 1 = Data */
  18:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
  19:/home/oscar/GitHub/Pong/graphicdisplay.c **** };
  20:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
  21:/home/oscar/GitHub/Pong/graphicdisplay.c **** enum {
  22:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
  23:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	LCD_ON = 0x3F,
  24:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	LCD_OFF = 0x3E,
  25:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	LCD_SET_ADD = 0x40,
  26:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	LCD_SET_PAGE = 0xB8,
  27:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	LCD_DISPLAY_START = 0xC0,
  28:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	LCD_BUSY = 0x80 /* Värdet som skall finnas i registret då displayen är upptagen */
  29:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
  30:/home/oscar/GitHub/Pong/graphicdisplay.c **** };
  31:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
  32:/home/oscar/GitHub/Pong/graphicdisplay.c **** const uint8_t LCD_PAGES = 8; /* Antalet pages, y-koordinater */
  33:/home/oscar/GitHub/Pong/graphicdisplay.c **** const uint8_t LCD_ADDS = 64; /* Antalet addresses, x-koorinater */
  34:/home/oscar/GitHub/Pong/graphicdisplay.c **** const uint8_t LCD_WIDTH = 128; /* Antalet pixlar på bredden */
  35:/home/oscar/GitHub/Pong/graphicdisplay.c **** const uint8_t LCD_HEIGHT = 64; /* Antalet pixlar på höjden */	
  36:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
  37:/home/oscar/GitHub/Pong/graphicdisplay.c **** static BBuffer buffer;
  38:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
  39:/home/oscar/GitHub/Pong/graphicdisplay.c **** /* Adressera grafisk display och ettställ de bitar som är 1 i x */
  40:/home/oscar/GitHub/Pong/graphicdisplay.c **** static void graphic_ctrl_bit_set(uint8_t x)
  41:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
  51              		.loc 1 41 0
  52              		.cfi_startproc
  53              		@ args = 0, pretend = 0, frame = 16
  54              		@ frame_needed = 1, uses_anonymous_args = 0
  55 0000 80B5     		push	{r7, lr}
  56              		.cfi_def_cfa_offset 8
  57              		.cfi_offset 7, -8
  58              		.cfi_offset 14, -4
  59 0002 84B0     		sub	sp, sp, #16
  60              		.cfi_def_cfa_offset 24
  61 0004 00AF     		add	r7, sp, #0
  62              		.cfi_def_cfa_register 7
  63 0006 0200     		movs	r2, r0
  64 0008 FB1D     		adds	r3, r7, #7
  65 000a 1A70     		strb	r2, [r3]
  42:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	uint8_t c = GPIO_E->ODR_LOW;
  66              		.loc 1 42 0
  67 000c 0D4B     		ldr	r3, .L2
  68 000e 1A68     		ldr	r2, [r3]
  69 0010 0F21     		movs	r1, #15
  70 0012 7B18     		adds	r3, r7, r1
  71 0014 127D     		ldrb	r2, [r2, #20]
  72 0016 1A70     		strb	r2, [r3]
  43:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	c |= (x & ~B_SELECT);
  73              		.loc 1 43 0
  74 0018 FB1D     		adds	r3, r7, #7
  75 001a 1B78     		ldrb	r3, [r3]
  76 001c 5BB2     		sxtb	r3, r3
  77 001e 0422     		movs	r2, #4
  78 0020 9343     		bics	r3, r2
  79 0022 5AB2     		sxtb	r2, r3
  80 0024 7B18     		adds	r3, r7, r1
  81 0026 1B78     		ldrb	r3, [r3]
  82 0028 5BB2     		sxtb	r3, r3
  83 002a 1343     		orrs	r3, r2
  84 002c 5AB2     		sxtb	r2, r3
  85 002e 7B18     		adds	r3, r7, r1
  86 0030 1A70     		strb	r2, [r3]
  44:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	GPIO_E->ODR_LOW = c;
  87              		.loc 1 44 0
  88 0032 044B     		ldr	r3, .L2
  89 0034 1B68     		ldr	r3, [r3]
  90 0036 7A18     		adds	r2, r7, r1
  91 0038 1278     		ldrb	r2, [r2]
  92 003a 1A75     		strb	r2, [r3, #20]
  45:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
  93              		.loc 1 45 0
  94 003c C046     		nop
  95 003e BD46     		mov	sp, r7
  96 0040 04B0     		add	sp, sp, #16
  97              		@ sp needed
  98 0042 80BD     		pop	{r7, pc}
  99              	.L3:
 100              		.align	2
 101              	.L2:
 102 0044 00000000 		.word	GPIO_E
 103              		.cfi_endproc
 104              	.LFE0:
 106              		.align	1
 107              		.syntax unified
 108              		.code	16
 109              		.thumb_func
 110              		.fpu softvfp
 112              	graphic_ctrl_bit_clear:
 113              	.LFB1:
  46:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
  47:/home/oscar/GitHub/Pong/graphicdisplay.c **** /* Adressera grfisk display och nollställ de bitar som är 1 i x */
  48:/home/oscar/GitHub/Pong/graphicdisplay.c **** static void graphic_ctrl_bit_clear(uint8_t x)
  49:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
 114              		.loc 1 49 0
 115              		.cfi_startproc
 116              		@ args = 0, pretend = 0, frame = 16
 117              		@ frame_needed = 1, uses_anonymous_args = 0
 118 0048 80B5     		push	{r7, lr}
 119              		.cfi_def_cfa_offset 8
 120              		.cfi_offset 7, -8
 121              		.cfi_offset 14, -4
 122 004a 84B0     		sub	sp, sp, #16
 123              		.cfi_def_cfa_offset 24
 124 004c 00AF     		add	r7, sp, #0
 125              		.cfi_def_cfa_register 7
 126 004e 0200     		movs	r2, r0
 127 0050 FB1D     		adds	r3, r7, #7
 128 0052 1A70     		strb	r2, [r3]
  50:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	uint8_t c = GPIO_E->ODR_LOW;
 129              		.loc 1 50 0
 130 0054 104B     		ldr	r3, .L5
 131 0056 1A68     		ldr	r2, [r3]
 132 0058 0F21     		movs	r1, #15
 133 005a 7B18     		adds	r3, r7, r1
 134 005c 127D     		ldrb	r2, [r2, #20]
 135 005e 1A70     		strb	r2, [r3]
  51:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	c &= ~x;
 136              		.loc 1 51 0
 137 0060 FB1D     		adds	r3, r7, #7
 138 0062 1B78     		ldrb	r3, [r3]
 139 0064 5BB2     		sxtb	r3, r3
 140 0066 DB43     		mvns	r3, r3
 141 0068 5BB2     		sxtb	r3, r3
 142 006a 7A18     		adds	r2, r7, r1
 143 006c 1278     		ldrb	r2, [r2]
 144 006e 52B2     		sxtb	r2, r2
 145 0070 1340     		ands	r3, r2
 146 0072 5AB2     		sxtb	r2, r3
 147 0074 7B18     		adds	r3, r7, r1
 148 0076 1A70     		strb	r2, [r3]
  52:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	c &= ~B_SELECT;
 149              		.loc 1 52 0
 150 0078 7B18     		adds	r3, r7, r1
 151 007a 0800     		movs	r0, r1
 152 007c 7A18     		adds	r2, r7, r1
 153 007e 1278     		ldrb	r2, [r2]
 154 0080 0421     		movs	r1, #4
 155 0082 8A43     		bics	r2, r1
 156 0084 1A70     		strb	r2, [r3]
  53:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	GPIO_E->ODR_LOW = c;
 157              		.loc 1 53 0
 158 0086 044B     		ldr	r3, .L5
 159 0088 1B68     		ldr	r3, [r3]
 160 008a 3A18     		adds	r2, r7, r0
 161 008c 1278     		ldrb	r2, [r2]
 162 008e 1A75     		strb	r2, [r3, #20]
  54:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
 163              		.loc 1 54 0
 164 0090 C046     		nop
 165 0092 BD46     		mov	sp, r7
 166 0094 04B0     		add	sp, sp, #16
 167              		@ sp needed
 168 0096 80BD     		pop	{r7, pc}
 169              	.L6:
 170              		.align	2
 171              	.L5:
 172 0098 00000000 		.word	GPIO_E
 173              		.cfi_endproc
 174              	.LFE1:
 176              		.align	1
 177              		.syntax unified
 178              		.code	16
 179              		.thumb_func
 180              		.fpu softvfp
 182              	graphic_select_controller:
 183              	.LFB2:
  55:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
  56:/home/oscar/GitHub/Pong/graphicdisplay.c **** static void graphic_select_controller(uint8_t controller)
  57:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
 184              		.loc 1 57 0
 185              		.cfi_startproc
 186              		@ args = 0, pretend = 0, frame = 8
 187              		@ frame_needed = 1, uses_anonymous_args = 0
 188 009c 80B5     		push	{r7, lr}
 189              		.cfi_def_cfa_offset 8
 190              		.cfi_offset 7, -8
 191              		.cfi_offset 14, -4
 192 009e 82B0     		sub	sp, sp, #8
 193              		.cfi_def_cfa_offset 16
 194 00a0 00AF     		add	r7, sp, #0
 195              		.cfi_def_cfa_register 7
 196 00a2 0200     		movs	r2, r0
 197 00a4 FB1D     		adds	r3, r7, #7
 198 00a6 1A70     		strb	r2, [r3]
  58:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	switch (controller)
 199              		.loc 1 58 0
 200 00a8 FB1D     		adds	r3, r7, #7
 201 00aa 1B78     		ldrb	r3, [r3]
 202 00ac 082B     		cmp	r3, #8
 203 00ae 0CD0     		beq	.L9
 204 00b0 02DC     		bgt	.L10
 205 00b2 002B     		cmp	r3, #0
 206 00b4 05D0     		beq	.L11
  59:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	{
  60:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		case 0:
  61:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS1 | B_CS2); /* Nollställer B_CS1 och B_CS2 */
  62:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			break;
  63:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
  64:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		case B_CS1:
  65:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS1); /* Ettställer B_CS1 */
  66:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS2); /* Nollställer B_CS2 */
  67:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			break;
  68:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
  69:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		case B_CS2:
  70:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS1); /* Nollställer B_CS1 */
  71:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS2); /* Ettställer B_CS2 */
  72:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			break;
  73:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
  74:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		case B_CS1 | B_CS2:
  75:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS1 | B_CS2); /* Ettställer B_CS1 och B_CS2 */
  76:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			break;
  77:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
  78:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
 207              		.loc 1 78 0
 208 00b6 1AE0     		b	.L14
 209              	.L10:
  58:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	switch (controller)
 210              		.loc 1 58 0
 211 00b8 102B     		cmp	r3, #16
 212 00ba 0DD0     		beq	.L12
 213 00bc 182B     		cmp	r3, #24
 214 00be 12D0     		beq	.L13
 215              		.loc 1 78 0
 216 00c0 15E0     		b	.L14
 217              	.L11:
  61:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			break;
 218              		.loc 1 61 0
 219 00c2 1820     		movs	r0, #24
 220 00c4 FFF7C0FF 		bl	graphic_ctrl_bit_clear
  62:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 221              		.loc 1 62 0
 222 00c8 11E0     		b	.L8
 223              	.L9:
  65:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS2); /* Nollställer B_CS2 */
 224              		.loc 1 65 0
 225 00ca 0820     		movs	r0, #8
 226 00cc FFF798FF 		bl	graphic_ctrl_bit_set
  66:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			break;
 227              		.loc 1 66 0
 228 00d0 1020     		movs	r0, #16
 229 00d2 FFF7B9FF 		bl	graphic_ctrl_bit_clear
  67:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 230              		.loc 1 67 0
 231 00d6 0AE0     		b	.L8
 232              	.L12:
  70:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS2); /* Ettställer B_CS2 */
 233              		.loc 1 70 0
 234 00d8 0820     		movs	r0, #8
 235 00da FFF7B5FF 		bl	graphic_ctrl_bit_clear
  71:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			break;
 236              		.loc 1 71 0
 237 00de 1020     		movs	r0, #16
 238 00e0 FFF78EFF 		bl	graphic_ctrl_bit_set
  72:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 239              		.loc 1 72 0
 240 00e4 03E0     		b	.L8
 241              	.L13:
  75:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			break;
 242              		.loc 1 75 0
 243 00e6 1820     		movs	r0, #24
 244 00e8 FFF78AFF 		bl	graphic_ctrl_bit_set
  76:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 245              		.loc 1 76 0
 246 00ec C046     		nop
 247              	.L8:
 248              	.L14:
 249              		.loc 1 78 0
 250 00ee C046     		nop
 251 00f0 BD46     		mov	sp, r7
 252 00f2 02B0     		add	sp, sp, #8
 253              		@ sp needed
 254 00f4 80BD     		pop	{r7, pc}
 255              		.cfi_endproc
 256              	.LFE2:
 258              		.align	1
 259              		.syntax unified
 260              		.code	16
 261              		.thumb_func
 262              		.fpu softvfp
 264              	graphic_wait_ready:
 265              	.LFB3:
  79:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
  80:/home/oscar/GitHub/Pong/graphicdisplay.c **** static void graphic_wait_ready()
  81:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
 266              		.loc 1 81 0
 267              		.cfi_startproc
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 1, uses_anonymous_args = 0
 270 00f6 80B5     		push	{r7, lr}
 271              		.cfi_def_cfa_offset 8
 272              		.cfi_offset 7, -8
 273              		.cfi_offset 14, -4
 274 00f8 00AF     		add	r7, sp, #0
 275              		.cfi_def_cfa_register 7
  82:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
 276              		.loc 1 82 0
 277 00fa 4020     		movs	r0, #64
 278 00fc FFF7A4FF 		bl	graphic_ctrl_bit_clear
  83:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	GPIO_E->MODER = 0x00005555; /* Sätter bitar 15-8 till inport och bitar 7-0 till utport */
 279              		.loc 1 83 0
 280 0100 154B     		ldr	r3, .L21
 281 0102 1B68     		ldr	r3, [r3]
 282 0104 154A     		ldr	r2, .L21+4
 283 0106 1A60     		str	r2, [r3]
  84:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS); /* Nollställer B_RS */
 284              		.loc 1 84 0
 285 0108 0120     		movs	r0, #1
 286 010a FFF79DFF 		bl	graphic_ctrl_bit_clear
  85:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RW); /* Ettställer RW */
 287              		.loc 1 85 0
 288 010e 0220     		movs	r0, #2
 289 0110 FFF776FF 		bl	graphic_ctrl_bit_set
  86:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	delay_500ns();
 290              		.loc 1 86 0
 291 0114 FFF7FEFF 		bl	delay_500ns
 292              	.L18:
  87:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	/* Väntar nu på att den grafiska displayen skall blir klar */
  88:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	while(1) {
  89:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
 293              		.loc 1 89 0
 294 0118 4020     		movs	r0, #64
 295 011a FFF771FF 		bl	graphic_ctrl_bit_set
  90:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		delay_500ns();
 296              		.loc 1 90 0
 297 011e FFF7FEFF 		bl	delay_500ns
  91:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
 298              		.loc 1 91 0
 299 0122 4020     		movs	r0, #64
 300 0124 FFF790FF 		bl	graphic_ctrl_bit_clear
  92:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		delay_500ns();
 301              		.loc 1 92 0
 302 0128 FFF7FEFF 		bl	delay_500ns
  93:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		if ((GPIO_E->IDR_HIGH & LCD_BUSY) != LCD_BUSY) {
 303              		.loc 1 93 0
 304 012c 0A4B     		ldr	r3, .L21
 305 012e 1B68     		ldr	r3, [r3]
 306 0130 5B7C     		ldrb	r3, [r3, #17]
 307 0132 DBB2     		uxtb	r3, r3
 308 0134 1A00     		movs	r2, r3
 309 0136 8023     		movs	r3, #128
 310 0138 1340     		ands	r3, r2
 311 013a 802B     		cmp	r3, #128
 312 013c 00D1     		bne	.L20
  89:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		delay_500ns();
 313              		.loc 1 89 0
 314 013e EBE7     		b	.L18
 315              	.L20:
  94:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			break;
 316              		.loc 1 94 0
 317 0140 C046     		nop
  95:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		}
  96:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
  97:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
  98:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
 318              		.loc 1 98 0
 319 0142 4020     		movs	r0, #64
 320 0144 FFF75CFF 		bl	graphic_ctrl_bit_set
  99:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	GPIO_E->MODER = 0x55555555; /* Sätter samtliga bitar till utport */
 321              		.loc 1 99 0
 322 0148 034B     		ldr	r3, .L21
 323 014a 1B68     		ldr	r3, [r3]
 324 014c 044A     		ldr	r2, .L21+8
 325 014e 1A60     		str	r2, [r3]
 100:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
 326              		.loc 1 100 0
 327 0150 C046     		nop
 328 0152 BD46     		mov	sp, r7
 329              		@ sp needed
 330 0154 80BD     		pop	{r7, pc}
 331              	.L22:
 332 0156 C046     		.align	2
 333              	.L21:
 334 0158 00000000 		.word	GPIO_E
 335 015c 55550000 		.word	21845
 336 0160 55555555 		.word	1431655765
 337              		.cfi_endproc
 338              	.LFE3:
 340              		.align	1
 341              		.syntax unified
 342              		.code	16
 343              		.thumb_func
 344              		.fpu softvfp
 346              	graphic_read:
 347              	.LFB4:
 101:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 102:/home/oscar/GitHub/Pong/graphicdisplay.c **** static uint8_t graphic_read(uint8_t controller)
 103:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
 348              		.loc 1 103 0
 349              		.cfi_startproc
 350              		@ args = 0, pretend = 0, frame = 16
 351              		@ frame_needed = 1, uses_anonymous_args = 0
 352 0164 80B5     		push	{r7, lr}
 353              		.cfi_def_cfa_offset 8
 354              		.cfi_offset 7, -8
 355              		.cfi_offset 14, -4
 356 0166 84B0     		sub	sp, sp, #16
 357              		.cfi_def_cfa_offset 24
 358 0168 00AF     		add	r7, sp, #0
 359              		.cfi_def_cfa_register 7
 360 016a 0200     		movs	r2, r0
 361 016c FB1D     		adds	r3, r7, #7
 362 016e 1A70     		strb	r2, [r3]
 104:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
 363              		.loc 1 104 0
 364 0170 4020     		movs	r0, #64
 365 0172 FFF769FF 		bl	graphic_ctrl_bit_clear
 105:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	GPIO_E->MODER = 0x00005555; /* Sätter bitar 15-8 till inport och bitar 7-0 till utport */
 366              		.loc 1 105 0
 367 0176 1C4B     		ldr	r3, .L27
 368 0178 1B68     		ldr	r3, [r3]
 369 017a 1C4A     		ldr	r2, .L27+4
 370 017c 1A60     		str	r2, [r3]
 106:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS | B_RW); /* Ettställer B_RS och B_RW */
 371              		.loc 1 106 0
 372 017e 0320     		movs	r0, #3
 373 0180 FFF73EFF 		bl	graphic_ctrl_bit_set
 107:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_select_controller(controller); /* Väljer CS1, CS2, båda eller ingen */
 374              		.loc 1 107 0
 375 0184 FB1D     		adds	r3, r7, #7
 376 0186 1B78     		ldrb	r3, [r3]
 377 0188 1800     		movs	r0, r3
 378 018a FFF787FF 		bl	graphic_select_controller
 108:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	delay_500ns();
 379              		.loc 1 108 0
 380 018e FFF7FEFF 		bl	delay_500ns
 109:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
 381              		.loc 1 109 0
 382 0192 4020     		movs	r0, #64
 383 0194 FFF734FF 		bl	graphic_ctrl_bit_set
 110:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	delay_500ns();
 384              		.loc 1 110 0
 385 0198 FFF7FEFF 		bl	delay_500ns
 111:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	uint8_t rv = GPIO_E->IDR_HIGH; /* Läser av statusen */
 386              		.loc 1 111 0
 387 019c 124B     		ldr	r3, .L27
 388 019e 1A68     		ldr	r2, [r3]
 389 01a0 0F23     		movs	r3, #15
 390 01a2 FB18     		adds	r3, r7, r3
 391 01a4 527C     		ldrb	r2, [r2, #17]
 392 01a6 1A70     		strb	r2, [r3]
 112:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
 393              		.loc 1 112 0
 394 01a8 4020     		movs	r0, #64
 395 01aa FFF74DFF 		bl	graphic_ctrl_bit_clear
 113:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	GPIO_E->MODER = 0x55555555; /* Sätter samtliga bitar till utport */
 396              		.loc 1 113 0
 397 01ae 0E4B     		ldr	r3, .L27
 398 01b0 1B68     		ldr	r3, [r3]
 399 01b2 0F4A     		ldr	r2, .L27+8
 400 01b4 1A60     		str	r2, [r3]
 114:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 115:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	if (controller == B_CS1) {
 401              		.loc 1 115 0
 402 01b6 FB1D     		adds	r3, r7, #7
 403 01b8 1B78     		ldrb	r3, [r3]
 404 01ba 082B     		cmp	r3, #8
 405 01bc 04D1     		bne	.L24
 116:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_select_controller(B_CS1); /* Väljer CS1 */
 406              		.loc 1 116 0
 407 01be 0820     		movs	r0, #8
 408 01c0 FFF76CFF 		bl	graphic_select_controller
 117:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_wait_ready(); /* Väntar på att den grafiska displayen skall blir redo */
 409              		.loc 1 117 0
 410 01c4 FFF797FF 		bl	graphic_wait_ready
 411              	.L24:
 118:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 119:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	if (controller == B_CS2) {
 412              		.loc 1 119 0
 413 01c8 FB1D     		adds	r3, r7, #7
 414 01ca 1B78     		ldrb	r3, [r3]
 415 01cc 102B     		cmp	r3, #16
 416 01ce 04D1     		bne	.L25
 120:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_select_controller(B_CS2);  /* Väljer CS2 */
 417              		.loc 1 120 0
 418 01d0 1020     		movs	r0, #16
 419 01d2 FFF763FF 		bl	graphic_select_controller
 121:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_wait_ready(); /* Väntar på att den grafiska displayen skall blir redo */
 420              		.loc 1 121 0
 421 01d6 FFF78EFF 		bl	graphic_wait_ready
 422              	.L25:
 122:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 123:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 124:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	return rv;
 423              		.loc 1 124 0
 424 01da 0F23     		movs	r3, #15
 425 01dc FB18     		adds	r3, r7, r3
 426 01de 1B78     		ldrb	r3, [r3]
 125:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
 427              		.loc 1 125 0
 428 01e0 1800     		movs	r0, r3
 429 01e2 BD46     		mov	sp, r7
 430 01e4 04B0     		add	sp, sp, #16
 431              		@ sp needed
 432 01e6 80BD     		pop	{r7, pc}
 433              	.L28:
 434              		.align	2
 435              	.L27:
 436 01e8 00000000 		.word	GPIO_E
 437 01ec 55550000 		.word	21845
 438 01f0 55555555 		.word	1431655765
 439              		.cfi_endproc
 440              	.LFE4:
 442              		.align	1
 443              		.syntax unified
 444              		.code	16
 445              		.thumb_func
 446              		.fpu softvfp
 448              	graphic_write:
 449              	.LFB5:
 126:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 127:/home/oscar/GitHub/Pong/graphicdisplay.c **** static void graphic_write(uint8_t value, uint8_t controller)
 128:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
 450              		.loc 1 128 0
 451              		.cfi_startproc
 452              		@ args = 0, pretend = 0, frame = 8
 453              		@ frame_needed = 1, uses_anonymous_args = 0
 454 01f4 80B5     		push	{r7, lr}
 455              		.cfi_def_cfa_offset 8
 456              		.cfi_offset 7, -8
 457              		.cfi_offset 14, -4
 458 01f6 82B0     		sub	sp, sp, #8
 459              		.cfi_def_cfa_offset 16
 460 01f8 00AF     		add	r7, sp, #0
 461              		.cfi_def_cfa_register 7
 462 01fa 0200     		movs	r2, r0
 463 01fc FB1D     		adds	r3, r7, #7
 464 01fe 1A70     		strb	r2, [r3]
 465 0200 BB1D     		adds	r3, r7, #6
 466 0202 0A1C     		adds	r2, r1, #0
 467 0204 1A70     		strb	r2, [r3]
 129:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	GPIO_E->ODR_HIGH = value; /* Skriver till dataregistret */
 468              		.loc 1 129 0
 469 0206 1B4B     		ldr	r3, .L32
 470 0208 1B68     		ldr	r3, [r3]
 471 020a FA1D     		adds	r2, r7, #7
 472 020c 1278     		ldrb	r2, [r2]
 473 020e 5A75     		strb	r2, [r3, #21]
 130:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_select_controller(controller); /* Väljer CS1, CS2, båda eller ingen */
 474              		.loc 1 130 0
 475 0210 BB1D     		adds	r3, r7, #6
 476 0212 1B78     		ldrb	r3, [r3]
 477 0214 1800     		movs	r0, r3
 478 0216 FFF741FF 		bl	graphic_select_controller
 131:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	delay_500ns();
 479              		.loc 1 131 0
 480 021a FFF7FEFF 		bl	delay_500ns
 132:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
 481              		.loc 1 132 0
 482 021e 4020     		movs	r0, #64
 483 0220 FFF7EEFE 		bl	graphic_ctrl_bit_set
 133:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	delay_500ns();
 484              		.loc 1 133 0
 485 0224 FFF7FEFF 		bl	delay_500ns
 134:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
 486              		.loc 1 134 0
 487 0228 4020     		movs	r0, #64
 488 022a FFF70DFF 		bl	graphic_ctrl_bit_clear
 135:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 136:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	if (controller & B_CS1) {
 489              		.loc 1 136 0
 490 022e BB1D     		adds	r3, r7, #6
 491 0230 1B78     		ldrb	r3, [r3]
 492 0232 0822     		movs	r2, #8
 493 0234 1340     		ands	r3, r2
 494 0236 04D0     		beq	.L30
 137:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_select_controller(B_CS1); /* Väljer CS1 */
 495              		.loc 1 137 0
 496 0238 0820     		movs	r0, #8
 497 023a FFF72FFF 		bl	graphic_select_controller
 138:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_wait_ready(); /* Väntar på att den grafiska displayen skall blir redo */
 498              		.loc 1 138 0
 499 023e FFF75AFF 		bl	graphic_wait_ready
 500              	.L30:
 139:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 140:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	if (controller & B_CS2) {
 501              		.loc 1 140 0
 502 0242 BB1D     		adds	r3, r7, #6
 503 0244 1B78     		ldrb	r3, [r3]
 504 0246 1022     		movs	r2, #16
 505 0248 1340     		ands	r3, r2
 506 024a 04D0     		beq	.L31
 141:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_select_controller(B_CS2);  /* Väljer CS2 */
 507              		.loc 1 141 0
 508 024c 1020     		movs	r0, #16
 509 024e FFF725FF 		bl	graphic_select_controller
 142:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_wait_ready(); /* Väntar på att den grafiska displayen skall blir redo */
 510              		.loc 1 142 0
 511 0252 FFF750FF 		bl	graphic_wait_ready
 512              	.L31:
 143:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 144:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 145:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	GPIO_E->ODR_HIGH = 0; /* Nollställer dataregistret */
 513              		.loc 1 145 0
 514 0256 074B     		ldr	r3, .L32
 515 0258 1B68     		ldr	r3, [r3]
 516 025a 0022     		movs	r2, #0
 517 025c 5A75     		strb	r2, [r3, #21]
 146:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
 518              		.loc 1 146 0
 519 025e 4020     		movs	r0, #64
 520 0260 FFF7CEFE 		bl	graphic_ctrl_bit_set
 147:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_select_controller(0); /* Deaktiverar båda CS-signalerna */
 521              		.loc 1 147 0
 522 0264 0020     		movs	r0, #0
 523 0266 FFF719FF 		bl	graphic_select_controller
 148:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
 524              		.loc 1 148 0
 525 026a C046     		nop
 526 026c BD46     		mov	sp, r7
 527 026e 02B0     		add	sp, sp, #8
 528              		@ sp needed
 529 0270 80BD     		pop	{r7, pc}
 530              	.L33:
 531 0272 C046     		.align	2
 532              	.L32:
 533 0274 00000000 		.word	GPIO_E
 534              		.cfi_endproc
 535              	.LFE5:
 537              		.align	1
 538              		.syntax unified
 539              		.code	16
 540              		.thumb_func
 541              		.fpu softvfp
 543              	graphic_write_command:
 544              	.LFB6:
 149:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 150:/home/oscar/GitHub/Pong/graphicdisplay.c **** static void graphic_write_command(uint8_t command, uint8_t controller)
 151:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
 545              		.loc 1 151 0
 546              		.cfi_startproc
 547              		@ args = 0, pretend = 0, frame = 8
 548              		@ frame_needed = 1, uses_anonymous_args = 0
 549 0278 80B5     		push	{r7, lr}
 550              		.cfi_def_cfa_offset 8
 551              		.cfi_offset 7, -8
 552              		.cfi_offset 14, -4
 553 027a 82B0     		sub	sp, sp, #8
 554              		.cfi_def_cfa_offset 16
 555 027c 00AF     		add	r7, sp, #0
 556              		.cfi_def_cfa_register 7
 557 027e 0200     		movs	r2, r0
 558 0280 FB1D     		adds	r3, r7, #7
 559 0282 1A70     		strb	r2, [r3]
 560 0284 BB1D     		adds	r3, r7, #6
 561 0286 0A1C     		adds	r2, r1, #0
 562 0288 1A70     		strb	r2, [r3]
 152:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
 563              		.loc 1 152 0
 564 028a 4020     		movs	r0, #64
 565 028c FFF7DCFE 		bl	graphic_ctrl_bit_clear
 153:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_select_controller(controller); /* Väljer CS1, CS2, båda eller ingen */
 566              		.loc 1 153 0
 567 0290 BB1D     		adds	r3, r7, #6
 568 0292 1B78     		ldrb	r3, [r3]
 569 0294 1800     		movs	r0, r3
 570 0296 FFF701FF 		bl	graphic_select_controller
 154:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS | B_RW); /* Nollställer B_RS och B_RW */
 571              		.loc 1 154 0
 572 029a 0320     		movs	r0, #3
 573 029c FFF7D4FE 		bl	graphic_ctrl_bit_clear
 155:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_write(command, controller);
 574              		.loc 1 155 0
 575 02a0 BB1D     		adds	r3, r7, #6
 576 02a2 1A78     		ldrb	r2, [r3]
 577 02a4 FB1D     		adds	r3, r7, #7
 578 02a6 1B78     		ldrb	r3, [r3]
 579 02a8 1100     		movs	r1, r2
 580 02aa 1800     		movs	r0, r3
 581 02ac FFF7A2FF 		bl	graphic_write
 156:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
 582              		.loc 1 156 0
 583 02b0 C046     		nop
 584 02b2 BD46     		mov	sp, r7
 585 02b4 02B0     		add	sp, sp, #8
 586              		@ sp needed
 587 02b6 80BD     		pop	{r7, pc}
 588              		.cfi_endproc
 589              	.LFE6:
 591              		.align	1
 592              		.syntax unified
 593              		.code	16
 594              		.thumb_func
 595              		.fpu softvfp
 597              	graphic_write_data:
 598              	.LFB7:
 157:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 158:/home/oscar/GitHub/Pong/graphicdisplay.c **** static void graphic_write_data(uint8_t data, uint8_t controller)
 159:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
 599              		.loc 1 159 0
 600              		.cfi_startproc
 601              		@ args = 0, pretend = 0, frame = 8
 602              		@ frame_needed = 1, uses_anonymous_args = 0
 603 02b8 80B5     		push	{r7, lr}
 604              		.cfi_def_cfa_offset 8
 605              		.cfi_offset 7, -8
 606              		.cfi_offset 14, -4
 607 02ba 82B0     		sub	sp, sp, #8
 608              		.cfi_def_cfa_offset 16
 609 02bc 00AF     		add	r7, sp, #0
 610              		.cfi_def_cfa_register 7
 611 02be 0200     		movs	r2, r0
 612 02c0 FB1D     		adds	r3, r7, #7
 613 02c2 1A70     		strb	r2, [r3]
 614 02c4 BB1D     		adds	r3, r7, #6
 615 02c6 0A1C     		adds	r2, r1, #0
 616 02c8 1A70     		strb	r2, [r3]
 160:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
 617              		.loc 1 160 0
 618 02ca 4020     		movs	r0, #64
 619 02cc FFF7BCFE 		bl	graphic_ctrl_bit_clear
 161:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_select_controller(controller); /* Väljer CS1, CS2, båda eller ingen */
 620              		.loc 1 161 0
 621 02d0 BB1D     		adds	r3, r7, #6
 622 02d2 1B78     		ldrb	r3, [r3]
 623 02d4 1800     		movs	r0, r3
 624 02d6 FFF7E1FE 		bl	graphic_select_controller
 162:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS); /* Ettställer B_RS */
 625              		.loc 1 162 0
 626 02da 0120     		movs	r0, #1
 627 02dc FFF790FE 		bl	graphic_ctrl_bit_set
 163:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RW); /* Nollställer RW */
 628              		.loc 1 163 0
 629 02e0 0220     		movs	r0, #2
 630 02e2 FFF7B1FE 		bl	graphic_ctrl_bit_clear
 164:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_write(data, controller);
 631              		.loc 1 164 0
 632 02e6 BB1D     		adds	r3, r7, #6
 633 02e8 1A78     		ldrb	r2, [r3]
 634 02ea FB1D     		adds	r3, r7, #7
 635 02ec 1B78     		ldrb	r3, [r3]
 636 02ee 1100     		movs	r1, r2
 637 02f0 1800     		movs	r0, r3
 638 02f2 FFF77FFF 		bl	graphic_write
 165:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
 639              		.loc 1 165 0
 640 02f6 C046     		nop
 641 02f8 BD46     		mov	sp, r7
 642 02fa 02B0     		add	sp, sp, #8
 643              		@ sp needed
 644 02fc 80BD     		pop	{r7, pc}
 645              		.cfi_endproc
 646              	.LFE7:
 648              		.align	1
 649              		.syntax unified
 650              		.code	16
 651              		.thumb_func
 652              		.fpu softvfp
 654              	graphic_read_data:
 655              	.LFB8:
 166:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 167:/home/oscar/GitHub/Pong/graphicdisplay.c **** static uint8_t graphic_read_data(uint8_t controller)
 168:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
 656              		.loc 1 168 0
 657              		.cfi_startproc
 658              		@ args = 0, pretend = 0, frame = 8
 659              		@ frame_needed = 1, uses_anonymous_args = 0
 660 02fe 80B5     		push	{r7, lr}
 661              		.cfi_def_cfa_offset 8
 662              		.cfi_offset 7, -8
 663              		.cfi_offset 14, -4
 664 0300 82B0     		sub	sp, sp, #8
 665              		.cfi_def_cfa_offset 16
 666 0302 00AF     		add	r7, sp, #0
 667              		.cfi_def_cfa_register 7
 668 0304 0200     		movs	r2, r0
 669 0306 FB1D     		adds	r3, r7, #7
 670 0308 1A70     		strb	r2, [r3]
 169:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	/* En läsning måste göras två gånger för att displayen skall returnera korret data */
 170:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	(void) graphic_read(controller); /* Returnerar nonsens */
 671              		.loc 1 170 0
 672 030a FB1D     		adds	r3, r7, #7
 673 030c 1B78     		ldrb	r3, [r3]
 674 030e 1800     		movs	r0, r3
 675 0310 FFF728FF 		bl	graphic_read
 171:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	return graphic_read(controller); /* Returnerar korrekt data */
 676              		.loc 1 171 0
 677 0314 FB1D     		adds	r3, r7, #7
 678 0316 1B78     		ldrb	r3, [r3]
 679 0318 1800     		movs	r0, r3
 680 031a FFF723FF 		bl	graphic_read
 681 031e 0300     		movs	r3, r0
 172:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
 682              		.loc 1 172 0
 683 0320 1800     		movs	r0, r3
 684 0322 BD46     		mov	sp, r7
 685 0324 02B0     		add	sp, sp, #8
 686              		@ sp needed
 687 0326 80BD     		pop	{r7, pc}
 688              		.cfi_endproc
 689              	.LFE8:
 691              		.align	1
 692              		.global	graphic_clear_screen
 693              		.syntax unified
 694              		.code	16
 695              		.thumb_func
 696              		.fpu softvfp
 698              	graphic_clear_screen:
 699              	.LFB9:
 173:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 174:/home/oscar/GitHub/Pong/graphicdisplay.c **** void graphic_clear_screen(void)
 175:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
 700              		.loc 1 175 0
 701              		.cfi_startproc
 702              		@ args = 0, pretend = 0, frame = 8
 703              		@ frame_needed = 1, uses_anonymous_args = 0
 704 0328 80B5     		push	{r7, lr}
 705              		.cfi_def_cfa_offset 8
 706              		.cfi_offset 7, -8
 707              		.cfi_offset 14, -4
 708 032a 82B0     		sub	sp, sp, #8
 709              		.cfi_def_cfa_offset 16
 710 032c 00AF     		add	r7, sp, #0
 711              		.cfi_def_cfa_register 7
 712              	.LBB2:
 176:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	for (uint8_t page = 0; page < LCD_PAGES; page++) {
 713              		.loc 1 176 0
 714 032e FB1D     		adds	r3, r7, #7
 715 0330 0022     		movs	r2, #0
 716 0332 1A70     		strb	r2, [r3]
 717 0334 24E0     		b	.L39
 718              	.L42:
 177:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 178:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 719              		.loc 1 178 0
 720 0336 FB1D     		adds	r3, r7, #7
 721 0338 1B78     		ldrb	r3, [r3]
 722 033a 4822     		movs	r2, #72
 723 033c 5242     		rsbs	r2, r2, #0
 724 033e 1343     		orrs	r3, r2
 725 0340 DBB2     		uxtb	r3, r3
 726 0342 1821     		movs	r1, #24
 727 0344 1800     		movs	r0, r3
 728 0346 FFF797FF 		bl	graphic_write_command
 179:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
 729              		.loc 1 179 0
 730 034a 1821     		movs	r1, #24
 731 034c 4020     		movs	r0, #64
 732 034e FFF793FF 		bl	graphic_write_command
 733              	.LBB3:
 180:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 181:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		for (uint8_t add = 0; add < LCD_ADDS; add++) {
 734              		.loc 1 181 0
 735 0352 BB1D     		adds	r3, r7, #6
 736 0354 0022     		movs	r2, #0
 737 0356 1A70     		strb	r2, [r3]
 738 0358 08E0     		b	.L40
 739              	.L41:
 182:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			/*
 183:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			#ifndef SIMULATOR
 184:/home/oscar/GitHub/Pong/graphicdisplay.c **** 				graphic_write_command(LCD_SET_ADD | add, B_CS1 | B_CS2);
 185:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			#endif
 186:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			*/
 187:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_write_data(0, B_CS1 | B_CS2);
 740              		.loc 1 187 0 discriminator 3
 741 035a 1821     		movs	r1, #24
 742 035c 0020     		movs	r0, #0
 743 035e FFF7ABFF 		bl	graphic_write_data
 181:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			/*
 744              		.loc 1 181 0 discriminator 3
 745 0362 BB1D     		adds	r3, r7, #6
 746 0364 1A78     		ldrb	r2, [r3]
 747 0366 BB1D     		adds	r3, r7, #6
 748 0368 0132     		adds	r2, r2, #1
 749 036a 1A70     		strb	r2, [r3]
 750              	.L40:
 181:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			/*
 751              		.loc 1 181 0 is_stmt 0 discriminator 1
 752 036c 4022     		movs	r2, #64
 753 036e BB1D     		adds	r3, r7, #6
 754 0370 1B78     		ldrb	r3, [r3]
 755 0372 9342     		cmp	r3, r2
 756 0374 F1D3     		bcc	.L41
 757              	.LBE3:
 176:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 758              		.loc 1 176 0 is_stmt 1 discriminator 2
 759 0376 FB1D     		adds	r3, r7, #7
 760 0378 1A78     		ldrb	r2, [r3]
 761 037a FB1D     		adds	r3, r7, #7
 762 037c 0132     		adds	r2, r2, #1
 763 037e 1A70     		strb	r2, [r3]
 764              	.L39:
 176:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 765              		.loc 1 176 0 is_stmt 0 discriminator 1
 766 0380 0822     		movs	r2, #8
 767 0382 FB1D     		adds	r3, r7, #7
 768 0384 1B78     		ldrb	r3, [r3]
 769 0386 9342     		cmp	r3, r2
 770 0388 D5D3     		bcc	.L42
 771              	.LBE2:
 188:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 189:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		}
 190:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 191:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
 772              		.loc 1 191 0 is_stmt 1
 773 038a C046     		nop
 774 038c BD46     		mov	sp, r7
 775 038e 02B0     		add	sp, sp, #8
 776              		@ sp needed
 777 0390 80BD     		pop	{r7, pc}
 778              		.cfi_endproc
 779              	.LFE9:
 781              		.align	1
 782              		.global	graphic_initialise
 783              		.syntax unified
 784              		.code	16
 785              		.thumb_func
 786              		.fpu softvfp
 788              	graphic_initialise:
 789              	.LFB10:
 192:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 193:/home/oscar/GitHub/Pong/graphicdisplay.c **** void graphic_initialise(void)
 194:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
 790              		.loc 1 194 0
 791              		.cfi_startproc
 792              		@ args = 0, pretend = 0, frame = 0
 793              		@ frame_needed = 1, uses_anonymous_args = 0
 794 0392 80B5     		push	{r7, lr}
 795              		.cfi_def_cfa_offset 8
 796              		.cfi_offset 7, -8
 797              		.cfi_offset 14, -4
 798 0394 00AF     		add	r7, sp, #0
 799              		.cfi_def_cfa_register 7
 195:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E); /* Ettställer B_E */
 800              		.loc 1 195 0
 801 0396 4020     		movs	r0, #64
 802 0398 FFF732FE 		bl	graphic_ctrl_bit_set
 196:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	delay_mikro(10);
 803              		.loc 1 196 0
 804 039c 0A20     		movs	r0, #10
 805 039e FFF7FEFF 		bl	delay_mikro
 197:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RESET); /* Nollställer B_CS1, B_CS2 och B_RESET */
 806              		.loc 1 197 0
 807 03a2 3820     		movs	r0, #56
 808 03a4 FFF750FE 		bl	graphic_ctrl_bit_clear
 198:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E); /* Nollställer B_E */
 809              		.loc 1 198 0
 810 03a8 4020     		movs	r0, #64
 811 03aa FFF74DFE 		bl	graphic_ctrl_bit_clear
 199:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	delay_milli(30);
 812              		.loc 1 199 0
 813 03ae 1E20     		movs	r0, #30
 814 03b0 FFF7FEFF 		bl	delay_milli
 200:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RESET); /* Ettställer B_RESET */
 815              		.loc 1 200 0
 816 03b4 2020     		movs	r0, #32
 817 03b6 FFF723FE 		bl	graphic_ctrl_bit_set
 201:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
 818              		.loc 1 201 0
 819 03ba 1821     		movs	r1, #24
 820 03bc 3E20     		movs	r0, #62
 821 03be FFF75BFF 		bl	graphic_write_command
 202:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_write_command(LCD_ON, B_CS1 | B_CS2); /* Toggla display */
 822              		.loc 1 202 0
 823 03c2 1821     		movs	r1, #24
 824 03c4 3F20     		movs	r0, #63
 825 03c6 FFF757FF 		bl	graphic_write_command
 203:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_write_command(LCD_DISPLAY_START, B_CS1 | B_CS2); /* start = 0 */
 826              		.loc 1 203 0
 827 03ca 1821     		movs	r1, #24
 828 03cc C020     		movs	r0, #192
 829 03ce FFF753FF 		bl	graphic_write_command
 204:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2); /* add = 0 */
 830              		.loc 1 204 0
 831 03d2 1821     		movs	r1, #24
 832 03d4 4020     		movs	r0, #64
 833 03d6 FFF74FFF 		bl	graphic_write_command
 205:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2); /* page = 0 */
 834              		.loc 1 205 0
 835 03da 1821     		movs	r1, #24
 836 03dc B820     		movs	r0, #184
 837 03de FFF74BFF 		bl	graphic_write_command
 206:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 207:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	graphic_select_controller(0); /* Deaktiverar båda CS-signalerna */
 838              		.loc 1 207 0
 839 03e2 0020     		movs	r0, #0
 840 03e4 FFF75AFE 		bl	graphic_select_controller
 208:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
 841              		.loc 1 208 0
 842 03e8 C046     		nop
 843 03ea BD46     		mov	sp, r7
 844              		@ sp needed
 845 03ec 80BD     		pop	{r7, pc}
 846              		.cfi_endproc
 847              	.LFE10:
 849              		.align	1
 850              		.global	pixel
 851              		.syntax unified
 852              		.code	16
 853              		.thumb_func
 854              		.fpu softvfp
 856              	pixel:
 857              	.LFB11:
 209:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 210:/home/oscar/GitHub/Pong/graphicdisplay.c **** void pixel(uint8_t x, uint8_t y, uint8_t set)
 211:/home/oscar/GitHub/Pong/graphicdisplay.c **** {
 858              		.loc 1 211 0
 859              		.cfi_startproc
 860              		@ args = 0, pretend = 0, frame = 16
 861              		@ frame_needed = 1, uses_anonymous_args = 0
 862 03ee 90B5     		push	{r4, r7, lr}
 863              		.cfi_def_cfa_offset 12
 864              		.cfi_offset 4, -12
 865              		.cfi_offset 7, -8
 866              		.cfi_offset 14, -4
 867 03f0 85B0     		sub	sp, sp, #20
 868              		.cfi_def_cfa_offset 32
 869 03f2 00AF     		add	r7, sp, #0
 870              		.cfi_def_cfa_register 7
 871 03f4 0400     		movs	r4, r0
 872 03f6 0800     		movs	r0, r1
 873 03f8 1100     		movs	r1, r2
 874 03fa FB1D     		adds	r3, r7, #7
 875 03fc 221C     		adds	r2, r4, #0
 876 03fe 1A70     		strb	r2, [r3]
 877 0400 BB1D     		adds	r3, r7, #6
 878 0402 021C     		adds	r2, r0, #0
 879 0404 1A70     		strb	r2, [r3]
 880 0406 7B1D     		adds	r3, r7, #5
 881 0408 0A1C     		adds	r2, r1, #0
 882 040a 1A70     		strb	r2, [r3]
 212:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	/*Make sure pixel is within bounds*/
 213:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	if ((x >= LCD_WIDTH && y >= LCD_HEIGHT)) {
 883              		.loc 1 213 0
 884 040c 8022     		movs	r2, #128
 885 040e FB1D     		adds	r3, r7, #7
 886 0410 1B78     		ldrb	r3, [r3]
 887 0412 9342     		cmp	r3, r2
 888 0414 04D3     		bcc	.L45
 889              		.loc 1 213 0 is_stmt 0 discriminator 1
 890 0416 4022     		movs	r2, #64
 891 0418 BB1D     		adds	r3, r7, #6
 892 041a 1B78     		ldrb	r3, [r3]
 893 041c 9342     		cmp	r3, r2
 894 041e 69D2     		bcs	.L51
 895              	.L45:
 214:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		return;
 215:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 216:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 217:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 218:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	/* Skapa en bitmask för y-koordinaten */
 219:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 220:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	uint8_t page = (y) / 8;
 896              		.loc 1 220 0 is_stmt 1
 897 0420 0E23     		movs	r3, #14
 898 0422 FB18     		adds	r3, r7, r3
 899 0424 BA1D     		adds	r2, r7, #6
 900 0426 1278     		ldrb	r2, [r2]
 901 0428 D208     		lsrs	r2, r2, #3
 902 042a 1A70     		strb	r2, [r3]
 221:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	uint8_t add = x;
 903              		.loc 1 221 0
 904 042c 0D23     		movs	r3, #13
 905 042e FB18     		adds	r3, r7, r3
 906 0430 FA1D     		adds	r2, r7, #7
 907 0432 1278     		ldrb	r2, [r2]
 908 0434 1A70     		strb	r2, [r3]
 222:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 223:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	uint8_t mask;
 224:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	uint8_t bitIndex = (((y)+8) % 8);
 909              		.loc 1 224 0
 910 0436 BB1D     		adds	r3, r7, #6
 911 0438 1B78     		ldrb	r3, [r3]
 912 043a 0833     		adds	r3, r3, #8
 913 043c 2F4A     		ldr	r2, .L52
 914 043e 1340     		ands	r3, r2
 915 0440 04D5     		bpl	.L47
 916 0442 013B     		subs	r3, r3, #1
 917 0444 0822     		movs	r2, #8
 918 0446 5242     		rsbs	r2, r2, #0
 919 0448 1343     		orrs	r3, r2
 920 044a 0133     		adds	r3, r3, #1
 921              	.L47:
 922 044c 1A00     		movs	r2, r3
 923 044e 0C21     		movs	r1, #12
 924 0450 7B18     		adds	r3, r7, r1
 925 0452 1A70     		strb	r2, [r3]
 225:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 226:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	mask = 1 << bitIndex;
 926              		.loc 1 226 0
 927 0454 7B18     		adds	r3, r7, r1
 928 0456 1B78     		ldrb	r3, [r3]
 929 0458 0122     		movs	r2, #1
 930 045a 9A40     		lsls	r2, r2, r3
 931 045c 0F23     		movs	r3, #15
 932 045e FB18     		adds	r3, r7, r3
 933 0460 1A70     		strb	r2, [r3]
 227:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 228:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	//uint8_t mask = 1 << ((y - 1) & 7); /* & 7 är ekvivalnet med % 8 */ // Vad är detta? &?
 229:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	if (!set) {
 934              		.loc 1 229 0
 935 0462 7B1D     		adds	r3, r7, #5
 936 0464 1B78     		ldrb	r3, [r3]
 937 0466 002B     		cmp	r3, #0
 938 0468 05D1     		bne	.L48
 230:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		mask = ~mask;
 939              		.loc 1 230 0
 940 046a 0F22     		movs	r2, #15
 941 046c BB18     		adds	r3, r7, r2
 942 046e BA18     		adds	r2, r7, r2
 943 0470 1278     		ldrb	r2, [r2]
 944 0472 D243     		mvns	r2, r2
 945 0474 1A70     		strb	r2, [r3]
 946              	.L48:
 231:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 232:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 233:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	uint8_t temp = buffer.buf[8*add+page];
 947              		.loc 1 233 0
 948 0476 0D23     		movs	r3, #13
 949 0478 FB18     		adds	r3, r7, r3
 950 047a 1B78     		ldrb	r3, [r3]
 951 047c DA00     		lsls	r2, r3, #3
 952 047e 0E23     		movs	r3, #14
 953 0480 FB18     		adds	r3, r7, r3
 954 0482 1B78     		ldrb	r3, [r3]
 955 0484 D218     		adds	r2, r2, r3
 956 0486 0B23     		movs	r3, #11
 957 0488 FB18     		adds	r3, r7, r3
 958 048a 1D49     		ldr	r1, .L52+4
 959 048c 8A5C     		ldrb	r2, [r1, r2]
 960 048e 1A70     		strb	r2, [r3]
 234:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 235:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	if (!set) {
 961              		.loc 1 235 0
 962 0490 7B1D     		adds	r3, r7, #5
 963 0492 1B78     		ldrb	r3, [r3]
 964 0494 002B     		cmp	r3, #0
 965 0496 09D1     		bne	.L49
 236:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		mask &= temp;
 966              		.loc 1 236 0
 967 0498 0F22     		movs	r2, #15
 968 049a BB18     		adds	r3, r7, r2
 969 049c BA18     		adds	r2, r7, r2
 970 049e 0B21     		movs	r1, #11
 971 04a0 7918     		adds	r1, r7, r1
 972 04a2 1278     		ldrb	r2, [r2]
 973 04a4 0978     		ldrb	r1, [r1]
 974 04a6 0A40     		ands	r2, r1
 975 04a8 1A70     		strb	r2, [r3]
 976 04aa 08E0     		b	.L50
 977              	.L49:
 237:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 238:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	else {
 239:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		mask |= temp;
 978              		.loc 1 239 0
 979 04ac 0F22     		movs	r2, #15
 980 04ae BB18     		adds	r3, r7, r2
 981 04b0 B918     		adds	r1, r7, r2
 982 04b2 0B22     		movs	r2, #11
 983 04b4 BA18     		adds	r2, r7, r2
 984 04b6 0978     		ldrb	r1, [r1]
 985 04b8 1278     		ldrb	r2, [r2]
 986 04ba 0A43     		orrs	r2, r1
 987 04bc 1A70     		strb	r2, [r3]
 988              	.L50:
 240:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 241:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 242:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	buffer.buf[8*add+page] = mask;
 989              		.loc 1 242 0
 990 04be 0D20     		movs	r0, #13
 991 04c0 3B18     		adds	r3, r7, r0
 992 04c2 1B78     		ldrb	r3, [r3]
 993 04c4 DA00     		lsls	r2, r3, #3
 994 04c6 0E24     		movs	r4, #14
 995 04c8 3B19     		adds	r3, r7, r4
 996 04ca 1B78     		ldrb	r3, [r3]
 997 04cc D318     		adds	r3, r2, r3
 998 04ce 0C4A     		ldr	r2, .L52+4
 999 04d0 0F21     		movs	r1, #15
 1000 04d2 7918     		adds	r1, r7, r1
 1001 04d4 0978     		ldrb	r1, [r1]
 1002 04d6 D154     		strb	r1, [r2, r3]
 243:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	buffer.changed[8*add+page] = 0b11111111;
 1003              		.loc 1 243 0
 1004 04d8 3B18     		adds	r3, r7, r0
 1005 04da 1B78     		ldrb	r3, [r3]
 1006 04dc DA00     		lsls	r2, r3, #3
 1007 04de 3B19     		adds	r3, r7, r4
 1008 04e0 1B78     		ldrb	r3, [r3]
 1009 04e2 D218     		adds	r2, r2, r3
 1010 04e4 0649     		ldr	r1, .L52+4
 1011 04e6 8023     		movs	r3, #128
 1012 04e8 DB00     		lsls	r3, r3, #3
 1013 04ea 8A18     		adds	r2, r1, r2
 1014 04ec D318     		adds	r3, r2, r3
 1015 04ee FF22     		movs	r2, #255
 1016 04f0 1A70     		strb	r2, [r3]
 1017 04f2 00E0     		b	.L44
 1018              	.L51:
 214:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 1019              		.loc 1 214 0
 1020 04f4 C046     		nop
 1021              	.L44:
 244:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 245:/home/oscar/GitHub/Pong/graphicdisplay.c **** }
 1022              		.loc 1 245 0
 1023 04f6 BD46     		mov	sp, r7
 1024 04f8 05B0     		add	sp, sp, #20
 1025              		@ sp needed
 1026 04fa 90BD     		pop	{r4, r7, pc}
 1027              	.L53:
 1028              		.align	2
 1029              	.L52:
 1030 04fc 07000080 		.word	-2147483641
 1031 0500 00000000 		.word	buffer
 1032              		.cfi_endproc
 1033              	.LFE11:
 1035              		.align	1
 1036              		.global	draw_buffer
 1037              		.syntax unified
 1038              		.code	16
 1039              		.thumb_func
 1040              		.fpu softvfp
 1042              	draw_buffer:
 1043              	.LFB12:
 246:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 247:/home/oscar/GitHub/Pong/graphicdisplay.c **** void draw_buffer(void){
 1044              		.loc 1 247 0
 1045              		.cfi_startproc
 1046              		@ args = 0, pretend = 0, frame = 8
 1047              		@ frame_needed = 1, uses_anonymous_args = 0
 1048 0504 80B5     		push	{r7, lr}
 1049              		.cfi_def_cfa_offset 8
 1050              		.cfi_offset 7, -8
 1051              		.cfi_offset 14, -4
 1052 0506 82B0     		sub	sp, sp, #8
 1053              		.cfi_def_cfa_offset 16
 1054 0508 00AF     		add	r7, sp, #0
 1055              		.cfi_def_cfa_register 7
 1056              	.LBB4:
 248:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	
 249:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	for(uint32_t i = 0; i < (LCD_HEIGHT/8)*LCD_WIDTH; i++){
 1057              		.loc 1 249 0
 1058 050a 0023     		movs	r3, #0
 1059 050c 7B60     		str	r3, [r7, #4]
 1060 050e 5EE0     		b	.L55
 1061              	.L59:
 1062              	.LBB5:
 250:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 251:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		uint8_t page = i%8;
 1063              		.loc 1 251 0
 1064 0510 7B68     		ldr	r3, [r7, #4]
 1065 0512 DAB2     		uxtb	r2, r3
 1066 0514 7B1C     		adds	r3, r7, #1
 1067 0516 0721     		movs	r1, #7
 1068 0518 0A40     		ands	r2, r1
 1069 051a 1A70     		strb	r2, [r3]
 252:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		uint8_t add = i/8;
 1070              		.loc 1 252 0
 1071 051c 7B68     		ldr	r3, [r7, #4]
 1072 051e DA08     		lsrs	r2, r3, #3
 1073 0520 FB1C     		adds	r3, r7, #3
 1074 0522 1A70     		strb	r2, [r3]
 253:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 254:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		if(buffer.changed[8*add+page]){
 1075              		.loc 1 254 0
 1076 0524 FB1C     		adds	r3, r7, #3
 1077 0526 1B78     		ldrb	r3, [r3]
 1078 0528 DA00     		lsls	r2, r3, #3
 1079 052a 7B1C     		adds	r3, r7, #1
 1080 052c 1B78     		ldrb	r3, [r3]
 1081 052e D218     		adds	r2, r2, r3
 1082 0530 2D49     		ldr	r1, .L60
 1083 0532 8023     		movs	r3, #128
 1084 0534 DB00     		lsls	r3, r3, #3
 1085 0536 8A18     		adds	r2, r1, r2
 1086 0538 D318     		adds	r3, r2, r3
 1087 053a 1B78     		ldrb	r3, [r3]
 1088 053c 002B     		cmp	r3, #0
 1089 053e 43D0     		beq	.L56
 1090              	.LBB6:
 255:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			uint8_t controller;
 256:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			if(add < LCD_WIDTH/2){
 1091              		.loc 1 256 0
 1092 0540 8023     		movs	r3, #128
 1093 0542 5B08     		lsrs	r3, r3, #1
 1094 0544 DBB2     		uxtb	r3, r3
 1095 0546 FA1C     		adds	r2, r7, #3
 1096 0548 1278     		ldrb	r2, [r2]
 1097 054a 9A42     		cmp	r2, r3
 1098 054c 03D2     		bcs	.L57
 257:/home/oscar/GitHub/Pong/graphicdisplay.c **** 				controller = B_CS1;
 1099              		.loc 1 257 0
 1100 054e BB1C     		adds	r3, r7, #2
 1101 0550 0822     		movs	r2, #8
 1102 0552 1A70     		strb	r2, [r3]
 1103 0554 0AE0     		b	.L58
 1104              	.L57:
 258:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			}else{
 259:/home/oscar/GitHub/Pong/graphicdisplay.c **** 				controller = B_CS2;
 1105              		.loc 1 259 0
 1106 0556 BB1C     		adds	r3, r7, #2
 1107 0558 1022     		movs	r2, #16
 1108 055a 1A70     		strb	r2, [r3]
 260:/home/oscar/GitHub/Pong/graphicdisplay.c **** 				add = add - (LCD_WIDTH/2);
 1109              		.loc 1 260 0
 1110 055c 8023     		movs	r3, #128
 1111 055e 5B08     		lsrs	r3, r3, #1
 1112 0560 DAB2     		uxtb	r2, r3
 1113 0562 FB1C     		adds	r3, r7, #3
 1114 0564 F91C     		adds	r1, r7, #3
 1115 0566 0978     		ldrb	r1, [r1]
 1116 0568 8A1A     		subs	r2, r1, r2
 1117 056a 1A70     		strb	r2, [r3]
 1118              	.L58:
 261:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			}
 262:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 263:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_write_command(LCD_SET_PAGE | page, controller); /* Ordningen i vilken man ställer page 
 1119              		.loc 1 263 0
 1120 056c 7B1C     		adds	r3, r7, #1
 1121 056e 1B78     		ldrb	r3, [r3]
 1122 0570 4822     		movs	r2, #72
 1123 0572 5242     		rsbs	r2, r2, #0
 1124 0574 1343     		orrs	r3, r2
 1125 0576 DAB2     		uxtb	r2, r3
 1126 0578 BB1C     		adds	r3, r7, #2
 1127 057a 1B78     		ldrb	r3, [r3]
 1128 057c 1900     		movs	r1, r3
 1129 057e 1000     		movs	r0, r2
 1130 0580 FFF77AFE 		bl	graphic_write_command
 264:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_write_command(LCD_SET_ADD | add, controller);
 1131              		.loc 1 264 0
 1132 0584 FB1C     		adds	r3, r7, #3
 1133 0586 1B78     		ldrb	r3, [r3]
 1134 0588 4022     		movs	r2, #64
 1135 058a 1343     		orrs	r3, r2
 1136 058c DAB2     		uxtb	r2, r3
 1137 058e BB1C     		adds	r3, r7, #2
 1138 0590 1B78     		ldrb	r3, [r3]
 1139 0592 1900     		movs	r1, r3
 1140 0594 1000     		movs	r0, r2
 1141 0596 FFF76FFE 		bl	graphic_write_command
 265:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			graphic_write_data(buffer.buf[i], controller);
 1142              		.loc 1 265 0
 1143 059a 134A     		ldr	r2, .L60
 1144 059c 7B68     		ldr	r3, [r7, #4]
 1145 059e D318     		adds	r3, r2, r3
 1146 05a0 1A78     		ldrb	r2, [r3]
 1147 05a2 BB1C     		adds	r3, r7, #2
 1148 05a4 1B78     		ldrb	r3, [r3]
 1149 05a6 1900     		movs	r1, r3
 1150 05a8 1000     		movs	r0, r2
 1151 05aa FFF785FE 		bl	graphic_write_data
 266:/home/oscar/GitHub/Pong/graphicdisplay.c **** 			buffer.changed[8*add+page] = 0b00000000;
 1152              		.loc 1 266 0
 1153 05ae FB1C     		adds	r3, r7, #3
 1154 05b0 1B78     		ldrb	r3, [r3]
 1155 05b2 DA00     		lsls	r2, r3, #3
 1156 05b4 7B1C     		adds	r3, r7, #1
 1157 05b6 1B78     		ldrb	r3, [r3]
 1158 05b8 D218     		adds	r2, r2, r3
 1159 05ba 0B49     		ldr	r1, .L60
 1160 05bc 8023     		movs	r3, #128
 1161 05be DB00     		lsls	r3, r3, #3
 1162 05c0 8A18     		adds	r2, r1, r2
 1163 05c2 D318     		adds	r3, r2, r3
 1164 05c4 0022     		movs	r2, #0
 1165 05c6 1A70     		strb	r2, [r3]
 1166              	.L56:
 1167              	.LBE6:
 1168              	.LBE5:
 249:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 1169              		.loc 1 249 0 discriminator 2
 1170 05c8 7B68     		ldr	r3, [r7, #4]
 1171 05ca 0133     		adds	r3, r3, #1
 1172 05cc 7B60     		str	r3, [r7, #4]
 1173              	.L55:
 249:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 1174              		.loc 1 249 0 is_stmt 0 discriminator 1
 1175 05ce 4023     		movs	r3, #64
 1176 05d0 DB08     		lsrs	r3, r3, #3
 1177 05d2 DBB2     		uxtb	r3, r3
 1178 05d4 8022     		movs	r2, #128
 1179 05d6 5343     		muls	r3, r2
 1180 05d8 1A00     		movs	r2, r3
 1181 05da 7B68     		ldr	r3, [r7, #4]
 1182 05dc 9342     		cmp	r3, r2
 1183 05de 97D3     		bcc	.L59
 1184              	.LBE4:
 267:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		}
 268:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 269:/home/oscar/GitHub/Pong/graphicdisplay.c **** 		
 270:/home/oscar/GitHub/Pong/graphicdisplay.c **** 	}
 271:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 272:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 273:/home/oscar/GitHub/Pong/graphicdisplay.c **** 
 274:/home/oscar/GitHub/Pong/graphicdisplay.c **** }...
 1185              		.loc 1 274 0 is_stmt 1
 1186 05e0 C046     		nop
 1187 05e2 BD46     		mov	sp, r7
 1188 05e4 02B0     		add	sp, sp, #8
 1189              		@ sp needed
 1190 05e6 80BD     		pop	{r7, pc}
 1191              	.L61:
 1192              		.align	2
 1193              	.L60:
 1194 05e8 00000000 		.word	buffer
 1195              		.cfi_endproc
 1196              	.LFE12:
 1198              	.Letext0:
 1199              		.file 2 "include/intdef.h"
 1200              		.file 3 "include/GPIO.h"
 1201              		.file 4 "include/delay.h"
 1202              		.file 5 "include/graphicdisplay.h"
>>>>>>> Stashed changes
