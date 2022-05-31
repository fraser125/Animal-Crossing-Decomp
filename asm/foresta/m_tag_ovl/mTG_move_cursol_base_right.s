lbl_805F980C:
/* 805F980C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 805F9810  3C 80 80 6D */	lis r4, mTG_table_data@ha /* 0x806CF99C@ha */
/* 805F9814  38 84 F9 9C */	addi r4, r4, mTG_table_data@l /* 0x806CF99C@l */
/* 805F9818  80 A3 00 3C */	lwz r5, 0x3c(r3)
/* 805F981C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805F9820  7C 84 02 AE */	lhax r4, r4, r0
/* 805F9824  38 04 FF FF */	addi r0, r4, -1
/* 805F9828  7C 05 00 00 */	cmpw r5, r0
/* 805F982C  40 80 00 14 */	bge lbl_805F9840
/* 805F9830  38 05 00 01 */	addi r0, r5, 1
/* 805F9834  38 80 00 01 */	li r4, 1
/* 805F9838  90 03 00 3C */	stw r0, 0x3c(r3)
/* 805F983C  48 00 00 08 */	b lbl_805F9844
lbl_805F9840:
/* 805F9840  38 80 00 00 */	li r4, 0
lbl_805F9844:
/* 805F9844  7C 83 23 78 */	mr r3, r4
/* 805F9848  4E 80 00 20 */	blr 
