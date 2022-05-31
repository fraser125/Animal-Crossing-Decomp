lbl_805C15B0:
/* 805C15B0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805C15B4  7C 08 02 A6 */	mflr r0
/* 805C15B8  90 01 00 74 */	stw r0, 0x74(r1)
/* 805C15BC  39 61 00 70 */	addi r11, r1, 0x70
/* 805C15C0  4B AD 98 F9 */	bl func_8009AEB8
/* 805C15C4  3C A0 80 6C */	lis r5, data_806C7300@ha /* 0x806C7300@ha */
/* 805C15C8  54 80 10 3A */	slwi r0, r4, 2
/* 805C15CC  3B C5 73 00 */	addi r30, r5, data_806C7300@l /* 0x806C7300@l */
/* 805C15D0  7C 79 1B 78 */	mr r25, r3
/* 805C15D4  38 7E 01 7C */	addi r3, r30, 0x17c
/* 805C15D8  54 9C 07 FE */	clrlwi r28, r4, 0x1f
/* 805C15DC  7F A3 00 2E */	lwzx r29, r3, r0
/* 805C15E0  3B FE 01 98 */	addi r31, r30, 0x198
/* 805C15E4  3B 60 00 00 */	li r27, 0
/* 805C15E8  3B 00 00 00 */	li r24, 0
/* 805C15EC  3A E0 00 00 */	li r23, 0
lbl_805C15F0:
/* 805C15F0  C0 39 00 14 */	lfs f1, 0x14(r25)
/* 805C15F4  3B 40 00 00 */	li r26, 0
/* 805C15F8  7C 1F BC 2E */	lfsx f0, r31, r23
/* 805C15FC  3A C0 00 00 */	li r22, 0
/* 805C1600  EC 01 00 2A */	fadds f0, f1, f0
/* 805C1604  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_805C1608:
/* 805C1608  2C 1C 00 00 */	cmpwi r28, 0
/* 805C160C  40 82 00 70 */	bne lbl_805C167C
/* 805C1610  7C 1A C2 15 */	add. r0, r26, r24
/* 805C1614  41 82 00 D4 */	beq lbl_805C16E8
/* 805C1618  2C 00 00 08 */	cmpwi r0, 8
/* 805C161C  41 82 00 CC */	beq lbl_805C16E8
/* 805C1620  38 9E 01 8C */	addi r4, r30, 0x18c
/* 805C1624  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805C1628  80 1D 00 00 */	lwz r0, 0(r29)
/* 805C162C  38 61 00 24 */	addi r3, r1, 0x24
/* 805C1630  7C 04 B4 2E */	lfsx f0, r4, r22
/* 805C1634  38 81 00 10 */	addi r4, r1, 0x10
/* 805C1638  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C163C  38 BE 01 A4 */	addi r5, r30, 0x1a4
/* 805C1640  EC 01 00 2A */	fadds f0, f1, f0
/* 805C1644  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 805C1648  A1 1D 00 04 */	lhz r8, 4(r29)
/* 805C164C  38 C0 00 79 */	li r6, 0x79
/* 805C1650  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805C1654  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C1658  B1 01 00 14 */	sth r8, 0x14(r1)
/* 805C165C  81 01 00 30 */	lwz r8, 0x30(r1)
/* 805C1660  89 3D 00 06 */	lbz r9, 6(r29)
/* 805C1664  99 21 00 16 */	stb r9, 0x16(r1)
/* 805C1668  91 01 00 24 */	stw r8, 0x24(r1)
/* 805C166C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 805C1670  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805C1674  4B DD 07 05 */	bl mCoBG_SetPluss5PointOffset_file
/* 805C1678  48 00 00 70 */	b lbl_805C16E8
lbl_805C167C:
/* 805C167C  7C 1A C2 14 */	add r0, r26, r24
/* 805C1680  2C 00 00 02 */	cmpwi r0, 2
/* 805C1684  41 82 00 64 */	beq lbl_805C16E8
/* 805C1688  2C 00 00 06 */	cmpwi r0, 6
/* 805C168C  41 82 00 5C */	beq lbl_805C16E8
/* 805C1690  38 9E 01 8C */	addi r4, r30, 0x18c
/* 805C1694  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 805C1698  80 1D 00 00 */	lwz r0, 0(r29)
/* 805C169C  38 61 00 18 */	addi r3, r1, 0x18
/* 805C16A0  7C 04 B4 2E */	lfsx f0, r4, r22
/* 805C16A4  38 81 00 08 */	addi r4, r1, 8
/* 805C16A8  90 01 00 08 */	stw r0, 8(r1)
/* 805C16AC  38 BE 01 A4 */	addi r5, r30, 0x1a4
/* 805C16B0  EC 01 00 2A */	fadds f0, f1, f0
/* 805C16B4  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 805C16B8  A1 1D 00 04 */	lhz r8, 4(r29)
/* 805C16BC  38 C0 00 7F */	li r6, 0x7f
/* 805C16C0  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805C16C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C16C8  B1 01 00 0C */	sth r8, 0xc(r1)
/* 805C16CC  81 01 00 30 */	lwz r8, 0x30(r1)
/* 805C16D0  89 3D 00 06 */	lbz r9, 6(r29)
/* 805C16D4  99 21 00 0E */	stb r9, 0xe(r1)
/* 805C16D8  91 01 00 18 */	stw r8, 0x18(r1)
/* 805C16DC  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 805C16E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 805C16E4  4B DD 06 95 */	bl mCoBG_SetPluss5PointOffset_file
lbl_805C16E8:
/* 805C16E8  3B 5A 00 01 */	addi r26, r26, 1
/* 805C16EC  3A D6 00 04 */	addi r22, r22, 4
/* 805C16F0  2C 1A 00 03 */	cmpwi r26, 3
/* 805C16F4  3B BD 00 07 */	addi r29, r29, 7
/* 805C16F8  41 80 FF 10 */	blt lbl_805C1608
/* 805C16FC  3B 7B 00 01 */	addi r27, r27, 1
/* 805C1700  3A F7 00 04 */	addi r23, r23, 4
/* 805C1704  2C 1B 00 03 */	cmpwi r27, 3
/* 805C1708  3B 18 00 03 */	addi r24, r24, 3
/* 805C170C  41 80 FE E4 */	blt lbl_805C15F0
/* 805C1710  39 61 00 70 */	addi r11, r1, 0x70
/* 805C1714  4B AD 97 F1 */	bl func_8009AF04
/* 805C1718  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805C171C  7C 08 03 A6 */	mtlr r0
/* 805C1720  38 21 00 70 */	addi r1, r1, 0x70
/* 805C1724  4E 80 00 20 */	blr 
