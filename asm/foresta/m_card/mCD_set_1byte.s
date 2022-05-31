lbl_803FB398:
/* 803FB398  3C A0 80 66 */	lis r5, l_mcd_font_1@ha /* 0x8065E488@ha */
/* 803FB39C  38 A5 E4 88 */	addi r5, r5, l_mcd_font_1@l /* 0x8065E488@l */
/* 803FB3A0  7C 05 20 AE */	lbzx r0, r5, r4
/* 803FB3A4  98 03 00 00 */	stb r0, 0(r3)
/* 803FB3A8  4E 80 00 20 */	blr 
