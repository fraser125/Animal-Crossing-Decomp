lbl_80529DD4:
/* 80529DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529DD8  7C 08 02 A6 */	mflr r0
/* 80529DDC  3C C0 80 6A */	lis r6, think_proc@ha /* 0x806A11F4@ha */
/* 80529DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529DE4  54 A0 10 3A */	slwi r0, r5, 2
/* 80529DE8  38 A6 11 F4 */	addi r5, r6, think_proc@l /* 0x806A11F4@l */
/* 80529DEC  7D 85 00 2E */	lwzx r12, r5, r0
/* 80529DF0  7D 89 03 A6 */	mtctr r12
/* 80529DF4  4E 80 04 21 */	bctrl 
/* 80529DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529DFC  7C 08 03 A6 */	mtlr r0
/* 80529E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80529E04  4E 80 00 20 */	blr 
