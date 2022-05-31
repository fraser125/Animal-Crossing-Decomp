lbl_8054A6CC:
/* 8054A6CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A6D0  7C 08 02 A6 */	mflr r0
/* 8054A6D4  38 80 00 09 */	li r4, 9
/* 8054A6D8  38 A0 00 00 */	li r5, 0
/* 8054A6DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A6E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A6E4  7C 7F 1B 78 */	mr r31, r3
/* 8054A6E8  38 60 00 04 */	li r3, 4
/* 8054A6EC  4B E4 DD 4D */	bl mDemo_Set_OrderValue
/* 8054A6F0  7F E3 FB 78 */	mr r3, r31
/* 8054A6F4  4B FF B7 05 */	bl aNSC_set_stop_spd
/* 8054A6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A6FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054A700  7C 08 03 A6 */	mtlr r0
/* 8054A704  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A708  4E 80 00 20 */	blr 
