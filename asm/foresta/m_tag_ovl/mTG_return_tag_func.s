lbl_805EF894:
/* 805EF894  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805EF898  7C 08 02 A6 */	mflr r0
/* 805EF89C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805EF8A0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805EF8A4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805EF8A8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805EF8AC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805EF8B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805EF8B4  4B AA B6 15 */	bl func_8009AEC8
/* 805EF8B8  7C 9B 23 78 */	mr r27, r4
/* 805EF8BC  3C C0 80 65 */	lis r6, lit_577@ha /* 0x8064B82C@ha */
/* 805EF8C0  80 FB 00 04 */	lwz r7, 4(r27)
/* 805EF8C4  3C 80 80 65 */	lis r4, data_8064B814@ha /* 0x8064B814@ha */
/* 805EF8C8  80 1B 00 00 */	lwz r0, 0(r27)
/* 805EF8CC  7C 7A 1B 78 */	mr r26, r3
/* 805EF8D0  C3 C6 B8 2C */	lfs f30, lit_577@l(r6)  /* 0x8064B82C@l */
/* 805EF8D4  7C BF 2B 78 */	mr r31, r5
/* 805EF8D8  7F A7 00 50 */	subf r29, r7, r0
/* 805EF8DC  C3 E4 B8 14 */	lfs f31, data_8064B814@l(r4)  /* 0x8064B814@l */
/* 805EF8E0  7F BC EB 78 */	mr r28, r29
/* 805EF8E4  3B C0 00 00 */	li r30, 0
/* 805EF8E8  48 00 00 48 */	b lbl_805EF930
lbl_805EF8EC:
/* 805EF8EC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 805EF8F0  EC 00 F0 28 */	fsubs f0, f0, f30
/* 805EF8F4  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 805EF8F8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 805EF8FC  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 805EF900  4C 40 13 82 */	cror 2, 0, 2
/* 805EF904  40 82 00 24 */	bne lbl_805EF928
/* 805EF908  88 1F 00 00 */	lbz r0, 0(r31)
/* 805EF90C  28 00 00 00 */	cmplwi r0, 0
/* 805EF910  40 82 00 10 */	bne lbl_805EF920
/* 805EF914  7F E3 FB 78 */	mr r3, r31
/* 805EF918  4B FF FF 55 */	bl mTG_get_item_name_wait_time
/* 805EF91C  B0 7B 02 F0 */	sth r3, 0x2f0(r27)
lbl_805EF920:
/* 805EF920  D3 FF 00 44 */	stfs f31, 0x44(r31)
/* 805EF924  3B DE 00 01 */	addi r30, r30, 1
lbl_805EF928:
/* 805EF928  3B FF FF 4C */	addi r31, r31, -180
/* 805EF92C  3B 9C FF FF */	addi r28, r28, -1
lbl_805EF930:
/* 805EF930  2C 1C 00 00 */	cmpwi r28, 0
/* 805EF934  40 82 FF B8 */	bne lbl_805EF8EC
/* 805EF938  7C 1E E8 00 */	cmpw r30, r29
/* 805EF93C  40 82 00 34 */	bne lbl_805EF970
/* 805EF940  80 1B 00 04 */	lwz r0, 4(r27)
/* 805EF944  2C 00 FF FF */	cmpwi r0, -1
/* 805EF948  40 82 00 0C */	bne lbl_805EF954
/* 805EF94C  38 00 00 00 */	li r0, 0
/* 805EF950  90 1B 00 04 */	stw r0, 4(r27)
lbl_805EF954:
/* 805EF954  80 1B 00 04 */	lwz r0, 4(r27)
/* 805EF958  90 1B 00 00 */	stw r0, 0(r27)
/* 805EF95C  80 1B 00 00 */	lwz r0, 0(r27)
/* 805EF960  2C 00 00 00 */	cmpwi r0, 0
/* 805EF964  40 82 00 0C */	bne lbl_805EF970
/* 805EF968  7F 43 D3 78 */	mr r3, r26
/* 805EF96C  48 00 1C 31 */	bl mTG_init_tag_data_item_win
lbl_805EF970:
/* 805EF970  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805EF974  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805EF978  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805EF97C  39 61 00 20 */	addi r11, r1, 0x20
/* 805EF980  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805EF984  4B AA B5 91 */	bl func_8009AF14
/* 805EF988  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805EF98C  7C 08 03 A6 */	mtlr r0
/* 805EF990  38 21 00 40 */	addi r1, r1, 0x40
/* 805EF994  4E 80 00 20 */	blr 
