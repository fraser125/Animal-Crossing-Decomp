lbl_80610C4C:
/* 80610C4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80610C50  7C 08 02 A6 */	mflr r0
/* 80610C54  90 01 00 54 */	stw r0, 0x54(r1)
/* 80610C58  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80610C5C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80610C60  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80610C64  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80610C68  39 61 00 30 */	addi r11, r1, 0x30
/* 80610C6C  4B A8 A2 69 */	bl func_8009AED4
/* 80610C70  7C 7E 1B 78 */	mr r30, r3
/* 80610C74  A8 03 00 08 */	lha r0, 8(r3)
/* 80610C78  2C 00 00 00 */	cmpwi r0, 0
/* 80610C7C  40 82 00 FC */	bne lbl_80610D78
/* 80610C80  AB E5 00 00 */	lha r31, 0(r5)
/* 80610C84  4B A4 C0 71 */	bl fqrand
/* 80610C88  3C 80 80 65 */	lis r4, data_8064C34C@ha /* 0x8064C34C@ha */
/* 80610C8C  3C 60 80 65 */	lis r3, lit_389@ha /* 0x8064C350@ha */
/* 80610C90  C0 24 C3 4C */	lfs f1, data_8064C34C@l(r4)  /* 0x8064C34C@l */
/* 80610C94  C0 03 C3 50 */	lfs f0, lit_389@l(r3)  /* 0x8064C350@l */
/* 80610C98  EF C1 00 2A */	fadds f30, f1, f0
/* 80610C9C  4B A4 C0 59 */	bl fqrand
/* 80610CA0  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064C358@ha */
/* 80610CA4  3C 60 80 65 */	lis r3, lit_390@ha /* 0x8064C354@ha */
/* 80610CA8  C0 44 C3 58 */	lfs f2, lit_391@l(r4)  /* 0x8064C358@l */
/* 80610CAC  C0 03 C3 54 */	lfs f0, lit_390@l(r3)  /* 0x8064C354@l */
/* 80610CB0  EC 22 00 72 */	fmuls f1, f2, f1
/* 80610CB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80610CB8  FC 00 00 1E */	fctiwz f0, f0
/* 80610CBC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80610CC0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80610CC4  7C 1F 02 14 */	add r0, r31, r0
/* 80610CC8  7C 1F 07 34 */	extsh r31, r0
/* 80610CCC  4B A4 C0 29 */	bl fqrand
/* 80610CD0  3C 60 80 65 */	lis r3, lit_391@ha /* 0x8064C358@ha */
/* 80610CD4  3C 80 80 65 */	lis r4, lit_390@ha /* 0x8064C354@ha */
/* 80610CD8  38 A3 C3 58 */	addi r5, r3, lit_391@l /* 0x8064C358@l */
/* 80610CDC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80610CE0  38 A4 C3 54 */	addi r5, r4, lit_390@l /* 0x8064C354@l */
/* 80610CE4  3C 60 80 65 */	lis r3, lit_392@ha /* 0x8064C35C@ha */
/* 80610CE8  C0 45 00 00 */	lfs f2, 0(r5)
/* 80610CEC  EC 60 00 72 */	fmuls f3, f0, f1
/* 80610CF0  38 83 C3 5C */	addi r4, r3, lit_392@l /* 0x8064C35C@l */
/* 80610CF4  C0 24 00 00 */	lfs f1, 0(r4)
/* 80610CF8  3C 60 80 65 */	lis r3, lit_393@ha /* 0x8064C360@ha */
/* 80610CFC  C0 03 C3 60 */	lfs f0, lit_393@l(r3)  /* 0x8064C360@l */
/* 80610D00  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80610D04  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 80610D08  FC 40 10 1E */	fctiwz f2, f2
/* 80610D0C  D0 3E 00 40 */	stfs f1, 0x40(r30)
/* 80610D10  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80610D14  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 80610D18  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80610D1C  38 03 CE 39 */	addi r0, r3, -12743
/* 80610D20  7C 1D 07 34 */	extsh r29, r0
/* 80610D24  7F A3 EB 78 */	mr r3, r29
/* 80610D28  4B DA 9D 75 */	bl cos_s
/* 80610D2C  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80610D30  7F E3 FB 78 */	mr r3, r31
/* 80610D34  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80610D38  4B DA 9D B9 */	bl sin_s
/* 80610D3C  FF E0 08 90 */	fmr f31, f1
/* 80610D40  7F A3 EB 78 */	mr r3, r29
/* 80610D44  4B DA 9D AD */	bl sin_s
/* 80610D48  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80610D4C  7F E3 FB 78 */	mr r3, r31
/* 80610D50  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80610D54  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80610D58  4B DA 9D 45 */	bl cos_s
/* 80610D5C  FF E0 08 90 */	fmr f31, f1
/* 80610D60  7F A3 EB 78 */	mr r3, r29
/* 80610D64  4B DA 9D 8D */	bl sin_s
/* 80610D68  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80610D6C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80610D70  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80610D74  48 00 01 00 */	b lbl_80610E74
lbl_80610D78:
/* 80610D78  A8 65 00 00 */	lha r3, 0(r5)
/* 80610D7C  38 03 07 1C */	addi r0, r3, 0x71c
/* 80610D80  7C 1F 07 34 */	extsh r31, r0
/* 80610D84  4B A4 BF 71 */	bl fqrand
/* 80610D88  3C 80 80 65 */	lis r4, data_8064C34C@ha /* 0x8064C34C@ha */
/* 80610D8C  3C 60 80 65 */	lis r3, lit_389@ha /* 0x8064C350@ha */
/* 80610D90  C0 24 C3 4C */	lfs f1, data_8064C34C@l(r4)  /* 0x8064C34C@l */
/* 80610D94  C0 03 C3 50 */	lfs f0, lit_389@l(r3)  /* 0x8064C350@l */
/* 80610D98  EF C1 00 2A */	fadds f30, f1, f0
/* 80610D9C  4B A4 BF 59 */	bl fqrand
/* 80610DA0  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064C358@ha */
/* 80610DA4  3C 60 80 65 */	lis r3, lit_390@ha /* 0x8064C354@ha */
/* 80610DA8  C0 44 C3 58 */	lfs f2, lit_391@l(r4)  /* 0x8064C358@l */
/* 80610DAC  C0 03 C3 54 */	lfs f0, lit_390@l(r3)  /* 0x8064C354@l */
/* 80610DB0  EC 22 00 72 */	fmuls f1, f2, f1
/* 80610DB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80610DB8  FC 00 00 1E */	fctiwz f0, f0
/* 80610DBC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80610DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80610DC4  7C 00 F8 50 */	subf r0, r0, r31
/* 80610DC8  7C 1F 07 34 */	extsh r31, r0
/* 80610DCC  4B A4 BF 29 */	bl fqrand
/* 80610DD0  3C 60 80 65 */	lis r3, lit_391@ha /* 0x8064C358@ha */
/* 80610DD4  3C 80 80 65 */	lis r4, lit_390@ha /* 0x8064C354@ha */
/* 80610DD8  38 A3 C3 58 */	addi r5, r3, lit_391@l /* 0x8064C358@l */
/* 80610DDC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80610DE0  38 A4 C3 54 */	addi r5, r4, lit_390@l /* 0x8064C354@l */
/* 80610DE4  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064C364@ha */
/* 80610DE8  C0 45 00 00 */	lfs f2, 0(r5)
/* 80610DEC  EC 60 00 72 */	fmuls f3, f0, f1
/* 80610DF0  38 83 C3 64 */	addi r4, r3, lit_394@l /* 0x8064C364@l */
/* 80610DF4  C0 24 00 00 */	lfs f1, 0(r4)
/* 80610DF8  3C 60 80 65 */	lis r3, lit_395@ha /* 0x8064C368@ha */
/* 80610DFC  C0 03 C3 68 */	lfs f0, lit_395@l(r3)  /* 0x8064C368@l */
/* 80610E00  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80610E04  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 80610E08  FC 40 10 1E */	fctiwz f2, f2
/* 80610E0C  D0 3E 00 40 */	stfs f1, 0x40(r30)
/* 80610E10  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80610E14  D8 41 00 08 */	stfd f2, 8(r1)
/* 80610E18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80610E1C  20 00 D5 56 */	subfic r0, r0, -10922
/* 80610E20  7C 1D 07 34 */	extsh r29, r0
/* 80610E24  7F A3 EB 78 */	mr r3, r29
/* 80610E28  4B DA 9C 75 */	bl cos_s
/* 80610E2C  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80610E30  7F E3 FB 78 */	mr r3, r31
/* 80610E34  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80610E38  4B DA 9C B9 */	bl sin_s
/* 80610E3C  FF E0 08 90 */	fmr f31, f1
/* 80610E40  7F A3 EB 78 */	mr r3, r29
/* 80610E44  4B DA 9C AD */	bl sin_s
/* 80610E48  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80610E4C  7F E3 FB 78 */	mr r3, r31
/* 80610E50  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80610E54  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80610E58  4B DA 9C 45 */	bl cos_s
/* 80610E5C  FF E0 08 90 */	fmr f31, f1
/* 80610E60  7F A3 EB 78 */	mr r3, r29
/* 80610E64  4B DA 9C 8D */	bl sin_s
/* 80610E68  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80610E6C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80610E70  D0 1E 00 24 */	stfs f0, 0x24(r30)
lbl_80610E74:
/* 80610E74  4B A4 BE 59 */	bl func_8005CCCC
/* 80610E78  B0 7E 00 4C */	sth r3, 0x4c(r30)
/* 80610E7C  38 00 00 28 */	li r0, 0x28
/* 80610E80  B0 1E 00 00 */	sth r0, 0(r30)
/* 80610E84  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80610E88  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80610E8C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80610E90  39 61 00 30 */	addi r11, r1, 0x30
/* 80610E94  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80610E98  4B A8 A0 89 */	bl func_8009AF20
/* 80610E9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80610EA0  7C 08 03 A6 */	mtlr r0
/* 80610EA4  38 21 00 50 */	addi r1, r1, 0x50
/* 80610EA8  4E 80 00 20 */	blr 
