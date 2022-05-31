lbl_805AD6FC:
/* 805AD6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AD700  7C 08 02 A6 */	mflr r0
/* 805AD704  38 63 01 78 */	addi r3, r3, 0x178
/* 805AD708  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AD70C  4B DC 33 E5 */	bl cKF_SkeletonInfo_R_dt
/* 805AD710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AD714  7C 08 03 A6 */	mtlr r0
/* 805AD718  38 21 00 10 */	addi r1, r1, 0x10
/* 805AD71C  4E 80 00 20 */	blr 
