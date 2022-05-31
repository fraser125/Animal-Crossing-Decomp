lbl_80423DF8:
/* 80423DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80423DFC  7C 08 02 A6 */	mflr r0
/* 80423E00  38 63 01 78 */	addi r3, r3, 0x178
/* 80423E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80423E08  4B F4 CC E9 */	bl cKF_SkeletonInfo_R_dt
/* 80423E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80423E10  7C 08 03 A6 */	mtlr r0
/* 80423E14  38 21 00 10 */	addi r1, r1, 0x10
/* 80423E18  4E 80 00 20 */	blr 
