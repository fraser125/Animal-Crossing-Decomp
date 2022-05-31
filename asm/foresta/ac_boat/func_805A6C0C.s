lbl_805A6C0C:
/* 805A6C0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A6C10  7C 08 02 A6 */	mflr r0
/* 805A6C14  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A6C18  39 61 00 30 */	addi r11, r1, 0x30
/* 805A6C1C  4B AF 42 B5 */	bl func_8009AED0
/* 805A6C20  7C 7F 1B 78 */	mr r31, r3
/* 805A6C24  7C 9C 23 78 */	mr r28, r4
/* 805A6C28  48 00 05 5D */	bl aBT_check_other_boat
/* 805A6C2C  2C 03 00 01 */	cmpwi r3, 1
/* 805A6C30  40 82 01 38 */	bne lbl_805A6D68
/* 805A6C34  88 1F 00 09 */	lbz r0, 9(r31)
/* 805A6C38  7F 9E E3 78 */	mr r30, r28
/* 805A6C3C  3B BF 01 78 */	addi r29, r31, 0x178
/* 805A6C40  3B 80 00 00 */	li r28, 0
/* 805A6C44  2C 00 00 06 */	cmpwi r0, 6
/* 805A6C48  41 82 00 08 */	beq lbl_805A6C50
/* 805A6C4C  3B 80 00 01 */	li r28, 1
lbl_805A6C50:
/* 805A6C50  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 805A6C54  3C 60 80 6C */	lis r3, lit_448@ha /* 0x806C43D0@ha */
/* 805A6C58  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A6C5C  38 83 43 D0 */	addi r4, r3, lit_448@l /* 0x806C43D0@l */
/* 805A6C60  38 61 00 08 */	addi r3, r1, 8
/* 805A6C64  90 A1 00 08 */	stw r5, 8(r1)
/* 805A6C68  38 A0 01 46 */	li r5, 0x146
/* 805A6C6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A6C70  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A6C74  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A6C78  4B DE D3 41 */	bl mCoBG_GetWaterHeight_File
/* 805A6C7C  3C 80 80 65 */	lis r4, data_8064A4C4@ha /* 0x8064A4C4@ha */
/* 805A6C80  3C 60 80 6C */	lis r3, aBT_init_angleY@ha /* 0x806C43CC@ha */
/* 805A6C84  C0 04 A4 C4 */	lfs f0, data_8064A4C4@l(r4)  /* 0x8064A4C4@l */
/* 805A6C88  38 A3 43 CC */	addi r5, r3, aBT_init_angleY@l /* 0x806C43CC@l */
/* 805A6C8C  57 86 08 3C */	slwi r6, r28, 1
/* 805A6C90  38 7F 00 0C */	addi r3, r31, 0xc
/* 805A6C94  EC 00 08 2A */	fadds f0, f0, f1
/* 805A6C98  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A6C9C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 805A6CA0  7C 05 32 AE */	lhax r0, r5, r6
/* 805A6CA4  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 805A6CA8  7C 05 32 AE */	lhax r0, r5, r6
/* 805A6CAC  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805A6CB0  4B E1 42 0D */	bl xyz_t_move
/* 805A6CB4  3C 80 80 B6 */	lis r4, cKF_bs_r_obj_e_boat@ha /* 0x80B5BA6C@ha */
/* 805A6CB8  7F A3 EB 78 */	mr r3, r29
/* 805A6CBC  38 84 BA 6C */	addi r4, r4, cKF_bs_r_obj_e_boat@l /* 0x80B5BA6C@l */
/* 805A6CC0  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805A6CC4  38 FF 02 46 */	addi r7, r31, 0x246
/* 805A6CC8  38 A0 00 00 */	li r5, 0
/* 805A6CCC  4B DC 9D C9 */	bl cKF_SkeletonInfo_R_ct
/* 805A6CD0  3C 80 80 65 */	lis r4, data_8064A4C4@ha /* 0x8064A4C4@ha */
/* 805A6CD4  3C 60 80 65 */	lis r3, lit_450@ha /* 0x8064A4CC@ha */
/* 805A6CD8  38 A4 A4 C4 */	addi r5, r4, data_8064A4C4@l /* 0x8064A4C4@l */
/* 805A6CDC  C0 83 A4 CC */	lfs f4, lit_450@l(r3)  /* 0x8064A4CC@l */
/* 805A6CE0  C0 25 00 00 */	lfs f1, 0(r5)
/* 805A6CE4  3C 80 80 65 */	lis r4, lit_449@ha /* 0x8064A4C8@ha */
/* 805A6CE8  38 C4 A4 C8 */	addi r6, r4, lit_449@l /* 0x8064A4C8@l */
/* 805A6CEC  3C 60 80 B6 */	lis r3, cKF_ba_r_obj_e_boat@ha /* 0x80B5BB34@ha */
/* 805A6CF0  FC 60 08 90 */	fmr f3, f1
/* 805A6CF4  C0 46 00 00 */	lfs f2, 0(r6)
/* 805A6CF8  FC A0 20 90 */	fmr f5, f4
/* 805A6CFC  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 805A6D00  38 A3 BB 34 */	addi r5, r3, cKF_ba_r_obj_e_boat@l /* 0x80B5BB34@l */
/* 805A6D04  7F A3 EB 78 */	mr r3, r29
/* 805A6D08  38 C0 00 01 */	li r6, 1
/* 805A6D0C  38 E0 00 00 */	li r7, 0
/* 805A6D10  4B DC 9F C5 */	bl cKF_SkeletonInfo_R_init
/* 805A6D14  7F A3 EB 78 */	mr r3, r29
/* 805A6D18  4B DC A2 FD */	bl cKF_SkeletonInfo_R_play
/* 805A6D1C  3C 80 80 65 */	lis r4, lit_451@ha /* 0x8064A4D0@ha */
/* 805A6D20  3C 60 80 65 */	lis r3, lit_452@ha /* 0x8064A4D4@ha */
/* 805A6D24  C0 24 A4 D0 */	lfs f1, lit_451@l(r4)  /* 0x8064A4D0@l */
/* 805A6D28  38 00 00 C8 */	li r0, 0xc8
/* 805A6D2C  C0 03 A4 D4 */	lfs f0, lit_452@l(r3)  /* 0x8064A4D4@l */
/* 805A6D30  7F E3 FB 78 */	mr r3, r31
/* 805A6D34  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 805A6D38  7F C4 F3 78 */	mr r4, r30
/* 805A6D3C  38 A0 00 00 */	li r5, 0
/* 805A6D40  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 805A6D44  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 805A6D48  90 1F 02 BC */	stw r0, 0x2bc(r31)
/* 805A6D4C  93 9F 02 C4 */	stw r28, 0x2c4(r31)
/* 805A6D50  48 00 15 FD */	bl aBT_setupAction
/* 805A6D54  7F E3 FB 78 */	mr r3, r31
/* 805A6D58  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A6D5C  38 BF 00 DE */	addi r5, r31, 0xde
/* 805A6D60  4B DE 6B 49 */	bl mCoBG_MakeBoatCollision
/* 805A6D64  48 00 00 0C */	b lbl_805A6D70
lbl_805A6D68:
/* 805A6D68  7F E3 FB 78 */	mr r3, r31
/* 805A6D6C  4B DC D6 D5 */	bl Actor_delete
lbl_805A6D70:
/* 805A6D70  39 61 00 30 */	addi r11, r1, 0x30
/* 805A6D74  4B AF 41 A9 */	bl func_8009AF1C
/* 805A6D78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A6D7C  7C 08 03 A6 */	mtlr r0
/* 805A6D80  38 21 00 30 */	addi r1, r1, 0x30
/* 805A6D84  4E 80 00 20 */	blr 
