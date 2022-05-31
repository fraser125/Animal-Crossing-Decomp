lbl_803C1218:
/* 803C1218  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C121C  7C 08 02 A6 */	mflr r0
/* 803C1220  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C1224  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1228  4B CD 9C A5 */	bl func_8009AECC
/* 803C122C  7C 7B 1B 78 */	mr r27, r3
/* 803C1230  7C 9C 23 78 */	mr r28, r4
/* 803C1234  7C BD 2B 78 */	mr r29, r5
/* 803C1238  4B FE E5 D1 */	bl mFont_CodeSize_idx_get
/* 803C123C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C1240  7C 7F 1B 78 */	mr r31, r3
/* 803C1244  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C1248  38 61 00 08 */	addi r3, r1, 8
/* 803C124C  3C 84 00 02 */	addis r4, r4, 2
/* 803C1250  88 84 61 25 */	lbz r4, 0x6125(r4)
/* 803C1254  48 02 DB D5 */	bl mString_Load_MonthStringFromRom
/* 803C1258  7C 60 1B 78 */	mr r0, r3
/* 803C125C  7F 63 DB 78 */	mr r3, r27
/* 803C1260  7C 1E 03 78 */	mr r30, r0
/* 803C1264  7F A6 EB 78 */	mr r6, r29
/* 803C1268  7C 9C F2 14 */	add r4, r28, r30
/* 803C126C  7C BC FA 14 */	add r5, r28, r31
/* 803C1270  38 E0 00 00 */	li r7, 0
/* 803C1274  4B FF FB 01 */	bl mMsg_MoveDataCut
/* 803C1278  7F C5 F3 78 */	mr r5, r30
/* 803C127C  7C 7E 1B 78 */	mr r30, r3
/* 803C1280  7C 7B E2 14 */	add r3, r27, r28
/* 803C1284  38 81 00 08 */	addi r4, r1, 8
/* 803C1288  4B FF FB B5 */	bl mMsg_CopyString
/* 803C128C  7F C3 F3 78 */	mr r3, r30
/* 803C1290  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1294  4B CD 9C 85 */	bl func_8009AF18
/* 803C1298  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C129C  7C 08 03 A6 */	mtlr r0
/* 803C12A0  38 21 00 30 */	addi r1, r1, 0x30
/* 803C12A4  4E 80 00 20 */	blr 
