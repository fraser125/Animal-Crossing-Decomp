lbl_8059B26C:
/* 8059B26C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8059B270  7C 08 02 A6 */	mflr r0
/* 8059B274  90 01 00 74 */	stw r0, 0x74(r1)
/* 8059B278  39 61 00 70 */	addi r11, r1, 0x70
/* 8059B27C  4B AF FC 4D */	bl func_8009AEC8
/* 8059B280  3C A0 80 65 */	lis r5, data_8064A01C@ha /* 0x8064A01C@ha */
/* 8059B284  38 C0 00 02 */	li r6, 2
/* 8059B288  38 E5 A0 1C */	addi r7, r5, data_8064A01C@l /* 0x8064A01C@l */
/* 8059B28C  7C 7F 1B 78 */	mr r31, r3
/* 8059B290  80 07 00 00 */	lwz r0, 0(r7)
/* 8059B294  3C A0 80 5A */	lis r5, aIHT_actor_move@ha /* 0x8059BFDC@ha */
/* 8059B298  81 07 00 04 */	lwz r8, 4(r7)
/* 8059B29C  38 A5 BF DC */	addi r5, r5, aIHT_actor_move@l /* 0x8059BFDC@l */
/* 8059B2A0  80 E7 00 08 */	lwz r7, 8(r7)
/* 8059B2A4  7C 9E 23 78 */	mr r30, r4
/* 8059B2A8  90 01 00 38 */	stw r0, 0x38(r1)
/* 8059B2AC  38 00 2D 1B */	li r0, 0x2d1b
/* 8059B2B0  91 01 00 3C */	stw r8, 0x3c(r1)
/* 8059B2B4  90 E1 00 40 */	stw r7, 0x40(r1)
/* 8059B2B8  90 C3 02 18 */	stw r6, 0x218(r3)
/* 8059B2BC  90 A3 01 64 */	stw r5, 0x164(r3)
/* 8059B2C0  B0 03 02 1C */	sth r0, 0x21c(r3)
/* 8059B2C4  A8 03 00 24 */	lha r0, 0x24(r3)
/* 8059B2C8  2C 00 00 00 */	cmpwi r0, 0
/* 8059B2CC  40 82 02 AC */	bne lbl_8059B578
/* 8059B2D0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8059B2D4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8059B2D8  3C A5 00 02 */	addis r5, r5, 2
/* 8059B2DC  A8 05 66 6C */	lha r0, 0x666c(r5)
/* 8059B2E0  2C 00 00 01 */	cmpwi r0, 1
/* 8059B2E4  40 82 00 18 */	bne lbl_8059B2FC
/* 8059B2E8  80 A5 60 88 */	lwz r5, 0x6088(r5)
/* 8059B2EC  81 85 00 0C */	lwz r12, 0xc(r5)
/* 8059B2F0  7D 89 03 A6 */	mtctr r12
/* 8059B2F4  4E 80 04 21 */	bctrl 
/* 8059B2F8  48 00 02 B0 */	b lbl_8059B5A8
lbl_8059B2FC:
/* 8059B2FC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8059B300  38 9F 00 28 */	addi r4, r31, 0x28
/* 8059B304  4B E1 FB B9 */	bl xyz_t_move
/* 8059B308  3C 60 80 6C */	lis r3, data_806C33B0@ha /* 0x806C33B0@ha */
/* 8059B30C  3B 40 00 00 */	li r26, 0
/* 8059B310  3B 83 33 B0 */	addi r28, r3, data_806C33B0@l /* 0x806C33B0@l */
/* 8059B314  3B A0 00 00 */	li r29, 0
/* 8059B318  3B 60 00 00 */	li r27, 0
lbl_8059B31C:
/* 8059B31C  38 61 00 38 */	addi r3, r1, 0x38
/* 8059B320  38 81 00 2C */	addi r4, r1, 0x2c
/* 8059B324  4B E1 FB 99 */	bl xyz_t_move
/* 8059B328  7C BC EA 14 */	add r5, r28, r29
/* 8059B32C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8059B330  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 8059B334  38 61 00 20 */	addi r3, r1, 0x20
/* 8059B338  C0 45 00 00 */	lfs f2, 0(r5)
/* 8059B33C  38 80 00 00 */	li r4, 0
/* 8059B340  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8059B344  C0 05 00 08 */	lfs f0, 8(r5)
/* 8059B348  EC 43 10 2A */	fadds f2, f3, f2
/* 8059B34C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059B350  EC 01 00 2A */	fadds f0, f1, f0
/* 8059B354  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8059B358  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8059B35C  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 8059B360  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8059B364  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8059B368  90 01 00 28 */	stw r0, 0x28(r1)
/* 8059B36C  4B DE DD 41 */	bl mCoBG_Wpos2Attribute
/* 8059B370  2C 1B 00 00 */	cmpwi r27, 0
/* 8059B374  40 82 00 18 */	bne lbl_8059B38C
/* 8059B378  4B DF 8F 85 */	bl mCoBG_CheckWaterAttribute_OutOfSea
/* 8059B37C  2C 03 00 01 */	cmpwi r3, 1
/* 8059B380  40 82 00 0C */	bne lbl_8059B38C
/* 8059B384  3B 60 00 01 */	li r27, 1
/* 8059B388  48 00 00 38 */	b lbl_8059B3C0
lbl_8059B38C:
/* 8059B38C  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 8059B390  38 61 00 14 */	addi r3, r1, 0x14
/* 8059B394  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8059B398  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8059B39C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8059B3A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8059B3A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059B3A8  4B DF 57 41 */	bl mCoBG_ExistHeightGap_KeepAndNow
/* 8059B3AC  2C 03 00 01 */	cmpwi r3, 1
/* 8059B3B0  41 82 00 10 */	beq lbl_8059B3C0
/* 8059B3B4  38 7F 00 28 */	addi r3, r31, 0x28
/* 8059B3B8  38 81 00 38 */	addi r4, r1, 0x38
/* 8059B3BC  4B E1 FB 01 */	bl xyz_t_move
lbl_8059B3C0:
/* 8059B3C0  3B 5A 00 01 */	addi r26, r26, 1
/* 8059B3C4  3B BD 00 0C */	addi r29, r29, 0xc
/* 8059B3C8  2C 1A 00 09 */	cmpwi r26, 9
/* 8059B3CC  41 80 FF 50 */	blt lbl_8059B31C
/* 8059B3D0  2C 1B 00 00 */	cmpwi r27, 0
/* 8059B3D4  41 82 01 7C */	beq lbl_8059B550
/* 8059B3D8  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064A028@ha */
/* 8059B3DC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8059B3E0  C0 23 A0 28 */	lfs f1, lit_465@l(r3)  /* 0x8064A028@l */
/* 8059B3E4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8059B3E8  40 82 00 10 */	bne lbl_8059B3F8
/* 8059B3EC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8059B3F0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8059B3F4  41 82 01 5C */	beq lbl_8059B550
lbl_8059B3F8:
/* 8059B3F8  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8059B3FC  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A02C@ha */
/* 8059B400  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059B404  C0 23 A0 2C */	lfs f1, lit_466@l(r3)  /* 0x8064A02C@l */
/* 8059B408  38 61 00 08 */	addi r3, r1, 8
/* 8059B40C  90 81 00 08 */	stw r4, 8(r1)
/* 8059B410  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059B414  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059B418  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059B41C  4B DF 44 05 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 8059B420  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8059B424  7F E3 FB 78 */	mr r3, r31
/* 8059B428  7F C5 F3 78 */	mr r5, r30
/* 8059B42C  38 80 00 02 */	li r4, 2
/* 8059B430  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8059B434  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8059B438  48 00 0B 59 */	bl aIHT_setupAction
/* 8059B43C  4B AC 18 B9 */	bl fqrand
/* 8059B440  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064A030@ha */
/* 8059B444  C0 03 A0 30 */	lfs f0, lit_467@l(r3)  /* 0x8064A030@l */
/* 8059B448  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059B44C  FC 00 00 1E */	fctiwz f0, f0
/* 8059B450  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8059B454  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8059B458  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 8059B45C  4B AC 18 99 */	bl fqrand
/* 8059B460  3C 80 80 65 */	lis r4, lit_468@ha /* 0x8064A034@ha */
/* 8059B464  3C 60 80 65 */	lis r3, lit_469@ha /* 0x8064A038@ha */
/* 8059B468  C0 64 A0 34 */	lfs f3, lit_468@l(r4)  /* 0x8064A034@l */
/* 8059B46C  C0 43 A0 38 */	lfs f2, lit_469@l(r3)  /* 0x8064A038@l */
/* 8059B470  EC 23 00 72 */	fmuls f1, f3, f1
/* 8059B474  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8059B478  EC 21 10 28 */	fsubs f1, f1, f2
/* 8059B47C  EC 00 08 2A */	fadds f0, f0, f1
/* 8059B480  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8059B484  4B AC 18 71 */	bl fqrand
/* 8059B488  3C 60 80 65 */	lis r3, lit_468@ha /* 0x8064A034@ha */
/* 8059B48C  3C 80 80 65 */	lis r4, lit_469@ha /* 0x8064A038@ha */
/* 8059B490  38 A3 A0 34 */	addi r5, r3, lit_468@l /* 0x8064A034@l */
/* 8059B494  C0 44 A0 38 */	lfs f2, lit_469@l(r4)  /* 0x8064A038@l */
/* 8059B498  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059B49C  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064A028@ha */
/* 8059B4A0  EC 60 00 72 */	fmuls f3, f0, f1
/* 8059B4A4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8059B4A8  C0 03 A0 28 */	lfs f0, lit_465@l(r3)  /* 0x8064A028@l */
/* 8059B4AC  EC 43 10 28 */	fsubs f2, f3, f2
/* 8059B4B0  EC 21 10 2A */	fadds f1, f1, f2
/* 8059B4B4  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 8059B4B8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8059B4BC  D0 3F 02 44 */	stfs f1, 0x244(r31)
/* 8059B4C0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8059B4C4  D0 3F 02 48 */	stfs f1, 0x248(r31)
/* 8059B4C8  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 8059B4CC  4B AC 18 29 */	bl fqrand
/* 8059B4D0  3C 80 80 65 */	lis r4, lit_471@ha /* 0x8064A040@ha */
/* 8059B4D4  3C 60 80 65 */	lis r3, lit_470@ha /* 0x8064A03C@ha */
/* 8059B4D8  C0 44 A0 40 */	lfs f2, lit_471@l(r4)  /* 0x8064A040@l */
/* 8059B4DC  C0 03 A0 3C */	lfs f0, lit_470@l(r3)  /* 0x8064A03C@l */
/* 8059B4E0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059B4E4  EC 00 08 2A */	fadds f0, f0, f1
/* 8059B4E8  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 8059B4EC  4B AC 18 09 */	bl fqrand
/* 8059B4F0  3C 80 80 65 */	lis r4, lit_472@ha /* 0x8064A044@ha */
/* 8059B4F4  38 7F 02 4C */	addi r3, r31, 0x24c
/* 8059B4F8  38 A4 A0 44 */	addi r5, r4, lit_472@l /* 0x8064A044@l */
/* 8059B4FC  38 9F 02 50 */	addi r4, r31, 0x250
/* 8059B500  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059B504  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059B508  FC 00 00 1E */	fctiwz f0, f0
/* 8059B50C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8059B510  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8059B514  90 1F 02 2C */	stw r0, 0x22c(r31)
/* 8059B518  88 BF 00 08 */	lbz r5, 8(r31)
/* 8059B51C  88 DF 00 09 */	lbz r6, 9(r31)
/* 8059B520  7C A5 07 74 */	extsb r5, r5
/* 8059B524  7C C6 07 74 */	extsb r6, r6
/* 8059B528  4B E0 A6 51 */	bl mFI_BkNum2WposXZ
/* 8059B52C  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064A048@ha */
/* 8059B530  C0 1F 02 4C */	lfs f0, 0x24c(r31)
/* 8059B534  C0 23 A0 48 */	lfs f1, lit_473@l(r3)  /* 0x8064A048@l */
/* 8059B538  EC 00 08 2A */	fadds f0, f0, f1
/* 8059B53C  D0 1F 02 4C */	stfs f0, 0x24c(r31)
/* 8059B540  C0 1F 02 50 */	lfs f0, 0x250(r31)
/* 8059B544  EC 00 08 2A */	fadds f0, f0, f1
/* 8059B548  D0 1F 02 50 */	stfs f0, 0x250(r31)
/* 8059B54C  48 00 00 5C */	b lbl_8059B5A8
lbl_8059B550:
/* 8059B550  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8059B554  7F E3 FB 78 */	mr r3, r31
/* 8059B558  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8059B55C  7F C4 F3 78 */	mr r4, r30
/* 8059B560  3C A5 00 02 */	addis r5, r5, 2
/* 8059B564  80 A5 60 88 */	lwz r5, 0x6088(r5)
/* 8059B568  81 85 00 0C */	lwz r12, 0xc(r5)
/* 8059B56C  7D 89 03 A6 */	mtctr r12
/* 8059B570  4E 80 04 21 */	bctrl 
/* 8059B574  48 00 00 34 */	b lbl_8059B5A8
lbl_8059B578:
/* 8059B578  3C 80 80 65 */	lis r4, lit_465@ha /* 0x8064A028@ha */
/* 8059B57C  38 C0 00 FF */	li r6, 0xff
/* 8059B580  C0 04 A0 28 */	lfs f0, lit_465@l(r4)  /* 0x8064A028@l */
/* 8059B584  38 00 00 00 */	li r0, 0
/* 8059B588  7F C5 F3 78 */	mr r5, r30
/* 8059B58C  38 80 00 01 */	li r4, 1
/* 8059B590  D0 1F 01 E0 */	stfs f0, 0x1e0(r31)
/* 8059B594  D0 1F 01 E4 */	stfs f0, 0x1e4(r31)
/* 8059B598  90 DF 02 5C */	stw r6, 0x25c(r31)
/* 8059B59C  90 DF 02 60 */	stw r6, 0x260(r31)
/* 8059B5A0  90 1F 02 64 */	stw r0, 0x264(r31)
/* 8059B5A4  48 00 09 ED */	bl aIHT_setupAction
lbl_8059B5A8:
/* 8059B5A8  39 61 00 70 */	addi r11, r1, 0x70
/* 8059B5AC  4B AF F9 69 */	bl func_8009AF14
/* 8059B5B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8059B5B4  7C 08 03 A6 */	mtlr r0
/* 8059B5B8  38 21 00 70 */	addi r1, r1, 0x70
/* 8059B5BC  4E 80 00 20 */	blr 
