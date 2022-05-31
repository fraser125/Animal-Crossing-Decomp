lbl_8038AFE4:
/* 8038AFE4  EC 01 00 72 */	fmuls f0, f1, f1
/* 8038AFE8  C0 83 00 00 */	lfs f4, 0(r3)
/* 8038AFEC  C0 64 00 00 */	lfs f3, 0(r4)
/* 8038AFF0  C0 43 00 08 */	lfs f2, 8(r3)
/* 8038AFF4  C0 24 00 08 */	lfs f1, 8(r4)
/* 8038AFF8  EC 64 18 28 */	fsubs f3, f4, f3
/* 8038AFFC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8038B000  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8038B004  EC 21 00 72 */	fmuls f1, f1, f1
/* 8038B008  EC 22 08 2A */	fadds f1, f2, f1
/* 8038B00C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038B010  4C 40 13 82 */	cror 2, 0, 2
/* 8038B014  7C 00 00 26 */	mfcr r0
/* 8038B018  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 8038B01C  4E 80 00 20 */	blr 
