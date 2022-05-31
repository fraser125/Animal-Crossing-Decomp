lbl_804DD7D0:
/* 804DD7D0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804DD7D4  7C 08 02 A6 */	mflr r0
/* 804DD7D8  90 01 00 74 */	stw r0, 0x74(r1)
/* 804DD7DC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804DD7E0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804DD7E4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 804DD7E8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 804DD7EC  39 61 00 50 */	addi r11, r1, 0x50
/* 804DD7F0  4B BB D6 E5 */	bl func_8009AED4
/* 804DD7F4  7C 7D 1B 78 */	mr r29, r3
/* 804DD7F8  7C 9E 23 78 */	mr r30, r4
/* 804DD7FC  80 63 00 00 */	lwz r3, 0(r3)
/* 804DD800  FF C0 08 90 */	fmr f30, f1
/* 804DD804  80 DD 00 04 */	lwz r6, 4(r29)
/* 804DD808  FF E0 10 90 */	fmr f31, f2
/* 804DD80C  80 1D 00 08 */	lwz r0, 8(r29)
/* 804DD810  7C BF 2B 78 */	mr r31, r5
/* 804DD814  90 61 00 2C */	stw r3, 0x2c(r1)
/* 804DD818  7F C3 F3 78 */	mr r3, r30
/* 804DD81C  38 81 00 2C */	addi r4, r1, 0x2c
/* 804DD820  90 C1 00 30 */	stw r6, 0x30(r1)
/* 804DD824  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DD828  4B EC 7D 15 */	bl mFI_Wpos2UtCenterWpos
/* 804DD82C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DD830  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DD834  3C 63 00 02 */	addis r3, r3, 2
/* 804DD838  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 804DD83C  28 00 00 00 */	cmplwi r0, 0
/* 804DD840  41 82 00 34 */	beq lbl_804DD874
/* 804DD844  80 9E 00 00 */	lwz r4, 0(r30)
/* 804DD848  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DD84C  80 1E 00 04 */	lwz r0, 4(r30)
/* 804DD850  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 804DD854  38 61 00 20 */	addi r3, r1, 0x20
/* 804DD858  90 81 00 20 */	stw r4, 0x20(r1)
/* 804DD85C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DD860  80 1E 00 08 */	lwz r0, 8(r30)
/* 804DD864  90 01 00 28 */	stw r0, 0x28(r1)
/* 804DD868  4B EB 21 31 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804DD86C  D0 3E 00 04 */	stfs f1, 4(r30)
/* 804DD870  48 00 00 30 */	b lbl_804DD8A0
lbl_804DD874:
/* 804DD874  80 9E 00 00 */	lwz r4, 0(r30)
/* 804DD878  3C 60 80 64 */	lis r3, lit_950@ha /* 0x806468F4@ha */
/* 804DD87C  80 1E 00 04 */	lwz r0, 4(r30)
/* 804DD880  C0 23 68 F4 */	lfs f1, lit_950@l(r3)  /* 0x806468F4@l */
/* 804DD884  38 61 00 14 */	addi r3, r1, 0x14
/* 804DD888  90 81 00 14 */	stw r4, 0x14(r1)
/* 804DD88C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DD890  80 1E 00 08 */	lwz r0, 8(r30)
/* 804DD894  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804DD898  4B EB 21 01 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804DD89C  D0 3E 00 04 */	stfs f1, 4(r30)
lbl_804DD8A0:
/* 804DD8A0  7F E3 FB 78 */	mr r3, r31
/* 804DD8A4  7F C4 F3 78 */	mr r4, r30
/* 804DD8A8  4B FF FE A9 */	bl Player_actor_Get_ItemDisplayPos
/* 804DD8AC  80 9E 00 00 */	lwz r4, 0(r30)
/* 804DD8B0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DD8B4  80 1E 00 04 */	lwz r0, 4(r30)
/* 804DD8B8  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 804DD8BC  38 61 00 08 */	addi r3, r1, 8
/* 804DD8C0  90 81 00 08 */	stw r4, 8(r1)
/* 804DD8C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DD8C8  80 1E 00 08 */	lwz r0, 8(r30)
/* 804DD8CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DD8D0  4B EB 20 C9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804DD8D4  D0 3E 00 04 */	stfs f1, 4(r30)
/* 804DD8D8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804DD8DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804DD8E0  C0 7D 00 00 */	lfs f3, 0(r29)
/* 804DD8E4  C0 9D 00 08 */	lfs f4, 8(r29)
/* 804DD8E8  4B F2 B4 55 */	bl Math3DLengthSquare2D
/* 804DD8EC  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 804DD8F0  4C 40 13 82 */	cror 2, 0, 2
/* 804DD8F4  40 82 00 44 */	bne lbl_804DD938
/* 804DD8F8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 804DD8FC  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DD900  C0 3D 00 04 */	lfs f1, 4(r29)
/* 804DD904  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804DD908  EC 22 08 28 */	fsubs f1, f2, f1
/* 804DD90C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DD910  4C 41 13 82 */	cror 2, 1, 2
/* 804DD914  40 82 00 0C */	bne lbl_804DD920
/* 804DD918  FC 00 08 90 */	fmr f0, f1
/* 804DD91C  48 00 00 08 */	b lbl_804DD924
lbl_804DD920:
/* 804DD920  FC 00 08 50 */	fneg f0, f1
lbl_804DD924:
/* 804DD924  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804DD928  4C 40 13 82 */	cror 2, 0, 2
/* 804DD92C  40 82 00 0C */	bne lbl_804DD938
/* 804DD930  38 60 00 01 */	li r3, 1
/* 804DD934  48 00 00 08 */	b lbl_804DD93C
lbl_804DD938:
/* 804DD938  38 60 00 00 */	li r3, 0
lbl_804DD93C:
/* 804DD93C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804DD940  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804DD944  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 804DD948  39 61 00 50 */	addi r11, r1, 0x50
/* 804DD94C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 804DD950  4B BB D5 D1 */	bl func_8009AF20
/* 804DD954  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804DD958  7C 08 03 A6 */	mtlr r0
/* 804DD95C  38 21 00 70 */	addi r1, r1, 0x70
/* 804DD960  4E 80 00 20 */	blr 
