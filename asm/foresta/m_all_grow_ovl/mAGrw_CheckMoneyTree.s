lbl_80510D88:
/* 80510D88  3C 80 80 6A */	lis r4, l_magrw_smn_table@ha /* 0x8069FA7C@ha */
/* 80510D8C  38 00 00 03 */	li r0, 3
/* 80510D90  54 66 04 3E */	clrlwi r6, r3, 0x10
/* 80510D94  38 60 00 00 */	li r3, 0
/* 80510D98  38 A4 FA 7C */	addi r5, r4, l_magrw_smn_table@l /* 0x8069FA7C@l */
/* 80510D9C  38 80 00 00 */	li r4, 0
/* 80510DA0  7C 09 03 A6 */	mtctr r0
lbl_80510DA4:
/* 80510DA4  7C 05 22 2E */	lhzx r0, r5, r4
/* 80510DA8  7C 06 00 40 */	cmplw r6, r0
/* 80510DAC  40 82 00 0C */	bne lbl_80510DB8
/* 80510DB0  38 60 00 01 */	li r3, 1
/* 80510DB4  4E 80 00 20 */	blr 
lbl_80510DB8:
/* 80510DB8  38 84 00 02 */	addi r4, r4, 2
/* 80510DBC  42 00 FF E8 */	bdnz lbl_80510DA4
/* 80510DC0  4E 80 00 20 */	blr 
