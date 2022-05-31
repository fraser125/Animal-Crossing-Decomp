lbl_803A7B1C:
/* 803A7B1C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803A7B20  7C 08 02 A6 */	mflr r0
/* 803A7B24  90 01 00 64 */	stw r0, 0x64(r1)
/* 803A7B28  39 61 00 60 */	addi r11, r1, 0x60
/* 803A7B2C  4B CF 33 95 */	bl func_8009AEC0
/* 803A7B30  7C 78 1B 78 */	mr r24, r3
/* 803A7B34  7C 99 23 78 */	mr r25, r4
/* 803A7B38  4B FF E2 09 */	bl mFI_BGDisplayListTop
/* 803A7B3C  80 99 00 00 */	lwz r4, 0(r25)
/* 803A7B40  7C 7D 1B 78 */	mr r29, r3
/* 803A7B44  80 D9 00 04 */	lwz r6, 4(r25)
/* 803A7B48  38 61 00 0C */	addi r3, r1, 0xc
/* 803A7B4C  80 19 00 08 */	lwz r0, 8(r25)
/* 803A7B50  38 A1 00 10 */	addi r5, r1, 0x10
/* 803A7B54  90 81 00 10 */	stw r4, 0x10(r1)
/* 803A7B58  38 81 00 08 */	addi r4, r1, 8
/* 803A7B5C  3B 60 00 00 */	li r27, 0
/* 803A7B60  3B 40 00 00 */	li r26, 0
/* 803A7B64  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803A7B68  3B 20 00 00 */	li r25, 0
/* 803A7B6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 803A7B70  4B FF DB F1 */	bl mFI_Wpos2BlockNum
/* 803A7B74  2C 03 00 00 */	cmpwi r3, 0
/* 803A7B78  40 82 00 0C */	bne lbl_803A7B84
/* 803A7B7C  38 60 00 00 */	li r3, 0
/* 803A7B80  48 00 02 00 */	b lbl_803A7D80
lbl_803A7B84:
/* 803A7B84  38 00 00 04 */	li r0, 4
/* 803A7B88  38 C1 00 2C */	addi r6, r1, 0x2c
/* 803A7B8C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 803A7B90  38 60 00 00 */	li r3, 0
/* 803A7B94  38 80 00 00 */	li r4, 0
/* 803A7B98  7C 09 03 A6 */	mtctr r0
lbl_803A7B9C:
/* 803A7B9C  7C F8 22 14 */	add r7, r24, r4
/* 803A7BA0  38 84 00 10 */	addi r4, r4, 0x10
/* 803A7BA4  88 07 00 04 */	lbz r0, 4(r7)
/* 803A7BA8  7C 00 07 74 */	extsb r0, r0
/* 803A7BAC  7C 06 19 2E */	stwx r0, r6, r3
/* 803A7BB0  88 07 00 05 */	lbz r0, 5(r7)
/* 803A7BB4  7C 00 07 74 */	extsb r0, r0
/* 803A7BB8  7C 05 19 2E */	stwx r0, r5, r3
/* 803A7BBC  38 63 00 04 */	addi r3, r3, 4
/* 803A7BC0  42 00 FF DC */	bdnz lbl_803A7B9C
/* 803A7BC4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A7BC8  3B 80 00 00 */	li r28, 0
/* 803A7BCC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A7BD0  3F C3 00 03 */	addis r30, r3, 3
lbl_803A7BD4:
/* 803A7BD4  7F 83 E3 78 */	mr r3, r28
/* 803A7BD8  4B FF E3 6D */	bl mFI_CheckFinishBgDma
/* 803A7BDC  2C 03 00 01 */	cmpwi r3, 1
/* 803A7BE0  40 82 00 98 */	bne lbl_803A7C78
/* 803A7BE4  80 1D 00 04 */	lwz r0, 4(r29)
/* 803A7BE8  80 A1 00 08 */	lwz r5, 8(r1)
/* 803A7BEC  7C 00 28 00 */	cmpw r0, r5
/* 803A7BF0  40 82 00 88 */	bne lbl_803A7C78
/* 803A7BF4  3C 80 80 65 */	lis r4, check_x@ha /* 0x80653E6C@ha */
/* 803A7BF8  3C 60 80 65 */	lis r3, table_no@ha /* 0x80653E60@ha */
/* 803A7BFC  38 C3 3E 60 */	addi r6, r3, table_no@l /* 0x80653E60@l */
/* 803A7C00  38 00 00 03 */	li r0, 3
/* 803A7C04  81 01 00 0C */	lwz r8, 0xc(r1)
/* 803A7C08  38 E4 3E 6C */	addi r7, r4, check_x@l /* 0x80653E6C@l */
/* 803A7C0C  38 60 00 00 */	li r3, 0
/* 803A7C10  7C 09 03 A6 */	mtctr r0
lbl_803A7C14:
/* 803A7C14  7C 87 18 2E */	lwzx r4, r7, r3
/* 803A7C18  80 1D 00 00 */	lwz r0, 0(r29)
/* 803A7C1C  7C 88 22 14 */	add r4, r8, r4
/* 803A7C20  7F E6 18 2E */	lwzx r31, r6, r3
/* 803A7C24  7C 00 20 00 */	cmpw r0, r4
/* 803A7C28  40 82 00 48 */	bne lbl_803A7C70
/* 803A7C2C  57 E3 20 36 */	slwi r3, r31, 4
/* 803A7C30  38 63 00 04 */	addi r3, r3, 4
/* 803A7C34  7C 78 1A 14 */	add r3, r24, r3
/* 803A7C38  4B FF FE 45 */	bl mFI_SetBlockTable
/* 803A7C3C  88 1E 85 90 */	lbz r0, -0x7a70(r30)
/* 803A7C40  38 80 00 01 */	li r4, 1
/* 803A7C44  7C 83 E0 30 */	slw r3, r4, r28
/* 803A7C48  3B 7B 00 01 */	addi r27, r27, 1
/* 803A7C4C  7C 00 E6 30 */	sraw r0, r0, r28
/* 803A7C50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803A7C54  7F 43 1B 78 */	or r3, r26, r3
/* 803A7C58  54 7A 06 3E */	clrlwi r26, r3, 0x18
/* 803A7C5C  41 82 00 1C */	beq lbl_803A7C78
/* 803A7C60  7C 80 F8 30 */	slw r0, r4, r31
/* 803A7C64  7F 20 03 78 */	or r0, r25, r0
/* 803A7C68  54 19 06 3E */	clrlwi r25, r0, 0x18
/* 803A7C6C  48 00 00 0C */	b lbl_803A7C78
lbl_803A7C70:
/* 803A7C70  38 63 00 04 */	addi r3, r3, 4
/* 803A7C74  42 00 FF A0 */	bdnz lbl_803A7C14
lbl_803A7C78:
/* 803A7C78  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 803A7C7C  28 00 00 02 */	cmplwi r0, 2
/* 803A7C80  40 80 00 14 */	bge lbl_803A7C94
/* 803A7C84  3B 9C 00 01 */	addi r28, r28, 1
/* 803A7C88  3B BD 00 0C */	addi r29, r29, 0xc
/* 803A7C8C  2C 1C 00 04 */	cmpwi r28, 4
/* 803A7C90  41 80 FF 44 */	blt lbl_803A7BD4
lbl_803A7C94:
/* 803A7C94  4B FF E0 AD */	bl mFI_BGDisplayListTop
/* 803A7C98  57 5F 06 3E */	clrlwi r31, r26, 0x18
/* 803A7C9C  7C 7D 1B 78 */	mr r29, r3
/* 803A7CA0  3B 80 00 00 */	li r28, 0
lbl_803A7CA4:
/* 803A7CA4  7F E0 E6 30 */	sraw r0, r31, r28
/* 803A7CA8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803A7CAC  40 82 00 64 */	bne lbl_803A7D10
/* 803A7CB0  7F 83 E3 78 */	mr r3, r28
/* 803A7CB4  4B FF E2 91 */	bl mFI_CheckFinishBgDma
/* 803A7CB8  2C 03 00 01 */	cmpwi r3, 1
/* 803A7CBC  40 82 00 54 */	bne lbl_803A7D10
/* 803A7CC0  80 9D 00 00 */	lwz r4, 0(r29)
/* 803A7CC4  2C 04 00 FF */	cmpwi r4, 0xff
/* 803A7CC8  41 82 00 48 */	beq lbl_803A7D10
/* 803A7CCC  80 BD 00 04 */	lwz r5, 4(r29)
/* 803A7CD0  2C 05 00 FF */	cmpwi r5, 0xff
/* 803A7CD4  41 82 00 3C */	beq lbl_803A7D10
/* 803A7CD8  57 63 25 36 */	rlwinm r3, r27, 4, 0x14, 0x1b
/* 803A7CDC  38 63 00 04 */	addi r3, r3, 4
/* 803A7CE0  7C 78 1A 14 */	add r3, r24, r3
/* 803A7CE4  4B FF FD 99 */	bl mFI_SetBlockTable
/* 803A7CE8  88 1E 85 90 */	lbz r0, -0x7a70(r30)
/* 803A7CEC  7C 00 E6 30 */	sraw r0, r0, r28
/* 803A7CF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803A7CF4  41 82 00 18 */	beq lbl_803A7D0C
/* 803A7CF8  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 803A7CFC  38 60 00 01 */	li r3, 1
/* 803A7D00  7C 60 00 30 */	slw r0, r3, r0
/* 803A7D04  7F 20 03 78 */	or r0, r25, r0
/* 803A7D08  54 19 06 3E */	clrlwi r25, r0, 0x18
lbl_803A7D0C:
/* 803A7D0C  3B 7B 00 01 */	addi r27, r27, 1
lbl_803A7D10:
/* 803A7D10  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 803A7D14  28 00 00 04 */	cmplwi r0, 4
/* 803A7D18  40 80 00 14 */	bge lbl_803A7D2C
/* 803A7D1C  3B 9C 00 01 */	addi r28, r28, 1
/* 803A7D20  3B BD 00 0C */	addi r29, r29, 0xc
/* 803A7D24  2C 1C 00 04 */	cmpwi r28, 4
/* 803A7D28  41 80 FF 7C */	blt lbl_803A7CA4
lbl_803A7D2C:
/* 803A7D2C  57 7A 06 3E */	clrlwi r26, r27, 0x18
/* 803A7D30  9B 3E 85 90 */	stb r25, -0x7a70(r30)
/* 803A7D34  20 1A 00 04 */	subfic r0, r26, 4
/* 803A7D38  38 80 FF FF */	li r4, -1
/* 803A7D3C  57 63 25 36 */	rlwinm r3, r27, 4, 0x14, 0x1b
/* 803A7D40  7C 09 03 A6 */	mtctr r0
/* 803A7D44  2C 1A 00 04 */	cmpwi r26, 4
/* 803A7D48  40 80 00 18 */	bge lbl_803A7D60
lbl_803A7D4C:
/* 803A7D4C  7C B8 1A 14 */	add r5, r24, r3
/* 803A7D50  38 63 00 10 */	addi r3, r3, 0x10
/* 803A7D54  98 85 00 04 */	stb r4, 4(r5)
/* 803A7D58  98 85 00 05 */	stb r4, 5(r5)
/* 803A7D5C  42 00 FF F0 */	bdnz lbl_803A7D4C
lbl_803A7D60:
/* 803A7D60  80 F8 00 00 */	lwz r7, 0(r24)
/* 803A7D64  7F 44 D3 78 */	mr r4, r26
/* 803A7D68  38 78 00 04 */	addi r3, r24, 4
/* 803A7D6C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 803A7D70  38 C1 00 1C */	addi r6, r1, 0x1c
/* 803A7D74  4B FF FC 2D */	bl mFI_MakeOldItemTableIdxTable
/* 803A7D78  93 58 00 00 */	stw r26, 0(r24)
/* 803A7D7C  38 60 00 01 */	li r3, 1
lbl_803A7D80:
/* 803A7D80  39 61 00 60 */	addi r11, r1, 0x60
/* 803A7D84  4B CF 31 89 */	bl func_8009AF0C
/* 803A7D88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803A7D8C  7C 08 03 A6 */	mtlr r0
/* 803A7D90  38 21 00 60 */	addi r1, r1, 0x60
/* 803A7D94  4E 80 00 20 */	blr 
