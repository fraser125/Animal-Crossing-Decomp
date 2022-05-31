lbl_803D8C34:
/* 803D8C34  2C 03 00 00 */	cmpwi r3, 0
/* 803D8C38  41 80 00 1C */	blt lbl_803D8C54
/* 803D8C3C  2C 03 00 50 */	cmpwi r3, 0x50
/* 803D8C40  40 80 00 14 */	bge lbl_803D8C54
/* 803D8C44  3C 80 80 64 */	lis r4, data_80642924@ha /* 0x80642924@ha */
/* 803D8C48  38 84 29 24 */	addi r4, r4, data_80642924@l /* 0x80642924@l */
/* 803D8C4C  7C 64 18 AE */	lbzx r3, r4, r3
/* 803D8C50  4E 80 00 20 */	blr 
lbl_803D8C54:
/* 803D8C54  38 60 FF FF */	li r3, -1
/* 803D8C58  4E 80 00 20 */	blr 
