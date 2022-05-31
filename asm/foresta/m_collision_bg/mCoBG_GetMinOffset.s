lbl_8038B220:
/* 8038B220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038B224  7C 08 02 A6 */	mflr r0
/* 8038B228  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038B22C  39 61 00 20 */	addi r11, r1, 0x20
/* 8038B230  4B D0 FC A1 */	bl func_8009AED0
/* 8038B234  7C 7C 1B 78 */	mr r28, r3
/* 8038B238  7C 9D 23 78 */	mr r29, r4
/* 8038B23C  7C FE 3B 78 */	mr r30, r7
/* 8038B240  7C A3 2B 78 */	mr r3, r5
/* 8038B244  7C C4 33 78 */	mr r4, r6
/* 8038B248  4B FF FF 61 */	bl mCoBG_SelectSmallerUnint
/* 8038B24C  7C 7F 1B 78 */	mr r31, r3
/* 8038B250  7F 83 E3 78 */	mr r3, r28
/* 8038B254  7F A4 EB 78 */	mr r4, r29
/* 8038B258  4B FF FF 51 */	bl mCoBG_SelectSmallerUnint
/* 8038B25C  7F E4 FB 78 */	mr r4, r31
/* 8038B260  4B FF FF 49 */	bl mCoBG_SelectSmallerUnint
/* 8038B264  7F C4 F3 78 */	mr r4, r30
/* 8038B268  4B FF FF 41 */	bl mCoBG_SelectSmallerUnint
/* 8038B26C  39 61 00 20 */	addi r11, r1, 0x20
/* 8038B270  4B D0 FC AD */	bl func_8009AF1C
/* 8038B274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038B278  7C 08 03 A6 */	mtlr r0
/* 8038B27C  38 21 00 20 */	addi r1, r1, 0x20
/* 8038B280  4E 80 00 20 */	blr 
