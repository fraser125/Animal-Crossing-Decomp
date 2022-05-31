lbl_804B8CA4:
/* 804B8CA4  3C A0 80 64 */	lis r5, data_8064608C@ha /* 0x8064608C@ha */
/* 804B8CA8  C0 05 60 8C */	lfs f0, data_8064608C@l(r5)  /* 0x8064608C@l */
/* 804B8CAC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804B8CB0  40 81 00 30 */	ble lbl_804B8CE0
/* 804B8CB4  3C A0 80 64 */	lis r5, lit_1004@ha /* 0x806460CC@ha */
/* 804B8CB8  EC A1 18 24 */	fdivs f5, f1, f3
/* 804B8CBC  C0 05 60 CC */	lfs f0, lit_1004@l(r5)  /* 0x806460CC@l */
/* 804B8CC0  EC 20 00 F2 */	fmuls f1, f0, f3
/* 804B8CC4  D0 A3 00 00 */	stfs f5, 0(r3)
/* 804B8CC8  EC 03 01 32 */	fmuls f0, f3, f4
/* 804B8CCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B8CD0  EC 02 00 28 */	fsubs f0, f2, f0
/* 804B8CD4  EC 00 18 24 */	fdivs f0, f0, f3
/* 804B8CD8  D0 04 00 00 */	stfs f0, 0(r4)
/* 804B8CDC  4E 80 00 20 */	blr 
lbl_804B8CE0:
/* 804B8CE0  D0 03 00 00 */	stfs f0, 0(r3)
/* 804B8CE4  D0 04 00 00 */	stfs f0, 0(r4)
/* 804B8CE8  4E 80 00 20 */	blr 
