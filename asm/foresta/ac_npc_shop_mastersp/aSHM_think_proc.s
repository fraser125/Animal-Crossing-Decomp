lbl_8057E29C:
/* 8057E29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E2A0  7C 08 02 A6 */	mflr r0
/* 8057E2A4  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806C0994@ha */
/* 8057E2A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E2AC  54 A0 10 3A */	slwi r0, r5, 2
/* 8057E2B0  38 A6 09 94 */	addi r5, r6, think_proc@l /* 0x806C0994@l */
/* 8057E2B4  7D 85 00 2E */	lwzx r12, r5, r0
/* 8057E2B8  7D 89 03 A6 */	mtctr r12
/* 8057E2BC  4E 80 04 21 */	bctrl 
/* 8057E2C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E2C4  7C 08 03 A6 */	mtlr r0
/* 8057E2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E2CC  4E 80 00 20 */	blr 
