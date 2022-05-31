lbl_80534AA0:
/* 80534AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534AA4  7C 08 02 A6 */	mflr r0
/* 80534AA8  3C C0 80 6A */	lis r6, act_proc_3323@ha /* 0x806A272C@ha */
/* 80534AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534AB0  54 A0 10 3A */	slwi r0, r5, 2
/* 80534AB4  38 A6 27 2C */	addi r5, r6, act_proc_3323@l /* 0x806A272C@l */
/* 80534AB8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80534ABC  7D 89 03 A6 */	mtctr r12
/* 80534AC0  4E 80 04 21 */	bctrl 
/* 80534AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534AC8  7C 08 03 A6 */	mtlr r0
/* 80534ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80534AD0  4E 80 00 20 */	blr 
