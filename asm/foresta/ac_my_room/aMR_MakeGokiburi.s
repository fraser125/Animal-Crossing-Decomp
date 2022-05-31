lbl_80477560:
/* 80477560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80477564  7C 08 02 A6 */	mflr r0
/* 80477568  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047756C  39 61 00 20 */	addi r11, r1, 0x20
/* 80477570  4B C2 39 65 */	bl func_8009AED4
/* 80477574  7C 7D 1B 78 */	mr r29, r3
/* 80477578  7C 9E 23 78 */	mr r30, r4
/* 8047757C  7C BF 2B 78 */	mr r31, r5
/* 80477580  4B F0 E3 19 */	bl mCkRh_NowSceneGokiFamilyCount
/* 80477584  2C 03 00 00 */	cmpwi r3, 0
/* 80477588  40 81 00 64 */	ble lbl_804775EC
/* 8047758C  4B F0 E3 F9 */	bl mCkRh_GetCanLookGokiCount
/* 80477590  2C 03 00 03 */	cmpwi r3, 3
/* 80477594  40 80 00 58 */	bge lbl_804775EC
/* 80477598  7F A3 EB 78 */	mr r3, r29
/* 8047759C  7F E4 FB 78 */	mr r4, r31
/* 804775A0  7F C6 F3 78 */	mr r6, r30
/* 804775A4  38 A0 00 00 */	li r5, 0
/* 804775A8  4B FF FA 25 */	bl aMR_MakeIndoorGoki
/* 804775AC  2C 03 00 00 */	cmpwi r3, 0
/* 804775B0  41 82 00 3C */	beq lbl_804775EC
/* 804775B4  38 60 00 01 */	li r3, 1
/* 804775B8  4B F0 E3 81 */	bl mCkRh_CalcCanLookGokiCount
/* 804775BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804775C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804775C4  3C 63 00 02 */	addis r3, r3, 2
/* 804775C8  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 804775CC  28 03 00 00 */	cmplwi r3, 0
/* 804775D0  41 82 00 1C */	beq lbl_804775EC
/* 804775D4  80 63 00 00 */	lwz r3, 0(r3)
/* 804775D8  28 03 00 00 */	cmplwi r3, 0
/* 804775DC  41 82 00 10 */	beq lbl_804775EC
/* 804775E0  80 83 05 A0 */	lwz r4, 0x5a0(r3)
/* 804775E4  38 60 00 01 */	li r3, 1
/* 804775E8  4B F0 E1 D1 */	bl mCkRh_MinusGokiN_NowRoom
lbl_804775EC:
/* 804775EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804775F0  4B C2 39 31 */	bl func_8009AF20
/* 804775F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804775F8  7C 08 03 A6 */	mtlr r0
/* 804775FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80477600  4E 80 00 20 */	blr 
