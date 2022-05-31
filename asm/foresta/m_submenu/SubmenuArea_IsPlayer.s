lbl_803EF458:
/* 803EF458  3C 80 81 17 */	lis r4, data_81171538@ha /* 0x81171538@ha */
/* 803EF45C  3C 60 80 66 */	lis r3, SubmenuArea_dlftbl@ha /* 0x8065DCEC@ha */
/* 803EF460  38 84 15 38 */	addi r4, r4, data_81171538@l /* 0x81171538@l */
/* 803EF464  38 63 DC EC */	addi r3, r3, SubmenuArea_dlftbl@l /* 0x8065DCEC@l */
/* 803EF468  80 84 00 00 */	lwz r4, 0(r4)
/* 803EF46C  38 03 00 1C */	addi r0, r3, 0x1c
/* 803EF470  7C 04 00 50 */	subf r0, r4, r0
/* 803EF474  7C 00 00 34 */	cntlzw r0, r0
/* 803EF478  54 03 D9 7E */	srwi r3, r0, 5
/* 803EF47C  4E 80 00 20 */	blr 
