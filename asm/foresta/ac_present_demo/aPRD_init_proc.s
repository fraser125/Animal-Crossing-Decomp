lbl_80483F1C:
/* 80483F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483F20  7C 08 02 A6 */	mflr r0
/* 80483F24  3C C0 80 69 */	lis r6, init_proc@ha /* 0x8068A334@ha */
/* 80483F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483F2C  54 A0 10 3A */	slwi r0, r5, 2
/* 80483F30  38 A6 A3 34 */	addi r5, r6, init_proc@l /* 0x8068A334@l */
/* 80483F34  7D 85 00 2E */	lwzx r12, r5, r0
/* 80483F38  7D 89 03 A6 */	mtctr r12
/* 80483F3C  4E 80 04 21 */	bctrl 
/* 80483F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483F44  7C 08 03 A6 */	mtlr r0
/* 80483F48  38 21 00 10 */	addi r1, r1, 0x10
/* 80483F4C  4E 80 00 20 */	blr 
