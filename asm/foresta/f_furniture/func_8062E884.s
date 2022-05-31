lbl_8062E884:
/* 8062E884  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8062E888  7C 08 02 A6 */	mflr r0
/* 8062E88C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8062E890  88 06 01 2C */	lbz r0, 0x12c(r6)
/* 8062E894  28 00 00 01 */	cmplwi r0, 1
/* 8062E898  40 82 00 10 */	bne lbl_8062E8A8
/* 8062E89C  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 8062E8A0  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 8062E8A4  48 00 00 0C */	b lbl_8062E8B0
lbl_8062E8A8:
/* 8062E8A8  3C E0 80 65 */	lis r7, lit_368@ha /* 0x8064D278@ha */
/* 8062E8AC  C0 27 D2 78 */	lfs f1, lit_368@l(r7)  /* 0x8064D278@l */
lbl_8062E8B0:
/* 8062E8B0  C0 46 08 34 */	lfs f2, 0x834(r6)
/* 8062E8B4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8062E8B8  40 81 00 28 */	ble lbl_8062E8E0
/* 8062E8BC  3C E0 80 65 */	lis r7, lit_369@ha /* 0x8064D27C@ha */
/* 8062E8C0  C0 07 D2 7C */	lfs f0, lit_369@l(r7)  /* 0x8064D27C@l */
/* 8062E8C4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8062E8C8  D0 06 08 34 */	stfs f0, 0x834(r6)
/* 8062E8CC  C0 06 08 34 */	lfs f0, 0x834(r6)
/* 8062E8D0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8062E8D4  40 80 00 30 */	bge lbl_8062E904
/* 8062E8D8  D0 26 08 34 */	stfs f1, 0x834(r6)
/* 8062E8DC  48 00 00 28 */	b lbl_8062E904
lbl_8062E8E0:
/* 8062E8E0  40 80 00 24 */	bge lbl_8062E904
/* 8062E8E4  3C E0 80 65 */	lis r7, lit_369@ha /* 0x8064D27C@ha */
/* 8062E8E8  C0 07 D2 7C */	lfs f0, lit_369@l(r7)  /* 0x8064D27C@l */
/* 8062E8EC  EC 02 00 2A */	fadds f0, f2, f0
/* 8062E8F0  D0 06 08 34 */	stfs f0, 0x834(r6)
/* 8062E8F4  C0 06 08 34 */	lfs f0, 0x834(r6)
/* 8062E8F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8062E8FC  40 81 00 08 */	ble lbl_8062E904
/* 8062E900  D0 26 08 34 */	stfs f1, 0x834(r6)
lbl_8062E904:
/* 8062E904  28 03 00 00 */	cmplwi r3, 0
/* 8062E908  41 82 01 A4 */	beq lbl_8062EAAC
/* 8062E90C  3D 00 80 65 */	lis r8, lit_371@ha /* 0x8064D284@ha */
/* 8062E910  38 E0 00 10 */	li r7, 0x10
/* 8062E914  C8 08 D2 84 */	lfd f0, lit_371@l(r8)  /* 0x8064D284@l */
/* 8062E918  39 00 00 00 */	li r8, 0
/* 8062E91C  3C 00 43 30 */	lis r0, 0x4330
/* 8062E920  7C E9 03 A6 */	mtctr r7
lbl_8062E924:
/* 8062E924  38 E0 00 00 */	li r7, 0
/* 8062E928  90 01 00 10 */	stw r0, 0x10(r1)
/* 8062E92C  7C E3 43 2E */	sthx r7, r3, r8
/* 8062E930  7D 24 42 2E */	lhzx r9, r4, r8
/* 8062E934  7C E5 42 2E */	lhzx r7, r5, r8
/* 8062E938  55 29 B6 FE */	rlwinm r9, r9, 0x16, 0x1b, 0x1f
/* 8062E93C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8062E940  6D 29 80 00 */	xoris r9, r9, 0x8000
/* 8062E944  54 E7 B6 FE */	rlwinm r7, r7, 0x16, 0x1b, 0x1f
/* 8062E948  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 8062E94C  91 21 00 1C */	stw r9, 0x1c(r1)
/* 8062E950  C0 66 08 34 */	lfs f3, 0x834(r6)
/* 8062E954  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8062E958  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8062E95C  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8062E960  91 21 00 0C */	stw r9, 0xc(r1)
/* 8062E964  EC 21 00 28 */	fsubs f1, f1, f0
/* 8062E968  EC 42 00 28 */	fsubs f2, f2, f0
/* 8062E96C  7D 23 42 2E */	lhzx r9, r3, r8
/* 8062E970  90 01 00 08 */	stw r0, 8(r1)
/* 8062E974  EC 22 08 28 */	fsubs f1, f2, f1
/* 8062E978  C8 41 00 08 */	lfd f2, 8(r1)
/* 8062E97C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8062E980  EC 42 00 28 */	fsubs f2, f2, f0
/* 8062E984  EC 23 00 72 */	fmuls f1, f3, f1
/* 8062E988  90 01 00 38 */	stw r0, 0x38(r1)
/* 8062E98C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8062E990  EC 22 08 2A */	fadds f1, f2, f1
/* 8062E994  90 01 00 50 */	stw r0, 0x50(r1)
/* 8062E998  FC 20 08 1E */	fctiwz f1, f1
/* 8062E99C  90 01 00 58 */	stw r0, 0x58(r1)
/* 8062E9A0  90 01 00 48 */	stw r0, 0x48(r1)
/* 8062E9A4  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 8062E9A8  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 8062E9AC  54 E7 54 6A */	rlwinm r7, r7, 0xa, 0x11, 0x15
/* 8062E9B0  7D 27 3B 78 */	or r7, r9, r7
/* 8062E9B4  7C E3 43 2E */	sthx r7, r3, r8
/* 8062E9B8  7D 24 42 2E */	lhzx r9, r4, r8
/* 8062E9BC  7C E5 42 2E */	lhzx r7, r5, r8
/* 8062E9C0  55 29 DE FE */	rlwinm r9, r9, 0x1b, 0x1b, 0x1f
/* 8062E9C4  C0 66 08 34 */	lfs f3, 0x834(r6)
/* 8062E9C8  6D 29 80 00 */	xoris r9, r9, 0x8000
/* 8062E9CC  54 E7 DE FE */	rlwinm r7, r7, 0x1b, 0x1b, 0x1f
/* 8062E9D0  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 8062E9D4  91 21 00 3C */	stw r9, 0x3c(r1)
/* 8062E9D8  7D 43 42 2E */	lhzx r10, r3, r8
/* 8062E9DC  90 E1 00 34 */	stw r7, 0x34(r1)
/* 8062E9E0  C8 21 00 38 */	lfd f1, 0x38(r1)
/* 8062E9E4  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 8062E9E8  91 21 00 2C */	stw r9, 0x2c(r1)
/* 8062E9EC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8062E9F0  EC 42 00 28 */	fsubs f2, f2, f0
/* 8062E9F4  C8 81 00 28 */	lfd f4, 0x28(r1)
/* 8062E9F8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8062E9FC  EC 44 00 28 */	fsubs f2, f4, f0
/* 8062EA00  EC 23 00 72 */	fmuls f1, f3, f1
/* 8062EA04  EC 22 08 2A */	fadds f1, f2, f1
/* 8062EA08  FC 20 08 1E */	fctiwz f1, f1
/* 8062EA0C  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 8062EA10  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 8062EA14  54 E7 2D B4 */	rlwinm r7, r7, 5, 0x16, 0x1a
/* 8062EA18  7D 47 3B 78 */	or r7, r10, r7
/* 8062EA1C  7C E3 43 2E */	sthx r7, r3, r8
/* 8062EA20  7D 24 42 2E */	lhzx r9, r4, r8
/* 8062EA24  7C E5 42 2E */	lhzx r7, r5, r8
/* 8062EA28  55 29 06 FE */	clrlwi r9, r9, 0x1b
/* 8062EA2C  C0 66 08 34 */	lfs f3, 0x834(r6)
/* 8062EA30  6D 29 80 00 */	xoris r9, r9, 0x8000
/* 8062EA34  54 E7 06 FE */	clrlwi r7, r7, 0x1b
/* 8062EA38  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 8062EA3C  91 21 00 5C */	stw r9, 0x5c(r1)
/* 8062EA40  7D 43 42 2E */	lhzx r10, r3, r8
/* 8062EA44  90 E1 00 54 */	stw r7, 0x54(r1)
/* 8062EA48  C8 21 00 58 */	lfd f1, 0x58(r1)
/* 8062EA4C  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 8062EA50  91 21 00 4C */	stw r9, 0x4c(r1)
/* 8062EA54  EC 21 00 28 */	fsubs f1, f1, f0
/* 8062EA58  EC 42 00 28 */	fsubs f2, f2, f0
/* 8062EA5C  C8 81 00 48 */	lfd f4, 0x48(r1)
/* 8062EA60  EC 22 08 28 */	fsubs f1, f2, f1
/* 8062EA64  EC 44 00 28 */	fsubs f2, f4, f0
/* 8062EA68  EC 23 00 72 */	fmuls f1, f3, f1
/* 8062EA6C  EC 22 08 2A */	fadds f1, f2, f1
/* 8062EA70  FC 20 08 1E */	fctiwz f1, f1
/* 8062EA74  D8 21 00 60 */	stfd f1, 0x60(r1)
/* 8062EA78  80 E1 00 64 */	lwz r7, 0x64(r1)
/* 8062EA7C  54 E7 06 FE */	clrlwi r7, r7, 0x1b
/* 8062EA80  7D 47 3B 78 */	or r7, r10, r7
/* 8062EA84  7C E3 43 2E */	sthx r7, r3, r8
/* 8062EA88  7C E4 42 2E */	lhzx r7, r4, r8
/* 8062EA8C  7D 23 42 2E */	lhzx r9, r3, r8
/* 8062EA90  54 E7 04 20 */	rlwinm r7, r7, 0, 0x10, 0x10
/* 8062EA94  7D 27 3B 78 */	or r7, r9, r7
/* 8062EA98  7C E3 43 2E */	sthx r7, r3, r8
/* 8062EA9C  39 08 00 02 */	addi r8, r8, 2
/* 8062EAA0  42 00 FE 84 */	bdnz lbl_8062E924
/* 8062EAA4  38 80 00 20 */	li r4, 0x20
/* 8062EAA8  4B A4 B1 75 */	bl DCStoreRangeNoSync
lbl_8062EAAC:
/* 8062EAAC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8062EAB0  7C 08 03 A6 */	mtlr r0
/* 8062EAB4  38 21 00 70 */	addi r1, r1, 0x70
/* 8062EAB8  4E 80 00 20 */	blr 
