lbl_805D82EC:
/* 805D82EC  3C 80 80 5D */	lis r4, mEE_editEndChk_ovl_move@ha /* 0x805D7C20@ha */
/* 805D82F0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D82F4  38 04 7C 20 */	addi r0, r4, mEE_editEndChk_ovl_move@l /* 0x805D7C20@l */
/* 805D82F8  3C 60 80 5E */	lis r3, mEE_editEndChk_ovl_draw@ha /* 0x805D8294@ha */
/* 805D82FC  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805D8300  38 03 82 94 */	addi r0, r3, mEE_editEndChk_ovl_draw@l /* 0x805D8294@l */
/* 805D8304  90 05 09 10 */	stw r0, 0x910(r5)
/* 805D8308  4E 80 00 20 */	blr 
