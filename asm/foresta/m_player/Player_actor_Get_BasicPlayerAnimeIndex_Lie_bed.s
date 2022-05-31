lbl_804EBDB4:
/* 804EBDB4  7C 80 07 35 */	extsh. r0, r4
/* 804EBDB8  40 82 00 24 */	bne lbl_804EBDDC
/* 804EBDBC  2C 03 00 01 */	cmpwi r3, 1
/* 804EBDC0  40 82 00 0C */	bne lbl_804EBDCC
/* 804EBDC4  38 60 00 28 */	li r3, 0x28
/* 804EBDC8  4E 80 00 20 */	blr 
lbl_804EBDCC:
/* 804EBDCC  2C 03 00 02 */	cmpwi r3, 2
/* 804EBDD0  40 82 00 88 */	bne lbl_804EBE58
/* 804EBDD4  38 60 00 29 */	li r3, 0x29
/* 804EBDD8  4E 80 00 20 */	blr 
lbl_804EBDDC:
/* 804EBDDC  7C 80 07 34 */	extsh r0, r4
/* 804EBDE0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804EBDE4  40 82 00 24 */	bne lbl_804EBE08
/* 804EBDE8  2C 03 00 03 */	cmpwi r3, 3
/* 804EBDEC  40 82 00 0C */	bne lbl_804EBDF8
/* 804EBDF0  38 60 00 28 */	li r3, 0x28
/* 804EBDF4  4E 80 00 20 */	blr 
lbl_804EBDF8:
/* 804EBDF8  2C 03 00 04 */	cmpwi r3, 4
/* 804EBDFC  40 82 00 5C */	bne lbl_804EBE58
/* 804EBE00  38 60 00 29 */	li r3, 0x29
/* 804EBE04  4E 80 00 20 */	blr 
lbl_804EBE08:
/* 804EBE08  2C 00 80 00 */	cmpwi r0, -32768
/* 804EBE0C  40 82 00 24 */	bne lbl_804EBE30
/* 804EBE10  2C 03 00 01 */	cmpwi r3, 1
/* 804EBE14  40 82 00 0C */	bne lbl_804EBE20
/* 804EBE18  38 60 00 29 */	li r3, 0x29
/* 804EBE1C  4E 80 00 20 */	blr 
lbl_804EBE20:
/* 804EBE20  2C 03 00 02 */	cmpwi r3, 2
/* 804EBE24  40 82 00 34 */	bne lbl_804EBE58
/* 804EBE28  38 60 00 28 */	li r3, 0x28
/* 804EBE2C  4E 80 00 20 */	blr 
lbl_804EBE30:
/* 804EBE30  2C 00 C0 00 */	cmpwi r0, -16384
/* 804EBE34  40 82 00 24 */	bne lbl_804EBE58
/* 804EBE38  2C 03 00 03 */	cmpwi r3, 3
/* 804EBE3C  40 82 00 0C */	bne lbl_804EBE48
/* 804EBE40  38 60 00 29 */	li r3, 0x29
/* 804EBE44  4E 80 00 20 */	blr 
lbl_804EBE48:
/* 804EBE48  2C 03 00 04 */	cmpwi r3, 4
/* 804EBE4C  40 82 00 0C */	bne lbl_804EBE58
/* 804EBE50  38 60 00 28 */	li r3, 0x28
/* 804EBE54  4E 80 00 20 */	blr 
lbl_804EBE58:
/* 804EBE58  38 60 00 29 */	li r3, 0x29
/* 804EBE5C  4E 80 00 20 */	blr 
