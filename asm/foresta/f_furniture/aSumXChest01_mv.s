lbl_8063BC18:
/* 8063BC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063BC1C  7C 08 02 A6 */	mflr r0
/* 8063BC20  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8063BC24  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8063BC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063BC2C  3C C6 00 02 */	addis r6, r6, 2
/* 8063BC30  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 8063BC34  28 08 00 00 */	cmplwi r8, 0
/* 8063BC38  41 82 00 20 */	beq lbl_8063BC58
/* 8063BC3C  81 88 00 34 */	lwz r12, 0x34(r8)
/* 8063BC40  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 8063BC44  3C C0 80 65 */	lis r6, lit_2828@ha /* 0x8064D368@ha */
/* 8063BC48  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 8063BC4C  C0 46 D3 68 */	lfs f2, lit_2828@l(r6)  /* 0x8064D368@l */
/* 8063BC50  7D 89 03 A6 */	mtctr r12
/* 8063BC54  4E 80 04 21 */	bctrl 
lbl_8063BC58:
/* 8063BC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063BC5C  7C 08 03 A6 */	mtlr r0
/* 8063BC60  38 21 00 10 */	addi r1, r1, 0x10
/* 8063BC64  4E 80 00 20 */	blr 