lbl_804D6C7C:
/* 804D6C7C  88 03 0F 5D */	lbz r0, 0xf5d(r3)
/* 804D6C80  54 03 07 7A */	rlwinm r3, r0, 0, 0x1d, 0x1d
/* 804D6C84  4E 80 00 20 */	blr 
