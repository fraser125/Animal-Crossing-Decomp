lbl_804C3A10:
/* 804C3A10  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804C3A14  7C 08 02 A6 */	mflr r0
/* 804C3A18  90 01 00 94 */	stw r0, 0x94(r1)
/* 804C3A1C  39 61 00 90 */	addi r11, r1, 0x90
/* 804C3A20  4B BD 74 A1 */	bl func_8009AEC0
/* 804C3A24  7C 9E 23 78 */	mr r30, r4
/* 804C3A28  38 00 00 04 */	li r0, 4
/* 804C3A2C  80 84 00 00 */	lwz r4, 0(r4)
/* 804C3A30  7C 7D 1B 78 */	mr r29, r3
/* 804C3A34  39 40 00 00 */	li r10, 0
/* 804C3A38  38 60 00 00 */	li r3, 0
/* 804C3A3C  90 81 00 24 */	stw r4, 0x24(r1)
/* 804C3A40  38 80 00 00 */	li r4, 0
/* 804C3A44  38 C0 FF FF */	li r6, -1
/* 804C3A48  7C 09 03 A6 */	mtctr r0
lbl_804C3A4C:
/* 804C3A4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C3A50  7C 0A 00 00 */	cmpw r10, r0
/* 804C3A54  40 80 00 2C */	bge lbl_804C3A80
/* 804C3A58  7D 1E 22 14 */	add r8, r30, r4
/* 804C3A5C  39 21 00 24 */	addi r9, r1, 0x24
/* 804C3A60  88 E8 00 04 */	lbz r7, 4(r8)
/* 804C3A64  7D 29 1A 14 */	add r9, r9, r3
/* 804C3A68  88 08 00 05 */	lbz r0, 5(r8)
/* 804C3A6C  7C E7 07 74 */	extsb r7, r7
/* 804C3A70  90 E9 00 04 */	stw r7, 4(r9)
/* 804C3A74  7C 00 07 74 */	extsb r0, r0
/* 804C3A78  90 09 00 08 */	stw r0, 8(r9)
/* 804C3A7C  48 00 00 14 */	b lbl_804C3A90
lbl_804C3A80:
/* 804C3A80  38 E1 00 24 */	addi r7, r1, 0x24
/* 804C3A84  7C E7 1A 14 */	add r7, r7, r3
/* 804C3A88  90 C7 00 04 */	stw r6, 4(r7)
/* 804C3A8C  90 C7 00 08 */	stw r6, 8(r7)
lbl_804C3A90:
/* 804C3A90  39 4A 00 01 */	addi r10, r10, 1
/* 804C3A94  38 63 00 08 */	addi r3, r3, 8
/* 804C3A98  38 84 00 10 */	addi r4, r4, 0x10
/* 804C3A9C  42 00 FF B0 */	bdnz lbl_804C3A4C
/* 804C3AA0  80 85 00 00 */	lwz r4, 0(r5)
/* 804C3AA4  3C 60 80 6A */	lis r3, lit_2298@ha /* 0x80698BCC@ha */
/* 804C3AA8  81 05 00 04 */	lwz r8, 4(r5)
/* 804C3AAC  38 03 8B CC */	addi r0, r3, lit_2298@l /* 0x80698BCC@l */
/* 804C3AB0  80 E5 00 08 */	lwz r7, 8(r5)
/* 804C3AB4  7F C3 F3 78 */	mr r3, r30
/* 804C3AB8  90 81 00 08 */	stw r4, 8(r1)
/* 804C3ABC  7C 05 03 78 */	mr r5, r0
/* 804C3AC0  38 81 00 08 */	addi r4, r1, 8
/* 804C3AC4  38 C0 12 F8 */	li r6, 0x12f8
/* 804C3AC8  91 01 00 0C */	stw r8, 0xc(r1)
/* 804C3ACC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804C3AD0  4B EE 42 C9 */	bl mFI_GetItemTable
/* 804C3AD4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804C3AD8  80 7E 00 00 */	lwz r3, 0(r30)
/* 804C3ADC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804C3AE0  38 00 00 04 */	li r0, 4
/* 804C3AE4  3C 84 00 03 */	addis r4, r4, 3
/* 804C3AE8  90 61 00 48 */	stw r3, 0x48(r1)
/* 804C3AEC  8B E4 85 90 */	lbz r31, -0x7a70(r4)
/* 804C3AF0  39 20 00 00 */	li r9, 0
/* 804C3AF4  38 60 00 00 */	li r3, 0
/* 804C3AF8  38 80 00 00 */	li r4, 0
/* 804C3AFC  38 A0 FF FF */	li r5, -1
/* 804C3B00  7C 09 03 A6 */	mtctr r0
lbl_804C3B04:
/* 804C3B04  80 01 00 48 */	lwz r0, 0x48(r1)
/* 804C3B08  7C 09 00 00 */	cmpw r9, r0
/* 804C3B0C  40 80 00 2C */	bge lbl_804C3B38
/* 804C3B10  7C FE 22 14 */	add r7, r30, r4
/* 804C3B14  39 01 00 24 */	addi r8, r1, 0x24
/* 804C3B18  88 C7 00 04 */	lbz r6, 4(r7)
/* 804C3B1C  7D 08 1A 14 */	add r8, r8, r3
/* 804C3B20  88 07 00 05 */	lbz r0, 5(r7)
/* 804C3B24  7C C6 07 74 */	extsb r6, r6
/* 804C3B28  90 C8 00 28 */	stw r6, 0x28(r8)
/* 804C3B2C  7C 00 07 74 */	extsb r0, r0
/* 804C3B30  90 08 00 2C */	stw r0, 0x2c(r8)
/* 804C3B34  48 00 00 14 */	b lbl_804C3B48
lbl_804C3B38:
/* 804C3B38  38 C1 00 24 */	addi r6, r1, 0x24
/* 804C3B3C  7C C6 1A 14 */	add r6, r6, r3
/* 804C3B40  90 A6 00 28 */	stw r5, 0x28(r6)
/* 804C3B44  90 A6 00 2C */	stw r5, 0x2c(r6)
lbl_804C3B48:
/* 804C3B48  39 29 00 01 */	addi r9, r9, 1
/* 804C3B4C  38 63 00 08 */	addi r3, r3, 8
/* 804C3B50  38 84 00 10 */	addi r4, r4, 0x10
/* 804C3B54  42 00 FF B0 */	bdnz lbl_804C3B04
/* 804C3B58  38 00 00 04 */	li r0, 4
/* 804C3B5C  38 81 00 14 */	addi r4, r1, 0x14
/* 804C3B60  39 20 00 00 */	li r9, 0
/* 804C3B64  38 A0 00 00 */	li r5, 0
/* 804C3B68  38 60 00 00 */	li r3, 0
/* 804C3B6C  7C 09 03 A6 */	mtctr r0
lbl_804C3B70:
/* 804C3B70  7C A4 19 2E */	stwx r5, r4, r3
/* 804C3B74  38 A5 00 01 */	addi r5, r5, 1
/* 804C3B78  38 63 00 04 */	addi r3, r3, 4
/* 804C3B7C  42 00 FF F4 */	bdnz lbl_804C3B70
/* 804C3B80  39 00 00 00 */	li r8, 0
/* 804C3B84  38 60 00 00 */	li r3, 0
lbl_804C3B88:
/* 804C3B88  38 C1 00 24 */	addi r6, r1, 0x24
/* 804C3B8C  7C C6 1A 14 */	add r6, r6, r3
/* 804C3B90  80 06 00 04 */	lwz r0, 4(r6)
/* 804C3B94  2C 00 FF FF */	cmpwi r0, -1
/* 804C3B98  41 82 00 6C */	beq lbl_804C3C04
/* 804C3B9C  38 00 00 04 */	li r0, 4
/* 804C3BA0  39 40 00 00 */	li r10, 0
/* 804C3BA4  38 80 00 00 */	li r4, 0
/* 804C3BA8  7C 09 03 A6 */	mtctr r0
lbl_804C3BAC:
/* 804C3BAC  7C 08 50 00 */	cmpw r8, r10
/* 804C3BB0  41 82 00 48 */	beq lbl_804C3BF8
/* 804C3BB4  38 E1 00 24 */	addi r7, r1, 0x24
/* 804C3BB8  7C E7 22 14 */	add r7, r7, r4
/* 804C3BBC  80 A7 00 28 */	lwz r5, 0x28(r7)
/* 804C3BC0  2C 05 FF FF */	cmpwi r5, -1
/* 804C3BC4  41 82 00 34 */	beq lbl_804C3BF8
/* 804C3BC8  80 06 00 04 */	lwz r0, 4(r6)
/* 804C3BCC  7C 00 28 00 */	cmpw r0, r5
/* 804C3BD0  40 82 00 28 */	bne lbl_804C3BF8
/* 804C3BD4  80 A6 00 08 */	lwz r5, 8(r6)
/* 804C3BD8  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 804C3BDC  7C 05 00 00 */	cmpw r5, r0
/* 804C3BE0  40 82 00 18 */	bne lbl_804C3BF8
/* 804C3BE4  55 40 10 3A */	slwi r0, r10, 2
/* 804C3BE8  38 81 00 14 */	addi r4, r1, 0x14
/* 804C3BEC  7D 04 01 2E */	stwx r8, r4, r0
/* 804C3BF0  39 20 00 01 */	li r9, 1
/* 804C3BF4  48 00 00 10 */	b lbl_804C3C04
lbl_804C3BF8:
/* 804C3BF8  39 4A 00 01 */	addi r10, r10, 1
/* 804C3BFC  38 84 00 08 */	addi r4, r4, 8
/* 804C3C00  42 00 FF AC */	bdnz lbl_804C3BAC
lbl_804C3C04:
/* 804C3C04  39 08 00 01 */	addi r8, r8, 1
/* 804C3C08  38 63 00 08 */	addi r3, r3, 8
/* 804C3C0C  2C 08 00 04 */	cmpwi r8, 4
/* 804C3C10  41 80 FF 78 */	blt lbl_804C3B88
/* 804C3C14  2C 09 00 00 */	cmpwi r9, 0
/* 804C3C18  41 82 00 78 */	beq lbl_804C3C90
/* 804C3C1C  3C 60 81 1D */	lis r3, tmp_info_tbl@ha /* 0x811CFFB0@ha */
/* 804C3C20  3B 41 00 14 */	addi r26, r1, 0x14
/* 804C3C24  3B 23 FF B0 */	addi r25, r3, tmp_info_tbl@l /* 0x811CFFB0@l */
/* 804C3C28  3B 00 00 00 */	li r24, 0
/* 804C3C2C  3B 80 00 00 */	li r28, 0
/* 804C3C30  3B 60 00 00 */	li r27, 0
lbl_804C3C34:
/* 804C3C34  7C 1A E0 2E */	lwzx r0, r26, r28
/* 804C3C38  7C 79 DA 14 */	add r3, r25, r27
/* 804C3C3C  54 04 40 2E */	slwi r4, r0, 8
/* 804C3C40  38 84 00 04 */	addi r4, r4, 4
/* 804C3C44  7C 9D 22 14 */	add r4, r29, r4
/* 804C3C48  4B FF FC F9 */	bl bIT_common_info_tbl_copy
/* 804C3C4C  3B 18 00 01 */	addi r24, r24, 1
/* 804C3C50  3B 7B 01 00 */	addi r27, r27, 0x100
/* 804C3C54  2C 18 00 04 */	cmpwi r24, 4
/* 804C3C58  3B 9C 00 04 */	addi r28, r28, 4
/* 804C3C5C  41 80 FF D8 */	blt lbl_804C3C34
/* 804C3C60  3C 60 81 1D */	lis r3, tmp_info_tbl@ha /* 0x811CFFB0@ha */
/* 804C3C64  3B 20 00 00 */	li r25, 0
/* 804C3C68  3B 63 FF B0 */	addi r27, r3, tmp_info_tbl@l /* 0x811CFFB0@l */
/* 804C3C6C  3B 80 00 00 */	li r28, 0
lbl_804C3C70:
/* 804C3C70  38 7C 00 04 */	addi r3, r28, 4
/* 804C3C74  7C 9B E2 14 */	add r4, r27, r28
/* 804C3C78  7C 7D 1A 14 */	add r3, r29, r3
/* 804C3C7C  4B FF FC C5 */	bl bIT_common_info_tbl_copy
/* 804C3C80  3B 39 00 01 */	addi r25, r25, 1
/* 804C3C84  3B 9C 01 00 */	addi r28, r28, 0x100
/* 804C3C88  2C 19 00 04 */	cmpwi r25, 4
/* 804C3C8C  41 80 FF E4 */	blt lbl_804C3C70
lbl_804C3C90:
/* 804C3C90  3B 1E 00 04 */	addi r24, r30, 4
/* 804C3C94  3B BD 00 04 */	addi r29, r29, 4
/* 804C3C98  3B 20 00 00 */	li r25, 0
/* 804C3C9C  3B 60 00 01 */	li r27, 1
/* 804C3CA0  48 00 00 54 */	b lbl_804C3CF4
lbl_804C3CA4:
/* 804C3CA4  7F 60 C8 30 */	slw r0, r27, r25
/* 804C3CA8  7F E0 00 39 */	and. r0, r31, r0
/* 804C3CAC  41 82 00 3C */	beq lbl_804C3CE8
/* 804C3CB0  8B 58 00 00 */	lbz r26, 0(r24)
/* 804C3CB4  7F A5 EB 78 */	mr r5, r29
/* 804C3CB8  8B 98 00 01 */	lbz r28, 1(r24)
/* 804C3CBC  7F 5A 07 74 */	extsb r26, r26
/* 804C3CC0  7F 9C 07 74 */	extsb r28, r28
/* 804C3CC4  7F 43 D3 78 */	mr r3, r26
/* 804C3CC8  7F 84 E3 78 */	mr r4, r28
/* 804C3CCC  4B FF FC 95 */	bl bIT_common_clear_treeatr
/* 804C3CD0  7F 43 D3 78 */	mr r3, r26
/* 804C3CD4  7F 84 E3 78 */	mr r4, r28
/* 804C3CD8  4B EE 59 49 */	bl mFI_ClearHoleBlock
/* 804C3CDC  7F 43 D3 78 */	mr r3, r26
/* 804C3CE0  7F 84 E3 78 */	mr r4, r28
/* 804C3CE4  4B EE 59 61 */	bl mFI_ClearBeecomb
lbl_804C3CE8:
/* 804C3CE8  3B 18 00 10 */	addi r24, r24, 0x10
/* 804C3CEC  3B BD 01 00 */	addi r29, r29, 0x100
/* 804C3CF0  3B 39 00 01 */	addi r25, r25, 1
lbl_804C3CF4:
/* 804C3CF4  80 1E 00 00 */	lwz r0, 0(r30)
/* 804C3CF8  7C 19 00 00 */	cmpw r25, r0
/* 804C3CFC  41 80 FF A8 */	blt lbl_804C3CA4
/* 804C3D00  39 61 00 90 */	addi r11, r1, 0x90
/* 804C3D04  4B BD 72 09 */	bl func_8009AF0C
/* 804C3D08  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804C3D0C  7C 08 03 A6 */	mtlr r0
/* 804C3D10  38 21 00 90 */	addi r1, r1, 0x90
/* 804C3D14  4E 80 00 20 */	blr 
