lbl_80473F2C:
/* 80473F2C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80473F30  2C 00 04 9D */	cmpwi r0, 0x49d
/* 80473F34  41 82 00 28 */	beq lbl_80473F5C
/* 80473F38  40 80 00 10 */	bge lbl_80473F48
/* 80473F3C  2C 00 04 06 */	cmpwi r0, 0x406
/* 80473F40  41 82 00 1C */	beq lbl_80473F5C
/* 80473F44  48 00 00 20 */	b lbl_80473F64
lbl_80473F48:
/* 80473F48  2C 00 04 D2 */	cmpwi r0, 0x4d2
/* 80473F4C  40 80 00 18 */	bge lbl_80473F64
/* 80473F50  2C 00 04 CF */	cmpwi r0, 0x4cf
/* 80473F54  40 80 00 08 */	bge lbl_80473F5C
/* 80473F58  48 00 00 0C */	b lbl_80473F64
lbl_80473F5C:
/* 80473F5C  38 60 00 01 */	li r3, 1
/* 80473F60  4E 80 00 20 */	blr 
lbl_80473F64:
/* 80473F64  38 60 00 00 */	li r3, 0
/* 80473F68  4E 80 00 20 */	blr 
