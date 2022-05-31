lbl_804DA7C4:
/* 804DA7C4  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DA7C8  2C 00 00 2E */	cmpwi r0, 0x2e
/* 804DA7CC  41 82 00 24 */	beq lbl_804DA7F0
/* 804DA7D0  40 80 00 10 */	bge lbl_804DA7E0
/* 804DA7D4  2C 00 00 2C */	cmpwi r0, 0x2c
/* 804DA7D8  40 80 00 10 */	bge lbl_804DA7E8
/* 804DA7DC  48 00 00 14 */	b lbl_804DA7F0
lbl_804DA7E0:
/* 804DA7E0  2C 00 00 31 */	cmpwi r0, 0x31
/* 804DA7E4  40 80 00 0C */	bge lbl_804DA7F0
lbl_804DA7E8:
/* 804DA7E8  80 63 0E 70 */	lwz r3, 0xe70(r3)
/* 804DA7EC  4E 80 00 20 */	blr 
lbl_804DA7F0:
/* 804DA7F0  38 60 00 00 */	li r3, 0
/* 804DA7F4  4E 80 00 20 */	blr 
