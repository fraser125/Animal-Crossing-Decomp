lbl_804CBC28:
/* 804CBC28  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804CBC2C  7C 08 02 A6 */	mflr r0
/* 804CBC30  90 01 00 94 */	stw r0, 0x94(r1)
/* 804CBC34  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804CBC38  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804CBC3C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804CBC40  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804CBC44  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 804CBC48  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 804CBC4C  39 61 00 60 */	addi r11, r1, 0x60
/* 804CBC50  4B BC F2 69 */	bl func_8009AEB8
/* 804CBC54  3C C0 80 64 */	lis r6, data_806461DC@ha /* 0x806461DC@ha */
/* 804CBC58  3C A0 80 64 */	lis r5, lit_633@ha /* 0x806461E0@ha */
/* 804CBC5C  38 E6 61 DC */	addi r7, r6, data_806461DC@l /* 0x806461DC@l */
/* 804CBC60  7C 7F 1B 78 */	mr r31, r3
/* 804CBC64  C0 07 00 00 */	lfs f0, 0(r7)
/* 804CBC68  3C C0 80 64 */	lis r6, lit_2563@ha /* 0x80646274@ha */
/* 804CBC6C  3F 5F 00 01 */	addis r26, r31, 1
/* 804CBC70  C3 E5 61 E0 */	lfs f31, lit_633@l(r5)  /* 0x806461E0@l */
/* 804CBC74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804CBC78  7C 96 23 78 */	mr r22, r4
/* 804CBC7C  C3 A6 62 74 */	lfs f29, lit_2563@l(r6)  /* 0x80646274@l */
/* 804CBC80  3B C1 00 28 */	addi r30, r1, 0x28
/* 804CBC84  3B 20 00 00 */	li r25, 0
/* 804CBC88  3A E0 00 00 */	li r23, 0
/* 804CBC8C  3B A0 00 00 */	li r29, 0
/* 804CBC90  3B 5A 25 58 */	addi r26, r26, 0x2558
/* 804CBC94  48 00 00 C4 */	b lbl_804CBD58
lbl_804CBC98:
/* 804CBC98  88 BA 00 00 */	lbz r5, 0(r26)
/* 804CBC9C  7F C4 F3 78 */	mr r4, r30
/* 804CBCA0  88 DA 00 01 */	lbz r6, 1(r26)
/* 804CBCA4  38 61 00 20 */	addi r3, r1, 0x20
/* 804CBCA8  83 1A 00 0C */	lwz r24, 0xc(r26)
/* 804CBCAC  7C A5 07 74 */	extsb r5, r5
/* 804CBCB0  7C C6 07 74 */	extsb r6, r6
/* 804CBCB4  4B ED 9E C5 */	bl mFI_BkNum2WposXZ
/* 804CBCB8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804CBCBC  3B 80 00 00 */	li r28, 0
/* 804CBCC0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804CBCC4  EF C1 E8 2A */	fadds f30, f1, f29
/* 804CBCC8  EC 00 E8 2A */	fadds f0, f0, f29
/* 804CBCCC  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 804CBCD0  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_804CBCD4:
/* 804CBCD4  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 804CBCD8  3B 60 00 00 */	li r27, 0
lbl_804CBCDC:
/* 804CBCDC  A0 18 00 00 */	lhz r0, 0(r24)
/* 804CBCE0  28 00 00 5C */	cmplwi r0, 0x5c
/* 804CBCE4  40 82 00 1C */	bne lbl_804CBD00
/* 804CBCE8  7C 19 03 78 */	mr r25, r0
/* 804CBCEC  38 61 00 14 */	addi r3, r1, 0x14
/* 804CBCF0  38 81 00 20 */	addi r4, r1, 0x20
/* 804CBCF4  4B EE F1 C9 */	bl xyz_t_move
/* 804CBCF8  3A E0 00 01 */	li r23, 1
/* 804CBCFC  48 00 00 20 */	b lbl_804CBD1C
lbl_804CBD00:
/* 804CBD00  28 00 00 5D */	cmplwi r0, 0x5d
/* 804CBD04  40 82 00 18 */	bne lbl_804CBD1C
/* 804CBD08  7C 19 03 78 */	mr r25, r0
/* 804CBD0C  38 61 00 14 */	addi r3, r1, 0x14
/* 804CBD10  38 81 00 20 */	addi r4, r1, 0x20
/* 804CBD14  4B EE F1 A9 */	bl xyz_t_move
/* 804CBD18  3A E0 00 02 */	li r23, 2
lbl_804CBD1C:
/* 804CBD1C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804CBD20  3B 7B 00 01 */	addi r27, r27, 1
/* 804CBD24  2C 1B 00 10 */	cmpwi r27, 0x10
/* 804CBD28  3B 18 00 02 */	addi r24, r24, 2
/* 804CBD2C  EC 00 F8 2A */	fadds f0, f0, f31
/* 804CBD30  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804CBD34  41 80 FF A8 */	blt lbl_804CBCDC
/* 804CBD38  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804CBD3C  3B 9C 00 01 */	addi r28, r28, 1
/* 804CBD40  2C 1C 00 10 */	cmpwi r28, 0x10
/* 804CBD44  EC 00 F8 2A */	fadds f0, f0, f31
/* 804CBD48  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804CBD4C  41 80 FF 88 */	blt lbl_804CBCD4
/* 804CBD50  3B BD 00 01 */	addi r29, r29, 1
/* 804CBD54  3B 5A 00 10 */	addi r26, r26, 0x10
lbl_804CBD58:
/* 804CBD58  7C 1D B0 00 */	cmpw r29, r22
/* 804CBD5C  41 80 FF 3C */	blt lbl_804CBC98
/* 804CBD60  56 E0 04 3F */	clrlwi. r0, r23, 0x10
/* 804CBD64  41 82 00 4C */	beq lbl_804CBDB0
/* 804CBD68  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 804CBD6C  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804CBD70  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804CBD74  38 83 61 E4 */	addi r4, r3, lit_664@l /* 0x806461E4@l */
/* 804CBD78  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804CBD7C  38 61 00 08 */	addi r3, r1, 8
/* 804CBD80  90 C1 00 08 */	stw r6, 8(r1)
/* 804CBD84  C0 24 00 00 */	lfs f1, 0(r4)
/* 804CBD88  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804CBD8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CBD90  4B EC 3C 09 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804CBD94  3C 7F 00 01 */	addis r3, r31, 1
/* 804CBD98  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804CBD9C  7F 24 CB 78 */	mr r4, r25
/* 804CBDA0  7E E6 BB 78 */	mr r6, r23
/* 804CBDA4  38 A1 00 14 */	addi r5, r1, 0x14
/* 804CBDA8  38 63 37 D4 */	addi r3, r3, 0x37d4
/* 804CBDAC  4B FF B5 49 */	bl bIT_actor_shin_effect_entry
lbl_804CBDB0:
/* 804CBDB0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804CBDB4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804CBDB8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804CBDBC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804CBDC0  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 804CBDC4  39 61 00 60 */	addi r11, r1, 0x60
/* 804CBDC8  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 804CBDCC  4B BC F1 39 */	bl func_8009AF04
/* 804CBDD0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804CBDD4  7C 08 03 A6 */	mtlr r0
/* 804CBDD8  38 21 00 90 */	addi r1, r1, 0x90
/* 804CBDDC  4E 80 00 20 */	blr 
