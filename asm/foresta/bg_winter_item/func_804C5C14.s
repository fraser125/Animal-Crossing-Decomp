lbl_804C5C14:
/* 804C5C14  2C 03 00 18 */	cmpwi r3, 0x18
/* 804C5C18  38 00 00 00 */	li r0, 0
/* 804C5C1C  41 80 00 0C */	blt lbl_804C5C28
/* 804C5C20  2C 03 00 20 */	cmpwi r3, 0x20
/* 804C5C24  40 81 00 4C */	ble lbl_804C5C70
lbl_804C5C28:
/* 804C5C28  2C 03 00 28 */	cmpwi r3, 0x28
/* 804C5C2C  41 80 00 0C */	blt lbl_804C5C38
/* 804C5C30  2C 03 00 2B */	cmpwi r3, 0x2b
/* 804C5C34  40 81 00 3C */	ble lbl_804C5C70
lbl_804C5C38:
/* 804C5C38  2C 03 00 33 */	cmpwi r3, 0x33
/* 804C5C3C  41 80 00 0C */	blt lbl_804C5C48
/* 804C5C40  2C 03 00 35 */	cmpwi r3, 0x35
/* 804C5C44  40 81 00 2C */	ble lbl_804C5C70
lbl_804C5C48:
/* 804C5C48  2C 03 00 3D */	cmpwi r3, 0x3d
/* 804C5C4C  41 80 00 0C */	blt lbl_804C5C58
/* 804C5C50  2C 03 00 3F */	cmpwi r3, 0x3f
/* 804C5C54  40 81 00 1C */	ble lbl_804C5C70
lbl_804C5C58:
/* 804C5C58  2C 03 00 05 */	cmpwi r3, 5
/* 804C5C5C  41 82 00 14 */	beq lbl_804C5C70
/* 804C5C60  2C 03 00 07 */	cmpwi r3, 7
/* 804C5C64  41 82 00 0C */	beq lbl_804C5C70
/* 804C5C68  2C 03 00 08 */	cmpwi r3, 8
/* 804C5C6C  40 82 00 08 */	bne lbl_804C5C74
lbl_804C5C70:
/* 804C5C70  38 00 00 01 */	li r0, 1
lbl_804C5C74:
/* 804C5C74  7C 03 03 78 */	mr r3, r0
/* 804C5C78  4E 80 00 20 */	blr 
