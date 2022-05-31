lbl_8057BB00:
/* 8057BB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BB04  7C 08 02 A6 */	mflr r0
/* 8057BB08  38 80 00 09 */	li r4, 9
/* 8057BB0C  38 A0 00 00 */	li r5, 0
/* 8057BB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BB14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BB18  7C 7F 1B 78 */	mr r31, r3
/* 8057BB1C  38 60 00 04 */	li r3, 4
/* 8057BB20  4B E1 C9 19 */	bl mDemo_Set_OrderValue
/* 8057BB24  7F E3 FB 78 */	mr r3, r31
/* 8057BB28  4B FF B8 85 */	bl aNSC_set_walk_spd
/* 8057BB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BB30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057BB34  7C 08 03 A6 */	mtlr r0
/* 8057BB38  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BB3C  4E 80 00 20 */	blr 
