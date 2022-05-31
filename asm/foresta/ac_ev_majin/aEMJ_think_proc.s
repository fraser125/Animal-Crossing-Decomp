lbl_80592DB0:
/* 80592DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592DB4  7C 08 02 A6 */	mflr r0
/* 80592DB8  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806C2ABC@ha */
/* 80592DBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592DC0  54 A0 10 3A */	slwi r0, r5, 2
/* 80592DC4  38 A6 2A BC */	addi r5, r6, think_proc@l /* 0x806C2ABC@l */
/* 80592DC8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80592DCC  7D 89 03 A6 */	mtctr r12
/* 80592DD0  4E 80 04 21 */	bctrl 
/* 80592DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592DD8  7C 08 03 A6 */	mtlr r0
/* 80592DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80592DE0  4E 80 00 20 */	blr 
