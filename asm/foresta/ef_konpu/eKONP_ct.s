lbl_80614AE0:
/* 80614AE0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80614AE4  7C 08 02 A6 */	mflr r0
/* 80614AE8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80614AEC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80614AF0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80614AF4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80614AF8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80614AFC  39 61 00 40 */	addi r11, r1, 0x40
/* 80614B00  4B A8 63 D5 */	bl func_8009AED4
/* 80614B04  3C 80 80 6D */	lis r4, default_start_offset@ha /* 0x806D2ECC@ha */
/* 80614B08  7C 7E 1B 78 */	mr r30, r3
/* 80614B0C  38 64 2E CC */	addi r3, r4, default_start_offset@l /* 0x806D2ECC@l */
/* 80614B10  38 00 00 48 */	li r0, 0x48
/* 80614B14  80 C3 00 00 */	lwz r6, 0(r3)
/* 80614B18  7C BD 2B 78 */	mr r29, r5
/* 80614B1C  80 83 00 04 */	lwz r4, 4(r3)
/* 80614B20  80 63 00 08 */	lwz r3, 8(r3)
/* 80614B24  90 C1 00 08 */	stw r6, 8(r1)
/* 80614B28  90 81 00 0C */	stw r4, 0xc(r1)
/* 80614B2C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80614B30  B0 1E 00 00 */	sth r0, 0(r30)
/* 80614B34  4B A4 81 C1 */	bl fqrand
/* 80614B38  3C 60 80 65 */	lis r3, data_8064C5FC@ha /* 0x8064C5FC@ha */
/* 80614B3C  38 00 00 00 */	li r0, 0
/* 80614B40  C0 03 C5 FC */	lfs f0, data_8064C5FC@l(r3)  /* 0x8064C5FC@l */
/* 80614B44  EC 00 00 72 */	fmuls f0, f0, f1
/* 80614B48  FC 00 00 1E */	fctiwz f0, f0
/* 80614B4C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80614B50  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80614B54  B0 7E 00 4C */	sth r3, 0x4c(r30)
/* 80614B58  A8 7D 00 00 */	lha r3, 0(r29)
/* 80614B5C  B0 7E 00 4E */	sth r3, 0x4e(r30)
/* 80614B60  B0 1E 00 50 */	sth r0, 0x50(r30)
/* 80614B64  4B A4 81 91 */	bl fqrand
/* 80614B68  3C 60 80 65 */	lis r3, lit_395@ha /* 0x8064C600@ha */
/* 80614B6C  C0 03 C6 00 */	lfs f0, lit_395@l(r3)  /* 0x8064C600@l */
/* 80614B70  EC 00 00 72 */	fmuls f0, f0, f1
/* 80614B74  FC 00 00 1E */	fctiwz f0, f0
/* 80614B78  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80614B7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80614B80  B0 1E 00 52 */	sth r0, 0x52(r30)
/* 80614B84  4B A4 81 71 */	bl fqrand
/* 80614B88  3C 60 80 65 */	lis r3, lit_398@ha /* 0x8064C60C@ha */
/* 80614B8C  3C 80 80 65 */	lis r4, lit_399@ha /* 0x8064C610@ha */
/* 80614B90  38 A3 C6 0C */	addi r5, r3, lit_398@l /* 0x8064C60C@l */
/* 80614B94  C0 05 00 00 */	lfs f0, 0(r5)
/* 80614B98  38 A4 C6 10 */	addi r5, r4, lit_399@l /* 0x8064C610@l */
/* 80614B9C  3C 60 80 65 */	lis r3, lit_397@ha /* 0x8064C608@ha */
/* 80614BA0  C0 45 00 00 */	lfs f2, 0(r5)
/* 80614BA4  EC 60 00 72 */	fmuls f3, f0, f1
/* 80614BA8  38 83 C6 08 */	addi r4, r3, lit_397@l /* 0x8064C608@l */
/* 80614BAC  3C 60 80 65 */	lis r3, lit_396@ha /* 0x8064C604@ha */
/* 80614BB0  C0 24 00 00 */	lfs f1, 0(r4)
/* 80614BB4  C0 03 C6 04 */	lfs f0, lit_396@l(r3)  /* 0x8064C604@l */
/* 80614BB8  EC 63 10 28 */	fsubs f3, f3, f2
/* 80614BBC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80614BC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80614BC4  FC 00 00 1E */	fctiwz f0, f0
/* 80614BC8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80614BCC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80614BD0  B0 1E 00 54 */	sth r0, 0x54(r30)
/* 80614BD4  A8 1E 00 06 */	lha r0, 6(r30)
/* 80614BD8  2C 00 00 00 */	cmpwi r0, 0
/* 80614BDC  40 82 00 54 */	bne lbl_80614C30
/* 80614BE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80614BE4  3C 80 80 65 */	lis r4, lit_400@ha /* 0x8064C614@ha */
/* 80614BE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80614BEC  FC 60 10 90 */	fmr f3, f2
/* 80614BF0  3C 63 00 02 */	addis r3, r3, 2
/* 80614BF4  38 A4 C6 14 */	addi r5, r4, lit_400@l /* 0x8064C614@l */
/* 80614BF8  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 80614BFC  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80614C00  C0 25 00 00 */	lfs f1, 0(r5)
/* 80614C04  81 84 00 0C */	lwz r12, 0xc(r4)
/* 80614C08  7D 89 03 A6 */	mtctr r12
/* 80614C0C  4E 80 04 21 */	bctrl 
/* 80614C10  3C 80 80 65 */	lis r4, lit_401@ha /* 0x8064C618@ha */
/* 80614C14  3C 60 80 65 */	lis r3, lit_402@ha /* 0x8064C61C@ha */
/* 80614C18  C0 24 C6 18 */	lfs f1, lit_401@l(r4)  /* 0x8064C618@l */
/* 80614C1C  C0 03 C6 1C */	lfs f0, lit_402@l(r3)  /* 0x8064C61C@l */
/* 80614C20  D0 3E 00 28 */	stfs f1, 0x28(r30)
/* 80614C24  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 80614C28  D0 3E 00 30 */	stfs f1, 0x30(r30)
/* 80614C2C  48 00 01 34 */	b lbl_80614D60
lbl_80614C30:
/* 80614C30  4B A4 80 FD */	bl fqrand2
/* 80614C34  3C 80 80 65 */	lis r4, lit_399@ha /* 0x8064C610@ha */
/* 80614C38  3C 60 80 65 */	lis r3, lit_403@ha /* 0x8064C620@ha */
/* 80614C3C  C0 44 C6 10 */	lfs f2, lit_399@l(r4)  /* 0x8064C610@l */
/* 80614C40  C0 03 C6 20 */	lfs f0, lit_403@l(r3)  /* 0x8064C620@l */
/* 80614C44  EC 22 00 72 */	fmuls f1, f2, f1
/* 80614C48  EC 00 00 72 */	fmuls f0, f0, f1
/* 80614C4C  FC 00 00 1E */	fctiwz f0, f0
/* 80614C50  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80614C54  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80614C58  7C 1F 07 34 */	extsh r31, r0
/* 80614C5C  4B A4 80 D1 */	bl fqrand2
/* 80614C60  3C 80 80 65 */	lis r4, lit_399@ha /* 0x8064C610@ha */
/* 80614C64  3C 60 80 65 */	lis r3, lit_403@ha /* 0x8064C620@ha */
/* 80614C68  C0 44 C6 10 */	lfs f2, lit_399@l(r4)  /* 0x8064C610@l */
/* 80614C6C  A8 1E 00 06 */	lha r0, 6(r30)
/* 80614C70  EC 22 00 72 */	fmuls f1, f2, f1
/* 80614C74  C0 03 C6 20 */	lfs f0, lit_403@l(r3)  /* 0x8064C620@l */
/* 80614C78  2C 00 00 01 */	cmpwi r0, 1
/* 80614C7C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80614C80  FC 00 00 1E */	fctiwz f0, f0
/* 80614C84  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80614C88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80614C8C  7C 1D 07 34 */	extsh r29, r0
/* 80614C90  40 82 00 34 */	bne lbl_80614CC4
/* 80614C94  4B A4 80 61 */	bl fqrand
/* 80614C98  3C 60 80 65 */	lis r3, lit_406@ha /* 0x8064C62C@ha */
/* 80614C9C  3C 80 80 65 */	lis r4, lit_405@ha /* 0x8064C628@ha */
/* 80614CA0  38 A3 C6 2C */	addi r5, r3, lit_406@l /* 0x8064C62C@l */
/* 80614CA4  C0 44 C6 28 */	lfs f2, lit_405@l(r4)  /* 0x8064C628@l */
/* 80614CA8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80614CAC  3C 60 80 65 */	lis r3, lit_404@ha /* 0x8064C624@ha */
/* 80614CB0  EC 20 00 72 */	fmuls f1, f0, f1
/* 80614CB4  C0 03 C6 24 */	lfs f0, lit_404@l(r3)  /* 0x8064C624@l */
/* 80614CB8  EC 22 08 2A */	fadds f1, f2, f1
/* 80614CBC  EF C0 00 72 */	fmuls f30, f0, f1
/* 80614CC0  48 00 00 30 */	b lbl_80614CF0
lbl_80614CC4:
/* 80614CC4  4B A4 80 31 */	bl fqrand
/* 80614CC8  3C 60 80 65 */	lis r3, lit_407@ha /* 0x8064C630@ha */
/* 80614CCC  3C 80 80 65 */	lis r4, lit_405@ha /* 0x8064C628@ha */
/* 80614CD0  38 A3 C6 30 */	addi r5, r3, lit_407@l /* 0x8064C630@l */
/* 80614CD4  C0 44 C6 28 */	lfs f2, lit_405@l(r4)  /* 0x8064C628@l */
/* 80614CD8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80614CDC  3C 60 80 65 */	lis r3, lit_404@ha /* 0x8064C624@ha */
/* 80614CE0  EC 20 00 72 */	fmuls f1, f0, f1
/* 80614CE4  C0 03 C6 24 */	lfs f0, lit_404@l(r3)  /* 0x8064C624@l */
/* 80614CE8  EC 22 08 2A */	fadds f1, f2, f1
/* 80614CEC  EF C0 00 72 */	fmuls f30, f0, f1
lbl_80614CF0:
/* 80614CF0  7F A3 EB 78 */	mr r3, r29
/* 80614CF4  4B DA 5D FD */	bl sin_s
/* 80614CF8  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80614CFC  7F E3 FB 78 */	mr r3, r31
/* 80614D00  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80614D04  4B DA 5D 99 */	bl cos_s
/* 80614D08  FF E0 08 90 */	fmr f31, f1
/* 80614D0C  7F A3 EB 78 */	mr r3, r29
/* 80614D10  4B DA 5D 8D */	bl cos_s
/* 80614D14  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80614D18  7F E3 FB 78 */	mr r3, r31
/* 80614D1C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80614D20  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80614D24  4B DA 5D CD */	bl sin_s
/* 80614D28  FF E0 08 90 */	fmr f31, f1
/* 80614D2C  7F A3 EB 78 */	mr r3, r29
/* 80614D30  4B DA 5D 6D */	bl cos_s
/* 80614D34  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80614D38  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 80614D3C  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 80614D40  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80614D44  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80614D48  80 64 00 00 */	lwz r3, 0(r4)
/* 80614D4C  80 04 00 04 */	lwz r0, 4(r4)
/* 80614D50  90 7E 00 28 */	stw r3, 0x28(r30)
/* 80614D54  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 80614D58  80 04 00 08 */	lwz r0, 8(r4)
/* 80614D5C  90 1E 00 30 */	stw r0, 0x30(r30)
lbl_80614D60:
/* 80614D60  A8 1E 00 06 */	lha r0, 6(r30)
/* 80614D64  2C 00 00 01 */	cmpwi r0, 1
/* 80614D68  40 82 00 50 */	bne lbl_80614DB8
/* 80614D6C  3C 80 80 65 */	lis r4, lit_408@ha /* 0x8064C634@ha */
/* 80614D70  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80614D74  C0 24 C6 34 */	lfs f1, lit_408@l(r4)  /* 0x8064C634@l */
/* 80614D78  4B DF 70 D5 */	bl sMath_RotateX
/* 80614D7C  A8 7E 00 4E */	lha r3, 0x4e(r30)
/* 80614D80  3C 00 43 30 */	lis r0, 0x4330
/* 80614D84  3C 80 80 65 */	lis r4, lit_414@ha /* 0x8064C644@ha */
/* 80614D88  3C A0 80 65 */	lis r5, lit_409@ha /* 0x8064C638@ha */
/* 80614D8C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80614D90  90 01 00 28 */	stw r0, 0x28(r1)
/* 80614D94  C8 24 C6 44 */	lfd f1, lit_414@l(r4)  /* 0x8064C644@l */
/* 80614D98  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80614D9C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80614DA0  C0 45 C6 38 */	lfs f2, lit_409@l(r5)  /* 0x8064C638@l */
/* 80614DA4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80614DA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80614DAC  EC 22 00 32 */	fmuls f1, f2, f0
/* 80614DB0  4B DF 6F FD */	bl sMath_RotateY
/* 80614DB4  48 00 00 10 */	b lbl_80614DC4
lbl_80614DB8:
/* 80614DB8  38 9E 00 10 */	addi r4, r30, 0x10
/* 80614DBC  38 60 04 3F */	li r3, 0x43f
/* 80614DC0  48 01 91 E9 */	bl sAdo_OngenTrgStart
lbl_80614DC4:
/* 80614DC4  A8 7E 00 4E */	lha r3, 0x4e(r30)
/* 80614DC8  3C 00 43 30 */	lis r0, 0x4330
/* 80614DCC  3C 80 80 65 */	lis r4, lit_414@ha /* 0x8064C644@ha */
/* 80614DD0  3C A0 80 65 */	lis r5, lit_409@ha /* 0x8064C638@ha */
/* 80614DD4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80614DD8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80614DDC  C8 24 C6 44 */	lfd f1, lit_414@l(r4)  /* 0x8064C644@l */
/* 80614DE0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80614DE4  38 61 00 08 */	addi r3, r1, 8
/* 80614DE8  C0 45 C6 38 */	lfs f2, lit_409@l(r5)  /* 0x8064C638@l */
/* 80614DEC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80614DF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80614DF4  EC 22 00 32 */	fmuls f1, f2, f0
/* 80614DF8  4B DF 6F B5 */	bl sMath_RotateY
/* 80614DFC  A8 1E 00 06 */	lha r0, 6(r30)
/* 80614E00  2C 00 00 00 */	cmpwi r0, 0
/* 80614E04  40 82 00 34 */	bne lbl_80614E38
/* 80614E08  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80614E0C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80614E10  EC 01 00 2A */	fadds f0, f1, f0
/* 80614E14  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80614E18  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80614E1C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80614E20  EC 01 00 2A */	fadds f0, f1, f0
/* 80614E24  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80614E28  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80614E2C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80614E30  EC 01 00 2A */	fadds f0, f1, f0
/* 80614E34  D0 1E 00 18 */	stfs f0, 0x18(r30)
lbl_80614E38:
/* 80614E38  3C 60 80 65 */	lis r3, lit_410@ha /* 0x8064C63C@ha */
/* 80614E3C  C0 03 C6 3C */	lfs f0, lit_410@l(r3)  /* 0x8064C63C@l */
/* 80614E40  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 80614E44  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80614E48  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 80614E4C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80614E50  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80614E54  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80614E58  39 61 00 40 */	addi r11, r1, 0x40
/* 80614E5C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80614E60  4B A8 60 C1 */	bl func_8009AF20
/* 80614E64  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80614E68  7C 08 03 A6 */	mtlr r0
/* 80614E6C  38 21 00 60 */	addi r1, r1, 0x60
/* 80614E70  4E 80 00 20 */	blr 
