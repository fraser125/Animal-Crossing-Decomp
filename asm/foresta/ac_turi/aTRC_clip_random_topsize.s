lbl_805C1418:
/* 805C1418  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805C141C  7C 08 02 A6 */	mflr r0
/* 805C1420  90 01 00 44 */	stw r0, 0x44(r1)
/* 805C1424  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805C1428  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805C142C  4B FF FD 7D */	bl get_fish_save_area
/* 805C1430  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805C1434  7C 7F 1B 79 */	or. r31, r3, r3
/* 805C1438  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805C143C  3C 83 00 02 */	addis r4, r3, 2
/* 805C1440  80 64 61 20 */	lwz r3, 0x6120(r4)
/* 805C1444  80 04 61 24 */	lwz r0, 0x6124(r4)
/* 805C1448  90 61 00 0C */	stw r3, 0xc(r1)
/* 805C144C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C1450  88 61 00 0E */	lbz r3, 0xe(r1)
/* 805C1454  41 82 00 D0 */	beq lbl_805C1524
/* 805C1458  4B DE A5 E1 */	bl mFR_make_NpcRecord
/* 805C145C  80 1F 00 00 */	lwz r0, 0(r31)
/* 805C1460  7C 7E 1B 78 */	mr r30, r3
/* 805C1464  7C 1E 00 00 */	cmpw r30, r0
/* 805C1468  40 81 00 BC */	ble lbl_805C1524
/* 805C146C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C1470  93 DF 00 00 */	stw r30, 0(r31)
/* 805C1474  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C1478  38 00 00 02 */	li r0, 2
/* 805C147C  3C 63 00 02 */	addis r3, r3, 2
/* 805C1480  38 A1 00 18 */	addi r5, r1, 0x18
/* 805C1484  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805C1488  38 83 FF FC */	addi r4, r3, -4
/* 805C148C  7C 09 03 A6 */	mtctr r0
lbl_805C1490:
/* 805C1490  80 64 00 04 */	lwz r3, 4(r4)
/* 805C1494  84 04 00 08 */	lwzu r0, 8(r4)
/* 805C1498  90 65 00 04 */	stw r3, 4(r5)
/* 805C149C  94 05 00 08 */	stwu r0, 8(r5)
/* 805C14A0  42 00 FF F0 */	bdnz lbl_805C1490
/* 805C14A4  80 04 00 04 */	lwz r0, 4(r4)
/* 805C14A8  38 61 00 1C */	addi r3, r1, 0x1c
/* 805C14AC  90 05 00 04 */	stw r0, 4(r5)
/* 805C14B0  4B FF FD 7D */	bl set_top_of_angler_pID
/* 805C14B4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 805C14B8  38 61 00 08 */	addi r3, r1, 8
/* 805C14BC  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 805C14C0  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 805C14C4  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 805C14C8  4B DD EB E5 */	bl mEvMN_GetJointEventRandomNpc
/* 805C14CC  2C 03 00 01 */	cmpwi r3, 1
/* 805C14D0  40 82 00 14 */	bne lbl_805C14E4
/* 805C14D4  A0 81 00 08 */	lhz r4, 8(r1)
/* 805C14D8  38 61 00 14 */	addi r3, r1, 0x14
/* 805C14DC  4B E1 03 31 */	bl mNpc_GetNpcWorldNameTableNo
/* 805C14E0  48 00 00 0C */	b lbl_805C14EC
lbl_805C14E4:
/* 805C14E4  38 61 00 14 */	addi r3, r1, 0x14
/* 805C14E8  4B E1 07 DD */	bl mNpc_GetRandomAnimalName
lbl_805C14EC:
/* 805C14EC  38 7F 00 04 */	addi r3, r31, 4
/* 805C14F0  38 81 00 14 */	addi r4, r1, 0x14
/* 805C14F4  38 A0 00 08 */	li r5, 8
/* 805C14F8  4B DF 95 2D */	bl func_803BAA24
/* 805C14FC  38 7F 00 0C */	addi r3, r31, 0xc
/* 805C1500  4B DF 23 C9 */	bl mLd_ClearLandName
/* 805C1504  3C 80 80 6C */	lis r4, l_name@ha /* 0x806C73F4@ha */
/* 805C1508  38 7F 00 0C */	addi r3, r31, 0xc
/* 805C150C  38 84 73 F4 */	addi r4, r4, l_name@l /* 0x806C73F4@l */
/* 805C1510  38 A0 00 05 */	li r5, 5
/* 805C1514  4B DF 95 11 */	bl func_803BAA24
/* 805C1518  7F C4 F3 78 */	mr r4, r30
/* 805C151C  38 7F 00 04 */	addi r3, r31, 4
/* 805C1520  4B DE A3 91 */	bl mEv_fishRecord_set
lbl_805C1524:
/* 805C1524  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C1528  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805C152C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805C1530  7C 08 03 A6 */	mtlr r0
/* 805C1534  38 21 00 40 */	addi r1, r1, 0x40
/* 805C1538  4E 80 00 20 */	blr 
