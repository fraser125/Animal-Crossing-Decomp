lbl_80426CA8:
/* 80426CA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80426CAC  7C 08 02 A6 */	mflr r0
/* 80426CB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80426CB4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80426CB8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80426CBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80426CC0  4B C7 42 11 */	bl func_8009AED0
/* 80426CC4  7C 7F 1B 78 */	mr r31, r3
/* 80426CC8  3C 60 80 68 */	lis r3, table_539@ha /* 0x80683A24@ha */
/* 80426CCC  88 9F 01 E5 */	lbz r4, 0x1e5(r31)
/* 80426CD0  38 63 3A 24 */	addi r3, r3, table_539@l /* 0x80683A24@l */
/* 80426CD4  80 1F 01 CC */	lwz r0, 0x1cc(r31)
/* 80426CD8  54 84 10 3A */	slwi r4, r4, 2
/* 80426CDC  C3 FF 01 D0 */	lfs f31, 0x1d0(r31)
/* 80426CE0  7C 63 20 2E */	lwzx r3, r3, r4
/* 80426CE4  54 00 18 38 */	slwi r0, r0, 3
/* 80426CE8  7C 63 02 14 */	add r3, r3, r0
/* 80426CEC  80 83 00 00 */	lwz r4, 0(r3)
/* 80426CF0  83 83 00 04 */	lwz r28, 4(r3)
/* 80426CF4  7C 9D 23 78 */	mr r29, r4
/* 80426CF8  54 83 20 36 */	slwi r3, r4, 4
/* 80426CFC  7C 89 03 A6 */	mtctr r4
/* 80426D00  2C 04 00 00 */	cmpwi r4, 0
/* 80426D04  41 82 00 1C */	beq lbl_80426D20
lbl_80426D08:
/* 80426D08  7C 1C 1C 2E */	lfsx f0, r28, r3
/* 80426D0C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80426D10  41 81 00 10 */	bgt lbl_80426D20
/* 80426D14  3B BD FF FF */	addi r29, r29, -1
/* 80426D18  38 63 FF F0 */	addi r3, r3, -16
/* 80426D1C  42 00 FF EC */	bdnz lbl_80426D08
lbl_80426D20:
/* 80426D20  7C 1D 20 00 */	cmpw r29, r4
/* 80426D24  41 80 00 10 */	blt lbl_80426D34
/* 80426D28  54 80 20 36 */	slwi r0, r4, 4
/* 80426D2C  3B A4 FF FF */	addi r29, r4, -1
/* 80426D30  7F FC 04 2E */	lfsx f31, r28, r0
lbl_80426D34:
/* 80426D34  38 1D 00 01 */	addi r0, r29, 1
/* 80426D38  38 61 00 14 */	addi r3, r1, 0x14
/* 80426D3C  54 04 20 36 */	slwi r4, r0, 4
/* 80426D40  38 84 00 04 */	addi r4, r4, 4
/* 80426D44  7C 9C 22 14 */	add r4, r28, r4
/* 80426D48  4B F9 41 75 */	bl xyz_t_move
/* 80426D4C  57 BD 20 36 */	slwi r29, r29, 4
/* 80426D50  38 61 00 08 */	addi r3, r1, 8
/* 80426D54  7F DC EA 14 */	add r30, r28, r29
/* 80426D58  38 9E 00 04 */	addi r4, r30, 4
/* 80426D5C  4B F9 41 61 */	bl xyz_t_move
/* 80426D60  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80426D64  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80426D68  EF FF 08 28 */	fsubs f31, f31, f1
/* 80426D6C  C0 41 00 08 */	lfs f2, 8(r1)
/* 80426D70  EC 20 08 28 */	fsubs f1, f0, f1
/* 80426D74  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80426D78  EC 00 10 28 */	fsubs f0, f0, f2
/* 80426D7C  EC 7F 08 24 */	fdivs f3, f31, f1
/* 80426D80  EC 03 00 32 */	fmuls f0, f3, f0
/* 80426D84  EC 02 00 2A */	fadds f0, f2, f0
/* 80426D88  D0 1F 01 D4 */	stfs f0, 0x1d4(r31)
/* 80426D8C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80426D90  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80426D94  EC 00 08 28 */	fsubs f0, f0, f1
/* 80426D98  EC 03 00 32 */	fmuls f0, f3, f0
/* 80426D9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80426DA0  D0 1F 01 D8 */	stfs f0, 0x1d8(r31)
/* 80426DA4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80426DA8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80426DAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80426DB0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80426DB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80426DB8  D0 1F 01 DC */	stfs f0, 0x1dc(r31)
/* 80426DBC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80426DC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80426DC4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80426DC8  4B C7 41 55 */	bl func_8009AF1C
/* 80426DCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80426DD0  7C 08 03 A6 */	mtlr r0
/* 80426DD4  38 21 00 40 */	addi r1, r1, 0x40
/* 80426DD8  4E 80 00 20 */	blr 
