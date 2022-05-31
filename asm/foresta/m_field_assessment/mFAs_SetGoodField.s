lbl_803A14B0:
/* 803A14B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A14B4  7C 08 02 A6 */	mflr r0
/* 803A14B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A14BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803A14C0  4B CF 9A 15 */	bl func_8009AED4
/* 803A14C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A14C8  2C 03 00 06 */	cmpwi r3, 6
/* 803A14CC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803A14D0  3F C3 00 02 */	addis r30, r3, 2
/* 803A14D4  7F DD F3 78 */	mr r29, r30
/* 803A14D8  3B DE 41 78 */	addi r30, r30, 0x4178
/* 803A14DC  3B BD 61 20 */	addi r29, r29, 0x6120
/* 803A14E0  40 82 00 A8 */	bne lbl_803A1588
/* 803A14E4  3C 60 80 64 */	lis r3, data_806432C4@ha /* 0x806432C4@ha */
/* 803A14E8  7F C4 F3 78 */	mr r4, r30
/* 803A14EC  38 63 32 C4 */	addi r3, r3, data_806432C4@l /* 0x806432C4@l */
/* 803A14F0  38 A0 00 7F */	li r5, 0x7f
/* 803A14F4  48 06 53 45 */	bl lbRTC_IsEqualTime
/* 803A14F8  2C 03 00 01 */	cmpwi r3, 1
/* 803A14FC  40 82 00 1C */	bne lbl_803A1518
/* 803A1500  7F C3 F3 78 */	mr r3, r30
/* 803A1504  7F A4 EB 78 */	mr r4, r29
/* 803A1508  48 06 5D 2D */	bl lbRTC_TimeCopy
/* 803A150C  38 00 00 00 */	li r0, 0
/* 803A1510  90 1E 00 08 */	stw r0, 8(r30)
/* 803A1514  48 00 00 7C */	b lbl_803A1590
lbl_803A1518:
/* 803A1518  7F C3 F3 78 */	mr r3, r30
/* 803A151C  7F A4 EB 78 */	mr r4, r29
/* 803A1520  48 06 53 F5 */	bl lbRTC_IsOverTime
/* 803A1524  2C 03 00 01 */	cmpwi r3, 1
/* 803A1528  40 82 00 48 */	bne lbl_803A1570
/* 803A152C  7F C3 F3 78 */	mr r3, r30
/* 803A1530  7F A4 EB 78 */	mr r4, r29
/* 803A1534  48 06 55 69 */	bl lbRTC_GetIntervalDays
/* 803A1538  7C 7F 1B 79 */	or. r31, r3, r3
/* 803A153C  40 81 00 54 */	ble lbl_803A1590
/* 803A1540  7F C3 F3 78 */	mr r3, r30
/* 803A1544  7F A4 EB 78 */	mr r4, r29
/* 803A1548  48 06 5C ED */	bl lbRTC_TimeCopy
/* 803A154C  80 1E 00 08 */	lwz r0, 8(r30)
/* 803A1550  7C 00 FA 14 */	add r0, r0, r31
/* 803A1554  2C 00 00 0F */	cmpwi r0, 0xf
/* 803A1558  40 81 00 10 */	ble lbl_803A1568
/* 803A155C  38 00 00 0F */	li r0, 0xf
/* 803A1560  90 1E 00 08 */	stw r0, 8(r30)
/* 803A1564  48 00 00 2C */	b lbl_803A1590
lbl_803A1568:
/* 803A1568  90 1E 00 08 */	stw r0, 8(r30)
/* 803A156C  48 00 00 24 */	b lbl_803A1590
lbl_803A1570:
/* 803A1570  7F C3 F3 78 */	mr r3, r30
/* 803A1574  7F A4 EB 78 */	mr r4, r29
/* 803A1578  48 06 5C BD */	bl lbRTC_TimeCopy
/* 803A157C  38 00 00 00 */	li r0, 0
/* 803A1580  90 1E 00 08 */	stw r0, 8(r30)
/* 803A1584  48 00 00 0C */	b lbl_803A1590
lbl_803A1588:
/* 803A1588  7F C3 F3 78 */	mr r3, r30
/* 803A158C  4B FF FE 95 */	bl func_803A1420
lbl_803A1590:
/* 803A1590  39 61 00 20 */	addi r11, r1, 0x20
/* 803A1594  4B CF 99 8D */	bl func_8009AF20
/* 803A1598  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A159C  7C 08 03 A6 */	mtlr r0
/* 803A15A0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A15A4  4E 80 00 20 */	blr 
