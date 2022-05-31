lbl_8039A8C0:
/* 8039A8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039A8C4  7C 08 02 A6 */	mflr r0
/* 8039A8C8  28 03 00 00 */	cmplwi r3, 0
/* 8039A8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039A8D0  41 82 00 0C */	beq lbl_8039A8DC
/* 8039A8D4  38 80 00 05 */	li r4, 5
/* 8039A8D8  48 04 57 F9 */	bl mPr_ClearAnyPersonalID
lbl_8039A8DC:
/* 8039A8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039A8E0  7C 08 03 A6 */	mtlr r0
/* 8039A8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8039A8E8  4E 80 00 20 */	blr 
