lbl_803EDE70:
/* 803EDE70  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 803EDE74  7C 08 02 A6 */	mflr r0
/* 803EDE78  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 803EDE7C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 803EDE80  4B CA D0 45 */	bl func_8009AEC4
/* 803EDE84  3C 60 80 66 */	lis r3, data_8065DC70@ha /* 0x8065DC70@ha */
/* 803EDE88  3B 21 00 08 */	addi r25, r1, 8
/* 803EDE8C  3B 83 DC 70 */	addi r28, r3, data_8065DC70@l /* 0x8065DC70@l */
/* 803EDE90  3B 40 00 00 */	li r26, 0
/* 803EDE94  3B E0 00 00 */	li r31, 0
/* 803EDE98  3B C0 00 00 */	li r30, 0
/* 803EDE9C  3B 60 00 CD */	li r27, 0xcd
lbl_803EDEA0:
/* 803EDEA0  23 BA 00 80 */	subfic r29, r26, 0x80
/* 803EDEA4  7C BC F0 2E */	lwzx r5, r28, r30
/* 803EDEA8  7F 23 CB 78 */	mr r3, r25
/* 803EDEAC  7F A4 EB 78 */	mr r4, r29
/* 803EDEB0  48 00 0E 1D */	bl mString_Load_StringFromRom
/* 803EDEB4  7F 23 CB 78 */	mr r3, r25
/* 803EDEB8  7F A4 EB 78 */	mr r4, r29
/* 803EDEBC  38 A0 00 20 */	li r5, 0x20
/* 803EDEC0  4B FC E7 65 */	bl func_803BC624
/* 803EDEC4  2C 1F 00 03 */	cmpwi r31, 3
/* 803EDEC8  40 80 00 18 */	bge lbl_803EDEE0
/* 803EDECC  7F 79 19 AE */	stbx r27, r25, r3
/* 803EDED0  7F 43 D2 14 */	add r26, r3, r26
/* 803EDED4  7F 23 CA 14 */	add r25, r3, r25
/* 803EDED8  3B 39 00 01 */	addi r25, r25, 1
/* 803EDEDC  3B 5A 00 01 */	addi r26, r26, 1
lbl_803EDEE0:
/* 803EDEE0  3B FF 00 01 */	addi r31, r31, 1
/* 803EDEE4  3B DE 00 04 */	addi r30, r30, 4
/* 803EDEE8  2C 1F 00 04 */	cmpwi r31, 4
/* 803EDEEC  41 80 FF B4 */	blt lbl_803EDEA0
/* 803EDEF0  3B 40 00 00 */	li r26, 0
/* 803EDEF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EDEF8  7F 5C D3 78 */	mr r28, r26
/* 803EDEFC  3B C0 00 00 */	li r30, 0
/* 803EDF00  7F 5D D3 78 */	mr r29, r26
/* 803EDF04  3B 63 85 38 */	addi r27, r3, common_data@l /* 0x81138538@l */
/* 803EDF08  3B E0 00 04 */	li r31, 4
lbl_803EDF0C:
/* 803EDF0C  7C 7B F2 14 */	add r3, r27, r30
/* 803EDF10  38 81 00 08 */	addi r4, r1, 8
/* 803EDF14  3F 23 00 01 */	addis r25, r3, 1
/* 803EDF18  38 A0 00 80 */	li r5, 0x80
/* 803EDF1C  38 79 C2 DC */	addi r3, r25, -15652
/* 803EDF20  3B 39 C2 BC */	addi r25, r25, -15684
/* 803EDF24  4B FC CB 01 */	bl func_803BAA24
/* 803EDF28  38 60 00 00 */	li r3, 0
/* 803EDF2C  7F E9 03 A6 */	mtctr r31
lbl_803EDF30:
/* 803EDF30  7F 99 1B 2E */	sthx r28, r25, r3
/* 803EDF34  38 63 00 08 */	addi r3, r3, 8
/* 803EDF38  42 00 FF F8 */	bdnz lbl_803EDF30
/* 803EDF3C  3B 5A 00 01 */	addi r26, r26, 1
/* 803EDF40  93 B9 00 A0 */	stw r29, 0xa0(r25)
/* 803EDF44  2C 1A 00 04 */	cmpwi r26, 4
/* 803EDF48  3B DE 26 B0 */	addi r30, r30, 0x26b0
/* 803EDF4C  41 80 FF C0 */	blt lbl_803EDF0C
/* 803EDF50  39 61 00 B0 */	addi r11, r1, 0xb0
/* 803EDF54  4B CA CF BD */	bl func_8009AF10
/* 803EDF58  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 803EDF5C  7C 08 03 A6 */	mtlr r0
/* 803EDF60  38 21 00 B0 */	addi r1, r1, 0xb0
/* 803EDF64  4E 80 00 20 */	blr 
