lbl_8040C1D4:
/* 8040C1D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040C1D8  7C 08 02 A6 */	mflr r0
/* 8040C1DC  3C 60 81 1C */	lis r3, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C1E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040C1E4  80 83 77 A4 */	lwz r4, Matrix_now@l(r3)  /* 0x811C77A4@l */
/* 8040C1E8  38 64 00 40 */	addi r3, r4, 0x40
/* 8040C1EC  48 00 13 91 */	bl Matrix_copy_MtxF
/* 8040C1F0  3C 60 81 1C */	lis r3, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C1F4  38 83 77 A4 */	addi r4, r3, Matrix_now@l /* 0x811C77A4@l */
/* 8040C1F8  80 64 00 00 */	lwz r3, 0(r4)
/* 8040C1FC  38 03 00 40 */	addi r0, r3, 0x40
/* 8040C200  90 04 00 00 */	stw r0, 0(r4)
/* 8040C204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040C208  7C 08 03 A6 */	mtlr r0
/* 8040C20C  38 21 00 10 */	addi r1, r1, 0x10
/* 8040C210  4E 80 00 20 */	blr 
