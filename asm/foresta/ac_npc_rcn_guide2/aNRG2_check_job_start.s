lbl_80570510:
/* 80570510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570514  7C 08 02 A6 */	mflr r0
/* 80570518  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057051C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570520  93 C1 00 08 */	stw r30, 8(r1)
/* 80570524  4B E7 36 45 */	bl mQst_GetFirstJobData
/* 80570528  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057052C  7C 7F 1B 78 */	mr r31, r3
/* 80570530  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80570534  3B C0 00 00 */	li r30, 0
/* 80570538  3C 63 00 02 */	addis r3, r3, 2
/* 8057053C  38 80 00 00 */	li r4, 0
/* 80570540  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80570544  4B E7 04 4D */	bl mPr_GetPossessionItemSum
/* 80570548  88 1F 00 00 */	lbz r0, 0(r31)
/* 8057054C  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80570550  2C 00 00 09 */	cmpwi r0, 9
/* 80570554  41 82 00 38 */	beq lbl_8057058C
/* 80570558  40 80 00 10 */	bge lbl_80570568
/* 8057055C  2C 00 00 04 */	cmpwi r0, 4
/* 80570560  41 82 00 1C */	beq lbl_8057057C
/* 80570564  48 00 00 30 */	b lbl_80570594
lbl_80570568:
/* 80570568  2C 00 00 0E */	cmpwi r0, 0xe
/* 8057056C  40 80 00 28 */	bge lbl_80570594
/* 80570570  2C 00 00 0C */	cmpwi r0, 0xc
/* 80570574  40 80 00 18 */	bge lbl_8057058C
/* 80570578  48 00 00 1C */	b lbl_80570594
lbl_8057057C:
/* 8057057C  28 03 00 0A */	cmplwi r3, 0xa
/* 80570580  41 80 00 20 */	blt lbl_805705A0
/* 80570584  3B C0 00 01 */	li r30, 1
/* 80570588  48 00 00 18 */	b lbl_805705A0
lbl_8057058C:
/* 8057058C  3B C0 00 01 */	li r30, 1
/* 80570590  48 00 00 10 */	b lbl_805705A0
lbl_80570594:
/* 80570594  28 03 00 00 */	cmplwi r3, 0
/* 80570598  41 82 00 08 */	beq lbl_805705A0
/* 8057059C  3B C0 00 01 */	li r30, 1
lbl_805705A0:
/* 805705A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805705A4  7F C3 F3 78 */	mr r3, r30
/* 805705A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805705AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805705B0  7C 08 03 A6 */	mtlr r0
/* 805705B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805705B8  4E 80 00 20 */	blr 
