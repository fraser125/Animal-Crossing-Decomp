lbl_803BFE98:
/* 803BFE98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BFE9C  7C 08 02 A6 */	mflr r0
/* 803BFEA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BFEA4  39 61 00 30 */	addi r11, r1, 0x30
/* 803BFEA8  4B CD B0 1D */	bl func_8009AEC4
/* 803BFEAC  2C 04 00 00 */	cmpwi r4, 0
/* 803BFEB0  7C D9 33 78 */	mr r25, r6
/* 803BFEB4  41 80 00 F8 */	blt lbl_803BFFAC
/* 803BFEB8  2C 04 00 01 */	cmpwi r4, 1
/* 803BFEBC  40 80 00 F0 */	bge lbl_803BFFAC
/* 803BFEC0  28 05 00 00 */	cmplwi r5, 0
/* 803BFEC4  41 82 00 E8 */	beq lbl_803BFFAC
/* 803BFEC8  2C 19 00 84 */	cmpwi r25, 0x84
/* 803BFECC  40 81 00 08 */	ble lbl_803BFED4
/* 803BFED0  3B 20 00 84 */	li r25, 0x84
lbl_803BFED4:
/* 803BFED4  1C 84 00 84 */	mulli r4, r4, 0x84
/* 803BFED8  7C BC 2B 78 */	mr r28, r5
/* 803BFEDC  3B C0 00 00 */	li r30, 0
/* 803BFEE0  3B 60 00 00 */	li r27, 0
/* 803BFEE4  3B A4 02 2C */	addi r29, r4, 0x22c
/* 803BFEE8  3B 40 00 00 */	li r26, 0
/* 803BFEEC  7F A3 EA 14 */	add r29, r3, r29
/* 803BFEF0  3B E0 00 00 */	li r31, 0
/* 803BFEF4  48 00 00 90 */	b lbl_803BFF84
lbl_803BFEF8:
/* 803BFEF8  88 7C 00 00 */	lbz r3, 0(r28)
/* 803BFEFC  3B 9C 00 01 */	addi r28, r28, 1
/* 803BFF00  28 03 00 CD */	cmplwi r3, 0xcd
/* 803BFF04  40 82 00 2C */	bne lbl_803BFF30
/* 803BFF08  3B DE 00 01 */	addi r30, r30, 1
/* 803BFF0C  98 7D 00 00 */	stb r3, 0(r29)
/* 803BFF10  2C 1E 00 84 */	cmpwi r30, 0x84
/* 803BFF14  3B 40 00 00 */	li r26, 0
/* 803BFF18  3B 7B 00 01 */	addi r27, r27, 1
/* 803BFF1C  3B BD 00 01 */	addi r29, r29, 1
/* 803BFF20  40 80 00 6C */	bge lbl_803BFF8C
/* 803BFF24  2C 1B 00 04 */	cmpwi r27, 4
/* 803BFF28  40 81 00 58 */	ble lbl_803BFF80
/* 803BFF2C  48 00 00 60 */	b lbl_803BFF8C
lbl_803BFF30:
/* 803BFF30  98 7D 00 00 */	stb r3, 0(r29)
/* 803BFF34  38 80 00 01 */	li r4, 1
/* 803BFF38  3B BD 00 01 */	addi r29, r29, 1
/* 803BFF3C  3B DE 00 01 */	addi r30, r30, 1
/* 803BFF40  4B FE F7 5D */	bl mFont_GetCodeWidth
/* 803BFF44  2C 1E 00 84 */	cmpwi r30, 0x84
/* 803BFF48  7F 5A 1A 14 */	add r26, r26, r3
/* 803BFF4C  40 80 00 40 */	bge lbl_803BFF8C
/* 803BFF50  2C 1A 00 BA */	cmpwi r26, 0xba
/* 803BFF54  40 81 00 2C */	ble lbl_803BFF80
/* 803BFF58  3B DE 00 01 */	addi r30, r30, 1
/* 803BFF5C  38 00 00 CD */	li r0, 0xcd
/* 803BFF60  2C 1E 00 84 */	cmpwi r30, 0x84
/* 803BFF64  98 1D 00 00 */	stb r0, 0(r29)
/* 803BFF68  3B 40 00 00 */	li r26, 0
/* 803BFF6C  3B 7B 00 01 */	addi r27, r27, 1
/* 803BFF70  3B BD 00 01 */	addi r29, r29, 1
/* 803BFF74  40 80 00 18 */	bge lbl_803BFF8C
/* 803BFF78  2C 1B 00 04 */	cmpwi r27, 4
/* 803BFF7C  41 81 00 10 */	bgt lbl_803BFF8C
lbl_803BFF80:
/* 803BFF80  3B FF 00 01 */	addi r31, r31, 1
lbl_803BFF84:
/* 803BFF84  7C 1F C8 00 */	cmpw r31, r25
/* 803BFF88  41 80 FF 70 */	blt lbl_803BFEF8
lbl_803BFF8C:
/* 803BFF8C  20 1E 00 84 */	subfic r0, r30, 0x84
/* 803BFF90  38 60 00 20 */	li r3, 0x20
/* 803BFF94  7C 09 03 A6 */	mtctr r0
/* 803BFF98  2C 1E 00 84 */	cmpwi r30, 0x84
/* 803BFF9C  40 80 00 10 */	bge lbl_803BFFAC
lbl_803BFFA0:
/* 803BFFA0  98 7D 00 00 */	stb r3, 0(r29)
/* 803BFFA4  3B BD 00 01 */	addi r29, r29, 1
/* 803BFFA8  42 00 FF F8 */	bdnz lbl_803BFFA0
lbl_803BFFAC:
/* 803BFFAC  39 61 00 30 */	addi r11, r1, 0x30
/* 803BFFB0  4B CD AF 61 */	bl func_8009AF10
/* 803BFFB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BFFB8  7C 08 03 A6 */	mtlr r0
/* 803BFFBC  38 21 00 30 */	addi r1, r1, 0x30
/* 803BFFC0  4E 80 00 20 */	blr 
