lbl_803991B4:
/* 803991B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803991B8  7C 08 02 A6 */	mflr r0
/* 803991BC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803991C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803991C4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803991C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803991CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803991D0  80 63 00 00 */	lwz r3, 0(r3)
/* 803991D4  48 04 04 6D */	bl get_player_actor_withoutCheck
/* 803991D8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803991DC  7C 7F 1B 78 */	mr r31, r3
/* 803991E0  83 C4 52 F0 */	lwz r30, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 803991E4  7F C3 F3 78 */	mr r3, r30
/* 803991E8  48 04 04 59 */	bl get_player_actor_withoutCheck
/* 803991EC  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 803991F0  7F C3 F3 78 */	mr r3, r30
/* 803991F4  7D 89 03 A6 */	mtctr r12
/* 803991F8  4E 80 04 21 */	bctrl 
/* 803991FC  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399200  81 04 1C BC */	lwz r8, data_80641CBC@l(r4)  /* 0x80641CBC@l */
/* 80399204  81 28 00 E0 */	lwz r9, 0xe0(r8)
/* 80399208  7C 09 18 40 */	cmplw r9, r3
/* 8039920C  40 82 00 0C */	bne lbl_80399218
/* 80399210  38 60 00 01 */	li r3, 1
/* 80399214  48 00 00 C4 */	b lbl_803992D8
lbl_80399218:
/* 80399218  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80641CD8@ha */
/* 8039921C  3C 80 80 64 */	lis r4, lit_673@ha /* 0x80641CCC@ha */
/* 80399220  C0 03 1C D8 */	lfs f0, lit_762@l(r3)  /* 0x80641CD8@l */
/* 80399224  38 E4 1C CC */	addi r7, r4, lit_673@l /* 0x80641CCC@l */
/* 80399228  C0 28 03 04 */	lfs f1, 0x304(r8)
/* 8039922C  3C 80 80 65 */	lis r4, direct_back_angle@ha /* 0x806516C8@ha */
/* 80399230  80 C8 03 08 */	lwz r6, 0x308(r8)
/* 80399234  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80399238  EC 01 00 32 */	fmuls f0, f1, f0
/* 8039923C  C0 27 00 00 */	lfs f1, 0(r7)
/* 80399240  3C A0 80 65 */	lis r5, data_80651688@ha /* 0x80651688@ha */
/* 80399244  54 C0 18 38 */	slwi r0, r6, 3
/* 80399248  38 E5 16 88 */	addi r7, r5, data_80651688@l /* 0x80651688@l */
/* 8039924C  C0 49 00 28 */	lfs f2, 0x28(r9)
/* 80399250  EC 61 00 2A */	fadds f3, f1, f0
/* 80399254  7C A7 02 14 */	add r5, r7, r0
/* 80399258  C0 25 00 04 */	lfs f1, 4(r5)
/* 8039925C  38 84 16 C8 */	addi r4, r4, direct_back_angle@l /* 0x806516C8@l */
/* 80399260  7C 07 04 2E */	lfsx f0, r7, r0
/* 80399264  54 C0 08 3C */	slwi r0, r6, 1
/* 80399268  EC 23 00 72 */	fmuls f1, f3, f1
/* 8039926C  7C A4 02 AE */	lhax r5, r4, r0
/* 80399270  EC 03 00 32 */	fmuls f0, f3, f0
/* 80399274  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80399278  38 81 00 08 */	addi r4, r1, 8
/* 8039927C  EC 22 08 2A */	fadds f1, f2, f1
/* 80399280  D0 21 00 08 */	stfs f1, 8(r1)
/* 80399284  C0 29 00 2C */	lfs f1, 0x2c(r9)
/* 80399288  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8039928C  C0 29 00 30 */	lfs f1, 0x30(r9)
/* 80399290  EC 01 00 2A */	fadds f0, f1, f0
/* 80399294  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80399298  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8039929C  64 00 40 00 */	oris r0, r0, 0x4000
/* 803992A0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 803992A4  80 C8 00 E0 */	lwz r6, 0xe0(r8)
/* 803992A8  80 06 00 20 */	lwz r0, 0x20(r6)
/* 803992AC  64 00 40 00 */	oris r0, r0, 0x4000
/* 803992B0  90 06 00 20 */	stw r0, 0x20(r6)
/* 803992B4  80 63 00 00 */	lwz r3, 0(r3)
/* 803992B8  80 C8 03 00 */	lwz r6, 0x300(r8)
/* 803992BC  80 E8 00 E0 */	lwz r7, 0xe0(r8)
/* 803992C0  48 04 13 C9 */	bl mPlib_request_main_door_type1
/* 803992C4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803992C8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803992CC  80 63 00 00 */	lwz r3, 0(r3)
/* 803992D0  48 04 22 7D */	bl mPlib_strength_request_main_door_priority
/* 803992D4  38 60 00 00 */	li r3, 0
lbl_803992D8:
/* 803992D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803992DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803992E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803992E4  7C 08 03 A6 */	mtlr r0
/* 803992E8  38 21 00 20 */	addi r1, r1, 0x20
/* 803992EC  4E 80 00 20 */	blr 
