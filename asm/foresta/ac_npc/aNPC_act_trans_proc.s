lbl_805340CC:
/* 805340CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805340D0  7C 08 02 A6 */	mflr r0
/* 805340D4  3C C0 80 6A */	lis r6, act_proc_3130@ha /* 0x806A2668@ha */
/* 805340D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805340DC  54 A0 10 3A */	slwi r0, r5, 2
/* 805340E0  38 A6 26 68 */	addi r5, r6, act_proc_3130@l /* 0x806A2668@l */
/* 805340E4  7D 85 00 2E */	lwzx r12, r5, r0
/* 805340E8  7D 89 03 A6 */	mtctr r12
/* 805340EC  4E 80 04 21 */	bctrl 
/* 805340F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805340F4  7C 08 03 A6 */	mtlr r0
/* 805340F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805340FC  4E 80 00 20 */	blr 
