lbl_8046F1E8:
/* 8046F1E8  A8 A4 00 00 */	lha r5, 0(r4)
/* 8046F1EC  7C A0 07 35 */	extsh. r0, r5
/* 8046F1F0  41 80 00 0C */	blt lbl_8046F1FC
/* 8046F1F4  2C 05 00 43 */	cmpwi r5, 0x43
/* 8046F1F8  41 80 00 1C */	blt lbl_8046F214
lbl_8046F1FC:
/* 8046F1FC  2C 05 00 57 */	cmpwi r5, 0x57
/* 8046F200  41 80 00 0C */	blt lbl_8046F20C
/* 8046F204  2C 05 00 5E */	cmpwi r5, 0x5e
/* 8046F208  40 81 00 0C */	ble lbl_8046F214
lbl_8046F20C:
/* 8046F20C  38 00 00 00 */	li r0, 0
/* 8046F210  B0 04 00 00 */	sth r0, 0(r4)
lbl_8046F214:
/* 8046F214  A8 83 00 00 */	lha r4, 0(r3)
/* 8046F218  7C 80 07 35 */	extsh. r0, r4
/* 8046F21C  41 80 00 0C */	blt lbl_8046F228
/* 8046F220  2C 04 00 43 */	cmpwi r4, 0x43
/* 8046F224  4D 80 00 20 */	bltlr 
lbl_8046F228:
/* 8046F228  2C 04 00 48 */	cmpwi r4, 0x48
/* 8046F22C  41 80 00 0C */	blt lbl_8046F238
/* 8046F230  2C 04 00 4F */	cmpwi r4, 0x4f
/* 8046F234  4C 81 00 20 */	blelr 
lbl_8046F238:
/* 8046F238  38 00 00 00 */	li r0, 0
/* 8046F23C  B0 03 00 00 */	sth r0, 0(r3)
/* 8046F240  4E 80 00 20 */	blr 
