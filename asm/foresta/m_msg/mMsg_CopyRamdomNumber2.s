lbl_803C1AA8:
/* 803C1AA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C1AAC  7C 08 02 A6 */	mflr r0
/* 803C1AB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C1AB4  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1AB8  4B CD 94 15 */	bl func_8009AECC
/* 803C1ABC  7C 7B 1B 78 */	mr r27, r3
/* 803C1AC0  7C 9C 23 78 */	mr r28, r4
/* 803C1AC4  7C BD 2B 78 */	mr r29, r5
/* 803C1AC8  4B FE DD 41 */	bl mFont_CodeSize_idx_get
/* 803C1ACC  7C 7F 1B 78 */	mr r31, r3
/* 803C1AD0  38 60 00 00 */	li r3, 0
/* 803C1AD4  38 80 00 64 */	li r4, 0x64
/* 803C1AD8  4B FF 93 71 */	bl get_random_timer
/* 803C1ADC  7C 6A 07 34 */	extsh r10, r3
/* 803C1AE0  38 A0 00 64 */	li r5, 0x64
/* 803C1AE4  7C 0A 2B D6 */	divw r0, r10, r5
/* 803C1AE8  38 61 00 08 */	addi r3, r1, 8
/* 803C1AEC  38 80 00 02 */	li r4, 2
/* 803C1AF0  38 C0 00 02 */	li r6, 2
/* 803C1AF4  38 E0 00 01 */	li r7, 1
/* 803C1AF8  39 00 00 00 */	li r8, 0
/* 803C1AFC  7C 00 29 D6 */	mullw r0, r0, r5
/* 803C1B00  39 20 00 01 */	li r9, 1
/* 803C1B04  7C 00 50 50 */	subf r0, r0, r10
/* 803C1B08  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803C1B0C  4B FE D9 6D */	bl mFont_UnintToString
/* 803C1B10  7C 60 1B 78 */	mr r0, r3
/* 803C1B14  7F 63 DB 78 */	mr r3, r27
/* 803C1B18  7C 1E 03 78 */	mr r30, r0
/* 803C1B1C  7F A6 EB 78 */	mr r6, r29
/* 803C1B20  7C 9C F2 14 */	add r4, r28, r30
/* 803C1B24  7C BC FA 14 */	add r5, r28, r31
/* 803C1B28  38 E0 00 00 */	li r7, 0
/* 803C1B2C  4B FF F2 49 */	bl mMsg_MoveDataCut
/* 803C1B30  7F C5 F3 78 */	mr r5, r30
/* 803C1B34  7C 7E 1B 78 */	mr r30, r3
/* 803C1B38  7C 7B E2 14 */	add r3, r27, r28
/* 803C1B3C  38 81 00 08 */	addi r4, r1, 8
/* 803C1B40  4B FF F2 FD */	bl mMsg_CopyString
/* 803C1B44  7F C3 F3 78 */	mr r3, r30
/* 803C1B48  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1B4C  4B CD 93 CD */	bl func_8009AF18
/* 803C1B50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C1B54  7C 08 03 A6 */	mtlr r0
/* 803C1B58  38 21 00 30 */	addi r1, r1, 0x30
/* 803C1B5C  4E 80 00 20 */	blr 
