lbl_803F1D04:
/* 803F1D04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F1D08  38 00 00 03 */	li r0, 3
/* 803F1D0C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803F1D10  38 60 00 00 */	li r3, 0
/* 803F1D14  3C 84 00 02 */	addis r4, r4, 2
/* 803F1D18  7C 09 03 A6 */	mtctr r0
/* 803F1D1C  38 84 0E F8 */	addi r4, r4, 0xef8
lbl_803F1D20:
/* 803F1D20  88 04 00 00 */	lbz r0, 0(r4)
/* 803F1D24  28 00 00 00 */	cmplwi r0, 0
/* 803F1D28  4D 82 00 20 */	beqlr 
/* 803F1D2C  38 84 00 04 */	addi r4, r4, 4
/* 803F1D30  38 63 00 01 */	addi r3, r3, 1
/* 803F1D34  42 00 FF EC */	bdnz lbl_803F1D20
/* 803F1D38  38 60 FF FF */	li r3, -1
/* 803F1D3C  4E 80 00 20 */	blr 
