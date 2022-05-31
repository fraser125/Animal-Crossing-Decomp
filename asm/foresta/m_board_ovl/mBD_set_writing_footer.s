lbl_805C599C:
/* 805C599C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805C59A0  7C 08 02 A6 */	mflr r0
/* 805C59A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 805C59A8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805C59AC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805C59B0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805C59B4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805C59B8  39 61 00 40 */	addi r11, r1, 0x40
/* 805C59BC  4B AD 55 09 */	bl func_8009AEC4
/* 805C59C0  7C 7D 1B 78 */	mr r29, r3
/* 805C59C4  FF C0 08 90 */	fmr f30, f1
/* 805C59C8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805C59CC  FF E0 10 90 */	fmr f31, f2
/* 805C59D0  7C 9E 23 78 */	mr r30, r4
/* 805C59D4  7C BF 2B 78 */	mr r31, r5
/* 805C59D8  80 63 09 90 */	lwz r3, 0x990(r3)
/* 805C59DC  3B 40 00 00 */	li r26, 0
/* 805C59E0  8B 83 00 07 */	lbz r28, 7(r3)
/* 805C59E4  3B 23 01 12 */	addi r25, r3, 0x112
/* 805C59E8  7F 9B E3 78 */	mr r27, r28
/* 805C59EC  48 00 00 18 */	b lbl_805C5A04
lbl_805C59F0:
/* 805C59F0  88 79 00 00 */	lbz r3, 0(r25)
/* 805C59F4  38 80 00 01 */	li r4, 1
/* 805C59F8  4B DE 9C A5 */	bl mFont_GetCodeWidth
/* 805C59FC  7F 5A 1A 14 */	add r26, r26, r3
/* 805C5A00  3B 39 00 01 */	addi r25, r25, 1
lbl_805C5A04:
/* 805C5A04  2C 1B 00 00 */	cmpwi r27, 0
/* 805C5A08  3B 7B FF FF */	addi r27, r27, -1
/* 805C5A0C  40 82 FF E4 */	bne lbl_805C59F0
/* 805C5A10  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 805C5A14  3C 00 43 30 */	lis r0, 0x4330
/* 805C5A18  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C5A1C  3C 80 80 65 */	lis r4, lit_483@ha /* 0x8064ADEC@ha */
/* 805C5A20  38 00 00 01 */	li r0, 1
/* 805C5A24  FC 40 F8 90 */	fmr f2, f31
/* 805C5A28  90 61 00 14 */	stw r3, 0x14(r1)
/* 805C5A2C  38 64 AD EC */	addi r3, r4, lit_483@l /* 0x8064ADEC@l */
/* 805C5A30  C8 23 00 00 */	lfd f1, 0(r3)
/* 805C5A34  3C 80 80 65 */	lis r4, lit_667@ha /* 0x8064AE1C@ha */
/* 805C5A38  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805C5A3C  C0 84 AE 1C */	lfs f4, lit_667@l(r4)  /* 0x8064AE1C@l */
/* 805C5A40  3C 60 80 65 */	lis r3, data_8064ADCC@ha /* 0x8064ADCC@ha */
/* 805C5A44  EC 00 08 28 */	fsubs f0, f0, f1
/* 805C5A48  90 01 00 08 */	stw r0, 8(r1)
/* 805C5A4C  38 00 00 00 */	li r0, 0
/* 805C5A50  C0 63 AD CC */	lfs f3, data_8064ADCC@l(r3)  /* 0x8064ADCC@l */
/* 805C5A54  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C5A58  7F C3 F3 78 */	mr r3, r30
/* 805C5A5C  EC 04 00 28 */	fsubs f0, f4, f0
/* 805C5A60  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805C5A64  FC 80 18 90 */	fmr f4, f3
/* 805C5A68  88 DF 00 00 */	lbz r6, 0(r31)
/* 805C5A6C  80 84 09 90 */	lwz r4, 0x990(r4)
/* 805C5A70  7F 85 E3 78 */	mr r5, r28
/* 805C5A74  EF DE 00 2A */	fadds f30, f30, f0
/* 805C5A78  88 FF 00 01 */	lbz r7, 1(r31)
/* 805C5A7C  89 1F 00 02 */	lbz r8, 2(r31)
/* 805C5A80  39 20 00 FF */	li r9, 0xff
/* 805C5A84  39 40 00 00 */	li r10, 0
/* 805C5A88  38 84 01 12 */	addi r4, r4, 0x112
/* 805C5A8C  FC 20 F0 90 */	fmr f1, f30
/* 805C5A90  4B DE A6 19 */	bl mFont_SetLineStrings
/* 805C5A94  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805C5A98  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805C5A9C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805C5AA0  39 61 00 40 */	addi r11, r1, 0x40
/* 805C5AA4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805C5AA8  4B AD 54 69 */	bl func_8009AF10
/* 805C5AAC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805C5AB0  7C 08 03 A6 */	mtlr r0
/* 805C5AB4  38 21 00 60 */	addi r1, r1, 0x60
/* 805C5AB8  4E 80 00 20 */	blr 
