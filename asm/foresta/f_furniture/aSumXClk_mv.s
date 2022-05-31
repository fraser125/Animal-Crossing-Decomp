lbl_8063C278:
/* 8063C278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063C27C  7C 08 02 A6 */	mflr r0
/* 8063C280  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8063C284  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063C288  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8063C28C  3C 84 00 02 */	addis r4, r4, 2
/* 8063C290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063C294  80 84 60 8C */	lwz r4, 0x608c(r4)
/* 8063C298  28 04 00 00 */	cmplwi r4, 0
/* 8063C29C  41 82 00 A0 */	beq lbl_8063C33C
/* 8063C2A0  80 84 00 60 */	lwz r4, 0x60(r4)
/* 8063C2A4  3B E3 01 34 */	addi r31, r3, 0x134
/* 8063C2A8  80 04 00 08 */	lwz r0, 8(r4)
/* 8063C2AC  2C 00 00 00 */	cmpwi r0, 0
/* 8063C2B0  41 82 00 30 */	beq lbl_8063C2E0
/* 8063C2B4  3C 80 81 0D */	lis r4, cKF_ba_r_int_sum_x_clk@ha /* 0x810D6240@ha */
/* 8063C2B8  7F E3 FB 78 */	mr r3, r31
/* 8063C2BC  38 84 62 40 */	addi r4, r4, cKF_ba_r_int_sum_x_clk@l /* 0x810D6240@l */
/* 8063C2C0  38 A0 00 00 */	li r5, 0
/* 8063C2C4  4B D3 49 21 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063C2C8  7F E3 FB 78 */	mr r3, r31
/* 8063C2CC  4B D3 4D 49 */	bl cKF_SkeletonInfo_R_play
/* 8063C2D0  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063C2D4  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063C2D8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063C2DC  48 00 00 60 */	b lbl_8063C33C
lbl_8063C2E0:
/* 8063C2E0  80 04 00 00 */	lwz r0, 0(r4)
/* 8063C2E4  2C 00 00 01 */	cmpwi r0, 1
/* 8063C2E8  41 82 00 10 */	beq lbl_8063C2F8
/* 8063C2EC  80 04 00 04 */	lwz r0, 4(r4)
/* 8063C2F0  2C 00 00 01 */	cmpwi r0, 1
/* 8063C2F4  40 82 00 40 */	bne lbl_8063C334
lbl_8063C2F8:
/* 8063C2F8  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063C2FC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063C300  41 82 00 28 */	beq lbl_8063C328
/* 8063C304  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063C308  41 82 00 20 */	beq lbl_8063C328
/* 8063C30C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063C310  41 82 00 18 */	beq lbl_8063C328
/* 8063C314  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063C318  41 82 00 10 */	beq lbl_8063C328
/* 8063C31C  38 83 00 08 */	addi r4, r3, 8
/* 8063C320  38 60 01 2D */	li r3, 0x12d
/* 8063C324  4B FF 1C 85 */	bl sAdo_OngenTrgStart
lbl_8063C328:
/* 8063C328  7F E3 FB 78 */	mr r3, r31
/* 8063C32C  4B D3 4C E9 */	bl cKF_SkeletonInfo_R_play
/* 8063C330  48 00 00 0C */	b lbl_8063C33C
lbl_8063C334:
/* 8063C334  7F E3 FB 78 */	mr r3, r31
/* 8063C338  4B D3 4C DD */	bl cKF_SkeletonInfo_R_play
lbl_8063C33C:
/* 8063C33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063C340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063C344  7C 08 03 A6 */	mtlr r0
/* 8063C348  38 21 00 10 */	addi r1, r1, 0x10
/* 8063C34C  4E 80 00 20 */	blr 
