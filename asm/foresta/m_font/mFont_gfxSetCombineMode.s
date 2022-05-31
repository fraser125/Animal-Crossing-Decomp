lbl_803AF984:
/* 803AF984  2C 05 00 00 */	cmpwi r5, 0
/* 803AF988  41 82 00 18 */	beq lbl_803AF9A0
/* 803AF98C  3C A0 E7 00 */	lis r5, 0xe700
/* 803AF990  38 00 00 00 */	li r0, 0
/* 803AF994  90 A3 00 00 */	stw r5, 0(r3)
/* 803AF998  90 03 00 04 */	stw r0, 4(r3)
/* 803AF99C  38 63 00 08 */	addi r3, r3, 8
lbl_803AF9A0:
/* 803AF9A0  2C 04 00 00 */	cmpwi r4, 0
/* 803AF9A4  41 82 00 24 */	beq lbl_803AF9C8
/* 803AF9A8  3C A0 FD 00 */	lis r5, 0xFD00 /* 0xFCFFB3FF@ha */
/* 803AF9AC  3C 80 FF E6 */	lis r4, 0xFFE6 /* 0xFFE5FEDB@ha */
/* 803AF9B0  38 05 B3 FF */	addi r0, r5, 0xB3FF /* 0xFCFFB3FF@l */
/* 803AF9B4  90 03 00 00 */	stw r0, 0(r3)
/* 803AF9B8  38 04 FE DB */	addi r0, r4, 0xFEDB /* 0xFFE5FEDB@l */
/* 803AF9BC  90 03 00 04 */	stw r0, 4(r3)
/* 803AF9C0  38 63 00 08 */	addi r3, r3, 8
/* 803AF9C4  4E 80 00 20 */	blr 
lbl_803AF9C8:
/* 803AF9C8  3C A0 FD 00 */	lis r5, 0xFD00 /* 0xFCFFB3FF@ha */
/* 803AF9CC  3C 80 FF 66 */	lis r4, 0xFF66 /* 0xFF65FEFF@ha */
/* 803AF9D0  38 05 B3 FF */	addi r0, r5, 0xB3FF /* 0xFCFFB3FF@l */
/* 803AF9D4  90 03 00 00 */	stw r0, 0(r3)
/* 803AF9D8  38 04 FE FF */	addi r0, r4, 0xFEFF /* 0xFF65FEFF@l */
/* 803AF9DC  90 03 00 04 */	stw r0, 4(r3)
/* 803AF9E0  38 63 00 08 */	addi r3, r3, 8
/* 803AF9E4  4E 80 00 20 */	blr 
