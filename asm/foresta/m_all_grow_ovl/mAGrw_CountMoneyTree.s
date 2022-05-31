lbl_80510DC4:
/* 80510DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80510DC8  7C 08 02 A6 */	mflr r0
/* 80510DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80510DD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80510DD4  3B E0 00 00 */	li r31, 0
/* 80510DD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80510DDC  7C 9E 23 78 */	mr r30, r4
/* 80510DE0  A0 63 00 00 */	lhz r3, 0(r3)
/* 80510DE4  4B FF FF A5 */	bl mAGrw_CheckMoneyTree
/* 80510DE8  2C 03 00 01 */	cmpwi r3, 1
/* 80510DEC  40 82 00 14 */	bne lbl_80510E00
/* 80510DF0  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80510DF4  3B E0 00 01 */	li r31, 1
/* 80510DF8  38 03 00 01 */	addi r0, r3, 1
/* 80510DFC  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_80510E00:
/* 80510E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80510E04  7F E3 FB 78 */	mr r3, r31
/* 80510E08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80510E0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80510E10  7C 08 03 A6 */	mtlr r0
/* 80510E14  38 21 00 10 */	addi r1, r1, 0x10
/* 80510E18  4E 80 00 20 */	blr 
