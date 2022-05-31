lbl_805BD7EC:
/* 805BD7EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BD7F0  7C 08 02 A6 */	mflr r0
/* 805BD7F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BD7F8  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805BD7FC  2C 00 00 01 */	cmpwi r0, 1
/* 805BD800  40 82 00 0C */	bne lbl_805BD80C
/* 805BD804  38 80 00 01 */	li r4, 1
/* 805BD808  48 00 00 91 */	bl aSPR_setup_action
lbl_805BD80C:
/* 805BD80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BD810  7C 08 03 A6 */	mtlr r0
/* 805BD814  38 21 00 10 */	addi r1, r1, 0x10
/* 805BD818  4E 80 00 20 */	blr 
