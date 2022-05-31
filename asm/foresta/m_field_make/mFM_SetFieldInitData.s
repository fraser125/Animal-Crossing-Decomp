lbl_803A3C7C:
/* 803A3C7C  3C C0 81 16 */	lis r6, data_811678D8@ha /* 0x811678D8@ha */
/* 803A3C80  3C A0 81 16 */	lis r5, l_bg_disp_size@ha /* 0x811678DC@ha */
/* 803A3C84  90 66 78 D8 */	stw r3, data_811678D8@l(r6)  /* 0x811678D8@l */
/* 803A3C88  90 85 78 DC */	stw r4, l_bg_disp_size@l(r5)  /* 0x811678DC@l */
/* 803A3C8C  4E 80 00 20 */	blr 
