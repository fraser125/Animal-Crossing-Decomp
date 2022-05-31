lbl_804C99EC:
/* 804C99EC  3C 80 80 64 */	lis r4, data_806461DC@ha /* 0x806461DC@ha */
/* 804C99F0  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 804C99F4  C0 04 61 DC */	lfs f0, data_806461DC@l(r4)  /* 0x806461DC@l */
/* 804C99F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C99FC  40 81 00 28 */	ble lbl_804C9A24
/* 804C9A00  3C 80 80 64 */	lis r4, lit_1749@ha /* 0x80646254@ha */
/* 804C9A04  C0 04 62 54 */	lfs f0, lit_1749@l(r4)  /* 0x80646254@l */
/* 804C9A08  EC 01 00 2A */	fadds f0, f1, f0
/* 804C9A0C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 804C9A10  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804C9A14  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 804C9A18  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804C9A1C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 804C9A20  4E 80 00 20 */	blr 
lbl_804C9A24:
/* 804C9A24  38 00 00 00 */	li r0, 0
/* 804C9A28  90 03 00 00 */	stw r0, 0(r3)
/* 804C9A2C  90 03 00 04 */	stw r0, 4(r3)
/* 804C9A30  90 03 00 08 */	stw r0, 8(r3)
/* 804C9A34  4E 80 00 20 */	blr 
