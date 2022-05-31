lbl_8056EC84:
/* 8056EC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056EC88  7C 08 02 A6 */	mflr r0
/* 8056EC8C  3C C0 80 6C */	lis r6, init_proc@ha /* 0x806BEC9C@ha */
/* 8056EC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056EC94  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 8056EC98  38 A6 EC 9C */	addi r5, r6, init_proc@l /* 0x806BEC9C@l */
/* 8056EC9C  7D 85 00 2E */	lwzx r12, r5, r0
/* 8056ECA0  7D 89 03 A6 */	mtctr r12
/* 8056ECA4  4E 80 04 21 */	bctrl 
/* 8056ECA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056ECAC  7C 08 03 A6 */	mtlr r0
/* 8056ECB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056ECB4  4E 80 00 20 */	blr 
