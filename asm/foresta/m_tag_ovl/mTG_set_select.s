lbl_805FE5E0:
/* 805FE5E0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805FE5E4  7C 08 02 A6 */	mflr r0
/* 805FE5E8  90 01 00 74 */	stw r0, 0x74(r1)
/* 805FE5EC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805FE5F0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805FE5F4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805FE5F8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805FE5FC  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805FE600  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805FE604  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 805FE608  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 805FE60C  39 61 00 30 */	addi r11, r1, 0x30
/* 805FE610  4B A9 C8 B5 */	bl func_8009AEC4
/* 805FE614  FF 80 08 90 */	fmr f28, f1
/* 805FE618  7C 79 1B 78 */	mr r25, r3
/* 805FE61C  FF A0 10 90 */	fmr f29, f2
/* 805FE620  7C BA 2B 78 */	mr r26, r5
/* 805FE624  7C 83 23 78 */	mr r3, r4
/* 805FE628  FF C0 18 90 */	fmr f30, f3
/* 805FE62C  FF E0 20 90 */	fmr f31, f4
/* 805FE630  7C DB 33 78 */	mr r27, r6
/* 805FE634  7C FC 3B 78 */	mr r28, r7
/* 805FE638  7F 44 D3 78 */	mr r4, r26
/* 805FE63C  4B FF F4 75 */	bl mTG_get_special_color
/* 805FE640  3C A0 80 6D */	lis r5, mTG_select_col_type_on@ha /* 0x806D1014@ha */
/* 805FE644  3C 80 80 6D */	lis r4, mTG_select_col_type_off@ha /* 0x806D1024@ha */
/* 805FE648  54 66 10 3A */	slwi r6, r3, 2
/* 805FE64C  3B A0 00 00 */	li r29, 0
/* 805FE650  38 65 10 14 */	addi r3, r5, mTG_select_col_type_on@l /* 0x806D1014@l */
/* 805FE654  38 04 10 24 */	addi r0, r4, mTG_select_col_type_off@l /* 0x806D1024@l */
/* 805FE658  7F E3 32 14 */	add r31, r3, r6
/* 805FE65C  7F C0 32 14 */	add r30, r0, r6
/* 805FE660  48 00 00 6C */	b lbl_805FE6CC
lbl_805FE664:
/* 805FE664  80 1A 00 40 */	lwz r0, 0x40(r26)
/* 805FE668  7C 1D 00 00 */	cmpw r29, r0
/* 805FE66C  40 82 00 0C */	bne lbl_805FE678
/* 805FE670  7F E8 FB 78 */	mr r8, r31
/* 805FE674  48 00 00 08 */	b lbl_805FE67C
lbl_805FE678:
/* 805FE678  7F C8 F3 78 */	mr r8, r30
lbl_805FE67C:
/* 805FE67C  38 60 00 01 */	li r3, 1
/* 805FE680  38 00 00 00 */	li r0, 0
/* 805FE684  90 61 00 08 */	stw r3, 8(r1)
/* 805FE688  FC 20 E0 90 */	fmr f1, f28
/* 805FE68C  FC 40 E8 90 */	fmr f2, f29
/* 805FE690  7F 23 CB 78 */	mr r3, r25
/* 805FE694  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FE698  FC 60 F0 90 */	fmr f3, f30
/* 805FE69C  FC 80 F0 90 */	fmr f4, f30
/* 805FE6A0  80 9B 00 00 */	lwz r4, 0(r27)
/* 805FE6A4  88 C8 00 00 */	lbz r6, 0(r8)
/* 805FE6A8  38 A0 00 10 */	li r5, 0x10
/* 805FE6AC  88 E8 00 01 */	lbz r7, 1(r8)
/* 805FE6B0  39 20 00 FF */	li r9, 0xff
/* 805FE6B4  89 08 00 02 */	lbz r8, 2(r8)
/* 805FE6B8  39 40 00 00 */	li r10, 0
/* 805FE6BC  4B DB 19 ED */	bl mFont_SetLineStrings
/* 805FE6C0  EF BD F8 2A */	fadds f29, f29, f31
/* 805FE6C4  3B BD 00 01 */	addi r29, r29, 1
/* 805FE6C8  3B 7B 00 04 */	addi r27, r27, 4
lbl_805FE6CC:
/* 805FE6CC  7C 1D E0 00 */	cmpw r29, r28
/* 805FE6D0  41 80 FF 94 */	blt lbl_805FE664
/* 805FE6D4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805FE6D8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805FE6DC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805FE6E0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805FE6E4  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805FE6E8  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805FE6EC  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 805FE6F0  39 61 00 30 */	addi r11, r1, 0x30
/* 805FE6F4  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 805FE6F8  4B A9 C8 19 */	bl func_8009AF10
/* 805FE6FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805FE700  7C 08 03 A6 */	mtlr r0
/* 805FE704  38 21 00 70 */	addi r1, r1, 0x70
/* 805FE708  4E 80 00 20 */	blr 
