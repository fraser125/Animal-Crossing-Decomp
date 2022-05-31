lbl_8052C5BC:
/* 8052C5BC  3C A0 81 1D */	lis r5, data_811D3978@ha /* 0x811D3978@ha */
/* 8052C5C0  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 8052C5C4  38 A5 39 78 */	addi r5, r5, data_811D3978@l /* 0x811D3978@l */
/* 8052C5C8  38 60 00 00 */	li r3, 0
/* 8052C5CC  80 A5 00 00 */	lwz r5, 0(r5)
/* 8052C5D0  28 04 FE 20 */	cmplwi r4, 0xfe20
/* 8052C5D4  38 A5 01 74 */	addi r5, r5, 0x174
/* 8052C5D8  40 82 00 0C */	bne lbl_8052C5E4
/* 8052C5DC  38 60 00 01 */	li r3, 1
/* 8052C5E0  4E 80 00 20 */	blr 
lbl_8052C5E4:
/* 8052C5E4  38 00 00 0A */	li r0, 0xa
/* 8052C5E8  7C 09 03 A6 */	mtctr r0
lbl_8052C5EC:
/* 8052C5EC  A0 05 00 04 */	lhz r0, 4(r5)
/* 8052C5F0  7C 00 20 40 */	cmplw r0, r4
/* 8052C5F4  40 82 00 18 */	bne lbl_8052C60C
/* 8052C5F8  88 05 00 00 */	lbz r0, 0(r5)
/* 8052C5FC  28 00 00 00 */	cmplwi r0, 0
/* 8052C600  40 82 00 0C */	bne lbl_8052C60C
/* 8052C604  38 60 00 01 */	li r3, 1
/* 8052C608  4E 80 00 20 */	blr 
lbl_8052C60C:
/* 8052C60C  38 A5 00 C0 */	addi r5, r5, 0xc0
/* 8052C610  42 00 FF DC */	bdnz lbl_8052C5EC
/* 8052C614  4E 80 00 20 */	blr 
