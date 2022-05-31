lbl_80533CD0:
/* 80533CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533CD4  7C 08 02 A6 */	mflr r0
/* 80533CD8  3C C0 80 6A */	lis r6, act_proc_3047@ha /* 0x806A2638@ha */
/* 80533CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533CE0  54 A0 10 3A */	slwi r0, r5, 2
/* 80533CE4  38 A6 26 38 */	addi r5, r6, act_proc_3047@l /* 0x806A2638@l */
/* 80533CE8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80533CEC  7D 89 03 A6 */	mtctr r12
/* 80533CF0  4E 80 04 21 */	bctrl 
/* 80533CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533CF8  7C 08 03 A6 */	mtlr r0
/* 80533CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80533D00  4E 80 00 20 */	blr 
