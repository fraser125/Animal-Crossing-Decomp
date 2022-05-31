lbl_805A95E4:
/* 805A95E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A95E8  7C 08 02 A6 */	mflr r0
/* 805A95EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A95F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805A95F4  4B AF 18 E1 */	bl func_8009AED4
/* 805A95F8  3C 80 80 65 */	lis r4, lit_490@ha /* 0x8064A5B4@ha */
/* 805A95FC  7C 7F 1B 78 */	mr r31, r3
/* 805A9600  38 64 A5 B4 */	addi r3, r4, lit_490@l /* 0x8064A5B4@l */
/* 805A9604  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805A9608  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805A960C  C0 03 00 00 */	lfs f0, 0(r3)
/* 805A9610  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805A9614  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805A9618  3C 64 00 02 */	addis r3, r4, 2
/* 805A961C  EC 01 00 2A */	fadds f0, f1, f0
/* 805A9620  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 805A9624  3C 80 80 6C */	lis r4, skl@ha /* 0x806C4614@ha */
/* 805A9628  3C 60 80 6C */	lis r3, anm@ha /* 0x806C461C@ha */
/* 805A962C  38 FF 02 46 */	addi r7, r31, 0x246
/* 805A9630  20 00 00 03 */	subfic r0, r0, 3
/* 805A9634  7C 00 00 34 */	cntlzw r0, r0
/* 805A9638  3B C3 46 1C */	addi r30, r3, anm@l /* 0x806C461C@l */
/* 805A963C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 805A9640  54 1D E8 FA */	rlwinm r29, r0, 0x1d, 3, 0x1d
/* 805A9644  38 84 46 14 */	addi r4, r4, skl@l /* 0x806C4614@l */
/* 805A9648  38 7F 01 78 */	addi r3, r31, 0x178
/* 805A964C  7C 84 E8 2E */	lwzx r4, r4, r29
/* 805A9650  7C BE E8 2E */	lwzx r5, r30, r29
/* 805A9654  4B DC 74 41 */	bl cKF_SkeletonInfo_R_ct
/* 805A9658  7C 9E E8 2E */	lwzx r4, r30, r29
/* 805A965C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805A9660  38 A0 00 00 */	li r5, 0
/* 805A9664  4B DC 75 81 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 805A9668  38 7F 01 78 */	addi r3, r31, 0x178
/* 805A966C  4B DC 79 A9 */	bl cKF_SkeletonInfo_R_play
/* 805A9670  A0 1F 00 06 */	lhz r0, 6(r31)
/* 805A9674  28 00 58 4B */	cmplwi r0, 0x584b
/* 805A9678  40 82 00 10 */	bne lbl_805A9688
/* 805A967C  38 00 00 00 */	li r0, 0
/* 805A9680  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 805A9684  48 00 00 0C */	b lbl_805A9690
lbl_805A9688:
/* 805A9688  38 00 C0 00 */	li r0, -16384
/* 805A968C  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_805A9690:
/* 805A9690  7F E3 FB 78 */	mr r3, r31
/* 805A9694  4B FF FC F9 */	bl func_805A938C
/* 805A9698  3C 80 80 65 */	lis r4, lit_473@ha /* 0x8064A5A0@ha */
/* 805A969C  38 7F 00 28 */	addi r3, r31, 0x28
/* 805A96A0  C0 04 A5 A0 */	lfs f0, lit_473@l(r4)  /* 0x8064A5A0@l */
/* 805A96A4  D0 1F 02 CC */	stfs f0, 0x2cc(r31)
/* 805A96A8  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 805A96AC  48 08 51 8D */	bl sAdo_RegistPlussBridge
/* 805A96B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805A96B4  4B AF 18 6D */	bl func_8009AF20
/* 805A96B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A96BC  7C 08 03 A6 */	mtlr r0
/* 805A96C0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A96C4  4E 80 00 20 */	blr 
