lbl_803893BC:
/* 803893BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803893C0  7C 08 02 A6 */	mflr r0
/* 803893C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803893C8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803893CC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 803893D0  39 61 00 20 */	addi r11, r1, 0x20
/* 803893D4  4B D1 1B 01 */	bl func_8009AED4
/* 803893D8  7C 7D 1B 78 */	mr r29, r3
/* 803893DC  7C 9E 23 78 */	mr r30, r4
/* 803893E0  7C BF 2B 78 */	mr r31, r5
/* 803893E4  38 61 00 08 */	addi r3, r1, 8
/* 803893E8  7F A4 EB 78 */	mr r4, r29
/* 803893EC  4B FF F8 41 */	bl mCoBG_GetBGHeight_Normal
/* 803893F0  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 803893F4  FF E0 08 90 */	fmr f31, f1
/* 803893F8  38 83 55 60 */	addi r4, r3, l_ActorInf@l /* 0x81135560@l */
/* 803893FC  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 80389400  80 04 00 68 */	lwz r0, 0x68(r4)
/* 80389404  7C 03 00 00 */	cmpw r3, r0
/* 80389408  40 82 00 20 */	bne lbl_80389428
/* 8038940C  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 80389410  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 80389414  7C 03 00 00 */	cmpw r3, r0
/* 80389418  40 82 00 10 */	bne lbl_80389428
/* 8038941C  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 80389420  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 80389424  48 00 00 10 */	b lbl_80389434
lbl_80389428:
/* 80389428  7F E3 FB 78 */	mr r3, r31
/* 8038942C  7F A4 EB 78 */	mr r4, r29
/* 80389430  48 00 5C 41 */	bl mCoBG_GetBGHeight_Column
lbl_80389434:
/* 80389434  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80389438  40 81 00 24 */	ble lbl_8038945C
/* 8038943C  28 1E 00 00 */	cmplwi r30, 0
/* 80389440  41 82 00 14 */	beq lbl_80389454
/* 80389444  80 01 00 08 */	lwz r0, 8(r1)
/* 80389448  90 1E 00 00 */	stw r0, 0(r30)
/* 8038944C  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80389450  B0 1E 00 04 */	sth r0, 4(r30)
lbl_80389454:
/* 80389454  FC 20 F8 90 */	fmr f1, f31
/* 80389458  48 00 00 20 */	b lbl_80389478
lbl_8038945C:
/* 8038945C  28 1E 00 00 */	cmplwi r30, 0
/* 80389460  41 82 00 18 */	beq lbl_80389478
/* 80389464  3C 60 81 14 */	lis r3, ground_angle0_3053@ha /* 0x81138384@ha */
/* 80389468  84 03 83 84 */	lwzu r0, ground_angle0_3053@l(r3)  /* 0x81138384@l */
/* 8038946C  90 1E 00 00 */	stw r0, 0(r30)
/* 80389470  A0 03 00 04 */	lhz r0, 4(r3)
/* 80389474  B0 1E 00 04 */	sth r0, 4(r30)
lbl_80389478:
/* 80389478  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8038947C  39 61 00 20 */	addi r11, r1, 0x20
/* 80389480  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80389484  4B D1 1A 9D */	bl func_8009AF20
/* 80389488  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038948C  7C 08 03 A6 */	mtlr r0
/* 80389490  38 21 00 30 */	addi r1, r1, 0x30
/* 80389494  4E 80 00 20 */	blr 
