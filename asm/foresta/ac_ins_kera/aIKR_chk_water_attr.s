lbl_8059D3F8:
/* 8059D3F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059D3FC  7C 08 02 A6 */	mflr r0
/* 8059D400  90 01 00 44 */	stw r0, 0x44(r1)
/* 8059D404  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8059D408  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8059D40C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8059D410  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8059D414  88 03 00 98 */	lbz r0, 0x98(r3)
/* 8059D418  3B E0 00 00 */	li r31, 0
/* 8059D41C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8059D420  41 82 00 8C */	beq lbl_8059D4AC
/* 8059D424  C0 23 02 10 */	lfs f1, 0x210(r3)
/* 8059D428  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 8059D42C  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 8059D430  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8059D434  EF E1 00 2A */	fadds f31, f1, f0
/* 8059D438  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8059D43C  AB C3 00 36 */	lha r30, 0x36(r3)
/* 8059D440  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8059D444  7F C3 F3 78 */	mr r3, r30
/* 8059D448  90 81 00 18 */	stw r4, 0x18(r1)
/* 8059D44C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059D450  4B E1 D6 A1 */	bl sin_s
/* 8059D454  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8059D458  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8059D45C  7F C3 F3 78 */	mr r3, r30
/* 8059D460  EC 00 08 2A */	fadds f0, f0, f1
/* 8059D464  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8059D468  4B E1 D6 35 */	bl cos_s
/* 8059D46C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8059D470  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8059D474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D478  38 61 00 08 */	addi r3, r1, 8
/* 8059D47C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8059D480  EC 00 08 2A */	fadds f0, f0, f1
/* 8059D484  90 01 00 08 */	stw r0, 8(r1)
/* 8059D488  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8059D48C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8059D490  90 81 00 0C */	stw r4, 0xc(r1)
/* 8059D494  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059D498  4B DF 2D AD */	bl mCoBG_Wpos2BgAttribute_Original
/* 8059D49C  4B DF 6E 31 */	bl mCoBG_CheckWaterAttribute
/* 8059D4A0  2C 03 00 00 */	cmpwi r3, 0
/* 8059D4A4  41 82 00 08 */	beq lbl_8059D4AC
/* 8059D4A8  3B E0 00 01 */	li r31, 1
lbl_8059D4AC:
/* 8059D4AC  7F E3 FB 78 */	mr r3, r31
/* 8059D4B0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8059D4B4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059D4B8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8059D4BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8059D4C0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8059D4C4  7C 08 03 A6 */	mtlr r0
/* 8059D4C8  38 21 00 40 */	addi r1, r1, 0x40
/* 8059D4CC  4E 80 00 20 */	blr 
