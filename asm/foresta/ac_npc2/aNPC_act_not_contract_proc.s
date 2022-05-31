lbl_80540E88:
/* 80540E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540E8C  7C 08 02 A6 */	mflr r0
/* 80540E90  3C C0 80 6A */	lis r6, act_proc_2484@ha /* 0x806A3CF4@ha */
/* 80540E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540E98  54 A0 10 3A */	slwi r0, r5, 2
/* 80540E9C  38 A6 3C F4 */	addi r5, r6, act_proc_2484@l /* 0x806A3CF4@l */
/* 80540EA0  7D 85 00 2E */	lwzx r12, r5, r0
/* 80540EA4  7D 89 03 A6 */	mtctr r12
/* 80540EA8  4E 80 04 21 */	bctrl 
/* 80540EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540EB0  7C 08 03 A6 */	mtlr r0
/* 80540EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80540EB8  4E 80 00 20 */	blr 
