lbl_8063B9C4:
/* 8063B9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B9C8  7C 08 02 A6 */	mflr r0
/* 8063B9CC  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8063B9D0  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8063B9D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B9D8  3C C6 00 02 */	addis r6, r6, 2
/* 8063B9DC  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 8063B9E0  28 08 00 00 */	cmplwi r8, 0
/* 8063B9E4  41 82 00 20 */	beq lbl_8063BA04
/* 8063B9E8  81 88 00 34 */	lwz r12, 0x34(r8)
/* 8063B9EC  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 8063B9F0  3C C0 80 65 */	lis r6, lit_2828@ha /* 0x8064D368@ha */
/* 8063B9F4  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 8063B9F8  C0 46 D3 68 */	lfs f2, lit_2828@l(r6)  /* 0x8064D368@l */
/* 8063B9FC  7D 89 03 A6 */	mtctr r12
/* 8063BA00  4E 80 04 21 */	bctrl 
lbl_8063BA04:
/* 8063BA04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063BA08  7C 08 03 A6 */	mtlr r0
/* 8063BA0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063BA10  4E 80 00 20 */	blr 
