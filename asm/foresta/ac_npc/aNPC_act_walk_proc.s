lbl_805319EC:
/* 805319EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805319F0  7C 08 02 A6 */	mflr r0
/* 805319F4  3C C0 80 6A */	lis r6, act_proc_2340@ha /* 0x806A24D4@ha */
/* 805319F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805319FC  54 A0 10 3A */	slwi r0, r5, 2
/* 80531A00  38 A6 24 D4 */	addi r5, r6, act_proc_2340@l /* 0x806A24D4@l */
/* 80531A04  7D 85 00 2E */	lwzx r12, r5, r0
/* 80531A08  7D 89 03 A6 */	mtctr r12
/* 80531A0C  4E 80 04 21 */	bctrl 
/* 80531A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80531A14  7C 08 03 A6 */	mtlr r0
/* 80531A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80531A1C  4E 80 00 20 */	blr 
