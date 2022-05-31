lbl_803A7154:
/* 803A7154  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A7158  7C 08 02 A6 */	mflr r0
/* 803A715C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A7160  39 61 00 20 */	addi r11, r1, 0x20
/* 803A7164  4B CF 3D 71 */	bl func_8009AED4
/* 803A7168  7C 7D 1B 78 */	mr r29, r3
/* 803A716C  7C 9E 23 78 */	mr r30, r4
/* 803A7170  3B E0 00 00 */	li r31, 0
/* 803A7174  4B FF DB 1D */	bl mFI_CheckFieldData
/* 803A7178  2C 03 00 00 */	cmpwi r3, 0
/* 803A717C  41 82 00 40 */	beq lbl_803A71BC
/* 803A7180  7F A3 EB 78 */	mr r3, r29
/* 803A7184  7F C4 F3 78 */	mr r4, r30
/* 803A7188  4B FF E0 81 */	bl mFI_BlockCheck
/* 803A718C  2C 03 00 00 */	cmpwi r3, 0
/* 803A7190  41 82 00 2C */	beq lbl_803A71BC
/* 803A7194  7F A3 EB 78 */	mr r3, r29
/* 803A7198  7F C4 F3 78 */	mr r4, r30
/* 803A719C  4B FF E0 1D */	bl mFI_GetBlockNum
/* 803A71A0  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A71A4  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A71A8  80 84 00 00 */	lwz r4, 0(r4)
/* 803A71AC  1C 03 06 14 */	mulli r0, r3, 0x614
/* 803A71B0  80 64 00 74 */	lwz r3, 0x74(r4)
/* 803A71B4  7C 63 02 14 */	add r3, r3, r0
/* 803A71B8  83 E3 05 84 */	lwz r31, 0x584(r3)
lbl_803A71BC:
/* 803A71BC  7F E3 FB 78 */	mr r3, r31
/* 803A71C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A71C4  4B CF 3D 5D */	bl func_8009AF20
/* 803A71C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A71CC  7C 08 03 A6 */	mtlr r0
/* 803A71D0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A71D4  4E 80 00 20 */	blr 
