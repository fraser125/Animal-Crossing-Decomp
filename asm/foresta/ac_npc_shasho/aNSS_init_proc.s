lbl_80576A90:
/* 80576A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576A94  7C 08 02 A6 */	mflr r0
/* 80576A98  3C C0 80 6C */	lis r6, init_proc@ha /* 0x806BFA24@ha */
/* 80576A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576AA0  54 A0 10 3A */	slwi r0, r5, 2
/* 80576AA4  38 A6 FA 24 */	addi r5, r6, init_proc@l /* 0x806BFA24@l */
/* 80576AA8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80576AAC  7D 89 03 A6 */	mtctr r12
/* 80576AB0  4E 80 04 21 */	bctrl 
/* 80576AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576AB8  7C 08 03 A6 */	mtlr r0
/* 80576ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80576AC0  4E 80 00 20 */	blr 
