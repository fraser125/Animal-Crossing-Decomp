lbl_804D7FB0:
/* 804D7FB0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804D7FB4  7C 08 02 A6 */	mflr r0
/* 804D7FB8  90 01 00 54 */	stw r0, 0x54(r1)
/* 804D7FBC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804D7FC0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804D7FC4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 804D7FC8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 804D7FCC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804D7FD0  7C 7F 1B 78 */	mr r31, r3
/* 804D7FD4  38 60 00 00 */	li r3, 0
/* 804D7FD8  38 80 00 02 */	li r4, 2
/* 804D7FDC  4B EC 04 A1 */	bl mDemo_Get_OrderValue
/* 804D7FE0  7C 63 07 34 */	extsh r3, r3
/* 804D7FE4  3C 00 43 30 */	lis r0, 0x4330
/* 804D7FE8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804D7FEC  3C 80 80 64 */	lis r4, lit_1627@ha /* 0x80646A54@ha */
/* 804D7FF0  90 61 00 0C */	stw r3, 0xc(r1)
/* 804D7FF4  38 60 00 00 */	li r3, 0
/* 804D7FF8  C8 24 6A 54 */	lfd f1, lit_1627@l(r4)  /* 0x80646A54@l */
/* 804D7FFC  38 80 00 03 */	li r4, 3
/* 804D8000  90 01 00 08 */	stw r0, 8(r1)
/* 804D8004  C8 01 00 08 */	lfd f0, 8(r1)
/* 804D8008  EF E0 08 28 */	fsubs f31, f0, f1
/* 804D800C  4B EC 04 71 */	bl mDemo_Get_OrderValue
/* 804D8010  7C 63 07 34 */	extsh r3, r3
/* 804D8014  3C 00 43 30 */	lis r0, 0x4330
/* 804D8018  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804D801C  3C 80 80 64 */	lis r4, lit_1627@ha /* 0x80646A54@ha */
/* 804D8020  90 61 00 14 */	stw r3, 0x14(r1)
/* 804D8024  38 60 00 00 */	li r3, 0
/* 804D8028  C8 24 6A 54 */	lfd f1, lit_1627@l(r4)  /* 0x80646A54@l */
/* 804D802C  38 80 00 04 */	li r4, 4
/* 804D8030  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D8034  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804D8038  EF C0 08 28 */	fsubs f30, f0, f1
/* 804D803C  4B EC 04 41 */	bl mDemo_Get_OrderValue
/* 804D8040  7C 63 07 34 */	extsh r3, r3
/* 804D8044  3C 00 43 30 */	lis r0, 0x4330
/* 804D8048  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804D804C  3C 80 80 64 */	lis r4, lit_1627@ha /* 0x80646A54@ha */
/* 804D8050  90 61 00 1C */	stw r3, 0x1c(r1)
/* 804D8054  C8 24 6A 54 */	lfd f1, lit_1627@l(r4)  /* 0x80646A54@l */
/* 804D8058  90 01 00 18 */	stw r0, 0x18(r1)
/* 804D805C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804D8060  D3 FF 00 00 */	stfs f31, 0(r31)
/* 804D8064  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D8068  D3 DF 00 04 */	stfs f30, 4(r31)
/* 804D806C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804D8070  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804D8074  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804D8078  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 804D807C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 804D8080  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804D8084  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804D8088  7C 08 03 A6 */	mtlr r0
/* 804D808C  38 21 00 50 */	addi r1, r1, 0x50
/* 804D8090  4E 80 00 20 */	blr 
