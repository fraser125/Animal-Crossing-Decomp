lbl_804D1AD4:
/* 804D1AD4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804D1AD8  7C 08 02 A6 */	mflr r0
/* 804D1ADC  90 01 00 84 */	stw r0, 0x84(r1)
/* 804D1AE0  39 61 00 80 */	addi r11, r1, 0x80
/* 804D1AE4  4B BC 93 DD */	bl func_8009AEC0
/* 804D1AE8  7C FB 3B 78 */	mr r27, r7
/* 804D1AEC  38 00 00 00 */	li r0, 0
/* 804D1AF0  90 07 00 00 */	stw r0, 0(r7)
/* 804D1AF4  7D 1C 43 78 */	mr r28, r8
/* 804D1AF8  7C 78 1B 78 */	mr r24, r3
/* 804D1AFC  7C 99 23 78 */	mr r25, r4
/* 804D1B00  90 08 00 00 */	stw r0, 0(r8)
/* 804D1B04  7C BE 2B 78 */	mr r30, r5
/* 804D1B08  7C DA 33 78 */	mr r26, r6
/* 804D1B0C  4B F1 5C 85 */	bl mRmTp_FtrItemNo2FtrIdx
/* 804D1B10  3C 80 80 6A */	lis r4, data_8069BFF0@ha /* 0x8069BFF0@ha */
/* 804D1B14  54 60 08 3C */	slwi r0, r3, 1
/* 804D1B18  38 A4 BF F0 */	addi r5, r4, data_8069BFF0@l /* 0x8069BFF0@l */
/* 804D1B1C  7F 03 C3 78 */	mr r3, r24
/* 804D1B20  7C 85 02 14 */	add r4, r5, r0
/* 804D1B24  7F E5 00 AE */	lbzx r31, r5, r0
/* 804D1B28  8B A4 00 01 */	lbz r29, 1(r4)
/* 804D1B2C  7F C5 F3 78 */	mr r5, r30
/* 804D1B30  7F 24 CB 78 */	mr r4, r25
/* 804D1B34  57 1E 07 BE */	clrlwi r30, r24, 0x1e
/* 804D1B38  38 C1 00 28 */	addi r6, r1, 0x28
/* 804D1B3C  4B F1 41 89 */	bl mRmTp_GetFurnitureData
/* 804D1B40  3C 80 80 6A */	lis r4, mHsRm_unit_value@ha /* 0x8069C9E4@ha */
/* 804D1B44  2C 1A 00 06 */	cmpwi r26, 6
/* 804D1B48  54 60 10 3A */	slwi r0, r3, 2
/* 804D1B4C  38 64 C9 E4 */	addi r3, r4, mHsRm_unit_value@l /* 0x8069C9E4@l */
/* 804D1B50  7C 63 00 2E */	lwzx r3, r3, r0
/* 804D1B54  40 82 00 14 */	bne lbl_804D1B68
/* 804D1B58  2C 03 00 01 */	cmpwi r3, 1
/* 804D1B5C  40 82 00 0C */	bne lbl_804D1B68
/* 804D1B60  38 00 00 01 */	li r0, 1
/* 804D1B64  48 00 00 08 */	b lbl_804D1B6C
lbl_804D1B68:
/* 804D1B68  38 00 00 02 */	li r0, 2
lbl_804D1B6C:
/* 804D1B6C  38 A0 00 00 */	li r5, 0
/* 804D1B70  38 80 00 04 */	li r4, 4
/* 804D1B74  7C A9 2B 78 */	mr r9, r5
/* 804D1B78  39 01 00 18 */	addi r8, r1, 0x18
/* 804D1B7C  7C A7 2B 78 */	mr r7, r5
/* 804D1B80  38 C1 00 08 */	addi r6, r1, 8
/* 804D1B84  7C 89 03 A6 */	mtctr r4
lbl_804D1B88:
/* 804D1B88  7D 28 29 2E */	stwx r9, r8, r5
/* 804D1B8C  7C E6 29 2E */	stwx r7, r6, r5
/* 804D1B90  38 A5 00 04 */	addi r5, r5, 4
/* 804D1B94  42 00 FF F4 */	bdnz lbl_804D1B88
/* 804D1B98  7C 80 D0 50 */	subf r4, r0, r26
/* 804D1B9C  38 E4 FF FF */	addi r7, r4, -1
/* 804D1BA0  38 80 00 00 */	li r4, 0
/* 804D1BA4  7C 69 03 A6 */	mtctr r3
/* 804D1BA8  2C 03 00 00 */	cmpwi r3, 0
/* 804D1BAC  40 81 00 CC */	ble lbl_804D1C78
lbl_804D1BB0:
/* 804D1BB0  39 21 00 28 */	addi r9, r1, 0x28
/* 804D1BB4  7D 29 22 14 */	add r9, r9, r4
/* 804D1BB8  81 09 00 08 */	lwz r8, 8(r9)
/* 804D1BBC  7C 08 00 00 */	cmpw r8, r0
/* 804D1BC0  41 81 00 28 */	bgt lbl_804D1BE8
/* 804D1BC4  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 804D1BC8  2C 08 00 01 */	cmpwi r8, 1
/* 804D1BCC  38 A5 00 01 */	addi r5, r5, 1
/* 804D1BD0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804D1BD4  41 81 00 40 */	bgt lbl_804D1C14
/* 804D1BD8  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 804D1BDC  38 A5 00 01 */	addi r5, r5, 1
/* 804D1BE0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804D1BE4  48 00 00 30 */	b lbl_804D1C14
lbl_804D1BE8:
/* 804D1BE8  7C 08 38 00 */	cmpw r8, r7
/* 804D1BEC  41 80 00 28 */	blt lbl_804D1C14
/* 804D1BF0  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 804D1BF4  38 BA FF FE */	addi r5, r26, -2
/* 804D1BF8  7C 08 28 00 */	cmpw r8, r5
/* 804D1BFC  38 A6 00 01 */	addi r5, r6, 1
/* 804D1C00  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804D1C04  41 80 00 10 */	blt lbl_804D1C14
/* 804D1C08  80 A1 00 08 */	lwz r5, 8(r1)
/* 804D1C0C  38 A5 00 01 */	addi r5, r5, 1
/* 804D1C10  90 A1 00 08 */	stw r5, 8(r1)
lbl_804D1C14:
/* 804D1C14  81 09 00 04 */	lwz r8, 4(r9)
/* 804D1C18  7C 08 00 00 */	cmpw r8, r0
/* 804D1C1C  41 81 00 28 */	bgt lbl_804D1C44
/* 804D1C20  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804D1C24  2C 08 00 01 */	cmpwi r8, 1
/* 804D1C28  38 A5 00 01 */	addi r5, r5, 1
/* 804D1C2C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804D1C30  41 81 00 40 */	bgt lbl_804D1C70
/* 804D1C34  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 804D1C38  38 A5 00 01 */	addi r5, r5, 1
/* 804D1C3C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804D1C40  48 00 00 30 */	b lbl_804D1C70
lbl_804D1C44:
/* 804D1C44  7C 08 38 00 */	cmpw r8, r7
/* 804D1C48  41 80 00 28 */	blt lbl_804D1C70
/* 804D1C4C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 804D1C50  38 BA FF FE */	addi r5, r26, -2
/* 804D1C54  7C 08 28 00 */	cmpw r8, r5
/* 804D1C58  38 A6 00 01 */	addi r5, r6, 1
/* 804D1C5C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 804D1C60  41 80 00 10 */	blt lbl_804D1C70
/* 804D1C64  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804D1C68  38 A5 00 01 */	addi r5, r5, 1
/* 804D1C6C  90 A1 00 0C */	stw r5, 0xc(r1)
lbl_804D1C70:
/* 804D1C70  38 84 00 0C */	addi r4, r4, 0xc
/* 804D1C74  42 00 FF 3C */	bdnz lbl_804D1BB0
lbl_804D1C78:
/* 804D1C78  38 A0 00 04 */	li r5, 4
/* 804D1C7C  39 21 00 18 */	addi r9, r1, 0x18
/* 804D1C80  38 E1 00 08 */	addi r7, r1, 8
/* 804D1C84  38 00 00 00 */	li r0, 0
/* 804D1C88  38 80 00 00 */	li r4, 0
/* 804D1C8C  39 40 00 00 */	li r10, 0
/* 804D1C90  38 C0 00 00 */	li r6, 0
/* 804D1C94  39 00 00 01 */	li r8, 1
/* 804D1C98  7C A9 03 A6 */	mtctr r5
lbl_804D1C9C:
/* 804D1C9C  7C A9 30 2E */	lwzx r5, r9, r6
/* 804D1CA0  7C 03 28 00 */	cmpw r3, r5
/* 804D1CA4  40 82 00 0C */	bne lbl_804D1CB0
/* 804D1CA8  7D 05 50 30 */	slw r5, r8, r10
/* 804D1CAC  7C 00 2B 78 */	or r0, r0, r5
lbl_804D1CB0:
/* 804D1CB0  2C 03 00 02 */	cmpwi r3, 2
/* 804D1CB4  41 80 00 10 */	blt lbl_804D1CC4
/* 804D1CB8  7C A7 30 2E */	lwzx r5, r7, r6
/* 804D1CBC  2C 05 00 02 */	cmpwi r5, 2
/* 804D1CC0  40 80 00 18 */	bge lbl_804D1CD8
lbl_804D1CC4:
/* 804D1CC4  2C 03 00 01 */	cmpwi r3, 1
/* 804D1CC8  40 82 00 18 */	bne lbl_804D1CE0
/* 804D1CCC  7C A7 30 2E */	lwzx r5, r7, r6
/* 804D1CD0  2C 05 00 01 */	cmpwi r5, 1
/* 804D1CD4  41 80 00 0C */	blt lbl_804D1CE0
lbl_804D1CD8:
/* 804D1CD8  7D 05 50 30 */	slw r5, r8, r10
/* 804D1CDC  7C 84 2B 78 */	or r4, r4, r5
lbl_804D1CE0:
/* 804D1CE0  39 4A 00 01 */	addi r10, r10, 1
/* 804D1CE4  38 C6 00 04 */	addi r6, r6, 4
/* 804D1CE8  42 00 FF B4 */	bdnz lbl_804D1C9C
/* 804D1CEC  2C 1F 00 05 */	cmpwi r31, 5
/* 804D1CF0  40 82 00 1C */	bne lbl_804D1D0C
/* 804D1CF4  80 7B 00 00 */	lwz r3, 0(r27)
/* 804D1CF8  38 63 00 04 */	addi r3, r3, 4
/* 804D1CFC  90 7B 00 00 */	stw r3, 0(r27)
/* 804D1D00  80 7C 00 00 */	lwz r3, 0(r28)
/* 804D1D04  38 63 00 08 */	addi r3, r3, 8
/* 804D1D08  90 7C 00 00 */	stw r3, 0(r28)
lbl_804D1D0C:
/* 804D1D0C  2C 00 00 00 */	cmpwi r0, 0
/* 804D1D10  41 82 00 D8 */	beq lbl_804D1DE8
/* 804D1D14  3C C0 80 64 */	lis r6, data_8064646C@ha /* 0x8064646C@ha */
/* 804D1D18  3C A0 80 64 */	lis r5, goods_power_tbl@ha /* 0x8064649C@ha */
/* 804D1D1C  57 E7 18 38 */	slwi r7, r31, 3
/* 804D1D20  38 60 00 04 */	li r3, 4
/* 804D1D24  38 C6 64 6C */	addi r6, r6, data_8064646C@l /* 0x8064646C@l */
/* 804D1D28  38 A5 64 9C */	addi r5, r5, goods_power_tbl@l /* 0x8064649C@l */
/* 804D1D2C  7D 26 3A 14 */	add r9, r6, r7
/* 804D1D30  39 80 00 00 */	li r12, 0
/* 804D1D34  7D 45 3A 14 */	add r10, r5, r7
/* 804D1D38  38 C0 00 01 */	li r6, 1
/* 804D1D3C  38 E9 00 04 */	addi r7, r9, 4
/* 804D1D40  39 0A 00 04 */	addi r8, r10, 4
/* 804D1D44  7C 69 03 A6 */	mtctr r3
lbl_804D1D48:
/* 804D1D48  2C 1F 00 05 */	cmpwi r31, 5
/* 804D1D4C  41 82 00 48 */	beq lbl_804D1D94
/* 804D1D50  7C CB 60 30 */	slw r11, r6, r12
/* 804D1D54  7C 03 58 39 */	and. r3, r0, r11
/* 804D1D58  41 82 00 3C */	beq lbl_804D1D94
/* 804D1D5C  80 69 00 00 */	lwz r3, 0(r9)
/* 804D1D60  7D 63 18 39 */	and. r3, r11, r3
/* 804D1D64  41 82 00 14 */	beq lbl_804D1D78
/* 804D1D68  80 BB 00 00 */	lwz r5, 0(r27)
/* 804D1D6C  80 67 00 00 */	lwz r3, 0(r7)
/* 804D1D70  7C 65 1A 14 */	add r3, r5, r3
/* 804D1D74  90 7B 00 00 */	stw r3, 0(r27)
lbl_804D1D78:
/* 804D1D78  80 6A 00 00 */	lwz r3, 0(r10)
/* 804D1D7C  7D 63 18 39 */	and. r3, r11, r3
/* 804D1D80  41 82 00 14 */	beq lbl_804D1D94
/* 804D1D84  80 BC 00 00 */	lwz r5, 0(r28)
/* 804D1D88  80 68 00 00 */	lwz r3, 0(r8)
/* 804D1D8C  7C 65 1A 14 */	add r3, r5, r3
/* 804D1D90  90 7C 00 00 */	stw r3, 0(r28)
lbl_804D1D94:
/* 804D1D94  39 8C 00 01 */	addi r12, r12, 1
/* 804D1D98  42 00 FF B0 */	bdnz lbl_804D1D48
/* 804D1D9C  2C 1D 00 00 */	cmpwi r29, 0
/* 804D1DA0  41 82 00 48 */	beq lbl_804D1DE8
/* 804D1DA4  38 00 00 04 */	li r0, 4
/* 804D1DA8  38 C0 00 00 */	li r6, 0
/* 804D1DAC  38 A0 00 01 */	li r5, 1
/* 804D1DB0  7C 09 03 A6 */	mtctr r0
lbl_804D1DB4:
/* 804D1DB4  7C A0 30 30 */	slw r0, r5, r6
/* 804D1DB8  7C 80 00 39 */	and. r0, r4, r0
/* 804D1DBC  41 82 00 24 */	beq lbl_804D1DE0
/* 804D1DC0  7C 1E 30 00 */	cmpw r30, r6
/* 804D1DC4  40 82 00 1C */	bne lbl_804D1DE0
/* 804D1DC8  80 7B 00 00 */	lwz r3, 0(r27)
/* 804D1DCC  38 03 FF F6 */	addi r0, r3, -10
/* 804D1DD0  90 1B 00 00 */	stw r0, 0(r27)
/* 804D1DD4  80 7C 00 00 */	lwz r3, 0(r28)
/* 804D1DD8  38 03 FF FB */	addi r0, r3, -5
/* 804D1DDC  90 1C 00 00 */	stw r0, 0(r28)
lbl_804D1DE0:
/* 804D1DE0  38 C6 00 01 */	addi r6, r6, 1
/* 804D1DE4  42 00 FF D0 */	bdnz lbl_804D1DB4
lbl_804D1DE8:
/* 804D1DE8  39 61 00 80 */	addi r11, r1, 0x80
/* 804D1DEC  4B BC 91 21 */	bl func_8009AF0C
/* 804D1DF0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D1DF4  7C 08 03 A6 */	mtlr r0
/* 804D1DF8  38 21 00 80 */	addi r1, r1, 0x80
/* 804D1DFC  4E 80 00 20 */	blr 
