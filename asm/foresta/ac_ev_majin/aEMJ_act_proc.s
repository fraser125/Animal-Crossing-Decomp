lbl_80592BE0:
/* 80592BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592BE4  7C 08 02 A6 */	mflr r0
/* 80592BE8  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C2A98@ha */
/* 80592BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592BF0  54 A0 10 3A */	slwi r0, r5, 2
/* 80592BF4  38 A6 2A 98 */	addi r5, r6, act_proc@l /* 0x806C2A98@l */
/* 80592BF8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80592BFC  7D 89 03 A6 */	mtctr r12
/* 80592C00  4E 80 04 21 */	bctrl 
/* 80592C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592C08  7C 08 03 A6 */	mtlr r0
/* 80592C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80592C10  4E 80 00 20 */	blr 
