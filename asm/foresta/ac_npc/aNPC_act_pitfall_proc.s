lbl_80534CCC:
/* 80534CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534CD0  7C 08 02 A6 */	mflr r0
/* 80534CD4  3C C0 80 6A */	lis r6, act_proc_3366@ha /* 0x806A274C@ha */
/* 80534CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534CDC  54 A0 10 3A */	slwi r0, r5, 2
/* 80534CE0  38 A6 27 4C */	addi r5, r6, act_proc_3366@l /* 0x806A274C@l */
/* 80534CE4  7D 85 00 2E */	lwzx r12, r5, r0
/* 80534CE8  7D 89 03 A6 */	mtctr r12
/* 80534CEC  4E 80 04 21 */	bctrl 
/* 80534CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534CF4  7C 08 03 A6 */	mtlr r0
/* 80534CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80534CFC  4E 80 00 20 */	blr 
