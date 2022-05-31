lbl_804E2C1C:
/* 804E2C1C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804E2C20  7C 08 02 A6 */	mflr r0
/* 804E2C24  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804E2C28  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 804E2C2C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 804E2C30  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 804E2C34  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 804E2C38  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 804E2C3C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 804E2C40  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 804E2C44  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 804E2C48  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 804E2C4C  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 804E2C50  39 61 00 50 */	addi r11, r1, 0x50
/* 804E2C54  4B BB 82 81 */	bl func_8009AED4
/* 804E2C58  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E2C5C  7C 7F 1B 78 */	mr r31, r3
/* 804E2C60  C0 03 0D F8 */	lfs f0, 0xdf8(r3)
/* 804E2C64  C0 64 65 64 */	lfs f3, lit_603@l(r4)  /* 0x80646564@l */
/* 804E2C68  C3 DF 0A 20 */	lfs f30, 0xa20(r31)
/* 804E2C6C  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 804E2C70  40 82 04 34 */	bne lbl_804E30A4
/* 804E2C74  C0 1F 0A 28 */	lfs f0, 0xa28(r31)
/* 804E2C78  3C 60 80 65 */	lis r3, lit_6687@ha /* 0x806480BC@ha */
/* 804E2C7C  38 83 80 BC */	addi r4, r3, lit_6687@l /* 0x806480BC@l */
/* 804E2C80  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 804E2C84  EC 20 18 28 */	fsubs f1, f0, f3
/* 804E2C88  38 A3 F0 50 */	addi r5, r3, data_8065F050@l /* 0x8065F050@l */
/* 804E2C8C  C0 44 00 00 */	lfs f2, 0(r4)
/* 804E2C90  EC 1E 18 28 */	fsubs f0, f30, f3
/* 804E2C94  80 1F 11 8C */	lwz r0, 0x118c(r31)
/* 804E2C98  EC 22 00 72 */	fmuls f1, f2, f1
/* 804E2C9C  80 85 00 00 */	lwz r4, 0(r5)
/* 804E2CA0  2C 00 00 00 */	cmpwi r0, 0
/* 804E2CA4  80 65 00 04 */	lwz r3, 4(r5)
/* 804E2CA8  EF A1 00 24 */	fdivs f29, f1, f0
/* 804E2CAC  80 05 00 08 */	lwz r0, 8(r5)
/* 804E2CB0  90 81 00 24 */	stw r4, 0x24(r1)
/* 804E2CB4  90 61 00 28 */	stw r3, 0x28(r1)
/* 804E2CB8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804E2CBC  40 82 03 8C */	bne lbl_804E3048
/* 804E2CC0  AB DF 11 78 */	lha r30, 0x1178(r31)
/* 804E2CC4  AB BF 00 DE */	lha r29, 0xde(r31)
/* 804E2CC8  7F C3 F3 78 */	mr r3, r30
/* 804E2CCC  4B ED 7D D1 */	bl cos_s
/* 804E2CD0  80 9F 10 54 */	lwz r4, 0x1054(r31)
/* 804E2CD4  20 1E 40 00 */	subfic r0, r30, 0x4000
/* 804E2CD8  80 BF 10 50 */	lwz r5, 0x1050(r31)
/* 804E2CDC  7C 03 07 34 */	extsh r3, r0
/* 804E2CE0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804E2CE4  80 1F 10 58 */	lwz r0, 0x1058(r31)
/* 804E2CE8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804E2CEC  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 804E2CF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804E2CF4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804E2CF8  90 01 00 20 */	stw r0, 0x20(r1)
/* 804E2CFC  EC 02 00 28 */	fsubs f0, f2, f0
/* 804E2D00  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804E2D04  4B ED 7D 99 */	bl cos_s
/* 804E2D08  FF 60 08 90 */	fmr f27, f1
/* 804E2D0C  7F A3 EB 78 */	mr r3, r29
/* 804E2D10  4B ED 7D E1 */	bl sin_s
/* 804E2D14  FF 80 08 90 */	fmr f28, f1
/* 804E2D18  7F A3 EB 78 */	mr r3, r29
/* 804E2D1C  4B ED 7D 81 */	bl cos_s
/* 804E2D20  A8 DF 11 7E */	lha r6, 0x117e(r31)
/* 804E2D24  3C 00 43 30 */	lis r0, 0x4330
/* 804E2D28  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804E2D2C  3C 80 80 64 */	lis r4, lit_1627@ha /* 0x80646A54@ha */
/* 804E2D30  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 804E2D34  C3 E1 00 20 */	lfs f31, 0x20(r1)
/* 804E2D38  90 61 00 34 */	stw r3, 0x34(r1)
/* 804E2D3C  EC 9C 00 32 */	fmuls f4, f28, f0
/* 804E2D40  C8 44 6A 54 */	lfd f2, lit_1627@l(r4)  /* 0x80646A54@l */
/* 804E2D44  3C A0 80 65 */	lis r5, lit_6688@ha /* 0x806480C0@ha */
/* 804E2D48  90 01 00 30 */	stw r0, 0x30(r1)
/* 804E2D4C  EC 61 07 F2 */	fmuls f3, f1, f31
/* 804E2D50  C0 25 80 C0 */	lfs f1, lit_6688@l(r5)  /* 0x806480C0@l */
/* 804E2D54  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804E2D58  C0 BF 11 80 */	lfs f5, 0x1180(r31)
/* 804E2D5C  EC 00 10 28 */	fsubs f0, f0, f2
/* 804E2D60  EC 44 18 2A */	fadds f2, f4, f3
/* 804E2D64  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 804E2D68  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E2D6C  EC 22 06 F2 */	fmuls f1, f2, f27
/* 804E2D70  EC A5 00 28 */	fsubs f5, f5, f0
/* 804E2D74  EC 23 08 28 */	fsubs f1, f3, f1
/* 804E2D78  FC 00 28 1E */	fctiwz f0, f5
/* 804E2D7C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804E2D80  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804E2D84  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804E2D88  7C 06 02 14 */	add r0, r6, r0
/* 804E2D8C  7C 00 07 34 */	extsh r0, r0
/* 804E2D90  2C 00 08 00 */	cmpwi r0, 0x800
/* 804E2D94  40 81 00 0C */	ble lbl_804E2DA0
/* 804E2D98  38 00 08 00 */	li r0, 0x800
/* 804E2D9C  48 00 00 10 */	b lbl_804E2DAC
lbl_804E2DA0:
/* 804E2DA0  2C 00 F8 00 */	cmpwi r0, -2048
/* 804E2DA4  40 80 00 08 */	bge lbl_804E2DAC
/* 804E2DA8  38 00 F8 00 */	li r0, -2048
lbl_804E2DAC:
/* 804E2DAC  B0 1F 11 7E */	sth r0, 0x117e(r31)
/* 804E2DB0  7F A3 EB 78 */	mr r3, r29
/* 804E2DB4  D0 BF 11 80 */	stfs f5, 0x1180(r31)
/* 804E2DB8  4B ED 7D 39 */	bl sin_s
/* 804E2DBC  FF 80 08 90 */	fmr f28, f1
/* 804E2DC0  7F A3 EB 78 */	mr r3, r29
/* 804E2DC4  4B ED 7C D9 */	bl cos_s
/* 804E2DC8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804E2DCC  3C 60 80 65 */	lis r3, lit_6689@ha /* 0x806480C4@ha */
/* 804E2DD0  A8 DF 11 7A */	lha r6, 0x117a(r31)
/* 804E2DD4  EC 5C 00 32 */	fmuls f2, f28, f0
/* 804E2DD8  C0 63 80 C4 */	lfs f3, lit_6689@l(r3)  /* 0x806480C4@l */
/* 804E2DDC  EC 01 07 F2 */	fmuls f0, f1, f31
/* 804E2DE0  7C C0 07 35 */	extsh. r0, r6
/* 804E2DE4  7C A6 00 D0 */	neg r5, r6
/* 804E2DE8  EC 02 00 2A */	fadds f0, f2, f0
/* 804E2DEC  EC 03 00 32 */	fmuls f0, f3, f0
/* 804E2DF0  FC 00 00 1E */	fctiwz f0, f0
/* 804E2DF4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804E2DF8  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 804E2DFC  41 80 00 08 */	blt lbl_804E2E04
/* 804E2E00  7C C5 33 78 */	mr r5, r6
lbl_804E2E04:
/* 804E2E04  7C 80 07 35 */	extsh. r0, r4
/* 804E2E08  7C 80 07 34 */	extsh r0, r4
/* 804E2E0C  7C 60 00 D0 */	neg r3, r0
/* 804E2E10  41 80 00 08 */	blt lbl_804E2E18
/* 804E2E14  7C 03 03 78 */	mr r3, r0
lbl_804E2E18:
/* 804E2E18  7C 05 18 51 */	subf. r0, r5, r3
/* 804E2E1C  40 80 00 98 */	bge lbl_804E2EB4
/* 804E2E20  3C 60 80 65 */	lis r3, lit_6690@ha /* 0x806480CC@ha */
/* 804E2E24  3C A0 80 64 */	lis r5, lit_1027@ha /* 0x806469F4@ha */
/* 804E2E28  38 C3 80 CC */	addi r6, r3, lit_6690@l /* 0x806480CC@l */
/* 804E2E2C  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804E2E30  38 C5 69 F4 */	addi r6, r5, lit_1027@l /* 0x806469F4@l */
/* 804E2E34  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E2E38  C8 86 00 00 */	lfd f4, 0(r6)
/* 804E2E3C  FC 40 28 34 */	frsqrte f2, f5
/* 804E2E40  38 A3 69 FC */	addi r5, r3, lit_1028@l /* 0x806469FC@l */
/* 804E2E44  C8 65 00 00 */	lfd f3, 0(r5)
/* 804E2E48  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E2E4C  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804E2E50  38 7F 11 7A */	addi r3, r31, 0x117a
/* 804E2E54  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E2E58  38 A0 09 C4 */	li r5, 0x9c4
/* 804E2E5C  38 C0 00 00 */	li r6, 0
/* 804E2E60  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E2E64  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2E68  FC 23 08 28 */	fsub f1, f3, f1
/* 804E2E6C  FC 42 00 72 */	fmul f2, f2, f1
/* 804E2E70  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E2E74  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E2E78  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2E7C  FC 23 08 28 */	fsub f1, f3, f1
/* 804E2E80  FC 42 00 72 */	fmul f2, f2, f1
/* 804E2E84  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E2E88  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E2E8C  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2E90  FC 23 08 28 */	fsub f1, f3, f1
/* 804E2E94  FC 22 00 72 */	fmul f1, f2, f1
/* 804E2E98  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2E9C  FC 20 08 18 */	frsp f1, f1
/* 804E2EA0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804E2EA4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804E2EA8  EC 20 08 28 */	fsubs f1, f0, f1
/* 804E2EAC  4B ED 84 65 */	bl add_calc_short_angle2
/* 804E2EB0  48 00 00 94 */	b lbl_804E2F44
lbl_804E2EB4:
/* 804E2EB4  3C 60 80 65 */	lis r3, lit_6691@ha /* 0x806480D4@ha */
/* 804E2EB8  3C A0 80 64 */	lis r5, lit_1027@ha /* 0x806469F4@ha */
/* 804E2EBC  38 C3 80 D4 */	addi r6, r3, lit_6691@l /* 0x806480D4@l */
/* 804E2EC0  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804E2EC4  38 C5 69 F4 */	addi r6, r5, lit_1027@l /* 0x806469F4@l */
/* 804E2EC8  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E2ECC  C8 86 00 00 */	lfd f4, 0(r6)
/* 804E2ED0  FC 40 28 34 */	frsqrte f2, f5
/* 804E2ED4  38 A3 69 FC */	addi r5, r3, lit_1028@l /* 0x806469FC@l */
/* 804E2ED8  C8 65 00 00 */	lfd f3, 0(r5)
/* 804E2EDC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E2EE0  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804E2EE4  38 7F 11 7A */	addi r3, r31, 0x117a
/* 804E2EE8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E2EEC  38 A0 09 C4 */	li r5, 0x9c4
/* 804E2EF0  38 C0 00 00 */	li r6, 0
/* 804E2EF4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E2EF8  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2EFC  FC 23 08 28 */	fsub f1, f3, f1
/* 804E2F00  FC 42 00 72 */	fmul f2, f2, f1
/* 804E2F04  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E2F08  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E2F0C  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2F10  FC 23 08 28 */	fsub f1, f3, f1
/* 804E2F14  FC 42 00 72 */	fmul f2, f2, f1
/* 804E2F18  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E2F1C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E2F20  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2F24  FC 23 08 28 */	fsub f1, f3, f1
/* 804E2F28  FC 22 00 72 */	fmul f1, f2, f1
/* 804E2F2C  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2F30  FC 20 08 18 */	frsp f1, f1
/* 804E2F34  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804E2F38  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804E2F3C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804E2F40  4B ED 83 D1 */	bl add_calc_short_angle2
lbl_804E2F44:
/* 804E2F44  80 7F 0C F8 */	lwz r3, 0xcf8(r31)
/* 804E2F48  A8 1F 11 90 */	lha r0, 0x1190(r31)
/* 804E2F4C  2C 03 00 08 */	cmpwi r3, 8
/* 804E2F50  B0 01 00 08 */	sth r0, 8(r1)
/* 804E2F54  41 82 00 0C */	beq lbl_804E2F60
/* 804E2F58  2C 03 00 09 */	cmpwi r3, 9
/* 804E2F5C  40 82 00 50 */	bne lbl_804E2FAC
lbl_804E2F60:
/* 804E2F60  3C 60 80 65 */	lis r3, lit_6692@ha /* 0x806480DC@ha */
/* 804E2F64  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804E2F68  C0 23 80 DC */	lfs f1, lit_6692@l(r3)  /* 0x806480DC@l */
/* 804E2F6C  AB BF 11 92 */	lha r29, 0x1192(r31)
/* 804E2F70  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E2F74  FC 00 00 1E */	fctiwz f0, f0
/* 804E2F78  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804E2F7C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804E2F80  7F BD 02 14 */	add r29, r29, r0
/* 804E2F84  7F A3 EB 78 */	mr r3, r29
/* 804E2F88  4B ED 7B 69 */	bl sin_s
/* 804E2F8C  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 804E2F90  B3 BF 11 92 */	sth r29, 0x1192(r31)
/* 804E2F94  C0 03 66 74 */	lfs f0, lit_801@l(r3)  /* 0x80646674@l */
/* 804E2F98  EC 00 00 72 */	fmuls f0, f0, f1
/* 804E2F9C  FC 00 00 1E */	fctiwz f0, f0
/* 804E2FA0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804E2FA4  80 81 00 34 */	lwz r4, 0x34(r1)
/* 804E2FA8  48 00 00 08 */	b lbl_804E2FB0
lbl_804E2FAC:
/* 804E2FAC  38 80 00 00 */	li r4, 0
lbl_804E2FB0:
/* 804E2FB0  3C 60 80 65 */	lis r3, lit_6691@ha /* 0x806480D4@ha */
/* 804E2FB4  3C A0 80 64 */	lis r5, lit_1027@ha /* 0x806469F4@ha */
/* 804E2FB8  38 C3 80 D4 */	addi r6, r3, lit_6691@l /* 0x806480D4@l */
/* 804E2FBC  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804E2FC0  38 C5 69 F4 */	addi r6, r5, lit_1027@l /* 0x806469F4@l */
/* 804E2FC4  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E2FC8  C8 86 00 00 */	lfd f4, 0(r6)
/* 804E2FCC  FC 40 28 34 */	frsqrte f2, f5
/* 804E2FD0  38 A3 69 FC */	addi r5, r3, lit_1028@l /* 0x806469FC@l */
/* 804E2FD4  C8 65 00 00 */	lfd f3, 0(r5)
/* 804E2FD8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E2FDC  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804E2FE0  38 61 00 08 */	addi r3, r1, 8
/* 804E2FE4  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E2FE8  38 A0 09 C4 */	li r5, 0x9c4
/* 804E2FEC  38 C0 00 00 */	li r6, 0
/* 804E2FF0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E2FF4  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2FF8  FC 23 08 28 */	fsub f1, f3, f1
/* 804E2FFC  FC 42 00 72 */	fmul f2, f2, f1
/* 804E3000  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E3004  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E3008  FC 25 00 72 */	fmul f1, f5, f1
/* 804E300C  FC 23 08 28 */	fsub f1, f3, f1
/* 804E3010  FC 42 00 72 */	fmul f2, f2, f1
/* 804E3014  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E3018  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E301C  FC 25 00 72 */	fmul f1, f5, f1
/* 804E3020  FC 23 08 28 */	fsub f1, f3, f1
/* 804E3024  FC 22 00 72 */	fmul f1, f2, f1
/* 804E3028  FC 25 00 72 */	fmul f1, f5, f1
/* 804E302C  FC 20 08 18 */	frsp f1, f1
/* 804E3030  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804E3034  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804E3038  EC 20 08 28 */	fsubs f1, f0, f1
/* 804E303C  4B ED 82 D5 */	bl add_calc_short_angle2
/* 804E3040  A8 01 00 08 */	lha r0, 8(r1)
/* 804E3044  B0 1F 11 90 */	sth r0, 0x1190(r31)
lbl_804E3048:
/* 804E3048  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804E304C  3C 60 80 65 */	lis r3, lit_6693@ha /* 0x806480E0@ha */
/* 804E3050  EF BD 00 2A */	fadds f29, f29, f0
/* 804E3054  C0 03 80 E0 */	lfs f0, lit_6693@l(r3)  /* 0x806480E0@l */
/* 804E3058  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 804E305C  40 80 00 0C */	bge lbl_804E3068
/* 804E3060  FF A0 00 90 */	fmr f29, f0
/* 804E3064  48 00 00 18 */	b lbl_804E307C
lbl_804E3068:
/* 804E3068  3C 60 80 65 */	lis r3, lit_6687@ha /* 0x806480BC@ha */
/* 804E306C  C0 03 80 BC */	lfs f0, lit_6687@l(r3)  /* 0x806480BC@l */
/* 804E3070  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 804E3074  40 81 00 08 */	ble lbl_804E307C
/* 804E3078  FF A0 00 90 */	fmr f29, f0
lbl_804E307C:
/* 804E307C  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E3080  3C 60 80 65 */	lis r3, lit_6687@ha /* 0x806480BC@ha */
/* 804E3084  C0 44 65 64 */	lfs f2, lit_603@l(r4)  /* 0x80646564@l */
/* 804E3088  C0 03 80 BC */	lfs f0, lit_6687@l(r3)  /* 0x806480BC@l */
/* 804E308C  EC 3E 10 28 */	fsubs f1, f30, f2
/* 804E3090  EC 3D 00 72 */	fmuls f1, f29, f1
/* 804E3094  EC 01 00 24 */	fdivs f0, f1, f0
/* 804E3098  EC 02 00 2A */	fadds f0, f2, f0
/* 804E309C  D0 1F 0A 28 */	stfs f0, 0xa28(r31)
/* 804E30A0  48 00 00 0C */	b lbl_804E30AC
lbl_804E30A4:
/* 804E30A4  38 00 00 00 */	li r0, 0
/* 804E30A8  B0 1F 11 7E */	sth r0, 0x117e(r31)
lbl_804E30AC:
/* 804E30AC  3C 60 80 65 */	lis r3, lit_6694@ha /* 0x806480E4@ha */
/* 804E30B0  C0 5F 0A 28 */	lfs f2, 0xa28(r31)
/* 804E30B4  C0 03 80 E4 */	lfs f0, lit_6694@l(r3)  /* 0x806480E4@l */
/* 804E30B8  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 804E30BC  C0 3F 0A 24 */	lfs f1, 0xa24(r31)
/* 804E30C0  EC 60 07 B2 */	fmuls f3, f0, f30
/* 804E30C4  4C 41 13 82 */	cror 2, 1, 2
/* 804E30C8  40 82 00 10 */	bne lbl_804E30D8
/* 804E30CC  3C 60 80 65 */	lis r3, lit_6695@ha /* 0x806480E8@ha */
/* 804E30D0  C0 23 80 E8 */	lfs f1, lit_6695@l(r3)  /* 0x806480E8@l */
/* 804E30D4  48 00 00 38 */	b lbl_804E310C
lbl_804E30D8:
/* 804E30D8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E30DC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804E30E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E30E4  4C 40 13 82 */	cror 2, 0, 2
/* 804E30E8  40 82 00 18 */	bne lbl_804E3100
/* 804E30EC  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 804E30F0  4C 40 13 82 */	cror 2, 0, 2
/* 804E30F4  40 82 00 0C */	bne lbl_804E3100
/* 804E30F8  FC 20 00 90 */	fmr f1, f0
/* 804E30FC  48 00 00 10 */	b lbl_804E310C
lbl_804E3100:
/* 804E3100  3C 60 80 65 */	lis r3, lit_6696@ha /* 0x806480EC@ha */
/* 804E3104  C0 03 80 EC */	lfs f0, lit_6696@l(r3)  /* 0x806480EC@l */
/* 804E3108  EC 21 00 2A */	fadds f1, f1, f0
lbl_804E310C:
/* 804E310C  D0 3F 0A 24 */	stfs f1, 0xa24(r31)
/* 804E3110  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 804E3114  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 804E3118  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 804E311C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 804E3120  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 804E3124  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 804E3128  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 804E312C  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 804E3130  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 804E3134  39 61 00 50 */	addi r11, r1, 0x50
/* 804E3138  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 804E313C  4B BB 7D E5 */	bl func_8009AF20
/* 804E3140  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804E3144  7C 08 03 A6 */	mtlr r0
/* 804E3148  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804E314C  4E 80 00 20 */	blr 
