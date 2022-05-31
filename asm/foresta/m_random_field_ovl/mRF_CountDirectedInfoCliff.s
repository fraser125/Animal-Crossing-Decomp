lbl_8050A50C:
/* 8050A50C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8050A510  7C 08 02 A6 */	mflr r0
/* 8050A514  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050A518  39 61 00 40 */	addi r11, r1, 0x40
/* 8050A51C  4B B9 09 A1 */	bl func_8009AEBC
/* 8050A520  3B A4 00 01 */	addi r29, r4, 1
/* 8050A524  7C 77 1B 78 */	mr r23, r3
/* 8050A528  7C D8 33 78 */	mr r24, r6
/* 8050A52C  7C BC 2B 78 */	mr r28, r5
/* 8050A530  7F A3 EB 78 */	mr r3, r29
/* 8050A534  7C A4 2B 78 */	mr r4, r5
/* 8050A538  4B FF E9 05 */	bl mRF_D2ToD1
/* 8050A53C  3C 80 80 6A */	lis r4, l_cliff_next_direct@ha /* 0x8069E894@ha */
/* 8050A540  7F 77 18 AE */	lbzx r27, r23, r3
/* 8050A544  3B E4 E8 94 */	addi r31, r4, l_cliff_next_direct@l /* 0x8069E894@l */
/* 8050A548  3B 40 00 00 */	li r26, 0
/* 8050A54C  3B 20 00 00 */	li r25, 0
/* 8050A550  48 00 00 74 */	b lbl_8050A5C4
lbl_8050A554:
/* 8050A554  7F 63 DB 78 */	mr r3, r27
/* 8050A558  4B FF E8 2D */	bl mRF_BlockType2CliffIndex
/* 8050A55C  7C 7E 1B 78 */	mr r30, r3
/* 8050A560  7F 63 DB 78 */	mr r3, r27
/* 8050A564  38 80 00 04 */	li r4, 4
/* 8050A568  4B FF E9 55 */	bl mRF_CheckBlockGroup
/* 8050A56C  2C 03 00 00 */	cmpwi r3, 0
/* 8050A570  41 82 00 0C */	beq lbl_8050A57C
/* 8050A574  3B 40 00 01 */	li r26, 1
/* 8050A578  48 00 00 10 */	b lbl_8050A588
lbl_8050A57C:
/* 8050A57C  7C 1A C0 00 */	cmpw r26, r24
/* 8050A580  40 82 00 08 */	bne lbl_8050A588
/* 8050A584  3B 39 00 01 */	addi r25, r25, 1
lbl_8050A588:
/* 8050A588  7C FF F0 AE */	lbzx r7, r31, r30
/* 8050A58C  7F A5 EB 78 */	mr r5, r29
/* 8050A590  7F 86 E3 78 */	mr r6, r28
/* 8050A594  38 61 00 0C */	addi r3, r1, 0xc
/* 8050A598  38 81 00 08 */	addi r4, r1, 8
/* 8050A59C  4B FF E8 AD */	bl mRF_Direct2BlockNo
/* 8050A5A0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8050A5A4  80 81 00 08 */	lwz r4, 8(r1)
/* 8050A5A8  4B FF E8 95 */	bl mRF_D2ToD1
/* 8050A5AC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8050A5B0  80 81 00 08 */	lwz r4, 8(r1)
/* 8050A5B4  7C 7D 1B 78 */	mr r29, r3
/* 8050A5B8  7C 9C 23 78 */	mr r28, r4
/* 8050A5BC  4B FF E8 81 */	bl mRF_D2ToD1
/* 8050A5C0  7F 77 18 AE */	lbzx r27, r23, r3
lbl_8050A5C4:
/* 8050A5C4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8050A5C8  28 00 00 3E */	cmplwi r0, 0x3e
/* 8050A5CC  40 82 FF 88 */	bne lbl_8050A554
/* 8050A5D0  7F 23 CB 78 */	mr r3, r25
/* 8050A5D4  39 61 00 40 */	addi r11, r1, 0x40
/* 8050A5D8  4B B9 09 31 */	bl func_8009AF08
/* 8050A5DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050A5E0  7C 08 03 A6 */	mtlr r0
/* 8050A5E4  38 21 00 40 */	addi r1, r1, 0x40
/* 8050A5E8  4E 80 00 20 */	blr 
