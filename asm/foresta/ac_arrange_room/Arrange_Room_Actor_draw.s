lbl_80411DCC:
/* 80411DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80411DD0  7C 08 02 A6 */	mflr r0
/* 80411DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80411DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80411DDC  7C 7F 1B 78 */	mr r31, r3
/* 80411DE0  7C 83 23 78 */	mr r3, r4
/* 80411DE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80411DE8  7C 9E 23 78 */	mr r30, r4
/* 80411DEC  4B FA 69 2D */	bl Global_kankyo_set_room_prim
/* 80411DF0  7F E3 FB 78 */	mr r3, r31
/* 80411DF4  7F C4 F3 78 */	mr r4, r30
/* 80411DF8  4B FF FD 69 */	bl aAR_DrawFloor
/* 80411DFC  7F E3 FB 78 */	mr r3, r31
/* 80411E00  7F C4 F3 78 */	mr r4, r30
/* 80411E04  4B FF FE A1 */	bl aAR_DrawWall
/* 80411E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80411E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80411E10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80411E14  7C 08 03 A6 */	mtlr r0
/* 80411E18  38 21 00 10 */	addi r1, r1, 0x10
/* 80411E1C  4E 80 00 20 */	blr 
