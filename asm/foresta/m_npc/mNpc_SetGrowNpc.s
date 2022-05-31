lbl_803D2754:
/* 803D2754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D2758  7C 08 02 A6 */	mflr r0
/* 803D275C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D2760  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2764  4B CC 87 71 */	bl func_8009AED4
/* 803D2768  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D276C  7C 7D 1B 78 */	mr r29, r3
/* 803D2770  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803D2774  38 80 00 0F */	li r4, 0xf
/* 803D2778  3F E3 00 01 */	addis r31, r3, 1
/* 803D277C  3B FF 74 38 */	addi r31, r31, 0x7438
/* 803D2780  7F E3 FB 78 */	mr r3, r31
/* 803D2784  4B FF 9E DD */	bl mNpc_UseFreeAnimalInfo
/* 803D2788  7C 7E 1B 78 */	mr r30, r3
/* 803D278C  2C 1E FF FF */	cmpwi r30, -1
/* 803D2790  41 82 00 40 */	beq lbl_803D27D0
/* 803D2794  1C 1E 09 88 */	mulli r0, r30, 0x988
/* 803D2798  7F A3 EB 78 */	mr r3, r29
/* 803D279C  7F FF 02 14 */	add r31, r31, r0
/* 803D27A0  4B FF FD 69 */	bl mNpc_GrowLooksNpcIdx
/* 803D27A4  7C 64 1B 78 */	mr r4, r3
/* 803D27A8  2C 04 FF FF */	cmpwi r4, -1
/* 803D27AC  41 82 00 20 */	beq lbl_803D27CC
/* 803D27B0  7F E3 FB 78 */	mr r3, r31
/* 803D27B4  4B FF FF 4D */	bl mNpc_SetAnimalInfoNpcIdx
/* 803D27B8  A0 7F 00 00 */	lhz r3, 0(r31)
/* 803D27BC  4B FF C8 15 */	bl mNpc_SetHaveAppeared
/* 803D27C0  38 00 00 01 */	li r0, 1
/* 803D27C4  98 1F 08 E9 */	stb r0, 0x8e9(r31)
/* 803D27C8  48 00 00 08 */	b lbl_803D27D0
lbl_803D27CC:
/* 803D27CC  3B C0 FF FF */	li r30, -1
lbl_803D27D0:
/* 803D27D0  7F C3 F3 78 */	mr r3, r30
/* 803D27D4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D27D8  4B CC 87 49 */	bl func_8009AF20
/* 803D27DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D27E0  7C 08 03 A6 */	mtlr r0
/* 803D27E4  38 21 00 20 */	addi r1, r1, 0x20
/* 803D27E8  4E 80 00 20 */	blr 
