lbl_80559884:
/* 80559884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559888  7C 08 02 A6 */	mflr r0
/* 8055988C  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x806A6C14@ha */
/* 80559890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559894  54 A0 10 3A */	slwi r0, r5, 2
/* 80559898  38 A6 6C 14 */	addi r5, r6, sche_proc@l /* 0x806A6C14@l */
/* 8055989C  7D 85 00 2E */	lwzx r12, r5, r0
/* 805598A0  7D 89 03 A6 */	mtctr r12
/* 805598A4  4E 80 04 21 */	bctrl 
/* 805598A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805598AC  7C 08 03 A6 */	mtlr r0
/* 805598B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805598B4  4E 80 00 20 */	blr 