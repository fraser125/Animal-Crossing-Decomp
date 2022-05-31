lbl_8047A1BC:
/* 8047A1BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047A1C0  7C 08 02 A6 */	mflr r0
/* 8047A1C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047A1C8  39 61 00 30 */	addi r11, r1, 0x30
/* 8047A1CC  4B C2 0C F9 */	bl func_8009AEC4
/* 8047A1D0  7C 9C 23 78 */	mr r28, r4
/* 8047A1D4  7C 7F 1B 78 */	mr r31, r3
/* 8047A1D8  7F 83 E3 78 */	mr r3, r28
/* 8047A1DC  4B F5 F4 65 */	bl get_player_actor_withoutCheck
/* 8047A1E0  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8047A1E4  7C 7E 1B 78 */	mr r30, r3
/* 8047A1E8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8047A1EC  3B 5F 01 A4 */	addi r26, r31, 0x1a4
/* 8047A1F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8047A1F4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8047A1F8  3C 83 00 02 */	addis r4, r3, 2
/* 8047A1FC  3B BF 01 78 */	addi r29, r31, 0x178
/* 8047A200  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8047A204  7F E3 FB 78 */	mr r3, r31
/* 8047A208  8B 24 60 03 */	lbz r25, 0x6003(r4)
/* 8047A20C  7F A4 EB 78 */	mr r4, r29
/* 8047A210  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8047A214  7F 45 D3 78 */	mr r5, r26
/* 8047A218  7F C6 F3 78 */	mr r6, r30
/* 8047A21C  4B FF EB 51 */	bl aMR_AllContactCheck
/* 8047A220  A8 1F 03 F8 */	lha r0, 0x3f8(r31)
/* 8047A224  2C 00 00 00 */	cmpwi r0, 0
/* 8047A228  40 82 01 80 */	bne lbl_8047A3A8
/* 8047A22C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047A230  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047A234  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8047A238  2C 03 00 23 */	cmpwi r3, 0x23
/* 8047A23C  41 82 01 6C */	beq lbl_8047A3A8
/* 8047A240  38 03 FF DC */	addi r0, r3, -36
/* 8047A244  28 00 00 03 */	cmplwi r0, 3
/* 8047A248  40 81 01 60 */	ble lbl_8047A3A8
/* 8047A24C  3B 60 00 00 */	li r27, 0
/* 8047A250  4B F2 AA FD */	bl mFI_CheckShop
/* 8047A254  2C 03 00 01 */	cmpwi r3, 1
/* 8047A258  41 82 00 14 */	beq lbl_8047A26C
/* 8047A25C  4B F2 AA 71 */	bl mFI_GetFieldId
/* 8047A260  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8047A264  28 00 30 02 */	cmplwi r0, 0x3002
/* 8047A268  40 82 00 08 */	bne lbl_8047A270
lbl_8047A26C:
/* 8047A26C  3B 60 00 01 */	li r27, 1
lbl_8047A270:
/* 8047A270  2C 1B 00 00 */	cmpwi r27, 0
/* 8047A274  40 82 01 34 */	bne lbl_8047A3A8
/* 8047A278  80 1F 04 84 */	lwz r0, 0x484(r31)
/* 8047A27C  2C 00 00 00 */	cmpwi r0, 0
/* 8047A280  40 82 01 28 */	bne lbl_8047A3A8
/* 8047A284  A8 1F 03 EC */	lha r0, 0x3ec(r31)
/* 8047A288  2C 00 00 00 */	cmpwi r0, 0
/* 8047A28C  40 82 01 1C */	bne lbl_8047A3A8
/* 8047A290  7F E3 FB 78 */	mr r3, r31
/* 8047A294  7F 84 E3 78 */	mr r4, r28
/* 8047A298  7F A5 EB 78 */	mr r5, r29
/* 8047A29C  7F 46 D3 78 */	mr r6, r26
/* 8047A2A0  4B FF F4 55 */	bl aMR_ManageMoveBottun
/* 8047A2A4  A8 1F 04 EC */	lha r0, 0x4ec(r31)
/* 8047A2A8  2C 00 00 00 */	cmpwi r0, 0
/* 8047A2AC  40 82 00 2C */	bne lbl_8047A2D8
/* 8047A2B0  7F E3 FB 78 */	mr r3, r31
/* 8047A2B4  7F A4 EB 78 */	mr r4, r29
/* 8047A2B8  7F C5 F3 78 */	mr r5, r30
/* 8047A2BC  7F 86 E3 78 */	mr r6, r28
/* 8047A2C0  4B FF FB 91 */	bl aMR_MngPullDirectTimer
/* 8047A2C4  7F E3 FB 78 */	mr r3, r31
/* 8047A2C8  7F A4 EB 78 */	mr r4, r29
/* 8047A2CC  7F C5 F3 78 */	mr r5, r30
/* 8047A2D0  7F 86 E3 78 */	mr r6, r28
/* 8047A2D4  4B FF FD 25 */	bl aMR_MngPushDirectTimer
lbl_8047A2D8:
/* 8047A2D8  7F E3 FB 78 */	mr r3, r31
/* 8047A2DC  7F A4 EB 78 */	mr r4, r29
/* 8047A2E0  7F 85 E3 78 */	mr r5, r28
/* 8047A2E4  7F C6 F3 78 */	mr r6, r30
/* 8047A2E8  48 00 6F ED */	bl aMR_JudgeDemoStart
/* 8047A2EC  2C 03 00 00 */	cmpwi r3, 0
/* 8047A2F0  40 82 00 B8 */	bne lbl_8047A3A8
/* 8047A2F4  7F 23 CB 78 */	mr r3, r25
/* 8047A2F8  7F E4 FB 78 */	mr r4, r31
/* 8047A2FC  4B FF 88 E1 */	bl aMR_CheckRoomOwner
/* 8047A300  2C 03 00 00 */	cmpwi r3, 0
/* 8047A304  41 82 00 7C */	beq lbl_8047A380
/* 8047A308  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 8047A30C  2C 00 00 00 */	cmpwi r0, 0
/* 8047A310  40 82 00 70 */	bne lbl_8047A380
/* 8047A314  7F E3 FB 78 */	mr r3, r31
/* 8047A318  7F A4 EB 78 */	mr r4, r29
/* 8047A31C  7F C6 F3 78 */	mr r6, r30
/* 8047A320  7F 87 E3 78 */	mr r7, r28
/* 8047A324  38 A1 00 08 */	addi r5, r1, 8
/* 8047A328  48 00 54 3D */	bl aMR_PlacePushFurniture
/* 8047A32C  7F E3 FB 78 */	mr r3, r31
/* 8047A330  7F A4 EB 78 */	mr r4, r29
/* 8047A334  7F C5 F3 78 */	mr r5, r30
/* 8047A338  7F 86 E3 78 */	mr r6, r28
/* 8047A33C  48 00 50 8D */	bl aMR_PlacePullFurniture
/* 8047A340  7F E3 FB 78 */	mr r3, r31
/* 8047A344  7F A4 EB 78 */	mr r4, r29
/* 8047A348  7F C5 F3 78 */	mr r5, r30
/* 8047A34C  7F 86 E3 78 */	mr r6, r28
/* 8047A350  48 00 71 4D */	bl aMR_PlaceKurukuruFurniture
/* 8047A354  7F E3 FB 78 */	mr r3, r31
/* 8047A358  7F A4 EB 78 */	mr r4, r29
/* 8047A35C  7F C5 F3 78 */	mr r5, r30
/* 8047A360  7F 86 E3 78 */	mr r6, r28
/* 8047A364  48 00 5D 21 */	bl aMR_SitDownFurniture
/* 8047A368  7F E3 FB 78 */	mr r3, r31
/* 8047A36C  7F A4 EB 78 */	mr r4, r29
/* 8047A370  7F C5 F3 78 */	mr r5, r30
/* 8047A374  7F 86 E3 78 */	mr r6, r28
/* 8047A378  48 00 6A 95 */	bl aMR_JudgeGoToBed
/* 8047A37C  48 00 00 2C */	b lbl_8047A3A8
lbl_8047A380:
/* 8047A380  7F E3 FB 78 */	mr r3, r31
/* 8047A384  7F A4 EB 78 */	mr r4, r29
/* 8047A388  7F C5 F3 78 */	mr r5, r30
/* 8047A38C  7F 86 E3 78 */	mr r6, r28
/* 8047A390  48 00 5C F5 */	bl aMR_SitDownFurniture
/* 8047A394  7F E3 FB 78 */	mr r3, r31
/* 8047A398  7F A4 EB 78 */	mr r4, r29
/* 8047A39C  7F C5 F3 78 */	mr r5, r30
/* 8047A3A0  7F 86 E3 78 */	mr r6, r28
/* 8047A3A4  48 00 6A 69 */	bl aMR_JudgeGoToBed
lbl_8047A3A8:
/* 8047A3A8  39 61 00 30 */	addi r11, r1, 0x30
/* 8047A3AC  4B C2 0B 65 */	bl func_8009AF10
/* 8047A3B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047A3B4  7C 08 03 A6 */	mtlr r0
/* 8047A3B8  38 21 00 30 */	addi r1, r1, 0x30
/* 8047A3BC  4E 80 00 20 */	blr 
