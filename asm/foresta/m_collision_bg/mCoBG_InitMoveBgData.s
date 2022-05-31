lbl_8038CF78:
/* 8038CF78  3C 60 81 13 */	lis r3, l_mBgMgr@ha /* 0x811371E8@ha */
/* 8038CF7C  38 80 00 00 */	li r4, 0
/* 8038CF80  38 A3 71 E8 */	addi r5, r3, l_mBgMgr@l /* 0x811371E8@l */
/* 8038CF84  38 00 00 40 */	li r0, 0x40
/* 8038CF88  7C 83 23 78 */	mr r3, r4
/* 8038CF8C  90 85 01 00 */	stw r4, 0x100(r5)
/* 8038CF90  7C 09 03 A6 */	mtctr r0
lbl_8038CF94:
/* 8038CF94  7C 85 19 2E */	stwx r4, r5, r3
/* 8038CF98  38 63 00 04 */	addi r3, r3, 4
/* 8038CF9C  42 00 FF F8 */	bdnz lbl_8038CF94
/* 8038CFA0  4E 80 00 20 */	blr 
