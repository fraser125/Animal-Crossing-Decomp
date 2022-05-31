lbl_803D1154:
/* 803D1154  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D1158  7C 08 02 A6 */	mflr r0
/* 803D115C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D1160  39 61 00 30 */	addi r11, r1, 0x30
/* 803D1164  4B CC 9D 59 */	bl func_8009AEBC
/* 803D1168  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803D116C  7C 7A 1B 78 */	mr r26, r3
/* 803D1170  3B 25 85 38 */	addi r25, r5, common_data@l /* 0x81138538@l */
/* 803D1174  7C 97 23 78 */	mr r23, r4
/* 803D1178  3F D9 00 02 */	addis r30, r25, 2
/* 803D117C  3B 60 00 01 */	li r27, 1
/* 803D1180  3F F9 00 01 */	addis r31, r25, 1
/* 803D1184  83 BE 61 3C */	lwz r29, 0x613c(r30)
/* 803D1188  3B FF 74 38 */	addi r31, r31, 0x7438
/* 803D118C  3B 99 00 18 */	addi r28, r25, 0x18
/* 803D1190  7F F8 FB 78 */	mr r24, r31
/* 803D1194  4B FE 29 75 */	bl mLd_PlayerManKindCheck
/* 803D1198  2C 03 00 00 */	cmpwi r3, 0
/* 803D119C  40 82 00 6C */	bne lbl_803D1208
/* 803D11A0  2C 17 00 01 */	cmpwi r23, 1
/* 803D11A4  40 82 02 00 */	bne lbl_803D13A4
/* 803D11A8  88 19 00 19 */	lbz r0, 0x19(r25)
/* 803D11AC  28 00 00 FF */	cmplwi r0, 0xff
/* 803D11B0  41 82 01 F4 */	beq lbl_803D13A4
/* 803D11B4  1C 80 09 88 */	mulli r4, r0, 0x988
/* 803D11B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D11BC  38 00 00 00 */	li r0, 0
/* 803D11C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D11C4  7C 83 22 14 */	add r4, r3, r4
/* 803D11C8  7F 43 D3 78 */	mr r3, r26
/* 803D11CC  3F 44 00 01 */	addis r26, r4, 1
/* 803D11D0  98 1A 7D 22 */	stb r0, 0x7d22(r26)
/* 803D11D4  3B 5A 74 38 */	addi r26, r26, 0x7438
/* 803D11D8  7F 44 D3 78 */	mr r4, r26
/* 803D11DC  4B FF B4 DD */	bl mNpc_CopyAnimalInfo
/* 803D11E0  38 7A 08 98 */	addi r3, r26, 0x898
/* 803D11E4  4B FF E5 AD */	bl mNpc_DestroyHouse
/* 803D11E8  7F 43 D3 78 */	mr r3, r26
/* 803D11EC  4B FF B2 51 */	bl mNpc_ClearAnimalInfo
/* 803D11F0  88 7C 00 00 */	lbz r3, 0(r28)
/* 803D11F4  38 00 00 FF */	li r0, 0xff
/* 803D11F8  98 19 00 19 */	stb r0, 0x19(r25)
/* 803D11FC  38 03 FF FF */	addi r0, r3, -1
/* 803D1200  98 1C 00 00 */	stb r0, 0(r28)
/* 803D1204  48 00 01 A0 */	b lbl_803D13A4
lbl_803D1208:
/* 803D1208  7F 43 D3 78 */	mr r3, r26
/* 803D120C  4B FF B3 B1 */	bl mNpc_CheckFreeAnimalInfo
/* 803D1210  2C 03 00 00 */	cmpwi r3, 0
/* 803D1214  40 82 00 90 */	bne lbl_803D12A4
/* 803D1218  88 1A 08 EA */	lbz r0, 0x8ea(r26)
/* 803D121C  28 00 00 00 */	cmplwi r0, 0
/* 803D1220  40 82 00 84 */	bne lbl_803D12A4
/* 803D1224  38 00 00 0F */	li r0, 0xf
/* 803D1228  7C 09 03 A6 */	mtctr r0
lbl_803D122C:
/* 803D122C  A0 7A 00 00 */	lhz r3, 0(r26)
/* 803D1230  A0 18 00 00 */	lhz r0, 0(r24)
/* 803D1234  7C 03 00 40 */	cmplw r3, r0
/* 803D1238  40 82 00 0C */	bne lbl_803D1244
/* 803D123C  3B 60 00 00 */	li r27, 0
/* 803D1240  48 00 00 0C */	b lbl_803D124C
lbl_803D1244:
/* 803D1244  3B 18 09 88 */	addi r24, r24, 0x988
/* 803D1248  42 00 FF E4 */	bdnz lbl_803D122C
lbl_803D124C:
/* 803D124C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D1250  A0 9A 00 00 */	lhz r4, 0(r26)
/* 803D1254  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D1258  3C 63 00 02 */	addis r3, r3, 2
/* 803D125C  A0 03 03 30 */	lhz r0, 0x330(r3)
/* 803D1260  7C 04 00 40 */	cmplw r4, r0
/* 803D1264  40 82 00 08 */	bne lbl_803D126C
/* 803D1268  3B 60 00 00 */	li r27, 0
lbl_803D126C:
/* 803D126C  38 60 00 18 */	li r3, 0x18
/* 803D1270  38 80 00 00 */	li r4, 0
/* 803D1274  4B FC CB 59 */	bl mEv_get_save_area
/* 803D1278  28 03 00 00 */	cmplwi r3, 0
/* 803D127C  41 82 00 2C */	beq lbl_803D12A8
/* 803D1280  A0 63 00 00 */	lhz r3, 0(r3)
/* 803D1284  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D1288  2C 00 00 0E */	cmpwi r0, 0xe
/* 803D128C  40 82 00 1C */	bne lbl_803D12A8
/* 803D1290  A0 1A 00 00 */	lhz r0, 0(r26)
/* 803D1294  7C 00 18 40 */	cmplw r0, r3
/* 803D1298  40 82 00 10 */	bne lbl_803D12A8
/* 803D129C  3B 60 00 00 */	li r27, 0
/* 803D12A0  48 00 00 08 */	b lbl_803D12A8
lbl_803D12A4:
/* 803D12A4  3B 60 00 00 */	li r27, 0
lbl_803D12A8:
/* 803D12A8  2C 1B 00 01 */	cmpwi r27, 1
/* 803D12AC  40 82 00 F8 */	bne lbl_803D13A4
/* 803D12B0  7F E3 FB 78 */	mr r3, r31
/* 803D12B4  38 80 00 0F */	li r4, 0xf
/* 803D12B8  4B FF B3 3D */	bl mNpc_GetFreeAnimalInfo
/* 803D12BC  7C 78 1B 78 */	mr r24, r3
/* 803D12C0  2C 18 FF FF */	cmpwi r24, -1
/* 803D12C4  40 82 00 44 */	bne lbl_803D1308
/* 803D12C8  38 60 FF FF */	li r3, -1
/* 803D12CC  4B FF F8 39 */	bl mNpc_GetGoodbyAnimalIdx
/* 803D12D0  7C 78 1B 78 */	mr r24, r3
/* 803D12D4  2C 18 FF FF */	cmpwi r24, -1
/* 803D12D8  40 82 00 08 */	bne lbl_803D12E0
/* 803D12DC  3B 00 00 00 */	li r24, 0
lbl_803D12E0:
/* 803D12E0  1C 18 09 88 */	mulli r0, r24, 0x988
/* 803D12E4  7F 3F 02 14 */	add r25, r31, r0
/* 803D12E8  38 79 08 98 */	addi r3, r25, 0x898
/* 803D12EC  4B FF E4 A5 */	bl mNpc_DestroyHouse
/* 803D12F0  3C 60 81 17 */	lis r3, l_mnpc_goodby_mail@ha /* 0x8116C4B8@ha */
/* 803D12F4  7F 24 CB 78 */	mr r4, r25
/* 803D12F8  38 63 C4 B8 */	addi r3, r3, l_mnpc_goodby_mail@l /* 0x8116C4B8@l */
/* 803D12FC  4B FF FA F5 */	bl mNpc_SetGoodbyAnimalMail
/* 803D1300  4B FF FE 2D */	bl mNpc_SendRegisteredGoodbyMail
/* 803D1304  48 00 00 14 */	b lbl_803D1318
lbl_803D1308:
/* 803D1308  1C 18 09 88 */	mulli r0, r24, 0x988
/* 803D130C  7F 83 E3 78 */	mr r3, r28
/* 803D1310  7F 3F 02 14 */	add r25, r31, r0
/* 803D1314  4B FF A0 41 */	bl mNpc_AddNowNpcMax
lbl_803D1318:
/* 803D1318  7F 23 CB 78 */	mr r3, r25
/* 803D131C  4B FF B1 21 */	bl mNpc_ClearAnimalInfo
/* 803D1320  7F 23 CB 78 */	mr r3, r25
/* 803D1324  7F 44 D3 78 */	mr r4, r26
/* 803D1328  4B FF B3 91 */	bl mNpc_CopyAnimalInfo
/* 803D132C  38 00 00 FF */	li r0, 0xff
/* 803D1330  38 79 08 D8 */	addi r3, r25, 0x8d8
/* 803D1334  98 19 08 99 */	stb r0, 0x899(r25)
/* 803D1338  98 19 08 9A */	stb r0, 0x89a(r25)
/* 803D133C  98 19 08 9B */	stb r0, 0x89b(r25)
/* 803D1340  98 19 08 9C */	stb r0, 0x89c(r25)
/* 803D1344  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 803D1348  38 84 00 08 */	addi r4, r4, 8
/* 803D134C  4B FE 25 A5 */	bl mLd_CopyLandName
/* 803D1350  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 803D1354  38 79 08 A8 */	addi r3, r25, 0x8a8
/* 803D1358  A0 04 00 12 */	lhz r0, 0x12(r4)
/* 803D135C  B0 19 08 E0 */	sth r0, 0x8e0(r25)
/* 803D1360  48 01 16 81 */	bl mQst_ClearContest
/* 803D1364  38 79 09 00 */	addi r3, r25, 0x900
/* 803D1368  38 80 00 04 */	li r4, 4
/* 803D136C  48 00 4A 49 */	bl mNpc_ClearHPMail
/* 803D1370  38 00 00 01 */	li r0, 1
/* 803D1374  98 1A 08 EA */	stb r0, 0x8ea(r26)
/* 803D1378  A0 19 00 00 */	lhz r0, 0(r25)
/* 803D137C  B0 1D 10 F8 */	sth r0, 0x10f8(r29)
/* 803D1380  4B FE 27 1D */	bl mLd_GetLandName
/* 803D1384  7C 64 1B 78 */	mr r4, r3
/* 803D1388  38 7D 10 FA */	addi r3, r29, 0x10fa
/* 803D138C  4B FE 25 65 */	bl mLd_CopyLandName
/* 803D1390  A0 79 00 00 */	lhz r3, 0(r25)
/* 803D1394  4B FF DC 3D */	bl mNpc_SetHaveAppeared
/* 803D1398  7F 03 C3 78 */	mr r3, r24
/* 803D139C  4B FF A8 AD */	bl mNpc_ResetAnimalRelation
/* 803D13A0  4B FF F2 FD */	bl mNpc_RenewRemoveHistory
lbl_803D13A4:
/* 803D13A4  39 61 00 30 */	addi r11, r1, 0x30
/* 803D13A8  4B CC 9B 61 */	bl func_8009AF08
/* 803D13AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D13B0  7C 08 03 A6 */	mtlr r0
/* 803D13B4  38 21 00 30 */	addi r1, r1, 0x30
/* 803D13B8  4E 80 00 20 */	blr 
