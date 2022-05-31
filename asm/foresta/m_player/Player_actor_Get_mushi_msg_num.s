lbl_804F3A14:
/* 804F3A14  2C 03 00 20 */	cmpwi r3, 0x20
/* 804F3A18  38 03 2F A1 */	addi r0, r3, 0x2fa1
/* 804F3A1C  40 80 00 08 */	bge lbl_804F3A24
/* 804F3A20  38 03 0A 2C */	addi r0, r3, 0xa2c
lbl_804F3A24:
/* 804F3A24  7C 03 03 78 */	mr r3, r0
/* 804F3A28  4E 80 00 20 */	blr 
