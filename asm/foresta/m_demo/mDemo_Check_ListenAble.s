lbl_8039A410:
/* 8039A410  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A414  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A418  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A41C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8039A420  4E 80 00 20 */	blr 
