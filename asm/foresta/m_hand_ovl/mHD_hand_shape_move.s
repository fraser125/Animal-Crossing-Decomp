lbl_805DD104:
/* 805DD104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DD108  7C 08 02 A6 */	mflr r0
/* 805DD10C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DD110  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DD114  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DD118  83 E3 09 80 */	lwz r31, 0x980(r3)
/* 805DD11C  38 7F 00 18 */	addi r3, r31, 0x18
/* 805DD120  4B D9 3E F5 */	bl cKF_SkeletonInfo_R_play
/* 805DD124  90 7F 00 88 */	stw r3, 0x88(r31)
/* 805DD128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DD12C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DD130  7C 08 03 A6 */	mtlr r0
/* 805DD134  38 21 00 10 */	addi r1, r1, 0x10
/* 805DD138  4E 80 00 20 */	blr 
