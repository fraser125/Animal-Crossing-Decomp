lbl_8037F1C8:
/* 8037F1C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8037F1CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8037F1D0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8037F1D4  2C 00 00 00 */	cmpwi r0, 0
/* 8037F1D8  41 80 00 0C */	blt lbl_8037F1E4
/* 8037F1DC  2C 00 00 34 */	cmpwi r0, 0x34
/* 8037F1E0  41 80 00 0C */	blt lbl_8037F1EC
lbl_8037F1E4:
/* 8037F1E4  38 60 00 01 */	li r3, 1
/* 8037F1E8  4E 80 00 20 */	blr 
lbl_8037F1EC:
/* 8037F1EC  3C 60 80 64 */	lis r3, data@ha /* 0x8064146C@ha */
/* 8037F1F0  38 63 14 6C */	addi r3, r3, data@l /* 0x8064146C@l */
/* 8037F1F4  7C 63 00 AE */	lbzx r3, r3, r0
/* 8037F1F8  7C 63 07 74 */	extsb r3, r3
/* 8037F1FC  4E 80 00 20 */	blr 
