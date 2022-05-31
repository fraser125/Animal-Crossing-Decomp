lbl_805AB8A0:
/* 805AB8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB8A4  7C 08 02 A6 */	mflr r0
/* 805AB8A8  38 63 01 78 */	addi r3, r3, 0x178
/* 805AB8AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB8B0  4B DC 52 41 */	bl cKF_SkeletonInfo_R_dt
/* 805AB8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB8B8  7C 08 03 A6 */	mtlr r0
/* 805AB8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB8C0  4E 80 00 20 */	blr 
