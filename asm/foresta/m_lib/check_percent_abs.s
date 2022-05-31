lbl_803BB568:
/* 803BB568  FC 00 10 50 */	fneg f0, f2
/* 803BB56C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803BB570  4C 40 13 82 */	cror 2, 0, 2
/* 803BB574  40 82 00 1C */	bne lbl_803BB590
/* 803BB578  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 803BB57C  4C 40 13 82 */	cror 2, 0, 2
/* 803BB580  40 82 00 10 */	bne lbl_803BB590
/* 803BB584  3C 60 80 64 */	lis r3, lit_450@ha /* 0x80642564@ha */
/* 803BB588  C0 23 25 64 */	lfs f1, lit_450@l(r3)  /* 0x80642564@l */
/* 803BB58C  4E 80 00 20 */	blr 
lbl_803BB590:
/* 803BB590  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 803BB594  4C 41 13 82 */	cror 2, 1, 2
/* 803BB598  40 82 00 10 */	bne lbl_803BB5A8
/* 803BB59C  3C 60 80 64 */	lis r3, lit_966@ha /* 0x8064257C@ha */
/* 803BB5A0  C0 23 25 7C */	lfs f1, lit_966@l(r3)  /* 0x8064257C@l */
/* 803BB5A4  4E 80 00 20 */	blr 
lbl_803BB5A8:
/* 803BB5A8  FC 00 18 50 */	fneg f0, f3
/* 803BB5AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BB5B0  4C 40 13 82 */	cror 2, 0, 2
/* 803BB5B4  40 82 00 10 */	bne lbl_803BB5C4
/* 803BB5B8  3C 60 80 64 */	lis r3, lit_967@ha /* 0x80642580@ha */
/* 803BB5BC  C0 23 25 80 */	lfs f1, lit_967@l(r3)  /* 0x80642580@l */
/* 803BB5C0  4E 80 00 20 */	blr 
lbl_803BB5C4:
/* 803BB5C4  2C 03 00 00 */	cmpwi r3, 0
/* 803BB5C8  41 82 00 2C */	beq lbl_803BB5F4
/* 803BB5CC  3C 60 80 64 */	lis r3, lit_450@ha /* 0x80642564@ha */
/* 803BB5D0  C0 03 25 64 */	lfs f0, lit_450@l(r3)  /* 0x80642564@l */
/* 803BB5D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BB5D8  40 81 00 10 */	ble lbl_803BB5E8
/* 803BB5DC  EC 01 10 28 */	fsubs f0, f1, f2
/* 803BB5E0  EC 24 00 32 */	fmuls f1, f4, f0
/* 803BB5E4  4E 80 00 20 */	blr 
lbl_803BB5E8:
/* 803BB5E8  EC 01 10 2A */	fadds f0, f1, f2
/* 803BB5EC  EC 24 00 32 */	fmuls f1, f4, f0
/* 803BB5F0  4E 80 00 20 */	blr 
lbl_803BB5F4:
/* 803BB5F4  EC 21 01 32 */	fmuls f1, f1, f4
/* 803BB5F8  4E 80 00 20 */	blr 
