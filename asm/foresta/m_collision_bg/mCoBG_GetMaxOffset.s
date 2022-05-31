lbl_8038B1BC:
/* 8038B1BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038B1C0  7C 08 02 A6 */	mflr r0
/* 8038B1C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038B1C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8038B1CC  4B D0 FD 05 */	bl func_8009AED0
/* 8038B1D0  7C 7C 1B 78 */	mr r28, r3
/* 8038B1D4  7C 9D 23 78 */	mr r29, r4
/* 8038B1D8  7C FE 3B 78 */	mr r30, r7
/* 8038B1DC  7C A3 2B 78 */	mr r3, r5
/* 8038B1E0  7C C4 33 78 */	mr r4, r6
/* 8038B1E4  4B FF FF B1 */	bl mCoBG_SelectBiggerUnint
/* 8038B1E8  7C 7F 1B 78 */	mr r31, r3
/* 8038B1EC  7F 83 E3 78 */	mr r3, r28
/* 8038B1F0  7F A4 EB 78 */	mr r4, r29
/* 8038B1F4  4B FF FF A1 */	bl mCoBG_SelectBiggerUnint
/* 8038B1F8  7F E4 FB 78 */	mr r4, r31
/* 8038B1FC  4B FF FF 99 */	bl mCoBG_SelectBiggerUnint
/* 8038B200  7F C4 F3 78 */	mr r4, r30
/* 8038B204  4B FF FF 91 */	bl mCoBG_SelectBiggerUnint
/* 8038B208  39 61 00 20 */	addi r11, r1, 0x20
/* 8038B20C  4B D0 FD 11 */	bl func_8009AF1C
/* 8038B210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038B214  7C 08 03 A6 */	mtlr r0
/* 8038B218  38 21 00 20 */	addi r1, r1, 0x20
/* 8038B21C  4E 80 00 20 */	blr 
