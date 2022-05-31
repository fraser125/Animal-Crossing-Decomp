lbl_805C052C:
/* 805C052C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C0530  7C 08 02 A6 */	mflr r0
/* 805C0534  38 A0 00 00 */	li r5, 0
/* 805C0538  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C053C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C0540  7C 7F 1B 78 */	mr r31, r3
/* 805C0544  3C 60 80 C0 */	lis r3, cKF_bs_r_obj_train1_3@ha /* 0x80BFF8E8@ha */
/* 805C0548  38 83 F8 E8 */	addi r4, r3, cKF_bs_r_obj_train1_3@l /* 0x80BFF8E8@l */
/* 805C054C  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805C0550  38 7F 01 78 */	addi r3, r31, 0x178
/* 805C0554  38 FF 02 46 */	addi r7, r31, 0x246
/* 805C0558  4B DB 05 3D */	bl cKF_SkeletonInfo_R_ct
/* 805C055C  7F E3 FB 78 */	mr r3, r31
/* 805C0560  38 80 00 05 */	li r4, 5
/* 805C0564  48 00 04 0D */	bl aTR1_setupAction
/* 805C0568  38 7F 01 78 */	addi r3, r31, 0x178
/* 805C056C  4B DB 0A A9 */	bl cKF_SkeletonInfo_R_play
/* 805C0570  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805C0574  3C 80 80 65 */	lis r4, data_8064AC94@ha /* 0x8064AC94@ha */
/* 805C0578  38 00 40 00 */	li r0, 0x4000
/* 805C057C  C0 04 AC 94 */	lfs f0, data_8064AC94@l(r4)  /* 0x8064AC94@l */
/* 805C0580  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805C0584  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 805C0588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C058C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C0590  7C 08 03 A6 */	mtlr r0
/* 805C0594  38 21 00 10 */	addi r1, r1, 0x10
/* 805C0598  4E 80 00 20 */	blr 
