lbl_803CE9AC:
/* 803CE9AC  88 03 00 02 */	lbz r0, 2(r3)
/* 803CE9B0  7C 83 00 D0 */	neg r4, r3
/* 803CE9B4  20 00 00 04 */	subfic r0, r0, 4
/* 803CE9B8  7C 05 00 34 */	cntlzw r5, r0
/* 803CE9BC  30 04 FF FF */	addic r0, r4, -1
/* 803CE9C0  54 A5 D9 7E */	srwi r5, r5, 5
/* 803CE9C4  7C 00 21 10 */	subfe r0, r0, r4
/* 803CE9C8  7C A0 00 39 */	and. r0, r5, r0
/* 803CE9CC  41 82 00 28 */	beq lbl_803CE9F4
/* 803CE9D0  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 803CE9D4  28 03 00 00 */	cmplwi r3, 0
/* 803CE9D8  41 82 00 0C */	beq lbl_803CE9E4
/* 803CE9DC  38 63 08 9D */	addi r3, r3, 0x89d
/* 803CE9E0  4E 80 00 20 */	blr 
lbl_803CE9E4:
/* 803CE9E4  3C 60 80 66 */	lis r3, l_no_ending_npc_ending@ha /* 0x8065B1E0@ha */
/* 803CE9E8  38 03 B1 E0 */	addi r0, r3, l_no_ending_npc_ending@l /* 0x8065B1E0@l */
/* 803CE9EC  7C 03 03 78 */	mr r3, r0
/* 803CE9F0  4E 80 00 20 */	blr 
lbl_803CE9F4:
/* 803CE9F4  3C 60 80 66 */	lis r3, l_no_ending_npc_ending@ha /* 0x8065B1E0@ha */
/* 803CE9F8  38 03 B1 E0 */	addi r0, r3, l_no_ending_npc_ending@l /* 0x8065B1E0@l */
/* 803CE9FC  7C 03 03 78 */	mr r3, r0
/* 803CEA00  4E 80 00 20 */	blr 
