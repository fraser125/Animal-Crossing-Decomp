lbl_805FE4C0:
/* 805FE4C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805FE4C4  7C 08 02 A6 */	mflr r0
/* 805FE4C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 805FE4CC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805FE4D0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805FE4D4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805FE4D8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805FE4DC  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 805FE4E0  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 805FE4E4  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 805FE4E8  F3 81 00 28 */	psq_st f28, 40(r1), 0, 0 /* qr0 */
/* 805FE4EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805FE4F0  4B A9 C9 D9 */	bl func_8009AEC8
/* 805FE4F4  7C 9B 23 78 */	mr r27, r4
/* 805FE4F8  3C 80 80 6D */	lis r4, draw_turn_normal@ha /* 0x806D11BC@ha */
/* 805FE4FC  88 1B 00 02 */	lbz r0, 2(r27)
/* 805FE500  FF 80 08 90 */	fmr f28, f1
/* 805FE504  FF A0 10 90 */	fmr f29, f2
/* 805FE508  38 84 11 BC */	addi r4, r4, draw_turn_normal@l /* 0x806D11BC@l */
/* 805FE50C  28 00 00 09 */	cmplwi r0, 9
/* 805FE510  FF C0 18 90 */	fmr f30, f3
/* 805FE514  FF E0 28 90 */	fmr f31, f5
/* 805FE518  7C 7A 1B 78 */	mr r26, r3
/* 805FE51C  40 82 00 0C */	bne lbl_805FE528
/* 805FE520  3C 60 80 6D */	lis r3, draw_turn_omikuji@ha /* 0x806D11C8@ha */
/* 805FE524  38 83 11 C8 */	addi r4, r3, draw_turn_omikuji@l /* 0x806D11C8@l */
lbl_805FE528:
/* 805FE528  7C 9D 23 78 */	mr r29, r4
/* 805FE52C  3B 80 00 00 */	li r28, 0
lbl_805FE530:
/* 805FE530  80 1D 00 00 */	lwz r0, 0(r29)
/* 805FE534  2C 00 00 01 */	cmpwi r0, 1
/* 805FE538  41 82 00 2C */	beq lbl_805FE564
/* 805FE53C  40 80 00 10 */	bge lbl_805FE54C
/* 805FE540  2C 00 00 00 */	cmpwi r0, 0
/* 805FE544  40 80 00 14 */	bge lbl_805FE558
/* 805FE548  48 00 00 30 */	b lbl_805FE578
lbl_805FE54C:
/* 805FE54C  2C 00 00 03 */	cmpwi r0, 3
/* 805FE550  40 80 00 28 */	bge lbl_805FE578
/* 805FE554  48 00 00 1C */	b lbl_805FE570
lbl_805FE558:
/* 805FE558  3B FB 00 48 */	addi r31, r27, 0x48
/* 805FE55C  3B C0 00 23 */	li r30, 0x23
/* 805FE560  48 00 00 18 */	b lbl_805FE578
lbl_805FE564:
/* 805FE564  3B FB 00 6B */	addi r31, r27, 0x6b
/* 805FE568  3B C0 00 23 */	li r30, 0x23
/* 805FE56C  48 00 00 0C */	b lbl_805FE578
lbl_805FE570:
/* 805FE570  3B FB 00 8E */	addi r31, r27, 0x8e
/* 805FE574  3B C0 00 23 */	li r30, 0x23
lbl_805FE578:
/* 805FE578  FC 20 E0 90 */	fmr f1, f28
/* 805FE57C  7F 43 D3 78 */	mr r3, r26
/* 805FE580  FC 40 E8 90 */	fmr f2, f29
/* 805FE584  7F E4 FB 78 */	mr r4, r31
/* 805FE588  FC 60 F0 90 */	fmr f3, f30
/* 805FE58C  7F C5 F3 78 */	mr r5, r30
/* 805FE590  4B FF FE 8D */	bl mTG_set_questItemInfo_sub
/* 805FE594  3B 9C 00 01 */	addi r28, r28, 1
/* 805FE598  EF BD F8 2A */	fadds f29, f29, f31
/* 805FE59C  2C 1C 00 03 */	cmpwi r28, 3
/* 805FE5A0  3B BD 00 04 */	addi r29, r29, 4
/* 805FE5A4  41 80 FF 8C */	blt lbl_805FE530
/* 805FE5A8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805FE5AC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805FE5B0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805FE5B4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805FE5B8  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 805FE5BC  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 805FE5C0  E3 81 00 28 */	psq_l f28, 40(r1), 0, 0 /* qr0 */
/* 805FE5C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805FE5C8  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 805FE5CC  4B A9 C9 49 */	bl func_8009AF14
/* 805FE5D0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805FE5D4  7C 08 03 A6 */	mtlr r0
/* 805FE5D8  38 21 00 60 */	addi r1, r1, 0x60
/* 805FE5DC  4E 80 00 20 */	blr 
