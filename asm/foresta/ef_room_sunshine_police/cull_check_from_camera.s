lbl_804CFBBC:
/* 804CFBBC  C0 24 1B 88 */	lfs f1, 0x1b88(r4)
/* 804CFBC0  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 804CFBC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CFBC8  4C 41 13 82 */	cror 2, 1, 2
/* 804CFBCC  40 82 00 0C */	bne lbl_804CFBD8
/* 804CFBD0  2C 05 00 01 */	cmpwi r5, 1
/* 804CFBD4  41 82 00 18 */	beq lbl_804CFBEC
lbl_804CFBD8:
/* 804CFBD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CFBDC  4C 40 13 82 */	cror 2, 0, 2
/* 804CFBE0  40 82 00 14 */	bne lbl_804CFBF4
/* 804CFBE4  2C 05 00 00 */	cmpwi r5, 0
/* 804CFBE8  40 82 00 0C */	bne lbl_804CFBF4
lbl_804CFBEC:
/* 804CFBEC  38 60 00 01 */	li r3, 1
/* 804CFBF0  4E 80 00 20 */	blr 
lbl_804CFBF4:
/* 804CFBF4  38 60 00 00 */	li r3, 0
/* 804CFBF8  4E 80 00 20 */	blr 
