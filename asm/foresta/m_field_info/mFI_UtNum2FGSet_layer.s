lbl_803A7760:
/* 803A7760  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A7764  7C 08 02 A6 */	mflr r0
/* 803A7768  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A776C  39 61 00 30 */	addi r11, r1, 0x30
/* 803A7770  4B CF 37 59 */	bl func_8009AEC8
/* 803A7774  7C 7A 1B 78 */	mr r26, r3
/* 803A7778  7C 9B 23 78 */	mr r27, r4
/* 803A777C  7C BC 2B 78 */	mr r28, r5
/* 803A7780  7C DD 33 78 */	mr r29, r6
/* 803A7784  3B C0 00 00 */	li r30, 0
/* 803A7788  4B FF D6 51 */	bl mFI_GetBlockZMax
/* 803A778C  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 803A7790  4B FF D6 01 */	bl mFI_GetBlockXMax
/* 803A7794  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803A7798  7F 63 DB 78 */	mr r3, r27
/* 803A779C  7F 84 E3 78 */	mr r4, r28
/* 803A77A0  7F E6 FB 78 */	mr r6, r31
/* 803A77A4  4B FF DB 01 */	bl mFI_UtNumCheck
/* 803A77A8  2C 03 00 01 */	cmpwi r3, 1
/* 803A77AC  40 82 00 68 */	bne lbl_803A7814
/* 803A77B0  7F 65 DB 78 */	mr r5, r27
/* 803A77B4  7F 86 E3 78 */	mr r6, r28
/* 803A77B8  38 61 00 14 */	addi r3, r1, 0x14
/* 803A77BC  38 81 00 10 */	addi r4, r1, 0x10
/* 803A77C0  4B FF E0 B1 */	bl mFI_UtNum2BlockNum
/* 803A77C4  2C 03 00 01 */	cmpwi r3, 1
/* 803A77C8  40 82 00 4C */	bne lbl_803A7814
/* 803A77CC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803A77D0  7F A5 EB 78 */	mr r5, r29
/* 803A77D4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803A77D8  4B FF FA 01 */	bl mFI_BkNum2UtFGTop_layer
/* 803A77DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 803A77E0  41 82 00 34 */	beq lbl_803A7814
/* 803A77E4  7F 65 DB 78 */	mr r5, r27
/* 803A77E8  7F 86 E3 78 */	mr r6, r28
/* 803A77EC  38 61 00 0C */	addi r3, r1, 0xc
/* 803A77F0  38 81 00 08 */	addi r4, r1, 8
/* 803A77F4  4B FF E0 D5 */	bl mFI_GetUtNumInBK
/* 803A77F8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A77FC  80 81 00 08 */	lwz r4, 8(r1)
/* 803A7800  4B FF D9 FD */	bl mFI_GetUtNum
/* 803A7804  54 60 08 3C */	slwi r0, r3, 1
/* 803A7808  7F 5F 03 2E */	sthx r26, r31, r0
/* 803A780C  48 00 06 29 */	bl mFI_SetFGUpData
/* 803A7810  3B C0 00 01 */	li r30, 1
lbl_803A7814:
/* 803A7814  7F C3 F3 78 */	mr r3, r30
/* 803A7818  39 61 00 30 */	addi r11, r1, 0x30
/* 803A781C  4B CF 36 F9 */	bl func_8009AF14
/* 803A7820  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A7824  7C 08 03 A6 */	mtlr r0
/* 803A7828  38 21 00 30 */	addi r1, r1, 0x30
/* 803A782C  4E 80 00 20 */	blr 
