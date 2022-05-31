lbl_805EFD94:
/* 805EFD94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805EFD98  7C 08 02 A6 */	mflr r0
/* 805EFD9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805EFDA0  39 61 00 30 */	addi r11, r1, 0x30
/* 805EFDA4  4B AA B1 29 */	bl func_8009AECC
/* 805EFDA8  7C 9C 23 78 */	mr r28, r4
/* 805EFDAC  7C 7B 1B 78 */	mr r27, r3
/* 805EFDB0  3C E0 80 6D */	lis r7, data_806CF828@ha /* 0x806CF828@ha */
/* 805EFDB4  80 64 00 00 */	lwz r3, 0(r4)
/* 805EFDB8  80 84 00 04 */	lwz r4, 4(r4)
/* 805EFDBC  7C BD 2B 78 */	mr r29, r5
/* 805EFDC0  7C DE 33 78 */	mr r30, r6
/* 805EFDC4  3B E7 F8 28 */	addi r31, r7, data_806CF828@l /* 0x806CF828@l */
/* 805EFDC8  4B FF FF 41 */	bl mTG_get_max_col_width_data
/* 805EFDCC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 805EFDD0  3C A0 43 30 */	lis r5, 0x4330
/* 805EFDD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EFDD8  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064B824@ha */
/* 805EFDDC  C8 43 B8 24 */	lfd f2, lit_523@l(r3)  /* 0x8064B824@l */
/* 805EFDE0  90 A1 00 08 */	stw r5, 8(r1)
/* 805EFDE4  C8 01 00 08 */	lfd f0, 8(r1)
/* 805EFDE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 805EFDEC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 805EFDF0  88 1B 00 00 */	lbz r0, 0(r27)
/* 805EFDF4  2C 00 00 2D */	cmpwi r0, 0x2d
/* 805EFDF8  41 82 00 9C */	beq lbl_805EFE94
/* 805EFDFC  40 80 00 1C */	bge lbl_805EFE18
/* 805EFE00  2C 00 00 2B */	cmpwi r0, 0x2b
/* 805EFE04  41 82 00 2C */	beq lbl_805EFE30
/* 805EFE08  40 80 01 6C */	bge lbl_805EFF74
/* 805EFE0C  2C 00 00 19 */	cmpwi r0, 0x19
/* 805EFE10  41 82 00 84 */	beq lbl_805EFE94
/* 805EFE14  48 00 01 60 */	b lbl_805EFF74
lbl_805EFE18:
/* 805EFE18  2C 00 00 47 */	cmpwi r0, 0x47
/* 805EFE1C  41 82 00 78 */	beq lbl_805EFE94
/* 805EFE20  40 80 01 54 */	bge lbl_805EFF74
/* 805EFE24  2C 00 00 40 */	cmpwi r0, 0x40
/* 805EFE28  41 82 00 E8 */	beq lbl_805EFF10
/* 805EFE2C  48 00 01 48 */	b lbl_805EFF74
lbl_805EFE30:
/* 805EFE30  80 7C 00 04 */	lwz r3, 4(r28)
/* 805EFE34  3C 80 80 65 */	lis r4, lit_707@ha /* 0x8064B864@ha */
/* 805EFE38  90 A1 00 08 */	stw r5, 8(r1)
/* 805EFE3C  38 A0 00 01 */	li r5, 1
/* 805EFE40  38 03 00 02 */	addi r0, r3, 2
/* 805EFE44  C0 24 B8 64 */	lfs f1, lit_707@l(r4)  /* 0x8064B864@l */
/* 805EFE48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805EFE4C  38 7F 08 E8 */	addi r3, r31, 0x8e8
/* 805EFE50  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EFE54  38 80 00 06 */	li r4, 6
/* 805EFE58  C8 01 00 08 */	lfd f0, 8(r1)
/* 805EFE5C  EC 00 10 28 */	fsubs f0, f0, f2
/* 805EFE60  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EFE64  D0 1E 00 00 */	stfs f0, 0(r30)
/* 805EFE68  4B DB F8 69 */	bl mFont_GetStringWidth
/* 805EFE6C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EFE70  3C 00 43 30 */	lis r0, 0x4330
/* 805EFE74  90 61 00 14 */	stw r3, 0x14(r1)
/* 805EFE78  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805EFE7C  C8 24 B8 24 */	lfd f1, lit_523@l(r4)  /* 0x8064B824@l */
/* 805EFE80  90 01 00 10 */	stw r0, 0x10(r1)
/* 805EFE84  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805EFE88  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EFE8C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 805EFE90  48 00 01 18 */	b lbl_805EFFA8
lbl_805EFE94:
/* 805EFE94  80 9C 00 04 */	lwz r4, 4(r28)
/* 805EFE98  3C 00 43 30 */	lis r0, 0x4330
/* 805EFE9C  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064B824@ha */
/* 805EFEA0  3C A0 80 65 */	lis r5, lit_707@ha /* 0x8064B864@ha */
/* 805EFEA4  38 84 00 01 */	addi r4, r4, 1
/* 805EFEA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805EFEAC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 805EFEB0  C8 23 B8 24 */	lfd f1, lit_523@l(r3)  /* 0x8064B824@l */
/* 805EFEB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EFEB8  38 7F 08 D0 */	addi r3, r31, 0x8d0
/* 805EFEBC  C0 45 B8 64 */	lfs f2, lit_707@l(r5)  /* 0x8064B864@l */
/* 805EFEC0  38 80 00 0D */	li r4, 0xd
/* 805EFEC4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805EFEC8  38 A0 00 01 */	li r5, 1
/* 805EFECC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EFED0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EFED4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 805EFED8  4B DB F7 F9 */	bl mFont_GetStringWidth
/* 805EFEDC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EFEE0  3C 00 43 30 */	lis r0, 0x4330
/* 805EFEE4  90 61 00 0C */	stw r3, 0xc(r1)
/* 805EFEE8  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805EFEEC  C8 44 B8 24 */	lfd f2, lit_523@l(r4)  /* 0x8064B824@l */
/* 805EFEF0  90 01 00 08 */	stw r0, 8(r1)
/* 805EFEF4  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805EFEF8  C8 21 00 08 */	lfd f1, 8(r1)
/* 805EFEFC  EC 21 10 28 */	fsubs f1, f1, f2
/* 805EFF00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EFF04  40 81 00 A4 */	ble lbl_805EFFA8
/* 805EFF08  D0 3D 00 00 */	stfs f1, 0(r29)
/* 805EFF0C  48 00 00 9C */	b lbl_805EFFA8
lbl_805EFF10:
/* 805EFF10  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 805EFF14  38 80 00 0B */	li r4, 0xb
/* 805EFF18  38 A0 00 01 */	li r5, 1
/* 805EFF1C  4B DB F7 B5 */	bl mFont_GetStringWidth
/* 805EFF20  3C 00 43 30 */	lis r0, 0x4330
/* 805EFF24  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EFF28  90 61 00 14 */	stw r3, 0x14(r1)
/* 805EFF2C  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805EFF30  3C 60 80 65 */	lis r3, lit_707@ha /* 0x8064B864@ha */
/* 805EFF34  C8 44 B8 24 */	lfd f2, lit_523@l(r4)  /* 0x8064B824@l */
/* 805EFF38  90 01 00 10 */	stw r0, 0x10(r1)
/* 805EFF3C  C0 23 B8 64 */	lfs f1, lit_707@l(r3)  /* 0x8064B864@l */
/* 805EFF40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805EFF44  90 01 00 08 */	stw r0, 8(r1)
/* 805EFF48  EC 00 10 28 */	fsubs f0, f0, f2
/* 805EFF4C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 805EFF50  80 7C 00 04 */	lwz r3, 4(r28)
/* 805EFF54  38 03 00 02 */	addi r0, r3, 2
/* 805EFF58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805EFF5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EFF60  C8 01 00 08 */	lfd f0, 8(r1)
/* 805EFF64  EC 00 10 28 */	fsubs f0, f0, f2
/* 805EFF68  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EFF6C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 805EFF70  48 00 00 38 */	b lbl_805EFFA8
lbl_805EFF74:
/* 805EFF74  80 7C 00 04 */	lwz r3, 4(r28)
/* 805EFF78  3C 00 43 30 */	lis r0, 0x4330
/* 805EFF7C  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805EFF80  3C A0 80 65 */	lis r5, lit_707@ha /* 0x8064B864@ha */
/* 805EFF84  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805EFF88  90 01 00 10 */	stw r0, 0x10(r1)
/* 805EFF8C  C8 24 B8 24 */	lfd f1, lit_523@l(r4)  /* 0x8064B824@l */
/* 805EFF90  90 61 00 14 */	stw r3, 0x14(r1)
/* 805EFF94  C0 45 B8 64 */	lfs f2, lit_707@l(r5)  /* 0x8064B864@l */
/* 805EFF98  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805EFF9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EFFA0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EFFA4  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_805EFFA8:
/* 805EFFA8  39 61 00 30 */	addi r11, r1, 0x30
/* 805EFFAC  4B AA AF 6D */	bl func_8009AF18
/* 805EFFB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805EFFB4  7C 08 03 A6 */	mtlr r0
/* 805EFFB8  38 21 00 30 */	addi r1, r1, 0x30
/* 805EFFBC  4E 80 00 20 */	blr 
