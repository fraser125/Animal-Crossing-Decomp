lbl_804B16A4:
/* 804B16A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804B16A8  7C 08 02 A6 */	mflr r0
/* 804B16AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 804B16B0  39 61 00 70 */	addi r11, r1, 0x70
/* 804B16B4  4B BE 98 21 */	bl func_8009AED4
/* 804B16B8  7C DE 33 78 */	mr r30, r6
/* 804B16BC  7C 7D 1B 78 */	mr r29, r3
/* 804B16C0  7C BF 2B 78 */	mr r31, r5
/* 804B16C4  38 C1 00 08 */	addi r6, r1, 8
/* 804B16C8  4B FF FD ED */	bl bIT_common_bury_after
/* 804B16CC  2C 1E 00 01 */	cmpwi r30, 1
/* 804B16D0  41 82 00 D8 */	beq lbl_804B17A8
/* 804B16D4  2C 03 00 01 */	cmpwi r3, 1
/* 804B16D8  41 82 00 6C */	beq lbl_804B1744
/* 804B16DC  40 80 00 08 */	bge lbl_804B16E4
/* 804B16E0  48 00 00 10 */	b lbl_804B16F0
lbl_804B16E4:
/* 804B16E4  2C 03 00 03 */	cmpwi r3, 3
/* 804B16E8  40 80 00 08 */	bge lbl_804B16F0
/* 804B16EC  48 00 00 90 */	b lbl_804B177C
lbl_804B16F0:
/* 804B16F0  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B16F4  38 81 00 48 */	addi r4, r1, 0x48
/* 804B16F8  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B16FC  38 A0 00 01 */	li r5, 1
/* 804B1700  A0 61 00 08 */	lhz r3, 8(r1)
/* 804B1704  90 C1 00 48 */	stw r6, 0x48(r1)
/* 804B1708  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804B170C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B1710  90 01 00 50 */	stw r0, 0x50(r1)
/* 804B1714  4B EF 61 1D */	bl mFI_SetFG_common
/* 804B1718  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 804B171C  41 82 01 20 */	beq lbl_804B183C
/* 804B1720  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B1724  38 61 00 3C */	addi r3, r1, 0x3c
/* 804B1728  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B172C  90 81 00 3C */	stw r4, 0x3c(r1)
/* 804B1730  90 01 00 40 */	stw r0, 0x40(r1)
/* 804B1734  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B1738  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B173C  4B EF 78 9D */	bl mFI_Wpos2DepositON
/* 804B1740  48 00 00 FC */	b lbl_804B183C
lbl_804B1744:
/* 804B1744  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B1748  A0 81 00 08 */	lhz r4, 8(r1)
/* 804B174C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B1750  7F E5 FB 78 */	mr r5, r31
/* 804B1754  3C 63 00 02 */	addis r3, r3, 2
/* 804B1758  7F E6 FB 78 */	mr r6, r31
/* 804B175C  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804B1760  38 E0 00 83 */	li r7, 0x83
/* 804B1764  39 00 00 00 */	li r8, 0
/* 804B1768  80 63 00 00 */	lwz r3, 0(r3)
/* 804B176C  3C 63 00 01 */	addis r3, r3, 1
/* 804B1770  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804B1774  48 00 1A C9 */	bl bIT_actor_drop_entry
/* 804B1778  48 00 00 C4 */	b lbl_804B183C
lbl_804B177C:
/* 804B177C  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B1780  38 81 00 30 */	addi r4, r1, 0x30
/* 804B1784  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B1788  38 A0 00 01 */	li r5, 1
/* 804B178C  A0 61 00 08 */	lhz r3, 8(r1)
/* 804B1790  90 C1 00 30 */	stw r6, 0x30(r1)
/* 804B1794  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B1798  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B179C  90 01 00 38 */	stw r0, 0x38(r1)
/* 804B17A0  4B EF 60 91 */	bl mFI_SetFG_common
/* 804B17A4  48 00 00 98 */	b lbl_804B183C
lbl_804B17A8:
/* 804B17A8  2C 03 00 00 */	cmpwi r3, 0
/* 804B17AC  41 82 00 14 */	beq lbl_804B17C0
/* 804B17B0  41 80 00 10 */	blt lbl_804B17C0
/* 804B17B4  2C 03 00 03 */	cmpwi r3, 3
/* 804B17B8  40 80 00 08 */	bge lbl_804B17C0
/* 804B17BC  48 00 00 58 */	b lbl_804B1814
lbl_804B17C0:
/* 804B17C0  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B17C4  7F A3 EB 78 */	mr r3, r29
/* 804B17C8  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B17CC  38 81 00 24 */	addi r4, r1, 0x24
/* 804B17D0  38 A0 00 01 */	li r5, 1
/* 804B17D4  90 C1 00 24 */	stw r6, 0x24(r1)
/* 804B17D8  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B17DC  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B17E0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804B17E4  4B EF 60 4D */	bl mFI_SetFG_common
/* 804B17E8  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 804B17EC  41 82 00 50 */	beq lbl_804B183C
/* 804B17F0  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B17F4  38 61 00 18 */	addi r3, r1, 0x18
/* 804B17F8  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B17FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804B1800  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B1804  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B1808  90 01 00 20 */	stw r0, 0x20(r1)
/* 804B180C  4B EF 77 CD */	bl mFI_Wpos2DepositON
/* 804B1810  48 00 00 2C */	b lbl_804B183C
lbl_804B1814:
/* 804B1814  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B1818  38 81 00 0C */	addi r4, r1, 0xc
/* 804B181C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B1820  38 A0 00 01 */	li r5, 1
/* 804B1824  A0 61 00 08 */	lhz r3, 8(r1)
/* 804B1828  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804B182C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B1830  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B1834  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B1838  4B EF 5F F9 */	bl mFI_SetFG_common
lbl_804B183C:
/* 804B183C  39 61 00 70 */	addi r11, r1, 0x70
/* 804B1840  4B BE 96 E1 */	bl func_8009AF20
/* 804B1844  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804B1848  7C 08 03 A6 */	mtlr r0
/* 804B184C  38 21 00 70 */	addi r1, r1, 0x70
/* 804B1850  4E 80 00 20 */	blr 
