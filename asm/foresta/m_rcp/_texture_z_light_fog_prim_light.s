lbl_803E5180:
/* 803E5180  80 C3 03 10 */	lwz r6, 0x310(r3)
/* 803E5184  3C 80 80 66 */	lis r4, data_8065C488@ha /* 0x8065C488@ha */
/* 803E5188  38 84 C4 88 */	addi r4, r4, data_8065C488@l /* 0x8065C488@l */
/* 803E518C  3C A0 DE 00 */	lis r5, 0xde00
/* 803E5190  38 06 00 08 */	addi r0, r6, 8
/* 803E5194  90 03 03 10 */	stw r0, 0x310(r3)
/* 803E5198  38 04 00 60 */	addi r0, r4, 0x60
/* 803E519C  90 A6 00 00 */	stw r5, 0(r6)
/* 803E51A0  90 06 00 04 */	stw r0, 4(r6)
/* 803E51A4  4E 80 00 20 */	blr 
