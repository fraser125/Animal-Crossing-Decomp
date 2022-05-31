lbl_804A13F8:
/* 804A13F8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A13FC  7C 08 02 A6 */	mflr r0
/* 804A1400  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A1404  39 61 00 50 */	addi r11, r1, 0x50
/* 804A1408  4B BF 9A 91 */	bl __save_gpr
/* 804A140C  7C D2 33 78 */	mr r18, r6
/* 804A1410  7C F3 3B 78 */	mr r19, r7
/* 804A1414  7C 6F 1B 78 */	mr r15, r3
/* 804A1418  7C 90 23 78 */	mr r16, r4
/* 804A141C  7C B1 2B 78 */	mr r17, r5
/* 804A1420  7D 14 43 78 */	mr r20, r8
/* 804A1424  7D 35 4B 78 */	mr r21, r9
/* 804A1428  7E 63 9B 78 */	mr r3, r19
/* 804A142C  7E 44 93 78 */	mr r4, r18
/* 804A1430  4B F0 5D 25 */	bl mFI_BkNumtoUtFGTop
/* 804A1434  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 804A1438  7C 7C 1B 78 */	mr r28, r3
/* 804A143C  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 804A1440  3B 20 00 05 */	li r25, 5
/* 804A1444  80 84 00 00 */	lwz r4, 0(r4)
/* 804A1448  3B 00 00 07 */	li r24, 7
/* 804A144C  A8 64 16 98 */	lha r3, 0x1698(r4)
/* 804A1450  7C 60 07 35 */	extsh. r0, r3
/* 804A1454  41 82 00 08 */	beq lbl_804A145C
/* 804A1458  7C 79 1B 78 */	mr r25, r3
lbl_804A145C:
/* 804A145C  A8 64 16 9A */	lha r3, 0x169a(r4)
/* 804A1460  7C 60 07 35 */	extsh. r0, r3
/* 804A1464  41 82 00 08 */	beq lbl_804A146C
/* 804A1468  7C 78 1B 78 */	mr r24, r3
lbl_804A146C:
/* 804A146C  92 50 00 00 */	stw r18, 0(r16)
/* 804A1470  28 1C 00 00 */	cmplwi r28, 0
/* 804A1474  92 70 00 04 */	stw r19, 4(r16)
/* 804A1478  41 82 01 0C */	beq lbl_804A1584
/* 804A147C  3B 60 00 00 */	li r27, 0
/* 804A1480  39 C0 00 00 */	li r14, 0
lbl_804A1484:
/* 804A1484  7F BB A0 50 */	subf r29, r27, r20
/* 804A1488  3A E0 00 00 */	li r23, 0
/* 804A148C  3A C0 00 01 */	li r22, 1
/* 804A1490  3B 40 00 00 */	li r26, 0
lbl_804A1494:
/* 804A1494  A0 DC 00 00 */	lhz r6, 0(r28)
/* 804A1498  7F A5 FE 70 */	srawi r5, r29, 0x1f
/* 804A149C  7C FA A8 50 */	subf r7, r26, r21
/* 804A14A0  54 C0 A7 3F */	rlwinm. r0, r6, 0x14, 0x1c, 0x1f
/* 804A14A4  7C A4 EA 78 */	xor r4, r5, r29
/* 804A14A8  7C E3 FE 70 */	srawi r3, r7, 0x1f
/* 804A14AC  7C 60 3A 78 */	xor r0, r3, r7
/* 804A14B0  7F E5 20 50 */	subf r31, r5, r4
/* 804A14B4  7F C3 00 50 */	subf r30, r3, r0
/* 804A14B8  40 82 00 A0 */	bne lbl_804A1558
/* 804A14BC  54 C0 C7 3E */	rlwinm r0, r6, 0x18, 0x1c, 0x1f
/* 804A14C0  2C 00 00 09 */	cmpwi r0, 9
/* 804A14C4  40 82 00 94 */	bne lbl_804A1558
/* 804A14C8  7D E3 7B 78 */	mr r3, r15
/* 804A14CC  7F 64 DB 78 */	mr r4, r27
/* 804A14D0  7F 45 D3 78 */	mr r5, r26
/* 804A14D4  4B FF FE D9 */	bl aSIGN_draw_anime_check
/* 804A14D8  2C 03 00 00 */	cmpwi r3, 0
/* 804A14DC  40 82 00 7C */	bne lbl_804A1558
/* 804A14E0  7C 1F C8 00 */	cmpw r31, r25
/* 804A14E4  41 81 00 0C */	bgt lbl_804A14F0
/* 804A14E8  7C 1E C8 00 */	cmpw r30, r25
/* 804A14EC  40 81 00 34 */	ble lbl_804A1520
lbl_804A14F0:
/* 804A14F0  7C 1F C0 00 */	cmpw r31, r24
/* 804A14F4  41 81 00 64 */	bgt lbl_804A1558
/* 804A14F8  7C 1E C0 00 */	cmpw r30, r24
/* 804A14FC  41 81 00 5C */	bgt lbl_804A1558
/* 804A1500  7E 23 8B 78 */	mr r3, r17
/* 804A1504  7E 44 93 78 */	mr r4, r18
/* 804A1508  7E 65 9B 78 */	mr r5, r19
/* 804A150C  7F 66 DB 78 */	mr r6, r27
/* 804A1510  7F 47 D3 78 */	mr r7, r26
/* 804A1514  4B FF FC E1 */	bl aSIGN_no_cull_check
/* 804A1518  2C 03 00 00 */	cmpwi r3, 0
/* 804A151C  41 82 00 3C */	beq lbl_804A1558
lbl_804A1520:
/* 804A1520  4B ED D9 35 */	bl Camera2_CheckCullingMode
/* 804A1524  2C 03 00 00 */	cmpwi r3, 0
/* 804A1528  41 82 00 2C */	beq lbl_804A1554
/* 804A152C  7E 23 8B 78 */	mr r3, r17
/* 804A1530  7E 44 93 78 */	mr r4, r18
/* 804A1534  7E 65 9B 78 */	mr r5, r19
/* 804A1538  7F 66 DB 78 */	mr r6, r27
/* 804A153C  7F 47 D3 78 */	mr r7, r26
/* 804A1540  4B FF FE 15 */	bl aSIGN_no_cull_talk_area
/* 804A1544  2C 03 00 00 */	cmpwi r3, 0
/* 804A1548  41 82 00 10 */	beq lbl_804A1558
/* 804A154C  7E F7 B3 78 */	or r23, r23, r22
/* 804A1550  48 00 00 08 */	b lbl_804A1558
lbl_804A1554:
/* 804A1554  7E F7 B3 78 */	or r23, r23, r22
lbl_804A1558:
/* 804A1558  3B 5A 00 01 */	addi r26, r26, 1
/* 804A155C  56 D6 0C 3C */	rlwinm r22, r22, 1, 0x10, 0x1e
/* 804A1560  2C 1A 00 10 */	cmpwi r26, 0x10
/* 804A1564  3B 9C 00 02 */	addi r28, r28, 2
/* 804A1568  41 80 FF 2C */	blt lbl_804A1494
/* 804A156C  3B 7B 00 01 */	addi r27, r27, 1
/* 804A1570  38 0E 00 08 */	addi r0, r14, 8
/* 804A1574  2C 1B 00 10 */	cmpwi r27, 0x10
/* 804A1578  7E F0 03 2E */	sthx r23, r16, r0
/* 804A157C  39 CE 00 02 */	addi r14, r14, 2
/* 804A1580  41 80 FF 04 */	blt lbl_804A1484
lbl_804A1584:
/* 804A1584  39 61 00 50 */	addi r11, r1, 0x50
/* 804A1588  4B BF 99 5D */	bl __restore_gpr
/* 804A158C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A1590  7C 08 03 A6 */	mtlr r0
/* 804A1594  38 21 00 50 */	addi r1, r1, 0x50
/* 804A1598  4E 80 00 20 */	blr 
