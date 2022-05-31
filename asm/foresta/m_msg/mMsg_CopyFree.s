lbl_803C1578:
/* 803C1578  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803C157C  7C 08 02 A6 */	mflr r0
/* 803C1580  90 01 00 54 */	stw r0, 0x54(r1)
/* 803C1584  39 61 00 50 */	addi r11, r1, 0x50
/* 803C1588  4B CD 99 2D */	bl func_8009AEB4
/* 803C158C  7C 96 23 79 */	or. r22, r4, r4
/* 803C1590  7C 75 1B 78 */	mr r21, r3
/* 803C1594  7C BD 2B 78 */	mr r29, r5
/* 803C1598  7C DE 33 78 */	mr r30, r6
/* 803C159C  7C FA 3B 78 */	mr r26, r7
/* 803C15A0  7D 17 43 78 */	mr r23, r8
/* 803C15A4  7D 3F 4B 78 */	mr r31, r9
/* 803C15A8  41 80 00 0C */	blt lbl_803C15B4
/* 803C15AC  2C 16 00 14 */	cmpwi r22, 0x14
/* 803C15B0  41 80 00 08 */	blt lbl_803C15B8
lbl_803C15B4:
/* 803C15B4  3A C0 00 00 */	li r22, 0
lbl_803C15B8:
/* 803C15B8  7F A3 EB 78 */	mr r3, r29
/* 803C15BC  7F C4 F3 78 */	mr r4, r30
/* 803C15C0  4B FE E2 49 */	bl mFont_CodeSize_idx_get
/* 803C15C4  56 C4 20 36 */	slwi r4, r22, 4
/* 803C15C8  7C 7C 1B 78 */	mr r28, r3
/* 803C15CC  3B 24 00 38 */	addi r25, r4, 0x38
/* 803C15D0  38 80 00 10 */	li r4, 0x10
/* 803C15D4  7F 35 CA 14 */	add r25, r21, r25
/* 803C15D8  7F 23 CB 78 */	mr r3, r25
/* 803C15DC  4B FF F6 89 */	bl mMsg_Get_Length_String
/* 803C15E0  7C 60 1B 78 */	mr r0, r3
/* 803C15E4  7F A3 EB 78 */	mr r3, r29
/* 803C15E8  7C 18 03 78 */	mr r24, r0
/* 803C15EC  7F 46 D3 78 */	mr r6, r26
/* 803C15F0  7C 9E C2 14 */	add r4, r30, r24
/* 803C15F4  7C BE E2 14 */	add r5, r30, r28
/* 803C15F8  38 E0 00 00 */	li r7, 0
/* 803C15FC  4B FF F7 79 */	bl mMsg_MoveDataCut
/* 803C1600  7F 7D F2 14 */	add r27, r29, r30
/* 803C1604  7C 7A 1B 78 */	mr r26, r3
/* 803C1608  7F 24 CB 78 */	mr r4, r25
/* 803C160C  7F 05 C3 78 */	mr r5, r24
/* 803C1610  7F 63 DB 78 */	mr r3, r27
/* 803C1614  4B FF F8 29 */	bl mMsg_CopyString
/* 803C1618  2C 17 00 05 */	cmpwi r23, 5
/* 803C161C  41 82 00 0C */	beq lbl_803C1628
/* 803C1620  7E E4 BB 78 */	mr r4, r23
/* 803C1624  48 00 00 10 */	b lbl_803C1634
lbl_803C1628:
/* 803C1628  56 C0 10 3A */	slwi r0, r22, 2
/* 803C162C  7C 75 02 14 */	add r3, r21, r0
/* 803C1630  80 83 01 78 */	lwz r4, 0x178(r3)
lbl_803C1634:
/* 803C1634  2C 04 00 00 */	cmpwi r4, 0
/* 803C1638  41 82 00 64 */	beq lbl_803C169C
/* 803C163C  38 61 00 08 */	addi r3, r1, 8
/* 803C1640  38 A4 07 37 */	addi r5, r4, 0x737
/* 803C1644  38 80 00 10 */	li r4, 0x10
/* 803C1648  48 02 D6 85 */	bl mString_Load_StringFromRom
/* 803C164C  38 61 00 08 */	addi r3, r1, 8
/* 803C1650  38 80 00 10 */	li r4, 0x10
/* 803C1654  4B FF F6 11 */	bl mMsg_Get_Length_String
/* 803C1658  7C 7C 1B 78 */	mr r28, r3
/* 803C165C  38 A1 00 08 */	addi r5, r1, 8
/* 803C1660  38 00 00 20 */	li r0, 0x20
/* 803C1664  7F A3 EB 78 */	mr r3, r29
/* 803C1668  38 9C 00 01 */	addi r4, r28, 1
/* 803C166C  7C 05 E1 AE */	stbx r0, r5, r28
/* 803C1670  7F C5 F3 78 */	mr r5, r30
/* 803C1674  7F 46 D3 78 */	mr r6, r26
/* 803C1678  7C 9E 22 14 */	add r4, r30, r4
/* 803C167C  38 E0 00 00 */	li r7, 0
/* 803C1680  4B FF F6 F5 */	bl mMsg_MoveDataCut
/* 803C1684  7C 60 1B 78 */	mr r0, r3
/* 803C1688  7F 63 DB 78 */	mr r3, r27
/* 803C168C  7C 1A 03 78 */	mr r26, r0
/* 803C1690  38 81 00 08 */	addi r4, r1, 8
/* 803C1694  38 BC 00 01 */	addi r5, r28, 1
/* 803C1698  4B FF F7 A5 */	bl mMsg_CopyString
lbl_803C169C:
/* 803C169C  28 1F 00 00 */	cmplwi r31, 0
/* 803C16A0  41 82 00 10 */	beq lbl_803C16B0
/* 803C16A4  88 7B 00 00 */	lbz r3, 0(r27)
/* 803C16A8  4B FE DF A1 */	bl mFont_small_to_capital
/* 803C16AC  98 7B 00 00 */	stb r3, 0(r27)
lbl_803C16B0:
/* 803C16B0  7F 43 D3 78 */	mr r3, r26
/* 803C16B4  39 61 00 50 */	addi r11, r1, 0x50
/* 803C16B8  4B CD 98 49 */	bl func_8009AF00
/* 803C16BC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803C16C0  7C 08 03 A6 */	mtlr r0
/* 803C16C4  38 21 00 50 */	addi r1, r1, 0x50
/* 803C16C8  4E 80 00 20 */	blr 
