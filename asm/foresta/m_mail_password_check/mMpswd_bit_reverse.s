lbl_803BD36C:
/* 803BD36C  38 00 00 15 */	li r0, 0x15
/* 803BD370  38 80 00 00 */	li r4, 0
/* 803BD374  7C 09 03 A6 */	mtctr r0
lbl_803BD378:
/* 803BD378  2C 04 00 01 */	cmpwi r4, 1
/* 803BD37C  41 82 00 10 */	beq lbl_803BD38C
/* 803BD380  88 03 00 00 */	lbz r0, 0(r3)
/* 803BD384  68 00 00 FF */	xori r0, r0, 0xff
/* 803BD388  98 03 00 00 */	stb r0, 0(r3)
lbl_803BD38C:
/* 803BD38C  38 84 00 01 */	addi r4, r4, 1
/* 803BD390  38 63 00 01 */	addi r3, r3, 1
/* 803BD394  42 00 FF E4 */	bdnz lbl_803BD378
/* 803BD398  4E 80 00 20 */	blr 
