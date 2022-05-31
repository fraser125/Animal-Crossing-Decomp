lbl_804BE41C:
/* 804BE41C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804BE420  7C 08 02 A6 */	mflr r0
/* 804BE424  90 01 00 84 */	stw r0, 0x84(r1)
/* 804BE428  38 00 00 34 */	li r0, 0x34
/* 804BE42C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 804BE430  7C 9F 23 78 */	mr r31, r4
/* 804BE434  38 80 00 00 */	li r4, 0
/* 804BE438  93 C1 00 78 */	stw r30, 0x78(r1)
/* 804BE43C  7C 7E 1B 78 */	mr r30, r3
/* 804BE440  7C 86 23 78 */	mr r6, r4
/* 804BE444  38 FF 00 6C */	addi r7, r31, 0x6c
/* 804BE448  38 61 00 08 */	addi r3, r1, 8
/* 804BE44C  7C 09 03 A6 */	mtctr r0
lbl_804BE450:
/* 804BE450  7C C3 23 2E */	sthx r6, r3, r4
/* 804BE454  38 84 00 02 */	addi r4, r4, 2
/* 804BE458  42 00 FF F8 */	bdnz lbl_804BE450
/* 804BE45C  38 00 01 01 */	li r0, 0x101
/* 804BE460  38 60 01 00 */	li r3, 0x100
/* 804BE464  7C 09 03 A6 */	mtctr r0
lbl_804BE468:
/* 804BE468  90 67 00 00 */	stw r3, 0(r7)
/* 804BE46C  38 E7 00 44 */	addi r7, r7, 0x44
/* 804BE470  42 00 FF F8 */	bdnz lbl_804BE468
/* 804BE474  7F E3 FB 78 */	mr r3, r31
/* 804BE478  7C A4 2B 78 */	mr r4, r5
/* 804BE47C  38 A1 00 08 */	addi r5, r1, 8
/* 804BE480  4B FF FE E5 */	bl bPI_classifyitemDataTable
/* 804BE484  38 00 00 34 */	li r0, 0x34
/* 804BE488  38 7F 00 04 */	addi r3, r31, 4
/* 804BE48C  38 81 00 08 */	addi r4, r1, 8
/* 804BE490  7C 09 03 A6 */	mtctr r0
lbl_804BE494:
/* 804BE494  A0 04 00 00 */	lhz r0, 0(r4)
/* 804BE498  38 84 00 02 */	addi r4, r4, 2
/* 804BE49C  B0 03 00 00 */	sth r0, 0(r3)
/* 804BE4A0  38 63 00 02 */	addi r3, r3, 2
/* 804BE4A4  42 00 FF F0 */	bdnz lbl_804BE494
/* 804BE4A8  38 00 00 01 */	li r0, 1
/* 804BE4AC  90 1E 01 74 */	stw r0, 0x174(r30)
/* 804BE4B0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804BE4B4  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 804BE4B8  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 804BE4BC  7C 08 03 A6 */	mtlr r0
/* 804BE4C0  38 21 00 80 */	addi r1, r1, 0x80
/* 804BE4C4  4E 80 00 20 */	blr 
