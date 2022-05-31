lbl_803D1950:
/* 803D1950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D1954  7C 08 02 A6 */	mflr r0
/* 803D1958  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D195C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D1960  4B CC 95 75 */	bl func_8009AED4
/* 803D1964  7C 9E 23 79 */	or. r30, r4, r4
/* 803D1968  3C 80 80 66 */	lis r4, l_no_name_npc_name@ha /* 0x8065B1D8@ha */
/* 803D196C  38 04 B1 D8 */	addi r0, r4, l_no_name_npc_name@l /* 0x8065B1D8@l */
/* 803D1970  7C 7D 1B 78 */	mr r29, r3
/* 803D1974  7C 1F 03 78 */	mr r31, r0
/* 803D1978  41 82 00 58 */	beq lbl_803D19D0
/* 803D197C  A0 9E 00 00 */	lhz r4, 0(r30)
/* 803D1980  28 04 FF FF */	cmplwi r4, 0xffff
/* 803D1984  41 82 00 20 */	beq lbl_803D19A4
/* 803D1988  38 61 00 08 */	addi r3, r1, 8
/* 803D198C  38 A0 00 01 */	li r5, 1
/* 803D1990  4B FF FF 0D */	bl mNpc_GetCacheName
/* 803D1994  2C 03 00 00 */	cmpwi r3, 0
/* 803D1998  41 82 00 0C */	beq lbl_803D19A4
/* 803D199C  3B E1 00 08 */	addi r31, r1, 8
/* 803D19A0  48 00 00 30 */	b lbl_803D19D0
lbl_803D19A4:
/* 803D19A4  A0 9E 00 00 */	lhz r4, 0(r30)
/* 803D19A8  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803D19AC  2C 00 00 0E */	cmpwi r0, 0xe
/* 803D19B0  40 82 00 20 */	bne lbl_803D19D0
/* 803D19B4  38 61 00 08 */	addi r3, r1, 8
/* 803D19B8  4B FF FE 55 */	bl mNpc_GetNpcWorldNameTableNo
/* 803D19BC  3B E1 00 08 */	addi r31, r1, 8
/* 803D19C0  A0 9E 00 00 */	lhz r4, 0(r30)
/* 803D19C4  7F E3 FB 78 */	mr r3, r31
/* 803D19C8  38 A0 00 01 */	li r5, 1
/* 803D19CC  4B FF FF 2D */	bl mNpc_SetCacheName
lbl_803D19D0:
/* 803D19D0  7F A3 EB 78 */	mr r3, r29
/* 803D19D4  7F E4 FB 78 */	mr r4, r31
/* 803D19D8  48 00 E4 E5 */	bl mPr_CopyPlayerName
/* 803D19DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D19E0  4B CC 95 41 */	bl func_8009AF20
/* 803D19E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D19E8  7C 08 03 A6 */	mtlr r0
/* 803D19EC  38 21 00 20 */	addi r1, r1, 0x20
/* 803D19F0  4E 80 00 20 */	blr 
