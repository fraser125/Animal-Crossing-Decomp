lbl_8042D1F8:
/* 8042D1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D1FC  7C 08 02 A6 */	mflr r0
/* 8042D200  38 63 01 7C */	addi r3, r3, 0x17c
/* 8042D204  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D208  4B F4 38 E9 */	bl cKF_SkeletonInfo_R_dt
/* 8042D20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D210  7C 08 03 A6 */	mtlr r0
/* 8042D214  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D218  4E 80 00 20 */	blr 
