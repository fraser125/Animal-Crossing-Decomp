lbl_80537050:
/* 80537050  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80537054  7C 08 02 A6 */	mflr r0
/* 80537058  90 01 00 54 */	stw r0, 0x54(r1)
/* 8053705C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80537060  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80537064  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80537068  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8053706C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80537070  7C 7F 1B 78 */	mr r31, r3
/* 80537074  38 61 00 08 */	addi r3, r1, 8
/* 80537078  38 80 00 0C */	li r4, 0xc
/* 8053707C  4B B2 5F ED */	bl bzero
/* 80537080  80 DF 01 80 */	lwz r6, 0x180(r31)
/* 80537084  3C A0 80 65 */	lis r5, lit_1660@ha /* 0x806492B8@ha */
/* 80537088  3C 80 80 65 */	lis r4, lit_1419@ha /* 0x806492AC@ha */
/* 8053708C  C0 65 92 B8 */	lfs f3, lit_1660@l(r5)  /* 0x806492B8@l */
/* 80537090  C0 46 00 04 */	lfs f2, 4(r6)
/* 80537094  7F E3 FB 78 */	mr r3, r31
/* 80537098  C0 24 92 AC */	lfs f1, lit_1419@l(r4)  /* 0x806492AC@l */
/* 8053709C  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 805370A0  EF E3 10 2A */	fadds f31, f3, f2
/* 805370A4  EF C1 00 2A */	fadds f30, f1, f0
/* 805370A8  FC 20 F8 90 */	fmr f1, f31
/* 805370AC  FC 40 F0 90 */	fmr f2, f30
/* 805370B0  4B FF 87 A9 */	bl aNPC_set_dst_pos
/* 805370B4  FC 20 F8 1E */	fctiwz f1, f31
/* 805370B8  7F E3 FB 78 */	mr r3, r31
/* 805370BC  FC 00 F0 1E */	fctiwz f0, f30
/* 805370C0  38 E1 00 08 */	addi r7, r1, 8
/* 805370C4  38 80 00 01 */	li r4, 1
/* 805370C8  38 A0 00 01 */	li r5, 1
/* 805370CC  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805370D0  38 C0 00 00 */	li r6, 0
/* 805370D4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805370D8  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 805370DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805370E0  B1 01 00 0C */	sth r8, 0xc(r1)
/* 805370E4  B0 01 00 0E */	sth r0, 0xe(r1)
/* 805370E8  4B FF A5 15 */	bl aNPC_set_request_act
/* 805370EC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805370F0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805370F4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805370F8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805370FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80537100  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80537104  7C 08 03 A6 */	mtlr r0
/* 80537108  38 21 00 50 */	addi r1, r1, 0x50
/* 8053710C  4E 80 00 20 */	blr 
