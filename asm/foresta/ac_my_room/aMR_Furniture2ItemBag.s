lbl_8047B254:
/* 8047B254  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8047B258  7C 08 02 A6 */	mflr r0
/* 8047B25C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8047B260  39 61 00 60 */	addi r11, r1, 0x60
/* 8047B264  4B C1 FC 55 */	bl func_8009AEB8
/* 8047B268  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047B26C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047B270  3C 63 00 02 */	addis r3, r3, 2
/* 8047B274  80 83 60 8C */	lwz r4, 0x608c(r3)
/* 8047B278  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8047B27C  83 E4 00 00 */	lwz r31, 0(r4)
/* 8047B280  83 1F 03 70 */	lwz r24, 0x370(r31)
/* 8047B284  7F E4 FB 78 */	mr r4, r31
/* 8047B288  4B FF 79 55 */	bl aMR_CheckRoomOwner
/* 8047B28C  2C 03 00 00 */	cmpwi r3, 0
/* 8047B290  41 82 01 F0 */	beq lbl_8047B480
/* 8047B294  2C 18 00 00 */	cmpwi r24, 0
/* 8047B298  41 80 01 E8 */	blt lbl_8047B480
/* 8047B29C  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047B2A0  38 A3 DF E8 */	addi r5, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047B2A4  80 05 00 08 */	lwz r0, 8(r5)
/* 8047B2A8  7C 18 00 00 */	cmpw r24, r0
/* 8047B2AC  40 80 01 D4 */	bge lbl_8047B480
/* 8047B2B0  80 65 00 04 */	lwz r3, 4(r5)
/* 8047B2B4  1C 98 08 58 */	mulli r4, r24, 0x858
/* 8047B2B8  80 A5 00 00 */	lwz r5, 0(r5)
/* 8047B2BC  7C 03 C0 AE */	lbzx r0, r3, r24
/* 8047B2C0  7F C5 22 14 */	add r30, r5, r4
/* 8047B2C4  28 00 00 00 */	cmplwi r0, 0
/* 8047B2C8  41 82 01 B8 */	beq lbl_8047B480
/* 8047B2CC  8B BE 00 3E */	lbz r29, 0x3e(r30)
/* 8047B2D0  38 61 00 0C */	addi r3, r1, 0xc
/* 8047B2D4  80 FE 00 08 */	lwz r7, 8(r30)
/* 8047B2D8  38 81 00 08 */	addi r4, r1, 8
/* 8047B2DC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8047B2E0  7F A6 EB 78 */	mr r6, r29
/* 8047B2E4  38 A1 00 28 */	addi r5, r1, 0x28
/* 8047B2E8  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8047B2EC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8047B2F0  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8047B2F4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8047B2F8  4B FF 5D 59 */	bl aMR_Wpos2PlaceNumber
/* 8047B2FC  2C 03 00 00 */	cmpwi r3, 0
/* 8047B300  41 82 01 80 */	beq lbl_8047B480
/* 8047B304  80 01 00 08 */	lwz r0, 8(r1)
/* 8047B308  7F C3 F3 78 */	mr r3, r30
/* 8047B30C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8047B310  54 00 20 36 */	slwi r0, r0, 4
/* 8047B314  7F 84 02 14 */	add r28, r4, r0
/* 8047B318  4B FF 4E C5 */	bl aMR_GetItemCountInFurniture
/* 8047B31C  7C 79 1B 78 */	mr r25, r3
/* 8047B320  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8047B324  4B FF 4E 7D */	bl func_804701A0
/* 8047B328  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 8047B32C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047B330  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047B334  3C 63 00 02 */	addis r3, r3, 2
/* 8047B338  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8047B33C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8047B340  7C 77 1B 78 */	mr r23, r3
/* 8047B344  41 82 00 1C */	beq lbl_8047B360
/* 8047B348  38 80 00 00 */	li r4, 0
/* 8047B34C  38 A0 00 00 */	li r5, 0
/* 8047B350  4B F6 56 7D */	bl mPr_GetPossessionItemSumWithCond
/* 8047B354  38 00 00 00 */	li r0, 0
/* 8047B358  B0 1E 08 44 */	sth r0, 0x844(r30)
/* 8047B35C  48 00 00 7C */	b lbl_8047B3D8
lbl_8047B360:
/* 8047B360  A8 1F 03 F8 */	lha r0, 0x3f8(r31)
/* 8047B364  2C 00 00 00 */	cmpwi r0, 0
/* 8047B368  40 82 00 70 */	bne lbl_8047B3D8
/* 8047B36C  A8 1F 03 EC */	lha r0, 0x3ec(r31)
/* 8047B370  2C 00 00 00 */	cmpwi r0, 0
/* 8047B374  40 82 00 64 */	bne lbl_8047B3D8
/* 8047B378  38 80 00 00 */	li r4, 0
/* 8047B37C  38 A0 00 00 */	li r5, 0
/* 8047B380  4B F6 56 4D */	bl mPr_GetPossessionItemSumWithCond
/* 8047B384  7C 7A 1B 78 */	mr r26, r3
/* 8047B388  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8047B38C  4B FF 4E 15 */	bl func_804701A0
/* 8047B390  7C 1A C8 00 */	cmpw r26, r25
/* 8047B394  41 80 00 EC */	blt lbl_8047B480
/* 8047B398  7F C3 F3 78 */	mr r3, r30
/* 8047B39C  4B FF 4E 75 */	bl aMR_TidyItemInFurniture
/* 8047B3A0  3B 60 00 00 */	li r27, 0
/* 8047B3A4  3A C0 00 00 */	li r22, 0
/* 8047B3A8  7F 7A DB 78 */	mr r26, r27
/* 8047B3AC  48 00 00 24 */	b lbl_8047B3D0
lbl_8047B3B0:
/* 8047B3B0  3B 1B 08 44 */	addi r24, r27, 0x844
/* 8047B3B4  7E E3 BB 78 */	mr r3, r23
/* 8047B3B8  7C 9E C2 2E */	lhzx r4, r30, r24
/* 8047B3BC  38 A0 00 00 */	li r5, 0
/* 8047B3C0  4B F6 5B 49 */	bl mPr_SetFreePossessionItem
/* 8047B3C4  7F 5E C3 2E */	sthx r26, r30, r24
/* 8047B3C8  3A D6 00 01 */	addi r22, r22, 1
/* 8047B3CC  3B 7B 00 02 */	addi r27, r27, 2
lbl_8047B3D0:
/* 8047B3D0  7C 16 C8 00 */	cmpw r22, r25
/* 8047B3D4  41 80 FF DC */	blt lbl_8047B3B0
lbl_8047B3D8:
/* 8047B3D8  38 60 00 01 */	li r3, 1
/* 8047B3DC  38 00 00 00 */	li r0, 0
/* 8047B3E0  90 7F 03 6C */	stw r3, 0x36c(r31)
/* 8047B3E4  7F C3 F3 78 */	mr r3, r30
/* 8047B3E8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8047B3EC  38 A0 00 00 */	li r5, 0
/* 8047B3F0  90 1F 03 80 */	stw r0, 0x380(r31)
/* 8047B3F4  80 DE 00 08 */	lwz r6, 8(r30)
/* 8047B3F8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8047B3FC  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8047B400  90 01 00 20 */	stw r0, 0x20(r1)
/* 8047B404  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8047B408  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047B40C  48 00 08 E9 */	bl aMR_SetFurniture2FG
/* 8047B410  38 00 00 0E */	li r0, 0xe
/* 8047B414  7F C3 F3 78 */	mr r3, r30
/* 8047B418  B0 1E 00 3C */	sth r0, 0x3c(r30)
/* 8047B41C  7F E4 FB 78 */	mr r4, r31
/* 8047B420  4B FF 67 01 */	bl aMR_MiniDiskCommonDt
/* 8047B424  7F C3 F3 78 */	mr r3, r30
/* 8047B428  7F E4 FB 78 */	mr r4, r31
/* 8047B42C  4B FF 67 C5 */	bl aMR_RadioCommonDt
/* 8047B430  80 9E 00 08 */	lwz r4, 8(r30)
/* 8047B434  38 61 00 10 */	addi r3, r1, 0x10
/* 8047B438  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8047B43C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8047B440  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047B444  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8047B448  90 01 00 18 */	stw r0, 0x18(r1)
/* 8047B44C  4B FF CE 59 */	bl aMR_SetCleanUpFtrSE
/* 8047B450  A8 DE 08 3C */	lha r6, 0x83c(r30)
/* 8047B454  7F A3 EB 78 */	mr r3, r29
/* 8047B458  7F 84 E3 78 */	mr r4, r28
/* 8047B45C  38 A0 00 C8 */	li r5, 0xc8
/* 8047B460  4B FF 5E 25 */	bl aMR_SetInfoFurnitureTable
/* 8047B464  7F E3 FB 78 */	mr r3, r31
/* 8047B468  7F C4 F3 78 */	mr r4, r30
/* 8047B46C  4B FF 61 51 */	bl aMR_ClearHaniwaSwitch
/* 8047B470  80 7E 00 D0 */	lwz r3, 0xd0(r30)
/* 8047B474  2C 03 FF FF */	cmpwi r3, -1
/* 8047B478  41 82 00 08 */	beq lbl_8047B480
/* 8047B47C  4B F1 1A 79 */	bl mCoBG_CrossOffMoveBg
lbl_8047B480:
/* 8047B480  39 61 00 60 */	addi r11, r1, 0x60
/* 8047B484  4B C1 FA 81 */	bl func_8009AF04
/* 8047B488  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8047B48C  7C 08 03 A6 */	mtlr r0
/* 8047B490  38 21 00 60 */	addi r1, r1, 0x60
/* 8047B494  4E 80 00 20 */	blr 
