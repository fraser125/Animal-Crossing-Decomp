lbl_80590C78:
/* 80590C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590C7C  7C 08 02 A6 */	mflr r0
/* 80590C80  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C2820@ha */
/* 80590C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590C88  54 A0 10 3A */	slwi r0, r5, 2
/* 80590C8C  38 A6 28 20 */	addi r5, r6, act_proc@l /* 0x806C2820@l */
/* 80590C90  7D 85 00 2E */	lwzx r12, r5, r0
/* 80590C94  7D 89 03 A6 */	mtctr r12
/* 80590C98  4E 80 04 21 */	bctrl 
/* 80590C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590CA0  7C 08 03 A6 */	mtlr r0
/* 80590CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80590CA8  4E 80 00 20 */	blr 