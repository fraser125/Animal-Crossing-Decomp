lbl_803E5338:
/* 803E5338  3C 00 DE 00 */	lis r0, 0xde00
/* 803E533C  3C 80 80 66 */	lis r4, data_8065C488@ha /* 0x8065C488@ha */
/* 803E5340  38 84 C4 88 */	addi r4, r4, data_8065C488@l /* 0x8065C488@l */
/* 803E5344  90 03 00 00 */	stw r0, 0(r3)
/* 803E5348  38 04 01 80 */	addi r0, r4, 0x180
/* 803E534C  3C 80 E3 00 */	lis r4, 0xE300 /* 0xE3001801@ha */
/* 803E5350  90 03 00 04 */	stw r0, 4(r3)
/* 803E5354  38 84 18 01 */	addi r4, r4, 0x1801 /* 0xE3001801@l */
/* 803E5358  38 00 00 C0 */	li r0, 0xc0
/* 803E535C  38 A3 00 10 */	addi r5, r3, 0x10
/* 803E5360  90 83 00 08 */	stw r4, 8(r3)
/* 803E5364  90 03 00 0C */	stw r0, 0xc(r3)
/* 803E5368  7C A3 2B 78 */	mr r3, r5
/* 803E536C  4E 80 00 20 */	blr 