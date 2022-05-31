lbl_805ED014:
/* 805ED014  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805ED018  7C 08 02 A6 */	mflr r0
/* 805ED01C  90 01 00 64 */	stw r0, 0x64(r1)
/* 805ED020  39 61 00 60 */	addi r11, r1, 0x60
/* 805ED024  4B AA DE AD */	bl func_8009AED0
/* 805ED028  7C BD 2B 79 */	or. r29, r5, r5
/* 805ED02C  7C 7C 1B 78 */	mr r28, r3
/* 805ED030  7C 9E 23 78 */	mr r30, r4
/* 805ED034  41 82 00 24 */	beq lbl_805ED058
/* 805ED038  80 7E 02 D4 */	lwz r3, 0x2d4(r30)
/* 805ED03C  38 63 FF C0 */	addi r3, r3, -64
/* 805ED040  90 7E 02 D4 */	stw r3, 0x2d4(r30)
/* 805ED044  7C 7F 1B 78 */	mr r31, r3
/* 805ED048  4B DC 30 99 */	bl mFont_CulcOrthoMatrix
/* 805ED04C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805ED050  93 E3 0A 00 */	stw r31, 0xa00(r3)
/* 805ED054  48 00 00 0C */	b lbl_805ED060
lbl_805ED058:
/* 805ED058  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805ED05C  83 E3 0A 00 */	lwz r31, 0xa00(r3)
lbl_805ED060:
/* 805ED060  2C 1D 00 00 */	cmpwi r29, 0
/* 805ED064  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 805ED068  40 82 01 4C */	bne lbl_805ED1B4
/* 805ED06C  80 1C 00 00 */	lwz r0, 0(r28)
/* 805ED070  2C 00 00 04 */	cmpwi r0, 4
/* 805ED074  41 82 00 18 */	beq lbl_805ED08C
/* 805ED078  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805ED07C  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805ED080  80 84 00 00 */	lwz r4, 0(r4)
/* 805ED084  38 84 1A 68 */	addi r4, r4, 0x1a68
/* 805ED088  48 00 00 14 */	b lbl_805ED09C
lbl_805ED08C:
/* 805ED08C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805ED090  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805ED094  80 84 00 00 */	lwz r4, 0(r4)
/* 805ED098  38 84 00 E0 */	addi r4, r4, 0xe0
lbl_805ED09C:
/* 805ED09C  3C 00 E7 00 */	lis r0, 0xe700
/* 805ED0A0  3D 40 43 30 */	lis r10, 0x4330
/* 805ED0A4  90 03 00 00 */	stw r0, 0(r3)
/* 805ED0A8  38 00 00 00 */	li r0, 0
/* 805ED0AC  3C C0 80 65 */	lis r6, data_8064B784@ha /* 0x8064B784@ha */
/* 805ED0B0  3C A0 80 65 */	lis r5, lit_458@ha /* 0x8064B78C@ha */
/* 805ED0B4  90 03 00 04 */	stw r0, 4(r3)
/* 805ED0B8  39 66 B7 84 */	addi r11, r6, data_8064B784@l /* 0x8064B784@l */
/* 805ED0BC  38 E5 B7 8C */	addi r7, r5, lit_458@l /* 0x8064B78C@l */
/* 805ED0C0  3C C0 DC 08 */	lis r6, 0xDC08 /* 0xDC080008@ha */
/* 805ED0C4  81 24 00 0C */	lwz r9, 0xc(r4)
/* 805ED0C8  39 06 00 08 */	addi r8, r6, 0x0008 /* 0xDC080008@l */
/* 805ED0CC  C8 47 00 00 */	lfd f2, 0(r7)
/* 805ED0D0  3C A0 00 A0 */	lis r5, 0x00A0 /* 0x00A00780@ha */
/* 805ED0D4  6D 26 80 00 */	xoris r6, r9, 0x8000
/* 805ED0D8  80 04 00 04 */	lwz r0, 4(r4)
/* 805ED0DC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805ED0E0  38 E4 00 48 */	addi r7, r4, 0x48
/* 805ED0E4  6C 09 80 00 */	xoris r9, r0, 0x8000
/* 805ED0E8  C0 6B 00 00 */	lfs f3, 0(r11)
/* 805ED0EC  91 41 00 08 */	stw r10, 8(r1)
/* 805ED0F0  38 05 07 80 */	addi r0, r5, 0x0780 /* 0x00A00780@l */
/* 805ED0F4  3C C0 ED 00 */	lis r6, 0xed00
/* 805ED0F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805ED0FC  91 21 00 1C */	stw r9, 0x1c(r1)
/* 805ED100  EC 20 10 28 */	fsubs f1, f0, f2
/* 805ED104  91 41 00 18 */	stw r10, 0x18(r1)
/* 805ED108  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805ED10C  EC 23 00 72 */	fmuls f1, f3, f1
/* 805ED110  91 41 00 38 */	stw r10, 0x38(r1)
/* 805ED114  EC 00 10 28 */	fsubs f0, f0, f2
/* 805ED118  FC 20 08 1E */	fctiwz f1, f1
/* 805ED11C  91 41 00 28 */	stw r10, 0x28(r1)
/* 805ED120  EC 03 00 32 */	fmuls f0, f3, f0
/* 805ED124  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805ED128  FC 00 00 1E */	fctiwz f0, f0
/* 805ED12C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 805ED130  54 A5 62 26 */	rlwinm r5, r5, 0xc, 8, 0x13
/* 805ED134  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805ED138  64 A9 ED 00 */	oris r9, r5, 0xed00
/* 805ED13C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805ED140  54 A5 05 3E */	clrlwi r5, r5, 0x14
/* 805ED144  7D 25 2B 78 */	or r5, r9, r5
/* 805ED148  90 A3 00 08 */	stw r5, 8(r3)
/* 805ED14C  80 A4 00 08 */	lwz r5, 8(r4)
/* 805ED150  81 24 00 10 */	lwz r9, 0x10(r4)
/* 805ED154  6C A4 80 00 */	xoris r4, r5, 0x8000
/* 805ED158  90 81 00 3C */	stw r4, 0x3c(r1)
/* 805ED15C  6D 24 80 00 */	xoris r4, r9, 0x8000
/* 805ED160  90 81 00 2C */	stw r4, 0x2c(r1)
/* 805ED164  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805ED168  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 805ED16C  EC 00 10 28 */	fsubs f0, f0, f2
/* 805ED170  EC 21 10 28 */	fsubs f1, f1, f2
/* 805ED174  EC 03 00 32 */	fmuls f0, f3, f0
/* 805ED178  EC 23 00 72 */	fmuls f1, f3, f1
/* 805ED17C  FC 00 00 1E */	fctiwz f0, f0
/* 805ED180  FC 20 08 1E */	fctiwz f1, f1
/* 805ED184  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805ED188  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 805ED18C  80 81 00 44 */	lwz r4, 0x44(r1)
/* 805ED190  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 805ED194  54 84 05 3E */	clrlwi r4, r4, 0x14
/* 805ED198  50 A4 62 26 */	rlwimi r4, r5, 0xc, 8, 0x13
/* 805ED19C  90 83 00 0C */	stw r4, 0xc(r3)
/* 805ED1A0  91 03 00 10 */	stw r8, 0x10(r3)
/* 805ED1A4  90 E3 00 14 */	stw r7, 0x14(r3)
/* 805ED1A8  90 C3 00 18 */	stw r6, 0x18(r3)
/* 805ED1AC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 805ED1B0  38 63 00 20 */	addi r3, r3, 0x20
lbl_805ED1B4:
/* 805ED1B4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380007@ha */
/* 805ED1B8  7C 65 1B 78 */	mr r5, r3
/* 805ED1BC  38 04 00 07 */	addi r0, r4, 0x0007 /* 0xDA380007@l */
/* 805ED1C0  38 63 00 08 */	addi r3, r3, 8
/* 805ED1C4  90 05 00 00 */	stw r0, 0(r5)
/* 805ED1C8  93 E5 00 04 */	stw r31, 4(r5)
/* 805ED1CC  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 805ED1D0  39 61 00 60 */	addi r11, r1, 0x60
/* 805ED1D4  4B AA DD 49 */	bl func_8009AF1C
/* 805ED1D8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805ED1DC  7C 08 03 A6 */	mtlr r0
/* 805ED1E0  38 21 00 60 */	addi r1, r1, 0x60
/* 805ED1E4  4E 80 00 20 */	blr 
