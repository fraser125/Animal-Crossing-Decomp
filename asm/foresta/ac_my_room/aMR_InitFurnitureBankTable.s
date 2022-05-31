lbl_80472440:
/* 80472440  3C 60 81 1D */	lis r3, l_bank_index_table@ha /* 0x811CDFF4@ha */
/* 80472444  38 00 04 F2 */	li r0, 0x4f2
/* 80472448  38 63 DF F4 */	addi r3, r3, l_bank_index_table@l /* 0x811CDFF4@l */
/* 8047244C  38 80 00 FF */	li r4, 0xff
/* 80472450  7C 09 03 A6 */	mtctr r0
lbl_80472454:
/* 80472454  98 83 00 00 */	stb r4, 0(r3)
/* 80472458  38 63 00 01 */	addi r3, r3, 1
/* 8047245C  42 00 FF F8 */	bdnz lbl_80472454
/* 80472460  4E 80 00 20 */	blr 
