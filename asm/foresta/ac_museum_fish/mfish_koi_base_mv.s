lbl_8043EC4C:
/* 8043EC4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8043EC50  7C 08 02 A6 */	mflr r0
/* 8043EC54  3C A0 80 64 */	lis r5, lit_698@ha /* 0x806442B4@ha */
/* 8043EC58  90 01 00 34 */	stw r0, 0x34(r1)
/* 8043EC5C  C0 25 42 B4 */	lfs f1, lit_698@l(r5)  /* 0x806442B4@l */
/* 8043EC60  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8043EC64  7C 9F 23 78 */	mr r31, r4
/* 8043EC68  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8043EC6C  7C 7E 1B 78 */	mr r30, r3
/* 8043EC70  C0 03 00 08 */	lfs f0, 8(r3)
/* 8043EC74  C0 5E 05 F8 */	lfs f2, 0x5f8(r30)
/* 8043EC78  EC 01 00 32 */	fmuls f0, f1, f0
/* 8043EC7C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043EC80  40 81 00 18 */	ble lbl_8043EC98
/* 8043EC84  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043EC88  38 00 00 00 */	li r0, 0
/* 8043EC8C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043EC90  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 8043EC94  B0 1E 06 26 */	sth r0, 0x626(r30)
lbl_8043EC98:
/* 8043EC98  A8 9E 06 26 */	lha r4, 0x626(r30)
/* 8043EC9C  38 64 FF FF */	addi r3, r4, -1
/* 8043ECA0  7C 80 07 35 */	extsh. r0, r4
/* 8043ECA4  B0 7E 06 26 */	sth r3, 0x626(r30)
/* 8043ECA8  41 81 00 D4 */	bgt lbl_8043ED7C
/* 8043ECAC  4B C1 E0 49 */	bl fqrand
/* 8043ECB0  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 8043ECB4  3C 00 43 30 */	lis r0, 0x4330
/* 8043ECB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8043ECBC  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043ECC0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043ECC4  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8043ECC8  90 61 00 14 */	stw r3, 0x14(r1)
/* 8043ECCC  7F C3 F3 78 */	mr r3, r30
/* 8043ECD0  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8043ECD4  7F E4 FB 78 */	mr r4, r31
/* 8043ECD8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8043ECDC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043ECE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043ECE4  FC 00 00 1E */	fctiwz f0, f0
/* 8043ECE8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8043ECEC  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8043ECF0  7C 00 2A 14 */	add r0, r0, r5
/* 8043ECF4  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8043ECF8  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8043ECFC  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 8043ED00  4B FF 86 1D */	bl mfish_peck_check
/* 8043ED04  2C 03 00 00 */	cmpwi r3, 0
/* 8043ED08  41 82 00 34 */	beq lbl_8043ED3C
/* 8043ED0C  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8043ED10  7F C3 F3 78 */	mr r3, r30
/* 8043ED14  38 80 00 00 */	li r4, 0
/* 8043ED18  7C 00 0E 70 */	srawi r0, r0, 1
/* 8043ED1C  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8043ED20  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8043ED24  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 8043ED28  4B FF D5 F9 */	bl func_8043C320
/* 8043ED2C  7F C3 F3 78 */	mr r3, r30
/* 8043ED30  7F E4 FB 78 */	mr r4, r31
/* 8043ED34  4B FF F0 E5 */	bl mfish_koi_peck_process_init
/* 8043ED38  48 00 01 24 */	b lbl_8043EE5C
lbl_8043ED3C:
/* 8043ED3C  7F C3 F3 78 */	mr r3, r30
/* 8043ED40  4B FF 2E AD */	bl mfish_WallCheck
/* 8043ED44  2C 03 00 00 */	cmpwi r3, 0
/* 8043ED48  41 82 00 1C */	beq lbl_8043ED64
/* 8043ED4C  7F C3 F3 78 */	mr r3, r30
/* 8043ED50  38 80 00 01 */	li r4, 1
/* 8043ED54  4B FF D5 CD */	bl func_8043C320
/* 8043ED58  7F C3 F3 78 */	mr r3, r30
/* 8043ED5C  4B FF E9 B5 */	bl mfish_koi_turn_process_init
/* 8043ED60  48 00 00 FC */	b lbl_8043EE5C
lbl_8043ED64:
/* 8043ED64  7F C3 F3 78 */	mr r3, r30
/* 8043ED68  38 80 00 00 */	li r4, 0
/* 8043ED6C  4B FF D5 B5 */	bl func_8043C320
/* 8043ED70  7F C3 F3 78 */	mr r3, r30
/* 8043ED74  4B FF E1 39 */	bl mfish_koi_normal_process_init
/* 8043ED78  48 00 00 E4 */	b lbl_8043EE5C
lbl_8043ED7C:
/* 8043ED7C  3C 60 80 44 */	lis r3, mfish_koi_normal_process@ha /* 0x8043D154@ha */
/* 8043ED80  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 8043ED84  38 03 D1 54 */	addi r0, r3, mfish_koi_normal_process@l /* 0x8043D154@l */
/* 8043ED88  7C 04 00 40 */	cmplw r4, r0
/* 8043ED8C  40 82 00 D0 */	bne lbl_8043EE5C
/* 8043ED90  A8 9E 06 2E */	lha r4, 0x62e(r30)
/* 8043ED94  54 80 06 FD */	rlwinm. r0, r4, 0, 0x1b, 0x1e
/* 8043ED98  41 82 00 2C */	beq lbl_8043EDC4
/* 8043ED9C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8043EDA0  A8 1E 06 2C */	lha r0, 0x62c(r30)
/* 8043EDA4  7C 63 00 50 */	subf r3, r3, r0
/* 8043EDA8  7C 60 07 34 */	extsh r0, r3
/* 8043EDAC  7C 63 07 35 */	extsh. r3, r3
/* 8043EDB0  7C 60 00 D0 */	neg r3, r0
/* 8043EDB4  41 80 00 08 */	blt lbl_8043EDBC
/* 8043EDB8  7C 03 03 78 */	mr r3, r0
lbl_8043EDBC:
/* 8043EDBC  2C 03 15 55 */	cmpwi r3, 0x1555
/* 8043EDC0  41 80 00 3C */	blt lbl_8043EDFC
lbl_8043EDC4:
/* 8043EDC4  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 8043EDC8  41 82 00 94 */	beq lbl_8043EE5C
/* 8043EDCC  A8 7E 06 2A */	lha r3, 0x62a(r30)
/* 8043EDD0  A8 9E 06 0E */	lha r4, 0x60e(r30)
/* 8043EDD4  3C 63 00 01 */	addis r3, r3, 1
/* 8043EDD8  38 03 80 00 */	addi r0, r3, -32768
/* 8043EDDC  7C 64 00 50 */	subf r3, r4, r0
/* 8043EDE0  7C 60 07 35 */	extsh. r0, r3
/* 8043EDE4  7C 60 07 34 */	extsh r0, r3
/* 8043EDE8  7C 60 00 D0 */	neg r3, r0
/* 8043EDEC  41 80 00 08 */	blt lbl_8043EDF4
/* 8043EDF0  7C 03 03 78 */	mr r3, r0
lbl_8043EDF4:
/* 8043EDF4  2C 03 15 55 */	cmpwi r3, 0x1555
/* 8043EDF8  40 80 00 64 */	bge lbl_8043EE5C
lbl_8043EDFC:
/* 8043EDFC  4B C1 DE F9 */	bl fqrand
/* 8043EE00  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 8043EE04  3C 00 43 30 */	lis r0, 0x4330
/* 8043EE08  90 01 00 18 */	stw r0, 0x18(r1)
/* 8043EE0C  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043EE10  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043EE14  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8043EE18  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8043EE1C  7F C3 F3 78 */	mr r3, r30
/* 8043EE20  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8043EE24  38 80 00 01 */	li r4, 1
/* 8043EE28  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8043EE2C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043EE30  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043EE34  FC 00 00 1E */	fctiwz f0, f0
/* 8043EE38  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043EE3C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8043EE40  7C 00 2A 14 */	add r0, r0, r5
/* 8043EE44  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8043EE48  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8043EE4C  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 8043EE50  4B FF D4 D1 */	bl func_8043C320
/* 8043EE54  7F C3 F3 78 */	mr r3, r30
/* 8043EE58  4B FF E8 B9 */	bl mfish_koi_turn_process_init
lbl_8043EE5C:
/* 8043EE5C  A8 BE 06 38 */	lha r5, 0x638(r30)
/* 8043EE60  7F C3 F3 78 */	mr r3, r30
/* 8043EE64  7F E4 FB 78 */	mr r4, r31
/* 8043EE68  38 05 07 1C */	addi r0, r5, 0x71c
/* 8043EE6C  B0 1E 06 38 */	sth r0, 0x638(r30)
/* 8043EE70  81 9E 00 34 */	lwz r12, 0x34(r30)
/* 8043EE74  7D 89 03 A6 */	mtctr r12
/* 8043EE78  4E 80 04 21 */	bctrl 
/* 8043EE7C  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8043EE80  7C 80 07 35 */	extsh. r0, r4
/* 8043EE84  7C 64 00 D0 */	neg r3, r4
/* 8043EE88  41 80 00 08 */	blt lbl_8043EE90
/* 8043EE8C  7C 83 23 78 */	mr r3, r4
lbl_8043EE90:
/* 8043EE90  A8 BE 06 1C */	lha r5, 0x61c(r30)
/* 8043EE94  7C A0 07 35 */	extsh. r0, r5
/* 8043EE98  7C 05 00 D0 */	neg r0, r5
/* 8043EE9C  41 80 00 08 */	blt lbl_8043EEA4
/* 8043EEA0  7C A0 2B 78 */	mr r0, r5
lbl_8043EEA4:
/* 8043EEA4  7C 00 18 00 */	cmpw r0, r3
/* 8043EEA8  40 80 00 50 */	bge lbl_8043EEF8
/* 8043EEAC  7C 80 07 35 */	extsh. r0, r4
/* 8043EEB0  7C 04 00 D0 */	neg r0, r4
/* 8043EEB4  41 80 00 08 */	blt lbl_8043EEBC
/* 8043EEB8  7C 80 23 78 */	mr r0, r4
lbl_8043EEBC:
/* 8043EEBC  2C 00 01 6C */	cmpwi r0, 0x16c
/* 8043EEC0  40 81 00 38 */	ble lbl_8043EEF8
/* 8043EEC4  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043EEC8  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043EECC  C0 23 42 68 */	lfs f1, lit_527@l(r3)  /* 0x80644268@l */
/* 8043EED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043EED4  40 81 00 08 */	ble lbl_8043EEDC
/* 8043EED8  48 00 00 08 */	b lbl_8043EEE0
lbl_8043EEDC:
/* 8043EEDC  FC 20 00 90 */	fmr f1, f0
lbl_8043EEE0:
/* 8043EEE0  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8043EEE4  3C 60 80 64 */	lis r3, lit_1068@ha /* 0x80644308@ha */
/* 8043EEE8  C0 63 43 08 */	lfs f3, lit_1068@l(r3)  /* 0x80644308@l */
/* 8043EEEC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8043EEF0  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 8043EEF4  4B F7 C3 A1 */	bl add_calc2
lbl_8043EEF8:
/* 8043EEF8  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8043EEFC  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043EF00  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8043EF04  38 C0 00 09 */	li r6, 9
/* 8043EF08  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8043EF0C  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8043EF10  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043EF14  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043EF18  FC 40 28 34 */	frsqrte f2, f5
/* 8043EF1C  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8043EF20  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043EF24  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043EF28  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043EF2C  38 7E 06 0C */	addi r3, r30, 0x60c
/* 8043EF30  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043EF34  A8 9E 06 12 */	lha r4, 0x612(r30)
/* 8043EF38  38 A0 01 11 */	li r5, 0x111
/* 8043EF3C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043EF40  FC 25 00 72 */	fmul f1, f5, f1
/* 8043EF44  FC 23 08 28 */	fsub f1, f3, f1
/* 8043EF48  FC 42 00 72 */	fmul f2, f2, f1
/* 8043EF4C  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043EF50  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043EF54  FC 25 00 72 */	fmul f1, f5, f1
/* 8043EF58  FC 23 08 28 */	fsub f1, f3, f1
/* 8043EF5C  FC 42 00 72 */	fmul f2, f2, f1
/* 8043EF60  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043EF64  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043EF68  FC 25 00 72 */	fmul f1, f5, f1
/* 8043EF6C  FC 23 08 28 */	fsub f1, f3, f1
/* 8043EF70  FC 22 00 72 */	fmul f1, f2, f1
/* 8043EF74  FC 25 00 72 */	fmul f1, f5, f1
/* 8043EF78  FC 20 08 18 */	frsp f1, f1
/* 8043EF7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043EF80  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043EF84  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043EF88  4B F7 C3 89 */	bl add_calc_short_angle2
/* 8043EF8C  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8043EF90  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043EF94  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8043EF98  38 C0 00 09 */	li r6, 9
/* 8043EF9C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8043EFA0  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8043EFA4  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043EFA8  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043EFAC  FC 40 28 34 */	frsqrte f2, f5
/* 8043EFB0  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8043EFB4  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043EFB8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043EFBC  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043EFC0  38 7E 06 12 */	addi r3, r30, 0x612
/* 8043EFC4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043EFC8  38 80 00 00 */	li r4, 0
/* 8043EFCC  38 A0 00 5B */	li r5, 0x5b
/* 8043EFD0  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043EFD4  FC 25 00 72 */	fmul f1, f5, f1
/* 8043EFD8  FC 23 08 28 */	fsub f1, f3, f1
/* 8043EFDC  FC 42 00 72 */	fmul f2, f2, f1
/* 8043EFE0  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043EFE4  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043EFE8  FC 25 00 72 */	fmul f1, f5, f1
/* 8043EFEC  FC 23 08 28 */	fsub f1, f3, f1
/* 8043EFF0  FC 42 00 72 */	fmul f2, f2, f1
/* 8043EFF4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043EFF8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043EFFC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043F000  FC 23 08 28 */	fsub f1, f3, f1
/* 8043F004  FC 22 00 72 */	fmul f1, f2, f1
/* 8043F008  FC 25 00 72 */	fmul f1, f5, f1
/* 8043F00C  FC 20 08 18 */	frsp f1, f1
/* 8043F010  D0 21 00 08 */	stfs f1, 8(r1)
/* 8043F014  C0 21 00 08 */	lfs f1, 8(r1)
/* 8043F018  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043F01C  4B F7 C2 F5 */	bl add_calc_short_angle2
/* 8043F020  7F C3 F3 78 */	mr r3, r30
/* 8043F024  7F E4 FB 78 */	mr r4, r31
/* 8043F028  4B FF F8 DD */	bl mfish_koi_base_FishMove
/* 8043F02C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8043F030  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8043F034  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8043F038  7C 08 03 A6 */	mtlr r0
/* 8043F03C  38 21 00 30 */	addi r1, r1, 0x30
/* 8043F040  4E 80 00 20 */	blr 
