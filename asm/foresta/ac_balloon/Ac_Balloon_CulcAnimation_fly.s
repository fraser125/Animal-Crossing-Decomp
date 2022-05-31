lbl_80413F58:
/* 80413F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80413F5C  7C 08 02 A6 */	mflr r0
/* 80413F60  38 63 01 74 */	addi r3, r3, 0x174
/* 80413F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80413F68  4B F5 D0 AD */	bl cKF_SkeletonInfo_R_play
/* 80413F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80413F70  7C 08 03 A6 */	mtlr r0
/* 80413F74  38 21 00 10 */	addi r1, r1, 0x10
/* 80413F78  4E 80 00 20 */	blr 
