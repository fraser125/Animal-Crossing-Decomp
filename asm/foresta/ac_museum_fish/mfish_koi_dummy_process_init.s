lbl_8043C9B8:
/* 8043C9B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043C9BC  7C 08 02 A6 */	mflr r0
/* 8043C9C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043C9C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043C9C8  7C 7F 1B 78 */	mr r31, r3
/* 8043C9CC  4B FF 53 3D */	bl mfish_get_hide_camera_angle
/* 8043C9D0  B0 7F 06 34 */	sth r3, 0x634(r31)
/* 8043C9D4  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 8043C9D8  54 00 06 FD */	rlwinm. r0, r0, 0, 0x1b, 0x1e
/* 8043C9DC  41 82 00 30 */	beq lbl_8043CA0C
/* 8043C9E0  A8 7F 06 2C */	lha r3, 0x62c(r31)
/* 8043C9E4  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 8043C9E8  7C 03 00 50 */	subf r0, r3, r0
/* 8043C9EC  7C 00 07 35 */	extsh. r0, r0
/* 8043C9F0  40 81 00 10 */	ble lbl_8043CA00
/* 8043C9F4  38 03 40 00 */	addi r0, r3, 0x4000
/* 8043C9F8  B0 1F 06 34 */	sth r0, 0x634(r31)
/* 8043C9FC  48 00 00 A4 */	b lbl_8043CAA0
lbl_8043CA00:
/* 8043CA00  38 03 C0 00 */	addi r0, r3, -16384
/* 8043CA04  B0 1F 06 34 */	sth r0, 0x634(r31)
/* 8043CA08  48 00 00 98 */	b lbl_8043CAA0
lbl_8043CA0C:
/* 8043CA0C  3C 60 80 64 */	lis r3, lit_921@ha /* 0x806442E4@ha */
/* 8043CA10  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043CA14  38 A3 42 E4 */	addi r5, r3, lit_921@l /* 0x806442E4@l */
/* 8043CA18  38 C0 00 5B */	li r6, 0x5b
/* 8043CA1C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8043CA20  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8043CA24  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043CA28  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043CA2C  FC 40 28 34 */	frsqrte f2, f5
/* 8043CA30  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8043CA34  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043CA38  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043CA3C  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043CA40  38 7F 06 34 */	addi r3, r31, 0x634
/* 8043CA44  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043CA48  A8 9F 06 14 */	lha r4, 0x614(r31)
/* 8043CA4C  38 A0 05 55 */	li r5, 0x555
/* 8043CA50  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043CA54  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CA58  FC 23 08 28 */	fsub f1, f3, f1
/* 8043CA5C  FC 42 00 72 */	fmul f2, f2, f1
/* 8043CA60  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043CA64  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043CA68  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CA6C  FC 23 08 28 */	fsub f1, f3, f1
/* 8043CA70  FC 42 00 72 */	fmul f2, f2, f1
/* 8043CA74  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043CA78  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043CA7C  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CA80  FC 23 08 28 */	fsub f1, f3, f1
/* 8043CA84  FC 22 00 72 */	fmul f1, f2, f1
/* 8043CA88  FC 25 00 72 */	fmul f1, f5, f1
/* 8043CA8C  FC 20 08 18 */	frsp f1, f1
/* 8043CA90  D0 21 00 08 */	stfs f1, 8(r1)
/* 8043CA94  C0 21 00 08 */	lfs f1, 8(r1)
/* 8043CA98  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043CA9C  4B F7 E8 75 */	bl add_calc_short_angle2
lbl_8043CAA0:
/* 8043CAA0  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043CAA4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8043CAA8  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 8043CAAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043CAB0  40 81 00 08 */	ble lbl_8043CAB8
/* 8043CAB4  FC 00 08 90 */	fmr f0, f1
lbl_8043CAB8:
/* 8043CAB8  C0 5F 05 E8 */	lfs f2, 0x5e8(r31)
/* 8043CABC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8043CAC0  40 80 00 20 */	bge lbl_8043CAE0
/* 8043CAC4  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043CAC8  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 8043CACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043CAD0  40 81 00 08 */	ble lbl_8043CAD8
/* 8043CAD4  48 00 00 10 */	b lbl_8043CAE4
lbl_8043CAD8:
/* 8043CAD8  FC 20 00 90 */	fmr f1, f0
/* 8043CADC  48 00 00 08 */	b lbl_8043CAE4
lbl_8043CAE0:
/* 8043CAE0  FC 20 10 90 */	fmr f1, f2
lbl_8043CAE4:
/* 8043CAE4  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043CAE8  3C 60 80 44 */	lis r3, mfish_koi_dummy_process@ha /* 0x8043CB14@ha */
/* 8043CAEC  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
/* 8043CAF0  38 03 CB 14 */	addi r0, r3, mfish_koi_dummy_process@l /* 0x8043CB14@l */
/* 8043CAF4  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043CAF8  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 8043CAFC  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8043CB00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043CB04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043CB08  7C 08 03 A6 */	mtlr r0
/* 8043CB0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8043CB10  4E 80 00 20 */	blr 
