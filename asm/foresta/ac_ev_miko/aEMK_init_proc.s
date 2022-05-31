lbl_80522388:
/* 80522388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052238C  7C 08 02 A6 */	mflr r0
/* 80522390  3C C0 80 6A */	lis r6, init_proc@ha /* 0x806A0A3C@ha */
/* 80522394  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522398  54 A0 10 3A */	slwi r0, r5, 2
/* 8052239C  38 A6 0A 3C */	addi r5, r6, init_proc@l /* 0x806A0A3C@l */
/* 805223A0  7D 85 00 2E */	lwzx r12, r5, r0
/* 805223A4  7D 89 03 A6 */	mtctr r12
/* 805223A8  4E 80 04 21 */	bctrl 
/* 805223AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805223B0  7C 08 03 A6 */	mtlr r0
/* 805223B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805223B8  4E 80 00 20 */	blr 
