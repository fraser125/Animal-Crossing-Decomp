lbl_803A96D8:
/* 803A96D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A96DC  7C 08 02 A6 */	mflr r0
/* 803A96E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A96E4  39 61 00 30 */	addi r11, r1, 0x30
/* 803A96E8  4B CF 17 DD */	bl func_8009AEC4
/* 803A96EC  7D 1D 43 78 */	mr r29, r8
/* 803A96F0  7D 3E 4B 78 */	mr r30, r9
/* 803A96F4  7C 79 1B 78 */	mr r25, r3
/* 803A96F8  7C 9A 23 78 */	mr r26, r4
/* 803A96FC  7C DB 33 78 */	mr r27, r6
/* 803A9700  7C FC 3B 78 */	mr r28, r7
/* 803A9704  7D 5F 53 78 */	mr r31, r10
/* 803A9708  7F A3 EB 78 */	mr r3, r29
/* 803A970C  7F C4 F3 78 */	mr r4, r30
/* 803A9710  4B FF BA ED */	bl mFI_GetUtNum
/* 803A9714  54 60 08 3C */	slwi r0, r3, 1
/* 803A9718  7F 44 D3 78 */	mr r4, r26
/* 803A971C  7F 39 02 14 */	add r25, r25, r0
/* 803A9720  7F E5 FB 78 */	mr r5, r31
/* 803A9724  7F 23 CB 78 */	mr r3, r25
/* 803A9728  4B FF FF 69 */	bl mFI_SetFGStructureKeep
/* 803A972C  7F 63 DB 78 */	mr r3, r27
/* 803A9730  7F 84 E3 78 */	mr r4, r28
/* 803A9734  7F A5 EB 78 */	mr r5, r29
/* 803A9738  7F C6 F3 78 */	mr r6, r30
/* 803A973C  4B FF F7 79 */	bl mFI_BkUtNum2DepositOFF
/* 803A9740  57 63 20 36 */	slwi r3, r27, 4
/* 803A9744  57 80 20 36 */	slwi r0, r28, 4
/* 803A9748  7C 7D 1A 14 */	add r3, r29, r3
/* 803A974C  7C 9E 02 14 */	add r4, r30, r0
/* 803A9750  4B FE 88 F1 */	bl mCoBG_Ut2SetDefaultOffset
/* 803A9754  38 60 00 01 */	li r3, 1
/* 803A9758  39 61 00 30 */	addi r11, r1, 0x30
/* 803A975C  4B CF 17 B5 */	bl func_8009AF10
/* 803A9760  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A9764  7C 08 03 A6 */	mtlr r0
/* 803A9768  38 21 00 30 */	addi r1, r1, 0x30
/* 803A976C  4E 80 00 20 */	blr 
