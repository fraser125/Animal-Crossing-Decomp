lbl_805313AC:
/* 805313AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805313B0  7C 08 02 A6 */	mflr r0
/* 805313B4  3C 80 43 30 */	lis r4, 0x4330
/* 805313B8  3C A0 80 65 */	lis r5, lit_818@ha /* 0x80649284@ha */
/* 805313BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805313C0  38 C5 92 84 */	addi r6, r5, lit_818@l /* 0x80649284@l */
/* 805313C4  C8 46 00 00 */	lfd f2, 0(r6)
/* 805313C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805313CC  3B E0 00 01 */	li r31, 1
/* 805313D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805313D4  7C 7E 1B 78 */	mr r30, r3
/* 805313D8  A8 E3 08 00 */	lha r7, 0x800(r3)
/* 805313DC  A8 03 08 02 */	lha r0, 0x802(r3)
/* 805313E0  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 805313E4  90 81 00 08 */	stw r4, 8(r1)
/* 805313E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805313EC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805313F0  C8 01 00 08 */	lfd f0, 8(r1)
/* 805313F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805313F8  EC 20 10 28 */	fsubs f1, f0, f2
/* 805313FC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80531400  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80531404  EC 40 10 28 */	fsubs f2, f0, f2
/* 80531408  4B FF E4 51 */	bl aNPC_set_dst_pos
/* 8053140C  A8 7E 00 DE */	lha r3, 0xde(r30)
/* 80531410  A8 1E 09 24 */	lha r0, 0x924(r30)
/* 80531414  7C 03 00 00 */	cmpw r3, r0
/* 80531418  40 82 00 08 */	bne lbl_80531420
/* 8053141C  3B E0 00 00 */	li r31, 0
lbl_80531420:
/* 80531420  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80531424  7F E3 FB 78 */	mr r3, r31
/* 80531428  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053142C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80531430  7C 08 03 A6 */	mtlr r0
/* 80531434  38 21 00 20 */	addi r1, r1, 0x20
/* 80531438  4E 80 00 20 */	blr 
