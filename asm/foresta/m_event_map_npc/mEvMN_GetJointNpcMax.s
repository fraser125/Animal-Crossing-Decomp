lbl_8039F590:
/* 8039F590  3C 80 80 65 */	lis r4, l_event_set_table@ha /* 0x80652910@ha */
/* 8039F594  54 60 10 3A */	slwi r0, r3, 2
/* 8039F598  38 84 29 10 */	addi r4, r4, l_event_set_table@l /* 0x80652910@l */
/* 8039F59C  38 60 00 00 */	li r3, 0
/* 8039F5A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 8039F5A4  28 04 00 00 */	cmplwi r4, 0
/* 8039F5A8  4D 82 00 20 */	beqlr 
/* 8039F5AC  88 64 00 01 */	lbz r3, 1(r4)
/* 8039F5B0  4E 80 00 20 */	blr 
