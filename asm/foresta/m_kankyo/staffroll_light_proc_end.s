lbl_803B954C:
/* 803B954C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9550  7C 08 02 A6 */	mflr r0
/* 803B9554  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B9558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B955C  7C 7F 1B 78 */	mr r31, r3
/* 803B9560  4B FF FF 0D */	bl mEnv_DecideStaffrollFadeInRate
/* 803B9564  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9568  7F E3 FB 78 */	mr r3, r31
/* 803B956C  3B E4 9B A0 */	addi r31, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B9570  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 803B9574  4B FF FC F9 */	bl mEnv_PointLightSet
/* 803B9578  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B957C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 803B9580  C0 23 24 4C */	lfs f1, lit_545@l(r3)  /* 0x8064244C@l */
/* 803B9584  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803B9588  7C 00 00 26 */	mfcr r0
/* 803B958C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B9590  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 803B9594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B9598  7C 08 03 A6 */	mtlr r0
/* 803B959C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B95A0  4E 80 00 20 */	blr 
