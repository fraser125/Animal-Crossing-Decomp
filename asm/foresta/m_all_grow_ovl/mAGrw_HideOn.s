lbl_80513524:
/* 80513524  2C 04 00 00 */	cmpwi r4, 0
/* 80513528  4D 80 00 20 */	bltlr 
/* 8051352C  2C 04 00 10 */	cmpwi r4, 0x10
/* 80513530  4C 80 00 20 */	bgelr 
/* 80513534  2C 05 00 00 */	cmpwi r5, 0
/* 80513538  4D 80 00 20 */	bltlr 
/* 8051353C  2C 05 00 10 */	cmpwi r5, 0x10
/* 80513540  4C 80 00 20 */	bgelr 
/* 80513544  54 A6 08 3C */	slwi r6, r5, 1
/* 80513548  38 00 00 01 */	li r0, 1
/* 8051354C  7C A3 32 2E */	lhzx r5, r3, r6
/* 80513550  7C 00 20 30 */	slw r0, r0, r4
/* 80513554  7C A0 03 78 */	or r0, r5, r0
/* 80513558  7C 03 33 2E */	sthx r0, r3, r6
/* 8051355C  4E 80 00 20 */	blr 
