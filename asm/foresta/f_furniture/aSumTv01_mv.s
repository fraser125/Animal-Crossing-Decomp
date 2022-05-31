lbl_8063B420:
/* 8063B420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B424  7C 08 02 A6 */	mflr r0
/* 8063B428  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B42C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063B430  7C 7F 1B 78 */	mr r31, r3
/* 8063B434  88 03 01 2C */	lbz r0, 0x12c(r3)
/* 8063B438  28 00 00 00 */	cmplwi r0, 0
/* 8063B43C  41 82 00 5C */	beq lbl_8063B498
/* 8063B440  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8063B444  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063B448  41 82 00 28 */	beq lbl_8063B470
/* 8063B44C  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063B450  41 82 00 20 */	beq lbl_8063B470
/* 8063B454  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063B458  41 82 00 18 */	beq lbl_8063B470
/* 8063B45C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063B460  41 82 00 10 */	beq lbl_8063B470
/* 8063B464  38 BF 00 08 */	addi r5, r31, 8
/* 8063B468  38 80 00 05 */	li r4, 5
/* 8063B46C  4B FF 2A D9 */	bl sAdo_OngenPos
lbl_8063B470:
/* 8063B470  A8 7F 08 10 */	lha r3, 0x810(r31)
/* 8063B474  38 03 00 01 */	addi r0, r3, 1
/* 8063B478  B0 1F 08 10 */	sth r0, 0x810(r31)
/* 8063B47C  A8 1F 08 10 */	lha r0, 0x810(r31)
/* 8063B480  2C 00 00 36 */	cmpwi r0, 0x36
/* 8063B484  40 80 00 0C */	bge lbl_8063B490
/* 8063B488  7C 00 07 35 */	extsh. r0, r0
/* 8063B48C  40 80 00 0C */	bge lbl_8063B498
lbl_8063B490:
/* 8063B490  38 00 00 00 */	li r0, 0
/* 8063B494  B0 1F 08 10 */	sth r0, 0x810(r31)
lbl_8063B498:
/* 8063B498  88 1F 01 2D */	lbz r0, 0x12d(r31)
/* 8063B49C  28 00 00 00 */	cmplwi r0, 0
/* 8063B4A0  41 82 00 2C */	beq lbl_8063B4CC
/* 8063B4A4  88 1F 01 2C */	lbz r0, 0x12c(r31)
/* 8063B4A8  28 00 00 00 */	cmplwi r0, 0
/* 8063B4AC  41 82 00 14 */	beq lbl_8063B4C0
/* 8063B4B0  38 9F 00 08 */	addi r4, r31, 8
/* 8063B4B4  38 60 00 16 */	li r3, 0x16
/* 8063B4B8  4B FF 2A F1 */	bl sAdo_OngenTrgStart
/* 8063B4BC  48 00 00 10 */	b lbl_8063B4CC
lbl_8063B4C0:
/* 8063B4C0  38 9F 00 08 */	addi r4, r31, 8
/* 8063B4C4  38 60 00 17 */	li r3, 0x17
/* 8063B4C8  4B FF 2A E1 */	bl sAdo_OngenTrgStart
lbl_8063B4CC:
/* 8063B4CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B4D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063B4D4  7C 08 03 A6 */	mtlr r0
/* 8063B4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B4DC  4E 80 00 20 */	blr 
