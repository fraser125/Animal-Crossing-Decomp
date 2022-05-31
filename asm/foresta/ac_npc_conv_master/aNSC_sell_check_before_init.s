lbl_8054A9A4:
/* 8054A9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A9A8  7C 08 02 A6 */	mflr r0
/* 8054A9AC  38 80 00 09 */	li r4, 9
/* 8054A9B0  38 A0 00 00 */	li r5, 0
/* 8054A9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A9B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A9BC  7C 7F 1B 78 */	mr r31, r3
/* 8054A9C0  38 60 00 04 */	li r3, 4
/* 8054A9C4  4B E4 DA 75 */	bl mDemo_Set_OrderValue
/* 8054A9C8  7F E3 FB 78 */	mr r3, r31
/* 8054A9CC  4B FF B4 2D */	bl aNSC_set_stop_spd
/* 8054A9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A9D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054A9D8  7C 08 03 A6 */	mtlr r0
/* 8054A9DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A9E0  4E 80 00 20 */	blr 
