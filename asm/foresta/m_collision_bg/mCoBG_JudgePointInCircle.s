lbl_8038B020:
/* 8038B020  EC 01 00 72 */	fmuls f0, f1, f1
/* 8038B024  C0 83 00 00 */	lfs f4, 0(r3)
/* 8038B028  C0 64 00 00 */	lfs f3, 0(r4)
/* 8038B02C  C0 43 00 04 */	lfs f2, 4(r3)
/* 8038B030  C0 24 00 04 */	lfs f1, 4(r4)
/* 8038B034  EC 64 18 28 */	fsubs f3, f4, f3
/* 8038B038  EC 22 08 28 */	fsubs f1, f2, f1
/* 8038B03C  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8038B040  EC 21 00 72 */	fmuls f1, f1, f1
/* 8038B044  EC 22 08 2A */	fadds f1, f2, f1
/* 8038B048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038B04C  4C 40 13 82 */	cror 2, 0, 2
/* 8038B050  7C 00 00 26 */	mfcr r0
/* 8038B054  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 8038B058  4E 80 00 20 */	blr 
