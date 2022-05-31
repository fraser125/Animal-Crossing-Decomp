lbl_804CD4D4:
/* 804CD4D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CD4D8  7C 08 02 A6 */	mflr r0
/* 804CD4DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CD4E0  39 61 00 30 */	addi r11, r1, 0x30
/* 804CD4E4  4B BC D9 E1 */	bl func_8009AEC4
/* 804CD4E8  3C A0 81 1D */	lis r5, data_811D0840@ha /* 0x811D0840@ha */
/* 804CD4EC  7C 7C 1B 78 */	mr r28, r3
/* 804CD4F0  38 A5 08 40 */	addi r5, r5, data_811D0840@l /* 0x811D0840@l */
/* 804CD4F4  3C 60 80 6A */	lis r3, data_8069BC10@ha /* 0x8069BC10@ha */
/* 804CD4F8  7C 9D 23 78 */	mr r29, r4
/* 804CD4FC  57 9A 10 3A */	slwi r26, r28, 2
/* 804CD500  3B E5 24 34 */	addi r31, r5, 0x2434
/* 804CD504  3B C5 01 D4 */	addi r30, r5, 0x1d4
/* 804CD508  3B 63 BC 10 */	addi r27, r3, data_8069BC10@l /* 0x8069BC10@l */
/* 804CD50C  3B 20 00 00 */	li r25, 0
lbl_804CD510:
/* 804CD510  88 1F 00 00 */	lbz r0, 0(r31)
/* 804CD514  28 00 00 00 */	cmplwi r0, 0
/* 804CD518  41 82 00 84 */	beq lbl_804CD59C
/* 804CD51C  A8 1E 00 02 */	lha r0, 2(r30)
/* 804CD520  7C 00 E0 00 */	cmpw r0, r28
/* 804CD524  40 82 00 78 */	bne lbl_804CD59C
/* 804CD528  A0 7E 00 0C */	lhz r3, 0xc(r30)
/* 804CD52C  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804CD530  7C 03 00 40 */	cmplw r3, r0
/* 804CD534  40 82 00 68 */	bne lbl_804CD59C
/* 804CD538  A8 1E 00 04 */	lha r0, 4(r30)
/* 804CD53C  2C 00 FF FF */	cmpwi r0, -1
/* 804CD540  41 82 00 5C */	beq lbl_804CD59C
/* 804CD544  7C 7B D0 2E */	lwzx r3, r27, r26
/* 804CD548  A8 03 00 10 */	lha r0, 0x10(r3)
/* 804CD54C  2C 00 FF FF */	cmpwi r0, -1
/* 804CD550  40 82 00 24 */	bne lbl_804CD574
/* 804CD554  38 00 00 00 */	li r0, 0
/* 804CD558  98 1F 00 00 */	stb r0, 0(r31)
/* 804CD55C  A8 63 00 12 */	lha r3, 0x12(r3)
/* 804CD560  2C 03 00 FF */	cmpwi r3, 0xff
/* 804CD564  41 82 00 38 */	beq lbl_804CD59C
/* 804CD568  7F A4 EB 78 */	mr r4, r29
/* 804CD56C  4B FF FF 69 */	bl eEC_Name2EffectKill
/* 804CD570  48 00 00 2C */	b lbl_804CD59C
lbl_804CD574:
/* 804CD574  2C 00 FF FE */	cmpwi r0, -2
/* 804CD578  41 82 00 24 */	beq lbl_804CD59C
/* 804CD57C  B0 1E 00 00 */	sth r0, 0(r30)
/* 804CD580  38 00 00 02 */	li r0, 2
/* 804CD584  98 1E 00 0F */	stb r0, 0xf(r30)
/* 804CD588  A8 63 00 12 */	lha r3, 0x12(r3)
/* 804CD58C  2C 03 00 FF */	cmpwi r3, 0xff
/* 804CD590  41 82 00 0C */	beq lbl_804CD59C
/* 804CD594  7F A4 EB 78 */	mr r4, r29
/* 804CD598  4B FF FF 3D */	bl eEC_Name2EffectKill
lbl_804CD59C:
/* 804CD59C  3B 39 00 01 */	addi r25, r25, 1
/* 804CD5A0  3B DE 00 58 */	addi r30, r30, 0x58
/* 804CD5A4  2C 19 00 64 */	cmpwi r25, 0x64
/* 804CD5A8  3B FF 00 01 */	addi r31, r31, 1
/* 804CD5AC  41 80 FF 64 */	blt lbl_804CD510
/* 804CD5B0  39 61 00 30 */	addi r11, r1, 0x30
/* 804CD5B4  4B BC D9 5D */	bl func_8009AF10
/* 804CD5B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CD5BC  7C 08 03 A6 */	mtlr r0
/* 804CD5C0  38 21 00 30 */	addi r1, r1, 0x30
/* 804CD5C4  4E 80 00 20 */	blr 
