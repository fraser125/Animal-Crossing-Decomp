lbl_80534DD0:
/* 80534DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534DD4  7C 08 02 A6 */	mflr r0
/* 80534DD8  3C C0 80 6A */	lis r6, act_proc_3383@ha /* 0x806A2758@ha */
/* 80534DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534DE0  54 A0 10 3A */	slwi r0, r5, 2
/* 80534DE4  38 A6 27 58 */	addi r5, r6, act_proc_3383@l /* 0x806A2758@l */
/* 80534DE8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80534DEC  7D 89 03 A6 */	mtctr r12
/* 80534DF0  4E 80 04 21 */	bctrl 
/* 80534DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534DF8  7C 08 03 A6 */	mtlr r0
/* 80534DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80534E00  4E 80 00 20 */	blr 
