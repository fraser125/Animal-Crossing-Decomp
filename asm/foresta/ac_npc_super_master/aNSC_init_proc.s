lbl_80585F8C:
/* 80585F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585F90  7C 08 02 A6 */	mflr r0
/* 80585F94  3C C0 80 6C */	lis r6, init_proc@ha /* 0x806C199C@ha */
/* 80585F98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585F9C  54 A0 10 3A */	slwi r0, r5, 2
/* 80585FA0  38 A6 19 9C */	addi r5, r6, init_proc@l /* 0x806C199C@l */
/* 80585FA4  7D 85 00 2E */	lwzx r12, r5, r0
/* 80585FA8  7D 89 03 A6 */	mtctr r12
/* 80585FAC  4E 80 04 21 */	bctrl 
/* 80585FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585FB4  7C 08 03 A6 */	mtlr r0
/* 80585FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80585FBC  4E 80 00 20 */	blr 
