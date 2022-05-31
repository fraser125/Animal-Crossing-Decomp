lbl_804D74DC:
/* 804D74DC  C0 03 01 84 */	lfs f0, 0x184(r3)
/* 804D74E0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804D74E4  7C 00 00 26 */	mfcr r0
/* 804D74E8  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 804D74EC  4E 80 00 20 */	blr 
