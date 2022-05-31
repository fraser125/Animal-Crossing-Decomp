lbl_805BA984:
/* 805BA984  3C 80 80 5C */	lis r4, aSHR_Present_move_wait@ha /* 0x805BA994@ha */
/* 805BA988  38 04 A9 94 */	addi r0, r4, aSHR_Present_move_wait@l /* 0x805BA994@l */
/* 805BA98C  90 03 00 14 */	stw r0, 0x14(r3)
/* 805BA990  4E 80 00 20 */	blr 
