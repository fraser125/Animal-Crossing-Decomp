lbl_80554C54:
/* 80554C54  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80554C58  7C 08 02 A6 */	mflr r0
/* 80554C5C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80554C60  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80554C64  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80554C68  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80554C6C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80554C70  39 61 00 60 */	addi r11, r1, 0x60
/* 80554C74  4B B4 62 59 */	bl func_8009AECC
/* 80554C78  7C 7C 1B 78 */	mr r28, r3
/* 80554C7C  3C 60 80 6A */	lis r3, data_806A6408@ha /* 0x806A6408@ha */
/* 80554C80  AB 7C 09 A8 */	lha r27, 0x9a8(r28)
/* 80554C84  3B E3 64 08 */	addi r31, r3, data_806A6408@l /* 0x806A6408@l */
/* 80554C88  83 DC 09 C4 */	lwz r30, 0x9c4(r28)
/* 80554C8C  7C 9D 23 78 */	mr r29, r4
/* 80554C90  38 7B 0E 20 */	addi r3, r27, 0xe20
/* 80554C94  B0 7C 09 A8 */	sth r3, 0x9a8(r28)
/* 80554C98  4B E6 5E 05 */	bl cos_s
/* 80554C9C  3C 80 80 65 */	lis r4, lit_519@ha /* 0x806495BC@ha */
/* 80554CA0  38 7B 0E 20 */	addi r3, r27, 0xe20
/* 80554CA4  C0 04 95 BC */	lfs f0, lit_519@l(r4)  /* 0x806495BC@l */
/* 80554CA8  EF E0 00 72 */	fmuls f31, f0, f1
/* 80554CAC  4B E6 5E 45 */	bl sin_s
/* 80554CB0  3C 60 80 65 */	lis r3, lit_520@ha /* 0x806495C0@ha */
/* 80554CB4  C0 7C 09 B0 */	lfs f3, 0x9b0(r28)
/* 80554CB8  C0 5C 09 AC */	lfs f2, 0x9ac(r28)
/* 80554CBC  C0 03 95 C0 */	lfs f0, lit_520@l(r3)  /* 0x806495C0@l */
/* 80554CC0  EF C3 00 72 */	fmuls f30, f3, f1
/* 80554CC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80554CC8  4C 40 13 82 */	cror 2, 0, 2
/* 80554CCC  40 82 00 68 */	bne lbl_80554D34
/* 80554CD0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80554CD4  4C 41 13 82 */	cror 2, 1, 2
/* 80554CD8  40 82 00 5C */	bne lbl_80554D34
/* 80554CDC  88 9C 09 AA */	lbz r4, 0x9aa(r28)
/* 80554CE0  38 84 FF FF */	addi r4, r4, -1
/* 80554CE4  7C 80 07 75 */	extsb. r0, r4
/* 80554CE8  40 80 00 38 */	bge lbl_80554D20
/* 80554CEC  88 9C 09 AB */	lbz r4, 0x9ab(r28)
/* 80554CF0  38 84 FF FF */	addi r4, r4, -1
/* 80554CF4  7C 80 07 75 */	extsb. r0, r4
/* 80554CF8  40 80 00 08 */	bge lbl_80554D00
/* 80554CFC  38 80 00 01 */	li r4, 1
lbl_80554D00:
/* 80554D00  98 9C 09 AB */	stb r4, 0x9ab(r28)
/* 80554D04  3C 60 80 65 */	lis r3, lit_521@ha /* 0x806495C4@ha */
/* 80554D08  7C 80 07 74 */	extsb r0, r4
/* 80554D0C  38 9F 01 28 */	addi r4, r31, 0x128
/* 80554D10  C0 03 95 C4 */	lfs f0, lit_521@l(r3)  /* 0x806495C4@l */
/* 80554D14  7C 84 00 AE */	lbzx r4, r4, r0
/* 80554D18  D0 1C 09 B0 */	stfs f0, 0x9b0(r28)
/* 80554D1C  48 00 00 14 */	b lbl_80554D30
lbl_80554D20:
/* 80554D20  3C 60 80 65 */	lis r3, lit_522@ha /* 0x806495C8@ha */
/* 80554D24  C0 03 95 C8 */	lfs f0, lit_522@l(r3)  /* 0x806495C8@l */
/* 80554D28  EC 03 00 32 */	fmuls f0, f3, f0
/* 80554D2C  D0 1C 09 B0 */	stfs f0, 0x9b0(r28)
lbl_80554D30:
/* 80554D30  98 9C 09 AA */	stb r4, 0x9aa(r28)
lbl_80554D34:
/* 80554D34  D3 DC 09 AC */	stfs f30, 0x9ac(r28)
/* 80554D38  38 61 00 08 */	addi r3, r1, 8
/* 80554D3C  A8 1C 09 B4 */	lha r0, 0x9b4(r28)
/* 80554D40  B0 01 00 08 */	sth r0, 8(r1)
/* 80554D44  A8 9C 09 B6 */	lha r4, 0x9b6(r28)
/* 80554D48  A8 BC 09 B8 */	lha r5, 0x9b8(r28)
/* 80554D4C  4B E6 5D F9 */	bl chase_angle
/* 80554D50  A8 01 00 08 */	lha r0, 8(r1)
/* 80554D54  B0 1C 09 B4 */	sth r0, 0x9b4(r28)
/* 80554D58  A8 61 00 08 */	lha r3, 8(r1)
/* 80554D5C  4B E6 5D 95 */	bl sin_s
/* 80554D60  3C 80 80 65 */	lis r4, lit_524@ha /* 0x806495D0@ha */
/* 80554D64  3C 60 80 65 */	lis r3, lit_526@ha /* 0x806495D8@ha */
/* 80554D68  C0 44 95 D0 */	lfs f2, lit_524@l(r4)  /* 0x806495D0@l */
/* 80554D6C  3C A0 80 65 */	lis r5, lit_523@ha /* 0x806495CC@ha */
/* 80554D70  C0 03 95 D8 */	lfs f0, lit_526@l(r3)  /* 0x806495D8@l */
/* 80554D74  38 C5 95 CC */	addi r6, r5, lit_523@l /* 0x806495CC@l */
/* 80554D78  EC 42 00 72 */	fmuls f2, f2, f1
/* 80554D7C  3C 60 80 65 */	lis r3, lit_525@ha /* 0x806495D4@ha */
/* 80554D80  EC 00 00 72 */	fmuls f0, f0, f1
/* 80554D84  38 A3 95 D4 */	addi r5, r3, lit_525@l /* 0x806495D4@l */
/* 80554D88  C0 25 00 00 */	lfs f1, 0(r5)
/* 80554D8C  3C 80 80 65 */	lis r4, lit_527@ha /* 0x806495DC@ha */
/* 80554D90  EC 1E 00 2A */	fadds f0, f30, f0
/* 80554D94  C0 66 00 00 */	lfs f3, 0(r6)
/* 80554D98  EC 5F 10 2A */	fadds f2, f31, f2
/* 80554D9C  3C 60 80 65 */	lis r3, lit_528@ha /* 0x806495E0@ha */
/* 80554DA0  57 C0 10 3A */	slwi r0, r30, 2
/* 80554DA4  38 BF 01 2C */	addi r5, r31, 0x12c
/* 80554DA8  EC 43 10 2A */	fadds f2, f3, f2
/* 80554DAC  C0 64 95 DC */	lfs f3, lit_527@l(r4)  /* 0x806495DC@l */
/* 80554DB0  EC 81 00 2A */	fadds f4, f1, f0
/* 80554DB4  38 9F 01 34 */	addi r4, r31, 0x134
/* 80554DB8  C0 23 95 E0 */	lfs f1, lit_528@l(r3)  /* 0x806495E0@l */
/* 80554DBC  38 7C 08 2C */	addi r3, r28, 0x82c
/* 80554DC0  7C 04 04 2E */	lfsx f0, r4, r0
/* 80554DC4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80554DC8  EC 41 00 32 */	fmuls f2, f1, f0
/* 80554DCC  7C 25 04 2E */	lfsx f1, r5, r0
/* 80554DD0  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 80554DD4  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 80554DD8  4B E6 5E 91 */	bl chase_f
/* 80554DDC  C0 3C 07 6C */	lfs f1, 0x76c(r28)
/* 80554DE0  2C 1E 00 01 */	cmpwi r30, 1
/* 80554DE4  C0 1C 07 74 */	lfs f0, 0x774(r28)
/* 80554DE8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80554DEC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80554DF0  40 82 00 0C */	bne lbl_80554DFC
/* 80554DF4  C0 3C 07 70 */	lfs f1, 0x770(r28)
/* 80554DF8  48 00 00 30 */	b lbl_80554E28
lbl_80554DFC:
/* 80554DFC  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 80554E00  3C 60 80 65 */	lis r3, lit_520@ha /* 0x806495C0@ha */
/* 80554E04  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80554E08  38 83 95 C0 */	addi r4, r3, lit_520@l /* 0x806495C0@l */
/* 80554E0C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80554E10  38 61 00 0C */	addi r3, r1, 0xc
/* 80554E14  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80554E18  C0 24 00 00 */	lfs f1, 0(r4)
/* 80554E1C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80554E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80554E24  4B E3 AB 75 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
lbl_80554E28:
/* 80554E28  3C 60 80 65 */	lis r3, lit_528@ha /* 0x806495E0@ha */
/* 80554E2C  38 83 95 E0 */	addi r4, r3, lit_528@l /* 0x806495E0@l */
/* 80554E30  C0 44 00 00 */	lfs f2, 0(r4)
/* 80554E34  38 7C 09 C8 */	addi r3, r28, 0x9c8
/* 80554E38  4B E6 5E 31 */	bl chase_f
/* 80554E3C  80 1C 09 A0 */	lwz r0, 0x9a0(r28)
/* 80554E40  C0 5C 09 C8 */	lfs f2, 0x9c8(r28)
/* 80554E44  2C 00 00 01 */	cmpwi r0, 1
/* 80554E48  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80554E4C  40 82 00 24 */	bne lbl_80554E70
/* 80554E50  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80554E54  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80554E58  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80554E5C  C0 3C 08 2C */	lfs f1, 0x82c(r28)
/* 80554E60  EC 22 08 2A */	fadds f1, f2, f1
/* 80554E64  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80554E68  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80554E6C  48 00 01 18 */	b lbl_80554F84
lbl_80554E70:
/* 80554E70  7F 84 E3 78 */	mr r4, r28
/* 80554E74  38 60 00 08 */	li r3, 8
/* 80554E78  4B E4 53 ED */	bl mDemo_Check
/* 80554E7C  2C 03 00 01 */	cmpwi r3, 1
/* 80554E80  40 82 00 E0 */	bne lbl_80554F60
/* 80554E84  80 9C 09 A4 */	lwz r4, 0x9a4(r28)
/* 80554E88  38 64 FF FF */	addi r3, r4, -1
/* 80554E8C  34 04 FF FF */	addic. r0, r4, -1
/* 80554E90  90 7C 09 A4 */	stw r3, 0x9a4(r28)
/* 80554E94  40 82 00 0C */	bne lbl_80554EA0
/* 80554E98  38 00 00 01 */	li r0, 1
/* 80554E9C  90 1C 09 A0 */	stw r0, 0x9a0(r28)
lbl_80554EA0:
/* 80554EA0  38 64 FF FF */	addi r3, r4, -1
/* 80554EA4  3C 00 43 30 */	lis r0, 0x4330
/* 80554EA8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80554EAC  3C A0 80 65 */	lis r5, lit_529@ha /* 0x806495E4@ha */
/* 80554EB0  3C 80 80 65 */	lis r4, lit_537@ha /* 0x80649604@ha */
/* 80554EB4  90 61 00 44 */	stw r3, 0x44(r1)
/* 80554EB8  38 64 96 04 */	addi r3, r4, lit_537@l /* 0x80649604@l */
/* 80554EBC  C0 E5 95 E4 */	lfs f7, lit_529@l(r5)  /* 0x806495E4@l */
/* 80554EC0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80554EC4  3C 80 80 65 */	lis r4, lit_530@ha /* 0x806495E8@ha */
/* 80554EC8  C8 23 00 00 */	lfd f1, 0(r3)
/* 80554ECC  3C 60 80 65 */	lis r3, lit_520@ha /* 0x806495C0@ha */
/* 80554ED0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80554ED4  C0 63 95 C0 */	lfs f3, lit_520@l(r3)  /* 0x806495C0@l */
/* 80554ED8  3C 60 80 65 */	lis r3, lit_531@ha /* 0x806495EC@ha */
/* 80554EDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80554EE0  C0 44 95 E8 */	lfs f2, lit_530@l(r4)  /* 0x806495E8@l */
/* 80554EE4  FC C0 18 90 */	fmr f6, f3
/* 80554EE8  C0 A3 95 EC */	lfs f5, lit_531@l(r3)  /* 0x806495EC@l */
/* 80554EEC  FC 80 10 90 */	fmr f4, f2
/* 80554EF0  EC 07 00 28 */	fsubs f0, f7, f0
/* 80554EF4  EC 20 38 24 */	fdivs f1, f0, f7
/* 80554EF8  4B E1 B7 F1 */	bl cKF_HermitCalc
/* 80554EFC  3C 60 80 65 */	lis r3, lit_532@ha /* 0x806495F0@ha */
/* 80554F00  3C 80 80 65 */	lis r4, lit_525@ha /* 0x806495D4@ha */
/* 80554F04  38 A3 95 F0 */	addi r5, r3, lit_532@l /* 0x806495F0@l */
/* 80554F08  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80554F0C  C0 C5 00 00 */	lfs f6, 0(r5)
/* 80554F10  3C 60 80 65 */	lis r3, lit_533@ha /* 0x806495F4@ha */
/* 80554F14  C0 43 95 F4 */	lfs f2, lit_533@l(r3)  /* 0x806495F4@l */
/* 80554F18  EC A0 30 28 */	fsubs f5, f0, f6
/* 80554F1C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80554F20  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80554F24  EC 00 10 28 */	fsubs f0, f0, f2
/* 80554F28  C0 84 95 D4 */	lfs f4, lit_525@l(r4)  /* 0x806495D4@l */
/* 80554F2C  EC A5 00 72 */	fmuls f5, f5, f1
/* 80554F30  EC 00 00 72 */	fmuls f0, f0, f1
/* 80554F34  EC A6 28 2A */	fadds f5, f6, f5
/* 80554F38  EC 02 00 2A */	fadds f0, f2, f0
/* 80554F3C  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80554F40  C0 5C 08 2C */	lfs f2, 0x82c(r28)
/* 80554F44  EC 43 10 2A */	fadds f2, f3, f2
/* 80554F48  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80554F4C  EC 02 20 28 */	fsubs f0, f2, f4
/* 80554F50  EC 01 00 32 */	fmuls f0, f1, f0
/* 80554F54  EC 04 00 2A */	fadds f0, f4, f0
/* 80554F58  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80554F5C  48 00 00 28 */	b lbl_80554F84
lbl_80554F60:
/* 80554F60  3C A0 80 65 */	lis r5, lit_532@ha /* 0x806495F0@ha */
/* 80554F64  3C 80 80 65 */	lis r4, lit_525@ha /* 0x806495D4@ha */
/* 80554F68  3C 60 80 65 */	lis r3, lit_533@ha /* 0x806495F4@ha */
/* 80554F6C  C0 45 95 F0 */	lfs f2, lit_532@l(r5)  /* 0x806495F0@l */
/* 80554F70  C0 24 95 D4 */	lfs f1, lit_525@l(r4)  /* 0x806495D4@l */
/* 80554F74  C0 03 95 F4 */	lfs f0, lit_533@l(r3)  /* 0x806495F4@l */
/* 80554F78  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80554F7C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80554F80  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_80554F84:
/* 80554F84  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80554F88  7F A3 EB 78 */	mr r3, r29
/* 80554F8C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80554F90  38 80 00 00 */	li r4, 0
/* 80554F94  EC 21 F8 2A */	fadds f1, f1, f31
/* 80554F98  EC 00 F0 2A */	fadds f0, f0, f30
/* 80554F9C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80554FA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80554FA4  4B E2 9B 21 */	bl Camera2_change_priority
/* 80554FA8  3C C0 80 65 */	lis r6, lit_529@ha /* 0x806495E4@ha */
/* 80554FAC  3C A0 80 65 */	lis r5, lit_534@ha /* 0x806495F8@ha */
/* 80554FB0  3C 80 80 65 */	lis r4, lit_535@ha /* 0x806495FC@ha */
/* 80554FB4  7F A3 EB 78 */	mr r3, r29
/* 80554FB8  38 E6 95 E4 */	addi r7, r6, lit_529@l /* 0x806495E4@l */
/* 80554FBC  38 C5 95 F8 */	addi r6, r5, lit_534@l /* 0x806495F8@l */
/* 80554FC0  38 A4 95 FC */	addi r5, r4, lit_535@l /* 0x806495FC@l */
/* 80554FC4  C0 27 00 00 */	lfs f1, 0(r7)
/* 80554FC8  C0 46 00 00 */	lfs f2, 0(r6)
/* 80554FCC  38 81 00 24 */	addi r4, r1, 0x24
/* 80554FD0  C0 65 00 00 */	lfs f3, 0(r5)
/* 80554FD4  38 A1 00 30 */	addi r5, r1, 0x30
/* 80554FD8  38 C0 00 00 */	li r6, 0
/* 80554FDC  38 E0 00 05 */	li r7, 5
/* 80554FE0  4B E2 BF 51 */	bl Camera2_request_main_lock
/* 80554FE4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80554FE8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80554FEC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80554FF0  39 61 00 60 */	addi r11, r1, 0x60
/* 80554FF4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80554FF8  4B B4 5F 21 */	bl func_8009AF18
/* 80554FFC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80555000  7C 08 03 A6 */	mtlr r0
/* 80555004  38 21 00 80 */	addi r1, r1, 0x80
/* 80555008  4E 80 00 20 */	blr 
