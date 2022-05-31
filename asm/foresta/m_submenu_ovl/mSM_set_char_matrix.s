lbl_805ED580:
/* 805ED580  80 C3 02 D0 */	lwz r6, 0x2d0(r3)
/* 805ED584  3C A0 DA 38 */	lis r5, 0xDA38 /* 0xDA380003@ha */
/* 805ED588  3C 80 80 66 */	lis r4, data_8065F870@ha /* 0x8065F870@ha */
/* 805ED58C  7C C7 33 78 */	mr r7, r6
/* 805ED590  38 05 00 03 */	addi r0, r5, 0x0003 /* 0xDA380003@l */
/* 805ED594  90 06 00 00 */	stw r0, 0(r6)
/* 805ED598  38 04 F8 70 */	addi r0, r4, data_8065F870@l /* 0x8065F870@l */
/* 805ED59C  38 C6 00 08 */	addi r6, r6, 8
/* 805ED5A0  90 07 00 04 */	stw r0, 4(r7)
/* 805ED5A4  90 C3 02 D0 */	stw r6, 0x2d0(r3)
/* 805ED5A8  4E 80 00 20 */	blr 
