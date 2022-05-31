lbl_803F6D04:
/* 803F6D04  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803F6D08  7C 08 02 A6 */	mflr r0
/* 803F6D0C  90 01 00 64 */	stw r0, 0x64(r1)
/* 803F6D10  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 803F6D14  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 803F6D18  39 61 00 50 */	addi r11, r1, 0x50
/* 803F6D1C  4B CA 41 B1 */	bl func_8009AECC
/* 803F6D20  FF E0 08 90 */	fmr f31, f1
/* 803F6D24  7C 7C 1B 78 */	mr r28, r3
/* 803F6D28  7C 9D 23 78 */	mr r29, r4
/* 803F6D2C  7C BB 2B 78 */	mr r27, r5
/* 803F6D30  7C DE 33 78 */	mr r30, r6
/* 803F6D34  7C FF 3B 78 */	mr r31, r7
/* 803F6D38  4B FF FF 61 */	bl mRlib_Hole_check
/* 803F6D3C  2C 03 00 00 */	cmpwi r3, 0
/* 803F6D40  41 82 01 24 */	beq lbl_803F6E64
/* 803F6D44  80 BC 00 28 */	lwz r5, 0x28(r28)
/* 803F6D48  38 61 00 14 */	addi r3, r1, 0x14
/* 803F6D4C  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 803F6D50  38 81 00 08 */	addi r4, r1, 8
/* 803F6D54  90 A1 00 08 */	stw r5, 8(r1)
/* 803F6D58  90 01 00 0C */	stw r0, 0xc(r1)
/* 803F6D5C  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 803F6D60  90 01 00 10 */	stw r0, 0x10(r1)
/* 803F6D64  4B FA E7 D9 */	bl mFI_Wpos2UtCenterWpos
/* 803F6D68  38 7C 00 28 */	addi r3, r28, 0x28
/* 803F6D6C  38 81 00 14 */	addi r4, r1, 0x14
/* 803F6D70  4B FC 42 65 */	bl search_position_distance
/* 803F6D74  D0 3B 00 00 */	stfs f1, 0(r27)
/* 803F6D78  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80643420@ha */
/* 803F6D7C  3C 00 43 30 */	lis r0, 0x4330
/* 803F6D80  C0 23 34 20 */	lfs f1, lit_531@l(r3)  /* 0x80643420@l */
/* 803F6D84  C0 1B 00 00 */	lfs f0, 0(r27)
/* 803F6D88  3C 80 80 64 */	lis r4, lit_530@ha /* 0x8064341C@ha */
/* 803F6D8C  38 64 34 1C */	addi r3, r4, lit_530@l /* 0x8064341C@l */
/* 803F6D90  90 01 00 28 */	stw r0, 0x28(r1)
/* 803F6D94  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F6D98  C0 23 00 00 */	lfs f1, 0(r3)
/* 803F6D9C  3C 80 80 64 */	lis r4, lit_424@ha /* 0x80643408@ha */
/* 803F6DA0  3C 60 80 64 */	lis r3, lit_458@ha /* 0x80643414@ha */
/* 803F6DA4  C0 44 34 08 */	lfs f2, lit_424@l(r4)  /* 0x80643408@l */
/* 803F6DA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F6DAC  C8 23 34 14 */	lfd f1, lit_458@l(r3)  /* 0x80643414@l */
/* 803F6DB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 803F6DB4  FC 00 00 1E */	fctiwz f0, f0
/* 803F6DB8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803F6DBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F6DC0  B0 1F 00 00 */	sth r0, 0(r31)
/* 803F6DC4  A8 1F 00 00 */	lha r0, 0(r31)
/* 803F6DC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803F6DCC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803F6DD0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 803F6DD4  EC 00 08 28 */	fsubs f0, f0, f1
/* 803F6DD8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 803F6DDC  FC 00 00 1E */	fctiwz f0, f0
/* 803F6DE0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803F6DE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F6DE8  B0 1F 00 00 */	sth r0, 0(r31)
/* 803F6DEC  C0 7C 00 30 */	lfs f3, 0x30(r28)
/* 803F6DF0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 803F6DF4  C0 5C 00 28 */	lfs f2, 0x28(r28)
/* 803F6DF8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 803F6DFC  EC 23 08 28 */	fsubs f1, f3, f1
/* 803F6E00  EC 42 00 28 */	fsubs f2, f2, f0
/* 803F6E04  48 01 51 FD */	bl atans_table
/* 803F6E08  B0 7E 00 00 */	sth r3, 0(r30)
/* 803F6E0C  A8 7E 00 00 */	lha r3, 0(r30)
/* 803F6E10  4B FC 3C E1 */	bl sin_s
/* 803F6E14  FF E0 08 90 */	fmr f31, f1
/* 803F6E18  A8 7F 00 00 */	lha r3, 0(r31)
/* 803F6E1C  4B FC 3C 81 */	bl cos_s
/* 803F6E20  FC 00 08 50 */	fneg f0, f1
/* 803F6E24  EC 00 07 F2 */	fmuls f0, f0, f31
/* 803F6E28  D0 1D 00 00 */	stfs f0, 0(r29)
/* 803F6E2C  A8 7F 00 00 */	lha r3, 0(r31)
/* 803F6E30  4B FC 3C C1 */	bl sin_s
/* 803F6E34  FC 00 08 50 */	fneg f0, f1
/* 803F6E38  D0 1D 00 04 */	stfs f0, 4(r29)
/* 803F6E3C  A8 7E 00 00 */	lha r3, 0(r30)
/* 803F6E40  4B FC 3C 5D */	bl cos_s
/* 803F6E44  FF E0 08 90 */	fmr f31, f1
/* 803F6E48  A8 7F 00 00 */	lha r3, 0(r31)
/* 803F6E4C  4B FC 3C 51 */	bl cos_s
/* 803F6E50  FC 00 08 50 */	fneg f0, f1
/* 803F6E54  38 60 00 01 */	li r3, 1
/* 803F6E58  EC 00 07 F2 */	fmuls f0, f0, f31
/* 803F6E5C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 803F6E60  48 00 00 14 */	b lbl_803F6E74
lbl_803F6E64:
/* 803F6E64  3C 80 80 64 */	lis r4, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6E68  38 60 00 00 */	li r3, 0
/* 803F6E6C  C0 04 33 EC */	lfs f0, data_806433EC@l(r4)  /* 0x806433EC@l */
/* 803F6E70  D0 1B 00 00 */	stfs f0, 0(r27)
lbl_803F6E74:
/* 803F6E74  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 803F6E78  39 61 00 50 */	addi r11, r1, 0x50
/* 803F6E7C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 803F6E80  4B CA 40 99 */	bl func_8009AF18
/* 803F6E84  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803F6E88  7C 08 03 A6 */	mtlr r0
/* 803F6E8C  38 21 00 60 */	addi r1, r1, 0x60
/* 803F6E90  4E 80 00 20 */	blr 
