lbl_805CCEBC:
/* 805CCEBC  3C 60 80 6D */	lis r3, data_806CB750@ha /* 0x806CB750@ha */
/* 805CCEC0  38 00 00 08 */	li r0, 8
/* 805CCEC4  38 63 B7 50 */	addi r3, r3, data_806CB750@l /* 0x806CB750@l */
/* 805CCEC8  7C 09 03 A6 */	mtctr r0
lbl_805CCECC:
/* 805CCECC  38 63 00 14 */	addi r3, r3, 0x14
/* 805CCED0  42 00 FF FC */	bdnz lbl_805CCECC
/* 805CCED4  4E 80 00 20 */	blr 
