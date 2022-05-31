lbl_8039F56C:
/* 8039F56C  3C 80 80 65 */	lis r4, l_event_set_table@ha /* 0x80652910@ha */
/* 8039F570  54 60 10 3A */	slwi r0, r3, 2
/* 8039F574  38 84 29 10 */	addi r4, r4, l_event_set_table@l /* 0x80652910@l */
/* 8039F578  38 60 00 00 */	li r3, 0
/* 8039F57C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8039F580  28 04 00 00 */	cmplwi r4, 0
/* 8039F584  4D 82 00 20 */	beqlr 
/* 8039F588  88 64 00 03 */	lbz r3, 3(r4)
/* 8039F58C  4E 80 00 20 */	blr 
