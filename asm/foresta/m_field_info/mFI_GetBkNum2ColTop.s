lbl_803A656C:
/* 803A656C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A6570  7C 08 02 A6 */	mflr r0
/* 803A6574  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A6578  39 61 00 20 */	addi r11, r1, 0x20
/* 803A657C  4B CF 49 59 */	bl func_8009AED4
/* 803A6580  7C 7D 1B 78 */	mr r29, r3
/* 803A6584  7C 9E 23 78 */	mr r30, r4
/* 803A6588  3B E0 00 00 */	li r31, 0
/* 803A658C  4B FF E7 05 */	bl mFI_CheckFieldData
/* 803A6590  2C 03 00 00 */	cmpwi r3, 0
/* 803A6594  41 82 00 40 */	beq lbl_803A65D4
/* 803A6598  7F A3 EB 78 */	mr r3, r29
/* 803A659C  7F C4 F3 78 */	mr r4, r30
/* 803A65A0  4B FF EC 69 */	bl mFI_BlockCheck
/* 803A65A4  2C 03 00 00 */	cmpwi r3, 0
/* 803A65A8  41 82 00 2C */	beq lbl_803A65D4
/* 803A65AC  7F A3 EB 78 */	mr r3, r29
/* 803A65B0  7F C4 F3 78 */	mr r4, r30
/* 803A65B4  4B FF EC 05 */	bl mFI_GetBlockNum
/* 803A65B8  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A65BC  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A65C0  1C 63 06 14 */	mulli r3, r3, 0x614
/* 803A65C4  80 84 00 00 */	lwz r4, 0(r4)
/* 803A65C8  80 04 00 74 */	lwz r0, 0x74(r4)
/* 803A65CC  3B E3 00 20 */	addi r31, r3, 0x20
/* 803A65D0  7F E0 FA 14 */	add r31, r0, r31
lbl_803A65D4:
/* 803A65D4  7F E3 FB 78 */	mr r3, r31
/* 803A65D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803A65DC  4B CF 49 45 */	bl func_8009AF20
/* 803A65E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A65E4  7C 08 03 A6 */	mtlr r0
/* 803A65E8  38 21 00 20 */	addi r1, r1, 0x20
/* 803A65EC  4E 80 00 20 */	blr 
