lbl_80558A64:
/* 80558A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80558A68  7C 08 02 A6 */	mflr r0
/* 80558A6C  3C C0 80 6A */	lis r6, think_proc@ha /* 0x806A6AD8@ha */
/* 80558A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80558A74  54 A0 10 3A */	slwi r0, r5, 2
/* 80558A78  38 A6 6A D8 */	addi r5, r6, think_proc@l /* 0x806A6AD8@l */
/* 80558A7C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80558A80  7D 89 03 A6 */	mtctr r12
/* 80558A84  4E 80 04 21 */	bctrl 
/* 80558A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80558A8C  7C 08 03 A6 */	mtlr r0
/* 80558A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80558A94  4E 80 00 20 */	blr 
