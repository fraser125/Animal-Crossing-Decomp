lbl_8054E090:
/* 8054E090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E094  7C 08 02 A6 */	mflr r0
/* 8054E098  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E09C  4B E9 CE F5 */	bl mSP_money_check
/* 8054E0A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E0A4  7C 08 03 A6 */	mtlr r0
/* 8054E0A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E0AC  4E 80 00 20 */	blr 
