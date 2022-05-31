lbl_80637C10:
/* 80637C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637C14  7C 08 02 A6 */	mflr r0
/* 80637C18  7C 67 1B 78 */	mr r7, r3
/* 80637C1C  3C 80 81 05 */	lis r4, cKF_bs_r_int_sum_hal_chest02@ha /* 0x8104B310@ha */
/* 80637C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637C24  3C 60 81 05 */	lis r3, cKF_ba_r_int_sum_hal_chest02@ha /* 0x8104B2D8@ha */
/* 80637C28  38 84 B3 10 */	addi r4, r4, cKF_bs_r_int_sum_hal_chest02@l /* 0x8104B310@l */
/* 80637C2C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80637C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80637C34  3B E7 01 34 */	addi r31, r7, 0x134
/* 80637C38  38 A3 B2 D8 */	addi r5, r3, cKF_ba_r_int_sum_hal_chest02@l /* 0x8104B2D8@l */
/* 80637C3C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80637C40  7F E3 FB 78 */	mr r3, r31
/* 80637C44  4B D3 8E 51 */	bl cKF_SkeletonInfo_R_ct
/* 80637C48  3C 80 81 05 */	lis r4, cKF_ba_r_int_sum_hal_chest02@ha /* 0x8104B2D8@ha */
/* 80637C4C  7F E3 FB 78 */	mr r3, r31
/* 80637C50  38 84 B2 D8 */	addi r4, r4, cKF_ba_r_int_sum_hal_chest02@l /* 0x8104B2D8@l */
/* 80637C54  38 A0 00 00 */	li r5, 0
/* 80637C58  4B D3 8E 9D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80637C5C  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80637C60  7F E3 FB 78 */	mr r3, r31
/* 80637C64  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80637C68  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80637C6C  4B D3 93 A9 */	bl cKF_SkeletonInfo_R_play
/* 80637C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80637C78  7C 08 03 A6 */	mtlr r0
/* 80637C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80637C80  4E 80 00 20 */	blr 
