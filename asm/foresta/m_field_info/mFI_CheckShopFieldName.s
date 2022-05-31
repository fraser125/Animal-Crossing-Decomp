lbl_803A4D14:
/* 803A4D14  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803A4D18  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803A4D1C  2C 00 30 00 */	cmpwi r0, 0x3000
/* 803A4D20  38 60 00 00 */	li r3, 0
/* 803A4D24  4C 82 00 20 */	bnelr 
/* 803A4D28  2C 04 30 06 */	cmpwi r4, 0x3006
/* 803A4D2C  40 80 00 10 */	bge lbl_803A4D3C
/* 803A4D30  2C 04 30 01 */	cmpwi r4, 0x3001
/* 803A4D34  41 82 00 10 */	beq lbl_803A4D44
/* 803A4D38  4E 80 00 20 */	blr 
lbl_803A4D3C:
/* 803A4D3C  2C 04 30 0A */	cmpwi r4, 0x300a
/* 803A4D40  4C 80 00 20 */	bgelr 
lbl_803A4D44:
/* 803A4D44  38 60 00 01 */	li r3, 1
/* 803A4D48  4E 80 00 20 */	blr 
