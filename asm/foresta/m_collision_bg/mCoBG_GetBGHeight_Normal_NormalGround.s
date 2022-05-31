lbl_80388A20:
/* 80388A20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80388A24  7C 08 02 A6 */	mflr r0
/* 80388A28  90 01 00 44 */	stw r0, 0x44(r1)
/* 80388A2C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80388A30  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80388A34  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80388A38  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80388A3C  7C 9E 23 78 */	mr r30, r4
/* 80388A40  7C 7F 1B 78 */	mr r31, r3
/* 80388A44  80 84 00 00 */	lwz r4, 0(r4)
/* 80388A48  88 64 00 00 */	lbz r3, 0(r4)
/* 80388A4C  A0 04 00 00 */	lhz r0, 0(r4)
/* 80388A50  54 63 F6 FE */	rlwinm r3, r3, 0x1e, 0x1b, 0x1f
/* 80388A54  54 00 DE FE */	rlwinm r0, r0, 0x1b, 0x1b, 0x1f
/* 80388A58  7C 03 00 00 */	cmpw r3, r0
/* 80388A5C  40 82 00 34 */	bne lbl_80388A90
/* 80388A60  88 04 00 01 */	lbz r0, 1(r4)
/* 80388A64  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 80388A68  7C 03 00 40 */	cmplw r3, r0
/* 80388A6C  40 82 00 24 */	bne lbl_80388A90
/* 80388A70  88 04 00 02 */	lbz r0, 2(r4)
/* 80388A74  54 00 EE FE */	rlwinm r0, r0, 0x1d, 0x1b, 0x1f
/* 80388A78  7C 03 00 40 */	cmplw r3, r0
/* 80388A7C  40 82 00 14 */	bne lbl_80388A90
/* 80388A80  A0 04 00 02 */	lhz r0, 2(r4)
/* 80388A84  54 00 D6 FE */	rlwinm r0, r0, 0x1a, 0x1b, 0x1f
/* 80388A88  7C 03 00 00 */	cmpw r3, r0
/* 80388A8C  41 82 00 48 */	beq lbl_80388AD4
lbl_80388A90:
/* 80388A90  7F C3 F3 78 */	mr r3, r30
/* 80388A94  38 81 00 08 */	addi r4, r1, 8
/* 80388A98  4B FF D2 39 */	bl mCoBG_GetUnitArea
/* 80388A9C  80 BE 00 00 */	lwz r5, 0(r30)
/* 80388AA0  7F E4 FB 78 */	mr r4, r31
/* 80388AA4  A8 C1 00 08 */	lha r6, 8(r1)
/* 80388AA8  38 61 00 0C */	addi r3, r1, 0xc
/* 80388AAC  4B FF D6 D9 */	bl mCoBG_GetNormTriangle
/* 80388AB0  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80388AB4  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 80388AB8  48 01 D5 F5 */	bl mFI_UtNum2BaseHeight
/* 80388ABC  FF E0 08 90 */	fmr f31, f1
/* 80388AC0  7F C4 F3 78 */	mr r4, r30
/* 80388AC4  38 61 00 0C */	addi r3, r1, 0xc
/* 80388AC8  4B FF D9 61 */	bl mCoBG_GroundPolygonInfo2BgHeight
/* 80388ACC  EC 21 F8 2A */	fadds f1, f1, f31
/* 80388AD0  48 00 00 60 */	b lbl_80388B30
lbl_80388AD4:
/* 80388AD4  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80388AD8  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 80388ADC  48 01 D5 D1 */	bl mFI_UtNum2BaseHeight
/* 80388AE0  80 9E 00 00 */	lwz r4, 0(r30)
/* 80388AE4  3C 00 43 30 */	lis r0, 0x4330
/* 80388AE8  3C 60 80 64 */	lis r3, lit_804@ha /* 0x806419EC@ha */
/* 80388AEC  3C A0 80 64 */	lis r5, lit_802@ha /* 0x806419E4@ha */
/* 80388AF0  88 84 00 00 */	lbz r4, 0(r4)
/* 80388AF4  28 1F 00 00 */	cmplwi r31, 0
/* 80388AF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80388AFC  54 80 F6 FE */	rlwinm r0, r4, 0x1e, 0x1b, 0x1f
/* 80388B00  C8 43 19 EC */	lfd f2, lit_804@l(r3)  /* 0x806419EC@l */
/* 80388B04  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80388B08  C0 65 19 E4 */	lfs f3, lit_802@l(r5)  /* 0x806419E4@l */
/* 80388B0C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80388B10  EC 00 10 28 */	fsubs f0, f0, f2
/* 80388B14  EC 03 00 32 */	fmuls f0, f3, f0
/* 80388B18  EC 20 08 2A */	fadds f1, f0, f1
/* 80388B1C  41 82 00 14 */	beq lbl_80388B30
/* 80388B20  38 00 00 00 */	li r0, 0
/* 80388B24  B0 1F 00 00 */	sth r0, 0(r31)
/* 80388B28  B0 1F 00 02 */	sth r0, 2(r31)
/* 80388B2C  B0 1F 00 04 */	sth r0, 4(r31)
lbl_80388B30:
/* 80388B30  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80388B34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80388B38  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80388B3C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80388B40  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80388B44  7C 08 03 A6 */	mtlr r0
/* 80388B48  38 21 00 40 */	addi r1, r1, 0x40
/* 80388B4C  4E 80 00 20 */	blr 
