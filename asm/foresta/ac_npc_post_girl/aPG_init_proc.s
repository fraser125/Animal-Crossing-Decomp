lbl_8056D834:
/* 8056D834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D838  7C 08 02 A6 */	mflr r0
/* 8056D83C  3C C0 80 6C */	lis r6, init_proc@ha /* 0x806BE9F8@ha */
/* 8056D840  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D844  54 A0 10 3A */	slwi r0, r5, 2
/* 8056D848  38 A6 E9 F8 */	addi r5, r6, init_proc@l /* 0x806BE9F8@l */
/* 8056D84C  7D 85 00 2E */	lwzx r12, r5, r0
/* 8056D850  7D 89 03 A6 */	mtctr r12
/* 8056D854  4E 80 04 21 */	bctrl 
/* 8056D858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D85C  7C 08 03 A6 */	mtlr r0
/* 8056D860  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D864  4E 80 00 20 */	blr 
