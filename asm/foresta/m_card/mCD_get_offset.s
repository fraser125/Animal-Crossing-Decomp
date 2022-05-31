lbl_803FA410:
/* 803FA410  3C 80 80 66 */	lis r4, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FA414  2C 03 00 01 */	cmpwi r3, 1
/* 803FA418  38 04 E7 08 */	addi r0, r4, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FA41C  38 A0 00 00 */	li r5, 0
/* 803FA420  7C 04 03 78 */	mr r4, r0
/* 803FA424  41 80 00 2C */	blt lbl_803FA450
/* 803FA428  2C 03 00 05 */	cmpwi r3, 5
/* 803FA42C  41 81 00 24 */	bgt lbl_803FA450
/* 803FA430  34 63 FF FF */	addic. r3, r3, -1
/* 803FA434  38 03 00 01 */	addi r0, r3, 1
/* 803FA438  7C 09 03 A6 */	mtctr r0
/* 803FA43C  41 80 00 14 */	blt lbl_803FA450
lbl_803FA440:
/* 803FA440  80 04 00 08 */	lwz r0, 8(r4)
/* 803FA444  38 84 00 0C */	addi r4, r4, 0xc
/* 803FA448  7C A5 02 14 */	add r5, r5, r0
/* 803FA44C  42 00 FF F4 */	bdnz lbl_803FA440
lbl_803FA450:
/* 803FA450  7C A3 2B 78 */	mr r3, r5
/* 803FA454  4E 80 00 20 */	blr 
