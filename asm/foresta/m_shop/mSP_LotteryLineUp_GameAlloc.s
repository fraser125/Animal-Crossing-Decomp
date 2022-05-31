lbl_803EA030:
/* 803EA030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EA034  7C 08 02 A6 */	mflr r0
/* 803EA038  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EA03C  4B FF F0 A9 */	bl mSP_MakeLotteryList
/* 803EA040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EA044  7C 08 03 A6 */	mtlr r0
/* 803EA048  38 21 00 10 */	addi r1, r1, 0x10
/* 803EA04C  4E 80 00 20 */	blr 
