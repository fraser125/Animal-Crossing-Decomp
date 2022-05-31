lbl_80385D28:
/* 80385D28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80385D2C  7C 08 02 A6 */	mflr r0
/* 80385D30  90 01 00 44 */	stw r0, 0x44(r1)
/* 80385D34  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80385D38  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80385D3C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80385D40  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80385D44  39 61 00 20 */	addi r11, r1, 0x20
/* 80385D48  4B D1 51 89 */	bl func_8009AED0
/* 80385D4C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80385D50  7C 9D 23 78 */	mr r29, r4
/* 80385D54  7C BE 2B 78 */	mr r30, r5
/* 80385D58  7C DF 33 78 */	mr r31, r6
/* 80385D5C  41 82 01 4C */	beq lbl_80385EA8
/* 80385D60  38 00 00 00 */	li r0, 0
/* 80385D64  3C 60 80 64 */	lis r3, lit_862@ha /* 0x80641A00@ha */
/* 80385D68  B0 1C 00 02 */	sth r0, 2(r28)
/* 80385D6C  7C E0 07 34 */	extsh r0, r7
/* 80385D70  C0 43 1A 00 */	lfs f2, lit_862@l(r3)  /* 0x80641A00@l */
/* 80385D74  2C 00 00 02 */	cmpwi r0, 2
/* 80385D78  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80385D7C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80385D80  C0 BE 00 04 */	lfs f5, 4(r30)
/* 80385D84  EC 01 00 2A */	fadds f0, f1, f0
/* 80385D88  C0 DF 00 04 */	lfs f6, 4(r31)
/* 80385D8C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80385D90  EC 25 30 2A */	fadds f1, f5, f6
/* 80385D94  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80385D98  EF E2 00 32 */	fmuls f31, f2, f0
/* 80385D9C  EC 03 20 2A */	fadds f0, f3, f4
/* 80385DA0  EF C2 00 72 */	fmuls f30, f2, f1
/* 80385DA4  EC 42 00 32 */	fmuls f2, f2, f0
/* 80385DA8  41 82 00 64 */	beq lbl_80385E0C
/* 80385DAC  40 80 00 14 */	bge lbl_80385DC0
/* 80385DB0  2C 00 00 00 */	cmpwi r0, 0
/* 80385DB4  41 82 00 18 */	beq lbl_80385DCC
/* 80385DB8  40 80 00 94 */	bge lbl_80385E4C
/* 80385DBC  48 00 00 EC */	b lbl_80385EA8
lbl_80385DC0:
/* 80385DC0  2C 00 00 04 */	cmpwi r0, 4
/* 80385DC4  40 80 00 E4 */	bge lbl_80385EA8
/* 80385DC8  48 00 00 B4 */	b lbl_80385E7C
lbl_80385DCC:
/* 80385DCC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80385DD0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80385DD4  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80385DD8  EC 21 10 28 */	fsubs f1, f1, f2
/* 80385DDC  FC 40 00 50 */	fneg f2, f0
/* 80385DE0  48 08 62 21 */	bl atans_table
/* 80385DE4  B0 7C 00 00 */	sth r3, 0(r28)
/* 80385DE8  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80385DEC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80385DF0  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80385DF4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80385DF8  EC 23 08 28 */	fsubs f1, f3, f1
/* 80385DFC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80385E00  48 08 62 01 */	bl atans_table
/* 80385E04  B0 7C 00 04 */	sth r3, 4(r28)
/* 80385E08  48 00 00 A0 */	b lbl_80385EA8
lbl_80385E0C:
/* 80385E0C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80385E10  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80385E14  EC 1E 00 28 */	fsubs f0, f30, f0
/* 80385E18  EC 22 08 28 */	fsubs f1, f2, f1
/* 80385E1C  FC 40 00 50 */	fneg f2, f0
/* 80385E20  48 08 61 E1 */	bl atans_table
/* 80385E24  B0 7C 00 00 */	sth r3, 0(r28)
/* 80385E28  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80385E2C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80385E30  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80385E34  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80385E38  EC 23 08 28 */	fsubs f1, f3, f1
/* 80385E3C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80385E40  48 08 61 C1 */	bl atans_table
/* 80385E44  B0 7C 00 04 */	sth r3, 4(r28)
/* 80385E48  48 00 00 60 */	b lbl_80385EA8
lbl_80385E4C:
/* 80385E4C  EC 06 28 28 */	fsubs f0, f6, f5
/* 80385E50  EC 24 18 28 */	fsubs f1, f4, f3
/* 80385E54  FC 40 00 50 */	fneg f2, f0
/* 80385E58  48 08 61 A9 */	bl atans_table
/* 80385E5C  B0 7C 00 00 */	sth r3, 0(r28)
/* 80385E60  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80385E64  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80385E68  EC 21 F8 28 */	fsubs f1, f1, f31
/* 80385E6C  EC 40 F0 28 */	fsubs f2, f0, f30
/* 80385E70  48 08 61 91 */	bl atans_table
/* 80385E74  B0 7C 00 04 */	sth r3, 4(r28)
/* 80385E78  48 00 00 30 */	b lbl_80385EA8
lbl_80385E7C:
/* 80385E7C  EC 05 30 28 */	fsubs f0, f5, f6
/* 80385E80  EC 23 20 28 */	fsubs f1, f3, f4
/* 80385E84  FC 40 00 50 */	fneg f2, f0
/* 80385E88  48 08 61 79 */	bl atans_table
/* 80385E8C  B0 7C 00 00 */	sth r3, 0(r28)
/* 80385E90  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80385E94  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80385E98  EC 3F 08 28 */	fsubs f1, f31, f1
/* 80385E9C  EC 5E 00 28 */	fsubs f2, f30, f0
/* 80385EA0  48 08 61 61 */	bl atans_table
/* 80385EA4  B0 7C 00 04 */	sth r3, 4(r28)
lbl_80385EA8:
/* 80385EA8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80385EAC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80385EB0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80385EB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80385EB8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80385EBC  4B D1 50 61 */	bl func_8009AF1C
/* 80385EC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80385EC4  7C 08 03 A6 */	mtlr r0
/* 80385EC8  38 21 00 40 */	addi r1, r1, 0x40
/* 80385ECC  4E 80 00 20 */	blr 
