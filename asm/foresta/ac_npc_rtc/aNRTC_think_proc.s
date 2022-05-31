lbl_8057359C:
/* 8057359C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805735A0  7C 08 02 A6 */	mflr r0
/* 805735A4  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806BF5BC@ha */
/* 805735A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805735AC  54 A0 10 3A */	slwi r0, r5, 2
/* 805735B0  38 A6 F5 BC */	addi r5, r6, think_proc@l /* 0x806BF5BC@l */
/* 805735B4  7D 85 00 2E */	lwzx r12, r5, r0
/* 805735B8  7D 89 03 A6 */	mtctr r12
/* 805735BC  4E 80 04 21 */	bctrl 
/* 805735C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805735C4  7C 08 03 A6 */	mtlr r0
/* 805735C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805735CC  4E 80 00 20 */	blr 
