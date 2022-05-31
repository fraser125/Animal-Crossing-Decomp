lbl_80536898:
/* 80536898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053689C  7C 08 02 A6 */	mflr r0
/* 805368A0  3C A0 80 6A */	lis r5, aNPC_think_proc_tbl@ha /* 0x806A2954@ha */
/* 805368A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805368A8  38 C5 29 54 */	addi r6, r5, aNPC_think_proc_tbl@l /* 0x806A2954@l */
/* 805368AC  38 A0 00 01 */	li r5, 1
/* 805368B0  80 03 07 C4 */	lwz r0, 0x7c4(r3)
/* 805368B4  54 00 10 3A */	slwi r0, r0, 2
/* 805368B8  7D 86 00 2E */	lwzx r12, r6, r0
/* 805368BC  7D 89 03 A6 */	mtctr r12
/* 805368C0  4E 80 04 21 */	bctrl 
/* 805368C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805368C8  7C 08 03 A6 */	mtlr r0
/* 805368CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805368D0  4E 80 00 20 */	blr 
