lbl_80392090:
/* 80392090  3C 60 81 14 */	lis r3, mCoBG_block_bgcheck_mode@ha /* 0x8113838C@ha */
/* 80392094  38 00 00 00 */	li r0, 0
/* 80392098  90 03 83 8C */	stw r0, mCoBG_block_bgcheck_mode@l(r3)  /* 0x8113838C@l */
/* 8039209C  4E 80 00 20 */	blr 
