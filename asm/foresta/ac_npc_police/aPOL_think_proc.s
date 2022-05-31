lbl_8056A70C:
/* 8056A70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A710  7C 08 02 A6 */	mflr r0
/* 8056A714  3C C0 80 6C */	lis r6, think_proc@ha /* 0x806BE7C0@ha */
/* 8056A718  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A71C  54 A0 10 3A */	slwi r0, r5, 2
/* 8056A720  38 A6 E7 C0 */	addi r5, r6, think_proc@l /* 0x806BE7C0@l */
/* 8056A724  7D 85 00 2E */	lwzx r12, r5, r0
/* 8056A728  7D 89 03 A6 */	mtctr r12
/* 8056A72C  4E 80 04 21 */	bctrl 
/* 8056A730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A734  7C 08 03 A6 */	mtlr r0
/* 8056A738  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A73C  4E 80 00 20 */	blr 
