lbl_80379898:
/* 80379898  80 83 00 00 */	lwz r4, 0(r3)
/* 8037989C  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 803798A0  41 82 00 10 */	beq lbl_803798B0
/* 803798A4  60 80 00 02 */	ori r0, r4, 2
/* 803798A8  90 03 00 00 */	stw r0, 0(r3)
/* 803798AC  48 00 00 0C */	b lbl_803798B8
lbl_803798B0:
/* 803798B0  54 80 07 FA */	rlwinm r0, r4, 0, 0x1f, 0x1d
/* 803798B4  90 03 00 00 */	stw r0, 0(r3)
lbl_803798B8:
/* 803798B8  80 83 00 00 */	lwz r4, 0(r3)
/* 803798BC  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 803798C0  41 82 00 10 */	beq lbl_803798D0
/* 803798C4  60 80 00 08 */	ori r0, r4, 8
/* 803798C8  90 03 00 00 */	stw r0, 0(r3)
/* 803798CC  48 00 00 0C */	b lbl_803798D8
lbl_803798D0:
/* 803798D0  54 80 07 76 */	rlwinm r0, r4, 0, 0x1d, 0x1b
/* 803798D4  90 03 00 00 */	stw r0, 0(r3)
lbl_803798D8:
/* 803798D8  80 03 00 04 */	lwz r0, 4(r3)
/* 803798DC  90 03 00 08 */	stw r0, 8(r3)
/* 803798E0  4E 80 00 20 */	blr 
