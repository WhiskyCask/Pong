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
  11              		.file	"asciidisplay.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.syntax unified
  17              		.code	16
  18              		.thumb_func
  19              		.fpu softvfp
  21              	ascii_ctrl_bit_set:
  22              	.LFB0:
  23              		.file 1 "/home/oscar/Dokument/MOP/Pong/asciidisplay.c"
   1:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** /*
   2:/home/oscar/Dokument/MOP/Pong/asciidisplay.c ****  * 	startup.c
   3:/home/oscar/Dokument/MOP/Pong/asciidisplay.c ****  *
   4:/home/oscar/Dokument/MOP/Pong/asciidisplay.c ****  */
   5:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
   6:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** #include "asciidisplay.h"
   7:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
   8:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** enum {
   9:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	
  10:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	B_E = 64, /* Enable signal */
  11:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	B_RESET = 32, /* Reset signal */
  12:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	B_CS2 = 16, /* Välj högra grafiska displayen */
  13:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	B_CS1 = 8, /* Välj vänstra grafiska displayen */
  14:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	B_SELECT = 4, /* 0 = Grafisk display, 1 = ASCII-display */
  15:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	B_RW = 2, /* 0 = Write, 1 = Read */
  16:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	B_RS = 1 /* 0 = Control, 1 = Data */
  17:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	
  18:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** };
  19:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
  20:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** enum {
  21:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	
  22:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ASCII_FUNCTION_SET = 0x38, /* Ställer in 2 rader och 5x8 punkter */
  23:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ASCII_DISPLAY_CTRL = 0xE, /* Tänd display och markör, makrören skall inte blinkar */
  24:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ASCII_CLEAR_DISPLAY = 0x1, /* Rensa skärmen */
  25:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ASCII_ENTRY_MODE_SET = 0x6, /* Sätt till "increment-mode" och ingen skift av adressbufferten */
  26:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ASCII_BUSY = 0x80 /* Värdet som skall finnas i registret då displayen är upptagen */
  27:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	
  28:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** };
  29:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
  30:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** /* Adressera ASCII-display och ettställ de bitar som är 1 i x */
  31:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** static void ascii_ctrl_bit_set(uint8_t x) 
  32:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
  24              		.loc 1 32 0
  25              		.cfi_startproc
  26              		@ args = 0, pretend = 0, frame = 16
  27              		@ frame_needed = 1, uses_anonymous_args = 0
  28 0000 80B5     		push	{r7, lr}
  29              		.cfi_def_cfa_offset 8
  30              		.cfi_offset 7, -8
  31              		.cfi_offset 14, -4
  32 0002 84B0     		sub	sp, sp, #16
  33              		.cfi_def_cfa_offset 24
  34 0004 00AF     		add	r7, sp, #0
  35              		.cfi_def_cfa_register 7
  36 0006 0200     		movs	r2, r0
  37 0008 FB1D     		adds	r3, r7, #7
  38 000a 1A70     		strb	r2, [r3]
  33:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	uint8_t c = GPIO_E->ODR_LOW;
  39              		.loc 1 33 0
  40 000c 0C4B     		ldr	r3, .L2
  41 000e 1A68     		ldr	r2, [r3]
  42 0010 0F20     		movs	r0, #15
  43 0012 3B18     		adds	r3, r7, r0
  44 0014 127D     		ldrb	r2, [r2, #20]
  45 0016 1A70     		strb	r2, [r3]
  34:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	c |= B_SELECT | x;
  46              		.loc 1 34 0
  47 0018 FA1D     		adds	r2, r7, #7
  48 001a 3B18     		adds	r3, r7, r0
  49 001c 1278     		ldrb	r2, [r2]
  50 001e 1B78     		ldrb	r3, [r3]
  51 0020 1343     		orrs	r3, r2
  52 0022 DAB2     		uxtb	r2, r3
  53 0024 3B18     		adds	r3, r7, r0
  54 0026 0421     		movs	r1, #4
  55 0028 0A43     		orrs	r2, r1
  56 002a 1A70     		strb	r2, [r3]
  35:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	GPIO_E->ODR_LOW = c;
  57              		.loc 1 35 0
  58 002c 044B     		ldr	r3, .L2
  59 002e 1B68     		ldr	r3, [r3]
  60 0030 3A18     		adds	r2, r7, r0
  61 0032 1278     		ldrb	r2, [r2]
  62 0034 1A75     		strb	r2, [r3, #20]
  36:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }
  63              		.loc 1 36 0
  64 0036 C046     		nop
  65 0038 BD46     		mov	sp, r7
  66 003a 04B0     		add	sp, sp, #16
  67              		@ sp needed
  68 003c 80BD     		pop	{r7, pc}
  69              	.L3:
  70 003e C046     		.align	2
  71              	.L2:
  72 0040 00000000 		.word	GPIO_E
  73              		.cfi_endproc
  74              	.LFE0:
  76              		.align	1
  77              		.syntax unified
  78              		.code	16
  79              		.thumb_func
  80              		.fpu softvfp
  82              	ascii_ctrl_bit_clear:
  83              	.LFB1:
  37:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
  38:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** /* Adressera ASCII-display och nollställ de bitar som är 1 i x */
  39:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** static void ascii_ctrl_bit_clear(uint8_t x)
  40:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
  84              		.loc 1 40 0
  85              		.cfi_startproc
  86              		@ args = 0, pretend = 0, frame = 16
  87              		@ frame_needed = 1, uses_anonymous_args = 0
  88 0044 80B5     		push	{r7, lr}
  89              		.cfi_def_cfa_offset 8
  90              		.cfi_offset 7, -8
  91              		.cfi_offset 14, -4
  92 0046 84B0     		sub	sp, sp, #16
  93              		.cfi_def_cfa_offset 24
  94 0048 00AF     		add	r7, sp, #0
  95              		.cfi_def_cfa_register 7
  96 004a 0200     		movs	r2, r0
  97 004c FB1D     		adds	r3, r7, #7
  98 004e 1A70     		strb	r2, [r3]
  41:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	uint8_t c = GPIO_E->ODR_LOW;
  99              		.loc 1 41 0
 100 0050 0E4B     		ldr	r3, .L5
 101 0052 1A68     		ldr	r2, [r3]
 102 0054 0F21     		movs	r1, #15
 103 0056 7B18     		adds	r3, r7, r1
 104 0058 127D     		ldrb	r2, [r2, #20]
 105 005a 1A70     		strb	r2, [r3]
  42:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	c &= (B_SELECT | ~x);
 106              		.loc 1 42 0
 107 005c FB1D     		adds	r3, r7, #7
 108 005e 1B78     		ldrb	r3, [r3]
 109 0060 5BB2     		sxtb	r3, r3
 110 0062 DB43     		mvns	r3, r3
 111 0064 5BB2     		sxtb	r3, r3
 112 0066 0422     		movs	r2, #4
 113 0068 1343     		orrs	r3, r2
 114 006a 5BB2     		sxtb	r3, r3
 115 006c 7A18     		adds	r2, r7, r1
 116 006e 1278     		ldrb	r2, [r2]
 117 0070 52B2     		sxtb	r2, r2
 118 0072 1340     		ands	r3, r2
 119 0074 5AB2     		sxtb	r2, r3
 120 0076 7B18     		adds	r3, r7, r1
 121 0078 1A70     		strb	r2, [r3]
  43:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	GPIO_E->ODR_LOW = c;
 122              		.loc 1 43 0
 123 007a 044B     		ldr	r3, .L5
 124 007c 1B68     		ldr	r3, [r3]
 125 007e 7A18     		adds	r2, r7, r1
 126 0080 1278     		ldrb	r2, [r2]
 127 0082 1A75     		strb	r2, [r3, #20]
  44:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }
 128              		.loc 1 44 0
 129 0084 C046     		nop
 130 0086 BD46     		mov	sp, r7
 131 0088 04B0     		add	sp, sp, #16
 132              		@ sp needed
 133 008a 80BD     		pop	{r7, pc}
 134              	.L6:
 135              		.align	2
 136              	.L5:
 137 008c 00000000 		.word	GPIO_E
 138              		.cfi_endproc
 139              	.LFE1:
 141              		.align	1
 142              		.syntax unified
 143              		.code	16
 144              		.thumb_func
 145              		.fpu softvfp
 147              	ascii_write_controller:
 148              	.LFB2:
  45:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
  46:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** static void ascii_write_controller(uint8_t c)
  47:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
 149              		.loc 1 47 0
 150              		.cfi_startproc
 151              		@ args = 0, pretend = 0, frame = 8
 152              		@ frame_needed = 1, uses_anonymous_args = 0
 153 0090 80B5     		push	{r7, lr}
 154              		.cfi_def_cfa_offset 8
 155              		.cfi_offset 7, -8
 156              		.cfi_offset 14, -4
 157 0092 82B0     		sub	sp, sp, #8
 158              		.cfi_def_cfa_offset 16
 159 0094 00AF     		add	r7, sp, #0
 160              		.cfi_def_cfa_register 7
 161 0096 0200     		movs	r2, r0
 162 0098 FB1D     		adds	r3, r7, #7
 163 009a 1A70     		strb	r2, [r3]
  48:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_set(B_E); /* Ettställer B_E */
 164              		.loc 1 48 0
 165 009c 4020     		movs	r0, #64
 166 009e FFF7AFFF 		bl	ascii_ctrl_bit_set
  49:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	GPIO_E->ODR_HIGH = c;
 167              		.loc 1 49 0
 168 00a2 074B     		ldr	r3, .L8
 169 00a4 1B68     		ldr	r3, [r3]
 170 00a6 FA1D     		adds	r2, r7, #7
 171 00a8 1278     		ldrb	r2, [r2]
 172 00aa 5A75     		strb	r2, [r3, #21]
  50:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	delay_250ns();
 173              		.loc 1 50 0
 174 00ac FFF7FEFF 		bl	delay_250ns
  51:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_clear(B_E); /* Nollställer B_E */
 175              		.loc 1 51 0
 176 00b0 4020     		movs	r0, #64
 177 00b2 FFF7C7FF 		bl	ascii_ctrl_bit_clear
  52:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }
 178              		.loc 1 52 0
 179 00b6 C046     		nop
 180 00b8 BD46     		mov	sp, r7
 181 00ba 02B0     		add	sp, sp, #8
 182              		@ sp needed
 183 00bc 80BD     		pop	{r7, pc}
 184              	.L9:
 185 00be C046     		.align	2
 186              	.L8:
 187 00c0 00000000 		.word	GPIO_E
 188              		.cfi_endproc
 189              	.LFE2:
 191              		.align	1
 192              		.syntax unified
 193              		.code	16
 194              		.thumb_func
 195              		.fpu softvfp
 197              	ascii_read_controller:
 198              	.LFB3:
  53:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
  54:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** static uint8_t ascii_read_controller()
  55:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
 199              		.loc 1 55 0
 200              		.cfi_startproc
 201              		@ args = 0, pretend = 0, frame = 8
 202              		@ frame_needed = 1, uses_anonymous_args = 0
 203 00c4 80B5     		push	{r7, lr}
 204              		.cfi_def_cfa_offset 8
 205              		.cfi_offset 7, -8
 206              		.cfi_offset 14, -4
 207 00c6 82B0     		sub	sp, sp, #8
 208              		.cfi_def_cfa_offset 16
 209 00c8 00AF     		add	r7, sp, #0
 210              		.cfi_def_cfa_register 7
  56:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_set(B_E); /* Ettställer B_E */
 211              		.loc 1 56 0
 212 00ca 4020     		movs	r0, #64
 213 00cc FFF798FF 		bl	ascii_ctrl_bit_set
  57:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	delay_250ns();
 214              		.loc 1 57 0
 215 00d0 FFF7FEFF 		bl	delay_250ns
  58:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	delay_250ns();
 216              		.loc 1 58 0
 217 00d4 FFF7FEFF 		bl	delay_250ns
  59:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	uint8_t c = GPIO_E->IDR_HIGH;
 218              		.loc 1 59 0
 219 00d8 064B     		ldr	r3, .L12
 220 00da 1A68     		ldr	r2, [r3]
 221 00dc FB1D     		adds	r3, r7, #7
 222 00de 527C     		ldrb	r2, [r2, #17]
 223 00e0 1A70     		strb	r2, [r3]
  60:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_clear(B_E); /* Nollställer B_E */
 224              		.loc 1 60 0
 225 00e2 4020     		movs	r0, #64
 226 00e4 FFF7AEFF 		bl	ascii_ctrl_bit_clear
  61:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	return c;
 227              		.loc 1 61 0
 228 00e8 FB1D     		adds	r3, r7, #7
 229 00ea 1B78     		ldrb	r3, [r3]
  62:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }
 230              		.loc 1 62 0
 231 00ec 1800     		movs	r0, r3
 232 00ee BD46     		mov	sp, r7
 233 00f0 02B0     		add	sp, sp, #8
 234              		@ sp needed
 235 00f2 80BD     		pop	{r7, pc}
 236              	.L13:
 237              		.align	2
 238              	.L12:
 239 00f4 00000000 		.word	GPIO_E
 240              		.cfi_endproc
 241              	.LFE3:
 243              		.align	1
 244              		.syntax unified
 245              		.code	16
 246              		.thumb_func
 247              		.fpu softvfp
 249              	ascii_read_status:
 250              	.LFB4:
  63:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
  64:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** static uint8_t ascii_read_status()
  65:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
 251              		.loc 1 65 0
 252              		.cfi_startproc
 253              		@ args = 0, pretend = 0, frame = 8
 254              		@ frame_needed = 1, uses_anonymous_args = 0
 255 00f8 90B5     		push	{r4, r7, lr}
 256              		.cfi_def_cfa_offset 12
 257              		.cfi_offset 4, -12
 258              		.cfi_offset 7, -8
 259              		.cfi_offset 14, -4
 260 00fa 83B0     		sub	sp, sp, #12
 261              		.cfi_def_cfa_offset 24
 262 00fc 00AF     		add	r7, sp, #0
 263              		.cfi_def_cfa_register 7
  66:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	GPIO_E->MODER = 0x00005555; /* Sätter E15-8 till inport och E7-1 till utport */
 264              		.loc 1 66 0
 265 00fe 0C4B     		ldr	r3, .L16
 266 0100 1B68     		ldr	r3, [r3]
 267 0102 0C4A     		ldr	r2, .L16+4
 268 0104 1A60     		str	r2, [r3]
  67:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_clear(B_RS); /* Nollställer B_RS */
 269              		.loc 1 67 0
 270 0106 0120     		movs	r0, #1
 271 0108 FFF79CFF 		bl	ascii_ctrl_bit_clear
  68:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_set(B_RW); /* Ettställer B_RW */
 272              		.loc 1 68 0
 273 010c 0220     		movs	r0, #2
 274 010e FFF777FF 		bl	ascii_ctrl_bit_set
  69:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	uint8_t c = ascii_read_controller();
 275              		.loc 1 69 0
 276 0112 FC1D     		adds	r4, r7, #7
 277 0114 FFF7D6FF 		bl	ascii_read_controller
 278 0118 0300     		movs	r3, r0
 279 011a 2370     		strb	r3, [r4]
  70:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	GPIO_E->MODER = 0x55555555; /* Sätter hela Port E till utport */
 280              		.loc 1 70 0
 281 011c 044B     		ldr	r3, .L16
 282 011e 1B68     		ldr	r3, [r3]
 283 0120 054A     		ldr	r2, .L16+8
 284 0122 1A60     		str	r2, [r3]
  71:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	return c;
 285              		.loc 1 71 0
 286 0124 FB1D     		adds	r3, r7, #7
 287 0126 1B78     		ldrb	r3, [r3]
  72:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }
 288              		.loc 1 72 0
 289 0128 1800     		movs	r0, r3
 290 012a BD46     		mov	sp, r7
 291 012c 03B0     		add	sp, sp, #12
 292              		@ sp needed
 293 012e 90BD     		pop	{r4, r7, pc}
 294              	.L17:
 295              		.align	2
 296              	.L16:
 297 0130 00000000 		.word	GPIO_E
 298 0134 55550000 		.word	21845
 299 0138 55555555 		.word	1431655765
 300              		.cfi_endproc
 301              	.LFE4:
 303              		.align	1
 304              		.syntax unified
 305              		.code	16
 306              		.thumb_func
 307              		.fpu softvfp
 309              	ascii_read_data:
 310              	.LFB5:
  73:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
  74:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** static uint8_t ascii_read_data()
  75:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
 311              		.loc 1 75 0
 312              		.cfi_startproc
 313              		@ args = 0, pretend = 0, frame = 8
 314              		@ frame_needed = 1, uses_anonymous_args = 0
 315 013c 90B5     		push	{r4, r7, lr}
 316              		.cfi_def_cfa_offset 12
 317              		.cfi_offset 4, -12
 318              		.cfi_offset 7, -8
 319              		.cfi_offset 14, -4
 320 013e 83B0     		sub	sp, sp, #12
 321              		.cfi_def_cfa_offset 24
 322 0140 00AF     		add	r7, sp, #0
 323              		.cfi_def_cfa_register 7
  76:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	GPIO_E->MODER = 0x00005555; /* Sätter E15-8 till inport och E7-1 till utport */
 324              		.loc 1 76 0
 325 0142 0C4B     		ldr	r3, .L20
 326 0144 1B68     		ldr	r3, [r3]
 327 0146 0C4A     		ldr	r2, .L20+4
 328 0148 1A60     		str	r2, [r3]
  77:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_set(B_RS); /* Ettställer B_RS */
 329              		.loc 1 77 0
 330 014a 0120     		movs	r0, #1
 331 014c FFF758FF 		bl	ascii_ctrl_bit_set
  78:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_set(B_RW); /* Ettställer B_RW */
 332              		.loc 1 78 0
 333 0150 0220     		movs	r0, #2
 334 0152 FFF755FF 		bl	ascii_ctrl_bit_set
  79:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	uint8_t c = ascii_read_controller();
 335              		.loc 1 79 0
 336 0156 FC1D     		adds	r4, r7, #7
 337 0158 FFF7B4FF 		bl	ascii_read_controller
 338 015c 0300     		movs	r3, r0
 339 015e 2370     		strb	r3, [r4]
  80:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	GPIO_E->MODER = 0x55555555; /* Sätter hela Port E till utport */
 340              		.loc 1 80 0
 341 0160 044B     		ldr	r3, .L20
 342 0162 1B68     		ldr	r3, [r3]
 343 0164 054A     		ldr	r2, .L20+8
 344 0166 1A60     		str	r2, [r3]
  81:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	return c;
 345              		.loc 1 81 0
 346 0168 FB1D     		adds	r3, r7, #7
 347 016a 1B78     		ldrb	r3, [r3]
  82:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }
 348              		.loc 1 82 0
 349 016c 1800     		movs	r0, r3
 350 016e BD46     		mov	sp, r7
 351 0170 03B0     		add	sp, sp, #12
 352              		@ sp needed
 353 0172 90BD     		pop	{r4, r7, pc}
 354              	.L21:
 355              		.align	2
 356              	.L20:
 357 0174 00000000 		.word	GPIO_E
 358 0178 55550000 		.word	21845
 359 017c 55555555 		.word	1431655765
 360              		.cfi_endproc
 361              	.LFE5:
 363              		.align	1
 364              		.syntax unified
 365              		.code	16
 366              		.thumb_func
 367              		.fpu softvfp
 369              	ascii_write_cmd:
 370              	.LFB6:
  83:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
  84:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** static void ascii_write_cmd(uint8_t c)
  85:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
 371              		.loc 1 85 0
 372              		.cfi_startproc
 373              		@ args = 0, pretend = 0, frame = 8
 374              		@ frame_needed = 1, uses_anonymous_args = 0
 375 0180 80B5     		push	{r7, lr}
 376              		.cfi_def_cfa_offset 8
 377              		.cfi_offset 7, -8
 378              		.cfi_offset 14, -4
 379 0182 82B0     		sub	sp, sp, #8
 380              		.cfi_def_cfa_offset 16
 381 0184 00AF     		add	r7, sp, #0
 382              		.cfi_def_cfa_register 7
 383 0186 0200     		movs	r2, r0
 384 0188 FB1D     		adds	r3, r7, #7
 385 018a 1A70     		strb	r2, [r3]
  86:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_clear(B_RS); /* Nollställer B_RS */
 386              		.loc 1 86 0
 387 018c 0120     		movs	r0, #1
 388 018e FFF759FF 		bl	ascii_ctrl_bit_clear
  87:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_clear(B_RW); /* Nollställer B_RW */
 389              		.loc 1 87 0
 390 0192 0220     		movs	r0, #2
 391 0194 FFF756FF 		bl	ascii_ctrl_bit_clear
  88:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_write_controller(c);
 392              		.loc 1 88 0
 393 0198 FB1D     		adds	r3, r7, #7
 394 019a 1B78     		ldrb	r3, [r3]
 395 019c 1800     		movs	r0, r3
 396 019e FFF777FF 		bl	ascii_write_controller
  89:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }
 397              		.loc 1 89 0
 398 01a2 C046     		nop
 399 01a4 BD46     		mov	sp, r7
 400 01a6 02B0     		add	sp, sp, #8
 401              		@ sp needed
 402 01a8 80BD     		pop	{r7, pc}
 403              		.cfi_endproc
 404              	.LFE6:
 406              		.align	1
 407              		.syntax unified
 408              		.code	16
 409              		.thumb_func
 410              		.fpu softvfp
 412              	ascii_write_data:
 413              	.LFB7:
  90:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
  91:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** static void ascii_write_data(uint8_t c)
  92:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
 414              		.loc 1 92 0
 415              		.cfi_startproc
 416              		@ args = 0, pretend = 0, frame = 8
 417              		@ frame_needed = 1, uses_anonymous_args = 0
 418 01aa 80B5     		push	{r7, lr}
 419              		.cfi_def_cfa_offset 8
 420              		.cfi_offset 7, -8
 421              		.cfi_offset 14, -4
 422 01ac 82B0     		sub	sp, sp, #8
 423              		.cfi_def_cfa_offset 16
 424 01ae 00AF     		add	r7, sp, #0
 425              		.cfi_def_cfa_register 7
 426 01b0 0200     		movs	r2, r0
 427 01b2 FB1D     		adds	r3, r7, #7
 428 01b4 1A70     		strb	r2, [r3]
  93:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_set(B_RS); /* Ettställer B_RS */
 429              		.loc 1 93 0
 430 01b6 0120     		movs	r0, #1
 431 01b8 FFF722FF 		bl	ascii_ctrl_bit_set
  94:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_ctrl_bit_clear(B_RW); /* Nollställer B_RW */
 432              		.loc 1 94 0
 433 01bc 0220     		movs	r0, #2
 434 01be FFF741FF 		bl	ascii_ctrl_bit_clear
  95:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_write_controller(c);
 435              		.loc 1 95 0
 436 01c2 FB1D     		adds	r3, r7, #7
 437 01c4 1B78     		ldrb	r3, [r3]
 438 01c6 1800     		movs	r0, r3
 439 01c8 FFF762FF 		bl	ascii_write_controller
  96:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }
 440              		.loc 1 96 0
 441 01cc C046     		nop
 442 01ce BD46     		mov	sp, r7
 443 01d0 02B0     		add	sp, sp, #8
 444              		@ sp needed
 445 01d2 80BD     		pop	{r7, pc}
 446              		.cfi_endproc
 447              	.LFE7:
 449              		.align	1
 450              		.syntax unified
 451              		.code	16
 452              		.thumb_func
 453              		.fpu softvfp
 455              	ascii_command:
 456              	.LFB8:
  97:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
  98:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** static void ascii_command(uint8_t c)
  99:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
 457              		.loc 1 99 0
 458              		.cfi_startproc
 459              		@ args = 0, pretend = 0, frame = 8
 460              		@ frame_needed = 1, uses_anonymous_args = 0
 461 01d4 80B5     		push	{r7, lr}
 462              		.cfi_def_cfa_offset 8
 463              		.cfi_offset 7, -8
 464              		.cfi_offset 14, -4
 465 01d6 82B0     		sub	sp, sp, #8
 466              		.cfi_def_cfa_offset 16
 467 01d8 00AF     		add	r7, sp, #0
 468              		.cfi_def_cfa_register 7
 469 01da 0200     		movs	r2, r0
 470 01dc FB1D     		adds	r3, r7, #7
 471 01de 1A70     		strb	r2, [r3]
 100:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	while ((ascii_read_status() & ASCII_BUSY) == ASCII_BUSY) {
 472              		.loc 1 100 0
 473 01e0 C046     		nop
 474              	.L25:
 475              		.loc 1 100 0 is_stmt 0 discriminator 1
 476 01e2 FFF789FF 		bl	ascii_read_status
 477 01e6 0300     		movs	r3, r0
 478 01e8 1A00     		movs	r2, r3
 479 01ea 8023     		movs	r3, #128
 480 01ec 1340     		ands	r3, r2
 481 01ee 802B     		cmp	r3, #128
 482 01f0 F7D0     		beq	.L25
 101:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 		/*  Vänta tills statusflaggan blir noll */
 102:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	}
 103:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	delay_mikro(8); /* Latenstid för kommando */
 483              		.loc 1 103 0 is_stmt 1
 484 01f2 0820     		movs	r0, #8
 485 01f4 FFF7FEFF 		bl	delay_mikro
 104:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_write_cmd(c);
 486              		.loc 1 104 0
 487 01f8 FB1D     		adds	r3, r7, #7
 488 01fa 1B78     		ldrb	r3, [r3]
 489 01fc 1800     		movs	r0, r3
 490 01fe FFF7BFFF 		bl	ascii_write_cmd
 105:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }
 491              		.loc 1 105 0
 492 0202 C046     		nop
 493 0204 BD46     		mov	sp, r7
 494 0206 02B0     		add	sp, sp, #8
 495              		@ sp needed
 496 0208 80BD     		pop	{r7, pc}
 497              		.cfi_endproc
 498              	.LFE8:
 500              		.align	1
 501              		.global	ascii_write_char
 502              		.syntax unified
 503              		.code	16
 504              		.thumb_func
 505              		.fpu softvfp
 507              	ascii_write_char:
 508              	.LFB9:
 106:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
 107:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** void ascii_write_char(uint8_t c)
 108:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
 509              		.loc 1 108 0
 510              		.cfi_startproc
 511              		@ args = 0, pretend = 0, frame = 8
 512              		@ frame_needed = 1, uses_anonymous_args = 0
 513 020a 80B5     		push	{r7, lr}
 514              		.cfi_def_cfa_offset 8
 515              		.cfi_offset 7, -8
 516              		.cfi_offset 14, -4
 517 020c 82B0     		sub	sp, sp, #8
 518              		.cfi_def_cfa_offset 16
 519 020e 00AF     		add	r7, sp, #0
 520              		.cfi_def_cfa_register 7
 521 0210 0200     		movs	r2, r0
 522 0212 FB1D     		adds	r3, r7, #7
 523 0214 1A70     		strb	r2, [r3]
 109:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	while ((ascii_read_status() & 0x80) == 0x80) {
 524              		.loc 1 109 0
 525 0216 C046     		nop
 526              	.L27:
 527              		.loc 1 109 0 is_stmt 0 discriminator 1
 528 0218 FFF76EFF 		bl	ascii_read_status
 529 021c 0300     		movs	r3, r0
 530 021e 1A00     		movs	r2, r3
 531 0220 8023     		movs	r3, #128
 532 0222 1340     		ands	r3, r2
 533 0224 802B     		cmp	r3, #128
 534 0226 F7D0     		beq	.L27
 110:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 		/*  Vänta tills statusflaggan blir noll */
 111:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	}
 112:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	delay_mikro(8);
 535              		.loc 1 112 0 is_stmt 1
 536 0228 0820     		movs	r0, #8
 537 022a FFF7FEFF 		bl	delay_mikro
 113:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_write_data(c);
 538              		.loc 1 113 0
 539 022e FB1D     		adds	r3, r7, #7
 540 0230 1B78     		ldrb	r3, [r3]
 541 0232 1800     		movs	r0, r3
 542 0234 FFF7B9FF 		bl	ascii_write_data
 114:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	delay_mikro(43); /* Fördröj instruktionsspecifik fördröjning */
 543              		.loc 1 114 0
 544 0238 2B20     		movs	r0, #43
 545 023a FFF7FEFF 		bl	delay_mikro
 115:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }
 546              		.loc 1 115 0
 547 023e C046     		nop
 548 0240 BD46     		mov	sp, r7
 549 0242 02B0     		add	sp, sp, #8
 550              		@ sp needed
 551 0244 80BD     		pop	{r7, pc}
 552              		.cfi_endproc
 553              	.LFE9:
 555              		.align	1
 556              		.global	ascii_gotoxy
 557              		.syntax unified
 558              		.code	16
 559              		.thumb_func
 560              		.fpu softvfp
 562              	ascii_gotoxy:
 563              	.LFB10:
 116:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
 117:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** void ascii_gotoxy(uint8_t row, uint8_t col)
 118:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
 564              		.loc 1 118 0
 565              		.cfi_startproc
 566              		@ args = 0, pretend = 0, frame = 16
 567              		@ frame_needed = 1, uses_anonymous_args = 0
 568 0246 80B5     		push	{r7, lr}
 569              		.cfi_def_cfa_offset 8
 570              		.cfi_offset 7, -8
 571              		.cfi_offset 14, -4
 572 0248 84B0     		sub	sp, sp, #16
 573              		.cfi_def_cfa_offset 24
 574 024a 00AF     		add	r7, sp, #0
 575              		.cfi_def_cfa_register 7
 576 024c 0200     		movs	r2, r0
 577 024e FB1D     		adds	r3, r7, #7
 578 0250 1A70     		strb	r2, [r3]
 579 0252 BB1D     		adds	r3, r7, #6
 580 0254 0A1C     		adds	r2, r1, #0
 581 0256 1A70     		strb	r2, [r3]
 119:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	uint8_t address = row - 1;
 582              		.loc 1 119 0
 583 0258 0F23     		movs	r3, #15
 584 025a FB18     		adds	r3, r7, r3
 585 025c FA1D     		adds	r2, r7, #7
 586 025e 1278     		ldrb	r2, [r2]
 587 0260 013A     		subs	r2, r2, #1
 588 0262 1A70     		strb	r2, [r3]
 120:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	if (col == 2) {
 589              		.loc 1 120 0
 590 0264 BB1D     		adds	r3, r7, #6
 591 0266 1B78     		ldrb	r3, [r3]
 592 0268 022B     		cmp	r3, #2
 593 026a 05D1     		bne	.L29
 121:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 		address += 0x40; /* Eftersom det ryms 64 bytes på första raden */
 594              		.loc 1 121 0
 595 026c 0F22     		movs	r2, #15
 596 026e BB18     		adds	r3, r7, r2
 597 0270 BA18     		adds	r2, r7, r2
 598 0272 1278     		ldrb	r2, [r2]
 599 0274 4032     		adds	r2, r2, #64
 600 0276 1A70     		strb	r2, [r3]
 601              	.L29:
 122:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	}
 123:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_write_cmd(0x80 | address);
 602              		.loc 1 123 0
 603 0278 0F23     		movs	r3, #15
 604 027a FB18     		adds	r3, r7, r3
 605 027c 1B78     		ldrb	r3, [r3]
 606 027e 8022     		movs	r2, #128
 607 0280 5242     		rsbs	r2, r2, #0
 608 0282 1343     		orrs	r3, r2
 609 0284 DBB2     		uxtb	r3, r3
 610 0286 1800     		movs	r0, r3
 611 0288 FFF77AFF 		bl	ascii_write_cmd
 124:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }
 612              		.loc 1 124 0
 613 028c C046     		nop
 614 028e BD46     		mov	sp, r7
 615 0290 04B0     		add	sp, sp, #16
 616              		@ sp needed
 617 0292 80BD     		pop	{r7, pc}
 618              		.cfi_endproc
 619              	.LFE10:
 621              		.align	1
 622              		.global	ascii_initialise
 623              		.syntax unified
 624              		.code	16
 625              		.thumb_func
 626              		.fpu softvfp
 628              	ascii_initialise:
 629              	.LFB11:
 125:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 
 126:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** void ascii_initialise()
 127:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** {
 630              		.loc 1 127 0
 631              		.cfi_startproc
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 1, uses_anonymous_args = 0
 634 0294 80B5     		push	{r7, lr}
 635              		.cfi_def_cfa_offset 8
 636              		.cfi_offset 7, -8
 637              		.cfi_offset 14, -4
 638 0296 00AF     		add	r7, sp, #0
 639              		.cfi_def_cfa_register 7
 128:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_command(ASCII_FUNCTION_SET); /* Function Set, 2 rader och 5x8 punkter */
 640              		.loc 1 128 0
 641 0298 3820     		movs	r0, #56
 642 029a FFF79BFF 		bl	ascii_command
 129:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	delay_mikro(39); /* Fördröj instruktionsspecifik fördröjning */
 643              		.loc 1 129 0
 644 029e 2720     		movs	r0, #39
 645 02a0 FFF7FEFF 		bl	delay_mikro
 130:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_command(ASCII_DISPLAY_CTRL); /* Display Control, tänd display, tänd markör, makrören bli
 646              		.loc 1 130 0
 647 02a4 0E20     		movs	r0, #14
 648 02a6 FFF795FF 		bl	ascii_command
 131:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	delay_mikro(39); /* Fördröj instruktionsspecifik fördröjning */
 649              		.loc 1 131 0
 650 02aa 2720     		movs	r0, #39
 651 02ac FFF7FEFF 		bl	delay_mikro
 132:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_command(ASCII_CLEAR_DISPLAY); /* Clear Display */
 652              		.loc 1 132 0
 653 02b0 0120     		movs	r0, #1
 654 02b2 FFF78FFF 		bl	ascii_command
 133:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	delay_milli(2); /* Fördröj instruktionsspecifik fördröjning, istället för 1.53 millisekunder
 655              		.loc 1 133 0
 656 02b6 0220     		movs	r0, #2
 657 02b8 FFF7FEFF 		bl	delay_milli
 134:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	ascii_command(ASCII_ENTRY_MODE_SET); /* Entry Mode Set, "increment-mode" och ingen skift av adress
 658              		.loc 1 134 0
 659 02bc 0620     		movs	r0, #6
 660 02be FFF789FF 		bl	ascii_command
 135:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** 	delay_mikro(39); /* Fördröj instruktionsspecifik fördröjning */
 661              		.loc 1 135 0
 662 02c2 2720     		movs	r0, #39
 663 02c4 FFF7FEFF 		bl	delay_mikro
 136:/home/oscar/Dokument/MOP/Pong/asciidisplay.c **** }...
 664              		.loc 1 136 0
 665 02c8 C046     		nop
 666 02ca BD46     		mov	sp, r7
 667              		@ sp needed
 668 02cc 80BD     		pop	{r7, pc}
 669              		.cfi_endproc
 670              	.LFE11:
 672              	.Letext0:
 673              		.file 2 "include/intdef.h"
 674              		.file 3 "include/GPIO.h"
