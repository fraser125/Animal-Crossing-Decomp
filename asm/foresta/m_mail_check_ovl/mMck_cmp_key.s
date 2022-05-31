lbl_8050F090:
/* 8050F090  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050F094  7C 08 02 A6 */	mflr r0
/* 8050F098  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050F09C  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F0A0  4B B8 BE 29 */	bl func_8009AEC8
/* 8050F0A4  3C 80 80 6A */	lis r4, cmp_str_table_c@ha /* 0x8069F84C@ha */
/* 8050F0A8  8B A3 00 00 */	lbz r29, 0(r3)
/* 8050F0AC  8B 83 00 01 */	lbz r28, 1(r3)
/* 8050F0B0  3B C4 F8 4C */	addi r30, r4, cmp_str_table_c@l /* 0x8069F84C@l */
/* 8050F0B4  8B 63 00 02 */	lbz r27, 2(r3)
/* 8050F0B8  3B 40 00 00 */	li r26, 0
/* 8050F0BC  3B E0 00 00 */	li r31, 0
lbl_8050F0C0:
/* 8050F0C0  7C 9E FA 14 */	add r4, r30, r31
/* 8050F0C4  88 04 00 00 */	lbz r0, 0(r4)
/* 8050F0C8  80 64 00 04 */	lwz r3, 4(r4)
/* 8050F0CC  7C 1D 00 40 */	cmplw r29, r0
/* 8050F0D0  41 82 00 34 */	beq lbl_8050F104
/* 8050F0D4  88 04 00 01 */	lbz r0, 1(r4)
/* 8050F0D8  7C 1D 00 40 */	cmplw r29, r0
/* 8050F0DC  40 82 00 34 */	bne lbl_8050F110
/* 8050F0E0  48 00 00 24 */	b lbl_8050F104
lbl_8050F0E4:
/* 8050F0E4  7C 1C 00 40 */	cmplw r28, r0
/* 8050F0E8  40 82 00 18 */	bne lbl_8050F100
/* 8050F0EC  88 03 00 01 */	lbz r0, 1(r3)
/* 8050F0F0  7C 1B 00 40 */	cmplw r27, r0
/* 8050F0F4  40 82 00 0C */	bne lbl_8050F100
/* 8050F0F8  38 60 00 01 */	li r3, 1
/* 8050F0FC  48 00 00 28 */	b lbl_8050F124
lbl_8050F100:
/* 8050F100  4B FF FF 89 */	bl mMck_next_key
lbl_8050F104:
/* 8050F104  88 03 00 00 */	lbz r0, 0(r3)
/* 8050F108  28 00 00 7F */	cmplwi r0, 0x7f
/* 8050F10C  40 82 FF D8 */	bne lbl_8050F0E4
lbl_8050F110:
/* 8050F110  3B 5A 00 01 */	addi r26, r26, 1
/* 8050F114  3B FF 00 08 */	addi r31, r31, 8
/* 8050F118  2C 1A 00 1A */	cmpwi r26, 0x1a
/* 8050F11C  41 80 FF A4 */	blt lbl_8050F0C0
/* 8050F120  38 60 00 00 */	li r3, 0
lbl_8050F124:
/* 8050F124  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F128  4B B8 BD ED */	bl func_8009AF14
/* 8050F12C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050F130  7C 08 03 A6 */	mtlr r0
/* 8050F134  38 21 00 20 */	addi r1, r1, 0x20
/* 8050F138  4E 80 00 20 */	blr 
