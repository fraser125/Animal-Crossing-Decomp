lbl_806367AC:
/* 806367AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806367B0  7C 08 02 A6 */	mflr r0
/* 806367B4  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 806367B8  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 806367BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806367C0  3C C6 00 02 */	addis r6, r6, 2
/* 806367C4  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 806367C8  28 08 00 00 */	cmplwi r8, 0
/* 806367CC  41 82 00 20 */	beq lbl_806367EC
/* 806367D0  81 88 00 34 */	lwz r12, 0x34(r8)
/* 806367D4  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 806367D8  3C C0 80 65 */	lis r6, lit_627@ha /* 0x8064D290@ha */
/* 806367DC  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 806367E0  C0 46 D2 90 */	lfs f2, lit_627@l(r6)  /* 0x8064D290@l */
/* 806367E4  7D 89 03 A6 */	mtctr r12
/* 806367E8  4E 80 04 21 */	bctrl 
lbl_806367EC:
/* 806367EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806367F0  7C 08 03 A6 */	mtlr r0
/* 806367F4  38 21 00 10 */	addi r1, r1, 0x10
/* 806367F8  4E 80 00 20 */	blr 
