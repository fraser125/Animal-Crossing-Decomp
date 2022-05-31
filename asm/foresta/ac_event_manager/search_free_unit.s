lbl_8041AD2C:
/* 8041AD2C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8041AD30  7C 08 02 A6 */	mflr r0
/* 8041AD34  90 01 00 54 */	stw r0, 0x54(r1)
/* 8041AD38  39 61 00 50 */	addi r11, r1, 0x50
/* 8041AD3C  4B C8 01 79 */	bl func_8009AEB4
/* 8041AD40  7C 75 1B 78 */	mr r21, r3
/* 8041AD44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041AD48  81 35 01 EC */	lwz r9, 0x1ec(r21)
/* 8041AD4C  39 43 85 38 */	addi r10, r3, common_data@l /* 0x81138538@l */
/* 8041AD50  80 75 01 E8 */	lwz r3, 0x1e8(r21)
/* 8041AD54  1F E8 00 09 */	mulli r31, r8, 9
/* 8041AD58  3B A9 FF FE */	addi r29, r9, -2
/* 8041AD5C  38 03 FF FD */	addi r0, r3, -3
/* 8041AD60  7F 9D 01 D6 */	mullw r28, r29, r0
/* 8041AD64  7C 96 23 78 */	mr r22, r4
/* 8041AD68  7C B7 2B 78 */	mr r23, r5
/* 8041AD6C  7C D8 33 78 */	mr r24, r6
/* 8041AD70  7C F9 3B 78 */	mr r25, r7
/* 8041AD74  3F CA 00 02 */	addis r30, r10, 2
/* 8041AD78  3B 40 00 03 */	li r26, 3
/* 8041AD7C  48 00 00 CC */	b lbl_8041AE48
lbl_8041AD80:
/* 8041AD80  7F 9B E3 78 */	mr r27, r28
/* 8041AD84  48 00 00 B8 */	b lbl_8041AE3C
lbl_8041AD88:
/* 8041AD88  88 DE 61 25 */	lbz r6, 0x6125(r30)
/* 8041AD8C  7E A3 AB 78 */	mr r3, r21
/* 8041AD90  88 BE 61 23 */	lbz r5, 0x6123(r30)
/* 8041AD94  7E C4 B3 78 */	mr r4, r22
/* 8041AD98  88 1E 61 22 */	lbz r0, 0x6122(r30)
/* 8041AD9C  7F 47 D3 78 */	mr r7, r26
/* 8041ADA0  7D 26 29 D6 */	mullw r9, r6, r5
/* 8041ADA4  89 5E 61 20 */	lbz r10, 0x6120(r30)
/* 8041ADA8  7C 00 DA 14 */	add r0, r0, r27
/* 8041ADAC  7F 28 CB 78 */	mr r8, r25
/* 8041ADB0  38 A1 00 08 */	addi r5, r1, 8
/* 8041ADB4  38 C1 00 10 */	addi r6, r1, 0x10
/* 8041ADB8  1C 00 00 03 */	mulli r0, r0, 3
/* 8041ADBC  7C 09 02 14 */	add r0, r9, r0
/* 8041ADC0  7D 60 FA 14 */	add r11, r0, r31
/* 8041ADC4  7D 6A 5A 14 */	add r11, r10, r11
/* 8041ADC8  7D 69 FE 70 */	srawi r9, r11, 0x1f
/* 8041ADCC  7D 20 5A 78 */	xor r0, r9, r11
/* 8041ADD0  7D 69 00 50 */	subf r11, r9, r0
/* 8041ADD4  7C 0B E3 D6 */	divw r0, r11, r28
/* 8041ADD8  7C 00 E1 D6 */	mullw r0, r0, r28
/* 8041ADDC  7D 60 58 50 */	subf r11, r0, r11
/* 8041ADE0  7D 4B EB D6 */	divw r10, r11, r29
/* 8041ADE4  7D 2A E9 D6 */	mullw r9, r10, r29
/* 8041ADE8  38 0A 00 02 */	addi r0, r10, 2
/* 8041ADEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8041ADF0  90 01 00 08 */	stw r0, 8(r1)
/* 8041ADF4  7D 29 58 50 */	subf r9, r9, r11
/* 8041ADF8  38 09 00 01 */	addi r0, r9, 1
/* 8041ADFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8041AE00  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041AE04  4B FF FD FD */	bl search_free_unit_cancel_check
/* 8041AE08  2C 03 00 00 */	cmpwi r3, 0
/* 8041AE0C  40 82 00 2C */	bne lbl_8041AE38
/* 8041AE10  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8041AE14  3B 40 00 00 */	li r26, 0
/* 8041AE18  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8041AE1C  90 77 00 00 */	stw r3, 0(r23)
/* 8041AE20  90 17 00 04 */	stw r0, 4(r23)
/* 8041AE24  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8041AE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041AE2C  90 78 00 00 */	stw r3, 0(r24)
/* 8041AE30  90 18 00 04 */	stw r0, 4(r24)
/* 8041AE34  48 00 00 10 */	b lbl_8041AE44
lbl_8041AE38:
/* 8041AE38  3B 7B FF FF */	addi r27, r27, -1
lbl_8041AE3C:
/* 8041AE3C  2C 1B 00 00 */	cmpwi r27, 0
/* 8041AE40  41 81 FF 48 */	bgt lbl_8041AD88
lbl_8041AE44:
/* 8041AE44  3B 5A FF FF */	addi r26, r26, -1
lbl_8041AE48:
/* 8041AE48  2C 1A 00 00 */	cmpwi r26, 0
/* 8041AE4C  41 81 FF 34 */	bgt lbl_8041AD80
/* 8041AE50  7F 63 DB 78 */	mr r3, r27
/* 8041AE54  39 61 00 50 */	addi r11, r1, 0x50
/* 8041AE58  4B C8 00 A9 */	bl func_8009AF00
/* 8041AE5C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8041AE60  7C 08 03 A6 */	mtlr r0
/* 8041AE64  38 21 00 50 */	addi r1, r1, 0x50
/* 8041AE68  4E 80 00 20 */	blr 
