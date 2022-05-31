lbl_8054B4DC:
/* 8054B4DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B4E0  7C 08 02 A6 */	mflr r0
/* 8054B4E4  3C C0 80 6A */	lis r6, think_proc@ha /* 0x806A4F20@ha */
/* 8054B4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B4EC  54 A0 10 3A */	slwi r0, r5, 2
/* 8054B4F0  38 A6 4F 20 */	addi r5, r6, think_proc@l /* 0x806A4F20@l */
/* 8054B4F4  7D 85 00 2E */	lwzx r12, r5, r0
/* 8054B4F8  7D 89 03 A6 */	mtctr r12
/* 8054B4FC  4E 80 04 21 */	bctrl 
/* 8054B500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B504  7C 08 03 A6 */	mtlr r0
/* 8054B508  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B50C  4E 80 00 20 */	blr 
