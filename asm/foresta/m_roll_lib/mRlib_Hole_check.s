lbl_803F6C98:
/* 803F6C98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F6C9C  7C 08 02 A6 */	mflr r0
/* 803F6CA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F6CA4  80 83 00 28 */	lwz r4, 0x28(r3)
/* 803F6CA8  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 803F6CAC  90 81 00 08 */	stw r4, 8(r1)
/* 803F6CB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 803F6CB4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 803F6CB8  38 61 00 08 */	addi r3, r1, 8
/* 803F6CBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 803F6CC0  4B FB 07 71 */	bl mFI_GetUnitFG
/* 803F6CC4  28 03 00 00 */	cmplwi r3, 0
/* 803F6CC8  41 82 00 28 */	beq lbl_803F6CF0
/* 803F6CCC  A0 03 00 00 */	lhz r0, 0(r3)
/* 803F6CD0  28 00 00 11 */	cmplwi r0, 0x11
/* 803F6CD4  41 80 00 0C */	blt lbl_803F6CE0
/* 803F6CD8  28 00 00 29 */	cmplwi r0, 0x29
/* 803F6CDC  40 81 00 0C */	ble lbl_803F6CE8
lbl_803F6CE0:
/* 803F6CE0  28 00 00 5D */	cmplwi r0, 0x5d
/* 803F6CE4  40 82 00 0C */	bne lbl_803F6CF0
lbl_803F6CE8:
/* 803F6CE8  38 60 00 01 */	li r3, 1
/* 803F6CEC  48 00 00 08 */	b lbl_803F6CF4
lbl_803F6CF0:
/* 803F6CF0  38 60 00 00 */	li r3, 0
lbl_803F6CF4:
/* 803F6CF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F6CF8  7C 08 03 A6 */	mtlr r0
/* 803F6CFC  38 21 00 20 */	addi r1, r1, 0x20
/* 803F6D00  4E 80 00 20 */	blr 
