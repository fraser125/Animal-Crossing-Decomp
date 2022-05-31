lbl_803809AC:
/* 803809AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803809B0  7C 08 02 A6 */	mflr r0
/* 803809B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803809B8  39 61 00 30 */	addi r11, r1, 0x30
/* 803809BC  4B D1 A5 15 */	bl func_8009AED0
/* 803809C0  7C 7E 1B 78 */	mr r30, r3
/* 803809C4  7C 9C 23 78 */	mr r28, r4
/* 803809C8  C0 23 1C 3C */	lfs f1, 0x1c3c(r3)
/* 803809CC  7C BD 2B 78 */	mr r29, r5
/* 803809D0  C0 63 1C 30 */	lfs f3, 0x1c30(r3)
/* 803809D4  7C DF 33 78 */	mr r31, r6
/* 803809D8  C0 83 1C 34 */	lfs f4, 0x1c34(r3)
/* 803809DC  FC 01 18 00 */	fcmpu cr0, f1, f3
/* 803809E0  C0 A3 1C 38 */	lfs f5, 0x1c38(r3)
/* 803809E4  41 82 00 20 */	beq lbl_80380A04
/* 803809E8  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 803809EC  C0 03 13 6C */	lfs f0, lit_508@l(r3)  /* 0x8064136C@l */
/* 803809F0  EC 21 00 2A */	fadds f1, f1, f0
/* 803809F4  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 803809F8  40 81 00 08 */	ble lbl_80380A00
/* 803809FC  FC 20 18 90 */	fmr f1, f3
lbl_80380A00:
/* 80380A00  D0 3E 1C 3C */	stfs f1, 0x1c3c(r30)
lbl_80380A04:
/* 80380A04  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 80380A08  C0 43 13 54 */	lfs f2, lit_474@l(r3)  /* 0x80641354@l */
/* 80380A0C  48 03 AB F1 */	bl get_percent_forAccelBrake
/* 80380A10  C0 5E 1C 00 */	lfs f2, 0x1c00(r30)
/* 80380A14  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80380A18  C0 1E 1C 18 */	lfs f0, 0x1c18(r30)
/* 80380A1C  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80380A20  EC 00 10 28 */	fsubs f0, f0, f2
/* 80380A24  EC 01 00 32 */	fmuls f0, f1, f0
/* 80380A28  EC 02 00 2A */	fadds f0, f2, f0
/* 80380A2C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80380A30  C0 5E 1C 04 */	lfs f2, 0x1c04(r30)
/* 80380A34  C0 1E 1C 1C */	lfs f0, 0x1c1c(r30)
/* 80380A38  EC 00 10 28 */	fsubs f0, f0, f2
/* 80380A3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80380A40  EC 02 00 2A */	fadds f0, f2, f0
/* 80380A44  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80380A48  C0 5E 1C 08 */	lfs f2, 0x1c08(r30)
/* 80380A4C  C0 1E 1C 20 */	lfs f0, 0x1c20(r30)
/* 80380A50  EC 00 10 28 */	fsubs f0, f0, f2
/* 80380A54  EC 01 00 32 */	fmuls f0, f1, f0
/* 80380A58  EC 02 00 2A */	fadds f0, f2, f0
/* 80380A5C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80380A60  C0 5E 1C 0C */	lfs f2, 0x1c0c(r30)
/* 80380A64  C0 1E 1C 24 */	lfs f0, 0x1c24(r30)
/* 80380A68  EC 00 10 28 */	fsubs f0, f0, f2
/* 80380A6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80380A70  EC 02 00 2A */	fadds f0, f2, f0
/* 80380A74  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80380A78  A8 BE 1C 10 */	lha r5, 0x1c10(r30)
/* 80380A7C  A8 7E 1C 28 */	lha r3, 0x1c28(r30)
/* 80380A80  7C C5 18 50 */	subf r6, r5, r3
/* 80380A84  7C C4 FE 70 */	srawi r4, r6, 0x1f
/* 80380A88  7C 83 32 78 */	xor r3, r4, r6
/* 80380A8C  7C 64 18 50 */	subf r3, r4, r3
/* 80380A90  7C 03 00 00 */	cmpw r3, r0
/* 80380A94  40 81 00 18 */	ble lbl_80380AAC
/* 80380A98  2C 06 00 00 */	cmpwi r6, 0
/* 80380A9C  40 81 00 0C */	ble lbl_80380AA8
/* 80380AA0  3C C6 FF FF */	addis r6, r6, 0xffff
/* 80380AA4  48 00 00 08 */	b lbl_80380AAC
lbl_80380AA8:
/* 80380AA8  3C C6 00 01 */	addis r6, r6, 1
lbl_80380AAC:
/* 80380AAC  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 80380AB0  3C 00 43 30 */	lis r0, 0x4330
/* 80380AB4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80380AB8  3C 80 80 64 */	lis r4, lit_487@ha /* 0x80641364@ha */
/* 80380ABC  C8 44 13 64 */	lfd f2, lit_487@l(r4)  /* 0x80641364@l */
/* 80380AC0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80380AC4  90 01 00 08 */	stw r0, 8(r1)
/* 80380AC8  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80380ACC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80380AD0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80380AD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80380AD8  FC 00 00 1E */	fctiwz f0, f0
/* 80380ADC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80380AE0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80380AE4  7C 65 1A 14 */	add r3, r5, r3
/* 80380AE8  B0 7F 00 00 */	sth r3, 0(r31)
/* 80380AEC  A8 BE 1C 12 */	lha r5, 0x1c12(r30)
/* 80380AF0  A8 7E 1C 2A */	lha r3, 0x1c2a(r30)
/* 80380AF4  7C C5 18 50 */	subf r6, r5, r3
/* 80380AF8  7C C4 FE 70 */	srawi r4, r6, 0x1f
/* 80380AFC  7C 83 32 78 */	xor r3, r4, r6
/* 80380B00  7C 64 18 50 */	subf r3, r4, r3
/* 80380B04  7C 03 00 00 */	cmpw r3, r0
/* 80380B08  40 81 00 18 */	ble lbl_80380B20
/* 80380B0C  2C 06 00 00 */	cmpwi r6, 0
/* 80380B10  40 81 00 0C */	ble lbl_80380B1C
/* 80380B14  3C C6 FF FF */	addis r6, r6, 0xffff
/* 80380B18  48 00 00 08 */	b lbl_80380B20
lbl_80380B1C:
/* 80380B1C  3C C6 00 01 */	addis r6, r6, 1
lbl_80380B20:
/* 80380B20  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80380B24  3C 60 43 30 */	lis r3, 0x4330
/* 80380B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80380B2C  3C 80 80 64 */	lis r4, lit_487@ha /* 0x80641364@ha */
/* 80380B30  C8 44 13 64 */	lfd f2, lit_487@l(r4)  /* 0x80641364@l */
/* 80380B34  38 00 00 00 */	li r0, 0
/* 80380B38  90 61 00 10 */	stw r3, 0x10(r1)
/* 80380B3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80380B40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80380B44  EC 00 10 28 */	fsubs f0, f0, f2
/* 80380B48  EC 01 00 32 */	fmuls f0, f1, f0
/* 80380B4C  FC 00 00 1E */	fctiwz f0, f0
/* 80380B50  D8 01 00 08 */	stfd f0, 8(r1)
/* 80380B54  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80380B58  7C 65 1A 14 */	add r3, r5, r3
/* 80380B5C  B0 7F 00 02 */	sth r3, 2(r31)
/* 80380B60  B0 1F 00 04 */	sth r0, 4(r31)
/* 80380B64  4B D1 A3 B9 */	bl func_8009AF1C
/* 80380B68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80380B6C  7C 08 03 A6 */	mtlr r0
/* 80380B70  38 21 00 30 */	addi r1, r1, 0x30
/* 80380B74  4E 80 00 20 */	blr 
