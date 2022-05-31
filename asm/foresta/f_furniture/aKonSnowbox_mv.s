lbl_80631F78:
/* 80631F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631F7C  7C 08 02 A6 */	mflr r0
/* 80631F80  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80631F84  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80631F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631F8C  3C C6 00 02 */	addis r6, r6, 2
/* 80631F90  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 80631F94  28 08 00 00 */	cmplwi r8, 0
/* 80631F98  41 82 00 20 */	beq lbl_80631FB8
/* 80631F9C  81 88 00 34 */	lwz r12, 0x34(r8)
/* 80631FA0  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 80631FA4  3C C0 80 65 */	lis r6, lit_1282@ha /* 0x8064D2D8@ha */
/* 80631FA8  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 80631FAC  C0 46 D2 D8 */	lfs f2, lit_1282@l(r6)  /* 0x8064D2D8@l */
/* 80631FB0  7D 89 03 A6 */	mtctr r12
/* 80631FB4  4E 80 04 21 */	bctrl 
lbl_80631FB8:
/* 80631FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631FBC  7C 08 03 A6 */	mtlr r0
/* 80631FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80631FC4  4E 80 00 20 */	blr 
