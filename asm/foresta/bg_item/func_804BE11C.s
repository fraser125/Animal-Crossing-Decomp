lbl_804BE11C:
/* 804BE11C  2C 03 00 18 */	cmpwi r3, 0x18
/* 804BE120  38 00 00 00 */	li r0, 0
/* 804BE124  41 80 00 0C */	blt lbl_804BE130
/* 804BE128  2C 03 00 20 */	cmpwi r3, 0x20
/* 804BE12C  40 81 00 4C */	ble lbl_804BE178
lbl_804BE130:
/* 804BE130  2C 03 00 28 */	cmpwi r3, 0x28
/* 804BE134  41 80 00 0C */	blt lbl_804BE140
/* 804BE138  2C 03 00 2B */	cmpwi r3, 0x2b
/* 804BE13C  40 81 00 3C */	ble lbl_804BE178
lbl_804BE140:
/* 804BE140  2C 03 00 33 */	cmpwi r3, 0x33
/* 804BE144  41 80 00 0C */	blt lbl_804BE150
/* 804BE148  2C 03 00 35 */	cmpwi r3, 0x35
/* 804BE14C  40 81 00 2C */	ble lbl_804BE178
lbl_804BE150:
/* 804BE150  2C 03 00 3D */	cmpwi r3, 0x3d
/* 804BE154  41 80 00 0C */	blt lbl_804BE160
/* 804BE158  2C 03 00 3F */	cmpwi r3, 0x3f
/* 804BE15C  40 81 00 1C */	ble lbl_804BE178
lbl_804BE160:
/* 804BE160  2C 03 00 05 */	cmpwi r3, 5
/* 804BE164  41 82 00 14 */	beq lbl_804BE178
/* 804BE168  2C 03 00 07 */	cmpwi r3, 7
/* 804BE16C  41 82 00 0C */	beq lbl_804BE178
/* 804BE170  2C 03 00 08 */	cmpwi r3, 8
/* 804BE174  40 82 00 08 */	bne lbl_804BE17C
lbl_804BE178:
/* 804BE178  38 00 00 01 */	li r0, 1
lbl_804BE17C:
/* 804BE17C  7C 03 03 78 */	mr r3, r0
/* 804BE180  4E 80 00 20 */	blr 
