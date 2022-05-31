lbl_8041CE98:
/* 8041CE98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041CE9C  7C 08 02 A6 */	mflr r0
/* 8041CEA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041CEA4  39 61 00 40 */	addi r11, r1, 0x40
/* 8041CEA8  4B C7 E0 1D */	bl func_8009AEC4
/* 8041CEAC  7C 79 1B 78 */	mr r25, r3
/* 8041CEB0  7C 9A 23 78 */	mr r26, r4
/* 8041CEB4  7C BB 2B 78 */	mr r27, r5
/* 8041CEB8  4B F8 7E 15 */	bl mFI_GetFieldId
/* 8041CEBC  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041CEC0  40 82 00 FC */	bne lbl_8041CFBC
/* 8041CEC4  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041CEC8  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 8041CECC  4B F8 13 E1 */	bl mEv_get_common_place
/* 8041CED0  7C 7C 1B 79 */	or. r28, r3, r3
/* 8041CED4  41 82 00 E8 */	beq lbl_8041CFBC
/* 8041CED8  7F 84 E3 78 */	mr r4, r28
/* 8041CEDC  38 61 00 08 */	addi r3, r1, 8
/* 8041CEE0  38 A0 00 14 */	li r5, 0x14
/* 8041CEE4  4B BE 65 AD */	bl memcpy
/* 8041CEE8  3C 60 81 1D */	lis r3, fluc@ha /* 0x811CB96C@ha */
/* 8041CEEC  57 7E 06 3E */	clrlwi r30, r27, 0x18
/* 8041CEF0  3B A1 00 10 */	addi r29, r1, 0x10
/* 8041CEF4  3B 60 00 03 */	li r27, 3
/* 8041CEF8  3B E3 B9 6C */	addi r31, r3, fluc@l /* 0x811CB96C@l */
lbl_8041CEFC:
/* 8041CEFC  80 BA 00 00 */	lwz r5, 0(r26)
/* 8041CF00  7F 23 CB 78 */	mr r3, r25
/* 8041CF04  80 1F 00 00 */	lwz r0, 0(r31)
/* 8041CF08  7F 44 D3 78 */	mr r4, r26
/* 8041CF0C  A0 E1 00 18 */	lhz r7, 0x18(r1)
/* 8041CF10  7F A6 EB 78 */	mr r6, r29
/* 8041CF14  7C 00 2A 14 */	add r0, r0, r5
/* 8041CF18  38 A1 00 08 */	addi r5, r1, 8
/* 8041CF1C  7C 00 3A 14 */	add r0, r0, r7
/* 8041CF20  38 E0 00 01 */	li r7, 1
/* 8041CF24  7D 00 F2 14 */	add r8, r0, r30
/* 8041CF28  7D 1B 42 14 */	add r8, r27, r8
/* 8041CF2C  4B FF DE 01 */	bl search_free_unit
/* 8041CF30  2C 03 00 00 */	cmpwi r3, 0
/* 8041CF34  40 82 00 18 */	bne lbl_8041CF4C
/* 8041CF38  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041CF3C  38 80 00 20 */	li r4, 0x20
/* 8041CF40  4B F8 0A 91 */	bl mEv_set_status
/* 8041CF44  38 60 00 00 */	li r3, 0
/* 8041CF48  48 00 00 78 */	b lbl_8041CFC0
lbl_8041CF4C:
/* 8041CF4C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8041CF50  80 1C 00 04 */	lwz r0, 4(r28)
/* 8041CF54  7C 03 00 00 */	cmpw r3, r0
/* 8041CF58  40 82 00 4C */	bne lbl_8041CFA4
/* 8041CF5C  80 61 00 08 */	lwz r3, 8(r1)
/* 8041CF60  80 1C 00 00 */	lwz r0, 0(r28)
/* 8041CF64  7C 03 00 00 */	cmpw r3, r0
/* 8041CF68  40 82 00 3C */	bne lbl_8041CFA4
/* 8041CF6C  2C 1B 00 03 */	cmpwi r27, 3
/* 8041CF70  40 80 00 2C */	bge lbl_8041CF9C
/* 8041CF74  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8041CF78  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 8041CF7C  7C 03 00 00 */	cmpw r3, r0
/* 8041CF80  40 82 00 24 */	bne lbl_8041CFA4
/* 8041CF84  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8041CF88  80 1C 00 08 */	lwz r0, 8(r28)
/* 8041CF8C  7C 03 00 00 */	cmpw r3, r0
/* 8041CF90  40 82 00 14 */	bne lbl_8041CFA4
/* 8041CF94  2C 1B 00 02 */	cmpwi r27, 2
/* 8041CF98  41 80 00 0C */	blt lbl_8041CFA4
lbl_8041CF9C:
/* 8041CF9C  37 7B FF FF */	addic. r27, r27, -1
/* 8041CFA0  41 81 FF 5C */	bgt lbl_8041CEFC
lbl_8041CFA4:
/* 8041CFA4  7F 83 E3 78 */	mr r3, r28
/* 8041CFA8  38 81 00 08 */	addi r4, r1, 8
/* 8041CFAC  38 A0 00 14 */	li r5, 0x14
/* 8041CFB0  4B BE 64 E1 */	bl memcpy
/* 8041CFB4  7F 83 E3 78 */	mr r3, r28
/* 8041CFB8  48 00 00 08 */	b lbl_8041CFC0
lbl_8041CFBC:
/* 8041CFBC  38 60 00 00 */	li r3, 0
lbl_8041CFC0:
/* 8041CFC0  39 61 00 40 */	addi r11, r1, 0x40
/* 8041CFC4  4B C7 DF 4D */	bl func_8009AF10
/* 8041CFC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041CFCC  7C 08 03 A6 */	mtlr r0
/* 8041CFD0  38 21 00 40 */	addi r1, r1, 0x40
/* 8041CFD4  4E 80 00 20 */	blr 
