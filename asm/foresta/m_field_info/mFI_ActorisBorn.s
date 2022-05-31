lbl_803A7EC4:
/* 803A7EC4  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A7EC8  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A7ECC  80 63 00 00 */	lwz r3, 0(r3)
/* 803A7ED0  88 03 00 91 */	lbz r0, 0x91(r3)
/* 803A7ED4  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 803A7ED8  4E 80 00 20 */	blr 
