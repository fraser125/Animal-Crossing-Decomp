lbl_805AFCA8:
/* 805AFCA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AFCAC  7C 08 02 A6 */	mflr r0
/* 805AFCB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AFCB4  39 61 00 30 */	addi r11, r1, 0x30
/* 805AFCB8  4B AE B2 0D */	bl func_8009AEC4
/* 805AFCBC  7C 7E 1B 78 */	mr r30, r3
/* 805AFCC0  3C 60 80 65 */	lis r3, data_8064A78C@ha /* 0x8064A78C@ha */
/* 805AFCC4  83 7E 02 C0 */	lwz r27, 0x2c0(r30)
/* 805AFCC8  38 A3 A7 8C */	addi r5, r3, data_8064A78C@l /* 0x8064A78C@l */
/* 805AFCCC  C0 05 00 00 */	lfs f0, 0(r5)
/* 805AFCD0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AFCD4  83 9E 02 BC */	lwz r28, 0x2bc(r30)
/* 805AFCD8  1C 1B 00 38 */	mulli r0, r27, 0x38
/* 805AFCDC  7C 99 23 78 */	mr r25, r4
/* 805AFCE0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805AFCE4  D0 1E 02 C8 */	stfs f0, 0x2c8(r30)
/* 805AFCE8  3C 84 00 02 */	addis r4, r4, 2
/* 805AFCEC  38 79 1D A8 */	addi r3, r25, 0x1da8
/* 805AFCF0  7C 84 02 14 */	add r4, r4, r0
/* 805AFCF4  3B E0 00 00 */	li r31, 0
/* 805AFCF8  A0 84 61 64 */	lhz r4, 0x6164(r4)
/* 805AFCFC  38 A0 00 04 */	li r5, 4
/* 805AFD00  7C 9A 23 78 */	mr r26, r4
/* 805AFD04  4B DC 60 3D */	bl Actor_info_fgName_search
/* 805AFD08  7C 7D 1B 78 */	mr r29, r3
/* 805AFD0C  7F 43 D3 78 */	mr r3, r26
/* 805AFD10  4B DF 02 D1 */	bl mEvNM_CheckJointEvent
/* 805AFD14  2C 03 00 00 */	cmpwi r3, 0
/* 805AFD18  41 82 00 18 */	beq lbl_805AFD30
/* 805AFD1C  3C 60 80 65 */	lis r3, lit_555@ha /* 0x8064A794@ha */
/* 805AFD20  3B E0 00 01 */	li r31, 1
/* 805AFD24  C0 03 A7 94 */	lfs f0, lit_555@l(r3)  /* 0x8064A794@l */
/* 805AFD28  D0 1E 02 C8 */	stfs f0, 0x2c8(r30)
/* 805AFD2C  48 00 00 E4 */	b lbl_805AFE10
lbl_805AFD30:
/* 805AFD30  88 99 00 E4 */	lbz r4, 0xe4(r25)
/* 805AFD34  7F 63 DB 78 */	mr r3, r27
/* 805AFD38  88 B9 00 E5 */	lbz r5, 0xe5(r25)
/* 805AFD3C  7C 84 07 74 */	extsb r4, r4
/* 805AFD40  7C A5 07 74 */	extsb r5, r5
/* 805AFD44  4B E1 CE 45 */	bl mNpc_CheckNpcExistBlock
/* 805AFD48  2C 03 00 00 */	cmpwi r3, 0
/* 805AFD4C  41 82 00 88 */	beq lbl_805AFDD4
/* 805AFD50  28 1D 00 00 */	cmplwi r29, 0
/* 805AFD54  41 82 00 80 */	beq lbl_805AFDD4
/* 805AFD58  88 1C 08 E8 */	lbz r0, 0x8e8(r28)
/* 805AFD5C  28 00 00 01 */	cmplwi r0, 1
/* 805AFD60  40 82 00 24 */	bne lbl_805AFD84
/* 805AFD64  80 1E 02 C4 */	lwz r0, 0x2c4(r30)
/* 805AFD68  2C 00 00 02 */	cmpwi r0, 2
/* 805AFD6C  40 82 00 A4 */	bne lbl_805AFE10
/* 805AFD70  3C 60 80 65 */	lis r3, lit_556@ha /* 0x8064A798@ha */
/* 805AFD74  3B E0 00 01 */	li r31, 1
/* 805AFD78  C0 03 A7 98 */	lfs f0, lit_556@l(r3)  /* 0x8064A798@l */
/* 805AFD7C  D0 1E 02 C8 */	stfs f0, 0x2c8(r30)
/* 805AFD80  48 00 00 90 */	b lbl_805AFE10
lbl_805AFD84:
/* 805AFD84  7F 65 DB 78 */	mr r5, r27
/* 805AFD88  38 61 00 0C */	addi r3, r1, 0xc
/* 805AFD8C  38 81 00 08 */	addi r4, r1, 8
/* 805AFD90  4B E2 88 69 */	bl mNpcW_GetWalkInfoStatusGoalAnimalIdx
/* 805AFD94  2C 03 00 00 */	cmpwi r3, 0
/* 805AFD98  41 82 00 78 */	beq lbl_805AFE10
/* 805AFD9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805AFDA0  2C 00 00 01 */	cmpwi r0, 1
/* 805AFDA4  40 82 00 6C */	bne lbl_805AFE10
/* 805AFDA8  80 01 00 08 */	lwz r0, 8(r1)
/* 805AFDAC  2C 00 00 03 */	cmpwi r0, 3
/* 805AFDB0  40 82 00 60 */	bne lbl_805AFE10
/* 805AFDB4  88 1C 08 E8 */	lbz r0, 0x8e8(r28)
/* 805AFDB8  28 00 00 00 */	cmplwi r0, 0
/* 805AFDBC  40 82 00 54 */	bne lbl_805AFE10
/* 805AFDC0  3C 60 80 65 */	lis r3, lit_555@ha /* 0x8064A794@ha */
/* 805AFDC4  3B E0 00 01 */	li r31, 1
/* 805AFDC8  C0 03 A7 94 */	lfs f0, lit_555@l(r3)  /* 0x8064A794@l */
/* 805AFDCC  D0 1E 02 C8 */	stfs f0, 0x2c8(r30)
/* 805AFDD0  48 00 00 40 */	b lbl_805AFE10
lbl_805AFDD4:
/* 805AFDD4  88 1C 08 E8 */	lbz r0, 0x8e8(r28)
/* 805AFDD8  28 00 00 01 */	cmplwi r0, 1
/* 805AFDDC  40 82 00 24 */	bne lbl_805AFE00
/* 805AFDE0  80 1E 02 C4 */	lwz r0, 0x2c4(r30)
/* 805AFDE4  2C 00 00 02 */	cmpwi r0, 2
/* 805AFDE8  40 82 00 28 */	bne lbl_805AFE10
/* 805AFDEC  3C 60 80 65 */	lis r3, lit_556@ha /* 0x8064A798@ha */
/* 805AFDF0  3B E0 00 01 */	li r31, 1
/* 805AFDF4  C0 03 A7 98 */	lfs f0, lit_556@l(r3)  /* 0x8064A798@l */
/* 805AFDF8  D0 1E 02 C8 */	stfs f0, 0x2c8(r30)
/* 805AFDFC  48 00 00 14 */	b lbl_805AFE10
lbl_805AFE00:
/* 805AFE00  3C 60 80 65 */	lis r3, lit_555@ha /* 0x8064A794@ha */
/* 805AFE04  3B E0 00 01 */	li r31, 1
/* 805AFE08  C0 03 A7 94 */	lfs f0, lit_555@l(r3)  /* 0x8064A794@l */
/* 805AFE0C  D0 1E 02 C8 */	stfs f0, 0x2c8(r30)
lbl_805AFE10:
/* 805AFE10  7F E3 FB 78 */	mr r3, r31
/* 805AFE14  39 61 00 30 */	addi r11, r1, 0x30
/* 805AFE18  4B AE B0 F9 */	bl func_8009AF10
/* 805AFE1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AFE20  7C 08 03 A6 */	mtlr r0
/* 805AFE24  38 21 00 30 */	addi r1, r1, 0x30
/* 805AFE28  4E 80 00 20 */	blr 
