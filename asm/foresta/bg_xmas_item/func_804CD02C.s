lbl_804CD02C:
/* 804CD02C  2C 03 00 18 */	cmpwi r3, 0x18
/* 804CD030  38 00 00 00 */	li r0, 0
/* 804CD034  41 80 00 0C */	blt lbl_804CD040
/* 804CD038  2C 03 00 21 */	cmpwi r3, 0x21
/* 804CD03C  40 81 00 4C */	ble lbl_804CD088
lbl_804CD040:
/* 804CD040  2C 03 00 29 */	cmpwi r3, 0x29
/* 804CD044  41 80 00 0C */	blt lbl_804CD050
/* 804CD048  2C 03 00 2C */	cmpwi r3, 0x2c
/* 804CD04C  40 81 00 3C */	ble lbl_804CD088
lbl_804CD050:
/* 804CD050  2C 03 00 34 */	cmpwi r3, 0x34
/* 804CD054  41 80 00 0C */	blt lbl_804CD060
/* 804CD058  2C 03 00 37 */	cmpwi r3, 0x37
/* 804CD05C  40 81 00 2C */	ble lbl_804CD088
lbl_804CD060:
/* 804CD060  2C 03 00 3F */	cmpwi r3, 0x3f
/* 804CD064  41 80 00 0C */	blt lbl_804CD070
/* 804CD068  2C 03 00 41 */	cmpwi r3, 0x41
/* 804CD06C  40 81 00 1C */	ble lbl_804CD088
lbl_804CD070:
/* 804CD070  2C 03 00 05 */	cmpwi r3, 5
/* 804CD074  41 82 00 14 */	beq lbl_804CD088
/* 804CD078  2C 03 00 07 */	cmpwi r3, 7
/* 804CD07C  41 82 00 0C */	beq lbl_804CD088
/* 804CD080  2C 03 00 08 */	cmpwi r3, 8
/* 804CD084  40 82 00 08 */	bne lbl_804CD08C
lbl_804CD088:
/* 804CD088  38 00 00 01 */	li r0, 1
lbl_804CD08C:
/* 804CD08C  7C 03 03 78 */	mr r3, r0
/* 804CD090  4E 80 00 20 */	blr 
