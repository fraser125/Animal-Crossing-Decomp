lbl_805003D4:
/* 805003D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805003D8  7C 08 02 A6 */	mflr r0
/* 805003DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805003E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805003E4  7C 7F 1B 78 */	mr r31, r3
/* 805003E8  38 7F 01 74 */	addi r3, r31, 0x174
/* 805003EC  4B E7 22 49 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 805003F0  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805003F4  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805003F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805003FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80500400  7C 08 03 A6 */	mtlr r0
/* 80500404  38 21 00 10 */	addi r1, r1, 0x10
/* 80500408  4E 80 00 20 */	blr 
