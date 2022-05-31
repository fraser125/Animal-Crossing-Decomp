lbl_80470F68:
/* 80470F68  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80470F6C  84 04 DF E8 */	lwzu r0, data_811CDFE8@l(r4)  /* 0x811CDFE8@l */
/* 80470F70  38 60 00 00 */	li r3, 0
/* 80470F74  28 00 00 00 */	cmplwi r0, 0
/* 80470F78  80 A4 00 04 */	lwz r5, 4(r4)
/* 80470F7C  4D 82 00 20 */	beqlr 
/* 80470F80  28 05 00 00 */	cmplwi r5, 0
/* 80470F84  4D 82 00 20 */	beqlr 
/* 80470F88  80 04 00 08 */	lwz r0, 8(r4)
/* 80470F8C  7C 09 03 A6 */	mtctr r0
/* 80470F90  2C 00 00 00 */	cmpwi r0, 0
/* 80470F94  4C 81 00 20 */	blelr 
lbl_80470F98:
/* 80470F98  88 05 00 00 */	lbz r0, 0(r5)
/* 80470F9C  28 00 00 00 */	cmplwi r0, 0
/* 80470FA0  41 82 00 08 */	beq lbl_80470FA8
/* 80470FA4  38 63 00 01 */	addi r3, r3, 1
lbl_80470FA8:
/* 80470FA8  38 A5 00 01 */	addi r5, r5, 1
/* 80470FAC  42 00 FF EC */	bdnz lbl_80470F98
/* 80470FB0  4E 80 00 20 */	blr 
