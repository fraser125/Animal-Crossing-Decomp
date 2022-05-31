lbl_804A9054:
/* 804A9054  3C 80 80 64 */	lis r4, data_80645DE4@ha /* 0x80645DE4@ha */
/* 804A9058  C0 04 5D E4 */	lfs f0, data_80645DE4@l(r4)  /* 0x80645DE4@l */
/* 804A905C  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 804A9060  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 804A9064  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 804A9068  C0 03 01 D8 */	lfs f0, 0x1d8(r3)
/* 804A906C  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 804A9070  4E 80 00 20 */	blr 
