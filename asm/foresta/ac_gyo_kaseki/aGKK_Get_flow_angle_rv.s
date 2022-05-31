lbl_805A55C8:
/* 805A55C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A55CC  7C 08 02 A6 */	mflr r0
/* 805A55D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A55D4  4B FF FF B9 */	bl aGKK_Get_flow_angle
/* 805A55D8  3C 63 00 01 */	addis r3, r3, 1
/* 805A55DC  38 03 80 00 */	addi r0, r3, -32768
/* 805A55E0  7C 03 07 34 */	extsh r3, r0
/* 805A55E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A55E8  7C 08 03 A6 */	mtlr r0
/* 805A55EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A55F0  4E 80 00 20 */	blr 
