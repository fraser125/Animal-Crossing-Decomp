lbl_804DAF84:
/* 804DAF84  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 804DAF88  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 804DAF8C  2C 00 00 02 */	cmpwi r0, 2
/* 804DAF90  40 82 00 18 */	bne lbl_804DAFA8
/* 804DAF94  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804DAF98  2C 00 00 03 */	cmpwi r0, 3
/* 804DAF9C  40 82 00 0C */	bne lbl_804DAFA8
/* 804DAFA0  38 60 00 01 */	li r3, 1
/* 804DAFA4  4E 80 00 20 */	blr 
lbl_804DAFA8:
/* 804DAFA8  38 60 00 00 */	li r3, 0
/* 804DAFAC  4E 80 00 20 */	blr 
