lbl_803C1E28:
/* 803C1E28  80 83 00 0C */	lwz r4, 0xc(r3)
/* 803C1E2C  38 60 00 00 */	li r3, 0
/* 803C1E30  80 04 00 04 */	lwz r0, 4(r4)
/* 803C1E34  2C 00 17 43 */	cmpwi r0, 0x1743
/* 803C1E38  41 80 00 0C */	blt lbl_803C1E44
/* 803C1E3C  2C 00 17 56 */	cmpwi r0, 0x1756
/* 803C1E40  40 81 00 24 */	ble lbl_803C1E64
lbl_803C1E44:
/* 803C1E44  2C 00 17 99 */	cmpwi r0, 0x1799
/* 803C1E48  41 80 00 0C */	blt lbl_803C1E54
/* 803C1E4C  2C 00 17 AC */	cmpwi r0, 0x17ac
/* 803C1E50  40 81 00 14 */	ble lbl_803C1E64
lbl_803C1E54:
/* 803C1E54  2C 00 3A 8A */	cmpwi r0, 0x3a8a
/* 803C1E58  4D 80 00 20 */	bltlr 
/* 803C1E5C  2C 00 3A F0 */	cmpwi r0, 0x3af0
/* 803C1E60  4D 81 00 20 */	bgtlr 
lbl_803C1E64:
/* 803C1E64  38 60 00 01 */	li r3, 1
/* 803C1E68  4E 80 00 20 */	blr 
