lbl_804DA39C:
/* 804DA39C  2C 03 00 00 */	cmpwi r3, 0
/* 804DA3A0  38 00 00 00 */	li r0, 0
/* 804DA3A4  41 80 00 10 */	blt lbl_804DA3B4
/* 804DA3A8  2C 03 00 79 */	cmpwi r3, 0x79
/* 804DA3AC  40 80 00 08 */	bge lbl_804DA3B4
/* 804DA3B0  38 00 00 01 */	li r0, 1
lbl_804DA3B4:
/* 804DA3B4  2C 00 00 00 */	cmpwi r0, 0
/* 804DA3B8  41 82 00 18 */	beq lbl_804DA3D0
/* 804DA3BC  3C 80 80 64 */	lis r4, value_2878@ha /* 0x80646D5C@ha */
/* 804DA3C0  38 84 6D 5C */	addi r4, r4, value_2878@l /* 0x80646D5C@l */
/* 804DA3C4  7C 64 18 AE */	lbzx r3, r4, r3
/* 804DA3C8  7C 63 07 74 */	extsb r3, r3
/* 804DA3CC  4E 80 00 20 */	blr 
lbl_804DA3D0:
/* 804DA3D0  38 60 00 00 */	li r3, 0
/* 804DA3D4  4E 80 00 20 */	blr 
