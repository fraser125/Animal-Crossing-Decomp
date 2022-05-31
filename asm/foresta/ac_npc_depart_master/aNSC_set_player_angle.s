lbl_8054E6C4:
/* 8054E6C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8054E6C8  7C 08 02 A6 */	mflr r0
/* 8054E6CC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8054E6D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8054E6D4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8054E6D8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8054E6DC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8054E6E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8054E6E4  4B E8 AF 5D */	bl get_player_actor_withoutCheck
/* 8054E6E8  7C 7F 1B 78 */	mr r31, r3
/* 8054E6EC  3C 60 43 30 */	lis r3, 0x4330
/* 8054E6F0  C0 3F 13 A0 */	lfs f1, 0x13a0(r31)
/* 8054E6F4  3C 80 80 65 */	lis r4, lit_1030@ha /* 0x8064951C@ha */
/* 8054E6F8  C0 1F 13 98 */	lfs f0, 0x1398(r31)
/* 8054E6FC  3C A0 80 65 */	lis r5, lit_1027@ha /* 0x80649518@ha */
/* 8054E700  FC 20 08 1E */	fctiwz f1, f1
/* 8054E704  38 C5 95 18 */	addi r6, r5, lit_1027@l /* 0x80649518@l */
/* 8054E708  FC 00 00 1E */	fctiwz f0, f0
/* 8054E70C  3C E0 80 65 */	lis r7, lit_1026@ha /* 0x80649514@ha */
/* 8054E710  C8 A4 95 1C */	lfd f5, lit_1030@l(r4)  /* 0x8064951C@l */
/* 8054E714  38 A0 00 28 */	li r5, 0x28
/* 8054E718  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8054E71C  C0 C6 00 00 */	lfs f6, 0(r6)
/* 8054E720  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8054E724  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8054E728  7C 84 2B D6 */	divw r4, r4, r5
/* 8054E72C  C0 E7 95 14 */	lfs f7, lit_1026@l(r7)  /* 0x80649514@l */
/* 8054E730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054E734  90 61 00 18 */	stw r3, 0x18(r1)
/* 8054E738  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 8054E73C  90 61 00 28 */	stw r3, 0x28(r1)
/* 8054E740  7C 00 2B D6 */	divw r0, r0, r5
/* 8054E744  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 8054E748  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8054E74C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8054E750  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8054E754  EC 21 28 28 */	fsubs f1, f1, f5
/* 8054E758  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8054E75C  EC 46 08 2A */	fadds f2, f6, f1
/* 8054E760  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8054E764  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8054E768  EC 87 00 B2 */	fmuls f4, f7, f2
/* 8054E76C  EC 41 28 28 */	fsubs f2, f1, f5
/* 8054E770  EC 24 18 28 */	fsubs f1, f4, f3
/* 8054E774  EC 46 10 2A */	fadds f2, f6, f2
/* 8054E778  EC 47 00 B2 */	fmuls f2, f7, f2
/* 8054E77C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8054E780  4B EB D8 81 */	bl atans_table
/* 8054E784  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8054E788  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8054E78C  83 C4 52 F0 */	lwz r30, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 8054E790  7F C3 F3 78 */	mr r3, r30
/* 8054E794  4B E8 AE AD */	bl get_player_actor_withoutCheck
/* 8054E798  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 8054E79C  7F C3 F3 78 */	mr r3, r30
/* 8054E7A0  38 9F 00 28 */	addi r4, r31, 0x28
/* 8054E7A4  38 A1 00 08 */	addi r5, r1, 8
/* 8054E7A8  38 C0 00 20 */	li r6, 0x20
/* 8054E7AC  7D 89 03 A6 */	mtctr r12
/* 8054E7B0  4E 80 04 21 */	bctrl 
/* 8054E7B4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8054E7B8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8054E7BC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8054E7C0  7C 08 03 A6 */	mtlr r0
/* 8054E7C4  38 21 00 40 */	addi r1, r1, 0x40
/* 8054E7C8  4E 80 00 20 */	blr 
