lbl_803A1D58:
/* 803A1D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1D5C  7C 08 02 A6 */	mflr r0
/* 803A1D60  3C A0 80 65 */	lis r5, l_block_max_by_rank@ha /* 0x806534B0@ha */
/* 803A1D64  7C 64 1B 78 */	mr r4, r3
/* 803A1D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1D6C  38 65 34 B0 */	addi r3, r5, l_block_max_by_rank@l /* 0x806534B0@l */
/* 803A1D70  38 A0 00 07 */	li r5, 7
/* 803A1D74  4B FF F8 35 */	bl mFAs_GetIdx
/* 803A1D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1D7C  7C 08 03 A6 */	mtlr r0
/* 803A1D80  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1D84  4E 80 00 20 */	blr 
