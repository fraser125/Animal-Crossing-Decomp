lbl_8040C22C:
/* 8040C22C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040C230  7C 08 02 A6 */	mflr r0
/* 8040C234  3C 80 81 1C */	lis r4, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C238  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040C23C  38 84 77 A4 */	addi r4, r4, Matrix_now@l /* 0x811C77A4@l */
/* 8040C240  80 84 00 00 */	lwz r4, 0(r4)
/* 8040C244  48 00 13 39 */	bl Matrix_copy_MtxF
/* 8040C248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040C24C  7C 08 03 A6 */	mtlr r0
/* 8040C250  38 21 00 10 */	addi r1, r1, 0x10
/* 8040C254  4E 80 00 20 */	blr 
