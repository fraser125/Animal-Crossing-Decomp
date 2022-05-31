lbl_8039A53C:
/* 8039A53C  3C 60 81 16 */	lis r3, crcTable@ha /* 0x81167288@ha */
/* 8039A540  38 E0 00 00 */	li r7, 0
/* 8039A544  38 83 72 88 */	addi r4, r3, crcTable@l /* 0x81167288@l */
/* 8039A548  38 00 00 08 */	li r0, 8
/* 8039A54C  38 60 00 00 */	li r3, 0
lbl_8039A550:
/* 8039A550  7C E6 3B 78 */	mr r6, r7
/* 8039A554  7C 09 03 A6 */	mtctr r0
lbl_8039A558:
/* 8039A558  54 C5 07 FF */	clrlwi. r5, r6, 0x1f
/* 8039A55C  54 C6 F8 7E */	srwi r6, r6, 1
/* 8039A560  41 82 00 0C */	beq lbl_8039A56C
/* 8039A564  6C C6 ED B8 */	xoris r6, r6, 0xedb8
/* 8039A568  68 C6 83 20 */	xori r6, r6, 0x8320
lbl_8039A56C:
/* 8039A56C  42 00 FF EC */	bdnz lbl_8039A558
/* 8039A570  38 E7 00 01 */	addi r7, r7, 1
/* 8039A574  7C C4 19 2E */	stwx r6, r4, r3
/* 8039A578  2C 07 01 00 */	cmpwi r7, 0x100
/* 8039A57C  38 63 00 04 */	addi r3, r3, 4
/* 8039A580  41 80 FF D0 */	blt lbl_8039A550
/* 8039A584  4E 80 00 20 */	blr 
