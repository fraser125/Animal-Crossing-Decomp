lbl_80420A30:
/* 80420A30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80420A34  7C 08 02 A6 */	mflr r0
/* 80420A38  90 01 00 64 */	stw r0, 0x64(r1)
/* 80420A3C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80420A40  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80420A44  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80420A48  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80420A4C  39 61 00 40 */	addi r11, r1, 0x40
/* 80420A50  4B C7 A4 75 */	bl func_8009AEC4
/* 80420A54  7C 79 1B 78 */	mr r25, r3
/* 80420A58  7C 9A 23 78 */	mr r26, r4
/* 80420A5C  3B A0 00 02 */	li r29, 2
/* 80420A60  38 60 00 72 */	li r3, 0x72
/* 80420A64  38 80 00 36 */	li r4, 0x36
/* 80420A68  4B F7 D3 65 */	bl mEv_get_save_area
/* 80420A6C  7C 7E 1B 78 */	mr r30, r3
/* 80420A70  38 60 00 72 */	li r3, 0x72
/* 80420A74  38 80 00 37 */	li r4, 0x37
/* 80420A78  4B F7 D6 65 */	bl mEv_get_common_area
/* 80420A7C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80420A80  7C 60 1B 78 */	mr r0, r3
/* 80420A84  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80420A88  80 7A 00 00 */	lwz r3, 0(r26)
/* 80420A8C  3F E4 00 02 */	addis r31, r4, 2
/* 80420A90  7C 1C 03 78 */	mr r28, r0
/* 80420A94  8B 7F 60 03 */	lbz r27, 0x6003(r31)
/* 80420A98  4B F7 D1 55 */	bl mEv_check_keep
/* 80420A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80420AA0  40 82 00 10 */	bne lbl_80420AB0
/* 80420AA4  80 7A 00 00 */	lwz r3, 0(r26)
/* 80420AA8  4B F7 D0 DD */	bl mEv_set_keep
/* 80420AAC  3B A0 00 01 */	li r29, 1
lbl_80420AB0:
/* 80420AB0  28 1E 00 00 */	cmplwi r30, 0
/* 80420AB4  41 82 00 18 */	beq lbl_80420ACC
/* 80420AB8  A0 1E 00 02 */	lhz r0, 2(r30)
/* 80420ABC  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80420AC0  41 82 00 0C */	beq lbl_80420ACC
/* 80420AC4  3B A0 00 02 */	li r29, 2
/* 80420AC8  48 00 01 5C */	b lbl_80420C24
lbl_80420ACC:
/* 80420ACC  2C 1D 00 00 */	cmpwi r29, 0
/* 80420AD0  41 82 01 54 */	beq lbl_80420C24
/* 80420AD4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D06F@ha */
/* 80420AD8  7F 23 CB 78 */	mr r3, r25
/* 80420ADC  7F 44 D3 78 */	mr r4, r26
/* 80420AE0  38 C0 00 51 */	li r6, 0x51
/* 80420AE4  38 A5 D0 6F */	addi r5, r5, 0xD06F /* 0x0000D06F@l */
/* 80420AE8  38 E0 00 05 */	li r7, 5
/* 80420AEC  4B FF B4 C1 */	bl make_actor_in_free_block
/* 80420AF0  3C 80 81 1D */	lis r4, wpppp@ha /* 0x811CB95C@ha */
/* 80420AF4  28 1C 00 00 */	cmplwi r28, 0
/* 80420AF8  90 64 B9 5C */	stw r3, wpppp@l(r4)  /* 0x811CB95C@l */
/* 80420AFC  40 82 00 14 */	bne lbl_80420B10
/* 80420B00  38 60 00 72 */	li r3, 0x72
/* 80420B04  38 80 00 37 */	li r4, 0x37
/* 80420B08  4B F7 D4 ED */	bl mEv_reserve_common_area
/* 80420B0C  7C 7C 1B 78 */	mr r28, r3
lbl_80420B10:
/* 80420B10  28 1C 00 00 */	cmplwi r28, 0
/* 80420B14  41 82 01 10 */	beq lbl_80420C24
/* 80420B18  28 1E 00 00 */	cmplwi r30, 0
/* 80420B1C  41 82 00 58 */	beq lbl_80420B74
/* 80420B20  38 00 00 01 */	li r0, 1
/* 80420B24  A0 7E 00 02 */	lhz r3, 2(r30)
/* 80420B28  7C 00 D8 30 */	slw r0, r0, r27
/* 80420B2C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80420B30  7C 60 00 39 */	and. r0, r3, r0
/* 80420B34  41 82 00 40 */	beq lbl_80420B74
/* 80420B38  A0 7F 61 26 */	lhz r3, 0x6126(r31)
/* 80420B3C  A0 1E 00 04 */	lhz r0, 4(r30)
/* 80420B40  7C 03 00 40 */	cmplw r3, r0
/* 80420B44  40 82 00 30 */	bne lbl_80420B74
/* 80420B48  88 7F 61 25 */	lbz r3, 0x6125(r31)
/* 80420B4C  88 1E 00 06 */	lbz r0, 6(r30)
/* 80420B50  7C 03 00 40 */	cmplw r3, r0
/* 80420B54  40 82 00 20 */	bne lbl_80420B74
/* 80420B58  88 7F 61 23 */	lbz r3, 0x6123(r31)
/* 80420B5C  88 1E 00 07 */	lbz r0, 7(r30)
/* 80420B60  7C 03 00 40 */	cmplw r3, r0
/* 80420B64  40 82 00 10 */	bne lbl_80420B74
/* 80420B68  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 80420B6C  60 00 40 00 */	ori r0, r0, 0x4000
/* 80420B70  B0 1C 00 0A */	sth r0, 0xa(r28)
lbl_80420B74:
/* 80420B74  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 80420B78  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80420B7C  40 82 00 A8 */	bne lbl_80420C24
/* 80420B80  3C 80 80 64 */	lis r4, lit_2596@ha /* 0x80643DEC@ha */
/* 80420B84  3C 60 80 64 */	lis r3, lit_2597@ha /* 0x80643DF0@ha */
/* 80420B88  C3 C4 3D EC */	lfs f30, lit_2596@l(r4)  /* 0x80643DEC@l */
/* 80420B8C  3B C0 00 00 */	li r30, 0
/* 80420B90  C3 E3 3D F0 */	lfs f31, lit_2597@l(r3)  /* 0x80643DF0@l */
/* 80420B94  48 00 00 7C */	b lbl_80420C10
lbl_80420B98:
/* 80420B98  4B C3 C1 5D */	bl fqrand
/* 80420B9C  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80420BA0  FC 00 00 1E */	fctiwz f0, f0
/* 80420BA4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80420BA8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80420BAC  3B E3 00 01 */	addi r31, r3, 1
/* 80420BB0  4B C3 C1 45 */	bl fqrand
/* 80420BB4  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80420BB8  38 80 00 00 */	li r4, 0
/* 80420BBC  FC 00 00 1E */	fctiwz f0, f0
/* 80420BC0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80420BC4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80420BC8  38 A3 00 02 */	addi r5, r3, 2
/* 80420BCC  48 00 00 08 */	b lbl_80420BD4
lbl_80420BD0:
/* 80420BD0  38 84 00 01 */	addi r4, r4, 1
lbl_80420BD4:
/* 80420BD4  7C 04 F0 00 */	cmpw r4, r30
/* 80420BD8  40 80 00 20 */	bge lbl_80420BF8
/* 80420BDC  7C 7C 22 14 */	add r3, r28, r4
/* 80420BE0  88 03 00 00 */	lbz r0, 0(r3)
/* 80420BE4  7C 1F 00 00 */	cmpw r31, r0
/* 80420BE8  40 82 FF E8 */	bne lbl_80420BD0
/* 80420BEC  88 03 00 05 */	lbz r0, 5(r3)
/* 80420BF0  7C 00 28 00 */	cmpw r0, r5
/* 80420BF4  40 82 FF DC */	bne lbl_80420BD0
lbl_80420BF8:
/* 80420BF8  7C 04 F0 00 */	cmpw r4, r30
/* 80420BFC  40 82 00 14 */	bne lbl_80420C10
/* 80420C00  7C 7C F2 14 */	add r3, r28, r30
/* 80420C04  3B DE 00 01 */	addi r30, r30, 1
/* 80420C08  9B E3 00 00 */	stb r31, 0(r3)
/* 80420C0C  98 A3 00 05 */	stb r5, 5(r3)
lbl_80420C10:
/* 80420C10  2C 1E 00 05 */	cmpwi r30, 5
/* 80420C14  41 80 FF 84 */	blt lbl_80420B98
/* 80420C18  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 80420C1C  60 00 80 00 */	ori r0, r0, 0x8000
/* 80420C20  B0 1C 00 0A */	sth r0, 0xa(r28)
lbl_80420C24:
/* 80420C24  7F A3 EB 78 */	mr r3, r29
/* 80420C28  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80420C2C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80420C30  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80420C34  39 61 00 40 */	addi r11, r1, 0x40
/* 80420C38  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80420C3C  4B C7 A2 D5 */	bl func_8009AF10
/* 80420C40  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80420C44  7C 08 03 A6 */	mtlr r0
/* 80420C48  38 21 00 60 */	addi r1, r1, 0x60
/* 80420C4C  4E 80 00 20 */	blr 
