lbl_8046F2F8:
/* 8046F2F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046F2FC  7C 08 02 A6 */	mflr r0
/* 8046F300  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046F304  39 61 00 20 */	addi r11, r1, 0x20
/* 8046F308  4B C2 BB CD */	bl func_8009AED4
/* 8046F30C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8046F310  7C 60 1B 78 */	mr r0, r3
/* 8046F314  3B A4 85 38 */	addi r29, r4, common_data@l /* 0x81138538@l */
/* 8046F318  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8046F31C  7C 1F 03 78 */	mr r31, r0
/* 8046F320  4B F3 6A 49 */	bl mFI_GetPlayerHouseFloorNo
/* 8046F324  4B FF FA 2D */	bl func_8046ED50
/* 8046F328  7C 7E 1B 78 */	mr r30, r3
/* 8046F32C  4B FF FE 79 */	bl aMR_GetSceneRoomKind
/* 8046F330  B0 7F 01 D4 */	sth r3, 0x1d4(r31)
/* 8046F334  4B F3 6A 99 */	bl mFI_GetNowPlayerHouseFloorNo
/* 8046F338  2C 03 FF FF */	cmpwi r3, -1
/* 8046F33C  90 7F 02 04 */	stw r3, 0x204(r31)
/* 8046F340  40 82 00 0C */	bne lbl_8046F34C
/* 8046F344  38 00 00 00 */	li r0, 0
/* 8046F348  90 1F 02 04 */	stw r0, 0x204(r31)
lbl_8046F34C:
/* 8046F34C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8046F350  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8046F354  40 82 00 30 */	bne lbl_8046F384
/* 8046F358  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046F35C  38 00 00 00 */	li r0, 0
/* 8046F360  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046F364  3C 83 00 02 */	addis r4, r3, 2
/* 8046F368  88 64 32 00 */	lbz r3, 0x3200(r4)
/* 8046F36C  B0 7F 01 74 */	sth r3, 0x174(r31)
/* 8046F370  88 64 32 01 */	lbz r3, 0x3201(r4)
/* 8046F374  B0 7F 01 76 */	sth r3, 0x176(r31)
/* 8046F378  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 8046F37C  90 1F 01 78 */	stw r0, 0x178(r31)
/* 8046F380  48 00 00 50 */	b lbl_8046F3D0
lbl_8046F384:
/* 8046F384  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 8046F388  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046F38C  1C 9E 26 B0 */	mulli r4, r30, 0x26b0
/* 8046F390  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046F394  3C 63 00 01 */	addis r3, r3, 1
/* 8046F398  1C 00 08 A8 */	mulli r0, r0, 0x8a8
/* 8046F39C  7C 83 22 14 */	add r4, r3, r4
/* 8046F3A0  7C 64 02 14 */	add r3, r4, r0
/* 8046F3A4  88 03 A5 C0 */	lbz r0, -0x5a40(r3)
/* 8046F3A8  B0 1F 01 74 */	sth r0, 0x174(r31)
/* 8046F3AC  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 8046F3B0  1C 00 08 A8 */	mulli r0, r0, 0x8a8
/* 8046F3B4  7C 64 02 14 */	add r3, r4, r0
/* 8046F3B8  88 03 A5 C1 */	lbz r0, -0x5a3f(r3)
/* 8046F3BC  B0 1F 01 76 */	sth r0, 0x176(r31)
/* 8046F3C0  4B F7 83 19 */	bl mRmTp_GetNowSceneOriginalFloorStatus
/* 8046F3C4  90 7F 01 78 */	stw r3, 0x178(r31)
/* 8046F3C8  4B F7 82 D9 */	bl mRmTp_GetNowSceneOriginalWallStatus
/* 8046F3CC  90 7F 01 7C */	stw r3, 0x17c(r31)
lbl_8046F3D0:
/* 8046F3D0  38 7F 01 76 */	addi r3, r31, 0x176
/* 8046F3D4  38 9F 01 74 */	addi r4, r31, 0x174
/* 8046F3D8  4B FF FE 11 */	bl aMI_CheckFloorWallIndex
/* 8046F3DC  7F E3 FB 78 */	mr r3, r31
/* 8046F3E0  7F C4 F3 78 */	mr r4, r30
/* 8046F3E4  4B FF FE 61 */	bl aMI_MakeStepData
/* 8046F3E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8046F3EC  4B C2 BB 35 */	bl func_8009AF20
/* 8046F3F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046F3F4  7C 08 03 A6 */	mtlr r0
/* 8046F3F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8046F3FC  4E 80 00 20 */	blr 
