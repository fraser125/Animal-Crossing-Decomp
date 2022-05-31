lbl_804A33E8:
/* 804A33E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804A33EC  7C 08 02 A6 */	mflr r0
/* 804A33F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804A33F4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804A33F8  7C 7F 1B 78 */	mr r31, r3
/* 804A33FC  38 61 00 18 */	addi r3, r1, 0x18
/* 804A3400  38 9F 01 B0 */	addi r4, r31, 0x1b0
/* 804A3404  4B F1 7A B9 */	bl xyz_t_move
/* 804A3408  38 00 00 01 */	li r0, 1
/* 804A340C  3C 60 80 64 */	lis r3, lit_483@ha /* 0x80645CA4@ha */
/* 804A3410  98 01 00 14 */	stb r0, 0x14(r1)
/* 804A3414  38 80 00 00 */	li r4, 0
/* 804A3418  C0 23 5C A4 */	lfs f1, lit_483@l(r3)  /* 0x80645CA4@l */
/* 804A341C  38 61 00 08 */	addi r3, r1, 8
/* 804A3420  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A3424  38 A0 00 64 */	li r5, 0x64
/* 804A3428  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A342C  FC 00 00 1E */	fctiwz f0, f0
/* 804A3430  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804A3434  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804A3438  98 01 00 15 */	stb r0, 0x15(r1)
/* 804A343C  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 804A3440  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A3444  FC 00 00 1E */	fctiwz f0, f0
/* 804A3448  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804A344C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A3450  98 01 00 16 */	stb r0, 0x16(r1)
/* 804A3454  80 1F 01 E0 */	lwz r0, 0x1e0(r31)
/* 804A3458  98 01 00 17 */	stb r0, 0x17(r1)
/* 804A345C  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 804A3460  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A3464  90 C1 00 08 */	stw r6, 8(r1)
/* 804A3468  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A346C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A3470  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A3474  4B EE E6 29 */	bl mCoBG_SetPlussOffset
/* 804A3478  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A347C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804A3480  40 82 00 0C */	bne lbl_804A348C
/* 804A3484  38 61 00 14 */	addi r3, r1, 0x14
/* 804A3488  4B F4 E8 B9 */	bl mSN_regist_snowman_society
lbl_804A348C:
/* 804A348C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804A3490  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804A3494  7C 08 03 A6 */	mtlr r0
/* 804A3498  38 21 00 40 */	addi r1, r1, 0x40
/* 804A349C  4E 80 00 20 */	blr 
