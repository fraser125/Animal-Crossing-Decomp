lbl_8040EF30:
/* 8040EF30  3C 60 80 66 */	lis r3, data_8065F930@ha /* 0x8065F930@ha */
/* 8040EF34  38 63 F9 30 */	addi r3, r3, data_8065F930@l /* 0x8065F930@l */
/* 8040EF38  80 63 00 04 */	lwz r3, 4(r3)
/* 8040EF3C  4E 80 00 20 */	blr 
