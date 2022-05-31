lbl_805D91C0:
/* 805D91C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D91C4  7C 08 02 A6 */	mflr r0
/* 805D91C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D91CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805D91D0  4B AC 1D 05 */	bl func_8009AED4
/* 805D91D4  83 E3 00 28 */	lwz r31, 0x28(r3)
/* 805D91D8  3B A0 00 00 */	li r29, 0
/* 805D91DC  AB C3 00 1E */	lha r30, 0x1e(r3)
/* 805D91E0  48 00 00 28 */	b lbl_805D9208
lbl_805D91E4:
/* 805D91E4  88 7F 00 00 */	lbz r3, 0(r31)
/* 805D91E8  38 80 00 01 */	li r4, 1
/* 805D91EC  4B DD 64 B1 */	bl mFont_GetCodeWidth
/* 805D91F0  88 1F 00 00 */	lbz r0, 0(r31)
/* 805D91F4  7F BD 1A 14 */	add r29, r29, r3
/* 805D91F8  28 00 00 CD */	cmplwi r0, 0xcd
/* 805D91FC  41 82 00 14 */	beq lbl_805D9210
/* 805D9200  3B FF 00 01 */	addi r31, r31, 1
/* 805D9204  3B DE FF FF */	addi r30, r30, -1
lbl_805D9208:
/* 805D9208  2C 1E 00 00 */	cmpwi r30, 0
/* 805D920C  41 81 FF D8 */	bgt lbl_805D91E4
lbl_805D9210:
/* 805D9210  7F A3 EB 78 */	mr r3, r29
/* 805D9214  39 61 00 20 */	addi r11, r1, 0x20
/* 805D9218  4B AC 1D 09 */	bl func_8009AF20
/* 805D921C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D9220  7C 08 03 A6 */	mtlr r0
/* 805D9224  38 21 00 20 */	addi r1, r1, 0x20
/* 805D9228  4E 80 00 20 */	blr 
