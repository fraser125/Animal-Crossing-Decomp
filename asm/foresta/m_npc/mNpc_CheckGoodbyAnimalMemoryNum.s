lbl_803D0A08:
/* 803D0A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D0A0C  7C 08 02 A6 */	mflr r0
/* 803D0A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D0A14  39 61 00 20 */	addi r11, r1, 0x20
/* 803D0A18  4B CC A4 B1 */	bl func_8009AEC8
/* 803D0A1C  7C 7A 1B 78 */	mr r26, r3
/* 803D0A20  7C 9B 23 78 */	mr r27, r4
/* 803D0A24  3B DA 00 10 */	addi r30, r26, 0x10
/* 803D0A28  3B 80 00 00 */	li r28, 0
/* 803D0A2C  7F C3 F3 78 */	mr r3, r30
/* 803D0A30  3B BB 00 10 */	addi r29, r27, 0x10
/* 803D0A34  38 80 00 07 */	li r4, 7
/* 803D0A38  4B FF B8 35 */	bl mNpc_GetAnimalMemoryNum
/* 803D0A3C  7C 7F 1B 78 */	mr r31, r3
/* 803D0A40  7F A3 EB 78 */	mr r3, r29
/* 803D0A44  38 80 00 07 */	li r4, 7
/* 803D0A48  4B FF B8 25 */	bl mNpc_GetAnimalMemoryNum
/* 803D0A4C  7C 03 F8 00 */	cmpw r3, r31
/* 803D0A50  40 81 00 0C */	ble lbl_803D0A5C
/* 803D0A54  3B 80 00 01 */	li r28, 1
/* 803D0A58  48 00 00 90 */	b lbl_803D0AE8
lbl_803D0A5C:
/* 803D0A5C  40 82 00 8C */	bne lbl_803D0AE8
/* 803D0A60  7F C3 F3 78 */	mr r3, r30
/* 803D0A64  38 80 00 07 */	li r4, 7
/* 803D0A68  4B FF B8 6D */	bl mNpc_GetAnimalMemoryLetterNum
/* 803D0A6C  7C 7F 1B 78 */	mr r31, r3
/* 803D0A70  7F A3 EB 78 */	mr r3, r29
/* 803D0A74  38 80 00 07 */	li r4, 7
/* 803D0A78  4B FF B8 5D */	bl mNpc_GetAnimalMemoryLetterNum
/* 803D0A7C  7C 03 F8 00 */	cmpw r3, r31
/* 803D0A80  40 81 00 0C */	ble lbl_803D0A8C
/* 803D0A84  3B 80 00 01 */	li r28, 1
/* 803D0A88  48 00 00 60 */	b lbl_803D0AE8
lbl_803D0A8C:
/* 803D0A8C  40 82 00 5C */	bne lbl_803D0AE8
/* 803D0A90  7F C3 F3 78 */	mr r3, r30
/* 803D0A94  38 80 00 07 */	li r4, 7
/* 803D0A98  4B FF B8 B5 */	bl mNpc_GetAnimalMemoryLandKindNum
/* 803D0A9C  7C 7F 1B 78 */	mr r31, r3
/* 803D0AA0  7F A3 EB 78 */	mr r3, r29
/* 803D0AA4  38 80 00 07 */	li r4, 7
/* 803D0AA8  4B FF B8 A5 */	bl mNpc_GetAnimalMemoryLandKindNum
/* 803D0AAC  7C 03 F8 00 */	cmpw r3, r31
/* 803D0AB0  40 81 00 0C */	ble lbl_803D0ABC
/* 803D0AB4  3B 80 00 01 */	li r28, 1
/* 803D0AB8  48 00 00 30 */	b lbl_803D0AE8
lbl_803D0ABC:
/* 803D0ABC  40 82 00 2C */	bne lbl_803D0AE8
/* 803D0AC0  88 7A 00 0D */	lbz r3, 0xd(r26)
/* 803D0AC4  4B FF C0 81 */	bl mNpc_GetSameLooksNum
/* 803D0AC8  7C 7F 1B 78 */	mr r31, r3
/* 803D0ACC  88 7B 00 0D */	lbz r3, 0xd(r27)
/* 803D0AD0  4B FF C0 75 */	bl mNpc_GetSameLooksNum
/* 803D0AD4  7C 03 F8 00 */	cmpw r3, r31
/* 803D0AD8  40 80 00 0C */	bge lbl_803D0AE4
/* 803D0ADC  3B 80 00 01 */	li r28, 1
/* 803D0AE0  48 00 00 08 */	b lbl_803D0AE8
lbl_803D0AE4:
/* 803D0AE4  3B 80 FF FF */	li r28, -1
lbl_803D0AE8:
/* 803D0AE8  7F 83 E3 78 */	mr r3, r28
/* 803D0AEC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D0AF0  4B CC A4 25 */	bl func_8009AF14
/* 803D0AF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D0AF8  7C 08 03 A6 */	mtlr r0
/* 803D0AFC  38 21 00 20 */	addi r1, r1, 0x20
/* 803D0B00  4E 80 00 20 */	blr 
