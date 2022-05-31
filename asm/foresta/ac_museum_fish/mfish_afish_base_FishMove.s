lbl_80439C5C:
/* 80439C5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80439C60  7C 08 02 A6 */	mflr r0
/* 80439C64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80439C68  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80439C6C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80439C70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80439C74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80439C78  7C 7E 1B 78 */	mr r30, r3
/* 80439C7C  3C 60 80 44 */	lis r3, mfish_afish_turn_process@ha /* 0x80439784@ha */
/* 80439C80  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 80439C84  38 03 97 84 */	addi r0, r3, mfish_afish_turn_process@l /* 0x80439784@l */
/* 80439C88  7C 9F 23 78 */	mr r31, r4
/* 80439C8C  7C 05 00 40 */	cmplw r5, r0
/* 80439C90  41 82 00 44 */	beq lbl_80439CD4
/* 80439C94  A8 1E 06 22 */	lha r0, 0x622(r30)
/* 80439C98  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 80439C9C  40 80 00 38 */	bge lbl_80439CD4
/* 80439CA0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80439CA4  3C A0 80 64 */	lis r5, lit_1711@ha /* 0x80644364@ha */
/* 80439CA8  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80439CAC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80439CB0  C0 44 00 00 */	lfs f2, 0(r4)
/* 80439CB4  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 80439CB8  38 83 42 6C */	addi r4, r3, lit_528@l /* 0x8064426C@l */
/* 80439CBC  C0 25 43 64 */	lfs f1, lit_1711@l(r5)  /* 0x80644364@l */
/* 80439CC0  EC 42 00 28 */	fsubs f2, f2, f0
/* 80439CC4  C0 64 00 00 */	lfs f3, 0(r4)
/* 80439CC8  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80439CCC  4B F8 15 C9 */	bl add_calc2
/* 80439CD0  48 00 00 34 */	b lbl_80439D04
lbl_80439CD4:
/* 80439CD4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80439CD8  3C A0 80 64 */	lis r5, lit_666@ha /* 0x806442AC@ha */
/* 80439CDC  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80439CE0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80439CE4  C0 44 00 00 */	lfs f2, 0(r4)
/* 80439CE8  3C 60 80 64 */	lis r3, lit_1712@ha /* 0x80644368@ha */
/* 80439CEC  38 83 43 68 */	addi r4, r3, lit_1712@l /* 0x80644368@l */
/* 80439CF0  C0 25 42 AC */	lfs f1, lit_666@l(r5)  /* 0x806442AC@l */
/* 80439CF4  EC 42 00 28 */	fsubs f2, f2, f0
/* 80439CF8  C0 64 00 00 */	lfs f3, 0(r4)
/* 80439CFC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80439D00  4B F8 15 95 */	bl add_calc2
lbl_80439D04:
/* 80439D04  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80439D08  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 80439D0C  38 A3 42 5C */	addi r5, r3, lit_471@l /* 0x8064425C@l */
/* 80439D10  C0 44 42 C4 */	lfs f2, lit_793@l(r4)  /* 0x806442C4@l */
/* 80439D14  C0 25 00 00 */	lfs f1, 0(r5)
/* 80439D18  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80439D1C  4B F8 15 BD */	bl add_calc0
/* 80439D20  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80439D24  4B F8 0D CD */	bl sin_s
/* 80439D28  FF E0 08 90 */	fmr f31, f1
/* 80439D2C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80439D30  4B F8 0D 6D */	bl cos_s
/* 80439D34  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80439D38  EC 00 00 72 */	fmuls f0, f0, f1
/* 80439D3C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80439D40  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80439D44  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80439D48  4B F8 0D 55 */	bl cos_s
/* 80439D4C  FF E0 08 90 */	fmr f31, f1
/* 80439D50  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80439D54  4B F8 0D 49 */	bl cos_s
/* 80439D58  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80439D5C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80439D60  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80439D64  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80439D68  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80439D6C  4B F8 0D 85 */	bl sin_s
/* 80439D70  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80439D74  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80439D78  EC 20 00 72 */	fmuls f1, f0, f1
/* 80439D7C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80439D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80439D84  4C 41 13 82 */	cror 2, 1, 2
/* 80439D88  40 82 00 18 */	bne lbl_80439DA0
/* 80439D8C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80439D90  4B F8 0D 61 */	bl sin_s
/* 80439D94  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80439D98  EC 00 00 72 */	fmuls f0, f0, f1
/* 80439D9C  48 00 00 18 */	b lbl_80439DB4
lbl_80439DA0:
/* 80439DA0  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80439DA4  4B F8 0D 4D */	bl sin_s
/* 80439DA8  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80439DAC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80439DB0  FC 00 00 50 */	fneg f0, f0
lbl_80439DB4:
/* 80439DB4  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80439DB8  C0 23 42 68 */	lfs f1, lit_527@l(r3)  /* 0x80644268@l */
/* 80439DBC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80439DC0  40 81 00 50 */	ble lbl_80439E10
/* 80439DC4  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80439DC8  4B F8 0D 29 */	bl sin_s
/* 80439DCC  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80439DD0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80439DD4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80439DD8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80439DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80439DE0  4C 41 13 82 */	cror 2, 1, 2
/* 80439DE4  40 82 00 18 */	bne lbl_80439DFC
/* 80439DE8  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80439DEC  4B F8 0D 05 */	bl sin_s
/* 80439DF0  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80439DF4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80439DF8  48 00 00 18 */	b lbl_80439E10
lbl_80439DFC:
/* 80439DFC  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80439E00  4B F8 0C F1 */	bl sin_s
/* 80439E04  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80439E08  EC 00 00 72 */	fmuls f0, f0, f1
/* 80439E0C  FC 20 00 50 */	fneg f1, f0
lbl_80439E10:
/* 80439E10  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 80439E14  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 80439E18  C0 44 42 68 */	lfs f2, lit_527@l(r4)  /* 0x80644268@l */
/* 80439E1C  C0 83 42 6C */	lfs f4, lit_528@l(r3)  /* 0x8064426C@l */
/* 80439E20  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 80439E24  FC 60 10 90 */	fmr f3, f2
/* 80439E28  4B F8 13 89 */	bl add_calc
/* 80439E2C  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 80439E30  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80439E34  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80439E38  C0 43 42 68 */	lfs f2, lit_527@l(r3)  /* 0x80644268@l */
/* 80439E3C  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80439E40  EC 21 00 2A */	fadds f1, f1, f0
/* 80439E44  C0 7E 05 D4 */	lfs f3, 0x5d4(r30)
/* 80439E48  4B F8 14 4D */	bl add_calc2
/* 80439E4C  7F C3 F3 78 */	mr r3, r30
/* 80439E50  7F E4 FB 78 */	mr r4, r31
/* 80439E54  4B FF E3 C5 */	bl mfish_move_smooth
/* 80439E58  7F C4 F3 78 */	mr r4, r30
/* 80439E5C  7F E5 FB 78 */	mr r5, r31
/* 80439E60  38 61 00 08 */	addi r3, r1, 8
/* 80439E64  4B FF D9 41 */	bl mfish_get_flow_vec
/* 80439E68  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 80439E6C  3C 60 80 64 */	lis r3, lit_529@ha /* 0x80644270@ha */
/* 80439E70  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 80439E74  C0 5E 05 A0 */	lfs f2, 0x5a0(r30)
/* 80439E78  EC 01 00 2A */	fadds f0, f1, f0
/* 80439E7C  C0 63 42 70 */	lfs f3, lit_529@l(r3)  /* 0x80644270@l */
/* 80439E80  EC 02 00 2A */	fadds f0, f2, f0
/* 80439E84  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 80439E88  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80439E8C  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80439E90  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 80439E94  EC 01 00 2A */	fadds f0, f1, f0
/* 80439E98  EC 02 00 2A */	fadds f0, f2, f0
/* 80439E9C  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 80439EA0  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80439EA4  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80439EA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80439EAC  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80439EB0  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80439EB4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80439EB8  40 80 00 08 */	bge lbl_80439EC0
/* 80439EBC  48 00 00 08 */	b lbl_80439EC4
lbl_80439EC0:
/* 80439EC0  FC 60 08 90 */	fmr f3, f1
lbl_80439EC4:
/* 80439EC4  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 80439EC8  C0 03 42 74 */	lfs f0, lit_530@l(r3)  /* 0x80644274@l */
/* 80439ECC  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80439ED0  40 81 00 08 */	ble lbl_80439ED8
/* 80439ED4  48 00 00 1C */	b lbl_80439EF0
lbl_80439ED8:
/* 80439ED8  3C 60 80 64 */	lis r3, lit_529@ha /* 0x80644270@ha */
/* 80439EDC  C0 03 42 70 */	lfs f0, lit_529@l(r3)  /* 0x80644270@l */
/* 80439EE0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80439EE4  40 80 00 08 */	bge lbl_80439EEC
/* 80439EE8  48 00 00 08 */	b lbl_80439EF0
lbl_80439EEC:
/* 80439EEC  FC 00 08 90 */	fmr f0, f1
lbl_80439EF0:
/* 80439EF0  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80439EF4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80439EF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80439EFC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80439F00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80439F04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80439F08  7C 08 03 A6 */	mtlr r0
/* 80439F0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80439F10  4E 80 00 20 */	blr 
