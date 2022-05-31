lbl_805E6A20:
/* 805E6A20  A8 03 00 12 */	lha r0, 0x12(r3)
/* 805E6A24  2C 00 00 00 */	cmpwi r0, 0
/* 805E6A28  41 82 00 0C */	beq lbl_805E6A34
/* 805E6A2C  2C 00 00 01 */	cmpwi r0, 1
/* 805E6A30  40 82 00 0C */	bne lbl_805E6A3C
lbl_805E6A34:
/* 805E6A34  A8 63 00 10 */	lha r3, 0x10(r3)
/* 805E6A38  4E 80 00 20 */	blr 
lbl_805E6A3C:
/* 805E6A3C  38 60 00 01 */	li r3, 1
/* 805E6A40  4E 80 00 20 */	blr 
