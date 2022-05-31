lbl_805F1368:
/* 805F1368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F136C  7C 08 02 A6 */	mflr r0
/* 805F1370  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F1374  39 61 00 20 */	addi r11, r1, 0x20
/* 805F1378  4B AA 9B 5D */	bl func_8009AED4
/* 805F137C  7C 7E 1B 78 */	mr r30, r3
/* 805F1380  38 00 00 00 */	li r0, 0
/* 805F1384  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805F1388  7C 9D 23 78 */	mr r29, r4
/* 805F138C  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805F1390  3B E5 00 08 */	addi r31, r5, 8
/* 805F1394  98 05 00 0A */	stb r0, 0xa(r5)
/* 805F1398  80 05 00 40 */	lwz r0, 0x40(r5)
/* 805F139C  2C 00 00 12 */	cmpwi r0, 0x12
/* 805F13A0  40 82 00 2C */	bne lbl_805F13CC
/* 805F13A4  4B FD BE A5 */	bl mCO_top_folder
/* 805F13A8  7C 64 1B 78 */	mr r4, r3
/* 805F13AC  7F C3 F3 78 */	mr r3, r30
/* 805F13B0  7F A5 EB 78 */	mr r5, r29
/* 805F13B4  4B FD BE F5 */	bl mCO_check_hide_flg
/* 805F13B8  2C 03 00 00 */	cmpwi r3, 0
/* 805F13BC  41 82 00 28 */	beq lbl_805F13E4
/* 805F13C0  38 00 00 00 */	li r0, 0
/* 805F13C4  98 1F 00 01 */	stb r0, 1(r31)
/* 805F13C8  48 00 01 BC */	b lbl_805F1584
lbl_805F13CC:
/* 805F13CC  4B FF 82 E1 */	bl mNW_check_hide_flg
/* 805F13D0  2C 03 00 00 */	cmpwi r3, 0
/* 805F13D4  41 82 00 10 */	beq lbl_805F13E4
/* 805F13D8  38 00 00 00 */	li r0, 0
/* 805F13DC  98 1F 00 01 */	stb r0, 1(r31)
/* 805F13E0  48 00 01 A4 */	b lbl_805F1584
lbl_805F13E4:
/* 805F13E4  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805F13E8  2C 00 00 17 */	cmpwi r0, 0x17
/* 805F13EC  41 82 00 4C */	beq lbl_805F1438
/* 805F13F0  40 80 00 10 */	bge lbl_805F1400
/* 805F13F4  2C 00 00 12 */	cmpwi r0, 0x12
/* 805F13F8  41 82 00 14 */	beq lbl_805F140C
/* 805F13FC  48 00 00 5C */	b lbl_805F1458
lbl_805F1400:
/* 805F1400  2C 00 00 19 */	cmpwi r0, 0x19
/* 805F1404  41 82 00 34 */	beq lbl_805F1438
/* 805F1408  48 00 00 50 */	b lbl_805F1458
lbl_805F140C:
/* 805F140C  7F C3 F3 78 */	mr r3, r30
/* 805F1410  4B FD BE 39 */	bl mCO_top_folder
/* 805F1414  7C 64 1B 78 */	mr r4, r3
/* 805F1418  7F C3 F3 78 */	mr r3, r30
/* 805F141C  7F A5 EB 78 */	mr r5, r29
/* 805F1420  4B FD C2 59 */	bl mCO_get_image_name
/* 805F1424  7C 64 1B 78 */	mr r4, r3
/* 805F1428  38 7F 00 48 */	addi r3, r31, 0x48
/* 805F142C  38 A0 00 10 */	li r5, 0x10
/* 805F1430  4B DC 95 F5 */	bl func_803BAA24
/* 805F1434  48 00 00 40 */	b lbl_805F1474
lbl_805F1438:
/* 805F1438  7F C3 F3 78 */	mr r3, r30
/* 805F143C  7F A4 EB 78 */	mr r4, r29
/* 805F1440  4B FE B0 01 */	bl mGB_get_image_name
/* 805F1444  7C 64 1B 78 */	mr r4, r3
/* 805F1448  38 7F 00 48 */	addi r3, r31, 0x48
/* 805F144C  38 A0 00 10 */	li r5, 0x10
/* 805F1450  4B DC 95 D5 */	bl func_803BAA24
/* 805F1454  48 00 00 20 */	b lbl_805F1474
lbl_805F1458:
/* 805F1458  7F C3 F3 78 */	mr r3, r30
/* 805F145C  7F A4 EB 78 */	mr r4, r29
/* 805F1460  4B FF 85 4D */	bl mNW_get_image_name
/* 805F1464  7C 64 1B 78 */	mr r4, r3
/* 805F1468  38 7F 00 48 */	addi r3, r31, 0x48
/* 805F146C  38 A0 00 10 */	li r5, 0x10
/* 805F1470  4B DC 95 B5 */	bl func_803BAA24
lbl_805F1474:
/* 805F1474  38 7F 00 48 */	addi r3, r31, 0x48
/* 805F1478  38 80 00 10 */	li r4, 0x10
/* 805F147C  38 A0 00 20 */	li r5, 0x20
/* 805F1480  4B DC B1 A5 */	bl func_803BC624
/* 805F1484  2C 03 00 00 */	cmpwi r3, 0
/* 805F1488  41 81 00 10 */	bgt lbl_805F1498
/* 805F148C  38 00 00 00 */	li r0, 0
/* 805F1490  98 1F 00 01 */	stb r0, 1(r31)
/* 805F1494  48 00 00 F0 */	b lbl_805F1584
lbl_805F1498:
/* 805F1498  7C 64 1B 78 */	mr r4, r3
/* 805F149C  38 7F 00 48 */	addi r3, r31, 0x48
/* 805F14A0  38 A0 00 01 */	li r5, 1
/* 805F14A4  4B DB E2 2D */	bl mFont_GetStringWidth
/* 805F14A8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805F14AC  3C 00 43 30 */	lis r0, 0x4330
/* 805F14B0  90 61 00 0C */	stw r3, 0xc(r1)
/* 805F14B4  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805F14B8  3C 60 80 65 */	lis r3, lit_874@ha /* 0x8064B868@ha */
/* 805F14BC  C8 44 B8 24 */	lfd f2, lit_523@l(r4)  /* 0x8064B824@l */
/* 805F14C0  90 01 00 08 */	stw r0, 8(r1)
/* 805F14C4  38 A3 B8 68 */	addi r5, r3, lit_874@l /* 0x8064B868@l */
/* 805F14C8  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805F14CC  C0 05 00 00 */	lfs f0, 0(r5)
/* 805F14D0  C8 21 00 08 */	lfd f1, 8(r1)
/* 805F14D4  38 83 B8 14 */	addi r4, r3, data_8064B814@l /* 0x8064B814@l */
/* 805F14D8  7F E3 FB 78 */	mr r3, r31
/* 805F14DC  EC 21 10 28 */	fsubs f1, f1, f2
/* 805F14E0  C0 44 00 00 */	lfs f2, 0(r4)
/* 805F14E4  38 80 00 00 */	li r4, 0
/* 805F14E8  EC 20 00 72 */	fmuls f1, f0, f1
/* 805F14EC  4B FF E5 11 */	bl mTG_set_tag_win_scale_p
/* 805F14F0  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 805F14F4  38 03 FF EE */	addi r0, r3, -18
/* 805F14F8  28 00 00 07 */	cmplwi r0, 7
/* 805F14FC  41 81 00 58 */	bgt lbl_805F1554
/* 805F1500  3C 60 80 6D */	lis r3, lit_967@ha /* 0x806D0980@ha */
/* 805F1504  54 00 10 3A */	slwi r0, r0, 2
/* 805F1508  38 63 09 80 */	addi r3, r3, lit_967@l /* 0x806D0980@l */
/* 805F150C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805F1510  7C 09 03 A6 */	mtctr r0
/* 805F1514  4E 80 04 20 */	bctr 
lbl_805F1518:
/* 805F1518  7F E3 FB 78 */	mr r3, r31
/* 805F151C  4B FF E6 79 */	bl mTG_check_edge_right_item
/* 805F1520  2C 03 00 01 */	cmpwi r3, 1
/* 805F1524  40 82 00 10 */	bne lbl_805F1534
/* 805F1528  38 00 00 01 */	li r0, 1
/* 805F152C  98 1F 00 01 */	stb r0, 1(r31)
/* 805F1530  48 00 00 40 */	b lbl_805F1570
lbl_805F1534:
/* 805F1534  3C 60 80 65 */	lis r3, lit_877@ha /* 0x8064B874@ha */
/* 805F1538  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805F153C  C0 03 B8 74 */	lfs f0, lit_877@l(r3)  /* 0x8064B874@l */
/* 805F1540  38 00 00 02 */	li r0, 2
/* 805F1544  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1548  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 805F154C  98 1F 00 01 */	stb r0, 1(r31)
/* 805F1550  48 00 00 20 */	b lbl_805F1570
lbl_805F1554:
/* 805F1554  3C 60 80 65 */	lis r3, lit_877@ha /* 0x8064B874@ha */
/* 805F1558  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805F155C  C0 03 B8 74 */	lfs f0, lit_877@l(r3)  /* 0x8064B874@l */
/* 805F1560  38 00 00 02 */	li r0, 2
/* 805F1564  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1568  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 805F156C  98 1F 00 01 */	stb r0, 1(r31)
lbl_805F1570:
/* 805F1570  7F E3 FB 78 */	mr r3, r31
/* 805F1574  4B FF E2 F9 */	bl mTG_get_item_name_wait_time
/* 805F1578  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805F157C  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805F1580  B0 64 02 F0 */	sth r3, 0x2f0(r4)
lbl_805F1584:
/* 805F1584  39 61 00 20 */	addi r11, r1, 0x20
/* 805F1588  4B AA 99 99 */	bl func_8009AF20
/* 805F158C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F1590  7C 08 03 A6 */	mtlr r0
/* 805F1594  38 21 00 20 */	addi r1, r1, 0x20
/* 805F1598  4E 80 00 20 */	blr 
