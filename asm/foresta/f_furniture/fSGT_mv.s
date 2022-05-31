lbl_8063EC74:
/* 8063EC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063EC78  7C 08 02 A6 */	mflr r0
/* 8063EC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063EC80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063EC84  93 C1 00 08 */	stw r30, 8(r1)
/* 8063EC88  7C 7E 1B 78 */	mr r30, r3
/* 8063EC8C  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063EC90  7F E3 FB 78 */	mr r3, r31
/* 8063EC94  4B D3 23 81 */	bl cKF_SkeletonInfo_R_play
/* 8063EC98  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 8063EC9C  7F C3 F3 78 */	mr r3, r30
/* 8063ECA0  C0 04 D2 8C */	lfs f0, lit_626@l(r4)  /* 0x8064D28C@l */
/* 8063ECA4  38 BE 00 08 */	addi r5, r30, 8
/* 8063ECA8  38 80 00 57 */	li r4, 0x57
/* 8063ECAC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063ECB0  4B FE F2 95 */	bl sAdo_OngenPos
/* 8063ECB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063ECB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063ECBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063ECC0  7C 08 03 A6 */	mtlr r0
/* 8063ECC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8063ECC8  4E 80 00 20 */	blr 
