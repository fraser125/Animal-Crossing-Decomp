lbl_803F22F4:
/* 803F22F4  3C 60 81 17 */	lis r3, S_titledemo_to_play@ha /* 0x81171544@ha */
/* 803F22F8  38 00 00 01 */	li r0, 1
/* 803F22FC  B0 03 15 44 */	sth r0, S_titledemo_to_play@l(r3)  /* 0x81171544@l */
/* 803F2300  4E 80 00 20 */	blr 
