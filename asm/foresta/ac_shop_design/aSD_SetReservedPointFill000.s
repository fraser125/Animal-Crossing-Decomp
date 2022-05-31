lbl_8049CCAC:
/* 8049CCAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049CCB0  7C 08 02 A6 */	mflr r0
/* 8049CCB4  38 60 00 00 */	li r3, 0
/* 8049CCB8  38 80 00 00 */	li r4, 0
/* 8049CCBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049CCC0  4B F0 A4 95 */	bl mFI_BkNumtoUtFGTop
/* 8049CCC4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8049CCC8  38 00 01 00 */	li r0, 0x100
/* 8049CCCC  38 A4 FF FF */	addi r5, r4, 0xFFFF /* 0x0000FFFF@l */
/* 8049CCD0  38 80 00 00 */	li r4, 0
/* 8049CCD4  7C 09 03 A6 */	mtctr r0
lbl_8049CCD8:
/* 8049CCD8  7C 03 22 2E */	lhzx r0, r3, r4
/* 8049CCDC  28 00 FE 00 */	cmplwi r0, 0xfe00
/* 8049CCE0  41 80 00 10 */	blt lbl_8049CCF0
/* 8049CCE4  28 00 FE 0C */	cmplwi r0, 0xfe0c
/* 8049CCE8  41 81 00 08 */	bgt lbl_8049CCF0
/* 8049CCEC  7C A3 23 2E */	sthx r5, r3, r4
lbl_8049CCF0:
/* 8049CCF0  38 84 00 02 */	addi r4, r4, 2
/* 8049CCF4  42 00 FF E4 */	bdnz lbl_8049CCD8
/* 8049CCF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049CCFC  7C 08 03 A6 */	mtlr r0
/* 8049CD00  38 21 00 10 */	addi r1, r1, 0x10
/* 8049CD04  4E 80 00 20 */	blr 
