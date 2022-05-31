lbl_80470ED0:
/* 80470ED0  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80470ED4  38 60 00 00 */	li r3, 0
/* 80470ED8  38 84 DF E8 */	addi r4, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80470EDC  80 04 00 08 */	lwz r0, 8(r4)
/* 80470EE0  80 A4 00 04 */	lwz r5, 4(r4)
/* 80470EE4  7C 09 03 A6 */	mtctr r0
/* 80470EE8  2C 00 00 00 */	cmpwi r0, 0
/* 80470EEC  40 81 00 1C */	ble lbl_80470F08
lbl_80470EF0:
/* 80470EF0  88 05 00 00 */	lbz r0, 0(r5)
/* 80470EF4  28 00 00 00 */	cmplwi r0, 0
/* 80470EF8  4D 82 00 20 */	beqlr 
/* 80470EFC  38 63 00 01 */	addi r3, r3, 1
/* 80470F00  38 A5 00 01 */	addi r5, r5, 1
/* 80470F04  42 00 FF EC */	bdnz lbl_80470EF0
lbl_80470F08:
/* 80470F08  38 60 FF FF */	li r3, -1
/* 80470F0C  4E 80 00 20 */	blr 
