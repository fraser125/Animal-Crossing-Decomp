lbl_806375BC:
/* 806375BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806375C0  7C 08 02 A6 */	mflr r0
/* 806375C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806375C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806375CC  93 C1 00 08 */	stw r30, 8(r1)
/* 806375D0  7C 7E 1B 78 */	mr r30, r3
/* 806375D4  3B FE 01 34 */	addi r31, r30, 0x134
/* 806375D8  7F E3 FB 78 */	mr r3, r31
/* 806375DC  4B D3 9A 39 */	bl cKF_SkeletonInfo_R_play
/* 806375E0  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 806375E4  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 806375E8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806375EC  A8 7E 08 2A */	lha r3, 0x82a(r30)
/* 806375F0  38 03 00 01 */	addi r0, r3, 1
/* 806375F4  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 806375F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806375FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80637600  83 C1 00 08 */	lwz r30, 8(r1)
/* 80637604  7C 08 03 A6 */	mtlr r0
/* 80637608  38 21 00 10 */	addi r1, r1, 0x10
/* 8063760C  4E 80 00 20 */	blr 
