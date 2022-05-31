lbl_803A5F78:
/* 803A5F78  80 03 00 04 */	lwz r0, 4(r3)
/* 803A5F7C  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A5F80  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A5F84  38 80 00 01 */	li r4, 1
/* 803A5F88  1C 00 00 0C */	mulli r0, r0, 0xc
/* 803A5F8C  80 63 00 00 */	lwz r3, 0(r3)
/* 803A5F90  7C 63 02 14 */	add r3, r3, r0
/* 803A5F94  90 83 00 10 */	stw r4, 0x10(r3)
/* 803A5F98  4E 80 00 20 */	blr 
