lbl_804E7BD4:
/* 804E7BD4  2C 03 00 00 */	cmpwi r3, 0
/* 804E7BD8  41 80 00 1C */	blt lbl_804E7BF4
/* 804E7BDC  2C 03 00 50 */	cmpwi r3, 0x50
/* 804E7BE0  40 80 00 14 */	bge lbl_804E7BF4
/* 804E7BE4  3C 80 80 65 */	lis r4, data_8175@ha /* 0x806483E4@ha */
/* 804E7BE8  38 84 83 E4 */	addi r4, r4, data_8175@l /* 0x806483E4@l */
/* 804E7BEC  7C 64 18 AE */	lbzx r3, r4, r3
/* 804E7BF0  4E 80 00 20 */	blr 
lbl_804E7BF4:
/* 804E7BF4  38 60 00 21 */	li r3, 0x21
/* 804E7BF8  4E 80 00 20 */	blr 
