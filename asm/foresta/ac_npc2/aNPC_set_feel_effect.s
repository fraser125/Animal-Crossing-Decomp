lbl_8053E88C:
/* 8053E88C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8053E890  7C 08 02 A6 */	mflr r0
/* 8053E894  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8053E898  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8053E89C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8053E8A0  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8053E8A4  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 8053E8A8  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8053E8AC  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 8053E8B0  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8053E8B4  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 8053E8B8  39 61 00 80 */	addi r11, r1, 0x80
/* 8053E8BC  4B B5 C6 09 */	bl func_8009AEC4
/* 8053E8C0  3C A0 80 65 */	lis r5, lit_1642@ha /* 0x806493C4@ha */
/* 8053E8C4  38 00 00 09 */	li r0, 9
/* 8053E8C8  38 A5 93 C4 */	addi r5, r5, lit_1642@l /* 0x806493C4@l */
/* 8053E8CC  7C 7E 1B 78 */	mr r30, r3
/* 8053E8D0  7C 9F 23 78 */	mr r31, r4
/* 8053E8D4  38 C1 00 04 */	addi r6, r1, 4
/* 8053E8D8  38 85 FF FC */	addi r4, r5, -4
/* 8053E8DC  7C 09 03 A6 */	mtctr r0
lbl_8053E8E0:
/* 8053E8E0  80 64 00 04 */	lwz r3, 4(r4)
/* 8053E8E4  84 04 00 08 */	lwzu r0, 8(r4)
/* 8053E8E8  90 66 00 04 */	stw r3, 4(r6)
/* 8053E8EC  94 06 00 08 */	stwu r0, 8(r6)
/* 8053E8F0  42 00 FF F0 */	bdnz lbl_8053E8E0
/* 8053E8F4  83 9F 07 58 */	lwz r28, 0x758(r31)
/* 8053E8F8  3C A0 80 65 */	lis r5, lit_913@ha /* 0x8064938C@ha */
/* 8053E8FC  3C 80 80 65 */	lis r4, data_80649374@ha /* 0x80649374@ha */
/* 8053E900  3C 60 80 65 */	lis r3, lit_795@ha /* 0x80649378@ha */
/* 8053E904  A8 1C 00 00 */	lha r0, 0(r28)
/* 8053E908  3B 61 00 08 */	addi r27, r1, 8
/* 8053E90C  C3 9F 07 5C */	lfs f28, 0x75c(r31)
/* 8053E910  3F A0 43 30 */	lis r29, 0x4330
/* 8053E914  54 00 18 38 */	slwi r0, r0, 3
/* 8053E918  8B 5C 00 03 */	lbz r26, 3(r28)
/* 8053E91C  83 3C 00 04 */	lwz r25, 4(r28)
/* 8053E920  7F 7B 02 14 */	add r27, r27, r0
/* 8053E924  CB A5 93 8C */	lfd f29, lit_913@l(r5)  /* 0x8064938C@l */
/* 8053E928  C3 C4 93 74 */	lfs f30, data_80649374@l(r4)  /* 0x80649374@l */
/* 8053E92C  C3 E3 93 78 */	lfs f31, lit_795@l(r3)  /* 0x80649378@l */
/* 8053E930  48 00 00 50 */	b lbl_8053E980
lbl_8053E934:
/* 8053E934  80 19 00 00 */	lwz r0, 0(r25)
/* 8053E938  93 A1 00 50 */	stw r29, 0x50(r1)
/* 8053E93C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8053E940  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8053E944  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8053E948  EC 00 E0 28 */	fsubs f0, f0, f28
/* 8053E94C  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8053E950  4C 41 13 82 */	cror 2, 1, 2
/* 8053E954  40 82 00 24 */	bne lbl_8053E978
/* 8053E958  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8053E95C  40 80 00 1C */	bge lbl_8053E978
/* 8053E960  80 BB 00 00 */	lwz r5, 0(r27)
/* 8053E964  7F C3 F3 78 */	mr r3, r30
/* 8053E968  A8 DB 00 04 */	lha r6, 4(r27)
/* 8053E96C  7F E4 FB 78 */	mr r4, r31
/* 8053E970  A8 FB 00 06 */	lha r7, 6(r27)
/* 8053E974  4B FF FE 7D */	bl func_8053E7F0
lbl_8053E978:
/* 8053E978  3B 39 00 04 */	addi r25, r25, 4
/* 8053E97C  3B 5A FF FF */	addi r26, r26, -1
lbl_8053E980:
/* 8053E980  2C 1A 00 00 */	cmpwi r26, 0
/* 8053E984  40 82 FF B0 */	bne lbl_8053E934
/* 8053E988  3C 80 80 65 */	lis r4, lit_795@ha /* 0x80649378@ha */
/* 8053E98C  3C 60 80 65 */	lis r3, lit_913@ha /* 0x8064938C@ha */
/* 8053E990  C0 04 93 78 */	lfs f0, lit_795@l(r4)  /* 0x80649378@l */
/* 8053E994  3C 00 43 30 */	lis r0, 0x4330
/* 8053E998  88 BC 00 02 */	lbz r5, 2(r28)
/* 8053E99C  EF 9C 00 2A */	fadds f28, f28, f0
/* 8053E9A0  C8 23 93 8C */	lfd f1, lit_913@l(r3)  /* 0x8064938C@l */
/* 8053E9A4  48 00 00 18 */	b lbl_8053E9BC
lbl_8053E9A8:
/* 8053E9A8  90 A1 00 54 */	stw r5, 0x54(r1)
/* 8053E9AC  90 01 00 50 */	stw r0, 0x50(r1)
/* 8053E9B0  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8053E9B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8053E9B8  EF 9C 00 28 */	fsubs f28, f28, f0
lbl_8053E9BC:
/* 8053E9BC  90 A1 00 54 */	stw r5, 0x54(r1)
/* 8053E9C0  90 01 00 50 */	stw r0, 0x50(r1)
/* 8053E9C4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8053E9C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8053E9CC  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8053E9D0  41 81 FF D8 */	bgt lbl_8053E9A8
/* 8053E9D4  D3 9F 07 5C */	stfs f28, 0x75c(r31)
/* 8053E9D8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8053E9DC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8053E9E0  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 8053E9E4  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8053E9E8  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 8053E9EC  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8053E9F0  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 8053E9F4  39 61 00 80 */	addi r11, r1, 0x80
/* 8053E9F8  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8053E9FC  4B B5 C5 15 */	bl func_8009AF10
/* 8053EA00  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8053EA04  7C 08 03 A6 */	mtlr r0
/* 8053EA08  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8053EA0C  4E 80 00 20 */	blr 