lbl_803920A0:
/* 803920A0  3C 80 81 14 */	lis r4, mCoBG_block_bgcheck_mode@ha /* 0x8113838C@ha */
/* 803920A4  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 803920A8  90 64 83 8C */	stw r3, mCoBG_block_bgcheck_mode@l(r4)  /* 0x8113838C@l */
/* 803920AC  4E 80 00 20 */	blr 
