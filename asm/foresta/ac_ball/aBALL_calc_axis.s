lbl_804136FC:
/* 804136FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80413700  7C 08 02 A6 */	mflr r0
/* 80413704  3C 80 80 64 */	lis r4, lit_843@ha /* 0x80643A58@ha */
/* 80413708  90 01 00 34 */	stw r0, 0x34(r1)
/* 8041370C  C0 24 3A 58 */	lfs f1, lit_843@l(r4)  /* 0x80643A58@l */
/* 80413710  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80413714  7C 7F 1B 78 */	mr r31, r3
/* 80413718  3C 60 80 41 */	lis r3, aBALL_process_air_water@ha /* 0x8041347C@ha */
/* 8041371C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80413720  38 03 34 7C */	addi r0, r3, aBALL_process_air_water@l /* 0x8041347C@l */
/* 80413724  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80413728  80 9F 01 E0 */	lwz r4, 0x1e0(r31)
/* 8041372C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80413730  7C 04 00 40 */	cmplw r4, r0
/* 80413734  FC 00 00 1E */	fctiwz f0, f0
/* 80413738  D8 01 00 08 */	stfd f0, 8(r1)
/* 8041373C  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 80413740  41 82 00 14 */	beq lbl_80413754
/* 80413744  3C 60 80 41 */	lis r3, aBALL_process_ground_water@ha /* 0x804135AC@ha */
/* 80413748  38 03 35 AC */	addi r0, r3, aBALL_process_ground_water@l /* 0x804135AC@l */
/* 8041374C  7C 04 00 40 */	cmplw r4, r0
/* 80413750  40 82 00 90 */	bne lbl_804137E0
lbl_80413754:
/* 80413754  3C 80 80 64 */	lis r4, lit_780@ha /* 0x80643A54@ha */
/* 80413758  3C C0 80 64 */	lis r6, lit_639@ha /* 0x80643A18@ha */
/* 8041375C  C0 24 3A 54 */	lfs f1, lit_780@l(r4)  /* 0x80643A54@l */
/* 80413760  3C A0 80 64 */	lis r5, lit_845@ha /* 0x80643A60@ha */
/* 80413764  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80413768  38 85 3A 60 */	addi r4, r5, lit_845@l /* 0x80643A60@l */
/* 8041376C  3C 60 80 64 */	lis r3, lit_846@ha /* 0x80643A64@ha */
/* 80413770  C0 44 00 00 */	lfs f2, 0(r4)
/* 80413774  EC 21 00 28 */	fsubs f1, f1, f0
/* 80413778  C0 03 3A 64 */	lfs f0, lit_846@l(r3)  /* 0x80643A64@l */
/* 8041377C  3C A0 80 64 */	lis r5, lit_844@ha /* 0x80643A5C@ha */
/* 80413780  C0 66 3A 18 */	lfs f3, lit_639@l(r6)  /* 0x80643A18@l */
/* 80413784  EC 01 00 24 */	fdivs f0, f1, f0
/* 80413788  C0 25 3A 5C */	lfs f1, lit_844@l(r5)  /* 0x80643A5C@l */
/* 8041378C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80413790  EC 01 00 2A */	fadds f0, f1, f0
/* 80413794  EC 03 00 32 */	fmuls f0, f3, f0
/* 80413798  FC 00 00 1E */	fctiwz f0, f0
/* 8041379C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804137A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804137A4  7C 03 07 34 */	extsh r3, r0
/* 804137A8  4B FA 73 49 */	bl sin_s
/* 804137AC  7F C3 07 34 */	extsh r3, r30
/* 804137B0  3C 00 43 30 */	lis r0, 0x4330
/* 804137B4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804137B8  3C 80 80 64 */	lis r4, data_806439A4@ha /* 0x806439A4@ha */
/* 804137BC  90 61 00 14 */	stw r3, 0x14(r1)
/* 804137C0  C8 44 39 A4 */	lfd f2, data_806439A4@l(r4)  /* 0x806439A4@l */
/* 804137C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804137C8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804137CC  EC 00 10 28 */	fsubs f0, f0, f2
/* 804137D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804137D4  FC 00 00 1E */	fctiwz f0, f0
/* 804137D8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804137DC  83 C1 00 1C */	lwz r30, 0x1c(r1)
lbl_804137E0:
/* 804137E0  7F E3 FB 78 */	mr r3, r31
/* 804137E4  7F C5 F3 78 */	mr r5, r30
/* 804137E8  38 9F 02 00 */	addi r4, r31, 0x200
/* 804137EC  4B FE 30 79 */	bl mRlib_Roll_Matrix_to_s_xyz
/* 804137F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804137F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804137F8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804137FC  7C 08 03 A6 */	mtlr r0
/* 80413800  38 21 00 30 */	addi r1, r1, 0x30
/* 80413804  4E 80 00 20 */	blr 
