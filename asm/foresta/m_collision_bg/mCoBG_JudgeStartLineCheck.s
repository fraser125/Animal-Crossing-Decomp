lbl_80393988:
/* 80393988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039398C  7C 08 02 A6 */	mflr r0
/* 80393990  28 03 00 00 */	cmplwi r3, 0
/* 80393994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80393998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039399C  7C BF 2B 78 */	mr r31, r5
/* 803939A0  93 C1 00 08 */	stw r30, 8(r1)
/* 803939A4  7C 9E 23 78 */	mr r30, r4
/* 803939A8  41 82 00 08 */	beq lbl_803939B0
/* 803939AC  4B FF 2C 01 */	bl mCoBG_InitRevpos
lbl_803939B0:
/* 803939B0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 803939B4  3C 60 80 64 */	lis r3, lit_448@ha /* 0x806419A8@ha */
/* 803939B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 803939BC  C0 43 19 A8 */	lfs f2, lit_448@l(r3)  /* 0x806419A8@l */
/* 803939C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 803939C4  FC 00 02 10 */	fabs f0, f0
/* 803939C8  FC 00 00 18 */	frsp f0, f0
/* 803939CC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 803939D0  40 80 00 44 */	bge lbl_80393A14
/* 803939D4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 803939D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 803939DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 803939E0  FC 00 02 10 */	fabs f0, f0
/* 803939E4  FC 00 00 18 */	frsp f0, f0
/* 803939E8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 803939EC  40 80 00 28 */	bge lbl_80393A14
/* 803939F0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 803939F4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 803939F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 803939FC  FC 00 02 10 */	fabs f0, f0
/* 80393A00  FC 00 00 18 */	frsp f0, f0
/* 80393A04  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80393A08  40 80 00 0C */	bge lbl_80393A14
/* 80393A0C  38 60 00 00 */	li r3, 0
/* 80393A10  48 00 00 08 */	b lbl_80393A18
lbl_80393A14:
/* 80393A14  38 60 00 01 */	li r3, 1
lbl_80393A18:
/* 80393A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80393A1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80393A20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80393A24  7C 08 03 A6 */	mtlr r0
/* 80393A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80393A2C  4E 80 00 20 */	blr 