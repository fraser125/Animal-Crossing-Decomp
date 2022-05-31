lbl_805BD7BC:
/* 805BD7BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BD7C0  7C 08 02 A6 */	mflr r0
/* 805BD7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BD7C8  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805BD7CC  2C 00 00 01 */	cmpwi r0, 1
/* 805BD7D0  40 82 00 0C */	bne lbl_805BD7DC
/* 805BD7D4  38 80 00 00 */	li r4, 0
/* 805BD7D8  48 00 00 C1 */	bl aSPR_setup_action
lbl_805BD7DC:
/* 805BD7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BD7E0  7C 08 03 A6 */	mtlr r0
/* 805BD7E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805BD7E8  4E 80 00 20 */	blr 
