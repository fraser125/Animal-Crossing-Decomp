lbl_8046DEDC:
/* 8046DEDC  38 00 00 00 */	li r0, 0
/* 8046DEE0  3C 80 80 47 */	lis r4, okera_dig_down_process@ha /* 0x8046DEFC@ha */
/* 8046DEE4  B0 03 00 7A */	sth r0, 0x7a(r3)
/* 8046DEE8  38 84 DE FC */	addi r4, r4, okera_dig_down_process@l /* 0x8046DEFC@l */
/* 8046DEEC  38 00 00 0A */	li r0, 0xa
/* 8046DEF0  90 83 00 04 */	stw r4, 4(r3)
/* 8046DEF4  B0 03 00 6E */	sth r0, 0x6e(r3)
/* 8046DEF8  4E 80 00 20 */	blr 
