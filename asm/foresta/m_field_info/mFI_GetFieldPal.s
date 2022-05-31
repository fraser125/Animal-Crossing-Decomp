lbl_803A5D54:
/* 803A5D54  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A5D58  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A5D5C  80 63 00 00 */	lwz r3, 0(r3)
/* 803A5D60  38 63 00 48 */	addi r3, r3, 0x48
/* 803A5D64  4E 80 00 20 */	blr 
