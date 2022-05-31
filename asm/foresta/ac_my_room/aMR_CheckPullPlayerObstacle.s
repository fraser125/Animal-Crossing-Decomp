lbl_8047F21C:
/* 8047F21C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8047F220  7C 08 02 A6 */	mflr r0
/* 8047F224  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047F228  39 61 00 40 */	addi r11, r1, 0x40
/* 8047F22C  4B C1 BC 9D */	bl func_8009AEC8
/* 8047F230  7C 7C 1B 78 */	mr r28, r3
/* 8047F234  7C 9D 23 78 */	mr r29, r4
/* 8047F238  7C BE 2B 78 */	mr r30, r5
/* 8047F23C  7C DF 33 78 */	mr r31, r6
/* 8047F240  7C FA 3B 78 */	mr r26, r7
/* 8047F244  38 60 00 00 */	li r3, 0
/* 8047F248  4B FF 11 A9 */	bl aMR_GetLayerTopFg
/* 8047F24C  7C 7B 1B 79 */	or. r27, r3, r3
/* 8047F250  41 82 01 5C */	beq lbl_8047F3AC
/* 8047F254  3C 60 80 64 */	lis r3, lit_885@ha /* 0x806449F4@ha */
/* 8047F258  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8047F25C  C0 23 49 F4 */	lfs f1, lit_885@l(r3)  /* 0x806449F4@l */
/* 8047F260  7F 45 D3 78 */	mr r5, r26
/* 8047F264  38 61 00 14 */	addi r3, r1, 0x14
/* 8047F268  38 81 00 10 */	addi r4, r1, 0x10
/* 8047F26C  EC 00 08 24 */	fdivs f0, f0, f1
/* 8047F270  FC 00 00 1E */	fctiwz f0, f0
/* 8047F274  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8047F278  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8047F27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047F280  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8047F284  EC 00 08 24 */	fdivs f0, f0, f1
/* 8047F288  FC 00 00 1E */	fctiwz f0, f0
/* 8047F28C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8047F290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047F294  90 01 00 10 */	stw r0, 0x10(r1)
/* 8047F298  4B FF 1E 89 */	bl aMR_Direct2PlussUnit
/* 8047F29C  2C 03 00 00 */	cmpwi r3, 0
/* 8047F2A0  41 82 00 BC */	beq lbl_8047F35C
/* 8047F2A4  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8047F2A8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8047F2AC  54 C0 20 36 */	slwi r0, r6, 4
/* 8047F2B0  7C 05 02 14 */	add r0, r5, r0
/* 8047F2B4  54 00 08 3C */	slwi r0, r0, 1
/* 8047F2B8  7C 1B 02 2E */	lhzx r0, r27, r0
/* 8047F2BC  28 00 FF FE */	cmplwi r0, 0xfffe
/* 8047F2C0  41 82 00 18 */	beq lbl_8047F2D8
/* 8047F2C4  28 00 FE 1C */	cmplwi r0, 0xfe1c
/* 8047F2C8  41 82 00 10 */	beq lbl_8047F2D8
/* 8047F2CC  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 8047F2D0  2C 00 00 04 */	cmpwi r0, 4
/* 8047F2D4  40 82 00 0C */	bne lbl_8047F2E0
lbl_8047F2D8:
/* 8047F2D8  38 60 00 01 */	li r3, 1
/* 8047F2DC  48 00 00 D4 */	b lbl_8047F3B0
lbl_8047F2E0:
/* 8047F2E0  38 61 00 08 */	addi r3, r1, 8
/* 8047F2E4  38 81 00 0C */	addi r4, r1, 0xc
/* 8047F2E8  38 E0 00 00 */	li r7, 0
/* 8047F2EC  4B FF EC 55 */	bl aMR_UnitNum2FtrItemNoFtrID
/* 8047F2F0  A0 61 00 08 */	lhz r3, 8(r1)
/* 8047F2F4  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8047F2F8  2C 00 00 01 */	cmpwi r0, 1
/* 8047F2FC  41 82 00 14 */	beq lbl_8047F310
/* 8047F300  2C 00 00 03 */	cmpwi r0, 3
/* 8047F304  41 82 00 0C */	beq lbl_8047F310
/* 8047F308  28 03 FE 1F */	cmplwi r3, 0xfe1f
/* 8047F30C  40 82 00 50 */	bne lbl_8047F35C
lbl_8047F310:
/* 8047F310  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8047F314  2C 04 00 00 */	cmpwi r4, 0
/* 8047F318  41 80 00 44 */	blt lbl_8047F35C
/* 8047F31C  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047F320  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047F324  80 03 00 08 */	lwz r0, 8(r3)
/* 8047F328  7C 04 00 00 */	cmpw r4, r0
/* 8047F32C  40 80 00 30 */	bge lbl_8047F35C
/* 8047F330  1C 04 08 58 */	mulli r0, r4, 0x858
/* 8047F334  80 63 00 00 */	lwz r3, 0(r3)
/* 8047F338  7C 63 02 2E */	lhzx r3, r3, r0
/* 8047F33C  4B FF 0E 65 */	bl func_804701A0
/* 8047F340  28 03 00 00 */	cmplwi r3, 0
/* 8047F344  41 82 00 18 */	beq lbl_8047F35C
/* 8047F348  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 8047F34C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8047F350  40 82 00 0C */	bne lbl_8047F35C
/* 8047F354  38 60 00 01 */	li r3, 1
/* 8047F358  48 00 00 58 */	b lbl_8047F3B0
lbl_8047F35C:
/* 8047F35C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8047F360  38 60 00 00 */	li r3, 0
/* 8047F364  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8047F368  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F36C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8047F370  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8047F374  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8047F378  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F37C  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8047F380  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8047F384  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8047F388  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F38C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8047F390  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8047F394  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8047F398  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8047F39C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8047F3A0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8047F3A4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8047F3A8  48 00 00 08 */	b lbl_8047F3B0
lbl_8047F3AC:
/* 8047F3AC  38 60 00 01 */	li r3, 1
lbl_8047F3B0:
/* 8047F3B0  39 61 00 40 */	addi r11, r1, 0x40
/* 8047F3B4  4B C1 BB 61 */	bl func_8009AF14
/* 8047F3B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047F3BC  7C 08 03 A6 */	mtlr r0
/* 8047F3C0  38 21 00 40 */	addi r1, r1, 0x40
/* 8047F3C4  4E 80 00 20 */	blr 
