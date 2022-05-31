lbl_803BFFCC:
/* 803BFFCC  80 03 00 00 */	lwz r0, 0(r3)
/* 803BFFD0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803BFFD4  2C 00 00 00 */	cmpwi r0, 0
/* 803BFFD8  41 82 00 18 */	beq lbl_803BFFF0
/* 803BFFDC  80 03 00 00 */	lwz r0, 0(r3)
/* 803BFFE0  2C 00 00 00 */	cmpwi r0, 0
/* 803BFFE4  41 82 00 0C */	beq lbl_803BFFF0
/* 803BFFE8  80 63 00 04 */	lwz r3, 4(r3)
/* 803BFFEC  4E 80 00 20 */	blr 
lbl_803BFFF0:
/* 803BFFF0  38 60 FF FF */	li r3, -1
/* 803BFFF4  4E 80 00 20 */	blr 
