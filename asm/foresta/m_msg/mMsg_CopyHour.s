lbl_803C13C8:
/* 803C13C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C13CC  7C 08 02 A6 */	mflr r0
/* 803C13D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C13D4  39 61 00 30 */	addi r11, r1, 0x30
/* 803C13D8  4B CD 9A F5 */	bl func_8009AECC
/* 803C13DC  7C 7B 1B 78 */	mr r27, r3
/* 803C13E0  7C 9C 23 78 */	mr r28, r4
/* 803C13E4  7C BD 2B 78 */	mr r29, r5
/* 803C13E8  4B FE E4 21 */	bl mFont_CodeSize_idx_get
/* 803C13EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C13F0  7C 7F 1B 78 */	mr r31, r3
/* 803C13F4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C13F8  38 61 00 08 */	addi r3, r1, 8
/* 803C13FC  3C 84 00 02 */	addis r4, r4, 2
/* 803C1400  88 84 61 22 */	lbz r4, 0x6122(r4)
/* 803C1404  48 02 DC 19 */	bl mString_Load_HourStringFromRom2
/* 803C1408  7C 60 1B 78 */	mr r0, r3
/* 803C140C  7F 63 DB 78 */	mr r3, r27
/* 803C1410  7C 1E 03 78 */	mr r30, r0
/* 803C1414  7F A6 EB 78 */	mr r6, r29
/* 803C1418  7C 9C F2 14 */	add r4, r28, r30
/* 803C141C  7C BC FA 14 */	add r5, r28, r31
/* 803C1420  38 E0 00 00 */	li r7, 0
/* 803C1424  4B FF F9 51 */	bl mMsg_MoveDataCut
/* 803C1428  7F C5 F3 78 */	mr r5, r30
/* 803C142C  7C 7E 1B 78 */	mr r30, r3
/* 803C1430  7C 7B E2 14 */	add r3, r27, r28
/* 803C1434  38 81 00 08 */	addi r4, r1, 8
/* 803C1438  4B FF FA 05 */	bl mMsg_CopyString
/* 803C143C  7F C3 F3 78 */	mr r3, r30
/* 803C1440  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1444  4B CD 9A D5 */	bl func_8009AF18
/* 803C1448  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C144C  7C 08 03 A6 */	mtlr r0
/* 803C1450  38 21 00 30 */	addi r1, r1, 0x30
/* 803C1454  4E 80 00 20 */	blr 
