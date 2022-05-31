lbl_803B83A8:
/* 803B83A8  2C 03 00 FF */	cmpwi r3, 0xff
/* 803B83AC  40 81 00 0C */	ble lbl_803B83B8
/* 803B83B0  38 60 00 FF */	li r3, 0xff
/* 803B83B4  48 00 00 10 */	b lbl_803B83C4
lbl_803B83B8:
/* 803B83B8  2C 03 00 00 */	cmpwi r3, 0
/* 803B83BC  40 80 00 08 */	bge lbl_803B83C4
/* 803B83C0  38 60 00 00 */	li r3, 0
lbl_803B83C4:
/* 803B83C4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803B83C8  4E 80 00 20 */	blr 
