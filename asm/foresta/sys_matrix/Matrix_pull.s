lbl_8040C214:
/* 8040C214  3C 60 81 1C */	lis r3, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C218  38 83 77 A4 */	addi r4, r3, Matrix_now@l /* 0x811C77A4@l */
/* 8040C21C  80 64 00 00 */	lwz r3, 0(r4)
/* 8040C220  38 03 FF C0 */	addi r0, r3, -64
/* 8040C224  90 04 00 00 */	stw r0, 0(r4)
/* 8040C228  4E 80 00 20 */	blr 
