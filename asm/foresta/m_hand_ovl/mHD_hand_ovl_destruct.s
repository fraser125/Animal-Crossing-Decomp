lbl_805DF8CC:
/* 805DF8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DF8D0  7C 08 02 A6 */	mflr r0
/* 805DF8D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DF8D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DF8DC  7C 7F 1B 78 */	mr r31, r3
/* 805DF8E0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DF8E4  80 63 09 80 */	lwz r3, 0x980(r3)
/* 805DF8E8  38 63 00 18 */	addi r3, r3, 0x18
/* 805DF8EC  4B D9 12 05 */	bl cKF_SkeletonInfo_R_dt
/* 805DF8F0  7F E3 FB 78 */	mr r3, r31
/* 805DF8F4  4B FF FD C9 */	bl mHD_nop_hand_func
/* 805DF8F8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 805DF8FC  38 00 00 00 */	li r0, 0
/* 805DF900  90 03 09 80 */	stw r0, 0x980(r3)
/* 805DF904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DF908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DF90C  7C 08 03 A6 */	mtlr r0
/* 805DF910  38 21 00 10 */	addi r1, r1, 0x10
/* 805DF914  4E 80 00 20 */	blr 
