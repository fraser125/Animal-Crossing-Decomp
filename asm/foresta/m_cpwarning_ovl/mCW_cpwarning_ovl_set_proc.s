lbl_805CF24C:
/* 805CF24C  3C 80 80 5D */	lis r4, mCW_cpwarning_ovl_move@ha /* 0x805CEDD4@ha */
/* 805CF250  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CF254  38 04 ED D4 */	addi r0, r4, mCW_cpwarning_ovl_move@l /* 0x805CEDD4@l */
/* 805CF258  3C 60 80 5D */	lis r3, mCW_cpwarning_ovl_draw@ha /* 0x805CF1E4@ha */
/* 805CF25C  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805CF260  38 03 F1 E4 */	addi r0, r3, mCW_cpwarning_ovl_draw@l /* 0x805CF1E4@l */
/* 805CF264  90 05 09 10 */	stw r0, 0x910(r5)
/* 805CF268  4E 80 00 20 */	blr 
