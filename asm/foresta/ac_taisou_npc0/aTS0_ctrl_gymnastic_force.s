lbl_80588AB4:
/* 80588AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80588AB8  7C 08 02 A6 */	mflr r0
/* 80588ABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80588AC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80588AC4  4B B1 24 11 */	bl func_8009AED4
/* 80588AC8  7C 7D 1B 78 */	mr r29, r3
/* 80588ACC  3B C0 00 00 */	li r30, 0
/* 80588AD0  88 03 09 98 */	lbz r0, 0x998(r3)
/* 80588AD4  3B E0 00 00 */	li r31, 0
/* 80588AD8  98 03 09 94 */	stb r0, 0x994(r3)
lbl_80588ADC:
/* 80588ADC  7F A3 EB 78 */	mr r3, r29
/* 80588AE0  7F E4 FB 78 */	mr r4, r31
/* 80588AE4  38 A0 00 00 */	li r5, 0
/* 80588AE8  4B FF FE F5 */	bl aTS0_check_over_bgm_block_part
/* 80588AEC  2C 03 00 00 */	cmpwi r3, 0
/* 80588AF0  40 82 00 0C */	bne lbl_80588AFC
/* 80588AF4  7F FE FB 78 */	mr r30, r31
/* 80588AF8  48 00 00 10 */	b lbl_80588B08
lbl_80588AFC:
/* 80588AFC  3B FF 00 01 */	addi r31, r31, 1
/* 80588B00  2C 1F 00 05 */	cmpwi r31, 5
/* 80588B04  41 80 FF D8 */	blt lbl_80588ADC
lbl_80588B08:
/* 80588B08  93 DD 09 A4 */	stw r30, 0x9a4(r29)
/* 80588B0C  38 00 00 00 */	li r0, 0
/* 80588B10  7F A3 EB 78 */	mr r3, r29
/* 80588B14  98 1D 09 95 */	stb r0, 0x995(r29)
/* 80588B18  88 9D 09 94 */	lbz r4, 0x994(r29)
/* 80588B1C  7C 84 07 74 */	extsb r4, r4
/* 80588B20  4B FF FD 31 */	bl aTS0_set_animation
/* 80588B24  39 61 00 20 */	addi r11, r1, 0x20
/* 80588B28  4B B1 23 F9 */	bl func_8009AF20
/* 80588B2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80588B30  7C 08 03 A6 */	mtlr r0
/* 80588B34  38 21 00 20 */	addi r1, r1, 0x20
/* 80588B38  4E 80 00 20 */	blr 
