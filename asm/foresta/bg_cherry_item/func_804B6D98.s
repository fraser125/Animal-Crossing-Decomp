lbl_804B6D98:
/* 804B6D98  2C 03 00 18 */	cmpwi r3, 0x18
/* 804B6D9C  38 00 00 00 */	li r0, 0
/* 804B6DA0  41 80 00 0C */	blt lbl_804B6DAC
/* 804B6DA4  2C 03 00 20 */	cmpwi r3, 0x20
/* 804B6DA8  40 81 00 4C */	ble lbl_804B6DF4
lbl_804B6DAC:
/* 804B6DAC  2C 03 00 28 */	cmpwi r3, 0x28
/* 804B6DB0  41 80 00 0C */	blt lbl_804B6DBC
/* 804B6DB4  2C 03 00 2B */	cmpwi r3, 0x2b
/* 804B6DB8  40 81 00 3C */	ble lbl_804B6DF4
lbl_804B6DBC:
/* 804B6DBC  2C 03 00 33 */	cmpwi r3, 0x33
/* 804B6DC0  41 80 00 0C */	blt lbl_804B6DCC
/* 804B6DC4  2C 03 00 35 */	cmpwi r3, 0x35
/* 804B6DC8  40 81 00 2C */	ble lbl_804B6DF4
lbl_804B6DCC:
/* 804B6DCC  2C 03 00 3D */	cmpwi r3, 0x3d
/* 804B6DD0  41 80 00 0C */	blt lbl_804B6DDC
/* 804B6DD4  2C 03 00 3F */	cmpwi r3, 0x3f
/* 804B6DD8  40 81 00 1C */	ble lbl_804B6DF4
lbl_804B6DDC:
/* 804B6DDC  2C 03 00 05 */	cmpwi r3, 5
/* 804B6DE0  41 82 00 14 */	beq lbl_804B6DF4
/* 804B6DE4  2C 03 00 07 */	cmpwi r3, 7
/* 804B6DE8  41 82 00 0C */	beq lbl_804B6DF4
/* 804B6DEC  2C 03 00 08 */	cmpwi r3, 8
/* 804B6DF0  40 82 00 08 */	bne lbl_804B6DF8
lbl_804B6DF4:
/* 804B6DF4  38 00 00 01 */	li r0, 1
lbl_804B6DF8:
/* 804B6DF8  7C 03 03 78 */	mr r3, r0
/* 804B6DFC  4E 80 00 20 */	blr 
