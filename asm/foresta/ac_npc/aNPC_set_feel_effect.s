lbl_805308B0:
/* 805308B0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 805308B4  7C 08 02 A6 */	mflr r0
/* 805308B8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 805308BC  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 805308C0  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 805308C4  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 805308C8  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 805308CC  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 805308D0  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 805308D4  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 805308D8  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 805308DC  39 61 00 80 */	addi r11, r1, 0x80
/* 805308E0  4B B6 A5 E5 */	bl func_8009AEC4
/* 805308E4  3C A0 80 65 */	lis r5, lit_1913@ha /* 0x806492CC@ha */
/* 805308E8  38 00 00 09 */	li r0, 9
/* 805308EC  38 A5 92 CC */	addi r5, r5, lit_1913@l /* 0x806492CC@l */
/* 805308F0  7C 7E 1B 78 */	mr r30, r3
/* 805308F4  7C 9F 23 78 */	mr r31, r4
/* 805308F8  38 C1 00 04 */	addi r6, r1, 4
/* 805308FC  38 85 FF FC */	addi r4, r5, -4
/* 80530900  7C 09 03 A6 */	mtctr r0
lbl_80530904:
/* 80530904  80 64 00 04 */	lwz r3, 4(r4)
/* 80530908  84 04 00 08 */	lwzu r0, 8(r4)
/* 8053090C  90 66 00 04 */	stw r3, 4(r6)
/* 80530910  94 06 00 08 */	stwu r0, 8(r6)
/* 80530914  42 00 FF F0 */	bdnz lbl_80530904
/* 80530918  83 9F 07 58 */	lwz r28, 0x758(r31)
/* 8053091C  3C A0 80 65 */	lis r5, lit_923@ha /* 0x8064928C@ha */
/* 80530920  3C 80 80 65 */	lis r4, data_80649274@ha /* 0x80649274@ha */
/* 80530924  3C 60 80 65 */	lis r3, lit_802@ha /* 0x80649278@ha */
/* 80530928  A8 1C 00 00 */	lha r0, 0(r28)
/* 8053092C  3B 61 00 08 */	addi r27, r1, 8
/* 80530930  C3 9F 07 5C */	lfs f28, 0x75c(r31)
/* 80530934  3F A0 43 30 */	lis r29, 0x4330
/* 80530938  54 00 18 38 */	slwi r0, r0, 3
/* 8053093C  8B 5C 00 03 */	lbz r26, 3(r28)
/* 80530940  83 3C 00 04 */	lwz r25, 4(r28)
/* 80530944  7F 7B 02 14 */	add r27, r27, r0
/* 80530948  CB A5 92 8C */	lfd f29, lit_923@l(r5)  /* 0x8064928C@l */
/* 8053094C  C3 C4 92 74 */	lfs f30, data_80649274@l(r4)  /* 0x80649274@l */
/* 80530950  C3 E3 92 78 */	lfs f31, lit_802@l(r3)  /* 0x80649278@l */
/* 80530954  48 00 00 50 */	b lbl_805309A4
lbl_80530958:
/* 80530958  80 19 00 00 */	lwz r0, 0(r25)
/* 8053095C  93 A1 00 50 */	stw r29, 0x50(r1)
/* 80530960  90 01 00 54 */	stw r0, 0x54(r1)
/* 80530964  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80530968  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8053096C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80530970  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80530974  4C 41 13 82 */	cror 2, 1, 2
/* 80530978  40 82 00 24 */	bne lbl_8053099C
/* 8053097C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80530980  40 80 00 1C */	bge lbl_8053099C
/* 80530984  80 BB 00 00 */	lwz r5, 0(r27)
/* 80530988  7F C3 F3 78 */	mr r3, r30
/* 8053098C  A8 DB 00 04 */	lha r6, 4(r27)
/* 80530990  7F E4 FB 78 */	mr r4, r31
/* 80530994  A8 FB 00 06 */	lha r7, 6(r27)
/* 80530998  4B FF FE 7D */	bl func_80530814
lbl_8053099C:
/* 8053099C  3B 39 00 04 */	addi r25, r25, 4
/* 805309A0  3B 5A FF FF */	addi r26, r26, -1
lbl_805309A4:
/* 805309A4  2C 1A 00 00 */	cmpwi r26, 0
/* 805309A8  40 82 FF B0 */	bne lbl_80530958
/* 805309AC  3C 80 80 65 */	lis r4, lit_802@ha /* 0x80649278@ha */
/* 805309B0  3C 60 80 65 */	lis r3, lit_923@ha /* 0x8064928C@ha */
/* 805309B4  C0 04 92 78 */	lfs f0, lit_802@l(r4)  /* 0x80649278@l */
/* 805309B8  3C 00 43 30 */	lis r0, 0x4330
/* 805309BC  88 BC 00 02 */	lbz r5, 2(r28)
/* 805309C0  EF 9C 00 2A */	fadds f28, f28, f0
/* 805309C4  C8 23 92 8C */	lfd f1, lit_923@l(r3)  /* 0x8064928C@l */
/* 805309C8  48 00 00 18 */	b lbl_805309E0
lbl_805309CC:
/* 805309CC  90 A1 00 54 */	stw r5, 0x54(r1)
/* 805309D0  90 01 00 50 */	stw r0, 0x50(r1)
/* 805309D4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805309D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805309DC  EF 9C 00 28 */	fsubs f28, f28, f0
lbl_805309E0:
/* 805309E0  90 A1 00 54 */	stw r5, 0x54(r1)
/* 805309E4  90 01 00 50 */	stw r0, 0x50(r1)
/* 805309E8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805309EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805309F0  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 805309F4  41 81 FF D8 */	bgt lbl_805309CC
/* 805309F8  D3 9F 07 5C */	stfs f28, 0x75c(r31)
/* 805309FC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80530A00  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80530A04  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80530A08  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80530A0C  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 80530A10  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80530A14  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 80530A18  39 61 00 80 */	addi r11, r1, 0x80
/* 80530A1C  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 80530A20  4B B6 A4 F1 */	bl func_8009AF10
/* 80530A24  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80530A28  7C 08 03 A6 */	mtlr r0
/* 80530A2C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80530A30  4E 80 00 20 */	blr 
