lbl_803D43A8:
/* 803D43A8  3C 60 81 17 */	lis r3, l_mnpc_get_letter@ha /* 0x8116C678@ha */
/* 803D43AC  38 63 C6 78 */	addi r3, r3, l_mnpc_get_letter@l /* 0x8116C678@l */
/* 803D43B0  80 63 00 00 */	lwz r3, 0(r3)
/* 803D43B4  4E 80 00 20 */	blr 
