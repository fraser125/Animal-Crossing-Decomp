lbl_8037C184:
/* 8037C184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C188  7C 08 02 A6 */	mflr r0
/* 8037C18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C190  7C E0 3B 78 */	mr r0, r7
/* 8037C194  38 E0 00 00 */	li r7, 0
/* 8037C198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C19C  7C DF 33 78 */	mr r31, r6
/* 8037C1A0  7C 06 03 78 */	mr r6, r0
/* 8037C1A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8037C1A8  7C 7E 1B 78 */	mr r30, r3
/* 8037C1AC  4B FF E7 11 */	bl mBGMPsComp_search_pos_kategorie_bgm_num
/* 8037C1B0  2C 03 00 00 */	cmpwi r3, 0
/* 8037C1B4  41 80 00 28 */	blt lbl_8037C1DC
/* 8037C1B8  80 1E 01 18 */	lwz r0, 0x118(r30)
/* 8037C1BC  7C 03 00 00 */	cmpw r3, r0
/* 8037C1C0  40 80 00 1C */	bge lbl_8037C1DC
/* 8037C1C4  1C 03 00 14 */	mulli r0, r3, 0x14
/* 8037C1C8  7C 7E 02 14 */	add r3, r30, r0
/* 8037C1CC  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8037C1D0  60 00 00 01 */	ori r0, r0, 1
/* 8037C1D4  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8037C1D8  B3 E3 00 04 */	sth r31, 4(r3)
lbl_8037C1DC:
/* 8037C1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C1E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C1E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037C1E8  7C 08 03 A6 */	mtlr r0
/* 8037C1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C1F0  4E 80 00 20 */	blr 
