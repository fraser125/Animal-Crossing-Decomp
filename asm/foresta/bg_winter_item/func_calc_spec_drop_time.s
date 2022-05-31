lbl_804C079C:
/* 804C079C  3C A0 80 64 */	lis r5, data_8064613C@ha /* 0x8064613C@ha */
/* 804C07A0  C0 05 61 3C */	lfs f0, data_8064613C@l(r5)  /* 0x8064613C@l */
/* 804C07A4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804C07A8  40 81 00 30 */	ble lbl_804C07D8
/* 804C07AC  3C A0 80 64 */	lis r5, lit_1004@ha /* 0x8064617C@ha */
/* 804C07B0  EC A1 18 24 */	fdivs f5, f1, f3
/* 804C07B4  C0 05 61 7C */	lfs f0, lit_1004@l(r5)  /* 0x8064617C@l */
/* 804C07B8  EC 20 00 F2 */	fmuls f1, f0, f3
/* 804C07BC  D0 A3 00 00 */	stfs f5, 0(r3)
/* 804C07C0  EC 03 01 32 */	fmuls f0, f3, f4
/* 804C07C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C07C8  EC 02 00 28 */	fsubs f0, f2, f0
/* 804C07CC  EC 00 18 24 */	fdivs f0, f0, f3
/* 804C07D0  D0 04 00 00 */	stfs f0, 0(r4)
/* 804C07D4  4E 80 00 20 */	blr 
lbl_804C07D8:
/* 804C07D8  D0 03 00 00 */	stfs f0, 0(r3)
/* 804C07DC  D0 04 00 00 */	stfs f0, 0(r4)
/* 804C07E0  4E 80 00 20 */	blr 
