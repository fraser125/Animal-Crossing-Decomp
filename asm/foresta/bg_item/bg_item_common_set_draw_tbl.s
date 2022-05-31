lbl_804BCC78:
/* 804BCC78  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 804BCC7C  7C 08 02 A6 */	mflr r0
/* 804BCC80  7C E8 3B 78 */	mr r8, r7
/* 804BCC84  90 01 01 14 */	stw r0, 0x114(r1)
/* 804BCC88  38 00 00 7B */	li r0, 0x7b
/* 804BCC8C  38 E1 00 08 */	addi r7, r1, 8
/* 804BCC90  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 804BCC94  7C 9F 23 78 */	mr r31, r4
/* 804BCC98  38 80 00 00 */	li r4, 0
/* 804BCC9C  7C 09 03 A6 */	mtctr r0
lbl_804BCCA0:
/* 804BCCA0  B0 87 00 00 */	sth r4, 0(r7)
/* 804BCCA4  38 E7 00 02 */	addi r7, r7, 2
/* 804BCCA8  42 00 FF F8 */	bdnz lbl_804BCCA0
/* 804BCCAC  38 00 01 01 */	li r0, 0x101
/* 804BCCB0  7F E7 FB 78 */	mr r7, r31
/* 804BCCB4  38 80 01 00 */	li r4, 0x100
/* 804BCCB8  7C 09 03 A6 */	mtctr r0
lbl_804BCCBC:
/* 804BCCBC  B0 87 00 44 */	sth r4, 0x44(r7)
/* 804BCCC0  38 E7 00 48 */	addi r7, r7, 0x48
/* 804BCCC4  42 00 FF F8 */	bdnz lbl_804BCCBC
/* 804BCCC8  7C C7 33 78 */	mr r7, r6
/* 804BCCCC  7F E4 FB 78 */	mr r4, r31
/* 804BCCD0  38 C1 00 08 */	addi r6, r1, 8
/* 804BCCD4  4B FF FC 5D */	bl bg_item_common_classifyitemDataTable
/* 804BCCD8  38 00 00 7B */	li r0, 0x7b
/* 804BCCDC  38 61 00 08 */	addi r3, r1, 8
/* 804BCCE0  80 9F 48 48 */	lwz r4, 0x4848(r31)
/* 804BCCE4  7C 09 03 A6 */	mtctr r0
lbl_804BCCE8:
/* 804BCCE8  A0 03 00 00 */	lhz r0, 0(r3)
/* 804BCCEC  38 63 00 02 */	addi r3, r3, 2
/* 804BCCF0  B0 04 00 00 */	sth r0, 0(r4)
/* 804BCCF4  38 84 00 02 */	addi r4, r4, 2
/* 804BCCF8  42 00 FF F0 */	bdnz lbl_804BCCE8
/* 804BCCFC  38 00 00 01 */	li r0, 1
/* 804BCD00  B0 1F 48 50 */	sth r0, 0x4850(r31)
/* 804BCD04  80 01 01 14 */	lwz r0, 0x114(r1)
/* 804BCD08  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 804BCD0C  7C 08 03 A6 */	mtlr r0
/* 804BCD10  38 21 01 10 */	addi r1, r1, 0x110
/* 804BCD14  4E 80 00 20 */	blr 
