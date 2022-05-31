lbl_8038C4D8:
/* 8038C4D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8038C4DC  7C 08 02 A6 */	mflr r0
/* 8038C4E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8038C4E4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8038C4E8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8038C4EC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8038C4F0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8038C4F4  39 61 00 30 */	addi r11, r1, 0x30
/* 8038C4F8  4B D0 E9 D1 */	bl func_8009AEC8
/* 8038C4FC  80 C4 00 20 */	lwz r6, 0x20(r4)
/* 8038C500  3C E0 43 30 */	lis r7, 0x4330
/* 8038C504  7C 7D 1B 78 */	mr r29, r3
/* 8038C508  80 04 00 24 */	lwz r0, 0x24(r4)
/* 8038C50C  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 8038C510  3D 00 80 64 */	lis r8, lit_793@ha /* 0x806419DC@ha */
/* 8038C514  90 61 00 0C */	stw r3, 0xc(r1)
/* 8038C518  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8038C51C  81 3D 00 00 */	lwz r9, 0(r29)
/* 8038C520  3C 60 80 65 */	lis r3, mCoBG_forbid_vector_idx@ha /* 0x80650904@ha */
/* 8038C524  90 E1 00 08 */	stw r7, 8(r1)
/* 8038C528  7C BE 2B 78 */	mr r30, r5
/* 8038C52C  C8 28 19 DC */	lfd f1, lit_793@l(r8)  /* 0x806419DC@l */
/* 8038C530  1D 29 00 34 */	mulli r9, r9, 0x34
/* 8038C534  C8 01 00 08 */	lfd f0, 8(r1)
/* 8038C538  3B 40 00 00 */	li r26, 0
/* 8038C53C  88 84 00 2C */	lbz r4, 0x2c(r4)
/* 8038C540  3B 80 00 00 */	li r28, 0
/* 8038C544  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8038C548  38 04 FF E5 */	addi r0, r4, -27
/* 8038C54C  3B E9 00 04 */	addi r31, r9, 4
/* 8038C550  54 04 10 3A */	slwi r4, r0, 2
/* 8038C554  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8038C558  EF E0 08 28 */	fsubs f31, f0, f1
/* 8038C55C  38 03 09 04 */	addi r0, r3, mCoBG_forbid_vector_idx@l /* 0x80650904@l */
/* 8038C560  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8038C564  7F FD FA 14 */	add r31, r29, r31
/* 8038C568  7F 60 22 14 */	add r27, r0, r4
/* 8038C56C  EF C0 08 28 */	fsubs f30, f0, f1
lbl_8038C570:
/* 8038C570  7C 1B E2 AE */	lhax r0, r27, r28
/* 8038C574  2C 00 FF FF */	cmpwi r0, -1
/* 8038C578  41 82 00 70 */	beq lbl_8038C5E8
/* 8038C57C  3C 60 80 65 */	lis r3, mCoBG_make_vector_table@ha /* 0x80650884@ha */
/* 8038C580  54 04 20 36 */	slwi r4, r0, 4
/* 8038C584  38 03 08 84 */	addi r0, r3, mCoBG_make_vector_table@l /* 0x80650884@l */
/* 8038C588  FC 20 F8 90 */	fmr f1, f31
/* 8038C58C  7C A0 22 14 */	add r5, r0, r4
/* 8038C590  FC 40 F0 90 */	fmr f2, f30
/* 8038C594  C0 05 00 04 */	lfs f0, 4(r5)
/* 8038C598  7F E3 FB 78 */	mr r3, r31
/* 8038C59C  7F C6 F3 78 */	mr r6, r30
/* 8038C5A0  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8038C5A4  38 9F 00 08 */	addi r4, r31, 8
/* 8038C5A8  C0 05 00 08 */	lfs f0, 8(r5)
/* 8038C5AC  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8038C5B0  A8 05 00 00 */	lha r0, 0(r5)
/* 8038C5B4  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 8038C5B8  88 05 00 0C */	lbz r0, 0xc(r5)
/* 8038C5BC  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 8038C5C0  88 BF 00 2A */	lbz r5, 0x2a(r31)
/* 8038C5C4  4B FF ED CD */	bl func_8038B390
/* 8038C5C8  38 60 00 01 */	li r3, 1
/* 8038C5CC  38 00 00 00 */	li r0, 0
/* 8038C5D0  98 7F 00 30 */	stb r3, 0x30(r31)
/* 8038C5D4  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8038C5D8  3B FF 00 34 */	addi r31, r31, 0x34
/* 8038C5DC  80 7D 00 00 */	lwz r3, 0(r29)
/* 8038C5E0  38 03 00 01 */	addi r0, r3, 1
/* 8038C5E4  90 1D 00 00 */	stw r0, 0(r29)
lbl_8038C5E8:
/* 8038C5E8  3B 5A 00 01 */	addi r26, r26, 1
/* 8038C5EC  3B 9C 00 02 */	addi r28, r28, 2
/* 8038C5F0  2C 1A 00 02 */	cmpwi r26, 2
/* 8038C5F4  41 80 FF 7C */	blt lbl_8038C570
/* 8038C5F8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8038C5FC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8038C600  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8038C604  39 61 00 30 */	addi r11, r1, 0x30
/* 8038C608  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8038C60C  4B D0 E9 09 */	bl func_8009AF14
/* 8038C610  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8038C614  7C 08 03 A6 */	mtlr r0
/* 8038C618  38 21 00 50 */	addi r1, r1, 0x50
/* 8038C61C  4E 80 00 20 */	blr 
