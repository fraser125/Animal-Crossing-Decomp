lbl_80378910:
/* 80378910  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80378914  38 80 00 00 */	li r4, 0
/* 80378918  28 00 00 80 */	cmplwi r0, 0x80
/* 8037891C  41 80 00 0C */	blt lbl_80378928
/* 80378920  28 00 00 B3 */	cmplwi r0, 0xb3
/* 80378924  40 81 00 18 */	ble lbl_8037893C
lbl_80378928:
/* 80378928  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8037892C  28 00 00 B4 */	cmplwi r0, 0xb4
/* 80378930  41 80 00 10 */	blt lbl_80378940
/* 80378934  28 00 00 B6 */	cmplwi r0, 0xb6
/* 80378938  41 81 00 08 */	bgt lbl_80378940
lbl_8037893C:
/* 8037893C  38 80 00 01 */	li r4, 1
lbl_80378940:
/* 80378940  7C 83 23 78 */	mr r3, r4
/* 80378944  4E 80 00 20 */	blr 
