lbl_8061F558:
/* 8061F558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061F55C  3C 80 80 6D */	lis r4, suisou_pos@ha /* 0x806D36F0@ha */
/* 8061F560  38 04 36 F0 */	addi r0, r4, suisou_pos@l /* 0x806D36F0@l */
/* 8061F564  A8 A3 00 06 */	lha r5, 6(r3)
/* 8061F568  1C 85 00 0C */	mulli r4, r5, 0xc
/* 8061F56C  2C 05 00 02 */	cmpwi r5, 2
/* 8061F570  7C C0 22 14 */	add r6, r0, r4
/* 8061F574  80 A6 00 00 */	lwz r5, 0(r6)
/* 8061F578  80 86 00 04 */	lwz r4, 4(r6)
/* 8061F57C  80 06 00 08 */	lwz r0, 8(r6)
/* 8061F580  90 A1 00 08 */	stw r5, 8(r1)
/* 8061F584  90 81 00 0C */	stw r4, 0xc(r1)
/* 8061F588  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061F58C  40 82 00 6C */	bne lbl_8061F5F8
/* 8061F590  3C 80 80 65 */	lis r4, lit_415@ha /* 0x8064CC94@ha */
/* 8061F594  C0 01 00 08 */	lfs f0, 8(r1)
/* 8061F598  C0 24 CC 94 */	lfs f1, lit_415@l(r4)  /* 0x8064CC94@l */
/* 8061F59C  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8061F5A0  EC 41 00 2A */	fadds f2, f1, f0
/* 8061F5A4  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8061F5A8  40 81 00 0C */	ble lbl_8061F5B4
/* 8061F5AC  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 8061F5B0  48 00 00 14 */	b lbl_8061F5C4
lbl_8061F5B4:
/* 8061F5B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061F5B8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8061F5BC  40 80 00 08 */	bge lbl_8061F5C4
/* 8061F5C0  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_8061F5C4:
/* 8061F5C4  3C 80 80 65 */	lis r4, lit_415@ha /* 0x8064CC94@ha */
/* 8061F5C8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8061F5CC  C0 04 CC 94 */	lfs f0, lit_415@l(r4)  /* 0x8064CC94@l */
/* 8061F5D0  C0 63 00 18 */	lfs f3, 0x18(r3)
/* 8061F5D4  EC 20 10 2A */	fadds f1, f0, f2
/* 8061F5D8  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8061F5DC  40 81 00 0C */	ble lbl_8061F5E8
/* 8061F5E0  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 8061F5E4  48 00 00 14 */	b lbl_8061F5F8
lbl_8061F5E8:
/* 8061F5E8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8061F5EC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8061F5F0  40 80 00 08 */	bge lbl_8061F5F8
/* 8061F5F4  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8061F5F8:
/* 8061F5F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8061F5FC  4E 80 00 20 */	blr 
