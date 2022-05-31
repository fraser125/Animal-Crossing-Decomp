lbl_805B4C0C:
/* 805B4C0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B4C10  7C 08 02 A6 */	mflr r0
/* 805B4C14  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B4C18  39 61 00 30 */	addi r11, r1, 0x30
/* 805B4C1C  4B AE 62 A9 */	bl func_8009AEC4
/* 805B4C20  7C 7D 1B 78 */	mr r29, r3
/* 805B4C24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B4C28  A0 BD 00 06 */	lhz r5, 6(r29)
/* 805B4C2C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805B4C30  3C 64 00 02 */	addis r3, r4, 2
/* 805B4C34  3C C0 80 6C */	lis r6, data_806C5CC0@ha /* 0x806C5CC0@ha */
/* 805B4C38  3B 85 A8 00 */	addi r28, r5, -22528
/* 805B4C3C  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 805B4C40  1F DC 26 B0 */	mulli r30, r28, 0x26b0
/* 805B4C44  3B E6 5C C0 */	addi r31, r6, data_806C5CC0@l /* 0x806C5CC0@l */
/* 805B4C48  57 9B 07 FE */	clrlwi r27, r28, 0x1f
/* 805B4C4C  3B 20 00 32 */	li r25, 0x32
/* 805B4C50  7C 64 F2 14 */	add r3, r4, r30
/* 805B4C54  3C 63 00 01 */	addis r3, r3, 1
/* 805B4C58  88 63 9D 12 */	lbz r3, -0x62ee(r3)
/* 805B4C5C  90 1D 02 D8 */	stw r0, 0x2d8(r29)
/* 805B4C60  54 7A DF 7E */	rlwinm r26, r3, 0x1b, 0x1d, 0x1f
/* 805B4C64  2C 1A 00 03 */	cmpwi r26, 3
/* 805B4C68  80 1D 02 D8 */	lwz r0, 0x2d8(r29)
/* 805B4C6C  20 00 00 03 */	subfic r0, r0, 3
/* 805B4C70  7C 00 00 34 */	cntlzw r0, r0
/* 805B4C74  54 03 D9 7E */	srwi r3, r0, 5
/* 805B4C78  41 82 00 0C */	beq lbl_805B4C84
/* 805B4C7C  38 1A 00 05 */	addi r0, r26, 5
/* 805B4C80  7C 19 07 34 */	extsh r25, r0
lbl_805B4C84:
/* 805B4C84  57 45 18 38 */	slwi r5, r26, 3
/* 805B4C88  54 60 10 3A */	slwi r0, r3, 2
/* 805B4C8C  38 9F 01 14 */	addi r4, r31, 0x114
/* 805B4C90  38 7D 01 78 */	addi r3, r29, 0x178
/* 805B4C94  7C 05 02 14 */	add r0, r5, r0
/* 805B4C98  38 DD 01 EC */	addi r6, r29, 0x1ec
/* 805B4C9C  7C 84 00 2E */	lwzx r4, r4, r0
/* 805B4CA0  38 FD 02 46 */	addi r7, r29, 0x246
/* 805B4CA4  38 A0 00 00 */	li r5, 0
/* 805B4CA8  4B DB BD ED */	bl cKF_SkeletonInfo_R_ct
/* 805B4CAC  93 9D 02 B4 */	stw r28, 0x2b4(r29)
/* 805B4CB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B4CB4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805B4CB8  7F 25 07 34 */	extsh r5, r25
/* 805B4CBC  93 5D 02 B8 */	stw r26, 0x2b8(r29)
/* 805B4CC0  3C 04 00 01 */	addis r0, r4, 1
/* 805B4CC4  7C 80 F2 14 */	add r4, r0, r30
/* 805B4CC8  3C 60 80 65 */	lis r3, data_8064A964@ha /* 0x8064A964@ha */
/* 805B4CCC  90 BD 02 C0 */	stw r5, 0x2c0(r29)
/* 805B4CD0  57 60 10 3A */	slwi r0, r27, 2
/* 805B4CD4  C0 43 A9 64 */	lfs f2, data_8064A964@l(r3)  /* 0x8064A964@l */
/* 805B4CD8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805B4CDC  88 84 9D 14 */	lbz r4, -0x62ec(r4)
/* 805B4CE0  90 9D 02 BC */	stw r4, 0x2bc(r29)
/* 805B4CE4  80 7D 02 BC */	lwz r3, 0x2bc(r29)
/* 805B4CE8  38 63 00 19 */	addi r3, r3, 0x19
/* 805B4CEC  90 7D 02 BC */	stw r3, 0x2bc(r29)
/* 805B4CF0  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 805B4CF4  7C 05 04 2E */	lfsx f0, r5, r0
/* 805B4CF8  EC 01 00 2A */	fadds f0, f1, f0
/* 805B4CFC  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 805B4D00  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805B4D04  EC 00 10 2A */	fadds f0, f0, f2
/* 805B4D08  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 805B4D0C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 805B4D10  D0 1D 02 C8 */	stfs f0, 0x2c8(r29)
/* 805B4D14  C0 3D 02 C8 */	lfs f1, 0x2c8(r29)
/* 805B4D18  7C 05 04 2E */	lfsx f0, r5, r0
/* 805B4D1C  EC 01 00 2A */	fadds f0, f1, f0
/* 805B4D20  D0 1D 02 C8 */	stfs f0, 0x2c8(r29)
/* 805B4D24  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805B4D28  EC 02 00 2A */	fadds f0, f2, f0
/* 805B4D2C  D0 1D 02 CC */	stfs f0, 0x2cc(r29)
/* 805B4D30  4B DE 5F FD */	bl mEv_CheckFirstIntro
/* 805B4D34  30 03 FF FF */	addic r0, r3, -1
/* 805B4D38  7C 00 19 10 */	subfe r0, r0, r3
/* 805B4D3C  7F A3 EB 78 */	mr r3, r29
/* 805B4D40  90 1D 02 C4 */	stw r0, 0x2c4(r29)
/* 805B4D44  48 00 0A E9 */	bl aMHS_light_ctrl
/* 805B4D48  2C 03 00 00 */	cmpwi r3, 0
/* 805B4D4C  41 82 00 10 */	beq lbl_805B4D5C
/* 805B4D50  38 00 3F FF */	li r0, 0x3fff
/* 805B4D54  B0 1D 00 34 */	sth r0, 0x34(r29)
/* 805B4D58  48 00 00 0C */	b lbl_805B4D64
lbl_805B4D5C:
/* 805B4D5C  38 00 00 00 */	li r0, 0
/* 805B4D60  B0 1D 00 34 */	sth r0, 0x34(r29)
lbl_805B4D64:
/* 805B4D64  57 60 08 3C */	slwi r0, r27, 1
/* 805B4D68  38 7F 01 34 */	addi r3, r31, 0x134
/* 805B4D6C  7C A3 02 AE */	lhax r5, r3, r0
/* 805B4D70  3C 60 80 65 */	lis r3, lit_455@ha /* 0x8064A968@ha */
/* 805B4D74  38 83 A9 68 */	addi r4, r3, lit_455@l /* 0x8064A968@l */
/* 805B4D78  38 00 00 00 */	li r0, 0
/* 805B4D7C  B0 BD 00 DE */	sth r5, 0xde(r29)
/* 805B4D80  7F 83 E3 78 */	mr r3, r28
/* 805B4D84  C0 04 00 00 */	lfs f0, 0(r4)
/* 805B4D88  B0 1D 00 38 */	sth r0, 0x38(r29)
/* 805B4D8C  D0 1D 01 34 */	stfs f0, 0x134(r29)
/* 805B4D90  D0 1D 01 40 */	stfs f0, 0x140(r29)
/* 805B4D94  4B DF E8 45 */	bl mHS_get_pl_no
/* 805B4D98  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805B4D9C  4B E2 D3 E5 */	bl mPr_CheckFishCompleteTalk
/* 805B4DA0  2C 03 00 00 */	cmpwi r3, 0
/* 805B4DA4  41 82 00 10 */	beq lbl_805B4DB4
/* 805B4DA8  3C 60 80 65 */	lis r3, lit_456@ha /* 0x8064A96C@ha */
/* 805B4DAC  C0 03 A9 6C */	lfs f0, lit_456@l(r3)  /* 0x8064A96C@l */
/* 805B4DB0  D0 1D 00 74 */	stfs f0, 0x74(r29)
lbl_805B4DB4:
/* 805B4DB4  7F 83 E3 78 */	mr r3, r28
/* 805B4DB8  4B DF E8 21 */	bl mHS_get_pl_no
/* 805B4DBC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805B4DC0  4B E2 D4 59 */	bl mPr_CheckInsectCompleteTalk
/* 805B4DC4  2C 03 00 00 */	cmpwi r3, 0
/* 805B4DC8  41 82 00 10 */	beq lbl_805B4DD8
/* 805B4DCC  3C 60 80 65 */	lis r3, lit_456@ha /* 0x8064A96C@ha */
/* 805B4DD0  C0 03 A9 6C */	lfs f0, lit_456@l(r3)  /* 0x8064A96C@l */
/* 805B4DD4  D0 1D 00 78 */	stfs f0, 0x78(r29)
lbl_805B4DD8:
/* 805B4DD8  7F A3 EB 78 */	mr r3, r29
/* 805B4DDC  38 80 00 00 */	li r4, 0
/* 805B4DE0  48 00 0C A5 */	bl aMHS_setup_action
/* 805B4DE4  3C 80 80 65 */	lis r4, lit_457@ha /* 0x8064A970@ha */
/* 805B4DE8  7F A3 EB 78 */	mr r3, r29
/* 805B4DEC  C0 24 A9 70 */	lfs f1, lit_457@l(r4)  /* 0x8064A970@l */
/* 805B4DF0  48 00 02 29 */	bl aMHS_setup_animation
/* 805B4DF4  38 7D 01 78 */	addi r3, r29, 0x178
/* 805B4DF8  4B DB C2 1D */	bl cKF_SkeletonInfo_R_play
/* 805B4DFC  7F A3 EB 78 */	mr r3, r29
/* 805B4E00  38 80 00 01 */	li r4, 1
/* 805B4E04  48 00 08 C1 */	bl aMHS_set_bgOffset
/* 805B4E08  80 1D 02 B8 */	lwz r0, 0x2b8(r29)
/* 805B4E0C  3C 60 81 20 */	lis r3, aMHS_door_closed_flag@ha /* 0x811FA1E8@ha */
/* 805B4E10  38 63 A1 E8 */	addi r3, r3, aMHS_door_closed_flag@l /* 0x811FA1E8@l */
/* 805B4E14  38 80 00 01 */	li r4, 1
/* 805B4E18  54 00 10 3A */	slwi r0, r0, 2
/* 805B4E1C  7C 83 01 2E */	stwx r4, r3, r0
/* 805B4E20  39 61 00 30 */	addi r11, r1, 0x30
/* 805B4E24  4B AE 60 ED */	bl func_8009AF10
/* 805B4E28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B4E2C  7C 08 03 A6 */	mtlr r0
/* 805B4E30  38 21 00 30 */	addi r1, r1, 0x30
/* 805B4E34  4E 80 00 20 */	blr 
