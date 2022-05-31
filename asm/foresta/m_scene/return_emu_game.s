lbl_803F13BC:
/* 803F13BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F13C0  7C 08 02 A6 */	mflr r0
/* 803F13C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F13C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803F13CC  4B CA 9B 09 */	bl func_8009AED4
/* 803F13D0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F13D4  7C 7D 1B 78 */	mr r29, r3
/* 803F13D8  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803F13DC  38 A0 00 14 */	li r5, 0x14
/* 803F13E0  3F C3 00 03 */	addis r30, r3, 3
/* 803F13E4  7F DF F3 78 */	mr r31, r30
/* 803F13E8  3B DE 85 30 */	addi r30, r30, -31440
/* 803F13EC  3B FF 85 7C */	addi r31, r31, -31364
/* 803F13F0  7F C3 F3 78 */	mr r3, r30
/* 803F13F4  7F E4 FB 78 */	mr r4, r31
/* 803F13F8  4B FC 96 2D */	bl func_803BAA24
/* 803F13FC  80 9F 00 00 */	lwz r4, 0(r31)
/* 803F1400  38 00 00 00 */	li r0, 0
/* 803F1404  7F A3 EB 78 */	mr r3, r29
/* 803F1408  38 84 00 01 */	addi r4, r4, 1
/* 803F140C  90 9E 00 00 */	stw r4, 0(r30)
/* 803F1410  90 1D 00 74 */	stw r0, 0x74(r29)
/* 803F1414  48 01 3E 55 */	bl game_goto_next_game_play
/* 803F1418  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F141C  80 1F 00 00 */	lwz r0, 0(r31)
/* 803F1420  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F1424  90 03 00 14 */	stw r0, 0x14(r3)
/* 803F1428  39 61 00 20 */	addi r11, r1, 0x20
/* 803F142C  4B CA 9A F5 */	bl func_8009AF20
/* 803F1430  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F1434  7C 08 03 A6 */	mtlr r0
/* 803F1438  38 21 00 20 */	addi r1, r1, 0x20
/* 803F143C  4E 80 00 20 */	blr 
