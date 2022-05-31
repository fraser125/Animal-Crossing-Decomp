lbl_8055FDF0:
/* 8055FDF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055FDF4  38 00 02 00 */	li r0, 0x200
/* 8055FDF8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8055FDFC  38 60 00 00 */	li r3, 0
/* 8055FE00  3C 84 00 02 */	addis r4, r4, 2
/* 8055FE04  7C 09 03 A6 */	mtctr r0
/* 8055FE08  38 84 3F 40 */	addi r4, r4, 0x3f40
lbl_8055FE0C:
/* 8055FE0C  88 04 00 00 */	lbz r0, 0(r4)
/* 8055FE10  28 00 00 FF */	cmplwi r0, 0xff
/* 8055FE14  41 82 00 0C */	beq lbl_8055FE20
/* 8055FE18  38 60 00 01 */	li r3, 1
/* 8055FE1C  4E 80 00 20 */	blr 
lbl_8055FE20:
/* 8055FE20  38 84 00 01 */	addi r4, r4, 1
/* 8055FE24  42 00 FF E8 */	bdnz lbl_8055FE0C
/* 8055FE28  4E 80 00 20 */	blr 
