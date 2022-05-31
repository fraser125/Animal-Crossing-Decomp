lbl_805AB2B0:
/* 805AB2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB2B4  7C 08 02 A6 */	mflr r0
/* 805AB2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB2BC  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805AB2C0  2C 00 00 01 */	cmpwi r0, 1
/* 805AB2C4  40 82 00 0C */	bne lbl_805AB2D0
/* 805AB2C8  38 80 00 01 */	li r4, 1
/* 805AB2CC  48 00 00 91 */	bl aCNV_setup_action
lbl_805AB2D0:
/* 805AB2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB2D4  7C 08 03 A6 */	mtlr r0
/* 805AB2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB2DC  4E 80 00 20 */	blr 
