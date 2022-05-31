lbl_80424EE8:
/* 80424EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80424EEC  7C 08 02 A6 */	mflr r0
/* 80424EF0  38 63 01 84 */	addi r3, r3, 0x184
/* 80424EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80424EF8  4B F4 C1 1D */	bl cKF_SkeletonInfo_R_play
/* 80424EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80424F00  7C 08 03 A6 */	mtlr r0
/* 80424F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80424F08  4E 80 00 20 */	blr 
