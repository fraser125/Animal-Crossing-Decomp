lbl_804CAD78:
/* 804CAD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CAD7C  7C 08 02 A6 */	mflr r0
/* 804CAD80  54 63 20 36 */	slwi r3, r3, 4
/* 804CAD84  54 84 20 36 */	slwi r4, r4, 4
/* 804CAD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CAD8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CAD90  7C BF 2B 78 */	mr r31, r5
/* 804CAD94  4B ED C4 ED */	bl mFI_UtNum2UtFG
/* 804CAD98  3C 80 80 6A */	lis r4, tree_cut_tbl@ha /* 0x8069BA80@ha */
/* 804CAD9C  7F EA FB 78 */	mr r10, r31
/* 804CADA0  38 A4 BA 80 */	addi r5, r4, tree_cut_tbl@l /* 0x8069BA80@l */
/* 804CADA4  38 C0 00 00 */	li r6, 0
lbl_804CADA8:
/* 804CADA8  38 E0 00 00 */	li r7, 0
lbl_804CADAC:
/* 804CADAC  38 00 00 53 */	li r0, 0x53
/* 804CADB0  7C A9 2B 78 */	mr r9, r5
/* 804CADB4  39 00 00 00 */	li r8, 0
/* 804CADB8  7C 09 03 A6 */	mtctr r0
lbl_804CADBC:
/* 804CADBC  A0 83 00 00 */	lhz r4, 0(r3)
/* 804CADC0  A0 09 00 00 */	lhz r0, 0(r9)
/* 804CADC4  7C 04 00 40 */	cmplw r4, r0
/* 804CADC8  40 82 00 10 */	bne lbl_804CADD8
/* 804CADCC  A8 09 00 02 */	lha r0, 2(r9)
/* 804CADD0  98 0A 00 00 */	stb r0, 0(r10)
/* 804CADD4  48 00 00 10 */	b lbl_804CADE4
lbl_804CADD8:
/* 804CADD8  39 08 00 01 */	addi r8, r8, 1
/* 804CADDC  39 29 00 04 */	addi r9, r9, 4
/* 804CADE0  42 00 FF DC */	bdnz lbl_804CADBC
lbl_804CADE4:
/* 804CADE4  2C 08 00 53 */	cmpwi r8, 0x53
/* 804CADE8  40 82 00 0C */	bne lbl_804CADF4
/* 804CADEC  38 00 00 FF */	li r0, 0xff
/* 804CADF0  98 0A 00 00 */	stb r0, 0(r10)
lbl_804CADF4:
/* 804CADF4  38 E7 00 01 */	addi r7, r7, 1
/* 804CADF8  39 4A 00 01 */	addi r10, r10, 1
/* 804CADFC  2C 07 00 10 */	cmpwi r7, 0x10
/* 804CAE00  38 63 00 02 */	addi r3, r3, 2
/* 804CAE04  41 80 FF A8 */	blt lbl_804CADAC
/* 804CAE08  38 C6 00 01 */	addi r6, r6, 1
/* 804CAE0C  2C 06 00 10 */	cmpwi r6, 0x10
/* 804CAE10  41 80 FF 98 */	blt lbl_804CADA8
/* 804CAE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CAE18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CAE1C  7C 08 03 A6 */	mtlr r0
/* 804CAE20  38 21 00 10 */	addi r1, r1, 0x10
/* 804CAE24  4E 80 00 20 */	blr 
