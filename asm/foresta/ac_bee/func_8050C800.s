lbl_8050C800:
/* 8050C800  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050C804  7C 08 02 A6 */	mflr r0
/* 8050C808  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050C80C  39 61 00 20 */	addi r11, r1, 0x20
/* 8050C810  4B B8 E6 C5 */	bl func_8009AED4
/* 8050C814  7C 7F 1B 78 */	mr r31, r3
/* 8050C818  3C A0 80 70 */	lis r5, cKF_bs_r_act_bee@ha /* 0x806FBA18@ha */
/* 8050C81C  3C 60 80 70 */	lis r3, cKF_ba_r_act_bee@ha /* 0x806FB9D4@ha */
/* 8050C820  7C 9D 23 78 */	mr r29, r4
/* 8050C824  38 05 BA 18 */	addi r0, r5, cKF_bs_r_act_bee@l /* 0x806FBA18@l */
/* 8050C828  3B DF 01 7C */	addi r30, r31, 0x17c
/* 8050C82C  38 A3 B9 D4 */	addi r5, r3, cKF_ba_r_act_bee@l /* 0x806FB9D4@l */
/* 8050C830  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 8050C834  7F C3 F3 78 */	mr r3, r30
/* 8050C838  7C 04 03 78 */	mr r4, r0
/* 8050C83C  38 FF 02 04 */	addi r7, r31, 0x204
/* 8050C840  4B E6 42 55 */	bl cKF_SkeletonInfo_R_ct
/* 8050C844  3C 80 80 70 */	lis r4, cKF_ba_r_act_bee@ha /* 0x806FB9D4@ha */
/* 8050C848  7F C3 F3 78 */	mr r3, r30
/* 8050C84C  38 84 B9 D4 */	addi r4, r4, cKF_ba_r_act_bee@l /* 0x806FB9D4@l */
/* 8050C850  38 A0 00 00 */	li r5, 0
/* 8050C854  4B E6 43 91 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8050C858  3C 80 80 65 */	lis r4, data_80648E74@ha /* 0x80648E74@ha */
/* 8050C85C  7F C3 F3 78 */	mr r3, r30
/* 8050C860  C0 04 8E 74 */	lfs f0, data_80648E74@l(r4)  /* 0x80648E74@l */
/* 8050C864  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8050C868  4B E6 47 AD */	bl cKF_SkeletonInfo_R_play
/* 8050C86C  3C 80 80 65 */	lis r4, lit_442@ha /* 0x80648E78@ha */
/* 8050C870  3C 60 80 65 */	lis r3, data_80648E74@ha /* 0x80648E74@ha */
/* 8050C874  C0 24 8E 78 */	lfs f1, lit_442@l(r4)  /* 0x80648E78@l */
/* 8050C878  38 00 80 00 */	li r0, -32768
/* 8050C87C  C0 03 8E 74 */	lfs f0, data_80648E74@l(r3)  /* 0x80648E74@l */
/* 8050C880  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8050C884  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8050C888  38 80 00 0C */	li r4, 0xc
/* 8050C88C  B0 1F 04 42 */	sth r0, 0x442(r31)
/* 8050C890  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 8050C894  4B B5 07 D5 */	bl bzero
/* 8050C898  3C 80 80 51 */	lis r4, aBEE_actor_move@ha /* 0x8050D70C@ha */
/* 8050C89C  7F E3 FB 78 */	mr r3, r31
/* 8050C8A0  38 04 D7 0C */	addi r0, r4, aBEE_actor_move@l /* 0x8050D70C@l */
/* 8050C8A4  7F A5 EB 78 */	mr r5, r29
/* 8050C8A8  90 1F 01 64 */	stw r0, 0x164(r31)
/* 8050C8AC  38 80 00 00 */	li r4, 0
/* 8050C8B0  48 00 0E 11 */	bl aBEE_setupAction
/* 8050C8B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8050C8B8  4B B8 E6 69 */	bl func_8009AF20
/* 8050C8BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050C8C0  7C 08 03 A6 */	mtlr r0
/* 8050C8C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8050C8C8  4E 80 00 20 */	blr 
