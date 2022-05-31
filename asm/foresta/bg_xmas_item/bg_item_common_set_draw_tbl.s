lbl_804CBB88:
/* 804CBB88  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 804CBB8C  7C 08 02 A6 */	mflr r0
/* 804CBB90  7C E8 3B 78 */	mr r8, r7
/* 804CBB94  90 01 01 14 */	stw r0, 0x114(r1)
/* 804CBB98  38 00 00 7D */	li r0, 0x7d
/* 804CBB9C  38 E1 00 08 */	addi r7, r1, 8
/* 804CBBA0  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 804CBBA4  7C 9F 23 78 */	mr r31, r4
/* 804CBBA8  38 80 00 00 */	li r4, 0
/* 804CBBAC  7C 09 03 A6 */	mtctr r0
lbl_804CBBB0:
/* 804CBBB0  B0 87 00 00 */	sth r4, 0(r7)
/* 804CBBB4  38 E7 00 02 */	addi r7, r7, 2
/* 804CBBB8  42 00 FF F8 */	bdnz lbl_804CBBB0
/* 804CBBBC  38 00 01 01 */	li r0, 0x101
/* 804CBBC0  7F E7 FB 78 */	mr r7, r31
/* 804CBBC4  38 80 01 00 */	li r4, 0x100
/* 804CBBC8  7C 09 03 A6 */	mtctr r0
lbl_804CBBCC:
/* 804CBBCC  B0 87 00 44 */	sth r4, 0x44(r7)
/* 804CBBD0  38 E7 00 48 */	addi r7, r7, 0x48
/* 804CBBD4  42 00 FF F8 */	bdnz lbl_804CBBCC
/* 804CBBD8  7C C7 33 78 */	mr r7, r6
/* 804CBBDC  7F E4 FB 78 */	mr r4, r31
/* 804CBBE0  38 C1 00 08 */	addi r6, r1, 8
/* 804CBBE4  4B FF FC 5D */	bl bg_item_common_classifyitemDataTable
/* 804CBBE8  38 00 00 7D */	li r0, 0x7d
/* 804CBBEC  38 61 00 08 */	addi r3, r1, 8
/* 804CBBF0  80 9F 48 48 */	lwz r4, 0x4848(r31)
/* 804CBBF4  7C 09 03 A6 */	mtctr r0
lbl_804CBBF8:
/* 804CBBF8  A0 03 00 00 */	lhz r0, 0(r3)
/* 804CBBFC  38 63 00 02 */	addi r3, r3, 2
/* 804CBC00  B0 04 00 00 */	sth r0, 0(r4)
/* 804CBC04  38 84 00 02 */	addi r4, r4, 2
/* 804CBC08  42 00 FF F0 */	bdnz lbl_804CBBF8
/* 804CBC0C  38 00 00 01 */	li r0, 1
/* 804CBC10  B0 1F 48 50 */	sth r0, 0x4850(r31)
/* 804CBC14  80 01 01 14 */	lwz r0, 0x114(r1)
/* 804CBC18  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 804CBC1C  7C 08 03 A6 */	mtlr r0
/* 804CBC20  38 21 01 10 */	addi r1, r1, 0x110
/* 804CBC24  4E 80 00 20 */	blr 
