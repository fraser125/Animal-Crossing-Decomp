lbl_806051C0:
/* 806051C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806051C4  7C 08 02 A6 */	mflr r0
/* 806051C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 806051CC  3C E0 80 65 */	lis r7, data_8064BBBC@ha /* 0x8064BBBC@ha */
/* 806051D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 806051D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806051D8  3C 84 00 02 */	addis r4, r4, 2
/* 806051DC  3C C0 80 65 */	lis r6, lit_375@ha /* 0x8064BBC0@ha */
/* 806051E0  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 806051E4  3C A0 80 65 */	lis r5, lit_376@ha /* 0x8064BBC4@ha */
/* 806051E8  C0 27 BB BC */	lfs f1, data_8064BBBC@l(r7)  /* 0x8064BBBC@l */
/* 806051EC  81 84 00 0C */	lwz r12, 0xc(r4)
/* 806051F0  C0 46 BB C0 */	lfs f2, lit_375@l(r6)  /* 0x8064BBC0@l */
/* 806051F4  C0 65 BB C4 */	lfs f3, lit_376@l(r5)  /* 0x8064BBC4@l */
/* 806051F8  7D 89 03 A6 */	mtctr r12
/* 806051FC  4E 80 04 21 */	bctrl 
/* 80605200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80605204  7C 08 03 A6 */	mtlr r0
/* 80605208  38 21 00 10 */	addi r1, r1, 0x10
/* 8060520C  4E 80 00 20 */	blr 
