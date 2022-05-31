lbl_804DC4C0:
/* 804DC4C0  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804DC4C4  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804DC4C8  38 00 00 03 */	li r0, 3
/* 804DC4CC  38 63 11 B4 */	addi r3, r3, 0x11b4
/* 804DC4D0  C0 45 65 68 */	lfs f2, lit_604@l(r5)  /* 0x80646568@l */
/* 804DC4D4  C0 24 65 64 */	lfs f1, lit_603@l(r4)  /* 0x80646564@l */
/* 804DC4D8  7C 09 03 A6 */	mtctr r0
lbl_804DC4DC:
/* 804DC4DC  C0 03 00 00 */	lfs f0, 0(r3)
/* 804DC4E0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804DC4E4  40 81 00 1C */	ble lbl_804DC500
/* 804DC4E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DC4EC  D0 03 00 00 */	stfs f0, 0(r3)
/* 804DC4F0  C0 03 00 00 */	lfs f0, 0(r3)
/* 804DC4F4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804DC4F8  40 80 00 08 */	bge lbl_804DC500
/* 804DC4FC  D0 43 00 00 */	stfs f2, 0(r3)
lbl_804DC500:
/* 804DC500  38 63 00 04 */	addi r3, r3, 4
/* 804DC504  42 00 FF D8 */	bdnz lbl_804DC4DC
/* 804DC508  4E 80 00 20 */	blr 
