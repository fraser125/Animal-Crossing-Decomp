lbl_805E5384:
/* 805E5384  3C 80 80 5E */	lis r4, mLE_ledit_ovl_move@ha /* 0x805E4E64@ha */
/* 805E5388  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E538C  38 04 4E 64 */	addi r0, r4, mLE_ledit_ovl_move@l /* 0x805E4E64@l */
/* 805E5390  3C 60 80 5E */	lis r3, mLE_ledit_ovl_draw@ha /* 0x805E532C@ha */
/* 805E5394  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805E5398  38 03 53 2C */	addi r0, r3, mLE_ledit_ovl_draw@l /* 0x805E532C@l */
/* 805E539C  90 05 09 10 */	stw r0, 0x910(r5)
/* 805E53A0  4E 80 00 20 */	blr 
