lbl_805AA4A8:
/* 805AA4A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA4AC  7C 08 02 A6 */	mflr r0
/* 805AA4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA4B4  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805AA4B8  2C 00 00 01 */	cmpwi r0, 1
/* 805AA4BC  40 82 00 0C */	bne lbl_805AA4C8
/* 805AA4C0  38 80 00 01 */	li r4, 1
/* 805AA4C4  48 00 00 15 */	bl aBGY_setup_action
lbl_805AA4C8:
/* 805AA4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA4CC  7C 08 03 A6 */	mtlr r0
/* 805AA4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA4D4  4E 80 00 20 */	blr 
