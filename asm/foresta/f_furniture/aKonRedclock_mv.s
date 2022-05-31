lbl_80631E04:
/* 80631E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631E08  7C 08 02 A6 */	mflr r0
/* 80631E0C  38 63 01 34 */	addi r3, r3, 0x134
/* 80631E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631E14  4B D3 F2 01 */	bl cKF_SkeletonInfo_R_play
/* 80631E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631E1C  7C 08 03 A6 */	mtlr r0
/* 80631E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80631E24  4E 80 00 20 */	blr 
