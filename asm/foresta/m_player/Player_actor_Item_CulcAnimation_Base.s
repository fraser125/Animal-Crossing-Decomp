lbl_804E0BE8:
/* 804E0BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E0BEC  7C 08 02 A6 */	mflr r0
/* 804E0BF0  38 63 0A 18 */	addi r3, r3, 0xa18
/* 804E0BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0BF8  4B E9 04 1D */	bl cKF_SkeletonInfo_R_play
/* 804E0BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0C00  7C 08 03 A6 */	mtlr r0
/* 804E0C04  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0C08  4E 80 00 20 */	blr 
