lbl_803B9ED4:
/* 803B9ED4  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803B9ED8  38 63 63 34 */	addi r3, r3, mEnv_wind_info@l /* 0x80656334@l */
/* 803B9EDC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 803B9EE0  4E 80 00 20 */	blr 
