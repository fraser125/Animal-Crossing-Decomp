lbl_803E52EC:
/* 803E52EC  80 E3 02 E0 */	lwz r7, 0x2e0(r3)
/* 803E52F0  3C 80 80 66 */	lis r4, data_8065C488@ha /* 0x8065C488@ha */
/* 803E52F4  3C A0 DE 00 */	lis r5, 0xde00
/* 803E52F8  38 C7 00 08 */	addi r6, r7, 8
/* 803E52FC  38 04 C4 88 */	addi r0, r4, data_8065C488@l /* 0x8065C488@l */
/* 803E5300  90 C3 02 E0 */	stw r6, 0x2e0(r3)
/* 803E5304  90 A7 00 00 */	stw r5, 0(r7)
/* 803E5308  90 07 00 04 */	stw r0, 4(r7)
/* 803E530C  4E 80 00 20 */	blr 
