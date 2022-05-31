lbl_803869BC:
/* 803869BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803869C0  7C 08 02 A6 */	mflr r0
/* 803869C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803869C8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 803869CC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 803869D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803869D4  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 803869D8  FF E0 08 90 */	fmr f31, f1
/* 803869DC  7C 7F 1B 78 */	mr r31, r3
/* 803869E0  28 00 00 00 */	cmplwi r0, 0
/* 803869E4  41 82 00 38 */	beq lbl_80386A1C
/* 803869E8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 803869EC  3C 60 80 64 */	lis r3, lit_2058@ha /* 0x80641A78@ha */
/* 803869F0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 803869F4  C0 03 1A 78 */	lfs f0, lit_2058@l(r3)  /* 0x80641A78@l */
/* 803869F8  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 803869FC  EC 20 F8 2A */	fadds f1, f0, f31
/* 80386A00  D0 5F 00 04 */	stfs f2, 4(r31)
/* 80386A04  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80386A08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80386A0C  4C 40 13 82 */	cror 2, 0, 2
/* 80386A10  40 82 01 9C */	bne lbl_80386BAC
/* 80386A14  38 60 00 01 */	li r3, 1
/* 80386A18  48 00 01 98 */	b lbl_80386BB0
lbl_80386A1C:
/* 80386A1C  88 04 00 2A */	lbz r0, 0x2a(r4)
/* 80386A20  2C 00 00 02 */	cmpwi r0, 2
/* 80386A24  41 82 00 C4 */	beq lbl_80386AE8
/* 80386A28  40 80 00 14 */	bge lbl_80386A3C
/* 80386A2C  2C 00 00 00 */	cmpwi r0, 0
/* 80386A30  41 82 00 B8 */	beq lbl_80386AE8
/* 80386A34  40 80 00 18 */	bge lbl_80386A4C
/* 80386A38  48 00 01 74 */	b lbl_80386BAC
lbl_80386A3C:
/* 80386A3C  2C 00 00 06 */	cmpwi r0, 6
/* 80386A40  40 80 01 6C */	bge lbl_80386BAC
/* 80386A44  2C 00 00 04 */	cmpwi r0, 4
/* 80386A48  40 80 01 3C */	bge lbl_80386B84
lbl_80386A4C:
/* 80386A4C  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80386A50  3C 60 80 64 */	lis r3, lit_448@ha /* 0x806419A8@ha */
/* 80386A54  C0 64 00 04 */	lfs f3, 4(r4)
/* 80386A58  C0 03 19 A8 */	lfs f0, lit_448@l(r3)  /* 0x806419A8@l */
/* 80386A5C  EC 81 18 28 */	fsubs f4, f1, f3
/* 80386A60  FC 20 22 10 */	fabs f1, f4
/* 80386A64  FC 20 08 18 */	frsp f1, f1
/* 80386A68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80386A6C  41 80 01 40 */	blt lbl_80386BAC
/* 80386A70  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80386A74  3C 60 80 64 */	lis r3, lit_2058@ha /* 0x80641A78@ha */
/* 80386A78  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80386A7C  C0 25 00 04 */	lfs f1, 4(r5)
/* 80386A80  EC 40 28 28 */	fsubs f2, f0, f5
/* 80386A84  C0 03 1A 78 */	lfs f0, lit_2058@l(r3)  /* 0x80641A78@l */
/* 80386A88  EC 61 18 28 */	fsubs f3, f1, f3
/* 80386A8C  EC 20 F8 2A */	fadds f1, f0, f31
/* 80386A90  EC 02 20 24 */	fdivs f0, f2, f4
/* 80386A94  EC 03 00 32 */	fmuls f0, f3, f0
/* 80386A98  EC 05 00 2A */	fadds f0, f5, f0
/* 80386A9C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80386AA0  C0 A4 00 14 */	lfs f5, 0x14(r4)
/* 80386AA4  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80386AA8  C0 84 00 04 */	lfs f4, 4(r4)
/* 80386AAC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80386AB0  EC 42 28 28 */	fsubs f2, f2, f5
/* 80386AB4  C0 65 00 04 */	lfs f3, 4(r5)
/* 80386AB8  EC 00 20 28 */	fsubs f0, f0, f4
/* 80386ABC  EC 63 20 28 */	fsubs f3, f3, f4
/* 80386AC0  EC 02 00 24 */	fdivs f0, f2, f0
/* 80386AC4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80386AC8  EC 05 00 2A */	fadds f0, f5, f0
/* 80386ACC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80386AD0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80386AD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80386AD8  4C 40 13 82 */	cror 2, 0, 2
/* 80386ADC  40 82 00 D0 */	bne lbl_80386BAC
/* 80386AE0  38 60 00 01 */	li r3, 1
/* 80386AE4  48 00 00 CC */	b lbl_80386BB0
lbl_80386AE8:
/* 80386AE8  C0 24 00 08 */	lfs f1, 8(r4)
/* 80386AEC  3C 60 80 64 */	lis r3, lit_448@ha /* 0x806419A8@ha */
/* 80386AF0  C0 64 00 00 */	lfs f3, 0(r4)
/* 80386AF4  C0 03 19 A8 */	lfs f0, lit_448@l(r3)  /* 0x806419A8@l */
/* 80386AF8  EC 81 18 28 */	fsubs f4, f1, f3
/* 80386AFC  FC 20 22 10 */	fabs f1, f4
/* 80386B00  FC 20 08 18 */	frsp f1, f1
/* 80386B04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80386B08  41 80 00 A4 */	blt lbl_80386BAC
/* 80386B0C  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80386B10  3C 60 80 64 */	lis r3, lit_2058@ha /* 0x80641A78@ha */
/* 80386B14  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80386B18  C0 25 00 00 */	lfs f1, 0(r5)
/* 80386B1C  EC 40 28 28 */	fsubs f2, f0, f5
/* 80386B20  C0 03 1A 78 */	lfs f0, lit_2058@l(r3)  /* 0x80641A78@l */
/* 80386B24  EC 61 18 28 */	fsubs f3, f1, f3
/* 80386B28  EC 20 F8 2A */	fadds f1, f0, f31
/* 80386B2C  EC 02 20 24 */	fdivs f0, f2, f4
/* 80386B30  EC 03 00 32 */	fmuls f0, f3, f0
/* 80386B34  EC 05 00 2A */	fadds f0, f5, f0
/* 80386B38  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80386B3C  C0 A4 00 14 */	lfs f5, 0x14(r4)
/* 80386B40  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80386B44  C0 84 00 00 */	lfs f4, 0(r4)
/* 80386B48  C0 04 00 08 */	lfs f0, 8(r4)
/* 80386B4C  EC 42 28 28 */	fsubs f2, f2, f5
/* 80386B50  C0 65 00 00 */	lfs f3, 0(r5)
/* 80386B54  EC 00 20 28 */	fsubs f0, f0, f4
/* 80386B58  EC 63 20 28 */	fsubs f3, f3, f4
/* 80386B5C  EC 02 00 24 */	fdivs f0, f2, f0
/* 80386B60  EC 03 00 32 */	fmuls f0, f3, f0
/* 80386B64  EC 05 00 2A */	fadds f0, f5, f0
/* 80386B68  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80386B6C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80386B70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80386B74  4C 40 13 82 */	cror 2, 0, 2
/* 80386B78  40 82 00 34 */	bne lbl_80386BAC
/* 80386B7C  38 60 00 01 */	li r3, 1
/* 80386B80  48 00 00 30 */	b lbl_80386BB0
lbl_80386B84:
/* 80386B84  4B FF FD 6D */	bl mCoBG_GetWallHeight
/* 80386B88  3C 60 80 64 */	lis r3, lit_2058@ha /* 0x80641A78@ha */
/* 80386B8C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80386B90  C0 23 1A 78 */	lfs f1, lit_2058@l(r3)  /* 0x80641A78@l */
/* 80386B94  EC 21 F8 2A */	fadds f1, f1, f31
/* 80386B98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80386B9C  4C 40 13 82 */	cror 2, 0, 2
/* 80386BA0  40 82 00 0C */	bne lbl_80386BAC
/* 80386BA4  38 60 00 01 */	li r3, 1
/* 80386BA8  48 00 00 08 */	b lbl_80386BB0
lbl_80386BAC:
/* 80386BAC  38 60 00 00 */	li r3, 0
lbl_80386BB0:
/* 80386BB0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80386BB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80386BB8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80386BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80386BC0  7C 08 03 A6 */	mtlr r0
/* 80386BC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80386BC8  4E 80 00 20 */	blr 
