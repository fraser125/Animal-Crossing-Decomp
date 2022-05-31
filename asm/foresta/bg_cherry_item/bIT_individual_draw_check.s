lbl_804B019C:
/* 804B019C  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 804B01A0  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804B01A4  41 82 00 2C */	beq lbl_804B01D0
/* 804B01A8  2C 00 00 04 */	cmpwi r0, 4
/* 804B01AC  40 80 00 24 */	bge lbl_804B01D0
/* 804B01B0  2C 00 00 00 */	cmpwi r0, 0
/* 804B01B4  40 82 00 14 */	bne lbl_804B01C8
/* 804B01B8  40 82 00 18 */	bne lbl_804B01D0
/* 804B01BC  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 804B01C0  2C 00 00 09 */	cmpwi r0, 9
/* 804B01C4  41 82 00 0C */	beq lbl_804B01D0
lbl_804B01C8:
/* 804B01C8  38 60 00 01 */	li r3, 1
/* 804B01CC  4E 80 00 20 */	blr 
lbl_804B01D0:
/* 804B01D0  38 60 00 00 */	li r3, 0
/* 804B01D4  4E 80 00 20 */	blr 
