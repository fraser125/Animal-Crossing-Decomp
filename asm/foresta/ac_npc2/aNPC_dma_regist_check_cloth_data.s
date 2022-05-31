lbl_8053B1CC:
/* 8053B1CC  3C A0 81 1F */	lis r5, data_811EBD30@ha /* 0x811EBD30@ha */
/* 8053B1D0  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 8053B1D4  38 A5 BD 30 */	addi r5, r5, data_811EBD30@l /* 0x811EBD30@l */
/* 8053B1D8  38 60 00 00 */	li r3, 0
/* 8053B1DC  80 A5 00 00 */	lwz r5, 0(r5)
/* 8053B1E0  28 04 FE 20 */	cmplwi r4, 0xfe20
/* 8053B1E4  38 A5 01 74 */	addi r5, r5, 0x174
/* 8053B1E8  40 82 00 0C */	bne lbl_8053B1F4
/* 8053B1EC  38 60 00 01 */	li r3, 1
/* 8053B1F0  4E 80 00 20 */	blr 
lbl_8053B1F4:
/* 8053B1F4  38 00 00 0A */	li r0, 0xa
/* 8053B1F8  7C 09 03 A6 */	mtctr r0
lbl_8053B1FC:
/* 8053B1FC  A0 05 00 04 */	lhz r0, 4(r5)
/* 8053B200  7C 00 20 40 */	cmplw r0, r4
/* 8053B204  40 82 00 18 */	bne lbl_8053B21C
/* 8053B208  88 05 00 00 */	lbz r0, 0(r5)
/* 8053B20C  28 00 00 00 */	cmplwi r0, 0
/* 8053B210  40 82 00 0C */	bne lbl_8053B21C
/* 8053B214  38 60 00 01 */	li r3, 1
/* 8053B218  4E 80 00 20 */	blr 
lbl_8053B21C:
/* 8053B21C  38 A5 00 C0 */	addi r5, r5, 0xc0
/* 8053B220  42 00 FF DC */	bdnz lbl_8053B1FC
/* 8053B224  4E 80 00 20 */	blr 
