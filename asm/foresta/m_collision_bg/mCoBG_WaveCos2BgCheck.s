lbl_8039431C:
/* 8039431C  3C 60 81 14 */	lis r3, mCoBG_wave_cos@ha /* 0x81138390@ha */
/* 80394320  D0 23 83 90 */	stfs f1, mCoBG_wave_cos@l(r3)  /* 0x81138390@l */
/* 80394324  4E 80 00 20 */	blr 
