lbl_805EE780:
/* 805EE780  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805EE784  7C 08 02 A6 */	mflr r0
/* 805EE788  90 01 00 74 */	stw r0, 0x74(r1)
/* 805EE78C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805EE790  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805EE794  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805EE798  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805EE79C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805EE7A0  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805EE7A4  39 61 00 40 */	addi r11, r1, 0x40
/* 805EE7A8  4B AA C7 21 */	bl func_8009AEC8
/* 805EE7AC  FF A0 08 90 */	fmr f29, f1
/* 805EE7B0  7C 9E 23 78 */	mr r30, r4
/* 805EE7B4  FF C0 10 90 */	fmr f30, f2
/* 805EE7B8  7C 7A 1B 78 */	mr r26, r3
/* 805EE7BC  FF E0 18 90 */	fmr f31, f3
/* 805EE7C0  7C BB 2B 78 */	mr r27, r5
/* 805EE7C4  7C DC 33 78 */	mr r28, r6
/* 805EE7C8  7C FD 3B 78 */	mr r29, r7
/* 805EE7CC  7F C3 F3 78 */	mr r3, r30
/* 805EE7D0  4B DC E3 A1 */	bl mMl_check_send_mail
/* 805EE7D4  2C 03 00 00 */	cmpwi r3, 0
/* 805EE7D8  41 82 00 0C */	beq lbl_805EE7E4
/* 805EE7DC  38 C0 00 02 */	li r6, 2
/* 805EE7E0  48 00 00 24 */	b lbl_805EE804
lbl_805EE7E4:
/* 805EE7E4  88 1E 00 2E */	lbz r0, 0x2e(r30)
/* 805EE7E8  28 00 00 04 */	cmplwi r0, 4
/* 805EE7EC  41 82 00 0C */	beq lbl_805EE7F8
/* 805EE7F0  28 00 00 02 */	cmplwi r0, 2
/* 805EE7F4  40 82 00 0C */	bne lbl_805EE800
lbl_805EE7F8:
/* 805EE7F8  38 C0 00 04 */	li r6, 4
/* 805EE7FC  48 00 00 08 */	b lbl_805EE804
lbl_805EE800:
/* 805EE800  38 C0 00 00 */	li r6, 0
lbl_805EE804:
/* 805EE804  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 805EE808  28 00 00 00 */	cmplwi r0, 0
/* 805EE80C  41 82 00 08 */	beq lbl_805EE814
/* 805EE810  38 C6 00 01 */	addi r6, r6, 1
lbl_805EE814:
/* 805EE814  3C 80 80 65 */	lis r4, lit_887@ha /* 0x8064B7F8@ha */
/* 805EE818  3C 60 80 65 */	lis r3, lit_507@ha /* 0x8064B798@ha */
/* 805EE81C  C0 24 B7 F8 */	lfs f1, lit_887@l(r4)  /* 0x8064B7F8@l */
/* 805EE820  3C A0 80 6D */	lis r5, letter_tex_data_table@ha /* 0x806CF174@ha */
/* 805EE824  C0 63 B7 98 */	lfs f3, lit_507@l(r3)  /* 0x8064B798@l */
/* 805EE828  54 C4 18 38 */	slwi r4, r6, 3
/* 805EE82C  FC 40 08 90 */	fmr f2, f1
/* 805EE830  38 05 F1 74 */	addi r0, r5, letter_tex_data_table@l /* 0x806CF174@l */
/* 805EE834  7F E0 22 14 */	add r31, r0, r4
/* 805EE838  38 60 00 00 */	li r3, 0
/* 805EE83C  4B E1 DB B1 */	bl Matrix_scale
/* 805EE840  3C 60 80 65 */	lis r3, lit_888@ha /* 0x8064B7FC@ha */
/* 805EE844  FC 20 E8 90 */	fmr f1, f29
/* 805EE848  C0 63 B7 FC */	lfs f3, lit_888@l(r3)  /* 0x8064B7FC@l */
/* 805EE84C  FC 40 F0 90 */	fmr f2, f30
/* 805EE850  38 60 00 01 */	li r3, 1
/* 805EE854  4B E1 DA AD */	bl Matrix_translate
/* 805EE858  3C 60 80 65 */	lis r3, lit_507@ha /* 0x8064B798@ha */
/* 805EE85C  FC 20 F8 90 */	fmr f1, f31
/* 805EE860  C0 63 B7 98 */	lfs f3, lit_507@l(r3)  /* 0x8064B798@l */
/* 805EE864  FC 40 F8 90 */	fmr f2, f31
/* 805EE868  38 60 00 01 */	li r3, 1
/* 805EE86C  4B E1 DB 81 */	bl Matrix_scale
/* 805EE870  83 DA 02 D0 */	lwz r30, 0x2d0(r26)
/* 805EE874  3C 00 E7 00 */	lis r0, 0xe700
/* 805EE878  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805EE87C  38 80 00 00 */	li r4, 0
/* 805EE880  90 1E 00 00 */	stw r0, 0(r30)
/* 805EE884  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805EE888  7F 43 D3 78 */	mr r3, r26
/* 805EE88C  90 9E 00 04 */	stw r4, 4(r30)
/* 805EE890  90 1E 00 08 */	stw r0, 8(r30)
/* 805EE894  4B E1 EB 41 */	bl _Matrix_to_Mtx_new
/* 805EE898  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060024@ha */
/* 805EE89C  90 7E 00 0C */	stw r3, 0xc(r30)
/* 805EE8A0  38 04 00 24 */	addi r0, r4, 0x0024 /* 0xDB060024@l */
/* 805EE8A4  3C 60 E2 00 */	lis r3, 0xE200 /* 0xE2001E01@ha */
/* 805EE8A8  90 1E 00 10 */	stw r0, 0x10(r30)
/* 805EE8AC  38 C4 00 28 */	addi r6, r4, 0x28
/* 805EE8B0  38 A3 1E 01 */	addi r5, r3, 0x1E01 /* 0xE2001E01@l */
/* 805EE8B4  38 80 00 01 */	li r4, 1
/* 805EE8B8  80 FF 00 00 */	lwz r7, 0(r31)
/* 805EE8BC  3C 60 F9 00 */	lis r3, 0xf900
/* 805EE8C0  2C 1B 00 00 */	cmpwi r27, 0
/* 805EE8C4  38 00 FF 28 */	li r0, -216
/* 805EE8C8  90 FE 00 14 */	stw r7, 0x14(r30)
/* 805EE8CC  90 DE 00 18 */	stw r6, 0x18(r30)
/* 805EE8D0  80 DF 00 04 */	lwz r6, 4(r31)
/* 805EE8D4  90 DE 00 1C */	stw r6, 0x1c(r30)
/* 805EE8D8  90 BE 00 20 */	stw r5, 0x20(r30)
/* 805EE8DC  90 9E 00 24 */	stw r4, 0x24(r30)
/* 805EE8E0  90 7E 00 28 */	stw r3, 0x28(r30)
/* 805EE8E4  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 805EE8E8  41 82 00 20 */	beq lbl_805EE908
/* 805EE8EC  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805EE8F0  38 00 FF FF */	li r0, -1
/* 805EE8F4  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 805EE8F8  90 7E 00 30 */	stw r3, 0x30(r30)
/* 805EE8FC  90 1E 00 34 */	stw r0, 0x34(r30)
/* 805EE900  3B DE 00 38 */	addi r30, r30, 0x38
/* 805EE904  48 00 00 20 */	b lbl_805EE924
lbl_805EE908:
/* 805EE908  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000082@ha */
/* 805EE90C  3C 60 FF 6E */	lis r3, 0xFF6E /* 0xFF6E69FF@ha */
/* 805EE910  38 04 00 82 */	addi r0, r4, 0x0082 /* 0xFA000082@l */
/* 805EE914  90 1E 00 30 */	stw r0, 0x30(r30)
/* 805EE918  38 03 69 FF */	addi r0, r3, 0x69FF /* 0xFF6E69FF@l */
/* 805EE91C  90 1E 00 34 */	stw r0, 0x34(r30)
/* 805EE920  3B DE 00 38 */	addi r30, r30, 0x38
lbl_805EE924:
/* 805EE924  2C 1C 00 00 */	cmpwi r28, 0
/* 805EE928  40 82 00 20 */	bne lbl_805EE948
/* 805EE92C  3C 80 FC 17 */	lis r4, 0xFC17 /* 0xFC177E2E@ha */
/* 805EE930  3C 60 33 FE */	lis r3, 0x33FE /* 0x33FDF2F9@ha */
/* 805EE934  38 04 7E 2E */	addi r0, r4, 0x7E2E /* 0xFC177E2E@l */
/* 805EE938  90 1E 00 00 */	stw r0, 0(r30)
/* 805EE93C  38 03 F2 F9 */	addi r0, r3, 0xF2F9 /* 0x33FDF2F9@l */
/* 805EE940  90 1E 00 04 */	stw r0, 4(r30)
/* 805EE944  3B DE 00 08 */	addi r30, r30, 8
lbl_805EE948:
/* 805EE948  3C 00 DE 00 */	lis r0, 0xde00
/* 805EE94C  3C 60 80 AA */	lis r3, inv_item_model@ha /* 0x80AA5970@ha */
/* 805EE950  90 1E 00 00 */	stw r0, 0(r30)
/* 805EE954  38 03 59 70 */	addi r0, r3, inv_item_model@l /* 0x80AA5970@l */
/* 805EE958  2C 1D 00 00 */	cmpwi r29, 0
/* 805EE95C  90 1E 00 04 */	stw r0, 4(r30)
/* 805EE960  3B DE 00 08 */	addi r30, r30, 8
/* 805EE964  41 82 01 2C */	beq lbl_805EEA90
/* 805EE968  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805EE96C  3C 00 43 30 */	lis r0, 0x4330
/* 805EE970  38 83 52 F0 */	addi r4, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805EE974  3D 20 80 65 */	lis r9, lit_743@ha /* 0x8064B7D0@ha */
/* 805EE978  80 A4 00 00 */	lwz r5, 0(r4)
/* 805EE97C  3C 60 80 65 */	lis r3, lit_754@ha /* 0x8064B7EC@ha */
/* 805EE980  38 83 B7 EC */	addi r4, r3, lit_754@l /* 0x8064B7EC@l */
/* 805EE984  38 C0 00 28 */	li r6, 0x28
/* 805EE988  80 E5 00 A0 */	lwz r7, 0xa0(r5)
/* 805EE98C  3C 60 80 65 */	lis r3, lit_744@ha /* 0x8064B7D4@ha */
/* 805EE990  39 03 B7 D4 */	addi r8, r3, lit_744@l /* 0x8064B7D4@l */
/* 805EE994  90 01 00 08 */	stw r0, 8(r1)
/* 805EE998  7C A7 33 96 */	divwu r5, r7, r6
/* 805EE99C  3C 60 80 65 */	lis r3, lit_507@ha /* 0x8064B798@ha */
/* 805EE9A0  C8 44 00 00 */	lfd f2, 0(r4)
/* 805EE9A4  C0 68 00 00 */	lfs f3, 0(r8)
/* 805EE9A8  C0 89 B7 D0 */	lfs f4, lit_743@l(r9)  /* 0x8064B7D0@l */
/* 805EE9AC  C0 03 B7 98 */	lfs f0, lit_507@l(r3)  /* 0x8064B798@l */
/* 805EE9B0  7C 05 31 D6 */	mullw r0, r5, r6
/* 805EE9B4  7C 00 38 50 */	subf r0, r0, r7
/* 805EE9B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EE9BC  C8 21 00 08 */	lfd f1, 8(r1)
/* 805EE9C0  EC 21 10 28 */	fsubs f1, f1, f2
/* 805EE9C4  EC 23 00 72 */	fmuls f1, f3, f1
/* 805EE9C8  EC A4 00 72 */	fmuls f5, f4, f1
/* 805EE9CC  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 805EE9D0  40 81 00 08 */	ble lbl_805EE9D8
/* 805EE9D4  EC A4 28 28 */	fsubs f5, f4, f5
lbl_805EE9D8:
/* 805EE9D8  3C 80 80 65 */	lis r4, lit_746@ha /* 0x8064B7DC@ha */
/* 805EE9DC  3C 60 80 65 */	lis r3, lit_749@ha /* 0x8064B7E8@ha */
/* 805EE9E0  C0 24 B7 DC */	lfs f1, lit_746@l(r4)  /* 0x8064B7DC@l */
/* 805EE9E4  3C A0 80 65 */	lis r5, lit_745@ha /* 0x8064B7D8@ha */
/* 805EE9E8  C0 03 B7 E8 */	lfs f0, lit_749@l(r3)  /* 0x8064B7E8@l */
/* 805EE9EC  3C 00 E7 00 */	lis r0, 0xe700
/* 805EE9F0  EC 21 01 72 */	fmuls f1, f1, f5
/* 805EE9F4  C0 45 B7 D8 */	lfs f2, lit_745@l(r5)  /* 0x8064B7D8@l */
/* 805EE9F8  90 1E 00 00 */	stw r0, 0(r30)
/* 805EE9FC  38 00 00 00 */	li r0, 0
/* 805EEA00  3C 60 80 65 */	lis r3, lit_748@ha /* 0x8064B7E4@ha */
/* 805EEA04  EC 00 01 72 */	fmuls f0, f0, f5
/* 805EEA08  EC 62 08 2A */	fadds f3, f2, f1
/* 805EEA0C  C0 23 B7 E4 */	lfs f1, lit_748@l(r3)  /* 0x8064B7E4@l */
/* 805EEA10  3C 80 80 65 */	lis r4, lit_747@ha /* 0x8064B7E0@ha */
/* 805EEA14  90 1E 00 04 */	stw r0, 4(r30)
/* 805EEA18  C0 44 B7 E0 */	lfs f2, lit_747@l(r4)  /* 0x8064B7E0@l */
/* 805EEA1C  EC 01 00 2A */	fadds f0, f1, f0
/* 805EEA20  FC 60 18 1E */	fctiwz f3, f3
/* 805EEA24  3D 00 FA 00 */	lis r8, 0xfa00
/* 805EEA28  EC 22 01 72 */	fmuls f1, f2, f5
/* 805EEA2C  91 1E 00 08 */	stw r8, 8(r30)
/* 805EEA30  FC 00 00 1E */	fctiwz f0, f0
/* 805EEA34  3C 60 80 AA */	lis r3, inv_mark_model@ha /* 0x80AA58A0@ha */
/* 805EEA38  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 805EEA3C  FC 20 08 1E */	fctiwz f1, f1
/* 805EEA40  3C C0 FB 00 */	lis r6, 0xfb00
/* 805EEA44  3C 80 DE 00 */	lis r4, 0xde00
/* 805EEA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EEA4C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805EEA50  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805EEA54  60 07 00 FF */	ori r7, r0, 0xff
/* 805EEA58  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805EEA5C  38 03 58 A0 */	addi r0, r3, inv_mark_model@l /* 0x80AA58A0@l */
/* 805EEA60  90 FE 00 0C */	stw r7, 0xc(r30)
/* 805EEA64  54 A3 82 1E */	rlwinm r3, r5, 0x10, 8, 0xf
/* 805EEA68  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805EEA6C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 805EEA70  90 DE 00 10 */	stw r6, 0x10(r30)
/* 805EEA74  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 805EEA78  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 805EEA7C  60 63 00 FF */	ori r3, r3, 0xff
/* 805EEA80  90 7E 00 14 */	stw r3, 0x14(r30)
/* 805EEA84  90 9E 00 18 */	stw r4, 0x18(r30)
/* 805EEA88  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 805EEA8C  3B DE 00 20 */	addi r30, r30, 0x20
lbl_805EEA90:
/* 805EEA90  3C 00 E7 00 */	lis r0, 0xe700
/* 805EEA94  3C A0 E3 00 */	lis r5, 0xE300 /* 0xE3001001@ha */
/* 805EEA98  90 1E 00 00 */	stw r0, 0(r30)
/* 805EEA9C  38 C0 00 00 */	li r6, 0
/* 805EEAA0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 805EEAA4  3C 60 E2 00 */	lis r3, 0xE200 /* 0xE2001E01@ha */
/* 805EEAA8  90 DE 00 04 */	stw r6, 4(r30)
/* 805EEAAC  38 05 10 01 */	addi r0, r5, 0x1001 /* 0xE3001001@l */
/* 805EEAB0  38 A4 80 00 */	addi r5, r4, 0x8000 /* 0x00008000@l */
/* 805EEAB4  38 83 1E 01 */	addi r4, r3, 0x1E01 /* 0xE2001E01@l */
/* 805EEAB8  90 1E 00 08 */	stw r0, 8(r30)
/* 805EEABC  3C 60 F9 00 */	lis r3, 0xf900
/* 805EEAC0  38 00 FF 08 */	li r0, -248
/* 805EEAC4  90 BE 00 0C */	stw r5, 0xc(r30)
/* 805EEAC8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 805EEACC  90 DE 00 14 */	stw r6, 0x14(r30)
/* 805EEAD0  3B DE 00 18 */	addi r30, r30, 0x18
/* 805EEAD4  7F C4 F3 78 */	mr r4, r30
/* 805EEAD8  90 7E 00 00 */	stw r3, 0(r30)
/* 805EEADC  3B DE 00 08 */	addi r30, r30, 8
/* 805EEAE0  90 04 00 04 */	stw r0, 4(r4)
/* 805EEAE4  93 DA 02 D0 */	stw r30, 0x2d0(r26)
/* 805EEAE8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805EEAEC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805EEAF0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805EEAF4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805EEAF8  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805EEAFC  39 61 00 40 */	addi r11, r1, 0x40
/* 805EEB00  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805EEB04  4B AA C4 11 */	bl func_8009AF14
/* 805EEB08  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805EEB0C  7C 08 03 A6 */	mtlr r0
/* 805EEB10  38 21 00 70 */	addi r1, r1, 0x70
/* 805EEB14  4E 80 00 20 */	blr 
