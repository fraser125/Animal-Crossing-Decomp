lbl_8063B5E8:
/* 8063B5E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B5EC  7C 08 02 A6 */	mflr r0
/* 8063B5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B5F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063B5F8  7C 7F 1B 78 */	mr r31, r3
/* 8063B5FC  88 03 01 2C */	lbz r0, 0x12c(r3)
/* 8063B600  28 00 00 00 */	cmplwi r0, 0
/* 8063B604  41 82 00 5C */	beq lbl_8063B660
/* 8063B608  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8063B60C  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063B610  41 82 00 28 */	beq lbl_8063B638
/* 8063B614  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063B618  41 82 00 20 */	beq lbl_8063B638
/* 8063B61C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063B620  41 82 00 18 */	beq lbl_8063B638
/* 8063B624  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063B628  41 82 00 10 */	beq lbl_8063B638
/* 8063B62C  38 BF 00 08 */	addi r5, r31, 8
/* 8063B630  38 80 00 04 */	li r4, 4
/* 8063B634  4B FF 29 11 */	bl sAdo_OngenPos
lbl_8063B638:
/* 8063B638  A8 7F 08 10 */	lha r3, 0x810(r31)
/* 8063B63C  38 03 00 01 */	addi r0, r3, 1
/* 8063B640  B0 1F 08 10 */	sth r0, 0x810(r31)
/* 8063B644  A8 1F 08 10 */	lha r0, 0x810(r31)
/* 8063B648  2C 00 00 0A */	cmpwi r0, 0xa
/* 8063B64C  40 80 00 0C */	bge lbl_8063B658
/* 8063B650  7C 00 07 35 */	extsh. r0, r0
/* 8063B654  40 80 00 0C */	bge lbl_8063B660
lbl_8063B658:
/* 8063B658  38 00 00 00 */	li r0, 0
/* 8063B65C  B0 1F 08 10 */	sth r0, 0x810(r31)
lbl_8063B660:
/* 8063B660  88 1F 01 2D */	lbz r0, 0x12d(r31)
/* 8063B664  28 00 00 00 */	cmplwi r0, 0
/* 8063B668  41 82 00 2C */	beq lbl_8063B694
/* 8063B66C  88 1F 01 2C */	lbz r0, 0x12c(r31)
/* 8063B670  28 00 00 00 */	cmplwi r0, 0
/* 8063B674  41 82 00 14 */	beq lbl_8063B688
/* 8063B678  38 9F 00 08 */	addi r4, r31, 8
/* 8063B67C  38 60 00 16 */	li r3, 0x16
/* 8063B680  4B FF 29 29 */	bl sAdo_OngenTrgStart
/* 8063B684  48 00 00 10 */	b lbl_8063B694
lbl_8063B688:
/* 8063B688  38 9F 00 08 */	addi r4, r31, 8
/* 8063B68C  38 60 00 17 */	li r3, 0x17
/* 8063B690  4B FF 29 19 */	bl sAdo_OngenTrgStart
lbl_8063B694:
/* 8063B694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063B69C  7C 08 03 A6 */	mtlr r0
/* 8063B6A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B6A4  4E 80 00 20 */	blr 
