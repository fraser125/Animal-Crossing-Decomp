lbl_80584690:
/* 80584690  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80584694  7C 08 02 A6 */	mflr r0
/* 80584698  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058469C  39 61 00 20 */	addi r11, r1, 0x20
/* 805846A0  4B B1 68 29 */	bl func_8009AEC8
/* 805846A4  7C 7C 1B 78 */	mr r28, r3
/* 805846A8  7C 9D 23 78 */	mr r29, r4
/* 805846AC  4B E3 AF FD */	bl func_803BF6A8
/* 805846B0  7C 7F 1B 78 */	mr r31, r3
/* 805846B4  4B E3 C5 E5 */	bl mMsg_Check_MainNormalContinue
/* 805846B8  2C 03 00 00 */	cmpwi r3, 0
/* 805846BC  41 82 01 88 */	beq lbl_80584844
/* 805846C0  A3 7C 09 B4 */	lhz r27, 0x9b4(r28)
/* 805846C4  3B C0 00 1E */	li r30, 0x1e
/* 805846C8  3B 40 FF FF */	li r26, -1
/* 805846CC  4B DF EE 75 */	bl func_80383540
/* 805846D0  4B DF F4 9D */	bl mChoice_Get_ChoseNum
/* 805846D4  2C 03 00 01 */	cmpwi r3, 1
/* 805846D8  41 82 01 04 */	beq lbl_805847DC
/* 805846DC  40 80 00 10 */	bge lbl_805846EC
/* 805846E0  2C 03 00 00 */	cmpwi r3, 0
/* 805846E4  40 80 00 14 */	bge lbl_805846F8
/* 805846E8  48 00 01 24 */	b lbl_8058480C
lbl_805846EC:
/* 805846EC  2C 03 00 03 */	cmpwi r3, 3
/* 805846F0  40 80 01 1C */	bge lbl_8058480C
/* 805846F4  48 00 01 10 */	b lbl_80584804
lbl_805846F8:
/* 805846F8  57 60 C7 3E */	rlwinm r0, r27, 0x18, 0x1c, 0x1f
/* 805846FC  2C 00 00 07 */	cmpwi r0, 7
/* 80584700  41 82 00 14 */	beq lbl_80584714
/* 80584704  40 80 00 78 */	bge lbl_8058477C
/* 80584708  2C 00 00 06 */	cmpwi r0, 6
/* 8058470C  40 80 00 3C */	bge lbl_80584748
/* 80584710  48 00 00 6C */	b lbl_8058477C
lbl_80584714:
/* 80584714  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80584718  7F 63 DB 78 */	mr r3, r27
/* 8058471C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80584720  3C 84 00 02 */	addis r4, r4, 2
/* 80584724  80 84 60 7C */	lwz r4, 0x607c(r4)
/* 80584728  81 84 00 04 */	lwz r12, 4(r4)
/* 8058472C  7D 89 03 A6 */	mtctr r12
/* 80584730  4E 80 04 21 */	bctrl 
/* 80584734  7F A3 EB 78 */	mr r3, r29
/* 80584738  3B 40 00 29 */	li r26, 0x29
/* 8058473C  38 80 00 00 */	li r4, 0
/* 80584740  4B FF C5 21 */	bl aNSC_request_show_camera
/* 80584744  48 00 00 8C */	b lbl_805847D0
lbl_80584748:
/* 80584748  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058474C  7F 63 DB 78 */	mr r3, r27
/* 80584750  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80584754  3C 84 00 02 */	addis r4, r4, 2
/* 80584758  80 84 60 7C */	lwz r4, 0x607c(r4)
/* 8058475C  81 84 00 08 */	lwz r12, 8(r4)
/* 80584760  7D 89 03 A6 */	mtctr r12
/* 80584764  4E 80 04 21 */	bctrl 
/* 80584768  7F A3 EB 78 */	mr r3, r29
/* 8058476C  3B 40 00 29 */	li r26, 0x29
/* 80584770  38 80 00 01 */	li r4, 1
/* 80584774  4B FF C4 ED */	bl aNSC_request_show_camera
/* 80584778  48 00 00 58 */	b lbl_805847D0
lbl_8058477C:
/* 8058477C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80584780  88 7C 09 B6 */	lbz r3, 0x9b6(r28)
/* 80584784  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80584788  88 9C 09 B7 */	lbz r4, 0x9b7(r28)
/* 8058478C  3C A5 00 02 */	addis r5, r5, 2
/* 80584790  80 A5 60 6C */	lwz r5, 0x606c(r5)
/* 80584794  81 85 00 08 */	lwz r12, 8(r5)
/* 80584798  7D 89 03 A6 */	mtctr r12
/* 8058479C  4E 80 04 21 */	bctrl 
/* 805847A0  38 00 00 1E */	li r0, 0x1e
/* 805847A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805847A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805847AC  90 1C 09 98 */	stw r0, 0x998(r28)
/* 805847B0  3C 63 00 02 */	addis r3, r3, 2
/* 805847B4  3B C0 00 27 */	li r30, 0x27
/* 805847B8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805847BC  3B 40 00 13 */	li r26, 0x13
/* 805847C0  A0 03 10 8A */	lhz r0, 0x108a(r3)
/* 805847C4  B0 1C 09 BC */	sth r0, 0x9bc(r28)
/* 805847C8  A0 1C 09 B4 */	lhz r0, 0x9b4(r28)
/* 805847CC  B0 1C 09 BE */	sth r0, 0x9be(r28)
lbl_805847D0:
/* 805847D0  38 00 00 01 */	li r0, 1
/* 805847D4  98 1C 09 B8 */	stb r0, 0x9b8(r28)
/* 805847D8  48 00 00 34 */	b lbl_8058480C
lbl_805847DC:
/* 805847DC  57 60 C7 3E */	rlwinm r0, r27, 0x18, 0x1c, 0x1f
/* 805847E0  2C 00 00 08 */	cmpwi r0, 8
/* 805847E4  40 80 00 18 */	bge lbl_805847FC
/* 805847E8  2C 00 00 06 */	cmpwi r0, 6
/* 805847EC  40 80 00 08 */	bge lbl_805847F4
/* 805847F0  48 00 00 0C */	b lbl_805847FC
lbl_805847F4:
/* 805847F4  3B 40 00 2A */	li r26, 0x2a
/* 805847F8  48 00 00 14 */	b lbl_8058480C
lbl_805847FC:
/* 805847FC  3B 40 00 14 */	li r26, 0x14
/* 80584800  48 00 00 0C */	b lbl_8058480C
lbl_80584804:
/* 80584804  3B C0 00 21 */	li r30, 0x21
/* 80584808  3B 40 00 1F */	li r26, 0x1f
lbl_8058480C:
/* 8058480C  2C 1A FF FF */	cmpwi r26, -1
/* 80584810  41 82 00 34 */	beq lbl_80584844
/* 80584814  7F 43 D3 78 */	mr r3, r26
/* 80584818  4B FF D5 71 */	bl aNSC_get_msg_no
/* 8058481C  7C 65 1B 78 */	mr r5, r3
/* 80584820  7F E3 FB 78 */	mr r3, r31
/* 80584824  7F 84 E3 78 */	mr r4, r28
/* 80584828  4B FF D5 A9 */	bl aNSC_Set_continue_msg_num
/* 8058482C  7F E3 FB 78 */	mr r3, r31
/* 80584830  4B E3 C4 F9 */	bl mMsg_Set_ForceNext
/* 80584834  7F 83 E3 78 */	mr r3, r28
/* 80584838  7F A4 EB 78 */	mr r4, r29
/* 8058483C  7F C5 F3 78 */	mr r5, r30
/* 80584840  48 00 17 81 */	bl aNSC_setupAction
lbl_80584844:
/* 80584844  39 61 00 20 */	addi r11, r1, 0x20
/* 80584848  4B B1 66 CD */	bl func_8009AF14
/* 8058484C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80584850  7C 08 03 A6 */	mtlr r0
/* 80584854  38 21 00 20 */	addi r1, r1, 0x20
/* 80584858  4E 80 00 20 */	blr 
