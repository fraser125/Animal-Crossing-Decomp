lbl_803E52C4:
/* 803E52C4  80 C3 02 D0 */	lwz r6, 0x2d0(r3)
/* 803E52C8  3C 80 80 66 */	lis r4, data_8065C488@ha /* 0x8065C488@ha */
/* 803E52CC  38 84 C4 88 */	addi r4, r4, data_8065C488@l /* 0x8065C488@l */
/* 803E52D0  3C A0 DE 00 */	lis r5, 0xde00
/* 803E52D4  38 06 00 08 */	addi r0, r6, 8
/* 803E52D8  90 03 02 D0 */	stw r0, 0x2d0(r3)
/* 803E52DC  38 04 00 C0 */	addi r0, r4, 0xc0
/* 803E52E0  90 A6 00 00 */	stw r5, 0(r6)
/* 803E52E4  90 06 00 04 */	stw r0, 4(r6)
/* 803E52E8  4E 80 00 20 */	blr 
