lbl_8054D440:
/* 8054D440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D444  7C 08 02 A6 */	mflr r0
/* 8054D448  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054D44C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D450  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8054D454  3C 64 00 03 */	addis r3, r4, 3
/* 8054D458  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054D45C  3B E0 00 00 */	li r31, 0
/* 8054D460  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 8054D464  2C 00 00 01 */	cmpwi r0, 1
/* 8054D468  40 82 00 2C */	bne lbl_8054D494
/* 8054D46C  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 8054D470  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8054D474  40 82 00 20 */	bne lbl_8054D494
/* 8054D478  3C 64 00 02 */	addis r3, r4, 2
/* 8054D47C  38 80 00 00 */	li r4, 0
/* 8054D480  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8054D484  4B E9 32 A5 */	bl mPr_GetPossessionItemIdx
/* 8054D488  2C 03 FF FF */	cmpwi r3, -1
/* 8054D48C  41 82 00 08 */	beq lbl_8054D494
/* 8054D490  3B E0 00 01 */	li r31, 1
lbl_8054D494:
/* 8054D494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D498  7F E3 FB 78 */	mr r3, r31
/* 8054D49C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054D4A0  7C 08 03 A6 */	mtlr r0
/* 8054D4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D4A8  4E 80 00 20 */	blr 