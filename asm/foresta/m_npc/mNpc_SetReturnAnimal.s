lbl_803D1444:
/* 803D1444  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D1448  7C 08 02 A6 */	mflr r0
/* 803D144C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D1450  39 61 00 20 */	addi r11, r1, 0x20
/* 803D1454  4B CC 9A 75 */	bl func_8009AEC8
/* 803D1458  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D145C  7C 7B 1B 78 */	mr r27, r3
/* 803D1460  3B E4 85 38 */	addi r31, r4, common_data@l /* 0x81138538@l */
/* 803D1464  3B A0 00 00 */	li r29, 0
/* 803D1468  3F DF 00 01 */	addis r30, r31, 1
/* 803D146C  3B 40 FF FF */	li r26, -1
/* 803D1470  3F 9F 00 02 */	addis r28, r31, 2
/* 803D1474  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803D1478  4B FE 26 91 */	bl mLd_PlayerManKindCheck
/* 803D147C  2C 03 00 00 */	cmpwi r3, 0
/* 803D1480  40 82 02 24 */	bne lbl_803D16A4
/* 803D1484  7F 63 DB 78 */	mr r3, r27
/* 803D1488  4B FF B1 35 */	bl mNpc_CheckFreeAnimalInfo
/* 803D148C  2C 03 00 00 */	cmpwi r3, 0
/* 803D1490  40 82 02 14 */	bne lbl_803D16A4
/* 803D1494  88 1B 08 EA */	lbz r0, 0x8ea(r27)
/* 803D1498  28 00 00 00 */	cmplwi r0, 0
/* 803D149C  40 82 01 BC */	bne lbl_803D1658
/* 803D14A0  A0 9B 00 00 */	lhz r4, 0(r27)
/* 803D14A4  7F C3 F3 78 */	mr r3, r30
/* 803D14A8  38 A0 00 0F */	li r5, 0xf
/* 803D14AC  4B FF B2 31 */	bl mNpc_SearchAnimalinfo
/* 803D14B0  7C 7C 1B 78 */	mr r28, r3
/* 803D14B4  2C 1C FF FF */	cmpwi r28, -1
/* 803D14B8  41 82 00 40 */	beq lbl_803D14F8
/* 803D14BC  1C 1C 09 88 */	mulli r0, r28, 0x988
/* 803D14C0  7F BE 02 14 */	add r29, r30, r0
/* 803D14C4  38 7D 08 98 */	addi r3, r29, 0x898
/* 803D14C8  4B FF E2 C9 */	bl mNpc_DestroyHouse
/* 803D14CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D14D0  88 9F 00 18 */	lbz r4, 0x18(r31)
/* 803D14D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D14D8  88 03 00 19 */	lbz r0, 0x19(r3)
/* 803D14DC  38 84 FF FF */	addi r4, r4, -1
/* 803D14E0  98 9F 00 18 */	stb r4, 0x18(r31)
/* 803D14E4  7C 00 E0 00 */	cmpw r0, r28
/* 803D14E8  40 82 00 BC */	bne lbl_803D15A4
/* 803D14EC  38 00 00 FF */	li r0, 0xff
/* 803D14F0  98 03 00 19 */	stb r0, 0x19(r3)
/* 803D14F4  48 00 00 B0 */	b lbl_803D15A4
lbl_803D14F8:
/* 803D14F8  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 803D14FC  28 00 00 0F */	cmplwi r0, 0xf
/* 803D1500  41 80 00 84 */	blt lbl_803D1584
/* 803D1504  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D1508  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D150C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803D1510  2C 00 00 1B */	cmpwi r0, 0x1b
/* 803D1514  40 82 00 0C */	bne lbl_803D1520
/* 803D1518  3C 63 00 02 */	addis r3, r3, 2
/* 803D151C  8B 43 61 47 */	lbz r26, 0x6147(r3)
lbl_803D1520:
/* 803D1520  7F 43 D3 78 */	mr r3, r26
/* 803D1524  4B FF F5 E1 */	bl mNpc_GetGoodbyAnimalIdx
/* 803D1528  7C 7C 1B 78 */	mr r28, r3
/* 803D152C  2C 1C FF FF */	cmpwi r28, -1
/* 803D1530  40 82 00 08 */	bne lbl_803D1538
/* 803D1534  3B 80 00 00 */	li r28, 0
lbl_803D1538:
/* 803D1538  1C 1C 09 88 */	mulli r0, r28, 0x988
/* 803D153C  3C 60 81 17 */	lis r3, l_mnpc_goodby_mail@ha /* 0x8116C4B8@ha */
/* 803D1540  38 63 C4 B8 */	addi r3, r3, l_mnpc_goodby_mail@l /* 0x8116C4B8@l */
/* 803D1544  7F BE 02 14 */	add r29, r30, r0
/* 803D1548  7F A4 EB 78 */	mr r4, r29
/* 803D154C  4B FF F8 A5 */	bl mNpc_SetGoodbyAnimalMail
/* 803D1550  38 7D 08 98 */	addi r3, r29, 0x898
/* 803D1554  4B FF E2 3D */	bl mNpc_DestroyHouse
/* 803D1558  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D155C  88 9F 00 18 */	lbz r4, 0x18(r31)
/* 803D1560  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D1564  88 03 00 19 */	lbz r0, 0x19(r3)
/* 803D1568  38 84 FF FF */	addi r4, r4, -1
/* 803D156C  98 9F 00 18 */	stb r4, 0x18(r31)
/* 803D1570  7C 00 E0 00 */	cmpw r0, r28
/* 803D1574  40 82 00 30 */	bne lbl_803D15A4
/* 803D1578  38 00 00 FF */	li r0, 0xff
/* 803D157C  98 03 00 19 */	stb r0, 0x19(r3)
/* 803D1580  48 00 00 24 */	b lbl_803D15A4
lbl_803D1584:
/* 803D1584  7F C3 F3 78 */	mr r3, r30
/* 803D1588  38 80 00 0F */	li r4, 0xf
/* 803D158C  4B FF B0 69 */	bl mNpc_GetFreeAnimalInfo
/* 803D1590  7C 7C 1B 78 */	mr r28, r3
/* 803D1594  2C 1C FF FF */	cmpwi r28, -1
/* 803D1598  41 82 00 0C */	beq lbl_803D15A4
/* 803D159C  1C 1C 09 88 */	mulli r0, r28, 0x988
/* 803D15A0  7F BE 02 14 */	add r29, r30, r0
lbl_803D15A4:
/* 803D15A4  28 1D 00 00 */	cmplwi r29, 0
/* 803D15A8  41 82 00 F4 */	beq lbl_803D169C
/* 803D15AC  7F A3 EB 78 */	mr r3, r29
/* 803D15B0  4B FF AE 8D */	bl mNpc_ClearAnimalInfo
/* 803D15B4  7F A3 EB 78 */	mr r3, r29
/* 803D15B8  7F 64 DB 78 */	mr r4, r27
/* 803D15BC  4B FF B0 FD */	bl mNpc_CopyAnimalInfo
/* 803D15C0  7F 83 E3 78 */	mr r3, r28
/* 803D15C4  4B FF A6 85 */	bl mNpc_ResetAnimalRelation
/* 803D15C8  3B 9D 08 98 */	addi r28, r29, 0x898
/* 803D15CC  88 7D 08 9C */	lbz r3, 0x89c(r29)
/* 803D15D0  88 DD 08 99 */	lbz r6, 0x899(r29)
/* 803D15D4  88 9D 08 9A */	lbz r4, 0x89a(r29)
/* 803D15D8  38 03 FF FF */	addi r0, r3, -1
/* 803D15DC  88 BD 08 9B */	lbz r5, 0x89b(r29)
/* 803D15E0  38 66 FF FF */	addi r3, r6, -1
/* 803D15E4  38 84 FF FF */	addi r4, r4, -1
/* 803D15E8  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 803D15EC  4B FF FD D1 */	bl mNpc_CheckBuildHouse
/* 803D15F0  2C 03 00 01 */	cmpwi r3, 1
/* 803D15F4  40 82 00 2C */	bne lbl_803D1620
/* 803D15F8  88 7C 00 01 */	lbz r3, 1(r28)
/* 803D15FC  88 BC 00 02 */	lbz r5, 2(r28)
/* 803D1600  88 FC 00 04 */	lbz r7, 4(r28)
/* 803D1604  38 83 FF FF */	addi r4, r3, -1
/* 803D1608  A0 7D 00 00 */	lhz r3, 0(r29)
/* 803D160C  38 A5 FF FF */	addi r5, r5, -1
/* 803D1610  88 DC 00 03 */	lbz r6, 3(r28)
/* 803D1614  38 E7 FF FF */	addi r7, r7, -1
/* 803D1618  4B FF E0 49 */	bl mNpc_BuildHouseBeforeFieldct
/* 803D161C  48 00 00 18 */	b lbl_803D1634
lbl_803D1620:
/* 803D1620  38 00 00 FF */	li r0, 0xff
/* 803D1624  98 1C 00 01 */	stb r0, 1(r28)
/* 803D1628  98 1C 00 02 */	stb r0, 2(r28)
/* 803D162C  98 1C 00 03 */	stb r0, 3(r28)
/* 803D1630  98 1C 00 04 */	stb r0, 4(r28)
lbl_803D1634:
/* 803D1634  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 803D1638  38 63 00 01 */	addi r3, r3, 1
/* 803D163C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803D1640  98 7F 00 18 */	stb r3, 0x18(r31)
/* 803D1644  28 00 00 0F */	cmplwi r0, 0xf
/* 803D1648  40 81 00 54 */	ble lbl_803D169C
/* 803D164C  38 00 00 0F */	li r0, 0xf
/* 803D1650  98 1F 00 18 */	stb r0, 0x18(r31)
/* 803D1654  48 00 00 48 */	b lbl_803D169C
lbl_803D1658:
/* 803D1658  A0 BB 00 00 */	lhz r5, 0(r27)
/* 803D165C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D1660  38 00 00 00 */	li r0, 0
/* 803D1664  38 7C 41 64 */	addi r3, r28, 0x4164
/* 803D1668  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D166C  B0 BC 41 60 */	sth r5, 0x4160(r28)
/* 803D1670  3C 84 00 02 */	addis r4, r4, 2
/* 803D1674  98 1C 41 62 */	stb r0, 0x4162(r28)
/* 803D1678  38 84 61 20 */	addi r4, r4, 0x6120
/* 803D167C  98 1C 41 63 */	stb r0, 0x4163(r28)
/* 803D1680  48 03 5B B5 */	bl lbRTC_TimeCopy
/* 803D1684  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D1688  7F 64 DB 78 */	mr r4, r27
/* 803D168C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D1690  3C 63 00 02 */	addis r3, r3, 2
/* 803D1694  38 63 03 30 */	addi r3, r3, 0x330
/* 803D1698  4B FF 9D 79 */	bl mNpc_CopyAnimalPersonalID
lbl_803D169C:
/* 803D169C  7F 63 DB 78 */	mr r3, r27
/* 803D16A0  4B FF AD 9D */	bl mNpc_ClearAnimalInfo
lbl_803D16A4:
/* 803D16A4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D16A8  4B CC 98 6D */	bl func_8009AF14
/* 803D16AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D16B0  7C 08 03 A6 */	mtlr r0
/* 803D16B4  38 21 00 20 */	addi r1, r1, 0x20
/* 803D16B8  4E 80 00 20 */	blr 
