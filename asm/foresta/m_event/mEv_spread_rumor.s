lbl_8039E4BC:
/* 8039E4BC  3C A0 81 16 */	lis r5, n_rumor@ha /* 0x81167824@ha */
/* 8039E4C0  3C 80 81 16 */	lis r4, rumor_table@ha /* 0x81167828@ha */
/* 8039E4C4  38 E5 78 24 */	addi r7, r5, n_rumor@l /* 0x81167824@l */
/* 8039E4C8  80 C7 00 00 */	lwz r6, 0(r7)
/* 8039E4CC  38 84 78 28 */	addi r4, r4, rumor_table@l /* 0x81167828@l */
/* 8039E4D0  38 A6 00 01 */	addi r5, r6, 1
/* 8039E4D4  54 C0 10 3A */	slwi r0, r6, 2
/* 8039E4D8  7C 64 01 2E */	stwx r3, r4, r0
/* 8039E4DC  7C A3 2B 78 */	mr r3, r5
/* 8039E4E0  90 A7 00 00 */	stw r5, 0(r7)
/* 8039E4E4  4E 80 00 20 */	blr 
