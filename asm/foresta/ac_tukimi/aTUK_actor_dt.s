lbl_805C0C74:
/* 805C0C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C0C78  7C 08 02 A6 */	mflr r0
/* 805C0C7C  38 63 01 78 */	addi r3, r3, 0x178
/* 805C0C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C0C84  4B DA FE 6D */	bl cKF_SkeletonInfo_R_dt
/* 805C0C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C0C8C  7C 08 03 A6 */	mtlr r0
/* 805C0C90  38 21 00 10 */	addi r1, r1, 0x10
/* 805C0C94  4E 80 00 20 */	blr 
