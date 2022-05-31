lbl_8063A5C8:
/* 8063A5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A5CC  7C 08 02 A6 */	mflr r0
/* 8063A5D0  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8063A5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A5D8  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8063A5DC  3C C6 00 02 */	addis r6, r6, 2
/* 8063A5E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063A5E4  93 C1 00 08 */	stw r30, 8(r1)
/* 8063A5E8  7C 7E 1B 78 */	mr r30, r3
/* 8063A5EC  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063A5F0  80 E6 60 8C */	lwz r7, 0x608c(r6)
/* 8063A5F4  28 07 00 00 */	cmplwi r7, 0
/* 8063A5F8  41 82 00 1C */	beq lbl_8063A614
/* 8063A5FC  3C C0 80 65 */	lis r6, lit_368@ha /* 0x8064D278@ha */
/* 8063A600  81 87 00 3C */	lwz r12, 0x3c(r7)
/* 8063A604  C0 26 D2 78 */	lfs f1, lit_368@l(r6)  /* 0x8064D278@l */
/* 8063A608  FC 40 08 90 */	fmr f2, f1
/* 8063A60C  7D 89 03 A6 */	mtctr r12
/* 8063A610  4E 80 04 21 */	bctrl 
lbl_8063A614:
/* 8063A614  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 8063A618  28 00 00 00 */	cmplwi r0, 0
/* 8063A61C  41 82 00 18 */	beq lbl_8063A634
/* 8063A620  7F E3 FB 78 */	mr r3, r31
/* 8063A624  4B D3 69 F1 */	bl cKF_SkeletonInfo_R_play
/* 8063A628  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063A62C  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063A630  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8063A634:
/* 8063A634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063A63C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063A640  7C 08 03 A6 */	mtlr r0
/* 8063A644  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A648  4E 80 00 20 */	blr 
