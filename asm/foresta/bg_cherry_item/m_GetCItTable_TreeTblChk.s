lbl_804B4B94:
/* 804B4B94  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804B4B98  7C 08 02 A6 */	mflr r0
/* 804B4B9C  90 01 00 94 */	stw r0, 0x94(r1)
/* 804B4BA0  39 61 00 90 */	addi r11, r1, 0x90
/* 804B4BA4  4B BE 63 1D */	bl func_8009AEC0
/* 804B4BA8  7C 9E 23 78 */	mr r30, r4
/* 804B4BAC  38 00 00 04 */	li r0, 4
/* 804B4BB0  80 84 00 00 */	lwz r4, 0(r4)
/* 804B4BB4  7C 7D 1B 78 */	mr r29, r3
/* 804B4BB8  39 40 00 00 */	li r10, 0
/* 804B4BBC  38 60 00 00 */	li r3, 0
/* 804B4BC0  90 81 00 24 */	stw r4, 0x24(r1)
/* 804B4BC4  38 80 00 00 */	li r4, 0
/* 804B4BC8  38 C0 FF FF */	li r6, -1
/* 804B4BCC  7C 09 03 A6 */	mtctr r0
lbl_804B4BD0:
/* 804B4BD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B4BD4  7C 0A 00 00 */	cmpw r10, r0
/* 804B4BD8  40 80 00 2C */	bge lbl_804B4C04
/* 804B4BDC  7D 1E 22 14 */	add r8, r30, r4
/* 804B4BE0  39 21 00 24 */	addi r9, r1, 0x24
/* 804B4BE4  88 E8 00 04 */	lbz r7, 4(r8)
/* 804B4BE8  7D 29 1A 14 */	add r9, r9, r3
/* 804B4BEC  88 08 00 05 */	lbz r0, 5(r8)
/* 804B4BF0  7C E7 07 74 */	extsb r7, r7
/* 804B4BF4  90 E9 00 04 */	stw r7, 4(r9)
/* 804B4BF8  7C 00 07 74 */	extsb r0, r0
/* 804B4BFC  90 09 00 08 */	stw r0, 8(r9)
/* 804B4C00  48 00 00 14 */	b lbl_804B4C14
lbl_804B4C04:
/* 804B4C04  38 E1 00 24 */	addi r7, r1, 0x24
/* 804B4C08  7C E7 1A 14 */	add r7, r7, r3
/* 804B4C0C  90 C7 00 04 */	stw r6, 4(r7)
/* 804B4C10  90 C7 00 08 */	stw r6, 8(r7)
lbl_804B4C14:
/* 804B4C14  39 4A 00 01 */	addi r10, r10, 1
/* 804B4C18  38 63 00 08 */	addi r3, r3, 8
/* 804B4C1C  38 84 00 10 */	addi r4, r4, 0x10
/* 804B4C20  42 00 FF B0 */	bdnz lbl_804B4BD0
/* 804B4C24  80 85 00 00 */	lwz r4, 0(r5)
/* 804B4C28  3C 60 80 69 */	lis r3, lit_2298@ha /* 0x80692A9C@ha */
/* 804B4C2C  81 05 00 04 */	lwz r8, 4(r5)
/* 804B4C30  38 03 2A 9C */	addi r0, r3, lit_2298@l /* 0x80692A9C@l */
/* 804B4C34  80 E5 00 08 */	lwz r7, 8(r5)
/* 804B4C38  7F C3 F3 78 */	mr r3, r30
/* 804B4C3C  90 81 00 08 */	stw r4, 8(r1)
/* 804B4C40  7C 05 03 78 */	mr r5, r0
/* 804B4C44  38 81 00 08 */	addi r4, r1, 8
/* 804B4C48  38 C0 12 F8 */	li r6, 0x12f8
/* 804B4C4C  91 01 00 0C */	stw r8, 0xc(r1)
/* 804B4C50  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804B4C54  4B EF 31 45 */	bl mFI_GetItemTable
/* 804B4C58  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804B4C5C  80 7E 00 00 */	lwz r3, 0(r30)
/* 804B4C60  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804B4C64  38 00 00 04 */	li r0, 4
/* 804B4C68  3C 84 00 03 */	addis r4, r4, 3
/* 804B4C6C  90 61 00 48 */	stw r3, 0x48(r1)
/* 804B4C70  8B E4 85 90 */	lbz r31, -0x7a70(r4)
/* 804B4C74  39 20 00 00 */	li r9, 0
/* 804B4C78  38 60 00 00 */	li r3, 0
/* 804B4C7C  38 80 00 00 */	li r4, 0
/* 804B4C80  38 A0 FF FF */	li r5, -1
/* 804B4C84  7C 09 03 A6 */	mtctr r0
lbl_804B4C88:
/* 804B4C88  80 01 00 48 */	lwz r0, 0x48(r1)
/* 804B4C8C  7C 09 00 00 */	cmpw r9, r0
/* 804B4C90  40 80 00 2C */	bge lbl_804B4CBC
/* 804B4C94  7C FE 22 14 */	add r7, r30, r4
/* 804B4C98  39 01 00 24 */	addi r8, r1, 0x24
/* 804B4C9C  88 C7 00 04 */	lbz r6, 4(r7)
/* 804B4CA0  7D 08 1A 14 */	add r8, r8, r3
/* 804B4CA4  88 07 00 05 */	lbz r0, 5(r7)
/* 804B4CA8  7C C6 07 74 */	extsb r6, r6
/* 804B4CAC  90 C8 00 28 */	stw r6, 0x28(r8)
/* 804B4CB0  7C 00 07 74 */	extsb r0, r0
/* 804B4CB4  90 08 00 2C */	stw r0, 0x2c(r8)
/* 804B4CB8  48 00 00 14 */	b lbl_804B4CCC
lbl_804B4CBC:
/* 804B4CBC  38 C1 00 24 */	addi r6, r1, 0x24
/* 804B4CC0  7C C6 1A 14 */	add r6, r6, r3
/* 804B4CC4  90 A6 00 28 */	stw r5, 0x28(r6)
/* 804B4CC8  90 A6 00 2C */	stw r5, 0x2c(r6)
lbl_804B4CCC:
/* 804B4CCC  39 29 00 01 */	addi r9, r9, 1
/* 804B4CD0  38 63 00 08 */	addi r3, r3, 8
/* 804B4CD4  38 84 00 10 */	addi r4, r4, 0x10
/* 804B4CD8  42 00 FF B0 */	bdnz lbl_804B4C88
/* 804B4CDC  38 00 00 04 */	li r0, 4
/* 804B4CE0  38 81 00 14 */	addi r4, r1, 0x14
/* 804B4CE4  39 20 00 00 */	li r9, 0
/* 804B4CE8  38 A0 00 00 */	li r5, 0
/* 804B4CEC  38 60 00 00 */	li r3, 0
/* 804B4CF0  7C 09 03 A6 */	mtctr r0
lbl_804B4CF4:
/* 804B4CF4  7C A4 19 2E */	stwx r5, r4, r3
/* 804B4CF8  38 A5 00 01 */	addi r5, r5, 1
/* 804B4CFC  38 63 00 04 */	addi r3, r3, 4
/* 804B4D00  42 00 FF F4 */	bdnz lbl_804B4CF4
/* 804B4D04  39 00 00 00 */	li r8, 0
/* 804B4D08  38 60 00 00 */	li r3, 0
lbl_804B4D0C:
/* 804B4D0C  38 C1 00 24 */	addi r6, r1, 0x24
/* 804B4D10  7C C6 1A 14 */	add r6, r6, r3
/* 804B4D14  80 06 00 04 */	lwz r0, 4(r6)
/* 804B4D18  2C 00 FF FF */	cmpwi r0, -1
/* 804B4D1C  41 82 00 6C */	beq lbl_804B4D88
/* 804B4D20  38 00 00 04 */	li r0, 4
/* 804B4D24  39 40 00 00 */	li r10, 0
/* 804B4D28  38 80 00 00 */	li r4, 0
/* 804B4D2C  7C 09 03 A6 */	mtctr r0
lbl_804B4D30:
/* 804B4D30  7C 08 50 00 */	cmpw r8, r10
/* 804B4D34  41 82 00 48 */	beq lbl_804B4D7C
/* 804B4D38  38 E1 00 24 */	addi r7, r1, 0x24
/* 804B4D3C  7C E7 22 14 */	add r7, r7, r4
/* 804B4D40  80 A7 00 28 */	lwz r5, 0x28(r7)
/* 804B4D44  2C 05 FF FF */	cmpwi r5, -1
/* 804B4D48  41 82 00 34 */	beq lbl_804B4D7C
/* 804B4D4C  80 06 00 04 */	lwz r0, 4(r6)
/* 804B4D50  7C 00 28 00 */	cmpw r0, r5
/* 804B4D54  40 82 00 28 */	bne lbl_804B4D7C
/* 804B4D58  80 A6 00 08 */	lwz r5, 8(r6)
/* 804B4D5C  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 804B4D60  7C 05 00 00 */	cmpw r5, r0
/* 804B4D64  40 82 00 18 */	bne lbl_804B4D7C
/* 804B4D68  55 40 10 3A */	slwi r0, r10, 2
/* 804B4D6C  38 81 00 14 */	addi r4, r1, 0x14
/* 804B4D70  7D 04 01 2E */	stwx r8, r4, r0
/* 804B4D74  39 20 00 01 */	li r9, 1
/* 804B4D78  48 00 00 10 */	b lbl_804B4D88
lbl_804B4D7C:
/* 804B4D7C  39 4A 00 01 */	addi r10, r10, 1
/* 804B4D80  38 84 00 08 */	addi r4, r4, 8
/* 804B4D84  42 00 FF AC */	bdnz lbl_804B4D30
lbl_804B4D88:
/* 804B4D88  39 08 00 01 */	addi r8, r8, 1
/* 804B4D8C  38 63 00 08 */	addi r3, r3, 8
/* 804B4D90  2C 08 00 04 */	cmpwi r8, 4
/* 804B4D94  41 80 FF 78 */	blt lbl_804B4D0C
/* 804B4D98  2C 09 00 00 */	cmpwi r9, 0
/* 804B4D9C  41 82 00 78 */	beq lbl_804B4E14
/* 804B4DA0  3C 60 81 1D */	lis r3, tmp_info_tbl@ha /* 0x811CF670@ha */
/* 804B4DA4  3B 41 00 14 */	addi r26, r1, 0x14
/* 804B4DA8  3B 23 F6 70 */	addi r25, r3, tmp_info_tbl@l /* 0x811CF670@l */
/* 804B4DAC  3B 00 00 00 */	li r24, 0
/* 804B4DB0  3B 80 00 00 */	li r28, 0
/* 804B4DB4  3B 60 00 00 */	li r27, 0
lbl_804B4DB8:
/* 804B4DB8  7C 1A E0 2E */	lwzx r0, r26, r28
/* 804B4DBC  7C 79 DA 14 */	add r3, r25, r27
/* 804B4DC0  54 04 40 2E */	slwi r4, r0, 8
/* 804B4DC4  38 84 00 04 */	addi r4, r4, 4
/* 804B4DC8  7C 9D 22 14 */	add r4, r29, r4
/* 804B4DCC  4B FF FC F9 */	bl bIT_common_info_tbl_copy
/* 804B4DD0  3B 18 00 01 */	addi r24, r24, 1
/* 804B4DD4  3B 7B 01 00 */	addi r27, r27, 0x100
/* 804B4DD8  2C 18 00 04 */	cmpwi r24, 4
/* 804B4DDC  3B 9C 00 04 */	addi r28, r28, 4
/* 804B4DE0  41 80 FF D8 */	blt lbl_804B4DB8
/* 804B4DE4  3C 60 81 1D */	lis r3, tmp_info_tbl@ha /* 0x811CF670@ha */
/* 804B4DE8  3B 20 00 00 */	li r25, 0
/* 804B4DEC  3B 63 F6 70 */	addi r27, r3, tmp_info_tbl@l /* 0x811CF670@l */
/* 804B4DF0  3B 80 00 00 */	li r28, 0
lbl_804B4DF4:
/* 804B4DF4  38 7C 00 04 */	addi r3, r28, 4
/* 804B4DF8  7C 9B E2 14 */	add r4, r27, r28
/* 804B4DFC  7C 7D 1A 14 */	add r3, r29, r3
/* 804B4E00  4B FF FC C5 */	bl bIT_common_info_tbl_copy
/* 804B4E04  3B 39 00 01 */	addi r25, r25, 1
/* 804B4E08  3B 9C 01 00 */	addi r28, r28, 0x100
/* 804B4E0C  2C 19 00 04 */	cmpwi r25, 4
/* 804B4E10  41 80 FF E4 */	blt lbl_804B4DF4
lbl_804B4E14:
/* 804B4E14  3B 1E 00 04 */	addi r24, r30, 4
/* 804B4E18  3B BD 00 04 */	addi r29, r29, 4
/* 804B4E1C  3B 20 00 00 */	li r25, 0
/* 804B4E20  3B 60 00 01 */	li r27, 1
/* 804B4E24  48 00 00 54 */	b lbl_804B4E78
lbl_804B4E28:
/* 804B4E28  7F 60 C8 30 */	slw r0, r27, r25
/* 804B4E2C  7F E0 00 39 */	and. r0, r31, r0
/* 804B4E30  41 82 00 3C */	beq lbl_804B4E6C
/* 804B4E34  8B 58 00 00 */	lbz r26, 0(r24)
/* 804B4E38  7F A5 EB 78 */	mr r5, r29
/* 804B4E3C  8B 98 00 01 */	lbz r28, 1(r24)
/* 804B4E40  7F 5A 07 74 */	extsb r26, r26
/* 804B4E44  7F 9C 07 74 */	extsb r28, r28
/* 804B4E48  7F 43 D3 78 */	mr r3, r26
/* 804B4E4C  7F 84 E3 78 */	mr r4, r28
/* 804B4E50  4B FF FC 95 */	bl bIT_common_clear_treeatr
/* 804B4E54  7F 43 D3 78 */	mr r3, r26
/* 804B4E58  7F 84 E3 78 */	mr r4, r28
/* 804B4E5C  4B EF 47 C5 */	bl mFI_ClearHoleBlock
/* 804B4E60  7F 43 D3 78 */	mr r3, r26
/* 804B4E64  7F 84 E3 78 */	mr r4, r28
/* 804B4E68  4B EF 47 DD */	bl mFI_ClearBeecomb
lbl_804B4E6C:
/* 804B4E6C  3B 18 00 10 */	addi r24, r24, 0x10
/* 804B4E70  3B BD 01 00 */	addi r29, r29, 0x100
/* 804B4E74  3B 39 00 01 */	addi r25, r25, 1
lbl_804B4E78:
/* 804B4E78  80 1E 00 00 */	lwz r0, 0(r30)
/* 804B4E7C  7C 19 00 00 */	cmpw r25, r0
/* 804B4E80  41 80 FF A8 */	blt lbl_804B4E28
/* 804B4E84  39 61 00 90 */	addi r11, r1, 0x90
/* 804B4E88  4B BE 60 85 */	bl func_8009AF0C
/* 804B4E8C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804B4E90  7C 08 03 A6 */	mtlr r0
/* 804B4E94  38 21 00 90 */	addi r1, r1, 0x90
/* 804B4E98  4E 80 00 20 */	blr 
