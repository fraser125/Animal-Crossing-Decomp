lbl_803C16CC:
/* 803C16CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C16D0  7C 08 02 A6 */	mflr r0
/* 803C16D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C16D8  39 61 00 30 */	addi r11, r1, 0x30
/* 803C16DC  4B CD 97 ED */	bl func_8009AEC8
/* 803C16E0  7C 7C 1B 78 */	mr r28, r3
/* 803C16E4  7C 9D 23 78 */	mr r29, r4
/* 803C16E8  7C BE 2B 78 */	mr r30, r5
/* 803C16EC  7C FB 3B 78 */	mr r27, r7
/* 803C16F0  7D 1A 43 78 */	mr r26, r8
/* 803C16F4  7C C3 33 78 */	mr r3, r6
/* 803C16F8  38 80 00 10 */	li r4, 0x10
/* 803C16FC  4B FF F5 69 */	bl mMsg_Get_Length_String
/* 803C1700  1C DB 00 03 */	mulli r6, r27, 3
/* 803C1704  3C A0 80 65 */	lis r5, MMSG_pf_cl@ha /* 0x80657108@ha */
/* 803C1708  3C 80 80 65 */	lis r4, add_string@ha /* 0x8065711C@ha */
/* 803C170C  83 FD 00 00 */	lwz r31, 0(r29)
/* 803C1710  38 05 71 08 */	addi r0, r5, MMSG_pf_cl@l /* 0x80657108@l */
/* 803C1714  7C E0 32 14 */	add r7, r0, r6
/* 803C1718  88 C7 00 00 */	lbz r6, 0(r7)
/* 803C171C  38 A4 71 1C */	addi r5, r4, add_string@l /* 0x8065711C@l */
/* 803C1720  88 87 00 01 */	lbz r4, 1(r7)
/* 803C1724  2C 1A 00 00 */	cmpwi r26, 0
/* 803C1728  88 07 00 02 */	lbz r0, 2(r7)
/* 803C172C  7C 7B 1B 78 */	mr r27, r3
/* 803C1730  98 C5 00 02 */	stb r6, 2(r5)
/* 803C1734  98 85 00 03 */	stb r4, 3(r5)
/* 803C1738  98 05 00 04 */	stb r0, 4(r5)
/* 803C173C  40 82 00 0C */	bne lbl_803C1748
/* 803C1740  38 00 00 00 */	li r0, 0
/* 803C1744  48 00 00 24 */	b lbl_803C1768
lbl_803C1748:
/* 803C1748  38 61 00 08 */	addi r3, r1, 8
/* 803C174C  38 BA 07 37 */	addi r5, r26, 0x737
/* 803C1750  38 80 00 10 */	li r4, 0x10
/* 803C1754  48 02 D5 79 */	bl mString_Load_StringFromRom
/* 803C1758  38 61 00 08 */	addi r3, r1, 8
/* 803C175C  38 80 00 10 */	li r4, 0x10
/* 803C1760  4B FF F5 05 */	bl mMsg_Get_Length_String
/* 803C1764  38 03 00 01 */	addi r0, r3, 1
lbl_803C1768:
/* 803C1768  3C 60 80 65 */	lis r3, add_string@ha /* 0x8065711C@ha */
/* 803C176C  7C 1B 02 14 */	add r0, r27, r0
/* 803C1770  38 83 71 1C */	addi r4, r3, add_string@l /* 0x8065711C@l */
/* 803C1774  7F E5 FB 78 */	mr r5, r31
/* 803C1778  98 04 00 05 */	stb r0, 5(r4)
/* 803C177C  7F 83 E3 78 */	mr r3, r28
/* 803C1780  7F C6 F3 78 */	mr r6, r30
/* 803C1784  38 9F 00 06 */	addi r4, r31, 6
/* 803C1788  38 E0 00 00 */	li r7, 0
/* 803C178C  4B FF F5 E9 */	bl mMsg_MoveDataCut
/* 803C1790  7C 60 1B 78 */	mr r0, r3
/* 803C1794  3C 80 80 65 */	lis r4, add_string@ha /* 0x8065711C@ha */
/* 803C1798  38 84 71 1C */	addi r4, r4, add_string@l /* 0x8065711C@l */
/* 803C179C  7C 7C FA 14 */	add r3, r28, r31
/* 803C17A0  7C 1B 03 78 */	mr r27, r0
/* 803C17A4  38 A0 00 06 */	li r5, 6
/* 803C17A8  4B FF F6 95 */	bl mMsg_CopyString
/* 803C17AC  80 9D 00 00 */	lwz r4, 0(r29)
/* 803C17B0  7F 63 DB 78 */	mr r3, r27
/* 803C17B4  38 04 00 06 */	addi r0, r4, 6
/* 803C17B8  90 1D 00 00 */	stw r0, 0(r29)
/* 803C17BC  39 61 00 30 */	addi r11, r1, 0x30
/* 803C17C0  4B CD 97 55 */	bl func_8009AF14
/* 803C17C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C17C8  7C 08 03 A6 */	mtlr r0
/* 803C17CC  38 21 00 30 */	addi r1, r1, 0x30
/* 803C17D0  4E 80 00 20 */	blr 
