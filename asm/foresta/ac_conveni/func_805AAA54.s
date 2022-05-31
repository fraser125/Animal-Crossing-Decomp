lbl_805AAA54:
/* 805AAA54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AAA58  7C 08 02 A6 */	mflr r0
/* 805AAA5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AAA60  39 61 00 30 */	addi r11, r1, 0x30
/* 805AAA64  4B AF 04 71 */	bl func_8009AED4
/* 805AAA68  7C 7E 1B 78 */	mr r30, r3
/* 805AAA6C  7C 83 23 78 */	mr r3, r4
/* 805AAA70  4B E2 EB D1 */	bl get_player_actor_withoutCheck
/* 805AAA74  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805AAA78  3C 80 80 6C */	lis r4, skl@ha /* 0x806C479C@ha */
/* 805AAA7C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805AAA80  7C 7F 1B 78 */	mr r31, r3
/* 805AAA84  3C 65 00 02 */	addis r3, r5, 2
/* 805AAA88  38 84 47 9C */	addi r4, r4, skl@l /* 0x806C479C@l */
/* 805AAA8C  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 805AAA90  38 7E 01 78 */	addi r3, r30, 0x178
/* 805AAA94  38 DE 01 EC */	addi r6, r30, 0x1ec
/* 805AAA98  38 FE 02 46 */	addi r7, r30, 0x246
/* 805AAA9C  90 1E 02 D8 */	stw r0, 0x2d8(r30)
/* 805AAAA0  3B A0 00 00 */	li r29, 0
/* 805AAAA4  38 A0 00 00 */	li r5, 0
/* 805AAAA8  80 1E 02 D8 */	lwz r0, 0x2d8(r30)
/* 805AAAAC  20 00 00 03 */	subfic r0, r0, 3
/* 805AAAB0  7C 00 00 34 */	cntlzw r0, r0
/* 805AAAB4  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805AAAB8  7C 84 00 2E */	lwzx r4, r4, r0
/* 805AAABC  4B DC 5F D9 */	bl cKF_SkeletonInfo_R_ct
/* 805AAAC0  7F C3 F3 78 */	mr r3, r30
/* 805AAAC4  38 80 00 01 */	li r4, 1
/* 805AAAC8  48 00 05 21 */	bl aCNV_set_bgOffset
/* 805AAACC  3C 60 80 65 */	lis r3, data_8064A61C@ha /* 0x8064A61C@ha */
/* 805AAAD0  3C 80 80 65 */	lis r4, lit_462@ha /* 0x8064A620@ha */
/* 805AAAD4  38 A3 A6 1C */	addi r5, r3, data_8064A61C@l /* 0x8064A61C@l */
/* 805AAAD8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805AAADC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805AAAE0  38 C4 A6 20 */	addi r6, r4, lit_462@l /* 0x8064A620@l */
/* 805AAAE4  3C 60 80 65 */	lis r3, lit_463@ha /* 0x8064A624@ha */
/* 805AAAE8  3C 80 80 65 */	lis r4, lit_464@ha /* 0x8064A628@ha */
/* 805AAAEC  EC 01 00 2A */	fadds f0, f1, f0
/* 805AAAF0  38 A3 A6 24 */	addi r5, r3, lit_463@l /* 0x8064A624@l */
/* 805AAAF4  C0 46 00 00 */	lfs f2, 0(r6)
/* 805AAAF8  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064A62C@ha */
/* 805AAAFC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805AAB00  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 805AAB04  C0 03 A6 2C */	lfs f0, lit_465@l(r3)  /* 0x8064A62C@l */
/* 805AAB08  D0 5E 01 44 */	stfs f2, 0x144(r30)
/* 805AAB0C  C0 64 A6 28 */	lfs f3, lit_464@l(r4)  /* 0x8064A628@l */
/* 805AAB10  D0 3E 01 34 */	stfs f1, 0x134(r30)
/* 805AAB14  D0 3E 01 40 */	stfs f1, 0x140(r30)
/* 805AAB18  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805AAB1C  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805AAB20  EC 01 00 28 */	fsubs f0, f1, f0
/* 805AAB24  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805AAB28  EC 43 10 2A */	fadds f2, f3, f2
/* 805AAB2C  FC 20 08 1E */	fctiwz f1, f1
/* 805AAB30  FC 00 00 1E */	fctiwz f0, f0
/* 805AAB34  FC 40 10 1E */	fctiwz f2, f2
/* 805AAB38  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805AAB3C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805AAB40  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805AAB44  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805AAB48  D8 41 00 08 */	stfd f2, 8(r1)
/* 805AAB4C  7C 03 00 00 */	cmpw r3, r0
/* 805AAB50  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805AAB54  40 82 00 20 */	bne lbl_805AAB74
/* 805AAB58  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805AAB5C  FC 00 00 1E */	fctiwz f0, f0
/* 805AAB60  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805AAB64  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805AAB68  7C 00 18 00 */	cmpw r0, r3
/* 805AAB6C  40 82 00 08 */	bne lbl_805AAB74
/* 805AAB70  3B A0 00 01 */	li r29, 1
lbl_805AAB74:
/* 805AAB74  7F C3 F3 78 */	mr r3, r30
/* 805AAB78  7F A4 EB 78 */	mr r4, r29
/* 805AAB7C  48 00 07 E1 */	bl aCNV_setup_action
/* 805AAB80  38 7E 01 78 */	addi r3, r30, 0x178
/* 805AAB84  4B DC 64 91 */	bl cKF_SkeletonInfo_R_play
/* 805AAB88  90 7E 01 74 */	stw r3, 0x174(r30)
/* 805AAB8C  38 00 00 01 */	li r0, 1
/* 805AAB90  7F C3 F3 78 */	mr r3, r30
/* 805AAB94  90 1E 01 E8 */	stw r0, 0x1e8(r30)
/* 805AAB98  48 00 03 BD */	bl aCNV_ctrl_light
/* 805AAB9C  D0 3E 02 C8 */	stfs f1, 0x2c8(r30)
/* 805AABA0  39 61 00 30 */	addi r11, r1, 0x30
/* 805AABA4  4B AF 03 7D */	bl func_8009AF20
/* 805AABA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AABAC  7C 08 03 A6 */	mtlr r0
/* 805AABB0  38 21 00 30 */	addi r1, r1, 0x30
/* 805AABB4  4E 80 00 20 */	blr 
