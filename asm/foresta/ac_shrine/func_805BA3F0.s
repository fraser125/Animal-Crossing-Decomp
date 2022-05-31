lbl_805BA3F0:
/* 805BA3F0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BA3F4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BA3F8  3C 84 00 02 */	addis r4, r4, 2
/* 805BA3FC  80 04 61 14 */	lwz r0, 0x6114(r4)
/* 805BA400  28 00 00 0F */	cmplwi r0, 0xf
/* 805BA404  40 82 00 0C */	bne lbl_805BA410
/* 805BA408  38 60 00 02 */	li r3, 2
/* 805BA40C  4E 80 00 20 */	blr 
lbl_805BA410:
/* 805BA410  28 00 00 10 */	cmplwi r0, 0x10
/* 805BA414  40 82 00 0C */	bne lbl_805BA420
/* 805BA418  38 60 00 02 */	li r3, 2
/* 805BA41C  4E 80 00 20 */	blr 
lbl_805BA420:
/* 805BA420  28 00 00 04 */	cmplwi r0, 4
/* 805BA424  38 00 00 03 */	li r0, 3
/* 805BA428  41 82 00 08 */	beq lbl_805BA430
/* 805BA42C  7C 60 1B 78 */	mr r0, r3
lbl_805BA430:
/* 805BA430  7C 03 03 78 */	mr r3, r0
/* 805BA434  4E 80 00 20 */	blr 
