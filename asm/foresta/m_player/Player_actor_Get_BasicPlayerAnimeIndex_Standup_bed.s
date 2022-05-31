lbl_804ECE08:
/* 804ECE08  7C 80 07 35 */	extsh. r0, r4
/* 804ECE0C  40 82 00 24 */	bne lbl_804ECE30
/* 804ECE10  2C 03 00 01 */	cmpwi r3, 1
/* 804ECE14  40 82 00 0C */	bne lbl_804ECE20
/* 804ECE18  38 60 00 31 */	li r3, 0x31
/* 804ECE1C  4E 80 00 20 */	blr 
lbl_804ECE20:
/* 804ECE20  2C 03 00 02 */	cmpwi r3, 2
/* 804ECE24  40 82 00 88 */	bne lbl_804ECEAC
/* 804ECE28  38 60 00 30 */	li r3, 0x30
/* 804ECE2C  4E 80 00 20 */	blr 
lbl_804ECE30:
/* 804ECE30  7C 80 07 34 */	extsh r0, r4
/* 804ECE34  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804ECE38  40 82 00 24 */	bne lbl_804ECE5C
/* 804ECE3C  2C 03 00 03 */	cmpwi r3, 3
/* 804ECE40  40 82 00 0C */	bne lbl_804ECE4C
/* 804ECE44  38 60 00 31 */	li r3, 0x31
/* 804ECE48  4E 80 00 20 */	blr 
lbl_804ECE4C:
/* 804ECE4C  2C 03 00 04 */	cmpwi r3, 4
/* 804ECE50  40 82 00 5C */	bne lbl_804ECEAC
/* 804ECE54  38 60 00 30 */	li r3, 0x30
/* 804ECE58  4E 80 00 20 */	blr 
lbl_804ECE5C:
/* 804ECE5C  2C 00 80 00 */	cmpwi r0, -32768
/* 804ECE60  40 82 00 24 */	bne lbl_804ECE84
/* 804ECE64  2C 03 00 01 */	cmpwi r3, 1
/* 804ECE68  40 82 00 0C */	bne lbl_804ECE74
/* 804ECE6C  38 60 00 30 */	li r3, 0x30
/* 804ECE70  4E 80 00 20 */	blr 
lbl_804ECE74:
/* 804ECE74  2C 03 00 02 */	cmpwi r3, 2
/* 804ECE78  40 82 00 34 */	bne lbl_804ECEAC
/* 804ECE7C  38 60 00 31 */	li r3, 0x31
/* 804ECE80  4E 80 00 20 */	blr 
lbl_804ECE84:
/* 804ECE84  2C 00 C0 00 */	cmpwi r0, -16384
/* 804ECE88  40 82 00 24 */	bne lbl_804ECEAC
/* 804ECE8C  2C 03 00 03 */	cmpwi r3, 3
/* 804ECE90  40 82 00 0C */	bne lbl_804ECE9C
/* 804ECE94  38 60 00 30 */	li r3, 0x30
/* 804ECE98  4E 80 00 20 */	blr 
lbl_804ECE9C:
/* 804ECE9C  2C 03 00 04 */	cmpwi r3, 4
/* 804ECEA0  40 82 00 0C */	bne lbl_804ECEAC
/* 804ECEA4  38 60 00 31 */	li r3, 0x31
/* 804ECEA8  4E 80 00 20 */	blr 
lbl_804ECEAC:
/* 804ECEAC  38 60 00 31 */	li r3, 0x31
/* 804ECEB0  4E 80 00 20 */	blr 
