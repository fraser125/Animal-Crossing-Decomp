lbl_80635B70:
/* 80635B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80635B74  7C 08 02 A6 */	mflr r0
/* 80635B78  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80635B7C  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80635B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80635B84  3C C6 00 02 */	addis r6, r6, 2
/* 80635B88  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 80635B8C  28 08 00 00 */	cmplwi r8, 0
/* 80635B90  41 82 00 20 */	beq lbl_80635BB0
/* 80635B94  81 88 00 34 */	lwz r12, 0x34(r8)
/* 80635B98  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 80635B9C  3C C0 80 65 */	lis r6, lit_2828@ha /* 0x8064D368@ha */
/* 80635BA0  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 80635BA4  C0 46 D3 68 */	lfs f2, lit_2828@l(r6)  /* 0x8064D368@l */
/* 80635BA8  7D 89 03 A6 */	mtctr r12
/* 80635BAC  4E 80 04 21 */	bctrl 
lbl_80635BB0:
/* 80635BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635BB4  7C 08 03 A6 */	mtlr r0
/* 80635BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80635BBC  4E 80 00 20 */	blr 
