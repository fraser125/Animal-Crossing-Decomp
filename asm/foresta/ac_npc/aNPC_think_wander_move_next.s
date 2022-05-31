lbl_805369EC:
/* 805369EC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 805369F0  7C 08 02 A6 */	mflr r0
/* 805369F4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 805369F8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 805369FC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80536A00  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80536A04  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80536A08  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80536A0C  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 80536A10  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 80536A14  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 80536A18  39 61 00 80 */	addi r11, r1, 0x80
/* 80536A1C  4B B6 44 AD */	bl func_8009AEC8
/* 80536A20  7C 9C 23 78 */	mr r28, r4
/* 80536A24  7C 7B 1B 78 */	mr r27, r3
/* 80536A28  80 C4 00 28 */	lwz r6, 0x28(r4)
/* 80536A2C  38 61 00 14 */	addi r3, r1, 0x14
/* 80536A30  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 80536A34  38 81 00 10 */	addi r4, r1, 0x10
/* 80536A38  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80536A3C  3B C0 00 00 */	li r30, 0
/* 80536A40  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 80536A44  3B A0 00 01 */	li r29, 1
/* 80536A48  90 01 00 40 */	stw r0, 0x40(r1)
/* 80536A4C  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80536A50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80536A54  4B E6 ED 0D */	bl mFI_Wpos2BlockNum
/* 80536A58  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80536A5C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80536A60  4B E7 06 F5 */	bl mFI_BkNumtoUtFGTop
/* 80536A64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80536A68  40 82 00 0C */	bne lbl_80536A74
/* 80536A6C  3B C0 00 05 */	li r30, 5
/* 80536A70  48 00 01 60 */	b lbl_80536BD0
lbl_80536A74:
/* 80536A74  3C 60 80 65 */	lis r3, lit_4007@ha /* 0x8064934C@ha */
/* 80536A78  C3 DC 09 18 */	lfs f30, 0x918(r28)
/* 80536A7C  C3 BC 09 1C */	lfs f29, 0x91c(r28)
/* 80536A80  C3 9C 09 20 */	lfs f28, 0x920(r28)
/* 80536A84  C3 E3 93 4C */	lfs f31, lit_4007@l(r3)  /* 0x8064934C@l */
lbl_80536A88:
/* 80536A88  4B B2 62 6D */	bl fqrand
/* 80536A8C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80536A90  FC 00 00 1E */	fctiwz f0, f0
/* 80536A94  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80536A98  83 41 00 5C */	lwz r26, 0x5c(r1)
/* 80536A9C  7F 43 D3 78 */	mr r3, r26
/* 80536AA0  4B E8 40 51 */	bl sin_s
/* 80536AA4  EC 1C 00 72 */	fmuls f0, f28, f1
/* 80536AA8  7F 43 D3 78 */	mr r3, r26
/* 80536AAC  EC 1E 00 2A */	fadds f0, f30, f0
/* 80536AB0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80536AB4  4B E8 3F E9 */	bl cos_s
/* 80536AB8  EC 1C 00 72 */	fmuls f0, f28, f1
/* 80536ABC  80 81 00 48 */	lwz r4, 0x48(r1)
/* 80536AC0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80536AC4  38 61 00 0C */	addi r3, r1, 0xc
/* 80536AC8  90 81 00 30 */	stw r4, 0x30(r1)
/* 80536ACC  38 81 00 08 */	addi r4, r1, 8
/* 80536AD0  EC 1D 00 2A */	fadds f0, f29, f0
/* 80536AD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80536AD8  38 A1 00 30 */	addi r5, r1, 0x30
/* 80536ADC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80536AE0  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80536AE4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80536AE8  4B E6 EB 25 */	bl mFI_Wpos2UtNum_inBlock
/* 80536AEC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80536AF0  80 01 00 08 */	lwz r0, 8(r1)
/* 80536AF4  54 63 08 3C */	slwi r3, r3, 1
/* 80536AF8  54 00 28 34 */	slwi r0, r0, 5
/* 80536AFC  7C 03 02 14 */	add r0, r3, r0
/* 80536B00  7C 1F 02 2E */	lhzx r0, r31, r0
/* 80536B04  28 00 00 00 */	cmplwi r0, 0
/* 80536B08  41 82 00 20 */	beq lbl_80536B28
/* 80536B0C  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80536B10  2C 00 00 02 */	cmpwi r0, 2
/* 80536B14  41 82 00 14 */	beq lbl_80536B28
/* 80536B18  2C 00 00 01 */	cmpwi r0, 1
/* 80536B1C  41 82 00 0C */	beq lbl_80536B28
/* 80536B20  2C 00 00 03 */	cmpwi r0, 3
/* 80536B24  40 82 00 9C */	bne lbl_80536BC0
lbl_80536B28:
/* 80536B28  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 80536B2C  38 61 00 24 */	addi r3, r1, 0x24
/* 80536B30  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 80536B34  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80536B38  90 A1 00 24 */	stw r5, 0x24(r1)
/* 80536B3C  90 81 00 28 */	stw r4, 0x28(r1)
/* 80536B40  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80536B44  4B E5 95 01 */	bl mCoBG_Wpos2CheckNpc
/* 80536B48  2C 03 00 01 */	cmpwi r3, 1
/* 80536B4C  40 82 00 74 */	bne lbl_80536BC0
/* 80536B50  80 E1 00 48 */	lwz r7, 0x48(r1)
/* 80536B54  7F 83 E3 78 */	mr r3, r28
/* 80536B58  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 80536B5C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80536B60  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80536B64  38 80 00 00 */	li r4, 0
/* 80536B68  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80536B6C  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80536B70  90 01 00 20 */	stw r0, 0x20(r1)
/* 80536B74  88 DC 09 17 */	lbz r6, 0x917(r28)
/* 80536B78  4B FF 85 E5 */	bl aNPC_moveRangeCheck2
/* 80536B7C  2C 03 00 01 */	cmpwi r3, 1
/* 80536B80  40 82 00 40 */	bne lbl_80536BC0
/* 80536B84  88 1C 07 F5 */	lbz r0, 0x7f5(r28)
/* 80536B88  28 00 00 03 */	cmplwi r0, 3
/* 80536B8C  40 82 00 44 */	bne lbl_80536BD0
/* 80536B90  38 7C 00 28 */	addi r3, r28, 0x28
/* 80536B94  38 81 00 48 */	addi r4, r1, 0x48
/* 80536B98  4B E8 45 99 */	bl search_position_angleY
/* 80536B9C  A8 9C 00 DE */	lha r4, 0xde(r28)
/* 80536BA0  7C 60 07 34 */	extsh r0, r3
/* 80536BA4  7C 64 00 51 */	subf. r3, r4, r0
/* 80536BA8  7C 03 00 D0 */	neg r0, r3
/* 80536BAC  41 80 00 08 */	blt lbl_80536BB4
/* 80536BB0  7C 60 1B 78 */	mr r0, r3
lbl_80536BB4:
/* 80536BB4  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80536BB8  41 80 00 18 */	blt lbl_80536BD0
/* 80536BBC  48 00 00 0C */	b lbl_80536BC8
lbl_80536BC0:
/* 80536BC0  2C 1E 00 04 */	cmpwi r30, 4
/* 80536BC4  41 81 00 0C */	bgt lbl_80536BD0
lbl_80536BC8:
/* 80536BC8  3B DE 00 01 */	addi r30, r30, 1
/* 80536BCC  4B FF FE BC */	b lbl_80536A88
lbl_80536BD0:
/* 80536BD0  2C 1E 00 04 */	cmpwi r30, 4
/* 80536BD4  41 81 00 30 */	bgt lbl_80536C04
/* 80536BD8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80536BDC  FC 00 00 1E */	fctiwz f0, f0
/* 80536BE0  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80536BE4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80536BE8  B0 1B 00 04 */	sth r0, 4(r27)
/* 80536BEC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80536BF0  FC 00 00 1E */	fctiwz f0, f0
/* 80536BF4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80536BF8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80536BFC  B0 1B 00 06 */	sth r0, 6(r27)
/* 80536C00  48 00 00 08 */	b lbl_80536C08
lbl_80536C04:
/* 80536C04  3B A0 00 00 */	li r29, 0
lbl_80536C08:
/* 80536C08  7F A3 EB 78 */	mr r3, r29
/* 80536C0C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80536C10  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80536C14  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80536C18  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80536C1C  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 80536C20  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80536C24  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 80536C28  39 61 00 80 */	addi r11, r1, 0x80
/* 80536C2C  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 80536C30  4B B6 42 E5 */	bl func_8009AF14
/* 80536C34  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80536C38  7C 08 03 A6 */	mtlr r0
/* 80536C3C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80536C40  4E 80 00 20 */	blr 
