lbl_8039CE90:
/* 8039CE90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039CE94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039CE98  3C 63 00 02 */	addis r3, r3, 2
/* 8039CE9C  80 03 60 04 */	lwz r0, 0x6004(r3)
/* 8039CEA0  2C 00 00 1D */	cmpwi r0, 0x1d
/* 8039CEA4  40 80 00 30 */	bge lbl_8039CED4
/* 8039CEA8  2C 00 00 13 */	cmpwi r0, 0x13
/* 8039CEAC  41 82 00 40 */	beq lbl_8039CEEC
/* 8039CEB0  40 80 00 18 */	bge lbl_8039CEC8
/* 8039CEB4  2C 00 00 11 */	cmpwi r0, 0x11
/* 8039CEB8  40 80 00 3C */	bge lbl_8039CEF4
/* 8039CEBC  2C 00 00 0F */	cmpwi r0, 0xf
/* 8039CEC0  40 80 00 2C */	bge lbl_8039CEEC
/* 8039CEC4  48 00 00 30 */	b lbl_8039CEF4
lbl_8039CEC8:
/* 8039CEC8  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8039CECC  40 80 00 20 */	bge lbl_8039CEEC
/* 8039CED0  48 00 00 24 */	b lbl_8039CEF4
lbl_8039CED4:
/* 8039CED4  2C 00 00 31 */	cmpwi r0, 0x31
/* 8039CED8  41 82 00 14 */	beq lbl_8039CEEC
/* 8039CEDC  40 80 00 18 */	bge lbl_8039CEF4
/* 8039CEE0  2C 00 00 22 */	cmpwi r0, 0x22
/* 8039CEE4  41 82 00 08 */	beq lbl_8039CEEC
/* 8039CEE8  48 00 00 0C */	b lbl_8039CEF4
lbl_8039CEEC:
/* 8039CEEC  38 60 00 01 */	li r3, 1
/* 8039CEF0  4E 80 00 20 */	blr 
lbl_8039CEF4:
/* 8039CEF4  38 60 00 00 */	li r3, 0
/* 8039CEF8  4E 80 00 20 */	blr 
