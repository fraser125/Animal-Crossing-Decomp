lbl_80557784:
/* 80557784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80557788  7C 08 02 A6 */	mflr r0
/* 8055778C  3C C0 80 6A */	lis r6, act_proc@ha /* 0x806A68A0@ha */
/* 80557790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557794  54 A0 10 3A */	slwi r0, r5, 2
/* 80557798  38 A6 68 A0 */	addi r5, r6, act_proc@l /* 0x806A68A0@l */
/* 8055779C  7D 85 00 2E */	lwzx r12, r5, r0
/* 805577A0  7D 89 03 A6 */	mtctr r12
/* 805577A4  4E 80 04 21 */	bctrl 
/* 805577A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805577AC  7C 08 03 A6 */	mtlr r0
/* 805577B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805577B4  4E 80 00 20 */	blr 