lbl_8055B694:
/* 8055B694  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8055B698  7C 08 02 A6 */	mflr r0
/* 8055B69C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8055B6A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8055B6A4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8055B6A8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8055B6AC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8055B6B0  80 63 00 00 */	lwz r3, 0(r3)
/* 8055B6B4  4B E7 DF 8D */	bl get_player_actor_withoutCheck
/* 8055B6B8  7C 7F 1B 78 */	mr r31, r3
/* 8055B6BC  3C 60 43 30 */	lis r3, 0x4330
/* 8055B6C0  C0 3F 13 A0 */	lfs f1, 0x13a0(r31)
/* 8055B6C4  3C 80 80 65 */	lis r4, lit_1047@ha /* 0x806496EC@ha */
/* 8055B6C8  C0 1F 13 98 */	lfs f0, 0x1398(r31)
/* 8055B6CC  3C A0 80 65 */	lis r5, lit_1044@ha /* 0x806496E8@ha */
/* 8055B6D0  FC 20 08 1E */	fctiwz f1, f1
/* 8055B6D4  38 C5 96 E8 */	addi r6, r5, lit_1044@l /* 0x806496E8@l */
/* 8055B6D8  FC 00 00 1E */	fctiwz f0, f0
/* 8055B6DC  3C E0 80 65 */	lis r7, lit_1043@ha /* 0x806496E4@ha */
/* 8055B6E0  C8 A4 96 EC */	lfd f5, lit_1047@l(r4)  /* 0x806496EC@l */
/* 8055B6E4  38 A0 00 28 */	li r5, 0x28
/* 8055B6E8  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8055B6EC  C0 C6 00 00 */	lfs f6, 0(r6)
/* 8055B6F0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8055B6F4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8055B6F8  7C 84 2B D6 */	divw r4, r4, r5
/* 8055B6FC  C0 E7 96 E4 */	lfs f7, lit_1043@l(r7)  /* 0x806496E4@l */
/* 8055B700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055B704  90 61 00 18 */	stw r3, 0x18(r1)
/* 8055B708  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 8055B70C  90 61 00 28 */	stw r3, 0x28(r1)
/* 8055B710  7C 00 2B D6 */	divw r0, r0, r5
/* 8055B714  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 8055B718  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8055B71C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8055B720  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8055B724  EC 21 28 28 */	fsubs f1, f1, f5
/* 8055B728  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8055B72C  EC 46 08 2A */	fadds f2, f6, f1
/* 8055B730  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8055B734  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8055B738  EC 87 00 B2 */	fmuls f4, f7, f2
/* 8055B73C  EC 41 28 28 */	fsubs f2, f1, f5
/* 8055B740  EC 24 18 28 */	fsubs f1, f4, f3
/* 8055B744  EC 46 10 2A */	fadds f2, f6, f2
/* 8055B748  EC 47 00 B2 */	fmuls f2, f7, f2
/* 8055B74C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8055B750  4B EB 08 B1 */	bl atans_table
/* 8055B754  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8055B758  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8055B75C  83 C4 52 F0 */	lwz r30, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 8055B760  7F C3 F3 78 */	mr r3, r30
/* 8055B764  4B E7 DE DD */	bl get_player_actor_withoutCheck
/* 8055B768  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 8055B76C  7F C3 F3 78 */	mr r3, r30
/* 8055B770  38 9F 00 28 */	addi r4, r31, 0x28
/* 8055B774  38 A1 00 08 */	addi r5, r1, 8
/* 8055B778  38 C0 00 20 */	li r6, 0x20
/* 8055B77C  7D 89 03 A6 */	mtctr r12
/* 8055B780  4E 80 04 21 */	bctrl 
/* 8055B784  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8055B788  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8055B78C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8055B790  7C 08 03 A6 */	mtlr r0
/* 8055B794  38 21 00 40 */	addi r1, r1, 0x40
/* 8055B798  4E 80 00 20 */	blr 
