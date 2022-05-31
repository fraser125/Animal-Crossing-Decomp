lbl_8037D96C:
/* 8037D96C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037D970  7C 08 02 A6 */	mflr r0
/* 8037D974  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037D978  38 A1 00 10 */	addi r5, r1, 0x10
/* 8037D97C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8037D980  3B E3 1B 88 */	addi r31, r3, 0x1b88
/* 8037D984  7F E3 FB 78 */	mr r3, r31
/* 8037D988  38 9F 00 0C */	addi r4, r31, 0xc
/* 8037D98C  48 03 D5 ED */	bl xyz_t_sub
/* 8037D990  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8037D994  38 61 00 10 */	addi r3, r1, 0x10
/* 8037D998  A0 1F 00 3C */	lhz r0, 0x3c(r31)
/* 8037D99C  90 81 00 08 */	stw r4, 8(r1)
/* 8037D9A0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8037D9A4  48 08 AF B9 */	bl func_8040895C
/* 8037D9A8  FC 20 0A 10 */	fabs f1, f1
/* 8037D9AC  3C 60 80 64 */	lis r3, data_8064134C@ha /* 0x8064134C@ha */
/* 8037D9B0  C0 03 13 4C */	lfs f0, data_8064134C@l(r3)  /* 0x8064134C@l */
/* 8037D9B4  FC 20 08 18 */	frsp f1, f1
/* 8037D9B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037D9BC  40 80 00 18 */	bge lbl_8037D9D4
/* 8037D9C0  38 00 00 00 */	li r0, 0
/* 8037D9C4  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 8037D9C8  B0 1F 00 3A */	sth r0, 0x3a(r31)
/* 8037D9CC  B0 1F 00 3C */	sth r0, 0x3c(r31)
/* 8037D9D0  48 00 00 50 */	b lbl_8037DA20
lbl_8037D9D4:
/* 8037D9D4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8037D9D8  4B CD F2 D1 */	bl facos
/* 8037D9DC  3C 60 80 64 */	lis r3, lit_448@ha /* 0x80641350@ha */
/* 8037D9E0  C0 03 13 50 */	lfs f0, lit_448@l(r3)  /* 0x80641350@l */
/* 8037D9E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8037D9E8  FC 00 00 1E */	fctiwz f0, f0
/* 8037D9EC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8037D9F0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8037D9F4  3C 63 00 01 */	addis r3, r3, 1
/* 8037D9F8  38 03 80 00 */	addi r0, r3, -32768
/* 8037D9FC  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 8037DA00  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8037DA04  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8037DA08  48 08 E5 F9 */	bl atans_table
/* 8037DA0C  3C 63 00 01 */	addis r3, r3, 1
/* 8037DA10  38 00 00 00 */	li r0, 0
/* 8037DA14  38 63 80 00 */	addi r3, r3, -32768
/* 8037DA18  B0 7F 00 3A */	sth r3, 0x3a(r31)
/* 8037DA1C  B0 1F 00 3C */	sth r0, 0x3c(r31)
lbl_8037DA20:
/* 8037DA20  A8 61 00 08 */	lha r3, 8(r1)
/* 8037DA24  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 8037DA28  A8 81 00 0A */	lha r4, 0xa(r1)
/* 8037DA2C  7C 03 00 50 */	subf r0, r3, r0
/* 8037DA30  A8 61 00 0C */	lha r3, 0xc(r1)
/* 8037DA34  B0 1F 00 3E */	sth r0, 0x3e(r31)
/* 8037DA38  A8 1F 00 3A */	lha r0, 0x3a(r31)
/* 8037DA3C  7C 04 00 50 */	subf r0, r4, r0
/* 8037DA40  B0 1F 00 40 */	sth r0, 0x40(r31)
/* 8037DA44  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8037DA48  7C 03 00 50 */	subf r0, r3, r0
/* 8037DA4C  B0 1F 00 42 */	sth r0, 0x42(r31)
/* 8037DA50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037DA54  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8037DA58  7C 08 03 A6 */	mtlr r0
/* 8037DA5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8037DA60  4E 80 00 20 */	blr 
