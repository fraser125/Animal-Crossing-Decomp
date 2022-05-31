lbl_8047F3C8:
/* 8047F3C8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8047F3CC  7C 08 02 A6 */	mflr r0
/* 8047F3D0  90 01 00 94 */	stw r0, 0x94(r1)
/* 8047F3D4  39 61 00 90 */	addi r11, r1, 0x90
/* 8047F3D8  4B C1 BA E1 */	bl func_8009AEB8
/* 8047F3DC  7C 97 23 78 */	mr r23, r4
/* 8047F3E0  7C 76 1B 78 */	mr r22, r3
/* 8047F3E4  80 84 00 04 */	lwz r4, 4(r4)
/* 8047F3E8  7C B8 2B 78 */	mr r24, r5
/* 8047F3EC  7C D9 33 78 */	mr r25, r6
/* 8047F3F0  2C 04 00 00 */	cmpwi r4, 0
/* 8047F3F4  41 80 03 58 */	blt lbl_8047F74C
/* 8047F3F8  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047F3FC  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047F400  80 03 00 08 */	lwz r0, 8(r3)
/* 8047F404  7C 04 00 00 */	cmpw r4, r0
/* 8047F408  40 80 03 44 */	bge lbl_8047F74C
/* 8047F40C  80 17 00 00 */	lwz r0, 0(r23)
/* 8047F410  2C 00 00 01 */	cmpwi r0, 1
/* 8047F414  40 82 03 38 */	bne lbl_8047F74C
/* 8047F418  80 17 00 0C */	lwz r0, 0xc(r23)
/* 8047F41C  2C 00 00 02 */	cmpwi r0, 2
/* 8047F420  40 82 03 2C */	bne lbl_8047F74C
/* 8047F424  80 63 00 04 */	lwz r3, 4(r3)
/* 8047F428  7C 03 20 AE */	lbzx r0, r3, r4
/* 8047F42C  28 00 00 01 */	cmplwi r0, 1
/* 8047F430  40 82 03 1C */	bne lbl_8047F74C
/* 8047F434  A8 16 01 74 */	lha r0, 0x174(r22)
/* 8047F438  2C 00 00 08 */	cmpwi r0, 8
/* 8047F43C  40 82 03 10 */	bne lbl_8047F74C
/* 8047F440  A8 16 04 00 */	lha r0, 0x400(r22)
/* 8047F444  2C 00 00 10 */	cmpwi r0, 0x10
/* 8047F448  40 81 03 04 */	ble lbl_8047F74C
/* 8047F44C  7F 23 CB 78 */	mr r3, r25
/* 8047F450  4B F5 ED E9 */	bl mPlib_check_player_actor_main_index_Furniture_Move
/* 8047F454  2C 03 00 00 */	cmpwi r3, 0
/* 8047F458  40 82 02 F4 */	bne lbl_8047F74C
/* 8047F45C  80 17 00 04 */	lwz r0, 4(r23)
/* 8047F460  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047F464  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047F468  1C 00 08 58 */	mulli r0, r0, 0x858
/* 8047F46C  80 63 00 00 */	lwz r3, 0(r3)
/* 8047F470  7F A3 02 14 */	add r29, r3, r0
/* 8047F474  A8 1D 00 3C */	lha r0, 0x3c(r29)
/* 8047F478  2C 00 00 00 */	cmpwi r0, 0
/* 8047F47C  40 82 02 D0 */	bne lbl_8047F74C
/* 8047F480  83 97 00 08 */	lwz r28, 8(r23)
/* 8047F484  38 61 00 0C */	addi r3, r1, 0xc
/* 8047F488  80 DD 00 08 */	lwz r6, 8(r29)
/* 8047F48C  38 81 00 08 */	addi r4, r1, 8
/* 8047F490  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8047F494  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8047F498  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 8047F49C  90 01 00 50 */	stw r0, 0x50(r1)
/* 8047F4A0  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8047F4A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8047F4A8  88 DD 00 3E */	lbz r6, 0x3e(r29)
/* 8047F4AC  4B FF 1B A5 */	bl aMR_Wpos2PlaceNumber
/* 8047F4B0  1D 1C 00 06 */	mulli r8, r28, 6
/* 8047F4B4  3C 80 80 69 */	lis r4, move_table@ha /* 0x8068A08C@ha */
/* 8047F4B8  80 E1 00 08 */	lwz r7, 8(r1)
/* 8047F4BC  7F 83 E3 78 */	mr r3, r28
/* 8047F4C0  38 A4 A0 8C */	addi r5, r4, move_table@l /* 0x8068A08C@l */
/* 8047F4C4  81 21 00 0C */	lwz r9, 0xc(r1)
/* 8047F4C8  7C 85 42 14 */	add r4, r5, r8
/* 8047F4CC  54 E6 20 36 */	slwi r6, r7, 4
/* 8047F4D0  A8 04 00 04 */	lha r0, 4(r4)
/* 8047F4D4  7F 24 CB 78 */	mr r4, r25
/* 8047F4D8  7C A5 42 AE */	lhax r5, r5, r8
/* 8047F4DC  7F 69 32 14 */	add r27, r9, r6
/* 8047F4E0  7C 07 02 14 */	add r0, r7, r0
/* 8047F4E4  54 00 20 36 */	slwi r0, r0, 4
/* 8047F4E8  7F 45 02 14 */	add r26, r5, r0
/* 8047F4EC  7F 49 D2 14 */	add r26, r9, r26
/* 8047F4F0  4B FF 91 C5 */	bl aMR_JudgeStickFull
/* 8047F4F4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8047F4F8  28 00 00 01 */	cmplwi r0, 1
/* 8047F4FC  40 82 02 50 */	bne lbl_8047F74C
/* 8047F500  1F DC 00 0C */	mulli r30, r28, 0xc
/* 8047F504  3C 60 80 69 */	lis r3, target_table@ha /* 0x8068A0A4@ha */
/* 8047F508  7F 05 C3 78 */	mr r5, r24
/* 8047F50C  38 03 A0 A4 */	addi r0, r3, target_table@l /* 0x8068A0A4@l */
/* 8047F510  7F E0 F2 14 */	add r31, r0, r30
/* 8047F514  7F 87 E3 78 */	mr r7, r28
/* 8047F518  81 3F 00 00 */	lwz r9, 0(r31)
/* 8047F51C  38 76 04 14 */	addi r3, r22, 0x414
/* 8047F520  81 1F 00 04 */	lwz r8, 4(r31)
/* 8047F524  38 96 04 20 */	addi r4, r22, 0x420
/* 8047F528  80 1F 00 08 */	lwz r0, 8(r31)
/* 8047F52C  38 C1 00 40 */	addi r6, r1, 0x40
/* 8047F530  91 21 00 40 */	stw r9, 0x40(r1)
/* 8047F534  91 01 00 44 */	stw r8, 0x44(r1)
/* 8047F538  90 01 00 48 */	stw r0, 0x48(r1)
/* 8047F53C  4B FF FC E1 */	bl aMR_CheckPullPlayerObstacle
/* 8047F540  2C 03 00 00 */	cmpwi r3, 0
/* 8047F544  40 82 01 F4 */	bne lbl_8047F738
/* 8047F548  80 9F 00 00 */	lwz r4, 0(r31)
/* 8047F54C  7E E5 BB 78 */	mr r5, r23
/* 8047F550  81 1F 00 04 */	lwz r8, 4(r31)
/* 8047F554  7F 06 C3 78 */	mr r6, r24
/* 8047F558  80 1F 00 08 */	lwz r0, 8(r31)
/* 8047F55C  38 76 04 14 */	addi r3, r22, 0x414
/* 8047F560  90 81 00 34 */	stw r4, 0x34(r1)
/* 8047F564  38 96 04 20 */	addi r4, r22, 0x420
/* 8047F568  38 E1 00 34 */	addi r7, r1, 0x34
/* 8047F56C  91 01 00 38 */	stw r8, 0x38(r1)
/* 8047F570  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8047F574  4B FF FA 95 */	bl aMR_CheckPullPlayerObstacle2
/* 8047F578  2C 03 00 00 */	cmpwi r3, 0
/* 8047F57C  40 82 01 A4 */	bne lbl_8047F720
/* 8047F580  88 7D 00 3E */	lbz r3, 0x3e(r29)
/* 8047F584  7F 64 DB 78 */	mr r4, r27
/* 8047F588  A8 DD 08 3C */	lha r6, 0x83c(r29)
/* 8047F58C  38 A0 00 C8 */	li r5, 0xc8
/* 8047F590  4B FF 1C F5 */	bl aMR_SetInfoFurnitureTable
/* 8047F594  80 DD 00 08 */	lwz r6, 8(r29)
/* 8047F598  7F A3 EB 78 */	mr r3, r29
/* 8047F59C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8047F5A0  38 81 00 28 */	addi r4, r1, 0x28
/* 8047F5A4  38 A0 00 00 */	li r5, 0
/* 8047F5A8  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8047F5AC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8047F5B0  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8047F5B4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8047F5B8  4B FF C7 3D */	bl aMR_SetFurniture2FG
/* 8047F5BC  88 7D 00 3E */	lbz r3, 0x3e(r29)
/* 8047F5C0  7F 44 D3 78 */	mr r4, r26
/* 8047F5C4  4B FF 91 A5 */	bl aMR_JudgeFurnitureMove
/* 8047F5C8  2C 03 00 00 */	cmpwi r3, 0
/* 8047F5CC  41 82 01 00 */	beq lbl_8047F6CC
/* 8047F5D0  7E C3 B3 78 */	mr r3, r22
/* 8047F5D4  7F A4 EB 78 */	mr r4, r29
/* 8047F5D8  4B FF 83 F1 */	bl aMR_RequestItemToFitFurniture
/* 8047F5DC  2C 03 00 00 */	cmpwi r3, 0
/* 8047F5E0  41 82 00 EC */	beq lbl_8047F6CC
/* 8047F5E4  38 00 00 03 */	li r0, 3
/* 8047F5E8  3C 60 80 69 */	lis r3, target_table@ha /* 0x8068A0A4@ha */
/* 8047F5EC  B0 16 01 74 */	sth r0, 0x174(r22)
/* 8047F5F0  38 A0 00 05 */	li r5, 5
/* 8047F5F4  38 03 A0 A4 */	addi r0, r3, target_table@l /* 0x8068A0A4@l */
/* 8047F5F8  7F 44 D3 78 */	mr r4, r26
/* 8047F5FC  B0 BD 00 3C */	sth r5, 0x3c(r29)
/* 8047F600  7C 60 F2 14 */	add r3, r0, r30
/* 8047F604  93 9D 00 2C */	stw r28, 0x2c(r29)
/* 8047F608  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8047F60C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8047F610  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F614  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 8047F618  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8047F61C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8047F620  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F624  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8047F628  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8047F62C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8047F630  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F634  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 8047F638  88 7D 00 3E */	lbz r3, 0x3e(r29)
/* 8047F63C  80 BD 00 04 */	lwz r5, 4(r29)
/* 8047F640  A8 DD 08 3C */	lha r6, 0x83c(r29)
/* 8047F644  4B FF 1C 41 */	bl aMR_SetInfoFurnitureTable
/* 8047F648  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8047F64C  7F A3 EB 78 */	mr r3, r29
/* 8047F650  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 8047F654  38 81 00 1C */	addi r4, r1, 0x1c
/* 8047F658  38 A0 00 01 */	li r5, 1
/* 8047F65C  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8047F660  90 01 00 20 */	stw r0, 0x20(r1)
/* 8047F664  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 8047F668  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047F66C  4B FF C6 89 */	bl aMR_SetFurniture2FG
/* 8047F670  7F A3 EB 78 */	mr r3, r29
/* 8047F674  7F 24 CB 78 */	mr r4, r25
/* 8047F678  7E C5 B3 78 */	mr r5, r22
/* 8047F67C  7E E6 BB 78 */	mr r6, r23
/* 8047F680  4B FF 97 F5 */	bl aMR_SetPullMoveAnime
/* 8047F684  7F A3 EB 78 */	mr r3, r29
/* 8047F688  4B FF F6 E5 */	bl aMR_SetMoveSE
/* 8047F68C  38 00 00 00 */	li r0, 0
/* 8047F690  B0 16 04 00 */	sth r0, 0x400(r22)
/* 8047F694  4B F3 F6 49 */	bl mMkRm_ReportChangePlayerRoom
/* 8047F698  38 00 00 01 */	li r0, 1
/* 8047F69C  7F A4 EB 78 */	mr r4, r29
/* 8047F6A0  B0 16 04 10 */	sth r0, 0x410(r22)
/* 8047F6A4  7F 05 C3 78 */	mr r5, r24
/* 8047F6A8  38 61 00 58 */	addi r3, r1, 0x58
/* 8047F6AC  4B FF F3 E5 */	bl aMR_GokiburiPos_Pull
/* 8047F6B0  2C 03 00 00 */	cmpwi r3, 0
/* 8047F6B4  41 82 00 98 */	beq lbl_8047F74C
/* 8047F6B8  7F 24 CB 78 */	mr r4, r25
/* 8047F6BC  38 61 00 58 */	addi r3, r1, 0x58
/* 8047F6C0  38 A0 00 01 */	li r5, 1
/* 8047F6C4  4B FF 7E 9D */	bl aMR_MakeGokiburi
/* 8047F6C8  48 00 00 84 */	b lbl_8047F74C
lbl_8047F6CC:
/* 8047F6CC  88 7D 00 3E */	lbz r3, 0x3e(r29)
/* 8047F6D0  7F 64 DB 78 */	mr r4, r27
/* 8047F6D4  80 BD 00 04 */	lwz r5, 4(r29)
/* 8047F6D8  A8 DD 08 3C */	lha r6, 0x83c(r29)
/* 8047F6DC  4B FF 1B A9 */	bl aMR_SetInfoFurnitureTable
/* 8047F6E0  80 DD 00 08 */	lwz r6, 8(r29)
/* 8047F6E4  7F A3 EB 78 */	mr r3, r29
/* 8047F6E8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8047F6EC  38 81 00 10 */	addi r4, r1, 0x10
/* 8047F6F0  38 A0 00 01 */	li r5, 1
/* 8047F6F4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8047F6F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047F6FC  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8047F700  90 01 00 18 */	stw r0, 0x18(r1)
/* 8047F704  4B FF C5 F1 */	bl aMR_SetFurniture2FG
/* 8047F708  7F 03 C3 78 */	mr r3, r24
/* 8047F70C  7E C4 B3 78 */	mr r4, r22
/* 8047F710  7F 25 CB 78 */	mr r5, r25
/* 8047F714  38 D6 04 0A */	addi r6, r22, 0x40a
/* 8047F718  4B FF F5 79 */	bl aMR_SetBubu
/* 8047F71C  48 00 00 30 */	b lbl_8047F74C
lbl_8047F720:
/* 8047F720  7F 03 C3 78 */	mr r3, r24
/* 8047F724  7E C4 B3 78 */	mr r4, r22
/* 8047F728  7F 25 CB 78 */	mr r5, r25
/* 8047F72C  38 D6 04 0A */	addi r6, r22, 0x40a
/* 8047F730  4B FF F5 61 */	bl aMR_SetBubu
/* 8047F734  48 00 00 18 */	b lbl_8047F74C
lbl_8047F738:
/* 8047F738  7F 03 C3 78 */	mr r3, r24
/* 8047F73C  7E C4 B3 78 */	mr r4, r22
/* 8047F740  7F 25 CB 78 */	mr r5, r25
/* 8047F744  38 D6 04 0A */	addi r6, r22, 0x40a
/* 8047F748  4B FF F5 49 */	bl aMR_SetBubu
lbl_8047F74C:
/* 8047F74C  39 61 00 90 */	addi r11, r1, 0x90
/* 8047F750  4B C1 B7 B5 */	bl func_8009AF04
/* 8047F754  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8047F758  7C 08 03 A6 */	mtlr r0
/* 8047F75C  38 21 00 90 */	addi r1, r1, 0x90
/* 8047F760  4E 80 00 20 */	blr 
