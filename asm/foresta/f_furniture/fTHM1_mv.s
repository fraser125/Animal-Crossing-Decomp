lbl_8063F6B4:
/* 8063F6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F6B8  7C 08 02 A6 */	mflr r0
/* 8063F6BC  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8063F6C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F6C4  C0 04 D2 74 */	lfs f0, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 8063F6C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063F6CC  7C 7F 1B 78 */	mr r31, r3
/* 8063F6D0  38 7F 01 34 */	addi r3, r31, 0x134
/* 8063F6D4  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 8063F6D8  4B D3 19 3D */	bl cKF_SkeletonInfo_R_play
/* 8063F6DC  7F E3 FB 78 */	mr r3, r31
/* 8063F6E0  38 BF 00 08 */	addi r5, r31, 8
/* 8063F6E4  38 80 00 56 */	li r4, 0x56
/* 8063F6E8  4B FE E8 5D */	bl sAdo_OngenPos
/* 8063F6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F6F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063F6F4  7C 08 03 A6 */	mtlr r0
/* 8063F6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F6FC  4E 80 00 20 */	blr 
