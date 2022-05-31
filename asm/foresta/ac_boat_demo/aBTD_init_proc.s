lbl_80415A0C:
/* 80415A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415A10  7C 08 02 A6 */	mflr r0
/* 80415A14  3C C0 80 68 */	lis r6, init_proc@ha /* 0x8068172C@ha */
/* 80415A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415A1C  54 A0 10 3A */	slwi r0, r5, 2
/* 80415A20  38 A6 17 2C */	addi r5, r6, init_proc@l /* 0x8068172C@l */
/* 80415A24  7D 85 00 2E */	lwzx r12, r5, r0
/* 80415A28  7D 89 03 A6 */	mtctr r12
/* 80415A2C  4E 80 04 21 */	bctrl 
/* 80415A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415A34  7C 08 03 A6 */	mtlr r0
/* 80415A38  38 21 00 10 */	addi r1, r1, 0x10
/* 80415A3C  4E 80 00 20 */	blr 
