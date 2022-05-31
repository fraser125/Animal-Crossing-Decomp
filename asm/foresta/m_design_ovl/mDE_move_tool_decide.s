lbl_805D51E4:
/* 805D51E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D51E8  7C 08 02 A6 */	mflr r0
/* 805D51EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D51F0  88 03 06 9F */	lbz r0, 0x69f(r3)
/* 805D51F4  2C 00 00 02 */	cmpwi r0, 2
/* 805D51F8  41 82 00 50 */	beq lbl_805D5248
/* 805D51FC  40 80 00 14 */	bge lbl_805D5210
/* 805D5200  2C 00 00 00 */	cmpwi r0, 0
/* 805D5204  41 82 00 1C */	beq lbl_805D5220
/* 805D5208  40 80 00 2C */	bge lbl_805D5234
/* 805D520C  48 00 00 6C */	b lbl_805D5278
lbl_805D5210:
/* 805D5210  2C 00 00 04 */	cmpwi r0, 4
/* 805D5214  41 82 00 5C */	beq lbl_805D5270
/* 805D5218  40 80 00 60 */	bge lbl_805D5278
/* 805D521C  48 00 00 40 */	b lbl_805D525C
lbl_805D5220:
/* 805D5220  88 03 06 9E */	lbz r0, 0x69e(r3)
/* 805D5224  38 80 00 00 */	li r4, 0
/* 805D5228  98 03 06 A0 */	stb r0, 0x6a0(r3)
/* 805D522C  4B FF E9 39 */	bl mDE_main_mode_setup_action
/* 805D5230  48 00 00 48 */	b lbl_805D5278
lbl_805D5234:
/* 805D5234  88 03 06 9E */	lbz r0, 0x69e(r3)
/* 805D5238  38 80 00 01 */	li r4, 1
/* 805D523C  98 03 06 A1 */	stb r0, 0x6a1(r3)
/* 805D5240  4B FF E9 25 */	bl mDE_main_mode_setup_action
/* 805D5244  48 00 00 34 */	b lbl_805D5278
lbl_805D5248:
/* 805D5248  88 03 06 9E */	lbz r0, 0x69e(r3)
/* 805D524C  38 80 00 02 */	li r4, 2
/* 805D5250  98 03 06 A2 */	stb r0, 0x6a2(r3)
/* 805D5254  4B FF E9 11 */	bl mDE_main_mode_setup_action
/* 805D5258  48 00 00 20 */	b lbl_805D5278
lbl_805D525C:
/* 805D525C  88 03 06 9E */	lbz r0, 0x69e(r3)
/* 805D5260  38 80 00 03 */	li r4, 3
/* 805D5264  98 03 06 A3 */	stb r0, 0x6a3(r3)
/* 805D5268  4B FF E8 FD */	bl mDE_main_mode_setup_action
/* 805D526C  48 00 00 0C */	b lbl_805D5278
lbl_805D5270:
/* 805D5270  38 80 00 04 */	li r4, 4
/* 805D5274  4B FF E8 F1 */	bl mDE_main_mode_setup_action
lbl_805D5278:
/* 805D5278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D527C  7C 08 03 A6 */	mtlr r0
/* 805D5280  38 21 00 10 */	addi r1, r1, 0x10
/* 805D5284  4E 80 00 20 */	blr 
