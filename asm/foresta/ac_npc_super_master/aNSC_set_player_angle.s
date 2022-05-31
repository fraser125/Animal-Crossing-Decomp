lbl_80581E50:
/* 80581E50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80581E54  7C 08 02 A6 */	mflr r0
/* 80581E58  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80581E5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80581E60  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80581E64  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80581E68  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80581E6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80581E70  4B E5 77 D1 */	bl get_player_actor_withoutCheck
/* 80581E74  7C 7F 1B 78 */	mr r31, r3
/* 80581E78  3C 60 43 30 */	lis r3, 0x4330
/* 80581E7C  C0 3F 13 A0 */	lfs f1, 0x13a0(r31)
/* 80581E80  3C 80 80 65 */	lis r4, lit_1045@ha /* 0x80649ABC@ha */
/* 80581E84  C0 1F 13 98 */	lfs f0, 0x1398(r31)
/* 80581E88  3C A0 80 65 */	lis r5, lit_1042@ha /* 0x80649AB4@ha */
/* 80581E8C  FC 20 08 1E */	fctiwz f1, f1
/* 80581E90  38 C5 9A B4 */	addi r6, r5, lit_1042@l /* 0x80649AB4@l */
/* 80581E94  FC 00 00 1E */	fctiwz f0, f0
/* 80581E98  3C E0 80 65 */	lis r7, lit_526@ha /* 0x80649A64@ha */
/* 80581E9C  C8 A4 9A BC */	lfd f5, lit_1045@l(r4)  /* 0x80649ABC@l */
/* 80581EA0  38 A0 00 28 */	li r5, 0x28
/* 80581EA4  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 80581EA8  C0 C6 00 00 */	lfs f6, 0(r6)
/* 80581EAC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80581EB0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80581EB4  7C 84 2B D6 */	divw r4, r4, r5
/* 80581EB8  C0 E7 9A 64 */	lfs f7, lit_526@l(r7)  /* 0x80649A64@l */
/* 80581EBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80581EC0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80581EC4  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80581EC8  90 61 00 28 */	stw r3, 0x28(r1)
/* 80581ECC  7C 00 2B D6 */	divw r0, r0, r5
/* 80581ED0  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 80581ED4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80581ED8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80581EDC  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80581EE0  EC 21 28 28 */	fsubs f1, f1, f5
/* 80581EE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80581EE8  EC 46 08 2A */	fadds f2, f6, f1
/* 80581EEC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80581EF0  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80581EF4  EC 87 00 B2 */	fmuls f4, f7, f2
/* 80581EF8  EC 41 28 28 */	fsubs f2, f1, f5
/* 80581EFC  EC 24 18 28 */	fsubs f1, f4, f3
/* 80581F00  EC 46 10 2A */	fadds f2, f6, f2
/* 80581F04  EC 47 00 B2 */	fmuls f2, f7, f2
/* 80581F08  EC 42 00 28 */	fsubs f2, f2, f0
/* 80581F0C  4B E8 A0 F5 */	bl atans_table
/* 80581F10  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80581F14  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80581F18  83 C4 52 F0 */	lwz r30, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 80581F1C  7F C3 F3 78 */	mr r3, r30
/* 80581F20  4B E5 77 21 */	bl get_player_actor_withoutCheck
/* 80581F24  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 80581F28  7F C3 F3 78 */	mr r3, r30
/* 80581F2C  38 9F 00 28 */	addi r4, r31, 0x28
/* 80581F30  38 A1 00 08 */	addi r5, r1, 8
/* 80581F34  38 C0 00 20 */	li r6, 0x20
/* 80581F38  7D 89 03 A6 */	mtctr r12
/* 80581F3C  4E 80 04 21 */	bctrl 
/* 80581F40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80581F44  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80581F48  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80581F4C  7C 08 03 A6 */	mtlr r0
/* 80581F50  38 21 00 40 */	addi r1, r1, 0x40
/* 80581F54  4E 80 00 20 */	blr 
