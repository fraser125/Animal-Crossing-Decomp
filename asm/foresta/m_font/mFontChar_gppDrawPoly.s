lbl_803B09EC:
/* 803B09EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803B09F0  7C 08 02 A6 */	mflr r0
/* 803B09F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 803B09F8  39 61 00 40 */	addi r11, r1, 0x40
/* 803B09FC  4B CE A4 D5 */	bl func_8009AED0
/* 803B0A00  3C C0 80 64 */	lis r6, lit_633@ha /* 0x806420A4@ha */
/* 803B0A04  7C 7D 1B 78 */	mr r29, r3
/* 803B0A08  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 803B0A0C  7C 9E 23 78 */	mr r30, r4
/* 803B0A10  C0 26 20 A4 */	lfs f1, lit_633@l(r6)  /* 0x806420A4@l */
/* 803B0A14  7C BF 2B 78 */	mr r31, r5
/* 803B0A18  FC A0 10 50 */	fneg f5, f2
/* 803B0A1C  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 803B0A20  EC 81 10 28 */	fsubs f4, f1, f2
/* 803B0A24  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 803B0A28  EC 45 00 32 */	fmuls f2, f5, f0
/* 803B0A2C  EC 04 00 32 */	fmuls f0, f4, f0
/* 803B0A30  EC 42 28 28 */	fsubs f2, f2, f5
/* 803B0A34  EC 00 20 28 */	fsubs f0, f0, f4
/* 803B0A38  EC 43 10 2A */	fadds f2, f3, f2
/* 803B0A3C  EC 03 00 2A */	fadds f0, f3, f0
/* 803B0A40  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 803B0A44  EC 01 00 2A */	fadds f0, f1, f0
/* 803B0A48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803B0A4C  88 1D 00 05 */	lbz r0, 5(r29)
/* 803B0A50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803B0A54  40 82 00 C0 */	bne lbl_803B0B14
/* 803B0A58  80 7D 00 00 */	lwz r3, 0(r29)
/* 803B0A5C  38 80 00 00 */	li r4, 0
/* 803B0A60  88 63 00 00 */	lbz r3, 0(r3)
/* 803B0A64  4B FF EC 39 */	bl mFont_GetCodeWidth
/* 803B0A68  80 BD 00 00 */	lwz r5, 0(r29)
/* 803B0A6C  7C 7C 1B 78 */	mr r28, r3
/* 803B0A70  38 80 00 01 */	li r4, 1
/* 803B0A74  88 65 00 00 */	lbz r3, 0(r5)
/* 803B0A78  4B FF EC 25 */	bl mFont_GetCodeWidth
/* 803B0A7C  7C C3 E0 50 */	subf r6, r3, r28
/* 803B0A80  3C A0 43 30 */	lis r5, 0x4330
/* 803B0A84  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 803B0A88  3C 80 80 64 */	lis r4, lit_635@ha /* 0x806420AC@ha */
/* 803B0A8C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 803B0A90  38 E4 20 AC */	addi r7, r4, lit_635@l /* 0x806420AC@l */
/* 803B0A94  7C 1C 1A 14 */	add r0, r28, r3
/* 803B0A98  3D 00 80 64 */	lis r8, lit_773@ha /* 0x806420D0@ha */
/* 803B0A9C  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 803B0AA0  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 803B0AA4  C8 67 00 00 */	lfd f3, 0(r7)
/* 803B0AA8  39 28 20 D0 */	addi r9, r8, lit_773@l /* 0x806420D0@l */
/* 803B0AAC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803B0AB0  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 803B0AB4  90 81 00 24 */	stw r4, 0x24(r1)
/* 803B0AB8  7C 68 1B 78 */	mr r8, r3
/* 803B0ABC  EC 20 18 28 */	fsubs f1, f0, f3
/* 803B0AC0  C0 89 00 00 */	lfs f4, 0(r9)
/* 803B0AC4  90 A1 00 20 */	stw r5, 0x20(r1)
/* 803B0AC8  C0 BD 00 20 */	lfs f5, 0x20(r29)
/* 803B0ACC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 803B0AD0  EC 24 00 72 */	fmuls f1, f4, f1
/* 803B0AD4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803B0AD8  EC 00 18 28 */	fsubs f0, f0, f3
/* 803B0ADC  C0 DD 00 08 */	lfs f6, 8(r29)
/* 803B0AE0  EC 45 00 72 */	fmuls f2, f5, f1
/* 803B0AE4  90 A1 00 28 */	stw r5, 0x28(r1)
/* 803B0AE8  EC 24 00 32 */	fmuls f1, f4, f0
/* 803B0AEC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 803B0AF0  EC 46 10 2A */	fadds f2, f6, f2
/* 803B0AF4  EC 00 18 28 */	fsubs f0, f0, f3
/* 803B0AF8  EC 25 00 72 */	fmuls f1, f5, f1
/* 803B0AFC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 803B0B00  EC 00 01 72 */	fmuls f0, f0, f5
/* 803B0B04  EC 26 08 2A */	fadds f1, f6, f1
/* 803B0B08  D0 21 00 08 */	stfs f1, 8(r1)
/* 803B0B0C  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 803B0B10  48 00 00 58 */	b lbl_803B0B68
lbl_803B0B14:
/* 803B0B14  C0 1D 00 08 */	lfs f0, 8(r29)
/* 803B0B18  38 80 00 01 */	li r4, 1
/* 803B0B1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 803B0B20  80 7D 00 00 */	lwz r3, 0(r29)
/* 803B0B24  88 63 00 00 */	lbz r3, 0(r3)
/* 803B0B28  4B FF EB 75 */	bl mFont_GetCodeWidth
/* 803B0B2C  7C 68 1B 78 */	mr r8, r3
/* 803B0B30  3C 00 43 30 */	lis r0, 0x4330
/* 803B0B34  6D 03 80 00 */	xoris r3, r8, 0x8000
/* 803B0B38  3C 80 80 64 */	lis r4, lit_635@ha /* 0x806420AC@ha */
/* 803B0B3C  90 01 00 28 */	stw r0, 0x28(r1)
/* 803B0B40  C8 64 20 AC */	lfd f3, lit_635@l(r4)  /* 0x806420AC@l */
/* 803B0B44  90 61 00 2C */	stw r3, 0x2c(r1)
/* 803B0B48  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 803B0B4C  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 803B0B50  C0 1D 00 08 */	lfs f0, 8(r29)
/* 803B0B54  EC 42 18 28 */	fsubs f2, f2, f3
/* 803B0B58  EC 22 00 72 */	fmuls f1, f2, f1
/* 803B0B5C  EC 01 00 2A */	fadds f0, f1, f0
/* 803B0B60  D0 01 00 08 */	stfs f0, 8(r1)
/* 803B0B64  D0 3D 00 3C */	stfs f1, 0x3c(r29)
lbl_803B0B68:
/* 803B0B68  80 BD 00 00 */	lwz r5, 0(r29)
/* 803B0B6C  7F C3 F3 78 */	mr r3, r30
/* 803B0B70  7F E4 FB 78 */	mr r4, r31
/* 803B0B74  38 C1 00 10 */	addi r6, r1, 0x10
/* 803B0B78  88 A5 00 00 */	lbz r5, 0(r5)
/* 803B0B7C  38 E1 00 08 */	addi r7, r1, 8
/* 803B0B80  39 20 00 10 */	li r9, 0x10
/* 803B0B84  4B FF F7 B1 */	bl mFont_gppDrawCharPoly
/* 803B0B88  39 61 00 40 */	addi r11, r1, 0x40
/* 803B0B8C  4B CE A3 91 */	bl func_8009AF1C
/* 803B0B90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803B0B94  7C 08 03 A6 */	mtlr r0
/* 803B0B98  38 21 00 40 */	addi r1, r1, 0x40
/* 803B0B9C  4E 80 00 20 */	blr 
