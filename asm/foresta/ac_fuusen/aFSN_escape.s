lbl_8050E680:
/* 8050E680  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8050E684  7C 08 02 A6 */	mflr r0
/* 8050E688  90 01 00 54 */	stw r0, 0x54(r1)
/* 8050E68C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8050E690  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8050E694  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8050E698  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8050E69C  7C 7F 1B 78 */	mr r31, r3
/* 8050E6A0  38 7F 00 28 */	addi r3, r31, 0x28
/* 8050E6A4  4B E8 27 19 */	bl mCoBG_GetBalloonGroundY
/* 8050E6A8  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 8050E6AC  FF E0 08 90 */	fmr f31, f1
/* 8050E6B0  2C 00 00 00 */	cmpwi r0, 0
/* 8050E6B4  40 82 00 A8 */	bne lbl_8050E75C
/* 8050E6B8  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8050E6BC  38 61 00 28 */	addi r3, r1, 0x28
/* 8050E6C0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8050E6C4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8050E6C8  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8050E6CC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8050E6D0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8050E6D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050E6D8  4B E9 6E 65 */	bl mFI_Wpos2UtCenterWpos
/* 8050E6DC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050E6E0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050E6E4  3F C3 00 02 */	addis r30, r3, 2
/* 8050E6E8  80 7E 60 80 */	lwz r3, 0x6080(r30)
/* 8050E6EC  28 03 00 00 */	cmplwi r3, 0
/* 8050E6F0  41 82 00 6C */	beq lbl_8050E75C
/* 8050E6F4  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8050E6F8  28 00 00 00 */	cmplwi r0, 0
/* 8050E6FC  41 82 00 60 */	beq lbl_8050E75C
/* 8050E700  80 E1 00 28 */	lwz r7, 0x28(r1)
/* 8050E704  38 61 00 0C */	addi r3, r1, 0xc
/* 8050E708  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 8050E70C  38 81 00 08 */	addi r4, r1, 8
/* 8050E710  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8050E714  38 A1 00 10 */	addi r5, r1, 0x10
/* 8050E718  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8050E71C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8050E720  90 01 00 18 */	stw r0, 0x18(r1)
/* 8050E724  4B E9 6C 45 */	bl mFI_Wpos2UtNum
/* 8050E728  2C 03 00 00 */	cmpwi r3, 0
/* 8050E72C  41 82 00 30 */	beq lbl_8050E75C
/* 8050E730  80 BE 60 80 */	lwz r5, 0x6080(r30)
/* 8050E734  38 60 25 1C */	li r3, 0x251c
/* 8050E738  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8050E73C  38 C0 00 01 */	li r6, 1
/* 8050E740  81 85 00 30 */	lwz r12, 0x30(r5)
/* 8050E744  38 E0 00 01 */	li r7, 1
/* 8050E748  80 A1 00 08 */	lwz r5, 8(r1)
/* 8050E74C  7D 89 03 A6 */	mtctr r12
/* 8050E750  4E 80 04 21 */	bctrl 
/* 8050E754  38 00 00 01 */	li r0, 1
/* 8050E758  90 1F 01 8C */	stw r0, 0x18c(r31)
lbl_8050E75C:
/* 8050E75C  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 8050E760  2C 00 00 01 */	cmpwi r0, 1
/* 8050E764  40 82 00 24 */	bne lbl_8050E788
/* 8050E768  3C 60 80 65 */	lis r3, lit_710@ha /* 0x80648F8C@ha */
/* 8050E76C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8050E770  C0 03 8F 8C */	lfs f0, lit_710@l(r3)  /* 0x80648F8C@l */
/* 8050E774  EC 00 F8 2A */	fadds f0, f0, f31
/* 8050E778  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050E77C  40 81 00 0C */	ble lbl_8050E788
/* 8050E780  7F E3 FB 78 */	mr r3, r31
/* 8050E784  4B E6 5C BD */	bl Actor_delete
lbl_8050E788:
/* 8050E788  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8050E78C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8050E790  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8050E794  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8050E798  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8050E79C  7C 08 03 A6 */	mtlr r0
/* 8050E7A0  38 21 00 50 */	addi r1, r1, 0x50
/* 8050E7A4  4E 80 00 20 */	blr 
