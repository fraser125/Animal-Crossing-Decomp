lbl_803D29BC:
/* 803D29BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D29C0  7C 08 02 A6 */	mflr r0
/* 803D29C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D29C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803D29CC  4B CC 85 05 */	bl func_8009AED0
/* 803D29D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D29D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D29D8  3F E3 00 02 */	addis r31, r3, 2
/* 803D29DC  7F FE FB 78 */	mr r30, r31
/* 803D29E0  3F A3 00 01 */	addis r29, r3, 1
/* 803D29E4  3B BD 74 38 */	addi r29, r29, 0x7438
/* 803D29E8  3B FF 61 20 */	addi r31, r31, 0x6120
/* 803D29EC  3B DE 13 A4 */	addi r30, r30, 0x13a4
/* 803D29F0  4B FF 8B 05 */	bl mNpc_GetAnimalNum
/* 803D29F4  2C 03 00 0F */	cmpwi r3, 0xf
/* 803D29F8  3B 80 FF FF */	li r28, -1
/* 803D29FC  40 82 00 E8 */	bne lbl_803D2AE4
/* 803D2A00  A0 1E 00 00 */	lhz r0, 0(r30)
/* 803D2A04  28 00 FF FF */	cmplwi r0, 0xffff
/* 803D2A08  41 82 00 DC */	beq lbl_803D2AE4
/* 803D2A0C  88 1E 00 02 */	lbz r0, 2(r30)
/* 803D2A10  28 00 00 FF */	cmplwi r0, 0xff
/* 803D2A14  41 82 00 D0 */	beq lbl_803D2AE4
/* 803D2A18  88 1E 00 03 */	lbz r0, 3(r30)
/* 803D2A1C  28 00 00 FF */	cmplwi r0, 0xff
/* 803D2A20  41 82 00 C4 */	beq lbl_803D2AE4
/* 803D2A24  7F C4 F3 78 */	mr r4, r30
/* 803D2A28  38 61 00 08 */	addi r3, r1, 8
/* 803D2A2C  48 02 0A 51 */	bl mTM_ymd_2_time
/* 803D2A30  7F E4 FB 78 */	mr r4, r31
/* 803D2A34  38 61 00 08 */	addi r3, r1, 8
/* 803D2A38  48 03 3E DD */	bl lbRTC_IsOverTime
/* 803D2A3C  2C 03 00 01 */	cmpwi r3, 1
/* 803D2A40  40 82 00 14 */	bne lbl_803D2A54
/* 803D2A44  7F E4 FB 78 */	mr r4, r31
/* 803D2A48  38 61 00 08 */	addi r3, r1, 8
/* 803D2A4C  48 03 40 51 */	bl lbRTC_GetIntervalDays
/* 803D2A50  48 00 00 10 */	b lbl_803D2A60
lbl_803D2A54:
/* 803D2A54  7F E3 FB 78 */	mr r3, r31
/* 803D2A58  38 81 00 08 */	addi r4, r1, 8
/* 803D2A5C  48 03 40 41 */	bl lbRTC_GetIntervalDays
lbl_803D2A60:
/* 803D2A60  2C 03 00 0A */	cmpwi r3, 0xa
/* 803D2A64  41 80 00 80 */	blt lbl_803D2AE4
/* 803D2A68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D2A6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D2A70  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803D2A74  2C 00 00 1B */	cmpwi r0, 0x1b
/* 803D2A78  40 82 00 0C */	bne lbl_803D2A84
/* 803D2A7C  3C 63 00 02 */	addis r3, r3, 2
/* 803D2A80  8B 83 61 47 */	lbz r28, 0x6147(r3)
lbl_803D2A84:
/* 803D2A84  7F 83 E3 78 */	mr r3, r28
/* 803D2A88  4B FF E0 7D */	bl mNpc_GetGoodbyAnimalIdx
/* 803D2A8C  2C 03 FF FF */	cmpwi r3, -1
/* 803D2A90  41 82 00 54 */	beq lbl_803D2AE4
/* 803D2A94  1C 03 09 88 */	mulli r0, r3, 0x988
/* 803D2A98  7F BD 02 14 */	add r29, r29, r0
/* 803D2A9C  7F A3 EB 78 */	mr r3, r29
/* 803D2AA0  4B FF 9B 1D */	bl mNpc_CheckFreeAnimalInfo
/* 803D2AA4  2C 03 00 00 */	cmpwi r3, 0
/* 803D2AA8  40 82 00 3C */	bne lbl_803D2AE4
/* 803D2AAC  38 7D 08 98 */	addi r3, r29, 0x898
/* 803D2AB0  4B FF CC E1 */	bl mNpc_DestroyHouse
/* 803D2AB4  3C 60 81 17 */	lis r3, l_mnpc_goodby_mail@ha /* 0x8116C4B8@ha */
/* 803D2AB8  7F A4 EB 78 */	mr r4, r29
/* 803D2ABC  38 63 C4 B8 */	addi r3, r3, l_mnpc_goodby_mail@l /* 0x8116C4B8@l */
/* 803D2AC0  4B FF E3 31 */	bl mNpc_SetGoodbyAnimalMail
/* 803D2AC4  4B FF E6 69 */	bl mNpc_SendRegisteredGoodbyMail
/* 803D2AC8  7F A3 EB 78 */	mr r3, r29
/* 803D2ACC  4B FF 99 71 */	bl mNpc_ClearAnimalInfo
/* 803D2AD0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D2AD4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D2AD8  38 63 00 18 */	addi r3, r3, 0x18
/* 803D2ADC  4B FF 88 91 */	bl mNpc_SubNowNpcMax
/* 803D2AE0  4B FF DB BD */	bl mNpc_RenewRemoveHistory
lbl_803D2AE4:
/* 803D2AE4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2AE8  4B CC 84 35 */	bl func_8009AF1C
/* 803D2AEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D2AF0  7C 08 03 A6 */	mtlr r0
/* 803D2AF4  38 21 00 20 */	addi r1, r1, 0x20
/* 803D2AF8  4E 80 00 20 */	blr 
