lbl_804AC8B0:
/* 804AC8B0  7C 80 0E 71 */	srawi. r0, r4, 1
/* 804AC8B4  4D 82 00 20 */	beqlr 
/* 804AC8B8  2C 00 00 00 */	cmpwi r0, 0
/* 804AC8BC  40 81 00 18 */	ble lbl_804AC8D4
/* 804AC8C0  7C 63 02 14 */	add r3, r3, r0
/* 804AC8C4  7C 03 28 00 */	cmpw r3, r5
/* 804AC8C8  4C 81 00 20 */	blelr 
/* 804AC8CC  7C A3 2B 78 */	mr r3, r5
/* 804AC8D0  4E 80 00 20 */	blr 
lbl_804AC8D4:
/* 804AC8D4  4C 80 00 20 */	bgelr 
/* 804AC8D8  7C 63 02 14 */	add r3, r3, r0
/* 804AC8DC  7C 03 28 00 */	cmpw r3, r5
/* 804AC8E0  4C 80 00 20 */	bgelr 
/* 804AC8E4  7C A3 2B 78 */	mr r3, r5
/* 804AC8E8  4E 80 00 20 */	blr 
