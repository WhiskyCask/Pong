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
  11              		.file	"object.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.global	geometry_ball
  16              		.section	.rodata
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
