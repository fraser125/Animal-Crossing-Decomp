lbl_80499510:
/* 80499510  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80499514  7C 08 02 A6 */	mflr r0
/* 80499518  90 01 00 64 */	stw r0, 0x64(r1)
/* 8049951C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80499520  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80499524  39 61 00 50 */	addi r11, r1, 0x50
/* 80499528  4B C0 19 A1 */	bl func_8009AEC8
/* 8049952C  3C 80 80 64 */	lis r4, lit_457@ha /* 0x80644CEC@ha */
/* 80499530  83 E1 00 18 */	lwz r31, 0x18(r1)
/* 80499534  CB E4 4C EC */	lfd f31, lit_457@l(r4)  /* 0x80644CEC@l */
/* 80499538  7C 7A 1B 78 */	mr r26, r3
/* 8049953C  3B 80 00 00 */	li r28, 0
/* 80499540  3F C0 43 30 */	lis r30, 0x4330
lbl_80499544:
/* 80499544  3B 60 00 00 */	li r27, 0
/* 80499548  6F 9D 80 00 */	xoris r29, r28, 0x8000
lbl_8049954C:
/* 8049954C  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80499550  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80499554  C0 7A 00 00 */	lfs f3, 0(r26)
/* 80499558  38 61 00 08 */	addi r3, r1, 8
/* 8049955C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80499560  C0 3A 00 08 */	lfs f1, 8(r26)
/* 80499564  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80499568  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8049956C  EC 40 F8 28 */	fsubs f2, f0, f31
/* 80499570  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80499574  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80499578  EC 43 10 2A */	fadds f2, f3, f2
/* 8049957C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80499580  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80499584  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80499588  EC 01 00 2A */	fadds f0, f1, f0
/* 8049958C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80499590  90 01 00 08 */	stw r0, 8(r1)
/* 80499594  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80499598  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8049959C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804995A0  4B EF 6C A5 */	bl mCoBG_Wpos2BgAttribute_Original
/* 804995A4  4B EF AD 29 */	bl mCoBG_CheckWaterAttribute
/* 804995A8  2C 03 00 00 */	cmpwi r3, 0
/* 804995AC  41 82 00 18 */	beq lbl_804995C4
/* 804995B0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804995B4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804995B8  D0 3A 00 00 */	stfs f1, 0(r26)
/* 804995BC  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804995C0  48 00 00 3C */	b lbl_804995FC
lbl_804995C4:
/* 804995C4  3B 7B 00 01 */	addi r27, r27, 1
/* 804995C8  2C 1B 00 28 */	cmpwi r27, 0x28
/* 804995CC  41 80 FF 80 */	blt lbl_8049954C
/* 804995D0  3B 9C 00 01 */	addi r28, r28, 1
/* 804995D4  2C 1C 00 28 */	cmpwi r28, 0x28
/* 804995D8  41 80 FF 6C */	blt lbl_80499544
/* 804995DC  3C 60 80 64 */	lis r3, data_80644CE4@ha /* 0x80644CE4@ha */
/* 804995E0  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804995E4  C0 23 4C E4 */	lfs f1, data_80644CE4@l(r3)  /* 0x80644CE4@l */
/* 804995E8  EC 00 08 2A */	fadds f0, f0, f1
/* 804995EC  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804995F0  C0 1A 00 08 */	lfs f0, 8(r26)
/* 804995F4  EC 00 08 2A */	fadds f0, f0, f1
/* 804995F8  D0 1A 00 08 */	stfs f0, 8(r26)
lbl_804995FC:
/* 804995FC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80499600  39 61 00 50 */	addi r11, r1, 0x50
/* 80499604  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80499608  4B C0 19 0D */	bl func_8009AF14
/* 8049960C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80499610  7C 08 03 A6 */	mtlr r0
/* 80499614  38 21 00 60 */	addi r1, r1, 0x60
/* 80499618  4E 80 00 20 */	blr 