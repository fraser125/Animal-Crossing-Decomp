lbl_805C239C:
/* 805C239C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C23A0  7C 08 02 A6 */	mflr r0
/* 805C23A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C23A8  39 61 00 30 */	addi r11, r1, 0x30
/* 805C23AC  4B AD 8B 15 */	bl func_8009AEC0
/* 805C23B0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805C23B4  7C 7F 1B 78 */	mr r31, r3
/* 805C23B8  3B 84 85 38 */	addi r28, r4, common_data@l /* 0x81138538@l */
/* 805C23BC  3B A0 00 00 */	li r29, 0
/* 805C23C0  3C 7C 00 02 */	addis r3, r28, 2
/* 805C23C4  3B 5F 00 2C */	addi r26, r31, 0x2c
/* 805C23C8  8B 63 60 03 */	lbz r27, 0x6003(r3)
/* 805C23CC  7F BE EB 78 */	mr r30, r29
/* 805C23D0  3B 00 00 00 */	li r24, 0
/* 805C23D4  9B BF 00 08 */	stb r29, 8(r31)
lbl_805C23D8:
/* 805C23D8  7C 18 D8 00 */	cmpw r24, r27
/* 805C23DC  41 82 00 3C */	beq lbl_805C2418
/* 805C23E0  7C 7C F2 14 */	add r3, r28, r30
/* 805C23E4  3B 23 00 20 */	addi r25, r3, 0x20
/* 805C23E8  7F 23 CB 78 */	mr r3, r25
/* 805C23EC  4B E1 DC 59 */	bl mPr_NullCheckPersonalID
/* 805C23F0  2C 03 00 00 */	cmpwi r3, 0
/* 805C23F4  40 82 00 24 */	bne lbl_805C2418
/* 805C23F8  7F 43 D3 78 */	mr r3, r26
/* 805C23FC  7F 24 CB 78 */	mr r4, r25
/* 805C2400  4B E1 DD 21 */	bl mPr_CopyPersonalID
/* 805C2404  9B BA 00 14 */	stb r29, 0x14(r26)
/* 805C2408  3B 5A 00 16 */	addi r26, r26, 0x16
/* 805C240C  88 7F 00 08 */	lbz r3, 8(r31)
/* 805C2410  38 03 00 01 */	addi r0, r3, 1
/* 805C2414  98 1F 00 08 */	stb r0, 8(r31)
lbl_805C2418:
/* 805C2418  3B 18 00 01 */	addi r24, r24, 1
/* 805C241C  3B DE 24 40 */	addi r30, r30, 0x2440
/* 805C2420  2C 18 00 04 */	cmpwi r24, 4
/* 805C2424  41 80 FF B4 */	blt lbl_805C23D8
/* 805C2428  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C242C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C2430  3C 63 00 02 */	addis r3, r3, 2
/* 805C2434  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805C2438  4B E1 EC 41 */	bl mPr_CheckMuseumAddress
/* 805C243C  2C 03 00 00 */	cmpwi r3, 0
/* 805C2440  41 82 00 24 */	beq lbl_805C2464
/* 805C2444  7F 43 D3 78 */	mr r3, r26
/* 805C2448  4B E0 3D 1D */	bl mMsm_GetMuseumMailName
/* 805C244C  88 7F 00 08 */	lbz r3, 8(r31)
/* 805C2450  38 00 00 01 */	li r0, 1
/* 805C2454  38 63 00 01 */	addi r3, r3, 1
/* 805C2458  98 7F 00 08 */	stb r3, 8(r31)
/* 805C245C  98 1F 00 06 */	stb r0, 6(r31)
/* 805C2460  48 00 00 0C */	b lbl_805C246C
lbl_805C2464:
/* 805C2464  38 00 00 00 */	li r0, 0
/* 805C2468  98 1F 00 06 */	stb r0, 6(r31)
lbl_805C246C:
/* 805C246C  39 61 00 30 */	addi r11, r1, 0x30
/* 805C2470  4B AD 8A 9D */	bl func_8009AF0C
/* 805C2474  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C2478  7C 08 03 A6 */	mtlr r0
/* 805C247C  38 21 00 30 */	addi r1, r1, 0x30
/* 805C2480  4E 80 00 20 */	blr 
