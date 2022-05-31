lbl_8055B070:
/* 8055B070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B074  7C 08 02 A6 */	mflr r0
/* 8055B078  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B07C  4B E8 FF 15 */	bl mSP_money_check
/* 8055B080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B084  7C 08 03 A6 */	mtlr r0
/* 8055B088  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B08C  4E 80 00 20 */	blr 
