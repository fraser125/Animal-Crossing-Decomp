lbl_803B3798:
/* 803B3798  3C 60 81 17 */	lis r3, l_mld_start_flag@ha /* 0x81168260@ha */
/* 803B379C  38 00 00 01 */	li r0, 1
/* 803B37A0  90 03 82 60 */	stw r0, l_mld_start_flag@l(r3)  /* 0x81168260@l */
/* 803B37A4  4E 80 00 20 */	blr 
