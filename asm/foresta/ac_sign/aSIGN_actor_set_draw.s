lbl_804A159C:
/* 804A159C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804A15A0  7C 08 02 A6 */	mflr r0
/* 804A15A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 804A15A8  39 61 00 70 */	addi r11, r1, 0x70
/* 804A15AC  4B BF 99 01 */	bl func_8009AEAC
/* 804A15B0  7C 7C 1B 78 */	mr r28, r3
/* 804A15B4  7C 9D 23 78 */	mr r29, r4
/* 804A15B8  4B ED D8 15 */	bl Camera2_getCenterPos_p
/* 804A15BC  7C 7B 1B 78 */	mr r27, r3
/* 804A15C0  4B F0 38 19 */	bl mFI_GetBlockZMax
/* 804A15C4  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 804A15C8  4B F0 37 C9 */	bl mFI_GetBlockXMax
/* 804A15CC  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 804A15D0  3A BC 01 78 */	addi r21, r28, 0x178
/* 804A15D4  3A 60 00 00 */	li r19, 0
lbl_804A15D8:
/* 804A15D8  3A 80 00 00 */	li r20, 0
lbl_804A15DC:
/* 804A15DC  38 75 00 08 */	addi r3, r21, 8
/* 804A15E0  38 80 00 20 */	li r4, 0x20
/* 804A15E4  4B BB BA 85 */	bl bzero
/* 804A15E8  3A 94 00 01 */	addi r20, r20, 1
/* 804A15EC  3A B5 00 28 */	addi r21, r21, 0x28
/* 804A15F0  2C 14 00 02 */	cmpwi r20, 2
/* 804A15F4  41 80 FF E8 */	blt lbl_804A15DC
/* 804A15F8  3A 73 00 01 */	addi r19, r19, 1
/* 804A15FC  2C 13 00 02 */	cmpwi r19, 2
/* 804A1600  41 80 FF D8 */	blt lbl_804A15D8
/* 804A1604  80 BB 00 00 */	lwz r5, 0(r27)
/* 804A1608  7F A3 EB 78 */	mr r3, r29
/* 804A160C  80 9B 00 04 */	lwz r4, 4(r27)
/* 804A1610  80 1B 00 08 */	lwz r0, 8(r27)
/* 804A1614  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804A1618  90 81 00 28 */	stw r4, 0x28(r1)
/* 804A161C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804A1620  4B F3 80 51 */	bl mPlib_get_player_actor_main_index
/* 804A1624  2C 03 00 10 */	cmpwi r3, 0x10
/* 804A1628  40 82 00 18 */	bne lbl_804A1640
/* 804A162C  3C 60 80 64 */	lis r3, lit_483@ha /* 0x80645C30@ha */
/* 804A1630  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804A1634  C0 03 5C 30 */	lfs f0, lit_483@l(r3)  /* 0x80645C30@l */
/* 804A1638  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A163C  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_804A1640:
/* 804A1640  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804A1644  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804A1648  80 63 00 00 */	lwz r3, 0(r3)
/* 804A164C  A8 63 16 9C */	lha r3, 0x169c(r3)
/* 804A1650  7C 60 07 35 */	extsh. r0, r3
/* 804A1654  41 82 00 34 */	beq lbl_804A1688
/* 804A1658  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804A165C  3C 00 43 30 */	lis r0, 0x4330
/* 804A1660  90 61 00 34 */	stw r3, 0x34(r1)
/* 804A1664  3C 80 80 64 */	lis r4, lit_487@ha /* 0x80645C3C@ha */
/* 804A1668  C8 24 5C 3C */	lfd f1, lit_487@l(r4)  /* 0x80645C3C@l */
/* 804A166C  90 01 00 30 */	stw r0, 0x30(r1)
/* 804A1670  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 804A1674  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804A1678  EC 00 08 28 */	fsubs f0, f0, f1
/* 804A167C  EC 02 00 28 */	fsubs f0, f2, f0
/* 804A1680  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804A1684  48 00 00 18 */	b lbl_804A169C
lbl_804A1688:
/* 804A1688  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80645C48@ha */
/* 804A168C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804A1690  C0 03 5C 48 */	lfs f0, lit_604@l(r3)  /* 0x80645C48@l */
/* 804A1694  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A1698  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_804A169C:
/* 804A169C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804A16A0  38 61 00 10 */	addi r3, r1, 0x10
/* 804A16A4  81 01 00 28 */	lwz r8, 0x28(r1)
/* 804A16A8  38 81 00 14 */	addi r4, r1, 0x14
/* 804A16AC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804A16B0  38 A1 00 08 */	addi r5, r1, 8
/* 804A16B4  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804A16B8  38 C1 00 0C */	addi r6, r1, 0xc
/* 804A16BC  38 E1 00 18 */	addi r7, r1, 0x18
/* 804A16C0  91 01 00 1C */	stw r8, 0x1c(r1)
/* 804A16C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 804A16C8  4B F0 40 F9 */	bl mFI_Wpos2BkandUtNuminBlock
/* 804A16CC  2C 03 00 00 */	cmpwi r3, 0
/* 804A16D0  41 82 00 D4 */	beq lbl_804A17A4
/* 804A16D4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804A16D8  2C 04 00 08 */	cmpwi r4, 8
/* 804A16DC  40 80 00 14 */	bge lbl_804A16F0
/* 804A16E0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804A16E4  38 A4 00 10 */	addi r5, r4, 0x10
/* 804A16E8  38 03 FF FF */	addi r0, r3, -1
/* 804A16EC  48 00 00 0C */	b lbl_804A16F8
lbl_804A16F0:
/* 804A16F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A16F4  7C 85 23 78 */	mr r5, r4
lbl_804A16F8:
/* 804A16F8  80 81 00 08 */	lwz r4, 8(r1)
/* 804A16FC  2C 04 00 08 */	cmpwi r4, 8
/* 804A1700  40 80 00 14 */	bge lbl_804A1714
/* 804A1704  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804A1708  3A 64 00 10 */	addi r19, r4, 0x10
/* 804A170C  3B 03 FF FF */	addi r24, r3, -1
/* 804A1710  48 00 00 0C */	b lbl_804A171C
lbl_804A1714:
/* 804A1714  83 01 00 10 */	lwz r24, 0x10(r1)
/* 804A1718  7C 93 23 78 */	mr r19, r4
lbl_804A171C:
/* 804A171C  7C 17 03 78 */	mr r23, r0
/* 804A1720  7C B5 2B 78 */	mr r21, r5
/* 804A1724  3B 5C 01 78 */	addi r26, r28, 0x178
/* 804A1728  3B 60 00 00 */	li r27, 0
lbl_804A172C:
/* 804A172C  7F 16 C3 78 */	mr r22, r24
/* 804A1730  7E 74 9B 78 */	mr r20, r19
/* 804A1734  3B 20 00 00 */	li r25, 0
lbl_804A1738:
/* 804A1738  2C 17 00 00 */	cmpwi r23, 0
/* 804A173C  41 80 00 3C */	blt lbl_804A1778
/* 804A1740  7C 17 F8 00 */	cmpw r23, r31
/* 804A1744  40 80 00 34 */	bge lbl_804A1778
/* 804A1748  2C 16 00 00 */	cmpwi r22, 0
/* 804A174C  41 80 00 2C */	blt lbl_804A1778
/* 804A1750  7C 16 F0 00 */	cmpw r22, r30
/* 804A1754  40 80 00 24 */	bge lbl_804A1778
/* 804A1758  7F 83 E3 78 */	mr r3, r28
/* 804A175C  7F 44 D3 78 */	mr r4, r26
/* 804A1760  7F A5 EB 78 */	mr r5, r29
/* 804A1764  7E E6 BB 78 */	mr r6, r23
/* 804A1768  7E C7 B3 78 */	mr r7, r22
/* 804A176C  7E A8 AB 78 */	mr r8, r21
/* 804A1770  7E 89 A3 78 */	mr r9, r20
/* 804A1774  4B FF FC 85 */	bl aSIGN_draw_set
lbl_804A1778:
/* 804A1778  3B 39 00 01 */	addi r25, r25, 1
/* 804A177C  3A 94 FF F0 */	addi r20, r20, -16
/* 804A1780  2C 19 00 02 */	cmpwi r25, 2
/* 804A1784  3B 5A 00 28 */	addi r26, r26, 0x28
/* 804A1788  3A D6 00 01 */	addi r22, r22, 1
/* 804A178C  41 80 FF AC */	blt lbl_804A1738
/* 804A1790  3B 7B 00 01 */	addi r27, r27, 1
/* 804A1794  3A B5 FF F0 */	addi r21, r21, -16
/* 804A1798  2C 1B 00 02 */	cmpwi r27, 2
/* 804A179C  3A F7 00 01 */	addi r23, r23, 1
/* 804A17A0  41 80 FF 8C */	blt lbl_804A172C
lbl_804A17A4:
/* 804A17A4  39 61 00 70 */	addi r11, r1, 0x70
/* 804A17A8  4B BF 97 51 */	bl func_8009AEF8
/* 804A17AC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804A17B0  7C 08 03 A6 */	mtlr r0
/* 804A17B4  38 21 00 70 */	addi r1, r1, 0x70
/* 804A17B8  4E 80 00 20 */	blr 
