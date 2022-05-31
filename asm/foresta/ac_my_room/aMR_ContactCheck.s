lbl_804789D8:
/* 804789D8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804789DC  7C 08 02 A6 */	mflr r0
/* 804789E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 804789E4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804789E8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804789EC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 804789F0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 804789F4  39 61 00 50 */	addi r11, r1, 0x50
/* 804789F8  4B C2 24 BD */	bl func_8009AEB4
/* 804789FC  7C 97 23 78 */	mr r23, r4
/* 80478A00  7C 76 1B 78 */	mr r22, r3
/* 80478A04  80 04 01 10 */	lwz r0, 0x110(r4)
/* 80478A08  7C B8 2B 78 */	mr r24, r5
/* 80478A0C  7C D9 33 78 */	mr r25, r6
/* 80478A10  7C FA 3B 78 */	mr r26, r7
/* 80478A14  2C 00 00 00 */	cmpwi r0, 0
/* 80478A18  3B F7 00 4C */	addi r31, r23, 0x4c
/* 80478A1C  41 82 01 A0 */	beq lbl_80478BBC
/* 80478A20  3C 60 80 64 */	lis r3, lit_1079@ha /* 0x80644A08@ha */
/* 80478A24  3B C0 00 00 */	li r30, 0
/* 80478A28  C3 E3 4A 08 */	lfs f31, lit_1079@l(r3)  /* 0x80644A08@l */
/* 80478A2C  3A A0 00 00 */	li r21, 0
lbl_80478A30:
/* 80478A30  C0 17 00 30 */	lfs f0, 0x30(r23)
/* 80478A34  7C 7F AA 14 */	add r3, r31, r21
/* 80478A38  C3 C3 00 1C */	lfs f30, 0x1c(r3)
/* 80478A3C  7C 7D 1B 78 */	mr r29, r3
/* 80478A40  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80478A44  3B 83 00 08 */	addi r28, r3, 8
/* 80478A48  3B 63 00 10 */	addi r27, r3, 0x10
/* 80478A4C  4C 40 13 82 */	cror 2, 0, 2
/* 80478A50  40 82 01 5C */	bne lbl_80478BAC
/* 80478A54  7F 84 E3 78 */	mr r4, r28
/* 80478A58  7F 45 D3 78 */	mr r5, r26
/* 80478A5C  4B F1 28 29 */	bl mCoBG_RangeCheckLinePoint
/* 80478A60  2C 03 00 00 */	cmpwi r3, 0
/* 80478A64  41 82 01 48 */	beq lbl_80478BAC
/* 80478A68  7F A4 EB 78 */	mr r4, r29
/* 80478A6C  7F 85 E3 78 */	mr r5, r28
/* 80478A70  7F 66 DB 78 */	mr r6, r27
/* 80478A74  7F 47 D3 78 */	mr r7, r26
/* 80478A78  38 61 00 08 */	addi r3, r1, 8
/* 80478A7C  4B F1 21 81 */	bl mCoBG_GetDistPointAndLine2D_Norm
/* 80478A80  3C 60 80 64 */	lis r3, lit_3343@ha /* 0x80644A54@ha */
/* 80478A84  C0 21 00 08 */	lfs f1, 8(r1)
/* 80478A88  C0 03 4A 54 */	lfs f0, lit_3343@l(r3)  /* 0x80644A54@l */
/* 80478A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80478A90  40 80 01 1C */	bge lbl_80478BAC
/* 80478A94  3C 60 80 64 */	lis r3, lit_3334@ha /* 0x80644A4C@ha */
/* 80478A98  3C 00 43 30 */	lis r0, 0x4330
/* 80478A9C  38 83 4A 4C */	addi r4, r3, lit_3334@l /* 0x80644A4C@l */
/* 80478AA0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80478AA4  80 C4 00 00 */	lwz r6, 0(r4)
/* 80478AA8  3C 60 80 64 */	lis r3, lit_888@ha /* 0x806449FC@ha */
/* 80478AAC  80 A4 00 04 */	lwz r5, 4(r4)
/* 80478AB0  3C 80 80 64 */	lis r4, lit_3091@ha /* 0x80644A24@ha */
/* 80478AB4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80478AB8  C8 23 49 FC */	lfd f1, lit_888@l(r3)  /* 0x806449FC@l */
/* 80478ABC  38 61 00 0C */	addi r3, r1, 0xc
/* 80478AC0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80478AC4  C0 44 4A 24 */	lfs f2, lit_3091@l(r4)  /* 0x80644A24@l */
/* 80478AC8  A8 99 00 DE */	lha r4, 0xde(r25)
/* 80478ACC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80478AD0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80478AD4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80478AD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80478ADC  EC 22 00 32 */	fmuls f1, f2, f0
/* 80478AE0  4B FF F9 31 */	bl aMR_RotateY
/* 80478AE4  7F 63 DB 78 */	mr r3, r27
/* 80478AE8  38 81 00 0C */	addi r4, r1, 0xc
/* 80478AEC  38 A0 00 01 */	li r5, 1
/* 80478AF0  4B F1 1F 21 */	bl mCoBG_Get2VectorAngleF
/* 80478AF4  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 80478AF8  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 80478AFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80478B00  4C 41 13 82 */	cror 2, 1, 2
/* 80478B04  40 82 00 18 */	bne lbl_80478B1C
/* 80478B08  7F 63 DB 78 */	mr r3, r27
/* 80478B0C  38 81 00 0C */	addi r4, r1, 0xc
/* 80478B10  38 A0 00 01 */	li r5, 1
/* 80478B14  4B F1 1E FD */	bl mCoBG_Get2VectorAngleF
/* 80478B18  48 00 00 18 */	b lbl_80478B30
lbl_80478B1C:
/* 80478B1C  7F 63 DB 78 */	mr r3, r27
/* 80478B20  38 81 00 0C */	addi r4, r1, 0xc
/* 80478B24  38 A0 00 01 */	li r5, 1
/* 80478B28  4B F1 1E E9 */	bl mCoBG_Get2VectorAngleF
/* 80478B2C  FC 20 08 50 */	fneg f1, f1
lbl_80478B30:
/* 80478B30  3C 60 80 64 */	lis r3, lit_3344@ha /* 0x80644A58@ha */
/* 80478B34  C0 03 4A 58 */	lfs f0, lit_3344@l(r3)  /* 0x80644A58@l */
/* 80478B38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80478B3C  40 80 00 70 */	bge lbl_80478BAC
/* 80478B40  FC 20 F0 90 */	fmr f1, f30
/* 80478B44  7F 03 C3 78 */	mr r3, r24
/* 80478B48  7F A4 EB 78 */	mr r4, r29
/* 80478B4C  7F 85 E3 78 */	mr r5, r28
/* 80478B50  7F 46 D3 78 */	mr r6, r26
/* 80478B54  4B FF FC CD */	bl aMR_ContactRange
/* 80478B58  38 00 00 01 */	li r0, 1
/* 80478B5C  7F 63 DB 78 */	mr r3, r27
/* 80478B60  90 18 00 00 */	stw r0, 0(r24)
/* 80478B64  92 D8 00 04 */	stw r22, 4(r24)
/* 80478B68  93 78 00 14 */	stw r27, 0x14(r24)
/* 80478B6C  4B FF F8 3D */	bl aMR_Norm2DirectName
/* 80478B70  90 78 00 08 */	stw r3, 8(r24)
/* 80478B74  7E E3 BB 78 */	mr r3, r23
/* 80478B78  7F 04 C3 78 */	mr r4, r24
/* 80478B7C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80478B80  D0 18 00 18 */	stfs f0, 0x18(r24)
/* 80478B84  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80478B88  D0 18 00 1C */	stfs f0, 0x1c(r24)
/* 80478B8C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80478B90  D0 18 00 20 */	stfs f0, 0x20(r24)
/* 80478B94  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80478B98  D0 18 00 24 */	stfs f0, 0x24(r24)
/* 80478B9C  4B FF FD A9 */	bl aMR_SearchContactPartName
/* 80478BA0  90 78 00 28 */	stw r3, 0x28(r24)
/* 80478BA4  38 60 00 01 */	li r3, 1
/* 80478BA8  48 00 00 18 */	b lbl_80478BC0
lbl_80478BAC:
/* 80478BAC  3B DE 00 01 */	addi r30, r30, 1
/* 80478BB0  3A B5 00 20 */	addi r21, r21, 0x20
/* 80478BB4  2C 1E 00 04 */	cmpwi r30, 4
/* 80478BB8  41 80 FE 78 */	blt lbl_80478A30
lbl_80478BBC:
/* 80478BBC  38 60 00 00 */	li r3, 0
lbl_80478BC0:
/* 80478BC0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80478BC4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80478BC8  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80478BCC  39 61 00 50 */	addi r11, r1, 0x50
/* 80478BD0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80478BD4  4B C2 23 2D */	bl func_8009AF00
/* 80478BD8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80478BDC  7C 08 03 A6 */	mtlr r0
/* 80478BE0  38 21 00 70 */	addi r1, r1, 0x70
/* 80478BE4  4E 80 00 20 */	blr 
