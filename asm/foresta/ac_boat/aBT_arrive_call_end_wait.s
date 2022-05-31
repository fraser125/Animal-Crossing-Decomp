lbl_805A8094:
/* 805A8094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8098  7C 08 02 A6 */	mflr r0
/* 805A809C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A80A0  80 A3 01 4C */	lwz r5, 0x14c(r3)
/* 805A80A4  80 05 01 74 */	lwz r0, 0x174(r5)
/* 805A80A8  2C 00 00 0C */	cmpwi r0, 0xc
/* 805A80AC  40 82 00 0C */	bne lbl_805A80B8
/* 805A80B0  38 A0 00 0C */	li r5, 0xc
/* 805A80B4  48 00 02 99 */	bl aBT_setupAction
lbl_805A80B8:
/* 805A80B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A80BC  7C 08 03 A6 */	mtlr r0
/* 805A80C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A80C4  4E 80 00 20 */	blr 
