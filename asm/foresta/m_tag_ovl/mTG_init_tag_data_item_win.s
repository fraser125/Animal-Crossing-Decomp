lbl_805F159C:
/* 805F159C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F15A0  7C 08 02 A6 */	mflr r0
/* 805F15A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F15A8  39 61 00 30 */	addi r11, r1, 0x30
/* 805F15AC  4B AA 99 29 */	bl func_8009AED4
/* 805F15B0  7C 7D 1B 78 */	mr r29, r3
/* 805F15B4  38 00 00 00 */	li r0, 0
/* 805F15B8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F15BC  83 E3 09 7C */	lwz r31, 0x97c(r3)
/* 805F15C0  3B DF 00 08 */	addi r30, r31, 8
/* 805F15C4  B0 01 00 08 */	sth r0, 8(r1)
/* 805F15C8  7F C3 F3 78 */	mr r3, r30
/* 805F15CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F15D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F15D4  4B FF E5 8D */	bl mTG_get_table_idx
/* 805F15D8  38 00 00 00 */	li r0, 0
/* 805F15DC  38 9E 00 0C */	addi r4, r30, 0xc
/* 805F15E0  90 1F 00 00 */	stw r0, 0(r31)
/* 805F15E4  7C 7F 1B 78 */	mr r31, r3
/* 805F15E8  7F A3 EB 78 */	mr r3, r29
/* 805F15EC  80 BE 00 38 */	lwz r5, 0x38(r30)
/* 805F15F0  7F E6 FB 78 */	mr r6, r31
/* 805F15F4  4B FF E0 BD */	bl mTG_set_hand_pos
/* 805F15F8  7F C3 F3 78 */	mr r3, r30
/* 805F15FC  4B FF F8 69 */	bl mTG_init_tag_data_set_base_pos
/* 805F1600  38 7E 00 48 */	addi r3, r30, 0x48
/* 805F1604  38 80 00 23 */	li r4, 0x23
/* 805F1608  38 A0 00 20 */	li r5, 0x20
/* 805F160C  4B DC 94 3D */	bl mem_clear
/* 805F1610  38 7E 00 6B */	addi r3, r30, 0x6b
/* 805F1614  38 80 00 23 */	li r4, 0x23
/* 805F1618  38 A0 00 20 */	li r5, 0x20
/* 805F161C  4B DC 94 2D */	bl mem_clear
/* 805F1620  38 7E 00 8E */	addi r3, r30, 0x8e
/* 805F1624  38 80 00 23 */	li r4, 0x23
/* 805F1628  38 A0 00 20 */	li r5, 0x20
/* 805F162C  4B DC 94 1D */	bl mem_clear
/* 805F1630  7F A6 EB 78 */	mr r6, r29
/* 805F1634  7F E7 FB 78 */	mr r7, r31
/* 805F1638  38 61 00 08 */	addi r3, r1, 8
/* 805F163C  38 81 00 10 */	addi r4, r1, 0x10
/* 805F1640  38 A1 00 0C */	addi r5, r1, 0xc
/* 805F1644  4B FF F8 D1 */	bl mTG_init_tag_data_set_itemNo
/* 805F1648  A0 01 00 08 */	lhz r0, 8(r1)
/* 805F164C  28 00 00 00 */	cmplwi r0, 0
/* 805F1650  40 82 00 1C */	bne lbl_805F166C
/* 805F1654  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805F1658  28 03 00 00 */	cmplwi r3, 0
/* 805F165C  41 82 00 30 */	beq lbl_805F168C
/* 805F1660  4B DC B1 41 */	bl mMl_check_not_used_mail
/* 805F1664  2C 03 00 00 */	cmpwi r3, 0
/* 805F1668  40 82 00 24 */	bne lbl_805F168C
lbl_805F166C:
/* 805F166C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 805F1670  7F A3 EB 78 */	mr r3, r29
/* 805F1674  A0 C1 00 08 */	lhz r6, 8(r1)
/* 805F1678  7F C4 F3 78 */	mr r4, r30
/* 805F167C  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 805F1680  7F E8 FB 78 */	mr r8, r31
/* 805F1684  4B FF F3 4D */	bl mTG_init_tag_data_item_win_sub_mail_item
/* 805F1688  48 00 00 8C */	b lbl_805F1714
lbl_805F168C:
/* 805F168C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 805F1690  2C 03 00 0F */	cmpwi r3, 0xf
/* 805F1694  40 82 00 14 */	bne lbl_805F16A8
/* 805F1698  7F A3 EB 78 */	mr r3, r29
/* 805F169C  7F E4 FB 78 */	mr r4, r31
/* 805F16A0  4B FF F9 91 */	bl mTG_init_tag_data_catalog_win
/* 805F16A4  48 00 00 70 */	b lbl_805F1714
lbl_805F16A8:
/* 805F16A8  2C 03 00 0A */	cmpwi r3, 0xa
/* 805F16AC  40 82 00 14 */	bne lbl_805F16C0
/* 805F16B0  7F A3 EB 78 */	mr r3, r29
/* 805F16B4  7F E4 FB 78 */	mr r4, r31
/* 805F16B8  4B FF FA 6D */	bl mTG_init_tag_data_cpmail_wc_win
/* 805F16BC  48 00 00 58 */	b lbl_805F1714
lbl_805F16C0:
/* 805F16C0  2C 03 00 15 */	cmpwi r3, 0x15
/* 805F16C4  40 82 00 10 */	bne lbl_805F16D4
/* 805F16C8  7F A3 EB 78 */	mr r3, r29
/* 805F16CC  4B FF FB 7D */	bl mTG_init_tag_data_cporiginal_wc_win
/* 805F16D0  48 00 00 44 */	b lbl_805F1714
lbl_805F16D4:
/* 805F16D4  2C 03 00 14 */	cmpwi r3, 0x14
/* 805F16D8  41 82 00 24 */	beq lbl_805F16FC
/* 805F16DC  38 03 FF EF */	addi r0, r3, -17
/* 805F16E0  28 00 00 01 */	cmplwi r0, 1
/* 805F16E4  40 81 00 18 */	ble lbl_805F16FC
/* 805F16E8  38 03 FF E8 */	addi r0, r3, -24
/* 805F16EC  28 00 00 02 */	cmplwi r0, 2
/* 805F16F0  40 81 00 0C */	ble lbl_805F16FC
/* 805F16F4  2C 03 00 17 */	cmpwi r3, 0x17
/* 805F16F8  40 82 00 14 */	bne lbl_805F170C
lbl_805F16FC:
/* 805F16FC  7F A3 EB 78 */	mr r3, r29
/* 805F1700  7F E4 FB 78 */	mr r4, r31
/* 805F1704  4B FF FC 65 */	bl mTG_init_tag_data_needlework_win
/* 805F1708  48 00 00 0C */	b lbl_805F1714
lbl_805F170C:
/* 805F170C  38 00 00 00 */	li r0, 0
/* 805F1710  98 1E 00 01 */	stb r0, 1(r30)
lbl_805F1714:
/* 805F1714  39 61 00 30 */	addi r11, r1, 0x30
/* 805F1718  4B AA 98 09 */	bl func_8009AF20
/* 805F171C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F1720  7C 08 03 A6 */	mtlr r0
/* 805F1724  38 21 00 30 */	addi r1, r1, 0x30
/* 805F1728  4E 80 00 20 */	blr 
