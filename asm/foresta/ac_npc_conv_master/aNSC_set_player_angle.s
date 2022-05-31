lbl_80546DAC:
/* 80546DAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80546DB0  7C 08 02 A6 */	mflr r0
/* 80546DB4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80546DB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80546DBC  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80546DC0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80546DC4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80546DC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80546DCC  4B E9 28 75 */	bl get_player_actor_withoutCheck
/* 80546DD0  7C 7F 1B 78 */	mr r31, r3
/* 80546DD4  3C 60 43 30 */	lis r3, 0x4330
/* 80546DD8  C0 3F 13 A0 */	lfs f1, 0x13a0(r31)
/* 80546DDC  3C 80 80 65 */	lis r4, lit_1019@ha /* 0x806494B4@ha */
/* 80546DE0  C0 1F 13 98 */	lfs f0, 0x1398(r31)
/* 80546DE4  3C A0 80 65 */	lis r5, lit_1016@ha /* 0x806494AC@ha */
/* 80546DE8  FC 20 08 1E */	fctiwz f1, f1
/* 80546DEC  38 C5 94 AC */	addi r6, r5, lit_1016@l /* 0x806494AC@l */
/* 80546DF0  FC 00 00 1E */	fctiwz f0, f0
/* 80546DF4  3C E0 80 65 */	lis r7, lit_1015@ha /* 0x806494A8@ha */
/* 80546DF8  C8 A4 94 B4 */	lfd f5, lit_1019@l(r4)  /* 0x806494B4@l */
/* 80546DFC  38 A0 00 28 */	li r5, 0x28
/* 80546E00  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 80546E04  C0 C6 00 00 */	lfs f6, 0(r6)
/* 80546E08  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80546E0C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80546E10  7C 84 2B D6 */	divw r4, r4, r5
/* 80546E14  C0 E7 94 A8 */	lfs f7, lit_1015@l(r7)  /* 0x806494A8@l */
/* 80546E18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80546E1C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80546E20  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80546E24  90 61 00 28 */	stw r3, 0x28(r1)
/* 80546E28  7C 00 2B D6 */	divw r0, r0, r5
/* 80546E2C  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 80546E30  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80546E34  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80546E38  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80546E3C  EC 21 28 28 */	fsubs f1, f1, f5
/* 80546E40  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80546E44  EC 46 08 2A */	fadds f2, f6, f1
/* 80546E48  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80546E4C  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80546E50  EC 87 00 B2 */	fmuls f4, f7, f2
/* 80546E54  EC 41 28 28 */	fsubs f2, f1, f5
/* 80546E58  EC 24 18 28 */	fsubs f1, f4, f3
/* 80546E5C  EC 46 10 2A */	fadds f2, f6, f2
/* 80546E60  EC 47 00 B2 */	fmuls f2, f7, f2
/* 80546E64  EC 42 00 28 */	fsubs f2, f2, f0
/* 80546E68  4B EC 51 99 */	bl atans_table
/* 80546E6C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80546E70  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80546E74  83 C4 52 F0 */	lwz r30, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 80546E78  7F C3 F3 78 */	mr r3, r30
/* 80546E7C  4B E9 27 C5 */	bl get_player_actor_withoutCheck
/* 80546E80  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 80546E84  7F C3 F3 78 */	mr r3, r30
/* 80546E88  38 9F 00 28 */	addi r4, r31, 0x28
/* 80546E8C  38 A1 00 08 */	addi r5, r1, 8
/* 80546E90  38 C0 00 20 */	li r6, 0x20
/* 80546E94  7D 89 03 A6 */	mtctr r12
/* 80546E98  4E 80 04 21 */	bctrl 
/* 80546E9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80546EA0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80546EA4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80546EA8  7C 08 03 A6 */	mtlr r0
/* 80546EAC  38 21 00 40 */	addi r1, r1, 0x40
/* 80546EB0  4E 80 00 20 */	blr 
