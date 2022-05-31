lbl_803B9EA0:
/* 803B9EA0  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803B9EA4  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803B9EA8  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803B9EAC  C0 23 24 48 */	lfs f1, lit_544@l(r3)  /* 0x80642448@l */
/* 803B9EB0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 803B9EB4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803B9EB8  4D 80 00 20 */	bltlr 
/* 803B9EBC  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B9EC0  C0 23 24 4C */	lfs f1, lit_545@l(r3)  /* 0x8064244C@l */
/* 803B9EC4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803B9EC8  4D 81 00 20 */	bgtlr 
/* 803B9ECC  FC 20 00 90 */	fmr f1, f0
/* 803B9ED0  4E 80 00 20 */	blr 
