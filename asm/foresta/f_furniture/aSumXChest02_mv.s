lbl_8063BD6C:
/* 8063BD6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063BD70  7C 08 02 A6 */	mflr r0
/* 8063BD74  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8063BD78  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8063BD7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063BD80  3C C6 00 02 */	addis r6, r6, 2
/* 8063BD84  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 8063BD88  28 08 00 00 */	cmplwi r8, 0
/* 8063BD8C  41 82 00 20 */	beq lbl_8063BDAC
/* 8063BD90  81 88 00 34 */	lwz r12, 0x34(r8)
/* 8063BD94  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 8063BD98  3C C0 80 65 */	lis r6, lit_627@ha /* 0x8064D290@ha */
/* 8063BD9C  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 8063BDA0  C0 46 D2 90 */	lfs f2, lit_627@l(r6)  /* 0x8064D290@l */
/* 8063BDA4  7D 89 03 A6 */	mtctr r12
/* 8063BDA8  4E 80 04 21 */	bctrl 
lbl_8063BDAC:
/* 8063BDAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063BDB0  7C 08 03 A6 */	mtlr r0
/* 8063BDB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8063BDB8  4E 80 00 20 */	blr 
