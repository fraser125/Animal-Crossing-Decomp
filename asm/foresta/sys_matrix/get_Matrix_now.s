lbl_8040C288:
/* 8040C288  3C 60 81 1C */	lis r3, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C28C  38 63 77 A4 */	addi r3, r3, Matrix_now@l /* 0x811C77A4@l */
/* 8040C290  80 63 00 00 */	lwz r3, 0(r3)
/* 8040C294  4E 80 00 20 */	blr 
