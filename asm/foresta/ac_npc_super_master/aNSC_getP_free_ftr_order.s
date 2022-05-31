lbl_80580F94:
/* 80580F94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80580F98  38 00 00 05 */	li r0, 5
/* 80580F9C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80580FA0  3C 63 00 02 */	addis r3, r3, 2
/* 80580FA4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80580FA8  38 63 10 A8 */	addi r3, r3, 0x10a8
/* 80580FAC  7C 09 03 A6 */	mtctr r0
lbl_80580FB0:
/* 80580FB0  A0 03 00 00 */	lhz r0, 0(r3)
/* 80580FB4  28 00 00 00 */	cmplwi r0, 0
/* 80580FB8  4D 82 00 20 */	beqlr 
/* 80580FBC  38 63 00 04 */	addi r3, r3, 4
/* 80580FC0  42 00 FF F0 */	bdnz lbl_80580FB0
/* 80580FC4  38 60 00 00 */	li r3, 0
/* 80580FC8  4E 80 00 20 */	blr 
