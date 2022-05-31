lbl_8040C19C:
/* 8040C19C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040C1A0  7C 08 02 A6 */	mflr r0
/* 8040C1A4  38 80 05 00 */	li r4, 0x500
/* 8040C1A8  38 63 00 78 */	addi r3, r3, 0x78
/* 8040C1AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040C1B0  4B FF 88 A9 */	bl func_80404A58
/* 8040C1B4  3C A0 81 1C */	lis r5, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C1B8  3C 80 81 1C */	lis r4, data_811C77A0@ha /* 0x811C77A0@ha */
/* 8040C1BC  90 65 77 A4 */	stw r3, Matrix_now@l(r5)  /* 0x811C77A4@l */
/* 8040C1C0  90 64 77 A0 */	stw r3, data_811C77A0@l(r4)  /* 0x811C77A0@l */
/* 8040C1C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040C1C8  7C 08 03 A6 */	mtlr r0
/* 8040C1CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8040C1D0  4E 80 00 20 */	blr 
