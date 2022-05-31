lbl_804D7BAC:
/* 804D7BAC  C0 83 01 78 */	lfs f4, 0x178(r3)
/* 804D7BB0  C0 63 01 84 */	lfs f3, 0x184(r3)
/* 804D7BB4  EC 04 10 28 */	fsubs f0, f4, f2
/* 804D7BB8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804D7BBC  40 81 00 18 */	ble lbl_804D7BD4
/* 804D7BC0  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804D7BC4  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804D7BC8  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 804D7BCC  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 804D7BD0  4E 80 00 20 */	blr 
lbl_804D7BD4:
/* 804D7BD4  EC 04 08 28 */	fsubs f0, f4, f1
/* 804D7BD8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804D7BDC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804D7BE0  40 81 00 54 */	ble lbl_804D7C34
/* 804D7BE4  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804D7BE8  EC 04 18 28 */	fsubs f0, f4, f3
/* 804D7BEC  38 A4 65 64 */	addi r5, r4, lit_603@l /* 0x80646564@l */
/* 804D7BF0  C0 65 00 00 */	lfs f3, 0(r5)
/* 804D7BF4  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D7BF8  EC 40 10 28 */	fsubs f2, f0, f2
/* 804D7BFC  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804D7C00  EC 21 18 28 */	fsubs f1, f1, f3
/* 804D7C04  EC 22 08 24 */	fdivs f1, f2, f1
/* 804D7C08  EC 23 08 28 */	fsubs f1, f3, f1
/* 804D7C0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D7C10  40 80 00 0C */	bge lbl_804D7C1C
/* 804D7C14  FC 20 00 90 */	fmr f1, f0
/* 804D7C18  48 00 00 10 */	b lbl_804D7C28
lbl_804D7C1C:
/* 804D7C1C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 804D7C20  40 81 00 08 */	ble lbl_804D7C28
/* 804D7C24  FC 20 18 90 */	fmr f1, f3
lbl_804D7C28:
/* 804D7C28  D0 23 00 F4 */	stfs f1, 0xf4(r3)
/* 804D7C2C  D0 23 00 F8 */	stfs f1, 0xf8(r3)
/* 804D7C30  4E 80 00 20 */	blr 
lbl_804D7C34:
/* 804D7C34  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D7C38  38 00 00 01 */	li r0, 1
/* 804D7C3C  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804D7C40  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 804D7C44  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 804D7C48  98 03 01 08 */	stb r0, 0x108(r3)
/* 804D7C4C  4E 80 00 20 */	blr 
