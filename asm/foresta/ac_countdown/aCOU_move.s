lbl_805AC2C0:
/* 805AC2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AC2C4  7C 08 02 A6 */	mflr r0
/* 805AC2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AC2CC  80 03 01 E8 */	lwz r0, 0x1e8(r3)
/* 805AC2D0  2C 00 00 3D */	cmpwi r0, 0x3d
/* 805AC2D4  40 82 00 0C */	bne lbl_805AC2E0
/* 805AC2D8  38 80 00 02 */	li r4, 2
/* 805AC2DC  48 00 00 3D */	bl aCOU_setup_action
lbl_805AC2E0:
/* 805AC2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AC2E4  7C 08 03 A6 */	mtlr r0
/* 805AC2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805AC2EC  4E 80 00 20 */	blr 
