lbl_8039BAF8:
/* 8039BAF8  7C 60 07 34 */	extsh r0, r3
/* 8039BAFC  38 60 00 00 */	li r3, 0
/* 8039BB00  2C 00 00 4D */	cmpwi r0, 0x4d
/* 8039BB04  41 82 00 48 */	beq lbl_8039BB4C
/* 8039BB08  40 80 00 1C */	bge lbl_8039BB24
/* 8039BB0C  2C 00 00 4B */	cmpwi r0, 0x4b
/* 8039BB10  41 82 00 44 */	beq lbl_8039BB54
/* 8039BB14  40 80 00 20 */	bge lbl_8039BB34
/* 8039BB18  2C 00 00 4A */	cmpwi r0, 0x4a
/* 8039BB1C  40 80 00 20 */	bge lbl_8039BB3C
/* 8039BB20  4E 80 00 20 */	blr 
lbl_8039BB24:
/* 8039BB24  2C 00 00 4F */	cmpwi r0, 0x4f
/* 8039BB28  41 82 00 1C */	beq lbl_8039BB44
/* 8039BB2C  4C 80 00 20 */	bgelr 
/* 8039BB30  48 00 00 2C */	b lbl_8039BB5C
lbl_8039BB34:
/* 8039BB34  38 60 00 05 */	li r3, 5
/* 8039BB38  4E 80 00 20 */	blr 
lbl_8039BB3C:
/* 8039BB3C  38 60 00 05 */	li r3, 5
/* 8039BB40  4E 80 00 20 */	blr 
lbl_8039BB44:
/* 8039BB44  38 60 00 05 */	li r3, 5
/* 8039BB48  4E 80 00 20 */	blr 
lbl_8039BB4C:
/* 8039BB4C  38 60 00 14 */	li r3, 0x14
/* 8039BB50  4E 80 00 20 */	blr 
lbl_8039BB54:
/* 8039BB54  38 60 00 11 */	li r3, 0x11
/* 8039BB58  4E 80 00 20 */	blr 
lbl_8039BB5C:
/* 8039BB5C  38 60 00 17 */	li r3, 0x17
/* 8039BB60  4E 80 00 20 */	blr 
