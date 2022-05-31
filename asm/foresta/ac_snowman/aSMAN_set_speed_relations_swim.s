lbl_804A5138:
/* 804A5138  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804A513C  7C 08 02 A6 */	mflr r0
/* 804A5140  90 01 00 44 */	stw r0, 0x44(r1)
/* 804A5144  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804A5148  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804A514C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804A5150  7C 7F 1B 78 */	mr r31, r3
/* 804A5154  3C 60 80 69 */	lis r3, lit_1038@ha /* 0x8068E8A0@ha */
/* 804A5158  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 804A515C  38 83 E8 A0 */	addi r4, r3, lit_1038@l /* 0x8068E8A0@l */
/* 804A5160  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A5164  38 61 00 0C */	addi r3, r1, 0xc
/* 804A5168  38 A0 05 52 */	li r5, 0x552
/* 804A516C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804A5170  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A5174  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A5178  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A517C  4B EE EE 3D */	bl mCoBG_GetWaterHeight_File
/* 804A5180  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804A5184  FF E0 08 90 */	fmr f31, f1
/* 804A5188  38 61 00 18 */	addi r3, r1, 0x18
/* 804A518C  54 04 AE BE */	rlwinm r4, r0, 0x15, 0x1a, 0x1f
/* 804A5190  4B EE F1 A5 */	bl mCoBG_GetWaterFlow
/* 804A5194  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804A5198  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 804A519C  4B F6 6E 65 */	bl atans_table
/* 804A51A0  7C 68 1B 78 */	mr r8, r3
/* 804A51A4  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 804A51A8  7D 03 07 34 */	extsh r3, r8
/* 804A51AC  7C 63 00 50 */	subf r3, r3, r0
/* 804A51B0  7C 60 07 35 */	extsh. r0, r3
/* 804A51B4  7C 60 07 34 */	extsh r0, r3
/* 804A51B8  7C E0 00 D0 */	neg r7, r0
/* 804A51BC  41 80 00 08 */	blt lbl_804A51C4
/* 804A51C0  7C 07 03 78 */	mr r7, r0
lbl_804A51C4:
/* 804A51C4  38 00 40 00 */	li r0, 0x4000
/* 804A51C8  3C 80 80 69 */	lis r4, angl_add_table@ha /* 0x8068E89C@ha */
/* 804A51CC  7C E0 02 78 */	xor r0, r7, r0
/* 804A51D0  38 7F 00 36 */	addi r3, r31, 0x36
/* 804A51D4  7C 06 0E 70 */	srawi r6, r0, 1
/* 804A51D8  38 A4 E8 9C */	addi r5, r4, angl_add_table@l /* 0x8068E89C@l */
/* 804A51DC  7C 00 38 38 */	and r0, r0, r7
/* 804A51E0  7D 04 07 34 */	extsh r4, r8
/* 804A51E4  7C 00 30 50 */	subf r0, r0, r6
/* 804A51E8  54 00 17 BC */	rlwinm r0, r0, 2, 0x1e, 0x1e
/* 804A51EC  7C A5 02 AE */	lhax r5, r5, r0
/* 804A51F0  4B F1 59 55 */	bl chase_angle
/* 804A51F4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804A51F8  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804A51FC  40 80 00 14 */	bge lbl_804A5210
/* 804A5200  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A5204  C0 03 5C B4 */	lfs f0, lit_640@l(r3)  /* 0x80645CB4@l */
/* 804A5208  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 804A520C  48 00 00 10 */	b lbl_804A521C
lbl_804A5210:
/* 804A5210  3C 60 80 64 */	lis r3, lit_1039@ha /* 0x80645D3C@ha */
/* 804A5214  C0 03 5D 3C */	lfs f0, lit_1039@l(r3)  /* 0x80645D3C@l */
/* 804A5218  D0 1F 00 7C */	stfs f0, 0x7c(r31)
lbl_804A521C:
/* 804A521C  3C 80 80 64 */	lis r4, lit_681@ha /* 0x80645CDC@ha */
/* 804A5220  3C C0 80 64 */	lis r6, lit_472@ha /* 0x80645C9C@ha */
/* 804A5224  38 A4 5C DC */	addi r5, r4, lit_681@l /* 0x80645CDC@l */
/* 804A5228  3C 60 80 64 */	lis r3, lit_682@ha /* 0x80645CE4@ha */
/* 804A522C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804A5230  38 83 5C E4 */	addi r4, r3, lit_682@l /* 0x80645CE4@l */
/* 804A5234  C0 E6 5C 9C */	lfs f7, lit_472@l(r6)  /* 0x80645C9C@l */
/* 804A5238  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A523C  FC 20 28 34 */	frsqrte f1, f5
/* 804A5240  C8 85 00 00 */	lfd f4, 0(r5)
/* 804A5244  38 A3 5C B4 */	addi r5, r3, lit_640@l /* 0x80645CB4@l */
/* 804A5248  C8 64 00 00 */	lfd f3, 0(r4)
/* 804A524C  3C 60 80 64 */	lis r3, lit_1040@ha /* 0x80645D40@ha */
/* 804A5250  D0 FF 00 78 */	stfs f7, 0x78(r31)
/* 804A5254  FC 01 00 72 */	fmul f0, f1, f1
/* 804A5258  38 83 5D 40 */	addi r4, r3, lit_1040@l /* 0x80645D40@l */
/* 804A525C  C0 C5 00 00 */	lfs f6, 0(r5)
/* 804A5260  38 7F 01 CC */	addi r3, r31, 0x1cc
/* 804A5264  FC 24 00 72 */	fmul f1, f4, f1
/* 804A5268  C0 44 00 00 */	lfs f2, 0(r4)
/* 804A526C  FC 05 00 32 */	fmul f0, f5, f0
/* 804A5270  D0 DF 01 C4 */	stfs f6, 0x1c4(r31)
/* 804A5274  D0 FF 01 C8 */	stfs f7, 0x1c8(r31)
/* 804A5278  FC 03 00 28 */	fsub f0, f3, f0
/* 804A527C  FC 21 00 32 */	fmul f1, f1, f0
/* 804A5280  FC 01 00 72 */	fmul f0, f1, f1
/* 804A5284  FC 24 00 72 */	fmul f1, f4, f1
/* 804A5288  FC 05 00 32 */	fmul f0, f5, f0
/* 804A528C  FC 03 00 28 */	fsub f0, f3, f0
/* 804A5290  FC 21 00 32 */	fmul f1, f1, f0
/* 804A5294  FC 01 00 72 */	fmul f0, f1, f1
/* 804A5298  FC 24 00 72 */	fmul f1, f4, f1
/* 804A529C  FC 05 00 32 */	fmul f0, f5, f0
/* 804A52A0  FC 03 00 28 */	fsub f0, f3, f0
/* 804A52A4  FC 01 00 32 */	fmul f0, f1, f0
/* 804A52A8  FC 05 00 32 */	fmul f0, f5, f0
/* 804A52AC  FC 00 00 18 */	frsp f0, f0
/* 804A52B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A52B4  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A52B8  EC 26 00 28 */	fsubs f1, f6, f0
/* 804A52BC  4B F1 60 1D */	bl add_calc0
/* 804A52C0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804A52C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804A52C8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804A52CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804A52D0  7C 08 03 A6 */	mtlr r0
/* 804A52D4  38 21 00 40 */	addi r1, r1, 0x40
/* 804A52D8  4E 80 00 20 */	blr 
