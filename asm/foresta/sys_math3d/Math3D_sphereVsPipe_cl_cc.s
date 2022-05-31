lbl_8040B8E4:
/* 8040B8E4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8040B8E8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8040B8EC  A8 E3 00 06 */	lha r7, 6(r3)
/* 8040B8F0  2C 07 00 00 */	cmpwi r7, 0
/* 8040B8F4  40 81 00 10 */	ble lbl_8040B904
/* 8040B8F8  AB E4 00 00 */	lha r31, 0(r4)
/* 8040B8FC  2C 1F 00 00 */	cmpwi r31, 0
/* 8040B900  41 81 00 0C */	bgt lbl_8040B90C
lbl_8040B904:
/* 8040B904  38 60 00 00 */	li r3, 0
/* 8040B908  48 00 02 1C */	b lbl_8040BB24
lbl_8040B90C:
/* 8040B90C  A8 03 00 02 */	lha r0, 2(r3)
/* 8040B910  3D 80 43 30 */	lis r12, 0x4330
/* 8040B914  6C EA 80 00 */	xoris r10, r7, 0x8000
/* 8040B918  3C E0 80 64 */	lis r7, lit_573@ha /* 0x8064370C@ha */
/* 8040B91C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040B920  3D 60 81 1C */	lis r11, sphereF@ha /* 0x811C7744@ha */
/* 8040B924  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040B928  39 07 37 0C */	addi r8, r7, lit_573@l /* 0x8064370C@l */
/* 8040B92C  3D 20 81 1C */	lis r9, pipeF@ha /* 0x811C7754@ha */
/* 8040B930  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 8040B934  91 81 00 10 */	stw r12, 0x10(r1)
/* 8040B938  3C E0 80 64 */	lis r7, lit_275@ha /* 0x806436E8@ha */
/* 8040B93C  C9 28 00 00 */	lfd f9, 0(r8)
/* 8040B940  39 07 36 E8 */	addi r8, r7, lit_275@l /* 0x806436E8@l */
/* 8040B944  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8040B948  38 EB 77 44 */	addi r7, r11, sphereF@l /* 0x811C7744@l */
/* 8040B94C  91 41 00 1C */	stw r10, 0x1c(r1)
/* 8040B950  39 29 77 54 */	addi r9, r9, pipeF@l /* 0x811C7754@l */
/* 8040B954  EC 20 48 28 */	fsubs f1, f0, f9
/* 8040B958  C0 68 00 00 */	lfs f3, 0(r8)
/* 8040B95C  91 81 00 18 */	stw r12, 0x18(r1)
/* 8040B960  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8040B964  D0 27 00 04 */	stfs f1, 4(r7)
/* 8040B968  EC 00 48 28 */	fsubs f0, f0, f9
/* 8040B96C  91 81 00 20 */	stw r12, 0x20(r1)
/* 8040B970  D0 07 00 0C */	stfs f0, 0xc(r7)
/* 8040B974  A9 04 00 08 */	lha r8, 8(r4)
/* 8040B978  91 81 00 28 */	stw r12, 0x28(r1)
/* 8040B97C  6D 08 80 00 */	xoris r8, r8, 0x8000
/* 8040B980  91 01 00 24 */	stw r8, 0x24(r1)
/* 8040B984  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8040B988  91 81 00 30 */	stw r12, 0x30(r1)
/* 8040B98C  EC 20 48 28 */	fsubs f1, f0, f9
/* 8040B990  91 81 00 38 */	stw r12, 0x38(r1)
/* 8040B994  D0 29 00 10 */	stfs f1, 0x10(r9)
/* 8040B998  A9 04 00 04 */	lha r8, 4(r4)
/* 8040B99C  91 81 00 40 */	stw r12, 0x40(r1)
/* 8040B9A0  6D 08 80 00 */	xoris r8, r8, 0x8000
/* 8040B9A4  91 01 00 2C */	stw r8, 0x2c(r1)
/* 8040B9A8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8040B9AC  91 81 00 48 */	stw r12, 0x48(r1)
/* 8040B9B0  EC 00 48 28 */	fsubs f0, f0, f9
/* 8040B9B4  91 81 00 50 */	stw r12, 0x50(r1)
/* 8040B9B8  D0 09 00 08 */	stfs f0, 8(r9)
/* 8040B9BC  EC 01 00 2A */	fadds f0, f1, f0
/* 8040B9C0  A9 04 00 02 */	lha r8, 2(r4)
/* 8040B9C4  91 41 00 5C */	stw r10, 0x5c(r1)
/* 8040B9C8  6D 08 80 00 */	xoris r8, r8, 0x8000
/* 8040B9CC  91 01 00 34 */	stw r8, 0x34(r1)
/* 8040B9D0  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 8040B9D4  91 81 00 58 */	stw r12, 0x58(r1)
/* 8040B9D8  EC 41 48 28 */	fsubs f2, f1, f9
/* 8040B9DC  C8 21 00 58 */	lfd f1, 0x58(r1)
/* 8040B9E0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8040B9E4  EC C1 48 28 */	fsubs f6, f1, f9
/* 8040B9E8  D0 49 00 04 */	stfs f2, 4(r9)
/* 8040B9EC  EC 22 00 2A */	fadds f1, f2, f0
/* 8040B9F0  A8 03 00 00 */	lha r0, 0(r3)
/* 8040B9F4  A9 04 00 06 */	lha r8, 6(r4)
/* 8040B9F8  A8 63 00 04 */	lha r3, 4(r3)
/* 8040B9FC  6C 09 80 00 */	xoris r9, r0, 0x8000
/* 8040BA00  A8 04 00 0A */	lha r0, 0xa(r4)
/* 8040BA04  6D 04 80 00 */	xoris r4, r8, 0x8000
/* 8040BA08  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8040BA0C  91 21 00 3C */	stw r9, 0x3c(r1)
/* 8040BA10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040BA14  90 81 00 44 */	stw r4, 0x44(r1)
/* 8040BA18  C8 81 00 38 */	lfd f4, 0x38(r1)
/* 8040BA1C  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8040BA20  C8 41 00 40 */	lfd f2, 0x40(r1)
/* 8040BA24  ED 04 48 28 */	fsubs f8, f4, f9
/* 8040BA28  90 01 00 54 */	stw r0, 0x54(r1)
/* 8040BA2C  C8 81 00 48 */	lfd f4, 0x48(r1)
/* 8040BA30  EC E2 48 28 */	fsubs f7, f2, f9
/* 8040BA34  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 8040BA38  91 81 00 60 */	stw r12, 0x60(r1)
/* 8040BA3C  EC A4 48 28 */	fsubs f5, f4, f9
/* 8040BA40  EC 82 48 28 */	fsubs f4, f2, f9
/* 8040BA44  EC E8 38 28 */	fsubs f7, f8, f7
/* 8040BA48  C8 41 00 60 */	lfd f2, 0x60(r1)
/* 8040BA4C  EC 85 20 28 */	fsubs f4, f5, f4
/* 8040BA50  EC 42 48 28 */	fsubs f2, f2, f9
/* 8040BA54  EC A7 01 F2 */	fmuls f5, f7, f7
/* 8040BA58  EC 84 01 32 */	fmuls f4, f4, f4
/* 8040BA5C  EC 46 10 2A */	fadds f2, f6, f2
/* 8040BA60  EC E5 20 2A */	fadds f7, f5, f4
/* 8040BA64  FC 07 18 40 */	fcmpo cr0, f7, f3
/* 8040BA68  40 81 00 68 */	ble lbl_8040BAD0
/* 8040BA6C  FC 80 38 34 */	frsqrte f4, f7
/* 8040BA70  3C 60 80 64 */	lis r3, lit_516@ha /* 0x806436F4@ha */
/* 8040BA74  38 83 36 F4 */	addi r4, r3, lit_516@l /* 0x806436F4@l */
/* 8040BA78  3C 60 80 64 */	lis r3, lit_517@ha /* 0x806436FC@ha */
/* 8040BA7C  C8 C4 00 00 */	lfd f6, 0(r4)
/* 8040BA80  FC 64 01 32 */	fmul f3, f4, f4
/* 8040BA84  C8 A3 36 FC */	lfd f5, lit_517@l(r3)  /* 0x806436FC@l */
/* 8040BA88  FC 86 01 32 */	fmul f4, f6, f4
/* 8040BA8C  FC 67 00 F2 */	fmul f3, f7, f3
/* 8040BA90  FC 65 18 28 */	fsub f3, f5, f3
/* 8040BA94  FC 84 00 F2 */	fmul f4, f4, f3
/* 8040BA98  FC 64 01 32 */	fmul f3, f4, f4
/* 8040BA9C  FC 86 01 32 */	fmul f4, f6, f4
/* 8040BAA0  FC 67 00 F2 */	fmul f3, f7, f3
/* 8040BAA4  FC 65 18 28 */	fsub f3, f5, f3
/* 8040BAA8  FC 84 00 F2 */	fmul f4, f4, f3
/* 8040BAAC  FC 64 01 32 */	fmul f3, f4, f4
/* 8040BAB0  FC 86 01 32 */	fmul f4, f6, f4
/* 8040BAB4  FC 67 00 F2 */	fmul f3, f7, f3
/* 8040BAB8  FC 65 18 28 */	fsub f3, f5, f3
/* 8040BABC  FC 64 00 F2 */	fmul f3, f4, f3
/* 8040BAC0  FC 67 00 F2 */	fmul f3, f7, f3
/* 8040BAC4  FC 60 18 18 */	frsp f3, f3
/* 8040BAC8  D0 61 00 08 */	stfs f3, 8(r1)
/* 8040BACC  C0 E1 00 08 */	lfs f7, 8(r1)
lbl_8040BAD0:
/* 8040BAD0  D0 E6 00 00 */	stfs f7, 0(r6)
/* 8040BAD4  C0 C6 00 00 */	lfs f6, 0(r6)
/* 8040BAD8  FC 02 30 40 */	fcmpo cr0, f2, f6
/* 8040BADC  40 80 00 0C */	bge lbl_8040BAE8
/* 8040BAE0  38 60 00 00 */	li r3, 0
/* 8040BAE4  48 00 00 40 */	b lbl_8040BB24
lbl_8040BAE8:
/* 8040BAE8  C0 A7 00 04 */	lfs f5, 4(r7)
/* 8040BAEC  C0 87 00 0C */	lfs f4, 0xc(r7)
/* 8040BAF0  EC 65 20 2A */	fadds f3, f5, f4
/* 8040BAF4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8040BAF8  4C 41 13 82 */	cror 2, 1, 2
/* 8040BAFC  40 82 00 24 */	bne lbl_8040BB20
/* 8040BB00  EC 05 20 28 */	fsubs f0, f5, f4
/* 8040BB04  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8040BB08  4C 40 13 82 */	cror 2, 0, 2
/* 8040BB0C  40 82 00 14 */	bne lbl_8040BB20
/* 8040BB10  EC 02 30 28 */	fsubs f0, f2, f6
/* 8040BB14  38 60 00 01 */	li r3, 1
/* 8040BB18  D0 05 00 00 */	stfs f0, 0(r5)
/* 8040BB1C  48 00 00 08 */	b lbl_8040BB24
lbl_8040BB20:
/* 8040BB20  38 60 00 00 */	li r3, 0
lbl_8040BB24:
/* 8040BB24  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8040BB28  38 21 00 70 */	addi r1, r1, 0x70
/* 8040BB2C  4E 80 00 20 */	blr 
