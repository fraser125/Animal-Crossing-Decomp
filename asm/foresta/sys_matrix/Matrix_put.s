lbl_8040C258:
/* 8040C258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040C25C  7C 08 02 A6 */	mflr r0
/* 8040C260  3C A0 81 1C */	lis r5, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C264  7C 64 1B 78 */	mr r4, r3
/* 8040C268  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040C26C  38 65 77 A4 */	addi r3, r5, Matrix_now@l /* 0x811C77A4@l */
/* 8040C270  80 63 00 00 */	lwz r3, 0(r3)
/* 8040C274  48 00 13 09 */	bl Matrix_copy_MtxF
/* 8040C278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040C27C  7C 08 03 A6 */	mtlr r0
/* 8040C280  38 21 00 10 */	addi r1, r1, 0x10
/* 8040C284  4E 80 00 20 */	blr 
