lbl_80492AB4:
/* 80492AB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80492AB8  7C 08 02 A6 */	mflr r0
/* 80492ABC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80492AC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80492AC4  4B C0 84 05 */	bl func_8009AEC8
/* 80492AC8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80492ACC  7C 9D 23 78 */	mr r29, r4
/* 80492AD0  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 80492AD4  7C 7C 1B 78 */	mr r28, r3
/* 80492AD8  3F 44 00 02 */	addis r26, r4, 2
/* 80492ADC  7F A6 EB 78 */	mr r6, r29
/* 80492AE0  80 7A 61 3C */	lwz r3, 0x613c(r26)
/* 80492AE4  3B C0 FF FF */	li r30, -1
/* 80492AE8  38 80 00 01 */	li r4, 1
/* 80492AEC  38 A0 00 00 */	li r5, 0
/* 80492AF0  3B E3 00 68 */	addi r31, r3, 0x68
/* 80492AF4  4B F4 DF 31 */	bl mPr_GetPossessionItemSumFGTypeWithCond_cancel
/* 80492AF8  7C 7B 1B 78 */	mr r27, r3
/* 80492AFC  80 7A 61 3C */	lwz r3, 0x613c(r26)
/* 80492B00  7F A6 EB 78 */	mr r6, r29
/* 80492B04  38 80 00 03 */	li r4, 3
/* 80492B08  38 A0 00 00 */	li r5, 0
/* 80492B0C  4B F4 DF 19 */	bl mPr_GetPossessionItemSumFGTypeWithCond_cancel
/* 80492B10  7F 7B 1A 14 */	add r27, r27, r3
/* 80492B14  80 7A 61 3C */	lwz r3, 0x613c(r26)
/* 80492B18  7F A6 EB 78 */	mr r6, r29
/* 80492B1C  38 80 00 06 */	li r4, 6
/* 80492B20  38 A0 00 00 */	li r5, 0
/* 80492B24  4B F4 DF 69 */	bl mPr_GetPossessionItemSumItemCategoryWithCond_cancel
/* 80492B28  7F 7B 1A 14 */	add r27, r27, r3
/* 80492B2C  80 7A 61 3C */	lwz r3, 0x613c(r26)
/* 80492B30  7F A6 EB 78 */	mr r6, r29
/* 80492B34  38 80 00 07 */	li r4, 7
/* 80492B38  38 A0 00 00 */	li r5, 0
/* 80492B3C  4B F4 DF 51 */	bl mPr_GetPossessionItemSumItemCategoryWithCond_cancel
/* 80492B40  7F 7B 1A 15 */	add. r27, r27, r3
/* 80492B44  41 82 00 C8 */	beq lbl_80492C0C
/* 80492B48  28 1B 00 0F */	cmplwi r27, 0xf
/* 80492B4C  41 81 00 C0 */	bgt lbl_80492C0C
/* 80492B50  4B BC A1 A5 */	bl fqrand
/* 80492B54  3C 60 43 30 */	lis r3, 0x4330
/* 80492B58  3C 80 80 64 */	lis r4, lit_902@ha /* 0x80644C7C@ha */
/* 80492B5C  90 61 00 08 */	stw r3, 8(r1)
/* 80492B60  38 00 00 0F */	li r0, 0xf
/* 80492B64  C8 44 4C 7C */	lfd f2, lit_902@l(r4)  /* 0x80644C7C@l */
/* 80492B68  38 E0 00 00 */	li r7, 0
/* 80492B6C  93 61 00 0C */	stw r27, 0xc(r1)
/* 80492B70  38 60 00 00 */	li r3, 0
/* 80492B74  80 9A 61 3C */	lwz r4, 0x613c(r26)
/* 80492B78  C8 01 00 08 */	lfd f0, 8(r1)
/* 80492B7C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80492B80  EC 00 00 72 */	fmuls f0, f0, f1
/* 80492B84  FC 00 00 1E */	fctiwz f0, f0
/* 80492B88  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80492B8C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80492B90  7C 09 03 A6 */	mtctr r0
lbl_80492B94:
/* 80492B94  80 04 00 88 */	lwz r0, 0x88(r4)
/* 80492B98  7C 00 1C 30 */	srw r0, r0, r3
/* 80492B9C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80492BA0  40 82 00 5C */	bne lbl_80492BFC
/* 80492BA4  A0 BF 00 00 */	lhz r5, 0(r31)
/* 80492BA8  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 80492BAC  7C 05 00 40 */	cmplw r5, r0
/* 80492BB0  41 82 00 4C */	beq lbl_80492BFC
/* 80492BB4  54 A0 A7 3E */	rlwinm r0, r5, 0x14, 0x1c, 0x1f
/* 80492BB8  2C 00 00 01 */	cmpwi r0, 1
/* 80492BBC  41 82 00 28 */	beq lbl_80492BE4
/* 80492BC0  2C 00 00 03 */	cmpwi r0, 3
/* 80492BC4  41 82 00 20 */	beq lbl_80492BE4
/* 80492BC8  2C 00 00 02 */	cmpwi r0, 2
/* 80492BCC  40 82 00 30 */	bne lbl_80492BFC
/* 80492BD0  54 A0 C7 3E */	rlwinm r0, r5, 0x18, 0x1c, 0x1f
/* 80492BD4  2C 00 00 06 */	cmpwi r0, 6
/* 80492BD8  41 82 00 0C */	beq lbl_80492BE4
/* 80492BDC  2C 00 00 07 */	cmpwi r0, 7
/* 80492BE0  40 82 00 1C */	bne lbl_80492BFC
lbl_80492BE4:
/* 80492BE4  2C 06 00 00 */	cmpwi r6, 0
/* 80492BE8  41 81 00 10 */	bgt lbl_80492BF8
/* 80492BEC  B0 BC 00 00 */	sth r5, 0(r28)
/* 80492BF0  7C FE 3B 78 */	mr r30, r7
/* 80492BF4  48 00 00 18 */	b lbl_80492C0C
lbl_80492BF8:
/* 80492BF8  38 C6 FF FF */	addi r6, r6, -1
lbl_80492BFC:
/* 80492BFC  3B FF 00 02 */	addi r31, r31, 2
/* 80492C00  38 E7 00 01 */	addi r7, r7, 1
/* 80492C04  38 63 00 02 */	addi r3, r3, 2
/* 80492C08  42 00 FF 8C */	bdnz lbl_80492B94
lbl_80492C0C:
/* 80492C0C  7F C3 F3 78 */	mr r3, r30
/* 80492C10  39 61 00 30 */	addi r11, r1, 0x30
/* 80492C14  4B C0 83 01 */	bl func_8009AF14
/* 80492C18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80492C1C  7C 08 03 A6 */	mtlr r0
/* 80492C20  38 21 00 30 */	addi r1, r1, 0x30
/* 80492C24  4E 80 00 20 */	blr 
