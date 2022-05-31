lbl_80592EE0:
/* 80592EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592EE4  7C 08 02 A6 */	mflr r0
/* 80592EE8  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806C2AC4@ha */
/* 80592EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592EF0  54 A0 10 3A */	slwi r0, r5, 2
/* 80592EF4  38 A6 2A C4 */	addi r5, r6, sche_proc@l /* 0x806C2AC4@l */
/* 80592EF8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80592EFC  7D 89 03 A6 */	mtctr r12
/* 80592F00  4E 80 04 21 */	bctrl 
/* 80592F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592F08  7C 08 03 A6 */	mtlr r0
/* 80592F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80592F10  4E 80 00 20 */	blr 
