lbl_8039A338:
/* 8039A338  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A33C  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A340  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A344  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 8039A348  30 03 FF FF */	addic r0, r3, -1
/* 8039A34C  7C 60 19 10 */	subfe r3, r0, r3
/* 8039A350  4E 80 00 20 */	blr 
