lbl_803B37A8:
/* 803B37A8  3C 60 81 17 */	lis r3, l_mld_start_flag@ha /* 0x81168260@ha */
/* 803B37AC  38 63 82 60 */	addi r3, r3, l_mld_start_flag@l /* 0x81168260@l */
/* 803B37B0  80 63 00 00 */	lwz r3, 0(r3)
/* 803B37B4  4E 80 00 20 */	blr 
