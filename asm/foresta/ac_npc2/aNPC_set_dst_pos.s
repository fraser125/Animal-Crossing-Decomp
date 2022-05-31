lbl_8053DB28:
/* 8053DB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DB2C  7C 08 02 A6 */	mflr r0
/* 8053DB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DB34  38 00 00 00 */	li r0, 0
/* 8053DB38  D0 23 09 04 */	stfs f1, 0x904(r3)
/* 8053DB3C  D0 43 09 08 */	stfs f2, 0x908(r3)
/* 8053DB40  B0 03 09 14 */	sth r0, 0x914(r3)
/* 8053DB44  4B FF FF BD */	bl aNPC_set_avoid_pos
/* 8053DB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DB4C  7C 08 03 A6 */	mtlr r0
/* 8053DB50  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DB54  4E 80 00 20 */	blr 
