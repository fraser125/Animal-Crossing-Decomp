lbl_8057E72C:
/* 8057E72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E730  7C 08 02 A6 */	mflr r0
/* 8057E734  3C C0 80 6C */	lis r6, act_proc@ha /* 0x806C09F8@ha */
/* 8057E738  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E73C  54 A0 10 3A */	slwi r0, r5, 2
/* 8057E740  38 A6 09 F8 */	addi r5, r6, act_proc@l /* 0x806C09F8@l */
/* 8057E744  7D 85 00 2E */	lwzx r12, r5, r0
/* 8057E748  7D 89 03 A6 */	mtctr r12
/* 8057E74C  4E 80 04 21 */	bctrl 
/* 8057E750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E754  7C 08 03 A6 */	mtlr r0
/* 8057E758  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E75C  4E 80 00 20 */	blr 
