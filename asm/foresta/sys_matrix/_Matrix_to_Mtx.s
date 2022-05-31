lbl_8040D3A4:
/* 8040D3A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040D3A8  7C 08 02 A6 */	mflr r0
/* 8040D3AC  3C A0 81 1C */	lis r5, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040D3B0  7C 64 1B 78 */	mr r4, r3
/* 8040D3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040D3B8  38 65 77 A4 */	addi r3, r5, Matrix_now@l /* 0x811C77A4@l */
/* 8040D3BC  80 63 00 00 */	lwz r3, 0(r3)
/* 8040D3C0  4B FF FD CD */	bl _MtxF_to_Mtx
/* 8040D3C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040D3C8  7C 08 03 A6 */	mtlr r0
/* 8040D3CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8040D3D0  4E 80 00 20 */	blr 
