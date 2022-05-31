lbl_803920B0:
/* 803920B0  3C 60 81 14 */	lis r3, mCoBG_block_bgcheck_mode@ha /* 0x8113838C@ha */
/* 803920B4  80 03 83 8C */	lwz r0, mCoBG_block_bgcheck_mode@l(r3)  /* 0x8113838C@l */
/* 803920B8  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 803920BC  4E 80 00 20 */	blr 
