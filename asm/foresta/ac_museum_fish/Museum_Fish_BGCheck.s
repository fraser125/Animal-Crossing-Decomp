lbl_80435C90:
/* 80435C90  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80435C94  7C 08 02 A6 */	mflr r0
/* 80435C98  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80435C9C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80435CA0  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80435CA4  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80435CA8  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80435CAC  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80435CB0  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 80435CB4  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 80435CB8  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 80435CBC  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 80435CC0  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 80435CC4  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 80435CC8  F3 41 00 68 */	psq_st f26, 104(r1), 0, 0 /* qr0 */
/* 80435CCC  DB 21 00 50 */	stfd f25, 0x50(r1)
/* 80435CD0  F3 21 00 58 */	psq_st f25, 88(r1), 0, 0 /* qr0 */
/* 80435CD4  DB 01 00 40 */	stfd f24, 0x40(r1)
/* 80435CD8  F3 01 00 48 */	psq_st f24, 72(r1), 0, 0 /* qr0 */
/* 80435CDC  39 61 00 40 */	addi r11, r1, 0x40
/* 80435CE0  4B C6 51 F5 */	bl func_8009AED4
/* 80435CE4  7C 7D 1B 78 */	mr r29, r3
/* 80435CE8  3C 60 80 68 */	lis r3, suisou_pos@ha /* 0x80684E7C@ha */
/* 80435CEC  A8 1D 06 30 */	lha r0, 0x630(r29)
/* 80435CF0  38 63 4E 7C */	addi r3, r3, suisou_pos@l /* 0x80684E7C@l */
/* 80435CF4  A8 DD 06 24 */	lha r6, 0x624(r29)
/* 80435CF8  7C 9E 23 78 */	mr r30, r4
/* 80435CFC  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80435D00  3B E0 00 00 */	li r31, 0
/* 80435D04  7C C0 07 35 */	extsh. r0, r6
/* 80435D08  7C A3 22 14 */	add r5, r3, r4
/* 80435D0C  80 85 00 00 */	lwz r4, 0(r5)
/* 80435D10  80 65 00 04 */	lwz r3, 4(r5)
/* 80435D14  80 05 00 08 */	lwz r0, 8(r5)
/* 80435D18  90 81 00 08 */	stw r4, 8(r1)
/* 80435D1C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80435D20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80435D24  41 82 00 1C */	beq lbl_80435D40
/* 80435D28  2C 06 00 0B */	cmpwi r6, 0xb
/* 80435D2C  41 82 00 14 */	beq lbl_80435D40
/* 80435D30  2C 06 00 01 */	cmpwi r6, 1
/* 80435D34  41 82 00 0C */	beq lbl_80435D40
/* 80435D38  2C 06 00 02 */	cmpwi r6, 2
/* 80435D3C  40 82 01 E4 */	bne lbl_80435F20
lbl_80435D40:
/* 80435D40  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80435D44  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80435D48  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80435D4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80435D50  40 80 01 D0 */	bge lbl_80435F20
/* 80435D54  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80435D58  4B F8 4D 45 */	bl cos_s
/* 80435D5C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80435D60  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80435D64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80435D68  4C 41 13 82 */	cror 2, 1, 2
/* 80435D6C  40 82 00 14 */	bne lbl_80435D80
/* 80435D70  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80435D74  4B F8 4D 29 */	bl cos_s
/* 80435D78  FF 20 08 90 */	fmr f25, f1
/* 80435D7C  48 00 00 10 */	b lbl_80435D8C
lbl_80435D80:
/* 80435D80  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80435D84  4B F8 4D 19 */	bl cos_s
/* 80435D88  FF 20 08 50 */	fneg f25, f1
lbl_80435D8C:
/* 80435D8C  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 80435D90  4B F8 4D 61 */	bl sin_s
/* 80435D94  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80435D98  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80435D9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80435DA0  4C 41 13 82 */	cror 2, 1, 2
/* 80435DA4  40 82 00 10 */	bne lbl_80435DB4
/* 80435DA8  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 80435DAC  4B F8 4D 45 */	bl sin_s
/* 80435DB0  48 00 00 10 */	b lbl_80435DC0
lbl_80435DB4:
/* 80435DB4  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 80435DB8  4B F8 4D 39 */	bl sin_s
/* 80435DBC  FC 20 08 50 */	fneg f1, f1
lbl_80435DC0:
/* 80435DC0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80435DC4  3C 00 43 30 */	lis r0, 0x4330
/* 80435DC8  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80435DCC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80435DD0  80 A4 00 00 */	lwz r5, 0(r4)
/* 80435DD4  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80435DD8  38 E3 42 8C */	addi r7, r3, lit_570@l /* 0x8064428C@l */
/* 80435DDC  3C 80 80 64 */	lis r4, lit_838@ha /* 0x806442D0@ha */
/* 80435DE0  A8 A5 1B B8 */	lha r5, 0x1bb8(r5)
/* 80435DE4  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80435DE8  39 03 42 C4 */	addi r8, r3, lit_793@l /* 0x806442C4@l */
/* 80435DEC  C8 87 00 00 */	lfd f4, 0(r7)
/* 80435DF0  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 80435DF4  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80435DF8  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80435DFC  3C A0 80 64 */	lis r5, lit_1071@ha /* 0x80644314@ha */
/* 80435E00  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 80435E04  C8 61 00 18 */	lfd f3, 0x18(r1)
/* 80435E08  EC 02 06 72 */	fmuls f0, f2, f25
/* 80435E0C  C0 C8 00 00 */	lfs f6, 0(r8)
/* 80435E10  EC A3 20 28 */	fsubs f5, f3, f4
/* 80435E14  C0 64 42 D0 */	lfs f3, lit_838@l(r4)  /* 0x806442D0@l */
/* 80435E18  C0 85 43 14 */	lfs f4, lit_1071@l(r5)  /* 0x80644314@l */
/* 80435E1C  EC 02 00 2A */	fadds f0, f2, f0
/* 80435E20  EC A6 01 72 */	fmuls f5, f6, f5
/* 80435E24  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80435E28  EC 43 28 28 */	fsubs f2, f3, f5
/* 80435E2C  EC 64 28 2A */	fadds f3, f4, f5
/* 80435E30  EC 22 00 72 */	fmuls f1, f2, f1
/* 80435E34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80435E38  EF 43 00 2A */	fadds f26, f3, f0
/* 80435E3C  4B F8 4C 61 */	bl cos_s
/* 80435E40  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80435E44  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80435E48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80435E4C  4C 41 13 82 */	cror 2, 1, 2
/* 80435E50  40 82 00 14 */	bne lbl_80435E64
/* 80435E54  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80435E58  4B F8 4C 45 */	bl cos_s
/* 80435E5C  FF 20 08 90 */	fmr f25, f1
/* 80435E60  48 00 00 10 */	b lbl_80435E70
lbl_80435E64:
/* 80435E64  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80435E68  4B F8 4C 35 */	bl cos_s
/* 80435E6C  FF 20 08 50 */	fneg f25, f1
lbl_80435E70:
/* 80435E70  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 80435E74  4B F8 4C 29 */	bl cos_s
/* 80435E78  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80435E7C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80435E80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80435E84  4C 41 13 82 */	cror 2, 1, 2
/* 80435E88  40 82 00 10 */	bne lbl_80435E98
/* 80435E8C  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 80435E90  4B F8 4C 0D */	bl cos_s
/* 80435E94  48 00 00 10 */	b lbl_80435EA4
lbl_80435E98:
/* 80435E98  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 80435E9C  4B F8 4C 01 */	bl cos_s
/* 80435EA0  FC 20 08 50 */	fneg f1, f1
lbl_80435EA4:
/* 80435EA4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80435EA8  3C 00 43 30 */	lis r0, 0x4330
/* 80435EAC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80435EB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80435EB4  80 A4 00 00 */	lwz r5, 0(r4)
/* 80435EB8  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80435EBC  38 E3 42 8C */	addi r7, r3, lit_570@l /* 0x8064428C@l */
/* 80435EC0  3C 80 80 64 */	lis r4, lit_838@ha /* 0x806442D0@ha */
/* 80435EC4  A8 A5 1B B8 */	lha r5, 0x1bb8(r5)
/* 80435EC8  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80435ECC  39 03 42 C4 */	addi r8, r3, lit_793@l /* 0x806442C4@l */
/* 80435ED0  C8 87 00 00 */	lfd f4, 0(r7)
/* 80435ED4  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 80435ED8  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80435EDC  90 C1 00 24 */	stw r6, 0x24(r1)
/* 80435EE0  3C A0 80 64 */	lis r5, lit_1071@ha /* 0x80644314@ha */
/* 80435EE4  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 80435EE8  C8 61 00 20 */	lfd f3, 0x20(r1)
/* 80435EEC  EC 02 06 72 */	fmuls f0, f2, f25
/* 80435EF0  C0 C8 00 00 */	lfs f6, 0(r8)
/* 80435EF4  EC A3 20 28 */	fsubs f5, f3, f4
/* 80435EF8  C0 64 42 D0 */	lfs f3, lit_838@l(r4)  /* 0x806442D0@l */
/* 80435EFC  C0 85 43 14 */	lfs f4, lit_1071@l(r5)  /* 0x80644314@l */
/* 80435F00  EC 02 00 2A */	fadds f0, f2, f0
/* 80435F04  EC A6 01 72 */	fmuls f5, f6, f5
/* 80435F08  EC 43 28 28 */	fsubs f2, f3, f5
/* 80435F0C  EC 64 28 2A */	fadds f3, f4, f5
/* 80435F10  EC 22 00 72 */	fmuls f1, f2, f1
/* 80435F14  EC 01 00 32 */	fmuls f0, f1, f0
/* 80435F18  EF 23 00 2A */	fadds f25, f3, f0
/* 80435F1C  48 00 01 DC */	b lbl_804360F8
lbl_80435F20:
/* 80435F20  2C 06 00 0A */	cmpwi r6, 0xa
/* 80435F24  41 82 00 14 */	beq lbl_80435F38
/* 80435F28  2C 06 00 07 */	cmpwi r6, 7
/* 80435F2C  41 82 00 0C */	beq lbl_80435F38
/* 80435F30  2C 06 00 09 */	cmpwi r6, 9
/* 80435F34  40 82 01 B8 */	bne lbl_804360EC
lbl_80435F38:
/* 80435F38  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80435F3C  4B F8 4B 61 */	bl cos_s
/* 80435F40  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80435F44  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80435F48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80435F4C  4C 41 13 82 */	cror 2, 1, 2
/* 80435F50  40 82 00 14 */	bne lbl_80435F64
/* 80435F54  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80435F58  4B F8 4B 45 */	bl cos_s
/* 80435F5C  FF 20 08 90 */	fmr f25, f1
/* 80435F60  48 00 00 10 */	b lbl_80435F70
lbl_80435F64:
/* 80435F64  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80435F68  4B F8 4B 35 */	bl cos_s
/* 80435F6C  FF 20 08 50 */	fneg f25, f1
lbl_80435F70:
/* 80435F70  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 80435F74  4B F8 4B 7D */	bl sin_s
/* 80435F78  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80435F7C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80435F80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80435F84  4C 41 13 82 */	cror 2, 1, 2
/* 80435F88  40 82 00 10 */	bne lbl_80435F98
/* 80435F8C  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 80435F90  4B F8 4B 61 */	bl sin_s
/* 80435F94  48 00 00 10 */	b lbl_80435FA4
lbl_80435F98:
/* 80435F98  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 80435F9C  4B F8 4B 55 */	bl sin_s
/* 80435FA0  FC 20 08 50 */	fneg f1, f1
lbl_80435FA4:
/* 80435FA4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80435FA8  3C 00 43 30 */	lis r0, 0x4330
/* 80435FAC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80435FB0  3C E0 80 64 */	lis r7, lit_793@ha /* 0x806442C4@ha */
/* 80435FB4  80 84 00 00 */	lwz r4, 0(r4)
/* 80435FB8  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80435FBC  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 80435FC0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80435FC4  A8 A4 1B B8 */	lha r5, 0x1bb8(r4)
/* 80435FC8  3C 60 80 64 */	lis r3, lit_1067@ha /* 0x80644304@ha */
/* 80435FCC  C0 43 43 04 */	lfs f2, lit_1067@l(r3)  /* 0x80644304@l */
/* 80435FD0  3C 80 80 64 */	lis r4, lit_1146@ha /* 0x8064432C@ha */
/* 80435FD4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80435FD8  C8 A6 00 00 */	lfd f5, 0(r6)
/* 80435FDC  90 A1 00 24 */	stw r5, 0x24(r1)
/* 80435FE0  EC 02 06 72 */	fmuls f0, f2, f25
/* 80435FE4  C0 64 43 2C */	lfs f3, lit_1146@l(r4)  /* 0x8064432C@l */
/* 80435FE8  C8 81 00 20 */	lfd f4, 0x20(r1)
/* 80435FEC  C0 C7 42 C4 */	lfs f6, lit_793@l(r7)  /* 0x806442C4@l */
/* 80435FF0  EC 03 00 2A */	fadds f0, f3, f0
/* 80435FF4  EC 84 28 28 */	fsubs f4, f4, f5
/* 80435FF8  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80435FFC  EC 86 01 32 */	fmuls f4, f6, f4
/* 80436000  EC 42 20 28 */	fsubs f2, f2, f4
/* 80436004  EC 63 20 2A */	fadds f3, f3, f4
/* 80436008  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043600C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80436010  EF 43 00 2A */	fadds f26, f3, f0
/* 80436014  4B F8 4A 89 */	bl cos_s
/* 80436018  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043601C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80436020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80436024  4C 41 13 82 */	cror 2, 1, 2
/* 80436028  40 82 00 14 */	bne lbl_8043603C
/* 8043602C  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80436030  4B F8 4A 6D */	bl cos_s
/* 80436034  FF 20 08 90 */	fmr f25, f1
/* 80436038  48 00 00 10 */	b lbl_80436048
lbl_8043603C:
/* 8043603C  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 80436040  4B F8 4A 5D */	bl cos_s
/* 80436044  FF 20 08 50 */	fneg f25, f1
lbl_80436048:
/* 80436048  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 8043604C  4B F8 4A 51 */	bl cos_s
/* 80436050  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80436054  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80436058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043605C  4C 41 13 82 */	cror 2, 1, 2
/* 80436060  40 82 00 10 */	bne lbl_80436070
/* 80436064  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 80436068  4B F8 4A 35 */	bl cos_s
/* 8043606C  48 00 00 10 */	b lbl_8043607C
lbl_80436070:
/* 80436070  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 80436074  4B F8 4A 29 */	bl cos_s
/* 80436078  FC 20 08 50 */	fneg f1, f1
lbl_8043607C:
/* 8043607C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80436080  3C 00 43 30 */	lis r0, 0x4330
/* 80436084  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80436088  3C E0 80 64 */	lis r7, lit_793@ha /* 0x806442C4@ha */
/* 8043608C  80 84 00 00 */	lwz r4, 0(r4)
/* 80436090  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80436094  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 80436098  90 01 00 18 */	stw r0, 0x18(r1)
/* 8043609C  A8 A4 1B B8 */	lha r5, 0x1bb8(r4)
/* 804360A0  3C 60 80 64 */	lis r3, lit_1067@ha /* 0x80644304@ha */
/* 804360A4  C0 43 43 04 */	lfs f2, lit_1067@l(r3)  /* 0x80644304@l */
/* 804360A8  3C 80 80 64 */	lis r4, lit_1146@ha /* 0x8064432C@ha */
/* 804360AC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 804360B0  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804360B4  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 804360B8  EC 02 06 72 */	fmuls f0, f2, f25
/* 804360BC  C0 64 43 2C */	lfs f3, lit_1146@l(r4)  /* 0x8064432C@l */
/* 804360C0  C8 81 00 18 */	lfd f4, 0x18(r1)
/* 804360C4  C0 C7 42 C4 */	lfs f6, lit_793@l(r7)  /* 0x806442C4@l */
/* 804360C8  EC 03 00 2A */	fadds f0, f3, f0
/* 804360CC  EC 84 28 28 */	fsubs f4, f4, f5
/* 804360D0  EC 86 01 32 */	fmuls f4, f6, f4
/* 804360D4  EC 42 20 28 */	fsubs f2, f2, f4
/* 804360D8  EC 63 20 2A */	fadds f3, f3, f4
/* 804360DC  EC 22 00 72 */	fmuls f1, f2, f1
/* 804360E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804360E4  EF 23 00 2A */	fadds f25, f3, f0
/* 804360E8  48 00 00 10 */	b lbl_804360F8
lbl_804360EC:
/* 804360EC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 804360F0  C3 43 42 60 */	lfs f26, lit_472@l(r3)  /* 0x80644260@l */
/* 804360F4  FF 20 D0 90 */	fmr f25, f26
lbl_804360F8:
/* 804360F8  A8 1D 06 30 */	lha r0, 0x630(r29)
/* 804360FC  2C 00 00 04 */	cmpwi r0, 4
/* 80436100  40 80 00 34 */	bge lbl_80436134
/* 80436104  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80436108  3C 60 80 64 */	lis r3, lit_9352@ha /* 0x80644530@ha */
/* 8043610C  C0 43 45 30 */	lfs f2, lit_9352@l(r3)  /* 0x80644530@l */
/* 80436110  EC 20 06 B2 */	fmuls f1, f0, f26
/* 80436114  EC 00 06 72 */	fmuls f0, f0, f25
/* 80436118  EC 22 08 2A */	fadds f1, f2, f1
/* 8043611C  EC 02 00 2A */	fadds f0, f2, f0
/* 80436120  FF C0 08 90 */	fmr f30, f1
/* 80436124  FF A0 08 90 */	fmr f29, f1
/* 80436128  FF 80 00 90 */	fmr f28, f0
/* 8043612C  FF 60 00 90 */	fmr f27, f0
/* 80436130  48 00 00 D0 */	b lbl_80436200
lbl_80436134:
/* 80436134  C0 3D 05 B8 */	lfs f1, 0x5b8(r29)
/* 80436138  3C 60 80 64 */	lis r3, lit_9355@ha /* 0x8064453C@ha */
/* 8043613C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80436140  38 83 45 3C */	addi r4, r3, lit_9355@l /* 0x8064453C@l */
/* 80436144  C0 9D 00 28 */	lfs f4, 0x28(r29)
/* 80436148  3C 60 80 64 */	lis r3, lit_556@ha /* 0x8064427C@ha */
/* 8043614C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80436150  C0 24 00 00 */	lfs f1, 0(r4)
/* 80436154  3C 80 80 64 */	lis r4, lit_9353@ha /* 0x80644534@ha */
/* 80436158  EC 64 06 B2 */	fmuls f3, f4, f26
/* 8043615C  38 A4 45 34 */	addi r5, r4, lit_9353@l /* 0x80644534@l */
/* 80436160  EC 84 06 72 */	fmuls f4, f4, f25
/* 80436164  EC 21 00 32 */	fmuls f1, f1, f0
/* 80436168  C0 03 42 7C */	lfs f0, lit_556@l(r3)  /* 0x8064427C@l */
/* 8043616C  3C 80 80 64 */	lis r4, lit_9354@ha /* 0x80644538@ha */
/* 80436170  3C 60 80 64 */	lis r3, lit_3229@ha /* 0x806443B4@ha */
/* 80436174  C0 44 45 38 */	lfs f2, lit_9354@l(r4)  /* 0x80644538@l */
/* 80436178  EF E1 00 24 */	fdivs f31, f1, f0
/* 8043617C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80436180  C0 23 43 B4 */	lfs f1, lit_3229@l(r3)  /* 0x806443B4@l */
/* 80436184  EC 60 18 2A */	fadds f3, f0, f3
/* 80436188  FC 00 F8 1E */	fctiwz f0, f31
/* 8043618C  EF 82 20 2A */	fadds f28, f2, f4
/* 80436190  FF C0 18 90 */	fmr f30, f3
/* 80436194  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80436198  FF A0 18 90 */	fmr f29, f3
/* 8043619C  EF 61 20 2A */	fadds f27, f1, f4
/* 804361A0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 804361A4  4B F8 48 F9 */	bl cos_s
/* 804361A8  3C 60 80 64 */	lis r3, lit_3706@ha /* 0x806443D4@ha */
/* 804361AC  FC 00 F8 1E */	fctiwz f0, f31
/* 804361B0  38 83 43 D4 */	addi r4, r3, lit_3706@l /* 0x806443D4@l */
/* 804361B4  C0 44 00 00 */	lfs f2, 0(r4)
/* 804361B8  3C 60 80 64 */	lis r3, lit_9356@ha /* 0x80644540@ha */
/* 804361BC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804361C0  EC 22 00 72 */	fmuls f1, f2, f1
/* 804361C4  C0 03 45 40 */	lfs f0, lit_9356@l(r3)  /* 0x80644540@l */
/* 804361C8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 804361CC  EF 7B 08 2A */	fadds f27, f27, f1
/* 804361D0  EF 7B 00 2A */	fadds f27, f27, f0
/* 804361D4  4B F8 49 1D */	bl sin_s
/* 804361D8  3C 80 80 64 */	lis r4, lit_976@ha /* 0x806442F4@ha */
/* 804361DC  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 804361E0  C0 44 42 F4 */	lfs f2, lit_976@l(r4)  /* 0x806442F4@l */
/* 804361E4  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 804361E8  EC 22 00 72 */	fmuls f1, f2, f1
/* 804361EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 804361F0  FC 00 00 1E */	fctiwz f0, f0
/* 804361F4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804361F8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804361FC  7C 1F 07 34 */	extsh r31, r0
lbl_80436200:
/* 80436200  A8 BD 06 2E */	lha r5, 0x62e(r29)
/* 80436204  38 00 00 00 */	li r0, 0
/* 80436208  7F A3 EB 78 */	mr r3, r29
/* 8043620C  7F C4 F3 78 */	mr r4, r30
/* 80436210  54 A5 07 F4 */	rlwinm r5, r5, 0, 0x1f, 0x1a
/* 80436214  B0 BD 06 2E */	sth r5, 0x62e(r29)
/* 80436218  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 8043621C  4B FF F9 FD */	bl Museum_Fish_objchk_pos_set
/* 80436220  C0 01 00 08 */	lfs f0, 8(r1)
/* 80436224  C0 3D 05 B8 */	lfs f1, 0x5b8(r29)
/* 80436228  EF E0 F0 2A */	fadds f31, f0, f30
/* 8043622C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80436230  40 81 00 24 */	ble lbl_80436254
/* 80436234  EC 1F 08 28 */	fsubs f0, f31, f1
/* 80436238  C0 3D 05 A0 */	lfs f1, 0x5a0(r29)
/* 8043623C  EC 01 00 2A */	fadds f0, f1, f0
/* 80436240  D0 1D 05 A0 */	stfs f0, 0x5a0(r29)
/* 80436244  A8 1D 06 2E */	lha r0, 0x62e(r29)
/* 80436248  60 00 00 04 */	ori r0, r0, 4
/* 8043624C  B0 1D 06 2E */	sth r0, 0x62e(r29)
/* 80436250  48 00 00 2C */	b lbl_8043627C
lbl_80436254:
/* 80436254  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80436258  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043625C  40 80 00 20 */	bge lbl_8043627C
/* 80436260  EC 00 08 28 */	fsubs f0, f0, f1
/* 80436264  C0 3D 05 A0 */	lfs f1, 0x5a0(r29)
/* 80436268  EC 01 00 2A */	fadds f0, f1, f0
/* 8043626C  D0 1D 05 A0 */	stfs f0, 0x5a0(r29)
/* 80436270  A8 1D 06 2E */	lha r0, 0x62e(r29)
/* 80436274  60 00 00 02 */	ori r0, r0, 2
/* 80436278  B0 1D 06 2E */	sth r0, 0x62e(r29)
lbl_8043627C:
/* 8043627C  C3 01 00 10 */	lfs f24, 0x10(r1)
/* 80436280  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 80436284  EF D8 E0 2A */	fadds f30, f24, f28
/* 80436288  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8043628C  40 81 00 24 */	ble lbl_804362B0
/* 80436290  EC 1E 00 28 */	fsubs f0, f30, f0
/* 80436294  C0 3D 05 A8 */	lfs f1, 0x5a8(r29)
/* 80436298  EC 01 00 2A */	fadds f0, f1, f0
/* 8043629C  D0 1D 05 A8 */	stfs f0, 0x5a8(r29)
/* 804362A0  A8 1D 06 2E */	lha r0, 0x62e(r29)
/* 804362A4  60 00 00 10 */	ori r0, r0, 0x10
/* 804362A8  B0 1D 06 2E */	sth r0, 0x62e(r29)
/* 804362AC  48 00 00 2C */	b lbl_804362D8
lbl_804362B0:
/* 804362B0  EC 38 D8 28 */	fsubs f1, f24, f27
/* 804362B4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804362B8  40 80 00 20 */	bge lbl_804362D8
/* 804362BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804362C0  C0 3D 05 A8 */	lfs f1, 0x5a8(r29)
/* 804362C4  EC 01 00 2A */	fadds f0, f1, f0
/* 804362C8  D0 1D 05 A8 */	stfs f0, 0x5a8(r29)
/* 804362CC  A8 1D 06 2E */	lha r0, 0x62e(r29)
/* 804362D0  60 00 00 08 */	ori r0, r0, 8
/* 804362D4  B0 1D 06 2E */	sth r0, 0x62e(r29)
lbl_804362D8:
/* 804362D8  7F A3 EB 78 */	mr r3, r29
/* 804362DC  7F C4 F3 78 */	mr r4, r30
/* 804362E0  4B FF F9 39 */	bl Museum_Fish_objchk_pos_set
/* 804362E4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804362E8  EC 18 D8 28 */	fsubs f0, f24, f27
/* 804362EC  C0 5D 05 B8 */	lfs f2, 0x5b8(r29)
/* 804362F0  EC 21 E8 28 */	fsubs f1, f1, f29
/* 804362F4  EC 22 08 28 */	fsubs f1, f2, f1
/* 804362F8  D0 3D 05 FC */	stfs f1, 0x5fc(r29)
/* 804362FC  C0 3D 05 B8 */	lfs f1, 0x5b8(r29)
/* 80436300  EC 3F 08 28 */	fsubs f1, f31, f1
/* 80436304  D0 3D 06 00 */	stfs f1, 0x600(r29)
/* 80436308  C0 3D 05 C0 */	lfs f1, 0x5c0(r29)
/* 8043630C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80436310  D0 1D 06 04 */	stfs f0, 0x604(r29)
/* 80436314  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 80436318  EC 1E 00 28 */	fsubs f0, f30, f0
/* 8043631C  D0 1D 06 08 */	stfs f0, 0x608(r29)
/* 80436320  A8 1D 06 30 */	lha r0, 0x630(r29)
/* 80436324  2C 00 00 04 */	cmpwi r0, 4
/* 80436328  40 80 00 24 */	bge lbl_8043634C
/* 8043632C  80 1D 05 9C */	lwz r0, 0x59c(r29)
/* 80436330  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80436334  41 82 00 18 */	beq lbl_8043634C
/* 80436338  FC 20 D0 90 */	fmr f1, f26
/* 8043633C  7F A3 EB 78 */	mr r3, r29
/* 80436340  FC 40 C8 90 */	fmr f2, f25
/* 80436344  7F C4 F3 78 */	mr r4, r30
/* 80436348  4B FF ED A5 */	bl Museum_Fish_ObjBGCheck
lbl_8043634C:
/* 8043634C  A8 7D 06 2E */	lha r3, 0x62e(r29)
/* 80436350  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80436354  41 82 00 10 */	beq lbl_80436364
/* 80436358  38 00 C0 00 */	li r0, -16384
/* 8043635C  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 80436360  48 00 00 14 */	b lbl_80436374
lbl_80436364:
/* 80436364  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80436368  41 82 00 0C */	beq lbl_80436374
/* 8043636C  38 00 40 00 */	li r0, 0x4000
/* 80436370  B0 1D 06 2C */	sth r0, 0x62c(r29)
lbl_80436374:
/* 80436374  A8 7D 06 2E */	lha r3, 0x62e(r29)
/* 80436378  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8043637C  41 82 00 44 */	beq lbl_804363C0
/* 80436380  54 60 07 7D */	rlwinm. r0, r3, 0, 0x1d, 0x1e
/* 80436384  41 82 00 2C */	beq lbl_804363B0
/* 80436388  A8 9D 06 2C */	lha r4, 0x62c(r29)
/* 8043638C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80436390  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 80436394  7F E0 07 34 */	extsh r0, r31
/* 80436398  7C 84 0E 70 */	srawi r4, r4, 1
/* 8043639C  7C 64 18 50 */	subf r3, r4, r3
/* 804363A0  7C 00 0E 70 */	srawi r0, r0, 1
/* 804363A4  7C 03 02 14 */	add r0, r3, r0
/* 804363A8  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 804363AC  48 00 00 3C */	b lbl_804363E8
lbl_804363B0:
/* 804363B0  3C 7F 00 01 */	addis r3, r31, 1
/* 804363B4  38 03 80 00 */	addi r0, r3, -32768
/* 804363B8  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 804363BC  48 00 00 2C */	b lbl_804363E8
lbl_804363C0:
/* 804363C0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804363C4  41 82 00 24 */	beq lbl_804363E8
/* 804363C8  54 60 07 7D */	rlwinm. r0, r3, 0, 0x1d, 0x1e
/* 804363CC  41 82 00 14 */	beq lbl_804363E0
/* 804363D0  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 804363D4  7C 00 0E 70 */	srawi r0, r0, 1
/* 804363D8  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 804363DC  48 00 00 0C */	b lbl_804363E8
lbl_804363E0:
/* 804363E0  38 00 00 00 */	li r0, 0
/* 804363E4  B0 1D 06 2C */	sth r0, 0x62c(r29)
lbl_804363E8:
/* 804363E8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 804363EC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 804363F0  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 804363F4  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 804363F8  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 804363FC  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80436400  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 80436404  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 80436408  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 8043640C  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 80436410  E3 41 00 68 */	psq_l f26, 104(r1), 0, 0 /* qr0 */
/* 80436414  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 80436418  E3 21 00 58 */	psq_l f25, 88(r1), 0, 0 /* qr0 */
/* 8043641C  CB 21 00 50 */	lfd f25, 0x50(r1)
/* 80436420  E3 01 00 48 */	psq_l f24, 72(r1), 0, 0 /* qr0 */
/* 80436424  39 61 00 40 */	addi r11, r1, 0x40
/* 80436428  CB 01 00 40 */	lfd f24, 0x40(r1)
/* 8043642C  4B C6 4A F5 */	bl func_8009AF20
/* 80436430  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80436434  7C 08 03 A6 */	mtlr r0
/* 80436438  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8043643C  4E 80 00 20 */	blr 
