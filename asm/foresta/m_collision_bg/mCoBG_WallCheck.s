lbl_80388528:
/* 80388528  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8038852C  7C 08 02 A6 */	mflr r0
/* 80388530  90 01 00 64 */	stw r0, 0x64(r1)
/* 80388534  39 61 00 60 */	addi r11, r1, 0x60
/* 80388538  4B D1 29 91 */	bl func_8009AEC8
/* 8038853C  3C C0 81 13 */	lis r6, data_81135548@ha /* 0x81135548@ha */
/* 80388540  7C 9D 23 78 */	mr r29, r4
/* 80388544  3B E6 55 48 */	addi r31, r6, data_81135548@l /* 0x81135548@l */
/* 80388548  7C 7C 1B 78 */	mr r28, r3
/* 8038854C  7C BE 2B 78 */	mr r30, r5
/* 80388550  38 80 09 60 */	li r4, 0x960
/* 80388554  38 7F 24 DC */	addi r3, r31, 0x24dc
/* 80388558  4B CD 4B 11 */	bl bzero
/* 8038855C  38 7F 00 88 */	addi r3, r31, 0x88
/* 80388560  38 80 1C 18 */	li r4, 0x1c18
/* 80388564  4B CD 4B 05 */	bl bzero
/* 80388568  3B 7F 00 18 */	addi r27, r31, 0x18
/* 8038856C  7F 84 E3 78 */	mr r4, r28
/* 80388570  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80388574  7F 63 DB 78 */	mr r3, r27
/* 80388578  4B FF DF 25 */	bl mCoBG_GetSpeedByWpos
/* 8038857C  80 DD 00 1C */	lwz r6, 0x1c(r29)
/* 80388580  38 61 00 0C */	addi r3, r1, 0xc
/* 80388584  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 80388588  38 81 00 08 */	addi r4, r1, 8
/* 8038858C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80388590  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80388594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80388598  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 8038859C  90 01 00 18 */	stw r0, 0x18(r1)
/* 803885A0  48 01 CD C9 */	bl mFI_Wpos2UtNum
/* 803885A4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803885A8  38 7F 24 DC */	addi r3, r31, 0x24dc
/* 803885AC  80 A1 00 08 */	lwz r5, 8(r1)
/* 803885B0  A8 DD 00 60 */	lha r6, 0x60(r29)
/* 803885B4  4B FF E0 11 */	bl mCoBG_MakeSizeUnitInfo
/* 803885B8  A8 1C 00 00 */	lha r0, 0(r28)
/* 803885BC  2C 00 00 00 */	cmpwi r0, 0
/* 803885C0  40 82 00 6C */	bne lbl_8038862C
/* 803885C4  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 803885C8  C0 3B 00 00 */	lfs f1, 0(r27)
/* 803885CC  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 803885D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803885D4  4C 41 13 82 */	cror 2, 1, 2
/* 803885D8  40 82 00 08 */	bne lbl_803885E0
/* 803885DC  48 00 00 08 */	b lbl_803885E4
lbl_803885E0:
/* 803885E0  FC 20 08 50 */	fneg f1, f1
lbl_803885E4:
/* 803885E4  3C 60 80 64 */	lis r3, lit_2821@ha /* 0x80641AB4@ha */
/* 803885E8  C0 03 1A B4 */	lfs f0, lit_2821@l(r3)  /* 0x80641AB4@l */
/* 803885EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803885F0  41 81 02 90 */	bgt lbl_80388880
/* 803885F4  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 803885F8  38 9F 00 18 */	addi r4, r31, 0x18
/* 803885FC  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80388600  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 80388604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80388608  4C 41 13 82 */	cror 2, 1, 2
/* 8038860C  40 82 00 08 */	bne lbl_80388614
/* 80388610  48 00 00 08 */	b lbl_80388618
lbl_80388614:
/* 80388614  FC 20 08 50 */	fneg f1, f1
lbl_80388618:
/* 80388618  3C 60 80 64 */	lis r3, lit_2821@ha /* 0x80641AB4@ha */
/* 8038861C  C0 03 1A B4 */	lfs f0, lit_2821@l(r3)  /* 0x80641AB4@l */
/* 80388620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80388624  40 81 00 08 */	ble lbl_8038862C
/* 80388628  48 00 02 58 */	b lbl_80388880
lbl_8038862C:
/* 8038862C  A8 BD 00 60 */	lha r5, 0x60(r29)
/* 80388630  7F C7 F3 78 */	mr r7, r30
/* 80388634  88 DD 00 02 */	lbz r6, 2(r29)
/* 80388638  38 7F 00 88 */	addi r3, r31, 0x88
/* 8038863C  89 1D 00 03 */	lbz r8, 3(r29)
/* 80388640  38 9F 24 DC */	addi r4, r31, 0x24dc
/* 80388644  89 3D 00 05 */	lbz r9, 5(r29)
/* 80388648  48 00 40 11 */	bl mCoBG_MakeUnitVector
/* 8038864C  A8 1C 00 00 */	lha r0, 0(r28)
/* 80388650  2C 00 00 6B */	cmpwi r0, 0x6b
/* 80388654  41 82 00 18 */	beq lbl_8038866C
/* 80388658  88 DD 00 02 */	lbz r6, 2(r29)
/* 8038865C  38 7F 00 88 */	addi r3, r31, 0x88
/* 80388660  38 9F 1C A0 */	addi r4, r31, 0x1ca0
/* 80388664  38 BC 00 28 */	addi r5, r28, 0x28
/* 80388668  48 00 51 19 */	bl mCoBG_MakeMoveBgVector
lbl_8038866C:
/* 8038866C  3B 5F 00 88 */	addi r26, r31, 0x88
/* 80388670  38 7F 00 18 */	addi r3, r31, 0x18
/* 80388674  7F 5B D3 78 */	mr r27, r26
/* 80388678  A8 DD 00 60 */	lha r6, 0x60(r29)
/* 8038867C  3B 7B 1A 04 */	addi r27, r27, 0x1a04
/* 80388680  88 FD 00 03 */	lbz r7, 3(r29)
/* 80388684  81 23 00 68 */	lwz r9, 0x68(r3)
/* 80388688  3B 5A 1A 08 */	addi r26, r26, 0x1a08
/* 8038868C  81 43 00 6C */	lwz r10, 0x6c(r3)
/* 80388690  7F 43 D3 78 */	mr r3, r26
/* 80388694  7F 64 DB 78 */	mr r4, r27
/* 80388698  38 BF 24 DC */	addi r5, r31, 0x24dc
/* 8038869C  39 00 00 00 */	li r8, 0
/* 803886A0  48 00 63 75 */	bl mCoBG_MakeColumnCollisionData
/* 803886A4  7F A3 EB 78 */	mr r3, r29
/* 803886A8  7F C4 F3 78 */	mr r4, r30
/* 803886AC  48 00 42 51 */	bl mCoBG_MakeCircleDefenceWall
/* 803886B0  3C 80 80 64 */	lis r4, lit_2803@ha /* 0x80641A9C@ha */
/* 803886B4  3C 60 80 64 */	lis r3, lit_2804@ha /* 0x80641AA8@ha */
/* 803886B8  38 C4 1A 9C */	addi r6, r4, lit_2803@l /* 0x80641A9C@l */
/* 803886BC  80 FB 00 00 */	lwz r7, 0(r27)
/* 803886C0  38 A3 1A A8 */	addi r5, r3, lit_2804@l /* 0x80641AA8@l */
/* 803886C4  83 66 00 00 */	lwz r27, 0(r6)
/* 803886C8  81 86 00 04 */	lwz r12, 4(r6)
/* 803886CC  7F A4 EB 78 */	mr r4, r29
/* 803886D0  81 66 00 08 */	lwz r11, 8(r6)
/* 803886D4  7F 46 D3 78 */	mr r6, r26
/* 803886D8  81 45 00 00 */	lwz r10, 0(r5)
/* 803886DC  7F C8 F3 78 */	mr r8, r30
/* 803886E0  81 25 00 04 */	lwz r9, 4(r5)
/* 803886E4  38 61 00 28 */	addi r3, r1, 0x28
/* 803886E8  80 05 00 08 */	lwz r0, 8(r5)
/* 803886EC  38 A1 00 34 */	addi r5, r1, 0x34
/* 803886F0  93 61 00 28 */	stw r27, 0x28(r1)
/* 803886F4  91 81 00 2C */	stw r12, 0x2c(r1)
/* 803886F8  91 61 00 30 */	stw r11, 0x30(r1)
/* 803886FC  91 41 00 1C */	stw r10, 0x1c(r1)
/* 80388700  91 21 00 20 */	stw r9, 0x20(r1)
/* 80388704  90 01 00 24 */	stw r0, 0x24(r1)
/* 80388708  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 8038870C  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80388710  EC 01 00 2A */	fadds f0, f1, f0
/* 80388714  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80388718  C0 3C 00 2C */	lfs f1, 0x2c(r28)
/* 8038871C  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80388720  EC 01 00 2A */	fadds f0, f1, f0
/* 80388724  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80388728  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 8038872C  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80388730  EC 01 00 2A */	fadds f0, f1, f0
/* 80388734  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80388738  48 00 67 F9 */	bl mCoBG_ColumnWallCheck
/* 8038873C  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 80388740  7F A4 EB 78 */	mr r4, r29
/* 80388744  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80388748  7F C8 F3 78 */	mr r8, r30
/* 8038874C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80388750  38 A1 00 34 */	addi r5, r1, 0x34
/* 80388754  EC 01 00 2A */	fadds f0, f1, f0
/* 80388758  38 DF 1E 68 */	addi r6, r31, 0x1e68
/* 8038875C  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80388760  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 80388764  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80388768  EC 01 00 2A */	fadds f0, f1, f0
/* 8038876C  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80388770  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 80388774  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80388778  EC 01 00 2A */	fadds f0, f1, f0
/* 8038877C  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 80388780  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 80388784  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80388788  80 FF 1E 04 */	lwz r7, 0x1e04(r31)
/* 8038878C  EC 01 00 2A */	fadds f0, f1, f0
/* 80388790  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80388794  C0 3C 00 2C */	lfs f1, 0x2c(r28)
/* 80388798  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 8038879C  EC 01 00 2A */	fadds f0, f1, f0
/* 803887A0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 803887A4  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 803887A8  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 803887AC  EC 01 00 2A */	fadds f0, f1, f0
/* 803887B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 803887B4  48 00 67 7D */	bl mCoBG_ColumnWallCheck
/* 803887B8  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 803887BC  7F A3 EB 78 */	mr r3, r29
/* 803887C0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 803887C4  7F 86 E3 78 */	mr r6, r28
/* 803887C8  38 9C 00 28 */	addi r4, r28, 0x28
/* 803887CC  38 BF 00 88 */	addi r5, r31, 0x88
/* 803887D0  EC 01 00 2A */	fadds f0, f1, f0
/* 803887D4  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 803887D8  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 803887DC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 803887E0  EC 01 00 2A */	fadds f0, f1, f0
/* 803887E4  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 803887E8  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 803887EC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 803887F0  EC 01 00 2A */	fadds f0, f1, f0
/* 803887F4  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 803887F8  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 803887FC  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80388800  EC 01 00 2A */	fadds f0, f1, f0
/* 80388804  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 80388808  C0 3C 00 2C */	lfs f1, 0x2c(r28)
/* 8038880C  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80388810  EC 01 00 2A */	fadds f0, f1, f0
/* 80388814  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 80388818  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 8038881C  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80388820  EC 01 00 2A */	fadds f0, f1, f0
/* 80388824  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 80388828  4B FF F8 C1 */	bl mCoBG_GetWallReverse
/* 8038882C  38 7C 00 98 */	addi r3, r28, 0x98
/* 80388830  38 9D 00 58 */	addi r4, r29, 0x58
/* 80388834  4B FF E5 99 */	bl mCoBG_MakeHitWallFalg
/* 80388838  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 8038883C  38 7C 00 98 */	addi r3, r28, 0x98
/* 80388840  38 9D 00 58 */	addi r4, r29, 0x58
/* 80388844  D0 1C 00 A0 */	stfs f0, 0xa0(r28)
/* 80388848  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8038884C  D0 1C 00 9C */	stfs f0, 0x9c(r28)
/* 80388850  A8 1D 00 58 */	lha r0, 0x58(r29)
/* 80388854  B0 1C 00 A8 */	sth r0, 0xa8(r28)
/* 80388858  A8 1D 00 5C */	lha r0, 0x5c(r29)
/* 8038885C  B0 1C 00 AC */	sth r0, 0xac(r28)
/* 80388860  A8 1D 00 5A */	lha r0, 0x5a(r29)
/* 80388864  B0 1C 00 AA */	sth r0, 0xaa(r28)
/* 80388868  A8 1D 00 5E */	lha r0, 0x5e(r29)
/* 8038886C  B0 1C 00 AE */	sth r0, 0xae(r28)
/* 80388870  A8 BC 00 DE */	lha r5, 0xde(r28)
/* 80388874  4B FF E3 D5 */	bl mCoBG_RegistWallCount
/* 80388878  7F 83 E3 78 */	mr r3, r28
/* 8038887C  4B FF E7 55 */	bl mCoBG_MakePartDirectHitWallFlag
lbl_80388880:
/* 80388880  39 61 00 60 */	addi r11, r1, 0x60
/* 80388884  4B D1 26 91 */	bl func_8009AF14
/* 80388888  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8038888C  7C 08 03 A6 */	mtlr r0
/* 80388890  38 21 00 60 */	addi r1, r1, 0x60
/* 80388894  4E 80 00 20 */	blr 
