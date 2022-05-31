lbl_805A1E18:
/* 805A1E18  3C 60 81 1F */	lis r3, data_811F2870@ha /* 0x811F2870@ha */
/* 805A1E1C  38 00 00 02 */	li r0, 2
/* 805A1E20  38 83 28 70 */	addi r4, r3, data_811F2870@l /* 0x811F2870@l */
/* 805A1E24  38 60 00 00 */	li r3, 0
/* 805A1E28  80 A4 00 00 */	lwz r5, 0(r4)
/* 805A1E2C  38 80 00 00 */	li r4, 0
/* 805A1E30  38 A5 01 74 */	addi r5, r5, 0x174
/* 805A1E34  7C 09 03 A6 */	mtctr r0
lbl_805A1E38:
/* 805A1E38  38 04 01 D0 */	addi r0, r4, 0x1d0
/* 805A1E3C  7C 05 00 2E */	lwzx r0, r5, r0
/* 805A1E40  2C 00 00 00 */	cmpwi r0, 0
/* 805A1E44  4D 82 00 20 */	beqlr 
/* 805A1E48  38 63 00 01 */	addi r3, r3, 1
/* 805A1E4C  38 84 02 50 */	addi r4, r4, 0x250
/* 805A1E50  42 00 FF E8 */	bdnz lbl_805A1E38
/* 805A1E54  38 60 FF FF */	li r3, -1
/* 805A1E58  4E 80 00 20 */	blr 
