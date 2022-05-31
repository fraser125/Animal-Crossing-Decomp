lbl_803E0F08:
/* 803E0F08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E0F0C  7C 08 02 A6 */	mflr r0
/* 803E0F10  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E0F14  39 61 00 20 */	addi r11, r1, 0x20
/* 803E0F18  4B CB 9F BD */	bl func_8009AED4
/* 803E0F1C  7C 9E 23 78 */	mr r30, r4
/* 803E0F20  7C 7D 1B 78 */	mr r29, r3
/* 803E0F24  7C BF 2B 78 */	mr r31, r5
/* 803E0F28  38 80 00 00 */	li r4, 0
/* 803E0F2C  4B FF F7 FD */	bl mPr_GetPossessionItemIdx
/* 803E0F30  7C 64 1B 78 */	mr r4, r3
/* 803E0F34  2C 04 FF FF */	cmpwi r4, -1
/* 803E0F38  40 82 00 0C */	bne lbl_803E0F44
/* 803E0F3C  38 60 00 00 */	li r3, 0
/* 803E0F40  48 00 00 18 */	b lbl_803E0F58
lbl_803E0F44:
/* 803E0F44  7F A3 EB 78 */	mr r3, r29
/* 803E0F48  7F C5 F3 78 */	mr r5, r30
/* 803E0F4C  7F E6 FB 78 */	mr r6, r31
/* 803E0F50  4B FF FE D9 */	bl mPr_SetPossessionItem
/* 803E0F54  38 60 00 01 */	li r3, 1
lbl_803E0F58:
/* 803E0F58  39 61 00 20 */	addi r11, r1, 0x20
/* 803E0F5C  4B CB 9F C5 */	bl func_8009AF20
/* 803E0F60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E0F64  7C 08 03 A6 */	mtlr r0
/* 803E0F68  38 21 00 20 */	addi r1, r1, 0x20
/* 803E0F6C  4E 80 00 20 */	blr 
