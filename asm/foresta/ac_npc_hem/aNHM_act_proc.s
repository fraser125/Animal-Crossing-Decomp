lbl_8059249C:
/* 8059249C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805924A0  7C 08 02 A6 */	mflr r0
/* 805924A4  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C2A28@ha */
/* 805924A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805924AC  54 A0 10 3A */	slwi r0, r5, 2
/* 805924B0  38 A6 2A 28 */	addi r5, r6, act_proc@l /* 0x806C2A28@l */
/* 805924B4  7D 85 00 2E */	lwzx r12, r5, r0
/* 805924B8  7D 89 03 A6 */	mtctr r12
/* 805924BC  4E 80 04 21 */	bctrl 
/* 805924C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805924C4  7C 08 03 A6 */	mtlr r0
/* 805924C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805924CC  4E 80 00 20 */	blr 
