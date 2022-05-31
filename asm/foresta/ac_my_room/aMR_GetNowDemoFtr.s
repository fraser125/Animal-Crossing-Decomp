lbl_8047412C:
/* 8047412C  A8 03 03 FA */	lha r0, 0x3fa(r3)
/* 80474130  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80474134  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80474138  1C 00 08 58 */	mulli r0, r0, 0x858
/* 8047413C  80 63 00 00 */	lwz r3, 0(r3)
/* 80474140  7C 63 02 14 */	add r3, r3, r0
/* 80474144  4E 80 00 20 */	blr 
