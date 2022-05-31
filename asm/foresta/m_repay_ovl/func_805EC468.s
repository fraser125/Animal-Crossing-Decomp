lbl_805EC468:
/* 805EC468  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805EC46C  7C 08 02 A6 */	mflr r0
/* 805EC470  90 01 00 34 */	stw r0, 0x34(r1)
/* 805EC474  39 61 00 30 */	addi r11, r1, 0x30
/* 805EC478  4B AA EA 41 */	bl func_8009AEB8
/* 805EC47C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805EC480  7C 78 1B 78 */	mr r24, r3
/* 805EC484  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805EC488  3C A0 80 6D */	lis r5, data_806CE3E0@ha /* 0x806CE3E0@ha */
/* 805EC48C  3F E3 00 02 */	addis r31, r3, 2
/* 805EC490  3C 80 80 6D */	lis r4, mRP_money_amount@ha /* 0x806CE3E8@ha */
/* 805EC494  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805EC498  38 A5 E3 E0 */	addi r5, r5, data_806CE3E0@l /* 0x806CE3E0@l */
/* 805EC49C  38 04 E3 E8 */	addi r0, r4, mRP_money_amount@l /* 0x806CE3E8@l */
/* 805EC4A0  80 98 00 08 */	lwz r4, 8(r24)
/* 805EC4A4  83 83 00 8C */	lwz r28, 0x8c(r3)
/* 805EC4A8  7C BE 2B 78 */	mr r30, r5
/* 805EC4AC  7C 1D 03 78 */	mr r29, r0
/* 805EC4B0  3B 20 00 00 */	li r25, 0
/* 805EC4B4  7C 1C 20 40 */	cmplw r28, r4
/* 805EC4B8  41 80 00 0C */	blt lbl_805EC4C4
/* 805EC4BC  7F 24 E0 50 */	subf r25, r4, r28
/* 805EC4C0  48 00 00 90 */	b lbl_805EC550
lbl_805EC4C4:
/* 805EC4C4  3B 40 00 00 */	li r26, 0
lbl_805EC4C8:
/* 805EC4C8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805EC4CC  3B 60 00 00 */	li r27, 0
/* 805EC4D0  3A E0 00 00 */	li r23, 0
/* 805EC4D4  3A C3 00 68 */	addi r22, r3, 0x68
lbl_805EC4D8:
/* 805EC4D8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805EC4DC  80 03 00 88 */	lwz r0, 0x88(r3)
/* 805EC4E0  7C 00 BC 30 */	srw r0, r0, r23
/* 805EC4E4  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 805EC4E8  40 82 00 40 */	bne lbl_805EC528
/* 805EC4EC  A0 96 00 00 */	lhz r4, 0(r22)
/* 805EC4F0  A0 1E 00 00 */	lhz r0, 0(r30)
/* 805EC4F4  7C 04 00 40 */	cmplw r4, r0
/* 805EC4F8  40 82 00 30 */	bne lbl_805EC528
/* 805EC4FC  80 1D 00 00 */	lwz r0, 0(r29)
/* 805EC500  7F 64 DB 78 */	mr r4, r27
/* 805EC504  38 A0 00 00 */	li r5, 0
/* 805EC508  38 C0 00 00 */	li r6, 0
/* 805EC50C  7F 9C 02 14 */	add r28, r28, r0
/* 805EC510  4B DF 49 19 */	bl mPr_SetPossessionItem
/* 805EC514  80 18 00 08 */	lwz r0, 8(r24)
/* 805EC518  7C 1C 00 40 */	cmplw r28, r0
/* 805EC51C  41 80 00 0C */	blt lbl_805EC528
/* 805EC520  7C 60 E0 50 */	subf r3, r0, r28
/* 805EC524  48 00 00 30 */	b lbl_805EC554
lbl_805EC528:
/* 805EC528  3B 7B 00 01 */	addi r27, r27, 1
/* 805EC52C  3A F7 00 02 */	addi r23, r23, 2
/* 805EC530  2C 1B 00 0F */	cmpwi r27, 0xf
/* 805EC534  3A D6 00 02 */	addi r22, r22, 2
/* 805EC538  41 80 FF A0 */	blt lbl_805EC4D8
/* 805EC53C  3B 5A 00 01 */	addi r26, r26, 1
/* 805EC540  3B BD 00 04 */	addi r29, r29, 4
/* 805EC544  2C 1A 00 04 */	cmpwi r26, 4
/* 805EC548  3B DE 00 02 */	addi r30, r30, 2
/* 805EC54C  41 80 FF 7C */	blt lbl_805EC4C8
lbl_805EC550:
/* 805EC550  7F 23 CB 78 */	mr r3, r25
lbl_805EC554:
/* 805EC554  39 61 00 30 */	addi r11, r1, 0x30
/* 805EC558  4B AA E9 AD */	bl func_8009AF04
/* 805EC55C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805EC560  7C 08 03 A6 */	mtlr r0
/* 805EC564  38 21 00 30 */	addi r1, r1, 0x30
/* 805EC568  4E 80 00 20 */	blr 
