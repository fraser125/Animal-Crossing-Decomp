lbl_803A5208:
/* 803A5208  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A520C  7C 08 02 A6 */	mflr r0
/* 803A5210  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A5214  39 61 00 20 */	addi r11, r1, 0x20
/* 803A5218  4B CF 5C BD */	bl func_8009AED4
/* 803A521C  7C 7D 1B 78 */	mr r29, r3
/* 803A5220  7C 9E 23 78 */	mr r30, r4
/* 803A5224  4B FF FF 95 */	bl mFI_GetBlockNum
/* 803A5228  2C 1D 00 00 */	cmpwi r29, 0
/* 803A522C  7C 7F 1B 78 */	mr r31, r3
/* 803A5230  41 80 00 50 */	blt lbl_803A5280
/* 803A5234  4B FF FB 5D */	bl mFI_GetBlockXMax
/* 803A5238  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803A523C  7C 1D 00 00 */	cmpw r29, r0
/* 803A5240  40 80 00 40 */	bge lbl_803A5280
/* 803A5244  2C 1E 00 00 */	cmpwi r30, 0
/* 803A5248  41 80 00 38 */	blt lbl_803A5280
/* 803A524C  4B FF FB 8D */	bl mFI_GetBlockZMax
/* 803A5250  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803A5254  7C 1E 00 00 */	cmpw r30, r0
/* 803A5258  40 80 00 28 */	bge lbl_803A5280
/* 803A525C  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A5260  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A5264  80 63 00 00 */	lwz r3, 0(r3)
/* 803A5268  1C 1F 06 14 */	mulli r0, r31, 0x614
/* 803A526C  80 63 00 74 */	lwz r3, 0x74(r3)
/* 803A5270  7C 03 02 2E */	lhzx r0, r3, r0
/* 803A5274  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 803A5278  28 00 01 24 */	cmplwi r0, 0x124
/* 803A527C  40 82 00 0C */	bne lbl_803A5288
lbl_803A5280:
/* 803A5280  38 60 00 00 */	li r3, 0
/* 803A5284  48 00 00 08 */	b lbl_803A528C
lbl_803A5288:
/* 803A5288  38 60 00 01 */	li r3, 1
lbl_803A528C:
/* 803A528C  39 61 00 20 */	addi r11, r1, 0x20
/* 803A5290  4B CF 5C 91 */	bl func_8009AF20
/* 803A5294  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A5298  7C 08 03 A6 */	mtlr r0
/* 803A529C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A52A0  4E 80 00 20 */	blr 
