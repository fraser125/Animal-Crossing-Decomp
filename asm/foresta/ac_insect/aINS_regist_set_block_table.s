lbl_805943C0:
/* 805943C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805943C4  7C 08 02 A6 */	mflr r0
/* 805943C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 805943CC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805943D0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805943D4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805943D8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805943DC  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 805943E0  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 805943E4  39 61 00 30 */	addi r11, r1, 0x30
/* 805943E8  4B B0 6A E9 */	bl func_8009AED0
/* 805943EC  7C 7D 1B 78 */	mr r29, r3
/* 805943F0  38 60 00 72 */	li r3, 0x72
/* 805943F4  38 80 00 37 */	li r4, 0x37
/* 805943F8  4B E0 9C E5 */	bl mEv_get_common_area
/* 805943FC  7C 7E 1B 78 */	mr r30, r3
/* 80594400  4B FF FF 75 */	bl aINS_get_free_idx_set_block_table
/* 80594404  7C 7F 1B 78 */	mr r31, r3
/* 80594408  2C 1F FF FF */	cmpwi r31, -1
/* 8059440C  41 82 00 C0 */	beq lbl_805944CC
/* 80594410  3C A0 80 65 */	lis r5, lit_504@ha /* 0x80649D18@ha */
/* 80594414  3C 80 80 65 */	lis r4, data_80649D14@ha /* 0x80649D14@ha */
/* 80594418  3C 60 80 65 */	lis r3, lit_505@ha /* 0x80649D1C@ha */
/* 8059441C  C3 A5 9D 18 */	lfs f29, lit_504@l(r5)  /* 0x80649D18@l */
/* 80594420  C3 C4 9D 14 */	lfs f30, data_80649D14@l(r4)  /* 0x80649D14@l */
/* 80594424  C3 E3 9D 1C */	lfs f31, lit_505@l(r3)  /* 0x80649D1C@l */
lbl_80594428:
/* 80594428  4B AC 88 CD */	bl fqrand
/* 8059442C  EC 1D 00 72 */	fmuls f0, f29, f1
/* 80594430  EC 1E 00 2A */	fadds f0, f30, f0
/* 80594434  FC 00 00 1E */	fctiwz f0, f0
/* 80594438  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059443C  83 81 00 0C */	lwz r28, 0xc(r1)
/* 80594440  4B AC 88 B5 */	bl fqrand
/* 80594444  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80594448  88 7D 00 08 */	lbz r3, 8(r29)
/* 8059444C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80594450  7C 63 07 74 */	extsb r3, r3
/* 80594454  EC 1E 00 2A */	fadds f0, f30, f0
/* 80594458  7C 03 00 00 */	cmpw r3, r0
/* 8059445C  FC 00 00 1E */	fctiwz f0, f0
/* 80594460  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80594464  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80594468  40 82 00 18 */	bne lbl_80594480
/* 8059446C  88 7D 00 09 */	lbz r3, 9(r29)
/* 80594470  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 80594474  7C 63 07 74 */	extsb r3, r3
/* 80594478  7C 03 00 00 */	cmpw r3, r0
/* 8059447C  41 82 FF AC */	beq lbl_80594428
lbl_80594480:
/* 80594480  38 00 00 05 */	li r0, 5
/* 80594484  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 80594488  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 8059448C  38 E0 00 00 */	li r7, 0
/* 80594490  7C 09 03 A6 */	mtctr r0
lbl_80594494:
/* 80594494  7C BE 3A 14 */	add r5, r30, r7
/* 80594498  88 05 00 00 */	lbz r0, 0(r5)
/* 8059449C  7C 04 00 40 */	cmplw r4, r0
/* 805944A0  40 82 00 10 */	bne lbl_805944B0
/* 805944A4  88 05 00 05 */	lbz r0, 5(r5)
/* 805944A8  7C 00 18 40 */	cmplw r0, r3
/* 805944AC  41 82 00 0C */	beq lbl_805944B8
lbl_805944B0:
/* 805944B0  38 E7 00 01 */	addi r7, r7, 1
/* 805944B4  42 00 FF E0 */	bdnz lbl_80594494
lbl_805944B8:
/* 805944B8  2C 07 00 05 */	cmpwi r7, 5
/* 805944BC  40 82 FF 6C */	bne lbl_80594428
/* 805944C0  7F 9E F9 AE */	stbx r28, r30, r31
/* 805944C4  7C 7E FA 14 */	add r3, r30, r31
/* 805944C8  98 C3 00 05 */	stb r6, 5(r3)
lbl_805944CC:
/* 805944CC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805944D0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805944D4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805944D8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805944DC  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 805944E0  39 61 00 30 */	addi r11, r1, 0x30
/* 805944E4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 805944E8  4B B0 6A 35 */	bl func_8009AF1C
/* 805944EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805944F0  7C 08 03 A6 */	mtlr r0
/* 805944F4  38 21 00 60 */	addi r1, r1, 0x60
/* 805944F8  4E 80 00 20 */	blr 
