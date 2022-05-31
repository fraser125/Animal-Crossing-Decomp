lbl_80383DB0:
/* 80383DB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80383DB4  7C 08 02 A6 */	mflr r0
/* 80383DB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80383DBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80383DC0  4B D1 71 11 */	bl func_8009AED0
/* 80383DC4  7C 7C 1B 78 */	mr r28, r3
/* 80383DC8  7C 9D 23 78 */	mr r29, r4
/* 80383DCC  7C BE 2B 78 */	mr r30, r5
/* 80383DD0  7C FF 3B 78 */	mr r31, r7
/* 80383DD4  48 03 B8 D5 */	bl func_803BF6A8
/* 80383DD8  7F E4 FB 78 */	mr r4, r31
/* 80383DDC  7F 85 E3 78 */	mr r5, r28
/* 80383DE0  7F A6 EB 78 */	mr r6, r29
/* 80383DE4  7F C7 F3 78 */	mr r7, r30
/* 80383DE8  39 00 00 05 */	li r8, 5
/* 80383DEC  39 20 00 00 */	li r9, 0
/* 80383DF0  48 03 D7 89 */	bl mMsg_CopyFree
/* 80383DF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80383DF8  4B D1 71 25 */	bl func_8009AF1C
/* 80383DFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80383E00  7C 08 03 A6 */	mtlr r0
/* 80383E04  38 21 00 20 */	addi r1, r1, 0x20
/* 80383E08  4E 80 00 20 */	blr 
