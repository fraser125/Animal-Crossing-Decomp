lbl_80596D1C:
/* 80596D1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80596D20  7C 08 02 A6 */	mflr r0
/* 80596D24  90 01 00 54 */	stw r0, 0x54(r1)
/* 80596D28  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80596D2C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80596D30  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80596D34  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80596D38  7C 7F 1B 78 */	mr r31, r3
/* 80596D3C  7C 9E 23 78 */	mr r30, r4
/* 80596D40  38 61 00 08 */	addi r3, r1, 8
/* 80596D44  7F E4 FB 78 */	mr r4, r31
/* 80596D48  4B FF FD 4D */	bl aIBT_chk_active_range
/* 80596D4C  2C 03 00 00 */	cmpwi r3, 0
/* 80596D50  40 82 00 20 */	bne lbl_80596D70
/* 80596D54  A8 01 00 08 */	lha r0, 8(r1)
/* 80596D58  7F E3 FB 78 */	mr r3, r31
/* 80596D5C  7F C5 F3 78 */	mr r5, r30
/* 80596D60  38 80 00 03 */	li r4, 3
/* 80596D64  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80596D68  48 00 07 5D */	bl aIBT_setupAction
/* 80596D6C  48 00 01 94 */	b lbl_80596F00
lbl_80596D70:
/* 80596D70  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 80596D74  3C 63 00 01 */	addis r3, r3, 1
/* 80596D78  38 03 80 00 */	addi r0, r3, -32768
/* 80596D7C  B0 01 00 08 */	sth r0, 8(r1)
/* 80596D80  4B AC 5F 75 */	bl fqrand
/* 80596D84  3C 80 80 65 */	lis r4, lit_622@ha /* 0x80649E2C@ha */
/* 80596D88  3C 60 80 65 */	lis r3, lit_450@ha /* 0x80649DF8@ha */
/* 80596D8C  C0 04 9E 2C */	lfs f0, lit_622@l(r4)  /* 0x80649E2C@l */
/* 80596D90  38 83 9D F8 */	addi r4, r3, lit_450@l /* 0x80649DF8@l */
/* 80596D94  3C 60 80 6C */	lis r3, data_806C3130@ha /* 0x806C3130@ha */
/* 80596D98  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 80596D9C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80596DA0  C0 44 00 00 */	lfs f2, 0(r4)
/* 80596DA4  54 04 10 3A */	slwi r4, r0, 2
/* 80596DA8  38 63 31 30 */	addi r3, r3, data_806C3130@l /* 0x806C3130@l */
/* 80596DAC  7C 03 24 2E */	lfsx f0, r3, r4
/* 80596DB0  38 61 00 24 */	addi r3, r1, 0x24
/* 80596DB4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80596DB8  A8 01 00 08 */	lha r0, 8(r1)
/* 80596DBC  38 9F 00 28 */	addi r4, r31, 0x28
/* 80596DC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80596DC4  FC 00 00 1E */	fctiwz f0, f0
/* 80596DC8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80596DCC  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80596DD0  7C 00 2A 14 */	add r0, r0, r5
/* 80596DD4  B0 01 00 08 */	sth r0, 8(r1)
/* 80596DD8  4B E2 40 E5 */	bl xyz_t_move
/* 80596DDC  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 80596DE0  3C 60 80 65 */	lis r3, lit_623@ha /* 0x80649E30@ha */
/* 80596DE4  C3 E3 9E 30 */	lfs f31, lit_623@l(r3)  /* 0x80649E30@l */
/* 80596DE8  2C 00 00 0E */	cmpwi r0, 0xe
/* 80596DEC  40 82 00 0C */	bne lbl_80596DF8
/* 80596DF0  3C 60 80 65 */	lis r3, lit_624@ha /* 0x80649E34@ha */
/* 80596DF4  C3 E3 9E 34 */	lfs f31, lit_624@l(r3)  /* 0x80649E34@l */
lbl_80596DF8:
/* 80596DF8  A8 61 00 08 */	lha r3, 8(r1)
/* 80596DFC  4B E2 3C F5 */	bl sin_s
/* 80596E00  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80596E04  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80596E08  A8 61 00 08 */	lha r3, 8(r1)
/* 80596E0C  EC 00 08 2A */	fadds f0, f0, f1
/* 80596E10  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80596E14  4B E2 3C 89 */	bl cos_s
/* 80596E18  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80596E1C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80596E20  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80596E24  3C 60 80 65 */	lis r3, lit_403@ha /* 0x80649DE4@ha */
/* 80596E28  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80596E2C  EC 00 08 2A */	fadds f0, f0, f1
/* 80596E30  90 81 00 18 */	stw r4, 0x18(r1)
/* 80596E34  38 81 00 18 */	addi r4, r1, 0x18
/* 80596E38  C0 23 9D E4 */	lfs f1, lit_403@l(r3)  /* 0x80649DE4@l */
/* 80596E3C  38 60 00 00 */	li r3, 0
/* 80596E40  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80596E44  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80596E48  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80596E4C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80596E50  4B DF 88 69 */	bl func_8038F6B8
/* 80596E54  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80596E58  FF E0 08 90 */	fmr f31, f1
/* 80596E5C  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 80596E60  38 61 00 0C */	addi r3, r1, 0xc
/* 80596E64  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80596E68  38 80 00 00 */	li r4, 0
/* 80596E6C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80596E70  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80596E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80596E78  4B DF 22 35 */	bl mCoBG_Wpos2Attribute
/* 80596E7C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80596E80  3C 80 80 65 */	lis r4, lit_403@ha /* 0x80649DE4@ha */
/* 80596E84  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80596E88  C0 04 9D E4 */	lfs f0, lit_403@l(r4)  /* 0x80649DE4@l */
/* 80596E8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80596E90  4C 41 13 82 */	cror 2, 1, 2
/* 80596E94  40 82 00 08 */	bne lbl_80596E9C
/* 80596E98  48 00 00 08 */	b lbl_80596EA0
lbl_80596E9C:
/* 80596E9C  FC 20 08 50 */	fneg f1, f1
lbl_80596EA0:
/* 80596EA0  3C 80 80 65 */	lis r4, lit_405@ha /* 0x80649DEC@ha */
/* 80596EA4  C0 04 9D EC */	lfs f0, lit_405@l(r4)  /* 0x80649DEC@l */
/* 80596EA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80596EAC  40 80 00 2C */	bge lbl_80596ED8
/* 80596EB0  4B DF D4 1D */	bl mCoBG_CheckWaterAttribute
/* 80596EB4  2C 03 00 00 */	cmpwi r3, 0
/* 80596EB8  40 82 00 20 */	bne lbl_80596ED8
/* 80596EBC  A8 01 00 08 */	lha r0, 8(r1)
/* 80596EC0  7F E3 FB 78 */	mr r3, r31
/* 80596EC4  7F C5 F3 78 */	mr r5, r30
/* 80596EC8  38 80 00 03 */	li r4, 3
/* 80596ECC  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80596ED0  48 00 05 F5 */	bl aIBT_setupAction
/* 80596ED4  48 00 00 2C */	b lbl_80596F00
lbl_80596ED8:
/* 80596ED8  80 7F 02 34 */	lwz r3, 0x234(r31)
/* 80596EDC  38 03 00 01 */	addi r0, r3, 1
/* 80596EE0  90 1F 02 34 */	stw r0, 0x234(r31)
/* 80596EE4  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 80596EE8  2C 00 00 0F */	cmpwi r0, 0xf
/* 80596EEC  40 81 00 14 */	ble lbl_80596F00
/* 80596EF0  7F E3 FB 78 */	mr r3, r31
/* 80596EF4  7F C5 F3 78 */	mr r5, r30
/* 80596EF8  38 80 00 03 */	li r4, 3
/* 80596EFC  48 00 05 C9 */	bl aIBT_setupAction
lbl_80596F00:
/* 80596F00  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80596F04  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80596F08  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80596F0C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80596F10  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80596F14  7C 08 03 A6 */	mtlr r0
/* 80596F18  38 21 00 50 */	addi r1, r1, 0x50
/* 80596F1C  4E 80 00 20 */	blr 
