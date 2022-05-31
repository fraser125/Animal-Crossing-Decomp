lbl_805A8D9C:
/* 805A8D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8DA0  7C 08 02 A6 */	mflr r0
/* 805A8DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8DA8  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805A8DAC  2C 00 00 01 */	cmpwi r0, 1
/* 805A8DB0  40 82 00 0C */	bne lbl_805A8DBC
/* 805A8DB4  38 80 00 00 */	li r4, 0
/* 805A8DB8  48 00 00 45 */	bl aBRS_setup_action
lbl_805A8DBC:
/* 805A8DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8DC0  7C 08 03 A6 */	mtlr r0
/* 805A8DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8DC8  4E 80 00 20 */	blr 
