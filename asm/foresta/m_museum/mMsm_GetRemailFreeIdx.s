lbl_803C6420:
/* 803C6420  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C6424  7C 08 02 A6 */	mflr r0
/* 803C6428  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C642C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C6430  4B CD 4A A5 */	bl func_8009AED4
/* 803C6434  7C 7D 1B 79 */	or. r29, r3, r3
/* 803C6438  3B E0 FF FF */	li r31, -1
/* 803C643C  41 82 00 38 */	beq lbl_803C6474
/* 803C6440  3B C0 00 00 */	li r30, 0
lbl_803C6444:
/* 803C6444  7F A3 EB 78 */	mr r3, r29
/* 803C6448  7F C4 F3 78 */	mr r4, r30
/* 803C644C  4B FF FF 61 */	bl mMsm_Idx2RemailKind
/* 803C6450  2C 03 00 00 */	cmpwi r3, 0
/* 803C6454  41 82 00 0C */	beq lbl_803C6460
/* 803C6458  2C 03 00 05 */	cmpwi r3, 5
/* 803C645C  41 80 00 0C */	blt lbl_803C6468
lbl_803C6460:
/* 803C6460  7F DF F3 78 */	mr r31, r30
/* 803C6464  48 00 00 10 */	b lbl_803C6474
lbl_803C6468:
/* 803C6468  3B DE 00 01 */	addi r30, r30, 1
/* 803C646C  2C 1E 00 1E */	cmpwi r30, 0x1e
/* 803C6470  41 80 FF D4 */	blt lbl_803C6444
lbl_803C6474:
/* 803C6474  7F E3 FB 78 */	mr r3, r31
/* 803C6478  39 61 00 20 */	addi r11, r1, 0x20
/* 803C647C  4B CD 4A A5 */	bl func_8009AF20
/* 803C6480  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C6484  7C 08 03 A6 */	mtlr r0
/* 803C6488  38 21 00 20 */	addi r1, r1, 0x20
/* 803C648C  4E 80 00 20 */	blr 
