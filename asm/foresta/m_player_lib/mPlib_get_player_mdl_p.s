lbl_803D96CC:
/* 803D96CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D96D0  3C 60 80 87 */	lis r3, cKF_bs_r_grl_1@ha /* 0x80871628@ha */
/* 803D96D4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D96D8  3C 84 00 02 */	addis r4, r4, 2
/* 803D96DC  38 63 16 28 */	addi r3, r3, cKF_bs_r_grl_1@l /* 0x80871628@l */
/* 803D96E0  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803D96E4  88 04 00 14 */	lbz r0, 0x14(r4)
/* 803D96E8  7C 00 07 75 */	extsb. r0, r0
/* 803D96EC  4C 82 00 20 */	bnelr 
/* 803D96F0  3C 60 80 78 */	lis r3, cKF_bs_r_boy_1@ha /* 0x80781AF0@ha */
/* 803D96F4  38 63 1A F0 */	addi r3, r3, cKF_bs_r_boy_1@l /* 0x80781AF0@l */
/* 803D96F8  4E 80 00 20 */	blr 
