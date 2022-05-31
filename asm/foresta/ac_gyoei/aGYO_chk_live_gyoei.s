lbl_805A2290:
/* 805A2290  3C A0 81 1F */	lis r5, data_811F2870@ha /* 0x811F2870@ha */
/* 805A2294  38 00 00 02 */	li r0, 2
/* 805A2298  38 A5 28 70 */	addi r5, r5, data_811F2870@l /* 0x811F2870@l */
/* 805A229C  38 C0 00 00 */	li r6, 0
/* 805A22A0  80 A5 00 00 */	lwz r5, 0(r5)
/* 805A22A4  38 A5 01 74 */	addi r5, r5, 0x174
/* 805A22A8  7C 09 03 A6 */	mtctr r0
lbl_805A22AC:
/* 805A22AC  80 05 01 D0 */	lwz r0, 0x1d0(r5)
/* 805A22B0  2C 00 00 01 */	cmpwi r0, 1
/* 805A22B4  40 82 00 2C */	bne lbl_805A22E0
/* 805A22B8  88 05 00 08 */	lbz r0, 8(r5)
/* 805A22BC  7C 00 07 74 */	extsb r0, r0
/* 805A22C0  7C 00 18 00 */	cmpw r0, r3
/* 805A22C4  40 82 00 1C */	bne lbl_805A22E0
/* 805A22C8  88 05 00 09 */	lbz r0, 9(r5)
/* 805A22CC  7C 00 07 74 */	extsb r0, r0
/* 805A22D0  7C 00 20 00 */	cmpw r0, r4
/* 805A22D4  40 82 00 0C */	bne lbl_805A22E0
/* 805A22D8  38 C0 00 01 */	li r6, 1
/* 805A22DC  48 00 00 0C */	b lbl_805A22E8
lbl_805A22E0:
/* 805A22E0  38 A5 02 50 */	addi r5, r5, 0x250
/* 805A22E4  42 00 FF C8 */	bdnz lbl_805A22AC
lbl_805A22E8:
/* 805A22E8  7C C3 33 78 */	mr r3, r6
/* 805A22EC  4E 80 00 20 */	blr 
