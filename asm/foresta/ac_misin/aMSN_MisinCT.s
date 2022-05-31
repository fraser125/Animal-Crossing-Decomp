lbl_8042E03C:
/* 8042E03C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042E040  7C 08 02 A6 */	mflr r0
/* 8042E044  3C 80 80 8F */	lis r4, cKF_bs_r_obj_misin@ha /* 0x808F6DA0@ha */
/* 8042E048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042E04C  38 00 00 01 */	li r0, 1
/* 8042E050  38 84 6D A0 */	addi r4, r4, cKF_bs_r_obj_misin@l /* 0x808F6DA0@l */
/* 8042E054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042E058  93 C1 00 08 */	stw r30, 8(r1)
/* 8042E05C  7C 7E 1B 78 */	mr r30, r3
/* 8042E060  3C 60 80 8F */	lis r3, cKF_ba_r_obj_misin@ha /* 0x808F6CF0@ha */
/* 8042E064  3B FE 00 28 */	addi r31, r30, 0x28
/* 8042E068  B0 1E 00 00 */	sth r0, 0(r30)
/* 8042E06C  38 A3 6C F0 */	addi r5, r3, cKF_ba_r_obj_misin@l /* 0x808F6CF0@l */
/* 8042E070  38 DE 00 98 */	addi r6, r30, 0x98
/* 8042E074  7F E3 FB 78 */	mr r3, r31
/* 8042E078  38 FE 00 FE */	addi r7, r30, 0xfe
/* 8042E07C  4B F4 2A 19 */	bl cKF_SkeletonInfo_R_ct
/* 8042E080  3C 80 80 8F */	lis r4, cKF_ba_r_obj_misin@ha /* 0x808F6CF0@ha */
/* 8042E084  7F E3 FB 78 */	mr r3, r31
/* 8042E088  38 84 6C F0 */	addi r4, r4, cKF_ba_r_obj_misin@l /* 0x808F6CF0@l */
/* 8042E08C  38 A0 00 00 */	li r5, 0
/* 8042E090  4B F4 2B 55 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8042E094  7F E3 FB 78 */	mr r3, r31
/* 8042E098  4B F4 2F 7D */	bl cKF_SkeletonInfo_R_play
/* 8042E09C  3C 80 80 64 */	lis r4, lit_476@ha /* 0x80644160@ha */
/* 8042E0A0  3C 60 80 64 */	lis r3, lit_454@ha /* 0x80644158@ha */
/* 8042E0A4  C0 24 41 60 */	lfs f1, lit_476@l(r4)  /* 0x80644160@l */
/* 8042E0A8  C0 03 41 58 */	lfs f0, lit_454@l(r3)  /* 0x80644158@l */
/* 8042E0AC  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8042E0B0  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8042E0B4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8042E0B8  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8042E0BC  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8042E0C0  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8042E0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042E0C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042E0CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042E0D0  7C 08 03 A6 */	mtlr r0
/* 8042E0D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8042E0D8  4E 80 00 20 */	blr 
