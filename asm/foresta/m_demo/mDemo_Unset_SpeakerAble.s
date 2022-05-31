lbl_8039A3CC:
/* 8039A3CC  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A3D0  38 00 00 00 */	li r0, 0
/* 8039A3D4  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A3D8  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A3DC  90 03 00 08 */	stw r0, 8(r3)
/* 8039A3E0  4E 80 00 20 */	blr 
