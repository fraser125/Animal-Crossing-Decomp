lbl_803A5D40:
/* 803A5D40  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A5D44  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A5D48  80 63 00 00 */	lwz r3, 0(r3)
/* 803A5D4C  38 63 00 08 */	addi r3, r3, 8
/* 803A5D50  4E 80 00 20 */	blr 
