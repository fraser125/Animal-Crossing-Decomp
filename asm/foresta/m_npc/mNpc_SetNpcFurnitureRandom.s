lbl_803D0590:
/* 803D0590  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D0594  7C 08 02 A6 */	mflr r0
/* 803D0598  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D059C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D05A0  4B CC A9 2D */	bl func_8009AECC
/* 803D05A4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803D05A8  7C 7B 1B 78 */	mr r27, r3
/* 803D05AC  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803D05B0  7C 9C 23 78 */	mr r28, r4
/* 803D05B4  3F E3 00 02 */	addis r31, r3, 2
/* 803D05B8  3B A0 00 00 */	li r29, 0
/* 803D05BC  3F C3 00 01 */	addis r30, r3, 1
/* 803D05C0  3B FF 61 64 */	addi r31, r31, 0x6164
/* 803D05C4  3B DE 74 38 */	addi r30, r30, 0x7438
lbl_803D05C8:
/* 803D05C8  7F C3 F3 78 */	mr r3, r30
/* 803D05CC  4B FF AE 11 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D05D0  2C 03 00 00 */	cmpwi r3, 0
/* 803D05D4  40 82 00 18 */	bne lbl_803D05EC
/* 803D05D8  7F 63 DB 78 */	mr r3, r27
/* 803D05DC  7F E4 FB 78 */	mr r4, r31
/* 803D05E0  7F 85 E3 78 */	mr r5, r28
/* 803D05E4  4B FF FE 5D */	bl mNpc_DecideNpcFurniture
/* 803D05E8  B0 7F 00 34 */	sth r3, 0x34(r31)
lbl_803D05EC:
/* 803D05EC  3B BD 00 01 */	addi r29, r29, 1
/* 803D05F0  3B DE 09 88 */	addi r30, r30, 0x988
/* 803D05F4  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803D05F8  3B FF 00 38 */	addi r31, r31, 0x38
/* 803D05FC  41 80 FF CC */	blt lbl_803D05C8
/* 803D0600  39 61 00 20 */	addi r11, r1, 0x20
/* 803D0604  4B CC A9 15 */	bl func_8009AF18
/* 803D0608  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D060C  7C 08 03 A6 */	mtlr r0
/* 803D0610  38 21 00 20 */	addi r1, r1, 0x20
/* 803D0614  4E 80 00 20 */	blr 
