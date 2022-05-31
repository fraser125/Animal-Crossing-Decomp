lbl_805D8020:
/* 805D8020  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805D8024  7C 08 02 A6 */	mflr r0
/* 805D8028  90 01 00 74 */	stw r0, 0x74(r1)
/* 805D802C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805D8030  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805D8034  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805D8038  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805D803C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805D8040  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805D8044  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 805D8048  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 805D804C  39 61 00 30 */	addi r11, r1, 0x30
/* 805D8050  4B AC 2E 79 */	bl func_8009AEC8
/* 805D8054  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805D8058  3C 60 80 6D */	lis r3, str_table@ha /* 0x806CC8A4@ha */
/* 805D805C  38 03 C8 A4 */	addi r0, r3, str_table@l /* 0x806CC8A4@l */
/* 805D8060  FF 80 08 90 */	fmr f28, f1
/* 805D8064  83 E7 09 A4 */	lwz r31, 0x9a4(r7)
/* 805D8068  FF A0 10 90 */	fmr f29, f2
/* 805D806C  81 87 09 50 */	lwz r12, 0x950(r7)
/* 805D8070  7C DA 33 78 */	mr r26, r6
/* 805D8074  7C BC 2B 78 */	mr r28, r5
/* 805D8078  7C 1E 03 78 */	mr r30, r0
/* 805D807C  7C 83 23 78 */	mr r3, r4
/* 805D8080  C3 DF 00 04 */	lfs f30, 4(r31)
/* 805D8084  83 A6 00 00 */	lwz r29, 0(r6)
/* 805D8088  7D 89 03 A6 */	mtctr r12
/* 805D808C  4E 80 04 21 */	bctrl 
/* 805D8090  3C 80 80 65 */	lis r4, lit_540@ha /* 0x8064B20C@ha */
/* 805D8094  3C 60 80 65 */	lis r3, lit_541@ha /* 0x8064B210@ha */
/* 805D8098  C0 43 B2 10 */	lfs f2, lit_541@l(r3)  /* 0x8064B210@l */
/* 805D809C  3C 60 80 65 */	lis r3, lit_485@ha /* 0x8064B1F4@ha */
/* 805D80A0  C0 7A 00 0C */	lfs f3, 0xc(r26)
/* 805D80A4  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 805D80A8  EC 42 E8 28 */	fsubs f2, f2, f29
/* 805D80AC  C0 03 B1 F4 */	lfs f0, lit_485@l(r3)  /* 0x8064B1F4@l */
/* 805D80B0  EC 63 07 B2 */	fmuls f3, f3, f30
/* 805D80B4  C0 84 B2 0C */	lfs f4, lit_540@l(r4)  /* 0x8064B20C@l */
/* 805D80B8  EC 21 07 B2 */	fmuls f1, f1, f30
/* 805D80BC  EF E0 07 B2 */	fmuls f31, f0, f30
/* 805D80C0  EC 84 E0 2A */	fadds f4, f4, f28
/* 805D80C4  3C 60 80 6D */	lis r3, col_table@ha /* 0x806CC8BC@ha */
/* 805D80C8  EF A2 08 28 */	fsubs f29, f2, f1
/* 805D80CC  3B 63 C8 BC */	addi r27, r3, col_table@l /* 0x806CC8BC@l */
/* 805D80D0  3B 40 00 00 */	li r26, 0
/* 805D80D4  EF 84 18 2A */	fadds f28, f4, f3
/* 805D80D8  48 00 00 6C */	b lbl_805D8144
lbl_805D80DC:
/* 805D80DC  88 9F 00 01 */	lbz r4, 1(r31)
/* 805D80E0  38 60 00 01 */	li r3, 1
/* 805D80E4  38 00 00 00 */	li r0, 0
/* 805D80E8  FC 20 E0 90 */	fmr f1, f28
/* 805D80EC  7C 9A 20 50 */	subf r4, r26, r4
/* 805D80F0  90 61 00 08 */	stw r3, 8(r1)
/* 805D80F4  7C 83 00 34 */	cntlzw r3, r4
/* 805D80F8  FC 40 E8 90 */	fmr f2, f29
/* 805D80FC  54 63 D9 7E */	srwi r3, r3, 5
/* 805D8100  1C A3 00 0C */	mulli r5, r3, 0xc
/* 805D8104  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D8108  FC 60 F0 90 */	fmr f3, f30
/* 805D810C  7F 83 E3 78 */	mr r3, r28
/* 805D8110  FC 80 F0 90 */	fmr f4, f30
/* 805D8114  80 9E 00 00 */	lwz r4, 0(r30)
/* 805D8118  7D 1B 2A 14 */	add r8, r27, r5
/* 805D811C  80 BE 00 04 */	lwz r5, 4(r30)
/* 805D8120  80 C8 00 00 */	lwz r6, 0(r8)
/* 805D8124  39 20 00 FF */	li r9, 0xff
/* 805D8128  80 E8 00 04 */	lwz r7, 4(r8)
/* 805D812C  39 40 00 00 */	li r10, 0
/* 805D8130  81 08 00 08 */	lwz r8, 8(r8)
/* 805D8134  4B DD 7F 75 */	bl mFont_SetLineStrings
/* 805D8138  EF BD F8 2A */	fadds f29, f29, f31
/* 805D813C  3B 5A 00 01 */	addi r26, r26, 1
/* 805D8140  3B DE 00 08 */	addi r30, r30, 8
lbl_805D8144:
/* 805D8144  7C 1A E8 00 */	cmpw r26, r29
/* 805D8148  41 80 FF 94 */	blt lbl_805D80DC
/* 805D814C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805D8150  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805D8154  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805D8158  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805D815C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805D8160  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805D8164  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 805D8168  39 61 00 30 */	addi r11, r1, 0x30
/* 805D816C  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 805D8170  4B AC 2D A5 */	bl func_8009AF14
/* 805D8174  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805D8178  7C 08 03 A6 */	mtlr r0
/* 805D817C  38 21 00 70 */	addi r1, r1, 0x70
/* 805D8180  4E 80 00 20 */	blr 
