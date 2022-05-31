lbl_8038ECF4:
/* 8038ECF4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8038ECF8  7C 08 02 A6 */	mflr r0
/* 8038ECFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8038ED00  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8038ED04  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8038ED08  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8038ED0C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8038ED10  39 61 00 20 */	addi r11, r1, 0x20
/* 8038ED14  4B D0 C1 BD */	bl func_8009AED0
/* 8038ED18  7C FD 3B 78 */	mr r29, r7
/* 8038ED1C  C0 27 00 10 */	lfs f1, 0x10(r7)
/* 8038ED20  7C 9F 23 78 */	mr r31, r4
/* 8038ED24  7C 7E 1B 78 */	mr r30, r3
/* 8038ED28  7C BC 2B 78 */	mr r28, r5
/* 8038ED2C  7C C3 33 78 */	mr r3, r6
/* 8038ED30  7F A4 EB 78 */	mr r4, r29
/* 8038ED34  4B FF C2 B1 */	bl mCoBG_JudgePointInCircle_Xyz
/* 8038ED38  2C 03 00 00 */	cmpwi r3, 0
/* 8038ED3C  40 82 01 88 */	bne lbl_8038EEC4
/* 8038ED40  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8038ED44  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038ED48  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8038ED4C  C0 7C 00 08 */	lfs f3, 8(r28)
/* 8038ED50  EC 42 00 28 */	fsubs f2, f2, f0
/* 8038ED54  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8038ED58  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038ED5C  EC 23 08 28 */	fsubs f1, f3, f1
/* 8038ED60  EC 82 00 B2 */	fmuls f4, f2, f2
/* 8038ED64  EC 61 00 72 */	fmuls f3, f1, f1
/* 8038ED68  EF E4 18 2A */	fadds f31, f4, f3
/* 8038ED6C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8038ED70  40 81 00 68 */	ble lbl_8038EDD8
/* 8038ED74  FC 60 F8 34 */	frsqrte f3, f31
/* 8038ED78  3C 60 80 64 */	lis r3, lit_587@ha /* 0x806419B4@ha */
/* 8038ED7C  38 83 19 B4 */	addi r4, r3, lit_587@l /* 0x806419B4@l */
/* 8038ED80  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806419BC@ha */
/* 8038ED84  C8 A4 00 00 */	lfd f5, 0(r4)
/* 8038ED88  FC 03 00 F2 */	fmul f0, f3, f3
/* 8038ED8C  C8 83 19 BC */	lfd f4, lit_588@l(r3)  /* 0x806419BC@l */
/* 8038ED90  FC 65 00 F2 */	fmul f3, f5, f3
/* 8038ED94  FC 1F 00 32 */	fmul f0, f31, f0
/* 8038ED98  FC 04 00 28 */	fsub f0, f4, f0
/* 8038ED9C  FC 63 00 32 */	fmul f3, f3, f0
/* 8038EDA0  FC 03 00 F2 */	fmul f0, f3, f3
/* 8038EDA4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8038EDA8  FC 1F 00 32 */	fmul f0, f31, f0
/* 8038EDAC  FC 04 00 28 */	fsub f0, f4, f0
/* 8038EDB0  FC 63 00 32 */	fmul f3, f3, f0
/* 8038EDB4  FC 03 00 F2 */	fmul f0, f3, f3
/* 8038EDB8  FC 65 00 F2 */	fmul f3, f5, f3
/* 8038EDBC  FC 1F 00 32 */	fmul f0, f31, f0
/* 8038EDC0  FC 04 00 28 */	fsub f0, f4, f0
/* 8038EDC4  FC 03 00 32 */	fmul f0, f3, f0
/* 8038EDC8  FC 1F 00 32 */	fmul f0, f31, f0
/* 8038EDCC  FC 00 00 18 */	frsp f0, f0
/* 8038EDD0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8038EDD4  C3 E1 00 08 */	lfs f31, 8(r1)
lbl_8038EDD8:
/* 8038EDD8  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8038EDDC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8038EDE0  EC 03 00 2A */	fadds f0, f3, f0
/* 8038EDE4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8038EDE8  40 80 00 98 */	bge lbl_8038EE80
/* 8038EDEC  EF C0 F8 28 */	fsubs f30, f0, f31
/* 8038EDF0  48 07 D2 11 */	bl atans_table
/* 8038EDF4  FC 00 FA 10 */	fabs f0, f31
/* 8038EDF8  C0 9C 00 00 */	lfs f4, 0(r28)
/* 8038EDFC  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8038EE00  3C 80 80 64 */	lis r4, lit_448@ha /* 0x806419A8@ha */
/* 8038EE04  C0 7C 00 08 */	lfs f3, 8(r28)
/* 8038EE08  7C 66 1B 78 */	mr r6, r3
/* 8038EE0C  FC 20 00 18 */	frsp f1, f0
/* 8038EE10  C0 04 19 A8 */	lfs f0, lit_448@l(r4)  /* 0x806419A8@l */
/* 8038EE14  EC 84 10 28 */	fsubs f4, f4, f2
/* 8038EE18  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8038EE1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038EE20  EC 23 10 28 */	fsubs f1, f3, f2
/* 8038EE24  40 80 00 10 */	bge lbl_8038EE34
/* 8038EE28  3C 60 80 64 */	lis r3, lit_522@ha /* 0x806419B0@ha */
/* 8038EE2C  C0 03 19 B0 */	lfs f0, lit_522@l(r3)  /* 0x806419B0@l */
/* 8038EE30  48 00 00 10 */	b lbl_8038EE40
lbl_8038EE34:
/* 8038EE34  3C 60 80 64 */	lis r3, lit_522@ha /* 0x806419B0@ha */
/* 8038EE38  C0 03 19 B0 */	lfs f0, lit_522@l(r3)  /* 0x806419B0@l */
/* 8038EE3C  EC 00 F8 24 */	fdivs f0, f0, f31
lbl_8038EE40:
/* 8038EE40  EC 44 00 32 */	fmuls f2, f4, f0
/* 8038EE44  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038EE48  EC 01 00 32 */	fmuls f0, f1, f0
/* 8038EE4C  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038EE50  7F E3 FB 78 */	mr r3, r31
/* 8038EE54  38 9F 00 58 */	addi r4, r31, 0x58
/* 8038EE58  EC 42 07 B2 */	fmuls f2, f2, f30
/* 8038EE5C  38 A0 00 00 */	li r5, 0
/* 8038EE60  EC 21 07 B2 */	fmuls f1, f1, f30
/* 8038EE64  38 E0 00 01 */	li r7, 1
/* 8038EE68  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8038EE6C  D0 5E 00 00 */	stfs f2, 0(r30)
/* 8038EE70  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038EE74  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038EE78  4B FF 79 61 */	bl mCoBG_RegistCollisionWallInfo
/* 8038EE7C  48 00 00 48 */	b lbl_8038EEC4
lbl_8038EE80:
/* 8038EE80  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038EE84  EC 7F 00 28 */	fsubs f3, f31, f0
/* 8038EE88  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038EE8C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8038EE90  40 81 00 34 */	ble lbl_8038EEC4
/* 8038EE94  3C 60 80 64 */	lis r3, lit_2059@ha /* 0x80641A7C@ha */
/* 8038EE98  C0 03 1A 7C */	lfs f0, lit_2059@l(r3)  /* 0x80641A7C@l */
/* 8038EE9C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8038EEA0  40 80 00 24 */	bge lbl_8038EEC4
/* 8038EEA4  48 07 D1 5D */	bl atans_table
/* 8038EEA8  7C 60 1B 78 */	mr r0, r3
/* 8038EEAC  7F E3 FB 78 */	mr r3, r31
/* 8038EEB0  7C 06 03 78 */	mr r6, r0
/* 8038EEB4  38 9F 00 58 */	addi r4, r31, 0x58
/* 8038EEB8  38 A0 00 00 */	li r5, 0
/* 8038EEBC  38 E0 00 01 */	li r7, 1
/* 8038EEC0  4B FF 79 19 */	bl mCoBG_RegistCollisionWallInfo
lbl_8038EEC4:
/* 8038EEC4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8038EEC8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8038EECC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8038EED0  39 61 00 20 */	addi r11, r1, 0x20
/* 8038EED4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8038EED8  4B D0 C0 45 */	bl func_8009AF1C
/* 8038EEDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8038EEE0  7C 08 03 A6 */	mtlr r0
/* 8038EEE4  38 21 00 40 */	addi r1, r1, 0x40
/* 8038EEE8  4E 80 00 20 */	blr 
