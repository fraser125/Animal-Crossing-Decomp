lbl_803C261C:
/* 803C261C  80 03 04 0C */	lwz r0, 0x40c(r3)
/* 803C2620  60 00 10 00 */	ori r0, r0, 0x1000
/* 803C2624  90 03 04 0C */	stw r0, 0x40c(r3)
/* 803C2628  4E 80 00 20 */	blr 