lbl_8063A8D4:
/* 8063A8D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A8D8  7C 08 02 A6 */	mflr r0
/* 8063A8DC  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8063A8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A8E4  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8063A8E8  3C C6 00 02 */	addis r6, r6, 2
/* 8063A8EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063A8F0  3B E3 01 34 */	addi r31, r3, 0x134
/* 8063A8F4  80 E6 60 8C */	lwz r7, 0x608c(r6)
/* 8063A8F8  28 07 00 00 */	cmplwi r7, 0
/* 8063A8FC  41 82 00 1C */	beq lbl_8063A918
/* 8063A900  3C C0 80 65 */	lis r6, lit_368@ha /* 0x8064D278@ha */
/* 8063A904  81 87 00 3C */	lwz r12, 0x3c(r7)
/* 8063A908  C0 26 D2 78 */	lfs f1, lit_368@l(r6)  /* 0x8064D278@l */
/* 8063A90C  FC 40 08 90 */	fmr f2, f1
/* 8063A910  7D 89 03 A6 */	mtctr r12
/* 8063A914  4E 80 04 21 */	bctrl 
lbl_8063A918:
/* 8063A918  7F E3 FB 78 */	mr r3, r31
/* 8063A91C  4B D3 66 F9 */	bl cKF_SkeletonInfo_R_play
/* 8063A920  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063A924  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063A928  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063A92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063A934  7C 08 03 A6 */	mtlr r0
/* 8063A938  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A93C  4E 80 00 20 */	blr 
