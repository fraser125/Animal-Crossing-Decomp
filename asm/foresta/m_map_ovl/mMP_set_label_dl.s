lbl_805E6FDC:
/* 805E6FDC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805E6FE0  7C 08 02 A6 */	mflr r0
/* 805E6FE4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805E6FE8  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 805E6FEC  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 805E6FF0  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 805E6FF4  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 805E6FF8  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 805E6FFC  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 805E7000  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 805E7004  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 805E7008  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 805E700C  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 805E7010  DB 41 00 40 */	stfd f26, 0x40(r1)
/* 805E7014  F3 41 00 48 */	psq_st f26, 72(r1), 0, 0 /* qr0 */
/* 805E7018  39 61 00 40 */	addi r11, r1, 0x40
/* 805E701C  4B AB 3E A1 */	bl func_8009AEBC
/* 805E7020  7C 99 23 78 */	mr r25, r4
/* 805E7024  3C 80 80 6D */	lis r4, mMP_label_data@ha /* 0x806CDE0C@ha */
/* 805E7028  A8 19 00 12 */	lha r0, 0x12(r25)
/* 805E702C  38 84 DE 0C */	addi r4, r4, mMP_label_data@l /* 0x806CDE0C@l */
/* 805E7030  7C 78 1B 78 */	mr r24, r3
/* 805E7034  54 00 10 3A */	slwi r0, r0, 2
/* 805E7038  7F C4 00 2E */	lwzx r30, r4, r0
/* 805E703C  28 1E 00 00 */	cmplwi r30, 0
/* 805E7040  41 82 01 D4 */	beq lbl_805E7214
/* 805E7044  3C 80 80 65 */	lis r4, lit_864@ha /* 0x8064B58C@ha */
/* 805E7048  3C 60 80 65 */	lis r3, lit_865@ha /* 0x8064B590@ha */
/* 805E704C  C0 64 B5 8C */	lfs f3, lit_864@l(r4)  /* 0x8064B58C@l */
/* 805E7050  7F 3D CB 78 */	mr r29, r25
/* 805E7054  C0 03 B5 90 */	lfs f0, lit_865@l(r3)  /* 0x8064B590@l */
/* 805E7058  3B 60 00 00 */	li r27, 0
/* 805E705C  EF 63 08 2A */	fadds f27, f3, f1
/* 805E7060  3A E0 00 00 */	li r23, 0
/* 805E7064  EF 40 10 28 */	fsubs f26, f0, f2
lbl_805E7068:
/* 805E7068  38 17 00 0C */	addi r0, r23, 0xc
/* 805E706C  7F 9E 00 2E */	lwzx r28, r30, r0
/* 805E7070  28 1C 00 00 */	cmplwi r28, 0
/* 805E7074  41 82 01 90 */	beq lbl_805E7204
/* 805E7078  80 9C 00 08 */	lwz r4, 8(r28)
/* 805E707C  28 04 00 00 */	cmplwi r4, 0
/* 805E7080  40 82 01 34 */	bne lbl_805E71B4
/* 805E7084  3C C0 80 65 */	lis r6, lit_866@ha /* 0x8064B594@ha */
/* 805E7088  3C A0 80 65 */	lis r5, lit_870@ha /* 0x8064B5A4@ha */
/* 805E708C  3C 80 80 65 */	lis r4, lit_867@ha /* 0x8064B598@ha */
/* 805E7090  3C 60 80 65 */	lis r3, lit_868@ha /* 0x8064B59C@ha */
/* 805E7094  C3 86 B5 94 */	lfs f28, lit_866@l(r6)  /* 0x8064B594@l */
/* 805E7098  3B 40 00 00 */	li r26, 0
/* 805E709C  CB A5 B5 A4 */	lfd f29, lit_870@l(r5)  /* 0x8064B5A4@l */
/* 805E70A0  3F E0 43 30 */	lis r31, 0x4330
/* 805E70A4  C3 C4 B5 98 */	lfs f30, lit_867@l(r4)  /* 0x8064B598@l */
/* 805E70A8  C3 E3 B5 9C */	lfs f31, lit_868@l(r3)  /* 0x8064B59C@l */
/* 805E70AC  48 00 00 F8 */	b lbl_805E71A4
lbl_805E70B0:
/* 805E70B0  80 7D 00 00 */	lwz r3, 0(r29)
/* 805E70B4  38 80 00 08 */	li r4, 8
/* 805E70B8  38 A0 00 01 */	li r5, 1
/* 805E70BC  4B DC 86 15 */	bl mFont_GetStringWidth
/* 805E70C0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 805E70C4  93 E1 00 10 */	stw r31, 0x10(r1)
/* 805E70C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E70CC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E70D0  EC 00 E8 28 */	fsubs f0, f0, f29
/* 805E70D4  EC 7C 00 24 */	fdivs f3, f28, f0
/* 805E70D8  FC 03 F0 40 */	fcmpo cr0, f3, f30
/* 805E70DC  40 81 00 0C */	ble lbl_805E70E8
/* 805E70E0  3C 60 80 65 */	lis r3, lit_867@ha /* 0x8064B598@ha */
/* 805E70E4  C0 63 B5 98 */	lfs f3, lit_867@l(r3)  /* 0x8064B598@l */
lbl_805E70E8:
/* 805E70E8  80 9D 00 00 */	lwz r4, 0(r29)
/* 805E70EC  88 04 00 08 */	lbz r0, 8(r4)
/* 805E70F0  7C 00 07 74 */	extsb r0, r0
/* 805E70F4  2C 00 FF FF */	cmpwi r0, -1
/* 805E70F8  41 82 00 54 */	beq lbl_805E714C
/* 805E70FC  38 00 00 01 */	li r0, 1
/* 805E7100  3C 60 80 65 */	lis r3, lit_867@ha /* 0x8064B598@ha */
/* 805E7104  90 01 00 08 */	stw r0, 8(r1)
/* 805E7108  38 A3 B5 98 */	addi r5, r3, lit_867@l /* 0x8064B598@l */
/* 805E710C  38 00 00 00 */	li r0, 0
/* 805E7110  C0 85 00 00 */	lfs f4, 0(r5)
/* 805E7114  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E7118  7F 03 C3 78 */	mr r3, r24
/* 805E711C  38 A0 00 08 */	li r5, 8
/* 805E7120  38 C0 00 FF */	li r6, 0xff
/* 805E7124  C0 3C 00 00 */	lfs f1, 0(r28)
/* 805E7128  38 E0 00 4B */	li r7, 0x4b
/* 805E712C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805E7130  39 00 00 28 */	li r8, 0x28
/* 805E7134  EC 3B 08 2A */	fadds f1, f27, f1
/* 805E7138  39 20 00 FF */	li r9, 0xff
/* 805E713C  EC 5A 00 28 */	fsubs f2, f26, f0
/* 805E7140  39 40 00 00 */	li r10, 0
/* 805E7144  4B DC 8F 65 */	bl mFont_SetLineStrings
/* 805E7148  48 00 00 50 */	b lbl_805E7198
lbl_805E714C:
/* 805E714C  38 00 00 01 */	li r0, 1
/* 805E7150  3C 60 80 65 */	lis r3, lit_867@ha /* 0x8064B598@ha */
/* 805E7154  90 01 00 08 */	stw r0, 8(r1)
/* 805E7158  38 A3 B5 98 */	addi r5, r3, lit_867@l /* 0x8064B598@l */
/* 805E715C  38 00 00 00 */	li r0, 0
/* 805E7160  C0 85 00 00 */	lfs f4, 0(r5)
/* 805E7164  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E7168  7F 03 C3 78 */	mr r3, r24
/* 805E716C  38 A0 00 08 */	li r5, 8
/* 805E7170  38 C0 00 A5 */	li r6, 0xa5
/* 805E7174  C0 3C 00 00 */	lfs f1, 0(r28)
/* 805E7178  38 E0 00 91 */	li r7, 0x91
/* 805E717C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805E7180  39 00 00 8C */	li r8, 0x8c
/* 805E7184  EC 3B 08 2A */	fadds f1, f27, f1
/* 805E7188  39 20 00 FF */	li r9, 0xff
/* 805E718C  EC 5A 00 28 */	fsubs f2, f26, f0
/* 805E7190  39 40 00 00 */	li r10, 0
/* 805E7194  4B DC 8F 15 */	bl mFont_SetLineStrings
lbl_805E7198:
/* 805E7198  EF 5A F8 2A */	fadds f26, f26, f31
/* 805E719C  3B 5A 00 01 */	addi r26, r26, 1
/* 805E71A0  3B BD 00 04 */	addi r29, r29, 4
lbl_805E71A4:
/* 805E71A4  A8 19 00 10 */	lha r0, 0x10(r25)
/* 805E71A8  7C 1A 00 00 */	cmpw r26, r0
/* 805E71AC  41 80 FF 04 */	blt lbl_805E70B0
/* 805E71B0  48 00 00 54 */	b lbl_805E7204
lbl_805E71B4:
/* 805E71B4  38 00 00 01 */	li r0, 1
/* 805E71B8  3C 60 80 65 */	lis r3, lit_867@ha /* 0x8064B598@ha */
/* 805E71BC  90 01 00 08 */	stw r0, 8(r1)
/* 805E71C0  38 A3 B5 98 */	addi r5, r3, lit_867@l /* 0x8064B598@l */
/* 805E71C4  38 00 00 00 */	li r0, 0
/* 805E71C8  C0 65 00 00 */	lfs f3, 0(r5)
/* 805E71CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E71D0  7F 03 C3 78 */	mr r3, r24
/* 805E71D4  FC 80 18 90 */	fmr f4, f3
/* 805E71D8  38 C0 00 78 */	li r6, 0x78
/* 805E71DC  C0 3C 00 00 */	lfs f1, 0(r28)
/* 805E71E0  38 E0 00 5F */	li r7, 0x5f
/* 805E71E4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805E71E8  39 00 00 CD */	li r8, 0xcd
/* 805E71EC  EC 3B 08 2A */	fadds f1, f27, f1
/* 805E71F0  80 BC 00 0C */	lwz r5, 0xc(r28)
/* 805E71F4  EC 5A 00 28 */	fsubs f2, f26, f0
/* 805E71F8  39 20 00 FF */	li r9, 0xff
/* 805E71FC  39 40 00 00 */	li r10, 0
/* 805E7200  4B DC 8E A9 */	bl mFont_SetLineStrings
lbl_805E7204:
/* 805E7204  3B 7B 00 01 */	addi r27, r27, 1
/* 805E7208  3A F7 00 04 */	addi r23, r23, 4
/* 805E720C  2C 1B 00 02 */	cmpwi r27, 2
/* 805E7210  41 80 FE 58 */	blt lbl_805E7068
lbl_805E7214:
/* 805E7214  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 805E7218  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 805E721C  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 805E7220  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 805E7224  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 805E7228  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 805E722C  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 805E7230  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 805E7234  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 805E7238  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 805E723C  E3 41 00 48 */	psq_l f26, 72(r1), 0, 0 /* qr0 */
/* 805E7240  39 61 00 40 */	addi r11, r1, 0x40
/* 805E7244  CB 41 00 40 */	lfd f26, 0x40(r1)
/* 805E7248  4B AB 3C C1 */	bl func_8009AF08
/* 805E724C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805E7250  7C 08 03 A6 */	mtlr r0
/* 805E7254  38 21 00 A0 */	addi r1, r1, 0xa0
/* 805E7258  4E 80 00 20 */	blr 
