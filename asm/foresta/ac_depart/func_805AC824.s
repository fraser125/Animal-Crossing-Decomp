lbl_805AC824:
/* 805AC824  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AC828  7C 08 02 A6 */	mflr r0
/* 805AC82C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AC830  39 61 00 30 */	addi r11, r1, 0x30
/* 805AC834  4B AE E6 A1 */	bl func_8009AED4
/* 805AC838  7C 7E 1B 78 */	mr r30, r3
/* 805AC83C  7C 83 23 78 */	mr r3, r4
/* 805AC840  4B E2 CE 01 */	bl get_player_actor_withoutCheck
/* 805AC844  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805AC848  3C 80 80 6C */	lis r4, skl@ha /* 0x806C4AEC@ha */
/* 805AC84C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805AC850  7C 7F 1B 78 */	mr r31, r3
/* 805AC854  3C 65 00 02 */	addis r3, r5, 2
/* 805AC858  38 84 4A EC */	addi r4, r4, skl@l /* 0x806C4AEC@l */
/* 805AC85C  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 805AC860  38 7E 01 78 */	addi r3, r30, 0x178
/* 805AC864  38 DE 01 EC */	addi r6, r30, 0x1ec
/* 805AC868  38 FE 02 46 */	addi r7, r30, 0x246
/* 805AC86C  90 1E 02 D8 */	stw r0, 0x2d8(r30)
/* 805AC870  3B A0 00 00 */	li r29, 0
/* 805AC874  38 A0 00 00 */	li r5, 0
/* 805AC878  80 1E 02 D8 */	lwz r0, 0x2d8(r30)
/* 805AC87C  20 00 00 03 */	subfic r0, r0, 3
/* 805AC880  7C 00 00 34 */	cntlzw r0, r0
/* 805AC884  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805AC888  7C 84 00 2E */	lwzx r4, r4, r0
/* 805AC88C  4B DC 42 09 */	bl cKF_SkeletonInfo_R_ct
/* 805AC890  7F C3 F3 78 */	mr r3, r30
/* 805AC894  38 80 00 01 */	li r4, 1
/* 805AC898  48 00 05 2D */	bl aDPT_set_bgOffset
/* 805AC89C  3C 60 80 65 */	lis r3, data_8064A694@ha /* 0x8064A694@ha */
/* 805AC8A0  3C 80 80 65 */	lis r4, lit_462@ha /* 0x8064A698@ha */
/* 805AC8A4  38 A3 A6 94 */	addi r5, r3, data_8064A694@l /* 0x8064A694@l */
/* 805AC8A8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805AC8AC  C0 A5 00 00 */	lfs f5, 0(r5)
/* 805AC8B0  38 C4 A6 98 */	addi r6, r4, lit_462@l /* 0x8064A698@l */
/* 805AC8B4  3C 60 80 65 */	lis r3, lit_463@ha /* 0x8064A69C@ha */
/* 805AC8B8  3C 80 80 65 */	lis r4, lit_464@ha /* 0x8064A6A0@ha */
/* 805AC8BC  EC 05 00 2A */	fadds f0, f5, f0
/* 805AC8C0  38 A3 A6 9C */	addi r5, r3, lit_463@l /* 0x8064A69C@l */
/* 805AC8C4  C0 46 00 00 */	lfs f2, 0(r6)
/* 805AC8C8  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064A6A4@ha */
/* 805AC8CC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805AC8D0  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 805AC8D4  C0 03 A6 A4 */	lfs f0, lit_465@l(r3)  /* 0x8064A6A4@l */
/* 805AC8D8  C0 9E 00 30 */	lfs f4, 0x30(r30)
/* 805AC8DC  C0 64 A6 A0 */	lfs f3, lit_464@l(r4)  /* 0x8064A6A0@l */
/* 805AC8E0  EC 85 20 2A */	fadds f4, f5, f4
/* 805AC8E4  D0 9E 00 30 */	stfs f4, 0x30(r30)
/* 805AC8E8  D0 5E 01 44 */	stfs f2, 0x144(r30)
/* 805AC8EC  D0 3E 01 34 */	stfs f1, 0x134(r30)
/* 805AC8F0  D0 3E 01 40 */	stfs f1, 0x140(r30)
/* 805AC8F4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805AC8F8  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805AC8FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805AC900  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805AC904  EC 43 10 2A */	fadds f2, f3, f2
/* 805AC908  FC 20 08 1E */	fctiwz f1, f1
/* 805AC90C  FC 00 00 1E */	fctiwz f0, f0
/* 805AC910  FC 40 10 1E */	fctiwz f2, f2
/* 805AC914  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805AC918  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805AC91C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805AC920  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805AC924  D8 41 00 08 */	stfd f2, 8(r1)
/* 805AC928  7C 03 00 00 */	cmpw r3, r0
/* 805AC92C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805AC930  40 82 00 20 */	bne lbl_805AC950
/* 805AC934  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805AC938  FC 00 00 1E */	fctiwz f0, f0
/* 805AC93C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805AC940  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805AC944  7C 00 18 00 */	cmpw r0, r3
/* 805AC948  40 82 00 08 */	bne lbl_805AC950
/* 805AC94C  3B A0 00 01 */	li r29, 1
lbl_805AC950:
/* 805AC950  7F C3 F3 78 */	mr r3, r30
/* 805AC954  7F A4 EB 78 */	mr r4, r29
/* 805AC958  48 00 07 E1 */	bl aDPT_setup_action
/* 805AC95C  38 7E 01 78 */	addi r3, r30, 0x178
/* 805AC960  4B DC 46 B5 */	bl cKF_SkeletonInfo_R_play
/* 805AC964  90 7E 01 74 */	stw r3, 0x174(r30)
/* 805AC968  38 00 00 01 */	li r0, 1
/* 805AC96C  7F C3 F3 78 */	mr r3, r30
/* 805AC970  90 1E 01 E8 */	stw r0, 0x1e8(r30)
/* 805AC974  48 00 03 BD */	bl aDPT_ctrl_light
/* 805AC978  D0 3E 02 C8 */	stfs f1, 0x2c8(r30)
/* 805AC97C  39 61 00 30 */	addi r11, r1, 0x30
/* 805AC980  4B AE E5 A1 */	bl func_8009AF20
/* 805AC984  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AC988  7C 08 03 A6 */	mtlr r0
/* 805AC98C  38 21 00 30 */	addi r1, r1, 0x30
/* 805AC990  4E 80 00 20 */	blr 
