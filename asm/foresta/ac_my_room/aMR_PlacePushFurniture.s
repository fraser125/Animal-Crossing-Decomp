lbl_8047F764:
/* 8047F764  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8047F768  7C 08 02 A6 */	mflr r0
/* 8047F76C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8047F770  39 61 00 70 */	addi r11, r1, 0x70
/* 8047F774  4B C1 B7 4D */	bl func_8009AEC0
/* 8047F778  7C 79 1B 78 */	mr r25, r3
/* 8047F77C  7C 9A 23 78 */	mr r26, r4
/* 8047F780  A8 03 01 74 */	lha r0, 0x174(r3)
/* 8047F784  7C DB 33 78 */	mr r27, r6
/* 8047F788  7C FC 3B 78 */	mr r28, r7
/* 8047F78C  2C 00 00 07 */	cmpwi r0, 7
/* 8047F790  40 82 02 98 */	bne lbl_8047FA28
/* 8047F794  80 1A 00 00 */	lwz r0, 0(r26)
/* 8047F798  2C 00 00 01 */	cmpwi r0, 1
/* 8047F79C  40 82 02 8C */	bne lbl_8047FA28
/* 8047F7A0  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 8047F7A4  2C 00 00 02 */	cmpwi r0, 2
/* 8047F7A8  40 82 02 80 */	bne lbl_8047FA28
/* 8047F7AC  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047F7B0  80 1A 00 04 */	lwz r0, 4(r26)
/* 8047F7B4  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047F7B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8047F7BC  7C 03 00 AE */	lbzx r0, r3, r0
/* 8047F7C0  28 00 00 01 */	cmplwi r0, 1
/* 8047F7C4  40 82 02 64 */	bne lbl_8047FA28
/* 8047F7C8  A8 19 04 02 */	lha r0, 0x402(r25)
/* 8047F7CC  2C 00 00 10 */	cmpwi r0, 0x10
/* 8047F7D0  40 81 02 58 */	ble lbl_8047FA28
/* 8047F7D4  7F 83 E3 78 */	mr r3, r28
/* 8047F7D8  4B F5 EA 61 */	bl mPlib_check_player_actor_main_index_Furniture_Move
/* 8047F7DC  2C 03 00 00 */	cmpwi r3, 0
/* 8047F7E0  40 82 02 48 */	bne lbl_8047FA28
/* 8047F7E4  80 1A 00 04 */	lwz r0, 4(r26)
/* 8047F7E8  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047F7EC  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047F7F0  83 FA 00 08 */	lwz r31, 8(r26)
/* 8047F7F4  1C 00 08 58 */	mulli r0, r0, 0x858
/* 8047F7F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8047F7FC  7F C3 02 14 */	add r30, r3, r0
/* 8047F800  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 8047F804  2C 00 00 00 */	cmpwi r0, 0
/* 8047F808  40 82 02 20 */	bne lbl_8047FA28
/* 8047F80C  80 DE 00 08 */	lwz r6, 8(r30)
/* 8047F810  38 61 00 0C */	addi r3, r1, 0xc
/* 8047F814  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8047F818  38 81 00 08 */	addi r4, r1, 8
/* 8047F81C  38 A1 00 34 */	addi r5, r1, 0x34
/* 8047F820  90 C1 00 34 */	stw r6, 0x34(r1)
/* 8047F824  90 01 00 38 */	stw r0, 0x38(r1)
/* 8047F828  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8047F82C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8047F830  88 DE 00 3E */	lbz r6, 0x3e(r30)
/* 8047F834  4B FF 18 1D */	bl aMR_Wpos2PlaceNumber
/* 8047F838  1D 1F 00 06 */	mulli r8, r31, 6
/* 8047F83C  3C 80 80 69 */	lis r4, push_move_table@ha /* 0x8068A0D4@ha */
/* 8047F840  80 E1 00 08 */	lwz r7, 8(r1)
/* 8047F844  7F E3 FB 78 */	mr r3, r31
/* 8047F848  38 A4 A0 D4 */	addi r5, r4, push_move_table@l /* 0x8068A0D4@l */
/* 8047F84C  81 21 00 0C */	lwz r9, 0xc(r1)
/* 8047F850  7C 85 42 14 */	add r4, r5, r8
/* 8047F854  54 E6 20 36 */	slwi r6, r7, 4
/* 8047F858  A8 04 00 04 */	lha r0, 4(r4)
/* 8047F85C  7F A9 32 14 */	add r29, r9, r6
/* 8047F860  7C 85 42 AE */	lhax r4, r5, r8
/* 8047F864  7C 07 02 14 */	add r0, r7, r0
/* 8047F868  54 00 20 36 */	slwi r0, r0, 4
/* 8047F86C  7F 04 02 14 */	add r24, r4, r0
/* 8047F870  7F 09 C2 14 */	add r24, r9, r24
/* 8047F874  4B FF A5 C9 */	bl aMR_PullDirect2PushDirect
/* 8047F878  7F 84 E3 78 */	mr r4, r28
/* 8047F87C  4B FF 8E 39 */	bl aMR_JudgeStickFull
/* 8047F880  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047F884  41 82 01 A4 */	beq lbl_8047FA28
/* 8047F888  88 7E 00 3E */	lbz r3, 0x3e(r30)
/* 8047F88C  7F A4 EB 78 */	mr r4, r29
/* 8047F890  A8 DE 08 3C */	lha r6, 0x83c(r30)
/* 8047F894  38 A0 00 C8 */	li r5, 0xc8
/* 8047F898  4B FF 19 ED */	bl aMR_SetInfoFurnitureTable
/* 8047F89C  80 DE 00 08 */	lwz r6, 8(r30)
/* 8047F8A0  7F C3 F3 78 */	mr r3, r30
/* 8047F8A4  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8047F8A8  38 81 00 28 */	addi r4, r1, 0x28
/* 8047F8AC  38 A0 00 00 */	li r5, 0
/* 8047F8B0  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8047F8B4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8047F8B8  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8047F8BC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8047F8C0  4B FF C4 35 */	bl aMR_SetFurniture2FG
/* 8047F8C4  88 7E 00 3E */	lbz r3, 0x3e(r30)
/* 8047F8C8  7F 04 C3 78 */	mr r4, r24
/* 8047F8CC  4B FF 8E 9D */	bl aMR_JudgeFurnitureMove
/* 8047F8D0  2C 03 00 00 */	cmpwi r3, 0
/* 8047F8D4  41 82 01 04 */	beq lbl_8047F9D8
/* 8047F8D8  7F 23 CB 78 */	mr r3, r25
/* 8047F8DC  7F C4 F3 78 */	mr r4, r30
/* 8047F8E0  4B FF 80 E9 */	bl aMR_RequestItemToFitFurniture
/* 8047F8E4  2C 03 00 00 */	cmpwi r3, 0
/* 8047F8E8  41 82 00 F0 */	beq lbl_8047F9D8
/* 8047F8EC  38 60 00 02 */	li r3, 2
/* 8047F8F0  38 00 00 01 */	li r0, 1
/* 8047F8F4  B0 79 01 74 */	sth r3, 0x174(r25)
/* 8047F8F8  7F E3 FB 78 */	mr r3, r31
/* 8047F8FC  B0 1E 00 3C */	sth r0, 0x3c(r30)
/* 8047F900  4B FF A5 3D */	bl aMR_PullDirect2PushDirect
/* 8047F904  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8047F908  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 8047F90C  3C 60 80 69 */	lis r3, push_target_table@ha /* 0x8068A0EC@ha */
/* 8047F910  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8047F914  7F 04 C3 78 */	mr r4, r24
/* 8047F918  38 63 A0 EC */	addi r3, r3, push_target_table@l /* 0x8068A0EC@l */
/* 8047F91C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8047F920  7C 63 02 14 */	add r3, r3, r0
/* 8047F924  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F928  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8047F92C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8047F930  C0 03 00 04 */	lfs f0, 4(r3)
/* 8047F934  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F938  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 8047F93C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8047F940  C0 03 00 08 */	lfs f0, 8(r3)
/* 8047F944  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F948  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8047F94C  88 7E 00 3E */	lbz r3, 0x3e(r30)
/* 8047F950  80 BE 00 04 */	lwz r5, 4(r30)
/* 8047F954  A8 DE 08 3C */	lha r6, 0x83c(r30)
/* 8047F958  4B FF 19 2D */	bl aMR_SetInfoFurnitureTable
/* 8047F95C  80 DE 00 20 */	lwz r6, 0x20(r30)
/* 8047F960  7F C3 F3 78 */	mr r3, r30
/* 8047F964  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8047F968  38 81 00 1C */	addi r4, r1, 0x1c
/* 8047F96C  38 A0 00 01 */	li r5, 1
/* 8047F970  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8047F974  90 01 00 20 */	stw r0, 0x20(r1)
/* 8047F978  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 8047F97C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047F980  4B FF C3 75 */	bl aMR_SetFurniture2FG
/* 8047F984  7F C3 F3 78 */	mr r3, r30
/* 8047F988  7F 84 E3 78 */	mr r4, r28
/* 8047F98C  7F 25 CB 78 */	mr r5, r25
/* 8047F990  7F 46 D3 78 */	mr r6, r26
/* 8047F994  4B FF 95 C9 */	bl aMR_SetPushMoveAnime
/* 8047F998  7F C3 F3 78 */	mr r3, r30
/* 8047F99C  4B FF F3 D1 */	bl aMR_SetMoveSE
/* 8047F9A0  4B F3 F3 3D */	bl mMkRm_ReportChangePlayerRoom
/* 8047F9A4  38 00 00 01 */	li r0, 1
/* 8047F9A8  7F C4 F3 78 */	mr r4, r30
/* 8047F9AC  B0 19 04 0E */	sth r0, 0x40e(r25)
/* 8047F9B0  7F 65 DB 78 */	mr r5, r27
/* 8047F9B4  38 61 00 40 */	addi r3, r1, 0x40
/* 8047F9B8  4B FF F0 FD */	bl aMR_GokiburiPos_Push
/* 8047F9BC  2C 03 00 00 */	cmpwi r3, 0
/* 8047F9C0  41 82 00 68 */	beq lbl_8047FA28
/* 8047F9C4  7F 84 E3 78 */	mr r4, r28
/* 8047F9C8  38 61 00 40 */	addi r3, r1, 0x40
/* 8047F9CC  38 A0 00 01 */	li r5, 1
/* 8047F9D0  4B FF 7B 91 */	bl aMR_MakeGokiburi
/* 8047F9D4  48 00 00 54 */	b lbl_8047FA28
lbl_8047F9D8:
/* 8047F9D8  88 7E 00 3E */	lbz r3, 0x3e(r30)
/* 8047F9DC  7F A4 EB 78 */	mr r4, r29
/* 8047F9E0  80 BE 00 04 */	lwz r5, 4(r30)
/* 8047F9E4  A8 DE 08 3C */	lha r6, 0x83c(r30)
/* 8047F9E8  4B FF 18 9D */	bl aMR_SetInfoFurnitureTable
/* 8047F9EC  80 DE 00 08 */	lwz r6, 8(r30)
/* 8047F9F0  7F C3 F3 78 */	mr r3, r30
/* 8047F9F4  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8047F9F8  38 81 00 10 */	addi r4, r1, 0x10
/* 8047F9FC  38 A0 00 01 */	li r5, 1
/* 8047FA00  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8047FA04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047FA08  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8047FA0C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8047FA10  4B FF C2 E5 */	bl aMR_SetFurniture2FG
/* 8047FA14  7F 63 DB 78 */	mr r3, r27
/* 8047FA18  7F 24 CB 78 */	mr r4, r25
/* 8047FA1C  7F 85 E3 78 */	mr r5, r28
/* 8047FA20  38 D9 04 0C */	addi r6, r25, 0x40c
/* 8047FA24  4B FF F2 6D */	bl aMR_SetBubu
lbl_8047FA28:
/* 8047FA28  39 61 00 70 */	addi r11, r1, 0x70
/* 8047FA2C  4B C1 B4 E1 */	bl func_8009AF0C
/* 8047FA30  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8047FA34  7C 08 03 A6 */	mtlr r0
/* 8047FA38  38 21 00 70 */	addi r1, r1, 0x70
/* 8047FA3C  4E 80 00 20 */	blr 
