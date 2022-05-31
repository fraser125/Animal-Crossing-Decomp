lbl_803B83CC:
/* 803B83CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B83D0  7C 08 02 A6 */	mflr r0
/* 803B83D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B83D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803B83DC  4B CE 2A F5 */	bl func_8009AED0
/* 803B83E0  7C 7C 1B 78 */	mr r28, r3
/* 803B83E4  7C 9D 23 78 */	mr r29, r4
/* 803B83E8  7C BE 2B 78 */	mr r30, r5
/* 803B83EC  3B E0 00 00 */	li r31, 0
lbl_803B83F0:
/* 803B83F0  88 7D 00 00 */	lbz r3, 0(r29)
/* 803B83F4  A8 1E 00 00 */	lha r0, 0(r30)
/* 803B83F8  7C 63 02 14 */	add r3, r3, r0
/* 803B83FC  4B FF FF AD */	bl mEnv_LimitChkRGBColor
/* 803B8400  3B FF 00 01 */	addi r31, r31, 1
/* 803B8404  98 7C 00 00 */	stb r3, 0(r28)
/* 803B8408  2C 1F 00 03 */	cmpwi r31, 3
/* 803B840C  3B 9C 00 01 */	addi r28, r28, 1
/* 803B8410  3B BD 00 01 */	addi r29, r29, 1
/* 803B8414  3B DE 00 02 */	addi r30, r30, 2
/* 803B8418  41 80 FF D8 */	blt lbl_803B83F0
/* 803B841C  39 61 00 20 */	addi r11, r1, 0x20
/* 803B8420  4B CE 2A FD */	bl func_8009AF1C
/* 803B8424  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B8428  7C 08 03 A6 */	mtlr r0
/* 803B842C  38 21 00 20 */	addi r1, r1, 0x20
/* 803B8430  4E 80 00 20 */	blr 
