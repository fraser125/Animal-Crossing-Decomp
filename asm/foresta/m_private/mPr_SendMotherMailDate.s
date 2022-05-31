lbl_803E14FC:
/* 803E14FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E1500  7C 08 02 A6 */	mflr r0
/* 803E1504  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E1508  39 61 00 30 */	addi r11, r1, 0x30
/* 803E150C  4B CB 99 C1 */	bl func_8009AECC
/* 803E1510  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E1514  38 00 00 00 */	li r0, 0
/* 803E1518  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803E151C  B0 01 00 08 */	sth r0, 8(r1)
/* 803E1520  3F E5 00 02 */	addis r31, r5, 2
/* 803E1524  7C 9C 23 78 */	mr r28, r4
/* 803E1528  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 803E152C  7C 7B 1B 78 */	mr r27, r3
/* 803E1530  88 BC 00 05 */	lbz r5, 5(r28)
/* 803E1534  3B C0 FF FF */	li r30, -1
/* 803E1538  88 04 10 A6 */	lbz r0, 0x10a6(r4)
/* 803E153C  3B A0 00 00 */	li r29, 0
/* 803E1540  7C 00 28 40 */	cmplw r0, r5
/* 803E1544  40 82 00 40 */	bne lbl_803E1584
/* 803E1548  88 64 10 A7 */	lbz r3, 0x10a7(r4)
/* 803E154C  88 1C 00 03 */	lbz r0, 3(r28)
/* 803E1550  7C 03 00 40 */	cmplw r3, r0
/* 803E1554  40 82 00 30 */	bne lbl_803E1584
/* 803E1558  4B C7 B7 9D */	bl fqrand
/* 803E155C  3C 60 80 64 */	lis r3, lit_1153@ha /* 0x80643104@ha */
/* 803E1560  38 00 11 FC */	li r0, 0x11fc
/* 803E1564  C0 03 31 04 */	lfs f0, lit_1153@l(r3)  /* 0x80643104@l */
/* 803E1568  B0 01 00 08 */	sth r0, 8(r1)
/* 803E156C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E1570  FC 00 00 1E */	fctiwz f0, f0
/* 803E1574  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E1578  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803E157C  3B C3 01 84 */	addi r30, r3, 0x184
/* 803E1580  48 00 01 20 */	b lbl_803E16A0
lbl_803E1584:
/* 803E1584  88 1C 00 03 */	lbz r0, 3(r28)
/* 803E1588  7C 05 00 40 */	cmplw r5, r0
/* 803E158C  40 82 00 5C */	bne lbl_803E15E8
/* 803E1590  4B C7 B7 65 */	bl fqrand
/* 803E1594  3C 60 80 64 */	lis r3, lit_1153@ha /* 0x80643104@ha */
/* 803E1598  88 9C 00 05 */	lbz r4, 5(r28)
/* 803E159C  C0 03 31 04 */	lfs f0, lit_1153@l(r3)  /* 0x80643104@l */
/* 803E15A0  38 04 FF FF */	addi r0, r4, -1
/* 803E15A4  28 04 00 01 */	cmplwi r4, 1
/* 803E15A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E15AC  54 00 08 3C */	slwi r0, r0, 1
/* 803E15B0  FC 00 00 1E */	fctiwz f0, f0
/* 803E15B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E15B8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803E15BC  7C 60 1A 14 */	add r3, r0, r3
/* 803E15C0  3B C3 01 64 */	addi r30, r3, 0x164
/* 803E15C4  40 82 00 10 */	bne lbl_803E15D4
/* 803E15C8  38 00 21 01 */	li r0, 0x2101
/* 803E15CC  B0 01 00 08 */	sth r0, 8(r1)
/* 803E15D0  48 00 00 D0 */	b lbl_803E16A0
lbl_803E15D4:
/* 803E15D4  2C 03 00 12 */	cmpwi r3, 0x12
/* 803E15D8  40 82 00 C8 */	bne lbl_803E16A0
/* 803E15DC  38 00 28 05 */	li r0, 0x2805
/* 803E15E0  B0 01 00 08 */	sth r0, 8(r1)
/* 803E15E4  48 00 00 BC */	b lbl_803E16A0
lbl_803E15E8:
/* 803E15E8  28 05 00 04 */	cmplwi r5, 4
/* 803E15EC  40 82 00 14 */	bne lbl_803E1600
/* 803E15F0  28 00 00 01 */	cmplwi r0, 1
/* 803E15F4  40 82 00 0C */	bne lbl_803E1600
/* 803E15F8  3B C0 01 80 */	li r30, 0x180
/* 803E15FC  48 00 00 7C */	b lbl_803E1678
lbl_803E1600:
/* 803E1600  38 60 00 17 */	li r3, 0x17
/* 803E1604  38 80 00 01 */	li r4, 1
/* 803E1608  4B FB C4 F9 */	bl mEv_check_status
/* 803E160C  2C 03 00 01 */	cmpwi r3, 1
/* 803E1610  40 82 00 0C */	bne lbl_803E161C
/* 803E1614  3B C0 01 7C */	li r30, 0x17c
/* 803E1618  48 00 00 60 */	b lbl_803E1678
lbl_803E161C:
/* 803E161C  38 60 00 1A */	li r3, 0x1a
/* 803E1620  38 80 00 01 */	li r4, 1
/* 803E1624  4B FB C4 DD */	bl mEv_check_status
/* 803E1628  2C 03 00 01 */	cmpwi r3, 1
/* 803E162C  40 82 00 0C */	bne lbl_803E1638
/* 803E1630  3B C0 01 7E */	li r30, 0x17e
/* 803E1634  48 00 00 44 */	b lbl_803E1678
lbl_803E1638:
/* 803E1638  88 1C 00 05 */	lbz r0, 5(r28)
/* 803E163C  28 00 00 0C */	cmplwi r0, 0xc
/* 803E1640  40 82 00 38 */	bne lbl_803E1678
/* 803E1644  88 1C 00 03 */	lbz r0, 3(r28)
/* 803E1648  28 00 00 18 */	cmplwi r0, 0x18
/* 803E164C  40 82 00 2C */	bne lbl_803E1678
/* 803E1650  38 81 00 08 */	addi r4, r1, 8
/* 803E1654  3B C0 01 82 */	li r30, 0x182
/* 803E1658  38 60 00 00 */	li r3, 0
/* 803E165C  38 A0 00 01 */	li r5, 1
/* 803E1660  38 C0 00 00 */	li r6, 0
/* 803E1664  38 E0 00 00 */	li r7, 0
/* 803E1668  39 00 00 00 */	li r8, 0
/* 803E166C  39 20 00 08 */	li r9, 8
/* 803E1670  39 40 00 00 */	li r10, 0
/* 803E1674  48 00 6D 69 */	bl mSP_SelectRandomItem_New
lbl_803E1678:
/* 803E1678  2C 1E FF FF */	cmpwi r30, -1
/* 803E167C  41 82 00 24 */	beq lbl_803E16A0
/* 803E1680  4B C7 B6 75 */	bl fqrand
/* 803E1684  3C 60 80 64 */	lis r3, lit_1153@ha /* 0x80643104@ha */
/* 803E1688  C0 03 31 04 */	lfs f0, lit_1153@l(r3)  /* 0x80643104@l */
/* 803E168C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E1690  FC 00 00 1E */	fctiwz f0, f0
/* 803E1694  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E1698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E169C  7F DE 02 14 */	add r30, r30, r0
lbl_803E16A0:
/* 803E16A0  2C 1E FF FF */	cmpwi r30, -1
/* 803E16A4  41 82 00 4C */	beq lbl_803E16F0
/* 803E16A8  88 7C 00 05 */	lbz r3, 5(r28)
/* 803E16AC  88 9C 00 03 */	lbz r4, 3(r28)
/* 803E16B0  4B FF FC 31 */	bl mPr_GetMotherMailPaperType
/* 803E16B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E16B8  7C 66 1B 78 */	mr r6, r3
/* 803E16BC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E16C0  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 803E16C4  3C 84 00 02 */	addis r4, r4, 2
/* 803E16C8  A0 A1 00 08 */	lhz r5, 8(r1)
/* 803E16CC  88 84 60 03 */	lbz r4, 0x6003(r4)
/* 803E16D0  7F C7 F3 78 */	mr r7, r30
/* 803E16D4  4B FF FD 25 */	bl mPr_SendMotherMailPost
/* 803E16D8  2C 03 00 01 */	cmpwi r3, 1
/* 803E16DC  40 82 00 10 */	bne lbl_803E16EC
/* 803E16E0  7F 63 DB 78 */	mr r3, r27
/* 803E16E4  7F 84 E3 78 */	mr r4, r28
/* 803E16E8  48 01 1D 79 */	bl mTM_set_renew_time
lbl_803E16EC:
/* 803E16EC  3B A0 00 01 */	li r29, 1
lbl_803E16F0:
/* 803E16F0  7F A3 EB 78 */	mr r3, r29
/* 803E16F4  39 61 00 30 */	addi r11, r1, 0x30
/* 803E16F8  4B CB 98 21 */	bl func_8009AF18
/* 803E16FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E1700  7C 08 03 A6 */	mtlr r0
/* 803E1704  38 21 00 30 */	addi r1, r1, 0x30
/* 803E1708  4E 80 00 20 */	blr 
