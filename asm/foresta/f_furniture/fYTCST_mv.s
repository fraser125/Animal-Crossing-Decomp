lbl_8063F2D0:
/* 8063F2D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F2D4  7C 08 02 A6 */	mflr r0
/* 8063F2D8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8063F2DC  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8063F2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F2E4  3C C6 00 02 */	addis r6, r6, 2
/* 8063F2E8  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 8063F2EC  28 08 00 00 */	cmplwi r8, 0
/* 8063F2F0  41 82 00 20 */	beq lbl_8063F310
/* 8063F2F4  81 88 00 34 */	lwz r12, 0x34(r8)
/* 8063F2F8  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 8063F2FC  3C C0 80 65 */	lis r6, lit_627@ha /* 0x8064D290@ha */
/* 8063F300  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 8063F304  C0 46 D2 90 */	lfs f2, lit_627@l(r6)  /* 0x8064D290@l */
/* 8063F308  7D 89 03 A6 */	mtctr r12
/* 8063F30C  4E 80 04 21 */	bctrl 
lbl_8063F310:
/* 8063F310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F314  7C 08 03 A6 */	mtlr r0
/* 8063F318  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F31C  4E 80 00 20 */	blr 
