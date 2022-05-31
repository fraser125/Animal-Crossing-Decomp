lbl_805A9BB8:
/* 805A9BB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A9BBC  7C 08 02 A6 */	mflr r0
/* 805A9BC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A9BC4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A9BC8  7C 7F 1B 78 */	mr r31, r3
/* 805A9BCC  7C 83 23 78 */	mr r3, r4
/* 805A9BD0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805A9BD4  4B E2 FA 6D */	bl get_player_actor_withoutCheck
/* 805A9BD8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805A9BDC  3C 80 80 6C */	lis r4, skl@ha /* 0x806C4678@ha */
/* 805A9BE0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805A9BE4  7C 7E 1B 78 */	mr r30, r3
/* 805A9BE8  3C 65 00 02 */	addis r3, r5, 2
/* 805A9BEC  38 84 46 78 */	addi r4, r4, skl@l /* 0x806C4678@l */
/* 805A9BF0  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 805A9BF4  38 7F 01 78 */	addi r3, r31, 0x178
/* 805A9BF8  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805A9BFC  38 FF 02 46 */	addi r7, r31, 0x246
/* 805A9C00  90 1F 02 D8 */	stw r0, 0x2d8(r31)
/* 805A9C04  38 A0 00 00 */	li r5, 0
/* 805A9C08  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 805A9C0C  20 00 00 03 */	subfic r0, r0, 3
/* 805A9C10  7C 00 00 34 */	cntlzw r0, r0
/* 805A9C14  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805A9C18  7C 84 00 2E */	lwzx r4, r4, r0
/* 805A9C1C  4B DC 6E 79 */	bl cKF_SkeletonInfo_R_ct
/* 805A9C20  7F E3 FB 78 */	mr r3, r31
/* 805A9C24  38 80 00 01 */	li r4, 1
/* 805A9C28  48 00 02 C5 */	bl aBGY_set_bgOffset
/* 805A9C2C  7F E3 FB 78 */	mr r3, r31
/* 805A9C30  38 80 00 01 */	li r4, 1
/* 805A9C34  48 00 00 FD */	bl func_805A9D30
/* 805A9C38  3C 60 80 65 */	lis r3, data_8064A5E4@ha /* 0x8064A5E4@ha */
/* 805A9C3C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805A9C40  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805A9C44  38 80 00 00 */	li r4, 0
/* 805A9C48  C0 63 A5 E4 */	lfs f3, data_8064A5E4@l(r3)  /* 0x8064A5E4@l */
/* 805A9C4C  FC 20 08 1E */	fctiwz f1, f1
/* 805A9C50  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 805A9C54  FC 00 00 1E */	fctiwz f0, f0
/* 805A9C58  7F E3 FB 78 */	mr r3, r31
/* 805A9C5C  EC 43 10 2A */	fadds f2, f3, f2
/* 805A9C60  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805A9C64  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A9C68  FC 00 10 1E */	fctiwz f0, f2
/* 805A9C6C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 805A9C70  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805A9C74  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A9C78  7C 05 00 00 */	cmpw r5, r0
/* 805A9C7C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 805A9C80  40 82 00 20 */	bne lbl_805A9CA0
/* 805A9C84  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805A9C88  FC 00 00 1E */	fctiwz f0, f0
/* 805A9C8C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805A9C90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A9C94  7C 00 28 00 */	cmpw r0, r5
/* 805A9C98  40 82 00 08 */	bne lbl_805A9CA0
/* 805A9C9C  38 80 00 01 */	li r4, 1
lbl_805A9CA0:
/* 805A9CA0  48 00 08 39 */	bl aBGY_setup_action
/* 805A9CA4  3C 80 80 65 */	lis r4, lit_464@ha /* 0x8064A5E8@ha */
/* 805A9CA8  38 7F 01 78 */	addi r3, r31, 0x178
/* 805A9CAC  C0 04 A5 E8 */	lfs f0, lit_464@l(r4)  /* 0x8064A5E8@l */
/* 805A9CB0  D0 1F 01 44 */	stfs f0, 0x144(r31)
/* 805A9CB4  4B DC 73 61 */	bl cKF_SkeletonInfo_R_play
/* 805A9CB8  7F E3 FB 78 */	mr r3, r31
/* 805A9CBC  48 00 08 C1 */	bl aBGY_ctrl_light
/* 805A9CC0  2C 03 00 00 */	cmpwi r3, 0
/* 805A9CC4  41 82 00 10 */	beq lbl_805A9CD4
/* 805A9CC8  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064A5EC@ha */
/* 805A9CCC  C0 03 A5 EC */	lfs f0, lit_465@l(r3)  /* 0x8064A5EC@l */
/* 805A9CD0  48 00 00 0C */	b lbl_805A9CDC
lbl_805A9CD4:
/* 805A9CD4  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A5F0@ha */
/* 805A9CD8  C0 03 A5 F0 */	lfs f0, lit_466@l(r3)  /* 0x8064A5F0@l */
lbl_805A9CDC:
/* 805A9CDC  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 805A9CE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A9CE4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A9CE8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805A9CEC  7C 08 03 A6 */	mtlr r0
/* 805A9CF0  38 21 00 30 */	addi r1, r1, 0x30
/* 805A9CF4  4E 80 00 20 */	blr 
