lbl_803C9974:
/* 803C9974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9978  7C 08 02 A6 */	mflr r0
/* 803C997C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9984  54 7F 07 BE */	clrlwi r31, r3, 0x1e
/* 803C9988  93 C1 00 08 */	stw r30, 8(r1)
/* 803C998C  7C 7E 1B 78 */	mr r30, r3
/* 803C9990  7F E3 FB 78 */	mr r3, r31
/* 803C9994  4B FF FE 71 */	bl func_803C9804
/* 803C9998  7F E3 FB 78 */	mr r3, r31
/* 803C999C  4B FF FE B5 */	bl mNW_InitMyOriginalName
/* 803C99A0  7F E3 FB 78 */	mr r3, r31
/* 803C99A4  4B FF FF 19 */	bl mNW_InitMyOriginalTexture
/* 803C99A8  1C 9E 24 40 */	mulli r4, r30, 0x2440
/* 803C99AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C99B0  3B C0 00 04 */	li r30, 4
/* 803C99B4  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803C99B8  7F E0 22 14 */	add r31, r0, r4
lbl_803C99BC:
/* 803C99BC  57 C0 07 7E */	clrlwi r0, r30, 0x1d
/* 803C99C0  1C 60 02 20 */	mulli r3, r0, 0x220
/* 803C99C4  38 63 12 60 */	addi r3, r3, 0x1260
/* 803C99C8  7C 7F 1A 14 */	add r3, r31, r3
/* 803C99CC  48 00 03 E5 */	bl mNW_InitOriginalData
/* 803C99D0  3B DE 00 01 */	addi r30, r30, 1
/* 803C99D4  2C 1E 00 08 */	cmpwi r30, 8
/* 803C99D8  41 80 FF E4 */	blt lbl_803C99BC
/* 803C99DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C99E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C99E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C99E8  7C 08 03 A6 */	mtlr r0
/* 803C99EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C99F0  4E 80 00 20 */	blr 
