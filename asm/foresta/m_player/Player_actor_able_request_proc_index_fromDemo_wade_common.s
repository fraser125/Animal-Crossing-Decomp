lbl_804FE774:
/* 804FE774  3C 80 80 64 */	lis r4, lit_1076@ha /* 0x80646A18@ha */
/* 804FE778  C0 23 0D 34 */	lfs f1, 0xd34(r3)
/* 804FE77C  C0 04 6A 18 */	lfs f0, lit_1076@l(r4)  /* 0x80646A18@l */
/* 804FE780  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FE784  40 81 00 0C */	ble lbl_804FE790
/* 804FE788  38 60 00 01 */	li r3, 1
/* 804FE78C  4E 80 00 20 */	blr 
lbl_804FE790:
/* 804FE790  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804FE794  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804FE798  EC 01 00 2A */	fadds f0, f1, f0
/* 804FE79C  D0 03 0D 34 */	stfs f0, 0xd34(r3)
/* 804FE7A0  38 60 00 00 */	li r3, 0
/* 804FE7A4  4E 80 00 20 */	blr 
