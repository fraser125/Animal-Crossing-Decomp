lbl_803D1F68:
/* 803D1F68  28 03 00 01 */	cmplwi r3, 1
/* 803D1F6C  38 80 00 02 */	li r4, 2
/* 803D1F70  40 81 00 0C */	ble lbl_803D1F7C
/* 803D1F74  2C 03 00 05 */	cmpwi r3, 5
/* 803D1F78  40 82 00 0C */	bne lbl_803D1F84
lbl_803D1F7C:
/* 803D1F7C  38 80 00 01 */	li r4, 1
/* 803D1F80  48 00 00 1C */	b lbl_803D1F9C
lbl_803D1F84:
/* 803D1F84  38 03 FF FE */	addi r0, r3, -2
/* 803D1F88  28 00 00 01 */	cmplwi r0, 1
/* 803D1F8C  40 81 00 0C */	ble lbl_803D1F98
/* 803D1F90  2C 03 00 04 */	cmpwi r3, 4
/* 803D1F94  40 82 00 08 */	bne lbl_803D1F9C
lbl_803D1F98:
/* 803D1F98  38 80 00 00 */	li r4, 0
lbl_803D1F9C:
/* 803D1F9C  7C 83 23 78 */	mr r3, r4
/* 803D1FA0  4E 80 00 20 */	blr 
