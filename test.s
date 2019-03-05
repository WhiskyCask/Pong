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
  49              		.text
  50              		.align	1
  51              		.global	draw_object
  52              		.syntax unified
  53              		.code	16
  54              		.thumb_func
  55              		.fpu softvfp
  57              	draw_object:
  58              	.LFB0:
  59              		.file 1 "C:/Users/isake/Documents/Laboration5/Pong/object.c"
   1:C:/Users/isake/Documents/Laboration5/Pong\object.c **** /*
   2:C:/Users/isake/Documents/Laboration5/Pong\object.c ****  * 
   3:C:/Users/isake/Documents/Laboration5/Pong\object.c ****  * 	object.c
   4:C:/Users/isake/Documents/Laboration5/Pong\object.c ****  *
   5:C:/Users/isake/Documents/Laboration5/Pong\object.c ****  */
   6:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
   7:C:/Users/isake/Documents/Laboration5/Pong\object.c **** #include "object.h"
   8:C:/Users/isake/Documents/Laboration5/Pong\object.c **** #include "graphicdisplay.h"
   9:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  10:C:/Users/isake/Documents/Laboration5/Pong\object.c **** const Geometry geometry_ball = { 12, 4, 4, {
  11:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 			{0, 1}, {0, 2}, 
  12:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{1, 0}, {1, 1}, {1, 2}, {1, 3},
  13:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	{2, 0}, {2, 1}, {2, 2}, {2, 3},
  14:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 			{3, 1}, {3, 2}
  15:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  16:C:/Users/isake/Documents/Laboration5/Pong\object.c **** };
  17:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  18:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  19:C:/Users/isake/Documents/Laboration5/Pong\object.c **** void draw_object(Object * object)
  20:C:/Users/isake/Documents/Laboration5/Pong\object.c **** {
  60              		.loc 1 20 0
  61              		.cfi_startproc
  62              		@ args = 0, pretend = 0, frame = 16
  63              		@ frame_needed = 1, uses_anonymous_args = 0
  64 0000 90B5     		push	{r4, r7, lr}
  65              		.cfi_def_cfa_offset 12
  66              		.cfi_offset 4, -12
  67              		.cfi_offset 7, -8
  68              		.cfi_offset 14, -4
  69 0002 85B0     		sub	sp, sp, #20
  70              		.cfi_def_cfa_offset 32
  71 0004 00AF     		add	r7, sp, #0
  72              		.cfi_def_cfa_register 7
  73 0006 7860     		str	r0, [r7, #4]
  74              	.LBB2:
  21:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
  75              		.loc 1 21 0
  76 0008 0F23     		movs	r3, #15
  77 000a FB18     		adds	r3, r7, r3
  78 000c 0022     		movs	r2, #0
  79 000e 1A70     		strb	r2, [r3]
  80 0010 27E0     		b	.L2
  81              	.L3:
  22:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		pixel(object->geometry->points[i].x + object->pos_x, object->geometry->points[i].y + object->pos_
  82              		.loc 1 22 0 discriminator 3
  83 0012 7B68     		ldr	r3, [r7, #4]
  84 0014 1A68     		ldr	r2, [r3]
  85 0016 0F21     		movs	r1, #15
  86 0018 7B18     		adds	r3, r7, r1
  87 001a 1B78     		ldrb	r3, [r3]
  88 001c 5B00     		lsls	r3, r3, #1
  89 001e D318     		adds	r3, r2, r3
  90 0020 0333     		adds	r3, r3, #3
  91 0022 1A78     		ldrb	r2, [r3]
  92 0024 7B68     		ldr	r3, [r7, #4]
  93 0026 1B79     		ldrb	r3, [r3, #4]
  94 0028 5BB2     		sxtb	r3, r3
  95 002a DBB2     		uxtb	r3, r3
  96 002c D318     		adds	r3, r2, r3
  97 002e D8B2     		uxtb	r0, r3
  98 0030 7B68     		ldr	r3, [r7, #4]
  99 0032 1A68     		ldr	r2, [r3]
 100 0034 0C00     		movs	r4, r1
 101 0036 7B18     		adds	r3, r7, r1
 102 0038 1B78     		ldrb	r3, [r3]
 103 003a 5B00     		lsls	r3, r3, #1
 104 003c D318     		adds	r3, r2, r3
 105 003e 0433     		adds	r3, r3, #4
 106 0040 1A78     		ldrb	r2, [r3]
 107 0042 7B68     		ldr	r3, [r7, #4]
 108 0044 5B79     		ldrb	r3, [r3, #5]
 109 0046 5BB2     		sxtb	r3, r3
 110 0048 DBB2     		uxtb	r3, r3
 111 004a D318     		adds	r3, r2, r3
 112 004c DBB2     		uxtb	r3, r3
 113 004e 0122     		movs	r2, #1
 114 0050 1900     		movs	r1, r3
 115 0052 FFF7FEFF 		bl	pixel
  21:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 116              		.loc 1 21 0 discriminator 3
 117 0056 2100     		movs	r1, r4
 118 0058 7B18     		adds	r3, r7, r1
 119 005a 1A78     		ldrb	r2, [r3]
 120 005c 7B18     		adds	r3, r7, r1
 121 005e 0132     		adds	r2, r2, #1
 122 0060 1A70     		strb	r2, [r3]
 123              	.L2:
  21:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 124              		.loc 1 21 0 is_stmt 0 discriminator 1
 125 0062 7B68     		ldr	r3, [r7, #4]
 126 0064 1B68     		ldr	r3, [r3]
 127 0066 1B78     		ldrb	r3, [r3]
 128 0068 0F22     		movs	r2, #15
 129 006a BA18     		adds	r2, r7, r2
 130 006c 1278     		ldrb	r2, [r2]
 131 006e 9A42     		cmp	r2, r3
 132 0070 CFD3     		bcc	.L3
 133              	.LBE2:
  23:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  24:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 134              		.loc 1 24 0 is_stmt 1
 135 0072 C046     		nop
 136 0074 BD46     		mov	sp, r7
 137 0076 05B0     		add	sp, sp, #20
 138              		@ sp needed
 139 0078 90BD     		pop	{r4, r7, pc}
 140              		.cfi_endproc
 141              	.LFE0:
 143              		.align	1
 144              		.global	clear_object
 145              		.syntax unified
 146              		.code	16
 147              		.thumb_func
 148              		.fpu softvfp
 150              	clear_object:
 151              	.LFB1:
  25:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  26:C:/Users/isake/Documents/Laboration5/Pong\object.c **** void clear_object(Object * object)
  27:C:/Users/isake/Documents/Laboration5/Pong\object.c **** {
 152              		.loc 1 27 0
 153              		.cfi_startproc
 154              		@ args = 0, pretend = 0, frame = 16
 155              		@ frame_needed = 1, uses_anonymous_args = 0
 156 007a 90B5     		push	{r4, r7, lr}
 157              		.cfi_def_cfa_offset 12
 158              		.cfi_offset 4, -12
 159              		.cfi_offset 7, -8
 160              		.cfi_offset 14, -4
 161 007c 85B0     		sub	sp, sp, #20
 162              		.cfi_def_cfa_offset 32
 163 007e 00AF     		add	r7, sp, #0
 164              		.cfi_def_cfa_register 7
 165 0080 7860     		str	r0, [r7, #4]
 166              	.LBB3:
  28:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 167              		.loc 1 28 0
 168 0082 0F23     		movs	r3, #15
 169 0084 FB18     		adds	r3, r7, r3
 170 0086 0022     		movs	r2, #0
 171 0088 1A70     		strb	r2, [r3]
 172 008a 27E0     		b	.L5
 173              	.L6:
  29:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		pixel(object->geometry->points[i].x + object->pos_x, object->geometry->points[i].y + object->pos_
 174              		.loc 1 29 0 discriminator 3
 175 008c 7B68     		ldr	r3, [r7, #4]
 176 008e 1A68     		ldr	r2, [r3]
 177 0090 0F21     		movs	r1, #15
 178 0092 7B18     		adds	r3, r7, r1
 179 0094 1B78     		ldrb	r3, [r3]
 180 0096 5B00     		lsls	r3, r3, #1
 181 0098 D318     		adds	r3, r2, r3
 182 009a 0333     		adds	r3, r3, #3
 183 009c 1A78     		ldrb	r2, [r3]
 184 009e 7B68     		ldr	r3, [r7, #4]
 185 00a0 1B79     		ldrb	r3, [r3, #4]
 186 00a2 5BB2     		sxtb	r3, r3
 187 00a4 DBB2     		uxtb	r3, r3
 188 00a6 D318     		adds	r3, r2, r3
 189 00a8 D8B2     		uxtb	r0, r3
 190 00aa 7B68     		ldr	r3, [r7, #4]
 191 00ac 1A68     		ldr	r2, [r3]
 192 00ae 0C00     		movs	r4, r1
 193 00b0 7B18     		adds	r3, r7, r1
 194 00b2 1B78     		ldrb	r3, [r3]
 195 00b4 5B00     		lsls	r3, r3, #1
 196 00b6 D318     		adds	r3, r2, r3
 197 00b8 0433     		adds	r3, r3, #4
 198 00ba 1A78     		ldrb	r2, [r3]
 199 00bc 7B68     		ldr	r3, [r7, #4]
 200 00be 5B79     		ldrb	r3, [r3, #5]
 201 00c0 5BB2     		sxtb	r3, r3
 202 00c2 DBB2     		uxtb	r3, r3
 203 00c4 D318     		adds	r3, r2, r3
 204 00c6 DBB2     		uxtb	r3, r3
 205 00c8 0022     		movs	r2, #0
 206 00ca 1900     		movs	r1, r3
 207 00cc FFF7FEFF 		bl	pixel
  28:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 208              		.loc 1 28 0 discriminator 3
 209 00d0 2100     		movs	r1, r4
 210 00d2 7B18     		adds	r3, r7, r1
 211 00d4 1A78     		ldrb	r2, [r3]
 212 00d6 7B18     		adds	r3, r7, r1
 213 00d8 0132     		adds	r2, r2, #1
 214 00da 1A70     		strb	r2, [r3]
 215              	.L5:
  28:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	for (uint8_t i = 0; i < object->geometry->num_points; i++) {
 216              		.loc 1 28 0 is_stmt 0 discriminator 1
 217 00dc 7B68     		ldr	r3, [r7, #4]
 218 00de 1B68     		ldr	r3, [r3]
 219 00e0 1B78     		ldrb	r3, [r3]
 220 00e2 0F22     		movs	r2, #15
 221 00e4 BA18     		adds	r2, r7, r2
 222 00e6 1278     		ldrb	r2, [r2]
 223 00e8 9A42     		cmp	r2, r3
 224 00ea CFD3     		bcc	.L6
 225              	.LBE3:
  30:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  31:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 226              		.loc 1 31 0 is_stmt 1
 227 00ec C046     		nop
 228 00ee BD46     		mov	sp, r7
 229 00f0 05B0     		add	sp, sp, #20
 230              		@ sp needed
 231 00f2 90BD     		pop	{r4, r7, pc}
 232              		.cfi_endproc
 233              	.LFE1:
 235              		.align	1
 236              		.global	move_object
 237              		.syntax unified
 238              		.code	16
 239              		.thumb_func
 240              		.fpu softvfp
 242              	move_object:
 243              	.LFB2:
  32:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  33:C:/Users/isake/Documents/Laboration5/Pong\object.c **** void move_object(Object * object) {
 244              		.loc 1 33 0
 245              		.cfi_startproc
 246              		@ args = 0, pretend = 0, frame = 8
 247              		@ frame_needed = 1, uses_anonymous_args = 0
 248 00f4 80B5     		push	{r7, lr}
 249              		.cfi_def_cfa_offset 8
 250              		.cfi_offset 7, -8
 251              		.cfi_offset 14, -4
 252 00f6 82B0     		sub	sp, sp, #8
 253              		.cfi_def_cfa_offset 16
 254 00f8 00AF     		add	r7, sp, #0
 255              		.cfi_def_cfa_register 7
 256 00fa 7860     		str	r0, [r7, #4]
  34:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  35:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	clear_object(object);
 257              		.loc 1 35 0
 258 00fc 7B68     		ldr	r3, [r7, #4]
 259 00fe 1800     		movs	r0, r3
 260 0100 FFF7FEFF 		bl	clear_object
  36:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  37:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	object->pos_x += object->vel_x;
 261              		.loc 1 37 0
 262 0104 7B68     		ldr	r3, [r7, #4]
 263 0106 1B79     		ldrb	r3, [r3, #4]
 264 0108 5BB2     		sxtb	r3, r3
 265 010a DAB2     		uxtb	r2, r3
 266 010c 7B68     		ldr	r3, [r7, #4]
 267 010e 9B79     		ldrb	r3, [r3, #6]
 268 0110 5BB2     		sxtb	r3, r3
 269 0112 DBB2     		uxtb	r3, r3
 270 0114 D318     		adds	r3, r2, r3
 271 0116 DBB2     		uxtb	r3, r3
 272 0118 5AB2     		sxtb	r2, r3
 273 011a 7B68     		ldr	r3, [r7, #4]
 274 011c 1A71     		strb	r2, [r3, #4]
  38:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	object->pos_y += object->vel_y;
 275              		.loc 1 38 0
 276 011e 7B68     		ldr	r3, [r7, #4]
 277 0120 5B79     		ldrb	r3, [r3, #5]
 278 0122 5BB2     		sxtb	r3, r3
 279 0124 DAB2     		uxtb	r2, r3
 280 0126 7B68     		ldr	r3, [r7, #4]
 281 0128 DB79     		ldrb	r3, [r3, #7]
 282 012a 5BB2     		sxtb	r3, r3
 283 012c DBB2     		uxtb	r3, r3
 284 012e D318     		adds	r3, r2, r3
 285 0130 DBB2     		uxtb	r3, r3
 286 0132 5AB2     		sxtb	r2, r3
 287 0134 7B68     		ldr	r3, [r7, #4]
 288 0136 5A71     		strb	r2, [r3, #5]
  39:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  40:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	/* Om objektet i fråga är påväg över någon kant, skifta riktning */
  41:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	if (!(0 <= object->pos_x && object->pos_x + object->geometry->width < LCD_WIDTH)) {
 289              		.loc 1 41 0
 290 0138 7B68     		ldr	r3, [r7, #4]
 291 013a 1B79     		ldrb	r3, [r3, #4]
 292 013c 5BB2     		sxtb	r3, r3
 293 013e 002B     		cmp	r3, #0
 294 0140 0BDB     		blt	.L8
 295              		.loc 1 41 0 is_stmt 0 discriminator 1
 296 0142 7B68     		ldr	r3, [r7, #4]
 297 0144 1B79     		ldrb	r3, [r3, #4]
 298 0146 5BB2     		sxtb	r3, r3
 299 0148 1A00     		movs	r2, r3
 300 014a 7B68     		ldr	r3, [r7, #4]
 301 014c 1B68     		ldr	r3, [r3]
 302 014e 5B78     		ldrb	r3, [r3, #1]
 303 0150 D318     		adds	r3, r2, r3
 304 0152 174A     		ldr	r2, .L12
 305 0154 1278     		ldrb	r2, [r2]
 306 0156 9342     		cmp	r3, r2
 307 0158 08DB     		blt	.L9
 308              	.L8:
  42:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		object->vel_x *= -1;
 309              		.loc 1 42 0 is_stmt 1
 310 015a 7B68     		ldr	r3, [r7, #4]
 311 015c 9B79     		ldrb	r3, [r3, #6]
 312 015e 5BB2     		sxtb	r3, r3
 313 0160 DBB2     		uxtb	r3, r3
 314 0162 5B42     		rsbs	r3, r3, #0
 315 0164 DBB2     		uxtb	r3, r3
 316 0166 5AB2     		sxtb	r2, r3
 317 0168 7B68     		ldr	r3, [r7, #4]
 318 016a 9A71     		strb	r2, [r3, #6]
 319              	.L9:
  43:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  44:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  45:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	if (!(0 <= object->pos_y && object->pos_y + object->geometry->height < LCD_HEIGHT)) {
 320              		.loc 1 45 0
 321 016c 7B68     		ldr	r3, [r7, #4]
 322 016e 5B79     		ldrb	r3, [r3, #5]
 323 0170 5BB2     		sxtb	r3, r3
 324 0172 002B     		cmp	r3, #0
 325 0174 0BDB     		blt	.L10
 326              		.loc 1 45 0 is_stmt 0 discriminator 1
 327 0176 7B68     		ldr	r3, [r7, #4]
 328 0178 5B79     		ldrb	r3, [r3, #5]
 329 017a 5BB2     		sxtb	r3, r3
 330 017c 1A00     		movs	r2, r3
 331 017e 7B68     		ldr	r3, [r7, #4]
 332 0180 1B68     		ldr	r3, [r3]
 333 0182 9B78     		ldrb	r3, [r3, #2]
 334 0184 D318     		adds	r3, r2, r3
 335 0186 0B4A     		ldr	r2, .L12+4
 336 0188 1278     		ldrb	r2, [r2]
 337 018a 9342     		cmp	r3, r2
 338 018c 08DB     		blt	.L11
 339              	.L10:
  46:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 		object->vel_y *= -1;
 340              		.loc 1 46 0 is_stmt 1
 341 018e 7B68     		ldr	r3, [r7, #4]
 342 0190 DB79     		ldrb	r3, [r3, #7]
 343 0192 5BB2     		sxtb	r3, r3
 344 0194 DBB2     		uxtb	r3, r3
 345 0196 5B42     		rsbs	r3, r3, #0
 346 0198 DBB2     		uxtb	r3, r3
 347 019a 5AB2     		sxtb	r2, r3
 348 019c 7B68     		ldr	r3, [r7, #4]
 349 019e DA71     		strb	r2, [r3, #7]
 350              	.L11:
  47:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	}
  48:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  49:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	draw_object(object);
 351              		.loc 1 49 0
 352 01a0 7B68     		ldr	r3, [r7, #4]
 353 01a2 1800     		movs	r0, r3
 354 01a4 FFF7FEFF 		bl	draw_object
  50:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	
  51:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 355              		.loc 1 51 0
 356 01a8 C046     		nop
 357 01aa BD46     		mov	sp, r7
 358 01ac 02B0     		add	sp, sp, #8
 359              		@ sp needed
 360 01ae 80BD     		pop	{r7, pc}
 361              	.L13:
 362              		.align	2
 363              	.L12:
 364 01b0 00000000 		.word	LCD_WIDTH
 365 01b4 00000000 		.word	LCD_HEIGHT
 366              		.cfi_endproc
 367              	.LFE2:
 369              		.align	1
 370              		.global	set_object_vel
 371              		.syntax unified
 372              		.code	16
 373              		.thumb_func
 374              		.fpu softvfp
 376              	set_object_vel:
 377              	.LFB3:
  52:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  53:C:/Users/isake/Documents/Laboration5/Pong\object.c **** void set_object_vel(Object * object, int8_t vel_x, int8_t vel_y)
  54:C:/Users/isake/Documents/Laboration5/Pong\object.c **** {
 378              		.loc 1 54 0
 379              		.cfi_startproc
 380              		@ args = 0, pretend = 0, frame = 8
 381              		@ frame_needed = 1, uses_anonymous_args = 0
 382 01b8 80B5     		push	{r7, lr}
 383              		.cfi_def_cfa_offset 8
 384              		.cfi_offset 7, -8
 385              		.cfi_offset 14, -4
 386 01ba 82B0     		sub	sp, sp, #8
 387              		.cfi_def_cfa_offset 16
 388 01bc 00AF     		add	r7, sp, #0
 389              		.cfi_def_cfa_register 7
 390 01be 7860     		str	r0, [r7, #4]
 391 01c0 0800     		movs	r0, r1
 392 01c2 1100     		movs	r1, r2
 393 01c4 FB1C     		adds	r3, r7, #3
 394 01c6 021C     		adds	r2, r0, #0
 395 01c8 1A70     		strb	r2, [r3]
 396 01ca BB1C     		adds	r3, r7, #2
 397 01cc 0A1C     		adds	r2, r1, #0
 398 01ce 1A70     		strb	r2, [r3]
  55:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	object->vel_x = vel_x;
 399              		.loc 1 55 0
 400 01d0 7B68     		ldr	r3, [r7, #4]
 401 01d2 FA1C     		adds	r2, r7, #3
 402 01d4 1278     		ldrb	r2, [r2]
 403 01d6 9A71     		strb	r2, [r3, #6]
  56:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	object->vel_y = vel_y;
 404              		.loc 1 56 0
 405 01d8 7B68     		ldr	r3, [r7, #4]
 406 01da BA1C     		adds	r2, r7, #2
 407 01dc 1278     		ldrb	r2, [r2]
 408 01de DA71     		strb	r2, [r3, #7]
  57:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 409              		.loc 1 57 0
 410 01e0 C046     		nop
 411 01e2 BD46     		mov	sp, r7
 412 01e4 02B0     		add	sp, sp, #8
 413              		@ sp needed
 414 01e6 80BD     		pop	{r7, pc}
 415              		.cfi_endproc
 416              	.LFE3:
 418              		.align	1
 419              		.global	create_ball
 420              		.syntax unified
 421              		.code	16
 422              		.thumb_func
 423              		.fpu softvfp
 425              	create_ball:
 426              	.LFB4:
  58:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 
  59:C:/Users/isake/Documents/Laboration5/Pong\object.c **** Object create_ball(int8_t pos_x, int8_t pos_y, int8_t vel_x, int8_t vel_y) {
 427              		.loc 1 59 0
 428              		.cfi_startproc
 429              		@ args = 4, pretend = 0, frame = 8
 430              		@ frame_needed = 1, uses_anonymous_args = 0
 431 01e8 90B5     		push	{r4, r7, lr}
 432              		.cfi_def_cfa_offset 12
 433              		.cfi_offset 4, -12
 434              		.cfi_offset 7, -8
 435              		.cfi_offset 14, -4
 436 01ea 83B0     		sub	sp, sp, #12
 437              		.cfi_def_cfa_offset 24
 438 01ec 00AF     		add	r7, sp, #0
 439              		.cfi_def_cfa_register 7
 440 01ee 7860     		str	r0, [r7, #4]
 441 01f0 0C00     		movs	r4, r1
 442 01f2 1000     		movs	r0, r2
 443 01f4 1900     		movs	r1, r3
 444 01f6 FB1C     		adds	r3, r7, #3
 445 01f8 221C     		adds	r2, r4, #0
 446 01fa 1A70     		strb	r2, [r3]
 447 01fc BB1C     		adds	r3, r7, #2
 448 01fe 021C     		adds	r2, r0, #0
 449 0200 1A70     		strb	r2, [r3]
 450 0202 7B1C     		adds	r3, r7, #1
 451 0204 0A1C     		adds	r2, r1, #0
 452 0206 1A70     		strb	r2, [r3]
  60:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	return (Object) {
 453              		.loc 1 60 0
 454 0208 7B68     		ldr	r3, [r7, #4]
 455 020a 114A     		ldr	r2, .L17
 456 020c 1A60     		str	r2, [r3]
 457 020e 7B68     		ldr	r3, [r7, #4]
 458 0210 FA1C     		adds	r2, r7, #3
 459 0212 1278     		ldrb	r2, [r2]
 460 0214 1A71     		strb	r2, [r3, #4]
 461 0216 7B68     		ldr	r3, [r7, #4]
 462 0218 BA1C     		adds	r2, r7, #2
 463 021a 1278     		ldrb	r2, [r2]
 464 021c 5A71     		strb	r2, [r3, #5]
 465 021e 7B68     		ldr	r3, [r7, #4]
 466 0220 7A1C     		adds	r2, r7, #1
 467 0222 1278     		ldrb	r2, [r2]
 468 0224 9A71     		strb	r2, [r3, #6]
 469 0226 7B68     		ldr	r3, [r7, #4]
 470 0228 1822     		movs	r2, #24
 471 022a BA18     		adds	r2, r7, r2
 472 022c 1278     		ldrb	r2, [r2]
 473 022e DA71     		strb	r2, [r3, #7]
 474 0230 7B68     		ldr	r3, [r7, #4]
 475 0232 084A     		ldr	r2, .L17+4
 476 0234 9A60     		str	r2, [r3, #8]
 477 0236 7B68     		ldr	r3, [r7, #4]
 478 0238 074A     		ldr	r2, .L17+8
 479 023a DA60     		str	r2, [r3, #12]
 480 023c 7B68     		ldr	r3, [r7, #4]
 481 023e 074A     		ldr	r2, .L17+12
 482 0240 1A61     		str	r2, [r3, #16]
 483 0242 7B68     		ldr	r3, [r7, #4]
 484 0244 064A     		ldr	r2, .L17+16
 485 0246 5A61     		str	r2, [r3, #20]
  61:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	&geometry_ball,
  62:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	pos_x, pos_y,
  63:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	vel_x, vel_y,
  64:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	draw_object,
  65:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	clear_object,
  66:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	move_object,
  67:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	set_object_vel
  68:C:/Users/isake/Documents/Laboration5/Pong\object.c **** 	};
  69:C:/Users/isake/Documents/Laboration5/Pong\object.c **** }
 486              		.loc 1 69 0
 487 0248 7868     		ldr	r0, [r7, #4]
 488 024a BD46     		mov	sp, r7
 489 024c 03B0     		add	sp, sp, #12
 490              		@ sp needed
 491 024e 90BD     		pop	{r4, r7, pc}
 492              	.L18:
 493              		.align	2
 494              	.L17:
 495 0250 00000000 		.word	geometry_ball
 496 0254 00000000 		.word	draw_object
 497 0258 00000000 		.word	clear_object
 498 025c 00000000 		.word	move_object
 499 0260 00000000 		.word	set_object_vel
 500              		.cfi_endproc
 501              	.LFE4:
 503              	.Letext0:
 504              		.file 2 "include/intdef.h"
 505              		.file 3 "include/object.h"
 506              		.file 4 "include/GPIO.h"
 507              		.file 5 "include/graphicdisplay.h"
