lbl_805A938C:
/* 805A938C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 805A9390  7C 08 02 A6 */	mflr r0
/* 805A9394  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 805A9398  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 805A939C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 805A93A0  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 805A93A4  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 805A93A8  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 805A93AC  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 805A93B0  39 61 00 90 */	addi r11, r1, 0x90
/* 805A93B4  4B AF 1B 0D */	bl func_8009AEC0
/* 805A93B8  7C 7A 1B 78 */	mr r26, r3
/* 805A93BC  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064A5A0@ha */
/* 805A93C0  80 9A 00 28 */	lwz r4, 0x28(r26)
/* 805A93C4  3C A0 80 6C */	lis r5, data_806C4588@ha /* 0x806C4588@ha */
/* 805A93C8  80 1A 00 2C */	lwz r0, 0x2c(r26)
/* 805A93CC  3B 85 45 88 */	addi r28, r5, data_806C4588@l /* 0x806C4588@l */
/* 805A93D0  C0 23 A5 A0 */	lfs f1, lit_473@l(r3)  /* 0x8064A5A0@l */
/* 805A93D4  38 61 00 48 */	addi r3, r1, 0x48
/* 805A93D8  90 81 00 48 */	stw r4, 0x48(r1)
/* 805A93DC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805A93E0  80 1A 00 30 */	lwz r0, 0x30(r26)
/* 805A93E4  90 01 00 50 */	stw r0, 0x50(r1)
/* 805A93E8  4B DE 65 B1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805A93EC  A0 1A 00 06 */	lhz r0, 6(r26)
/* 805A93F0  FF A0 08 90 */	fmr f29, f1
/* 805A93F4  3B BC 00 50 */	addi r29, r28, 0x50
/* 805A93F8  28 00 58 4B */	cmplwi r0, 0x584b
/* 805A93FC  40 82 00 08 */	bne lbl_805A9404
/* 805A9400  3B BC 00 24 */	addi r29, r28, 0x24
lbl_805A9404:
/* 805A9404  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064A5A4@ha */
/* 805A9408  3C 80 80 65 */	lis r4, lit_477@ha /* 0x8064A5AC@ha */
/* 805A940C  38 A3 A5 A4 */	addi r5, r3, lit_474@l /* 0x8064A5A4@l */
/* 805A9410  CB E4 A5 AC */	lfd f31, lit_477@l(r4)  /* 0x8064A5AC@l */
/* 805A9414  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064A5A0@ha */
/* 805A9418  C3 C5 00 00 */	lfs f30, 0(r5)
/* 805A941C  3B E3 A5 A0 */	addi r31, r3, lit_473@l /* 0x8064A5A0@l */
/* 805A9420  3B 60 00 00 */	li r27, 0
/* 805A9424  3B 20 00 00 */	li r25, 0
/* 805A9428  3F C0 43 30 */	lis r30, 0x4330
lbl_805A942C:
/* 805A942C  7F 1D CA 14 */	add r24, r29, r25
/* 805A9430  80 DA 00 28 */	lwz r6, 0x28(r26)
/* 805A9434  A8 98 00 00 */	lha r4, 0(r24)
/* 805A9438  38 61 00 3C */	addi r3, r1, 0x3c
/* 805A943C  A8 18 00 04 */	lha r0, 4(r24)
/* 805A9440  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805A9444  80 BA 00 30 */	lwz r5, 0x30(r26)
/* 805A9448  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805A944C  90 81 00 64 */	stw r4, 0x64(r1)
/* 805A9450  80 9A 00 2C */	lwz r4, 0x2c(r26)
/* 805A9454  93 C1 00 60 */	stw r30, 0x60(r1)
/* 805A9458  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805A945C  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 805A9460  90 01 00 6C */	stw r0, 0x6c(r1)
/* 805A9464  EC 40 F8 28 */	fsubs f2, f0, f31
/* 805A9468  93 C1 00 68 */	stw r30, 0x68(r1)
/* 805A946C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 805A9470  EC 7E 00 B2 */	fmuls f3, f30, f2
/* 805A9474  90 C1 00 54 */	stw r6, 0x54(r1)
/* 805A9478  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805A947C  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 805A9480  C0 81 00 54 */	lfs f4, 0x54(r1)
/* 805A9484  EC 1E 00 32 */	fmuls f0, f30, f0
/* 805A9488  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 805A948C  EC 64 18 2A */	fadds f3, f4, f3
/* 805A9490  90 81 00 58 */	stw r4, 0x58(r1)
/* 805A9494  EC 02 00 2A */	fadds f0, f2, f0
/* 805A9498  90 81 00 40 */	stw r4, 0x40(r1)
/* 805A949C  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 805A94A0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805A94A4  80 81 00 54 */	lwz r4, 0x54(r1)
/* 805A94A8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 805A94AC  90 81 00 3C */	stw r4, 0x3c(r1)
/* 805A94B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A94B4  4B DE 64 E5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805A94B8  A8 18 00 02 */	lha r0, 2(r24)
/* 805A94BC  2C 00 00 05 */	cmpwi r0, 5
/* 805A94C0  40 82 00 5C */	bne lbl_805A951C
/* 805A94C4  FC 01 E8 00 */	fcmpu cr0, f1, f29
/* 805A94C8  40 82 00 54 */	bne lbl_805A951C
/* 805A94CC  3C 60 80 65 */	lis r3, data_8064A574@ha /* 0x8064A574@ha */
/* 805A94D0  81 01 00 54 */	lwz r8, 0x54(r1)
/* 805A94D4  38 A3 A5 74 */	addi r5, r3, data_8064A574@l /* 0x8064A574@l */
/* 805A94D8  80 E1 00 58 */	lwz r7, 0x58(r1)
/* 805A94DC  81 65 00 00 */	lwz r11, 0(r5)
/* 805A94E0  38 61 00 30 */	addi r3, r1, 0x30
/* 805A94E4  A1 45 00 04 */	lhz r10, 4(r5)
/* 805A94E8  38 81 00 10 */	addi r4, r1, 0x10
/* 805A94EC  89 25 00 06 */	lbz r9, 6(r5)
/* 805A94F0  38 BC 00 7C */	addi r5, r28, 0x7c
/* 805A94F4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 805A94F8  38 C0 00 D9 */	li r6, 0xd9
/* 805A94FC  91 61 00 10 */	stw r11, 0x10(r1)
/* 805A9500  B1 41 00 14 */	sth r10, 0x14(r1)
/* 805A9504  99 21 00 16 */	stb r9, 0x16(r1)
/* 805A9508  91 01 00 30 */	stw r8, 0x30(r1)
/* 805A950C  90 E1 00 34 */	stw r7, 0x34(r1)
/* 805A9510  90 01 00 38 */	stw r0, 0x38(r1)
/* 805A9514  4B DE 88 65 */	bl mCoBG_SetPluss5PointOffset_file
/* 805A9518  48 00 00 58 */	b lbl_805A9570
lbl_805A951C:
/* 805A951C  1C A0 00 07 */	mulli r5, r0, 7
/* 805A9520  3C 80 80 65 */	lis r4, data_8064A574@ha /* 0x8064A574@ha */
/* 805A9524  81 01 00 54 */	lwz r8, 0x54(r1)
/* 805A9528  38 61 00 24 */	addi r3, r1, 0x24
/* 805A952C  38 04 A5 74 */	addi r0, r4, data_8064A574@l /* 0x8064A574@l */
/* 805A9530  80 E1 00 58 */	lwz r7, 0x58(r1)
/* 805A9534  7C C0 2A 14 */	add r6, r0, r5
/* 805A9538  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 805A953C  81 66 00 00 */	lwz r11, 0(r6)
/* 805A9540  38 81 00 08 */	addi r4, r1, 8
/* 805A9544  A1 46 00 04 */	lhz r10, 4(r6)
/* 805A9548  38 BC 00 7C */	addi r5, r28, 0x7c
/* 805A954C  89 26 00 06 */	lbz r9, 6(r6)
/* 805A9550  38 C0 00 DC */	li r6, 0xdc
/* 805A9554  91 61 00 08 */	stw r11, 8(r1)
/* 805A9558  B1 41 00 0C */	sth r10, 0xc(r1)
/* 805A955C  99 21 00 0E */	stb r9, 0xe(r1)
/* 805A9560  91 01 00 24 */	stw r8, 0x24(r1)
/* 805A9564  90 E1 00 28 */	stw r7, 0x28(r1)
/* 805A9568  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805A956C  4B DE 88 0D */	bl mCoBG_SetPluss5PointOffset_file
lbl_805A9570:
/* 805A9570  2C 1B 00 00 */	cmpwi r27, 0
/* 805A9574  41 82 00 30 */	beq lbl_805A95A4
/* 805A9578  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 805A957C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805A9580  80 C1 00 58 */	lwz r6, 0x58(r1)
/* 805A9584  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805A9588  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 805A958C  38 81 00 18 */	addi r4, r1, 0x18
/* 805A9590  90 A1 00 18 */	stw r5, 0x18(r1)
/* 805A9594  38 A0 00 00 */	li r5, 0
/* 805A9598  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 805A959C  90 01 00 20 */	stw r0, 0x20(r1)
/* 805A95A0  4B DF E2 91 */	bl mFI_SetFG_common
lbl_805A95A4:
/* 805A95A4  3B 7B 00 01 */	addi r27, r27, 1
/* 805A95A8  3B 39 00 06 */	addi r25, r25, 6
/* 805A95AC  2C 1B 00 07 */	cmpwi r27, 7
/* 805A95B0  41 80 FE 7C */	blt lbl_805A942C
/* 805A95B4  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 805A95B8  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 805A95BC  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 805A95C0  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 805A95C4  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 805A95C8  39 61 00 90 */	addi r11, r1, 0x90
/* 805A95CC  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 805A95D0  4B AF 19 3D */	bl func_8009AF0C
/* 805A95D4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 805A95D8  7C 08 03 A6 */	mtlr r0
/* 805A95DC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 805A95E0  4E 80 00 20 */	blr 
