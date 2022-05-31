lbl_804103C4:
/* 804103C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804103C8  7C 08 02 A6 */	mflr r0
/* 804103CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804103D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804103D4  4B C8 AB 01 */	bl func_8009AED4
/* 804103D8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804103DC  7C 7F 1B 78 */	mr r31, r3
/* 804103E0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804103E4  7C 9E 23 78 */	mr r30, r4
/* 804103E8  3F A5 00 02 */	addis r29, r5, 2
/* 804103EC  80 1D 60 E8 */	lwz r0, 0x60e8(r29)
/* 804103F0  28 00 00 00 */	cmplwi r0, 0
/* 804103F4  40 82 00 1C */	bne lbl_80410410
/* 804103F8  38 60 00 04 */	li r3, 4
/* 804103FC  4B FA C0 61 */	bl zelda_malloc
/* 80410400  3C 80 80 41 */	lis r4, title_action_data_init_start_select@ha /* 0x804118BC@ha */
/* 80410404  90 7D 60 E8 */	stw r3, 0x60e8(r29)
/* 80410408  38 04 18 BC */	addi r0, r4, title_action_data_init_start_select@l /* 0x804118BC@l */
/* 8041040C  90 03 00 00 */	stw r0, 0(r3)
lbl_80410410:
/* 80410410  38 1F 02 E4 */	addi r0, r31, 0x2e4
/* 80410414  3C 80 80 C3 */	lis r4, cKF_bs_r_logo_us_animal@ha /* 0x80C376BC@ha */
/* 80410418  90 1F 01 EC */	stw r0, 0x1ec(r31)
/* 8041041C  38 1F 03 68 */	addi r0, r31, 0x368
/* 80410420  38 7F 01 7C */	addi r3, r31, 0x17c
/* 80410424  38 84 76 BC */	addi r4, r4, cKF_bs_r_logo_us_animal@l /* 0x80C376BC@l */
/* 80410428  90 1F 01 F0 */	stw r0, 0x1f0(r31)
/* 8041042C  38 A0 00 00 */	li r5, 0
/* 80410430  80 DF 01 EC */	lwz r6, 0x1ec(r31)
/* 80410434  80 FF 01 F0 */	lwz r7, 0x1f0(r31)
/* 80410438  4B F6 06 5D */	bl cKF_SkeletonInfo_R_ct
/* 8041043C  38 1F 03 EC */	addi r0, r31, 0x3ec
/* 80410440  3C 80 80 C4 */	lis r4, cKF_bs_r_logo_us_cros@ha /* 0x80C3E438@ha */
/* 80410444  90 1F 02 64 */	stw r0, 0x264(r31)
/* 80410448  38 1F 04 46 */	addi r0, r31, 0x446
/* 8041044C  38 7F 01 F4 */	addi r3, r31, 0x1f4
/* 80410450  38 84 E4 38 */	addi r4, r4, cKF_bs_r_logo_us_cros@l /* 0x80C3E438@l */
/* 80410454  90 1F 02 68 */	stw r0, 0x268(r31)
/* 80410458  38 A0 00 00 */	li r5, 0
/* 8041045C  80 DF 02 64 */	lwz r6, 0x264(r31)
/* 80410460  80 FF 02 68 */	lwz r7, 0x268(r31)
/* 80410464  4B F6 06 31 */	bl cKF_SkeletonInfo_R_ct
/* 80410468  38 1F 04 A0 */	addi r0, r31, 0x4a0
/* 8041046C  3C 80 80 C4 */	lis r4, cKF_bs_r_logo_us_sing@ha /* 0x80C40E58@ha */
/* 80410470  90 1F 02 DC */	stw r0, 0x2dc(r31)
/* 80410474  38 1F 04 FA */	addi r0, r31, 0x4fa
/* 80410478  38 7F 02 6C */	addi r3, r31, 0x26c
/* 8041047C  38 84 0E 58 */	addi r4, r4, cKF_bs_r_logo_us_sing@l /* 0x80C40E58@l */
/* 80410480  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80410484  38 A0 00 00 */	li r5, 0
/* 80410488  80 DF 02 DC */	lwz r6, 0x2dc(r31)
/* 8041048C  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80410490  4B F6 06 05 */	bl cKF_SkeletonInfo_R_ct
/* 80410494  7F E3 FB 78 */	mr r3, r31
/* 80410498  7F C4 F3 78 */	mr r4, r30
/* 8041049C  38 A0 00 00 */	li r5, 0
/* 804104A0  48 00 07 D1 */	bl aAL_setupAction
/* 804104A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804104A8  4B C8 AA 79 */	bl func_8009AF20
/* 804104AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804104B0  7C 08 03 A6 */	mtlr r0
/* 804104B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804104B8  4E 80 00 20 */	blr 
