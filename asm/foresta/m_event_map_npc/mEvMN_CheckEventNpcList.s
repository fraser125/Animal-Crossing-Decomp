lbl_8039FCF4:
/* 8039FCF4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039FCF8  38 00 00 05 */	li r0, 5
/* 8039FCFC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8039FD00  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 8039FD04  38 60 00 00 */	li r3, 0
/* 8039FD08  3C A5 00 02 */	addis r5, r5, 2
/* 8039FD0C  7C 09 03 A6 */	mtctr r0
/* 8039FD10  38 A5 68 38 */	addi r5, r5, 0x6838
lbl_8039FD14:
/* 8039FD14  88 05 00 09 */	lbz r0, 9(r5)
/* 8039FD18  28 00 00 01 */	cmplwi r0, 1
/* 8039FD1C  40 82 00 14 */	bne lbl_8039FD30
/* 8039FD20  A0 05 00 04 */	lhz r0, 4(r5)
/* 8039FD24  7C 00 20 40 */	cmplw r0, r4
/* 8039FD28  40 82 00 08 */	bne lbl_8039FD30
/* 8039FD2C  7C A3 2B 78 */	mr r3, r5
lbl_8039FD30:
/* 8039FD30  38 A5 00 0C */	addi r5, r5, 0xc
/* 8039FD34  42 00 FF E0 */	bdnz lbl_8039FD14
/* 8039FD38  4E 80 00 20 */	blr 
