lbl_804D7B2C:
/* 804D7B2C  C0 03 01 84 */	lfs f0, 0x184(r3)
/* 804D7B30  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D7B34  4D 80 00 20 */	bltlr 
/* 804D7B38  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804D7B3C  40 80 00 54 */	bge lbl_804D7B90
/* 804D7B40  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804D7B44  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D7B48  EC 22 08 28 */	fsubs f1, f2, f1
/* 804D7B4C  C0 65 65 64 */	lfs f3, lit_603@l(r5)  /* 0x80646564@l */
/* 804D7B50  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D7B54  EC 40 18 28 */	fsubs f2, f0, f3
/* 804D7B58  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804D7B5C  EC 21 18 28 */	fsubs f1, f1, f3
/* 804D7B60  EC 22 08 24 */	fdivs f1, f2, f1
/* 804D7B64  EC 23 08 28 */	fsubs f1, f3, f1
/* 804D7B68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D7B6C  40 80 00 0C */	bge lbl_804D7B78
/* 804D7B70  FC 20 00 90 */	fmr f1, f0
/* 804D7B74  48 00 00 10 */	b lbl_804D7B84
lbl_804D7B78:
/* 804D7B78  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 804D7B7C  40 81 00 08 */	ble lbl_804D7B84
/* 804D7B80  FC 20 18 90 */	fmr f1, f3
lbl_804D7B84:
/* 804D7B84  D0 23 00 F4 */	stfs f1, 0xf4(r3)
/* 804D7B88  D0 23 00 F8 */	stfs f1, 0xf8(r3)
/* 804D7B8C  4E 80 00 20 */	blr 
lbl_804D7B90:
/* 804D7B90  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D7B94  38 00 00 00 */	li r0, 0
/* 804D7B98  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804D7B9C  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 804D7BA0  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 804D7BA4  98 03 01 08 */	stb r0, 0x108(r3)
/* 804D7BA8  4E 80 00 20 */	blr 
