lbl_80388D98:
/* 80388D98  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80388D9C  7C 08 02 A6 */	mflr r0
/* 80388DA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80388DA4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80388DA8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80388DAC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80388DB0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80388DB4  7C 7E 1B 78 */	mr r30, r3
/* 80388DB8  7C 9F 23 78 */	mr r31, r4
/* 80388DBC  48 00 B5 6D */	bl mCoBG_WaveCos
/* 80388DC0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80388DC4  3C 60 80 64 */	lis r3, lit_522@ha /* 0x806419B0@ha */
/* 80388DC8  C0 43 19 B0 */	lfs f2, lit_522@l(r3)  /* 0x806419B0@l */
/* 80388DCC  3C 80 80 64 */	lis r4, lit_862@ha /* 0x80641A00@ha */
/* 80388DD0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80388DD4  38 A4 1A 00 */	addi r5, r4, lit_862@l /* 0x80641A00@l */
/* 80388DD8  EC 22 08 2A */	fadds f1, f2, f1
/* 80388DDC  C0 45 00 00 */	lfs f2, 0(r5)
/* 80388DE0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80388DE4  38 61 00 28 */	addi r3, r1, 0x28
/* 80388DE8  38 81 00 20 */	addi r4, r1, 0x20
/* 80388DEC  38 A1 00 18 */	addi r5, r1, 0x18
/* 80388DF0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80388DF4  EF E2 00 72 */	fmuls f31, f2, f1
/* 80388DF8  38 C1 00 10 */	addi r6, r1, 0x10
/* 80388DFC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80388E00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80388E04  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80388E08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80388E0C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80388E10  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80388E14  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80388E18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80388E1C  48 00 1C FD */	bl mCoBG_GetCrossLineAndPerpendicular
/* 80388E20  2C 03 00 00 */	cmpwi r3, 0
/* 80388E24  41 82 01 C4 */	beq lbl_80388FE8
/* 80388E28  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80388E2C  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 80388E30  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80388E34  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80388E38  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80388E3C  EC 63 08 28 */	fsubs f3, f3, f1
/* 80388E40  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 80388E44  EC 02 00 28 */	fsubs f0, f2, f0
/* 80388E48  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80388E4C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80388E50  EC 02 00 2A */	fadds f0, f2, f0
/* 80388E54  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80388E58  40 81 00 68 */	ble lbl_80388EC0
/* 80388E5C  FC 40 00 34 */	frsqrte f2, f0
/* 80388E60  3C 60 80 64 */	lis r3, lit_587@ha /* 0x806419B4@ha */
/* 80388E64  38 83 19 B4 */	addi r4, r3, lit_587@l /* 0x806419B4@l */
/* 80388E68  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806419BC@ha */
/* 80388E6C  C8 84 00 00 */	lfd f4, 0(r4)
/* 80388E70  FC 22 00 B2 */	fmul f1, f2, f2
/* 80388E74  C8 63 19 BC */	lfd f3, lit_588@l(r3)  /* 0x806419BC@l */
/* 80388E78  FC 44 00 B2 */	fmul f2, f4, f2
/* 80388E7C  FC 20 00 72 */	fmul f1, f0, f1
/* 80388E80  FC 23 08 28 */	fsub f1, f3, f1
/* 80388E84  FC 42 00 72 */	fmul f2, f2, f1
/* 80388E88  FC 22 00 B2 */	fmul f1, f2, f2
/* 80388E8C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80388E90  FC 20 00 72 */	fmul f1, f0, f1
/* 80388E94  FC 23 08 28 */	fsub f1, f3, f1
/* 80388E98  FC 42 00 72 */	fmul f2, f2, f1
/* 80388E9C  FC 22 00 B2 */	fmul f1, f2, f2
/* 80388EA0  FC 44 00 B2 */	fmul f2, f4, f2
/* 80388EA4  FC 20 00 72 */	fmul f1, f0, f1
/* 80388EA8  FC 23 08 28 */	fsub f1, f3, f1
/* 80388EAC  FC 22 00 72 */	fmul f1, f2, f1
/* 80388EB0  FC 00 00 72 */	fmul f0, f0, f1
/* 80388EB4  FC 00 00 18 */	frsp f0, f0
/* 80388EB8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80388EBC  C0 01 00 0C */	lfs f0, 0xc(r1)
lbl_80388EC0:
/* 80388EC0  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 80388EC4  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 80388EC8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80388ECC  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 80388ED0  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80388ED4  EC 84 08 28 */	fsubs f4, f4, f1
/* 80388ED8  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 80388EDC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80388EE0  EC 64 01 32 */	fmuls f3, f4, f4
/* 80388EE4  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80388EE8  EC A3 10 2A */	fadds f5, f3, f2
/* 80388EEC  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 80388EF0  40 81 00 68 */	ble lbl_80388F58
/* 80388EF4  FC 40 28 34 */	frsqrte f2, f5
/* 80388EF8  3C 60 80 64 */	lis r3, lit_587@ha /* 0x806419B4@ha */
/* 80388EFC  38 83 19 B4 */	addi r4, r3, lit_587@l /* 0x806419B4@l */
/* 80388F00  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806419BC@ha */
/* 80388F04  C8 84 00 00 */	lfd f4, 0(r4)
/* 80388F08  FC 22 00 B2 */	fmul f1, f2, f2
/* 80388F0C  C8 63 19 BC */	lfd f3, lit_588@l(r3)  /* 0x806419BC@l */
/* 80388F10  FC 44 00 B2 */	fmul f2, f4, f2
/* 80388F14  FC 25 00 72 */	fmul f1, f5, f1
/* 80388F18  FC 23 08 28 */	fsub f1, f3, f1
/* 80388F1C  FC 42 00 72 */	fmul f2, f2, f1
/* 80388F20  FC 22 00 B2 */	fmul f1, f2, f2
/* 80388F24  FC 44 00 B2 */	fmul f2, f4, f2
/* 80388F28  FC 25 00 72 */	fmul f1, f5, f1
/* 80388F2C  FC 23 08 28 */	fsub f1, f3, f1
/* 80388F30  FC 42 00 72 */	fmul f2, f2, f1
/* 80388F34  FC 22 00 B2 */	fmul f1, f2, f2
/* 80388F38  FC 44 00 B2 */	fmul f2, f4, f2
/* 80388F3C  FC 25 00 72 */	fmul f1, f5, f1
/* 80388F40  FC 23 08 28 */	fsub f1, f3, f1
/* 80388F44  FC 22 00 72 */	fmul f1, f2, f1
/* 80388F48  FC 25 00 72 */	fmul f1, f5, f1
/* 80388F4C  FC 20 08 18 */	frsp f1, f1
/* 80388F50  D0 21 00 08 */	stfs f1, 8(r1)
/* 80388F54  C0 A1 00 08 */	lfs f5, 8(r1)
lbl_80388F58:
/* 80388F58  FC 40 02 10 */	fabs f2, f0
/* 80388F5C  3C 60 80 64 */	lis r3, lit_448@ha /* 0x806419A8@ha */
/* 80388F60  C0 23 19 A8 */	lfs f1, lit_448@l(r3)  /* 0x806419A8@l */
/* 80388F64  FC 40 10 18 */	frsp f2, f2
/* 80388F68  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80388F6C  7C 00 00 26 */	mfcr r0
/* 80388F70  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80388F74  40 82 00 18 */	bne lbl_80388F8C
/* 80388F78  EC 05 00 24 */	fdivs f0, f5, f0
/* 80388F7C  3C 60 80 64 */	lis r3, lit_2951@ha /* 0x80641AC8@ha */
/* 80388F80  C0 23 1A C8 */	lfs f1, lit_2951@l(r3)  /* 0x80641AC8@l */
/* 80388F84  EC 21 00 32 */	fmuls f1, f1, f0
/* 80388F88  48 00 00 0C */	b lbl_80388F94
lbl_80388F8C:
/* 80388F8C  3C 60 80 64 */	lis r3, lit_661@ha /* 0x806419CC@ha */
/* 80388F90  C0 23 19 CC */	lfs f1, lit_661@l(r3)  /* 0x806419CC@l */
lbl_80388F94:
/* 80388F94  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 80388F98  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 80388F9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80388FA0  4C 40 13 82 */	cror 2, 0, 2
/* 80388FA4  40 82 00 0C */	bne lbl_80388FB0
/* 80388FA8  38 60 00 18 */	li r3, 0x18
/* 80388FAC  48 00 00 40 */	b lbl_80388FEC
lbl_80388FB0:
/* 80388FB0  3C 60 80 64 */	lis r3, lit_2951@ha /* 0x80641AC8@ha */
/* 80388FB4  C0 03 1A C8 */	lfs f0, lit_2951@l(r3)  /* 0x80641AC8@l */
/* 80388FB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80388FBC  4C 41 13 82 */	cror 2, 1, 2
/* 80388FC0  40 82 00 0C */	bne lbl_80388FCC
/* 80388FC4  38 60 00 16 */	li r3, 0x16
/* 80388FC8  48 00 00 24 */	b lbl_80388FEC
lbl_80388FCC:
/* 80388FCC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80388FD0  4C 40 13 82 */	cror 2, 0, 2
/* 80388FD4  40 82 00 0C */	bne lbl_80388FE0
/* 80388FD8  38 60 00 0B */	li r3, 0xb
/* 80388FDC  48 00 00 10 */	b lbl_80388FEC
lbl_80388FE0:
/* 80388FE0  38 60 00 16 */	li r3, 0x16
/* 80388FE4  48 00 00 08 */	b lbl_80388FEC
lbl_80388FE8:
/* 80388FE8  38 60 00 18 */	li r3, 0x18
lbl_80388FEC:
/* 80388FEC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80388FF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80388FF4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80388FF8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80388FFC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80389000  7C 08 03 A6 */	mtlr r0
/* 80389004  38 21 00 50 */	addi r1, r1, 0x50
/* 80389008  4E 80 00 20 */	blr 
