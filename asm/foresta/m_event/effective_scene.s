lbl_8039CEFC:
/* 8039CEFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039CF00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039CF04  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8039CF08  2C 00 00 1D */	cmpwi r0, 0x1d
/* 8039CF0C  40 80 00 30 */	bge lbl_8039CF3C
/* 8039CF10  2C 00 00 13 */	cmpwi r0, 0x13
/* 8039CF14  41 82 00 40 */	beq lbl_8039CF54
/* 8039CF18  40 80 00 18 */	bge lbl_8039CF30
/* 8039CF1C  2C 00 00 11 */	cmpwi r0, 0x11
/* 8039CF20  40 80 00 3C */	bge lbl_8039CF5C
/* 8039CF24  2C 00 00 0F */	cmpwi r0, 0xf
/* 8039CF28  40 80 00 2C */	bge lbl_8039CF54
/* 8039CF2C  48 00 00 30 */	b lbl_8039CF5C
lbl_8039CF30:
/* 8039CF30  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8039CF34  40 80 00 20 */	bge lbl_8039CF54
/* 8039CF38  48 00 00 24 */	b lbl_8039CF5C
lbl_8039CF3C:
/* 8039CF3C  2C 00 00 31 */	cmpwi r0, 0x31
/* 8039CF40  41 82 00 14 */	beq lbl_8039CF54
/* 8039CF44  40 80 00 18 */	bge lbl_8039CF5C
/* 8039CF48  2C 00 00 22 */	cmpwi r0, 0x22
/* 8039CF4C  41 82 00 08 */	beq lbl_8039CF54
/* 8039CF50  48 00 00 0C */	b lbl_8039CF5C
lbl_8039CF54:
/* 8039CF54  38 60 00 00 */	li r3, 0
/* 8039CF58  4E 80 00 20 */	blr 
lbl_8039CF5C:
/* 8039CF5C  38 60 00 01 */	li r3, 1
/* 8039CF60  4E 80 00 20 */	blr 
