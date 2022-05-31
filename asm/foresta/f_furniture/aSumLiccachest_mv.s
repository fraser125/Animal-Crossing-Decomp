lbl_80638BB0:
/* 80638BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80638BB4  7C 08 02 A6 */	mflr r0
/* 80638BB8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80638BBC  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80638BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80638BC4  3C C6 00 02 */	addis r6, r6, 2
/* 80638BC8  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 80638BCC  28 08 00 00 */	cmplwi r8, 0
/* 80638BD0  41 82 00 20 */	beq lbl_80638BF0
/* 80638BD4  81 88 00 34 */	lwz r12, 0x34(r8)
/* 80638BD8  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 80638BDC  3C C0 80 65 */	lis r6, lit_2828@ha /* 0x8064D368@ha */
/* 80638BE0  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 80638BE4  C0 46 D3 68 */	lfs f2, lit_2828@l(r6)  /* 0x8064D368@l */
/* 80638BE8  7D 89 03 A6 */	mtctr r12
/* 80638BEC  4E 80 04 21 */	bctrl 
lbl_80638BF0:
/* 80638BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638BF4  7C 08 03 A6 */	mtlr r0
/* 80638BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80638BFC  4E 80 00 20 */	blr 
