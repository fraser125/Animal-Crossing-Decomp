lbl_805E8BE0:
/* 805E8BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E8BE4  7C 08 02 A6 */	mflr r0
/* 805E8BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E8BEC  38 00 00 00 */	li r0, 0
/* 805E8BF0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E8BF4  38 60 00 05 */	li r3, 5
/* 805E8BF8  90 04 09 B0 */	stw r0, 0x9b0(r4)
/* 805E8BFC  4B D9 3B 95 */	bl mBGMPsComp_pause
/* 805E8C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E8C04  7C 08 03 A6 */	mtlr r0
/* 805E8C08  38 21 00 10 */	addi r1, r1, 0x10
/* 805E8C0C  4E 80 00 20 */	blr 
