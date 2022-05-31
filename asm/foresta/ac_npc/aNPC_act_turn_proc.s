lbl_80531BBC:
/* 80531BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80531BC0  7C 08 02 A6 */	mflr r0
/* 80531BC4  3C C0 80 6A */	lis r6, act_proc_2375@ha /* 0x806A24F0@ha */
/* 80531BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80531BCC  54 A0 10 3A */	slwi r0, r5, 2
/* 80531BD0  38 A6 24 F0 */	addi r5, r6, act_proc_2375@l /* 0x806A24F0@l */
/* 80531BD4  7D 85 00 2E */	lwzx r12, r5, r0
/* 80531BD8  7D 89 03 A6 */	mtctr r12
/* 80531BDC  4E 80 04 21 */	bctrl 
/* 80531BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80531BE4  7C 08 03 A6 */	mtlr r0
/* 80531BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80531BEC  4E 80 00 20 */	blr 
