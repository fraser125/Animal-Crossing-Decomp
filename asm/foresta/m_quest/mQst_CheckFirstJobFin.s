lbl_803E3CD4:
/* 803E3CD4  88 03 00 01 */	lbz r0, 1(r3)
/* 803E3CD8  38 60 00 00 */	li r3, 0
/* 803E3CDC  54 00 EF 3F */	rlwinm. r0, r0, 0x1d, 0x1c, 0x1f
/* 803E3CE0  4C 82 00 20 */	bnelr 
/* 803E3CE4  38 60 00 01 */	li r3, 1
/* 803E3CE8  4E 80 00 20 */	blr 
