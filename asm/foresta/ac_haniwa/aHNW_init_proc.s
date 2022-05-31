lbl_80428A20:
/* 80428A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80428A24  7C 08 02 A6 */	mflr r0
/* 80428A28  3C C0 80 68 */	lis r6, init_proc@ha /* 0x80683D00@ha */
/* 80428A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80428A30  54 A0 10 3A */	slwi r0, r5, 2
/* 80428A34  38 A6 3D 00 */	addi r5, r6, init_proc@l /* 0x80683D00@l */
/* 80428A38  7D 85 00 2E */	lwzx r12, r5, r0
/* 80428A3C  7D 89 03 A6 */	mtctr r12
/* 80428A40  4E 80 04 21 */	bctrl 
/* 80428A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80428A48  7C 08 03 A6 */	mtlr r0
/* 80428A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80428A50  4E 80 00 20 */	blr 
