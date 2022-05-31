lbl_805E5E9C:
/* 805E5E9C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 805E5EA0  38 A0 00 01 */	li r5, 1
/* 805E5EA4  28 04 00 08 */	cmplwi r4, 8
/* 805E5EA8  40 81 00 24 */	ble lbl_805E5ECC
/* 805E5EAC  38 03 FF C3 */	addi r0, r3, -61
/* 805E5EB0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 805E5EB4  28 00 00 01 */	cmplwi r0, 1
/* 805E5EB8  40 81 00 14 */	ble lbl_805E5ECC
/* 805E5EBC  28 04 00 09 */	cmplwi r4, 9
/* 805E5EC0  41 82 00 0C */	beq lbl_805E5ECC
/* 805E5EC4  28 04 00 0A */	cmplwi r4, 0xa
/* 805E5EC8  40 82 00 08 */	bne lbl_805E5ED0
lbl_805E5ECC:
/* 805E5ECC  38 A0 00 00 */	li r5, 0
lbl_805E5ED0:
/* 805E5ED0  7C A3 2B 78 */	mr r3, r5
/* 805E5ED4  4E 80 00 20 */	blr 
