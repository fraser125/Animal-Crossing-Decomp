lbl_80529CD0:
/* 80529CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529CD4  7C 08 02 A6 */	mflr r0
/* 80529CD8  3C C0 80 6A */	lis r6, act_proc@ha /* 0x806A11DC@ha */
/* 80529CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529CE0  54 A0 10 3A */	slwi r0, r5, 2
/* 80529CE4  38 A6 11 DC */	addi r5, r6, act_proc@l /* 0x806A11DC@l */
/* 80529CE8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80529CEC  7D 89 03 A6 */	mtctr r12
/* 80529CF0  4E 80 04 21 */	bctrl 
/* 80529CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529CF8  7C 08 03 A6 */	mtlr r0
/* 80529CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80529D00  4E 80 00 20 */	blr 
