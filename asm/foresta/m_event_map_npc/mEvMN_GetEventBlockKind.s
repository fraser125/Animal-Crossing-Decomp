lbl_8039F548:
/* 8039F548  3C 80 80 65 */	lis r4, l_event_set_table@ha /* 0x80652910@ha */
/* 8039F54C  54 60 10 3A */	slwi r0, r3, 2
/* 8039F550  38 84 29 10 */	addi r4, r4, l_event_set_table@l /* 0x80652910@l */
/* 8039F554  38 60 00 00 */	li r3, 0
/* 8039F558  7C 84 00 2E */	lwzx r4, r4, r0
/* 8039F55C  28 04 00 00 */	cmplwi r4, 0
/* 8039F560  4D 82 00 20 */	beqlr 
/* 8039F564  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8039F568  4E 80 00 20 */	blr 
