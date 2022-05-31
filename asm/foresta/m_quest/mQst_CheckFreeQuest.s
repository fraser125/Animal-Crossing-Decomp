lbl_803E2BD0:
/* 803E2BD0  88 03 00 00 */	lbz r0, 0(r3)
/* 803E2BD4  38 60 00 00 */	li r3, 0
/* 803E2BD8  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 803E2BDC  28 00 00 03 */	cmplwi r0, 3
/* 803E2BE0  4C 82 00 20 */	bnelr 
/* 803E2BE4  38 60 00 01 */	li r3, 1
/* 803E2BE8  4E 80 00 20 */	blr 
