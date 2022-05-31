lbl_80385A98:
/* 80385A98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80385A9C  7C 08 02 A6 */	mflr r0
/* 80385AA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80385AA4  39 61 00 40 */	addi r11, r1, 0x40
/* 80385AA8  4B D1 54 2D */	bl func_8009AED4
/* 80385AAC  7C 7F 1B 78 */	mr r31, r3
/* 80385AB0  7C 9D 23 78 */	mr r29, r4
/* 80385AB4  93 A3 00 20 */	stw r29, 0x20(r3)
/* 80385AB8  7C BE 2B 78 */	mr r30, r5
/* 80385ABC  7F A3 EB 78 */	mr r3, r29
/* 80385AC0  93 DF 00 24 */	stw r30, 0x24(r31)
/* 80385AC4  7F C4 F3 78 */	mr r4, r30
/* 80385AC8  48 02 0B 29 */	bl mFI_UtNum2UtCol
/* 80385ACC  90 7F 00 00 */	stw r3, 0(r31)
/* 80385AD0  7F A3 EB 78 */	mr r3, r29
/* 80385AD4  7F C4 F3 78 */	mr r4, r30
/* 80385AD8  48 02 05 D5 */	bl mFI_UtNum2BaseHeight
/* 80385ADC  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 80385AE0  3C 00 43 30 */	lis r0, 0x4330
/* 80385AE4  3C 60 80 64 */	lis r3, lit_804@ha /* 0x806419EC@ha */
/* 80385AE8  3C C0 80 64 */	lis r6, lit_802@ha /* 0x806419E4@ha */
/* 80385AEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80385AF0  38 83 19 EC */	addi r4, r3, lit_804@l /* 0x806419EC@l */
/* 80385AF4  C8 44 00 00 */	lfd f2, 0(r4)
/* 80385AF8  7F A3 EB 78 */	mr r3, r29
/* 80385AFC  A0 A5 00 00 */	lhz r5, 0(r5)
/* 80385B00  7F C4 F3 78 */	mr r4, r30
/* 80385B04  90 01 00 08 */	stw r0, 8(r1)
/* 80385B08  54 A5 DE FE */	rlwinm r5, r5, 0x1b, 0x1b, 0x1f
/* 80385B0C  C0 66 19 E4 */	lfs f3, lit_802@l(r6)  /* 0x806419E4@l */
/* 80385B10  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80385B14  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80385B18  C8 21 00 08 */	lfd f1, 8(r1)
/* 80385B1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80385B20  EC 21 10 28 */	fsubs f1, f1, f2
/* 80385B24  90 01 00 18 */	stw r0, 0x18(r1)
/* 80385B28  EC 23 00 72 */	fmuls f1, f3, f1
/* 80385B2C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80385B30  EC 01 00 2A */	fadds f0, f1, f0
/* 80385B34  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80385B38  80 BF 00 00 */	lwz r5, 0(r31)
/* 80385B3C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80385B40  88 05 00 01 */	lbz r0, 1(r5)
/* 80385B44  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 80385B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80385B4C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80385B50  EC 21 10 28 */	fsubs f1, f1, f2
/* 80385B54  EC 23 00 72 */	fmuls f1, f3, f1
/* 80385B58  EC 01 00 2A */	fadds f0, f1, f0
/* 80385B5C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80385B60  80 BF 00 00 */	lwz r5, 0(r31)
/* 80385B64  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80385B68  88 05 00 02 */	lbz r0, 2(r5)
/* 80385B6C  54 00 EE FE */	rlwinm r0, r0, 0x1d, 0x1b, 0x1f
/* 80385B70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80385B74  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80385B78  EC 21 10 28 */	fsubs f1, f1, f2
/* 80385B7C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80385B80  EC 01 00 2A */	fadds f0, f1, f0
/* 80385B84  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80385B88  80 BF 00 00 */	lwz r5, 0(r31)
/* 80385B8C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80385B90  A0 05 00 02 */	lhz r0, 2(r5)
/* 80385B94  54 00 D6 FE */	rlwinm r0, r0, 0x1a, 0x1b, 0x1f
/* 80385B98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80385B9C  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80385BA0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80385BA4  EC 23 00 72 */	fmuls f1, f3, f1
/* 80385BA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80385BAC  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80385BB0  80 BF 00 00 */	lwz r5, 0(r31)
/* 80385BB4  88 05 00 00 */	lbz r0, 0(r5)
/* 80385BB8  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80385BBC  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80385BC0  80 BF 00 00 */	lwz r5, 0(r31)
/* 80385BC4  88 05 00 03 */	lbz r0, 3(r5)
/* 80385BC8  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80385BCC  98 1F 00 2C */	stb r0, 0x2c(r31)
/* 80385BD0  48 02 16 B1 */	bl mFI_UtNum2UtFG
/* 80385BD4  28 03 00 00 */	cmplwi r3, 0
/* 80385BD8  41 82 00 10 */	beq lbl_80385BE8
/* 80385BDC  A0 03 00 00 */	lhz r0, 0(r3)
/* 80385BE0  B0 1F 00 2E */	sth r0, 0x2e(r31)
/* 80385BE4  48 00 00 0C */	b lbl_80385BF0
lbl_80385BE8:
/* 80385BE8  38 00 00 00 */	li r0, 0
/* 80385BEC  B0 1F 00 2E */	sth r0, 0x2e(r31)
lbl_80385BF0:
/* 80385BF0  39 61 00 40 */	addi r11, r1, 0x40
/* 80385BF4  4B D1 53 2D */	bl func_8009AF20
/* 80385BF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80385BFC  7C 08 03 A6 */	mtlr r0
/* 80385C00  38 21 00 40 */	addi r1, r1, 0x40
/* 80385C04  4E 80 00 20 */	blr 
