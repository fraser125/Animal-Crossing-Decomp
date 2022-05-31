lbl_803C1338:
/* 803C1338  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C133C  7C 08 02 A6 */	mflr r0
/* 803C1340  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C1344  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1348  4B CD 9B 85 */	bl func_8009AECC
/* 803C134C  7C 7B 1B 78 */	mr r27, r3
/* 803C1350  7C 9C 23 78 */	mr r28, r4
/* 803C1354  7C BD 2B 78 */	mr r29, r5
/* 803C1358  4B FE E4 B1 */	bl mFont_CodeSize_idx_get
/* 803C135C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C1360  7C 7F 1B 78 */	mr r31, r3
/* 803C1364  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C1368  38 61 00 08 */	addi r3, r1, 8
/* 803C136C  3C 84 00 02 */	addis r4, r4, 2
/* 803C1370  88 84 61 23 */	lbz r4, 0x6123(r4)
/* 803C1374  48 02 DB 6D */	bl mString_Load_DayStringFromRom
/* 803C1378  7C 60 1B 78 */	mr r0, r3
/* 803C137C  7F 63 DB 78 */	mr r3, r27
/* 803C1380  7C 1E 03 78 */	mr r30, r0
/* 803C1384  7F A6 EB 78 */	mr r6, r29
/* 803C1388  7C 9C F2 14 */	add r4, r28, r30
/* 803C138C  7C BC FA 14 */	add r5, r28, r31
/* 803C1390  38 E0 00 00 */	li r7, 0
/* 803C1394  4B FF F9 E1 */	bl mMsg_MoveDataCut
/* 803C1398  7F C5 F3 78 */	mr r5, r30
/* 803C139C  7C 7E 1B 78 */	mr r30, r3
/* 803C13A0  7C 7B E2 14 */	add r3, r27, r28
/* 803C13A4  38 81 00 08 */	addi r4, r1, 8
/* 803C13A8  4B FF FA 95 */	bl mMsg_CopyString
/* 803C13AC  7F C3 F3 78 */	mr r3, r30
/* 803C13B0  39 61 00 30 */	addi r11, r1, 0x30
/* 803C13B4  4B CD 9B 65 */	bl func_8009AF18
/* 803C13B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C13BC  7C 08 03 A6 */	mtlr r0
/* 803C13C0  38 21 00 30 */	addi r1, r1, 0x30
/* 803C13C4  4E 80 00 20 */	blr 
