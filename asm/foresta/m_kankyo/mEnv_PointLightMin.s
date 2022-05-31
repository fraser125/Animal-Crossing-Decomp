lbl_803B9618:
/* 803B9618  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B961C  C4 23 9B A0 */	lfsu f1, data_81169BA0@l(r3)  /* 0x81169BA0@l */
/* 803B9620  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 803B9624  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803B9628  4C 40 13 82 */	cror 2, 0, 2
/* 803B962C  7C 00 00 26 */	mfcr r0
/* 803B9630  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 803B9634  4E 80 00 20 */	blr 
