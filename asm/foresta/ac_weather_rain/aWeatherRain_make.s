lbl_80602DB0:
/* 80602DB0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80602DB4  7C 08 02 A6 */	mflr r0
/* 80602DB8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80602DBC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80602DC0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80602DC4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80602DC8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80602DCC  39 61 00 50 */	addi r11, r1, 0x50
/* 80602DD0  4B A9 80 F9 */	bl func_8009AEC8
/* 80602DD4  7C 7A 1B 78 */	mr r26, r3
/* 80602DD8  7C 9B 23 78 */	mr r27, r4
/* 80602DDC  4B FF FF AD */	bl func_80602D88
/* 80602DE0  80 DA 01 88 */	lwz r6, 0x188(r26)
/* 80602DE4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80602DE8  80 BA 01 8C */	lwz r5, 0x18c(r26)
/* 80602DEC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80602DF0  80 1A 01 90 */	lwz r0, 0x190(r26)
/* 80602DF4  7C 7F 1B 78 */	mr r31, r3
/* 80602DF8  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80602DFC  3F C4 00 02 */	addis r30, r4, 2
/* 80602E00  3B A0 00 00 */	li r29, 0
/* 80602E04  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80602E08  90 01 00 34 */	stw r0, 0x34(r1)
/* 80602E0C  48 00 01 A8 */	b lbl_80602FB4
lbl_80602E10:
/* 80602E10  80 9E 60 84 */	lwz r4, 0x6084(r30)
/* 80602E14  7F 43 D3 78 */	mr r3, r26
/* 80602E18  81 84 00 08 */	lwz r12, 8(r4)
/* 80602E1C  7D 89 03 A6 */	mtctr r12
/* 80602E20  4E 80 04 21 */	bctrl 
/* 80602E24  7C 7C 1B 78 */	mr r28, r3
/* 80602E28  2C 1C FF FF */	cmpwi r28, -1
/* 80602E2C  41 82 01 84 */	beq lbl_80602FB0
/* 80602E30  4B A5 9E C5 */	bl fqrand
/* 80602E34  3C 80 80 65 */	lis r4, lit_403@ha /* 0x8064BA20@ha */
/* 80602E38  3C 60 80 65 */	lis r3, data_8064BA1C@ha /* 0x8064BA1C@ha */
/* 80602E3C  C0 44 BA 20 */	lfs f2, lit_403@l(r4)  /* 0x8064BA20@l */
/* 80602E40  C0 03 BA 1C */	lfs f0, data_8064BA1C@l(r3)  /* 0x8064BA1C@l */
/* 80602E44  EC 22 00 72 */	fmuls f1, f2, f1
/* 80602E48  EF E0 08 2A */	fadds f31, f0, f1
/* 80602E4C  4B A5 9E A9 */	bl fqrand
/* 80602E50  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064BA28@ha */
/* 80602E54  81 01 00 2C */	lwz r8, 0x2c(r1)
/* 80602E58  38 A3 BA 28 */	addi r5, r3, lit_405@l /* 0x8064BA28@l */
/* 80602E5C  80 E1 00 30 */	lwz r7, 0x30(r1)
/* 80602E60  C0 05 00 00 */	lfs f0, 0(r5)
/* 80602E64  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 80602E68  38 A3 F0 50 */	addi r5, r3, data_8065F050@l /* 0x8065F050@l */
/* 80602E6C  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 80602E70  3C 80 80 65 */	lis r4, lit_404@ha /* 0x8064BA24@ha */
/* 80602E74  EC 20 00 72 */	fmuls f1, f0, f1
/* 80602E78  C0 04 BA 24 */	lfs f0, lit_404@l(r4)  /* 0x8064BA24@l */
/* 80602E7C  80 85 00 00 */	lwz r4, 0(r5)
/* 80602E80  80 65 00 04 */	lwz r3, 4(r5)
/* 80602E84  EF C0 08 2A */	fadds f30, f0, f1
/* 80602E88  80 05 00 08 */	lwz r0, 8(r5)
/* 80602E8C  91 01 00 20 */	stw r8, 0x20(r1)
/* 80602E90  90 E1 00 24 */	stw r7, 0x24(r1)
/* 80602E94  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80602E98  90 81 00 14 */	stw r4, 0x14(r1)
/* 80602E9C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80602EA0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80602EA4  4B A5 9E 51 */	bl fqrand
/* 80602EA8  3C 60 80 65 */	lis r3, lit_407@ha /* 0x8064BA30@ha */
/* 80602EAC  3C 80 80 65 */	lis r4, lit_406@ha /* 0x8064BA2C@ha */
/* 80602EB0  38 A3 BA 30 */	addi r5, r3, lit_407@l /* 0x8064BA30@l */
/* 80602EB4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80602EB8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80602EBC  3C 60 80 65 */	lis r3, lit_408@ha /* 0x8064BA34@ha */
/* 80602EC0  C0 64 BA 2C */	lfs f3, lit_406@l(r4)  /* 0x8064BA2C@l */
/* 80602EC4  EC 80 00 72 */	fmuls f4, f0, f1
/* 80602EC8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80602ECC  EC 22 F8 2A */	fadds f1, f2, f31
/* 80602ED0  C0 43 BA 34 */	lfs f2, lit_408@l(r3)  /* 0x8064BA34@l */
/* 80602ED4  EC 00 F0 2A */	fadds f0, f0, f30
/* 80602ED8  EC 63 20 2A */	fadds f3, f3, f4
/* 80602EDC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80602EE0  EC 23 10 2A */	fadds f1, f3, f2
/* 80602EE4  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80602EE8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80602EEC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80602EF0  4B D9 7F C9 */	bl mEv_CheckTitleDemo
/* 80602EF4  2C 03 FF F7 */	cmpwi r3, -9
/* 80602EF8  40 82 00 30 */	bne lbl_80602F28
/* 80602EFC  7F 63 DB 78 */	mr r3, r27
/* 80602F00  4B DD 67 41 */	bl get_player_actor_withoutCheck
/* 80602F04  3C 80 80 65 */	lis r4, lit_410@ha /* 0x8064BA3C@ha */
/* 80602F08  3C A0 80 65 */	lis r5, lit_409@ha /* 0x8064BA38@ha */
/* 80602F0C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80602F10  C0 24 BA 3C */	lfs f1, lit_410@l(r4)  /* 0x8064BA3C@l */
/* 80602F14  C0 45 BA 38 */	lfs f2, lit_409@l(r5)  /* 0x8064BA38@l */
/* 80602F18  EC 01 00 2A */	fadds f0, f1, f0
/* 80602F1C  EC 02 00 2A */	fadds f0, f2, f0
/* 80602F20  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80602F24  48 00 00 4C */	b lbl_80602F70
lbl_80602F28:
/* 80602F28  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 80602F2C  3C 60 80 65 */	lis r3, lit_411@ha /* 0x8064BA40@ha */
/* 80602F30  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 80602F34  38 83 BA 40 */	addi r4, r3, lit_411@l /* 0x8064BA40@l */
/* 80602F38  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80602F3C  38 61 00 08 */	addi r3, r1, 8
/* 80602F40  90 C1 00 08 */	stw r6, 8(r1)
/* 80602F44  C0 24 00 00 */	lfs f1, 0(r4)
/* 80602F48  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80602F4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80602F50  4B D8 C8 D1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 80602F54  3C 80 80 65 */	lis r4, lit_410@ha /* 0x8064BA3C@ha */
/* 80602F58  3C 60 80 65 */	lis r3, lit_409@ha /* 0x8064BA38@ha */
/* 80602F5C  C0 44 BA 3C */	lfs f2, lit_410@l(r4)  /* 0x8064BA3C@l */
/* 80602F60  C0 03 BA 38 */	lfs f0, lit_409@l(r3)  /* 0x8064BA38@l */
/* 80602F64  EC 22 08 2A */	fadds f1, f2, f1
/* 80602F68  EC 00 08 2A */	fadds f0, f0, f1
/* 80602F6C  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80602F70:
/* 80602F70  80 7E 60 84 */	lwz r3, 0x6084(r30)
/* 80602F74  7F 47 D3 78 */	mr r7, r26
/* 80602F78  7F 88 E3 78 */	mr r8, r28
/* 80602F7C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80602F80  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80602F84  38 C1 00 14 */	addi r6, r1, 0x14
/* 80602F88  38 60 00 01 */	li r3, 1
/* 80602F8C  38 80 03 E8 */	li r4, 0x3e8
/* 80602F90  7D 89 03 A6 */	mtctr r12
/* 80602F94  4E 80 04 21 */	bctrl 
/* 80602F98  7C 7C 1B 79 */	or. r28, r3, r3
/* 80602F9C  41 82 00 14 */	beq lbl_80602FB0
/* 80602FA0  7F 64 DB 78 */	mr r4, r27
/* 80602FA4  48 00 00 41 */	bl aWeatherRain_ct
/* 80602FA8  38 00 00 00 */	li r0, 0
/* 80602FAC  B0 1C 00 22 */	sth r0, 0x22(r28)
lbl_80602FB0:
/* 80602FB0  3B BD 00 01 */	addi r29, r29, 1
lbl_80602FB4:
/* 80602FB4  7C 1D F8 00 */	cmpw r29, r31
/* 80602FB8  41 80 FE 58 */	blt lbl_80602E10
/* 80602FBC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80602FC0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80602FC4  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80602FC8  39 61 00 50 */	addi r11, r1, 0x50
/* 80602FCC  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80602FD0  4B A9 7F 45 */	bl func_8009AF14
/* 80602FD4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80602FD8  7C 08 03 A6 */	mtlr r0
/* 80602FDC  38 21 00 70 */	addi r1, r1, 0x70
/* 80602FE0  4E 80 00 20 */	blr 
