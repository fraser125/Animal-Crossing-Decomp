lbl_80513200:
/* 80513200  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80513204  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80513208  2C 00 00 05 */	cmpwi r0, 5
/* 8051320C  40 82 00 4C */	bne lbl_80513258
/* 80513210  28 04 58 10 */	cmplwi r4, 0x5810
/* 80513214  41 80 00 0C */	blt lbl_80513220
/* 80513218  28 04 58 24 */	cmplwi r4, 0x5824
/* 8051321C  40 81 00 34 */	ble lbl_80513250
lbl_80513220:
/* 80513220  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80513224  28 00 50 00 */	cmplwi r0, 0x5000
/* 80513228  41 80 00 0C */	blt lbl_80513234
/* 8051322C  28 00 50 EE */	cmplwi r0, 0x50ee
/* 80513230  40 81 00 20 */	ble lbl_80513250
lbl_80513234:
/* 80513234  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80513238  28 00 58 29 */	cmplwi r0, 0x5829
/* 8051323C  41 82 00 14 */	beq lbl_80513250
/* 80513240  28 00 58 0C */	cmplwi r0, 0x580c
/* 80513244  41 82 00 0C */	beq lbl_80513250
/* 80513248  28 00 58 49 */	cmplwi r0, 0x5849
/* 8051324C  40 82 00 0C */	bne lbl_80513258
lbl_80513250:
/* 80513250  38 60 00 01 */	li r3, 1
/* 80513254  4E 80 00 20 */	blr 
lbl_80513258:
/* 80513258  38 60 00 00 */	li r3, 0
/* 8051325C  4E 80 00 20 */	blr 
