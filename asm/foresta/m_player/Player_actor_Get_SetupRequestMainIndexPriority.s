lbl_804D52E4:
/* 804D52E4  2C 03 00 00 */	cmpwi r3, 0
/* 804D52E8  38 00 00 00 */	li r0, 0
/* 804D52EC  41 80 00 10 */	blt lbl_804D52FC
/* 804D52F0  2C 03 00 79 */	cmpwi r3, 0x79
/* 804D52F4  40 80 00 08 */	bge lbl_804D52FC
/* 804D52F8  38 00 00 01 */	li r0, 1
lbl_804D52FC:
/* 804D52FC  2C 00 00 00 */	cmpwi r0, 0
/* 804D5300  41 82 00 20 */	beq lbl_804D5320
/* 804D5304  3C 80 80 64 */	lis r4, data_839@ha /* 0x80646770@ha */
/* 804D5308  38 84 67 70 */	addi r4, r4, data_839@l /* 0x80646770@l */
/* 804D530C  7C 64 18 AE */	lbzx r3, r4, r3
/* 804D5310  7C 63 07 75 */	extsb. r3, r3
/* 804D5314  41 80 00 0C */	blt lbl_804D5320
/* 804D5318  2C 03 00 2D */	cmpwi r3, 0x2d
/* 804D531C  4C 81 00 20 */	blelr 
lbl_804D5320:
/* 804D5320  38 60 FF FF */	li r3, -1
/* 804D5324  4E 80 00 20 */	blr 
