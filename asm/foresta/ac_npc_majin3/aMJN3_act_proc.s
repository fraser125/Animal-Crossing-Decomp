lbl_805585C0:
/* 805585C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805585C4  7C 08 02 A6 */	mflr r0
/* 805585C8  3C C0 80 6A */	lis r6, act_proc@ha /* 0x806A6A34@ha */
/* 805585CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805585D0  54 A0 10 3A */	slwi r0, r5, 2
/* 805585D4  38 A6 6A 34 */	addi r5, r6, act_proc@l /* 0x806A6A34@l */
/* 805585D8  7D 85 00 2E */	lwzx r12, r5, r0
/* 805585DC  7D 89 03 A6 */	mtctr r12
/* 805585E0  4E 80 04 21 */	bctrl 
/* 805585E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805585E8  7C 08 03 A6 */	mtlr r0
/* 805585EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805585F0  4E 80 00 20 */	blr 
