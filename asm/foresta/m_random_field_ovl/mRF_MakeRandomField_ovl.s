lbl_8050B1D8:
/* 8050B1D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050B1DC  7C 08 02 A6 */	mflr r0
/* 8050B1E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050B1E4  39 61 00 30 */	addi r11, r1, 0x30
/* 8050B1E8  4B B8 FC DD */	bl func_8009AEC4
/* 8050B1EC  3C C0 81 1D */	lis r6, data_811D3208@ha /* 0x811D3208@ha */
/* 8050B1F0  7C 79 1B 78 */	mr r25, r3
/* 8050B1F4  7C 9A 23 78 */	mr r26, r4
/* 8050B1F8  7C BB 2B 78 */	mr r27, r5
/* 8050B1FC  3B E6 32 08 */	addi r31, r6, data_811D3208@l /* 0x811D3208@l */
/* 8050B200  3B C0 00 00 */	li r30, 0
/* 8050B204  4B FF FF 99 */	bl mRF_GetRandomStepMode
/* 8050B208  7C 7C 1B 78 */	mr r28, r3
/* 8050B20C  4B FF FE B9 */	bl mRF_MakePerfectBit
/* 8050B210  7C 7D 1B 78 */	mr r29, r3
/* 8050B214  48 00 00 B0 */	b lbl_8050B2C4
lbl_8050B218:
/* 8050B218  7F 23 CB 78 */	mr r3, r25
/* 8050B21C  4B FF FE 3D */	bl mRF_InitCombTable
/* 8050B220  7F 85 E3 78 */	mr r5, r28
/* 8050B224  38 7F 02 34 */	addi r3, r31, 0x234
/* 8050B228  38 9F 02 7C */	addi r4, r31, 0x27c
/* 8050B22C  4B FF FF 3D */	bl mRF_MakeBaseLandform
/* 8050B230  38 7F 02 34 */	addi r3, r31, 0x234
/* 8050B234  4B FF F6 35 */	bl mRF_MakeFlatPlaceInfomation
/* 8050B238  38 7F 02 34 */	addi r3, r31, 0x234
/* 8050B23C  4B FF FD 81 */	bl mRF_SetMarinBlock
/* 8050B240  7F 84 E3 78 */	mr r4, r28
/* 8050B244  38 7F 02 34 */	addi r3, r31, 0x234
/* 8050B248  4B FF F5 95 */	bl mRF_SetBridgeAndSlopeBlock
/* 8050B24C  7C 7E 1B 78 */	mr r30, r3
/* 8050B250  38 7F 02 34 */	addi r3, r31, 0x234
/* 8050B254  4B FF F9 E9 */	bl mRF_SetNeedleworkAndWharfBlock
/* 8050B258  7F DE 1B 78 */	or r30, r30, r3
/* 8050B25C  38 7F 02 34 */	addi r3, r31, 0x234
/* 8050B260  4B FF FA 9D */	bl mRF_SetUniqueFlatBlock
/* 8050B264  7F DE 1B 78 */	or r30, r30, r3
/* 8050B268  38 7F 02 34 */	addi r3, r31, 0x234
/* 8050B26C  4B FF FB 85 */	bl mRF_SetUniqueRailBlock
/* 8050B270  38 7F 02 34 */	addi r3, r31, 0x234
/* 8050B274  4B FF FC ED */	bl mRF_SetPoolBlock
/* 8050B278  7F DE 1B 78 */	or r30, r30, r3
/* 8050B27C  38 7F 02 34 */	addi r3, r31, 0x234
/* 8050B280  7F C4 F3 78 */	mr r4, r30
/* 8050B284  4B FF FD F9 */	bl mRF_SetSeaBlockWithBridgeRiver
/* 8050B288  7F DE 1B 78 */	or r30, r30, r3
/* 8050B28C  38 7F 02 C4 */	addi r3, r31, 0x2c4
/* 8050B290  38 9F 02 34 */	addi r4, r31, 0x234
/* 8050B294  4B FF F5 91 */	bl mRF_MakeBaseHeightTable
/* 8050B298  7F C3 F3 78 */	mr r3, r30
/* 8050B29C  7F A4 EB 78 */	mr r4, r29
/* 8050B2A0  4B FF FE F9 */	bl mRF_ReportRandomFieldBitResult
/* 8050B2A4  7F 23 CB 78 */	mr r3, r25
/* 8050B2A8  7F 44 D3 78 */	mr r4, r26
/* 8050B2AC  7F 65 DB 78 */	mr r5, r27
/* 8050B2B0  38 DF 02 34 */	addi r6, r31, 0x234
/* 8050B2B4  4B FF EF 21 */	bl mRF_SelectBlock
/* 8050B2B8  7F 23 CB 78 */	mr r3, r25
/* 8050B2BC  38 9F 02 C4 */	addi r4, r31, 0x2c4
/* 8050B2C0  4B FF F1 8D */	bl mRF_CopyBlockBaseHeightData
lbl_8050B2C4:
/* 8050B2C4  7F A0 F0 38 */	and r0, r29, r30
/* 8050B2C8  7C 1D 00 00 */	cmpw r29, r0
/* 8050B2CC  40 82 FF 4C */	bne lbl_8050B218
/* 8050B2D0  39 61 00 30 */	addi r11, r1, 0x30
/* 8050B2D4  4B B8 FC 3D */	bl func_8009AF10
/* 8050B2D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050B2DC  7C 08 03 A6 */	mtlr r0
/* 8050B2E0  38 21 00 30 */	addi r1, r1, 0x30
/* 8050B2E4  4E 80 00 20 */	blr 
