lbl_8062EECC:
/* 8062EECC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8062EED0  7C 08 02 A6 */	mflr r0
/* 8062EED4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8062EED8  39 61 00 30 */	addi r11, r1, 0x30
/* 8062EEDC  4B A6 BF F1 */	bl func_8009AECC
/* 8062EEE0  7C 7D 1B 78 */	mr r29, r3
/* 8062EEE4  3C 80 80 6D */	lis r4, data_806D4C40@ha /* 0x806D4C40@ha */
/* 8062EEE8  A0 63 00 00 */	lhz r3, 0(r3)
/* 8062EEEC  3B E4 4C 40 */	addi r31, r4, data_806D4C40@l /* 0x806D4C40@l */
/* 8062EEF0  3B DD 01 34 */	addi r30, r29, 0x134
/* 8062EEF4  38 DD 01 A4 */	addi r6, r29, 0x1a4
/* 8062EEF8  38 03 FE 94 */	addi r0, r3, -364
/* 8062EEFC  38 7F 0D A8 */	addi r3, r31, 0xda8
/* 8062EF00  54 1C 10 3A */	slwi r28, r0, 2
/* 8062EF04  3B 7F 0F A8 */	addi r27, r31, 0xfa8
/* 8062EF08  7C 83 E0 2E */	lwzx r4, r3, r28
/* 8062EF0C  7F C3 F3 78 */	mr r3, r30
/* 8062EF10  7C BB E0 2E */	lwzx r5, r27, r28
/* 8062EF14  38 FD 01 DA */	addi r7, r29, 0x1da
/* 8062EF18  4B D4 1B 7D */	bl cKF_SkeletonInfo_R_ct
/* 8062EF1C  7C 9B E0 2E */	lwzx r4, r27, r28
/* 8062EF20  7F C3 F3 78 */	mr r3, r30
/* 8062EF24  38 A0 00 00 */	li r5, 0
/* 8062EF28  4B D4 1C BD */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8062EF2C  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8062EF30  7F C3 F3 78 */	mr r3, r30
/* 8062EF34  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8062EF38  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8062EF3C  4B D4 20 D9 */	bl cKF_SkeletonInfo_R_play
/* 8062EF40  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8062EF44  3C C0 43 30 */	lis r6, 0x4330
/* 8062EF48  38 83 D2 74 */	addi r4, r3, data_8064D274@l /* 0x8064D274@l */
/* 8062EF4C  90 C1 00 08 */	stw r6, 8(r1)
/* 8062EF50  C0 24 00 00 */	lfs f1, 0(r4)
/* 8062EF54  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8062EF58  38 83 D2 84 */	addi r4, r3, lit_371@l /* 0x8064D284@l */
/* 8062EF5C  D0 3E 00 00 */	stfs f1, 0(r30)
/* 8062EF60  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8062EF64  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8062EF68  7C 7B E0 2E */	lwzx r3, r27, r28
/* 8062EF6C  C8 C4 00 00 */	lfd f6, 0(r4)
/* 8062EF70  A8 03 00 12 */	lha r0, 0x12(r3)
/* 8062EF74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8062EF78  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062EF7C  C8 41 00 08 */	lfd f2, 8(r1)
/* 8062EF80  EC 42 30 28 */	fsubs f2, f2, f6
/* 8062EF84  D0 5E 00 04 */	stfs f2, 4(r30)
/* 8062EF88  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8062EF8C  88 1D 01 2C */	lbz r0, 0x12c(r29)
/* 8062EF90  28 00 00 00 */	cmplwi r0, 0
/* 8062EF94  40 82 00 54 */	bne lbl_8062EFE8
/* 8062EF98  38 00 00 03 */	li r0, 3
/* 8062EF9C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062EFA0  B0 1D 01 30 */	sth r0, 0x130(r29)
/* 8062EFA4  38 83 D2 78 */	addi r4, r3, lit_368@l /* 0x8064D278@l */
/* 8062EFA8  38 BF 11 E0 */	addi r5, r31, 0x11e0
/* 8062EFAC  C0 64 00 00 */	lfs f3, 0(r4)
/* 8062EFB0  A8 05 00 12 */	lha r0, 0x12(r5)
/* 8062EFB4  3C 60 80 65 */	lis r3, lit_627@ha /* 0x8064D290@ha */
/* 8062EFB8  90 C1 00 08 */	stw r6, 8(r1)
/* 8062EFBC  FC 80 18 90 */	fmr f4, f3
/* 8062EFC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8062EFC4  C0 A3 D2 90 */	lfs f5, lit_627@l(r3)  /* 0x8064D290@l */
/* 8062EFC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062EFCC  7F C3 F3 78 */	mr r3, r30
/* 8062EFD0  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8062EFD4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8062EFD8  38 C0 00 00 */	li r6, 0
/* 8062EFDC  38 E0 00 00 */	li r7, 0
/* 8062EFE0  EC 40 30 28 */	fsubs f2, f0, f6
/* 8062EFE4  4B D4 1C F1 */	bl cKF_SkeletonInfo_R_init
lbl_8062EFE8:
/* 8062EFE8  A8 1D 08 30 */	lha r0, 0x830(r29)
/* 8062EFEC  2C 00 00 00 */	cmpwi r0, 0
/* 8062EFF0  40 82 00 10 */	bne lbl_8062F000
/* 8062EFF4  38 00 00 05 */	li r0, 5
/* 8062EFF8  B0 1D 08 2E */	sth r0, 0x82e(r29)
/* 8062EFFC  48 00 00 0C */	b lbl_8062F008
lbl_8062F000:
/* 8062F000  38 00 00 00 */	li r0, 0
/* 8062F004  B0 1D 08 2E */	sth r0, 0x82e(r29)
lbl_8062F008:
/* 8062F008  39 61 00 30 */	addi r11, r1, 0x30
/* 8062F00C  4B A6 BF 0D */	bl func_8009AF18
/* 8062F010  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8062F014  7C 08 03 A6 */	mtlr r0
/* 8062F018  38 21 00 30 */	addi r1, r1, 0x30
/* 8062F01C  4E 80 00 20 */	blr 
