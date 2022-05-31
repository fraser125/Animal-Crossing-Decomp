lbl_8039E4AC:
/* 8039E4AC  3C 60 81 16 */	lis r3, n_rumor@ha /* 0x81167824@ha */
/* 8039E4B0  38 00 00 00 */	li r0, 0
/* 8039E4B4  90 03 78 24 */	stw r0, n_rumor@l(r3)  /* 0x81167824@l */
/* 8039E4B8  4E 80 00 20 */	blr 
