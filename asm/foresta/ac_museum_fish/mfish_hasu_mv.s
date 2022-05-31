lbl_804591C4:
/* 804591C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804591C8  7C 08 02 A6 */	mflr r0
/* 804591CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804591D0  4B F1 7E 45 */	bl cKF_SkeletonInfo_R_play
/* 804591D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804591D8  7C 08 03 A6 */	mtlr r0
/* 804591DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804591E0  4E 80 00 20 */	blr 
