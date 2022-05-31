lbl_804E0A8C:
/* 804E0A8C  2C 03 00 00 */	cmpwi r3, 0
/* 804E0A90  41 80 00 20 */	blt lbl_804E0AB0
/* 804E0A94  2C 03 00 50 */	cmpwi r3, 0x50
/* 804E0A98  40 80 00 18 */	bge lbl_804E0AB0
/* 804E0A9C  3C 80 80 64 */	lis r4, data_5904@ha /* 0x80647D74@ha */
/* 804E0AA0  38 84 7D 74 */	addi r4, r4, data_5904@l /* 0x80647D74@l */
/* 804E0AA4  7C 64 18 AE */	lbzx r3, r4, r3
/* 804E0AA8  7C 63 07 74 */	extsb r3, r3
/* 804E0AAC  4E 80 00 20 */	blr 
lbl_804E0AB0:
/* 804E0AB0  38 60 00 00 */	li r3, 0
/* 804E0AB4  4E 80 00 20 */	blr 
