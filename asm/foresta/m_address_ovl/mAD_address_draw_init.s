lbl_805C2CA0:
/* 805C2CA0  38 00 00 03 */	li r0, 3
/* 805C2CA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C2CA8  38 A0 00 00 */	li r5, 0
/* 805C2CAC  38 C0 00 00 */	li r6, 0
/* 805C2CB0  7C 09 03 A6 */	mtctr r0
lbl_805C2CB4:
/* 805C2CB4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C2CB8  38 05 00 08 */	addi r0, r5, 8
/* 805C2CBC  80 E4 09 94 */	lwz r7, 0x994(r4)
/* 805C2CC0  7C 87 00 AE */	lbzx r4, r7, r0
/* 805C2CC4  35 04 FF FF */	addic. r8, r4, -1
/* 805C2CC8  41 80 00 CC */	blt lbl_805C2D94
/* 805C2CCC  3C 80 80 6C */	lis r4, data_806C76E0@ha /* 0x806C76E0@ha */
/* 805C2CD0  2C 05 00 00 */	cmpwi r5, 0
/* 805C2CD4  38 04 76 E0 */	addi r0, r4, data_806C76E0@l /* 0x806C76E0@l */
/* 805C2CD8  7C 80 32 14 */	add r4, r0, r6
/* 805C2CDC  40 82 00 1C */	bne lbl_805C2CF8
/* 805C2CE0  88 07 00 06 */	lbz r0, 6(r7)
/* 805C2CE4  28 00 00 00 */	cmplwi r0, 0
/* 805C2CE8  41 82 00 10 */	beq lbl_805C2CF8
/* 805C2CEC  2C 08 00 00 */	cmpwi r8, 0
/* 805C2CF0  40 81 00 08 */	ble lbl_805C2CF8
/* 805C2CF4  39 08 00 01 */	addi r8, r8, 1
lbl_805C2CF8:
/* 805C2CF8  6D 07 80 00 */	xoris r7, r8, 0x8000
/* 805C2CFC  3C 00 43 30 */	lis r0, 0x4330
/* 805C2D00  90 01 00 08 */	stw r0, 8(r1)
/* 805C2D04  3D 00 80 65 */	lis r8, lit_701@ha /* 0x8064AD24@ha */
/* 805C2D08  A8 04 00 92 */	lha r0, 0x92(r4)
/* 805C2D0C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 805C2D10  38 E8 AD 24 */	addi r7, r8, lit_701@l /* 0x8064AD24@l */
/* 805C2D14  C8 27 00 00 */	lfd f1, 0(r7)
/* 805C2D18  3D 00 80 65 */	lis r8, lit_699@ha /* 0x8064AD1C@ha */
/* 805C2D1C  C8 01 00 08 */	lfd f0, 8(r1)
/* 805C2D20  C0 48 AD 1C */	lfs f2, lit_699@l(r8)  /* 0x8064AD1C@l */
/* 805C2D24  EC 00 08 28 */	fsubs f0, f0, f1
/* 805C2D28  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C2D2C  FC 00 00 1E */	fctiwz f0, f0
/* 805C2D30  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805C2D34  81 01 00 14 */	lwz r8, 0x14(r1)
/* 805C2D38  7C 08 00 50 */	subf r0, r8, r0
/* 805C2D3C  B0 04 00 C2 */	sth r0, 0xc2(r4)
/* 805C2D40  A8 04 00 B2 */	lha r0, 0xb2(r4)
/* 805C2D44  7C 08 00 50 */	subf r0, r8, r0
/* 805C2D48  B0 04 00 D2 */	sth r0, 0xd2(r4)
/* 805C2D4C  A8 E4 00 C2 */	lha r7, 0xc2(r4)
/* 805C2D50  38 07 FF EF */	addi r0, r7, -17
/* 805C2D54  B0 04 00 E2 */	sth r0, 0xe2(r4)
/* 805C2D58  A8 E4 00 D2 */	lha r7, 0xd2(r4)
/* 805C2D5C  38 07 FF EF */	addi r0, r7, -17
/* 805C2D60  B0 04 00 F2 */	sth r0, 0xf2(r4)
/* 805C2D64  A8 04 00 42 */	lha r0, 0x42(r4)
/* 805C2D68  7C 08 00 50 */	subf r0, r8, r0
/* 805C2D6C  B0 04 00 02 */	sth r0, 2(r4)
/* 805C2D70  A8 04 00 52 */	lha r0, 0x52(r4)
/* 805C2D74  7C 08 00 50 */	subf r0, r8, r0
/* 805C2D78  B0 04 00 22 */	sth r0, 0x22(r4)
/* 805C2D7C  A8 E4 00 02 */	lha r7, 2(r4)
/* 805C2D80  38 07 FF EF */	addi r0, r7, -17
/* 805C2D84  B0 04 00 12 */	sth r0, 0x12(r4)
/* 805C2D88  A8 E4 00 22 */	lha r7, 0x22(r4)
/* 805C2D8C  38 07 FF EF */	addi r0, r7, -17
/* 805C2D90  B0 04 00 32 */	sth r0, 0x32(r4)
lbl_805C2D94:
/* 805C2D94  38 A5 00 01 */	addi r5, r5, 1
/* 805C2D98  38 C6 01 00 */	addi r6, r6, 0x100
/* 805C2D9C  42 00 FF 18 */	bdnz lbl_805C2CB4
/* 805C2DA0  38 21 00 20 */	addi r1, r1, 0x20
/* 805C2DA4  4E 80 00 20 */	blr 
