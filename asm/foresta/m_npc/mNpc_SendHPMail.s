lbl_803D6E98:
/* 803D6E98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D6E9C  7C 08 02 A6 */	mflr r0
/* 803D6EA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D6EA4  39 61 00 30 */	addi r11, r1, 0x30
/* 803D6EA8  4B CC 40 1D */	bl func_8009AEC4
/* 803D6EAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D6EB0  3B 40 00 00 */	li r26, 0
/* 803D6EB4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D6EB8  3F A3 00 01 */	addis r29, r3, 1
/* 803D6EBC  3F 63 00 02 */	addis r27, r3, 2
/* 803D6EC0  3B E3 00 20 */	addi r31, r3, 0x20
/* 803D6EC4  3B BD 74 38 */	addi r29, r29, 0x7438
/* 803D6EC8  3B 7B 61 20 */	addi r27, r27, 0x6120
lbl_803D6ECC:
/* 803D6ECC  7F A3 EB 78 */	mr r3, r29
/* 803D6ED0  4B FF 45 0D */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D6ED4  2C 03 00 00 */	cmpwi r3, 0
/* 803D6ED8  40 82 00 A8 */	bne lbl_803D6F80
/* 803D6EDC  7F FE FB 78 */	mr r30, r31
/* 803D6EE0  3B 9D 09 00 */	addi r28, r29, 0x900
/* 803D6EE4  3B 20 00 00 */	li r25, 0
lbl_803D6EE8:
/* 803D6EE8  A0 1C 00 06 */	lhz r0, 6(r28)
/* 803D6EEC  28 00 00 00 */	cmplwi r0, 0
/* 803D6EF0  41 82 00 7C */	beq lbl_803D6F6C
/* 803D6EF4  88 1C 00 03 */	lbz r0, 3(r28)
/* 803D6EF8  28 00 00 00 */	cmplwi r0, 0
/* 803D6EFC  41 82 00 70 */	beq lbl_803D6F6C
/* 803D6F00  7F C3 F3 78 */	mr r3, r30
/* 803D6F04  48 00 91 41 */	bl mPr_NullCheckPersonalID
/* 803D6F08  2C 03 00 00 */	cmpwi r3, 0
/* 803D6F0C  40 82 00 60 */	bne lbl_803D6F6C
/* 803D6F10  7F 83 E3 78 */	mr r3, r28
/* 803D6F14  7F 64 DB 78 */	mr r4, r27
/* 803D6F18  48 02 F9 FD */	bl lbRTC_IsOverTime
/* 803D6F1C  2C 03 00 01 */	cmpwi r3, 1
/* 803D6F20  40 82 00 14 */	bne lbl_803D6F34
/* 803D6F24  7F 83 E3 78 */	mr r3, r28
/* 803D6F28  7F 64 DB 78 */	mr r4, r27
/* 803D6F2C  48 02 FB 71 */	bl lbRTC_GetIntervalDays
/* 803D6F30  48 00 00 10 */	b lbl_803D6F40
lbl_803D6F34:
/* 803D6F34  7F 63 DB 78 */	mr r3, r27
/* 803D6F38  7F 84 E3 78 */	mr r4, r28
/* 803D6F3C  48 02 FB 61 */	bl lbRTC_GetIntervalDays
lbl_803D6F40:
/* 803D6F40  2C 03 00 01 */	cmpwi r3, 1
/* 803D6F44  41 80 00 28 */	blt lbl_803D6F6C
/* 803D6F48  7F C3 F3 78 */	mr r3, r30
/* 803D6F4C  7F A4 EB 78 */	mr r4, r29
/* 803D6F50  7F 85 E3 78 */	mr r5, r28
/* 803D6F54  4B FF FE C5 */	bl mNpc_SendHPMail_analysis
/* 803D6F58  2C 03 00 01 */	cmpwi r3, 1
/* 803D6F5C  40 82 00 10 */	bne lbl_803D6F6C
/* 803D6F60  7F 83 E3 78 */	mr r3, r28
/* 803D6F64  38 80 00 01 */	li r4, 1
/* 803D6F68  4B FF EE 4D */	bl mNpc_ClearHPMail
lbl_803D6F6C:
/* 803D6F6C  3B 39 00 01 */	addi r25, r25, 1
/* 803D6F70  3B 9C 00 1C */	addi r28, r28, 0x1c
/* 803D6F74  2C 19 00 04 */	cmpwi r25, 4
/* 803D6F78  3B DE 24 40 */	addi r30, r30, 0x2440
/* 803D6F7C  41 80 FF 6C */	blt lbl_803D6EE8
lbl_803D6F80:
/* 803D6F80  3B 5A 00 01 */	addi r26, r26, 1
/* 803D6F84  3B BD 09 88 */	addi r29, r29, 0x988
/* 803D6F88  2C 1A 00 0F */	cmpwi r26, 0xf
/* 803D6F8C  41 80 FF 40 */	blt lbl_803D6ECC
/* 803D6F90  39 61 00 30 */	addi r11, r1, 0x30
/* 803D6F94  4B CC 3F 7D */	bl func_8009AF10
/* 803D6F98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D6F9C  7C 08 03 A6 */	mtlr r0
/* 803D6FA0  38 21 00 30 */	addi r1, r1, 0x30
/* 803D6FA4  4E 80 00 20 */	blr 
