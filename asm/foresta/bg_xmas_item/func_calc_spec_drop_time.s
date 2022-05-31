lbl_804C7BB4:
/* 804C7BB4  3C A0 80 64 */	lis r5, data_806461DC@ha /* 0x806461DC@ha */
/* 804C7BB8  C0 05 61 DC */	lfs f0, data_806461DC@l(r5)  /* 0x806461DC@l */
/* 804C7BBC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804C7BC0  40 81 00 30 */	ble lbl_804C7BF0
/* 804C7BC4  3C A0 80 64 */	lis r5, lit_1004@ha /* 0x8064621C@ha */
/* 804C7BC8  EC A1 18 24 */	fdivs f5, f1, f3
/* 804C7BCC  C0 05 62 1C */	lfs f0, lit_1004@l(r5)  /* 0x8064621C@l */
/* 804C7BD0  EC 20 00 F2 */	fmuls f1, f0, f3
/* 804C7BD4  D0 A3 00 00 */	stfs f5, 0(r3)
/* 804C7BD8  EC 03 01 32 */	fmuls f0, f3, f4
/* 804C7BDC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C7BE0  EC 02 00 28 */	fsubs f0, f2, f0
/* 804C7BE4  EC 00 18 24 */	fdivs f0, f0, f3
/* 804C7BE8  D0 04 00 00 */	stfs f0, 0(r4)
/* 804C7BEC  4E 80 00 20 */	blr 
lbl_804C7BF0:
/* 804C7BF0  D0 03 00 00 */	stfs f0, 0(r3)
/* 804C7BF4  D0 04 00 00 */	stfs f0, 0(r4)
/* 804C7BF8  4E 80 00 20 */	blr 
