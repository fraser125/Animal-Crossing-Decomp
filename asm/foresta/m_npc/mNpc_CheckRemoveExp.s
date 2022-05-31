lbl_803CB560:
/* 803CB560  A0 03 08 E6 */	lhz r0, 0x8e6(r3)
/* 803CB564  54 03 9F 7E */	rlwinm r3, r0, 0x13, 0x1d, 0x1f
/* 803CB568  4E 80 00 20 */	blr 
