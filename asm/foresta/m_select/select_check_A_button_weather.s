lbl_80628160:
/* 80628160  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80628164  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80628168  3C 83 00 02 */	addis r4, r3, 2
/* 8062816C  A8 C4 66 6C */	lha r6, 0x666c(r4)
/* 80628170  38 C6 00 01 */	addi r6, r6, 1
/* 80628174  2C 06 00 04 */	cmpwi r6, 4
/* 80628178  41 81 00 0C */	bgt lbl_80628184
/* 8062817C  2C 06 00 00 */	cmpwi r6, 0
/* 80628180  40 80 00 08 */	bge lbl_80628188
lbl_80628184:
/* 80628184  38 C0 00 00 */	li r6, 0
lbl_80628188:
/* 80628188  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062818C  38 A0 00 03 */	li r5, 3
/* 80628190  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80628194  B0 C4 66 6C */	sth r6, 0x666c(r4)
/* 80628198  3C 83 00 02 */	addis r4, r3, 2
/* 8062819C  7C A0 2B 78 */	mr r0, r5
/* 806281A0  50 C0 25 36 */	rlwimi r0, r6, 4, 0x14, 0x1b
/* 806281A4  B0 A4 66 6E */	sth r5, 0x666e(r4)
/* 806281A8  38 60 00 00 */	li r3, 0
/* 806281AC  98 04 0F 19 */	stb r0, 0xf19(r4)
/* 806281B0  4E 80 00 20 */	blr 
