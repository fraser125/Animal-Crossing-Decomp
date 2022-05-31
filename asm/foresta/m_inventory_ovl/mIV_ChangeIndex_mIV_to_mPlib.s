lbl_805E1694:
/* 805E1694  7C 60 07 35 */	extsh. r0, r3
/* 805E1698  41 80 00 24 */	blt lbl_805E16BC
/* 805E169C  7C 60 07 34 */	extsh r0, r3
/* 805E16A0  2C 00 00 28 */	cmpwi r0, 0x28
/* 805E16A4  40 80 00 18 */	bge lbl_805E16BC
/* 805E16A8  3C 60 80 65 */	lis r3, data_8064B3CC@ha /* 0x8064B3CC@ha */
/* 805E16AC  38 63 B3 CC */	addi r3, r3, data_8064B3CC@l /* 0x8064B3CC@l */
/* 805E16B0  7C 63 00 AE */	lbzx r3, r3, r0
/* 805E16B4  7C 63 07 74 */	extsb r3, r3
/* 805E16B8  4E 80 00 20 */	blr 
lbl_805E16BC:
/* 805E16BC  38 60 FF FF */	li r3, -1
/* 805E16C0  4E 80 00 20 */	blr 
