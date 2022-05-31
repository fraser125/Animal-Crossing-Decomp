lbl_805BA840:
/* 805BA840  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BA844  38 60 00 00 */	li r3, 0
/* 805BA848  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BA84C  3C 84 00 02 */	addis r4, r4, 2
/* 805BA850  80 A4 61 1C */	lwz r5, 0x611c(r4)
/* 805BA854  2C 05 54 60 */	cmpwi r5, 0x5460
/* 805BA858  41 80 00 14 */	blt lbl_805BA86C
/* 805BA85C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FD20@ha */
/* 805BA860  38 04 FD 20 */	addi r0, r4, 0xFD20 /* 0x0000FD20@l */
/* 805BA864  7C 05 00 00 */	cmpw r5, r0
/* 805BA868  4D 80 00 20 */	bltlr 
lbl_805BA86C:
/* 805BA86C  38 60 00 01 */	li r3, 1
/* 805BA870  4E 80 00 20 */	blr 
