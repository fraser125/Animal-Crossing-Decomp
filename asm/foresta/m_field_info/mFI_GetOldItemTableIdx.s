lbl_803A7984:
/* 803A7984  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A7988  54 60 10 3A */	slwi r0, r3, 2
/* 803A798C  38 64 7A 58 */	addi r3, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A7990  80 63 00 00 */	lwz r3, 0(r3)
/* 803A7994  7C 63 02 14 */	add r3, r3, r0
/* 803A7998  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 803A799C  4E 80 00 20 */	blr 