lbl_8056FDD4:
/* 8056FDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FDD8  7C 08 02 A6 */	mflr r0
/* 8056FDDC  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806BEF14@ha */
/* 8056FDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FDE4  54 A0 10 3A */	slwi r0, r5, 2
/* 8056FDE8  38 A6 EF 14 */	addi r5, r6, think_proc@l /* 0x806BEF14@l */
/* 8056FDEC  7D 85 00 2E */	lwzx r12, r5, r0
/* 8056FDF0  7D 89 03 A6 */	mtctr r12
/* 8056FDF4  4E 80 04 21 */	bctrl 
/* 8056FDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FDFC  7C 08 03 A6 */	mtlr r0
/* 8056FE00  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FE04  4E 80 00 20 */	blr 
