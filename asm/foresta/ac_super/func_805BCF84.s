lbl_805BCF84:
/* 805BCF84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BCF88  7C 08 02 A6 */	mflr r0
/* 805BCF8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BCF90  39 61 00 30 */	addi r11, r1, 0x30
/* 805BCF94  4B AD DF 41 */	bl func_8009AED4
/* 805BCF98  7C 7E 1B 78 */	mr r30, r3
/* 805BCF9C  7C 83 23 78 */	mr r3, r4
/* 805BCFA0  4B E1 C6 A1 */	bl get_player_actor_withoutCheck
/* 805BCFA4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805BCFA8  3C 80 80 6C */	lis r4, skl@ha /* 0x806C6E10@ha */
/* 805BCFAC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805BCFB0  7C 7F 1B 78 */	mr r31, r3
/* 805BCFB4  3C 65 00 02 */	addis r3, r5, 2
/* 805BCFB8  38 84 6E 10 */	addi r4, r4, skl@l /* 0x806C6E10@l */
/* 805BCFBC  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 805BCFC0  38 7E 01 78 */	addi r3, r30, 0x178
/* 805BCFC4  38 DE 01 EC */	addi r6, r30, 0x1ec
/* 805BCFC8  38 FE 02 46 */	addi r7, r30, 0x246
/* 805BCFCC  90 1E 02 D8 */	stw r0, 0x2d8(r30)
/* 805BCFD0  3B A0 00 00 */	li r29, 0
/* 805BCFD4  38 A0 00 00 */	li r5, 0
/* 805BCFD8  80 1E 02 D8 */	lwz r0, 0x2d8(r30)
/* 805BCFDC  20 00 00 03 */	subfic r0, r0, 3
/* 805BCFE0  7C 00 00 34 */	cntlzw r0, r0
/* 805BCFE4  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805BCFE8  7C 84 00 2E */	lwzx r4, r4, r0
/* 805BCFEC  4B DB 3A A9 */	bl cKF_SkeletonInfo_R_ct
/* 805BCFF0  7F C3 F3 78 */	mr r3, r30
/* 805BCFF4  38 80 00 01 */	li r4, 1
/* 805BCFF8  48 00 05 2D */	bl aSPR_set_bgOffset
/* 805BCFFC  3C 60 80 65 */	lis r3, data_8064AB4C@ha /* 0x8064AB4C@ha */
/* 805BD000  3C 80 80 65 */	lis r4, lit_462@ha /* 0x8064AB50@ha */
/* 805BD004  38 A3 AB 4C */	addi r5, r3, data_8064AB4C@l /* 0x8064AB4C@l */
/* 805BD008  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805BD00C  C0 A5 00 00 */	lfs f5, 0(r5)
/* 805BD010  38 C4 AB 50 */	addi r6, r4, lit_462@l /* 0x8064AB50@l */
/* 805BD014  3C 60 80 65 */	lis r3, lit_463@ha /* 0x8064AB54@ha */
/* 805BD018  3C 80 80 65 */	lis r4, lit_464@ha /* 0x8064AB58@ha */
/* 805BD01C  EC 05 00 2A */	fadds f0, f5, f0
/* 805BD020  38 A3 AB 54 */	addi r5, r3, lit_463@l /* 0x8064AB54@l */
/* 805BD024  C0 46 00 00 */	lfs f2, 0(r6)
/* 805BD028  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064AB5C@ha */
/* 805BD02C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805BD030  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 805BD034  C0 03 AB 5C */	lfs f0, lit_465@l(r3)  /* 0x8064AB5C@l */
/* 805BD038  C0 9E 00 30 */	lfs f4, 0x30(r30)
/* 805BD03C  C0 64 AB 58 */	lfs f3, lit_464@l(r4)  /* 0x8064AB58@l */
/* 805BD040  EC 85 20 2A */	fadds f4, f5, f4
/* 805BD044  D0 9E 00 30 */	stfs f4, 0x30(r30)
/* 805BD048  D0 5E 01 44 */	stfs f2, 0x144(r30)
/* 805BD04C  D0 3E 01 34 */	stfs f1, 0x134(r30)
/* 805BD050  D0 3E 01 40 */	stfs f1, 0x140(r30)
/* 805BD054  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805BD058  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805BD05C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805BD060  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805BD064  EC 43 10 2A */	fadds f2, f3, f2
/* 805BD068  FC 20 08 1E */	fctiwz f1, f1
/* 805BD06C  FC 00 00 1E */	fctiwz f0, f0
/* 805BD070  FC 40 10 1E */	fctiwz f2, f2
/* 805BD074  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805BD078  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BD07C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805BD080  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BD084  D8 41 00 08 */	stfd f2, 8(r1)
/* 805BD088  7C 03 00 00 */	cmpw r3, r0
/* 805BD08C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805BD090  40 82 00 20 */	bne lbl_805BD0B0
/* 805BD094  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BD098  FC 00 00 1E */	fctiwz f0, f0
/* 805BD09C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BD0A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BD0A4  7C 00 18 00 */	cmpw r0, r3
/* 805BD0A8  40 82 00 08 */	bne lbl_805BD0B0
/* 805BD0AC  3B A0 00 01 */	li r29, 1
lbl_805BD0B0:
/* 805BD0B0  7F C3 F3 78 */	mr r3, r30
/* 805BD0B4  7F A4 EB 78 */	mr r4, r29
/* 805BD0B8  48 00 07 E1 */	bl aSPR_setup_action
/* 805BD0BC  38 7E 01 78 */	addi r3, r30, 0x178
/* 805BD0C0  4B DB 3F 55 */	bl cKF_SkeletonInfo_R_play
/* 805BD0C4  90 7E 01 74 */	stw r3, 0x174(r30)
/* 805BD0C8  38 00 00 01 */	li r0, 1
/* 805BD0CC  7F C3 F3 78 */	mr r3, r30
/* 805BD0D0  90 1E 01 E8 */	stw r0, 0x1e8(r30)
/* 805BD0D4  48 00 03 BD */	bl aSPR_ctrl_light
/* 805BD0D8  D0 3E 02 C8 */	stfs f1, 0x2c8(r30)
/* 805BD0DC  39 61 00 30 */	addi r11, r1, 0x30
/* 805BD0E0  4B AD DE 41 */	bl func_8009AF20
/* 805BD0E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BD0E8  7C 08 03 A6 */	mtlr r0
/* 805BD0EC  38 21 00 30 */	addi r1, r1, 0x30
/* 805BD0F0  4E 80 00 20 */	blr 
