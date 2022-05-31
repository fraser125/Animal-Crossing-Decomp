lbl_803A736C:
/* 803A736C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A7370  7C 08 02 A6 */	mflr r0
/* 803A7374  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A7378  39 61 00 30 */	addi r11, r1, 0x30
/* 803A737C  4B CF 3B 55 */	bl func_8009AED0
/* 803A7380  7C 7C 1B 78 */	mr r28, r3
/* 803A7384  7C 9D 23 78 */	mr r29, r4
/* 803A7388  3B C0 00 00 */	li r30, 0
/* 803A738C  4B FF DA 4D */	bl mFI_GetBlockZMax
/* 803A7390  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 803A7394  4B FF D9 FD */	bl mFI_GetBlockXMax
/* 803A7398  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803A739C  7F 83 E3 78 */	mr r3, r28
/* 803A73A0  7F A4 EB 78 */	mr r4, r29
/* 803A73A4  7F E6 FB 78 */	mr r6, r31
/* 803A73A8  4B FF DE FD */	bl mFI_UtNumCheck
/* 803A73AC  2C 03 00 00 */	cmpwi r3, 0
/* 803A73B0  41 82 00 64 */	beq lbl_803A7414
/* 803A73B4  7F 85 E3 78 */	mr r5, r28
/* 803A73B8  7F A6 EB 78 */	mr r6, r29
/* 803A73BC  38 61 00 14 */	addi r3, r1, 0x14
/* 803A73C0  38 81 00 10 */	addi r4, r1, 0x10
/* 803A73C4  4B FF E4 AD */	bl mFI_UtNum2BlockNum
/* 803A73C8  2C 03 00 00 */	cmpwi r3, 0
/* 803A73CC  41 82 00 48 */	beq lbl_803A7414
/* 803A73D0  7F 85 E3 78 */	mr r5, r28
/* 803A73D4  7F A6 EB 78 */	mr r6, r29
/* 803A73D8  38 61 00 0C */	addi r3, r1, 0xc
/* 803A73DC  38 81 00 08 */	addi r4, r1, 8
/* 803A73E0  4B FF E4 E9 */	bl mFI_GetUtNumInBK
/* 803A73E4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803A73E8  38 A0 00 01 */	li r5, 1
/* 803A73EC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803A73F0  4B FF FD E9 */	bl mFI_BkNum2UtFGTop_layer
/* 803A73F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 803A73F8  41 82 00 1C */	beq lbl_803A7414
/* 803A73FC  80 01 00 08 */	lwz r0, 8(r1)
/* 803A7400  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A7404  54 00 20 36 */	slwi r0, r0, 4
/* 803A7408  7C 03 02 14 */	add r0, r3, r0
/* 803A740C  54 00 08 3C */	slwi r0, r0, 1
/* 803A7410  7F DE 02 14 */	add r30, r30, r0
lbl_803A7414:
/* 803A7414  7F C3 F3 78 */	mr r3, r30
/* 803A7418  39 61 00 30 */	addi r11, r1, 0x30
/* 803A741C  4B CF 3B 01 */	bl func_8009AF1C
/* 803A7420  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A7424  7C 08 03 A6 */	mtlr r0
/* 803A7428  38 21 00 30 */	addi r1, r1, 0x30
/* 803A742C  4E 80 00 20 */	blr 
