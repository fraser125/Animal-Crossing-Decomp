lbl_804D81BC:
/* 804D81BC  2C 03 00 00 */	cmpwi r3, 0
/* 804D81C0  38 00 00 00 */	li r0, 0
/* 804D81C4  41 80 00 10 */	blt lbl_804D81D4
/* 804D81C8  2C 03 00 79 */	cmpwi r3, 0x79
/* 804D81CC  40 80 00 08 */	bge lbl_804D81D4
/* 804D81D0  38 00 00 01 */	li r0, 1
lbl_804D81D4:
/* 804D81D4  2C 00 00 00 */	cmpwi r0, 0
/* 804D81D8  41 82 00 18 */	beq lbl_804D81F0
/* 804D81DC  3C 80 80 64 */	lis r4, data_1833@ha /* 0x80646B88@ha */
/* 804D81E0  38 84 6B 88 */	addi r4, r4, data_1833@l /* 0x80646B88@l */
/* 804D81E4  7C 64 18 AE */	lbzx r3, r4, r3
/* 804D81E8  7C 63 07 74 */	extsb r3, r3
/* 804D81EC  4E 80 00 20 */	blr 
lbl_804D81F0:
/* 804D81F0  38 60 00 00 */	li r3, 0
/* 804D81F4  4E 80 00 20 */	blr 
