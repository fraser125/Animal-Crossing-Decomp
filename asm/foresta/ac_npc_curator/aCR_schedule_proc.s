lbl_8054B5E4:
/* 8054B5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B5E8  7C 08 02 A6 */	mflr r0
/* 8054B5EC  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x806A4F28@ha */
/* 8054B5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B5F4  54 A0 10 3A */	slwi r0, r5, 2
/* 8054B5F8  38 A6 4F 28 */	addi r5, r6, sche_proc@l /* 0x806A4F28@l */
/* 8054B5FC  7D 85 00 2E */	lwzx r12, r5, r0
/* 8054B600  7D 89 03 A6 */	mtctr r12
/* 8054B604  4E 80 04 21 */	bctrl 
/* 8054B608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B60C  7C 08 03 A6 */	mtlr r0
/* 8054B610  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B614  4E 80 00 20 */	blr 
