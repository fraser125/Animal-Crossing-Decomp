lbl_805DD094:
/* 805DD094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DD098  7C 08 02 A6 */	mflr r0
/* 805DD09C  38 A0 00 00 */	li r5, 0
/* 805DD0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DD0A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DD0A8  93 C1 00 08 */	stw r30, 8(r1)
/* 805DD0AC  7C 7E 1B 78 */	mr r30, r3
/* 805DD0B0  3C 60 80 A8 */	lis r3, cKF_bs_r_hnd@ha /* 0x80A7A7F4@ha */
/* 805DD0B4  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 805DD0B8  38 83 A7 F4 */	addi r4, r3, cKF_bs_r_hnd@l /* 0x80A7A7F4@l */
/* 805DD0BC  80 E6 09 80 */	lwz r7, 0x980(r6)
/* 805DD0C0  3B E7 00 18 */	addi r31, r7, 0x18
/* 805DD0C4  38 C7 00 8C */	addi r6, r7, 0x8c
/* 805DD0C8  7F E3 FB 78 */	mr r3, r31
/* 805DD0CC  38 E7 01 3A */	addi r7, r7, 0x13a
/* 805DD0D0  4B D9 39 C5 */	bl cKF_SkeletonInfo_R_ct
/* 805DD0D4  7F C3 F3 78 */	mr r3, r30
/* 805DD0D8  7F E4 FB 78 */	mr r4, r31
/* 805DD0DC  4B FF FF 41 */	bl func_805DD01C
/* 805DD0E0  3C 60 80 65 */	lis r3, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DD0E4  C0 03 B2 9C */	lfs f0, data_8064B29C@l(r3)  /* 0x8064B29C@l */
/* 805DD0E8  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 805DD0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DD0F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DD0F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DD0F8  7C 08 03 A6 */	mtlr r0
/* 805DD0FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805DD100  4E 80 00 20 */	blr 
