lbl_80409E9C:
/* 80409E9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80409EA0  7C 08 02 A6 */	mflr r0
/* 80409EA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80409EA8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80409EAC  7C 7F 1B 78 */	mr r31, r3
/* 80409EB0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80409EB4  7C 9E 23 78 */	mr r30, r4
/* 80409EB8  4B FF FE C5 */	bl Math3D_sphereCollisionPoint
/* 80409EBC  2C 03 00 00 */	cmpwi r3, 0
/* 80409EC0  40 82 00 18 */	bne lbl_80409ED8
/* 80409EC4  7F E3 FB 78 */	mr r3, r31
/* 80409EC8  38 9E 00 0C */	addi r4, r30, 0xc
/* 80409ECC  4B FF FE B1 */	bl Math3D_sphereCollisionPoint
/* 80409ED0  2C 03 00 00 */	cmpwi r3, 0
/* 80409ED4  41 82 00 0C */	beq lbl_80409EE0
lbl_80409ED8:
/* 80409ED8  38 60 00 01 */	li r3, 1
/* 80409EDC  48 00 01 B4 */	b lbl_8040A090
lbl_80409EE0:
/* 80409EE0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80409EE4  3C 60 80 64 */	lis r3, data_806436E4@ha /* 0x806436E4@ha */
/* 80409EE8  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80409EEC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80409EF0  EC 81 18 28 */	fsubs f4, f1, f3
/* 80409EF4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80409EF8  C0 DE 00 14 */	lfs f6, 0x14(r30)
/* 80409EFC  EC A0 10 28 */	fsubs f5, f0, f2
/* 80409F00  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80409F04  ED 04 01 32 */	fmuls f8, f4, f4
/* 80409F08  EC C6 08 28 */	fsubs f6, f6, f1
/* 80409F0C  C0 03 36 E4 */	lfs f0, data_806436E4@l(r3)  /* 0x806436E4@l */
/* 80409F10  EC E5 01 72 */	fmuls f7, f5, f5
/* 80409F14  ED 26 01 B2 */	fmuls f9, f6, f6
/* 80409F18  EC E8 38 2A */	fadds f7, f8, f7
/* 80409F1C  ED 69 38 2A */	fadds f11, f9, f7
/* 80409F20  FC E0 5A 10 */	fabs f7, f11
/* 80409F24  FC E0 38 18 */	frsp f7, f7
/* 80409F28  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 80409F2C  40 80 00 0C */	bge lbl_80409F38
/* 80409F30  38 60 00 00 */	li r3, 0
/* 80409F34  48 00 01 5C */	b lbl_8040A090
lbl_80409F38:
/* 80409F38  A8 7F 00 00 */	lha r3, 0(r31)
/* 80409F3C  3C A0 43 30 */	lis r5, 0x4330
/* 80409F40  A8 1F 00 02 */	lha r0, 2(r31)
/* 80409F44  3C C0 80 64 */	lis r6, lit_573@ha /* 0x8064370C@ha */
/* 80409F48  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 80409F4C  A8 7F 00 04 */	lha r3, 4(r31)
/* 80409F50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80409F54  90 81 00 14 */	stw r4, 0x14(r1)
/* 80409F58  38 E6 37 0C */	addi r7, r6, lit_573@l /* 0x8064370C@l */
/* 80409F5C  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 80409F60  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80409F64  3C 60 80 64 */	lis r3, lit_275@ha /* 0x806436E8@ha */
/* 80409F68  C8 07 00 00 */	lfd f0, 0(r7)
/* 80409F6C  C8 E1 00 10 */	lfd f7, 0x10(r1)
/* 80409F70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80409F74  ED 27 00 28 */	fsubs f9, f7, f0
/* 80409F78  C0 E3 36 E8 */	lfs f7, lit_275@l(r3)  /* 0x806436E8@l */
/* 80409F7C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80409F80  C9 01 00 18 */	lfd f8, 0x18(r1)
/* 80409F84  ED 29 18 28 */	fsubs f9, f9, f3
/* 80409F88  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80409F8C  ED 08 00 28 */	fsubs f8, f8, f0
/* 80409F90  90 A1 00 08 */	stw r5, 8(r1)
/* 80409F94  ED 24 02 72 */	fmuls f9, f4, f9
/* 80409F98  C9 41 00 08 */	lfd f10, 8(r1)
/* 80409F9C  ED 08 10 28 */	fsubs f8, f8, f2
/* 80409FA0  ED 4A 00 28 */	fsubs f10, f10, f0
/* 80409FA4  ED 05 02 32 */	fmuls f8, f5, f8
/* 80409FA8  ED 4A 08 28 */	fsubs f10, f10, f1
/* 80409FAC  ED 09 40 2A */	fadds f8, f9, f8
/* 80409FB0  ED 26 02 B2 */	fmuls f9, f6, f10
/* 80409FB4  ED 09 40 2A */	fadds f8, f9, f8
/* 80409FB8  ED 08 58 24 */	fdivs f8, f8, f11
/* 80409FBC  FC 08 38 40 */	fcmpo cr0, f8, f7
/* 80409FC0  41 80 00 14 */	blt lbl_80409FD4
/* 80409FC4  3C 60 80 64 */	lis r3, lit_276@ha /* 0x806436EC@ha */
/* 80409FC8  C0 E3 36 EC */	lfs f7, lit_276@l(r3)  /* 0x806436EC@l */
/* 80409FCC  FC 08 38 40 */	fcmpo cr0, f8, f7
/* 80409FD0  40 81 00 0C */	ble lbl_80409FDC
lbl_80409FD4:
/* 80409FD4  38 60 00 00 */	li r3, 0
/* 80409FD8  48 00 00 B8 */	b lbl_8040A090
lbl_80409FDC:
/* 80409FDC  EC E4 02 32 */	fmuls f7, f4, f8
/* 80409FE0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80409FE4  EC 86 02 32 */	fmuls f4, f6, f8
/* 80409FE8  3C 60 81 1C */	lis r3, h_1205@ha /* 0x811C76C8@ha */
/* 80409FEC  EC A5 02 32 */	fmuls f5, f5, f8
/* 80409FF0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80409FF4  EC 81 20 2A */	fadds f4, f1, f4
/* 80409FF8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80409FFC  EC A2 28 2A */	fadds f5, f2, f5
/* 8040A000  90 01 00 0C */	stw r0, 0xc(r1)
/* 8040A004  EC 41 00 28 */	fsubs f2, f1, f0
/* 8040A008  EC C3 38 2A */	fadds f6, f3, f7
/* 8040A00C  90 A1 00 08 */	stw r5, 8(r1)
/* 8040A010  D4 C3 76 C8 */	stfsu f6, h_1205@l(r3)  /* 0x811C76C8@l */
/* 8040A014  EC 46 10 28 */	fsubs f2, f6, f2
/* 8040A018  C8 21 00 08 */	lfd f1, 8(r1)
/* 8040A01C  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8040A020  EC 21 00 28 */	fsubs f1, f1, f0
/* 8040A024  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8040A028  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8040A02C  C8 61 00 18 */	lfd f3, 0x18(r1)
/* 8040A030  EC 25 08 28 */	fsubs f1, f5, f1
/* 8040A034  D0 A3 00 04 */	stfs f5, 4(r3)
/* 8040A038  EC 63 00 28 */	fsubs f3, f3, f0
/* 8040A03C  D0 83 00 08 */	stfs f4, 8(r3)
/* 8040A040  EC 21 00 72 */	fmuls f1, f1, f1
/* 8040A044  A8 1F 00 06 */	lha r0, 6(r31)
/* 8040A048  EC 64 18 28 */	fsubs f3, f4, f3
/* 8040A04C  EC 22 08 2A */	fadds f1, f2, f1
/* 8040A050  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8040A054  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040A058  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8040A05C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040A060  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8040A064  EC 62 08 2A */	fadds f3, f2, f1
/* 8040A068  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 8040A06C  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8040A070  EC 41 00 28 */	fsubs f2, f1, f0
/* 8040A074  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8040A078  EC 01 00 28 */	fsubs f0, f1, f0
/* 8040A07C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8040A080  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8040A084  4C 40 13 82 */	cror 2, 0, 2
/* 8040A088  7C 00 00 26 */	mfcr r0
/* 8040A08C  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
lbl_8040A090:
/* 8040A090  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8040A094  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8040A098  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8040A09C  7C 08 03 A6 */	mtlr r0
/* 8040A0A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8040A0A4  4E 80 00 20 */	blr 
