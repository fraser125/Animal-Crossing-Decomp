lbl_8054A70C:
/* 8054A70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A710  7C 08 02 A6 */	mflr r0
/* 8054A714  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A718  4B FF B6 E1 */	bl aNSC_set_stop_spd
/* 8054A71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A720  7C 08 03 A6 */	mtlr r0
/* 8054A724  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A728  4E 80 00 20 */	blr 
