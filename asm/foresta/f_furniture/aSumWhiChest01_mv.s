lbl_8063B870:
/* 8063B870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B874  7C 08 02 A6 */	mflr r0
/* 8063B878  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8063B87C  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8063B880  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B884  3C C6 00 02 */	addis r6, r6, 2
/* 8063B888  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 8063B88C  28 08 00 00 */	cmplwi r8, 0
/* 8063B890  41 82 00 20 */	beq lbl_8063B8B0
/* 8063B894  81 88 00 34 */	lwz r12, 0x34(r8)
/* 8063B898  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 8063B89C  3C C0 80 65 */	lis r6, lit_627@ha /* 0x8064D290@ha */
/* 8063B8A0  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 8063B8A4  C0 46 D2 90 */	lfs f2, lit_627@l(r6)  /* 0x8064D290@l */
/* 8063B8A8  7D 89 03 A6 */	mtctr r12
/* 8063B8AC  4E 80 04 21 */	bctrl 
lbl_8063B8B0:
/* 8063B8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B8B4  7C 08 03 A6 */	mtlr r0
/* 8063B8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B8BC  4E 80 00 20 */	blr 
