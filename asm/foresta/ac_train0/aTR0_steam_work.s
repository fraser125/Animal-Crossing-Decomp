lbl_805BFF8C:
/* 805BFF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BFF90  7C 08 02 A6 */	mflr r0
/* 805BFF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BFF98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BFF9C  7C 9F 23 78 */	mr r31, r4
/* 805BFFA0  93 C1 00 08 */	stw r30, 8(r1)
/* 805BFFA4  7C 7E 1B 78 */	mr r30, r3
/* 805BFFA8  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805BFFAC  2C 00 00 01 */	cmpwi r0, 1
/* 805BFFB0  40 82 00 44 */	bne lbl_805BFFF4
/* 805BFFB4  80 1E 01 E8 */	lwz r0, 0x1e8(r30)
/* 805BFFB8  2C 00 00 02 */	cmpwi r0, 2
/* 805BFFBC  41 80 00 14 */	blt lbl_805BFFD0
/* 805BFFC0  2C 00 00 05 */	cmpwi r0, 5
/* 805BFFC4  41 81 00 0C */	bgt lbl_805BFFD0
/* 805BFFC8  38 A0 00 00 */	li r5, 0
/* 805BFFCC  4B FF FE B9 */	bl aTR0_steam_work_sub
lbl_805BFFD0:
/* 805BFFD0  80 1E 01 E8 */	lwz r0, 0x1e8(r30)
/* 805BFFD4  2C 00 00 0D */	cmpwi r0, 0xd
/* 805BFFD8  41 80 00 1C */	blt lbl_805BFFF4
/* 805BFFDC  2C 00 00 10 */	cmpwi r0, 0x10
/* 805BFFE0  41 81 00 14 */	bgt lbl_805BFFF4
/* 805BFFE4  7F C3 F3 78 */	mr r3, r30
/* 805BFFE8  7F E4 FB 78 */	mr r4, r31
/* 805BFFEC  38 A0 00 01 */	li r5, 1
/* 805BFFF0  4B FF FE 95 */	bl aTR0_steam_work_sub
lbl_805BFFF4:
/* 805BFFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BFFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BFFFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C0000  7C 08 03 A6 */	mtlr r0
/* 805C0004  38 21 00 10 */	addi r1, r1, 0x10
/* 805C0008  4E 80 00 20 */	blr 
