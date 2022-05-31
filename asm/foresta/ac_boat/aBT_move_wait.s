lbl_805A7E50:
/* 805A7E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7E54  7C 08 02 A6 */	mflr r0
/* 805A7E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7E5C  80 A3 01 4C */	lwz r5, 0x14c(r3)
/* 805A7E60  28 05 00 00 */	cmplwi r5, 0
/* 805A7E64  41 82 00 18 */	beq lbl_805A7E7C
/* 805A7E68  80 05 01 74 */	lwz r0, 0x174(r5)
/* 805A7E6C  2C 00 00 04 */	cmpwi r0, 4
/* 805A7E70  40 82 00 0C */	bne lbl_805A7E7C
/* 805A7E74  38 A0 00 08 */	li r5, 8
/* 805A7E78  48 00 04 D5 */	bl aBT_setupAction
lbl_805A7E7C:
/* 805A7E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7E80  7C 08 03 A6 */	mtlr r0
/* 805A7E84  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7E88  4E 80 00 20 */	blr 
