lbl_804D50AC:
/* 804D50AC  80 A3 0C F8 */	lwz r5, 0xcf8(r3)
/* 804D50B0  38 00 00 00 */	li r0, 0
/* 804D50B4  2C 05 00 00 */	cmpwi r5, 0
/* 804D50B8  41 80 00 10 */	blt lbl_804D50C8
/* 804D50BC  2C 05 00 79 */	cmpwi r5, 0x79
/* 804D50C0  40 80 00 08 */	bge lbl_804D50C8
/* 804D50C4  38 00 00 01 */	li r0, 1
lbl_804D50C8:
/* 804D50C8  2C 00 00 00 */	cmpwi r0, 0
/* 804D50CC  4D 82 00 20 */	beqlr 
/* 804D50D0  3C 80 80 64 */	lis r4, data_782@ha /* 0x806465EC@ha */
/* 804D50D4  38 84 65 EC */	addi r4, r4, data_782@l /* 0x806465EC@l */
/* 804D50D8  7C 04 28 AE */	lbzx r0, r4, r5
/* 804D50DC  98 03 11 98 */	stb r0, 0x1198(r3)
/* 804D50E0  4E 80 00 20 */	blr 
