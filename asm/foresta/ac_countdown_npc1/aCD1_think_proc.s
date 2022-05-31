lbl_80517C8C:
/* 80517C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517C90  7C 08 02 A6 */	mflr r0
/* 80517C94  3C C0 80 6A */	lis r6, think_proc@ha /* 0x8069FEA8@ha */
/* 80517C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517C9C  54 A0 10 3A */	slwi r0, r5, 2
/* 80517CA0  38 A6 FE A8 */	addi r5, r6, think_proc@l /* 0x8069FEA8@l */
/* 80517CA4  7D 85 00 2E */	lwzx r12, r5, r0
/* 80517CA8  7D 89 03 A6 */	mtctr r12
/* 80517CAC  4E 80 04 21 */	bctrl 
/* 80517CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517CB4  7C 08 03 A6 */	mtlr r0
/* 80517CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80517CBC  4E 80 00 20 */	blr 
