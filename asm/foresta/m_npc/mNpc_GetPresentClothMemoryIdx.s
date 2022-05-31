lbl_803CE73C:
/* 803CE73C  28 03 00 00 */	cmplwi r3, 0
/* 803CE740  38 A0 FF FF */	li r5, -1
/* 803CE744  41 82 00 34 */	beq lbl_803CE778
/* 803CE748  38 00 00 07 */	li r0, 7
/* 803CE74C  38 80 00 00 */	li r4, 0
/* 803CE750  7C 09 03 A6 */	mtctr r0
lbl_803CE754:
/* 803CE754  88 03 00 31 */	lbz r0, 0x31(r3)
/* 803CE758  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 803CE75C  28 00 00 01 */	cmplwi r0, 1
/* 803CE760  40 82 00 0C */	bne lbl_803CE76C
/* 803CE764  7C 85 23 78 */	mr r5, r4
/* 803CE768  48 00 00 10 */	b lbl_803CE778
lbl_803CE76C:
/* 803CE76C  38 63 01 38 */	addi r3, r3, 0x138
/* 803CE770  38 84 00 01 */	addi r4, r4, 1
/* 803CE774  42 00 FF E0 */	bdnz lbl_803CE754
lbl_803CE778:
/* 803CE778  7C A3 2B 78 */	mr r3, r5
/* 803CE77C  4E 80 00 20 */	blr 
